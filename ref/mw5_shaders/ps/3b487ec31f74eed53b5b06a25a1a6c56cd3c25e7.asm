;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float       
; CARD_BARY_AND_TILE       1   xyzw        5     NONE   float       
; SECONDARY_TEXCOORDS      0   xy          6     NONE   float       
; SCEONDARY_NORMAL         0   xyzw        7     NONE   float       
; PACKED_TRI_DATA          0   xyzw        8     NONE    uint   x  w
; SV_IsFrontFace           0   x           9    FFACE    uint   x   
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
; shader hash: 7357061f5528017b522e17d67413fd88
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
;                                   texture    byte         r/o      T2     t31,space1     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32     2darray      T4     t16,space2     1
;                                   texture     f32          3d      T5     t15,space2     1
;                                   texture     f32          2d      T6     t13,space2     1
;                                   texture     u32          2d      T7     t17,space2     1
;                                   texture     f32          3d      T8     t18,space2     1
;                                   texture    byte         r/o      T9      t3,space1     1
;                                   texture    byte         r/o     T10      t4,space1     1
;                                   texture    byte         r/o     T11      t5,space1     1
;                                   texture    byte         r/o     T12      t6,space1     1
;                                   texture     f32          2d     T13     t69,space2     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15     t61,space2     1
;                                   texture     f32          2d     T16     t57,space2     1
;                                   texture    byte         r/o     T17     t69,space1     1
;                                   texture     f32     2darray     T18     t35,space2     1
;                                   texture     f32          3d     T19     t31,space2     1
;                                   texture    byte         r/o     T20     t10,space1     1
;                                   texture    byte         r/o     T21      t1,space1     1
;                                   texture     f32          1d     T22     t32,space2     1
;                                   texture     f32     2darray     T23      t8,space2     1
;                                   texture     f32          2d     T24      t2,space2     1
;                                   texture     f32          2d     T25      t3,space2     1
;                                   texture     f32          2d     T26      t4,space2     1
;                                   textureunorm_f32     2darray     T27     t80,space2     1
;                                   texture    byte         r/o     T28     t67,space1     1
;                                   texture     f32          2d     T29      t7,space2     1
;                                   texture     f32          2d     T30      t6,space2     1
;                                   texture     f32          2d     T31      t5,space2     1
;                                   texture     f32          2d     T32     t38,space2     1
;                                   texture    byte         r/o     T33     t12,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;                                       UAV     f32          2d      U0             u7     1
;
;
; ViewId state:
;
; Number of inputs: 37, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 15, 32, 35, 36 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 15, 32, 35, 36 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 15, 32, 35, 36 }
;   output 4 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 15, 32, 35, 36 }
;   output 5 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 15, 32, 35, 36 }
;   output 6 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 15, 32, 35, 36 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = alloca [4 x i32], align 4
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = icmp ne i32 %45, 0
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = alloca [12 x float], align 4
  %59 = alloca [12 x float], align 4
  %60 = alloca [4 x float], align 4
  %61 = alloca [4 x float], align 4
  %62 = alloca [4 x float], align 4
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = fmul fast float %64, %55
  %66 = fmul fast float %64, %56
  %67 = select i1 %46, float 1.000000e+00, float -1.000000e+00
  %68 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %69 = bitcast float %68 to i32
  %70 = ashr i32 %69, 1
  %71 = sub nsw i32 1597250115, %70
  %72 = bitcast i32 %71 to float
  %73 = fmul fast float %50, %67
  %74 = fmul fast float %73, %72
  %75 = fmul fast float %51, %67
  %76 = fmul fast float %75, %72
  %77 = fmul fast float %52, %67
  %78 = fmul fast float %77, %72
  %79 = lshr i32 %48, 8
  %80 = mul nuw nsw i32 %79, 24
  %81 = add nuw nsw i32 %80, 12
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = extractvalue %dx.types.ResRet.i32 %82, 1
  %85 = and i32 %83, 65535
  %86 = uitofp i32 %85 to float
  %87 = lshr i32 %83, 16
  %88 = uitofp i32 %87 to float
  %89 = and i32 %84, 65535
  %90 = uitofp i32 %89 to float
  %91 = lshr i32 %84, 16
  %92 = uitofp i32 %91 to float
  %93 = fmul fast float %86, 0x3F00001000000000
  %94 = fmul fast float %88, 0x3F00001000000000
  %95 = fmul fast float %90, 0x3F00001000000000
  %96 = fmul fast float %92, 0x3F00001000000000
  %97 = fadd fast float %93, -1.000000e+00
  %98 = fadd fast float %94, -1.000000e+00
  %99 = fadd fast float %95, -1.000000e+00
  %100 = fadd fast float %96, -1.000000e+00
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %102, %65
  %105 = fmul fast float %103, %66
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = and i32 %107, 114688
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %109, float %104, float 0.000000e+00
  %111 = select i1 %109, float %105, float 0.000000e+00
  %112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %110, float %111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fmul fast float %113, 2.550000e+02
  %115 = fptoui float %114 to i32
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.i32 %117, 3
  %119 = and i32 %118, 3
  %120 = icmp ne i32 %119, 0
  %121 = and i32 %118, 4
  %122 = icmp ne i32 %121, 0
  %123 = and i1 %120, %122
  br i1 %123, label %124, label %135

; <label>:124                                     ; preds = %0
  %125 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %126 = fmul fast float %125, %66
  %127 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %128 = fmul fast float %127, %65
  %129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %39, float %128, float %126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = fsub fast float 1.000000e+00, %130
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fcmp fast olt float %131, %133
  br label %138

; <label>:135                                     ; preds = %0
  %136 = icmp eq i32 %121, 0
  %137 = and i1 %120, %136
  br label %138

; <label>:138                                     ; preds = %135, %124
  %139 = phi i1 [ %134, %124 ], [ %137, %135 ]
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = fmul fast float %141, 0x3FE3C6EF40000000
  %143 = frem fast float %65, 2.560000e+02
  %144 = frem fast float %66, 2.560000e+02
  %145 = fptoui float %143 to i32
  %146 = fptoui float %144 to i32
  %147 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %145, i32 %146, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fadd fast float %148, %142
  %150 = call float @dx.op.unary.f32(i32 22, float %149)  ; Frc(value)
  %151 = add i32 %47, 60
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = add i32 %153, 0
  %155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %156 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %155, i32 0)  ; GetDimensions(handle,mipLevel)
  %157 = extractvalue %dx.types.Dimensions %156, 0
  %158 = sitofp i32 %157 to float
  %159 = extractvalue %dx.types.Dimensions %156, 1
  %160 = sitofp i32 %159 to float
  %161 = fmul fast float %88, 0x3F10001000000000
  %162 = fadd fast float %161, -2.000000e+00
  %163 = fmul fast float %162, %98
  %164 = fsub fast float 1.000000e+00, %163
  %165 = fmul fast float %90, 0x3F10001000000000
  %166 = fadd fast float %165, -2.000000e+00
  %167 = fmul fast float %166, %99
  %168 = fsub fast float %164, %167
  %169 = fmul fast float %86, 0x3F10001000000000
  %170 = fadd fast float %169, -2.000000e+00
  %171 = fmul fast float %170, %98
  %172 = fmul fast float %166, %100
  %173 = fsub fast float %171, %172
  %174 = fmul fast float %170, %99
  %175 = fmul fast float %162, %100
  %176 = fadd fast float %174, %175
  %177 = fadd fast float %171, %172
  %178 = fmul fast float %170, %97
  %179 = fsub fast float 1.000000e+00, %178
  %180 = fsub fast float %179, %167
  %181 = fmul fast float %162, %99
  %182 = fmul fast float %170, %100
  %183 = fsub fast float %181, %182
  %184 = fsub fast float %174, %175
  %185 = fadd fast float %181, %182
  %186 = fsub fast float %179, %163
  %187 = fmul fast float %158, %53
  %188 = call float @dx.op.unary.f32(i32 83, float %187)  ; DerivCoarseX(value)
  %189 = call float @dx.op.unary.f32(i32 84, float %187)  ; DerivCoarseY(value)
  %190 = fmul fast float %160, %54
  %191 = call float @dx.op.unary.f32(i32 83, float %190)  ; DerivCoarseX(value)
  %192 = call float @dx.op.unary.f32(i32 84, float %190)  ; DerivCoarseY(value)
  %193 = fmul fast float %191, %191
  %194 = fmul fast float %192, %192
  %195 = fadd fast float %194, %193
  %196 = fmul fast float %191, %188
  %197 = fmul fast float %192, %189
  %198 = fadd fast float %197, %196
  %199 = fmul fast float %188, %188
  %200 = fmul fast float %189, %189
  %201 = fadd fast float %200, %199
  %202 = fmul fast float %195, %201
  %203 = fmul fast float %198, %198
  %204 = fsub fast float %202, %203
  %205 = bitcast float %204 to i32
  %206 = fadd fast float %195, %201
  %207 = bitcast float %206 to i32
  %208 = sub i32 8388608, %207
  %209 = add i32 %208, %205
  %210 = ashr i32 %209, 24
  %211 = sitofp i32 %210 to float
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = add i32 %213, 0
  %215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %215, %dx.types.Handle %39, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float %211)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = extractvalue %dx.types.ResRet.f32 %216, 2
  %220 = fmul fast float %217, 2.000000e+00
  %221 = fmul fast float %218, 2.000000e+00
  %222 = fmul fast float %219, 2.000000e+00
  %223 = fadd fast float %220, -1.000000e+00
  %224 = fadd fast float %221, -1.000000e+00
  %225 = fadd fast float %222, -1.000000e+00
  %226 = fmul fast float %223, %168
  %227 = call float @dx.op.tertiary.f32(i32 46, float %224, float %173, float %226)  ; FMad(a,b,c)
  %228 = call float @dx.op.tertiary.f32(i32 46, float %225, float %176, float %227)  ; FMad(a,b,c)
  %229 = fmul fast float %223, %177
  %230 = call float @dx.op.tertiary.f32(i32 46, float %224, float %180, float %229)  ; FMad(a,b,c)
  %231 = call float @dx.op.tertiary.f32(i32 46, float %225, float %183, float %230)  ; FMad(a,b,c)
  %232 = fmul fast float %223, %184
  %233 = call float @dx.op.tertiary.f32(i32 46, float %224, float %185, float %232)  ; FMad(a,b,c)
  %234 = call float @dx.op.tertiary.f32(i32 46, float %225, float %186, float %233)  ; FMad(a,b,c)
  br i1 %46, label %244, label %235

; <label>:235                                     ; preds = %138
  %236 = call float @dx.op.dot3.f32(i32 55, float %74, float %76, float %78, float %228, float %231, float %234)  ; Dot3(ax,ay,az,bx,by,bz)
  %237 = fmul fast float %236, 2.000000e+00
  %238 = fmul fast float %237, %74
  %239 = fmul fast float %237, %76
  %240 = fmul fast float %237, %78
  %241 = fsub fast float %228, %238
  %242 = fsub fast float %231, %239
  %243 = fsub fast float %234, %240
  br label %244

; <label>:244                                     ; preds = %235, %138
  %245 = phi float [ %241, %235 ], [ %228, %138 ]
  %246 = phi float [ %242, %235 ], [ %231, %138 ]
  %247 = phi float [ %243, %235 ], [ %234, %138 ]
  %248 = add i32 %47, 56
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = add i32 %250, 0
  %252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %251, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %252, %dx.types.Handle %39, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float %211)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = add i32 %47, 64
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = add i32 %260, 0
  %262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %262, %dx.types.Handle %39, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float %211)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = add i32 %47, 68
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = add i32 %267, 0
  %269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %269, %dx.types.Handle %39, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float %211)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fadd fast float %49, 1.000000e+00
  %273 = add i32 %47, 24
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 2
  %276 = bitcast i32 %275 to float
  %277 = fmul fast float %271, 2.000000e+00
  %278 = fsub fast float %272, %277
  %279 = fmul fast float %276, %278
  %280 = fadd fast float %279, %57
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = extractvalue %dx.types.CBufRet.f32 %281, 3
  %284 = fmul fast float %65, 2.000000e+00
  %285 = fmul fast float %284, %282
  %286 = fmul fast float %66, 2.000000e+00
  %287 = fmul fast float %286, %283
  %288 = fsub fast float 1.000000e+00, %285
  %289 = fsub fast float 1.000000e+00, %287
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %293 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %294 = fmul fast float %288, %291
  %295 = fmul fast float %288, %292
  %296 = fmul fast float %288, %293
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = fmul fast float %289, %298
  %302 = fmul fast float %289, %299
  %303 = fmul fast float %289, %300
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %306 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %307 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %308 = fadd fast float %301, %305
  %309 = fadd fast float %308, %294
  %310 = fadd fast float %302, %306
  %311 = fadd fast float %310, %295
  %312 = fadd fast float %303, %307
  %313 = fadd fast float %312, %296
  %314 = fmul fast float %309, %280
  %315 = fmul fast float %311, %280
  %316 = fmul fast float %313, %280
  %317 = fadd fast float %264, 0xBFB99999A0000000
  %318 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %319 = fmul fast float %318, 0x3FF1C71C80000000
  %320 = call float @dx.op.binary.f32(i32 36, float %264, float 0x3FB99999A0000000)  ; FMin(a,b)
  %321 = fsub fast float 1.000000e+00, %319
  %322 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %323 = fmul fast float %322, %254
  %324 = fmul fast float %322, %255
  %325 = fmul fast float %322, %256
  %326 = call float @dx.op.unary.f32(i32 7, float %323)  ; Saturate(value)
  %327 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %328 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  %329 = fmul fast float %319, %254
  %330 = fmul fast float %319, %255
  %331 = fmul fast float %319, %256
  %332 = fadd fast float %329, %320
  %333 = fadd fast float %330, %320
  %334 = fadd fast float %331, %320
  %335 = call float @dx.op.unary.f32(i32 7, float %332)  ; Saturate(value)
  %336 = call float @dx.op.unary.f32(i32 7, float %333)  ; Saturate(value)
  %337 = call float @dx.op.unary.f32(i32 7, float %334)  ; Saturate(value)
  %338 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = fmul fast float %338, 1.875000e-01
  %340 = fadd fast float %339, 0x3FE647AE20000000
  %341 = call float @dx.op.unary.f32(i32 7, float %340)  ; Saturate(value)
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = fptoui float %65 to i32
  %345 = fptoui float %66 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %344, i32 %345, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %346 = fsub fast float -0.000000e+00, %316
  %347 = call float @dx.op.dot3.f32(i32 55, float %314, float %315, float %316, float %314, float %315, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = call float @dx.op.unary.f32(i32 25, float %347)  ; Rsqrt(value)
  %349 = fmul fast float %348, %314
  %350 = fmul fast float %348, %315
  %351 = fmul fast float %348, %316
  %352 = fsub fast float -0.000000e+00, %349
  %353 = fsub fast float -0.000000e+00, %350
  %354 = fsub fast float -0.000000e+00, %351
  %355 = select i1 %139, float 0.000000e+00, float %337
  %356 = call float @dx.op.dot3.f32(i32 55, float %245, float %246, float %247, float %352, float %353, float %354)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = call float @dx.op.dot3.f32(i32 55, float %349, float %350, float %351, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = fmul fast float %358, 2.000000e+00
  %360 = fmul fast float %359, %245
  %361 = fmul fast float %359, %246
  %362 = fmul fast float %359, %247
  %363 = fsub fast float %349, %360
  %364 = fsub fast float %350, %361
  %365 = fsub fast float %351, %362
  %366 = fsub fast float 1.000000e+00, %257
  %367 = call float @dx.op.binary.f32(i32 35, float %366, float 0x3F847AE140000000)  ; FMax(a,b)
  %368 = fmul fast float %367, %367
  %369 = fmul fast float %368, %368
  %370 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float 0x3BF7A3BEA0000000, float %369, float %370, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %377 = fadd fast float %374, %314
  %378 = fadd fast float %375, %315
  %379 = fadd fast float %376, %316
  %380 = fmul fast float %245, 3.200000e+01
  %381 = fmul fast float %246, 3.200000e+01
  %382 = fadd fast float %377, %380
  %383 = fadd fast float %378, %381
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %387 = fsub fast float %382, %385
  %388 = fsub fast float %383, %386
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %391 = extractvalue %dx.types.CBufRet.f32 %389, 1
  %392 = fmul fast float %387, %390
  %393 = fmul fast float %388, %391
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = fmul fast float %392, %395
  %397 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %398 = fadd fast float %396, %397
  %399 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %400 = fmul fast float %399, %393
  %401 = extractvalue %dx.types.CBufRet.f32 %394, 3
  %402 = fadd fast float %400, %401
  %403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %39, float %398, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = extractvalue %dx.types.ResRet.f32 %403, 1
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %409 = fsub fast float %407, %408
  %410 = fmul fast float %409, %404
  %411 = fadd fast float %410, %408
  %412 = extractvalue %dx.types.CBufRet.f32 %406, 3
  %413 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %414 = fsub fast float %412, %413
  %415 = fmul fast float %414, %405
  %416 = fadd fast float %415, %413
  %417 = fsub fast float %379, %411
  %418 = fsub fast float %416, %411
  %419 = fdiv fast float %417, %418
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = fmul fast float %422, %420
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %425 = fadd fast float %423, %424
  %426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %398, float %402, float %425, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %434 = fmul fast float %431, %427
  %435 = fmul fast float %432, %428
  %436 = fmul fast float %433, %429
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %437, 1
  %440 = extractvalue %dx.types.CBufRet.f32 %437, 2
  %441 = fadd fast float %434, %438
  %442 = fadd fast float %435, %439
  %443 = fadd fast float %436, %440
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = fmul fast float %445, %392
  %447 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %448 = fadd fast float %446, %447
  %449 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %450 = fmul fast float %449, %393
  %451 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %452 = fadd fast float %450, %451
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %456 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %457 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = extractvalue %dx.types.CBufRet.f32 %458, 3
  %463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %448, float %452, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %448, float %452, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = fmul fast float %464, %441
  %474 = fmul fast float %469, %441
  %475 = fmul fast float %471, %441
  %476 = fmul fast float %467, %441
  %477 = fadd fast float %473, %454
  %478 = fadd fast float %474, %455
  %479 = fadd fast float %475, %456
  %480 = fadd fast float %476, %457
  %481 = fmul fast float %465, %441
  %482 = fmul fast float %470, %441
  %483 = fadd fast float %481, %459
  %484 = fadd fast float %482, %460
  %485 = fmul fast float %466, %441
  %486 = fmul fast float %472, %441
  %487 = fadd fast float %485, %461
  %488 = fadd fast float %486, %462
  %489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %448, float %452, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %448, float %452, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = extractvalue %dx.types.ResRet.f32 %494, 1
  %497 = extractvalue %dx.types.ResRet.f32 %494, 2
  %498 = extractvalue %dx.types.ResRet.f32 %494, 3
  %499 = fmul fast float %490, %442
  %500 = fmul fast float %495, %442
  %501 = fmul fast float %497, %442
  %502 = fmul fast float %493, %442
  %503 = fadd fast float %477, %499
  %504 = fadd fast float %478, %500
  %505 = fadd fast float %479, %501
  %506 = fadd fast float %480, %502
  %507 = fmul fast float %491, %442
  %508 = fmul fast float %496, %442
  %509 = fadd fast float %483, %507
  %510 = fadd fast float %484, %508
  %511 = fmul fast float %492, %442
  %512 = fmul fast float %498, %442
  %513 = fadd fast float %487, %511
  %514 = fadd fast float %488, %512
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %448, float %452, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = extractvalue %dx.types.ResRet.f32 %515, 3
  %520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %448, float %452, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = extractvalue %dx.types.ResRet.f32 %520, 2
  %524 = extractvalue %dx.types.ResRet.f32 %520, 3
  %525 = fmul fast float %516, %443
  %526 = fmul fast float %521, %443
  %527 = fmul fast float %523, %443
  %528 = fmul fast float %519, %443
  %529 = fadd fast float %503, %525
  %530 = fadd fast float %504, %526
  %531 = fadd fast float %505, %527
  %532 = fadd fast float %506, %528
  %533 = fmul fast float %517, %443
  %534 = fmul fast float %522, %443
  %535 = fadd fast float %509, %533
  %536 = fadd fast float %510, %534
  %537 = fmul fast float %518, %443
  %538 = fmul fast float %524, %443
  %539 = fadd fast float %513, %537
  %540 = fadd fast float %514, %538
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = fsub fast float %377, %542
  %544 = fsub fast float %385, %377
  %545 = call float @dx.op.binary.f32(i32 35, float %544, float %543)  ; FMax(a,b)
  %546 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %547 = fsub fast float %378, %546
  %548 = fsub fast float %386, %378
  %549 = call float @dx.op.binary.f32(i32 35, float %548, float %547)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float %545, float %549)  ; FMax(a,b)
  %551 = extractvalue %dx.types.CBufRet.f32 %389, 3
  %552 = fmul fast float %551, %550
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 0
  %556 = extractvalue %dx.types.CBufRet.f32 %554, 1
  %557 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %558 = extractvalue %dx.types.CBufRet.f32 %554, 3
  %559 = fsub fast float %555, %529
  %560 = fsub fast float %556, %530
  %561 = fsub fast float %557, %531
  %562 = fsub fast float %558, %532
  %563 = fmul fast float %559, %553
  %564 = fmul fast float %560, %553
  %565 = fmul fast float %561, %553
  %566 = fmul fast float %562, %553
  %567 = fadd fast float %563, %529
  %568 = fadd fast float %564, %530
  %569 = fadd fast float %565, %531
  %570 = fadd fast float %566, %532
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = fsub fast float %572, %535
  %575 = fsub fast float %573, %536
  %576 = fmul fast float %574, %553
  %577 = fmul fast float %575, %553
  %578 = fadd fast float %576, %535
  %579 = fadd fast float %577, %536
  %580 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %581 = extractvalue %dx.types.CBufRet.f32 %571, 3
  %582 = fsub fast float %580, %539
  %583 = fsub fast float %581, %540
  %584 = fmul fast float %582, %553
  %585 = fmul fast float %583, %553
  %586 = fadd fast float %584, %539
  %587 = fadd fast float %585, %540
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = fmul fast float %589, %567
  %591 = fmul fast float %589, %568
  %592 = fmul fast float %589, %569
  %593 = fmul fast float %589, %570
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = fmul fast float %595, %578
  %597 = fmul fast float %595, %579
  %598 = fadd fast float %596, %590
  %599 = fadd fast float %597, %592
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = fmul fast float %601, %586
  %603 = fmul fast float %601, %587
  %604 = fadd fast float %598, %602
  %605 = fadd fast float %599, %603
  %606 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %607 = fmul fast float %606, %567
  %608 = fmul fast float %606, %568
  %609 = fmul fast float %606, %569
  %610 = fmul fast float %606, %570
  %611 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %612 = fmul fast float %611, %578
  %613 = fmul fast float %611, %579
  %614 = fadd fast float %612, %607
  %615 = fadd fast float %613, %609
  %616 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %617 = fmul fast float %616, %586
  %618 = fmul fast float %616, %587
  %619 = fadd fast float %614, %617
  %620 = fadd fast float %615, %618
  %621 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %622 = fmul fast float %621, %567
  %623 = fmul fast float %621, %568
  %624 = fmul fast float %621, %569
  %625 = fmul fast float %621, %570
  %626 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %627 = fmul fast float %626, %578
  %628 = fmul fast float %626, %579
  %629 = fadd fast float %627, %622
  %630 = fadd fast float %628, %624
  %631 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %632 = fmul fast float %631, %586
  %633 = fmul fast float %631, %587
  %634 = fadd fast float %629, %632
  %635 = fadd fast float %630, %633
  %636 = fmul fast float %623, %623
  %637 = fmul fast float %635, %635
  %638 = fmul fast float %625, %625
  %639 = fadd fast float %638, %636
  %640 = fadd fast float %639, %637
  %641 = call float @dx.op.unary.f32(i32 24, float %640)  ; Sqrt(value)
  %642 = fcmp fast ugt float %641, 0.000000e+00
  br i1 %642, label %643, label %658

; <label>:643                                     ; preds = %244
  %644 = fsub fast float -0.000000e+00, %625
  %645 = fdiv fast float %644, %641
  %646 = fsub fast float -0.000000e+00, %623
  %647 = fdiv fast float %646, %641
  %648 = fdiv fast float %635, %641
  %649 = fmul fast float %634, 0x3FE279A760000000
  %650 = fmul fast float %647, %623
  %651 = fmul fast float %648, %635
  %652 = fmul fast float %645, %625
  %653 = fadd fast float %650, %652
  %654 = fsub fast float %653, %651
  %655 = call float @dx.op.unary.f32(i32 6, float %654)  ; FAbs(value)
  %656 = fadd fast float %655, 0x3DDB7CDFE0000000
  %657 = fdiv fast float %649, %656
  br label %658

; <label>:658                                     ; preds = %643, %244
  %659 = phi float [ %657, %643 ], [ 1.000000e+00, %244 ]
  %660 = fmul fast float %608, %608
  %661 = fmul fast float %620, %620
  %662 = fmul fast float %610, %610
  %663 = fadd fast float %662, %660
  %664 = fadd fast float %663, %661
  %665 = call float @dx.op.unary.f32(i32 24, float %664)  ; Sqrt(value)
  %666 = fcmp fast ugt float %665, 0.000000e+00
  br i1 %666, label %667, label %682

; <label>:667                                     ; preds = %658
  %668 = fsub fast float -0.000000e+00, %610
  %669 = fdiv fast float %668, %665
  %670 = fsub fast float -0.000000e+00, %608
  %671 = fdiv fast float %670, %665
  %672 = fdiv fast float %620, %665
  %673 = fmul fast float %619, 0x3FE279A760000000
  %674 = fmul fast float %671, %608
  %675 = fmul fast float %672, %620
  %676 = fmul fast float %669, %610
  %677 = fadd fast float %674, %676
  %678 = fsub fast float %677, %675
  %679 = call float @dx.op.unary.f32(i32 6, float %678)  ; FAbs(value)
  %680 = fadd fast float %679, 0x3DDB7CDFE0000000
  %681 = fdiv fast float %673, %680
  br label %682

; <label>:682                                     ; preds = %667, %658
  %683 = phi float [ %681, %667 ], [ 1.000000e+00, %658 ]
  %684 = call float @dx.op.binary.f32(i32 36, float %683, float %659)  ; FMin(a,b)
  %685 = fmul fast float %591, %591
  %686 = fmul fast float %605, %605
  %687 = fmul fast float %593, %593
  %688 = fadd fast float %687, %685
  %689 = fadd fast float %688, %686
  %690 = call float @dx.op.unary.f32(i32 24, float %689)  ; Sqrt(value)
  %691 = fcmp fast ugt float %690, 0.000000e+00
  br i1 %691, label %692, label %707

; <label>:692                                     ; preds = %682
  %693 = fsub fast float -0.000000e+00, %593
  %694 = fdiv fast float %693, %690
  %695 = fsub fast float -0.000000e+00, %591
  %696 = fdiv fast float %695, %690
  %697 = fdiv fast float %605, %690
  %698 = fmul fast float %604, 0x3FE279A760000000
  %699 = fmul fast float %696, %591
  %700 = fmul fast float %697, %605
  %701 = fmul fast float %694, %593
  %702 = fadd fast float %699, %701
  %703 = fsub fast float %702, %700
  %704 = call float @dx.op.unary.f32(i32 6, float %703)  ; FAbs(value)
  %705 = fadd fast float %704, 0x3DDB7CDFE0000000
  %706 = fdiv fast float %698, %705
  br label %707

; <label>:707                                     ; preds = %692, %682
  %708 = phi float [ %706, %692 ], [ 1.000000e+00, %682 ]
  %709 = call float @dx.op.binary.f32(i32 36, float %708, float %684)  ; FMin(a,b)
  %710 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %711 = fcmp fast olt float %710, 1.000000e+00
  br i1 %711, label %712, label %722

; <label>:712                                     ; preds = %707
  %713 = fmul fast float %710, %591
  %714 = fmul fast float %710, %605
  %715 = fmul fast float %710, %593
  %716 = fmul fast float %710, %608
  %717 = fmul fast float %710, %620
  %718 = fmul fast float %710, %610
  %719 = fmul fast float %710, %623
  %720 = fmul fast float %710, %635
  %721 = fmul fast float %710, %625
  br label %722

; <label>:722                                     ; preds = %712, %707
  %723 = phi float [ %719, %712 ], [ %623, %707 ]
  %724 = phi float [ %720, %712 ], [ %635, %707 ]
  %725 = phi float [ %721, %712 ], [ %625, %707 ]
  %726 = phi float [ %716, %712 ], [ %608, %707 ]
  %727 = phi float [ %717, %712 ], [ %620, %707 ]
  %728 = phi float [ %718, %712 ], [ %610, %707 ]
  %729 = phi float [ %713, %712 ], [ %591, %707 ]
  %730 = phi float [ %714, %712 ], [ %605, %707 ]
  %731 = phi float [ %715, %712 ], [ %593, %707 ]
  %732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %604)  ; FMax(a,b)
  %733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %619)  ; FMax(a,b)
  %734 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %634)  ; FMax(a,b)
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = fcmp fast ogt float %736, 0.000000e+00
  %738 = fcmp fast oge float %392, 0.000000e+00
  %739 = and i1 %738, %737
  %740 = fcmp fast ole float %392, 1.000000e+00
  %741 = and i1 %740, %739
  %742 = fcmp fast oge float %393, 0.000000e+00
  %743 = and i1 %742, %741
  %744 = fcmp fast ole float %393, 1.000000e+00
  %745 = and i1 %744, %743
  br i1 %745, label %746, label %891, !dx.controlflow.hints !84

; <label>:746                                     ; preds = %722
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %750 = fmul fast float %748, %392
  %751 = fmul fast float %749, %393
  %752 = call float @dx.op.unary.f32(i32 27, float %750)  ; Round_ni(value)
  %753 = call float @dx.op.unary.f32(i32 27, float %751)  ; Round_ni(value)
  %754 = fptosi float %752 to i32
  %755 = fptosi float %753 to i32
  %756 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %29, i32 0, i32 %754, i32 %755, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 65535
  %759 = lshr i32 %757, 16
  %760 = icmp eq i32 %758, 65535
  br i1 %760, label %797, label %761

; <label>:761                                     ; preds = %746
  %762 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %763 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %764 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %765 = fmul fast float %763, %392
  %766 = fmul fast float %764, %393
  %767 = fmul fast float %765, 1.250000e-01
  %768 = fmul fast float %766, 1.250000e-01
  %769 = call float @dx.op.unary.f32(i32 27, float %767)  ; Round_ni(value)
  %770 = call float @dx.op.unary.f32(i32 27, float %768)  ; Round_ni(value)
  %771 = fmul fast float %769, 8.000000e+00
  %772 = fmul fast float %770, 8.000000e+00
  %773 = and i32 %757, 255
  %774 = lshr i32 %757, 8
  %775 = and i32 %774, 255
  %776 = mul nuw nsw i32 %773, 9
  %777 = uitofp i32 %776 to float
  %778 = mul nuw nsw i32 %775, 9
  %779 = uitofp i32 %778 to float
  %780 = fadd fast float %777, 5.000000e-01
  %781 = fadd fast float %780, %765
  %782 = fsub fast float %781, %771
  %783 = fadd fast float %779, 5.000000e-01
  %784 = fadd fast float %783, %766
  %785 = fsub fast float %784, %772
  %786 = fdiv fast float %782, %736
  %787 = fdiv fast float %785, %762
  %788 = fmul fast float %420, 4.375000e-01
  %789 = fadd fast float %788, 3.125000e-02
  %790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %786, float %787, float %789, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = extractvalue %dx.types.ResRet.f32 %790, 2
  %794 = fadd fast float %791, %732
  %795 = fadd fast float %792, %733
  %796 = fadd fast float %793, %734
  br label %797

; <label>:797                                     ; preds = %761, %746
  %798 = phi float [ %796, %761 ], [ %734, %746 ]
  %799 = phi float [ %795, %761 ], [ %733, %746 ]
  %800 = phi float [ %794, %761 ], [ %732, %746 ]
  %801 = icmp eq i32 %759, 65535
  br i1 %801, label %891, label %802

; <label>:802                                     ; preds = %797
  %803 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %804 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %806 = fmul fast float %804, %392
  %807 = fmul fast float %805, %393
  %808 = fmul fast float %806, 1.250000e-01
  %809 = fmul fast float %807, 1.250000e-01
  %810 = call float @dx.op.unary.f32(i32 27, float %808)  ; Round_ni(value)
  %811 = call float @dx.op.unary.f32(i32 27, float %809)  ; Round_ni(value)
  %812 = fmul fast float %810, 8.000000e+00
  %813 = fmul fast float %811, 8.000000e+00
  %814 = fsub fast float %806, %812
  %815 = fsub fast float %807, %813
  %816 = fadd fast float %814, 5.000000e-01
  %817 = fadd fast float %815, 5.000000e-01
  %818 = and i32 %759, 255
  %819 = lshr i32 %757, 24
  %820 = mul nuw nsw i32 %818, 9
  %821 = uitofp i32 %820 to float
  %822 = mul nuw nsw i32 %819, 9
  %823 = uitofp i32 %822 to float
  %824 = fadd fast float %816, %821
  %825 = fadd fast float %817, %823
  %826 = fdiv fast float %824, %736
  %827 = fdiv fast float %825, %803
  %828 = fmul fast float %420, 4.375000e-01
  %829 = fadd fast float %828, 3.125000e-02
  %830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %826, float %827, float %829, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = fadd fast float %828, 5.312500e-01
  %835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %826, float %827, float %834, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = extractvalue %dx.types.ResRet.f32 %835, 1
  %838 = extractvalue %dx.types.ResRet.f32 %835, 2
  %839 = fmul fast float %836, 2.000000e+00
  %840 = fmul fast float %837, 2.000000e+00
  %841 = fmul fast float %838, 2.000000e+00
  %842 = fadd fast float %839, -1.000000e+00
  %843 = fadd fast float %840, -1.000000e+00
  %844 = fadd fast float %841, -1.000000e+00
  %845 = fmul fast float %842, %842
  %846 = fmul fast float %843, %843
  %847 = fadd fast float %845, %846
  %848 = fmul fast float %844, %844
  %849 = fadd fast float %847, %848
  %850 = call float @dx.op.unary.f32(i32 24, float %849)  ; Sqrt(value)
  %851 = fcmp fast ogt float %850, 0.000000e+00
  br i1 %851, label %852, label %856

; <label>:852                                     ; preds = %802
  %853 = fdiv fast float %842, %850
  %854 = fdiv fast float %843, %850
  %855 = fdiv fast float %844, %850
  br label %856

; <label>:856                                     ; preds = %852, %802
  %857 = phi float [ %853, %852 ], [ 0.000000e+00, %802 ]
  %858 = phi float [ %854, %852 ], [ 0.000000e+00, %802 ]
  %859 = phi float [ %855, %852 ], [ 0.000000e+00, %802 ]
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %863 = fsub fast float %377, %861
  %864 = fsub fast float %378, %862
  %865 = fmul fast float %863, %863
  %866 = fmul fast float %864, %864
  %867 = fadd fast float %865, %866
  %868 = call float @dx.op.unary.f32(i32 24, float %867)  ; Sqrt(value)
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %871 = extractvalue %dx.types.CBufRet.f32 %869, 1
  %872 = fsub fast float %868, %870
  %873 = fdiv fast float %872, %871
  %874 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  %875 = fmul fast float %874, 2.000000e+00
  %876 = fsub fast float 3.000000e+00, %875
  %877 = fmul fast float %874, %874
  %878 = fmul fast float %877, %876
  %879 = call float @dx.op.dot3.f32(i32 55, float %857, float %858, float %859, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %879)  ; FMax(a,b)
  %881 = fmul fast float %880, 0x400C5BF8A0000000
  %882 = fmul fast float %878, %831
  %883 = fmul fast float %882, %881
  %884 = fadd fast float %883, %800
  %885 = fmul fast float %878, %832
  %886 = fmul fast float %885, %881
  %887 = fadd fast float %886, %799
  %888 = fmul fast float %878, %833
  %889 = fmul fast float %888, %881
  %890 = fadd fast float %889, %798
  br label %891

; <label>:891                                     ; preds = %856, %797, %722
  %892 = phi float [ %890, %856 ], [ %798, %797 ], [ %734, %722 ]
  %893 = phi float [ %887, %856 ], [ %799, %797 ], [ %733, %722 ]
  %894 = phi float [ %884, %856 ], [ %800, %797 ], [ %732, %722 ]
  %895 = fcmp fast ogt float %379, %416
  %896 = and i1 %738, %895
  %897 = and i1 %740, %896
  %898 = and i1 %742, %897
  %899 = and i1 %744, %898
  br i1 %899, label %900, label %957, !dx.controlflow.hints !85

; <label>:900                                     ; preds = %891
  %901 = fmul fast float %418, 0x3FC24924A0000000
  %902 = fsub fast float %379, %416
  %903 = fdiv fast float %902, %901
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %910 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %911 = fsub fast float %906, %894
  %912 = fsub fast float %908, %729
  %913 = fsub fast float %909, %730
  %914 = fsub fast float %910, %731
  %915 = fmul fast float %911, %904
  %916 = fmul fast float %912, %904
  %917 = fmul fast float %913, %904
  %918 = fmul fast float %914, %904
  %919 = fadd fast float %915, %894
  %920 = fadd fast float %916, %729
  %921 = fadd fast float %917, %730
  %922 = fadd fast float %918, %731
  %923 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %926 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %927 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %928 = fsub fast float %923, %893
  %929 = fsub fast float %925, %726
  %930 = fsub fast float %926, %727
  %931 = fsub fast float %927, %728
  %932 = fmul fast float %928, %904
  %933 = fmul fast float %929, %904
  %934 = fmul fast float %930, %904
  %935 = fmul fast float %931, %904
  %936 = fadd fast float %932, %893
  %937 = fadd fast float %933, %726
  %938 = fadd fast float %934, %727
  %939 = fadd fast float %935, %728
  %940 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %945 = fsub fast float %940, %892
  %946 = fsub fast float %942, %723
  %947 = fsub fast float %943, %724
  %948 = fsub fast float %944, %725
  %949 = fmul fast float %945, %904
  %950 = fmul fast float %946, %904
  %951 = fmul fast float %947, %904
  %952 = fmul fast float %948, %904
  %953 = fadd fast float %949, %892
  %954 = fadd fast float %950, %723
  %955 = fadd fast float %951, %724
  %956 = fadd fast float %952, %725
  br label %957

; <label>:957                                     ; preds = %900, %891
  %958 = phi float [ %953, %900 ], [ %892, %891 ]
  %959 = phi float [ %954, %900 ], [ %723, %891 ]
  %960 = phi float [ %955, %900 ], [ %724, %891 ]
  %961 = phi float [ %956, %900 ], [ %725, %891 ]
  %962 = phi float [ %936, %900 ], [ %893, %891 ]
  %963 = phi float [ %937, %900 ], [ %726, %891 ]
  %964 = phi float [ %938, %900 ], [ %727, %891 ]
  %965 = phi float [ %939, %900 ], [ %728, %891 ]
  %966 = phi float [ %919, %900 ], [ %894, %891 ]
  %967 = phi float [ %920, %900 ], [ %729, %891 ]
  %968 = phi float [ %921, %900 ], [ %730, %891 ]
  %969 = phi float [ %922, %900 ], [ %731, %891 ]
  %970 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %971 = fmul fast float %970, %966
  %972 = fmul fast float %970, %962
  %973 = fmul fast float %970, %958
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 3
  %976 = fmul fast float %971, %975
  %977 = fmul fast float %972, %975
  %978 = fmul fast float %973, %975
  %979 = call float @dx.op.dot3.f32(i32 55, float %976, float %977, float %978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %980 = fmul fast float %979, 0x3FD20DD760000000
  %981 = fmul fast float %967, 1.500000e+00
  %982 = fmul fast float %981, %970
  %983 = fmul fast float %982, %975
  %984 = fmul fast float %968, 1.500000e+00
  %985 = fmul fast float %984, %970
  %986 = fmul fast float %985, %975
  %987 = fmul fast float %969, 1.500000e+00
  %988 = fmul fast float %987, %970
  %989 = fmul fast float %988, %975
  %990 = fmul fast float %963, 1.500000e+00
  %991 = fmul fast float %990, %970
  %992 = fmul fast float %991, %975
  %993 = fmul fast float %964, 1.500000e+00
  %994 = fmul fast float %993, %970
  %995 = fmul fast float %994, %975
  %996 = fmul fast float %965, 1.500000e+00
  %997 = fmul fast float %996, %970
  %998 = fmul fast float %997, %975
  %999 = fmul fast float %959, 1.500000e+00
  %1000 = fmul fast float %999, %970
  %1001 = fmul fast float %1000, %975
  %1002 = fmul fast float %960, 1.500000e+00
  %1003 = fmul fast float %1002, %970
  %1004 = fmul fast float %1003, %975
  %1005 = fmul fast float %961, 1.500000e+00
  %1006 = fmul fast float %1005, %970
  %1007 = fmul fast float %1006, %975
  %1008 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %976)  ; FMax(a,b)
  %1009 = call float @dx.op.dot3.f32(i32 55, float %983, float %986, float %989, float %983, float %986, float %989)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = fcmp fast oeq float %1009, 0.000000e+00
  %1011 = fcmp fast oeq float %1008, 0.000000e+00
  %1012 = or i1 %1011, %1010
  br i1 %1012, label %1042, label %1013

; <label>:1013                                    ; preds = %957
  %1014 = fsub fast float -0.000000e+00, %989
  %1015 = fsub fast float -0.000000e+00, %983
  %1016 = call float @dx.op.unary.f32(i32 24, float %1009)  ; Sqrt(value)
  %1017 = fdiv fast float %1016, %1008
  %1018 = fcmp fast ogt float %1017, 0x3FFB6F8900000000
  %1019 = select i1 %1018, float 0x3FFB6F8900000000, float %1017
  %1020 = fmul fast float %1019, 0x3FE8A23460000000
  %1021 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1022 = call float @dx.op.binary.f32(i32 35, float %1019, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1023 = fmul fast float %1021, %1008
  %1024 = fmul fast float %1022, 0x3FF279A740000000
  %1025 = fadd fast float %1024, -1.000000e+00
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1015, float %986, float %1014, float %1015, float %986)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = call float @dx.op.unary.f32(i32 25, float %1026)  ; Rsqrt(value)
  %1028 = fmul fast float %1027, %1014
  %1029 = fmul fast float %1027, %1015
  %1030 = fmul fast float %1027, %986
  %1031 = fmul fast float %1025, %1025
  %1032 = fsub fast float 1.000000e+00, %1031
  %1033 = fmul fast float %1022, 0x40005F8BE0000000
  %1034 = fsub fast float 0x400C5BF8A0000000, %1033
  %1035 = fdiv fast float %1023, %1034
  %1036 = fmul fast float %1035, 0x3FEE31C3C0000000
  %1037 = fmul fast float %1036, %1032
  %1038 = fmul fast float %1022, 0x3FDACB7480000000
  %1039 = fadd fast float %1038, 0xBFD7347680000000
  %1040 = fmul fast float %1039, %1035
  %1041 = fmul fast float %1040, %1032
  br label %1042

; <label>:1042                                    ; preds = %1013, %957
  %1043 = phi float [ %1028, %1013 ], [ 0.000000e+00, %957 ]
  %1044 = phi float [ %1029, %1013 ], [ 0.000000e+00, %957 ]
  %1045 = phi float [ %1030, %1013 ], [ 0.000000e+00, %957 ]
  %1046 = phi float [ %1037, %1013 ], [ 0.000000e+00, %957 ]
  %1047 = phi float [ %1041, %1013 ], [ 0.000000e+00, %957 ]
  %1048 = call float @dx.op.dot3.f32(i32 55, float %1043, float %1044, float %1045, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = fmul fast float %1048, %1048
  %1050 = fmul fast float %1049, 0x3FEE471020000000
  %1051 = fadd fast float %1050, 0xBFD42F6020000000
  %1052 = fmul fast float %1008, 0x3FD20DD760000000
  %1053 = fmul fast float %1051, %1047
  %1054 = fmul fast float %1046, 0x3FDF454380000000
  %1055 = fmul fast float %1054, %1048
  %1056 = fadd fast float %1055, %1052
  %1057 = fadd fast float %1056, %1053
  %1058 = call float @dx.op.dot3.f32(i32 55, float %1043, float %1044, float %1045, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %1059 = fmul fast float %1058, 0x3FDF454380000000
  %1060 = fmul fast float %1058, %1058
  %1061 = fmul fast float %1060, 0x3FEE471020000000
  %1062 = fadd fast float %1061, 0xBFD42F6020000000
  %1063 = call float @dx.op.dot3.f32(i32 55, float %1008, float %1046, float %1047, float 0x3FD20DD760000000, float %1059, float %1062)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %977)  ; FMax(a,b)
  %1065 = call float @dx.op.dot3.f32(i32 55, float %992, float %995, float %998, float %992, float %995, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1066 = fcmp fast oeq float %1065, 0.000000e+00
  %1067 = fcmp fast oeq float %1064, 0.000000e+00
  %1068 = or i1 %1067, %1066
  br i1 %1068, label %1098, label %1069

; <label>:1069                                    ; preds = %1042
  %1070 = fsub fast float -0.000000e+00, %998
  %1071 = fsub fast float -0.000000e+00, %992
  %1072 = call float @dx.op.unary.f32(i32 24, float %1065)  ; Sqrt(value)
  %1073 = fdiv fast float %1072, %1064
  %1074 = fcmp fast ogt float %1073, 0x3FFB6F8900000000
  %1075 = select i1 %1074, float 0x3FFB6F8900000000, float %1073
  %1076 = fmul fast float %1075, 0x3FE8A23460000000
  %1077 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1078 = call float @dx.op.binary.f32(i32 35, float %1075, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1079 = fmul fast float %1077, %1064
  %1080 = fmul fast float %1078, 0x3FF279A740000000
  %1081 = fadd fast float %1080, -1.000000e+00
  %1082 = call float @dx.op.dot3.f32(i32 55, float %1070, float %1071, float %995, float %1070, float %1071, float %995)  ; Dot3(ax,ay,az,bx,by,bz)
  %1083 = call float @dx.op.unary.f32(i32 25, float %1082)  ; Rsqrt(value)
  %1084 = fmul fast float %1083, %1070
  %1085 = fmul fast float %1083, %1071
  %1086 = fmul fast float %1083, %995
  %1087 = fmul fast float %1081, %1081
  %1088 = fsub fast float 1.000000e+00, %1087
  %1089 = fmul fast float %1078, 0x40005F8BE0000000
  %1090 = fsub fast float 0x400C5BF8A0000000, %1089
  %1091 = fdiv fast float %1079, %1090
  %1092 = fmul fast float %1091, 0x3FEE31C3C0000000
  %1093 = fmul fast float %1092, %1088
  %1094 = fmul fast float %1078, 0x3FDACB7480000000
  %1095 = fadd fast float %1094, 0xBFD7347680000000
  %1096 = fmul fast float %1095, %1091
  %1097 = fmul fast float %1096, %1088
  br label %1098

; <label>:1098                                    ; preds = %1069, %1042
  %1099 = phi float [ %1084, %1069 ], [ 0.000000e+00, %1042 ]
  %1100 = phi float [ %1085, %1069 ], [ 0.000000e+00, %1042 ]
  %1101 = phi float [ %1086, %1069 ], [ 0.000000e+00, %1042 ]
  %1102 = phi float [ %1093, %1069 ], [ 0.000000e+00, %1042 ]
  %1103 = phi float [ %1097, %1069 ], [ 0.000000e+00, %1042 ]
  %1104 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1101, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = fmul fast float %1104, %1104
  %1106 = fmul fast float %1105, 0x3FEE471020000000
  %1107 = fadd fast float %1106, 0xBFD42F6020000000
  %1108 = fmul fast float %1064, 0x3FD20DD760000000
  %1109 = fmul fast float %1107, %1103
  %1110 = fmul fast float %1102, 0x3FDF454380000000
  %1111 = fmul fast float %1110, %1104
  %1112 = fadd fast float %1111, %1108
  %1113 = fadd fast float %1112, %1109
  %1114 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1101, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %1115 = fmul fast float %1114, 0x3FDF454380000000
  %1116 = fmul fast float %1114, %1114
  %1117 = fmul fast float %1116, 0x3FEE471020000000
  %1118 = fadd fast float %1117, 0xBFD42F6020000000
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1064, float %1102, float %1103, float 0x3FD20DD760000000, float %1115, float %1118)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %978)  ; FMax(a,b)
  %1121 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1004, float %1007, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = fcmp fast oeq float %1121, 0.000000e+00
  %1123 = fcmp fast oeq float %1120, 0.000000e+00
  %1124 = or i1 %1123, %1122
  br i1 %1124, label %1154, label %1125

; <label>:1125                                    ; preds = %1098
  %1126 = fsub fast float -0.000000e+00, %1007
  %1127 = fsub fast float -0.000000e+00, %1001
  %1128 = call float @dx.op.unary.f32(i32 24, float %1121)  ; Sqrt(value)
  %1129 = fdiv fast float %1128, %1120
  %1130 = fcmp fast ogt float %1129, 0x3FFB6F8900000000
  %1131 = select i1 %1130, float 0x3FFB6F8900000000, float %1129
  %1132 = fmul fast float %1131, 0x3FE8A23460000000
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = call float @dx.op.binary.f32(i32 35, float %1131, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1135 = fmul fast float %1133, %1120
  %1136 = fmul fast float %1134, 0x3FF279A740000000
  %1137 = fadd fast float %1136, -1.000000e+00
  %1138 = call float @dx.op.dot3.f32(i32 55, float %1126, float %1127, float %1004, float %1126, float %1127, float %1004)  ; Dot3(ax,ay,az,bx,by,bz)
  %1139 = call float @dx.op.unary.f32(i32 25, float %1138)  ; Rsqrt(value)
  %1140 = fmul fast float %1139, %1126
  %1141 = fmul fast float %1139, %1127
  %1142 = fmul fast float %1139, %1004
  %1143 = fmul fast float %1137, %1137
  %1144 = fsub fast float 1.000000e+00, %1143
  %1145 = fmul fast float %1134, 0x40005F8BE0000000
  %1146 = fsub fast float 0x400C5BF8A0000000, %1145
  %1147 = fdiv fast float %1135, %1146
  %1148 = fmul fast float %1147, 0x3FEE31C3C0000000
  %1149 = fmul fast float %1148, %1144
  %1150 = fmul fast float %1134, 0x3FDACB7480000000
  %1151 = fadd fast float %1150, 0xBFD7347680000000
  %1152 = fmul fast float %1151, %1147
  %1153 = fmul fast float %1152, %1144
  br label %1154

; <label>:1154                                    ; preds = %1125, %1098
  %1155 = phi float [ %1140, %1125 ], [ 0.000000e+00, %1098 ]
  %1156 = phi float [ %1141, %1125 ], [ 0.000000e+00, %1098 ]
  %1157 = phi float [ %1142, %1125 ], [ 0.000000e+00, %1098 ]
  %1158 = phi float [ %1149, %1125 ], [ 0.000000e+00, %1098 ]
  %1159 = phi float [ %1153, %1125 ], [ 0.000000e+00, %1098 ]
  %1160 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %1161 = fmul fast float %1160, %1160
  %1162 = fmul fast float %1161, 0x3FEE471020000000
  %1163 = fadd fast float %1162, 0xBFD42F6020000000
  %1164 = fmul fast float %1120, 0x3FD20DD760000000
  %1165 = fmul fast float %1163, %1159
  %1166 = fmul fast float %1158, 0x3FDF454380000000
  %1167 = fmul fast float %1166, %1160
  %1168 = fadd fast float %1167, %1164
  %1169 = fadd fast float %1168, %1165
  %1170 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = fmul fast float %1170, 0x3FDF454380000000
  %1172 = fmul fast float %1170, %1170
  %1173 = fmul fast float %1172, 0x3FEE471020000000
  %1174 = fadd fast float %1173, 0xBFD42F6020000000
  %1175 = call float @dx.op.dot3.f32(i32 55, float %1120, float %1158, float %1159, float 0x3FD20DD760000000, float %1171, float %1174)  ; Dot3(ax,ay,az,bx,by,bz)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1057, float 0.000000e+00)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1113, float 0.000000e+00)  ; FMax(a,b)
  %1178 = call float @dx.op.binary.f32(i32 35, float %1169, float 0.000000e+00)  ; FMax(a,b)
  %1179 = call float @dx.op.binary.f32(i32 35, float %1063, float 0.000000e+00)  ; FMax(a,b)
  %1180 = call float @dx.op.binary.f32(i32 35, float %1119, float 0.000000e+00)  ; FMax(a,b)
  %1181 = call float @dx.op.binary.f32(i32 35, float %1175, float 0.000000e+00)  ; FMax(a,b)
  %1182 = fmul fast float %1176, 0x3FEE623840000000
  %1183 = fmul fast float %1177, 0x3FEE623840000000
  %1184 = fmul fast float %1178, 0x3FEE623840000000
  %1185 = fmul fast float %1179, 0x3FEE623840000000
  %1186 = fmul fast float %1180, 0x3FEE623840000000
  %1187 = fmul fast float %1181, 0x3FEE623840000000
  %1188 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1183, float %1184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = select i1 %139, float 0.000000e+00, float %1182
  %1190 = select i1 %139, float %1188, float %1183
  %1191 = select i1 %139, float 0.000000e+00, float %1184
  %1192 = call float @dx.op.dot3.f32(i32 55, float %1185, float %1186, float %1187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1193 = select i1 %139, float 0.000000e+00, float %1185
  %1194 = select i1 %139, float %1192, float %1186
  %1195 = select i1 %139, float 0.000000e+00, float %1187
  %1196 = fmul fast float %357, 9.843750e-01
  %1197 = fmul fast float %257, 9.843750e-01
  %1198 = fadd fast float %1196, 7.812500e-03
  %1199 = fadd fast float %1197, 7.812500e-03
  %1200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %1198, float %1199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 3
  %1203 = fmul fast float %1201, %335
  %1204 = fmul fast float %1201, %336
  %1205 = fmul fast float %1201, %355
  %1206 = fadd fast float %1203, %1202
  %1207 = fadd fast float %1204, %1202
  %1208 = fadd fast float %1205, %1202
  %1209 = call float @dx.op.binary.f32(i32 35, float %1207, float %1208)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 35, float %1206, float %1209)  ; FMax(a,b)
  %1211 = fsub fast float 1.000000e+00, %1210
  %1212 = fmul fast float %1210, %257
  %1213 = fadd fast float %1212, %257
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1216 = extractvalue %dx.types.CBufRet.f32 %1214, 3
  %1217 = fmul fast float %1213, %1215
  %1218 = fadd fast float %1217, %1216
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = fsub fast float 1.000000e+00, %372
  %1221 = fadd fast float %1220, %1219
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = fcmp fast olt float %1222, 1.000000e+00
  br i1 %1223, label %1224, label %1699

; <label>:1224                                    ; preds = %1154
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 2
  %1227 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1228 = fmul fast float %1226, %65
  %1229 = fmul fast float %1227, %66
  %1230 = fptoui float %1228 to i32
  %1231 = fptoui float %1229 to i32
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.CBufRet.f32 %1232, 2
  %1235 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1236 = fadd fast float %280, -4.000000e+00
  %1237 = call float @dx.op.binary.f32(i32 35, float %1236, float 0.000000e+00)  ; FMax(a,b)
  %1238 = fadd fast float %1237, %1233
  %1239 = fmul fast float %1238, %1234
  %1240 = call float @dx.op.unary.f32(i32 23, float %1239)  ; Log(value)
  %1241 = fmul fast float %1240, %1235
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  %1244 = fmul fast float %1241, %1243
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.i32 %1246, 1
  %1248 = add i32 %1247, -1
  %1249 = uitofp i32 %1247 to float
  %1250 = fmul fast float %1249, %1245
  %1251 = fptoui float %1250 to i32
  %1252 = call i32 @dx.op.binary.i32(i32 40, i32 %1251, i32 %1248)  ; UMin(a,b)
  %1253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.i32 %1253, 2
  %1255 = extractvalue %dx.types.CBufRet.i32 %1253, 3
  %1256 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1231, i32 %1254, i32 %1230)  ; UMad(a,b,c)
  %1257 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1252, i32 %1255, i32 %1256)  ; UMad(a,b,c)
  %1258 = call float @dx.op.binary.f32(i32 35, float %280, float 0.000000e+00)  ; FMax(a,b)
  %1259 = fptoui float %1258 to i32
  %1260 = lshr i32 %1259, 5
  %1261 = call i32 @dx.op.binary.i32(i32 40, i32 %1260, i32 8191)  ; UMin(a,b)
  %1262 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %1263 = fcmp fast ogt float %1262, 0.000000e+00
  %1264 = fcmp fast ogt float %365, 0.000000e+00
  %1265 = and i1 %1264, %1263
  br i1 %1265, label %1266, label %1295

; <label>:1266                                    ; preds = %1224
  %1267 = call float @dx.op.dot3.f32(i32 55, float %363, float %364, float %365, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1268 = call float @dx.op.binary.f32(i32 35, float %1267, float -1.000000e+00)  ; FMax(a,b)
  %1269 = call float @dx.op.binary.f32(i32 36, float %1268, float 1.000000e+00)  ; FMin(a,b)
  %1270 = fmul fast float %1269, %1269
  %1271 = fsub fast float 1.000000e+00, %1270
  %1272 = fmul fast float %1271, 0x3FFC6E2300000000
  %1273 = fsub fast float 1.000000e+00, %1272
  %1274 = fcmp fast ogt float %1273, 0.000000e+00
  %1275 = call float @dx.op.unary.f32(i32 24, float %1273)  ; Sqrt(value)
  %1276 = fsub fast float 1.000000e+00, %1275
  %1277 = call float @dx.op.unary.f32(i32 23, float %1276)  ; Log(value)
  %1278 = fmul fast float %1277, 5.000000e+00
  %1279 = call float @dx.op.unary.f32(i32 21, float %1278)  ; Exp(value)
  %1280 = fmul fast float %1279, 0x3FEF591A60000000
  %1281 = fadd fast float %1280, 0x3F94DCB540000000
  %1282 = select i1 %1274, float %1281, float 1.000000e+00
  %1283 = fcmp fast oge float %1282, 1.000000e+00
  %1284 = fmul fast float %1267, 2.000000e+00
  %1285 = fadd fast float %1284, %365
  %1286 = select i1 %1283, float %1285, float %365
  %1287 = fsub fast float %1286, %365
  %1288 = fmul fast float %1287, %1262
  %1289 = fadd fast float %1288, %365
  %1290 = call float @dx.op.dot3.f32(i32 55, float %363, float %364, float %1289, float %363, float %364, float %1289)  ; Dot3(ax,ay,az,bx,by,bz)
  %1291 = call float @dx.op.unary.f32(i32 25, float %1290)  ; Rsqrt(value)
  %1292 = fmul fast float %1291, %363
  %1293 = fmul fast float %1291, %364
  %1294 = fmul fast float %1289, %1291
  br label %1295

; <label>:1295                                    ; preds = %1266, %1224
  %1296 = phi float [ %1292, %1266 ], [ %363, %1224 ]
  %1297 = phi float [ %1293, %1266 ], [ %364, %1224 ]
  %1298 = phi float [ %1294, %1266 ], [ %365, %1224 ]
  %1299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.i32 %1299, 2
  %1301 = add nsw i32 %1300, -1
  %1302 = call i32 @dx.op.binary.i32(i32 37, i32 %1301, i32 0)  ; IMax(a,b)
  %1303 = shl i32 %1261, 2
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = lshr i32 %1305, 16
  %1307 = and i32 %1305, 65535
  %1308 = lshr i32 %1305, 21
  %1309 = lshr i32 %1307, 5
  %1310 = call i32 @dx.op.binary.i32(i32 40, i32 %1309, i32 %1302)  ; UMin(a,b)
  %1311 = icmp ugt i32 %1308, %1310
  br i1 %1311, label %1675, label %1312

; <label>:1312                                    ; preds = %1295
  br label %1313

; <label>:1313                                    ; preds = %1667, %1312
  %1314 = phi float [ %1668, %1667 ], [ 0.000000e+00, %1312 ]
  %1315 = phi float [ %1669, %1667 ], [ 0.000000e+00, %1312 ]
  %1316 = phi float [ %1670, %1667 ], [ 0.000000e+00, %1312 ]
  %1317 = phi float [ %1671, %1667 ], [ 1.000000e+00, %1312 ]
  %1318 = phi i32 [ %1672, %1667 ], [ %1308, %1312 ]
  %1319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.i32 %1319, 2
  %1321 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1257, i32 %1320, i32 %1318)  ; UMad(a,b,c)
  %1322 = shl i32 %1321, 2
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = shl i32 %1318, 5
  %1326 = sub nsw i32 %1306, %1325
  %1327 = call i32 @dx.op.binary.i32(i32 37, i32 %1326, i32 0)  ; IMax(a,b)
  %1328 = call i32 @dx.op.binary.i32(i32 38, i32 %1327, i32 31)  ; IMin(a,b)
  %1329 = sub nsw i32 1, %1306
  %1330 = add nsw i32 %1329, %1307
  %1331 = call i32 @dx.op.binary.i32(i32 37, i32 %1330, i32 0)  ; IMax(a,b)
  %1332 = call i32 @dx.op.binary.i32(i32 38, i32 %1331, i32 32)  ; IMin(a,b)
  %1333 = and i32 %1332, 31
  %1334 = shl i32 -1, %1333
  %1335 = xor i32 %1334, -1
  %1336 = and i32 %1328, 31
  %1337 = shl i32 %1335, %1336
  %1338 = icmp eq i32 %1332, 32
  %1339 = select i1 %1338, i32 -1, i32 %1337
  %1340 = and i32 %1339, %1324
  %1341 = icmp eq i32 %1340, 0
  br i1 %1341, label %1667, label %1342

; <label>:1342                                    ; preds = %1313
  br label %1343

; <label>:1343                                    ; preds = %1450, %1342
  %1344 = phi float [ %1451, %1450 ], [ %1314, %1342 ]
  %1345 = phi float [ %1452, %1450 ], [ %1315, %1342 ]
  %1346 = phi float [ %1453, %1450 ], [ %1316, %1342 ]
  %1347 = phi float [ %1454, %1450 ], [ %1317, %1342 ]
  %1348 = phi i32 [ %1353, %1450 ], [ %1340, %1342 ]
  %1349 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1348)  ; FirstbitLo(value)
  %1350 = add i32 %1349, %1325
  %1351 = and i32 %1349, 31
  %1352 = shl i32 1, %1351
  %1353 = xor i32 %1352, %1348
  %1354 = mul i32 %1350, 72
  %1355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.ResRet.f32 %1355, 2
  %1359 = add i32 %1354, 12
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = add i32 %1354, 16
  %1363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = add i32 %1354, 28
  %1368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = add i32 %1354, 32
  %1371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.ResRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.ResRet.f32 %1371, 2
  %1375 = extractvalue %dx.types.ResRet.f32 %1371, 3
  %1376 = add i32 %1354, 48
  %1377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.ResRet.f32 %1377, 1
  %1380 = add i32 %1354, 56
  %1381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = add i32 %1354, 64
  %1385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = extractvalue %dx.types.ResRet.f32 %1385, 1
  %1388 = mul i32 %1350, 60
  %1389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = extractvalue %dx.types.ResRet.f32 %1389, 1
  %1392 = extractvalue %dx.types.ResRet.f32 %1389, 2
  %1393 = add i32 %1388, 12
  %1394 = add i32 %1388, 48
  %1395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.ResRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.ResRet.f32 %1395, 2
  %1399 = and i32 %1361, 32767
  %1400 = bitcast float %1356 to i32
  %1401 = icmp eq i32 %1400, -1
  %1402 = bitcast float %1357 to i32
  %1403 = and i32 %1361, 32768
  %1404 = icmp ne i32 %1403, 0
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1409 = fsub fast float %1390, %1406
  %1410 = fsub fast float %1391, %1407
  %1411 = fsub fast float %1392, %1408
  %1412 = fsub fast float %314, %1409
  %1413 = fsub fast float %315, %1410
  %1414 = fsub fast float %316, %1411
  %1415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1415, 2
  %1419 = call float @dx.op.dot3.f32(i32 55, float %1412, float %1413, float %1414, float %1416, float %1417, float %1418)  ; Dot3(ax,ay,az,bx,by,bz)
  %1420 = add i32 %1388, 24
  %1421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.ResRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.ResRet.f32 %1421, 2
  %1425 = call float @dx.op.dot3.f32(i32 55, float %1412, float %1413, float %1414, float %1422, float %1423, float %1424)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = add i32 %1388, 36
  %1427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.ResRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.ResRet.f32 %1427, 2
  %1431 = call float @dx.op.dot3.f32(i32 55, float %1412, float %1413, float %1414, float %1428, float %1429, float %1430)  ; Dot3(ax,ay,az,bx,by,bz)
  %1432 = call float @dx.op.unary.f32(i32 6, float %1419)  ; FAbs(value)
  %1433 = call float @dx.op.unary.f32(i32 6, float %1425)  ; FAbs(value)
  %1434 = call float @dx.op.unary.f32(i32 6, float %1431)  ; FAbs(value)
  %1435 = fsub fast float %1396, %1432
  %1436 = fsub fast float %1397, %1433
  %1437 = fsub fast float %1398, %1434
  %1438 = fmul fast float %1435, %1364
  %1439 = fmul fast float %1436, %1365
  %1440 = fmul fast float %1437, %1366
  %1441 = call float @dx.op.binary.f32(i32 36, float %1439, float %1440)  ; FMin(a,b)
  %1442 = call float @dx.op.binary.f32(i32 36, float %1438, float %1441)  ; FMin(a,b)
  %1443 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1444 = call float @dx.op.binary.f32(i32 36, float %1347, float %1443)  ; FMin(a,b)
  %1445 = uitofp i1 %1404 to float
  %1446 = fadd fast float %1262, 1.000000e+00
  %1447 = fsub fast float %1446, %1445
  %1448 = fmul fast float %1444, %1447
  %1449 = fcmp fast ogt float %1448, 0.000000e+00
  br i1 %1449, label %1456, label %1450

; <label>:1450                                    ; preds = %1598, %1343
  %1451 = phi float [ %1662, %1598 ], [ %1344, %1343 ]
  %1452 = phi float [ %1663, %1598 ], [ %1345, %1343 ]
  %1453 = phi float [ %1664, %1598 ], [ %1346, %1343 ]
  %1454 = phi float [ %1665, %1598 ], [ %1347, %1343 ]
  %1455 = icmp eq i32 %1348, %1352
  br i1 %1455, label %1666, label %1343

; <label>:1456                                    ; preds = %1343
  br i1 %1401, label %1514, label %1457

; <label>:1457                                    ; preds = %1456
  %1458 = fsub fast float -0.000000e+00, %1416
  %1459 = fsub fast float -0.000000e+00, %1417
  %1460 = fsub fast float -0.000000e+00, %1418
  %1461 = call float @dx.op.dot3.f32(i32 55, float %1296, float %1297, float %1298, float %1458, float %1459, float %1460)  ; Dot3(ax,ay,az,bx,by,bz)
  %1462 = fsub fast float -0.000000e+00, %1461
  %1463 = call float @dx.op.dot3.f32(i32 55, float %1412, float %1413, float %1414, float %1458, float %1459, float %1460)  ; Dot3(ax,ay,az,bx,by,bz)
  %1464 = fadd fast float %1463, %1379
  %1465 = fadd fast float %1378, %1463
  %1466 = fsub fast float -0.000000e+00, %1465
  %1467 = fcmp ogt float %1461, -0.000000e+00
  %1468 = select i1 %1467, float %1466, float %1464
  %1469 = call float @dx.op.unary.f32(i32 6, float %1462)  ; FAbs(value)
  %1470 = fdiv fast float 1.000000e+00, %1469
  %1471 = fmul fast float %1468, %1470
  %1472 = call float @dx.op.binary.f32(i32 35, float %1471, float 0.000000e+00)  ; FMax(a,b)
  %1473 = fsub fast float -0.000000e+00, %1422
  %1474 = fsub fast float -0.000000e+00, %1423
  %1475 = fsub fast float -0.000000e+00, %1424
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1296, float %1297, float %1298, float %1473, float %1474, float %1475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = fsub fast float -0.000000e+00, %1476
  %1478 = call float @dx.op.dot3.f32(i32 55, float %1412, float %1413, float %1414, float %1473, float %1474, float %1475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1479 = fadd fast float %1478, %1383
  %1480 = fadd fast float %1382, %1478
  %1481 = fsub fast float -0.000000e+00, %1480
  %1482 = fcmp ogt float %1476, -0.000000e+00
  %1483 = select i1 %1482, float %1481, float %1479
  %1484 = call float @dx.op.unary.f32(i32 6, float %1477)  ; FAbs(value)
  %1485 = fdiv fast float 1.000000e+00, %1484
  %1486 = fmul fast float %1483, %1485
  %1487 = call float @dx.op.binary.f32(i32 35, float %1486, float 0.000000e+00)  ; FMax(a,b)
  %1488 = fsub fast float -0.000000e+00, %1428
  %1489 = fsub fast float -0.000000e+00, %1429
  %1490 = fsub fast float -0.000000e+00, %1430
  %1491 = call float @dx.op.dot3.f32(i32 55, float %1296, float %1297, float %1298, float %1488, float %1489, float %1490)  ; Dot3(ax,ay,az,bx,by,bz)
  %1492 = fsub fast float -0.000000e+00, %1491
  %1493 = call float @dx.op.dot3.f32(i32 55, float %1412, float %1413, float %1414, float %1488, float %1489, float %1490)  ; Dot3(ax,ay,az,bx,by,bz)
  %1494 = fadd fast float %1493, %1387
  %1495 = fadd fast float %1386, %1493
  %1496 = fsub fast float -0.000000e+00, %1495
  %1497 = fcmp ogt float %1491, -0.000000e+00
  %1498 = select i1 %1497, float %1496, float %1494
  %1499 = call float @dx.op.unary.f32(i32 6, float %1492)  ; FAbs(value)
  %1500 = fdiv fast float 1.000000e+00, %1499
  %1501 = fmul fast float %1498, %1500
  %1502 = call float @dx.op.binary.f32(i32 35, float %1501, float 0.000000e+00)  ; FMax(a,b)
  %1503 = call float @dx.op.binary.f32(i32 36, float %1487, float %1502)  ; FMin(a,b)
  %1504 = call float @dx.op.binary.f32(i32 36, float %1472, float %1503)  ; FMin(a,b)
  %1505 = fmul fast float %1504, %1296
  %1506 = fmul fast float %1504, %1297
  %1507 = fmul fast float %1504, %1298
  %1508 = fadd fast float %1505, %314
  %1509 = fadd fast float %1506, %315
  %1510 = fadd fast float %1507, %316
  %1511 = fsub fast float %1508, %1356
  %1512 = fsub fast float %1509, %1357
  %1513 = fsub fast float %1510, %1358
  br label %1521

; <label>:1514                                    ; preds = %1456
  %1515 = fmul fast float %1296, 8.096000e+03
  %1516 = fmul fast float %1297, 8.096000e+03
  %1517 = fmul fast float %1298, 8.096000e+03
  %1518 = fadd fast float %1515, %314
  %1519 = fadd fast float %1516, %315
  %1520 = fadd fast float %1517, %316
  br label %1521

; <label>:1521                                    ; preds = %1514, %1457
  %1522 = phi float [ %1296, %1514 ], [ %1511, %1457 ]
  %1523 = phi float [ %1297, %1514 ], [ %1512, %1457 ]
  %1524 = phi float [ %1298, %1514 ], [ %1513, %1457 ]
  %1525 = phi float [ %1518, %1514 ], [ %1508, %1457 ]
  %1526 = phi float [ %1519, %1514 ], [ %1509, %1457 ]
  %1527 = phi float [ %1520, %1514 ], [ %1510, %1457 ]
  %1528 = fcmp fast olt float %1375, 1.000000e+00
  br i1 %1528, label %1529, label %1560, !dx.controlflow.hints !86

; <label>:1529                                    ; preds = %1521
  %1530 = fmul fast float %1524, %1373
  %1531 = fmul fast float %1523, %1374
  %1532 = fsub fast float %1530, %1531
  %1533 = fmul fast float %1522, %1374
  %1534 = fmul fast float %1524, %1372
  %1535 = fsub fast float %1533, %1534
  %1536 = fmul fast float %1523, %1372
  %1537 = fmul fast float %1522, %1373
  %1538 = fsub fast float %1536, %1537
  %1539 = fmul fast float %1532, 2.000000e+00
  %1540 = fmul fast float %1535, 2.000000e+00
  %1541 = fmul fast float %1538, 2.000000e+00
  %1542 = fmul fast float %1539, %1375
  %1543 = fmul fast float %1540, %1375
  %1544 = fmul fast float %1541, %1375
  %1545 = fmul fast float %1541, %1373
  %1546 = fmul fast float %1540, %1374
  %1547 = fmul fast float %1539, %1374
  %1548 = fmul fast float %1541, %1372
  %1549 = fmul fast float %1540, %1372
  %1550 = fmul fast float %1539, %1373
  %1551 = fadd fast float %1545, %1522
  %1552 = fadd fast float %1551, %1542
  %1553 = fsub fast float %1552, %1546
  %1554 = fsub fast float %1523, %1548
  %1555 = fadd fast float %1554, %1543
  %1556 = fadd fast float %1555, %1547
  %1557 = fadd fast float %1544, %1524
  %1558 = fsub fast float %1557, %1550
  %1559 = fadd fast float %1558, %1549
  br label %1560

; <label>:1560                                    ; preds = %1529, %1521
  %1561 = phi float [ %1553, %1529 ], [ %1522, %1521 ]
  %1562 = phi float [ %1556, %1529 ], [ %1523, %1521 ]
  %1563 = phi float [ %1559, %1529 ], [ %1524, %1521 ]
  br i1 %1401, label %1595, label %1564

; <label>:1564                                    ; preds = %1560
  %1565 = fmul fast float %257, 0x400187C840000000
  %1566 = fadd fast float %1565, 0xC00EFC2120000000
  %1567 = fmul fast float %1566, %257
  %1568 = fadd fast float %1567, 0x3FE5D16340000000
  %1569 = fmul fast float %1568, %257
  %1570 = fadd fast float %1569, 1.000000e+00
  %1571 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1572 = fsub fast float %1525, %314
  %1573 = fsub fast float %1526, %315
  %1574 = fsub fast float %1527, %316
  %1575 = fsub fast float %1525, %1356
  %1576 = fsub fast float %1526, %1357
  %1577 = fsub fast float %1527, %1358
  %1578 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1573, float %1574, float %1572, float %1573, float %1574)  ; Dot3(ax,ay,az,bx,by,bz)
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1576, float %1577, float %1575, float %1576, float %1577)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = fadd fast float %1579, 0x3EE4F8B580000000
  %1581 = fdiv fast float %1578, %1580
  %1582 = bitcast float %1581 to i32
  %1583 = ashr i32 %1582, 1
  %1584 = add nsw i32 %1583, 532487669
  %1585 = bitcast i32 %1584 to float
  %1586 = fmul fast float %1585, %1571
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fmul fast float %1587, 0x4009981AE0000000
  %1589 = fsub fast float 0x40111BBD80000000, %1588
  %1590 = fmul fast float %1589, %1587
  %1591 = fadd fast float %1590, 0xC0009F6020000000
  %1592 = fmul fast float %1591, %1587
  %1593 = fadd fast float %1592, 1.000000e+00
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  br label %1598

; <label>:1595                                    ; preds = %1560
  %1596 = icmp ne i32 %1402, -1
  %1597 = zext i1 %1596 to i32
  br label %1598

; <label>:1598                                    ; preds = %1595, %1564
  %1599 = phi float [ %257, %1595 ], [ %1594, %1564 ]
  %1600 = phi i32 [ %1597, %1595 ], [ 0, %1564 ]
  %1601 = fmul float %1599, 5.000000e+00
  %1602 = fsub float 5.000000e+00, %1601
  %1603 = icmp ne i32 %1600, 0
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 3
  %1606 = fadd fast float %1605, %1602
  %1607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1606)  ; FMax(a,b)
  %1608 = call float @dx.op.unary.f32(i32 6, float %1561)  ; FAbs(value)
  %1609 = call float @dx.op.unary.f32(i32 6, float %1562)  ; FAbs(value)
  %1610 = fadd fast float %1609, %1608
  %1611 = call float @dx.op.unary.f32(i32 6, float %1563)  ; FAbs(value)
  %1612 = fadd fast float %1610, %1611
  %1613 = fcmp fast oeq float %1612, 0.000000e+00
  %1614 = fdiv fast float 1.000000e+00, %1612
  %1615 = select i1 %1613, float 1.000000e+00, float %1614
  %1616 = fmul fast float %1615, %1561
  %1617 = fmul fast float %1615, %1562
  %1618 = call float @dx.op.unary.f32(i32 6, float %1617)  ; FAbs(value)
  %1619 = call float @dx.op.unary.f32(i32 6, float %1616)  ; FAbs(value)
  %1620 = fsub fast float 1.000000e+00, %1618
  %1621 = fsub fast float 1.000000e+00, %1619
  %1622 = fcmp fast oge float %1616, 0.000000e+00
  %1623 = fcmp fast oge float %1617, 0.000000e+00
  %1624 = select i1 %1622, float 1.000000e+00, float -1.000000e+00
  %1625 = select i1 %1623, float 1.000000e+00, float -1.000000e+00
  %1626 = fcmp fast ole float %1563, 0.000000e+00
  %1627 = fmul fast float %1624, %1620
  %1628 = fmul fast float %1625, %1621
  %1629 = select i1 %1626, float %1627, float %1616
  %1630 = select i1 %1626, float %1628, float %1617
  %1631 = fmul fast float %1629, 5.000000e-01
  %1632 = fmul fast float %1630, 5.000000e-01
  %1633 = fadd fast float %1631, 5.000000e-01
  %1634 = fadd fast float %1632, 5.000000e-01
  %1635 = uitofp i32 %1399 to float
  %1636 = call float @dx.op.binary.f32(i32 36, float %1607, float 3.000000e+00)  ; FMin(a,b)
  %1637 = fadd fast float %1636, 2.000000e+00
  %1638 = call float @dx.op.unary.f32(i32 21, float %1637)  ; Exp(value)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1640 = fmul fast float %1639, %1638
  %1641 = fmul fast float %1640, 2.000000e+00
  %1642 = fsub fast float 1.000000e+00, %1641
  %1643 = fmul fast float %1633, %1642
  %1644 = fmul fast float %1634, %1642
  %1645 = fadd fast float %1643, %1640
  %1646 = fadd fast float %1644, %1640
  %1647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %1645, float %1646, float %1635, float undef, i32 0, i32 0, i32 undef, float %1607)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1648 = extractvalue %dx.types.ResRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.ResRet.f32 %1647, 1
  %1650 = extractvalue %dx.types.ResRet.f32 %1647, 2
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 3
  %1653 = fmul fast float %1652, %1369
  %1654 = call float @dx.op.binary.f32(i32 36, float %980, float %1653)  ; FMin(a,b)
  %1655 = select i1 %1603, float %1654, float %1653
  %1656 = fmul fast float %1648, %1448
  %1657 = fmul fast float %1656, %1655
  %1658 = fmul fast float %1649, %1448
  %1659 = fmul fast float %1658, %1655
  %1660 = fmul fast float %1650, %1448
  %1661 = fmul fast float %1660, %1655
  %1662 = fadd fast float %1657, %1344
  %1663 = fadd fast float %1659, %1345
  %1664 = fadd fast float %1661, %1346
  %1665 = fsub fast float %1347, %1448
  br label %1450

; <label>:1666                                    ; preds = %1450
  br label %1667

; <label>:1667                                    ; preds = %1666, %1313
  %1668 = phi float [ %1314, %1313 ], [ %1451, %1666 ]
  %1669 = phi float [ %1315, %1313 ], [ %1452, %1666 ]
  %1670 = phi float [ %1316, %1313 ], [ %1453, %1666 ]
  %1671 = phi float [ %1317, %1313 ], [ %1454, %1666 ]
  %1672 = add i32 %1318, 1
  %1673 = icmp ugt i32 %1672, %1310
  br i1 %1673, label %1674, label %1313, !llvm.loop !87

; <label>:1674                                    ; preds = %1667
  br label %1675

; <label>:1675                                    ; preds = %1674, %1295
  %1676 = phi float [ 0.000000e+00, %1295 ], [ %1668, %1674 ]
  %1677 = phi float [ 0.000000e+00, %1295 ], [ %1669, %1674 ]
  %1678 = phi float [ 0.000000e+00, %1295 ], [ %1670, %1674 ]
  %1679 = call float @dx.op.dot3.f32(i32 55, float %1676, float %1677, float %1678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1680 = select i1 %139, float 0.000000e+00, float %1676
  %1681 = select i1 %139, float %1679, float %1677
  %1682 = select i1 %139, float 0.000000e+00, float %1678
  %1683 = fcmp fast olt float %1222, 0.000000e+00
  %1684 = call float @dx.op.unary.f32(i32 6, float %1222)  ; FAbs(value)
  %1685 = fmul fast float %1684, %1193
  %1686 = fmul fast float %1684, %1194
  %1687 = fmul fast float %1684, %1195
  %1688 = select i1 %1683, float %1193, float %1685
  %1689 = select i1 %1683, float %1194, float %1686
  %1690 = select i1 %1683, float %1195, float %1687
  %1691 = fsub fast float 1.000000e+00, %1684
  %1692 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1693 = fmul fast float %1692, %1680
  %1694 = fmul fast float %1692, %1681
  %1695 = fmul fast float %1692, %1682
  %1696 = fadd fast float %1688, %1693
  %1697 = fadd fast float %1689, %1694
  %1698 = fadd fast float %1690, %1695
  br label %1699

; <label>:1699                                    ; preds = %1675, %1154
  %1700 = phi float [ %1193, %1154 ], [ %1696, %1675 ]
  %1701 = phi float [ %1194, %1154 ], [ %1697, %1675 ]
  %1702 = phi float [ %1195, %1154 ], [ %1698, %1675 ]
  %1703 = fmul fast float %1211, %1189
  %1704 = fmul fast float %1211, %1190
  %1705 = fmul fast float %1211, %1191
  %1706 = fmul fast float %1700, %1206
  %1707 = fmul fast float %1701, %1207
  %1708 = fmul fast float %1702, %1208
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 3
  %1711 = fcmp fast oeq float %1710, 0.000000e+00
  br i1 %1711, label %3484, label %1712

; <label>:1712                                    ; preds = %1699
  %1713 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1714 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1715 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.CBufRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.CBufRet.f32 %1716, 2
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 0
  %1722 = extractvalue %dx.types.CBufRet.f32 %1720, 1
  %1723 = call float @dx.op.dot3.f32(i32 55, float %1717, float %1718, float %1719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1724 = select i1 %139, float %1721, float %1717
  %1725 = select i1 %139, float %1723, float %1718
  %1726 = select i1 %139, float %1722, float %1719
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 2
  %1729 = fmul fast float %1728, %74
  %1730 = fmul fast float %1728, %76
  %1731 = fmul fast float %1728, %78
  %1732 = fadd fast float %1729, %314
  %1733 = fadd fast float %1730, %315
  %1734 = fadd fast float %1731, %316
  %1735 = fcmp fast olt float %1710, 0.000000e+00
  br i1 %1735, label %2831, label %1736

; <label>:1736                                    ; preds = %1712
  %1737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1737, 0
  %1739 = extractvalue %dx.types.CBufRet.f32 %1737, 1
  %1740 = extractvalue %dx.types.CBufRet.f32 %1737, 2
  %1741 = extractvalue %dx.types.CBufRet.f32 %1737, 3
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1746 = extractvalue %dx.types.CBufRet.f32 %1742, 3
  %1747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1747, 0
  %1749 = extractvalue %dx.types.CBufRet.f32 %1747, 1
  %1750 = extractvalue %dx.types.CBufRet.f32 %1747, 2
  %1751 = extractvalue %dx.types.CBufRet.f32 %1747, 3
  %1752 = fmul fast float %1738, %1732
  %1753 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1739, float %1752)  ; FMad(a,b,c)
  %1754 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %1740, float %1753)  ; FMad(a,b,c)
  %1755 = fadd fast float %1754, %1741
  %1756 = fmul fast float %1743, %1732
  %1757 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1744, float %1756)  ; FMad(a,b,c)
  %1758 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %1745, float %1757)  ; FMad(a,b,c)
  %1759 = fadd fast float %1758, %1746
  %1760 = fmul fast float %1748, %1732
  %1761 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1749, float %1760)  ; FMad(a,b,c)
  %1762 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %1750, float %1761)  ; FMad(a,b,c)
  %1763 = fadd fast float %1762, %1751
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.CBufRet.f32 %1764, 3
  %1768 = fmul fast float %1767, %1755
  %1769 = fmul fast float %1767, %1759
  %1770 = fadd fast float %1768, %1765
  %1771 = fadd fast float %1769, %1766
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.CBufRet.f32 %1772, 3
  %1776 = fmul fast float %1775, %1755
  %1777 = fmul fast float %1775, %1759
  %1778 = fadd fast float %1776, %1773
  %1779 = fadd fast float %1777, %1774
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 1
  %1782 = fsub fast float %1781, %1763
  %1783 = extractvalue %dx.types.CBufRet.f32 %1780, 2
  %1784 = fmul fast float %1782, %1783
  %1785 = fsub fast float 1.000000e+00, %1784
  %1786 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1772, 2
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1790 = fadd fast float %1789, %1787
  %1791 = fcmp fast ogt float %1790, 0.000000e+00
  br i1 %1791, label %1792, label %1816

; <label>:1792                                    ; preds = %1736
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1795 = extractvalue %dx.types.CBufRet.f32 %1793, 1
  %1796 = fsub fast float %1778, %1794
  %1797 = fsub fast float %1779, %1795
  %1798 = fcmp fast olt float %1796, 0.000000e+00
  %1799 = fcmp fast olt float %1797, 0.000000e+00
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.CBufRet.f32 %1800, 2
  %1804 = extractvalue %dx.types.CBufRet.f32 %1800, 3
  %1805 = select i1 %1798, float %1801, float %1803
  %1806 = select i1 %1799, float %1802, float %1804
  %1807 = fmul fast float %1805, %1796
  %1808 = fmul fast float %1806, %1797
  %1809 = call float @dx.op.unary.f32(i32 6, float %1807)  ; FAbs(value)
  %1810 = call float @dx.op.unary.f32(i32 6, float %1808)  ; FAbs(value)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  %1812 = call float @dx.op.binary.f32(i32 35, float %1809, float %1810)  ; FMax(a,b)
  %1813 = fsub fast float %1811, %1812
  %1814 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1815 = fmul fast float %1814, %1786
  br label %1816

; <label>:1816                                    ; preds = %1792, %1736
  %1817 = phi float [ %1815, %1792 ], [ 0.000000e+00, %1736 ]
  %1818 = extractvalue %dx.types.CBufRet.f32 %1764, 2
  %1819 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1820 = fadd fast float %1819, %1818
  %1821 = fcmp fast ogt float %1820, 0.000000e+00
  %1822 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  br i1 %1821, label %1823, label %1846

; <label>:1823                                    ; preds = %1816
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.CBufRet.f32 %1824, 1
  %1827 = fsub fast float %1770, %1825
  %1828 = fsub fast float %1771, %1826
  %1829 = fcmp fast olt float %1827, 0.000000e+00
  %1830 = fcmp fast olt float %1828, 0.000000e+00
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1834 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1831, 3
  %1836 = select i1 %1829, float %1832, float %1834
  %1837 = select i1 %1830, float %1833, float %1835
  %1838 = fmul fast float %1836, %1827
  %1839 = fmul fast float %1837, %1828
  %1840 = call float @dx.op.unary.f32(i32 6, float %1838)  ; FAbs(value)
  %1841 = call float @dx.op.unary.f32(i32 6, float %1839)  ; FAbs(value)
  %1842 = call float @dx.op.binary.f32(i32 35, float %1840, float %1841)  ; FMax(a,b)
  %1843 = fsub fast float %1822, %1842
  %1844 = call float @dx.op.unary.f32(i32 7, float %1843)  ; Saturate(value)
  %1845 = fmul fast float %1844, %1786
  br label %1846

; <label>:1846                                    ; preds = %1823, %1816
  %1847 = phi float [ %1845, %1823 ], [ 0.000000e+00, %1816 ]
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 1
  %1850 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1854 = fsub fast float %1755, %1852
  %1855 = fsub fast float %1759, %1853
  %1856 = fcmp fast olt float %1854, 0.000000e+00
  %1857 = fcmp fast olt float %1855, 0.000000e+00
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 0
  %1860 = extractvalue %dx.types.CBufRet.f32 %1858, 1
  %1861 = extractvalue %dx.types.CBufRet.f32 %1858, 2
  %1862 = extractvalue %dx.types.CBufRet.f32 %1858, 3
  %1863 = select i1 %1856, float %1859, float %1861
  %1864 = select i1 %1857, float %1860, float %1862
  %1865 = fmul fast float %1863, %1854
  %1866 = fmul fast float %1864, %1855
  %1867 = call float @dx.op.unary.f32(i32 6, float %1865)  ; FAbs(value)
  %1868 = call float @dx.op.unary.f32(i32 6, float %1866)  ; FAbs(value)
  %1869 = call float @dx.op.binary.f32(i32 35, float %1867, float %1868)  ; FMax(a,b)
  %1870 = fsub fast float %1822, %1869
  %1871 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1872 = call float @dx.op.binary.f32(i32 36, float %1871, float %1850)  ; FMin(a,b)
  %1873 = fmul fast float %1872, %1786
  %1874 = fsub fast float %1847, %1873
  %1875 = fsub fast float %1817, %1847
  %1876 = fsub fast float %1875, %1873
  %1877 = call float @dx.op.binary.f32(i32 35, float %1847, float %1817)  ; FMax(a,b)
  %1878 = call float @dx.op.binary.f32(i32 35, float %1873, float %1877)  ; FMax(a,b)
  %1879 = fcmp fast olt float %1878, 1.000000e+00
  br i1 %1879, label %1880, label %2278, !dx.controlflow.hints !89

; <label>:1880                                    ; preds = %1846
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = fcmp fast une float %1882, 0.000000e+00
  br i1 %1883, label %1884, label %2278, !dx.controlflow.hints !90

; <label>:1884                                    ; preds = %1880
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.CBufRet.f32 %1885, 1
  %1888 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %1889 = extractvalue %dx.types.CBufRet.f32 %1885, 3
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.CBufRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1894 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.CBufRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.CBufRet.f32 %1895, 2
  %1899 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1900 = fmul fast float %1886, %1732
  %1901 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1887, float %1900)  ; FMad(a,b,c)
  %1902 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %1888, float %1901)  ; FMad(a,b,c)
  %1903 = fadd fast float %1902, %1889
  %1904 = fmul fast float %1891, %1732
  %1905 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1892, float %1904)  ; FMad(a,b,c)
  %1906 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %1893, float %1905)  ; FMad(a,b,c)
  %1907 = fadd fast float %1906, %1894
  %1908 = fmul fast float %1896, %1732
  %1909 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1897, float %1908)  ; FMad(a,b,c)
  %1910 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %1898, float %1909)  ; FMad(a,b,c)
  %1911 = fadd fast float %1910, %1899
  %1912 = fcmp fast oge float %1903, 1.000000e+00
  %1913 = fcmp fast oge float %1907, 1.000000e+00
  %1914 = or i1 %1912, %1913
  %1915 = fcmp fast olt float %1903, 0.000000e+00
  %1916 = fcmp fast olt float %1907, 0.000000e+00
  %1917 = or i1 %1915, %1916
  %1918 = or i1 %1914, %1917
  br i1 %1918, label %2278, label %1919, !dx.controlflow.hints !91

; <label>:1919                                    ; preds = %1884
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1923 = extractvalue %dx.types.CBufRet.f32 %1920, 2
  %1924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.i32 %1924, 2
  %1926 = uitofp i32 %1925 to float
  %1927 = extractvalue %dx.types.CBufRet.i32 %1924, 3
  %1928 = uitofp i32 %1927 to float
  %1929 = extractvalue %dx.types.CBufRet.f32 %1920, 3
  %1930 = fmul fast float %1929, 2.000000e+00
  %1931 = fsub fast float %1903, %1921
  %1932 = fsub fast float %1907, %1922
  %1933 = fmul fast float %1930, %1931
  %1934 = fmul fast float %1930, %1932
  %1935 = fdiv fast float 1.000000e+00, %1715
  %1936 = fmul fast float %1934, %1935
  %1937 = call float @dx.op.unary.f32(i32 6, float %1936)  ; FAbs(value)
  %1938 = fmul fast float %1923, %1734
  %1939 = fmul fast float %1938, %1930
  %1940 = call float @dx.op.unary.f32(i32 6, float %1939)  ; FAbs(value)
  %1941 = call float @dx.op.unary.f32(i32 6, float %1933)  ; FAbs(value)
  %1942 = call float @dx.op.binary.f32(i32 35, float %1940, float %1937)  ; FMax(a,b)
  %1943 = call float @dx.op.binary.f32(i32 35, float %1941, float %1942)  ; FMax(a,b)
  %1944 = fmul fast float %1943, 2.000000e+00
  %1945 = call float @dx.op.unary.f32(i32 23, float %1944)  ; Log(value)
  %1946 = call float @dx.op.binary.f32(i32 35, float %1945, float %1926)  ; FMax(a,b)
  %1947 = call float @dx.op.unary.f32(i32 22, float %1946)  ; Frc(value)
  %1948 = fadd fast float %1947, 0xBFEA666660000000
  %1949 = fmul fast float %1948, 8.000000e+00
  %1950 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1951 = call float @dx.op.unary.f32(i32 27, float %1946)  ; Round_ni(value)
  %1952 = fadd fast float %1951, %1950
  %1953 = call float @dx.op.binary.f32(i32 36, float %1952, float %1928)  ; FMin(a,b)
  %1954 = call float @dx.op.unary.f32(i32 27, float %1953)  ; Round_ni(value)
  %1955 = fsub fast float -0.000000e+00, %1954
  %1956 = call float @dx.op.unary.f32(i32 21, float %1955)  ; Exp(value)
  %1957 = fmul fast float %1956, %1930
  %1958 = fmul fast float %1957, %1903
  %1959 = fmul fast float %1957, %1907
  %1960 = fmul fast float %1958, 2.500000e-01
  %1961 = fmul fast float %1959, 2.500000e-01
  %1962 = fadd fast float %1960, 5.000000e-01
  %1963 = fadd fast float %1961, 5.000000e-01
  %1964 = fsub fast float %1928, %1926
  %1965 = fptoui float %1964 to i32
  %1966 = add i32 %1965, 320
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %1966)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1969 = extractvalue %dx.types.CBufRet.f32 %1967, 1
  %1970 = fcmp fast une float %1953, %1928
  %1971 = fsub fast float %1903, %1968
  %1972 = fsub fast float %1907, %1969
  %1973 = call float @dx.op.unary.f32(i32 6, float %1971)  ; FAbs(value)
  %1974 = call float @dx.op.unary.f32(i32 6, float %1972)  ; FAbs(value)
  %1975 = fmul fast float %1973, %1957
  %1976 = fmul fast float %1974, %1957
  %1977 = fcmp fast olt float %1975, 1.000000e+00
  %1978 = fcmp fast olt float %1976, 1.000000e+00
  %1979 = and i1 %1977, %1978
  %1980 = or i1 %1970, %1979
  br i1 %1980, label %1981, label %2278, !dx.controlflow.hints !92

; <label>:1981                                    ; preds = %1919
  %1982 = fmul fast float %1959, 5.000000e-01
  %1983 = fmul fast float %1958, 5.000000e-01
  %1984 = fadd fast float %1982, 5.000000e-01
  %1985 = fadd fast float %1983, 5.000000e-01
  %1986 = sitofp i32 %1925 to float
  %1987 = fsub fast float %1953, %1986
  %1988 = call float @dx.op.unary.f32(i32 27, float %1987)  ; Round_ni(value)
  %1989 = call float @dx.op.unary.f32(i32 22, float %1953)  ; Frc(value)
  %1990 = call float @dx.op.unary.f32(i32 22, float %1985)  ; Frc(value)
  %1991 = call float @dx.op.unary.f32(i32 22, float %1984)  ; Frc(value)
  %1992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %1990, float %1991, float %1988, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.ResRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.ResRet.f32 %1992, 2
  %1996 = extractvalue %dx.types.ResRet.f32 %1992, 3
  %1997 = fcmp fast ogt float %1989, 0.000000e+00
  br i1 %1997, label %1998, label %2019, !dx.controlflow.hints !93

; <label>:1998                                    ; preds = %1981
  %1999 = fadd fast float %1988, 1.000000e+00
  %2000 = call float @dx.op.unary.f32(i32 22, float %1962)  ; Frc(value)
  %2001 = call float @dx.op.unary.f32(i32 22, float %1963)  ; Frc(value)
  %2002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %2000, float %2001, float %1999, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2006 = extractvalue %dx.types.ResRet.f32 %2002, 3
  %2007 = fsub fast float %2003, %1993
  %2008 = fsub fast float %2004, %1994
  %2009 = fsub fast float %2005, %1995
  %2010 = fsub fast float %2006, %1996
  %2011 = fmul fast float %2007, %1989
  %2012 = fmul fast float %2008, %1989
  %2013 = fmul fast float %2009, %1989
  %2014 = fmul fast float %2010, %1989
  %2015 = fadd fast float %2011, %1993
  %2016 = fadd fast float %2012, %1994
  %2017 = fadd fast float %2013, %1995
  %2018 = fadd fast float %2014, %1996
  br label %2019

; <label>:2019                                    ; preds = %1998, %1981
  %2020 = phi float [ %2015, %1998 ], [ %1993, %1981 ]
  %2021 = phi float [ %2016, %1998 ], [ %1994, %1981 ]
  %2022 = phi float [ %2017, %1998 ], [ %1995, %1981 ]
  %2023 = phi float [ %2018, %1998 ], [ %1996, %1981 ]
  %2024 = fadd fast float %2020, -5.000000e-01
  %2025 = fadd fast float %2022, -5.000000e-01
  %2026 = fmul fast float %2024, 0xBFD5555560000000
  %2027 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2025, float %2026)  ; FMad(a,b,c)
  %2028 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2021, float 0.000000e+00)  ; FMad(a,b,c)
  %2029 = fadd fast float %2028, %2023
  %2030 = fmul fast float %2024, -7.500000e-01
  %2031 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2025, float %2030)  ; FMad(a,b,c)
  %2032 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2021, float 0.000000e+00)  ; FMad(a,b,c)
  %2033 = fadd fast float %2032, %2023
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 0
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.CBufRet.f32 %2036, 1
  %2039 = extractvalue %dx.types.CBufRet.f32 %2036, 2
  %2040 = extractvalue %dx.types.CBufRet.f32 %2036, 3
  %2041 = fsub fast float %2037, %2027
  %2042 = fsub fast float %2038, %2029
  %2043 = fsub fast float %2039, %2031
  %2044 = fsub fast float %2040, %2033
  %2045 = fmul fast float %2041, %2035
  %2046 = fmul fast float %2042, %2035
  %2047 = fmul fast float %2043, %2035
  %2048 = fmul fast float %2044, %2035
  %2049 = fadd fast float %2045, %2027
  %2050 = fadd fast float %2046, %2029
  %2051 = fadd fast float %2047, %2031
  %2052 = fadd fast float %2048, %2033
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = and i32 %2054, 536870911
  %2056 = uitofp i32 %2055 to float
  %2057 = fmul fast float %2056, %1903
  %2058 = fmul fast float %2056, %1907
  %2059 = fptoui float %2057 to i32
  %2060 = fptoui float %2058 to i32
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = and i32 %2062, 31
  %2064 = lshr i32 %2059, %2063
  %2065 = lshr i32 %2060, %2063
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = and i32 %2067, 31
  %2069 = shl i32 1, %2068
  %2070 = call i32 @dx.op.binary.i32(i32 40, i32 %2069, i32 4)  ; UMin(a,b)
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = extractvalue %dx.types.ResRet.i32 %2071, 1
  %2074 = icmp eq i32 %2070, 0
  br i1 %2074, label %2116, label %2075

; <label>:2075                                    ; preds = %2019
  br label %2076

; <label>:2076                                    ; preds = %2104, %2075
  %2077 = phi i32 [ %2107, %2104 ], [ 0, %2075 ]
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = lshr i32 %2079, 16
  %2081 = and i32 %2080, 31
  %2082 = shl i32 %2065, %2081
  %2083 = add i32 %2082, %2064
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 31
  %2087 = shl i32 %2083, %2086
  %2088 = add i32 %2087, %2077
  %2089 = shl i32 %2088, 2
  %2090 = add i32 %2089, 32
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = icmp slt i32 %2092, 0
  %2094 = getelementptr [12 x float], [12 x float]* %58, i32 0, i32 %2077
  %2095 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2077
  %2096 = bitcast float* %2094 to i32*
  %2097 = bitcast float* %2095 to i32*
  br i1 %2093, label %2098, label %2104

; <label>:2098                                    ; preds = %2076
  %2099 = and i32 %2092, 1073741823
  %2100 = add nuw nsw i32 %2099, 20
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = extractvalue %dx.types.ResRet.i32 %2101, 1
  br label %2104

; <label>:2104                                    ; preds = %2098, %2076
  %2105 = phi i32 [ %2102, %2098 ], [ %2072, %2076 ]
  %2106 = phi i32 [ %2103, %2098 ], [ %2073, %2076 ]
  store i32 %2105, i32* %2096, align 4
  store i32 %2106, i32* %2097, align 4
  %2107 = add nuw i32 %2077, 1
  %2108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.i32 %2108, 2
  %2110 = icmp eq i32 %2109, 0
  %2111 = icmp ugt i32 %2092, -1073741825
  %2112 = and i1 %2111, %2110
  %2113 = icmp ult i32 %2107, %2070
  %2114 = and i1 %2112, %2113
  br i1 %2114, label %2076, label %2115

; <label>:2115                                    ; preds = %2104
  br label %2116

; <label>:2116                                    ; preds = %2115, %2019
  %2117 = phi i32 [ 0, %2019 ], [ %2107, %2115 ]
  %2118 = extractvalue %dx.types.CBufRet.f32 %1881, 2
  %2119 = fptoui float %2118 to i32
  %2120 = icmp eq i32 %2119, 0
  br i1 %2120, label %2172, label %2121

; <label>:2121                                    ; preds = %2116
  br label %2122

; <label>:2122                                    ; preds = %2167, %2121
  %2123 = phi i32 [ %2168, %2167 ], [ %2117, %2121 ]
  %2124 = phi i32 [ %2169, %2167 ], [ 0, %2121 ]
  %2125 = lshr i32 %2124, 2
  %2126 = and i32 %2124, 3
  %2127 = add nuw nsw i32 %2125, 83
  %2128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 %2127)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.i32 %2128, 0
  %2130 = extractvalue %dx.types.CBufRet.i32 %2128, 1
  %2131 = extractvalue %dx.types.CBufRet.i32 %2128, 2
  %2132 = extractvalue %dx.types.CBufRet.i32 %2128, 3
  %2133 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 0
  store i32 %2129, i32* %2133, align 4
  %2134 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 1
  store i32 %2130, i32* %2134, align 4
  %2135 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 2
  store i32 %2131, i32* %2135, align 4
  %2136 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 3
  store i32 %2132, i32* %2136, align 4
  %2137 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 %2126
  %2138 = load i32, i32* %2137, align 4, !tbaa !94, !noalias !98
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = lshr i32 %2140, 16
  %2142 = and i32 %2141, 31
  %2143 = shl i32 %2065, %2142
  %2144 = add i32 %2143, %2064
  %2145 = shl i32 %2144, 2
  %2146 = add i32 %2145, %2138
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = icmp eq i32 %2148, 0
  br i1 %2149, label %2167, label %2150

; <label>:2150                                    ; preds = %2122
  %2151 = icmp slt i32 %2148, 0
  %2152 = getelementptr [12 x float], [12 x float]* %58, i32 0, i32 %2123
  %2153 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2123
  %2154 = bitcast float* %2152 to i32*
  %2155 = bitcast float* %2153 to i32*
  br i1 %2151, label %2156, label %2163

; <label>:2156                                    ; preds = %2150
  %2157 = and i32 %2148, 1073741823
  %2158 = add i32 %2138, 20
  %2159 = add i32 %2158, %2157
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = extractvalue %dx.types.ResRet.i32 %2160, 1
  br label %2163

; <label>:2163                                    ; preds = %2156, %2150
  %2164 = phi i32 [ %2161, %2156 ], [ %2072, %2150 ]
  %2165 = phi i32 [ %2162, %2156 ], [ %2073, %2150 ]
  store i32 %2164, i32* %2154, align 4
  store i32 %2165, i32* %2155, align 4
  %2166 = add i32 %2123, 1
  br label %2167

; <label>:2167                                    ; preds = %2163, %2122
  %2168 = phi i32 [ %2123, %2122 ], [ %2166, %2163 ]
  %2169 = add nuw i32 %2124, 1
  %2170 = icmp eq i32 %2169, %2119
  br i1 %2170, label %2171, label %2122

; <label>:2171                                    ; preds = %2167
  br label %2172

; <label>:2172                                    ; preds = %2171, %2116
  %2173 = phi i32 [ %2117, %2116 ], [ %2168, %2171 ]
  %2174 = icmp eq i32 %2173, 1
  %2175 = getelementptr [12 x float], [12 x float]* %58, i32 0, i32 0
  %2176 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 0
  br i1 %2174, label %2177, label %2180

; <label>:2177                                    ; preds = %2172
  %2178 = load float, float* %2175, align 4
  %2179 = load float, float* %2176, align 4
  br label %2207

; <label>:2180                                    ; preds = %2172
  %2181 = load float, float* %2175, align 4
  %2182 = load float, float* %2176, align 4
  %2183 = fdiv fast float 1.000000e+00, %2182
  %2184 = fsub fast float %2181, %2183
  %2185 = icmp ugt i32 %2173, 1
  br i1 %2185, label %2186, label %2202

; <label>:2186                                    ; preds = %2180
  br label %2187

; <label>:2187                                    ; preds = %2187, %2186
  %2188 = phi float [ %2197, %2187 ], [ %2184, %2186 ]
  %2189 = phi float [ %2198, %2187 ], [ %2181, %2186 ]
  %2190 = phi i32 [ %2199, %2187 ], [ 1, %2186 ]
  %2191 = getelementptr [12 x float], [12 x float]* %58, i32 0, i32 %2190
  %2192 = load float, float* %2191, align 4
  %2193 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2190
  %2194 = load float, float* %2193, align 4
  %2195 = fdiv fast float 1.000000e+00, %2194
  %2196 = fsub fast float %2192, %2195
  %2197 = call float @dx.op.binary.f32(i32 36, float %2188, float %2196)  ; FMin(a,b)
  %2198 = call float @dx.op.binary.f32(i32 35, float %2189, float %2192)  ; FMax(a,b)
  %2199 = add nuw i32 %2190, 1
  %2200 = icmp eq i32 %2199, %2173
  br i1 %2200, label %2201, label %2187

; <label>:2201                                    ; preds = %2187
  br label %2202

; <label>:2202                                    ; preds = %2201, %2180
  %2203 = phi float [ %2184, %2180 ], [ %2197, %2201 ]
  %2204 = phi float [ %2181, %2180 ], [ %2198, %2201 ]
  %2205 = fsub fast float %2204, %2203
  %2206 = fdiv fast float 1.000000e+00, %2205
  br label %2207

; <label>:2207                                    ; preds = %2202, %2177
  %2208 = phi float [ %2178, %2177 ], [ %2204, %2202 ]
  %2209 = phi float [ %2179, %2177 ], [ %2206, %2202 ]
  %2210 = fadd fast float %1911, %2208
  %2211 = fmul fast float %2210, %2209
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2213 = fmul fast float %2212, 2.000000e+00
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = fmul fast float %2049, %2049
  %2216 = fsub fast float %2050, %2215
  %2217 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2216)  ; FMax(a,b)
  %2218 = fdiv fast float 1.000000e+00, %2217
  %2219 = fmul fast float %2050, %2049
  %2220 = fsub fast float %2051, %2219
  %2221 = fsub fast float %2214, %2049
  %2222 = fmul fast float %2214, %2214
  %2223 = fsub fast float %2222, %2050
  %2224 = fmul fast float %2218, %2220
  %2225 = fmul fast float %2224, %2221
  %2226 = fsub fast float %2223, %2225
  %2227 = fmul fast float %2050, %2050
  %2228 = fsub fast float %2052, %2227
  %2229 = fmul fast float %2220, %2220
  %2230 = fmul fast float %2229, %2218
  %2231 = fsub fast float %2228, %2230
  %2232 = fdiv fast float %2226, %2231
  %2233 = fmul fast float %2232, %2220
  %2234 = fsub fast float %2221, %2233
  %2235 = fmul fast float %2234, %2218
  %2236 = fmul fast float %2235, %2049
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = fmul fast float %2232, %2050
  %2239 = fsub fast float %2237, %2238
  %2240 = fmul fast float %2235, %2235
  %2241 = fmul fast float %2232, 4.000000e+00
  %2242 = fmul fast float %2241, %2239
  %2243 = fsub fast float %2240, %2242
  %2244 = call float @dx.op.unary.f32(i32 24, float %2243)  ; Sqrt(value)
  %2245 = fcmp fast oge float %2235, 0.000000e+00
  %2246 = fsub fast float -0.000000e+00, %2244
  %2247 = select i1 %2245, float %2246, float %2244
  %2248 = fsub fast float %2247, %2235
  %2249 = fdiv fast float %2248, %2232
  %2250 = fdiv fast float %2239, %2248
  %2251 = fmul fast float %2249, 5.000000e-01
  %2252 = fmul fast float %2250, 2.000000e+00
  %2253 = select i1 %2245, float %2251, float %2252
  %2254 = select i1 %2245, float %2252, float %2251
  %2255 = call float @dx.op.binary.f32(i32 35, float %2253, float %2254)  ; FMax(a,b)
  %2256 = call float @dx.op.binary.f32(i32 36, float %2253, float %2254)  ; FMin(a,b)
  %2257 = fcmp fast ogt float %2214, %2255
  %2258 = fsub fast float %2214, %2256
  %2259 = fsub fast float %2214, %2255
  %2260 = fsub fast float %2255, %2256
  %2261 = select i1 %2257, float %2259, float %2260
  %2262 = fmul float %2258, %2261
  %2263 = select i1 %2257, float %2256, float %2214
  %2264 = fcmp fast ogt float %2214, %2256
  %2265 = fmul fast float %2263, %2255
  %2266 = fadd fast float %2263, %2255
  %2267 = fmul fast float %2266, %2049
  %2268 = fadd fast float %2265, %2050
  %2269 = fsub fast float %2268, %2267
  %2270 = fdiv fast float %2269, %2262
  %2271 = select i1 %2264, float %2270, float 0.000000e+00
  %2272 = fsub fast float 1.000000e+00, %2271
  %2273 = select i1 %2257, float %2272, float %2271
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2034, 3
  %2276 = fmul fast float %2275, %2274
  %2277 = fsub fast float 1.000000e+00, %2276
  br label %2278

; <label>:2278                                    ; preds = %2207, %1919, %1884, %1880, %1846
  %2279 = phi float [ 1.000000e+00, %1846 ], [ %2277, %2207 ], [ 1.000000e+00, %1884 ], [ 1.000000e+00, %1919 ], [ 1.000000e+00, %1880 ]
  %2280 = fcmp fast ogt float %1876, 0.000000e+00
  br i1 %2280, label %2281, label %2443, !dx.controlflow.hints !107

; <label>:2281                                    ; preds = %2278
  %2282 = fadd fast float %1789, %1763
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 2
  %2285 = extractvalue %dx.types.CBufRet.f32 %2283, 3
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 2
  %2288 = call float @dx.op.binary.f32(i32 35, float %2282, float 0.000000e+00)  ; FMax(a,b)
  %2289 = fadd fast float %2288, 0x3F10000000000000
  %2290 = fcmp fast oeq float %2287, 0.000000e+00
  br i1 %2290, label %2291, label %2358

; <label>:2291                                    ; preds = %2281
  %2292 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2293 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2294 = fmul fast float %2293, %1778
  %2295 = fmul fast float %2292, %1779
  %2296 = fadd fast float %2294, 5.000000e-01
  %2297 = call float @dx.op.unary.f32(i32 27, float %2296)  ; Round_ni(value)
  %2298 = fadd fast float %2295, 5.000000e-01
  %2299 = call float @dx.op.unary.f32(i32 27, float %2298)  ; Round_ni(value)
  %2300 = fsub fast float %2296, %2297
  %2301 = fsub fast float %2298, %2299
  %2302 = fadd fast float %2297, -5.000000e-01
  %2303 = fadd fast float %2299, -5.000000e-01
  %2304 = fmul fast float %2300, 2.000000e+00
  %2305 = fsub fast float 3.000000e+00, %2304
  %2306 = fadd fast float %2304, 1.000000e+00
  %2307 = fsub fast float 2.000000e+00, %2300
  %2308 = bitcast float %2305 to i32
  %2309 = sub nsw i32 2129859010, %2308
  %2310 = bitcast i32 %2309 to float
  %2311 = fmul fast float %2310, %2307
  %2312 = fadd fast float %2311, -1.000000e+00
  %2313 = bitcast float %2306 to i32
  %2314 = sub nsw i32 2129859010, %2313
  %2315 = bitcast i32 %2314 to float
  %2316 = fmul fast float %2315, %2300
  %2317 = fadd fast float %2316, 1.000000e+00
  %2318 = fmul fast float %2301, 2.000000e+00
  %2319 = fsub fast float 3.000000e+00, %2318
  %2320 = fadd fast float %2318, 1.000000e+00
  %2321 = fsub fast float 2.000000e+00, %2301
  %2322 = bitcast float %2319 to i32
  %2323 = sub nsw i32 2129859010, %2322
  %2324 = bitcast i32 %2323 to float
  %2325 = fmul fast float %2324, %2321
  %2326 = fadd fast float %2325, -1.000000e+00
  %2327 = bitcast float %2320 to i32
  %2328 = sub nsw i32 2129859010, %2327
  %2329 = bitcast i32 %2328 to float
  %2330 = fmul fast float %2329, %2301
  %2331 = fadd fast float %2330, 1.000000e+00
  %2332 = fadd fast float %2312, %2302
  %2333 = fmul fast float %2332, %2284
  %2334 = fadd fast float %2326, %2303
  %2335 = fmul fast float %2334, %2285
  %2336 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %41, float %2333, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float %2289)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = fmul fast float %2337, %2305
  %2339 = fadd fast float %2317, %2302
  %2340 = fmul fast float %2339, %2284
  %2341 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %41, float %2340, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float %2289)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = fmul fast float %2342, %2306
  %2344 = fadd fast float %2331, %2303
  %2345 = fmul fast float %2344, %2285
  %2346 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %41, float %2333, float %2345, float undef, float undef, i32 0, i32 0, i32 undef, float %2289)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2347 = extractvalue %dx.types.ResRet.f32 %2346, 0
  %2348 = fmul fast float %2347, %2305
  %2349 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %41, float %2340, float %2345, float undef, float undef, i32 0, i32 0, i32 undef, float %2289)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2350 = extractvalue %dx.types.ResRet.f32 %2349, 0
  %2351 = fmul fast float %2350, %2306
  %2352 = fadd fast float %2351, %2348
  %2353 = fmul fast float %2352, %2320
  %2354 = fadd fast float %2343, %2338
  %2355 = fmul fast float %2354, %2319
  %2356 = fadd fast float %2355, %2353
  %2357 = fmul fast float %2356, 6.250000e-02
  br label %2443

; <label>:2358                                    ; preds = %2281
  %2359 = fmul fast float %150, 0x401921FB60000000
  %2360 = call float @dx.op.unary.f32(i32 13, float %2359)  ; Sin(value)
  %2361 = call float @dx.op.unary.f32(i32 12, float %2359)  ; Cos(value)
  %2362 = fsub fast float -0.000000e+00, %2360
  br label %2363

; <label>:2363                                    ; preds = %2412, %2358
  %2364 = phi float [ 0.000000e+00, %2358 ], [ %2407, %2412 ]
  %2365 = phi float [ 0.000000e+00, %2358 ], [ %2409, %2412 ]
  %2366 = phi i32 [ 0, %2358 ], [ %2413, %2412 ]
  %2367 = mul i32 %2366, 2
  %2368 = add i32 0, %2367
  %2369 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2368
  %2370 = load float, float* %2369, align 4
  %2371 = mul i32 %2366, 2
  %2372 = add i32 1, %2371
  %2373 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2372
  %2374 = load float, float* %2373, align 4
  %2375 = fmul fast float %2370, %2361
  %2376 = call float @dx.op.tertiary.f32(i32 46, float %2374, float %2362, float %2375)  ; FMad(a,b,c)
  %2377 = fmul fast float %2370, %2360
  %2378 = call float @dx.op.tertiary.f32(i32 46, float %2374, float %2361, float %2377)  ; FMad(a,b,c)
  %2379 = fmul fast float %2376, %2287
  %2380 = fmul fast float %2378, %2287
  %2381 = fadd fast float %2379, %1778
  %2382 = fadd fast float %2380, %1779
  %2383 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %40, float %2381, float %2382, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = extractvalue %dx.types.ResRet.f32 %2383, 1
  %2386 = extractvalue %dx.types.ResRet.f32 %2383, 2
  %2387 = extractvalue %dx.types.ResRet.f32 %2383, 3
  %2388 = getelementptr inbounds [4 x float], [4 x float]* %62, i32 0, i32 0
  store float %2384, float* %2388, align 4
  %2389 = getelementptr inbounds [4 x float], [4 x float]* %62, i32 0, i32 1
  store float %2385, float* %2389, align 4
  %2390 = getelementptr inbounds [4 x float], [4 x float]* %62, i32 0, i32 2
  store float %2386, float* %2390, align 4
  %2391 = getelementptr inbounds [4 x float], [4 x float]* %62, i32 0, i32 3
  store float %2387, float* %2391, align 4
  %2392 = fsub fast float %2384, %2289
  %2393 = fcmp fast olt float %2392, 0.000000e+00
  %2394 = select i1 %2393, float 0.000000e+00, float 1.000000e+00
  %2395 = fadd fast float %2394, %2364
  %2396 = fmul fast float %2394, %2392
  %2397 = fadd fast float %2396, %2365
  br label %2398

; <label>:2398                                    ; preds = %2398, %2363
  %2399 = phi i32 [ 1, %2363 ], [ %2410, %2398 ]
  %2400 = phi float [ %2397, %2363 ], [ %2409, %2398 ]
  %2401 = phi float [ %2395, %2363 ], [ %2407, %2398 ]
  %2402 = getelementptr [4 x float], [4 x float]* %62, i32 0, i32 %2399
  %2403 = load float, float* %2402, align 4, !tbaa !108, !noalias !98
  %2404 = fsub fast float %2403, %2289
  %2405 = fcmp fast olt float %2404, 0.000000e+00
  %2406 = select i1 %2405, float 0.000000e+00, float 1.000000e+00
  %2407 = fadd fast float %2406, %2401
  %2408 = fmul fast float %2406, %2404
  %2409 = fadd fast float %2408, %2400
  %2410 = add nuw nsw i32 %2399, 1
  %2411 = icmp eq i32 %2410, 4
  br i1 %2411, label %2412, label %2398, !llvm.loop !110

; <label>:2412                                    ; preds = %2398
  %2413 = add nuw nsw i32 %2366, 1
  %2414 = icmp eq i32 %2413, 8
  br i1 %2414, label %2415, label %2363, !llvm.loop !111

; <label>:2415                                    ; preds = %2412
  %2416 = fdiv fast float 1.000000e+00, %2407
  %2417 = fmul fast float %2416, %2409
  %2418 = fdiv fast float 1.000000e+00, %2289
  %2419 = fmul fast float %2417, %2418
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2421 = call float @dx.op.binary.f32(i32 35, float %2420, float 0.000000e+00)  ; FMax(a,b)
  %2422 = fmul fast float %2407, 3.125000e-02
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2424 = fmul fast float %2423, 2.000000e+00
  %2425 = fadd fast float %2424, -1.000000e+00
  %2426 = fcmp fast ogt float %2425, 0.000000e+00
  %2427 = fcmp fast olt float %2425, 0.000000e+00
  %2428 = zext i1 %2426 to i32
  %2429 = zext i1 %2427 to i32
  %2430 = sub nsw i32 %2428, %2429
  %2431 = sitofp i32 %2430 to float
  %2432 = fmul fast float %2431, %2425
  %2433 = fsub fast float 1.000000e+00, %2432
  %2434 = fmul fast float %2433, %2433
  %2435 = fmul fast float %2434, %2433
  %2436 = fsub fast float %2433, %2435
  %2437 = fmul fast float %2436, %2421
  %2438 = fsub fast float 1.000000e+00, %2435
  %2439 = fsub fast float %2438, %2437
  %2440 = fmul fast float %2431, 5.000000e-01
  %2441 = fmul fast float %2440, %2439
  %2442 = fsub fast float 5.000000e-01, %2441
  br label %2443

; <label>:2443                                    ; preds = %2415, %2291, %2278
  %2444 = phi float [ 1.000000e+00, %2278 ], [ %2357, %2291 ], [ %2442, %2415 ]
  %2445 = fcmp fast ogt float %1874, 0.000000e+00
  br i1 %2445, label %2446, label %2610, !dx.controlflow.hints !112

; <label>:2446                                    ; preds = %2443
  %2447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.f32 %2447, 1
  %2449 = fadd fast float %2448, %1763
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 2
  %2452 = extractvalue %dx.types.CBufRet.f32 %2450, 3
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 1
  %2455 = call float @dx.op.binary.f32(i32 35, float %2449, float 0.000000e+00)  ; FMax(a,b)
  %2456 = fadd fast float %2455, 0x3F10000000000000
  %2457 = fcmp fast oeq float %2454, 0.000000e+00
  br i1 %2457, label %2458, label %2525

; <label>:2458                                    ; preds = %2446
  %2459 = extractvalue %dx.types.CBufRet.f32 %2450, 1
  %2460 = extractvalue %dx.types.CBufRet.f32 %2450, 0
  %2461 = fmul fast float %2460, %1770
  %2462 = fmul fast float %2459, %1771
  %2463 = fadd fast float %2461, 5.000000e-01
  %2464 = call float @dx.op.unary.f32(i32 27, float %2463)  ; Round_ni(value)
  %2465 = fadd fast float %2462, 5.000000e-01
  %2466 = call float @dx.op.unary.f32(i32 27, float %2465)  ; Round_ni(value)
  %2467 = fsub fast float %2463, %2464
  %2468 = fsub fast float %2465, %2466
  %2469 = fadd fast float %2464, -5.000000e-01
  %2470 = fadd fast float %2466, -5.000000e-01
  %2471 = fmul fast float %2467, 2.000000e+00
  %2472 = fsub fast float 3.000000e+00, %2471
  %2473 = fadd fast float %2471, 1.000000e+00
  %2474 = fsub fast float 2.000000e+00, %2467
  %2475 = bitcast float %2472 to i32
  %2476 = sub nsw i32 2129859010, %2475
  %2477 = bitcast i32 %2476 to float
  %2478 = fmul fast float %2477, %2474
  %2479 = fadd fast float %2478, -1.000000e+00
  %2480 = bitcast float %2473 to i32
  %2481 = sub nsw i32 2129859010, %2480
  %2482 = bitcast i32 %2481 to float
  %2483 = fmul fast float %2482, %2467
  %2484 = fadd fast float %2483, 1.000000e+00
  %2485 = fmul fast float %2468, 2.000000e+00
  %2486 = fsub fast float 3.000000e+00, %2485
  %2487 = fadd fast float %2485, 1.000000e+00
  %2488 = fsub fast float 2.000000e+00, %2468
  %2489 = bitcast float %2486 to i32
  %2490 = sub nsw i32 2129859010, %2489
  %2491 = bitcast i32 %2490 to float
  %2492 = fmul fast float %2491, %2488
  %2493 = fadd fast float %2492, -1.000000e+00
  %2494 = bitcast float %2487 to i32
  %2495 = sub nsw i32 2129859010, %2494
  %2496 = bitcast i32 %2495 to float
  %2497 = fmul fast float %2496, %2468
  %2498 = fadd fast float %2497, 1.000000e+00
  %2499 = fadd fast float %2479, %2469
  %2500 = fmul fast float %2499, %2451
  %2501 = fadd fast float %2493, %2470
  %2502 = fmul fast float %2501, %2452
  %2503 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %41, float %2500, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float %2456)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2504 = extractvalue %dx.types.ResRet.f32 %2503, 0
  %2505 = fmul fast float %2504, %2472
  %2506 = fadd fast float %2484, %2469
  %2507 = fmul fast float %2506, %2451
  %2508 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %41, float %2507, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float %2456)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2509 = extractvalue %dx.types.ResRet.f32 %2508, 0
  %2510 = fmul fast float %2509, %2473
  %2511 = fadd fast float %2498, %2470
  %2512 = fmul fast float %2511, %2452
  %2513 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %41, float %2500, float %2512, float undef, float undef, i32 0, i32 0, i32 undef, float %2456)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2514 = extractvalue %dx.types.ResRet.f32 %2513, 0
  %2515 = fmul fast float %2514, %2472
  %2516 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %41, float %2507, float %2512, float undef, float undef, i32 0, i32 0, i32 undef, float %2456)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2517 = extractvalue %dx.types.ResRet.f32 %2516, 0
  %2518 = fmul fast float %2517, %2473
  %2519 = fadd fast float %2518, %2515
  %2520 = fmul fast float %2519, %2487
  %2521 = fadd fast float %2510, %2505
  %2522 = fmul fast float %2521, %2486
  %2523 = fadd fast float %2522, %2520
  %2524 = fmul fast float %2523, 6.250000e-02
  br label %2610

; <label>:2525                                    ; preds = %2446
  %2526 = fmul fast float %150, 0x401921FB60000000
  %2527 = call float @dx.op.unary.f32(i32 13, float %2526)  ; Sin(value)
  %2528 = call float @dx.op.unary.f32(i32 12, float %2526)  ; Cos(value)
  %2529 = fsub fast float -0.000000e+00, %2527
  br label %2530

; <label>:2530                                    ; preds = %2579, %2525
  %2531 = phi float [ 0.000000e+00, %2525 ], [ %2574, %2579 ]
  %2532 = phi float [ 0.000000e+00, %2525 ], [ %2576, %2579 ]
  %2533 = phi i32 [ 0, %2525 ], [ %2580, %2579 ]
  %2534 = mul i32 %2533, 2
  %2535 = add i32 0, %2534
  %2536 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2535
  %2537 = load float, float* %2536, align 4
  %2538 = mul i32 %2533, 2
  %2539 = add i32 1, %2538
  %2540 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2539
  %2541 = load float, float* %2540, align 4
  %2542 = fmul fast float %2537, %2528
  %2543 = call float @dx.op.tertiary.f32(i32 46, float %2541, float %2529, float %2542)  ; FMad(a,b,c)
  %2544 = fmul fast float %2537, %2527
  %2545 = call float @dx.op.tertiary.f32(i32 46, float %2541, float %2528, float %2544)  ; FMad(a,b,c)
  %2546 = fmul fast float %2543, %2454
  %2547 = fmul fast float %2545, %2454
  %2548 = fadd fast float %2546, %1770
  %2549 = fadd fast float %2547, %1771
  %2550 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %40, float %2548, float %2549, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2551 = extractvalue %dx.types.ResRet.f32 %2550, 0
  %2552 = extractvalue %dx.types.ResRet.f32 %2550, 1
  %2553 = extractvalue %dx.types.ResRet.f32 %2550, 2
  %2554 = extractvalue %dx.types.ResRet.f32 %2550, 3
  %2555 = getelementptr inbounds [4 x float], [4 x float]* %61, i32 0, i32 0
  store float %2551, float* %2555, align 4
  %2556 = getelementptr inbounds [4 x float], [4 x float]* %61, i32 0, i32 1
  store float %2552, float* %2556, align 4
  %2557 = getelementptr inbounds [4 x float], [4 x float]* %61, i32 0, i32 2
  store float %2553, float* %2557, align 4
  %2558 = getelementptr inbounds [4 x float], [4 x float]* %61, i32 0, i32 3
  store float %2554, float* %2558, align 4
  %2559 = fsub fast float %2551, %2456
  %2560 = fcmp fast olt float %2559, 0.000000e+00
  %2561 = select i1 %2560, float 0.000000e+00, float 1.000000e+00
  %2562 = fadd fast float %2561, %2531
  %2563 = fmul fast float %2561, %2559
  %2564 = fadd fast float %2563, %2532
  br label %2565

; <label>:2565                                    ; preds = %2565, %2530
  %2566 = phi i32 [ 1, %2530 ], [ %2577, %2565 ]
  %2567 = phi float [ %2564, %2530 ], [ %2576, %2565 ]
  %2568 = phi float [ %2562, %2530 ], [ %2574, %2565 ]
  %2569 = getelementptr [4 x float], [4 x float]* %61, i32 0, i32 %2566
  %2570 = load float, float* %2569, align 4, !tbaa !108, !noalias !98
  %2571 = fsub fast float %2570, %2456
  %2572 = fcmp fast olt float %2571, 0.000000e+00
  %2573 = select i1 %2572, float 0.000000e+00, float 1.000000e+00
  %2574 = fadd fast float %2573, %2568
  %2575 = fmul fast float %2573, %2571
  %2576 = fadd fast float %2575, %2567
  %2577 = add nuw nsw i32 %2566, 1
  %2578 = icmp eq i32 %2577, 4
  br i1 %2578, label %2579, label %2565, !llvm.loop !110

; <label>:2579                                    ; preds = %2565
  %2580 = add nuw nsw i32 %2533, 1
  %2581 = icmp eq i32 %2580, 8
  br i1 %2581, label %2582, label %2530, !llvm.loop !111

; <label>:2582                                    ; preds = %2579
  %2583 = fdiv fast float 1.000000e+00, %2574
  %2584 = fmul fast float %2583, %2576
  %2585 = fdiv fast float 1.000000e+00, %2456
  %2586 = fmul fast float %2584, %2585
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  %2588 = call float @dx.op.binary.f32(i32 35, float %2587, float 0.000000e+00)  ; FMax(a,b)
  %2589 = fmul fast float %2574, 3.125000e-02
  %2590 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2591 = fmul fast float %2590, 2.000000e+00
  %2592 = fadd fast float %2591, -1.000000e+00
  %2593 = fcmp fast ogt float %2592, 0.000000e+00
  %2594 = fcmp fast olt float %2592, 0.000000e+00
  %2595 = zext i1 %2593 to i32
  %2596 = zext i1 %2594 to i32
  %2597 = sub nsw i32 %2595, %2596
  %2598 = sitofp i32 %2597 to float
  %2599 = fmul fast float %2598, %2592
  %2600 = fsub fast float 1.000000e+00, %2599
  %2601 = fmul fast float %2600, %2600
  %2602 = fmul fast float %2601, %2600
  %2603 = fsub fast float %2600, %2602
  %2604 = fmul fast float %2603, %2588
  %2605 = fsub fast float 1.000000e+00, %2602
  %2606 = fsub fast float %2605, %2604
  %2607 = fmul fast float %2598, 5.000000e-01
  %2608 = fmul fast float %2607, %2606
  %2609 = fsub fast float 5.000000e-01, %2608
  br label %2610

; <label>:2610                                    ; preds = %2582, %2458, %2443
  %2611 = phi float [ 1.000000e+00, %2443 ], [ %2524, %2458 ], [ %2609, %2582 ]
  %2612 = fcmp fast ogt float %1873, 0.000000e+00
  br i1 %2612, label %2613, label %2777, !dx.controlflow.hints !113

; <label>:2613                                    ; preds = %2610
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2616 = fadd fast float %2615, %1763
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 2
  %2619 = extractvalue %dx.types.CBufRet.f32 %2617, 3
  %2620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.f32 %2620, 0
  %2622 = call float @dx.op.binary.f32(i32 35, float %2616, float 0.000000e+00)  ; FMax(a,b)
  %2623 = fadd fast float %2622, 0x3F10000000000000
  %2624 = fcmp fast oeq float %2621, 0.000000e+00
  br i1 %2624, label %2625, label %2692

; <label>:2625                                    ; preds = %2613
  %2626 = extractvalue %dx.types.CBufRet.f32 %2617, 1
  %2627 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2628 = fmul fast float %2627, %1755
  %2629 = fmul fast float %2626, %1759
  %2630 = fadd fast float %2628, 5.000000e-01
  %2631 = call float @dx.op.unary.f32(i32 27, float %2630)  ; Round_ni(value)
  %2632 = fadd fast float %2629, 5.000000e-01
  %2633 = call float @dx.op.unary.f32(i32 27, float %2632)  ; Round_ni(value)
  %2634 = fsub fast float %2630, %2631
  %2635 = fsub fast float %2632, %2633
  %2636 = fadd fast float %2631, -5.000000e-01
  %2637 = fadd fast float %2633, -5.000000e-01
  %2638 = fmul fast float %2634, 2.000000e+00
  %2639 = fsub fast float 3.000000e+00, %2638
  %2640 = fadd fast float %2638, 1.000000e+00
  %2641 = fsub fast float 2.000000e+00, %2634
  %2642 = bitcast float %2639 to i32
  %2643 = sub nsw i32 2129859010, %2642
  %2644 = bitcast i32 %2643 to float
  %2645 = fmul fast float %2644, %2641
  %2646 = fadd fast float %2645, -1.000000e+00
  %2647 = bitcast float %2640 to i32
  %2648 = sub nsw i32 2129859010, %2647
  %2649 = bitcast i32 %2648 to float
  %2650 = fmul fast float %2649, %2634
  %2651 = fadd fast float %2650, 1.000000e+00
  %2652 = fmul fast float %2635, 2.000000e+00
  %2653 = fsub fast float 3.000000e+00, %2652
  %2654 = fadd fast float %2652, 1.000000e+00
  %2655 = fsub fast float 2.000000e+00, %2635
  %2656 = bitcast float %2653 to i32
  %2657 = sub nsw i32 2129859010, %2656
  %2658 = bitcast i32 %2657 to float
  %2659 = fmul fast float %2658, %2655
  %2660 = fadd fast float %2659, -1.000000e+00
  %2661 = bitcast float %2654 to i32
  %2662 = sub nsw i32 2129859010, %2661
  %2663 = bitcast i32 %2662 to float
  %2664 = fmul fast float %2663, %2635
  %2665 = fadd fast float %2664, 1.000000e+00
  %2666 = fadd fast float %2646, %2636
  %2667 = fmul fast float %2666, %2618
  %2668 = fadd fast float %2660, %2637
  %2669 = fmul fast float %2668, %2619
  %2670 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %41, float %2667, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float %2623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2671 = extractvalue %dx.types.ResRet.f32 %2670, 0
  %2672 = fmul fast float %2671, %2639
  %2673 = fadd fast float %2651, %2636
  %2674 = fmul fast float %2673, %2618
  %2675 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %41, float %2674, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float %2623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2676 = extractvalue %dx.types.ResRet.f32 %2675, 0
  %2677 = fmul fast float %2676, %2640
  %2678 = fadd fast float %2665, %2637
  %2679 = fmul fast float %2678, %2619
  %2680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %41, float %2667, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float %2623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2681 = extractvalue %dx.types.ResRet.f32 %2680, 0
  %2682 = fmul fast float %2681, %2639
  %2683 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %41, float %2674, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float %2623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2684 = extractvalue %dx.types.ResRet.f32 %2683, 0
  %2685 = fmul fast float %2684, %2640
  %2686 = fadd fast float %2685, %2682
  %2687 = fmul fast float %2686, %2654
  %2688 = fadd fast float %2677, %2672
  %2689 = fmul fast float %2688, %2653
  %2690 = fadd fast float %2689, %2687
  %2691 = fmul fast float %2690, 6.250000e-02
  br label %2777

; <label>:2692                                    ; preds = %2613
  %2693 = fmul fast float %150, 0x401921FB60000000
  %2694 = call float @dx.op.unary.f32(i32 13, float %2693)  ; Sin(value)
  %2695 = call float @dx.op.unary.f32(i32 12, float %2693)  ; Cos(value)
  %2696 = fsub fast float -0.000000e+00, %2694
  br label %2697

; <label>:2697                                    ; preds = %2746, %2692
  %2698 = phi float [ 0.000000e+00, %2692 ], [ %2741, %2746 ]
  %2699 = phi float [ 0.000000e+00, %2692 ], [ %2743, %2746 ]
  %2700 = phi i32 [ 0, %2692 ], [ %2747, %2746 ]
  %2701 = mul i32 %2700, 2
  %2702 = add i32 0, %2701
  %2703 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2702
  %2704 = load float, float* %2703, align 4
  %2705 = mul i32 %2700, 2
  %2706 = add i32 1, %2705
  %2707 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2706
  %2708 = load float, float* %2707, align 4
  %2709 = fmul fast float %2704, %2695
  %2710 = call float @dx.op.tertiary.f32(i32 46, float %2708, float %2696, float %2709)  ; FMad(a,b,c)
  %2711 = fmul fast float %2704, %2694
  %2712 = call float @dx.op.tertiary.f32(i32 46, float %2708, float %2695, float %2711)  ; FMad(a,b,c)
  %2713 = fmul fast float %2710, %2621
  %2714 = fmul fast float %2712, %2621
  %2715 = fadd fast float %2713, %1755
  %2716 = fadd fast float %2714, %1759
  %2717 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %40, float %2715, float %2716, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2718 = extractvalue %dx.types.ResRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.ResRet.f32 %2717, 1
  %2720 = extractvalue %dx.types.ResRet.f32 %2717, 2
  %2721 = extractvalue %dx.types.ResRet.f32 %2717, 3
  %2722 = getelementptr inbounds [4 x float], [4 x float]* %60, i32 0, i32 0
  store float %2718, float* %2722, align 4
  %2723 = getelementptr inbounds [4 x float], [4 x float]* %60, i32 0, i32 1
  store float %2719, float* %2723, align 4
  %2724 = getelementptr inbounds [4 x float], [4 x float]* %60, i32 0, i32 2
  store float %2720, float* %2724, align 4
  %2725 = getelementptr inbounds [4 x float], [4 x float]* %60, i32 0, i32 3
  store float %2721, float* %2725, align 4
  %2726 = fsub fast float %2718, %2623
  %2727 = fcmp fast olt float %2726, 0.000000e+00
  %2728 = select i1 %2727, float 0.000000e+00, float 1.000000e+00
  %2729 = fadd fast float %2728, %2698
  %2730 = fmul fast float %2728, %2726
  %2731 = fadd fast float %2730, %2699
  br label %2732

; <label>:2732                                    ; preds = %2732, %2697
  %2733 = phi i32 [ 1, %2697 ], [ %2744, %2732 ]
  %2734 = phi float [ %2731, %2697 ], [ %2743, %2732 ]
  %2735 = phi float [ %2729, %2697 ], [ %2741, %2732 ]
  %2736 = getelementptr [4 x float], [4 x float]* %60, i32 0, i32 %2733
  %2737 = load float, float* %2736, align 4, !tbaa !108, !noalias !98
  %2738 = fsub fast float %2737, %2623
  %2739 = fcmp fast olt float %2738, 0.000000e+00
  %2740 = select i1 %2739, float 0.000000e+00, float 1.000000e+00
  %2741 = fadd fast float %2740, %2735
  %2742 = fmul fast float %2740, %2738
  %2743 = fadd fast float %2742, %2734
  %2744 = add nuw nsw i32 %2733, 1
  %2745 = icmp eq i32 %2744, 4
  br i1 %2745, label %2746, label %2732, !llvm.loop !110

; <label>:2746                                    ; preds = %2732
  %2747 = add nuw nsw i32 %2700, 1
  %2748 = icmp eq i32 %2747, 8
  br i1 %2748, label %2749, label %2697, !llvm.loop !111

; <label>:2749                                    ; preds = %2746
  %2750 = fdiv fast float 1.000000e+00, %2741
  %2751 = fmul fast float %2750, %2743
  %2752 = fdiv fast float 1.000000e+00, %2623
  %2753 = fmul fast float %2751, %2752
  %2754 = call float @dx.op.unary.f32(i32 7, float %2753)  ; Saturate(value)
  %2755 = call float @dx.op.binary.f32(i32 35, float %2754, float 0.000000e+00)  ; FMax(a,b)
  %2756 = fmul fast float %2741, 3.125000e-02
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2758 = fmul fast float %2757, 2.000000e+00
  %2759 = fadd fast float %2758, -1.000000e+00
  %2760 = fcmp fast ogt float %2759, 0.000000e+00
  %2761 = fcmp fast olt float %2759, 0.000000e+00
  %2762 = zext i1 %2760 to i32
  %2763 = zext i1 %2761 to i32
  %2764 = sub nsw i32 %2762, %2763
  %2765 = sitofp i32 %2764 to float
  %2766 = fmul fast float %2765, %2759
  %2767 = fsub fast float 1.000000e+00, %2766
  %2768 = fmul fast float %2767, %2767
  %2769 = fmul fast float %2768, %2767
  %2770 = fsub fast float %2767, %2769
  %2771 = fmul fast float %2770, %2755
  %2772 = fsub fast float 1.000000e+00, %2769
  %2773 = fsub fast float %2772, %2771
  %2774 = fmul fast float %2765, 5.000000e-01
  %2775 = fmul fast float %2774, %2773
  %2776 = fsub fast float 5.000000e-01, %2775
  br label %2777

; <label>:2777                                    ; preds = %2749, %2625, %2610
  %2778 = phi float [ 1.000000e+00, %2610 ], [ %2691, %2625 ], [ %2776, %2749 ]
  %2779 = fsub fast float %2444, %2279
  %2780 = fmul fast float %2779, %1817
  %2781 = fadd fast float %2780, %2279
  %2782 = fsub fast float %2611, %2781
  %2783 = fmul fast float %2782, %1847
  %2784 = fadd fast float %2783, %2781
  %2785 = fsub fast float %2778, %2784
  %2786 = fmul fast float %2785, %1873
  %2787 = fadd fast float %2786, %2784
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 2
  %2790 = fcmp fast ogt float %2789, 0.000000e+00
  br i1 %2790, label %2791, label %2831, !dx.controlflow.hints !114

; <label>:2791                                    ; preds = %2777
  %2792 = fcmp fast ugt float %2789, 0.000000e+00
  br i1 %2792, label %2793, label %2828

; <label>:2793                                    ; preds = %2791
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2798 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.CBufRet.f32 %2799, 1
  %2802 = extractvalue %dx.types.CBufRet.f32 %2799, 2
  %2803 = extractvalue %dx.types.CBufRet.f32 %2799, 3
  %2804 = extractvalue %dx.types.CBufRet.f32 %2788, 0
  %2805 = extractvalue %dx.types.CBufRet.f32 %2788, 1
  %2806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2807 = extractvalue %dx.types.CBufRet.f32 %2806, 0
  %2808 = extractvalue %dx.types.CBufRet.f32 %2806, 1
  %2809 = extractvalue %dx.types.CBufRet.f32 %2806, 2
  %2810 = fadd fast float %2807, %1732
  %2811 = fadd fast float %2808, %1733
  %2812 = fadd fast float %2809, %1734
  %2813 = fmul fast float %2810, %2795
  %2814 = call float @dx.op.tertiary.f32(i32 46, float %2796, float %2811, float %2813)  ; FMad(a,b,c)
  %2815 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2812, float %2814)  ; FMad(a,b,c)
  %2816 = fadd fast float %2815, %2798
  %2817 = fmul fast float %2810, %2800
  %2818 = call float @dx.op.tertiary.f32(i32 46, float %2801, float %2811, float %2817)  ; FMad(a,b,c)
  %2819 = call float @dx.op.tertiary.f32(i32 46, float %2802, float %2812, float %2818)  ; FMad(a,b,c)
  %2820 = fadd fast float %2819, %2803
  %2821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %36, float %2816, float %2820, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2822 = extractvalue %dx.types.ResRet.f32 %2821, 0
  %2823 = fmul fast float %2822, %2805
  %2824 = fadd fast float %2823, %2804
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2826 = fmul fast float %2825, %2789
  %2827 = fsub fast float 1.000000e+00, %2826
  br label %2828

; <label>:2828                                    ; preds = %2793, %2791
  %2829 = phi float [ %2827, %2793 ], [ 1.000000e+00, %2791 ]
  %2830 = fmul fast float %2829, %2787
  br label %2831

; <label>:2831                                    ; preds = %2828, %2777, %1712
  %2832 = phi float [ 1.000000e+00, %1712 ], [ %2830, %2828 ], [ %2787, %2777 ]
  %2833 = call float @dx.op.binary.f32(i32 36, float %2832, float %2832)  ; FMin(a,b)
  %2834 = call float @dx.op.binary.f32(i32 36, float %2832, float %2833)  ; FMin(a,b)
  %2835 = fcmp fast ogt float %2834, 0.000000e+00
  br i1 %2835, label %2836, label %3001, !dx.controlflow.hints !115

; <label>:2836                                    ; preds = %2831
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.CBufRet.f32 %2837, 1
  %2840 = extractvalue %dx.types.CBufRet.f32 %2837, 2
  %2841 = extractvalue %dx.types.CBufRet.f32 %2837, 3
  %2842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2843 = extractvalue %dx.types.CBufRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.CBufRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.CBufRet.f32 %2842, 2
  %2846 = extractvalue %dx.types.CBufRet.f32 %2842, 3
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.CBufRet.f32 %2847, 1
  %2850 = extractvalue %dx.types.CBufRet.f32 %2847, 2
  %2851 = extractvalue %dx.types.CBufRet.f32 %2847, 3
  %2852 = fmul fast float %2838, %1732
  %2853 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %2839, float %2852)  ; FMad(a,b,c)
  %2854 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %2840, float %2853)  ; FMad(a,b,c)
  %2855 = fadd fast float %2854, %2841
  %2856 = fmul fast float %2843, %1732
  %2857 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %2844, float %2856)  ; FMad(a,b,c)
  %2858 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %2845, float %2857)  ; FMad(a,b,c)
  %2859 = fadd fast float %2858, %2846
  %2860 = fmul fast float %2848, %1732
  %2861 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %2849, float %2860)  ; FMad(a,b,c)
  %2862 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %2850, float %2861)  ; FMad(a,b,c)
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.CBufRet.f32 %2863, 1
  %2866 = extractvalue %dx.types.CBufRet.f32 %2863, 3
  %2867 = fmul fast float %2866, %2855
  %2868 = fmul fast float %2866, %2859
  %2869 = fadd fast float %2867, %2864
  %2870 = fadd fast float %2868, %2865
  %2871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2872 = extractvalue %dx.types.CBufRet.f32 %2871, 0
  %2873 = extractvalue %dx.types.CBufRet.f32 %2871, 1
  %2874 = fsub fast float %2869, %2872
  %2875 = fsub fast float %2870, %2873
  %2876 = fcmp fast olt float %2874, 0.000000e+00
  %2877 = fcmp fast olt float %2875, 0.000000e+00
  %2878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.CBufRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.CBufRet.f32 %2878, 2
  %2882 = extractvalue %dx.types.CBufRet.f32 %2878, 3
  %2883 = select i1 %2876, float %2879, float %2881
  %2884 = select i1 %2877, float %2880, float %2882
  %2885 = fmul fast float %2883, %2874
  %2886 = fmul fast float %2884, %2875
  %2887 = call float @dx.op.unary.f32(i32 6, float %2885)  ; FAbs(value)
  %2888 = call float @dx.op.unary.f32(i32 6, float %2886)  ; FAbs(value)
  %2889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2889, 0
  %2891 = call float @dx.op.binary.f32(i32 35, float %2887, float %2888)  ; FMax(a,b)
  %2892 = fsub fast float %2890, %2891
  %2893 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2894 = fcmp fast ogt float %2893, 0.000000e+00
  br i1 %2894, label %2895, label %2936, !dx.controlflow.hints !116

; <label>:2895                                    ; preds = %2836
  %2896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2869, float %2870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2897 = extractvalue %dx.types.ResRet.f32 %2896, 1
  %2898 = fcmp fast ogt float %2897, 0.000000e+00
  br i1 %2898, label %2899, label %2932

; <label>:2899                                    ; preds = %2895
  %2900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %39, float %2869, float %2870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2901 = extractvalue %dx.types.ResRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.ResRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.ResRet.f32 %2900, 2
  %2904 = extractvalue %dx.types.ResRet.f32 %2900, 3
  %2905 = fsub fast float 1.000000e+00, %2851
  %2906 = fsub fast float %2905, %2862
  %2907 = fmul fast float %2906, 0x400921FB60000000
  %2908 = fadd fast float %2907, 0x3FF921FB60000000
  %2909 = call float @dx.op.unary.f32(i32 13, float %2908)  ; Sin(value)
  %2910 = fadd fast float %2909, -1.000000e+00
  %2911 = fmul fast float %2910, 0x3FD45F3060000000
  %2912 = fmul fast float %2906, 0x401921FB60000000
  %2913 = fadd fast float %2912, 0x400921FB60000000
  %2914 = call float @dx.op.unary.f32(i32 13, float %2913)  ; Sin(value)
  %2915 = fadd fast float %2914, 0x3E7777A5C0000000
  %2916 = fmul fast float %2915, 0x3FC45F3060000000
  %2917 = fmul fast float %2906, 0x4022D97C80000000
  %2918 = fadd fast float %2917, 0x4012D97C80000000
  %2919 = call float @dx.op.unary.f32(i32 13, float %2918)  ; Sin(value)
  %2920 = fadd fast float %2919, 1.000000e+00
  %2921 = fmul fast float %2920, 0x3FBB2995E0000000
  %2922 = fmul fast float %2906, 0x402921FB60000000
  %2923 = fadd fast float %2922, 0x401921FB60000000
  %2924 = call float @dx.op.unary.f32(i32 13, float %2923)  ; Sin(value)
  %2925 = fadd fast float %2924, 0xBE8777A5C0000000
  %2926 = fmul fast float %2925, 0x3FB45F3060000000
  %2927 = call float @dx.op.dot4.f32(i32 56, float %2901, float %2902, float %2903, float %2904, float %2911, float %2916, float %2921, float %2926)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2928 = fmul fast float %2927, 0xBFF7154760000000
  %2929 = call float @dx.op.unary.f32(i32 21, float %2928)  ; Exp(value)
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = fadd float %2930, -1.000000e+00
  br label %2932

; <label>:2932                                    ; preds = %2899, %2895
  %2933 = phi float [ %2931, %2899 ], [ 0.000000e+00, %2895 ]
  %2934 = fmul fast float %2933, %2893
  %2935 = fadd fast float %2934, 1.000000e+00
  br label %2936

; <label>:2936                                    ; preds = %2932, %2836
  %2937 = phi float [ %2935, %2932 ], [ 1.000000e+00, %2836 ]
  %2938 = fmul fast float %2937, %2832
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 0
  %2941 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2942 = extractvalue %dx.types.CBufRet.f32 %2939, 2
  %2943 = fadd fast float %2940, %314
  %2944 = fadd fast float %2941, %315
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 1
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.CBufRet.f32 %2947, 2
  %2951 = fsub fast float -0.000000e+00, %2943
  %2952 = fsub fast float -0.000000e+00, %2944
  %2953 = fsub fast float %346, %2942
  %2954 = fadd fast float %2953, %2946
  %2955 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2951, float %2952, float %2954)  ; Dot3(ax,ay,az,bx,by,bz)
  %2956 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2948, float %2949, float %2950)  ; Dot3(ax,ay,az,bx,by,bz)
  %2957 = fdiv fast float 1.000000e+00, %2956
  %2958 = fmul fast float %2957, %2955
  %2959 = fmul fast float %2948, %2958
  %2960 = fmul fast float %2949, %2958
  %2961 = fadd fast float %2959, %2943
  %2962 = fadd fast float %2960, %2944
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.CBufRet.f32 %2963, 1
  %2966 = fsub fast float %2961, %2964
  %2967 = fsub fast float %2962, %2965
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %2970 = extractvalue %dx.types.CBufRet.f32 %2968, 3
  %2971 = fmul fast float %2966, %2969
  %2972 = fmul fast float %2967, %2970
  %2973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2974 = extractvalue %dx.types.CBufRet.i32 %2973, 3
  %2975 = icmp eq i32 %2974, 0
  br i1 %2975, label %2981, label %2976

; <label>:2976                                    ; preds = %2936
  %2977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %38, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.ResRet.f32 %2977, 2
  br label %2986

; <label>:2981                                    ; preds = %2936
  %2982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %39, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  br label %2986

; <label>:2986                                    ; preds = %2981, %2976
  %2987 = phi float [ %2978, %2976 ], [ %2983, %2981 ]
  %2988 = phi float [ %2979, %2976 ], [ %2984, %2981 ]
  %2989 = phi float [ %2980, %2976 ], [ %2985, %2981 ]
  %2990 = extractvalue %dx.types.CBufRet.f32 %2945, 2
  %2991 = fmul fast float %2990, %2987
  %2992 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2993 = fsub fast float %2958, %2992
  %2994 = fsub fast float %2993, %2991
  %2995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2994)  ; FMax(a,b)
  %2996 = fmul fast float %2995, %2988
  %2997 = call float @dx.op.binary.f32(i32 36, float %2989, float %2996)  ; FMin(a,b)
  %2998 = fmul fast float %2997, 0xBFF7154760000000
  %2999 = call float @dx.op.unary.f32(i32 21, float %2998)  ; Exp(value)
  %3000 = fmul fast float %2938, %2999
  br label %3001

; <label>:3001                                    ; preds = %2986, %2831
  %3002 = phi float [ %3000, %2986 ], [ %2832, %2831 ]
  %3003 = call float @dx.op.binary.f32(i32 36, float %3002, float %3002)  ; FMin(a,b)
  %3004 = call float @dx.op.binary.f32(i32 36, float %3002, float %3003)  ; FMin(a,b)
  %3005 = fcmp fast ogt float %3004, 0.000000e+00
  br i1 %3005, label %3006, label %3484, !dx.controlflow.hints !117

; <label>:3006                                    ; preds = %3001
  %3007 = fmul fast float %3002, %1724
  %3008 = fmul fast float %3002, %1725
  %3009 = fmul fast float %3002, %1726
  %3010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.i32 %3010, 0
  %3012 = and i32 %3011, 64
  %3013 = icmp ne i32 %3012, 0
  %3014 = fcmp fast ule float %316, 0.000000e+00
  %3015 = fmul fast float %1713, 5.120000e+02
  %3016 = fmul fast float %1714, 5.120000e+02
  %3017 = fmul fast float %1715, 5.120000e+02
  %3018 = fadd fast float %3017, %316
  %3019 = fsub fast float -0.000000e+00, %3018
  %3020 = select i1 %3014, float %3018, float %3019
  %3021 = fsub fast float %3020, %316
  %3022 = call float @dx.op.dot3.f32(i32 55, float %3015, float %3016, float %3021, float %3015, float %3016, float %3021)  ; Dot3(ax,ay,az,bx,by,bz)
  %3023 = call float @dx.op.unary.f32(i32 25, float %3022)  ; Rsqrt(value)
  %3024 = fmul fast float %3023, %3015
  %3025 = fmul fast float %3023, %3016
  %3026 = fmul fast float %3023, %3021
  %3027 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %3028 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3024, float %3025, float %3026)  ; Dot3(ax,ay,az,bx,by,bz)
  %3029 = fdiv fast float 1.000000e+00, %3028
  %3030 = fmul fast float %3029, %3027
  %3031 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %316, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3032 = fcmp fast ogt float %3031, 0.000000e+00
  %3033 = fcmp fast olt float %3031, 0.000000e+00
  %3034 = zext i1 %3032 to i32
  %3035 = zext i1 %3033 to i32
  %3036 = sub nsw i32 %3034, %3035
  %3037 = sitofp i32 %3036 to float
  %3038 = call float @dx.op.dot3.f32(i32 55, float %3015, float %3016, float %3020, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3039 = fcmp fast ogt float %3038, 0.000000e+00
  %3040 = fcmp fast olt float %3038, 0.000000e+00
  %3041 = zext i1 %3039 to i32
  %3042 = zext i1 %3040 to i32
  %3043 = sub nsw i32 %3041, %3042
  %3044 = sitofp i32 %3043 to float
  %3045 = fcmp fast une float %3037, %3044
  br i1 %3045, label %3046, label %3056

; <label>:3046                                    ; preds = %3006
  %3047 = fmul fast float %3030, %3026
  %3048 = fmul fast float %3030, %3025
  %3049 = fmul fast float %3030, %3024
  %3050 = fmul fast float %3049, %3049
  %3051 = fmul fast float %3048, %3048
  %3052 = fadd fast float %3050, %3051
  %3053 = fmul fast float %3047, %3047
  %3054 = fadd fast float %3052, %3053
  %3055 = call float @dx.op.unary.f32(i32 24, float %3054)  ; Sqrt(value)
  br label %3066

; <label>:3056                                    ; preds = %3006
  %3057 = icmp slt i32 %3036, 0
  br i1 %3057, label %3058, label %3066

; <label>:3058                                    ; preds = %3056
  %3059 = fsub fast float %316, %3020
  %3060 = fmul fast float %3015, %3015
  %3061 = fmul fast float %3016, %3016
  %3062 = fadd fast float %3060, %3061
  %3063 = fmul fast float %3059, %3059
  %3064 = fadd fast float %3062, %3063
  %3065 = call float @dx.op.unary.f32(i32 24, float %3064)  ; Sqrt(value)
  br label %3066

; <label>:3066                                    ; preds = %3058, %3056, %3046
  %3067 = phi float [ %3055, %3046 ], [ %3065, %3058 ], [ 0.000000e+00, %3056 ]
  %3068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.i32 %3068, 1
  %3070 = icmp ne i32 %3069, 0
  %3071 = and i1 %3014, %3070
  %3072 = call float @dx.op.dot3.f32(i32 55, float %3024, float %3025, float %3026, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3073 = fmul fast float %3072, %3072
  %3074 = fsub fast float 1.000000e+00, %3073
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 0
  %3077 = extractvalue %dx.types.CBufRet.f32 %3075, 1
  %3078 = extractvalue %dx.types.CBufRet.f32 %3075, 2
  %3079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3080 = extractvalue %dx.types.CBufRet.f32 %3079, 0
  %3081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3082 = extractvalue %dx.types.CBufRet.f32 %3081, 0
  %3083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3083, 0
  %3085 = extractvalue %dx.types.CBufRet.f32 %3079, 1
  %3086 = extractvalue %dx.types.CBufRet.f32 %3081, 1
  %3087 = extractvalue %dx.types.CBufRet.f32 %3083, 1
  %3088 = extractvalue %dx.types.CBufRet.f32 %3079, 3
  %3089 = extractvalue %dx.types.CBufRet.f32 %3081, 3
  %3090 = extractvalue %dx.types.CBufRet.f32 %3083, 3
  %3091 = fadd fast float %3076, %314
  %3092 = fadd fast float %3077, %315
  %3093 = fadd fast float %3078, %316
  %3094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %3095 = extractvalue %dx.types.CBufRet.f32 %3094, 0
  %3096 = extractvalue %dx.types.CBufRet.f32 %3094, 1
  %3097 = extractvalue %dx.types.CBufRet.f32 %3094, 2
  %3098 = extractvalue %dx.types.CBufRet.f32 %3094, 3
  br i1 %3071, label %3099, label %3292

; <label>:3099                                    ; preds = %3066
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 0
  %3102 = fmul fast float %3101, %3101
  %3103 = fmul fast float %3102, %3074
  %3104 = fsub fast float 1.000000e+00, %3103
  %3105 = fcmp fast oge float %3104, 0.000000e+00
  %3106 = fmul fast float %3101, %3024
  %3107 = fmul fast float %3101, %3025
  %3108 = fmul fast float %3101, %3026
  %3109 = call float @dx.op.unary.f32(i32 24, float %3104)  ; Sqrt(value)
  %3110 = fmul fast float %3101, %3072
  %3111 = fsub fast float -0.000000e+00, %3109
  %3112 = fsub fast float %3111, %3110
  %3113 = fadd fast float %3112, %3108
  %3114 = select i1 %3105, float %3106, float 0.000000e+00
  %3115 = select i1 %3105, float %3107, float 0.000000e+00
  %3116 = select i1 %3105, float %3113, float 0.000000e+00
  %3117 = fmul fast float %3114, %3067
  %3118 = fmul fast float %3115, %3067
  %3119 = fmul fast float %3116, %3067
  %3120 = fadd fast float %3091, %3117
  %3121 = fadd fast float %3120, %3088
  %3122 = fadd fast float %3092, %3118
  %3123 = fadd fast float %3122, %3089
  %3124 = fadd fast float %3093, %3119
  %3125 = fadd fast float %3124, %3090
  %3126 = fmul fast float %3121, %3080
  %3127 = call float @dx.op.tertiary.f32(i32 46, float %3123, float %3082, float %3126)  ; FMad(a,b,c)
  %3128 = call float @dx.op.tertiary.f32(i32 46, float %3125, float %3084, float %3127)  ; FMad(a,b,c)
  %3129 = fmul fast float %3121, %3085
  %3130 = call float @dx.op.tertiary.f32(i32 46, float %3123, float %3086, float %3129)  ; FMad(a,b,c)
  %3131 = call float @dx.op.tertiary.f32(i32 46, float %3125, float %3087, float %3130)  ; FMad(a,b,c)
  %3132 = fsub fast float %3128, %3088
  %3133 = fsub fast float %3132, %3095
  %3134 = fadd fast float %3133, %3097
  %3135 = fsub fast float %3131, %3089
  %3136 = fsub fast float %3135, %3096
  %3137 = fadd fast float %3136, %3097
  %3138 = fmul fast float %3134, %3098
  %3139 = fmul fast float %3137, %3098
  %3140 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  %3141 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  %3142 = fsub fast float 1.000000e+00, %3140
  %3143 = fsub fast float 1.000000e+00, %3141
  %3144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %3142, float %3143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3145 = extractvalue %dx.types.ResRet.f32 %3144, 0
  %3146 = fmul fast float %3145, 0x3FBC5ABC00000000
  %3147 = extractvalue %dx.types.CBufRet.f32 %3100, 1
  %3148 = fmul fast float %3147, %3147
  %3149 = fmul fast float %3148, %3074
  %3150 = fsub fast float 1.000000e+00, %3149
  %3151 = fcmp fast oge float %3150, 0.000000e+00
  %3152 = fmul fast float %3147, %3024
  %3153 = fmul fast float %3147, %3025
  %3154 = fmul fast float %3147, %3026
  %3155 = call float @dx.op.unary.f32(i32 24, float %3150)  ; Sqrt(value)
  %3156 = fmul fast float %3147, %3072
  %3157 = fsub fast float -0.000000e+00, %3155
  %3158 = fsub fast float %3157, %3156
  %3159 = fadd fast float %3158, %3154
  %3160 = select i1 %3151, float %3152, float 0.000000e+00
  %3161 = select i1 %3151, float %3153, float 0.000000e+00
  %3162 = select i1 %3151, float %3159, float 0.000000e+00
  %3163 = fmul fast float %3160, %3067
  %3164 = fmul fast float %3161, %3067
  %3165 = fmul fast float %3162, %3067
  %3166 = fadd fast float %3091, %3163
  %3167 = fadd fast float %3166, %3088
  %3168 = fadd fast float %3092, %3164
  %3169 = fadd fast float %3168, %3089
  %3170 = fadd fast float %3093, %3165
  %3171 = fadd fast float %3170, %3090
  %3172 = fmul fast float %3167, %3080
  %3173 = call float @dx.op.tertiary.f32(i32 46, float %3169, float %3082, float %3172)  ; FMad(a,b,c)
  %3174 = call float @dx.op.tertiary.f32(i32 46, float %3171, float %3084, float %3173)  ; FMad(a,b,c)
  %3175 = fmul fast float %3167, %3085
  %3176 = call float @dx.op.tertiary.f32(i32 46, float %3169, float %3086, float %3175)  ; FMad(a,b,c)
  %3177 = call float @dx.op.tertiary.f32(i32 46, float %3171, float %3087, float %3176)  ; FMad(a,b,c)
  %3178 = fsub fast float %3174, %3088
  %3179 = fsub fast float %3178, %3095
  %3180 = fadd fast float %3179, %3097
  %3181 = fsub fast float %3177, %3089
  %3182 = fsub fast float %3181, %3096
  %3183 = fadd fast float %3182, %3097
  %3184 = fmul fast float %3180, %3098
  %3185 = fmul fast float %3183, %3098
  %3186 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  %3187 = call float @dx.op.unary.f32(i32 7, float %3185)  ; Saturate(value)
  %3188 = fsub fast float 1.000000e+00, %3186
  %3189 = fsub fast float 1.000000e+00, %3187
  %3190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %3188, float %3189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  %3192 = fmul fast float %3191, 0x3F9E4BBD60000000
  %3193 = extractvalue %dx.types.CBufRet.f32 %3100, 2
  %3194 = fmul fast float %3193, %3193
  %3195 = fmul fast float %3194, %3074
  %3196 = fsub fast float 1.000000e+00, %3195
  %3197 = fcmp fast oge float %3196, 0.000000e+00
  %3198 = fmul fast float %3193, %3024
  %3199 = fmul fast float %3193, %3025
  %3200 = fmul fast float %3193, %3026
  %3201 = call float @dx.op.unary.f32(i32 24, float %3196)  ; Sqrt(value)
  %3202 = fmul fast float %3193, %3072
  %3203 = fsub fast float -0.000000e+00, %3201
  %3204 = fsub fast float %3203, %3202
  %3205 = fadd fast float %3204, %3200
  %3206 = select i1 %3197, float %3198, float 0.000000e+00
  %3207 = select i1 %3197, float %3199, float 0.000000e+00
  %3208 = select i1 %3197, float %3205, float 0.000000e+00
  %3209 = fmul fast float %3206, %3067
  %3210 = fmul fast float %3207, %3067
  %3211 = fmul fast float %3208, %3067
  %3212 = fadd fast float %3091, %3209
  %3213 = fadd fast float %3212, %3088
  %3214 = fadd fast float %3092, %3210
  %3215 = fadd fast float %3214, %3089
  %3216 = fadd fast float %3093, %3211
  %3217 = fadd fast float %3216, %3090
  %3218 = fmul fast float %3213, %3080
  %3219 = call float @dx.op.tertiary.f32(i32 46, float %3215, float %3082, float %3218)  ; FMad(a,b,c)
  %3220 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3084, float %3219)  ; FMad(a,b,c)
  %3221 = fmul fast float %3213, %3085
  %3222 = call float @dx.op.tertiary.f32(i32 46, float %3215, float %3086, float %3221)  ; FMad(a,b,c)
  %3223 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3087, float %3222)  ; FMad(a,b,c)
  %3224 = fsub fast float %3220, %3088
  %3225 = fsub fast float %3224, %3095
  %3226 = fadd fast float %3225, %3097
  %3227 = fsub fast float %3223, %3089
  %3228 = fsub fast float %3227, %3096
  %3229 = fadd fast float %3228, %3097
  %3230 = fmul fast float %3226, %3098
  %3231 = fmul fast float %3229, %3098
  %3232 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3233 = call float @dx.op.unary.f32(i32 7, float %3231)  ; Saturate(value)
  %3234 = fsub fast float 1.000000e+00, %3232
  %3235 = fsub fast float 1.000000e+00, %3233
  %3236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %3234, float %3235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = fmul fast float %3237, 0x3FDDEACB00000000
  %3239 = fadd fast float %3238, %3192
  %3240 = extractvalue %dx.types.CBufRet.f32 %3100, 3
  %3241 = fmul fast float %3240, %3240
  %3242 = fmul fast float %3241, %3074
  %3243 = fsub fast float 1.000000e+00, %3242
  %3244 = fcmp fast oge float %3243, 0.000000e+00
  %3245 = fmul fast float %3240, %3024
  %3246 = fmul fast float %3240, %3025
  %3247 = fmul fast float %3240, %3026
  %3248 = call float @dx.op.unary.f32(i32 24, float %3243)  ; Sqrt(value)
  %3249 = fmul fast float %3240, %3072
  %3250 = fsub fast float -0.000000e+00, %3248
  %3251 = fsub fast float %3250, %3249
  %3252 = fadd fast float %3251, %3247
  %3253 = select i1 %3244, float %3245, float 0.000000e+00
  %3254 = select i1 %3244, float %3246, float 0.000000e+00
  %3255 = select i1 %3244, float %3252, float 0.000000e+00
  %3256 = fmul fast float %3253, %3067
  %3257 = fmul fast float %3254, %3067
  %3258 = fmul fast float %3255, %3067
  %3259 = fadd fast float %3091, %3256
  %3260 = fadd fast float %3259, %3088
  %3261 = fadd fast float %3092, %3257
  %3262 = fadd fast float %3261, %3089
  %3263 = fadd fast float %3093, %3258
  %3264 = fadd fast float %3263, %3090
  %3265 = fmul fast float %3260, %3080
  %3266 = call float @dx.op.tertiary.f32(i32 46, float %3262, float %3082, float %3265)  ; FMad(a,b,c)
  %3267 = call float @dx.op.tertiary.f32(i32 46, float %3264, float %3084, float %3266)  ; FMad(a,b,c)
  %3268 = fmul fast float %3260, %3085
  %3269 = call float @dx.op.tertiary.f32(i32 46, float %3262, float %3086, float %3268)  ; FMad(a,b,c)
  %3270 = call float @dx.op.tertiary.f32(i32 46, float %3264, float %3087, float %3269)  ; FMad(a,b,c)
  %3271 = fsub fast float %3267, %3088
  %3272 = fsub fast float %3271, %3095
  %3273 = fadd fast float %3272, %3097
  %3274 = fsub fast float %3270, %3089
  %3275 = fsub fast float %3274, %3096
  %3276 = fadd fast float %3275, %3097
  %3277 = fmul fast float %3273, %3098
  %3278 = fmul fast float %3276, %3098
  %3279 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3280 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3281 = fsub fast float 1.000000e+00, %3279
  %3282 = fsub fast float 1.000000e+00, %3280
  %3283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %3281, float %3282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  %3285 = fmul fast float %3284, 0x3FE0183CA0000000
  %3286 = fmul fast float %3284, 0x3FB51033E0000000
  %3287 = fadd fast float %3239, %3285
  %3288 = fadd fast float %3237, %3191
  %3289 = fmul fast float %3288, 0x3FD9D2A200000000
  %3290 = fadd fast float %3286, %3146
  %3291 = fadd fast float %3290, %3289
  br label %3338

; <label>:3292                                    ; preds = %3066
  %3293 = fmul fast float %3074, 0x3FE2024E20000000
  %3294 = fsub fast float 1.000000e+00, %3293
  %3295 = fcmp fast oge float %3294, 0.000000e+00
  %3296 = fmul fast float %3024, 0x3FE8018960000000
  %3297 = fmul fast float %3025, 0x3FE8018960000000
  %3298 = fmul fast float %3026, 0x3FE8018960000000
  %3299 = call float @dx.op.unary.f32(i32 24, float %3294)  ; Sqrt(value)
  %3300 = fmul fast float %3072, 0x3FE8018960000000
  %3301 = fsub fast float %3298, %3299
  %3302 = fsub fast float %3301, %3300
  %3303 = select i1 %3295, float %3296, float 0.000000e+00
  %3304 = select i1 %3295, float %3297, float 0.000000e+00
  %3305 = select i1 %3295, float %3302, float 0.000000e+00
  %3306 = select i1 %3014, float %3303, float %3024
  %3307 = select i1 %3014, float %3304, float %3025
  %3308 = select i1 %3014, float %3305, float %3026
  %3309 = fmul fast float %3306, %3067
  %3310 = fmul fast float %3307, %3067
  %3311 = fmul fast float %3308, %3067
  %3312 = fadd fast float %3091, %3309
  %3313 = fadd fast float %3312, %3088
  %3314 = fadd fast float %3092, %3310
  %3315 = fadd fast float %3314, %3089
  %3316 = fadd fast float %3093, %3311
  %3317 = fadd fast float %3316, %3090
  %3318 = fmul fast float %3313, %3080
  %3319 = call float @dx.op.tertiary.f32(i32 46, float %3315, float %3082, float %3318)  ; FMad(a,b,c)
  %3320 = call float @dx.op.tertiary.f32(i32 46, float %3317, float %3084, float %3319)  ; FMad(a,b,c)
  %3321 = fmul fast float %3313, %3085
  %3322 = call float @dx.op.tertiary.f32(i32 46, float %3315, float %3086, float %3321)  ; FMad(a,b,c)
  %3323 = call float @dx.op.tertiary.f32(i32 46, float %3317, float %3087, float %3322)  ; FMad(a,b,c)
  %3324 = fsub fast float %3320, %3088
  %3325 = fsub fast float %3324, %3095
  %3326 = fadd fast float %3325, %3097
  %3327 = fsub fast float %3323, %3089
  %3328 = fsub fast float %3327, %3096
  %3329 = fadd fast float %3328, %3097
  %3330 = fmul fast float %3326, %3098
  %3331 = fmul fast float %3329, %3098
  %3332 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  %3333 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3334 = fsub fast float 1.000000e+00, %3332
  %3335 = fsub fast float 1.000000e+00, %3333
  %3336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %3334, float %3335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3337 = extractvalue %dx.types.ResRet.f32 %3336, 0
  br label %3338

; <label>:3338                                    ; preds = %3292, %3099
  %3339 = phi float [ %3337, %3292 ], [ %3287, %3099 ]
  %3340 = phi float [ %3337, %3292 ], [ %3291, %3099 ]
  %3341 = phi float [ %3337, %3292 ], [ %3145, %3099 ]
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 0
  %3344 = call float @dx.op.unary.f32(i32 6, float %3343)  ; FAbs(value)
  %3345 = fmul fast float %3067, %3067
  %3346 = fadd fast float %3345, 1.000000e+00
  %3347 = fdiv fast float %3344, %3346
  %3348 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3349 = call float @dx.op.unary.f32(i32 6, float %3072)  ; FAbs(value)
  %3350 = fsub fast float 1.000000e+00, %3349
  %3351 = bitcast float %3350 to i32
  %3352 = sitofp i32 %3351 to float
  %3353 = fptosi float %3352 to i32
  %3354 = bitcast i32 %3353 to float
  %3355 = fmul fast float %3354, 0x3FEF333340000000
  %3356 = fadd fast float %3355, 0x3F999999A0000000
  %3357 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3358 = fsub fast float 1.000000e+00, %3357
  %3359 = fadd fast float %3339, 1.000000e+00
  %3360 = fadd fast float %3340, 1.000000e+00
  %3361 = fadd fast float %3341, 1.000000e+00
  %3362 = fmul fast float %3358, %3359
  %3363 = fmul fast float %3358, %3360
  %3364 = fmul fast float %3358, %3361
  %3365 = fmul fast float %3348, %3359
  %3366 = fmul fast float %3365, %3357
  %3367 = fmul fast float %3348, %3360
  %3368 = fmul fast float %3367, %3357
  %3369 = fmul fast float %3348, %3361
  %3370 = fmul fast float %3369, %3357
  %3371 = fadd fast float %3366, 1.000000e+00
  %3372 = fadd fast float %3368, 1.000000e+00
  %3373 = fadd fast float %3370, 1.000000e+00
  %3374 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %3375 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3376 = select i1 %3014, float %3362, float %3371
  %3377 = select i1 %3014, float %3363, float %3372
  %3378 = select i1 %3014, float %3364, float %3373
  %3379 = select i1 %3013, float %3375, float 0.000000e+00
  %3380 = fadd fast float %3376, -1.000000e+00
  %3381 = fadd fast float %3377, -1.000000e+00
  %3382 = fadd fast float %3378, -1.000000e+00
  %3383 = fmul fast float %3380, %3379
  %3384 = fmul fast float %3381, %3379
  %3385 = fmul fast float %3382, %3379
  %3386 = fadd fast float %3383, 1.000000e+00
  %3387 = fadd fast float %3384, 1.000000e+00
  %3388 = fadd fast float %3385, 1.000000e+00
  %3389 = fmul fast float %3007, %3386
  %3390 = fmul fast float %3008, %3387
  %3391 = fmul fast float %3009, %3388
  %3392 = fsub fast float %1713, %349
  %3393 = fsub fast float %1714, %350
  %3394 = fsub fast float %1715, %351
  %3395 = call float @dx.op.dot3.f32(i32 55, float %3392, float %3393, float %3394, float %3392, float %3393, float %3394)  ; Dot3(ax,ay,az,bx,by,bz)
  %3396 = call float @dx.op.unary.f32(i32 25, float %3395)  ; Rsqrt(value)
  %3397 = fmul fast float %3396, %3392
  %3398 = fmul fast float %3396, %3393
  %3399 = fmul fast float %3396, %3394
  %3400 = call float @dx.op.dot3.f32(i32 55, float %1713, float %1714, float %1715, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %3401 = call float @dx.op.dot3.f32(i32 55, float %352, float %353, float %354, float %3397, float %3398, float %3399)  ; Dot3(ax,ay,az,bx,by,bz)
  %3402 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3403 = fmul fast float %3402, %3402
  %3404 = fmul fast float %3403, 0x47DE623840000000
  %3405 = call float @dx.op.unary.f32(i32 7, float %3404)  ; Saturate(value)
  %3406 = fmul fast float %3405, %3402
  %3407 = call float @dx.op.dot3.f32(i32 55, float %245, float %246, float %247, float %3397, float %3398, float %3399)  ; Dot3(ax,ay,az,bx,by,bz)
  %3408 = fmul fast float %3407, %3407
  %3409 = call float @dx.op.unary.f32(i32 6, float %3400)  ; FAbs(value)
  %3410 = fsub fast float 1.000000e+00, %369
  %3411 = fmul fast float %357, %357
  %3412 = fmul fast float %3411, %3410
  %3413 = fadd fast float %3412, %369
  %3414 = bitcast float %3413 to i32
  %3415 = ashr i32 %3414, 1
  %3416 = add nsw i32 %3415, 532487669
  %3417 = bitcast i32 %3416 to float
  %3418 = fadd fast float %3417, %357
  %3419 = fmul fast float %369, %3408
  %3420 = fsub fast float 1.000000e+00, %3408
  %3421 = fadd fast float %3420, %3419
  %3422 = fmul fast float %3409, %3409
  %3423 = fmul fast float %3422, %3410
  %3424 = fadd fast float %3423, %369
  %3425 = bitcast float %3424 to i32
  %3426 = ashr i32 %3425, 1
  %3427 = add nsw i32 %3426, 532487669
  %3428 = bitcast i32 %3427 to float
  %3429 = fadd fast float %3428, %3409
  %3430 = fmul fast float %3421, %3421
  %3431 = fmul fast float %3430, %3418
  %3432 = fmul fast float %3431, %3429
  %3433 = fdiv fast float 0x3FF0A00000000000, %3432
  %3434 = fmul fast float %3433, %369
  %3435 = call float @dx.op.unary.f32(i32 6, float %3401)  ; FAbs(value)
  %3436 = fsub fast float 1.000000e+00, %3435
  %3437 = bitcast float %3436 to i32
  %3438 = sitofp i32 %3437 to float
  %3439 = fmul fast float %3438, 5.000000e+00
  %3440 = fadd fast float %3439, 0xC1EFBF8940000000
  %3441 = fptosi float %3440 to i32
  %3442 = bitcast i32 %3441 to float
  %3443 = fsub fast float 1.000000e+00, %335
  %3444 = fsub fast float 1.000000e+00, %336
  %3445 = fsub fast float 1.000000e+00, %355
  %3446 = fmul fast float %3442, %3443
  %3447 = fmul fast float %3442, %3444
  %3448 = fmul fast float %3442, %3445
  %3449 = fadd fast float %3446, %335
  %3450 = fadd fast float %3447, %336
  %3451 = fadd fast float %3448, %355
  %3452 = fmul fast float %3400, 9.843750e-01
  %3453 = fadd fast float %3452, 7.812500e-03
  %3454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3453, float %1199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 2
  %3456 = extractvalue %dx.types.ResRet.f32 %3454, 3
  %3457 = fmul fast float %3455, %335
  %3458 = fmul fast float %3455, %336
  %3459 = fmul fast float %3455, %355
  %3460 = fadd fast float %3457, %3456
  %3461 = fadd fast float %3458, %3456
  %3462 = fadd fast float %3459, %3456
  %3463 = call float @dx.op.binary.f32(i32 35, float %3461, float %3462)  ; FMax(a,b)
  %3464 = call float @dx.op.binary.f32(i32 35, float %3460, float %3463)  ; FMax(a,b)
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = fmul fast float %3406, %3389
  %3467 = fmul fast float %3466, %3465
  %3468 = fmul fast float %3406, %3390
  %3469 = fmul fast float %3468, %3465
  %3470 = fmul fast float %3406, %3391
  %3471 = fmul fast float %3470, %3465
  %3472 = fadd fast float %3467, %1703
  %3473 = fadd fast float %3469, %1704
  %3474 = fadd fast float %3471, %1705
  %3475 = fmul fast float %3466, %3434
  %3476 = fmul fast float %3475, %3449
  %3477 = fmul fast float %3468, %3434
  %3478 = fmul fast float %3477, %3450
  %3479 = fmul fast float %3470, %3434
  %3480 = fmul fast float %3479, %3451
  %3481 = fadd fast float %3476, %1706
  %3482 = fadd fast float %3478, %1707
  %3483 = fadd fast float %3480, %1708
  br label %3484

; <label>:3484                                    ; preds = %3338, %3001, %1699
  %3485 = phi float [ %1706, %1699 ], [ %1706, %3001 ], [ %3481, %3338 ]
  %3486 = phi float [ %1707, %1699 ], [ %1707, %3001 ], [ %3482, %3338 ]
  %3487 = phi float [ %1708, %1699 ], [ %1708, %3001 ], [ %3483, %3338 ]
  %3488 = phi float [ %1703, %1699 ], [ %1703, %3001 ], [ %3472, %3338 ]
  %3489 = phi float [ %1704, %1699 ], [ %1704, %3001 ], [ %3473, %3338 ]
  %3490 = phi float [ %1705, %1699 ], [ %1705, %3001 ], [ %3474, %3338 ]
  %3491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.i32 %3491, 0
  %3493 = icmp eq i32 %3492, 0
  br i1 %3493, label %4516, label %3494

; <label>:3494                                    ; preds = %3484
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 2
  %3497 = extractvalue %dx.types.CBufRet.f32 %3495, 3
  %3498 = fmul fast float %3496, %65
  %3499 = fmul fast float %3497, %66
  %3500 = fptoui float %3498 to i32
  %3501 = fptoui float %3499 to i32
  %3502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.CBufRet.f32 %3502, 2
  %3505 = extractvalue %dx.types.CBufRet.f32 %3502, 3
  %3506 = fadd fast float %280, -4.000000e+00
  %3507 = call float @dx.op.binary.f32(i32 35, float %3506, float 0.000000e+00)  ; FMax(a,b)
  %3508 = fadd fast float %3507, %3503
  %3509 = fmul fast float %3508, %3504
  %3510 = call float @dx.op.unary.f32(i32 23, float %3509)  ; Log(value)
  %3511 = fmul fast float %3510, %3505
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 2
  %3514 = fmul fast float %3511, %3513
  %3515 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.i32 %3516, 1
  %3518 = add i32 %3517, -1
  %3519 = uitofp i32 %3517 to float
  %3520 = fmul fast float %3519, %3515
  %3521 = fptoui float %3520 to i32
  %3522 = call i32 @dx.op.binary.i32(i32 40, i32 %3521, i32 %3518)  ; UMin(a,b)
  %3523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.i32 %3523, 2
  %3525 = extractvalue %dx.types.CBufRet.i32 %3523, 3
  %3526 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3501, i32 %3524, i32 %3500)  ; UMad(a,b,c)
  %3527 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3522, i32 %3525, i32 %3526)  ; UMad(a,b,c)
  %3528 = add nsw i32 %3492, -1
  %3529 = call i32 @dx.op.binary.i32(i32 37, i32 %3528, i32 0)  ; IMax(a,b)
  %3530 = call float @dx.op.binary.f32(i32 35, float %280, float 0.000000e+00)  ; FMax(a,b)
  %3531 = fptoui float %3530 to i32
  %3532 = lshr i32 %3531, 5
  %3533 = call i32 @dx.op.binary.i32(i32 40, i32 %3532, i32 8191)  ; UMin(a,b)
  %3534 = shl i32 %3533, 2
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = lshr i32 %3536, 16
  %3538 = and i32 %3536, 65535
  %3539 = lshr i32 %3536, 21
  %3540 = lshr i32 %3538, 5
  %3541 = call i32 @dx.op.binary.i32(i32 40, i32 %3540, i32 %3529)  ; UMin(a,b)
  %3542 = icmp ugt i32 %3539, %3541
  br i1 %3542, label %4516, label %3543

; <label>:3543                                    ; preds = %3494
  br label %3544

; <label>:3544                                    ; preds = %4506, %3543
  %3545 = phi i32 [ %4513, %4506 ], [ %3539, %3543 ]
  %3546 = phi float [ %4507, %4506 ], [ %3485, %3543 ]
  %3547 = phi float [ %4508, %4506 ], [ %3486, %3543 ]
  %3548 = phi float [ %4509, %4506 ], [ %3487, %3543 ]
  %3549 = phi float [ %4510, %4506 ], [ %3488, %3543 ]
  %3550 = phi float [ %4511, %4506 ], [ %3489, %3543 ]
  %3551 = phi float [ %4512, %4506 ], [ %3490, %3543 ]
  %3552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.i32 %3552, 0
  %3554 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3527, i32 %3553, i32 %3545)  ; UMad(a,b,c)
  %3555 = shl i32 %3554, 2
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = shl i32 %3545, 5
  %3559 = sub nsw i32 %3537, %3558
  %3560 = call i32 @dx.op.binary.i32(i32 37, i32 %3559, i32 0)  ; IMax(a,b)
  %3561 = call i32 @dx.op.binary.i32(i32 38, i32 %3560, i32 31)  ; IMin(a,b)
  %3562 = sub nsw i32 1, %3537
  %3563 = add nsw i32 %3562, %3538
  %3564 = call i32 @dx.op.binary.i32(i32 37, i32 %3563, i32 0)  ; IMax(a,b)
  %3565 = call i32 @dx.op.binary.i32(i32 38, i32 %3564, i32 32)  ; IMin(a,b)
  %3566 = and i32 %3565, 31
  %3567 = shl i32 -1, %3566
  %3568 = xor i32 %3567, -1
  %3569 = and i32 %3561, 31
  %3570 = shl i32 %3568, %3569
  %3571 = icmp eq i32 %3565, 32
  %3572 = select i1 %3571, i32 -1, i32 %3570
  %3573 = and i32 %3572, %3557
  %3574 = icmp eq i32 %3573, 0
  br i1 %3574, label %4506, label %3575

; <label>:3575                                    ; preds = %3544
  br label %3576

; <label>:3576                                    ; preds = %3725, %3575
  %3577 = phi i32 [ %3588, %3725 ], [ %3573, %3575 ]
  %3578 = phi float [ %3726, %3725 ], [ %3546, %3575 ]
  %3579 = phi float [ %3727, %3725 ], [ %3547, %3575 ]
  %3580 = phi float [ %3728, %3725 ], [ %3548, %3575 ]
  %3581 = phi float [ %3729, %3725 ], [ %3549, %3575 ]
  %3582 = phi float [ %3730, %3725 ], [ %3550, %3575 ]
  %3583 = phi float [ %3731, %3725 ], [ %3551, %3575 ]
  %3584 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3577)  ; FirstbitLo(value)
  %3585 = add i32 %3584, %3558
  %3586 = and i32 %3584, 31
  %3587 = shl i32 1, %3586
  %3588 = xor i32 %3587, %3577
  %3589 = mul i32 %3585, 112
  %3590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.ResRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.ResRet.f32 %3590, 2
  %3594 = add i32 %3589, 16
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3598 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3599 = add i32 %3589, 28
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = add i32 %3589, 32
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = add i32 %3589, 44
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = add i32 %3589, 48
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = fsub fast float -0.000000e+00, %3614
  %3616 = extractvalue %dx.types.ResRet.f32 %3611, 3
  %3617 = add i32 %3589, 64
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = add i32 %3589, 80
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3627 = add i32 %3589, 92
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = call float @dx.op.dot3.f32(i32 55, float %3591, float %3592, float %3593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3631 = select i1 %139, float %3625, float %3591
  %3632 = select i1 %139, float %3630, float %3592
  %3633 = select i1 %139, float %3626, float %3593
  %3634 = and i32 %3629, 65535
  %3635 = uitofp i32 %3634 to float
  %3636 = lshr i32 %3629, 16
  %3637 = uitofp i32 %3636 to float
  %3638 = and i32 %3601, 65535
  %3639 = and i32 %3601, 50331648
  %3640 = icmp eq i32 %3639, 33554432
  %3641 = call float @dx.op.dot3.f32(i32 55, float %3604, float %3605, float %3606, float %3604, float %3605, float %3606)  ; Dot3(ax,ay,az,bx,by,bz)
  %3642 = fsub fast float %314, %3612
  %3643 = fsub fast float %315, %3613
  %3644 = fsub fast float %316, %3614
  %3645 = call float @dx.op.dot3.f32(i32 55, float %3642, float %3643, float %3644, float %3604, float %3605, float %3606)  ; Dot3(ax,ay,az,bx,by,bz)
  %3646 = fdiv fast float %3645, %3641
  %3647 = call float @dx.op.binary.f32(i32 35, float %3646, float -1.000000e+00)  ; FMax(a,b)
  %3648 = call float @dx.op.binary.f32(i32 36, float %3647, float 1.000000e+00)  ; FMin(a,b)
  %3649 = fmul fast float %3648, %3604
  %3650 = fmul fast float %3648, %3605
  %3651 = fmul fast float %3648, %3606
  %3652 = fadd fast float %3649, %3612
  %3653 = fadd fast float %3650, %3613
  %3654 = fadd fast float %3651, %3614
  %3655 = fsub fast float %3652, %314
  %3656 = fsub fast float %3653, %315
  %3657 = fsub fast float %3654, %316
  %3658 = call float @dx.op.dot3.f32(i32 55, float %3655, float %3656, float %3657, float %3655, float %3656, float %3657)  ; Dot3(ax,ay,az,bx,by,bz)
  %3659 = call float @dx.op.unary.f32(i32 24, float %3658)  ; Sqrt(value)
  %3660 = fdiv fast float 1.000000e+00, %3659
  %3661 = fmul fast float %3655, %3660
  %3662 = fmul fast float %3656, %3660
  %3663 = fmul fast float %3657, %3660
  br i1 %3640, label %3664, label %3688

; <label>:3664                                    ; preds = %3576
  %3665 = fmul fast float %3621, %3596
  %3666 = fmul fast float %3621, %3597
  %3667 = fmul fast float %3621, %3598
  %3668 = fsub fast float %3665, %314
  %3669 = fadd fast float %3668, %3652
  %3670 = fsub fast float %3666, %315
  %3671 = fadd fast float %3670, %3653
  %3672 = fsub fast float %3667, %316
  %3673 = fadd fast float %3672, %3654
  %3674 = call float @dx.op.dot3.f32(i32 55, float %3669, float %3671, float %3673, float %3669, float %3671, float %3673)  ; Dot3(ax,ay,az,bx,by,bz)
  %3675 = call float @dx.op.unary.f32(i32 25, float %3674)  ; Rsqrt(value)
  %3676 = fmul fast float %3675, %3669
  %3677 = fmul fast float %3675, %3671
  %3678 = fmul fast float %3675, %3673
  %3679 = fsub fast float %314, %3652
  %3680 = fsub fast float %315, %3653
  %3681 = fsub fast float %316, %3654
  %3682 = fsub fast float -0.000000e+00, %3679
  %3683 = fsub fast float -0.000000e+00, %3680
  %3684 = fsub fast float -0.000000e+00, %3681
  %3685 = call float @dx.op.dot3.f32(i32 55, float %3682, float %3683, float %3684, float %3596, float %3597, float %3598)  ; Dot3(ax,ay,az,bx,by,bz)
  %3686 = fcmp fast ogt float %3685, 0.000000e+00
  %3687 = uitofp i1 %3686 to float
  br label %3688

; <label>:3688                                    ; preds = %3664, %3576
  %3689 = phi float [ %3687, %3664 ], [ 1.000000e+00, %3576 ]
  %3690 = phi float [ %3676, %3664 ], [ %3661, %3576 ]
  %3691 = phi float [ %3677, %3664 ], [ %3662, %3576 ]
  %3692 = phi float [ %3678, %3664 ], [ %3663, %3576 ]
  %3693 = call float @dx.op.dot3.f32(i32 55, float %3596, float %3597, float %3598, float %3690, float %3691, float %3692)  ; Dot3(ax,ay,az,bx,by,bz)
  %3694 = fmul fast float %3693, %3693
  %3695 = call float @dx.op.unary.f32(i32 7, float %3694)  ; Saturate(value)
  %3696 = fsub fast float 1.000000e+00, %3695
  %3697 = fmul fast float %3696, 5.000000e-01
  %3698 = fcmp fast ogt float %3693, 0.000000e+00
  %3699 = fsub fast float 1.000000e+00, %3697
  %3700 = select i1 %3698, float %3697, float %3699
  %3701 = fmul fast float %3700, %3637
  %3702 = fadd fast float %3701, %3635
  %3703 = fmul fast float %3702, 0x3EF0001000000000
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3703, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = fmul fast float %3693, %3619
  %3707 = fadd fast float %3706, %3620
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3709 = select i1 %3640, float 1.000000e+00, float %3708
  %3710 = select i1 %3640, float %3708, float 1.000000e+00
  %3711 = fmul fast float %3659, %3616
  %3712 = fsub fast float 1.000000e+00, %3711
  %3713 = fmul fast float %3712, %3622
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = fmul fast float %3714, %3710
  %3716 = fmul fast float %3715, 2.000000e+00
  %3717 = fsub fast float 3.000000e+00, %3716
  %3718 = fmul fast float %3705, %3689
  %3719 = fmul fast float %3715, %3715
  %3720 = fmul fast float %3719, %3718
  %3721 = fmul fast float %3720, %3717
  %3722 = call float @dx.op.binary.f32(i32 36, float %3721, float %3721)  ; FMin(a,b)
  %3723 = call float @dx.op.binary.f32(i32 36, float %3721, float %3722)  ; FMin(a,b)
  %3724 = fcmp fast ogt float %3723, 0.000000e+00
  br i1 %3724, label %3733, label %3725, !dx.controlflow.hints !118

; <label>:3725                                    ; preds = %4215, %3879, %3688
  %3726 = phi float [ %3578, %3879 ], [ %3578, %3688 ], [ %4502, %4215 ]
  %3727 = phi float [ %3579, %3879 ], [ %3579, %3688 ], [ %4503, %4215 ]
  %3728 = phi float [ %3580, %3879 ], [ %3580, %3688 ], [ %4504, %4215 ]
  %3729 = phi float [ %3581, %3879 ], [ %3581, %3688 ], [ %4493, %4215 ]
  %3730 = phi float [ %3582, %3879 ], [ %3582, %3688 ], [ %4494, %4215 ]
  %3731 = phi float [ %3583, %3879 ], [ %3583, %3688 ], [ %4495, %4215 ]
  %3732 = icmp eq i32 %3577, %3587
  br i1 %3732, label %4505, label %3576

; <label>:3733                                    ; preds = %3688
  %3734 = icmp eq i32 %3638, 255
  br i1 %3734, label %3879, label %3735, !dx.controlflow.hints !119

; <label>:3735                                    ; preds = %3733
  %3736 = mul nuw nsw i32 %3638, 176
  %3737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.ResRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.ResRet.f32 %3737, 2
  %3741 = extractvalue %dx.types.ResRet.f32 %3737, 3
  %3742 = add nuw nsw i32 %3736, 16
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.ResRet.f32 %3743, 1
  %3746 = add nuw nsw i32 %3736, 32
  %3747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 0
  %3749 = extractvalue %dx.types.ResRet.f32 %3747, 1
  %3750 = extractvalue %dx.types.ResRet.f32 %3747, 2
  %3751 = add nuw nsw i32 %3736, 48
  %3752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.ResRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.ResRet.f32 %3752, 2
  %3756 = extractvalue %dx.types.ResRet.f32 %3752, 3
  %3757 = add nuw nsw i32 %3736, 64
  %3758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.ResRet.f32 %3758, 3
  %3763 = add nuw nsw i32 %3736, 80
  %3764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.ResRet.f32 %3764, 3
  %3769 = add nuw nsw i32 %3736, 96
  %3770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = extractvalue %dx.types.ResRet.f32 %3770, 3
  %3775 = bitcast float %3745 to i32
  %3776 = fmul fast float %3750, %74
  %3777 = fmul fast float %3750, %76
  %3778 = fmul fast float %3750, %78
  %3779 = fadd fast float %3776, %314
  %3780 = fadd fast float %3777, %315
  %3781 = fadd fast float %3778, %316
  %3782 = fmul fast float %3779, %3753
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %3780, float %3759, float %3782)  ; FMad(a,b,c)
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %3781, float %3765, float %3783)  ; FMad(a,b,c)
  %3785 = fadd fast float %3784, %3771
  %3786 = fmul fast float %3779, %3754
  %3787 = call float @dx.op.tertiary.f32(i32 46, float %3780, float %3760, float %3786)  ; FMad(a,b,c)
  %3788 = call float @dx.op.tertiary.f32(i32 46, float %3781, float %3766, float %3787)  ; FMad(a,b,c)
  %3789 = fadd fast float %3788, %3772
  %3790 = fmul fast float %3779, %3755
  %3791 = call float @dx.op.tertiary.f32(i32 46, float %3780, float %3761, float %3790)  ; FMad(a,b,c)
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3781, float %3767, float %3791)  ; FMad(a,b,c)
  %3793 = fadd fast float %3792, %3773
  %3794 = fmul fast float %3779, %3756
  %3795 = call float @dx.op.tertiary.f32(i32 46, float %3780, float %3762, float %3794)  ; FMad(a,b,c)
  %3796 = call float @dx.op.tertiary.f32(i32 46, float %3781, float %3768, float %3795)  ; FMad(a,b,c)
  %3797 = fadd fast float %3796, %3774
  %3798 = fdiv fast float %3785, %3797
  %3799 = fdiv fast float %3789, %3797
  %3800 = fdiv fast float %3793, %3797
  %3801 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3800)  ; FMax(a,b)
  %3802 = fmul fast float %150, 0x401921FB60000000
  %3803 = call float @dx.op.unary.f32(i32 13, float %3802)  ; Sin(value)
  %3804 = call float @dx.op.unary.f32(i32 12, float %3802)  ; Cos(value)
  %3805 = fmul fast float %3804, %3749
  %3806 = call float @dx.op.tertiary.f32(i32 46, float %3803, float %3749, float 0.000000e+00)  ; FMad(a,b,c)
  %3807 = fmul fast float %3749, %3803
  %3808 = fsub fast float -0.000000e+00, %3807
  %3809 = call float @dx.op.tertiary.f32(i32 46, float %3804, float %3749, float 0.000000e+00)  ; FMad(a,b,c)
  br label %3810

; <label>:3810                                    ; preds = %3810, %3735
  %3811 = phi float [ 0.000000e+00, %3735 ], [ %3843, %3810 ]
  %3812 = phi float [ 0.000000e+00, %3735 ], [ %3845, %3810 ]
  %3813 = phi i32 [ 0, %3735 ], [ %3846, %3810 ]
  %3814 = mul i32 %3813, 2
  %3815 = add i32 0, %3814
  %3816 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3815
  %3817 = load float, float* %3816, align 4
  %3818 = mul i32 %3813, 2
  %3819 = add i32 1, %3818
  %3820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3819
  %3821 = load float, float* %3820, align 4
  %3822 = fmul fast float %3805, %3817
  %3823 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3808, float %3822)  ; FMad(a,b,c)
  %3824 = fmul fast float %3817, %3806
  %3825 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3809, float %3824)  ; FMad(a,b,c)
  %3826 = fadd fast float %3823, %3798
  %3827 = fadd fast float %3825, %3799
  %3828 = fmul fast float %3826, %3744
  %3829 = fmul fast float %3827, %3744
  %3830 = call float @dx.op.binary.f32(i32 35, float %3828, float %3740)  ; FMax(a,b)
  %3831 = call float @dx.op.binary.f32(i32 35, float %3829, float %3740)  ; FMax(a,b)
  %3832 = call float @dx.op.binary.f32(i32 36, float %3830, float %3741)  ; FMin(a,b)
  %3833 = call float @dx.op.binary.f32(i32 36, float %3831, float %3741)  ; FMin(a,b)
  %3834 = fadd fast float %3832, %3738
  %3835 = fadd fast float %3833, %3739
  %3836 = uitofp i32 %3775 to float
  %3837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %40, float %3834, float %3835, float %3836, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = fsub fast float %3838, %3801
  %3840 = fsub fast float %3839, %3748
  %3841 = fcmp fast ogt float %3840, 0.000000e+00
  %3842 = select i1 %3841, float 1.000000e+00, float 0.000000e+00
  %3843 = fadd fast float %3842, %3811
  %3844 = select i1 %3841, float %3840, float 0.000000e+00
  %3845 = fadd fast float %3844, %3812
  %3846 = add nuw nsw i32 %3813, 1
  %3847 = icmp eq i32 %3846, 8
  br i1 %3847, label %3848, label %3810

; <label>:3848                                    ; preds = %3810
  %3849 = fdiv fast float 1.000000e+00, %3843
  %3850 = fmul fast float %3849, %3845
  %3851 = fdiv fast float 1.000000e+00, %3801
  %3852 = fmul fast float %3850, %3851
  %3853 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3854 = call float @dx.op.binary.f32(i32 35, float %3853, float 0.000000e+00)  ; FMax(a,b)
  %3855 = fmul fast float %3843, 1.250000e-01
  %3856 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3857 = fmul fast float %3856, 2.000000e+00
  %3858 = fadd fast float %3857, -1.000000e+00
  %3859 = fcmp fast ogt float %3858, 0.000000e+00
  %3860 = fcmp fast olt float %3858, 0.000000e+00
  %3861 = zext i1 %3859 to i32
  %3862 = zext i1 %3860 to i32
  %3863 = sub nsw i32 %3861, %3862
  %3864 = sitofp i32 %3863 to float
  %3865 = fmul fast float %3864, %3858
  %3866 = fsub fast float 1.000000e+00, %3865
  %3867 = fmul fast float %3866, %3866
  %3868 = fmul fast float %3867, %3866
  %3869 = fsub fast float %3866, %3868
  %3870 = fmul fast float %3869, %3854
  %3871 = fsub fast float 1.000000e+00, %3868
  %3872 = fsub fast float %3871, %3870
  %3873 = fmul fast float %3864, 5.000000e-01
  %3874 = fmul fast float %3873, %3872
  %3875 = fsub fast float -5.000000e-01, %3874
  %3876 = fmul fast float %3875, %3709
  %3877 = fadd fast float %3876, 1.000000e+00
  %3878 = fmul fast float %3877, %3721
  br label %3879

; <label>:3879                                    ; preds = %3848, %3733
  %3880 = phi float [ %3878, %3848 ], [ %3721, %3733 ]
  %3881 = call float @dx.op.binary.f32(i32 36, float %3880, float %3880)  ; FMin(a,b)
  %3882 = call float @dx.op.binary.f32(i32 36, float %3880, float %3881)  ; FMin(a,b)
  %3883 = fcmp fast ogt float %3882, 0.000000e+00
  br i1 %3883, label %3884, label %3725, !dx.controlflow.hints !120

; <label>:3884                                    ; preds = %3879
  %3885 = fmul fast float %3880, %3631
  %3886 = fmul fast float %3880, %3632
  %3887 = fmul fast float %3880, %3633
  %3888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.i32 %3888, 0
  %3890 = and i32 %3889, 64
  %3891 = icmp ne i32 %3890, 0
  %3892 = fcmp fast ogt float %3614, 0.000000e+00
  %3893 = fcmp fast ogt float %316, 0.000000e+00
  %3894 = xor i1 %3893, %3892
  %3895 = select i1 %3894, float %3614, float %3615
  %3896 = fsub fast float %3612, %314
  %3897 = fsub fast float %3613, %315
  %3898 = fsub fast float %3895, %316
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3896, float %3897, float %3898, float %3896, float %3897, float %3898)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = call float @dx.op.unary.f32(i32 25, float %3899)  ; Rsqrt(value)
  %3901 = fmul fast float %3900, %3896
  %3902 = fmul fast float %3900, %3897
  %3903 = fmul fast float %3900, %3898
  %3904 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %3905 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3901, float %3902, float %3903)  ; Dot3(ax,ay,az,bx,by,bz)
  %3906 = fdiv fast float 1.000000e+00, %3905
  %3907 = fmul fast float %3906, %3904
  %3908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %316, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = fcmp fast ogt float %3908, 0.000000e+00
  %3910 = fcmp fast olt float %3908, 0.000000e+00
  %3911 = zext i1 %3909 to i32
  %3912 = zext i1 %3910 to i32
  %3913 = sub nsw i32 %3911, %3912
  %3914 = sitofp i32 %3913 to float
  %3915 = call float @dx.op.dot3.f32(i32 55, float %3896, float %3897, float %3895, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3916 = fcmp fast ogt float %3915, 0.000000e+00
  %3917 = fcmp fast olt float %3915, 0.000000e+00
  %3918 = zext i1 %3916 to i32
  %3919 = zext i1 %3917 to i32
  %3920 = sub nsw i32 %3918, %3919
  %3921 = sitofp i32 %3920 to float
  %3922 = fcmp fast une float %3914, %3921
  br i1 %3922, label %3923, label %3933

; <label>:3923                                    ; preds = %3884
  %3924 = fmul fast float %3907, %3903
  %3925 = fmul fast float %3907, %3902
  %3926 = fmul fast float %3907, %3901
  %3927 = fmul fast float %3926, %3926
  %3928 = fmul fast float %3925, %3925
  %3929 = fadd fast float %3927, %3928
  %3930 = fmul fast float %3924, %3924
  %3931 = fadd fast float %3929, %3930
  %3932 = call float @dx.op.unary.f32(i32 24, float %3931)  ; Sqrt(value)
  br label %3943

; <label>:3933                                    ; preds = %3884
  %3934 = icmp slt i32 %3913, 0
  br i1 %3934, label %3935, label %3943

; <label>:3935                                    ; preds = %3933
  %3936 = fsub fast float %316, %3895
  %3937 = fmul fast float %3642, %3642
  %3938 = fmul fast float %3643, %3643
  %3939 = fadd fast float %3937, %3938
  %3940 = fmul fast float %3936, %3936
  %3941 = fadd fast float %3939, %3940
  %3942 = call float @dx.op.unary.f32(i32 24, float %3941)  ; Sqrt(value)
  br label %3943

; <label>:3943                                    ; preds = %3935, %3933, %3923
  %3944 = phi float [ %3932, %3923 ], [ %3942, %3935 ], [ 0.000000e+00, %3933 ]
  %3945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.i32 %3945, 1
  %3947 = icmp ne i32 %3946, 0
  %3948 = and i1 %3894, %3947
  %3949 = call float @dx.op.dot3.f32(i32 55, float %3901, float %3902, float %3903, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3950 = fmul fast float %3949, %3949
  %3951 = fsub fast float 1.000000e+00, %3950
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 0
  %3954 = extractvalue %dx.types.CBufRet.f32 %3952, 1
  %3955 = extractvalue %dx.types.CBufRet.f32 %3952, 2
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.CBufRet.f32 %3956, 1
  %3963 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3964 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3965 = extractvalue %dx.types.CBufRet.f32 %3956, 3
  %3966 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3967 = extractvalue %dx.types.CBufRet.f32 %3960, 3
  %3968 = fadd fast float %3953, %314
  %3969 = fadd fast float %3954, %315
  %3970 = fadd fast float %3955, %316
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.CBufRet.f32 %3971, 1
  %3974 = extractvalue %dx.types.CBufRet.f32 %3971, 2
  %3975 = extractvalue %dx.types.CBufRet.f32 %3971, 3
  br i1 %3948, label %3976, label %4169

; <label>:3976                                    ; preds = %3943
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = fmul fast float %3978, %3978
  %3980 = fmul fast float %3979, %3951
  %3981 = fsub fast float 1.000000e+00, %3980
  %3982 = fcmp fast oge float %3981, 0.000000e+00
  %3983 = fmul fast float %3978, %3901
  %3984 = fmul fast float %3978, %3902
  %3985 = fmul fast float %3978, %3903
  %3986 = call float @dx.op.unary.f32(i32 24, float %3981)  ; Sqrt(value)
  %3987 = fmul fast float %3978, %3949
  %3988 = fsub fast float -0.000000e+00, %3986
  %3989 = fsub fast float %3988, %3987
  %3990 = fadd fast float %3989, %3985
  %3991 = select i1 %3982, float %3983, float 0.000000e+00
  %3992 = select i1 %3982, float %3984, float 0.000000e+00
  %3993 = select i1 %3982, float %3990, float 0.000000e+00
  %3994 = fmul fast float %3991, %3944
  %3995 = fmul fast float %3992, %3944
  %3996 = fmul fast float %3993, %3944
  %3997 = fadd fast float %3968, %3994
  %3998 = fadd fast float %3997, %3965
  %3999 = fadd fast float %3969, %3995
  %4000 = fadd fast float %3999, %3966
  %4001 = fadd fast float %3970, %3996
  %4002 = fadd fast float %4001, %3967
  %4003 = fmul fast float %3998, %3957
  %4004 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %3959, float %4003)  ; FMad(a,b,c)
  %4005 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %3961, float %4004)  ; FMad(a,b,c)
  %4006 = fmul fast float %3998, %3962
  %4007 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %3963, float %4006)  ; FMad(a,b,c)
  %4008 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %3964, float %4007)  ; FMad(a,b,c)
  %4009 = fsub fast float %4005, %3965
  %4010 = fsub fast float %4009, %3972
  %4011 = fadd fast float %4010, %3974
  %4012 = fsub fast float %4008, %3966
  %4013 = fsub fast float %4012, %3973
  %4014 = fadd fast float %4013, %3974
  %4015 = fmul fast float %4011, %3975
  %4016 = fmul fast float %4014, %3975
  %4017 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4018 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4019 = fsub fast float 1.000000e+00, %4017
  %4020 = fsub fast float 1.000000e+00, %4018
  %4021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %4019, float %4020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = fmul fast float %4022, 0x3FBC5ABC00000000
  %4024 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %4025 = fmul fast float %4024, %4024
  %4026 = fmul fast float %4025, %3951
  %4027 = fsub fast float 1.000000e+00, %4026
  %4028 = fcmp fast oge float %4027, 0.000000e+00
  %4029 = fmul fast float %4024, %3901
  %4030 = fmul fast float %4024, %3902
  %4031 = fmul fast float %4024, %3903
  %4032 = call float @dx.op.unary.f32(i32 24, float %4027)  ; Sqrt(value)
  %4033 = fmul fast float %4024, %3949
  %4034 = fsub fast float -0.000000e+00, %4032
  %4035 = fsub fast float %4034, %4033
  %4036 = fadd fast float %4035, %4031
  %4037 = select i1 %4028, float %4029, float 0.000000e+00
  %4038 = select i1 %4028, float %4030, float 0.000000e+00
  %4039 = select i1 %4028, float %4036, float 0.000000e+00
  %4040 = fmul fast float %4037, %3944
  %4041 = fmul fast float %4038, %3944
  %4042 = fmul fast float %4039, %3944
  %4043 = fadd fast float %3968, %4040
  %4044 = fadd fast float %4043, %3965
  %4045 = fadd fast float %3969, %4041
  %4046 = fadd fast float %4045, %3966
  %4047 = fadd fast float %3970, %4042
  %4048 = fadd fast float %4047, %3967
  %4049 = fmul fast float %4044, %3957
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %3959, float %4049)  ; FMad(a,b,c)
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %3961, float %4050)  ; FMad(a,b,c)
  %4052 = fmul fast float %4044, %3962
  %4053 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %3963, float %4052)  ; FMad(a,b,c)
  %4054 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %3964, float %4053)  ; FMad(a,b,c)
  %4055 = fsub fast float %4051, %3965
  %4056 = fsub fast float %4055, %3972
  %4057 = fadd fast float %4056, %3974
  %4058 = fsub fast float %4054, %3966
  %4059 = fsub fast float %4058, %3973
  %4060 = fadd fast float %4059, %3974
  %4061 = fmul fast float %4057, %3975
  %4062 = fmul fast float %4060, %3975
  %4063 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4064 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4065 = fsub fast float 1.000000e+00, %4063
  %4066 = fsub fast float 1.000000e+00, %4064
  %4067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %4065, float %4066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = fmul fast float %4068, 0x3F9E4BBD60000000
  %4070 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %4071 = fmul fast float %4070, %4070
  %4072 = fmul fast float %4071, %3951
  %4073 = fsub fast float 1.000000e+00, %4072
  %4074 = fcmp fast oge float %4073, 0.000000e+00
  %4075 = fmul fast float %4070, %3901
  %4076 = fmul fast float %4070, %3902
  %4077 = fmul fast float %4070, %3903
  %4078 = call float @dx.op.unary.f32(i32 24, float %4073)  ; Sqrt(value)
  %4079 = fmul fast float %4070, %3949
  %4080 = fsub fast float -0.000000e+00, %4078
  %4081 = fsub fast float %4080, %4079
  %4082 = fadd fast float %4081, %4077
  %4083 = select i1 %4074, float %4075, float 0.000000e+00
  %4084 = select i1 %4074, float %4076, float 0.000000e+00
  %4085 = select i1 %4074, float %4082, float 0.000000e+00
  %4086 = fmul fast float %4083, %3944
  %4087 = fmul fast float %4084, %3944
  %4088 = fmul fast float %4085, %3944
  %4089 = fadd fast float %3968, %4086
  %4090 = fadd fast float %4089, %3965
  %4091 = fadd fast float %3969, %4087
  %4092 = fadd fast float %4091, %3966
  %4093 = fadd fast float %3970, %4088
  %4094 = fadd fast float %4093, %3967
  %4095 = fmul fast float %4090, %3957
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %3959, float %4095)  ; FMad(a,b,c)
  %4097 = call float @dx.op.tertiary.f32(i32 46, float %4094, float %3961, float %4096)  ; FMad(a,b,c)
  %4098 = fmul fast float %4090, %3962
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %3963, float %4098)  ; FMad(a,b,c)
  %4100 = call float @dx.op.tertiary.f32(i32 46, float %4094, float %3964, float %4099)  ; FMad(a,b,c)
  %4101 = fsub fast float %4097, %3965
  %4102 = fsub fast float %4101, %3972
  %4103 = fadd fast float %4102, %3974
  %4104 = fsub fast float %4100, %3966
  %4105 = fsub fast float %4104, %3973
  %4106 = fadd fast float %4105, %3974
  %4107 = fmul fast float %4103, %3975
  %4108 = fmul fast float %4106, %3975
  %4109 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4110 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4111 = fsub fast float 1.000000e+00, %4109
  %4112 = fsub fast float 1.000000e+00, %4110
  %4113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %4111, float %4112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = fmul fast float %4114, 0x3FDDEACB00000000
  %4116 = fadd fast float %4115, %4069
  %4117 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %4118 = fmul fast float %4117, %4117
  %4119 = fmul fast float %4118, %3951
  %4120 = fsub fast float 1.000000e+00, %4119
  %4121 = fcmp fast oge float %4120, 0.000000e+00
  %4122 = fmul fast float %4117, %3901
  %4123 = fmul fast float %4117, %3902
  %4124 = fmul fast float %4117, %3903
  %4125 = call float @dx.op.unary.f32(i32 24, float %4120)  ; Sqrt(value)
  %4126 = fmul fast float %4117, %3949
  %4127 = fsub fast float -0.000000e+00, %4125
  %4128 = fsub fast float %4127, %4126
  %4129 = fadd fast float %4128, %4124
  %4130 = select i1 %4121, float %4122, float 0.000000e+00
  %4131 = select i1 %4121, float %4123, float 0.000000e+00
  %4132 = select i1 %4121, float %4129, float 0.000000e+00
  %4133 = fmul fast float %4130, %3944
  %4134 = fmul fast float %4131, %3944
  %4135 = fmul fast float %4132, %3944
  %4136 = fadd fast float %3968, %4133
  %4137 = fadd fast float %4136, %3965
  %4138 = fadd fast float %3969, %4134
  %4139 = fadd fast float %4138, %3966
  %4140 = fadd fast float %3970, %4135
  %4141 = fadd fast float %4140, %3967
  %4142 = fmul fast float %4137, %3957
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %3959, float %4142)  ; FMad(a,b,c)
  %4144 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %3961, float %4143)  ; FMad(a,b,c)
  %4145 = fmul fast float %4137, %3962
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %3963, float %4145)  ; FMad(a,b,c)
  %4147 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %3964, float %4146)  ; FMad(a,b,c)
  %4148 = fsub fast float %4144, %3965
  %4149 = fsub fast float %4148, %3972
  %4150 = fadd fast float %4149, %3974
  %4151 = fsub fast float %4147, %3966
  %4152 = fsub fast float %4151, %3973
  %4153 = fadd fast float %4152, %3974
  %4154 = fmul fast float %4150, %3975
  %4155 = fmul fast float %4153, %3975
  %4156 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4158 = fsub fast float 1.000000e+00, %4156
  %4159 = fsub fast float 1.000000e+00, %4157
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %4158, float %4159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = fmul fast float %4161, 0x3FE0183CA0000000
  %4163 = fmul fast float %4161, 0x3FB51033E0000000
  %4164 = fadd fast float %4116, %4162
  %4165 = fadd fast float %4114, %4068
  %4166 = fmul fast float %4165, 0x3FD9D2A200000000
  %4167 = fadd fast float %4163, %4023
  %4168 = fadd fast float %4167, %4166
  br label %4215

; <label>:4169                                    ; preds = %3943
  %4170 = fmul fast float %3951, 0x3FE2024E20000000
  %4171 = fsub fast float 1.000000e+00, %4170
  %4172 = fcmp fast oge float %4171, 0.000000e+00
  %4173 = fmul fast float %3901, 0x3FE8018960000000
  %4174 = fmul fast float %3902, 0x3FE8018960000000
  %4175 = fmul fast float %3903, 0x3FE8018960000000
  %4176 = call float @dx.op.unary.f32(i32 24, float %4171)  ; Sqrt(value)
  %4177 = fmul fast float %3949, 0x3FE8018960000000
  %4178 = fsub fast float %4175, %4176
  %4179 = fsub fast float %4178, %4177
  %4180 = select i1 %4172, float %4173, float 0.000000e+00
  %4181 = select i1 %4172, float %4174, float 0.000000e+00
  %4182 = select i1 %4172, float %4179, float 0.000000e+00
  %4183 = select i1 %3894, float %4180, float %3901
  %4184 = select i1 %3894, float %4181, float %3902
  %4185 = select i1 %3894, float %4182, float %3903
  %4186 = fmul fast float %4183, %3944
  %4187 = fmul fast float %4184, %3944
  %4188 = fmul fast float %4185, %3944
  %4189 = fadd fast float %3968, %4186
  %4190 = fadd fast float %4189, %3965
  %4191 = fadd fast float %3969, %4187
  %4192 = fadd fast float %4191, %3966
  %4193 = fadd fast float %3970, %4188
  %4194 = fadd fast float %4193, %3967
  %4195 = fmul fast float %4190, %3957
  %4196 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %3959, float %4195)  ; FMad(a,b,c)
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %3961, float %4196)  ; FMad(a,b,c)
  %4198 = fmul fast float %4190, %3962
  %4199 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %3963, float %4198)  ; FMad(a,b,c)
  %4200 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %3964, float %4199)  ; FMad(a,b,c)
  %4201 = fsub fast float %4197, %3965
  %4202 = fsub fast float %4201, %3972
  %4203 = fadd fast float %4202, %3974
  %4204 = fsub fast float %4200, %3966
  %4205 = fsub fast float %4204, %3973
  %4206 = fadd fast float %4205, %3974
  %4207 = fmul fast float %4203, %3975
  %4208 = fmul fast float %4206, %3975
  %4209 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4210 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4211 = fsub fast float 1.000000e+00, %4209
  %4212 = fsub fast float 1.000000e+00, %4210
  %4213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %4211, float %4212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  br label %4215

; <label>:4215                                    ; preds = %4169, %3976
  %4216 = phi float [ %4214, %4169 ], [ %4164, %3976 ]
  %4217 = phi float [ %4214, %4169 ], [ %4168, %3976 ]
  %4218 = phi float [ %4214, %4169 ], [ %4022, %3976 ]
  %4219 = fmul fast float %3896, %3896
  %4220 = fmul fast float %3897, %3897
  %4221 = fadd fast float %4219, %4220
  %4222 = fmul fast float %3898, %3898
  %4223 = fadd fast float %4221, %4222
  %4224 = call float @dx.op.unary.f32(i32 24, float %4223)  ; Sqrt(value)
  %4225 = fmul fast float %3642, %3642
  %4226 = fmul fast float %3643, %3643
  %4227 = fadd fast float %4225, %4226
  %4228 = fmul fast float %3644, %3644
  %4229 = fadd fast float %4227, %4228
  %4230 = call float @dx.op.unary.f32(i32 24, float %4229)  ; Sqrt(value)
  %4231 = fsub fast float %4224, %4230
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 0
  %4234 = call float @dx.op.unary.f32(i32 6, float %4233)  ; FAbs(value)
  %4235 = fmul fast float %4230, %4230
  %4236 = fmul fast float %4235, %4234
  %4237 = fmul fast float %4231, %4231
  %4238 = fadd fast float %4237, %4235
  %4239 = fdiv fast float %4236, %4238
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = call float @dx.op.unary.f32(i32 6, float %3949)  ; FAbs(value)
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = bitcast float %4242 to i32
  %4244 = sitofp i32 %4243 to float
  %4245 = fptosi float %4244 to i32
  %4246 = bitcast i32 %4245 to float
  %4247 = fmul fast float %4246, 0x3FEF333340000000
  %4248 = fadd fast float %4247, 0x3F999999A0000000
  %4249 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = fadd fast float %4216, 1.000000e+00
  %4252 = fadd fast float %4217, 1.000000e+00
  %4253 = fadd fast float %4218, 1.000000e+00
  %4254 = fmul fast float %4250, %4251
  %4255 = fmul fast float %4250, %4252
  %4256 = fmul fast float %4250, %4253
  %4257 = fmul fast float %4240, %4251
  %4258 = fmul fast float %4257, %4249
  %4259 = fmul fast float %4240, %4252
  %4260 = fmul fast float %4259, %4249
  %4261 = fmul fast float %4240, %4253
  %4262 = fmul fast float %4261, %4249
  %4263 = fadd fast float %4258, 1.000000e+00
  %4264 = fadd fast float %4260, 1.000000e+00
  %4265 = fadd fast float %4262, 1.000000e+00
  %4266 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4268 = select i1 %3894, float %4254, float %4263
  %4269 = select i1 %3894, float %4255, float %4264
  %4270 = select i1 %3894, float %4256, float %4265
  %4271 = select i1 %3891, float %4267, float 0.000000e+00
  %4272 = fadd fast float %4268, -1.000000e+00
  %4273 = fadd fast float %4269, -1.000000e+00
  %4274 = fadd fast float %4270, -1.000000e+00
  %4275 = fmul fast float %4272, %4271
  %4276 = fmul fast float %4273, %4271
  %4277 = fmul fast float %4274, %4271
  %4278 = fadd fast float %4275, 1.000000e+00
  %4279 = fadd fast float %4276, 1.000000e+00
  %4280 = fadd fast float %4277, 1.000000e+00
  %4281 = fmul fast float %3885, %4278
  %4282 = fmul fast float %3886, %4279
  %4283 = fmul fast float %3887, %4280
  %4284 = fadd fast float %3661, %245
  %4285 = fadd fast float %3662, %246
  %4286 = fadd fast float %3663, %247
  %4287 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %3655, float %3656, float %3657)  ; Dot3(ax,ay,az,bx,by,bz)
  %4288 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %4284, float %4285, float %4286)  ; Dot3(ax,ay,az,bx,by,bz)
  %4289 = fdiv fast float 1.000000e+00, %4288
  %4290 = fmul fast float %4289, %4287
  %4291 = fmul fast float %4290, %4284
  %4292 = fmul fast float %4290, %4285
  %4293 = fmul fast float %4290, %4286
  %4294 = fadd fast float %3642, %4291
  %4295 = fadd fast float %3643, %4292
  %4296 = fadd fast float %3644, %4293
  %4297 = call float @dx.op.dot3.f32(i32 55, float %4294, float %4295, float %4296, float %3604, float %3605, float %3606)  ; Dot3(ax,ay,az,bx,by,bz)
  %4298 = fdiv fast float %4297, %3641
  %4299 = call float @dx.op.binary.f32(i32 35, float %4298, float -1.000000e+00)  ; FMax(a,b)
  %4300 = call float @dx.op.binary.f32(i32 36, float %4299, float 1.000000e+00)  ; FMin(a,b)
  %4301 = fmul fast float %4300, %3604
  %4302 = fmul fast float %4300, %3605
  %4303 = fmul fast float %4300, %3606
  %4304 = fadd fast float %3896, %4301
  %4305 = fadd fast float %3897, %4302
  %4306 = fsub fast float %3614, %316
  %4307 = fadd fast float %4306, %4303
  %4308 = call float @dx.op.dot3.f32(i32 55, float %4304, float %4305, float %4307, float %4304, float %4305, float %4307)  ; Dot3(ax,ay,az,bx,by,bz)
  %4309 = call float @dx.op.unary.f32(i32 25, float %4308)  ; Rsqrt(value)
  %4310 = fmul fast float %4304, %4309
  %4311 = fmul fast float %4305, %4309
  %4312 = fmul fast float %4307, %4309
  %4313 = fsub fast float %4310, %349
  %4314 = fsub fast float %4311, %350
  %4315 = fsub fast float %4312, %351
  %4316 = call float @dx.op.dot3.f32(i32 55, float %4313, float %4314, float %4315, float %4313, float %4314, float %4315)  ; Dot3(ax,ay,az,bx,by,bz)
  %4317 = call float @dx.op.unary.f32(i32 25, float %4316)  ; Rsqrt(value)
  %4318 = fmul fast float %4313, %4317
  %4319 = fmul fast float %4314, %4317
  %4320 = fmul fast float %4315, %4317
  %4321 = call float @dx.op.dot3.f32(i32 55, float %4310, float %4311, float %4312, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %4322 = call float @dx.op.dot3.f32(i32 55, float %352, float %353, float %354, float %4318, float %4319, float %4320)  ; Dot3(ax,ay,az,bx,by,bz)
  %4323 = fmul fast float %4309, %3609
  %4324 = fmul fast float %4323, %4323
  %4325 = bitcast float %4324 to i32
  %4326 = ashr i32 %4325, 1
  %4327 = sub nsw i32 1597463007, %4326
  %4328 = bitcast i32 %4327 to float
  %4329 = fmul fast float %4328, %4321
  %4330 = fmul fast float %4329, %4329
  %4331 = fsub fast float 1.000000e+00, %4330
  %4332 = fmul fast float %4321, %4324
  %4333 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4334 = fmul fast float %4329, 5.000000e-01
  %4335 = fadd fast float %4334, 5.000000e-01
  %4336 = fmul fast float %4335, %4324
  %4337 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4338 = bitcast float %4337 to i32
  %4339 = ashr i32 %4338, 1
  %4340 = add nsw i32 %4339, 532487669
  %4341 = bitcast i32 %4340 to float
  %4342 = fmul fast float %4341, %4337
  %4343 = fcmp fast ogt float %4331, 0.000000e+00
  %4344 = select i1 %4343, float %4342, float %4333
  %4345 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4346 = fmul fast float %4345, %4345
  %4347 = fmul fast float %4346, 0x47DE623840000000
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = fmul fast float %4344, %4348
  %4350 = call float @dx.op.dot3.f32(i32 55, float %3604, float %3605, float %3606, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %4351 = call float @dx.op.dot3.f32(i32 55, float %3604, float %3605, float %3606, float %3655, float %3656, float %3657)  ; Dot3(ax,ay,az,bx,by,bz)
  %4352 = call float @dx.op.dot3.f32(i32 55, float %363, float %364, float %365, float %3655, float %3656, float %3657)  ; Dot3(ax,ay,az,bx,by,bz)
  %4353 = fmul fast float %4350, %4350
  %4354 = fsub fast float %3641, %4353
  %4355 = fmul fast float %4352, %4350
  %4356 = fsub fast float %4355, %4351
  %4357 = fdiv fast float %4356, %4354
  %4358 = call float @dx.op.binary.f32(i32 35, float %4357, float -1.500000e+00)  ; FMax(a,b)
  %4359 = call float @dx.op.binary.f32(i32 36, float %4358, float 1.500000e+00)  ; FMin(a,b)
  %4360 = fmul fast float %4359, %4359
  %4361 = fmul fast float %4360, 0x3FC2F68380000000
  %4362 = fmul fast float %4361, %4359
  %4363 = fsub fast float %4359, %4362
  %4364 = fmul fast float %4363, %3604
  %4365 = fmul fast float %4363, %3605
  %4366 = fmul fast float %4363, %3606
  %4367 = fadd fast float %4364, %3652
  %4368 = fadd fast float %4365, %3653
  %4369 = fadd fast float %4366, %3654
  %4370 = fsub fast float %4367, %314
  %4371 = fsub fast float %4368, %315
  %4372 = fsub fast float %4369, %316
  %4373 = call float @dx.op.dot3.f32(i32 55, float %4370, float %4371, float %4372, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %4374 = fmul fast float %4373, %363
  %4375 = fmul fast float %4373, %364
  %4376 = fmul fast float %4373, %365
  %4377 = fsub fast float %4374, %4370
  %4378 = fsub fast float %4375, %4371
  %4379 = fsub fast float %4376, %4372
  %4380 = call float @dx.op.dot3.f32(i32 55, float %4377, float %4378, float %4379, float %4377, float %4378, float %4379)  ; Dot3(ax,ay,az,bx,by,bz)
  %4381 = bitcast float %4380 to i32
  %4382 = ashr i32 %4381, 1
  %4383 = sub nsw i32 1597463007, %4382
  %4384 = bitcast i32 %4383 to float
  %4385 = fmul fast float %4384, %3609
  %4386 = call float @dx.op.dot3.f32(i32 55, float %4370, float %4371, float %4372, float %4370, float %4371, float %4372)  ; Dot3(ax,ay,az,bx,by,bz)
  %4387 = bitcast float %4386 to i32
  %4388 = ashr i32 %4387, 1
  %4389 = sub nsw i32 1597463007, %4388
  %4390 = bitcast i32 %4389 to float
  %4391 = fmul fast float %4385, %4385
  %4392 = fadd fast float %4391, 1.250000e-01
  %4393 = call float @dx.op.unary.f32(i32 25, float %4392)  ; Rsqrt(value)
  %4394 = fmul fast float %4385, %4393
  %4395 = fmul fast float %4377, %4394
  %4396 = fmul fast float %4378, %4394
  %4397 = fmul fast float %4379, %4394
  %4398 = fadd fast float %4370, %4395
  %4399 = fadd fast float %4371, %4396
  %4400 = fadd fast float %4372, %4397
  %4401 = call float @dx.op.dot3.f32(i32 55, float %4398, float %4399, float %4400, float %4398, float %4399, float %4400)  ; Dot3(ax,ay,az,bx,by,bz)
  %4402 = call float @dx.op.unary.f32(i32 25, float %4401)  ; Rsqrt(value)
  %4403 = fmul fast float %4398, %4402
  %4404 = fmul fast float %4399, %4402
  %4405 = fmul fast float %4400, %4402
  %4406 = fsub fast float %4403, %349
  %4407 = fsub fast float %4404, %350
  %4408 = fsub fast float %4405, %351
  %4409 = call float @dx.op.dot3.f32(i32 55, float %4406, float %4407, float %4408, float %4406, float %4407, float %4408)  ; Dot3(ax,ay,az,bx,by,bz)
  %4410 = call float @dx.op.unary.f32(i32 25, float %4409)  ; Rsqrt(value)
  %4411 = fmul fast float %4406, %4410
  %4412 = fmul fast float %4407, %4410
  %4413 = fmul fast float %4408, %4410
  %4414 = call float @dx.op.dot3.f32(i32 55, float %245, float %246, float %247, float %4411, float %4412, float %4413)  ; Dot3(ax,ay,az,bx,by,bz)
  %4415 = fmul fast float %4414, %4414
  %4416 = call float @dx.op.unary.f32(i32 6, float %4321)  ; FAbs(value)
  %4417 = fsub fast float 1.000000e+00, %369
  %4418 = fmul fast float %357, %357
  %4419 = fmul fast float %4418, %4417
  %4420 = fadd fast float %4419, %369
  %4421 = bitcast float %4420 to i32
  %4422 = ashr i32 %4421, 1
  %4423 = add nsw i32 %4422, 532487669
  %4424 = bitcast i32 %4423 to float
  %4425 = fadd fast float %4424, %357
  %4426 = fmul fast float %369, %4415
  %4427 = fsub fast float 1.000000e+00, %4415
  %4428 = fadd fast float %4427, %4426
  %4429 = fmul fast float %4416, %4416
  %4430 = fmul fast float %4429, %4417
  %4431 = fadd fast float %4430, %369
  %4432 = bitcast float %4431 to i32
  %4433 = ashr i32 %4432, 1
  %4434 = add nsw i32 %4433, 532487669
  %4435 = bitcast i32 %4434 to float
  %4436 = fadd fast float %4435, %4416
  %4437 = fmul fast float %4428, %4428
  %4438 = fmul fast float %4437, %4425
  %4439 = fmul fast float %4438, %4436
  %4440 = fdiv fast float 1.000000e+00, %4439
  %4441 = bitcast float %369 to i32
  %4442 = sitofp i32 %4441 to float
  %4443 = fmul fast float %4442, 0x3FE7F73180000000
  %4444 = fadd fast float %4443, 0x41AFE27C40000000
  %4445 = fptosi float %4444 to i32
  %4446 = bitcast i32 %4445 to float
  %4447 = fmul fast float %3609, 0x3FD80E9D60000000
  %4448 = fmul fast float %4447, %4390
  %4449 = fadd fast float %4446, %4448
  %4450 = bitcast float %4449 to i32
  %4451 = sub nsw i32 2129859010, %4450
  %4452 = bitcast i32 %4451 to float
  %4453 = fmul fast float %369, %4440
  %4454 = fmul fast float %4453, %4446
  %4455 = fmul fast float %4454, %4452
  %4456 = call float @dx.op.unary.f32(i32 6, float %4322)  ; FAbs(value)
  %4457 = fsub fast float 1.000000e+00, %4456
  %4458 = bitcast float %4457 to i32
  %4459 = sitofp i32 %4458 to float
  %4460 = fmul fast float %4459, 5.000000e+00
  %4461 = fadd fast float %4460, 0xC1EFBF8940000000
  %4462 = fptosi float %4461 to i32
  %4463 = bitcast i32 %4462 to float
  %4464 = fsub fast float 1.000000e+00, %335
  %4465 = fsub fast float 1.000000e+00, %336
  %4466 = fsub fast float 1.000000e+00, %355
  %4467 = fmul fast float %4463, %4464
  %4468 = fmul fast float %4463, %4465
  %4469 = fmul fast float %4463, %4466
  %4470 = fadd fast float %4467, %335
  %4471 = fadd fast float %4468, %336
  %4472 = fadd fast float %4469, %355
  %4473 = fmul fast float %4321, 9.843750e-01
  %4474 = fadd fast float %4473, 7.812500e-03
  %4475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %4474, float %1199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4476 = extractvalue %dx.types.ResRet.f32 %4475, 2
  %4477 = extractvalue %dx.types.ResRet.f32 %4475, 3
  %4478 = fmul fast float %4476, %335
  %4479 = fmul fast float %4476, %336
  %4480 = fmul fast float %4476, %355
  %4481 = fadd fast float %4478, %4477
  %4482 = fadd fast float %4479, %4477
  %4483 = fadd fast float %4480, %4477
  %4484 = call float @dx.op.binary.f32(i32 35, float %4482, float %4483)  ; FMax(a,b)
  %4485 = call float @dx.op.binary.f32(i32 35, float %4481, float %4484)  ; FMax(a,b)
  %4486 = fsub fast float 1.000000e+00, %4485
  %4487 = fmul fast float %4349, %4281
  %4488 = fmul fast float %4487, %4486
  %4489 = fmul fast float %4349, %4282
  %4490 = fmul fast float %4489, %4486
  %4491 = fmul fast float %4349, %4283
  %4492 = fmul fast float %4491, %4486
  %4493 = fadd fast float %4488, %3581
  %4494 = fadd fast float %4490, %3582
  %4495 = fadd fast float %4492, %3583
  %4496 = fmul fast float %4487, %4470
  %4497 = fmul fast float %4496, %4455
  %4498 = fmul fast float %4489, %4471
  %4499 = fmul fast float %4498, %4455
  %4500 = fmul fast float %4491, %4472
  %4501 = fmul fast float %4500, %4455
  %4502 = fadd fast float %4497, %3578
  %4503 = fadd fast float %4499, %3579
  %4504 = fadd fast float %4501, %3580
  br label %3725

; <label>:4505                                    ; preds = %3725
  br label %4506

; <label>:4506                                    ; preds = %4505, %3544
  %4507 = phi float [ %3546, %3544 ], [ %3726, %4505 ]
  %4508 = phi float [ %3547, %3544 ], [ %3727, %4505 ]
  %4509 = phi float [ %3548, %3544 ], [ %3728, %4505 ]
  %4510 = phi float [ %3549, %3544 ], [ %3729, %4505 ]
  %4511 = phi float [ %3550, %3544 ], [ %3730, %4505 ]
  %4512 = phi float [ %3551, %3544 ], [ %3731, %4505 ]
  %4513 = add i32 %3545, 1
  %4514 = icmp ugt i32 %4513, %3541
  br i1 %4514, label %4515, label %3544

; <label>:4515                                    ; preds = %4506
  br label %4516

; <label>:4516                                    ; preds = %4515, %3494, %3484
  %4517 = phi float [ %3485, %3484 ], [ %3485, %3494 ], [ %4507, %4515 ]
  %4518 = phi float [ %3486, %3484 ], [ %3486, %3494 ], [ %4508, %4515 ]
  %4519 = phi float [ %3487, %3484 ], [ %3487, %3494 ], [ %4509, %4515 ]
  %4520 = phi float [ %3488, %3484 ], [ %3488, %3494 ], [ %4510, %4515 ]
  %4521 = phi float [ %3489, %3484 ], [ %3489, %3494 ], [ %4511, %4515 ]
  %4522 = phi float [ %3490, %3484 ], [ %3490, %3494 ], [ %4512, %4515 ]
  %4523 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %4524 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %4525 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %4526 = fmul fast float %4523, %4520
  %4527 = fmul fast float %4524, %4521
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  br i1 %139, label %4530, label %4550

; <label>:4530                                    ; preds = %4516
  %4531 = fadd fast float %4522, %343
  %4532 = fmul fast float %4531, %341
  %4533 = fsub fast float 1.000000e+00, %341
  %4534 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 3
  %4537 = fmul fast float %4536, %4534
  %4538 = fadd fast float %4537, %4532
  %4539 = fsub fast float 1.000000e+00, %357
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 0
  %4542 = fmul fast float %4541, %4539
  %4543 = fsub fast float %4538, %4542
  %4544 = fadd fast float %4527, %4526
  %4545 = extractvalue %dx.types.CBufRet.f32 %4535, 1
  %4546 = fsub fast float %4543, %4545
  %4547 = extractvalue %dx.types.CBufRet.f32 %4535, 2
  %4548 = fmul fast float %4546, %4547
  %4549 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  br label %4554

; <label>:4550                                    ; preds = %4516
  %4551 = fmul fast float %4525, %4522
  %4552 = fmul fast float %4529, %4527
  %4553 = fmul fast float %4551, %4529
  br label %4554

; <label>:4554                                    ; preds = %4550, %4530
  %4555 = phi float [ %4544, %4530 ], [ %4526, %4550 ]
  %4556 = phi float [ %4549, %4530 ], [ %4552, %4550 ]
  %4557 = phi float [ 1.000000e+00, %4530 ], [ %4553, %4550 ]
  %4558 = fmul float %4529, %4555
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = fmul fast float %4560, %4518
  %4562 = fmul fast float %4560, %4519
  %4563 = fadd fast float %4518, %4517
  %4564 = select i1 %139, float %4563, float %4517
  %4565 = fmul float %4564, %4560
  %4566 = select i1 %139, float 0.000000e+00, float %4561
  %4567 = select i1 %139, float 0.000000e+00, float %4562
  %4568 = call float @dx.op.binary.f32(i32 36, float %4558, float 3.225500e+04)  ; FMin(a,b)
  %4569 = call float @dx.op.binary.f32(i32 36, float %4556, float 3.225500e+04)  ; FMin(a,b)
  %4570 = call float @dx.op.binary.f32(i32 36, float %4557, float 3.225500e+04)  ; FMin(a,b)
  %4571 = call float @dx.op.binary.f32(i32 36, float %4565, float 3.225500e+04)  ; FMin(a,b)
  %4572 = call float @dx.op.binary.f32(i32 36, float %4566, float 3.225500e+04)  ; FMin(a,b)
  %4573 = call float @dx.op.binary.f32(i32 36, float %4567, float 3.225500e+04)  ; FMin(a,b)
  %4574 = and i32 %115, 4
  %4575 = icmp eq i32 %4574, 0
  %4576 = xor i1 %109, true
  %4577 = or i1 %4575, %4576
  br i1 %4577, label %4578, label %4585

; <label>:4578                                    ; preds = %4554
  %4579 = fmul fast float %4568, %4523
  %4580 = fmul fast float %4569, %4524
  %4581 = fmul fast float %4570, %4525
  %4582 = fadd fast float %4571, %4579
  %4583 = fadd fast float %4572, %4580
  %4584 = fadd fast float %4573, %4581
  br label %4585

; <label>:4585                                    ; preds = %4578, %4554
  %4586 = phi float [ %4582, %4578 ], [ %4571, %4554 ]
  %4587 = phi float [ %4583, %4578 ], [ %4572, %4554 ]
  %4588 = phi float [ %4584, %4578 ], [ %4573, %4554 ]
  %4589 = select i1 %139, float %4569, float %4587
  %4590 = select i1 %139, float %4570, float %4588
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4589)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4590)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %4568)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %4569)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %4570)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!4 = !{!5, !44, !46, !49}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 31, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 61, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!27 = !{i32 19, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !36}
!36 = !{i32 0, i32 14}
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!44 = !{!45}
!45 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
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
!56 = !{[39 x i32] [i32 37, i32 8, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 119, i32 119]}
!57 = !{void ()* @ps_main, !"ps_main", !58, !4, !83}
!58 = !{!59, !79, null}
!59 = !{!60, !63, !64, !66, !68, !69, !71, !73, !74, !75, !77, !78}
!60 = !{i32 0, !"SV_Position", i8 9, i8 3, !61, i8 4, i32 1, i8 4, i32 0, i8 0, !62}
!61 = !{i32 0}
!62 = !{i32 3, i32 11}
!63 = !{i32 1, !"COLOR", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!64 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 2, i8 0, !65}
!65 = !{i32 3, i32 3}
!66 = !{i32 3, !"NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 3, i32 3, i8 0, !67}
!67 = !{i32 3, i32 7}
!68 = !{i32 4, !"TANGENT", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!69 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !61, i8 2, i32 1, i8 1, i32 3, i8 3, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !72, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!72 = !{i32 1}
!73 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 2, i32 6, i8 0, null}
!74 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 7, i8 0, null}
!75 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !61, i8 1, i32 1, i8 4, i32 8, i8 0, !76}
!76 = !{i32 3, i32 9}
!77 = !{i32 10, !"SV_IsFrontFace", i8 5, i8 13, !61, i8 1, i32 1, i8 1, i32 9, i8 0, !70}
!78 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !61, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!79 = !{!80, !82}
!80 = !{i32 0, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!81 = !{i32 3, i32 15}
!82 = !{i32 1, !"SV_Target", i8 9, i8 16, !72, i8 0, i32 1, i8 4, i32 1, i8 0, !81}
!83 = !{i32 0, i64 24}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
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
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}

