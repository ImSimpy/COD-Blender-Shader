;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xyzw        2     NONE   float   xy w
; NORMAL                   0   xyz         3     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float       
; CARD_BARY_AND_TILE       1   xyzw        5     NONE   float       
; LGV_POSITION_INDEX       0   xyzw        6     NONE   float      w
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float       
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float       
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x   
; SV_IsFrontFace           0   x          10    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 28d9e7b75e07f12de50386e005332ca3
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
; CARD_DEPTH_OFFSET        0                 linear       
; CARD_BARY_AND_TILE       1        nointerpolation       
; LGV_POSITION_INDEX       0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;   [256 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   sampler      NA          NA      S5             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture    byte         r/o      T2     t61,space1     1
;                                   texture    byte         r/o      T3     t62,space1     1
;                                   texture    byte         r/o      T4     t63,space1     1
;                                   texture     f32          3d      T5     t21,space2     1
;                                   texture     f32          3d      T6     t22,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture     f32     2darray      T8     t16,space2     1
;                                   texture     f32          3d      T9     t15,space2     1
;                                   texture     f32          2d     T10     t14,space2     1
;                                   texture     f32          2d     T11     t13,space2     1
;                                   texture     u32          2d     T12     t17,space2     1
;                                   texture     f32          3d     T13     t18,space2     1
;                                   texture    byte         r/o     T14      t3,space1     1
;                                   texture    byte         r/o     T15      t4,space1     1
;                                   texture    byte         r/o     T16      t5,space1     1
;                                   texture    byte         r/o     T17      t6,space1     1
;                                   texture     f32          2d     T18     t69,space2     1
;                                   texture     f32          2d     T19     t37,space2     1
;                                   texture     f32     2darray     T20     t35,space2     1
;                                   texture     f32          3d     T21     t31,space2     1
;                                   texture    byte         r/o     T22     t10,space1     1
;                                   texture    byte         r/o     T23      t1,space1     1
;                                   texture     f32          1d     T24     t32,space2     1
;                                   texture     f32     2darray     T25      t8,space2     1
;                                   texture     f32          2d     T26      t2,space2     1
;                                   texture     f32          2d     T27      t3,space2     1
;                                   texture     f32          2d     T28      t4,space2     1
;                                   textureunorm_f32     2darray     T29     t80,space2     1
;                                   texture    byte         r/o     T30     t67,space1     1
;                                   texture     f32          2d     T31      t7,space2     1
;                                   texture     f32          2d     T32      t6,space2     1
;                                   texture     f32          2d     T33      t5,space2     1
;                                   texture     f32          2d     T34     t38,space2     1
;                                   texture    byte         r/o     T35     t12,space1     1
;                                   texture    byte         r/o     T36     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 41, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 40 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 40 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 40 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = alloca [4 x i32], align 4
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = icmp ne i32 %46, 0
  %48 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = alloca [3 x float], align 4
  %61 = alloca [3 x float], align 4
  %62 = alloca [3 x float], align 4
  %63 = alloca [3 x float], align 4
  %64 = alloca [12 x float], align 4
  %65 = alloca [12 x float], align 4
  %66 = alloca [4 x float], align 4
  %67 = alloca [4 x float], align 4
  %68 = alloca [4 x float], align 4
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %57
  %72 = fmul fast float %70, %58
  %73 = select i1 %47, float 1.000000e+00, float -1.000000e+00
  %74 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = bitcast float %74 to i32
  %76 = ashr i32 %75, 1
  %77 = sub nsw i32 1597250115, %76
  %78 = bitcast i32 %77 to float
  %79 = fmul fast float %51, %73
  %80 = fmul fast float %79, %78
  %81 = fmul fast float %52, %73
  %82 = fmul fast float %81, %78
  %83 = fmul fast float %53, %73
  %84 = fmul fast float %83, %78
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 3
  %88 = and i32 %87, 3
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %87, 4
  %91 = icmp ne i32 %90, 0
  %92 = and i1 %89, %91
  br i1 %92, label %93, label %104

; <label>:93                                      ; preds = %0
  %94 = extractvalue %dx.types.CBufRet.f32 %85, 3
  %95 = fmul fast float %94, %72
  %96 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %97 = fmul fast float %96, %71
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %97, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fcmp fast olt float %100, %102
  br label %107

; <label>:104                                     ; preds = %0
  %105 = icmp eq i32 %90, 0
  %106 = and i1 %89, %105
  br label %107

; <label>:107                                     ; preds = %104, %93
  %108 = phi i1 [ %103, %93 ], [ %106, %104 ]
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = fmul fast float %110, 0x3FE3C6EF40000000
  %112 = frem fast float %71, 2.560000e+02
  %113 = frem fast float %72, 2.560000e+02
  %114 = fptoui float %112 to i32
  %115 = fptoui float %113 to i32
  %116 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %114, i32 %115, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = fadd fast float %117, %111
  %119 = call float @dx.op.unary.f32(i32 22, float %118)  ; Frc(value)
  %120 = add i32 %48, 60
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = add i32 %122, 0
  %124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %125 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %124, i32 0)  ; GetDimensions(handle,mipLevel)
  %126 = extractvalue %dx.types.Dimensions %125, 0
  %127 = sitofp i32 %126 to float
  %128 = extractvalue %dx.types.Dimensions %125, 1
  %129 = sitofp i32 %128 to float
  %130 = fmul fast float %127, %54
  %131 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %132 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %133 = fmul fast float %129, %55
  %134 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %135 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %136 = fmul fast float %134, %134
  %137 = fmul fast float %135, %135
  %138 = fadd fast float %137, %136
  %139 = fmul fast float %134, %131
  %140 = fmul fast float %135, %132
  %141 = fadd fast float %140, %139
  %142 = fmul fast float %131, %131
  %143 = fmul fast float %132, %132
  %144 = fadd fast float %143, %142
  %145 = fmul fast float %138, %144
  %146 = fmul fast float %141, %141
  %147 = fsub fast float %145, %146
  %148 = bitcast float %147 to i32
  %149 = fadd fast float %138, %144
  %150 = bitcast float %149 to i32
  %151 = sub i32 8388608, %150
  %152 = add i32 %151, %148
  %153 = ashr i32 %152, 24
  %154 = sitofp i32 %153 to float
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = add i32 %156, 0
  %158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %158, %dx.types.Handle %40, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float %154)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = extractvalue %dx.types.ResRet.f32 %159, 1
  %162 = extractvalue %dx.types.ResRet.f32 %159, 2
  %163 = fmul fast float %160, 2.000000e+00
  %164 = fmul fast float %161, 2.000000e+00
  %165 = fmul fast float %162, 2.000000e+00
  %166 = fadd fast float %163, -1.000000e+00
  %167 = fadd fast float %164, -1.000000e+00
  %168 = fadd fast float %165, -1.000000e+00
  br i1 %47, label %178, label %169

; <label>:169                                     ; preds = %107
  %170 = call float @dx.op.dot3.f32(i32 55, float %80, float %82, float %84, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = fmul fast float %170, 2.000000e+00
  %172 = fmul fast float %171, %80
  %173 = fmul fast float %171, %82
  %174 = fmul fast float %171, %84
  %175 = fsub fast float %166, %172
  %176 = fsub fast float %167, %173
  %177 = fsub fast float %168, %174
  br label %178

; <label>:178                                     ; preds = %169, %107
  %179 = phi float [ %175, %169 ], [ %166, %107 ]
  %180 = phi float [ %176, %169 ], [ %167, %107 ]
  %181 = phi float [ %177, %169 ], [ %168, %107 ]
  %182 = add i32 %48, 56
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = add i32 %184, 0
  %186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %186, %dx.types.Handle %40, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float %154)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = extractvalue %dx.types.ResRet.f32 %187, 1
  %190 = extractvalue %dx.types.ResRet.f32 %187, 2
  %191 = extractvalue %dx.types.ResRet.f32 %187, 3
  %192 = add i32 %48, 64
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = add i32 %194, 0
  %196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %196, %dx.types.Handle %40, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float %154)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = add i32 %48, 68
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = add i32 %201, 0
  %203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %203, %dx.types.Handle %40, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float %154)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fadd fast float %50, 1.000000e+00
  %207 = add i32 %48, 24
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 2
  %210 = bitcast i32 %209 to float
  %211 = fmul fast float %205, 2.000000e+00
  %212 = fsub fast float %206, %211
  %213 = fmul fast float %210, %212
  %214 = fadd fast float %213, %59
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %218 = fmul fast float %71, 2.000000e+00
  %219 = fmul fast float %218, %216
  %220 = fmul fast float %72, 2.000000e+00
  %221 = fmul fast float %220, %217
  %222 = fsub fast float 1.000000e+00, %219
  %223 = fsub fast float 1.000000e+00, %221
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %227 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %228 = fmul fast float %222, %225
  %229 = fmul fast float %222, %226
  %230 = fmul fast float %222, %227
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %234 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %235 = fmul fast float %223, %232
  %236 = fmul fast float %223, %233
  %237 = fmul fast float %223, %234
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %242 = fadd fast float %235, %239
  %243 = fadd fast float %242, %228
  %244 = fadd fast float %236, %240
  %245 = fadd fast float %244, %229
  %246 = fadd fast float %237, %241
  %247 = fadd fast float %246, %230
  %248 = fmul fast float %243, %214
  %249 = fmul fast float %245, %214
  %250 = fmul fast float %247, %214
  %251 = call float @dx.op.unary.f32(i32 26, float %49)  ; Round_ne(value)
  %252 = fptoui float %251 to i32
  %253 = call float @dx.op.unary.f32(i32 26, float %56)  ; Round_ne(value)
  %254 = fptoui float %253 to i32
  %255 = shl i32 %254, 3
  %256 = or i32 %255, 4
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 16777215
  %260 = add i32 %259, %252
  %261 = shl i32 %260, 6
  %262 = getelementptr [3 x float], [3 x float]* %60, i32 0, i32 0
  %263 = getelementptr [3 x float], [3 x float]* %61, i32 0, i32 0
  %264 = getelementptr [3 x float], [3 x float]* %62, i32 0, i32 0
  %265 = getelementptr [3 x float], [3 x float]* %63, i32 0, i32 0
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = extractvalue %dx.types.ResRet.f32 %266, 3
  store float %267, float* %262, align 4
  store float %268, float* %263, align 4
  store float %269, float* %264, align 4
  store float %270, float* %265, align 4
  %271 = getelementptr [3 x float], [3 x float]* %60, i32 0, i32 1
  %272 = getelementptr [3 x float], [3 x float]* %61, i32 0, i32 1
  %273 = getelementptr [3 x float], [3 x float]* %62, i32 0, i32 1
  %274 = getelementptr [3 x float], [3 x float]* %63, i32 0, i32 1
  %275 = or i32 %261, 16
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  store float %277, float* %271, align 4
  store float %278, float* %272, align 4
  store float %279, float* %273, align 4
  store float %280, float* %274, align 4
  %281 = getelementptr [3 x float], [3 x float]* %60, i32 0, i32 2
  %282 = getelementptr [3 x float], [3 x float]* %61, i32 0, i32 2
  %283 = getelementptr [3 x float], [3 x float]* %62, i32 0, i32 2
  %284 = getelementptr [3 x float], [3 x float]* %63, i32 0, i32 2
  %285 = or i32 %261, 32
  %286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  store float %287, float* %281, align 4
  store float %288, float* %282, align 4
  store float %289, float* %283, align 4
  store float %290, float* %284, align 4
  %291 = or i32 %261, 48
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.i32 %294, 1
  %296 = icmp eq i32 %295, 0
  %297 = and i32 %293, 4
  %298 = icmp ne i32 %297, 0
  %299 = and i1 %296, %298
  br i1 %299, label %300, label %339

; <label>:300                                     ; preds = %178
  %301 = and i32 %293, 3
  %302 = getelementptr [3 x float], [3 x float]* %60, i32 0, i32 %301
  %303 = getelementptr [3 x float], [3 x float]* %61, i32 0, i32 %301
  %304 = getelementptr [3 x float], [3 x float]* %62, i32 0, i32 %301
  %305 = getelementptr [3 x float], [3 x float]* %63, i32 0, i32 %301
  %306 = load float, float* %302, align 4
  %307 = load float, float* %303, align 4
  %308 = load float, float* %304, align 4
  %309 = load float, float* %305, align 4
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %314 = call float @dx.op.dot3.f32(i32 55, float %306, float %307, float %308, float %311, float %312, float %313)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = fadd fast float %314, %309
  %316 = fcmp fast ogt float %315, 1.000000e+00
  br i1 %316, label %317, label %322

; <label>:317                                     ; preds = %300
  %318 = fadd fast float %315, -1.000000e+00
  %319 = fmul fast float %318, 4.000000e+00
  %320 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %321 = fmul fast float %320, 4.000000e+00
  br label %328

; <label>:322                                     ; preds = %300
  %323 = fcmp fast olt float %315, 0.000000e+00
  br i1 %323, label %324, label %328

; <label>:324                                     ; preds = %322
  %325 = fmul fast float %315, -4.000000e+00
  %326 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  %327 = fmul fast float %326, -4.000000e+00
  br label %328

; <label>:328                                     ; preds = %324, %322, %317
  %329 = phi float [ %321, %317 ], [ %327, %324 ], [ 0.000000e+00, %322 ]
  %330 = icmp eq i32 %301, 0
  %331 = select i1 %330, float %329, float 0.000000e+00
  %332 = fadd fast float %270, %331
  store float %332, float* %265, align 4, !noalias !83
  %333 = icmp eq i32 %301, 1
  %334 = select i1 %333, float %329, float 0.000000e+00
  %335 = fadd fast float %280, %334
  store float %335, float* %274, align 4, !noalias !83
  %336 = icmp eq i32 %301, 2
  %337 = select i1 %336, float %329, float 0.000000e+00
  %338 = fadd fast float %290, %337
  store float %338, float* %284, align 4, !noalias !83
  br label %339

; <label>:339                                     ; preds = %328, %178
  %340 = phi float [ %290, %178 ], [ %338, %328 ]
  %341 = phi float [ %280, %178 ], [ %335, %328 ]
  %342 = phi float [ %270, %178 ], [ %332, %328 ]
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fadd fast float %344, %248
  %348 = fadd fast float %345, %249
  %349 = fadd fast float %346, %250
  %350 = call float @dx.op.dot4.f32(i32 56, float %267, float %268, float %269, float %342, float %347, float %348, float %349, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %351 = call float @dx.op.dot4.f32(i32 56, float %277, float %278, float %279, float %341, float %347, float %348, float %349, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %352 = call float @dx.op.dot4.f32(i32 56, float %287, float %288, float %289, float %340, float %347, float %348, float %349, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %353 = fadd fast float %198, 0xBFB99999A0000000
  %354 = call float @dx.op.unary.f32(i32 7, float %353)  ; Saturate(value)
  %355 = fmul fast float %354, 0x3FF1C71C80000000
  %356 = call float @dx.op.binary.f32(i32 36, float %198, float 0x3FB99999A0000000)  ; FMin(a,b)
  %357 = fsub fast float 1.000000e+00, %355
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %359 = fmul fast float %358, %188
  %360 = fmul fast float %358, %189
  %361 = fmul fast float %358, %190
  %362 = call float @dx.op.unary.f32(i32 7, float %359)  ; Saturate(value)
  %363 = call float @dx.op.unary.f32(i32 7, float %360)  ; Saturate(value)
  %364 = call float @dx.op.unary.f32(i32 7, float %361)  ; Saturate(value)
  %365 = fmul fast float %355, %188
  %366 = fmul fast float %355, %189
  %367 = fmul fast float %355, %190
  %368 = fadd fast float %365, %356
  %369 = fadd fast float %366, %356
  %370 = fadd fast float %367, %356
  %371 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  %372 = call float @dx.op.unary.f32(i32 7, float %369)  ; Saturate(value)
  %373 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %374 = call float @dx.op.dot3.f32(i32 55, float %362, float %363, float %364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = fmul fast float %374, 1.875000e-01
  %376 = fadd fast float %375, 0x3FE647AE20000000
  %377 = call float @dx.op.unary.f32(i32 7, float %376)  ; Saturate(value)
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = fsub fast float -0.000000e+00, %250
  %381 = call float @dx.op.dot3.f32(i32 55, float %248, float %249, float %250, float %248, float %249, float %250)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = call float @dx.op.unary.f32(i32 25, float %381)  ; Rsqrt(value)
  %383 = fmul fast float %382, %248
  %384 = fmul fast float %382, %249
  %385 = fmul fast float %382, %250
  %386 = fsub fast float -0.000000e+00, %383
  %387 = fsub fast float -0.000000e+00, %384
  %388 = fsub fast float -0.000000e+00, %385
  %389 = select i1 %108, float 0.000000e+00, float %373
  %390 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %386, float %387, float %388)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %392 = call float @dx.op.dot3.f32(i32 55, float %383, float %384, float %385, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %393 = fmul fast float %392, 2.000000e+00
  %394 = fmul fast float %393, %179
  %395 = fmul fast float %393, %180
  %396 = fmul fast float %393, %181
  %397 = fsub fast float %383, %394
  %398 = fsub fast float %384, %395
  %399 = fsub fast float %385, %396
  %400 = fsub fast float 1.000000e+00, %191
  %401 = call float @dx.op.binary.f32(i32 35, float %400, float 0x3F847AE140000000)  ; FMax(a,b)
  %402 = fmul fast float %401, %401
  %403 = fmul fast float %402, %402
  %404 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %40, float 0x3BF7A3BEA0000000, float %403, float %404, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %410 = fadd fast float %408, %248
  %411 = fadd fast float %409, %249
  %412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.i32 %412, 0
  %414 = icmp eq i32 %413, 1
  br i1 %414, label %415, label %450

; <label>:415                                     ; preds = %339
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = fsub fast float %410, %417
  %420 = fsub fast float %411, %418
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = fmul fast float %419, %422
  %425 = fmul fast float %420, %423
  %426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %40, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = fcmp fast ogt float %427, 0.000000e+00
  %429 = extractvalue %dx.types.CBufRet.i32 %412, 3
  %430 = icmp ne i32 %429, 0
  %431 = and i1 %428, %430
  br i1 %431, label %432, label %450, !dx.controlflow.hints !88

; <label>:432                                     ; preds = %415
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %435 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %436 = fsub fast float %410, %434
  %437 = fsub fast float %411, %435
  %438 = fmul fast float %436, %436
  %439 = fmul fast float %437, %437
  %440 = fadd fast float %438, %439
  %441 = uitofp i32 %429 to float
  %442 = fmul fast float %441, %441
  %443 = fcmp fast ogt float %440, %442
  br i1 %443, label %450, label %444

; <label>:444                                     ; preds = %432
  %445 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %446 = fsub fast float %441, %445
  %447 = fmul fast float %446, 0x3F75555560000000
  %448 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %449 = call float @dx.op.binary.f32(i32 36, float %448, float %427)  ; FMin(a,b)
  br label %450

; <label>:450                                     ; preds = %444, %432, %415, %339
  %451 = phi float [ 1.000000e+00, %339 ], [ %449, %444 ], [ %427, %415 ], [ 0.000000e+00, %432 ]
  %452 = fcmp fast ogt float %451, 0.000000e+00
  br i1 %452, label %453, label %774, !dx.controlflow.hints !89

; <label>:453                                     ; preds = %450
  %454 = fadd fast float %49, 5.000000e-01
  %455 = fptoui float %454 to i32
  %456 = fadd fast float %56, 5.000000e-01
  %457 = fptoui float %456 to i32
  %458 = shl i32 %457, 3
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = or i32 %458, 4
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 16777215
  %465 = add i32 %464, %455
  %466 = shl i32 %465, 5
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = or i32 %466, 16
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = lshr i32 %463, 24
  %477 = and i32 %476, 3
  %478 = add nuw nsw i32 %477, 3
  %479 = shl i32 1, %478
  %480 = lshr i32 %463, 29
  %481 = lshr i32 %463, 23
  %482 = and i32 %481, 56
  %483 = shl nuw nsw i32 %480, 3
  %484 = lshr i32 %460, 16
  %485 = and i32 %460, 65535
  %486 = uitofp i32 %479 to float
  %487 = fmul fast float %486, 1.562500e-02
  %488 = uitofp i32 %484 to float
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 3
  %491 = fmul fast float %490, %488
  %492 = uitofp i32 %482 to float
  %493 = fmul fast float %492, 1.562500e-02
  %494 = uitofp i32 %483 to float
  %495 = fmul fast float %494, 1.562500e-02
  %496 = uitofp i32 %485 to float
  %497 = fmul fast float %490, %496
  %498 = call float @dx.op.unary.f32(i32 7, float %350)  ; Saturate(value)
  %499 = call float @dx.op.unary.f32(i32 7, float %351)  ; Saturate(value)
  %500 = call float @dx.op.unary.f32(i32 7, float %352)  ; Saturate(value)
  %501 = fmul fast float %498, %468
  %502 = fmul fast float %499, %469
  %503 = fmul fast float %500, %470
  %504 = fadd fast float %501, %473
  %505 = fmul fast float %487, %504
  %506 = fadd fast float %505, %493
  %507 = fadd fast float %502, %474
  %508 = fmul fast float %487, %507
  %509 = fadd fast float %508, %495
  %510 = fadd fast float %503, %475
  %511 = fmul fast float %491, %510
  %512 = fadd fast float %511, %497
  %513 = fmul fast float %506, 5.000000e-01
  %514 = fmul fast float %509, 0x3FD5555560000000
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %506, float %509, float %512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 3
  %521 = fmul fast float %520, %516
  %522 = fmul fast float %520, %517
  %523 = fmul fast float %520, %518
  %524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %513, float %514, float %512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  %528 = extractvalue %dx.types.ResRet.f32 %524, 3
  %529 = fadd fast float %513, 5.000000e-01
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %529, float %514, float %512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = extractvalue %dx.types.ResRet.f32 %530, 2
  %534 = extractvalue %dx.types.ResRet.f32 %530, 3
  %535 = fadd fast float %514, 0x3FD5555560000000
  %536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %513, float %535, float %512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = extractvalue %dx.types.ResRet.f32 %536, 3
  %541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %529, float %535, float %512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = extractvalue %dx.types.ResRet.f32 %541, 3
  %546 = fadd fast float %514, 0x3FE5555560000000
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %513, float %546, float %512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = extractvalue %dx.types.ResRet.f32 %547, 3
  %552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %529, float %546, float %512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = extractvalue %dx.types.ResRet.f32 %552, 3
  %557 = fmul fast float %525, 0x400BB67AE0000000
  %558 = fadd fast float %557, 0xBFFBB67AE0000000
  %559 = fmul fast float %558, %521
  %560 = fmul fast float %526, 0x400BB67AE0000000
  %561 = fadd fast float %560, 0xBFFBB67AE0000000
  %562 = fmul fast float %561, %522
  %563 = fmul fast float %527, 0x400BB67AE0000000
  %564 = fadd fast float %563, 0xBFFBB67AE0000000
  %565 = fmul fast float %564, %523
  %566 = fmul fast float %528, 0x4011E377A0000000
  %567 = fadd fast float %566, 0xC001E377A0000000
  %568 = fmul fast float %567, %521
  %569 = fmul fast float %531, 0x4011E377A0000000
  %570 = fadd fast float %569, 0xC001E377A0000000
  %571 = fmul fast float %570, %522
  %572 = fmul fast float %532, 0x4011E377A0000000
  %573 = fadd fast float %572, 0xC001E377A0000000
  %574 = fmul fast float %573, %523
  %575 = fmul fast float %533, 0x400BB67AE0000000
  %576 = fadd fast float %575, 0xBFFBB67AE0000000
  %577 = fmul fast float %576, %521
  %578 = fmul fast float %534, 0x400BB67AE0000000
  %579 = fadd fast float %578, 0xBFFBB67AE0000000
  %580 = fmul fast float %579, %522
  %581 = fmul fast float %537, 0x400BB67AE0000000
  %582 = fadd fast float %581, 0xBFFBB67AE0000000
  %583 = fmul fast float %582, %523
  %584 = fmul fast float %538, 0x400BB67AE0000000
  %585 = fadd fast float %584, 0xBFFBB67AE0000000
  %586 = fmul fast float %585, %521
  %587 = fmul fast float %539, 0x400BB67AE0000000
  %588 = fadd fast float %587, 0xBFFBB67AE0000000
  %589 = fmul fast float %588, %522
  %590 = fmul fast float %540, 0x400BB67AE0000000
  %591 = fadd fast float %590, 0xBFFBB67AE0000000
  %592 = fmul fast float %591, %523
  %593 = fmul fast float %542, 0x400EFBDEC0000000
  %594 = fadd fast float %593, 0xBFFEFBDEC0000000
  %595 = fmul fast float %594, %521
  %596 = fmul fast float %543, 0x400EFBDEC0000000
  %597 = fadd fast float %596, 0xBFFEFBDEC0000000
  %598 = fmul fast float %597, %522
  %599 = fmul fast float %544, 0x400EFBDEC0000000
  %600 = fadd fast float %599, 0xBFFEFBDEC0000000
  %601 = fmul fast float %600, %523
  %602 = fmul fast float %545, 0x400EFBDEC0000000
  %603 = fadd fast float %602, 0xBFFEFBDEC0000000
  %604 = fmul fast float %603, %521
  %605 = fmul fast float %548, 0x400EFBDEC0000000
  %606 = fadd fast float %605, 0xBFFEFBDEC0000000
  %607 = fmul fast float %606, %522
  %608 = fmul fast float %549, 0x400EFBDEC0000000
  %609 = fadd fast float %608, 0xBFFEFBDEC0000000
  %610 = fmul fast float %609, %523
  %611 = fmul fast float %550, 0x400EFBDEC0000000
  %612 = fadd fast float %611, 0xBFFEFBDEC0000000
  %613 = fmul fast float %612, %521
  %614 = fmul fast float %551, 0x400EFBDEC0000000
  %615 = fadd fast float %614, 0xBFFEFBDEC0000000
  %616 = fmul fast float %615, %522
  %617 = fmul fast float %553, 0x400EFBDEC0000000
  %618 = fadd fast float %617, 0xBFFEFBDEC0000000
  %619 = fmul fast float %618, %523
  %620 = fmul fast float %554, 0x400EFBDEC0000000
  %621 = fadd fast float %620, 0xBFFEFBDEC0000000
  %622 = fmul fast float %621, %521
  %623 = fmul fast float %555, 0x400EFBDEC0000000
  %624 = fadd fast float %623, 0xBFFEFBDEC0000000
  %625 = fmul fast float %624, %522
  %626 = fmul fast float %556, 0x400EFBDEC0000000
  %627 = fadd fast float %626, 0xBFFEFBDEC0000000
  %628 = fmul fast float %627, %523
  %629 = call float @dx.op.dot3.f32(i32 55, float %521, float %522, float %523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = fmul fast float %629, 0x3FD20DD760000000
  %631 = fmul fast float %521, 0x3FD20DD760000000
  %632 = fmul fast float %181, 0x3FD4D8D7C0000000
  %633 = fmul fast float %632, %559
  %634 = fmul fast float %181, %181
  %635 = fmul fast float %634, 0x3FEE471020000000
  %636 = fadd fast float %635, 0xBFD42F6020000000
  %637 = fmul fast float %568, %636
  %638 = fmul fast float %179, 0x3FD4D8D7C0000000
  %639 = fmul fast float %638, %586
  %640 = fmul fast float %180, 0x3FD4D8D7C0000000
  %641 = fmul fast float %640, %577
  %642 = fmul fast float %181, 0xBFF17B1420000000
  %643 = fmul fast float %595, %179
  %644 = fmul fast float %604, %180
  %645 = fmul fast float %179, %179
  %646 = fmul fast float %180, %180
  %647 = fsub fast float %645, %646
  %648 = fmul fast float %647, 0x3FC17B1420000000
  %649 = fmul fast float %648, %613
  %650 = fmul fast float %179, 0x3FD17B1420000000
  %651 = fmul fast float %650, %180
  %652 = fmul fast float %651, %622
  %653 = fadd fast float %644, %643
  %654 = fmul fast float %642, %653
  %655 = fadd fast float %654, %637
  %656 = fmul fast float %655, 2.500000e-01
  %657 = fadd fast float %633, %631
  %658 = fsub fast float %657, %641
  %659 = fsub fast float %658, %639
  %660 = fadd fast float %659, %656
  %661 = fadd fast float %660, %649
  %662 = fadd fast float %661, %652
  %663 = fmul fast float %522, 0x3FD20DD760000000
  %664 = fmul fast float %632, %562
  %665 = fmul fast float %571, %636
  %666 = fmul fast float %638, %589
  %667 = fmul fast float %640, %580
  %668 = fmul fast float %598, %179
  %669 = fmul fast float %607, %180
  %670 = fmul fast float %648, %616
  %671 = fmul fast float %651, %625
  %672 = fadd fast float %669, %668
  %673 = fmul fast float %642, %672
  %674 = fadd fast float %673, %665
  %675 = fmul fast float %674, 2.500000e-01
  %676 = fadd fast float %664, %663
  %677 = fsub fast float %676, %667
  %678 = fsub fast float %677, %666
  %679 = fadd fast float %678, %670
  %680 = fadd fast float %679, %675
  %681 = fadd fast float %680, %671
  %682 = fmul fast float %523, 0x3FD20DD760000000
  %683 = fmul fast float %632, %565
  %684 = fmul fast float %574, %636
  %685 = fmul fast float %638, %592
  %686 = fmul fast float %640, %583
  %687 = fmul fast float %601, %179
  %688 = fmul fast float %610, %180
  %689 = fmul fast float %648, %619
  %690 = fmul fast float %651, %628
  %691 = fadd fast float %688, %687
  %692 = fmul fast float %642, %691
  %693 = fadd fast float %692, %684
  %694 = fmul fast float %693, 2.500000e-01
  %695 = fadd fast float %683, %682
  %696 = fsub fast float %695, %685
  %697 = fsub fast float %696, %686
  %698 = fadd fast float %697, %694
  %699 = fadd fast float %698, %689
  %700 = fadd fast float %699, %690
  %701 = call float @dx.op.binary.f32(i32 35, float %662, float 0.000000e+00)  ; FMax(a,b)
  %702 = call float @dx.op.binary.f32(i32 35, float %681, float 0.000000e+00)  ; FMax(a,b)
  %703 = call float @dx.op.binary.f32(i32 35, float %700, float 0.000000e+00)  ; FMax(a,b)
  %704 = fmul fast float %399, 0x3FD4D8D7C0000000
  %705 = fmul fast float %704, %559
  %706 = fmul fast float %399, %399
  %707 = fmul fast float %706, 0x3FEE471020000000
  %708 = fadd fast float %707, 0xBFD42F6020000000
  %709 = fmul fast float %568, %708
  %710 = fmul fast float %397, 0x3FD4D8D7C0000000
  %711 = fmul fast float %710, %586
  %712 = fmul fast float %398, 0x3FD4D8D7C0000000
  %713 = fmul fast float %712, %577
  %714 = fmul fast float %399, 0xBFF17B1420000000
  %715 = fmul fast float %595, %397
  %716 = fmul fast float %604, %398
  %717 = fmul fast float %397, %397
  %718 = fmul fast float %398, %398
  %719 = fsub fast float %717, %718
  %720 = fmul fast float %719, 0x3FC17B1420000000
  %721 = fmul fast float %720, %613
  %722 = fmul fast float %398, 0x3FD17B1420000000
  %723 = fmul fast float %722, %397
  %724 = fmul fast float %723, %622
  %725 = fadd fast float %716, %715
  %726 = fmul fast float %714, %725
  %727 = fadd fast float %726, %709
  %728 = fmul fast float %727, 2.500000e-01
  %729 = fadd fast float %705, %631
  %730 = fsub fast float %729, %713
  %731 = fsub fast float %730, %711
  %732 = fadd fast float %731, %728
  %733 = fadd fast float %732, %721
  %734 = fadd fast float %733, %724
  %735 = fmul fast float %704, %562
  %736 = fmul fast float %571, %708
  %737 = fmul fast float %710, %589
  %738 = fmul fast float %712, %580
  %739 = fmul fast float %598, %397
  %740 = fmul fast float %607, %398
  %741 = fmul fast float %720, %616
  %742 = fmul fast float %723, %625
  %743 = fadd fast float %740, %739
  %744 = fmul fast float %714, %743
  %745 = fadd fast float %744, %736
  %746 = fmul fast float %745, 2.500000e-01
  %747 = fadd fast float %735, %663
  %748 = fsub fast float %747, %738
  %749 = fsub fast float %748, %737
  %750 = fadd fast float %749, %741
  %751 = fadd fast float %750, %746
  %752 = fadd fast float %751, %742
  %753 = fmul fast float %704, %565
  %754 = fmul fast float %574, %708
  %755 = fmul fast float %710, %592
  %756 = fmul fast float %712, %583
  %757 = fmul fast float %601, %397
  %758 = fmul fast float %610, %398
  %759 = fmul fast float %720, %619
  %760 = fmul fast float %723, %628
  %761 = fadd fast float %758, %757
  %762 = fmul fast float %714, %761
  %763 = fadd fast float %762, %754
  %764 = fmul fast float %763, 2.500000e-01
  %765 = fadd fast float %753, %682
  %766 = fsub fast float %765, %755
  %767 = fsub fast float %766, %756
  %768 = fadd fast float %767, %764
  %769 = fadd fast float %768, %759
  %770 = fadd fast float %769, %760
  %771 = call float @dx.op.binary.f32(i32 35, float %734, float 0.000000e+00)  ; FMax(a,b)
  %772 = call float @dx.op.binary.f32(i32 35, float %752, float 0.000000e+00)  ; FMax(a,b)
  %773 = call float @dx.op.binary.f32(i32 35, float %770, float 0.000000e+00)  ; FMax(a,b)
  br label %774

; <label>:774                                     ; preds = %453, %450
  %775 = phi float [ %771, %453 ], [ 0.000000e+00, %450 ]
  %776 = phi float [ %772, %453 ], [ 0.000000e+00, %450 ]
  %777 = phi float [ %773, %453 ], [ 0.000000e+00, %450 ]
  %778 = phi float [ %701, %453 ], [ 0.000000e+00, %450 ]
  %779 = phi float [ %702, %453 ], [ 0.000000e+00, %450 ]
  %780 = phi float [ %703, %453 ], [ 0.000000e+00, %450 ]
  %781 = phi float [ %630, %453 ], [ 0.000000e+00, %450 ]
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 0
  %784 = fcmp fast ogt float %783, 0.000000e+00
  %785 = and i1 %452, %784
  br i1 %785, label %786, label %990, !dx.controlflow.hints !90

; <label>:786                                     ; preds = %774
  %787 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %788 = fadd fast float %787, %250
  %789 = fmul fast float %179, 3.200000e+01
  %790 = fmul fast float %180, 3.200000e+01
  %791 = fadd fast float %410, %789
  %792 = fadd fast float %411, %790
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %796 = fsub fast float %791, %794
  %797 = fsub fast float %792, %795
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = fmul fast float %796, %799
  %802 = fmul fast float %797, %800
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %806 = fsub fast float %410, %804
  %807 = fsub fast float %411, %805
  %808 = fmul fast float %806, %806
  %809 = fmul fast float %807, %807
  %810 = fadd fast float %808, %809
  %811 = call float @dx.op.unary.f32(i32 24, float %810)  ; Sqrt(value)
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 0
  %814 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %815 = fsub fast float %811, %813
  %816 = fdiv fast float %815, %814
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = fmul fast float %817, 2.000000e+00
  %819 = fsub fast float 3.000000e+00, %818
  %820 = fmul fast float %817, %817
  %821 = fmul fast float %820, %819
  %822 = fcmp fast oge float %801, 0.000000e+00
  %823 = fcmp fast ole float %801, 1.000000e+00
  %824 = and i1 %823, %822
  %825 = fcmp fast oge float %802, 0.000000e+00
  %826 = and i1 %825, %824
  %827 = fcmp fast ole float %802, 1.000000e+00
  %828 = and i1 %827, %826
  %829 = fcmp fast ogt float %821, 0.000000e+00
  %830 = and i1 %829, %828
  br i1 %830, label %831, label %954, !dx.controlflow.hints !91

; <label>:831                                     ; preds = %786
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %834 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %835 = fmul fast float %833, %801
  %836 = fmul fast float %834, %802
  %837 = call float @dx.op.unary.f32(i32 27, float %835)  ; Round_ni(value)
  %838 = call float @dx.op.unary.f32(i32 27, float %836)  ; Round_ni(value)
  %839 = fptosi float %837 to i32
  %840 = fptosi float %838 to i32
  %841 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %839, i32 %840, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = lshr i32 %842, 16
  %844 = icmp eq i32 %843, 65535
  br i1 %844, label %954, label %845

; <label>:845                                     ; preds = %831
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = fmul fast float %847, %801
  %849 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %850 = fadd fast float %848, %849
  %851 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %852 = fmul fast float %851, %802
  %853 = extractvalue %dx.types.CBufRet.f32 %846, 3
  %854 = fadd fast float %852, %853
  %855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %40, float %850, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %861 = fsub fast float %859, %860
  %862 = fmul fast float %861, %856
  %863 = fadd fast float %862, %860
  %864 = extractvalue %dx.types.CBufRet.f32 %858, 3
  %865 = extractvalue %dx.types.CBufRet.f32 %858, 2
  %866 = fsub fast float %864, %865
  %867 = fmul fast float %866, %857
  %868 = fadd fast float %867, %865
  %869 = fsub fast float %788, %863
  %870 = fsub fast float %868, %863
  %871 = fdiv fast float %869, %870
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %874 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %875 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %876 = fmul fast float %874, %801
  %877 = fmul fast float %875, %802
  %878 = fmul fast float %876, 1.250000e-01
  %879 = fmul fast float %877, 1.250000e-01
  %880 = call float @dx.op.unary.f32(i32 27, float %878)  ; Round_ni(value)
  %881 = call float @dx.op.unary.f32(i32 27, float %879)  ; Round_ni(value)
  %882 = fmul fast float %880, 8.000000e+00
  %883 = fmul fast float %881, 8.000000e+00
  %884 = fsub fast float %876, %882
  %885 = fsub fast float %877, %883
  %886 = fadd fast float %884, 5.000000e-01
  %887 = fadd fast float %885, 5.000000e-01
  %888 = and i32 %843, 255
  %889 = lshr i32 %842, 24
  %890 = mul nuw nsw i32 %888, 9
  %891 = uitofp i32 %890 to float
  %892 = mul nuw nsw i32 %889, 9
  %893 = uitofp i32 %892 to float
  %894 = fadd fast float %886, %891
  %895 = fadd fast float %887, %893
  %896 = fdiv fast float %894, %783
  %897 = fdiv fast float %895, %873
  %898 = fmul fast float %872, 4.375000e-01
  %899 = fadd fast float %898, 3.125000e-02
  %900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %896, float %897, float %899, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = extractvalue %dx.types.ResRet.f32 %900, 1
  %903 = extractvalue %dx.types.ResRet.f32 %900, 2
  %904 = fadd fast float %898, 5.312500e-01
  %905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %896, float %897, float %904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = extractvalue %dx.types.ResRet.f32 %905, 1
  %908 = extractvalue %dx.types.ResRet.f32 %905, 2
  %909 = fmul fast float %906, 2.000000e+00
  %910 = fmul fast float %907, 2.000000e+00
  %911 = fmul fast float %908, 2.000000e+00
  %912 = fadd fast float %909, -1.000000e+00
  %913 = fadd fast float %910, -1.000000e+00
  %914 = fadd fast float %911, -1.000000e+00
  %915 = fmul fast float %912, %912
  %916 = fmul fast float %913, %913
  %917 = fadd fast float %915, %916
  %918 = fmul fast float %914, %914
  %919 = fadd fast float %917, %918
  %920 = call float @dx.op.unary.f32(i32 24, float %919)  ; Sqrt(value)
  %921 = fcmp fast ogt float %920, 0.000000e+00
  br i1 %921, label %922, label %926

; <label>:922                                     ; preds = %845
  %923 = fdiv fast float %912, %920
  %924 = fdiv fast float %913, %920
  %925 = fdiv fast float %914, %920
  br label %926

; <label>:926                                     ; preds = %922, %845
  %927 = phi float [ %923, %922 ], [ 0.000000e+00, %845 ]
  %928 = phi float [ %924, %922 ], [ 0.000000e+00, %845 ]
  %929 = phi float [ %925, %922 ], [ 0.000000e+00, %845 ]
  %930 = call float @dx.op.dot3.f32(i32 55, float %927, float %928, float %929, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %931 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %930)  ; FMax(a,b)
  %932 = fmul fast float %931, 0x400C5BF8A0000000
  %933 = fmul fast float %901, %821
  %934 = fmul fast float %933, %932
  %935 = fmul fast float %902, %821
  %936 = fmul fast float %935, %932
  %937 = fmul fast float %903, %821
  %938 = fmul fast float %937, %932
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 3
  %941 = fmul fast float %934, %940
  %942 = fmul fast float %936, %940
  %943 = fmul fast float %938, %940
  %944 = fcmp fast ogt float %788, %868
  br i1 %944, label %945, label %954

; <label>:945                                     ; preds = %926
  %946 = fmul fast float %870, 0x3FC24924A0000000
  %947 = fsub fast float %788, %868
  %948 = fdiv fast float %947, %946
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = fsub fast float 1.000000e+00, %949
  %951 = fmul fast float %950, %941
  %952 = fmul fast float %950, %942
  %953 = fmul fast float %950, %943
  br label %954

; <label>:954                                     ; preds = %945, %926, %831, %786
  %955 = phi float [ %953, %945 ], [ %943, %926 ], [ 0.000000e+00, %831 ], [ 0.000000e+00, %786 ]
  %956 = phi float [ %952, %945 ], [ %942, %926 ], [ 0.000000e+00, %831 ], [ 0.000000e+00, %786 ]
  %957 = phi float [ %951, %945 ], [ %941, %926 ], [ 0.000000e+00, %831 ], [ 0.000000e+00, %786 ]
  %958 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %957)  ; FMax(a,b)
  %959 = fmul fast float %958, 0x3FD20DD760000000
  %960 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = fmul fast float %960, 0x3FDF454380000000
  %962 = fmul fast float %960, %960
  %963 = fmul fast float %962, 0x3FEE471020000000
  %964 = fadd fast float %963, 0xBFD42F6020000000
  %965 = call float @dx.op.dot3.f32(i32 55, float %958, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %961, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %956)  ; FMax(a,b)
  %967 = fmul fast float %966, 0x3FD20DD760000000
  %968 = call float @dx.op.dot3.f32(i32 55, float %966, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %961, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %955)  ; FMax(a,b)
  %970 = fmul fast float %969, 0x3FD20DD760000000
  %971 = call float @dx.op.dot3.f32(i32 55, float %969, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %961, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %972 = call float @dx.op.binary.f32(i32 35, float %959, float 0.000000e+00)  ; FMax(a,b)
  %973 = call float @dx.op.binary.f32(i32 35, float %967, float 0.000000e+00)  ; FMax(a,b)
  %974 = call float @dx.op.binary.f32(i32 35, float %970, float 0.000000e+00)  ; FMax(a,b)
  %975 = call float @dx.op.binary.f32(i32 35, float %965, float 0.000000e+00)  ; FMax(a,b)
  %976 = call float @dx.op.binary.f32(i32 35, float %968, float 0.000000e+00)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 35, float %971, float 0.000000e+00)  ; FMax(a,b)
  %978 = fmul fast float %972, %451
  %979 = fmul fast float %973, %451
  %980 = fmul fast float %974, %451
  %981 = fadd fast float %978, %778
  %982 = fadd fast float %979, %779
  %983 = fadd fast float %980, %780
  %984 = fmul fast float %975, %451
  %985 = fmul fast float %976, %451
  %986 = fmul fast float %977, %451
  %987 = fadd fast float %984, %775
  %988 = fadd fast float %985, %776
  %989 = fadd fast float %986, %777
  br label %990

; <label>:990                                     ; preds = %954, %774
  %991 = phi float [ %987, %954 ], [ %775, %774 ]
  %992 = phi float [ %988, %954 ], [ %776, %774 ]
  %993 = phi float [ %989, %954 ], [ %777, %774 ]
  %994 = phi float [ %981, %954 ], [ %778, %774 ]
  %995 = phi float [ %982, %954 ], [ %779, %774 ]
  %996 = phi float [ %983, %954 ], [ %780, %774 ]
  %997 = fcmp fast olt float %451, 1.000000e+00
  br i1 %997, label %998, label %1821, !dx.controlflow.hints !92

; <label>:998                                     ; preds = %990
  %999 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %1000 = fadd fast float %999, %250
  %1001 = fmul fast float %179, 3.200000e+01
  %1002 = fmul fast float %180, 3.200000e+01
  %1003 = fadd fast float %410, %1001
  %1004 = fadd fast float %411, %1002
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1008 = fsub fast float %1003, %1006
  %1009 = fsub fast float %1004, %1007
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.CBufRet.f32 %1010, 1
  %1013 = fmul fast float %1008, %1011
  %1014 = fmul fast float %1009, %1012
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = fmul fast float %1013, %1016
  %1018 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1019 = fadd fast float %1017, %1018
  %1020 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1021 = fmul fast float %1020, %1014
  %1022 = extractvalue %dx.types.CBufRet.f32 %1015, 3
  %1023 = fadd fast float %1021, %1022
  %1024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %40, float %1019, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1030 = fsub fast float %1028, %1029
  %1031 = fmul fast float %1030, %1025
  %1032 = fadd fast float %1031, %1029
  %1033 = extractvalue %dx.types.CBufRet.f32 %1027, 3
  %1034 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1035 = fsub fast float %1033, %1034
  %1036 = fmul fast float %1035, %1026
  %1037 = fadd fast float %1036, %1034
  %1038 = fsub fast float %1000, %1032
  %1039 = fsub fast float %1037, %1032
  %1040 = fdiv fast float %1038, %1039
  %1041 = call float @dx.op.unary.f32(i32 7, float %1040)  ; Saturate(value)
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = fmul fast float %1043, %1041
  %1045 = extractvalue %dx.types.CBufRet.f32 %1042, 1
  %1046 = fadd fast float %1044, %1045
  %1047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %40, float %1019, float %1023, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1055 = fmul fast float %1052, %1048
  %1056 = fmul fast float %1053, %1049
  %1057 = fmul fast float %1054, %1050
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1062 = fadd fast float %1055, %1059
  %1063 = fadd fast float %1056, %1060
  %1064 = fadd fast float %1057, %1061
  %1065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.f32 %1065, 0
  %1067 = fmul fast float %1066, %1013
  %1068 = extractvalue %dx.types.CBufRet.f32 %1065, 1
  %1069 = fadd fast float %1067, %1068
  %1070 = extractvalue %dx.types.CBufRet.f32 %1065, 2
  %1071 = fmul fast float %1070, %1014
  %1072 = extractvalue %dx.types.CBufRet.f32 %1065, 3
  %1073 = fadd fast float %1071, %1072
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.CBufRet.f32 %1074, 2
  %1078 = extractvalue %dx.types.CBufRet.f32 %1074, 3
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.CBufRet.f32 %1079, 3
  %1084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1069, float %1073, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = extractvalue %dx.types.ResRet.f32 %1084, 3
  %1089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1069, float %1073, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = extractvalue %dx.types.ResRet.f32 %1089, 3
  %1094 = fmul fast float %1085, %1062
  %1095 = fmul fast float %1090, %1062
  %1096 = fmul fast float %1092, %1062
  %1097 = fmul fast float %1088, %1062
  %1098 = fadd fast float %1094, %1075
  %1099 = fadd fast float %1095, %1076
  %1100 = fadd fast float %1096, %1077
  %1101 = fadd fast float %1097, %1078
  %1102 = fmul fast float %1086, %1062
  %1103 = fmul fast float %1091, %1062
  %1104 = fadd fast float %1102, %1080
  %1105 = fadd fast float %1103, %1081
  %1106 = fmul fast float %1087, %1062
  %1107 = fmul fast float %1093, %1062
  %1108 = fadd fast float %1106, %1082
  %1109 = fadd fast float %1107, %1083
  %1110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1069, float %1073, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = extractvalue %dx.types.ResRet.f32 %1110, 3
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1069, float %1073, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = extractvalue %dx.types.ResRet.f32 %1115, 3
  %1120 = fmul fast float %1111, %1063
  %1121 = fmul fast float %1116, %1063
  %1122 = fmul fast float %1118, %1063
  %1123 = fmul fast float %1114, %1063
  %1124 = fadd fast float %1098, %1120
  %1125 = fadd fast float %1099, %1121
  %1126 = fadd fast float %1100, %1122
  %1127 = fadd fast float %1101, %1123
  %1128 = fmul fast float %1112, %1063
  %1129 = fmul fast float %1117, %1063
  %1130 = fadd fast float %1104, %1128
  %1131 = fadd fast float %1105, %1129
  %1132 = fmul fast float %1113, %1063
  %1133 = fmul fast float %1119, %1063
  %1134 = fadd fast float %1108, %1132
  %1135 = fadd fast float %1109, %1133
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1069, float %1073, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = extractvalue %dx.types.ResRet.f32 %1136, 3
  %1141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1069, float %1073, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = extractvalue %dx.types.ResRet.f32 %1141, 3
  %1146 = fmul fast float %1137, %1064
  %1147 = fmul fast float %1142, %1064
  %1148 = fmul fast float %1144, %1064
  %1149 = fmul fast float %1140, %1064
  %1150 = fadd fast float %1124, %1146
  %1151 = fadd fast float %1125, %1147
  %1152 = fadd fast float %1126, %1148
  %1153 = fadd fast float %1127, %1149
  %1154 = fmul fast float %1138, %1064
  %1155 = fmul fast float %1143, %1064
  %1156 = fadd fast float %1130, %1154
  %1157 = fadd fast float %1131, %1155
  %1158 = fmul fast float %1139, %1064
  %1159 = fmul fast float %1145, %1064
  %1160 = fadd fast float %1134, %1158
  %1161 = fadd fast float %1135, %1159
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = fsub fast float %410, %1163
  %1165 = fsub fast float %1006, %410
  %1166 = call float @dx.op.binary.f32(i32 35, float %1165, float %1164)  ; FMax(a,b)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1168 = fsub fast float %411, %1167
  %1169 = fsub fast float %1007, %411
  %1170 = call float @dx.op.binary.f32(i32 35, float %1169, float %1168)  ; FMax(a,b)
  %1171 = call float @dx.op.binary.f32(i32 35, float %1166, float %1170)  ; FMax(a,b)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1010, 3
  %1173 = fmul fast float %1172, %1171
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1180 = fsub fast float %1176, %1150
  %1181 = fsub fast float %1177, %1151
  %1182 = fsub fast float %1178, %1152
  %1183 = fsub fast float %1179, %1153
  %1184 = fmul fast float %1180, %1174
  %1185 = fmul fast float %1181, %1174
  %1186 = fmul fast float %1182, %1174
  %1187 = fmul fast float %1183, %1174
  %1188 = fadd fast float %1184, %1150
  %1189 = fadd fast float %1185, %1151
  %1190 = fadd fast float %1186, %1152
  %1191 = fadd fast float %1187, %1153
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = fsub fast float %1193, %1156
  %1196 = fsub fast float %1194, %1157
  %1197 = fmul fast float %1195, %1174
  %1198 = fmul fast float %1196, %1174
  %1199 = fadd fast float %1197, %1156
  %1200 = fadd fast float %1198, %1157
  %1201 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1202 = extractvalue %dx.types.CBufRet.f32 %1192, 3
  %1203 = fsub fast float %1201, %1160
  %1204 = fsub fast float %1202, %1161
  %1205 = fmul fast float %1203, %1174
  %1206 = fmul fast float %1204, %1174
  %1207 = fadd fast float %1205, %1160
  %1208 = fadd fast float %1206, %1161
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = fmul fast float %1210, %1188
  %1212 = fmul fast float %1210, %1189
  %1213 = fmul fast float %1210, %1190
  %1214 = fmul fast float %1210, %1191
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = fmul fast float %1216, %1199
  %1218 = fmul fast float %1216, %1200
  %1219 = fadd fast float %1217, %1211
  %1220 = fadd fast float %1218, %1213
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = fmul fast float %1222, %1207
  %1224 = fmul fast float %1222, %1208
  %1225 = fadd fast float %1219, %1223
  %1226 = fadd fast float %1220, %1224
  %1227 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1228 = fmul fast float %1227, %1188
  %1229 = fmul fast float %1227, %1189
  %1230 = fmul fast float %1227, %1190
  %1231 = fmul fast float %1227, %1191
  %1232 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1233 = fmul fast float %1232, %1199
  %1234 = fmul fast float %1232, %1200
  %1235 = fadd fast float %1233, %1228
  %1236 = fadd fast float %1234, %1230
  %1237 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1238 = fmul fast float %1237, %1207
  %1239 = fmul fast float %1237, %1208
  %1240 = fadd fast float %1235, %1238
  %1241 = fadd fast float %1236, %1239
  %1242 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1243 = fmul fast float %1242, %1188
  %1244 = fmul fast float %1242, %1189
  %1245 = fmul fast float %1242, %1190
  %1246 = fmul fast float %1242, %1191
  %1247 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1248 = fmul fast float %1247, %1199
  %1249 = fmul fast float %1247, %1200
  %1250 = fadd fast float %1248, %1243
  %1251 = fadd fast float %1249, %1245
  %1252 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1253 = fmul fast float %1252, %1207
  %1254 = fmul fast float %1252, %1208
  %1255 = fadd fast float %1250, %1253
  %1256 = fadd fast float %1251, %1254
  %1257 = fmul fast float %1244, %1244
  %1258 = fmul fast float %1256, %1256
  %1259 = fmul fast float %1246, %1246
  %1260 = fadd fast float %1259, %1257
  %1261 = fadd fast float %1260, %1258
  %1262 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1263 = fcmp fast ugt float %1262, 0.000000e+00
  br i1 %1263, label %1264, label %1279

; <label>:1264                                    ; preds = %998
  %1265 = fsub fast float -0.000000e+00, %1246
  %1266 = fdiv fast float %1265, %1262
  %1267 = fsub fast float -0.000000e+00, %1244
  %1268 = fdiv fast float %1267, %1262
  %1269 = fdiv fast float %1256, %1262
  %1270 = fmul fast float %1255, 0x3FE279A760000000
  %1271 = fmul fast float %1268, %1244
  %1272 = fmul fast float %1269, %1256
  %1273 = fmul fast float %1266, %1246
  %1274 = fadd fast float %1271, %1273
  %1275 = fsub fast float %1274, %1272
  %1276 = call float @dx.op.unary.f32(i32 6, float %1275)  ; FAbs(value)
  %1277 = fadd fast float %1276, 0x3DDB7CDFE0000000
  %1278 = fdiv fast float %1270, %1277
  br label %1279

; <label>:1279                                    ; preds = %1264, %998
  %1280 = phi float [ %1278, %1264 ], [ 1.000000e+00, %998 ]
  %1281 = fmul fast float %1229, %1229
  %1282 = fmul fast float %1241, %1241
  %1283 = fmul fast float %1231, %1231
  %1284 = fadd fast float %1283, %1281
  %1285 = fadd fast float %1284, %1282
  %1286 = call float @dx.op.unary.f32(i32 24, float %1285)  ; Sqrt(value)
  %1287 = fcmp fast ugt float %1286, 0.000000e+00
  br i1 %1287, label %1288, label %1303

; <label>:1288                                    ; preds = %1279
  %1289 = fsub fast float -0.000000e+00, %1231
  %1290 = fdiv fast float %1289, %1286
  %1291 = fsub fast float -0.000000e+00, %1229
  %1292 = fdiv fast float %1291, %1286
  %1293 = fdiv fast float %1241, %1286
  %1294 = fmul fast float %1240, 0x3FE279A760000000
  %1295 = fmul fast float %1292, %1229
  %1296 = fmul fast float %1293, %1241
  %1297 = fmul fast float %1290, %1231
  %1298 = fadd fast float %1295, %1297
  %1299 = fsub fast float %1298, %1296
  %1300 = call float @dx.op.unary.f32(i32 6, float %1299)  ; FAbs(value)
  %1301 = fadd fast float %1300, 0x3DDB7CDFE0000000
  %1302 = fdiv fast float %1294, %1301
  br label %1303

; <label>:1303                                    ; preds = %1288, %1279
  %1304 = phi float [ %1302, %1288 ], [ 1.000000e+00, %1279 ]
  %1305 = call float @dx.op.binary.f32(i32 36, float %1304, float %1280)  ; FMin(a,b)
  %1306 = fmul fast float %1212, %1212
  %1307 = fmul fast float %1226, %1226
  %1308 = fmul fast float %1214, %1214
  %1309 = fadd fast float %1308, %1306
  %1310 = fadd fast float %1309, %1307
  %1311 = call float @dx.op.unary.f32(i32 24, float %1310)  ; Sqrt(value)
  %1312 = fcmp fast ugt float %1311, 0.000000e+00
  br i1 %1312, label %1313, label %1328

; <label>:1313                                    ; preds = %1303
  %1314 = fsub fast float -0.000000e+00, %1214
  %1315 = fdiv fast float %1314, %1311
  %1316 = fsub fast float -0.000000e+00, %1212
  %1317 = fdiv fast float %1316, %1311
  %1318 = fdiv fast float %1226, %1311
  %1319 = fmul fast float %1225, 0x3FE279A760000000
  %1320 = fmul fast float %1317, %1212
  %1321 = fmul fast float %1318, %1226
  %1322 = fmul fast float %1315, %1214
  %1323 = fadd fast float %1320, %1322
  %1324 = fsub fast float %1323, %1321
  %1325 = call float @dx.op.unary.f32(i32 6, float %1324)  ; FAbs(value)
  %1326 = fadd fast float %1325, 0x3DDB7CDFE0000000
  %1327 = fdiv fast float %1319, %1326
  br label %1328

; <label>:1328                                    ; preds = %1313, %1303
  %1329 = phi float [ %1327, %1313 ], [ 1.000000e+00, %1303 ]
  %1330 = call float @dx.op.binary.f32(i32 36, float %1329, float %1305)  ; FMin(a,b)
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1332 = fcmp fast olt float %1331, 1.000000e+00
  br i1 %1332, label %1333, label %1343

; <label>:1333                                    ; preds = %1328
  %1334 = fmul fast float %1331, %1212
  %1335 = fmul fast float %1331, %1226
  %1336 = fmul fast float %1331, %1214
  %1337 = fmul fast float %1331, %1229
  %1338 = fmul fast float %1331, %1241
  %1339 = fmul fast float %1331, %1231
  %1340 = fmul fast float %1331, %1244
  %1341 = fmul fast float %1331, %1256
  %1342 = fmul fast float %1331, %1246
  br label %1343

; <label>:1343                                    ; preds = %1333, %1328
  %1344 = phi float [ %1340, %1333 ], [ %1244, %1328 ]
  %1345 = phi float [ %1341, %1333 ], [ %1256, %1328 ]
  %1346 = phi float [ %1342, %1333 ], [ %1246, %1328 ]
  %1347 = phi float [ %1337, %1333 ], [ %1229, %1328 ]
  %1348 = phi float [ %1338, %1333 ], [ %1241, %1328 ]
  %1349 = phi float [ %1339, %1333 ], [ %1231, %1328 ]
  %1350 = phi float [ %1334, %1333 ], [ %1212, %1328 ]
  %1351 = phi float [ %1335, %1333 ], [ %1226, %1328 ]
  %1352 = phi float [ %1336, %1333 ], [ %1214, %1328 ]
  %1353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1225)  ; FMax(a,b)
  %1354 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1240)  ; FMax(a,b)
  %1355 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1255)  ; FMax(a,b)
  %1356 = fcmp fast oge float %1013, 0.000000e+00
  %1357 = and i1 %1356, %784
  %1358 = fcmp fast ole float %1013, 1.000000e+00
  %1359 = and i1 %1358, %1357
  %1360 = fcmp fast oge float %1014, 0.000000e+00
  %1361 = and i1 %1360, %1359
  %1362 = fcmp fast ole float %1014, 1.000000e+00
  %1363 = and i1 %1362, %1361
  br i1 %1363, label %1364, label %1509, !dx.controlflow.hints !93

; <label>:1364                                    ; preds = %1343
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 2
  %1367 = extractvalue %dx.types.CBufRet.f32 %1365, 3
  %1368 = fmul fast float %1366, %1013
  %1369 = fmul fast float %1367, %1014
  %1370 = call float @dx.op.unary.f32(i32 27, float %1368)  ; Round_ni(value)
  %1371 = call float @dx.op.unary.f32(i32 27, float %1369)  ; Round_ni(value)
  %1372 = fptosi float %1370 to i32
  %1373 = fptosi float %1371 to i32
  %1374 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %1372, i32 %1373, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 65535
  %1377 = lshr i32 %1375, 16
  %1378 = icmp eq i32 %1376, 65535
  br i1 %1378, label %1415, label %1379

; <label>:1379                                    ; preds = %1364
  %1380 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %1381 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1382 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1383 = fmul fast float %1381, %1013
  %1384 = fmul fast float %1382, %1014
  %1385 = fmul fast float %1383, 1.250000e-01
  %1386 = fmul fast float %1384, 1.250000e-01
  %1387 = call float @dx.op.unary.f32(i32 27, float %1385)  ; Round_ni(value)
  %1388 = call float @dx.op.unary.f32(i32 27, float %1386)  ; Round_ni(value)
  %1389 = fmul fast float %1387, 8.000000e+00
  %1390 = fmul fast float %1388, 8.000000e+00
  %1391 = and i32 %1375, 255
  %1392 = lshr i32 %1375, 8
  %1393 = and i32 %1392, 255
  %1394 = mul nuw nsw i32 %1391, 9
  %1395 = uitofp i32 %1394 to float
  %1396 = mul nuw nsw i32 %1393, 9
  %1397 = uitofp i32 %1396 to float
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = fadd fast float %1398, %1383
  %1400 = fsub fast float %1399, %1389
  %1401 = fadd fast float %1397, 5.000000e-01
  %1402 = fadd fast float %1401, %1384
  %1403 = fsub fast float %1402, %1390
  %1404 = fdiv fast float %1400, %783
  %1405 = fdiv fast float %1403, %1380
  %1406 = fmul fast float %1041, 4.375000e-01
  %1407 = fadd fast float %1406, 3.125000e-02
  %1408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1404, float %1405, float %1407, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = fadd fast float %1409, %1353
  %1413 = fadd fast float %1410, %1354
  %1414 = fadd fast float %1411, %1355
  br label %1415

; <label>:1415                                    ; preds = %1379, %1364
  %1416 = phi float [ %1414, %1379 ], [ %1355, %1364 ]
  %1417 = phi float [ %1413, %1379 ], [ %1354, %1364 ]
  %1418 = phi float [ %1412, %1379 ], [ %1353, %1364 ]
  %1419 = icmp eq i32 %1377, 65535
  br i1 %1419, label %1509, label %1420

; <label>:1420                                    ; preds = %1415
  %1421 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %1422 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1424 = fmul fast float %1422, %1013
  %1425 = fmul fast float %1423, %1014
  %1426 = fmul fast float %1424, 1.250000e-01
  %1427 = fmul fast float %1425, 1.250000e-01
  %1428 = call float @dx.op.unary.f32(i32 27, float %1426)  ; Round_ni(value)
  %1429 = call float @dx.op.unary.f32(i32 27, float %1427)  ; Round_ni(value)
  %1430 = fmul fast float %1428, 8.000000e+00
  %1431 = fmul fast float %1429, 8.000000e+00
  %1432 = fsub fast float %1424, %1430
  %1433 = fsub fast float %1425, %1431
  %1434 = fadd fast float %1432, 5.000000e-01
  %1435 = fadd fast float %1433, 5.000000e-01
  %1436 = and i32 %1377, 255
  %1437 = lshr i32 %1375, 24
  %1438 = mul nuw nsw i32 %1436, 9
  %1439 = uitofp i32 %1438 to float
  %1440 = mul nuw nsw i32 %1437, 9
  %1441 = uitofp i32 %1440 to float
  %1442 = fadd fast float %1434, %1439
  %1443 = fadd fast float %1435, %1441
  %1444 = fdiv fast float %1442, %783
  %1445 = fdiv fast float %1443, %1421
  %1446 = fmul fast float %1041, 4.375000e-01
  %1447 = fadd fast float %1446, 3.125000e-02
  %1448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1444, float %1445, float %1447, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = fadd fast float %1446, 5.312500e-01
  %1453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1444, float %1445, float %1452, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1454 = extractvalue %dx.types.ResRet.f32 %1453, 0
  %1455 = extractvalue %dx.types.ResRet.f32 %1453, 1
  %1456 = extractvalue %dx.types.ResRet.f32 %1453, 2
  %1457 = fmul fast float %1454, 2.000000e+00
  %1458 = fmul fast float %1455, 2.000000e+00
  %1459 = fmul fast float %1456, 2.000000e+00
  %1460 = fadd fast float %1457, -1.000000e+00
  %1461 = fadd fast float %1458, -1.000000e+00
  %1462 = fadd fast float %1459, -1.000000e+00
  %1463 = fmul fast float %1460, %1460
  %1464 = fmul fast float %1461, %1461
  %1465 = fadd fast float %1463, %1464
  %1466 = fmul fast float %1462, %1462
  %1467 = fadd fast float %1465, %1466
  %1468 = call float @dx.op.unary.f32(i32 24, float %1467)  ; Sqrt(value)
  %1469 = fcmp fast ogt float %1468, 0.000000e+00
  br i1 %1469, label %1470, label %1474

; <label>:1470                                    ; preds = %1420
  %1471 = fdiv fast float %1460, %1468
  %1472 = fdiv fast float %1461, %1468
  %1473 = fdiv fast float %1462, %1468
  br label %1474

; <label>:1474                                    ; preds = %1470, %1420
  %1475 = phi float [ %1471, %1470 ], [ 0.000000e+00, %1420 ]
  %1476 = phi float [ %1472, %1470 ], [ 0.000000e+00, %1420 ]
  %1477 = phi float [ %1473, %1470 ], [ 0.000000e+00, %1420 ]
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1480 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1481 = fsub fast float %410, %1479
  %1482 = fsub fast float %411, %1480
  %1483 = fmul fast float %1481, %1481
  %1484 = fmul fast float %1482, %1482
  %1485 = fadd fast float %1483, %1484
  %1486 = call float @dx.op.unary.f32(i32 24, float %1485)  ; Sqrt(value)
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.CBufRet.f32 %1487, 1
  %1490 = fsub fast float %1486, %1488
  %1491 = fdiv fast float %1490, %1489
  %1492 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1493 = fmul fast float %1492, 2.000000e+00
  %1494 = fsub fast float 3.000000e+00, %1493
  %1495 = fmul fast float %1492, %1492
  %1496 = fmul fast float %1495, %1494
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1475, float %1476, float %1477, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1497)  ; FMax(a,b)
  %1499 = fmul fast float %1498, 0x400C5BF8A0000000
  %1500 = fmul fast float %1496, %1449
  %1501 = fmul fast float %1500, %1499
  %1502 = fadd fast float %1501, %1418
  %1503 = fmul fast float %1496, %1450
  %1504 = fmul fast float %1503, %1499
  %1505 = fadd fast float %1504, %1417
  %1506 = fmul fast float %1496, %1451
  %1507 = fmul fast float %1506, %1499
  %1508 = fadd fast float %1507, %1416
  br label %1509

; <label>:1509                                    ; preds = %1474, %1415, %1343
  %1510 = phi float [ %1508, %1474 ], [ %1416, %1415 ], [ %1355, %1343 ]
  %1511 = phi float [ %1505, %1474 ], [ %1417, %1415 ], [ %1354, %1343 ]
  %1512 = phi float [ %1502, %1474 ], [ %1418, %1415 ], [ %1353, %1343 ]
  %1513 = fcmp fast ogt float %1000, %1037
  %1514 = and i1 %1356, %1513
  %1515 = and i1 %1358, %1514
  %1516 = and i1 %1360, %1515
  %1517 = and i1 %1362, %1516
  br i1 %1517, label %1518, label %1575, !dx.controlflow.hints !94

; <label>:1518                                    ; preds = %1509
  %1519 = fmul fast float %1039, 0x3FC24924A0000000
  %1520 = fsub fast float %1000, %1037
  %1521 = fdiv fast float %1520, %1519
  %1522 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.CBufRet.f32 %1525, 2
  %1529 = fsub fast float %1524, %1512
  %1530 = fsub fast float %1526, %1350
  %1531 = fsub fast float %1527, %1351
  %1532 = fsub fast float %1528, %1352
  %1533 = fmul fast float %1529, %1522
  %1534 = fmul fast float %1530, %1522
  %1535 = fmul fast float %1531, %1522
  %1536 = fmul fast float %1532, %1522
  %1537 = fadd fast float %1533, %1512
  %1538 = fadd fast float %1534, %1350
  %1539 = fadd fast float %1535, %1351
  %1540 = fadd fast float %1536, %1352
  %1541 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1546 = fsub fast float %1541, %1511
  %1547 = fsub fast float %1543, %1347
  %1548 = fsub fast float %1544, %1348
  %1549 = fsub fast float %1545, %1349
  %1550 = fmul fast float %1546, %1522
  %1551 = fmul fast float %1547, %1522
  %1552 = fmul fast float %1548, %1522
  %1553 = fmul fast float %1549, %1522
  %1554 = fadd fast float %1550, %1511
  %1555 = fadd fast float %1551, %1347
  %1556 = fadd fast float %1552, %1348
  %1557 = fadd fast float %1553, %1349
  %1558 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.CBufRet.f32 %1559, 1
  %1562 = extractvalue %dx.types.CBufRet.f32 %1559, 2
  %1563 = fsub fast float %1558, %1510
  %1564 = fsub fast float %1560, %1344
  %1565 = fsub fast float %1561, %1345
  %1566 = fsub fast float %1562, %1346
  %1567 = fmul fast float %1563, %1522
  %1568 = fmul fast float %1564, %1522
  %1569 = fmul fast float %1565, %1522
  %1570 = fmul fast float %1566, %1522
  %1571 = fadd fast float %1567, %1510
  %1572 = fadd fast float %1568, %1344
  %1573 = fadd fast float %1569, %1345
  %1574 = fadd fast float %1570, %1346
  br label %1575

; <label>:1575                                    ; preds = %1518, %1509
  %1576 = phi float [ %1571, %1518 ], [ %1510, %1509 ]
  %1577 = phi float [ %1572, %1518 ], [ %1344, %1509 ]
  %1578 = phi float [ %1573, %1518 ], [ %1345, %1509 ]
  %1579 = phi float [ %1574, %1518 ], [ %1346, %1509 ]
  %1580 = phi float [ %1554, %1518 ], [ %1511, %1509 ]
  %1581 = phi float [ %1555, %1518 ], [ %1347, %1509 ]
  %1582 = phi float [ %1556, %1518 ], [ %1348, %1509 ]
  %1583 = phi float [ %1557, %1518 ], [ %1349, %1509 ]
  %1584 = phi float [ %1537, %1518 ], [ %1512, %1509 ]
  %1585 = phi float [ %1538, %1518 ], [ %1350, %1509 ]
  %1586 = phi float [ %1539, %1518 ], [ %1351, %1509 ]
  %1587 = phi float [ %1540, %1518 ], [ %1352, %1509 ]
  %1588 = extractvalue %dx.types.CBufRet.f32 %1162, 3
  %1589 = fmul fast float %1588, %1584
  %1590 = fmul fast float %1588, %1580
  %1591 = fmul fast float %1588, %1576
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 3
  %1594 = fmul fast float %1589, %1593
  %1595 = fmul fast float %1590, %1593
  %1596 = fmul fast float %1591, %1593
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1595, float %1596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = fmul fast float %1597, 0x3FD20DD760000000
  %1599 = fmul fast float %1585, 1.500000e+00
  %1600 = fmul fast float %1599, %1588
  %1601 = fmul fast float %1600, %1593
  %1602 = fmul fast float %1586, 1.500000e+00
  %1603 = fmul fast float %1602, %1588
  %1604 = fmul fast float %1603, %1593
  %1605 = fmul fast float %1587, 1.500000e+00
  %1606 = fmul fast float %1605, %1588
  %1607 = fmul fast float %1606, %1593
  %1608 = fmul fast float %1581, 1.500000e+00
  %1609 = fmul fast float %1608, %1588
  %1610 = fmul fast float %1609, %1593
  %1611 = fmul fast float %1582, 1.500000e+00
  %1612 = fmul fast float %1611, %1588
  %1613 = fmul fast float %1612, %1593
  %1614 = fmul fast float %1583, 1.500000e+00
  %1615 = fmul fast float %1614, %1588
  %1616 = fmul fast float %1615, %1593
  %1617 = fmul fast float %1577, 1.500000e+00
  %1618 = fmul fast float %1617, %1588
  %1619 = fmul fast float %1618, %1593
  %1620 = fmul fast float %1578, 1.500000e+00
  %1621 = fmul fast float %1620, %1588
  %1622 = fmul fast float %1621, %1593
  %1623 = fmul fast float %1579, 1.500000e+00
  %1624 = fmul fast float %1623, %1588
  %1625 = fmul fast float %1624, %1593
  %1626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1594)  ; FMax(a,b)
  %1627 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1604, float %1607, float %1601, float %1604, float %1607)  ; Dot3(ax,ay,az,bx,by,bz)
  %1628 = fcmp fast oeq float %1627, 0.000000e+00
  %1629 = fcmp fast oeq float %1626, 0.000000e+00
  %1630 = or i1 %1629, %1628
  br i1 %1630, label %1660, label %1631

; <label>:1631                                    ; preds = %1575
  %1632 = fsub fast float -0.000000e+00, %1607
  %1633 = fsub fast float -0.000000e+00, %1601
  %1634 = call float @dx.op.unary.f32(i32 24, float %1627)  ; Sqrt(value)
  %1635 = fdiv fast float %1634, %1626
  %1636 = fcmp fast ogt float %1635, 0x3FFB6F8900000000
  %1637 = select i1 %1636, float 0x3FFB6F8900000000, float %1635
  %1638 = fmul fast float %1637, 0x3FE8A23460000000
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = call float @dx.op.binary.f32(i32 35, float %1637, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1641 = fmul fast float %1639, %1626
  %1642 = fmul fast float %1640, 0x3FF279A740000000
  %1643 = fadd fast float %1642, -1.000000e+00
  %1644 = call float @dx.op.dot3.f32(i32 55, float %1632, float %1633, float %1604, float %1632, float %1633, float %1604)  ; Dot3(ax,ay,az,bx,by,bz)
  %1645 = call float @dx.op.unary.f32(i32 25, float %1644)  ; Rsqrt(value)
  %1646 = fmul fast float %1645, %1632
  %1647 = fmul fast float %1645, %1633
  %1648 = fmul fast float %1645, %1604
  %1649 = fmul fast float %1643, %1643
  %1650 = fsub fast float 1.000000e+00, %1649
  %1651 = fmul fast float %1640, 0x40005F8BE0000000
  %1652 = fsub fast float 0x400C5BF8A0000000, %1651
  %1653 = fdiv fast float %1641, %1652
  %1654 = fmul fast float %1653, 0x3FEE31C3C0000000
  %1655 = fmul fast float %1654, %1650
  %1656 = fmul fast float %1640, 0x3FDACB7480000000
  %1657 = fadd fast float %1656, 0xBFD7347680000000
  %1658 = fmul fast float %1657, %1653
  %1659 = fmul fast float %1658, %1650
  br label %1660

; <label>:1660                                    ; preds = %1631, %1575
  %1661 = phi float [ %1646, %1631 ], [ 0.000000e+00, %1575 ]
  %1662 = phi float [ %1647, %1631 ], [ 0.000000e+00, %1575 ]
  %1663 = phi float [ %1648, %1631 ], [ 0.000000e+00, %1575 ]
  %1664 = phi float [ %1655, %1631 ], [ 0.000000e+00, %1575 ]
  %1665 = phi float [ %1659, %1631 ], [ 0.000000e+00, %1575 ]
  %1666 = call float @dx.op.dot3.f32(i32 55, float %1661, float %1662, float %1663, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %1667 = fmul fast float %1666, %1666
  %1668 = fmul fast float %1667, 0x3FEE471020000000
  %1669 = fadd fast float %1668, 0xBFD42F6020000000
  %1670 = fmul fast float %1626, 0x3FD20DD760000000
  %1671 = fmul fast float %1669, %1665
  %1672 = fmul fast float %1664, 0x3FDF454380000000
  %1673 = fmul fast float %1672, %1666
  %1674 = fadd fast float %1673, %1670
  %1675 = fadd fast float %1674, %1671
  %1676 = call float @dx.op.dot3.f32(i32 55, float %1661, float %1662, float %1663, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %1677 = fmul fast float %1676, 0x3FDF454380000000
  %1678 = fmul fast float %1676, %1676
  %1679 = fmul fast float %1678, 0x3FEE471020000000
  %1680 = fadd fast float %1679, 0xBFD42F6020000000
  %1681 = call float @dx.op.dot3.f32(i32 55, float %1626, float %1664, float %1665, float 0x3FD20DD760000000, float %1677, float %1680)  ; Dot3(ax,ay,az,bx,by,bz)
  %1682 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1595)  ; FMax(a,b)
  %1683 = call float @dx.op.dot3.f32(i32 55, float %1610, float %1613, float %1616, float %1610, float %1613, float %1616)  ; Dot3(ax,ay,az,bx,by,bz)
  %1684 = fcmp fast oeq float %1683, 0.000000e+00
  %1685 = fcmp fast oeq float %1682, 0.000000e+00
  %1686 = or i1 %1685, %1684
  br i1 %1686, label %1716, label %1687

; <label>:1687                                    ; preds = %1660
  %1688 = fsub fast float -0.000000e+00, %1616
  %1689 = fsub fast float -0.000000e+00, %1610
  %1690 = call float @dx.op.unary.f32(i32 24, float %1683)  ; Sqrt(value)
  %1691 = fdiv fast float %1690, %1682
  %1692 = fcmp fast ogt float %1691, 0x3FFB6F8900000000
  %1693 = select i1 %1692, float 0x3FFB6F8900000000, float %1691
  %1694 = fmul fast float %1693, 0x3FE8A23460000000
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = call float @dx.op.binary.f32(i32 35, float %1693, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1697 = fmul fast float %1695, %1682
  %1698 = fmul fast float %1696, 0x3FF279A740000000
  %1699 = fadd fast float %1698, -1.000000e+00
  %1700 = call float @dx.op.dot3.f32(i32 55, float %1688, float %1689, float %1613, float %1688, float %1689, float %1613)  ; Dot3(ax,ay,az,bx,by,bz)
  %1701 = call float @dx.op.unary.f32(i32 25, float %1700)  ; Rsqrt(value)
  %1702 = fmul fast float %1701, %1688
  %1703 = fmul fast float %1701, %1689
  %1704 = fmul fast float %1701, %1613
  %1705 = fmul fast float %1699, %1699
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = fmul fast float %1696, 0x40005F8BE0000000
  %1708 = fsub fast float 0x400C5BF8A0000000, %1707
  %1709 = fdiv fast float %1697, %1708
  %1710 = fmul fast float %1709, 0x3FEE31C3C0000000
  %1711 = fmul fast float %1710, %1706
  %1712 = fmul fast float %1696, 0x3FDACB7480000000
  %1713 = fadd fast float %1712, 0xBFD7347680000000
  %1714 = fmul fast float %1713, %1709
  %1715 = fmul fast float %1714, %1706
  br label %1716

; <label>:1716                                    ; preds = %1687, %1660
  %1717 = phi float [ %1702, %1687 ], [ 0.000000e+00, %1660 ]
  %1718 = phi float [ %1703, %1687 ], [ 0.000000e+00, %1660 ]
  %1719 = phi float [ %1704, %1687 ], [ 0.000000e+00, %1660 ]
  %1720 = phi float [ %1711, %1687 ], [ 0.000000e+00, %1660 ]
  %1721 = phi float [ %1715, %1687 ], [ 0.000000e+00, %1660 ]
  %1722 = call float @dx.op.dot3.f32(i32 55, float %1717, float %1718, float %1719, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %1723 = fmul fast float %1722, %1722
  %1724 = fmul fast float %1723, 0x3FEE471020000000
  %1725 = fadd fast float %1724, 0xBFD42F6020000000
  %1726 = fmul fast float %1682, 0x3FD20DD760000000
  %1727 = fmul fast float %1725, %1721
  %1728 = fmul fast float %1720, 0x3FDF454380000000
  %1729 = fmul fast float %1728, %1722
  %1730 = fadd fast float %1729, %1726
  %1731 = fadd fast float %1730, %1727
  %1732 = call float @dx.op.dot3.f32(i32 55, float %1717, float %1718, float %1719, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %1733 = fmul fast float %1732, 0x3FDF454380000000
  %1734 = fmul fast float %1732, %1732
  %1735 = fmul fast float %1734, 0x3FEE471020000000
  %1736 = fadd fast float %1735, 0xBFD42F6020000000
  %1737 = call float @dx.op.dot3.f32(i32 55, float %1682, float %1720, float %1721, float 0x3FD20DD760000000, float %1733, float %1736)  ; Dot3(ax,ay,az,bx,by,bz)
  %1738 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1596)  ; FMax(a,b)
  %1739 = call float @dx.op.dot3.f32(i32 55, float %1619, float %1622, float %1625, float %1619, float %1622, float %1625)  ; Dot3(ax,ay,az,bx,by,bz)
  %1740 = fcmp fast oeq float %1739, 0.000000e+00
  %1741 = fcmp fast oeq float %1738, 0.000000e+00
  %1742 = or i1 %1741, %1740
  br i1 %1742, label %1772, label %1743

; <label>:1743                                    ; preds = %1716
  %1744 = fsub fast float -0.000000e+00, %1625
  %1745 = fsub fast float -0.000000e+00, %1619
  %1746 = call float @dx.op.unary.f32(i32 24, float %1739)  ; Sqrt(value)
  %1747 = fdiv fast float %1746, %1738
  %1748 = fcmp fast ogt float %1747, 0x3FFB6F8900000000
  %1749 = select i1 %1748, float 0x3FFB6F8900000000, float %1747
  %1750 = fmul fast float %1749, 0x3FE8A23460000000
  %1751 = call float @dx.op.unary.f32(i32 7, float %1750)  ; Saturate(value)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1749, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1753 = fmul fast float %1751, %1738
  %1754 = fmul fast float %1752, 0x3FF279A740000000
  %1755 = fadd fast float %1754, -1.000000e+00
  %1756 = call float @dx.op.dot3.f32(i32 55, float %1744, float %1745, float %1622, float %1744, float %1745, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %1757 = call float @dx.op.unary.f32(i32 25, float %1756)  ; Rsqrt(value)
  %1758 = fmul fast float %1757, %1744
  %1759 = fmul fast float %1757, %1745
  %1760 = fmul fast float %1757, %1622
  %1761 = fmul fast float %1755, %1755
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = fmul fast float %1752, 0x40005F8BE0000000
  %1764 = fsub fast float 0x400C5BF8A0000000, %1763
  %1765 = fdiv fast float %1753, %1764
  %1766 = fmul fast float %1765, 0x3FEE31C3C0000000
  %1767 = fmul fast float %1766, %1762
  %1768 = fmul fast float %1752, 0x3FDACB7480000000
  %1769 = fadd fast float %1768, 0xBFD7347680000000
  %1770 = fmul fast float %1769, %1765
  %1771 = fmul fast float %1770, %1762
  br label %1772

; <label>:1772                                    ; preds = %1743, %1716
  %1773 = phi float [ %1758, %1743 ], [ 0.000000e+00, %1716 ]
  %1774 = phi float [ %1759, %1743 ], [ 0.000000e+00, %1716 ]
  %1775 = phi float [ %1760, %1743 ], [ 0.000000e+00, %1716 ]
  %1776 = phi float [ %1767, %1743 ], [ 0.000000e+00, %1716 ]
  %1777 = phi float [ %1771, %1743 ], [ 0.000000e+00, %1716 ]
  %1778 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1774, float %1775, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %1779 = fmul fast float %1778, %1778
  %1780 = fmul fast float %1779, 0x3FEE471020000000
  %1781 = fadd fast float %1780, 0xBFD42F6020000000
  %1782 = fmul fast float %1738, 0x3FD20DD760000000
  %1783 = fmul fast float %1781, %1777
  %1784 = fmul fast float %1776, 0x3FDF454380000000
  %1785 = fmul fast float %1784, %1778
  %1786 = fadd fast float %1785, %1782
  %1787 = fadd fast float %1786, %1783
  %1788 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1774, float %1775, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %1789 = fmul fast float %1788, 0x3FDF454380000000
  %1790 = fmul fast float %1788, %1788
  %1791 = fmul fast float %1790, 0x3FEE471020000000
  %1792 = fadd fast float %1791, 0xBFD42F6020000000
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1738, float %1776, float %1777, float 0x3FD20DD760000000, float %1789, float %1792)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = call float @dx.op.binary.f32(i32 35, float %1675, float 0.000000e+00)  ; FMax(a,b)
  %1795 = call float @dx.op.binary.f32(i32 35, float %1731, float 0.000000e+00)  ; FMax(a,b)
  %1796 = call float @dx.op.binary.f32(i32 35, float %1787, float 0.000000e+00)  ; FMax(a,b)
  %1797 = call float @dx.op.binary.f32(i32 35, float %1681, float 0.000000e+00)  ; FMax(a,b)
  %1798 = call float @dx.op.binary.f32(i32 35, float %1737, float 0.000000e+00)  ; FMax(a,b)
  %1799 = call float @dx.op.binary.f32(i32 35, float %1793, float 0.000000e+00)  ; FMax(a,b)
  %1800 = fsub fast float %994, %1794
  %1801 = fsub fast float %995, %1795
  %1802 = fsub fast float %996, %1796
  %1803 = fmul fast float %1800, %451
  %1804 = fmul fast float %1801, %451
  %1805 = fmul fast float %1802, %451
  %1806 = fadd fast float %1803, %1794
  %1807 = fadd fast float %1804, %1795
  %1808 = fadd fast float %1805, %1796
  %1809 = fsub fast float %991, %1797
  %1810 = fsub fast float %992, %1798
  %1811 = fsub fast float %993, %1799
  %1812 = fmul fast float %1809, %451
  %1813 = fmul fast float %1810, %451
  %1814 = fmul fast float %1811, %451
  %1815 = fadd fast float %1812, %1797
  %1816 = fadd fast float %1813, %1798
  %1817 = fadd fast float %1814, %1799
  %1818 = fsub fast float %781, %1598
  %1819 = fmul fast float %1818, %451
  %1820 = fadd fast float %1819, %1598
  br label %1821

; <label>:1821                                    ; preds = %1772, %990
  %1822 = phi float [ %1815, %1772 ], [ %991, %990 ]
  %1823 = phi float [ %1816, %1772 ], [ %992, %990 ]
  %1824 = phi float [ %1817, %1772 ], [ %993, %990 ]
  %1825 = phi float [ %1806, %1772 ], [ %994, %990 ]
  %1826 = phi float [ %1807, %1772 ], [ %995, %990 ]
  %1827 = phi float [ %1808, %1772 ], [ %996, %990 ]
  %1828 = phi float [ %1820, %1772 ], [ %781, %990 ]
  %1829 = fmul fast float %1825, 0x3FEE623840000000
  %1830 = fmul fast float %1826, 0x3FEE623840000000
  %1831 = fmul fast float %1827, 0x3FEE623840000000
  %1832 = fmul fast float %1822, 0x3FEE623840000000
  %1833 = fmul fast float %1823, 0x3FEE623840000000
  %1834 = fmul fast float %1824, 0x3FEE623840000000
  %1835 = call float @dx.op.dot3.f32(i32 55, float %1829, float %1830, float %1831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1836 = select i1 %108, float 0.000000e+00, float %1829
  %1837 = select i1 %108, float %1835, float %1830
  %1838 = select i1 %108, float 0.000000e+00, float %1831
  %1839 = call float @dx.op.dot3.f32(i32 55, float %1832, float %1833, float %1834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1840 = select i1 %108, float 0.000000e+00, float %1832
  %1841 = select i1 %108, float %1839, float %1833
  %1842 = select i1 %108, float 0.000000e+00, float %1834
  %1843 = fmul fast float %391, 9.843750e-01
  %1844 = fmul fast float %191, 9.843750e-01
  %1845 = fadd fast float %1843, 7.812500e-03
  %1846 = fadd fast float %1844, 7.812500e-03
  %1847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 2
  %1849 = extractvalue %dx.types.ResRet.f32 %1847, 3
  %1850 = fmul fast float %1848, %371
  %1851 = fmul fast float %1848, %372
  %1852 = fmul fast float %1848, %389
  %1853 = fadd fast float %1850, %1849
  %1854 = fadd fast float %1851, %1849
  %1855 = fadd fast float %1852, %1849
  %1856 = call float @dx.op.binary.f32(i32 35, float %1854, float %1855)  ; FMax(a,b)
  %1857 = call float @dx.op.binary.f32(i32 35, float %1853, float %1856)  ; FMax(a,b)
  %1858 = fsub fast float 1.000000e+00, %1857
  %1859 = fmul fast float %1857, %191
  %1860 = fadd fast float %1859, %191
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %1863 = extractvalue %dx.types.CBufRet.f32 %1861, 3
  %1864 = fmul fast float %1860, %1862
  %1865 = fadd fast float %1864, %1863
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = fsub fast float 1.000000e+00, %406
  %1868 = fadd fast float %1867, %1866
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1870 = fcmp fast olt float %1869, 1.000000e+00
  br i1 %1870, label %1871, label %2346

; <label>:1871                                    ; preds = %1821
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %1874 = extractvalue %dx.types.CBufRet.f32 %1872, 3
  %1875 = fmul fast float %1873, %71
  %1876 = fmul fast float %1874, %72
  %1877 = fptoui float %1875 to i32
  %1878 = fptoui float %1876 to i32
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.CBufRet.f32 %1879, 2
  %1882 = extractvalue %dx.types.CBufRet.f32 %1879, 3
  %1883 = fadd fast float %214, -4.000000e+00
  %1884 = call float @dx.op.binary.f32(i32 35, float %1883, float 0.000000e+00)  ; FMax(a,b)
  %1885 = fadd fast float %1884, %1880
  %1886 = fmul fast float %1885, %1881
  %1887 = call float @dx.op.unary.f32(i32 23, float %1886)  ; Log(value)
  %1888 = fmul fast float %1887, %1882
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 2
  %1891 = fmul fast float %1888, %1890
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.i32 %1893, 1
  %1895 = add i32 %1894, -1
  %1896 = uitofp i32 %1894 to float
  %1897 = fmul fast float %1896, %1892
  %1898 = fptoui float %1897 to i32
  %1899 = call i32 @dx.op.binary.i32(i32 40, i32 %1898, i32 %1895)  ; UMin(a,b)
  %1900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.i32 %1900, 2
  %1902 = extractvalue %dx.types.CBufRet.i32 %1900, 3
  %1903 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1878, i32 %1901, i32 %1877)  ; UMad(a,b,c)
  %1904 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1899, i32 %1902, i32 %1903)  ; UMad(a,b,c)
  %1905 = call float @dx.op.binary.f32(i32 35, float %214, float 0.000000e+00)  ; FMax(a,b)
  %1906 = fptoui float %1905 to i32
  %1907 = lshr i32 %1906, 5
  %1908 = call i32 @dx.op.binary.i32(i32 40, i32 %1907, i32 8191)  ; UMin(a,b)
  %1909 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %1910 = fcmp fast ogt float %1909, 0.000000e+00
  %1911 = fcmp fast ogt float %399, 0.000000e+00
  %1912 = and i1 %1911, %1910
  br i1 %1912, label %1913, label %1942

; <label>:1913                                    ; preds = %1871
  %1914 = call float @dx.op.dot3.f32(i32 55, float %397, float %398, float %399, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1915 = call float @dx.op.binary.f32(i32 35, float %1914, float -1.000000e+00)  ; FMax(a,b)
  %1916 = call float @dx.op.binary.f32(i32 36, float %1915, float 1.000000e+00)  ; FMin(a,b)
  %1917 = fmul fast float %1916, %1916
  %1918 = fsub fast float 1.000000e+00, %1917
  %1919 = fmul fast float %1918, 0x3FFC6E2300000000
  %1920 = fsub fast float 1.000000e+00, %1919
  %1921 = fcmp fast ogt float %1920, 0.000000e+00
  %1922 = call float @dx.op.unary.f32(i32 24, float %1920)  ; Sqrt(value)
  %1923 = fsub fast float 1.000000e+00, %1922
  %1924 = call float @dx.op.unary.f32(i32 23, float %1923)  ; Log(value)
  %1925 = fmul fast float %1924, 5.000000e+00
  %1926 = call float @dx.op.unary.f32(i32 21, float %1925)  ; Exp(value)
  %1927 = fmul fast float %1926, 0x3FEF591A60000000
  %1928 = fadd fast float %1927, 0x3F94DCB540000000
  %1929 = select i1 %1921, float %1928, float 1.000000e+00
  %1930 = fcmp fast oge float %1929, 1.000000e+00
  %1931 = fmul fast float %1914, 2.000000e+00
  %1932 = fadd fast float %1931, %399
  %1933 = select i1 %1930, float %1932, float %399
  %1934 = fsub fast float %1933, %399
  %1935 = fmul fast float %1934, %1909
  %1936 = fadd fast float %1935, %399
  %1937 = call float @dx.op.dot3.f32(i32 55, float %397, float %398, float %1936, float %397, float %398, float %1936)  ; Dot3(ax,ay,az,bx,by,bz)
  %1938 = call float @dx.op.unary.f32(i32 25, float %1937)  ; Rsqrt(value)
  %1939 = fmul fast float %1938, %397
  %1940 = fmul fast float %1938, %398
  %1941 = fmul fast float %1936, %1938
  br label %1942

; <label>:1942                                    ; preds = %1913, %1871
  %1943 = phi float [ %1939, %1913 ], [ %397, %1871 ]
  %1944 = phi float [ %1940, %1913 ], [ %398, %1871 ]
  %1945 = phi float [ %1941, %1913 ], [ %399, %1871 ]
  %1946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.i32 %1946, 2
  %1948 = add nsw i32 %1947, -1
  %1949 = call i32 @dx.op.binary.i32(i32 37, i32 %1948, i32 0)  ; IMax(a,b)
  %1950 = shl i32 %1908, 2
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = lshr i32 %1952, 16
  %1954 = and i32 %1952, 65535
  %1955 = lshr i32 %1952, 21
  %1956 = lshr i32 %1954, 5
  %1957 = call i32 @dx.op.binary.i32(i32 40, i32 %1956, i32 %1949)  ; UMin(a,b)
  %1958 = icmp ugt i32 %1955, %1957
  br i1 %1958, label %2322, label %1959

; <label>:1959                                    ; preds = %1942
  br label %1960

; <label>:1960                                    ; preds = %2314, %1959
  %1961 = phi float [ %2315, %2314 ], [ 0.000000e+00, %1959 ]
  %1962 = phi float [ %2316, %2314 ], [ 0.000000e+00, %1959 ]
  %1963 = phi float [ %2317, %2314 ], [ 0.000000e+00, %1959 ]
  %1964 = phi float [ %2318, %2314 ], [ 1.000000e+00, %1959 ]
  %1965 = phi i32 [ %2319, %2314 ], [ %1955, %1959 ]
  %1966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.i32 %1966, 2
  %1968 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1904, i32 %1967, i32 %1965)  ; UMad(a,b,c)
  %1969 = shl i32 %1968, 2
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = shl i32 %1965, 5
  %1973 = sub nsw i32 %1953, %1972
  %1974 = call i32 @dx.op.binary.i32(i32 37, i32 %1973, i32 0)  ; IMax(a,b)
  %1975 = call i32 @dx.op.binary.i32(i32 38, i32 %1974, i32 31)  ; IMin(a,b)
  %1976 = sub nsw i32 1, %1953
  %1977 = add nsw i32 %1976, %1954
  %1978 = call i32 @dx.op.binary.i32(i32 37, i32 %1977, i32 0)  ; IMax(a,b)
  %1979 = call i32 @dx.op.binary.i32(i32 38, i32 %1978, i32 32)  ; IMin(a,b)
  %1980 = and i32 %1979, 31
  %1981 = shl i32 -1, %1980
  %1982 = xor i32 %1981, -1
  %1983 = and i32 %1975, 31
  %1984 = shl i32 %1982, %1983
  %1985 = icmp eq i32 %1979, 32
  %1986 = select i1 %1985, i32 -1, i32 %1984
  %1987 = and i32 %1986, %1971
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %2314, label %1989

; <label>:1989                                    ; preds = %1960
  br label %1990

; <label>:1990                                    ; preds = %2097, %1989
  %1991 = phi float [ %2098, %2097 ], [ %1961, %1989 ]
  %1992 = phi float [ %2099, %2097 ], [ %1962, %1989 ]
  %1993 = phi float [ %2100, %2097 ], [ %1963, %1989 ]
  %1994 = phi float [ %2101, %2097 ], [ %1964, %1989 ]
  %1995 = phi i32 [ %2000, %2097 ], [ %1987, %1989 ]
  %1996 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1995)  ; FirstbitLo(value)
  %1997 = add i32 %1996, %1972
  %1998 = and i32 %1996, 31
  %1999 = shl i32 1, %1998
  %2000 = xor i32 %1999, %1995
  %2001 = mul i32 %1997, 72
  %2002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2006 = add i32 %2001, 12
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = add i32 %2001, 16
  %2010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.ResRet.f32 %2010, 1
  %2013 = extractvalue %dx.types.ResRet.f32 %2010, 2
  %2014 = add i32 %2001, 28
  %2015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = add i32 %2001, 32
  %2018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.ResRet.f32 %2018, 1
  %2021 = extractvalue %dx.types.ResRet.f32 %2018, 2
  %2022 = extractvalue %dx.types.ResRet.f32 %2018, 3
  %2023 = add i32 %2001, 48
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.ResRet.f32 %2024, 1
  %2027 = add i32 %2001, 56
  %2028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.ResRet.f32 %2028, 1
  %2031 = add i32 %2001, 64
  %2032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.ResRet.f32 %2032, 1
  %2035 = mul i32 %1997, 60
  %2036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.ResRet.f32 %2036, 1
  %2039 = extractvalue %dx.types.ResRet.f32 %2036, 2
  %2040 = add i32 %2035, 12
  %2041 = add i32 %2035, 48
  %2042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.f32 %2042, 0
  %2044 = extractvalue %dx.types.ResRet.f32 %2042, 1
  %2045 = extractvalue %dx.types.ResRet.f32 %2042, 2
  %2046 = and i32 %2008, 32767
  %2047 = bitcast float %2003 to i32
  %2048 = icmp eq i32 %2047, -1
  %2049 = bitcast float %2004 to i32
  %2050 = and i32 %2008, 32768
  %2051 = icmp ne i32 %2050, 0
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.CBufRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.CBufRet.f32 %2052, 2
  %2056 = fsub fast float %2037, %2053
  %2057 = fsub fast float %2038, %2054
  %2058 = fsub fast float %2039, %2055
  %2059 = fsub fast float %248, %2056
  %2060 = fsub fast float %249, %2057
  %2061 = fsub fast float %250, %2058
  %2062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.ResRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.ResRet.f32 %2062, 2
  %2066 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float %2063, float %2064, float %2065)  ; Dot3(ax,ay,az,bx,by,bz)
  %2067 = add i32 %2035, 24
  %2068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.ResRet.f32 %2068, 1
  %2071 = extractvalue %dx.types.ResRet.f32 %2068, 2
  %2072 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %2073 = add i32 %2035, 36
  %2074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = extractvalue %dx.types.ResRet.f32 %2074, 1
  %2077 = extractvalue %dx.types.ResRet.f32 %2074, 2
  %2078 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float %2075, float %2076, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2079 = call float @dx.op.unary.f32(i32 6, float %2066)  ; FAbs(value)
  %2080 = call float @dx.op.unary.f32(i32 6, float %2072)  ; FAbs(value)
  %2081 = call float @dx.op.unary.f32(i32 6, float %2078)  ; FAbs(value)
  %2082 = fsub fast float %2043, %2079
  %2083 = fsub fast float %2044, %2080
  %2084 = fsub fast float %2045, %2081
  %2085 = fmul fast float %2082, %2011
  %2086 = fmul fast float %2083, %2012
  %2087 = fmul fast float %2084, %2013
  %2088 = call float @dx.op.binary.f32(i32 36, float %2086, float %2087)  ; FMin(a,b)
  %2089 = call float @dx.op.binary.f32(i32 36, float %2085, float %2088)  ; FMin(a,b)
  %2090 = call float @dx.op.unary.f32(i32 7, float %2089)  ; Saturate(value)
  %2091 = call float @dx.op.binary.f32(i32 36, float %1994, float %2090)  ; FMin(a,b)
  %2092 = uitofp i1 %2051 to float
  %2093 = fadd fast float %1909, 1.000000e+00
  %2094 = fsub fast float %2093, %2092
  %2095 = fmul fast float %2091, %2094
  %2096 = fcmp fast ogt float %2095, 0.000000e+00
  br i1 %2096, label %2103, label %2097

; <label>:2097                                    ; preds = %2245, %1990
  %2098 = phi float [ %2309, %2245 ], [ %1991, %1990 ]
  %2099 = phi float [ %2310, %2245 ], [ %1992, %1990 ]
  %2100 = phi float [ %2311, %2245 ], [ %1993, %1990 ]
  %2101 = phi float [ %2312, %2245 ], [ %1994, %1990 ]
  %2102 = icmp eq i32 %1995, %1999
  br i1 %2102, label %2313, label %1990

; <label>:2103                                    ; preds = %1990
  br i1 %2048, label %2161, label %2104

; <label>:2104                                    ; preds = %2103
  %2105 = fsub fast float -0.000000e+00, %2063
  %2106 = fsub fast float -0.000000e+00, %2064
  %2107 = fsub fast float -0.000000e+00, %2065
  %2108 = call float @dx.op.dot3.f32(i32 55, float %1943, float %1944, float %1945, float %2105, float %2106, float %2107)  ; Dot3(ax,ay,az,bx,by,bz)
  %2109 = fsub fast float -0.000000e+00, %2108
  %2110 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float %2105, float %2106, float %2107)  ; Dot3(ax,ay,az,bx,by,bz)
  %2111 = fadd fast float %2110, %2026
  %2112 = fadd fast float %2025, %2110
  %2113 = fsub fast float -0.000000e+00, %2112
  %2114 = fcmp ogt float %2108, -0.000000e+00
  %2115 = select i1 %2114, float %2113, float %2111
  %2116 = call float @dx.op.unary.f32(i32 6, float %2109)  ; FAbs(value)
  %2117 = fdiv fast float 1.000000e+00, %2116
  %2118 = fmul fast float %2115, %2117
  %2119 = call float @dx.op.binary.f32(i32 35, float %2118, float 0.000000e+00)  ; FMax(a,b)
  %2120 = fsub fast float -0.000000e+00, %2069
  %2121 = fsub fast float -0.000000e+00, %2070
  %2122 = fsub fast float -0.000000e+00, %2071
  %2123 = call float @dx.op.dot3.f32(i32 55, float %1943, float %1944, float %1945, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2124 = fsub fast float -0.000000e+00, %2123
  %2125 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2126 = fadd fast float %2125, %2030
  %2127 = fadd fast float %2029, %2125
  %2128 = fsub fast float -0.000000e+00, %2127
  %2129 = fcmp ogt float %2123, -0.000000e+00
  %2130 = select i1 %2129, float %2128, float %2126
  %2131 = call float @dx.op.unary.f32(i32 6, float %2124)  ; FAbs(value)
  %2132 = fdiv fast float 1.000000e+00, %2131
  %2133 = fmul fast float %2130, %2132
  %2134 = call float @dx.op.binary.f32(i32 35, float %2133, float 0.000000e+00)  ; FMax(a,b)
  %2135 = fsub fast float -0.000000e+00, %2075
  %2136 = fsub fast float -0.000000e+00, %2076
  %2137 = fsub fast float -0.000000e+00, %2077
  %2138 = call float @dx.op.dot3.f32(i32 55, float %1943, float %1944, float %1945, float %2135, float %2136, float %2137)  ; Dot3(ax,ay,az,bx,by,bz)
  %2139 = fsub fast float -0.000000e+00, %2138
  %2140 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float %2135, float %2136, float %2137)  ; Dot3(ax,ay,az,bx,by,bz)
  %2141 = fadd fast float %2140, %2034
  %2142 = fadd fast float %2033, %2140
  %2143 = fsub fast float -0.000000e+00, %2142
  %2144 = fcmp ogt float %2138, -0.000000e+00
  %2145 = select i1 %2144, float %2143, float %2141
  %2146 = call float @dx.op.unary.f32(i32 6, float %2139)  ; FAbs(value)
  %2147 = fdiv fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2145, %2147
  %2149 = call float @dx.op.binary.f32(i32 35, float %2148, float 0.000000e+00)  ; FMax(a,b)
  %2150 = call float @dx.op.binary.f32(i32 36, float %2134, float %2149)  ; FMin(a,b)
  %2151 = call float @dx.op.binary.f32(i32 36, float %2119, float %2150)  ; FMin(a,b)
  %2152 = fmul fast float %2151, %1943
  %2153 = fmul fast float %2151, %1944
  %2154 = fmul fast float %2151, %1945
  %2155 = fadd fast float %2152, %248
  %2156 = fadd fast float %2153, %249
  %2157 = fadd fast float %2154, %250
  %2158 = fsub fast float %2155, %2003
  %2159 = fsub fast float %2156, %2004
  %2160 = fsub fast float %2157, %2005
  br label %2168

; <label>:2161                                    ; preds = %2103
  %2162 = fmul fast float %1943, 8.096000e+03
  %2163 = fmul fast float %1944, 8.096000e+03
  %2164 = fmul fast float %1945, 8.096000e+03
  %2165 = fadd fast float %2162, %248
  %2166 = fadd fast float %2163, %249
  %2167 = fadd fast float %2164, %250
  br label %2168

; <label>:2168                                    ; preds = %2161, %2104
  %2169 = phi float [ %1943, %2161 ], [ %2158, %2104 ]
  %2170 = phi float [ %1944, %2161 ], [ %2159, %2104 ]
  %2171 = phi float [ %1945, %2161 ], [ %2160, %2104 ]
  %2172 = phi float [ %2165, %2161 ], [ %2155, %2104 ]
  %2173 = phi float [ %2166, %2161 ], [ %2156, %2104 ]
  %2174 = phi float [ %2167, %2161 ], [ %2157, %2104 ]
  %2175 = fcmp fast olt float %2022, 1.000000e+00
  br i1 %2175, label %2176, label %2207, !dx.controlflow.hints !95

; <label>:2176                                    ; preds = %2168
  %2177 = fmul fast float %2171, %2020
  %2178 = fmul fast float %2170, %2021
  %2179 = fsub fast float %2177, %2178
  %2180 = fmul fast float %2169, %2021
  %2181 = fmul fast float %2171, %2019
  %2182 = fsub fast float %2180, %2181
  %2183 = fmul fast float %2170, %2019
  %2184 = fmul fast float %2169, %2020
  %2185 = fsub fast float %2183, %2184
  %2186 = fmul fast float %2179, 2.000000e+00
  %2187 = fmul fast float %2182, 2.000000e+00
  %2188 = fmul fast float %2185, 2.000000e+00
  %2189 = fmul fast float %2186, %2022
  %2190 = fmul fast float %2187, %2022
  %2191 = fmul fast float %2188, %2022
  %2192 = fmul fast float %2188, %2020
  %2193 = fmul fast float %2187, %2021
  %2194 = fmul fast float %2186, %2021
  %2195 = fmul fast float %2188, %2019
  %2196 = fmul fast float %2187, %2019
  %2197 = fmul fast float %2186, %2020
  %2198 = fadd fast float %2192, %2169
  %2199 = fadd fast float %2198, %2189
  %2200 = fsub fast float %2199, %2193
  %2201 = fsub fast float %2170, %2195
  %2202 = fadd fast float %2201, %2190
  %2203 = fadd fast float %2202, %2194
  %2204 = fadd fast float %2191, %2171
  %2205 = fsub fast float %2204, %2197
  %2206 = fadd fast float %2205, %2196
  br label %2207

; <label>:2207                                    ; preds = %2176, %2168
  %2208 = phi float [ %2200, %2176 ], [ %2169, %2168 ]
  %2209 = phi float [ %2203, %2176 ], [ %2170, %2168 ]
  %2210 = phi float [ %2206, %2176 ], [ %2171, %2168 ]
  br i1 %2048, label %2242, label %2211

; <label>:2211                                    ; preds = %2207
  %2212 = fmul fast float %191, 0x400187C840000000
  %2213 = fadd fast float %2212, 0xC00EFC2120000000
  %2214 = fmul fast float %2213, %191
  %2215 = fadd fast float %2214, 0x3FE5D16340000000
  %2216 = fmul fast float %2215, %191
  %2217 = fadd fast float %2216, 1.000000e+00
  %2218 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2219 = fsub fast float %2172, %248
  %2220 = fsub fast float %2173, %249
  %2221 = fsub fast float %2174, %250
  %2222 = fsub fast float %2172, %2003
  %2223 = fsub fast float %2173, %2004
  %2224 = fsub fast float %2174, %2005
  %2225 = call float @dx.op.dot3.f32(i32 55, float %2219, float %2220, float %2221, float %2219, float %2220, float %2221)  ; Dot3(ax,ay,az,bx,by,bz)
  %2226 = call float @dx.op.dot3.f32(i32 55, float %2222, float %2223, float %2224, float %2222, float %2223, float %2224)  ; Dot3(ax,ay,az,bx,by,bz)
  %2227 = fadd fast float %2226, 0x3EE4F8B580000000
  %2228 = fdiv fast float %2225, %2227
  %2229 = bitcast float %2228 to i32
  %2230 = ashr i32 %2229, 1
  %2231 = add nsw i32 %2230, 532487669
  %2232 = bitcast i32 %2231 to float
  %2233 = fmul fast float %2232, %2218
  %2234 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2235 = fmul fast float %2234, 0x4009981AE0000000
  %2236 = fsub fast float 0x40111BBD80000000, %2235
  %2237 = fmul fast float %2236, %2234
  %2238 = fadd fast float %2237, 0xC0009F6020000000
  %2239 = fmul fast float %2238, %2234
  %2240 = fadd fast float %2239, 1.000000e+00
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  br label %2245

; <label>:2242                                    ; preds = %2207
  %2243 = icmp ne i32 %2049, -1
  %2244 = zext i1 %2243 to i32
  br label %2245

; <label>:2245                                    ; preds = %2242, %2211
  %2246 = phi float [ %191, %2242 ], [ %2241, %2211 ]
  %2247 = phi i32 [ %2244, %2242 ], [ 0, %2211 ]
  %2248 = fmul float %2246, 5.000000e+00
  %2249 = fsub float 5.000000e+00, %2248
  %2250 = icmp ne i32 %2247, 0
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 3
  %2253 = fadd fast float %2252, %2249
  %2254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2253)  ; FMax(a,b)
  %2255 = call float @dx.op.unary.f32(i32 6, float %2208)  ; FAbs(value)
  %2256 = call float @dx.op.unary.f32(i32 6, float %2209)  ; FAbs(value)
  %2257 = fadd fast float %2256, %2255
  %2258 = call float @dx.op.unary.f32(i32 6, float %2210)  ; FAbs(value)
  %2259 = fadd fast float %2257, %2258
  %2260 = fcmp fast oeq float %2259, 0.000000e+00
  %2261 = fdiv fast float 1.000000e+00, %2259
  %2262 = select i1 %2260, float 1.000000e+00, float %2261
  %2263 = fmul fast float %2262, %2208
  %2264 = fmul fast float %2262, %2209
  %2265 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2266 = call float @dx.op.unary.f32(i32 6, float %2263)  ; FAbs(value)
  %2267 = fsub fast float 1.000000e+00, %2265
  %2268 = fsub fast float 1.000000e+00, %2266
  %2269 = fcmp fast oge float %2263, 0.000000e+00
  %2270 = fcmp fast oge float %2264, 0.000000e+00
  %2271 = select i1 %2269, float 1.000000e+00, float -1.000000e+00
  %2272 = select i1 %2270, float 1.000000e+00, float -1.000000e+00
  %2273 = fcmp fast ole float %2210, 0.000000e+00
  %2274 = fmul fast float %2271, %2267
  %2275 = fmul fast float %2272, %2268
  %2276 = select i1 %2273, float %2274, float %2263
  %2277 = select i1 %2273, float %2275, float %2264
  %2278 = fmul fast float %2276, 5.000000e-01
  %2279 = fmul fast float %2277, 5.000000e-01
  %2280 = fadd fast float %2278, 5.000000e-01
  %2281 = fadd fast float %2279, 5.000000e-01
  %2282 = uitofp i32 %2046 to float
  %2283 = call float @dx.op.binary.f32(i32 36, float %2254, float 3.000000e+00)  ; FMin(a,b)
  %2284 = fadd fast float %2283, 2.000000e+00
  %2285 = call float @dx.op.unary.f32(i32 21, float %2284)  ; Exp(value)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2251, 1
  %2287 = fmul fast float %2286, %2285
  %2288 = fmul fast float %2287, 2.000000e+00
  %2289 = fsub fast float 1.000000e+00, %2288
  %2290 = fmul fast float %2280, %2289
  %2291 = fmul fast float %2281, %2289
  %2292 = fadd fast float %2290, %2287
  %2293 = fadd fast float %2291, %2287
  %2294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %2292, float %2293, float %2282, float undef, i32 0, i32 0, i32 undef, float %2254)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 3
  %2300 = fmul fast float %2299, %2016
  %2301 = call float @dx.op.binary.f32(i32 36, float %1828, float %2300)  ; FMin(a,b)
  %2302 = select i1 %2250, float %2301, float %2300
  %2303 = fmul fast float %2295, %2095
  %2304 = fmul fast float %2303, %2302
  %2305 = fmul fast float %2296, %2095
  %2306 = fmul fast float %2305, %2302
  %2307 = fmul fast float %2297, %2095
  %2308 = fmul fast float %2307, %2302
  %2309 = fadd fast float %2304, %1991
  %2310 = fadd fast float %2306, %1992
  %2311 = fadd fast float %2308, %1993
  %2312 = fsub fast float %1994, %2095
  br label %2097

; <label>:2313                                    ; preds = %2097
  br label %2314

; <label>:2314                                    ; preds = %2313, %1960
  %2315 = phi float [ %1961, %1960 ], [ %2098, %2313 ]
  %2316 = phi float [ %1962, %1960 ], [ %2099, %2313 ]
  %2317 = phi float [ %1963, %1960 ], [ %2100, %2313 ]
  %2318 = phi float [ %1964, %1960 ], [ %2101, %2313 ]
  %2319 = add i32 %1965, 1
  %2320 = icmp ugt i32 %2319, %1957
  br i1 %2320, label %2321, label %1960, !llvm.loop !96

; <label>:2321                                    ; preds = %2314
  br label %2322

; <label>:2322                                    ; preds = %2321, %1942
  %2323 = phi float [ 0.000000e+00, %1942 ], [ %2315, %2321 ]
  %2324 = phi float [ 0.000000e+00, %1942 ], [ %2316, %2321 ]
  %2325 = phi float [ 0.000000e+00, %1942 ], [ %2317, %2321 ]
  %2326 = call float @dx.op.dot3.f32(i32 55, float %2323, float %2324, float %2325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2327 = select i1 %108, float 0.000000e+00, float %2323
  %2328 = select i1 %108, float %2326, float %2324
  %2329 = select i1 %108, float 0.000000e+00, float %2325
  %2330 = fcmp fast olt float %1869, 0.000000e+00
  %2331 = call float @dx.op.unary.f32(i32 6, float %1869)  ; FAbs(value)
  %2332 = fmul fast float %2331, %1840
  %2333 = fmul fast float %2331, %1841
  %2334 = fmul fast float %2331, %1842
  %2335 = select i1 %2330, float %1840, float %2332
  %2336 = select i1 %2330, float %1841, float %2333
  %2337 = select i1 %2330, float %1842, float %2334
  %2338 = fsub fast float 1.000000e+00, %2331
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2340 = fmul fast float %2339, %2327
  %2341 = fmul fast float %2339, %2328
  %2342 = fmul fast float %2339, %2329
  %2343 = fadd fast float %2335, %2340
  %2344 = fadd fast float %2336, %2341
  %2345 = fadd fast float %2337, %2342
  br label %2346

; <label>:2346                                    ; preds = %2322, %1821
  %2347 = phi float [ %1840, %1821 ], [ %2343, %2322 ]
  %2348 = phi float [ %1841, %1821 ], [ %2344, %2322 ]
  %2349 = phi float [ %1842, %1821 ], [ %2345, %2322 ]
  %2350 = fmul fast float %1858, %1836
  %2351 = fmul fast float %1858, %1837
  %2352 = fmul fast float %1858, %1838
  %2353 = fmul fast float %2347, %1853
  %2354 = fmul fast float %2348, %1854
  %2355 = fmul fast float %2349, %1855
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 3
  %2358 = fcmp fast oeq float %2357, 0.000000e+00
  br i1 %2358, label %3749, label %2359

; <label>:2359                                    ; preds = %2346
  %2360 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2361 = extractvalue %dx.types.CBufRet.f32 %2356, 1
  %2362 = extractvalue %dx.types.CBufRet.f32 %2356, 2
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.CBufRet.f32 %2363, 2
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.CBufRet.f32 %2367, 1
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2364, float %2365, float %2366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = select i1 %108, float %2368, float %2364
  %2372 = select i1 %108, float %2370, float %2365
  %2373 = select i1 %108, float %2369, float %2366
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2376 = fmul fast float %2375, %179
  %2377 = fmul fast float %2375, %180
  %2378 = fmul fast float %2375, %181
  %2379 = fadd fast float %2376, %248
  %2380 = fadd fast float %2377, %249
  %2381 = fadd fast float %2378, %250
  %2382 = fcmp fast olt float %2357, 0.000000e+00
  br i1 %2382, label %3478, label %2383

; <label>:2383                                    ; preds = %2359
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2388 = extractvalue %dx.types.CBufRet.f32 %2384, 3
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2392 = extractvalue %dx.types.CBufRet.f32 %2389, 2
  %2393 = extractvalue %dx.types.CBufRet.f32 %2389, 3
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2397 = extractvalue %dx.types.CBufRet.f32 %2394, 2
  %2398 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2399 = fmul fast float %2385, %2379
  %2400 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2386, float %2399)  ; FMad(a,b,c)
  %2401 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %2387, float %2400)  ; FMad(a,b,c)
  %2402 = fadd fast float %2401, %2388
  %2403 = fmul fast float %2390, %2379
  %2404 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2391, float %2403)  ; FMad(a,b,c)
  %2405 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %2392, float %2404)  ; FMad(a,b,c)
  %2406 = fadd fast float %2405, %2393
  %2407 = fmul fast float %2395, %2379
  %2408 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2396, float %2407)  ; FMad(a,b,c)
  %2409 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %2397, float %2408)  ; FMad(a,b,c)
  %2410 = fadd fast float %2409, %2398
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 0
  %2413 = extractvalue %dx.types.CBufRet.f32 %2411, 1
  %2414 = extractvalue %dx.types.CBufRet.f32 %2411, 3
  %2415 = fmul fast float %2414, %2402
  %2416 = fmul fast float %2414, %2406
  %2417 = fadd fast float %2415, %2412
  %2418 = fadd fast float %2416, %2413
  %2419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2420 = extractvalue %dx.types.CBufRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.CBufRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.CBufRet.f32 %2419, 3
  %2423 = fmul fast float %2422, %2402
  %2424 = fmul fast float %2422, %2406
  %2425 = fadd fast float %2423, %2420
  %2426 = fadd fast float %2424, %2421
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 1
  %2429 = fsub fast float %2428, %2410
  %2430 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2431 = fmul fast float %2429, %2430
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2419, 2
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 2
  %2437 = fadd fast float %2436, %2434
  %2438 = fcmp fast ogt float %2437, 0.000000e+00
  br i1 %2438, label %2439, label %2463

; <label>:2439                                    ; preds = %2383
  %2440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2441 = extractvalue %dx.types.CBufRet.f32 %2440, 0
  %2442 = extractvalue %dx.types.CBufRet.f32 %2440, 1
  %2443 = fsub fast float %2425, %2441
  %2444 = fsub fast float %2426, %2442
  %2445 = fcmp fast olt float %2443, 0.000000e+00
  %2446 = fcmp fast olt float %2444, 0.000000e+00
  %2447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.f32 %2447, 0
  %2449 = extractvalue %dx.types.CBufRet.f32 %2447, 1
  %2450 = extractvalue %dx.types.CBufRet.f32 %2447, 2
  %2451 = extractvalue %dx.types.CBufRet.f32 %2447, 3
  %2452 = select i1 %2445, float %2448, float %2450
  %2453 = select i1 %2446, float %2449, float %2451
  %2454 = fmul fast float %2452, %2443
  %2455 = fmul fast float %2453, %2444
  %2456 = call float @dx.op.unary.f32(i32 6, float %2454)  ; FAbs(value)
  %2457 = call float @dx.op.unary.f32(i32 6, float %2455)  ; FAbs(value)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2459 = call float @dx.op.binary.f32(i32 35, float %2456, float %2457)  ; FMax(a,b)
  %2460 = fsub fast float %2458, %2459
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2462 = fmul fast float %2461, %2433
  br label %2463

; <label>:2463                                    ; preds = %2439, %2383
  %2464 = phi float [ %2462, %2439 ], [ 0.000000e+00, %2383 ]
  %2465 = extractvalue %dx.types.CBufRet.f32 %2411, 2
  %2466 = extractvalue %dx.types.CBufRet.f32 %2435, 1
  %2467 = fadd fast float %2466, %2465
  %2468 = fcmp fast ogt float %2467, 0.000000e+00
  %2469 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  br i1 %2468, label %2470, label %2493

; <label>:2470                                    ; preds = %2463
  %2471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.f32 %2471, 0
  %2473 = extractvalue %dx.types.CBufRet.f32 %2471, 1
  %2474 = fsub fast float %2417, %2472
  %2475 = fsub fast float %2418, %2473
  %2476 = fcmp fast olt float %2474, 0.000000e+00
  %2477 = fcmp fast olt float %2475, 0.000000e+00
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 0
  %2480 = extractvalue %dx.types.CBufRet.f32 %2478, 1
  %2481 = extractvalue %dx.types.CBufRet.f32 %2478, 2
  %2482 = extractvalue %dx.types.CBufRet.f32 %2478, 3
  %2483 = select i1 %2476, float %2479, float %2481
  %2484 = select i1 %2477, float %2480, float %2482
  %2485 = fmul fast float %2483, %2474
  %2486 = fmul fast float %2484, %2475
  %2487 = call float @dx.op.unary.f32(i32 6, float %2485)  ; FAbs(value)
  %2488 = call float @dx.op.unary.f32(i32 6, float %2486)  ; FAbs(value)
  %2489 = call float @dx.op.binary.f32(i32 35, float %2487, float %2488)  ; FMax(a,b)
  %2490 = fsub fast float %2469, %2489
  %2491 = call float @dx.op.unary.f32(i32 7, float %2490)  ; Saturate(value)
  %2492 = fmul fast float %2491, %2433
  br label %2493

; <label>:2493                                    ; preds = %2470, %2463
  %2494 = phi float [ %2492, %2470 ], [ 0.000000e+00, %2463 ]
  %2495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.f32 %2495, 1
  %2497 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  %2498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2499 = extractvalue %dx.types.CBufRet.f32 %2498, 0
  %2500 = extractvalue %dx.types.CBufRet.f32 %2498, 1
  %2501 = fsub fast float %2402, %2499
  %2502 = fsub fast float %2406, %2500
  %2503 = fcmp fast olt float %2501, 0.000000e+00
  %2504 = fcmp fast olt float %2502, 0.000000e+00
  %2505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = extractvalue %dx.types.CBufRet.f32 %2505, 0
  %2507 = extractvalue %dx.types.CBufRet.f32 %2505, 1
  %2508 = extractvalue %dx.types.CBufRet.f32 %2505, 2
  %2509 = extractvalue %dx.types.CBufRet.f32 %2505, 3
  %2510 = select i1 %2503, float %2506, float %2508
  %2511 = select i1 %2504, float %2507, float %2509
  %2512 = fmul fast float %2510, %2501
  %2513 = fmul fast float %2511, %2502
  %2514 = call float @dx.op.unary.f32(i32 6, float %2512)  ; FAbs(value)
  %2515 = call float @dx.op.unary.f32(i32 6, float %2513)  ; FAbs(value)
  %2516 = call float @dx.op.binary.f32(i32 35, float %2514, float %2515)  ; FMax(a,b)
  %2517 = fsub fast float %2469, %2516
  %2518 = call float @dx.op.unary.f32(i32 7, float %2517)  ; Saturate(value)
  %2519 = call float @dx.op.binary.f32(i32 36, float %2518, float %2497)  ; FMin(a,b)
  %2520 = fmul fast float %2519, %2433
  %2521 = fsub fast float %2494, %2520
  %2522 = fsub fast float %2464, %2494
  %2523 = fsub fast float %2522, %2520
  %2524 = call float @dx.op.binary.f32(i32 35, float %2494, float %2464)  ; FMax(a,b)
  %2525 = call float @dx.op.binary.f32(i32 35, float %2520, float %2524)  ; FMax(a,b)
  %2526 = fcmp fast olt float %2525, 1.000000e+00
  br i1 %2526, label %2527, label %2925, !dx.controlflow.hints !98

; <label>:2527                                    ; preds = %2493
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = fcmp fast une float %2529, 0.000000e+00
  br i1 %2530, label %2531, label %2925, !dx.controlflow.hints !99

; <label>:2531                                    ; preds = %2527
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 0
  %2534 = extractvalue %dx.types.CBufRet.f32 %2532, 1
  %2535 = extractvalue %dx.types.CBufRet.f32 %2532, 2
  %2536 = extractvalue %dx.types.CBufRet.f32 %2532, 3
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.CBufRet.f32 %2537, 1
  %2540 = extractvalue %dx.types.CBufRet.f32 %2537, 2
  %2541 = extractvalue %dx.types.CBufRet.f32 %2537, 3
  %2542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.f32 %2542, 0
  %2544 = extractvalue %dx.types.CBufRet.f32 %2542, 1
  %2545 = extractvalue %dx.types.CBufRet.f32 %2542, 2
  %2546 = extractvalue %dx.types.CBufRet.f32 %2542, 3
  %2547 = fmul fast float %2533, %2379
  %2548 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2534, float %2547)  ; FMad(a,b,c)
  %2549 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %2535, float %2548)  ; FMad(a,b,c)
  %2550 = fadd fast float %2549, %2536
  %2551 = fmul fast float %2538, %2379
  %2552 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2539, float %2551)  ; FMad(a,b,c)
  %2553 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %2540, float %2552)  ; FMad(a,b,c)
  %2554 = fadd fast float %2553, %2541
  %2555 = fmul fast float %2543, %2379
  %2556 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2544, float %2555)  ; FMad(a,b,c)
  %2557 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %2545, float %2556)  ; FMad(a,b,c)
  %2558 = fadd fast float %2557, %2546
  %2559 = fcmp fast oge float %2550, 1.000000e+00
  %2560 = fcmp fast oge float %2554, 1.000000e+00
  %2561 = or i1 %2559, %2560
  %2562 = fcmp fast olt float %2550, 0.000000e+00
  %2563 = fcmp fast olt float %2554, 0.000000e+00
  %2564 = or i1 %2562, %2563
  %2565 = or i1 %2561, %2564
  br i1 %2565, label %2925, label %2566, !dx.controlflow.hints !100

; <label>:2566                                    ; preds = %2531
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 0
  %2569 = extractvalue %dx.types.CBufRet.f32 %2567, 1
  %2570 = extractvalue %dx.types.CBufRet.f32 %2567, 2
  %2571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2572 = extractvalue %dx.types.CBufRet.i32 %2571, 2
  %2573 = uitofp i32 %2572 to float
  %2574 = extractvalue %dx.types.CBufRet.i32 %2571, 3
  %2575 = uitofp i32 %2574 to float
  %2576 = extractvalue %dx.types.CBufRet.f32 %2567, 3
  %2577 = fmul fast float %2576, 2.000000e+00
  %2578 = fsub fast float %2550, %2568
  %2579 = fsub fast float %2554, %2569
  %2580 = fmul fast float %2577, %2578
  %2581 = fmul fast float %2577, %2579
  %2582 = fdiv fast float 1.000000e+00, %2362
  %2583 = fmul fast float %2581, %2582
  %2584 = call float @dx.op.unary.f32(i32 6, float %2583)  ; FAbs(value)
  %2585 = fmul fast float %2570, %2381
  %2586 = fmul fast float %2585, %2577
  %2587 = call float @dx.op.unary.f32(i32 6, float %2586)  ; FAbs(value)
  %2588 = call float @dx.op.unary.f32(i32 6, float %2580)  ; FAbs(value)
  %2589 = call float @dx.op.binary.f32(i32 35, float %2587, float %2584)  ; FMax(a,b)
  %2590 = call float @dx.op.binary.f32(i32 35, float %2588, float %2589)  ; FMax(a,b)
  %2591 = fmul fast float %2590, 2.000000e+00
  %2592 = call float @dx.op.unary.f32(i32 23, float %2591)  ; Log(value)
  %2593 = call float @dx.op.binary.f32(i32 35, float %2592, float %2573)  ; FMax(a,b)
  %2594 = call float @dx.op.unary.f32(i32 22, float %2593)  ; Frc(value)
  %2595 = fadd fast float %2594, 0xBFEA666660000000
  %2596 = fmul fast float %2595, 8.000000e+00
  %2597 = call float @dx.op.unary.f32(i32 7, float %2596)  ; Saturate(value)
  %2598 = call float @dx.op.unary.f32(i32 27, float %2593)  ; Round_ni(value)
  %2599 = fadd fast float %2598, %2597
  %2600 = call float @dx.op.binary.f32(i32 36, float %2599, float %2575)  ; FMin(a,b)
  %2601 = call float @dx.op.unary.f32(i32 27, float %2600)  ; Round_ni(value)
  %2602 = fsub fast float -0.000000e+00, %2601
  %2603 = call float @dx.op.unary.f32(i32 21, float %2602)  ; Exp(value)
  %2604 = fmul fast float %2603, %2577
  %2605 = fmul fast float %2604, %2550
  %2606 = fmul fast float %2604, %2554
  %2607 = fmul fast float %2605, 2.500000e-01
  %2608 = fmul fast float %2606, 2.500000e-01
  %2609 = fadd fast float %2607, 5.000000e-01
  %2610 = fadd fast float %2608, 5.000000e-01
  %2611 = fsub fast float %2575, %2573
  %2612 = fptoui float %2611 to i32
  %2613 = add i32 %2612, 320
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %2613)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.CBufRet.f32 %2614, 1
  %2617 = fcmp fast une float %2600, %2575
  %2618 = fsub fast float %2550, %2615
  %2619 = fsub fast float %2554, %2616
  %2620 = call float @dx.op.unary.f32(i32 6, float %2618)  ; FAbs(value)
  %2621 = call float @dx.op.unary.f32(i32 6, float %2619)  ; FAbs(value)
  %2622 = fmul fast float %2620, %2604
  %2623 = fmul fast float %2621, %2604
  %2624 = fcmp fast olt float %2622, 1.000000e+00
  %2625 = fcmp fast olt float %2623, 1.000000e+00
  %2626 = and i1 %2624, %2625
  %2627 = or i1 %2617, %2626
  br i1 %2627, label %2628, label %2925, !dx.controlflow.hints !101

; <label>:2628                                    ; preds = %2566
  %2629 = fmul fast float %2606, 5.000000e-01
  %2630 = fmul fast float %2605, 5.000000e-01
  %2631 = fadd fast float %2629, 5.000000e-01
  %2632 = fadd fast float %2630, 5.000000e-01
  %2633 = sitofp i32 %2572 to float
  %2634 = fsub fast float %2600, %2633
  %2635 = call float @dx.op.unary.f32(i32 27, float %2634)  ; Round_ni(value)
  %2636 = call float @dx.op.unary.f32(i32 22, float %2600)  ; Frc(value)
  %2637 = call float @dx.op.unary.f32(i32 22, float %2632)  ; Frc(value)
  %2638 = call float @dx.op.unary.f32(i32 22, float %2631)  ; Frc(value)
  %2639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %2637, float %2638, float %2635, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2640 = extractvalue %dx.types.ResRet.f32 %2639, 0
  %2641 = extractvalue %dx.types.ResRet.f32 %2639, 1
  %2642 = extractvalue %dx.types.ResRet.f32 %2639, 2
  %2643 = extractvalue %dx.types.ResRet.f32 %2639, 3
  %2644 = fcmp fast ogt float %2636, 0.000000e+00
  br i1 %2644, label %2645, label %2666, !dx.controlflow.hints !102

; <label>:2645                                    ; preds = %2628
  %2646 = fadd fast float %2635, 1.000000e+00
  %2647 = call float @dx.op.unary.f32(i32 22, float %2609)  ; Frc(value)
  %2648 = call float @dx.op.unary.f32(i32 22, float %2610)  ; Frc(value)
  %2649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %2647, float %2648, float %2646, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = extractvalue %dx.types.ResRet.f32 %2649, 3
  %2654 = fsub fast float %2650, %2640
  %2655 = fsub fast float %2651, %2641
  %2656 = fsub fast float %2652, %2642
  %2657 = fsub fast float %2653, %2643
  %2658 = fmul fast float %2654, %2636
  %2659 = fmul fast float %2655, %2636
  %2660 = fmul fast float %2656, %2636
  %2661 = fmul fast float %2657, %2636
  %2662 = fadd fast float %2658, %2640
  %2663 = fadd fast float %2659, %2641
  %2664 = fadd fast float %2660, %2642
  %2665 = fadd fast float %2661, %2643
  br label %2666

; <label>:2666                                    ; preds = %2645, %2628
  %2667 = phi float [ %2662, %2645 ], [ %2640, %2628 ]
  %2668 = phi float [ %2663, %2645 ], [ %2641, %2628 ]
  %2669 = phi float [ %2664, %2645 ], [ %2642, %2628 ]
  %2670 = phi float [ %2665, %2645 ], [ %2643, %2628 ]
  %2671 = fadd fast float %2667, -5.000000e-01
  %2672 = fadd fast float %2669, -5.000000e-01
  %2673 = fmul fast float %2671, 0xBFD5555560000000
  %2674 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2672, float %2673)  ; FMad(a,b,c)
  %2675 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2668, float 0.000000e+00)  ; FMad(a,b,c)
  %2676 = fadd fast float %2675, %2670
  %2677 = fmul fast float %2671, -7.500000e-01
  %2678 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2672, float %2677)  ; FMad(a,b,c)
  %2679 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2668, float 0.000000e+00)  ; FMad(a,b,c)
  %2680 = fadd fast float %2679, %2670
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 0
  %2685 = extractvalue %dx.types.CBufRet.f32 %2683, 1
  %2686 = extractvalue %dx.types.CBufRet.f32 %2683, 2
  %2687 = extractvalue %dx.types.CBufRet.f32 %2683, 3
  %2688 = fsub fast float %2684, %2674
  %2689 = fsub fast float %2685, %2676
  %2690 = fsub fast float %2686, %2678
  %2691 = fsub fast float %2687, %2680
  %2692 = fmul fast float %2688, %2682
  %2693 = fmul fast float %2689, %2682
  %2694 = fmul fast float %2690, %2682
  %2695 = fmul fast float %2691, %2682
  %2696 = fadd fast float %2692, %2674
  %2697 = fadd fast float %2693, %2676
  %2698 = fadd fast float %2694, %2678
  %2699 = fadd fast float %2695, %2680
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 536870911
  %2703 = uitofp i32 %2702 to float
  %2704 = fmul fast float %2703, %2550
  %2705 = fmul fast float %2703, %2554
  %2706 = fptoui float %2704 to i32
  %2707 = fptoui float %2705 to i32
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %2709, 31
  %2711 = lshr i32 %2706, %2710
  %2712 = lshr i32 %2707, %2710
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = and i32 %2714, 31
  %2716 = shl i32 1, %2715
  %2717 = call i32 @dx.op.binary.i32(i32 40, i32 %2716, i32 4)  ; UMin(a,b)
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = extractvalue %dx.types.ResRet.i32 %2718, 1
  %2721 = icmp eq i32 %2717, 0
  br i1 %2721, label %2763, label %2722

; <label>:2722                                    ; preds = %2666
  br label %2723

; <label>:2723                                    ; preds = %2751, %2722
  %2724 = phi i32 [ %2754, %2751 ], [ 0, %2722 ]
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = lshr i32 %2726, 16
  %2728 = and i32 %2727, 31
  %2729 = shl i32 %2712, %2728
  %2730 = add i32 %2729, %2711
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = and i32 %2732, 31
  %2734 = shl i32 %2730, %2733
  %2735 = add i32 %2734, %2724
  %2736 = shl i32 %2735, 2
  %2737 = add i32 %2736, 32
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = icmp slt i32 %2739, 0
  %2741 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2724
  %2742 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2724
  %2743 = bitcast float* %2741 to i32*
  %2744 = bitcast float* %2742 to i32*
  br i1 %2740, label %2745, label %2751

; <label>:2745                                    ; preds = %2723
  %2746 = and i32 %2739, 1073741823
  %2747 = add nuw nsw i32 %2746, 20
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = extractvalue %dx.types.ResRet.i32 %2748, 1
  br label %2751

; <label>:2751                                    ; preds = %2745, %2723
  %2752 = phi i32 [ %2749, %2745 ], [ %2719, %2723 ]
  %2753 = phi i32 [ %2750, %2745 ], [ %2720, %2723 ]
  store i32 %2752, i32* %2743, align 4
  store i32 %2753, i32* %2744, align 4
  %2754 = add nuw i32 %2724, 1
  %2755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.i32 %2755, 2
  %2757 = icmp eq i32 %2756, 0
  %2758 = icmp ugt i32 %2739, -1073741825
  %2759 = and i1 %2758, %2757
  %2760 = icmp ult i32 %2754, %2717
  %2761 = and i1 %2759, %2760
  br i1 %2761, label %2723, label %2762

; <label>:2762                                    ; preds = %2751
  br label %2763

; <label>:2763                                    ; preds = %2762, %2666
  %2764 = phi i32 [ 0, %2666 ], [ %2754, %2762 ]
  %2765 = extractvalue %dx.types.CBufRet.f32 %2528, 2
  %2766 = fptoui float %2765 to i32
  %2767 = icmp eq i32 %2766, 0
  br i1 %2767, label %2819, label %2768

; <label>:2768                                    ; preds = %2763
  br label %2769

; <label>:2769                                    ; preds = %2814, %2768
  %2770 = phi i32 [ %2815, %2814 ], [ %2764, %2768 ]
  %2771 = phi i32 [ %2816, %2814 ], [ 0, %2768 ]
  %2772 = lshr i32 %2771, 2
  %2773 = and i32 %2771, 3
  %2774 = add nuw nsw i32 %2772, 83
  %2775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 %2774)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.i32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.i32 %2775, 1
  %2778 = extractvalue %dx.types.CBufRet.i32 %2775, 2
  %2779 = extractvalue %dx.types.CBufRet.i32 %2775, 3
  %2780 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 0
  store i32 %2776, i32* %2780, align 4
  %2781 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 1
  store i32 %2777, i32* %2781, align 4
  %2782 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 2
  store i32 %2778, i32* %2782, align 4
  %2783 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 3
  store i32 %2779, i32* %2783, align 4
  %2784 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 %2773
  %2785 = load i32, i32* %2784, align 4, !tbaa !103, !noalias !107
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = lshr i32 %2787, 16
  %2789 = and i32 %2788, 31
  %2790 = shl i32 %2712, %2789
  %2791 = add i32 %2790, %2711
  %2792 = shl i32 %2791, 2
  %2793 = add i32 %2792, %2785
  %2794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.i32 %2794, 0
  %2796 = icmp eq i32 %2795, 0
  br i1 %2796, label %2814, label %2797

; <label>:2797                                    ; preds = %2769
  %2798 = icmp slt i32 %2795, 0
  %2799 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2770
  %2800 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2770
  %2801 = bitcast float* %2799 to i32*
  %2802 = bitcast float* %2800 to i32*
  br i1 %2798, label %2803, label %2810

; <label>:2803                                    ; preds = %2797
  %2804 = and i32 %2795, 1073741823
  %2805 = add i32 %2785, 20
  %2806 = add i32 %2805, %2804
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = extractvalue %dx.types.ResRet.i32 %2807, 1
  br label %2810

; <label>:2810                                    ; preds = %2803, %2797
  %2811 = phi i32 [ %2808, %2803 ], [ %2719, %2797 ]
  %2812 = phi i32 [ %2809, %2803 ], [ %2720, %2797 ]
  store i32 %2811, i32* %2801, align 4
  store i32 %2812, i32* %2802, align 4
  %2813 = add i32 %2770, 1
  br label %2814

; <label>:2814                                    ; preds = %2810, %2769
  %2815 = phi i32 [ %2770, %2769 ], [ %2813, %2810 ]
  %2816 = add nuw i32 %2771, 1
  %2817 = icmp eq i32 %2816, %2766
  br i1 %2817, label %2818, label %2769

; <label>:2818                                    ; preds = %2814
  br label %2819

; <label>:2819                                    ; preds = %2818, %2763
  %2820 = phi i32 [ %2764, %2763 ], [ %2815, %2818 ]
  %2821 = icmp eq i32 %2820, 1
  %2822 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 0
  %2823 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 0
  br i1 %2821, label %2824, label %2827

; <label>:2824                                    ; preds = %2819
  %2825 = load float, float* %2822, align 4
  %2826 = load float, float* %2823, align 4
  br label %2854

; <label>:2827                                    ; preds = %2819
  %2828 = load float, float* %2822, align 4
  %2829 = load float, float* %2823, align 4
  %2830 = fdiv fast float 1.000000e+00, %2829
  %2831 = fsub fast float %2828, %2830
  %2832 = icmp ugt i32 %2820, 1
  br i1 %2832, label %2833, label %2849

; <label>:2833                                    ; preds = %2827
  br label %2834

; <label>:2834                                    ; preds = %2834, %2833
  %2835 = phi float [ %2844, %2834 ], [ %2831, %2833 ]
  %2836 = phi float [ %2845, %2834 ], [ %2828, %2833 ]
  %2837 = phi i32 [ %2846, %2834 ], [ 1, %2833 ]
  %2838 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2837
  %2839 = load float, float* %2838, align 4
  %2840 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2837
  %2841 = load float, float* %2840, align 4
  %2842 = fdiv fast float 1.000000e+00, %2841
  %2843 = fsub fast float %2839, %2842
  %2844 = call float @dx.op.binary.f32(i32 36, float %2835, float %2843)  ; FMin(a,b)
  %2845 = call float @dx.op.binary.f32(i32 35, float %2836, float %2839)  ; FMax(a,b)
  %2846 = add nuw i32 %2837, 1
  %2847 = icmp eq i32 %2846, %2820
  br i1 %2847, label %2848, label %2834

; <label>:2848                                    ; preds = %2834
  br label %2849

; <label>:2849                                    ; preds = %2848, %2827
  %2850 = phi float [ %2831, %2827 ], [ %2844, %2848 ]
  %2851 = phi float [ %2828, %2827 ], [ %2845, %2848 ]
  %2852 = fsub fast float %2851, %2850
  %2853 = fdiv fast float 1.000000e+00, %2852
  br label %2854

; <label>:2854                                    ; preds = %2849, %2824
  %2855 = phi float [ %2825, %2824 ], [ %2851, %2849 ]
  %2856 = phi float [ %2826, %2824 ], [ %2853, %2849 ]
  %2857 = fadd fast float %2558, %2855
  %2858 = fmul fast float %2857, %2856
  %2859 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2860 = fmul fast float %2859, 2.000000e+00
  %2861 = fsub fast float 1.000000e+00, %2860
  %2862 = fmul fast float %2696, %2696
  %2863 = fsub fast float %2697, %2862
  %2864 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2863)  ; FMax(a,b)
  %2865 = fdiv fast float 1.000000e+00, %2864
  %2866 = fmul fast float %2697, %2696
  %2867 = fsub fast float %2698, %2866
  %2868 = fsub fast float %2861, %2696
  %2869 = fmul fast float %2861, %2861
  %2870 = fsub fast float %2869, %2697
  %2871 = fmul fast float %2865, %2867
  %2872 = fmul fast float %2871, %2868
  %2873 = fsub fast float %2870, %2872
  %2874 = fmul fast float %2697, %2697
  %2875 = fsub fast float %2699, %2874
  %2876 = fmul fast float %2867, %2867
  %2877 = fmul fast float %2876, %2865
  %2878 = fsub fast float %2875, %2877
  %2879 = fdiv fast float %2873, %2878
  %2880 = fmul fast float %2879, %2867
  %2881 = fsub fast float %2868, %2880
  %2882 = fmul fast float %2881, %2865
  %2883 = fmul fast float %2882, %2696
  %2884 = fsub fast float 1.000000e+00, %2883
  %2885 = fmul fast float %2879, %2697
  %2886 = fsub fast float %2884, %2885
  %2887 = fmul fast float %2882, %2882
  %2888 = fmul fast float %2879, 4.000000e+00
  %2889 = fmul fast float %2888, %2886
  %2890 = fsub fast float %2887, %2889
  %2891 = call float @dx.op.unary.f32(i32 24, float %2890)  ; Sqrt(value)
  %2892 = fcmp fast oge float %2882, 0.000000e+00
  %2893 = fsub fast float -0.000000e+00, %2891
  %2894 = select i1 %2892, float %2893, float %2891
  %2895 = fsub fast float %2894, %2882
  %2896 = fdiv fast float %2895, %2879
  %2897 = fdiv fast float %2886, %2895
  %2898 = fmul fast float %2896, 5.000000e-01
  %2899 = fmul fast float %2897, 2.000000e+00
  %2900 = select i1 %2892, float %2898, float %2899
  %2901 = select i1 %2892, float %2899, float %2898
  %2902 = call float @dx.op.binary.f32(i32 35, float %2900, float %2901)  ; FMax(a,b)
  %2903 = call float @dx.op.binary.f32(i32 36, float %2900, float %2901)  ; FMin(a,b)
  %2904 = fcmp fast ogt float %2861, %2902
  %2905 = fsub fast float %2861, %2903
  %2906 = fsub fast float %2861, %2902
  %2907 = fsub fast float %2902, %2903
  %2908 = select i1 %2904, float %2906, float %2907
  %2909 = fmul float %2905, %2908
  %2910 = select i1 %2904, float %2903, float %2861
  %2911 = fcmp fast ogt float %2861, %2903
  %2912 = fmul fast float %2910, %2902
  %2913 = fadd fast float %2910, %2902
  %2914 = fmul fast float %2913, %2696
  %2915 = fadd fast float %2912, %2697
  %2916 = fsub fast float %2915, %2914
  %2917 = fdiv fast float %2916, %2909
  %2918 = select i1 %2911, float %2917, float 0.000000e+00
  %2919 = fsub fast float 1.000000e+00, %2918
  %2920 = select i1 %2904, float %2919, float %2918
  %2921 = call float @dx.op.unary.f32(i32 7, float %2920)  ; Saturate(value)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2923 = fmul fast float %2922, %2921
  %2924 = fsub fast float 1.000000e+00, %2923
  br label %2925

; <label>:2925                                    ; preds = %2854, %2566, %2531, %2527, %2493
  %2926 = phi float [ 1.000000e+00, %2493 ], [ %2924, %2854 ], [ 1.000000e+00, %2531 ], [ 1.000000e+00, %2566 ], [ 1.000000e+00, %2527 ]
  %2927 = fcmp fast ogt float %2523, 0.000000e+00
  br i1 %2927, label %2928, label %3090, !dx.controlflow.hints !116

; <label>:2928                                    ; preds = %2925
  %2929 = fadd fast float %2436, %2410
  %2930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2930, 2
  %2932 = extractvalue %dx.types.CBufRet.f32 %2930, 3
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 2
  %2935 = call float @dx.op.binary.f32(i32 35, float %2929, float 0.000000e+00)  ; FMax(a,b)
  %2936 = fadd fast float %2935, 0x3F10000000000000
  %2937 = fcmp fast oeq float %2934, 0.000000e+00
  br i1 %2937, label %2938, label %3005

; <label>:2938                                    ; preds = %2928
  %2939 = extractvalue %dx.types.CBufRet.f32 %2930, 1
  %2940 = extractvalue %dx.types.CBufRet.f32 %2930, 0
  %2941 = fmul fast float %2940, %2425
  %2942 = fmul fast float %2939, %2426
  %2943 = fadd fast float %2941, 5.000000e-01
  %2944 = call float @dx.op.unary.f32(i32 27, float %2943)  ; Round_ni(value)
  %2945 = fadd fast float %2942, 5.000000e-01
  %2946 = call float @dx.op.unary.f32(i32 27, float %2945)  ; Round_ni(value)
  %2947 = fsub fast float %2943, %2944
  %2948 = fsub fast float %2945, %2946
  %2949 = fadd fast float %2944, -5.000000e-01
  %2950 = fadd fast float %2946, -5.000000e-01
  %2951 = fmul fast float %2947, 2.000000e+00
  %2952 = fsub fast float 3.000000e+00, %2951
  %2953 = fadd fast float %2951, 1.000000e+00
  %2954 = fsub fast float 2.000000e+00, %2947
  %2955 = bitcast float %2952 to i32
  %2956 = sub nsw i32 2129859010, %2955
  %2957 = bitcast i32 %2956 to float
  %2958 = fmul fast float %2957, %2954
  %2959 = fadd fast float %2958, -1.000000e+00
  %2960 = bitcast float %2953 to i32
  %2961 = sub nsw i32 2129859010, %2960
  %2962 = bitcast i32 %2961 to float
  %2963 = fmul fast float %2962, %2947
  %2964 = fadd fast float %2963, 1.000000e+00
  %2965 = fmul fast float %2948, 2.000000e+00
  %2966 = fsub fast float 3.000000e+00, %2965
  %2967 = fadd fast float %2965, 1.000000e+00
  %2968 = fsub fast float 2.000000e+00, %2948
  %2969 = bitcast float %2966 to i32
  %2970 = sub nsw i32 2129859010, %2969
  %2971 = bitcast i32 %2970 to float
  %2972 = fmul fast float %2971, %2968
  %2973 = fadd fast float %2972, -1.000000e+00
  %2974 = bitcast float %2967 to i32
  %2975 = sub nsw i32 2129859010, %2974
  %2976 = bitcast i32 %2975 to float
  %2977 = fmul fast float %2976, %2948
  %2978 = fadd fast float %2977, 1.000000e+00
  %2979 = fadd fast float %2959, %2949
  %2980 = fmul fast float %2979, %2931
  %2981 = fadd fast float %2973, %2950
  %2982 = fmul fast float %2981, %2932
  %2983 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %42, float %2980, float %2982, float undef, float undef, i32 0, i32 0, i32 undef, float %2936)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2984 = extractvalue %dx.types.ResRet.f32 %2983, 0
  %2985 = fmul fast float %2984, %2952
  %2986 = fadd fast float %2964, %2949
  %2987 = fmul fast float %2986, %2931
  %2988 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %42, float %2987, float %2982, float undef, float undef, i32 0, i32 0, i32 undef, float %2936)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2989 = extractvalue %dx.types.ResRet.f32 %2988, 0
  %2990 = fmul fast float %2989, %2953
  %2991 = fadd fast float %2978, %2950
  %2992 = fmul fast float %2991, %2932
  %2993 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %42, float %2980, float %2992, float undef, float undef, i32 0, i32 0, i32 undef, float %2936)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  %2995 = fmul fast float %2994, %2952
  %2996 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %42, float %2987, float %2992, float undef, float undef, i32 0, i32 0, i32 undef, float %2936)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2997 = extractvalue %dx.types.ResRet.f32 %2996, 0
  %2998 = fmul fast float %2997, %2953
  %2999 = fadd fast float %2998, %2995
  %3000 = fmul fast float %2999, %2967
  %3001 = fadd fast float %2990, %2985
  %3002 = fmul fast float %3001, %2966
  %3003 = fadd fast float %3002, %3000
  %3004 = fmul fast float %3003, 6.250000e-02
  br label %3090

; <label>:3005                                    ; preds = %2928
  %3006 = fmul fast float %119, 0x401921FB60000000
  %3007 = call float @dx.op.unary.f32(i32 13, float %3006)  ; Sin(value)
  %3008 = call float @dx.op.unary.f32(i32 12, float %3006)  ; Cos(value)
  %3009 = fsub fast float -0.000000e+00, %3007
  br label %3010

; <label>:3010                                    ; preds = %3059, %3005
  %3011 = phi float [ 0.000000e+00, %3005 ], [ %3054, %3059 ]
  %3012 = phi float [ 0.000000e+00, %3005 ], [ %3056, %3059 ]
  %3013 = phi i32 [ 0, %3005 ], [ %3060, %3059 ]
  %3014 = mul i32 %3013, 2
  %3015 = add i32 0, %3014
  %3016 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3015
  %3017 = load float, float* %3016, align 4
  %3018 = mul i32 %3013, 2
  %3019 = add i32 1, %3018
  %3020 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3019
  %3021 = load float, float* %3020, align 4
  %3022 = fmul fast float %3017, %3008
  %3023 = call float @dx.op.tertiary.f32(i32 46, float %3021, float %3009, float %3022)  ; FMad(a,b,c)
  %3024 = fmul fast float %3017, %3007
  %3025 = call float @dx.op.tertiary.f32(i32 46, float %3021, float %3008, float %3024)  ; FMad(a,b,c)
  %3026 = fmul fast float %3023, %2934
  %3027 = fmul fast float %3025, %2934
  %3028 = fadd fast float %3026, %2425
  %3029 = fadd fast float %3027, %2426
  %3030 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %41, float %3028, float %3029, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3032 = extractvalue %dx.types.ResRet.f32 %3030, 1
  %3033 = extractvalue %dx.types.ResRet.f32 %3030, 2
  %3034 = extractvalue %dx.types.ResRet.f32 %3030, 3
  %3035 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 0
  store float %3031, float* %3035, align 4
  %3036 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 1
  store float %3032, float* %3036, align 4
  %3037 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 2
  store float %3033, float* %3037, align 4
  %3038 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 3
  store float %3034, float* %3038, align 4
  %3039 = fsub fast float %3031, %2936
  %3040 = fcmp fast olt float %3039, 0.000000e+00
  %3041 = select i1 %3040, float 0.000000e+00, float 1.000000e+00
  %3042 = fadd fast float %3041, %3011
  %3043 = fmul fast float %3041, %3039
  %3044 = fadd fast float %3043, %3012
  br label %3045

; <label>:3045                                    ; preds = %3045, %3010
  %3046 = phi i32 [ 1, %3010 ], [ %3057, %3045 ]
  %3047 = phi float [ %3044, %3010 ], [ %3056, %3045 ]
  %3048 = phi float [ %3042, %3010 ], [ %3054, %3045 ]
  %3049 = getelementptr [4 x float], [4 x float]* %68, i32 0, i32 %3046
  %3050 = load float, float* %3049, align 4, !tbaa !117, !noalias !107
  %3051 = fsub fast float %3050, %2936
  %3052 = fcmp fast olt float %3051, 0.000000e+00
  %3053 = select i1 %3052, float 0.000000e+00, float 1.000000e+00
  %3054 = fadd fast float %3053, %3048
  %3055 = fmul fast float %3053, %3051
  %3056 = fadd fast float %3055, %3047
  %3057 = add nuw nsw i32 %3046, 1
  %3058 = icmp eq i32 %3057, 4
  br i1 %3058, label %3059, label %3045, !llvm.loop !119

; <label>:3059                                    ; preds = %3045
  %3060 = add nuw nsw i32 %3013, 1
  %3061 = icmp eq i32 %3060, 8
  br i1 %3061, label %3062, label %3010, !llvm.loop !120

; <label>:3062                                    ; preds = %3059
  %3063 = fdiv fast float 1.000000e+00, %3054
  %3064 = fmul fast float %3063, %3056
  %3065 = fdiv fast float 1.000000e+00, %2936
  %3066 = fmul fast float %3064, %3065
  %3067 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3068 = call float @dx.op.binary.f32(i32 35, float %3067, float 0.000000e+00)  ; FMax(a,b)
  %3069 = fmul fast float %3054, 3.125000e-02
  %3070 = call float @dx.op.unary.f32(i32 7, float %3069)  ; Saturate(value)
  %3071 = fmul fast float %3070, 2.000000e+00
  %3072 = fadd fast float %3071, -1.000000e+00
  %3073 = fcmp fast ogt float %3072, 0.000000e+00
  %3074 = fcmp fast olt float %3072, 0.000000e+00
  %3075 = zext i1 %3073 to i32
  %3076 = zext i1 %3074 to i32
  %3077 = sub nsw i32 %3075, %3076
  %3078 = sitofp i32 %3077 to float
  %3079 = fmul fast float %3078, %3072
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = fmul fast float %3080, %3080
  %3082 = fmul fast float %3081, %3080
  %3083 = fsub fast float %3080, %3082
  %3084 = fmul fast float %3083, %3068
  %3085 = fsub fast float 1.000000e+00, %3082
  %3086 = fsub fast float %3085, %3084
  %3087 = fmul fast float %3078, 5.000000e-01
  %3088 = fmul fast float %3087, %3086
  %3089 = fsub fast float 5.000000e-01, %3088
  br label %3090

; <label>:3090                                    ; preds = %3062, %2938, %2925
  %3091 = phi float [ 1.000000e+00, %2925 ], [ %3004, %2938 ], [ %3089, %3062 ]
  %3092 = fcmp fast ogt float %2521, 0.000000e+00
  br i1 %3092, label %3093, label %3257, !dx.controlflow.hints !121

; <label>:3093                                    ; preds = %3090
  %3094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3095 = extractvalue %dx.types.CBufRet.f32 %3094, 1
  %3096 = fadd fast float %3095, %2410
  %3097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.f32 %3097, 2
  %3099 = extractvalue %dx.types.CBufRet.f32 %3097, 3
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 1
  %3102 = call float @dx.op.binary.f32(i32 35, float %3096, float 0.000000e+00)  ; FMax(a,b)
  %3103 = fadd fast float %3102, 0x3F10000000000000
  %3104 = fcmp fast oeq float %3101, 0.000000e+00
  br i1 %3104, label %3105, label %3172

; <label>:3105                                    ; preds = %3093
  %3106 = extractvalue %dx.types.CBufRet.f32 %3097, 1
  %3107 = extractvalue %dx.types.CBufRet.f32 %3097, 0
  %3108 = fmul fast float %3107, %2417
  %3109 = fmul fast float %3106, %2418
  %3110 = fadd fast float %3108, 5.000000e-01
  %3111 = call float @dx.op.unary.f32(i32 27, float %3110)  ; Round_ni(value)
  %3112 = fadd fast float %3109, 5.000000e-01
  %3113 = call float @dx.op.unary.f32(i32 27, float %3112)  ; Round_ni(value)
  %3114 = fsub fast float %3110, %3111
  %3115 = fsub fast float %3112, %3113
  %3116 = fadd fast float %3111, -5.000000e-01
  %3117 = fadd fast float %3113, -5.000000e-01
  %3118 = fmul fast float %3114, 2.000000e+00
  %3119 = fsub fast float 3.000000e+00, %3118
  %3120 = fadd fast float %3118, 1.000000e+00
  %3121 = fsub fast float 2.000000e+00, %3114
  %3122 = bitcast float %3119 to i32
  %3123 = sub nsw i32 2129859010, %3122
  %3124 = bitcast i32 %3123 to float
  %3125 = fmul fast float %3124, %3121
  %3126 = fadd fast float %3125, -1.000000e+00
  %3127 = bitcast float %3120 to i32
  %3128 = sub nsw i32 2129859010, %3127
  %3129 = bitcast i32 %3128 to float
  %3130 = fmul fast float %3129, %3114
  %3131 = fadd fast float %3130, 1.000000e+00
  %3132 = fmul fast float %3115, 2.000000e+00
  %3133 = fsub fast float 3.000000e+00, %3132
  %3134 = fadd fast float %3132, 1.000000e+00
  %3135 = fsub fast float 2.000000e+00, %3115
  %3136 = bitcast float %3133 to i32
  %3137 = sub nsw i32 2129859010, %3136
  %3138 = bitcast i32 %3137 to float
  %3139 = fmul fast float %3138, %3135
  %3140 = fadd fast float %3139, -1.000000e+00
  %3141 = bitcast float %3134 to i32
  %3142 = sub nsw i32 2129859010, %3141
  %3143 = bitcast i32 %3142 to float
  %3144 = fmul fast float %3143, %3115
  %3145 = fadd fast float %3144, 1.000000e+00
  %3146 = fadd fast float %3126, %3116
  %3147 = fmul fast float %3146, %3098
  %3148 = fadd fast float %3140, %3117
  %3149 = fmul fast float %3148, %3099
  %3150 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %42, float %3147, float %3149, float undef, float undef, i32 0, i32 0, i32 undef, float %3103)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = fmul fast float %3151, %3119
  %3153 = fadd fast float %3131, %3116
  %3154 = fmul fast float %3153, %3098
  %3155 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %42, float %3154, float %3149, float undef, float undef, i32 0, i32 0, i32 undef, float %3103)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  %3157 = fmul fast float %3156, %3120
  %3158 = fadd fast float %3145, %3117
  %3159 = fmul fast float %3158, %3099
  %3160 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %42, float %3147, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float %3103)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = fmul fast float %3161, %3119
  %3163 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %42, float %3154, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float %3103)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3164 = extractvalue %dx.types.ResRet.f32 %3163, 0
  %3165 = fmul fast float %3164, %3120
  %3166 = fadd fast float %3165, %3162
  %3167 = fmul fast float %3166, %3134
  %3168 = fadd fast float %3157, %3152
  %3169 = fmul fast float %3168, %3133
  %3170 = fadd fast float %3169, %3167
  %3171 = fmul fast float %3170, 6.250000e-02
  br label %3257

; <label>:3172                                    ; preds = %3093
  %3173 = fmul fast float %119, 0x401921FB60000000
  %3174 = call float @dx.op.unary.f32(i32 13, float %3173)  ; Sin(value)
  %3175 = call float @dx.op.unary.f32(i32 12, float %3173)  ; Cos(value)
  %3176 = fsub fast float -0.000000e+00, %3174
  br label %3177

; <label>:3177                                    ; preds = %3226, %3172
  %3178 = phi float [ 0.000000e+00, %3172 ], [ %3221, %3226 ]
  %3179 = phi float [ 0.000000e+00, %3172 ], [ %3223, %3226 ]
  %3180 = phi i32 [ 0, %3172 ], [ %3227, %3226 ]
  %3181 = mul i32 %3180, 2
  %3182 = add i32 0, %3181
  %3183 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3182
  %3184 = load float, float* %3183, align 4
  %3185 = mul i32 %3180, 2
  %3186 = add i32 1, %3185
  %3187 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3186
  %3188 = load float, float* %3187, align 4
  %3189 = fmul fast float %3184, %3175
  %3190 = call float @dx.op.tertiary.f32(i32 46, float %3188, float %3176, float %3189)  ; FMad(a,b,c)
  %3191 = fmul fast float %3184, %3174
  %3192 = call float @dx.op.tertiary.f32(i32 46, float %3188, float %3175, float %3191)  ; FMad(a,b,c)
  %3193 = fmul fast float %3190, %3101
  %3194 = fmul fast float %3192, %3101
  %3195 = fadd fast float %3193, %2417
  %3196 = fadd fast float %3194, %2418
  %3197 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %41, float %3195, float %3196, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3198 = extractvalue %dx.types.ResRet.f32 %3197, 0
  %3199 = extractvalue %dx.types.ResRet.f32 %3197, 1
  %3200 = extractvalue %dx.types.ResRet.f32 %3197, 2
  %3201 = extractvalue %dx.types.ResRet.f32 %3197, 3
  %3202 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 0
  store float %3198, float* %3202, align 4
  %3203 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 1
  store float %3199, float* %3203, align 4
  %3204 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 2
  store float %3200, float* %3204, align 4
  %3205 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 3
  store float %3201, float* %3205, align 4
  %3206 = fsub fast float %3198, %3103
  %3207 = fcmp fast olt float %3206, 0.000000e+00
  %3208 = select i1 %3207, float 0.000000e+00, float 1.000000e+00
  %3209 = fadd fast float %3208, %3178
  %3210 = fmul fast float %3208, %3206
  %3211 = fadd fast float %3210, %3179
  br label %3212

; <label>:3212                                    ; preds = %3212, %3177
  %3213 = phi i32 [ 1, %3177 ], [ %3224, %3212 ]
  %3214 = phi float [ %3211, %3177 ], [ %3223, %3212 ]
  %3215 = phi float [ %3209, %3177 ], [ %3221, %3212 ]
  %3216 = getelementptr [4 x float], [4 x float]* %67, i32 0, i32 %3213
  %3217 = load float, float* %3216, align 4, !tbaa !117, !noalias !107
  %3218 = fsub fast float %3217, %3103
  %3219 = fcmp fast olt float %3218, 0.000000e+00
  %3220 = select i1 %3219, float 0.000000e+00, float 1.000000e+00
  %3221 = fadd fast float %3220, %3215
  %3222 = fmul fast float %3220, %3218
  %3223 = fadd fast float %3222, %3214
  %3224 = add nuw nsw i32 %3213, 1
  %3225 = icmp eq i32 %3224, 4
  br i1 %3225, label %3226, label %3212, !llvm.loop !119

; <label>:3226                                    ; preds = %3212
  %3227 = add nuw nsw i32 %3180, 1
  %3228 = icmp eq i32 %3227, 8
  br i1 %3228, label %3229, label %3177, !llvm.loop !120

; <label>:3229                                    ; preds = %3226
  %3230 = fdiv fast float 1.000000e+00, %3221
  %3231 = fmul fast float %3230, %3223
  %3232 = fdiv fast float 1.000000e+00, %3103
  %3233 = fmul fast float %3231, %3232
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3235 = call float @dx.op.binary.f32(i32 35, float %3234, float 0.000000e+00)  ; FMax(a,b)
  %3236 = fmul fast float %3221, 3.125000e-02
  %3237 = call float @dx.op.unary.f32(i32 7, float %3236)  ; Saturate(value)
  %3238 = fmul fast float %3237, 2.000000e+00
  %3239 = fadd fast float %3238, -1.000000e+00
  %3240 = fcmp fast ogt float %3239, 0.000000e+00
  %3241 = fcmp fast olt float %3239, 0.000000e+00
  %3242 = zext i1 %3240 to i32
  %3243 = zext i1 %3241 to i32
  %3244 = sub nsw i32 %3242, %3243
  %3245 = sitofp i32 %3244 to float
  %3246 = fmul fast float %3245, %3239
  %3247 = fsub fast float 1.000000e+00, %3246
  %3248 = fmul fast float %3247, %3247
  %3249 = fmul fast float %3248, %3247
  %3250 = fsub fast float %3247, %3249
  %3251 = fmul fast float %3250, %3235
  %3252 = fsub fast float 1.000000e+00, %3249
  %3253 = fsub fast float %3252, %3251
  %3254 = fmul fast float %3245, 5.000000e-01
  %3255 = fmul fast float %3254, %3253
  %3256 = fsub fast float 5.000000e-01, %3255
  br label %3257

; <label>:3257                                    ; preds = %3229, %3105, %3090
  %3258 = phi float [ 1.000000e+00, %3090 ], [ %3171, %3105 ], [ %3256, %3229 ]
  %3259 = fcmp fast ogt float %2520, 0.000000e+00
  br i1 %3259, label %3260, label %3424, !dx.controlflow.hints !122

; <label>:3260                                    ; preds = %3257
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 0
  %3263 = fadd fast float %3262, %2410
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 2
  %3266 = extractvalue %dx.types.CBufRet.f32 %3264, 3
  %3267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3268 = extractvalue %dx.types.CBufRet.f32 %3267, 0
  %3269 = call float @dx.op.binary.f32(i32 35, float %3263, float 0.000000e+00)  ; FMax(a,b)
  %3270 = fadd fast float %3269, 0x3F10000000000000
  %3271 = fcmp fast oeq float %3268, 0.000000e+00
  br i1 %3271, label %3272, label %3339

; <label>:3272                                    ; preds = %3260
  %3273 = extractvalue %dx.types.CBufRet.f32 %3264, 1
  %3274 = extractvalue %dx.types.CBufRet.f32 %3264, 0
  %3275 = fmul fast float %3274, %2402
  %3276 = fmul fast float %3273, %2406
  %3277 = fadd fast float %3275, 5.000000e-01
  %3278 = call float @dx.op.unary.f32(i32 27, float %3277)  ; Round_ni(value)
  %3279 = fadd fast float %3276, 5.000000e-01
  %3280 = call float @dx.op.unary.f32(i32 27, float %3279)  ; Round_ni(value)
  %3281 = fsub fast float %3277, %3278
  %3282 = fsub fast float %3279, %3280
  %3283 = fadd fast float %3278, -5.000000e-01
  %3284 = fadd fast float %3280, -5.000000e-01
  %3285 = fmul fast float %3281, 2.000000e+00
  %3286 = fsub fast float 3.000000e+00, %3285
  %3287 = fadd fast float %3285, 1.000000e+00
  %3288 = fsub fast float 2.000000e+00, %3281
  %3289 = bitcast float %3286 to i32
  %3290 = sub nsw i32 2129859010, %3289
  %3291 = bitcast i32 %3290 to float
  %3292 = fmul fast float %3291, %3288
  %3293 = fadd fast float %3292, -1.000000e+00
  %3294 = bitcast float %3287 to i32
  %3295 = sub nsw i32 2129859010, %3294
  %3296 = bitcast i32 %3295 to float
  %3297 = fmul fast float %3296, %3281
  %3298 = fadd fast float %3297, 1.000000e+00
  %3299 = fmul fast float %3282, 2.000000e+00
  %3300 = fsub fast float 3.000000e+00, %3299
  %3301 = fadd fast float %3299, 1.000000e+00
  %3302 = fsub fast float 2.000000e+00, %3282
  %3303 = bitcast float %3300 to i32
  %3304 = sub nsw i32 2129859010, %3303
  %3305 = bitcast i32 %3304 to float
  %3306 = fmul fast float %3305, %3302
  %3307 = fadd fast float %3306, -1.000000e+00
  %3308 = bitcast float %3301 to i32
  %3309 = sub nsw i32 2129859010, %3308
  %3310 = bitcast i32 %3309 to float
  %3311 = fmul fast float %3310, %3282
  %3312 = fadd fast float %3311, 1.000000e+00
  %3313 = fadd fast float %3293, %3283
  %3314 = fmul fast float %3313, %3265
  %3315 = fadd fast float %3307, %3284
  %3316 = fmul fast float %3315, %3266
  %3317 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %42, float %3314, float %3316, float undef, float undef, i32 0, i32 0, i32 undef, float %3270)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = fmul fast float %3318, %3286
  %3320 = fadd fast float %3298, %3283
  %3321 = fmul fast float %3320, %3265
  %3322 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %42, float %3321, float %3316, float undef, float undef, i32 0, i32 0, i32 undef, float %3270)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3323 = extractvalue %dx.types.ResRet.f32 %3322, 0
  %3324 = fmul fast float %3323, %3287
  %3325 = fadd fast float %3312, %3284
  %3326 = fmul fast float %3325, %3266
  %3327 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %42, float %3314, float %3326, float undef, float undef, i32 0, i32 0, i32 undef, float %3270)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3328 = extractvalue %dx.types.ResRet.f32 %3327, 0
  %3329 = fmul fast float %3328, %3286
  %3330 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %42, float %3321, float %3326, float undef, float undef, i32 0, i32 0, i32 undef, float %3270)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3332 = fmul fast float %3331, %3287
  %3333 = fadd fast float %3332, %3329
  %3334 = fmul fast float %3333, %3301
  %3335 = fadd fast float %3324, %3319
  %3336 = fmul fast float %3335, %3300
  %3337 = fadd fast float %3336, %3334
  %3338 = fmul fast float %3337, 6.250000e-02
  br label %3424

; <label>:3339                                    ; preds = %3260
  %3340 = fmul fast float %119, 0x401921FB60000000
  %3341 = call float @dx.op.unary.f32(i32 13, float %3340)  ; Sin(value)
  %3342 = call float @dx.op.unary.f32(i32 12, float %3340)  ; Cos(value)
  %3343 = fsub fast float -0.000000e+00, %3341
  br label %3344

; <label>:3344                                    ; preds = %3393, %3339
  %3345 = phi float [ 0.000000e+00, %3339 ], [ %3388, %3393 ]
  %3346 = phi float [ 0.000000e+00, %3339 ], [ %3390, %3393 ]
  %3347 = phi i32 [ 0, %3339 ], [ %3394, %3393 ]
  %3348 = mul i32 %3347, 2
  %3349 = add i32 0, %3348
  %3350 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3349
  %3351 = load float, float* %3350, align 4
  %3352 = mul i32 %3347, 2
  %3353 = add i32 1, %3352
  %3354 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3353
  %3355 = load float, float* %3354, align 4
  %3356 = fmul fast float %3351, %3342
  %3357 = call float @dx.op.tertiary.f32(i32 46, float %3355, float %3343, float %3356)  ; FMad(a,b,c)
  %3358 = fmul fast float %3351, %3341
  %3359 = call float @dx.op.tertiary.f32(i32 46, float %3355, float %3342, float %3358)  ; FMad(a,b,c)
  %3360 = fmul fast float %3357, %3268
  %3361 = fmul fast float %3359, %3268
  %3362 = fadd fast float %3360, %2402
  %3363 = fadd fast float %3361, %2406
  %3364 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %41, float %3362, float %3363, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3365 = extractvalue %dx.types.ResRet.f32 %3364, 0
  %3366 = extractvalue %dx.types.ResRet.f32 %3364, 1
  %3367 = extractvalue %dx.types.ResRet.f32 %3364, 2
  %3368 = extractvalue %dx.types.ResRet.f32 %3364, 3
  %3369 = getelementptr inbounds [4 x float], [4 x float]* %66, i32 0, i32 0
  store float %3365, float* %3369, align 4
  %3370 = getelementptr inbounds [4 x float], [4 x float]* %66, i32 0, i32 1
  store float %3366, float* %3370, align 4
  %3371 = getelementptr inbounds [4 x float], [4 x float]* %66, i32 0, i32 2
  store float %3367, float* %3371, align 4
  %3372 = getelementptr inbounds [4 x float], [4 x float]* %66, i32 0, i32 3
  store float %3368, float* %3372, align 4
  %3373 = fsub fast float %3365, %3270
  %3374 = fcmp fast olt float %3373, 0.000000e+00
  %3375 = select i1 %3374, float 0.000000e+00, float 1.000000e+00
  %3376 = fadd fast float %3375, %3345
  %3377 = fmul fast float %3375, %3373
  %3378 = fadd fast float %3377, %3346
  br label %3379

; <label>:3379                                    ; preds = %3379, %3344
  %3380 = phi i32 [ 1, %3344 ], [ %3391, %3379 ]
  %3381 = phi float [ %3378, %3344 ], [ %3390, %3379 ]
  %3382 = phi float [ %3376, %3344 ], [ %3388, %3379 ]
  %3383 = getelementptr [4 x float], [4 x float]* %66, i32 0, i32 %3380
  %3384 = load float, float* %3383, align 4, !tbaa !117, !noalias !107
  %3385 = fsub fast float %3384, %3270
  %3386 = fcmp fast olt float %3385, 0.000000e+00
  %3387 = select i1 %3386, float 0.000000e+00, float 1.000000e+00
  %3388 = fadd fast float %3387, %3382
  %3389 = fmul fast float %3387, %3385
  %3390 = fadd fast float %3389, %3381
  %3391 = add nuw nsw i32 %3380, 1
  %3392 = icmp eq i32 %3391, 4
  br i1 %3392, label %3393, label %3379, !llvm.loop !119

; <label>:3393                                    ; preds = %3379
  %3394 = add nuw nsw i32 %3347, 1
  %3395 = icmp eq i32 %3394, 8
  br i1 %3395, label %3396, label %3344, !llvm.loop !120

; <label>:3396                                    ; preds = %3393
  %3397 = fdiv fast float 1.000000e+00, %3388
  %3398 = fmul fast float %3397, %3390
  %3399 = fdiv fast float 1.000000e+00, %3270
  %3400 = fmul fast float %3398, %3399
  %3401 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3402 = call float @dx.op.binary.f32(i32 35, float %3401, float 0.000000e+00)  ; FMax(a,b)
  %3403 = fmul fast float %3388, 3.125000e-02
  %3404 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  %3405 = fmul fast float %3404, 2.000000e+00
  %3406 = fadd fast float %3405, -1.000000e+00
  %3407 = fcmp fast ogt float %3406, 0.000000e+00
  %3408 = fcmp fast olt float %3406, 0.000000e+00
  %3409 = zext i1 %3407 to i32
  %3410 = zext i1 %3408 to i32
  %3411 = sub nsw i32 %3409, %3410
  %3412 = sitofp i32 %3411 to float
  %3413 = fmul fast float %3412, %3406
  %3414 = fsub fast float 1.000000e+00, %3413
  %3415 = fmul fast float %3414, %3414
  %3416 = fmul fast float %3415, %3414
  %3417 = fsub fast float %3414, %3416
  %3418 = fmul fast float %3417, %3402
  %3419 = fsub fast float 1.000000e+00, %3416
  %3420 = fsub fast float %3419, %3418
  %3421 = fmul fast float %3412, 5.000000e-01
  %3422 = fmul fast float %3421, %3420
  %3423 = fsub fast float 5.000000e-01, %3422
  br label %3424

; <label>:3424                                    ; preds = %3396, %3272, %3257
  %3425 = phi float [ 1.000000e+00, %3257 ], [ %3338, %3272 ], [ %3423, %3396 ]
  %3426 = fsub fast float %3091, %2926
  %3427 = fmul fast float %3426, %2464
  %3428 = fadd fast float %3427, %2926
  %3429 = fsub fast float %3258, %3428
  %3430 = fmul fast float %3429, %2494
  %3431 = fadd fast float %3430, %3428
  %3432 = fsub fast float %3425, %3431
  %3433 = fmul fast float %3432, %2520
  %3434 = fadd fast float %3433, %3431
  %3435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3436 = extractvalue %dx.types.CBufRet.f32 %3435, 2
  %3437 = fcmp fast ogt float %3436, 0.000000e+00
  br i1 %3437, label %3438, label %3478, !dx.controlflow.hints !123

; <label>:3438                                    ; preds = %3424
  %3439 = fcmp fast ugt float %3436, 0.000000e+00
  br i1 %3439, label %3440, label %3475

; <label>:3440                                    ; preds = %3438
  %3441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3442 = extractvalue %dx.types.CBufRet.f32 %3441, 0
  %3443 = extractvalue %dx.types.CBufRet.f32 %3441, 1
  %3444 = extractvalue %dx.types.CBufRet.f32 %3441, 2
  %3445 = extractvalue %dx.types.CBufRet.f32 %3441, 3
  %3446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3446, 0
  %3448 = extractvalue %dx.types.CBufRet.f32 %3446, 1
  %3449 = extractvalue %dx.types.CBufRet.f32 %3446, 2
  %3450 = extractvalue %dx.types.CBufRet.f32 %3446, 3
  %3451 = extractvalue %dx.types.CBufRet.f32 %3435, 0
  %3452 = extractvalue %dx.types.CBufRet.f32 %3435, 1
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.CBufRet.f32 %3453, 1
  %3456 = extractvalue %dx.types.CBufRet.f32 %3453, 2
  %3457 = fadd fast float %3454, %2379
  %3458 = fadd fast float %3455, %2380
  %3459 = fadd fast float %3456, %2381
  %3460 = fmul fast float %3457, %3442
  %3461 = call float @dx.op.tertiary.f32(i32 46, float %3443, float %3458, float %3460)  ; FMad(a,b,c)
  %3462 = call float @dx.op.tertiary.f32(i32 46, float %3444, float %3459, float %3461)  ; FMad(a,b,c)
  %3463 = fadd fast float %3462, %3445
  %3464 = fmul fast float %3457, %3447
  %3465 = call float @dx.op.tertiary.f32(i32 46, float %3448, float %3458, float %3464)  ; FMad(a,b,c)
  %3466 = call float @dx.op.tertiary.f32(i32 46, float %3449, float %3459, float %3465)  ; FMad(a,b,c)
  %3467 = fadd fast float %3466, %3450
  %3468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %37, float %3463, float %3467, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3469 = extractvalue %dx.types.ResRet.f32 %3468, 0
  %3470 = fmul fast float %3469, %3452
  %3471 = fadd fast float %3470, %3451
  %3472 = call float @dx.op.unary.f32(i32 7, float %3471)  ; Saturate(value)
  %3473 = fmul fast float %3472, %3436
  %3474 = fsub fast float 1.000000e+00, %3473
  br label %3475

; <label>:3475                                    ; preds = %3440, %3438
  %3476 = phi float [ %3474, %3440 ], [ 1.000000e+00, %3438 ]
  %3477 = fmul fast float %3476, %3434
  br label %3478

; <label>:3478                                    ; preds = %3475, %3424, %2359
  %3479 = phi float [ 1.000000e+00, %2359 ], [ %3477, %3475 ], [ %3434, %3424 ]
  %3480 = call float @dx.op.binary.f32(i32 36, float %3479, float %3479)  ; FMin(a,b)
  %3481 = call float @dx.op.binary.f32(i32 36, float %3479, float %3480)  ; FMin(a,b)
  %3482 = fcmp fast ogt float %3481, 0.000000e+00
  br i1 %3482, label %3483, label %3648, !dx.controlflow.hints !124

; <label>:3483                                    ; preds = %3478
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.CBufRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.CBufRet.f32 %3484, 2
  %3488 = extractvalue %dx.types.CBufRet.f32 %3484, 3
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.CBufRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.CBufRet.f32 %3489, 2
  %3493 = extractvalue %dx.types.CBufRet.f32 %3489, 3
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.CBufRet.f32 %3494, 1
  %3497 = extractvalue %dx.types.CBufRet.f32 %3494, 2
  %3498 = extractvalue %dx.types.CBufRet.f32 %3494, 3
  %3499 = fmul fast float %3485, %2379
  %3500 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %3486, float %3499)  ; FMad(a,b,c)
  %3501 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %3487, float %3500)  ; FMad(a,b,c)
  %3502 = fadd fast float %3501, %3488
  %3503 = fmul fast float %3490, %2379
  %3504 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %3491, float %3503)  ; FMad(a,b,c)
  %3505 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %3492, float %3504)  ; FMad(a,b,c)
  %3506 = fadd fast float %3505, %3493
  %3507 = fmul fast float %3495, %2379
  %3508 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %3496, float %3507)  ; FMad(a,b,c)
  %3509 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %3497, float %3508)  ; FMad(a,b,c)
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.CBufRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.CBufRet.f32 %3510, 3
  %3514 = fmul fast float %3513, %3502
  %3515 = fmul fast float %3513, %3506
  %3516 = fadd fast float %3514, %3511
  %3517 = fadd fast float %3515, %3512
  %3518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.CBufRet.f32 %3518, 1
  %3521 = fsub fast float %3516, %3519
  %3522 = fsub fast float %3517, %3520
  %3523 = fcmp fast olt float %3521, 0.000000e+00
  %3524 = fcmp fast olt float %3522, 0.000000e+00
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 0
  %3527 = extractvalue %dx.types.CBufRet.f32 %3525, 1
  %3528 = extractvalue %dx.types.CBufRet.f32 %3525, 2
  %3529 = extractvalue %dx.types.CBufRet.f32 %3525, 3
  %3530 = select i1 %3523, float %3526, float %3528
  %3531 = select i1 %3524, float %3527, float %3529
  %3532 = fmul fast float %3530, %3521
  %3533 = fmul fast float %3531, %3522
  %3534 = call float @dx.op.unary.f32(i32 6, float %3532)  ; FAbs(value)
  %3535 = call float @dx.op.unary.f32(i32 6, float %3533)  ; FAbs(value)
  %3536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3537 = extractvalue %dx.types.CBufRet.f32 %3536, 0
  %3538 = call float @dx.op.binary.f32(i32 35, float %3534, float %3535)  ; FMax(a,b)
  %3539 = fsub fast float %3537, %3538
  %3540 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3541 = fcmp fast ogt float %3540, 0.000000e+00
  br i1 %3541, label %3542, label %3583, !dx.controlflow.hints !125

; <label>:3542                                    ; preds = %3483
  %3543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %3516, float %3517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3545 = fcmp fast ogt float %3544, 0.000000e+00
  br i1 %3545, label %3546, label %3579

; <label>:3546                                    ; preds = %3542
  %3547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %3516, float %3517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.ResRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.ResRet.f32 %3547, 2
  %3551 = extractvalue %dx.types.ResRet.f32 %3547, 3
  %3552 = fsub fast float 1.000000e+00, %3498
  %3553 = fsub fast float %3552, %3509
  %3554 = fmul fast float %3553, 0x400921FB60000000
  %3555 = fadd fast float %3554, 0x3FF921FB60000000
  %3556 = call float @dx.op.unary.f32(i32 13, float %3555)  ; Sin(value)
  %3557 = fadd fast float %3556, -1.000000e+00
  %3558 = fmul fast float %3557, 0x3FD45F3060000000
  %3559 = fmul fast float %3553, 0x401921FB60000000
  %3560 = fadd fast float %3559, 0x400921FB60000000
  %3561 = call float @dx.op.unary.f32(i32 13, float %3560)  ; Sin(value)
  %3562 = fadd fast float %3561, 0x3E7777A5C0000000
  %3563 = fmul fast float %3562, 0x3FC45F3060000000
  %3564 = fmul fast float %3553, 0x4022D97C80000000
  %3565 = fadd fast float %3564, 0x4012D97C80000000
  %3566 = call float @dx.op.unary.f32(i32 13, float %3565)  ; Sin(value)
  %3567 = fadd fast float %3566, 1.000000e+00
  %3568 = fmul fast float %3567, 0x3FBB2995E0000000
  %3569 = fmul fast float %3553, 0x402921FB60000000
  %3570 = fadd fast float %3569, 0x401921FB60000000
  %3571 = call float @dx.op.unary.f32(i32 13, float %3570)  ; Sin(value)
  %3572 = fadd fast float %3571, 0xBE8777A5C0000000
  %3573 = fmul fast float %3572, 0x3FB45F3060000000
  %3574 = call float @dx.op.dot4.f32(i32 56, float %3548, float %3549, float %3550, float %3551, float %3558, float %3563, float %3568, float %3573)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3575 = fmul fast float %3574, 0xBFF7154760000000
  %3576 = call float @dx.op.unary.f32(i32 21, float %3575)  ; Exp(value)
  %3577 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  %3578 = fadd float %3577, -1.000000e+00
  br label %3579

; <label>:3579                                    ; preds = %3546, %3542
  %3580 = phi float [ %3578, %3546 ], [ 0.000000e+00, %3542 ]
  %3581 = fmul fast float %3580, %3540
  %3582 = fadd fast float %3581, 1.000000e+00
  br label %3583

; <label>:3583                                    ; preds = %3579, %3483
  %3584 = phi float [ %3582, %3579 ], [ 1.000000e+00, %3483 ]
  %3585 = fmul fast float %3584, %3479
  %3586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.CBufRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.CBufRet.f32 %3586, 2
  %3590 = fadd fast float %3587, %248
  %3591 = fadd fast float %3588, %249
  %3592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.f32 %3592, 1
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.CBufRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.CBufRet.f32 %3594, 2
  %3598 = fsub fast float -0.000000e+00, %3590
  %3599 = fsub fast float -0.000000e+00, %3591
  %3600 = fsub fast float %380, %3589
  %3601 = fadd fast float %3600, %3593
  %3602 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3598, float %3599, float %3601)  ; Dot3(ax,ay,az,bx,by,bz)
  %3603 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3595, float %3596, float %3597)  ; Dot3(ax,ay,az,bx,by,bz)
  %3604 = fdiv fast float 1.000000e+00, %3603
  %3605 = fmul fast float %3604, %3602
  %3606 = fmul fast float %3595, %3605
  %3607 = fmul fast float %3596, %3605
  %3608 = fadd fast float %3606, %3590
  %3609 = fadd fast float %3607, %3591
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.CBufRet.f32 %3610, 1
  %3613 = fsub fast float %3608, %3611
  %3614 = fsub fast float %3609, %3612
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 2
  %3617 = extractvalue %dx.types.CBufRet.f32 %3615, 3
  %3618 = fmul fast float %3613, %3616
  %3619 = fmul fast float %3614, %3617
  %3620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.i32 %3620, 3
  %3622 = icmp eq i32 %3621, 0
  br i1 %3622, label %3628, label %3623

; <label>:3623                                    ; preds = %3583
  %3624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %39, float %3618, float %3619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  br label %3633

; <label>:3628                                    ; preds = %3583
  %3629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %3618, float %3619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3632 = extractvalue %dx.types.ResRet.f32 %3629, 2
  br label %3633

; <label>:3633                                    ; preds = %3628, %3623
  %3634 = phi float [ %3625, %3623 ], [ %3630, %3628 ]
  %3635 = phi float [ %3626, %3623 ], [ %3631, %3628 ]
  %3636 = phi float [ %3627, %3623 ], [ %3632, %3628 ]
  %3637 = extractvalue %dx.types.CBufRet.f32 %3592, 2
  %3638 = fmul fast float %3637, %3634
  %3639 = extractvalue %dx.types.CBufRet.f32 %3592, 0
  %3640 = fsub fast float %3605, %3639
  %3641 = fsub fast float %3640, %3638
  %3642 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3641)  ; FMax(a,b)
  %3643 = fmul fast float %3642, %3635
  %3644 = call float @dx.op.binary.f32(i32 36, float %3636, float %3643)  ; FMin(a,b)
  %3645 = fmul fast float %3644, 0xBFF7154760000000
  %3646 = call float @dx.op.unary.f32(i32 21, float %3645)  ; Exp(value)
  %3647 = fmul fast float %3585, %3646
  br label %3648

; <label>:3648                                    ; preds = %3633, %3478
  %3649 = phi float [ %3647, %3633 ], [ %3479, %3478 ]
  %3650 = call float @dx.op.binary.f32(i32 36, float %3649, float %3649)  ; FMin(a,b)
  %3651 = call float @dx.op.binary.f32(i32 36, float %3649, float %3650)  ; FMin(a,b)
  %3652 = fcmp fast ogt float %3651, 0.000000e+00
  br i1 %3652, label %3653, label %3749, !dx.controlflow.hints !126

; <label>:3653                                    ; preds = %3648
  %3654 = fmul fast float %3649, %2371
  %3655 = fmul fast float %3649, %2372
  %3656 = fmul fast float %3649, %2373
  %3657 = fsub fast float %2360, %383
  %3658 = fsub fast float %2361, %384
  %3659 = fsub fast float %2362, %385
  %3660 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float %3657, float %3658, float %3659)  ; Dot3(ax,ay,az,bx,by,bz)
  %3661 = call float @dx.op.unary.f32(i32 25, float %3660)  ; Rsqrt(value)
  %3662 = fmul fast float %3661, %3657
  %3663 = fmul fast float %3661, %3658
  %3664 = fmul fast float %3661, %3659
  %3665 = call float @dx.op.dot3.f32(i32 55, float %2360, float %2361, float %2362, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %3666 = call float @dx.op.dot3.f32(i32 55, float %386, float %387, float %388, float %3662, float %3663, float %3664)  ; Dot3(ax,ay,az,bx,by,bz)
  %3667 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3668 = fmul fast float %3667, %3667
  %3669 = fmul fast float %3668, 0x47DE623840000000
  %3670 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  %3671 = fmul fast float %3670, %3667
  %3672 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %3662, float %3663, float %3664)  ; Dot3(ax,ay,az,bx,by,bz)
  %3673 = fmul fast float %3672, %3672
  %3674 = call float @dx.op.unary.f32(i32 6, float %3665)  ; FAbs(value)
  %3675 = fsub fast float 1.000000e+00, %403
  %3676 = fmul fast float %391, %391
  %3677 = fmul fast float %3676, %3675
  %3678 = fadd fast float %3677, %403
  %3679 = bitcast float %3678 to i32
  %3680 = ashr i32 %3679, 1
  %3681 = add nsw i32 %3680, 532487669
  %3682 = bitcast i32 %3681 to float
  %3683 = fadd fast float %3682, %391
  %3684 = fmul fast float %403, %3673
  %3685 = fsub fast float 1.000000e+00, %3673
  %3686 = fadd fast float %3685, %3684
  %3687 = fmul fast float %3674, %3674
  %3688 = fmul fast float %3687, %3675
  %3689 = fadd fast float %3688, %403
  %3690 = bitcast float %3689 to i32
  %3691 = ashr i32 %3690, 1
  %3692 = add nsw i32 %3691, 532487669
  %3693 = bitcast i32 %3692 to float
  %3694 = fadd fast float %3693, %3674
  %3695 = fmul fast float %3686, %3686
  %3696 = fmul fast float %3695, %3683
  %3697 = fmul fast float %3696, %3694
  %3698 = fdiv fast float 0x3FF0A00000000000, %3697
  %3699 = fmul fast float %3698, %403
  %3700 = call float @dx.op.unary.f32(i32 6, float %3666)  ; FAbs(value)
  %3701 = fsub fast float 1.000000e+00, %3700
  %3702 = bitcast float %3701 to i32
  %3703 = sitofp i32 %3702 to float
  %3704 = fmul fast float %3703, 5.000000e+00
  %3705 = fadd fast float %3704, 0xC1EFBF8940000000
  %3706 = fptosi float %3705 to i32
  %3707 = bitcast i32 %3706 to float
  %3708 = fsub fast float 1.000000e+00, %371
  %3709 = fsub fast float 1.000000e+00, %372
  %3710 = fsub fast float 1.000000e+00, %389
  %3711 = fmul fast float %3707, %3708
  %3712 = fmul fast float %3707, %3709
  %3713 = fmul fast float %3707, %3710
  %3714 = fadd fast float %3711, %371
  %3715 = fadd fast float %3712, %372
  %3716 = fadd fast float %3713, %389
  %3717 = fmul fast float %3665, 9.843750e-01
  %3718 = fadd fast float %3717, 7.812500e-03
  %3719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %3718, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 2
  %3721 = extractvalue %dx.types.ResRet.f32 %3719, 3
  %3722 = fmul fast float %3720, %371
  %3723 = fmul fast float %3720, %372
  %3724 = fmul fast float %3720, %389
  %3725 = fadd fast float %3722, %3721
  %3726 = fadd fast float %3723, %3721
  %3727 = fadd fast float %3724, %3721
  %3728 = call float @dx.op.binary.f32(i32 35, float %3726, float %3727)  ; FMax(a,b)
  %3729 = call float @dx.op.binary.f32(i32 35, float %3725, float %3728)  ; FMax(a,b)
  %3730 = fsub fast float 1.000000e+00, %3729
  %3731 = fmul fast float %3671, %3654
  %3732 = fmul fast float %3731, %3730
  %3733 = fmul fast float %3671, %3655
  %3734 = fmul fast float %3733, %3730
  %3735 = fmul fast float %3671, %3656
  %3736 = fmul fast float %3735, %3730
  %3737 = fadd fast float %3732, %2350
  %3738 = fadd fast float %3734, %2351
  %3739 = fadd fast float %3736, %2352
  %3740 = fmul fast float %3731, %3699
  %3741 = fmul fast float %3740, %3714
  %3742 = fmul fast float %3733, %3699
  %3743 = fmul fast float %3742, %3715
  %3744 = fmul fast float %3735, %3699
  %3745 = fmul fast float %3744, %3716
  %3746 = fadd fast float %3741, %2353
  %3747 = fadd fast float %3743, %2354
  %3748 = fadd fast float %3745, %2355
  br label %3749

; <label>:3749                                    ; preds = %3653, %3648, %2346
  %3750 = phi float [ %2353, %2346 ], [ %2353, %3648 ], [ %3746, %3653 ]
  %3751 = phi float [ %2354, %2346 ], [ %2354, %3648 ], [ %3747, %3653 ]
  %3752 = phi float [ %2355, %2346 ], [ %2355, %3648 ], [ %3748, %3653 ]
  %3753 = phi float [ %2350, %2346 ], [ %2350, %3648 ], [ %3737, %3653 ]
  %3754 = phi float [ %2351, %2346 ], [ %2351, %3648 ], [ %3738, %3653 ]
  %3755 = phi float [ %2352, %2346 ], [ %2352, %3648 ], [ %3739, %3653 ]
  %3756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.i32 %3756, 0
  %3758 = icmp eq i32 %3757, 0
  br i1 %3758, label %4271, label %3759

; <label>:3759                                    ; preds = %3749
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 2
  %3762 = extractvalue %dx.types.CBufRet.f32 %3760, 3
  %3763 = fmul fast float %3761, %71
  %3764 = fmul fast float %3762, %72
  %3765 = fptoui float %3763 to i32
  %3766 = fptoui float %3764 to i32
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.CBufRet.f32 %3767, 2
  %3770 = extractvalue %dx.types.CBufRet.f32 %3767, 3
  %3771 = fadd fast float %214, -4.000000e+00
  %3772 = call float @dx.op.binary.f32(i32 35, float %3771, float 0.000000e+00)  ; FMax(a,b)
  %3773 = fadd fast float %3772, %3768
  %3774 = fmul fast float %3773, %3769
  %3775 = call float @dx.op.unary.f32(i32 23, float %3774)  ; Log(value)
  %3776 = fmul fast float %3775, %3770
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 2
  %3779 = fmul fast float %3776, %3778
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.i32 %3781, 1
  %3783 = add i32 %3782, -1
  %3784 = uitofp i32 %3782 to float
  %3785 = fmul fast float %3784, %3780
  %3786 = fptoui float %3785 to i32
  %3787 = call i32 @dx.op.binary.i32(i32 40, i32 %3786, i32 %3783)  ; UMin(a,b)
  %3788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.i32 %3788, 2
  %3790 = extractvalue %dx.types.CBufRet.i32 %3788, 3
  %3791 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3766, i32 %3789, i32 %3765)  ; UMad(a,b,c)
  %3792 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3787, i32 %3790, i32 %3791)  ; UMad(a,b,c)
  %3793 = add nsw i32 %3757, -1
  %3794 = call i32 @dx.op.binary.i32(i32 37, i32 %3793, i32 0)  ; IMax(a,b)
  %3795 = call float @dx.op.binary.f32(i32 35, float %214, float 0.000000e+00)  ; FMax(a,b)
  %3796 = fptoui float %3795 to i32
  %3797 = lshr i32 %3796, 5
  %3798 = call i32 @dx.op.binary.i32(i32 40, i32 %3797, i32 8191)  ; UMin(a,b)
  %3799 = shl i32 %3798, 2
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = lshr i32 %3801, 16
  %3803 = and i32 %3801, 65535
  %3804 = lshr i32 %3801, 21
  %3805 = lshr i32 %3803, 5
  %3806 = call i32 @dx.op.binary.i32(i32 40, i32 %3805, i32 %3794)  ; UMin(a,b)
  %3807 = icmp ugt i32 %3804, %3806
  br i1 %3807, label %4271, label %3808

; <label>:3808                                    ; preds = %3759
  br label %3809

; <label>:3809                                    ; preds = %4261, %3808
  %3810 = phi i32 [ %4268, %4261 ], [ %3804, %3808 ]
  %3811 = phi float [ %4262, %4261 ], [ %3750, %3808 ]
  %3812 = phi float [ %4263, %4261 ], [ %3751, %3808 ]
  %3813 = phi float [ %4264, %4261 ], [ %3752, %3808 ]
  %3814 = phi float [ %4265, %4261 ], [ %3753, %3808 ]
  %3815 = phi float [ %4266, %4261 ], [ %3754, %3808 ]
  %3816 = phi float [ %4267, %4261 ], [ %3755, %3808 ]
  %3817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3818 = extractvalue %dx.types.CBufRet.i32 %3817, 0
  %3819 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3792, i32 %3818, i32 %3810)  ; UMad(a,b,c)
  %3820 = shl i32 %3819, 2
  %3821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.i32 %3821, 0
  %3823 = shl i32 %3810, 5
  %3824 = sub nsw i32 %3802, %3823
  %3825 = call i32 @dx.op.binary.i32(i32 37, i32 %3824, i32 0)  ; IMax(a,b)
  %3826 = call i32 @dx.op.binary.i32(i32 38, i32 %3825, i32 31)  ; IMin(a,b)
  %3827 = sub nsw i32 1, %3802
  %3828 = add nsw i32 %3827, %3803
  %3829 = call i32 @dx.op.binary.i32(i32 37, i32 %3828, i32 0)  ; IMax(a,b)
  %3830 = call i32 @dx.op.binary.i32(i32 38, i32 %3829, i32 32)  ; IMin(a,b)
  %3831 = and i32 %3830, 31
  %3832 = shl i32 -1, %3831
  %3833 = xor i32 %3832, -1
  %3834 = and i32 %3826, 31
  %3835 = shl i32 %3833, %3834
  %3836 = icmp eq i32 %3830, 32
  %3837 = select i1 %3836, i32 -1, i32 %3835
  %3838 = and i32 %3837, %3822
  %3839 = icmp eq i32 %3838, 0
  br i1 %3839, label %4261, label %3840

; <label>:3840                                    ; preds = %3809
  br label %3841

; <label>:3841                                    ; preds = %3975, %3840
  %3842 = phi i32 [ %3853, %3975 ], [ %3838, %3840 ]
  %3843 = phi float [ %3976, %3975 ], [ %3811, %3840 ]
  %3844 = phi float [ %3977, %3975 ], [ %3812, %3840 ]
  %3845 = phi float [ %3978, %3975 ], [ %3813, %3840 ]
  %3846 = phi float [ %3979, %3975 ], [ %3814, %3840 ]
  %3847 = phi float [ %3980, %3975 ], [ %3815, %3840 ]
  %3848 = phi float [ %3981, %3975 ], [ %3816, %3840 ]
  %3849 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3842)  ; FirstbitLo(value)
  %3850 = add i32 %3849, %3823
  %3851 = and i32 %3849, 31
  %3852 = shl i32 1, %3851
  %3853 = xor i32 %3852, %3842
  %3854 = mul i32 %3850, 112
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.ResRet.f32 %3855, 2
  %3859 = or i32 %3854, 12
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = add i32 %3854, 16
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = add i32 %3854, 28
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = add i32 %3854, 44
  %3871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = add i32 %3854, 48
  %3874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.f32 %3874, 0
  %3876 = extractvalue %dx.types.ResRet.f32 %3874, 1
  %3877 = extractvalue %dx.types.ResRet.f32 %3874, 2
  %3878 = extractvalue %dx.types.ResRet.f32 %3874, 3
  %3879 = add i32 %3854, 64
  %3880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.ResRet.f32 %3880, 2
  %3884 = extractvalue %dx.types.ResRet.f32 %3880, 3
  %3885 = add i32 %3854, 80
  %3886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3888 = extractvalue %dx.types.ResRet.f32 %3886, 2
  %3889 = add i32 %3854, 92
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = call float @dx.op.dot3.f32(i32 55, float %3856, float %3857, float %3858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3893 = select i1 %108, float %3887, float %3856
  %3894 = select i1 %108, float %3892, float %3857
  %3895 = select i1 %108, float %3888, float %3858
  %3896 = and i32 %3891, 65535
  %3897 = uitofp i32 %3896 to float
  %3898 = lshr i32 %3891, 16
  %3899 = uitofp i32 %3898 to float
  %3900 = and i32 %3869, 65535
  %3901 = and i32 %3869, 50331648
  %3902 = icmp eq i32 %3901, 33554432
  %3903 = fsub fast float %3875, %248
  %3904 = fsub fast float %3876, %249
  %3905 = fsub fast float %3877, %250
  %3906 = call float @dx.op.dot3.f32(i32 55, float %3903, float %3904, float %3905, float %3903, float %3904, float %3905)  ; Dot3(ax,ay,az,bx,by,bz)
  %3907 = call float @dx.op.unary.f32(i32 24, float %3906)  ; Sqrt(value)
  %3908 = fdiv fast float 1.000000e+00, %3907
  %3909 = fmul fast float %3908, %3903
  %3910 = fmul fast float %3908, %3904
  %3911 = fmul fast float %3908, %3905
  %3912 = fadd fast float %3907, %3861
  %3913 = fdiv fast float 1.000000e+00, %3912
  %3914 = fmul float %3872, %3913
  %3915 = fmul float %3914, %3914
  %3916 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  br i1 %3902, label %3917, label %3938

; <label>:3917                                    ; preds = %3841
  %3918 = fmul fast float %3883, %3864
  %3919 = fmul fast float %3883, %3865
  %3920 = fmul fast float %3883, %3866
  %3921 = fadd fast float %3903, %3918
  %3922 = fadd fast float %3904, %3919
  %3923 = fadd fast float %3905, %3920
  %3924 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float %3921, float %3922, float %3923)  ; Dot3(ax,ay,az,bx,by,bz)
  %3925 = call float @dx.op.unary.f32(i32 25, float %3924)  ; Rsqrt(value)
  %3926 = fmul fast float %3925, %3921
  %3927 = fmul fast float %3925, %3922
  %3928 = fmul fast float %3925, %3923
  %3929 = fsub fast float %248, %3875
  %3930 = fsub fast float %249, %3876
  %3931 = fsub fast float %250, %3877
  %3932 = fsub fast float -0.000000e+00, %3929
  %3933 = fsub fast float -0.000000e+00, %3930
  %3934 = fsub fast float -0.000000e+00, %3931
  %3935 = call float @dx.op.dot3.f32(i32 55, float %3932, float %3933, float %3934, float %3864, float %3865, float %3866)  ; Dot3(ax,ay,az,bx,by,bz)
  %3936 = fcmp fast ogt float %3935, 0.000000e+00
  %3937 = uitofp i1 %3936 to float
  br label %3938

; <label>:3938                                    ; preds = %3917, %3841
  %3939 = phi float [ %3937, %3917 ], [ 1.000000e+00, %3841 ]
  %3940 = phi float [ %3926, %3917 ], [ %3909, %3841 ]
  %3941 = phi float [ %3927, %3917 ], [ %3910, %3841 ]
  %3942 = phi float [ %3928, %3917 ], [ %3911, %3841 ]
  %3943 = call float @dx.op.dot3.f32(i32 55, float %3864, float %3865, float %3866, float %3940, float %3941, float %3942)  ; Dot3(ax,ay,az,bx,by,bz)
  %3944 = fmul fast float %3943, %3943
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = fsub fast float 1.000000e+00, %3945
  %3947 = fmul fast float %3946, 5.000000e-01
  %3948 = fcmp fast ogt float %3943, 0.000000e+00
  %3949 = fsub fast float 1.000000e+00, %3947
  %3950 = select i1 %3948, float %3947, float %3949
  %3951 = fmul fast float %3950, %3899
  %3952 = fadd fast float %3951, %3897
  %3953 = fmul fast float %3952, 0x3EF0001000000000
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %40, float %3953, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = fmul fast float %3943, %3881
  %3957 = fadd fast float %3956, %3882
  %3958 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3959 = select i1 %3902, float 1.000000e+00, float %3958
  %3960 = select i1 %3902, float %3958, float 1.000000e+00
  %3961 = fmul fast float %3907, %3878
  %3962 = fsub fast float 1.000000e+00, %3961
  %3963 = fmul fast float %3962, %3884
  %3964 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  %3965 = fmul fast float %3964, %3960
  %3966 = fmul fast float %3965, 2.000000e+00
  %3967 = fsub fast float 3.000000e+00, %3966
  %3968 = fmul fast float %3955, %3939
  %3969 = fmul fast float %3965, %3965
  %3970 = fmul fast float %3969, %3968
  %3971 = fmul fast float %3970, %3967
  %3972 = call float @dx.op.binary.f32(i32 36, float %3971, float %3971)  ; FMin(a,b)
  %3973 = call float @dx.op.binary.f32(i32 36, float %3971, float %3972)  ; FMin(a,b)
  %3974 = fcmp fast ogt float %3973, 0.000000e+00
  br i1 %3974, label %3983, label %3975, !dx.controlflow.hints !127

; <label>:3975                                    ; preds = %4134, %4129, %3938
  %3976 = phi float [ %3843, %4129 ], [ %3843, %3938 ], [ %4257, %4134 ]
  %3977 = phi float [ %3844, %4129 ], [ %3844, %3938 ], [ %4258, %4134 ]
  %3978 = phi float [ %3845, %4129 ], [ %3845, %3938 ], [ %4259, %4134 ]
  %3979 = phi float [ %3846, %4129 ], [ %3846, %3938 ], [ %4248, %4134 ]
  %3980 = phi float [ %3847, %4129 ], [ %3847, %3938 ], [ %4249, %4134 ]
  %3981 = phi float [ %3848, %4129 ], [ %3848, %3938 ], [ %4250, %4134 ]
  %3982 = icmp eq i32 %3842, %3852
  br i1 %3982, label %4260, label %3841

; <label>:3983                                    ; preds = %3938
  %3984 = icmp eq i32 %3900, 255
  br i1 %3984, label %4129, label %3985, !dx.controlflow.hints !128

; <label>:3985                                    ; preds = %3983
  %3986 = mul nuw nsw i32 %3900, 176
  %3987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.ResRet.f32 %3987, 2
  %3991 = extractvalue %dx.types.ResRet.f32 %3987, 3
  %3992 = add nuw nsw i32 %3986, 16
  %3993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3992, i32 undef)  ; BufferLoad(srv,index,wot)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.ResRet.f32 %3993, 1
  %3996 = add nuw nsw i32 %3986, 32
  %3997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3996, i32 undef)  ; BufferLoad(srv,index,wot)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.ResRet.f32 %3997, 1
  %4000 = extractvalue %dx.types.ResRet.f32 %3997, 2
  %4001 = add nuw nsw i32 %3986, 48
  %4002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.ResRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.ResRet.f32 %4002, 2
  %4006 = extractvalue %dx.types.ResRet.f32 %4002, 3
  %4007 = add nuw nsw i32 %3986, 64
  %4008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4012 = extractvalue %dx.types.ResRet.f32 %4008, 3
  %4013 = add nuw nsw i32 %3986, 80
  %4014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4013, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.ResRet.f32 %4014, 1
  %4017 = extractvalue %dx.types.ResRet.f32 %4014, 2
  %4018 = extractvalue %dx.types.ResRet.f32 %4014, 3
  %4019 = add nuw nsw i32 %3986, 96
  %4020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = extractvalue %dx.types.ResRet.f32 %4020, 1
  %4023 = extractvalue %dx.types.ResRet.f32 %4020, 2
  %4024 = extractvalue %dx.types.ResRet.f32 %4020, 3
  %4025 = bitcast float %3995 to i32
  %4026 = fmul fast float %4000, %179
  %4027 = fmul fast float %4000, %180
  %4028 = fmul fast float %4000, %181
  %4029 = fadd fast float %4026, %248
  %4030 = fadd fast float %4027, %249
  %4031 = fadd fast float %4028, %250
  %4032 = fmul fast float %4029, %4003
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4009, float %4032)  ; FMad(a,b,c)
  %4034 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4015, float %4033)  ; FMad(a,b,c)
  %4035 = fadd fast float %4034, %4021
  %4036 = fmul fast float %4029, %4004
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4010, float %4036)  ; FMad(a,b,c)
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4016, float %4037)  ; FMad(a,b,c)
  %4039 = fadd fast float %4038, %4022
  %4040 = fmul fast float %4029, %4005
  %4041 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4011, float %4040)  ; FMad(a,b,c)
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4017, float %4041)  ; FMad(a,b,c)
  %4043 = fadd fast float %4042, %4023
  %4044 = fmul fast float %4029, %4006
  %4045 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4012, float %4044)  ; FMad(a,b,c)
  %4046 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4018, float %4045)  ; FMad(a,b,c)
  %4047 = fadd fast float %4046, %4024
  %4048 = fdiv fast float %4035, %4047
  %4049 = fdiv fast float %4039, %4047
  %4050 = fdiv fast float %4043, %4047
  %4051 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4050)  ; FMax(a,b)
  %4052 = fmul fast float %119, 0x401921FB60000000
  %4053 = call float @dx.op.unary.f32(i32 13, float %4052)  ; Sin(value)
  %4054 = call float @dx.op.unary.f32(i32 12, float %4052)  ; Cos(value)
  %4055 = fmul fast float %4054, %3999
  %4056 = call float @dx.op.tertiary.f32(i32 46, float %4053, float %3999, float 0.000000e+00)  ; FMad(a,b,c)
  %4057 = fmul fast float %3999, %4053
  %4058 = fsub fast float -0.000000e+00, %4057
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %4054, float %3999, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4060

; <label>:4060                                    ; preds = %4060, %3985
  %4061 = phi float [ 0.000000e+00, %3985 ], [ %4093, %4060 ]
  %4062 = phi float [ 0.000000e+00, %3985 ], [ %4095, %4060 ]
  %4063 = phi i32 [ 0, %3985 ], [ %4096, %4060 ]
  %4064 = mul i32 %4063, 2
  %4065 = add i32 0, %4064
  %4066 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4065
  %4067 = load float, float* %4066, align 4
  %4068 = mul i32 %4063, 2
  %4069 = add i32 1, %4068
  %4070 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4069
  %4071 = load float, float* %4070, align 4
  %4072 = fmul fast float %4055, %4067
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %4071, float %4058, float %4072)  ; FMad(a,b,c)
  %4074 = fmul fast float %4067, %4056
  %4075 = call float @dx.op.tertiary.f32(i32 46, float %4071, float %4059, float %4074)  ; FMad(a,b,c)
  %4076 = fadd fast float %4073, %4048
  %4077 = fadd fast float %4075, %4049
  %4078 = fmul fast float %4076, %3994
  %4079 = fmul fast float %4077, %3994
  %4080 = call float @dx.op.binary.f32(i32 35, float %4078, float %3990)  ; FMax(a,b)
  %4081 = call float @dx.op.binary.f32(i32 35, float %4079, float %3990)  ; FMax(a,b)
  %4082 = call float @dx.op.binary.f32(i32 36, float %4080, float %3991)  ; FMin(a,b)
  %4083 = call float @dx.op.binary.f32(i32 36, float %4081, float %3991)  ; FMin(a,b)
  %4084 = fadd fast float %4082, %3988
  %4085 = fadd fast float %4083, %3989
  %4086 = uitofp i32 %4025 to float
  %4087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %41, float %4084, float %4085, float %4086, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4088 = extractvalue %dx.types.ResRet.f32 %4087, 0
  %4089 = fsub fast float %4088, %4051
  %4090 = fsub fast float %4089, %3998
  %4091 = fcmp fast ogt float %4090, 0.000000e+00
  %4092 = select i1 %4091, float 1.000000e+00, float 0.000000e+00
  %4093 = fadd fast float %4092, %4061
  %4094 = select i1 %4091, float %4090, float 0.000000e+00
  %4095 = fadd fast float %4094, %4062
  %4096 = add nuw nsw i32 %4063, 1
  %4097 = icmp eq i32 %4096, 8
  br i1 %4097, label %4098, label %4060

; <label>:4098                                    ; preds = %4060
  %4099 = fdiv fast float 1.000000e+00, %4093
  %4100 = fmul fast float %4099, %4095
  %4101 = fdiv fast float 1.000000e+00, %4051
  %4102 = fmul fast float %4100, %4101
  %4103 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4104 = call float @dx.op.binary.f32(i32 35, float %4103, float 0.000000e+00)  ; FMax(a,b)
  %4105 = fmul fast float %4093, 1.250000e-01
  %4106 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4107 = fmul fast float %4106, 2.000000e+00
  %4108 = fadd fast float %4107, -1.000000e+00
  %4109 = fcmp fast ogt float %4108, 0.000000e+00
  %4110 = fcmp fast olt float %4108, 0.000000e+00
  %4111 = zext i1 %4109 to i32
  %4112 = zext i1 %4110 to i32
  %4113 = sub nsw i32 %4111, %4112
  %4114 = sitofp i32 %4113 to float
  %4115 = fmul fast float %4114, %4108
  %4116 = fsub fast float 1.000000e+00, %4115
  %4117 = fmul fast float %4116, %4116
  %4118 = fmul fast float %4117, %4116
  %4119 = fsub fast float %4116, %4118
  %4120 = fmul fast float %4119, %4104
  %4121 = fsub fast float 1.000000e+00, %4118
  %4122 = fsub fast float %4121, %4120
  %4123 = fmul fast float %4114, 5.000000e-01
  %4124 = fmul fast float %4123, %4122
  %4125 = fsub fast float -5.000000e-01, %4124
  %4126 = fmul fast float %4125, %3959
  %4127 = fadd fast float %4126, 1.000000e+00
  %4128 = fmul fast float %4127, %3971
  br label %4129

; <label>:4129                                    ; preds = %4098, %3983
  %4130 = phi float [ %4128, %4098 ], [ %3971, %3983 ]
  %4131 = call float @dx.op.binary.f32(i32 36, float %4130, float %4130)  ; FMin(a,b)
  %4132 = call float @dx.op.binary.f32(i32 36, float %4130, float %4131)  ; FMin(a,b)
  %4133 = fcmp fast ogt float %4132, 0.000000e+00
  br i1 %4133, label %4134, label %3975, !dx.controlflow.hints !129

; <label>:4134                                    ; preds = %4129
  %4135 = fmul fast float %4130, %3893
  %4136 = fmul fast float %4130, %3894
  %4137 = fmul fast float %4130, %3895
  %4138 = fsub fast float %3909, %383
  %4139 = fsub fast float %3910, %384
  %4140 = fsub fast float %3911, %385
  %4141 = call float @dx.op.dot3.f32(i32 55, float %4138, float %4139, float %4140, float %4138, float %4139, float %4140)  ; Dot3(ax,ay,az,bx,by,bz)
  %4142 = call float @dx.op.unary.f32(i32 25, float %4141)  ; Rsqrt(value)
  %4143 = fmul fast float %4142, %4138
  %4144 = fmul fast float %4142, %4139
  %4145 = fmul fast float %4142, %4140
  %4146 = call float @dx.op.dot3.f32(i32 55, float %3909, float %3910, float %3911, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %4147 = call float @dx.op.dot3.f32(i32 55, float %386, float %387, float %388, float %4143, float %4144, float %4145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4149 = fmul fast float %4148, %3916
  %4150 = fmul fast float %4148, %4148
  %4151 = fmul fast float %4150, 0x47DE623840000000
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = fmul fast float %4149, %4152
  %4154 = bitcast float %3906 to i32
  %4155 = ashr i32 %4154, 1
  %4156 = sub nsw i32 1597463007, %4155
  %4157 = bitcast i32 %4156 to float
  %4158 = fmul fast float %4157, %3903
  %4159 = fmul fast float %4157, %3904
  %4160 = fmul fast float %4157, %3905
  %4161 = fsub fast float %4158, %383
  %4162 = fsub fast float %4159, %384
  %4163 = fsub fast float %4160, %385
  %4164 = call float @dx.op.dot3.f32(i32 55, float %4161, float %4162, float %4163, float %4161, float %4162, float %4163)  ; Dot3(ax,ay,az,bx,by,bz)
  %4165 = call float @dx.op.unary.f32(i32 25, float %4164)  ; Rsqrt(value)
  %4166 = fmul fast float %4161, %4165
  %4167 = fmul fast float %4162, %4165
  %4168 = fmul fast float %4163, %4165
  %4169 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %4166, float %4167, float %4168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4170 = fmul fast float %4169, %4169
  %4171 = call float @dx.op.unary.f32(i32 6, float %4146)  ; FAbs(value)
  %4172 = fsub fast float 1.000000e+00, %403
  %4173 = fmul fast float %391, %391
  %4174 = fmul fast float %4173, %4172
  %4175 = fadd fast float %4174, %403
  %4176 = bitcast float %4175 to i32
  %4177 = ashr i32 %4176, 1
  %4178 = add nsw i32 %4177, 532487669
  %4179 = bitcast i32 %4178 to float
  %4180 = fadd fast float %4179, %391
  %4181 = fmul fast float %403, %4170
  %4182 = fsub fast float 1.000000e+00, %4170
  %4183 = fadd fast float %4182, %4181
  %4184 = fmul fast float %4171, %4171
  %4185 = fmul fast float %4184, %4172
  %4186 = fadd fast float %4185, %403
  %4187 = bitcast float %4186 to i32
  %4188 = ashr i32 %4187, 1
  %4189 = add nsw i32 %4188, 532487669
  %4190 = bitcast i32 %4189 to float
  %4191 = fadd fast float %4190, %4171
  %4192 = fmul fast float %4183, %4183
  %4193 = fmul fast float %4192, %4180
  %4194 = fmul fast float %4193, %4191
  %4195 = fdiv fast float 1.000000e+00, %4194
  %4196 = bitcast float %403 to i32
  %4197 = sitofp i32 %4196 to float
  %4198 = fmul fast float %4197, 0x3FE7F73180000000
  %4199 = fadd fast float %4198, 0x41AFE27C40000000
  %4200 = fptosi float %4199 to i32
  %4201 = bitcast i32 %4200 to float
  %4202 = fmul fast float %3872, 0x3FD80E9D60000000
  %4203 = fmul fast float %4202, %4157
  %4204 = fadd fast float %4201, %4203
  %4205 = bitcast float %4204 to i32
  %4206 = sub nsw i32 2129859010, %4205
  %4207 = bitcast i32 %4206 to float
  %4208 = fmul fast float %403, %4195
  %4209 = fmul fast float %4208, %4201
  %4210 = fmul fast float %4209, %4207
  %4211 = call float @dx.op.unary.f32(i32 6, float %4147)  ; FAbs(value)
  %4212 = fsub fast float 1.000000e+00, %4211
  %4213 = bitcast float %4212 to i32
  %4214 = sitofp i32 %4213 to float
  %4215 = fmul fast float %4214, 5.000000e+00
  %4216 = fadd fast float %4215, 0xC1EFBF8940000000
  %4217 = fptosi float %4216 to i32
  %4218 = bitcast i32 %4217 to float
  %4219 = fsub fast float 1.000000e+00, %371
  %4220 = fsub fast float 1.000000e+00, %372
  %4221 = fsub fast float 1.000000e+00, %389
  %4222 = fmul fast float %4218, %4219
  %4223 = fmul fast float %4218, %4220
  %4224 = fmul fast float %4218, %4221
  %4225 = fadd fast float %4222, %371
  %4226 = fadd fast float %4223, %372
  %4227 = fadd fast float %4224, %389
  %4228 = fmul fast float %4146, 9.843750e-01
  %4229 = fadd fast float %4228, 7.812500e-03
  %4230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %4229, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 2
  %4232 = extractvalue %dx.types.ResRet.f32 %4230, 3
  %4233 = fmul fast float %4231, %371
  %4234 = fmul fast float %4231, %372
  %4235 = fmul fast float %4231, %389
  %4236 = fadd fast float %4233, %4232
  %4237 = fadd fast float %4234, %4232
  %4238 = fadd fast float %4235, %4232
  %4239 = call float @dx.op.binary.f32(i32 35, float %4237, float %4238)  ; FMax(a,b)
  %4240 = call float @dx.op.binary.f32(i32 35, float %4236, float %4239)  ; FMax(a,b)
  %4241 = fsub fast float 1.000000e+00, %4240
  %4242 = fmul fast float %4153, %4135
  %4243 = fmul fast float %4242, %4241
  %4244 = fmul fast float %4153, %4136
  %4245 = fmul fast float %4244, %4241
  %4246 = fmul fast float %4153, %4137
  %4247 = fmul fast float %4246, %4241
  %4248 = fadd fast float %4243, %3846
  %4249 = fadd fast float %4245, %3847
  %4250 = fadd fast float %4247, %3848
  %4251 = fmul fast float %4242, %4225
  %4252 = fmul fast float %4251, %4210
  %4253 = fmul fast float %4244, %4226
  %4254 = fmul fast float %4253, %4210
  %4255 = fmul fast float %4246, %4227
  %4256 = fmul fast float %4255, %4210
  %4257 = fadd fast float %4252, %3843
  %4258 = fadd fast float %4254, %3844
  %4259 = fadd fast float %4256, %3845
  br label %3975

; <label>:4260                                    ; preds = %3975
  br label %4261

; <label>:4261                                    ; preds = %4260, %3809
  %4262 = phi float [ %3811, %3809 ], [ %3976, %4260 ]
  %4263 = phi float [ %3812, %3809 ], [ %3977, %4260 ]
  %4264 = phi float [ %3813, %3809 ], [ %3978, %4260 ]
  %4265 = phi float [ %3814, %3809 ], [ %3979, %4260 ]
  %4266 = phi float [ %3815, %3809 ], [ %3980, %4260 ]
  %4267 = phi float [ %3816, %3809 ], [ %3981, %4260 ]
  %4268 = add i32 %3810, 1
  %4269 = icmp ugt i32 %4268, %3806
  br i1 %4269, label %4270, label %3809

; <label>:4270                                    ; preds = %4261
  br label %4271

; <label>:4271                                    ; preds = %4270, %3759, %3749
  %4272 = phi float [ %3750, %3749 ], [ %3750, %3759 ], [ %4262, %4270 ]
  %4273 = phi float [ %3751, %3749 ], [ %3751, %3759 ], [ %4263, %4270 ]
  %4274 = phi float [ %3752, %3749 ], [ %3752, %3759 ], [ %4264, %4270 ]
  %4275 = phi float [ %3753, %3749 ], [ %3753, %3759 ], [ %4265, %4270 ]
  %4276 = phi float [ %3754, %3749 ], [ %3754, %3759 ], [ %4266, %4270 ]
  %4277 = phi float [ %3755, %3749 ], [ %3755, %3759 ], [ %4267, %4270 ]
  %4278 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %4279 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %4280 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %4281 = fmul fast float %4278, %4275
  %4282 = fmul fast float %4279, %4276
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 0
  br i1 %108, label %4285, label %4305

; <label>:4285                                    ; preds = %4271
  %4286 = fadd fast float %4277, %379
  %4287 = fmul fast float %4286, %377
  %4288 = fsub fast float 1.000000e+00, %377
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 3
  %4292 = fmul fast float %4291, %4289
  %4293 = fadd fast float %4292, %4287
  %4294 = fsub fast float 1.000000e+00, %391
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4297 = fmul fast float %4296, %4294
  %4298 = fsub fast float %4293, %4297
  %4299 = fadd fast float %4282, %4281
  %4300 = extractvalue %dx.types.CBufRet.f32 %4290, 1
  %4301 = fsub fast float %4298, %4300
  %4302 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4303 = fmul fast float %4301, %4302
  %4304 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  br label %4309

; <label>:4305                                    ; preds = %4271
  %4306 = fmul fast float %4280, %4277
  %4307 = fmul fast float %4284, %4282
  %4308 = fmul fast float %4306, %4284
  br label %4309

; <label>:4309                                    ; preds = %4305, %4285
  %4310 = phi float [ %4299, %4285 ], [ %4281, %4305 ]
  %4311 = phi float [ %4304, %4285 ], [ %4307, %4305 ]
  %4312 = phi float [ 1.000000e+00, %4285 ], [ %4308, %4305 ]
  %4313 = fmul float %4284, %4310
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = fmul fast float %4315, %4273
  %4317 = fmul fast float %4315, %4274
  %4318 = fadd fast float %4273, %4272
  %4319 = select i1 %108, float %4318, float %4272
  %4320 = fmul float %4319, %4315
  %4321 = select i1 %108, float 0.000000e+00, float %4316
  %4322 = select i1 %108, float 0.000000e+00, float %4317
  %4323 = fmul fast float %4313, %4278
  %4324 = fmul fast float %4311, %4279
  %4325 = fmul fast float %4312, %4280
  %4326 = fadd fast float %4320, %4323
  %4327 = fadd fast float %4321, %4324
  %4328 = fadd fast float %4322, %4325
  %4329 = select i1 %108, float %4311, float %4327
  %4330 = select i1 %108, float %4312, float %4328
  %4331 = call float @dx.op.binary.f32(i32 36, float %4326, float 3.225500e+04)  ; FMin(a,b)
  %4332 = call float @dx.op.binary.f32(i32 36, float %4329, float 3.225500e+04)  ; FMin(a,b)
  %4333 = call float @dx.op.binary.f32(i32 36, float %4330, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!56}
!dx.entryPoints = !{!57}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !46, !49}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 61, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 62, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 63, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 21, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 22, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !20}
!20 = !{i32 0, i32 5}
!21 = !{i32 13, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!33 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
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
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!46 = !{!47, !48}
!47 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!48 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 256, null}
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!51 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!52 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!53 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!54 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!55 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!56 = !{[43 x i32] [i32 41, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7]}
!57 = !{void ()* @ps_main, !"ps_main", !58, !4, !82}
!58 = !{!59, !79, null}
!59 = !{!60, !63, !64, !65, !67, !68, !70, !72, !74, !75, !76, !77, !78}
!60 = !{i32 0, !"SV_Position", i8 9, i8 3, !61, i8 4, i32 1, i8 4, i32 0, i8 0, !62}
!61 = !{i32 0}
!62 = !{i32 3, i32 11}
!63 = !{i32 1, !"COLOR", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!64 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 2, i8 0, !62}
!65 = !{i32 3, !"NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 3, i32 3, i8 0, !66}
!66 = !{i32 3, i32 7}
!67 = !{i32 4, !"TANGENT", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!68 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !61, i8 2, i32 1, i8 1, i32 3, i8 3, !69}
!69 = !{i32 3, i32 1}
!70 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !71, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!71 = !{i32 1}
!72 = !{i32 7, !"LGV_POSITION_INDEX", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 6, i8 0, !73}
!73 = !{i32 3, i32 8}
!74 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 2, i32 7, i8 0, null}
!75 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 8, i8 0, null}
!76 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !61, i8 1, i32 1, i8 4, i32 9, i8 0, !69}
!77 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !61, i8 1, i32 1, i8 1, i32 10, i8 0, !69}
!78 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !61, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!79 = !{!80}
!80 = !{i32 0, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!81 = !{i32 3, i32 15}
!82 = !{i32 0, i64 24}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!85 = distinct !{!85, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!86 = distinct !{!86, !87, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!87 = distinct !{!87, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108, !110, !112, !114}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = !{!118, !118, i64 0}
!118 = !{!"float", !105, i64 0}
!119 = distinct !{!119, !97}
!120 = distinct !{!120, !97}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}

