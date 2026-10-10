;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xyzw        2     NONE   float       
; NORMAL                   0   xyz         3     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float       
; CARD_BARY_AND_TILE       1   xyzw        5     NONE   float   xy  
; CARD_TILE2_AND_TILE      3   xyzw        6     NONE   float       
; CARD_TEXCOORDS_AND_RAY     1   xyzw        7     NONE   float   xyzw
; CARD_TEXCOORDS_AND_RAY     2   xyzw        8     NONE   float   xyzw
; CARD_TEXCOORDS_AND_RAY     3   xyzw        9     NONE   float   xyzw
; CARD_DEPTH_AND_SCALE     0   xyzw       10     NONE   float   xyz 
; SECONDARY_TEXCOORDS      0   xy         11     NONE   float       
; SCEONDARY_NORMAL         0   xyzw       12     NONE   float       
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x  w
; SV_IsFrontFace           0   x          14    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 3d1f72b4025f263bb32a159341aaeacd
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
; CARD_TILE2_AND_TILE      3        nointerpolation       
; CARD_TEXCOORDS_AND_RAY     1          noperspective       
; CARD_TEXCOORDS_AND_RAY     2          noperspective       
; CARD_TEXCOORDS_AND_RAY     3          noperspective       
; CARD_DEPTH_AND_SCALE     0          noperspective       
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
;                                   texture     f32     2darray     T15     t35,space2     1
;                                   texture     f32          3d     T16     t31,space2     1
;                                   texture    byte         r/o     T17     t10,space1     1
;                                   texture    byte         r/o     T18      t1,space1     1
;                                   texture     f32          1d     T19     t32,space2     1
;                                   texture     f32     2darray     T20      t8,space2     1
;                                   texture     f32          2d     T21      t2,space2     1
;                                   texture     f32          2d     T22      t3,space2     1
;                                   texture     f32          2d     T23      t4,space2     1
;                                   textureunorm_f32     2darray     T24     t80,space2     1
;                                   texture    byte         r/o     T25     t67,space1     1
;                                   texture     f32          2d     T26      t7,space2     1
;                                   texture     f32          2d     T27      t6,space2     1
;                                   texture     f32          2d     T28      t5,space2     1
;                                   texture     f32          2d     T29     t38,space2     1
;                                   texture    byte         r/o     T30     t12,space1     1
;                                   texture    byte         r/o     T31     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 57, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 52, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 3, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 52, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 3, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 52, 55, 56 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = alloca [4 x i32], align 4
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = icmp ne i32 %41, 0
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = alloca [3 x float], align 4
  %70 = alloca [3 x float], align 4
  %71 = alloca [3 x float], align 4
  %72 = alloca [3 x float], align 4
  %73 = alloca [12 x float], align 4
  %74 = alloca [12 x float], align 4
  %75 = alloca [4 x float], align 4
  %76 = alloca [4 x float], align 4
  %77 = alloca [4 x float], align 4
  %78 = alloca [3 x float], align 4
  %79 = alloca [3 x float], align 4
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fmul fast float %81, %66
  %83 = fmul fast float %81, %67
  %84 = select i1 %42, float 1.000000e+00, float -1.000000e+00
  %85 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %86 = bitcast float %85 to i32
  %87 = ashr i32 %86, 1
  %88 = sub nsw i32 1597250115, %87
  %89 = bitcast i32 %88 to float
  %90 = fmul fast float %63, %84
  %91 = fmul fast float %90, %89
  %92 = fmul fast float %64, %84
  %93 = fmul fast float %92, %89
  %94 = fmul fast float %65, %84
  %95 = fmul fast float %94, %89
  %96 = lshr i32 %44, 8
  %97 = mul nuw nsw i32 %96, 24
  %98 = add nuw nsw i32 %97, 12
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %98, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.i32 %99, 0
  %101 = extractvalue %dx.types.ResRet.i32 %99, 1
  %102 = and i32 %100, 65535
  %103 = uitofp i32 %102 to float
  %104 = lshr i32 %100, 16
  %105 = uitofp i32 %104 to float
  %106 = and i32 %101, 65535
  %107 = uitofp i32 %106 to float
  %108 = lshr i32 %101, 16
  %109 = uitofp i32 %108 to float
  %110 = fmul fast float %103, 0x3F00001000000000
  %111 = fmul fast float %105, 0x3F00001000000000
  %112 = fmul fast float %107, 0x3F00001000000000
  %113 = fmul fast float %109, 0x3F00001000000000
  %114 = fadd fast float %110, -1.000000e+00
  %115 = fadd fast float %111, -1.000000e+00
  %116 = fadd fast float %112, -1.000000e+00
  %117 = fadd fast float %113, -1.000000e+00
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.i32 %119, 3
  %121 = and i32 %120, 3
  %122 = icmp ne i32 %121, 0
  %123 = and i32 %120, 4
  %124 = icmp ne i32 %123, 0
  %125 = and i1 %122, %124
  br i1 %125, label %126, label %137

; <label>:126                                     ; preds = %0
  %127 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %128 = fmul fast float %127, %83
  %129 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %130 = fmul fast float %129, %82
  %131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %35, float %130, float %128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = fsub fast float 1.000000e+00, %132
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = fcmp fast olt float %133, %135
  br label %140

; <label>:137                                     ; preds = %0
  %138 = icmp eq i32 %123, 0
  %139 = and i1 %122, %138
  br label %140

; <label>:140                                     ; preds = %137, %126
  %141 = phi i1 [ %136, %126 ], [ %139, %137 ]
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = fmul fast float %143, 0x3FE3C6EF40000000
  %145 = frem fast float %82, 2.560000e+02
  %146 = frem fast float %83, 2.560000e+02
  %147 = fptoui float %145 to i32
  %148 = fptoui float %146 to i32
  %149 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %147, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = fadd fast float %150, %144
  %152 = add i32 %43, 60
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = add i32 %154, 0
  %156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %157 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %156, i32 0)  ; GetDimensions(handle,mipLevel)
  %158 = extractvalue %dx.types.Dimensions %157, 0
  %159 = sitofp i32 %158 to float
  %160 = extractvalue %dx.types.Dimensions %157, 1
  %161 = sitofp i32 %160 to float
  %162 = fmul fast float %105, 0x3F10001000000000
  %163 = fadd fast float %162, -2.000000e+00
  %164 = fmul fast float %163, %115
  %165 = fsub fast float 1.000000e+00, %164
  %166 = fmul fast float %107, 0x3F10001000000000
  %167 = fadd fast float %166, -2.000000e+00
  %168 = fmul fast float %167, %116
  %169 = fsub fast float %165, %168
  %170 = fmul fast float %103, 0x3F10001000000000
  %171 = fadd fast float %170, -2.000000e+00
  %172 = fmul fast float %171, %115
  %173 = fmul fast float %167, %117
  %174 = fsub fast float %172, %173
  %175 = fmul fast float %171, %116
  %176 = fmul fast float %163, %117
  %177 = fadd fast float %175, %176
  %178 = fadd fast float %172, %173
  %179 = fmul fast float %171, %114
  %180 = fsub fast float 1.000000e+00, %179
  %181 = fsub fast float %180, %168
  %182 = fmul fast float %163, %116
  %183 = fmul fast float %171, %117
  %184 = fsub fast float %182, %183
  %185 = fsub fast float %175, %176
  %186 = fadd fast float %182, %183
  %187 = fsub fast float %180, %164
  %188 = add i32 %43, 24
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 2
  %191 = bitcast i32 %190 to float
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 0
  store float %60, float* %196, align 4, !noalias !85
  %197 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 1
  store float %61, float* %197, align 4, !noalias !85
  %198 = fsub fast float 1.000000e+00, %60
  %199 = fsub fast float %198, %61
  %200 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 2
  store float %199, float* %200, align 4, !noalias !85
  %201 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float %45, float* %201, align 4, !tbaa !96, !noalias !85
  %202 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float %46, float* %202, align 4, !tbaa !96, !noalias !85
  %203 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float %47, float* %203, align 4, !tbaa !96, !noalias !85
  %204 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 0
  %205 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 0
  store float %58, float* %204, align 4
  store float %59, float* %205, align 4
  %206 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 1
  %207 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 1
  store float %54, float* %206, align 4
  store float %55, float* %207, align 4
  %208 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 2
  %209 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 2
  store float %50, float* %208, align 4
  store float %51, float* %209, align 4
  %210 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 0
  %211 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 0
  store float %56, float* %210, align 4
  store float %57, float* %211, align 4
  %212 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 1
  %213 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 1
  store float %52, float* %212, align 4
  store float %53, float* %213, align 4
  %214 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 2
  %215 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 2
  store float %48, float* %214, align 4
  store float %49, float* %215, align 4
  br label %216

; <label>:216                                     ; preds = %321, %140
  %217 = phi float [ %323, %321 ], [ %60, %140 ]
  %218 = phi float [ %312, %321 ], [ undef, %140 ]
  %219 = phi float [ %313, %321 ], [ undef, %140 ]
  %220 = phi float [ %314, %321 ], [ undef, %140 ]
  %221 = phi float [ %315, %321 ], [ 1.000000e+00, %140 ]
  %222 = phi float [ %316, %321 ], [ 0.000000e+00, %140 ]
  %223 = phi i32 [ %319, %321 ], [ 0, %140 ]
  %224 = phi float [ %317, %321 ], [ 0.000000e+00, %140 ]
  %225 = phi float [ %318, %321 ], [ 0.000000e+00, %140 ]
  %226 = fcmp fast ogt float %217, 0x3EB0C6F7A0000000
  br i1 %226, label %227, label %311

; <label>:227                                     ; preds = %216
  %228 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %223
  %229 = load float, float* %228, align 4, !tbaa !96, !noalias !85
  %230 = fdiv fast float 1.000000e+00, %229
  %231 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 %223
  %232 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 %223
  %233 = load float, float* %231, align 4
  %234 = load float, float* %232, align 4
  %235 = fmul fast float %233, %230
  %236 = fmul fast float %234, %230
  %237 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 %223
  %238 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 %223
  %239 = load float, float* %237, align 4
  %240 = load float, float* %238, align 4
  %241 = fmul fast float %239, %230
  %242 = fmul fast float %240, %230
  %243 = fmul fast float %235, %159
  %244 = call float @dx.op.unary.f32(i32 83, float %243)  ; DerivCoarseX(value)
  %245 = call float @dx.op.unary.f32(i32 84, float %243)  ; DerivCoarseY(value)
  %246 = fmul fast float %236, %161
  %247 = call float @dx.op.unary.f32(i32 83, float %246)  ; DerivCoarseX(value)
  %248 = call float @dx.op.unary.f32(i32 84, float %246)  ; DerivCoarseY(value)
  %249 = fmul fast float %247, %247
  %250 = fmul fast float %248, %248
  %251 = fadd fast float %250, %249
  %252 = fmul fast float %247, %244
  %253 = fmul fast float %248, %245
  %254 = fadd fast float %253, %252
  %255 = fmul fast float %244, %244
  %256 = fmul fast float %245, %245
  %257 = fadd fast float %256, %255
  %258 = fmul fast float %251, %257
  %259 = fmul fast float %254, %254
  %260 = fsub fast float %258, %259
  %261 = bitcast float %260 to i32
  %262 = fadd fast float %251, %257
  %263 = bitcast float %262 to i32
  %264 = sub i32 8388608, %263
  %265 = add i32 %264, %261
  %266 = ashr i32 %265, 24
  %267 = sitofp i32 %266 to float
  %268 = add i32 %43, 72
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = add i32 %270, 0
  %272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %272, %dx.types.Handle %35, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float %267)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = fmul fast float %274, 2.000000e+00
  %276 = fadd fast float %275, -1.000000e+00
  %277 = fmul fast float %276, %191
  %278 = fmul fast float %241, %277
  %279 = fmul fast float %242, %277
  %280 = fadd fast float %278, %235
  %281 = fadd fast float %279, %236
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = add i32 %283, 0
  %285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %285, %dx.types.Handle %35, float %280, float %281, float undef, float undef, i32 0, i32 0, i32 undef, float %267)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  %291 = fmul fast float %287, 2.000000e+00
  %292 = fmul fast float %288, 2.000000e+00
  %293 = fmul fast float %289, 2.000000e+00
  %294 = fadd fast float %291, -1.000000e+00
  %295 = fadd fast float %292, -1.000000e+00
  %296 = fadd fast float %293, -1.000000e+00
  %297 = fmul fast float %294, %169
  %298 = call float @dx.op.tertiary.f32(i32 46, float %295, float %174, float %297)  ; FMad(a,b,c)
  %299 = call float @dx.op.tertiary.f32(i32 46, float %296, float %177, float %298)  ; FMad(a,b,c)
  %300 = fmul fast float %294, %178
  %301 = call float @dx.op.tertiary.f32(i32 46, float %295, float %181, float %300)  ; FMad(a,b,c)
  %302 = call float @dx.op.tertiary.f32(i32 46, float %296, float %184, float %301)  ; FMad(a,b,c)
  %303 = fmul fast float %294, %185
  %304 = call float @dx.op.tertiary.f32(i32 46, float %295, float %186, float %303)  ; FMad(a,b,c)
  %305 = call float @dx.op.tertiary.f32(i32 46, float %296, float %187, float %304)  ; FMad(a,b,c)
  %306 = fmul fast float %217, %290
  %307 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %299, float %302, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = fmul fast float %306, %307
  %309 = fcmp fast olt float %308, %221
  br i1 %309, label %310, label %311

; <label>:310                                     ; preds = %227
  br label %311

; <label>:311                                     ; preds = %310, %227, %216
  %312 = phi float [ %218, %216 ], [ %299, %310 ], [ %218, %227 ]
  %313 = phi float [ %219, %216 ], [ %302, %310 ], [ %219, %227 ]
  %314 = phi float [ %220, %216 ], [ %305, %310 ], [ %220, %227 ]
  %315 = phi float [ %221, %216 ], [ %308, %310 ], [ %221, %227 ]
  %316 = phi float [ %222, %216 ], [ %267, %310 ], [ %267, %227 ]
  %317 = phi float [ %224, %216 ], [ %280, %310 ], [ %224, %227 ]
  %318 = phi float [ %225, %216 ], [ %281, %310 ], [ %225, %227 ]
  %319 = add nuw nsw i32 %223, 1
  %320 = icmp eq i32 %319, 3
  br i1 %320, label %324, label %321

; <label>:321                                     ; preds = %311
  %322 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 %319
  %323 = load float, float* %322, align 4, !tbaa !96, !noalias !85
  br label %216

; <label>:324                                     ; preds = %311
  %325 = call float @dx.op.unary.f32(i32 22, float %151)  ; Frc(value)
  br i1 %42, label %335, label %326

; <label>:326                                     ; preds = %324
  %327 = call float @dx.op.dot3.f32(i32 55, float %91, float %93, float %95, float %312, float %313, float %314)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = fmul fast float %327, 2.000000e+00
  %329 = fmul fast float %328, %91
  %330 = fmul fast float %328, %93
  %331 = fmul fast float %328, %95
  %332 = fsub fast float %312, %329
  %333 = fsub fast float %313, %330
  %334 = fsub fast float %314, %331
  br label %335

; <label>:335                                     ; preds = %326, %324
  %336 = phi float [ %332, %326 ], [ %312, %324 ]
  %337 = phi float [ %333, %326 ], [ %313, %324 ]
  %338 = phi float [ %334, %326 ], [ %314, %324 ]
  %339 = add i32 %43, 56
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = add i32 %341, 0
  %343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %343, %dx.types.Handle %35, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float %316)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = extractvalue %dx.types.ResRet.f32 %344, 1
  %347 = extractvalue %dx.types.ResRet.f32 %344, 2
  %348 = extractvalue %dx.types.ResRet.f32 %344, 3
  %349 = add i32 %43, 64
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = add i32 %351, 0
  %353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %353, %dx.types.Handle %35, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float %316)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = extractvalue %dx.types.ResRet.f32 %354, 3
  %359 = add i32 %43, 68
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = add i32 %361, 0
  %363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %363, %dx.types.Handle %35, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float %316)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = add i32 %43, 72
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = add i32 %368, 0
  %370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %370, %dx.types.Handle %35, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float %316)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = fadd fast float %62, 1.000000e+00
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 2
  %376 = bitcast i32 %375 to float
  %377 = fmul fast float %372, 2.000000e+00
  %378 = fsub fast float %373, %377
  %379 = fmul fast float %376, %378
  %380 = fadd fast float %379, %68
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 3
  %384 = fmul fast float %82, 2.000000e+00
  %385 = fmul fast float %384, %382
  %386 = fmul fast float %83, 2.000000e+00
  %387 = fmul fast float %386, %383
  %388 = fsub fast float 1.000000e+00, %385
  %389 = fsub fast float 1.000000e+00, %387
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = fmul fast float %388, %391
  %395 = fmul fast float %388, %392
  %396 = fmul fast float %388, %393
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %401 = fmul fast float %389, %398
  %402 = fmul fast float %389, %399
  %403 = fmul fast float %389, %400
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %407 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %408 = fadd fast float %401, %405
  %409 = fadd fast float %408, %394
  %410 = fadd fast float %402, %406
  %411 = fadd fast float %410, %395
  %412 = fadd fast float %403, %407
  %413 = fadd fast float %412, %396
  %414 = fmul fast float %409, %380
  %415 = fmul fast float %411, %380
  %416 = fmul fast float %413, %380
  %417 = fadd fast float %365, 0xBFB99999A0000000
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fmul fast float %418, 0x3FF1C71C80000000
  %420 = call float @dx.op.binary.f32(i32 36, float %365, float 0x3FB99999A0000000)  ; FMin(a,b)
  %421 = fsub fast float 1.000000e+00, %419
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fmul fast float %422, %345
  %424 = fmul fast float %422, %346
  %425 = fmul fast float %422, %347
  %426 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %427 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %428 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %429 = fmul fast float %419, %345
  %430 = fmul fast float %419, %346
  %431 = fmul fast float %419, %347
  %432 = fadd fast float %429, %420
  %433 = fadd fast float %430, %420
  %434 = fadd fast float %431, %420
  %435 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %436 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %437 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %438 = call float @dx.op.dot3.f32(i32 55, float %426, float %427, float %428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %439 = fmul fast float %438, 1.875000e-01
  %440 = fadd fast float %439, 0x3FE647AE20000000
  %441 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = fsub fast float -0.000000e+00, %416
  %445 = call float @dx.op.dot3.f32(i32 55, float %414, float %415, float %416, float %414, float %415, float %416)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = call float @dx.op.unary.f32(i32 25, float %445)  ; Rsqrt(value)
  %447 = fmul fast float %446, %414
  %448 = fmul fast float %446, %415
  %449 = fmul fast float %446, %416
  %450 = fsub fast float -0.000000e+00, %447
  %451 = fsub fast float -0.000000e+00, %448
  %452 = fsub fast float -0.000000e+00, %449
  %453 = select i1 %141, float 0.000000e+00, float %437
  %454 = call float @dx.op.dot3.f32(i32 55, float %336, float %337, float %338, float %450, float %451, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = call float @dx.op.dot3.f32(i32 55, float %447, float %448, float %449, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %457 = fmul fast float %456, 2.000000e+00
  %458 = fmul fast float %457, %336
  %459 = fmul fast float %457, %337
  %460 = fmul fast float %457, %338
  %461 = fsub fast float %447, %458
  %462 = fsub fast float %448, %459
  %463 = fsub fast float %449, %460
  %464 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %358)  ; FMin(a,b)
  %465 = fsub fast float 1.000000e+00, %464
  %466 = bitcast float %465 to i32
  %467 = ashr i32 %466, 1
  %468 = add nsw i32 %467, 532487669
  %469 = bitcast i32 %468 to float
  %470 = fsub fast float 1.000000e+00, %348
  %471 = call float @dx.op.binary.f32(i32 35, float %470, float 0x3F847AE140000000)  ; FMax(a,b)
  %472 = fmul fast float %471, %471
  %473 = fmul fast float %472, %472
  %474 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  %475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %35, float %469, float %473, float %474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %480 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %481 = fadd fast float %478, %414
  %482 = fadd fast float %479, %415
  %483 = fadd fast float %480, %416
  %484 = fmul fast float %336, 3.200000e+01
  %485 = fmul fast float %337, 3.200000e+01
  %486 = fadd fast float %481, %484
  %487 = fadd fast float %482, %485
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = fsub fast float %486, %489
  %492 = fsub fast float %487, %490
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %496 = fmul fast float %491, %494
  %497 = fmul fast float %492, %495
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = fmul fast float %496, %499
  %501 = extractvalue %dx.types.CBufRet.f32 %498, 1
  %502 = fadd fast float %500, %501
  %503 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %504 = fmul fast float %503, %497
  %505 = extractvalue %dx.types.CBufRet.f32 %498, 3
  %506 = fadd fast float %504, %505
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %35, float %502, float %506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %513 = fsub fast float %511, %512
  %514 = fmul fast float %513, %508
  %515 = fadd fast float %514, %512
  %516 = extractvalue %dx.types.CBufRet.f32 %510, 3
  %517 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %518 = fsub fast float %516, %517
  %519 = fmul fast float %518, %509
  %520 = fadd fast float %519, %517
  %521 = fsub fast float %483, %515
  %522 = fsub fast float %520, %515
  %523 = fdiv fast float %521, %522
  %524 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 0
  %527 = fmul fast float %526, %524
  %528 = extractvalue %dx.types.CBufRet.f32 %525, 1
  %529 = fadd fast float %527, %528
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %502, float %506, float %529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = extractvalue %dx.types.ResRet.f32 %530, 2
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %537 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %538 = fmul fast float %535, %531
  %539 = fmul fast float %536, %532
  %540 = fmul fast float %537, %533
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %545 = fadd fast float %538, %542
  %546 = fadd fast float %539, %543
  %547 = fadd fast float %540, %544
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = fmul fast float %549, %496
  %551 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %552 = fadd fast float %550, %551
  %553 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %554 = fmul fast float %553, %497
  %555 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %556 = fadd fast float %554, %555
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %561 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %566 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %552, float %556, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = extractvalue %dx.types.ResRet.f32 %567, 1
  %570 = extractvalue %dx.types.ResRet.f32 %567, 2
  %571 = extractvalue %dx.types.ResRet.f32 %567, 3
  %572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %552, float %556, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  %577 = fmul fast float %568, %545
  %578 = fmul fast float %573, %545
  %579 = fmul fast float %575, %545
  %580 = fmul fast float %571, %545
  %581 = fadd fast float %577, %558
  %582 = fadd fast float %578, %559
  %583 = fadd fast float %579, %560
  %584 = fadd fast float %580, %561
  %585 = fmul fast float %569, %545
  %586 = fmul fast float %574, %545
  %587 = fadd fast float %585, %563
  %588 = fadd fast float %586, %564
  %589 = fmul fast float %570, %545
  %590 = fmul fast float %576, %545
  %591 = fadd fast float %589, %565
  %592 = fadd fast float %590, %566
  %593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %552, float %556, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = extractvalue %dx.types.ResRet.f32 %593, 3
  %598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %552, float %556, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = extractvalue %dx.types.ResRet.f32 %598, 3
  %603 = fmul fast float %594, %546
  %604 = fmul fast float %599, %546
  %605 = fmul fast float %601, %546
  %606 = fmul fast float %597, %546
  %607 = fadd fast float %581, %603
  %608 = fadd fast float %582, %604
  %609 = fadd fast float %583, %605
  %610 = fadd fast float %584, %606
  %611 = fmul fast float %595, %546
  %612 = fmul fast float %600, %546
  %613 = fadd fast float %587, %611
  %614 = fadd fast float %588, %612
  %615 = fmul fast float %596, %546
  %616 = fmul fast float %602, %546
  %617 = fadd fast float %591, %615
  %618 = fadd fast float %592, %616
  %619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %552, float %556, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = extractvalue %dx.types.ResRet.f32 %619, 3
  %624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %552, float %556, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = extractvalue %dx.types.ResRet.f32 %624, 1
  %627 = extractvalue %dx.types.ResRet.f32 %624, 2
  %628 = extractvalue %dx.types.ResRet.f32 %624, 3
  %629 = fmul fast float %620, %547
  %630 = fmul fast float %625, %547
  %631 = fmul fast float %627, %547
  %632 = fmul fast float %623, %547
  %633 = fadd fast float %607, %629
  %634 = fadd fast float %608, %630
  %635 = fadd fast float %609, %631
  %636 = fadd fast float %610, %632
  %637 = fmul fast float %621, %547
  %638 = fmul fast float %626, %547
  %639 = fadd fast float %613, %637
  %640 = fadd fast float %614, %638
  %641 = fmul fast float %622, %547
  %642 = fmul fast float %628, %547
  %643 = fadd fast float %617, %641
  %644 = fadd fast float %618, %642
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = fsub fast float %481, %646
  %648 = fsub fast float %489, %481
  %649 = call float @dx.op.binary.f32(i32 35, float %648, float %647)  ; FMax(a,b)
  %650 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %651 = fsub fast float %482, %650
  %652 = fsub fast float %490, %482
  %653 = call float @dx.op.binary.f32(i32 35, float %652, float %651)  ; FMax(a,b)
  %654 = call float @dx.op.binary.f32(i32 35, float %649, float %653)  ; FMax(a,b)
  %655 = extractvalue %dx.types.CBufRet.f32 %493, 3
  %656 = fmul fast float %655, %654
  %657 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %661 = extractvalue %dx.types.CBufRet.f32 %658, 2
  %662 = extractvalue %dx.types.CBufRet.f32 %658, 3
  %663 = fsub fast float %659, %633
  %664 = fsub fast float %660, %634
  %665 = fsub fast float %661, %635
  %666 = fsub fast float %662, %636
  %667 = fmul fast float %663, %657
  %668 = fmul fast float %664, %657
  %669 = fmul fast float %665, %657
  %670 = fmul fast float %666, %657
  %671 = fadd fast float %667, %633
  %672 = fadd fast float %668, %634
  %673 = fadd fast float %669, %635
  %674 = fadd fast float %670, %636
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %678 = fsub fast float %676, %639
  %679 = fsub fast float %677, %640
  %680 = fmul fast float %678, %657
  %681 = fmul fast float %679, %657
  %682 = fadd fast float %680, %639
  %683 = fadd fast float %681, %640
  %684 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %685 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %686 = fsub fast float %684, %643
  %687 = fsub fast float %685, %644
  %688 = fmul fast float %686, %657
  %689 = fmul fast float %687, %657
  %690 = fadd fast float %688, %643
  %691 = fadd fast float %689, %644
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = fmul fast float %693, %671
  %695 = fmul fast float %693, %672
  %696 = fmul fast float %693, %673
  %697 = fmul fast float %693, %674
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = fmul fast float %699, %682
  %701 = fmul fast float %699, %683
  %702 = fadd fast float %700, %694
  %703 = fadd fast float %701, %696
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = fmul fast float %705, %690
  %707 = fmul fast float %705, %691
  %708 = fadd fast float %702, %706
  %709 = fadd fast float %703, %707
  %710 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %711 = fmul fast float %710, %671
  %712 = fmul fast float %710, %672
  %713 = fmul fast float %710, %673
  %714 = fmul fast float %710, %674
  %715 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %716 = fmul fast float %715, %682
  %717 = fmul fast float %715, %683
  %718 = fadd fast float %716, %711
  %719 = fadd fast float %717, %713
  %720 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %721 = fmul fast float %720, %690
  %722 = fmul fast float %720, %691
  %723 = fadd fast float %718, %721
  %724 = fadd fast float %719, %722
  %725 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %726 = fmul fast float %725, %671
  %727 = fmul fast float %725, %672
  %728 = fmul fast float %725, %673
  %729 = fmul fast float %725, %674
  %730 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %731 = fmul fast float %730, %682
  %732 = fmul fast float %730, %683
  %733 = fadd fast float %731, %726
  %734 = fadd fast float %732, %728
  %735 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %736 = fmul fast float %735, %690
  %737 = fmul fast float %735, %691
  %738 = fadd fast float %733, %736
  %739 = fadd fast float %734, %737
  %740 = fmul fast float %727, %727
  %741 = fmul fast float %739, %739
  %742 = fmul fast float %729, %729
  %743 = fadd fast float %742, %740
  %744 = fadd fast float %743, %741
  %745 = call float @dx.op.unary.f32(i32 24, float %744)  ; Sqrt(value)
  %746 = fcmp fast ugt float %745, 0.000000e+00
  br i1 %746, label %747, label %762

; <label>:747                                     ; preds = %335
  %748 = fsub fast float -0.000000e+00, %729
  %749 = fdiv fast float %748, %745
  %750 = fsub fast float -0.000000e+00, %727
  %751 = fdiv fast float %750, %745
  %752 = fdiv fast float %739, %745
  %753 = fmul fast float %738, 0x3FE279A760000000
  %754 = fmul fast float %751, %727
  %755 = fmul fast float %752, %739
  %756 = fmul fast float %749, %729
  %757 = fadd fast float %754, %756
  %758 = fsub fast float %757, %755
  %759 = call float @dx.op.unary.f32(i32 6, float %758)  ; FAbs(value)
  %760 = fadd fast float %759, 0x3DDB7CDFE0000000
  %761 = fdiv fast float %753, %760
  br label %762

; <label>:762                                     ; preds = %747, %335
  %763 = phi float [ %761, %747 ], [ 1.000000e+00, %335 ]
  %764 = fmul fast float %712, %712
  %765 = fmul fast float %724, %724
  %766 = fmul fast float %714, %714
  %767 = fadd fast float %766, %764
  %768 = fadd fast float %767, %765
  %769 = call float @dx.op.unary.f32(i32 24, float %768)  ; Sqrt(value)
  %770 = fcmp fast ugt float %769, 0.000000e+00
  br i1 %770, label %771, label %786

; <label>:771                                     ; preds = %762
  %772 = fsub fast float -0.000000e+00, %714
  %773 = fdiv fast float %772, %769
  %774 = fsub fast float -0.000000e+00, %712
  %775 = fdiv fast float %774, %769
  %776 = fdiv fast float %724, %769
  %777 = fmul fast float %723, 0x3FE279A760000000
  %778 = fmul fast float %775, %712
  %779 = fmul fast float %776, %724
  %780 = fmul fast float %773, %714
  %781 = fadd fast float %778, %780
  %782 = fsub fast float %781, %779
  %783 = call float @dx.op.unary.f32(i32 6, float %782)  ; FAbs(value)
  %784 = fadd fast float %783, 0x3DDB7CDFE0000000
  %785 = fdiv fast float %777, %784
  br label %786

; <label>:786                                     ; preds = %771, %762
  %787 = phi float [ %785, %771 ], [ 1.000000e+00, %762 ]
  %788 = call float @dx.op.binary.f32(i32 36, float %787, float %763)  ; FMin(a,b)
  %789 = fmul fast float %695, %695
  %790 = fmul fast float %709, %709
  %791 = fmul fast float %697, %697
  %792 = fadd fast float %791, %789
  %793 = fadd fast float %792, %790
  %794 = call float @dx.op.unary.f32(i32 24, float %793)  ; Sqrt(value)
  %795 = fcmp fast ugt float %794, 0.000000e+00
  br i1 %795, label %796, label %811

; <label>:796                                     ; preds = %786
  %797 = fsub fast float -0.000000e+00, %697
  %798 = fdiv fast float %797, %794
  %799 = fsub fast float -0.000000e+00, %695
  %800 = fdiv fast float %799, %794
  %801 = fdiv fast float %709, %794
  %802 = fmul fast float %708, 0x3FE279A760000000
  %803 = fmul fast float %800, %695
  %804 = fmul fast float %801, %709
  %805 = fmul fast float %798, %697
  %806 = fadd fast float %803, %805
  %807 = fsub fast float %806, %804
  %808 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %809 = fadd fast float %808, 0x3DDB7CDFE0000000
  %810 = fdiv fast float %802, %809
  br label %811

; <label>:811                                     ; preds = %796, %786
  %812 = phi float [ %810, %796 ], [ 1.000000e+00, %786 ]
  %813 = call float @dx.op.binary.f32(i32 36, float %812, float %788)  ; FMin(a,b)
  %814 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %815 = fcmp fast olt float %814, 1.000000e+00
  br i1 %815, label %816, label %826

; <label>:816                                     ; preds = %811
  %817 = fmul fast float %814, %695
  %818 = fmul fast float %814, %709
  %819 = fmul fast float %814, %697
  %820 = fmul fast float %814, %712
  %821 = fmul fast float %814, %724
  %822 = fmul fast float %814, %714
  %823 = fmul fast float %814, %727
  %824 = fmul fast float %814, %739
  %825 = fmul fast float %814, %729
  br label %826

; <label>:826                                     ; preds = %816, %811
  %827 = phi float [ %823, %816 ], [ %727, %811 ]
  %828 = phi float [ %824, %816 ], [ %739, %811 ]
  %829 = phi float [ %825, %816 ], [ %729, %811 ]
  %830 = phi float [ %820, %816 ], [ %712, %811 ]
  %831 = phi float [ %821, %816 ], [ %724, %811 ]
  %832 = phi float [ %822, %816 ], [ %714, %811 ]
  %833 = phi float [ %817, %816 ], [ %695, %811 ]
  %834 = phi float [ %818, %816 ], [ %709, %811 ]
  %835 = phi float [ %819, %816 ], [ %697, %811 ]
  %836 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %708)  ; FMax(a,b)
  %837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %723)  ; FMax(a,b)
  %838 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %738)  ; FMax(a,b)
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = fcmp fast ogt float %840, 0.000000e+00
  %842 = fcmp fast oge float %496, 0.000000e+00
  %843 = and i1 %842, %841
  %844 = fcmp fast ole float %496, 1.000000e+00
  %845 = and i1 %844, %843
  %846 = fcmp fast oge float %497, 0.000000e+00
  %847 = and i1 %846, %845
  %848 = fcmp fast ole float %497, 1.000000e+00
  %849 = and i1 %848, %847
  br i1 %849, label %850, label %995, !dx.controlflow.hints !100

; <label>:850                                     ; preds = %826
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 3
  %854 = fmul fast float %852, %496
  %855 = fmul fast float %853, %497
  %856 = call float @dx.op.unary.f32(i32 27, float %854)  ; Round_ni(value)
  %857 = call float @dx.op.unary.f32(i32 27, float %855)  ; Round_ni(value)
  %858 = fptosi float %856 to i32
  %859 = fptosi float %857 to i32
  %860 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %858, i32 %859, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 65535
  %863 = lshr i32 %861, 16
  %864 = icmp eq i32 %862, 65535
  br i1 %864, label %901, label %865

; <label>:865                                     ; preds = %850
  %866 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %868 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %869 = fmul fast float %867, %496
  %870 = fmul fast float %868, %497
  %871 = fmul fast float %869, 1.250000e-01
  %872 = fmul fast float %870, 1.250000e-01
  %873 = call float @dx.op.unary.f32(i32 27, float %871)  ; Round_ni(value)
  %874 = call float @dx.op.unary.f32(i32 27, float %872)  ; Round_ni(value)
  %875 = fmul fast float %873, 8.000000e+00
  %876 = fmul fast float %874, 8.000000e+00
  %877 = and i32 %861, 255
  %878 = lshr i32 %861, 8
  %879 = and i32 %878, 255
  %880 = mul nuw nsw i32 %877, 9
  %881 = uitofp i32 %880 to float
  %882 = mul nuw nsw i32 %879, 9
  %883 = uitofp i32 %882 to float
  %884 = fadd fast float %881, 5.000000e-01
  %885 = fadd fast float %884, %869
  %886 = fsub fast float %885, %875
  %887 = fadd fast float %883, 5.000000e-01
  %888 = fadd fast float %887, %870
  %889 = fsub fast float %888, %876
  %890 = fdiv fast float %886, %840
  %891 = fdiv fast float %889, %866
  %892 = fmul fast float %524, 4.375000e-01
  %893 = fadd fast float %892, 3.125000e-02
  %894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %890, float %891, float %893, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = extractvalue %dx.types.ResRet.f32 %894, 2
  %898 = fadd fast float %895, %836
  %899 = fadd fast float %896, %837
  %900 = fadd fast float %897, %838
  br label %901

; <label>:901                                     ; preds = %865, %850
  %902 = phi float [ %900, %865 ], [ %838, %850 ]
  %903 = phi float [ %899, %865 ], [ %837, %850 ]
  %904 = phi float [ %898, %865 ], [ %836, %850 ]
  %905 = icmp eq i32 %863, 65535
  br i1 %905, label %995, label %906

; <label>:906                                     ; preds = %901
  %907 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %908 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %910 = fmul fast float %908, %496
  %911 = fmul fast float %909, %497
  %912 = fmul fast float %910, 1.250000e-01
  %913 = fmul fast float %911, 1.250000e-01
  %914 = call float @dx.op.unary.f32(i32 27, float %912)  ; Round_ni(value)
  %915 = call float @dx.op.unary.f32(i32 27, float %913)  ; Round_ni(value)
  %916 = fmul fast float %914, 8.000000e+00
  %917 = fmul fast float %915, 8.000000e+00
  %918 = fsub fast float %910, %916
  %919 = fsub fast float %911, %917
  %920 = fadd fast float %918, 5.000000e-01
  %921 = fadd fast float %919, 5.000000e-01
  %922 = and i32 %863, 255
  %923 = lshr i32 %861, 24
  %924 = mul nuw nsw i32 %922, 9
  %925 = uitofp i32 %924 to float
  %926 = mul nuw nsw i32 %923, 9
  %927 = uitofp i32 %926 to float
  %928 = fadd fast float %920, %925
  %929 = fadd fast float %921, %927
  %930 = fdiv fast float %928, %840
  %931 = fdiv fast float %929, %907
  %932 = fmul fast float %524, 4.375000e-01
  %933 = fadd fast float %932, 3.125000e-02
  %934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %930, float %931, float %933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = extractvalue %dx.types.ResRet.f32 %934, 1
  %937 = extractvalue %dx.types.ResRet.f32 %934, 2
  %938 = fadd fast float %932, 5.312500e-01
  %939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %930, float %931, float %938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = extractvalue %dx.types.ResRet.f32 %939, 1
  %942 = extractvalue %dx.types.ResRet.f32 %939, 2
  %943 = fmul fast float %940, 2.000000e+00
  %944 = fmul fast float %941, 2.000000e+00
  %945 = fmul fast float %942, 2.000000e+00
  %946 = fadd fast float %943, -1.000000e+00
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fadd fast float %945, -1.000000e+00
  %949 = fmul fast float %946, %946
  %950 = fmul fast float %947, %947
  %951 = fadd fast float %949, %950
  %952 = fmul fast float %948, %948
  %953 = fadd fast float %951, %952
  %954 = call float @dx.op.unary.f32(i32 24, float %953)  ; Sqrt(value)
  %955 = fcmp fast ogt float %954, 0.000000e+00
  br i1 %955, label %956, label %960

; <label>:956                                     ; preds = %906
  %957 = fdiv fast float %946, %954
  %958 = fdiv fast float %947, %954
  %959 = fdiv fast float %948, %954
  br label %960

; <label>:960                                     ; preds = %956, %906
  %961 = phi float [ %957, %956 ], [ 0.000000e+00, %906 ]
  %962 = phi float [ %958, %956 ], [ 0.000000e+00, %906 ]
  %963 = phi float [ %959, %956 ], [ 0.000000e+00, %906 ]
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %967 = fsub fast float %481, %965
  %968 = fsub fast float %482, %966
  %969 = fmul fast float %967, %967
  %970 = fmul fast float %968, %968
  %971 = fadd fast float %969, %970
  %972 = call float @dx.op.unary.f32(i32 24, float %971)  ; Sqrt(value)
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %975 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %976 = fsub fast float %972, %974
  %977 = fdiv fast float %976, %975
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = fmul fast float %978, 2.000000e+00
  %980 = fsub fast float 3.000000e+00, %979
  %981 = fmul fast float %978, %978
  %982 = fmul fast float %981, %980
  %983 = call float @dx.op.dot3.f32(i32 55, float %961, float %962, float %963, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %984 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %983)  ; FMax(a,b)
  %985 = fmul fast float %984, 0x400C5BF8A0000000
  %986 = fmul fast float %982, %935
  %987 = fmul fast float %986, %985
  %988 = fadd fast float %987, %904
  %989 = fmul fast float %982, %936
  %990 = fmul fast float %989, %985
  %991 = fadd fast float %990, %903
  %992 = fmul fast float %982, %937
  %993 = fmul fast float %992, %985
  %994 = fadd fast float %993, %902
  br label %995

; <label>:995                                     ; preds = %960, %901, %826
  %996 = phi float [ %994, %960 ], [ %902, %901 ], [ %838, %826 ]
  %997 = phi float [ %991, %960 ], [ %903, %901 ], [ %837, %826 ]
  %998 = phi float [ %988, %960 ], [ %904, %901 ], [ %836, %826 ]
  %999 = fcmp fast ogt float %483, %520
  %1000 = and i1 %842, %999
  %1001 = and i1 %844, %1000
  %1002 = and i1 %846, %1001
  %1003 = and i1 %848, %1002
  br i1 %1003, label %1004, label %1061, !dx.controlflow.hints !101

; <label>:1004                                    ; preds = %995
  %1005 = fmul fast float %522, 0x3FC24924A0000000
  %1006 = fsub fast float %483, %520
  %1007 = fdiv fast float %1006, %1005
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = fsub fast float %1010, %998
  %1016 = fsub fast float %1012, %833
  %1017 = fsub fast float %1013, %834
  %1018 = fsub fast float %1014, %835
  %1019 = fmul fast float %1015, %1008
  %1020 = fmul fast float %1016, %1008
  %1021 = fmul fast float %1017, %1008
  %1022 = fmul fast float %1018, %1008
  %1023 = fadd fast float %1019, %998
  %1024 = fadd fast float %1020, %833
  %1025 = fadd fast float %1021, %834
  %1026 = fadd fast float %1022, %835
  %1027 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1032 = fsub fast float %1027, %997
  %1033 = fsub fast float %1029, %830
  %1034 = fsub fast float %1030, %831
  %1035 = fsub fast float %1031, %832
  %1036 = fmul fast float %1032, %1008
  %1037 = fmul fast float %1033, %1008
  %1038 = fmul fast float %1034, %1008
  %1039 = fmul fast float %1035, %1008
  %1040 = fadd fast float %1036, %997
  %1041 = fadd fast float %1037, %830
  %1042 = fadd fast float %1038, %831
  %1043 = fadd fast float %1039, %832
  %1044 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1049 = fsub fast float %1044, %996
  %1050 = fsub fast float %1046, %827
  %1051 = fsub fast float %1047, %828
  %1052 = fsub fast float %1048, %829
  %1053 = fmul fast float %1049, %1008
  %1054 = fmul fast float %1050, %1008
  %1055 = fmul fast float %1051, %1008
  %1056 = fmul fast float %1052, %1008
  %1057 = fadd fast float %1053, %996
  %1058 = fadd fast float %1054, %827
  %1059 = fadd fast float %1055, %828
  %1060 = fadd fast float %1056, %829
  br label %1061

; <label>:1061                                    ; preds = %1004, %995
  %1062 = phi float [ %1057, %1004 ], [ %996, %995 ]
  %1063 = phi float [ %1058, %1004 ], [ %827, %995 ]
  %1064 = phi float [ %1059, %1004 ], [ %828, %995 ]
  %1065 = phi float [ %1060, %1004 ], [ %829, %995 ]
  %1066 = phi float [ %1040, %1004 ], [ %997, %995 ]
  %1067 = phi float [ %1041, %1004 ], [ %830, %995 ]
  %1068 = phi float [ %1042, %1004 ], [ %831, %995 ]
  %1069 = phi float [ %1043, %1004 ], [ %832, %995 ]
  %1070 = phi float [ %1023, %1004 ], [ %998, %995 ]
  %1071 = phi float [ %1024, %1004 ], [ %833, %995 ]
  %1072 = phi float [ %1025, %1004 ], [ %834, %995 ]
  %1073 = phi float [ %1026, %1004 ], [ %835, %995 ]
  %1074 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %1075 = fmul fast float %1074, %1070
  %1076 = fmul fast float %1074, %1066
  %1077 = fmul fast float %1074, %1062
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 3
  %1080 = fmul fast float %1075, %1079
  %1081 = fmul fast float %1076, %1079
  %1082 = fmul fast float %1077, %1079
  %1083 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1081, float %1082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = fmul fast float %1083, 0x3FD20DD760000000
  %1085 = fmul fast float %1071, 1.500000e+00
  %1086 = fmul fast float %1085, %1074
  %1087 = fmul fast float %1086, %1079
  %1088 = fmul fast float %1072, 1.500000e+00
  %1089 = fmul fast float %1088, %1074
  %1090 = fmul fast float %1089, %1079
  %1091 = fmul fast float %1073, 1.500000e+00
  %1092 = fmul fast float %1091, %1074
  %1093 = fmul fast float %1092, %1079
  %1094 = fmul fast float %1067, 1.500000e+00
  %1095 = fmul fast float %1094, %1074
  %1096 = fmul fast float %1095, %1079
  %1097 = fmul fast float %1068, 1.500000e+00
  %1098 = fmul fast float %1097, %1074
  %1099 = fmul fast float %1098, %1079
  %1100 = fmul fast float %1069, 1.500000e+00
  %1101 = fmul fast float %1100, %1074
  %1102 = fmul fast float %1101, %1079
  %1103 = fmul fast float %1063, 1.500000e+00
  %1104 = fmul fast float %1103, %1074
  %1105 = fmul fast float %1104, %1079
  %1106 = fmul fast float %1064, 1.500000e+00
  %1107 = fmul fast float %1106, %1074
  %1108 = fmul fast float %1107, %1079
  %1109 = fmul fast float %1065, 1.500000e+00
  %1110 = fmul fast float %1109, %1074
  %1111 = fmul fast float %1110, %1079
  %1112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1080)  ; FMax(a,b)
  %1113 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1090, float %1093, float %1087, float %1090, float %1093)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = fcmp fast oeq float %1113, 0.000000e+00
  %1115 = fcmp fast oeq float %1112, 0.000000e+00
  %1116 = or i1 %1115, %1114
  br i1 %1116, label %1146, label %1117

; <label>:1117                                    ; preds = %1061
  %1118 = fsub fast float -0.000000e+00, %1093
  %1119 = fsub fast float -0.000000e+00, %1087
  %1120 = call float @dx.op.unary.f32(i32 24, float %1113)  ; Sqrt(value)
  %1121 = fdiv fast float %1120, %1112
  %1122 = fcmp fast ogt float %1121, 0x3FFB6F8900000000
  %1123 = select i1 %1122, float 0x3FFB6F8900000000, float %1121
  %1124 = fmul fast float %1123, 0x3FE8A23460000000
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1126 = call float @dx.op.binary.f32(i32 35, float %1123, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1127 = fmul fast float %1125, %1112
  %1128 = fmul fast float %1126, 0x3FF279A740000000
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1118, float %1119, float %1090, float %1118, float %1119, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = call float @dx.op.unary.f32(i32 25, float %1130)  ; Rsqrt(value)
  %1132 = fmul fast float %1131, %1118
  %1133 = fmul fast float %1131, %1119
  %1134 = fmul fast float %1131, %1090
  %1135 = fmul fast float %1129, %1129
  %1136 = fsub fast float 1.000000e+00, %1135
  %1137 = fmul fast float %1126, 0x40005F8BE0000000
  %1138 = fsub fast float 0x400C5BF8A0000000, %1137
  %1139 = fdiv fast float %1127, %1138
  %1140 = fmul fast float %1139, 0x3FEE31C3C0000000
  %1141 = fmul fast float %1140, %1136
  %1142 = fmul fast float %1126, 0x3FDACB7480000000
  %1143 = fadd fast float %1142, 0xBFD7347680000000
  %1144 = fmul fast float %1143, %1139
  %1145 = fmul fast float %1144, %1136
  br label %1146

; <label>:1146                                    ; preds = %1117, %1061
  %1147 = phi float [ %1132, %1117 ], [ 0.000000e+00, %1061 ]
  %1148 = phi float [ %1133, %1117 ], [ 0.000000e+00, %1061 ]
  %1149 = phi float [ %1134, %1117 ], [ 0.000000e+00, %1061 ]
  %1150 = phi float [ %1141, %1117 ], [ 0.000000e+00, %1061 ]
  %1151 = phi float [ %1145, %1117 ], [ 0.000000e+00, %1061 ]
  %1152 = call float @dx.op.dot3.f32(i32 55, float %1147, float %1148, float %1149, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %1153 = fmul fast float %1152, 0x3FDF454380000000
  %1154 = fmul fast float %1152, %1152
  %1155 = fmul fast float %1154, 0x3FEE471020000000
  %1156 = fadd fast float %1155, 0xBFD42F6020000000
  %1157 = fmul fast float %1112, 0x3FD20DD760000000
  %1158 = fmul fast float %1156, %1151
  %1159 = fadd fast float %1158, %1157
  %1160 = fmul fast float %1153, %1150
  %1161 = fadd fast float %1159, %1160
  %1162 = fsub fast float %1159, %1160
  %1163 = call float @dx.op.dot3.f32(i32 55, float %1147, float %1148, float %1149, float %461, float %462, float %463)  ; Dot3(ax,ay,az,bx,by,bz)
  %1164 = fmul fast float %1163, 0x3FDF454380000000
  %1165 = fmul fast float %1163, %1163
  %1166 = fmul fast float %1165, 0x3FEE471020000000
  %1167 = fadd fast float %1166, 0xBFD42F6020000000
  %1168 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1150, float %1151, float 0x3FD20DD760000000, float %1164, float %1167)  ; Dot3(ax,ay,az,bx,by,bz)
  %1169 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1081)  ; FMax(a,b)
  %1170 = call float @dx.op.dot3.f32(i32 55, float %1096, float %1099, float %1102, float %1096, float %1099, float %1102)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = fcmp fast oeq float %1170, 0.000000e+00
  %1172 = fcmp fast oeq float %1169, 0.000000e+00
  %1173 = or i1 %1172, %1171
  br i1 %1173, label %1203, label %1174

; <label>:1174                                    ; preds = %1146
  %1175 = fsub fast float -0.000000e+00, %1102
  %1176 = fsub fast float -0.000000e+00, %1096
  %1177 = call float @dx.op.unary.f32(i32 24, float %1170)  ; Sqrt(value)
  %1178 = fdiv fast float %1177, %1169
  %1179 = fcmp fast ogt float %1178, 0x3FFB6F8900000000
  %1180 = select i1 %1179, float 0x3FFB6F8900000000, float %1178
  %1181 = fmul fast float %1180, 0x3FE8A23460000000
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1183 = call float @dx.op.binary.f32(i32 35, float %1180, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1184 = fmul fast float %1182, %1169
  %1185 = fmul fast float %1183, 0x3FF279A740000000
  %1186 = fadd fast float %1185, -1.000000e+00
  %1187 = call float @dx.op.dot3.f32(i32 55, float %1175, float %1176, float %1099, float %1175, float %1176, float %1099)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = call float @dx.op.unary.f32(i32 25, float %1187)  ; Rsqrt(value)
  %1189 = fmul fast float %1188, %1175
  %1190 = fmul fast float %1188, %1176
  %1191 = fmul fast float %1188, %1099
  %1192 = fmul fast float %1186, %1186
  %1193 = fsub fast float 1.000000e+00, %1192
  %1194 = fmul fast float %1183, 0x40005F8BE0000000
  %1195 = fsub fast float 0x400C5BF8A0000000, %1194
  %1196 = fdiv fast float %1184, %1195
  %1197 = fmul fast float %1196, 0x3FEE31C3C0000000
  %1198 = fmul fast float %1197, %1193
  %1199 = fmul fast float %1183, 0x3FDACB7480000000
  %1200 = fadd fast float %1199, 0xBFD7347680000000
  %1201 = fmul fast float %1200, %1196
  %1202 = fmul fast float %1201, %1193
  br label %1203

; <label>:1203                                    ; preds = %1174, %1146
  %1204 = phi float [ %1189, %1174 ], [ 0.000000e+00, %1146 ]
  %1205 = phi float [ %1190, %1174 ], [ 0.000000e+00, %1146 ]
  %1206 = phi float [ %1191, %1174 ], [ 0.000000e+00, %1146 ]
  %1207 = phi float [ %1198, %1174 ], [ 0.000000e+00, %1146 ]
  %1208 = phi float [ %1202, %1174 ], [ 0.000000e+00, %1146 ]
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1204, float %1205, float %1206, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = fmul fast float %1209, 0x3FDF454380000000
  %1211 = fmul fast float %1209, %1209
  %1212 = fmul fast float %1211, 0x3FEE471020000000
  %1213 = fadd fast float %1212, 0xBFD42F6020000000
  %1214 = fmul fast float %1169, 0x3FD20DD760000000
  %1215 = fmul fast float %1213, %1208
  %1216 = fadd fast float %1215, %1214
  %1217 = fmul fast float %1210, %1207
  %1218 = fadd fast float %1216, %1217
  %1219 = fsub fast float %1216, %1217
  %1220 = call float @dx.op.dot3.f32(i32 55, float %1204, float %1205, float %1206, float %461, float %462, float %463)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = fmul fast float %1220, 0x3FDF454380000000
  %1222 = fmul fast float %1220, %1220
  %1223 = fmul fast float %1222, 0x3FEE471020000000
  %1224 = fadd fast float %1223, 0xBFD42F6020000000
  %1225 = call float @dx.op.dot3.f32(i32 55, float %1169, float %1207, float %1208, float 0x3FD20DD760000000, float %1221, float %1224)  ; Dot3(ax,ay,az,bx,by,bz)
  %1226 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1082)  ; FMax(a,b)
  %1227 = call float @dx.op.dot3.f32(i32 55, float %1105, float %1108, float %1111, float %1105, float %1108, float %1111)  ; Dot3(ax,ay,az,bx,by,bz)
  %1228 = fcmp fast oeq float %1227, 0.000000e+00
  %1229 = fcmp fast oeq float %1226, 0.000000e+00
  %1230 = or i1 %1229, %1228
  br i1 %1230, label %1260, label %1231

; <label>:1231                                    ; preds = %1203
  %1232 = fsub fast float -0.000000e+00, %1111
  %1233 = fsub fast float -0.000000e+00, %1105
  %1234 = call float @dx.op.unary.f32(i32 24, float %1227)  ; Sqrt(value)
  %1235 = fdiv fast float %1234, %1226
  %1236 = fcmp fast ogt float %1235, 0x3FFB6F8900000000
  %1237 = select i1 %1236, float 0x3FFB6F8900000000, float %1235
  %1238 = fmul fast float %1237, 0x3FE8A23460000000
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = call float @dx.op.binary.f32(i32 35, float %1237, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1241 = fmul fast float %1239, %1226
  %1242 = fmul fast float %1240, 0x3FF279A740000000
  %1243 = fadd fast float %1242, -1.000000e+00
  %1244 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1233, float %1108, float %1232, float %1233, float %1108)  ; Dot3(ax,ay,az,bx,by,bz)
  %1245 = call float @dx.op.unary.f32(i32 25, float %1244)  ; Rsqrt(value)
  %1246 = fmul fast float %1245, %1232
  %1247 = fmul fast float %1245, %1233
  %1248 = fmul fast float %1245, %1108
  %1249 = fmul fast float %1243, %1243
  %1250 = fsub fast float 1.000000e+00, %1249
  %1251 = fmul fast float %1240, 0x40005F8BE0000000
  %1252 = fsub fast float 0x400C5BF8A0000000, %1251
  %1253 = fdiv fast float %1241, %1252
  %1254 = fmul fast float %1253, 0x3FEE31C3C0000000
  %1255 = fmul fast float %1254, %1250
  %1256 = fmul fast float %1240, 0x3FDACB7480000000
  %1257 = fadd fast float %1256, 0xBFD7347680000000
  %1258 = fmul fast float %1257, %1253
  %1259 = fmul fast float %1258, %1250
  br label %1260

; <label>:1260                                    ; preds = %1231, %1203
  %1261 = phi float [ %1246, %1231 ], [ 0.000000e+00, %1203 ]
  %1262 = phi float [ %1247, %1231 ], [ 0.000000e+00, %1203 ]
  %1263 = phi float [ %1248, %1231 ], [ 0.000000e+00, %1203 ]
  %1264 = phi float [ %1255, %1231 ], [ 0.000000e+00, %1203 ]
  %1265 = phi float [ %1259, %1231 ], [ 0.000000e+00, %1203 ]
  %1266 = call float @dx.op.dot3.f32(i32 55, float %1261, float %1262, float %1263, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %1267 = fmul fast float %1266, 0x3FDF454380000000
  %1268 = fmul fast float %1266, %1266
  %1269 = fmul fast float %1268, 0x3FEE471020000000
  %1270 = fadd fast float %1269, 0xBFD42F6020000000
  %1271 = fmul fast float %1226, 0x3FD20DD760000000
  %1272 = fmul fast float %1270, %1265
  %1273 = fadd fast float %1272, %1271
  %1274 = fmul fast float %1267, %1264
  %1275 = fadd fast float %1273, %1274
  %1276 = fsub fast float %1273, %1274
  %1277 = call float @dx.op.dot3.f32(i32 55, float %1261, float %1262, float %1263, float %461, float %462, float %463)  ; Dot3(ax,ay,az,bx,by,bz)
  %1278 = fmul fast float %1277, 0x3FDF454380000000
  %1279 = fmul fast float %1277, %1277
  %1280 = fmul fast float %1279, 0x3FEE471020000000
  %1281 = fadd fast float %1280, 0xBFD42F6020000000
  %1282 = call float @dx.op.dot3.f32(i32 55, float %1226, float %1264, float %1265, float 0x3FD20DD760000000, float %1278, float %1281)  ; Dot3(ax,ay,az,bx,by,bz)
  %1283 = call float @dx.op.binary.f32(i32 35, float %1161, float 0.000000e+00)  ; FMax(a,b)
  %1284 = call float @dx.op.binary.f32(i32 35, float %1218, float 0.000000e+00)  ; FMax(a,b)
  %1285 = call float @dx.op.binary.f32(i32 35, float %1275, float 0.000000e+00)  ; FMax(a,b)
  %1286 = call float @dx.op.binary.f32(i32 35, float %1162, float 0.000000e+00)  ; FMax(a,b)
  %1287 = call float @dx.op.binary.f32(i32 35, float %1219, float 0.000000e+00)  ; FMax(a,b)
  %1288 = call float @dx.op.binary.f32(i32 35, float %1276, float 0.000000e+00)  ; FMax(a,b)
  %1289 = call float @dx.op.binary.f32(i32 35, float %1168, float 0.000000e+00)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 35, float %1225, float 0.000000e+00)  ; FMax(a,b)
  %1291 = call float @dx.op.binary.f32(i32 35, float %1282, float 0.000000e+00)  ; FMax(a,b)
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = call float @dx.op.binary.f32(i32 36, float %426, float %1293)  ; FMin(a,b)
  %1295 = fmul fast float %1294, %465
  %1296 = fsub fast float 1.000000e+00, %1295
  %1297 = bitcast float %1296 to i32
  %1298 = sub nsw i32 2129859010, %1297
  %1299 = bitcast i32 %1298 to float
  %1300 = call float @dx.op.binary.f32(i32 36, float %427, float %1293)  ; FMin(a,b)
  %1301 = fmul fast float %1300, %465
  %1302 = fsub fast float 1.000000e+00, %1301
  %1303 = bitcast float %1302 to i32
  %1304 = sub nsw i32 2129859010, %1303
  %1305 = bitcast i32 %1304 to float
  %1306 = call float @dx.op.binary.f32(i32 36, float %428, float %1293)  ; FMin(a,b)
  %1307 = fmul fast float %1306, %465
  %1308 = fsub fast float 1.000000e+00, %1307
  %1309 = bitcast float %1308 to i32
  %1310 = sub nsw i32 2129859010, %1309
  %1311 = bitcast i32 %1310 to float
  %1312 = fmul fast float %1283, %464
  %1313 = fmul fast float %1312, %1299
  %1314 = fmul fast float %1284, %464
  %1315 = fmul fast float %1314, %1305
  %1316 = fmul fast float %1285, %464
  %1317 = fmul fast float %1316, %1311
  %1318 = call float @dx.op.binary.f32(i32 36, float %435, float %1293)  ; FMin(a,b)
  %1319 = fmul fast float %1318, %465
  %1320 = fsub fast float 1.000000e+00, %1319
  %1321 = bitcast float %1320 to i32
  %1322 = sub nsw i32 2129859010, %1321
  %1323 = bitcast i32 %1322 to float
  %1324 = call float @dx.op.binary.f32(i32 36, float %436, float %1293)  ; FMin(a,b)
  %1325 = fmul fast float %1324, %465
  %1326 = fsub fast float 1.000000e+00, %1325
  %1327 = bitcast float %1326 to i32
  %1328 = sub nsw i32 2129859010, %1327
  %1329 = bitcast i32 %1328 to float
  %1330 = call float @dx.op.binary.f32(i32 36, float %453, float %1293)  ; FMin(a,b)
  %1331 = fmul fast float %1330, %465
  %1332 = fsub fast float 1.000000e+00, %1331
  %1333 = bitcast float %1332 to i32
  %1334 = sub nsw i32 2129859010, %1333
  %1335 = bitcast i32 %1334 to float
  %1336 = fmul fast float %1289, %464
  %1337 = fmul fast float %1336, %1323
  %1338 = fmul fast float %1290, %464
  %1339 = fmul fast float %1338, %1329
  %1340 = fmul fast float %1291, %464
  %1341 = fmul fast float %1340, %1335
  %1342 = call float @dx.op.dot3.f32(i32 55, float %1313, float %1315, float %1317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1343 = select i1 %141, float 0.000000e+00, float %1313
  %1344 = select i1 %141, float %1342, float %1315
  %1345 = select i1 %141, float 0.000000e+00, float %1317
  %1346 = call float @dx.op.dot3.f32(i32 55, float %1286, float %1287, float %1288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1347 = select i1 %141, float 0.000000e+00, float %1286
  %1348 = select i1 %141, float %1346, float %1287
  %1349 = select i1 %141, float 0.000000e+00, float %1288
  %1350 = call float @dx.op.dot3.f32(i32 55, float %1337, float %1339, float %1341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1351 = select i1 %141, float 0.000000e+00, float %1337
  %1352 = select i1 %141, float %1350, float %1339
  %1353 = select i1 %141, float 0.000000e+00, float %1341
  %1354 = fmul fast float %455, 9.843750e-01
  %1355 = fmul fast float %348, 9.843750e-01
  %1356 = fadd fast float %1354, 7.812500e-03
  %1357 = fadd fast float %1355, 7.812500e-03
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 3
  %1361 = fmul fast float %1359, %435
  %1362 = fmul fast float %1359, %436
  %1363 = fmul fast float %1359, %453
  %1364 = fadd fast float %1361, %1360
  %1365 = fadd fast float %1362, %1360
  %1366 = fadd fast float %1363, %1360
  %1367 = call float @dx.op.binary.f32(i32 35, float %1365, float %1366)  ; FMax(a,b)
  %1368 = call float @dx.op.binary.f32(i32 35, float %1364, float %1367)  ; FMax(a,b)
  %1369 = fsub fast float 1.000000e+00, %1368
  %1370 = fmul fast float %1368, %348
  %1371 = fadd fast float %1370, %348
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1374 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1375 = fmul fast float %1371, %1373
  %1376 = fadd fast float %1375, %1374
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = fsub fast float 1.000000e+00, %476
  %1379 = fadd fast float %1378, %1377
  %1380 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1381 = fcmp fast olt float %1380, 1.000000e+00
  br i1 %1381, label %1382, label %1857

; <label>:1382                                    ; preds = %1260
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 3
  %1386 = fmul fast float %1384, %82
  %1387 = fmul fast float %1385, %83
  %1388 = fptoui float %1386 to i32
  %1389 = fptoui float %1387 to i32
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1393 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1394 = fadd fast float %380, -4.000000e+00
  %1395 = call float @dx.op.binary.f32(i32 35, float %1394, float 0.000000e+00)  ; FMax(a,b)
  %1396 = fadd fast float %1395, %1391
  %1397 = fmul fast float %1396, %1392
  %1398 = call float @dx.op.unary.f32(i32 23, float %1397)  ; Log(value)
  %1399 = fmul fast float %1398, %1393
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 2
  %1402 = fmul fast float %1399, %1401
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.i32 %1404, 1
  %1406 = add i32 %1405, -1
  %1407 = uitofp i32 %1405 to float
  %1408 = fmul fast float %1407, %1403
  %1409 = fptoui float %1408 to i32
  %1410 = call i32 @dx.op.binary.i32(i32 40, i32 %1409, i32 %1406)  ; UMin(a,b)
  %1411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.i32 %1411, 2
  %1413 = extractvalue %dx.types.CBufRet.i32 %1411, 3
  %1414 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1389, i32 %1412, i32 %1388)  ; UMad(a,b,c)
  %1415 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1410, i32 %1413, i32 %1414)  ; UMad(a,b,c)
  %1416 = call float @dx.op.binary.f32(i32 35, float %380, float 0.000000e+00)  ; FMax(a,b)
  %1417 = fptoui float %1416 to i32
  %1418 = lshr i32 %1417, 5
  %1419 = call i32 @dx.op.binary.i32(i32 40, i32 %1418, i32 8191)  ; UMin(a,b)
  %1420 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %1421 = fcmp fast ogt float %1420, 0.000000e+00
  %1422 = fcmp fast ogt float %463, 0.000000e+00
  %1423 = and i1 %1422, %1421
  br i1 %1423, label %1424, label %1453

; <label>:1424                                    ; preds = %1382
  %1425 = call float @dx.op.dot3.f32(i32 55, float %461, float %462, float %463, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = call float @dx.op.binary.f32(i32 35, float %1425, float -1.000000e+00)  ; FMax(a,b)
  %1427 = call float @dx.op.binary.f32(i32 36, float %1426, float 1.000000e+00)  ; FMin(a,b)
  %1428 = fmul fast float %1427, %1427
  %1429 = fsub fast float 1.000000e+00, %1428
  %1430 = fmul fast float %1429, 0x3FFC6E2300000000
  %1431 = fsub fast float 1.000000e+00, %1430
  %1432 = fcmp fast ogt float %1431, 0.000000e+00
  %1433 = call float @dx.op.unary.f32(i32 24, float %1431)  ; Sqrt(value)
  %1434 = fsub fast float 1.000000e+00, %1433
  %1435 = call float @dx.op.unary.f32(i32 23, float %1434)  ; Log(value)
  %1436 = fmul fast float %1435, 5.000000e+00
  %1437 = call float @dx.op.unary.f32(i32 21, float %1436)  ; Exp(value)
  %1438 = fmul fast float %1437, 0x3FEF591A60000000
  %1439 = fadd fast float %1438, 0x3F94DCB540000000
  %1440 = select i1 %1432, float %1439, float 1.000000e+00
  %1441 = fcmp fast oge float %1440, 1.000000e+00
  %1442 = fmul fast float %1425, 2.000000e+00
  %1443 = fadd fast float %1442, %463
  %1444 = select i1 %1441, float %1443, float %463
  %1445 = fsub fast float %1444, %463
  %1446 = fmul fast float %1445, %1420
  %1447 = fadd fast float %1446, %463
  %1448 = call float @dx.op.dot3.f32(i32 55, float %461, float %462, float %1447, float %461, float %462, float %1447)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = call float @dx.op.unary.f32(i32 25, float %1448)  ; Rsqrt(value)
  %1450 = fmul fast float %1449, %461
  %1451 = fmul fast float %1449, %462
  %1452 = fmul fast float %1447, %1449
  br label %1453

; <label>:1453                                    ; preds = %1424, %1382
  %1454 = phi float [ %1450, %1424 ], [ %461, %1382 ]
  %1455 = phi float [ %1451, %1424 ], [ %462, %1382 ]
  %1456 = phi float [ %1452, %1424 ], [ %463, %1382 ]
  %1457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.i32 %1457, 2
  %1459 = add nsw i32 %1458, -1
  %1460 = call i32 @dx.op.binary.i32(i32 37, i32 %1459, i32 0)  ; IMax(a,b)
  %1461 = shl i32 %1419, 2
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = lshr i32 %1463, 16
  %1465 = and i32 %1463, 65535
  %1466 = lshr i32 %1463, 21
  %1467 = lshr i32 %1465, 5
  %1468 = call i32 @dx.op.binary.i32(i32 40, i32 %1467, i32 %1460)  ; UMin(a,b)
  %1469 = icmp ugt i32 %1466, %1468
  br i1 %1469, label %1833, label %1470

; <label>:1470                                    ; preds = %1453
  br label %1471

; <label>:1471                                    ; preds = %1825, %1470
  %1472 = phi float [ %1826, %1825 ], [ 0.000000e+00, %1470 ]
  %1473 = phi float [ %1827, %1825 ], [ 0.000000e+00, %1470 ]
  %1474 = phi float [ %1828, %1825 ], [ 0.000000e+00, %1470 ]
  %1475 = phi float [ %1829, %1825 ], [ 1.000000e+00, %1470 ]
  %1476 = phi i32 [ %1830, %1825 ], [ %1466, %1470 ]
  %1477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.i32 %1477, 2
  %1479 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1415, i32 %1478, i32 %1476)  ; UMad(a,b,c)
  %1480 = shl i32 %1479, 2
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = shl i32 %1476, 5
  %1484 = sub nsw i32 %1464, %1483
  %1485 = call i32 @dx.op.binary.i32(i32 37, i32 %1484, i32 0)  ; IMax(a,b)
  %1486 = call i32 @dx.op.binary.i32(i32 38, i32 %1485, i32 31)  ; IMin(a,b)
  %1487 = sub nsw i32 1, %1464
  %1488 = add nsw i32 %1487, %1465
  %1489 = call i32 @dx.op.binary.i32(i32 37, i32 %1488, i32 0)  ; IMax(a,b)
  %1490 = call i32 @dx.op.binary.i32(i32 38, i32 %1489, i32 32)  ; IMin(a,b)
  %1491 = and i32 %1490, 31
  %1492 = shl i32 -1, %1491
  %1493 = xor i32 %1492, -1
  %1494 = and i32 %1486, 31
  %1495 = shl i32 %1493, %1494
  %1496 = icmp eq i32 %1490, 32
  %1497 = select i1 %1496, i32 -1, i32 %1495
  %1498 = and i32 %1497, %1482
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1825, label %1500

; <label>:1500                                    ; preds = %1471
  br label %1501

; <label>:1501                                    ; preds = %1608, %1500
  %1502 = phi float [ %1609, %1608 ], [ %1472, %1500 ]
  %1503 = phi float [ %1610, %1608 ], [ %1473, %1500 ]
  %1504 = phi float [ %1611, %1608 ], [ %1474, %1500 ]
  %1505 = phi float [ %1612, %1608 ], [ %1475, %1500 ]
  %1506 = phi i32 [ %1511, %1608 ], [ %1498, %1500 ]
  %1507 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1506)  ; FirstbitLo(value)
  %1508 = add i32 %1507, %1483
  %1509 = and i32 %1507, 31
  %1510 = shl i32 1, %1509
  %1511 = xor i32 %1510, %1506
  %1512 = mul i32 %1508, 72
  %1513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.ResRet.f32 %1513, 2
  %1517 = add i32 %1512, 12
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = add i32 %1512, 16
  %1521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.ResRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.ResRet.f32 %1521, 2
  %1525 = add i32 %1512, 28
  %1526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1528 = add i32 %1512, 32
  %1529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.ResRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.ResRet.f32 %1529, 2
  %1533 = extractvalue %dx.types.ResRet.f32 %1529, 3
  %1534 = add i32 %1512, 48
  %1535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = extractvalue %dx.types.ResRet.f32 %1535, 1
  %1538 = add i32 %1512, 56
  %1539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.ResRet.f32 %1539, 1
  %1542 = add i32 %1512, 64
  %1543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.f32 %1543, 0
  %1545 = extractvalue %dx.types.ResRet.f32 %1543, 1
  %1546 = mul i32 %1508, 60
  %1547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.ResRet.f32 %1547, 1
  %1550 = extractvalue %dx.types.ResRet.f32 %1547, 2
  %1551 = add i32 %1546, 12
  %1552 = add i32 %1546, 48
  %1553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.ResRet.f32 %1553, 1
  %1556 = extractvalue %dx.types.ResRet.f32 %1553, 2
  %1557 = and i32 %1519, 32767
  %1558 = bitcast float %1514 to i32
  %1559 = icmp eq i32 %1558, -1
  %1560 = bitcast float %1515 to i32
  %1561 = and i32 %1519, 32768
  %1562 = icmp ne i32 %1561, 0
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.CBufRet.f32 %1563, 1
  %1566 = extractvalue %dx.types.CBufRet.f32 %1563, 2
  %1567 = fsub fast float %1548, %1564
  %1568 = fsub fast float %1549, %1565
  %1569 = fsub fast float %1550, %1566
  %1570 = fsub fast float %414, %1567
  %1571 = fsub fast float %415, %1568
  %1572 = fsub fast float %416, %1569
  %1573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.ResRet.f32 %1573, 2
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1570, float %1571, float %1572, float %1574, float %1575, float %1576)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = add i32 %1546, 24
  %1579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = call float @dx.op.dot3.f32(i32 55, float %1570, float %1571, float %1572, float %1580, float %1581, float %1582)  ; Dot3(ax,ay,az,bx,by,bz)
  %1584 = add i32 %1546, 36
  %1585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.f32 %1585, 2
  %1589 = call float @dx.op.dot3.f32(i32 55, float %1570, float %1571, float %1572, float %1586, float %1587, float %1588)  ; Dot3(ax,ay,az,bx,by,bz)
  %1590 = call float @dx.op.unary.f32(i32 6, float %1577)  ; FAbs(value)
  %1591 = call float @dx.op.unary.f32(i32 6, float %1583)  ; FAbs(value)
  %1592 = call float @dx.op.unary.f32(i32 6, float %1589)  ; FAbs(value)
  %1593 = fsub fast float %1554, %1590
  %1594 = fsub fast float %1555, %1591
  %1595 = fsub fast float %1556, %1592
  %1596 = fmul fast float %1593, %1522
  %1597 = fmul fast float %1594, %1523
  %1598 = fmul fast float %1595, %1524
  %1599 = call float @dx.op.binary.f32(i32 36, float %1597, float %1598)  ; FMin(a,b)
  %1600 = call float @dx.op.binary.f32(i32 36, float %1596, float %1599)  ; FMin(a,b)
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1602 = call float @dx.op.binary.f32(i32 36, float %1505, float %1601)  ; FMin(a,b)
  %1603 = uitofp i1 %1562 to float
  %1604 = fadd fast float %1420, 1.000000e+00
  %1605 = fsub fast float %1604, %1603
  %1606 = fmul fast float %1602, %1605
  %1607 = fcmp fast ogt float %1606, 0.000000e+00
  br i1 %1607, label %1614, label %1608

; <label>:1608                                    ; preds = %1756, %1501
  %1609 = phi float [ %1820, %1756 ], [ %1502, %1501 ]
  %1610 = phi float [ %1821, %1756 ], [ %1503, %1501 ]
  %1611 = phi float [ %1822, %1756 ], [ %1504, %1501 ]
  %1612 = phi float [ %1823, %1756 ], [ %1505, %1501 ]
  %1613 = icmp eq i32 %1506, %1510
  br i1 %1613, label %1824, label %1501

; <label>:1614                                    ; preds = %1501
  br i1 %1559, label %1672, label %1615

; <label>:1615                                    ; preds = %1614
  %1616 = fsub fast float -0.000000e+00, %1574
  %1617 = fsub fast float -0.000000e+00, %1575
  %1618 = fsub fast float -0.000000e+00, %1576
  %1619 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float %1616, float %1617, float %1618)  ; Dot3(ax,ay,az,bx,by,bz)
  %1620 = fsub fast float -0.000000e+00, %1619
  %1621 = call float @dx.op.dot3.f32(i32 55, float %1570, float %1571, float %1572, float %1616, float %1617, float %1618)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = fadd fast float %1621, %1537
  %1623 = fadd fast float %1536, %1621
  %1624 = fsub fast float -0.000000e+00, %1623
  %1625 = fcmp ogt float %1619, -0.000000e+00
  %1626 = select i1 %1625, float %1624, float %1622
  %1627 = call float @dx.op.unary.f32(i32 6, float %1620)  ; FAbs(value)
  %1628 = fdiv fast float 1.000000e+00, %1627
  %1629 = fmul fast float %1626, %1628
  %1630 = call float @dx.op.binary.f32(i32 35, float %1629, float 0.000000e+00)  ; FMax(a,b)
  %1631 = fsub fast float -0.000000e+00, %1580
  %1632 = fsub fast float -0.000000e+00, %1581
  %1633 = fsub fast float -0.000000e+00, %1582
  %1634 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float %1631, float %1632, float %1633)  ; Dot3(ax,ay,az,bx,by,bz)
  %1635 = fsub fast float -0.000000e+00, %1634
  %1636 = call float @dx.op.dot3.f32(i32 55, float %1570, float %1571, float %1572, float %1631, float %1632, float %1633)  ; Dot3(ax,ay,az,bx,by,bz)
  %1637 = fadd fast float %1636, %1541
  %1638 = fadd fast float %1540, %1636
  %1639 = fsub fast float -0.000000e+00, %1638
  %1640 = fcmp ogt float %1634, -0.000000e+00
  %1641 = select i1 %1640, float %1639, float %1637
  %1642 = call float @dx.op.unary.f32(i32 6, float %1635)  ; FAbs(value)
  %1643 = fdiv fast float 1.000000e+00, %1642
  %1644 = fmul fast float %1641, %1643
  %1645 = call float @dx.op.binary.f32(i32 35, float %1644, float 0.000000e+00)  ; FMax(a,b)
  %1646 = fsub fast float -0.000000e+00, %1586
  %1647 = fsub fast float -0.000000e+00, %1587
  %1648 = fsub fast float -0.000000e+00, %1588
  %1649 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float %1646, float %1647, float %1648)  ; Dot3(ax,ay,az,bx,by,bz)
  %1650 = fsub fast float -0.000000e+00, %1649
  %1651 = call float @dx.op.dot3.f32(i32 55, float %1570, float %1571, float %1572, float %1646, float %1647, float %1648)  ; Dot3(ax,ay,az,bx,by,bz)
  %1652 = fadd fast float %1651, %1545
  %1653 = fadd fast float %1544, %1651
  %1654 = fsub fast float -0.000000e+00, %1653
  %1655 = fcmp ogt float %1649, -0.000000e+00
  %1656 = select i1 %1655, float %1654, float %1652
  %1657 = call float @dx.op.unary.f32(i32 6, float %1650)  ; FAbs(value)
  %1658 = fdiv fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1656, %1658
  %1660 = call float @dx.op.binary.f32(i32 35, float %1659, float 0.000000e+00)  ; FMax(a,b)
  %1661 = call float @dx.op.binary.f32(i32 36, float %1645, float %1660)  ; FMin(a,b)
  %1662 = call float @dx.op.binary.f32(i32 36, float %1630, float %1661)  ; FMin(a,b)
  %1663 = fmul fast float %1662, %1454
  %1664 = fmul fast float %1662, %1455
  %1665 = fmul fast float %1662, %1456
  %1666 = fadd fast float %1663, %414
  %1667 = fadd fast float %1664, %415
  %1668 = fadd fast float %1665, %416
  %1669 = fsub fast float %1666, %1514
  %1670 = fsub fast float %1667, %1515
  %1671 = fsub fast float %1668, %1516
  br label %1679

; <label>:1672                                    ; preds = %1614
  %1673 = fmul fast float %1454, 8.096000e+03
  %1674 = fmul fast float %1455, 8.096000e+03
  %1675 = fmul fast float %1456, 8.096000e+03
  %1676 = fadd fast float %1673, %414
  %1677 = fadd fast float %1674, %415
  %1678 = fadd fast float %1675, %416
  br label %1679

; <label>:1679                                    ; preds = %1672, %1615
  %1680 = phi float [ %1454, %1672 ], [ %1669, %1615 ]
  %1681 = phi float [ %1455, %1672 ], [ %1670, %1615 ]
  %1682 = phi float [ %1456, %1672 ], [ %1671, %1615 ]
  %1683 = phi float [ %1676, %1672 ], [ %1666, %1615 ]
  %1684 = phi float [ %1677, %1672 ], [ %1667, %1615 ]
  %1685 = phi float [ %1678, %1672 ], [ %1668, %1615 ]
  %1686 = fcmp fast olt float %1533, 1.000000e+00
  br i1 %1686, label %1687, label %1718, !dx.controlflow.hints !102

; <label>:1687                                    ; preds = %1679
  %1688 = fmul fast float %1682, %1531
  %1689 = fmul fast float %1681, %1532
  %1690 = fsub fast float %1688, %1689
  %1691 = fmul fast float %1680, %1532
  %1692 = fmul fast float %1682, %1530
  %1693 = fsub fast float %1691, %1692
  %1694 = fmul fast float %1681, %1530
  %1695 = fmul fast float %1680, %1531
  %1696 = fsub fast float %1694, %1695
  %1697 = fmul fast float %1690, 2.000000e+00
  %1698 = fmul fast float %1693, 2.000000e+00
  %1699 = fmul fast float %1696, 2.000000e+00
  %1700 = fmul fast float %1697, %1533
  %1701 = fmul fast float %1698, %1533
  %1702 = fmul fast float %1699, %1533
  %1703 = fmul fast float %1699, %1531
  %1704 = fmul fast float %1698, %1532
  %1705 = fmul fast float %1697, %1532
  %1706 = fmul fast float %1699, %1530
  %1707 = fmul fast float %1698, %1530
  %1708 = fmul fast float %1697, %1531
  %1709 = fadd fast float %1703, %1680
  %1710 = fadd fast float %1709, %1700
  %1711 = fsub fast float %1710, %1704
  %1712 = fsub fast float %1681, %1706
  %1713 = fadd fast float %1712, %1701
  %1714 = fadd fast float %1713, %1705
  %1715 = fadd fast float %1702, %1682
  %1716 = fsub fast float %1715, %1708
  %1717 = fadd fast float %1716, %1707
  br label %1718

; <label>:1718                                    ; preds = %1687, %1679
  %1719 = phi float [ %1711, %1687 ], [ %1680, %1679 ]
  %1720 = phi float [ %1714, %1687 ], [ %1681, %1679 ]
  %1721 = phi float [ %1717, %1687 ], [ %1682, %1679 ]
  br i1 %1559, label %1753, label %1722

; <label>:1722                                    ; preds = %1718
  %1723 = fmul fast float %348, 0x400187C840000000
  %1724 = fadd fast float %1723, 0xC00EFC2120000000
  %1725 = fmul fast float %1724, %348
  %1726 = fadd fast float %1725, 0x3FE5D16340000000
  %1727 = fmul fast float %1726, %348
  %1728 = fadd fast float %1727, 1.000000e+00
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1730 = fsub fast float %1683, %414
  %1731 = fsub fast float %1684, %415
  %1732 = fsub fast float %1685, %416
  %1733 = fsub fast float %1683, %1514
  %1734 = fsub fast float %1684, %1515
  %1735 = fsub fast float %1685, %1516
  %1736 = call float @dx.op.dot3.f32(i32 55, float %1730, float %1731, float %1732, float %1730, float %1731, float %1732)  ; Dot3(ax,ay,az,bx,by,bz)
  %1737 = call float @dx.op.dot3.f32(i32 55, float %1733, float %1734, float %1735, float %1733, float %1734, float %1735)  ; Dot3(ax,ay,az,bx,by,bz)
  %1738 = fadd fast float %1737, 0x3EE4F8B580000000
  %1739 = fdiv fast float %1736, %1738
  %1740 = bitcast float %1739 to i32
  %1741 = ashr i32 %1740, 1
  %1742 = add nsw i32 %1741, 532487669
  %1743 = bitcast i32 %1742 to float
  %1744 = fmul fast float %1743, %1729
  %1745 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1746 = fmul fast float %1745, 0x4009981AE0000000
  %1747 = fsub fast float 0x40111BBD80000000, %1746
  %1748 = fmul fast float %1747, %1745
  %1749 = fadd fast float %1748, 0xC0009F6020000000
  %1750 = fmul fast float %1749, %1745
  %1751 = fadd fast float %1750, 1.000000e+00
  %1752 = call float @dx.op.unary.f32(i32 7, float %1751)  ; Saturate(value)
  br label %1756

; <label>:1753                                    ; preds = %1718
  %1754 = icmp ne i32 %1560, -1
  %1755 = zext i1 %1754 to i32
  br label %1756

; <label>:1756                                    ; preds = %1753, %1722
  %1757 = phi float [ %348, %1753 ], [ %1752, %1722 ]
  %1758 = phi i32 [ %1755, %1753 ], [ 0, %1722 ]
  %1759 = fmul float %1757, 5.000000e+00
  %1760 = fsub float 5.000000e+00, %1759
  %1761 = icmp ne i32 %1758, 0
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 3
  %1764 = fadd fast float %1763, %1760
  %1765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1764)  ; FMax(a,b)
  %1766 = call float @dx.op.unary.f32(i32 6, float %1719)  ; FAbs(value)
  %1767 = call float @dx.op.unary.f32(i32 6, float %1720)  ; FAbs(value)
  %1768 = fadd fast float %1767, %1766
  %1769 = call float @dx.op.unary.f32(i32 6, float %1721)  ; FAbs(value)
  %1770 = fadd fast float %1768, %1769
  %1771 = fcmp fast oeq float %1770, 0.000000e+00
  %1772 = fdiv fast float 1.000000e+00, %1770
  %1773 = select i1 %1771, float 1.000000e+00, float %1772
  %1774 = fmul fast float %1773, %1719
  %1775 = fmul fast float %1773, %1720
  %1776 = call float @dx.op.unary.f32(i32 6, float %1775)  ; FAbs(value)
  %1777 = call float @dx.op.unary.f32(i32 6, float %1774)  ; FAbs(value)
  %1778 = fsub fast float 1.000000e+00, %1776
  %1779 = fsub fast float 1.000000e+00, %1777
  %1780 = fcmp fast oge float %1774, 0.000000e+00
  %1781 = fcmp fast oge float %1775, 0.000000e+00
  %1782 = select i1 %1780, float 1.000000e+00, float -1.000000e+00
  %1783 = select i1 %1781, float 1.000000e+00, float -1.000000e+00
  %1784 = fcmp fast ole float %1721, 0.000000e+00
  %1785 = fmul fast float %1782, %1778
  %1786 = fmul fast float %1783, %1779
  %1787 = select i1 %1784, float %1785, float %1774
  %1788 = select i1 %1784, float %1786, float %1775
  %1789 = fmul fast float %1787, 5.000000e-01
  %1790 = fmul fast float %1788, 5.000000e-01
  %1791 = fadd fast float %1789, 5.000000e-01
  %1792 = fadd fast float %1790, 5.000000e-01
  %1793 = uitofp i32 %1557 to float
  %1794 = call float @dx.op.binary.f32(i32 36, float %1765, float 3.000000e+00)  ; FMin(a,b)
  %1795 = fadd fast float %1794, 2.000000e+00
  %1796 = call float @dx.op.unary.f32(i32 21, float %1795)  ; Exp(value)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1798 = fmul fast float %1797, %1796
  %1799 = fmul fast float %1798, 2.000000e+00
  %1800 = fsub fast float 1.000000e+00, %1799
  %1801 = fmul fast float %1791, %1800
  %1802 = fmul fast float %1792, %1800
  %1803 = fadd fast float %1801, %1798
  %1804 = fadd fast float %1802, %1798
  %1805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %33, float %1803, float %1804, float %1793, float undef, i32 0, i32 0, i32 undef, float %1765)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.ResRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.ResRet.f32 %1805, 2
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 3
  %1811 = fmul fast float %1810, %1527
  %1812 = call float @dx.op.binary.f32(i32 36, float %1084, float %1811)  ; FMin(a,b)
  %1813 = select i1 %1761, float %1812, float %1811
  %1814 = fmul fast float %1806, %1606
  %1815 = fmul fast float %1814, %1813
  %1816 = fmul fast float %1807, %1606
  %1817 = fmul fast float %1816, %1813
  %1818 = fmul fast float %1808, %1606
  %1819 = fmul fast float %1818, %1813
  %1820 = fadd fast float %1815, %1502
  %1821 = fadd fast float %1817, %1503
  %1822 = fadd fast float %1819, %1504
  %1823 = fsub fast float %1505, %1606
  br label %1608

; <label>:1824                                    ; preds = %1608
  br label %1825

; <label>:1825                                    ; preds = %1824, %1471
  %1826 = phi float [ %1472, %1471 ], [ %1609, %1824 ]
  %1827 = phi float [ %1473, %1471 ], [ %1610, %1824 ]
  %1828 = phi float [ %1474, %1471 ], [ %1611, %1824 ]
  %1829 = phi float [ %1475, %1471 ], [ %1612, %1824 ]
  %1830 = add i32 %1476, 1
  %1831 = icmp ugt i32 %1830, %1468
  br i1 %1831, label %1832, label %1471, !llvm.loop !103

; <label>:1832                                    ; preds = %1825
  br label %1833

; <label>:1833                                    ; preds = %1832, %1453
  %1834 = phi float [ 0.000000e+00, %1453 ], [ %1826, %1832 ]
  %1835 = phi float [ 0.000000e+00, %1453 ], [ %1827, %1832 ]
  %1836 = phi float [ 0.000000e+00, %1453 ], [ %1828, %1832 ]
  %1837 = call float @dx.op.dot3.f32(i32 55, float %1834, float %1835, float %1836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1838 = select i1 %141, float 0.000000e+00, float %1834
  %1839 = select i1 %141, float %1837, float %1835
  %1840 = select i1 %141, float 0.000000e+00, float %1836
  %1841 = fcmp fast olt float %1380, 0.000000e+00
  %1842 = call float @dx.op.unary.f32(i32 6, float %1380)  ; FAbs(value)
  %1843 = fmul fast float %1842, %1351
  %1844 = fmul fast float %1842, %1352
  %1845 = fmul fast float %1842, %1353
  %1846 = select i1 %1841, float %1351, float %1843
  %1847 = select i1 %1841, float %1352, float %1844
  %1848 = select i1 %1841, float %1353, float %1845
  %1849 = fsub fast float 1.000000e+00, %1842
  %1850 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1851 = fmul fast float %1850, %1838
  %1852 = fmul fast float %1850, %1839
  %1853 = fmul fast float %1850, %1840
  %1854 = fadd fast float %1846, %1851
  %1855 = fadd fast float %1847, %1852
  %1856 = fadd fast float %1848, %1853
  br label %1857

; <label>:1857                                    ; preds = %1833, %1260
  %1858 = phi float [ %1351, %1260 ], [ %1854, %1833 ]
  %1859 = phi float [ %1352, %1260 ], [ %1855, %1833 ]
  %1860 = phi float [ %1353, %1260 ], [ %1856, %1833 ]
  %1861 = fmul fast float %1858, %1364
  %1862 = fmul fast float %1859, %1365
  %1863 = fmul fast float %1860, %1366
  %1864 = fmul fast float %1347, %355
  %1865 = fmul fast float %1348, %356
  %1866 = fmul fast float %1349, %357
  %1867 = fadd fast float %1864, %1343
  %1868 = fmul fast float %1867, %1369
  %1869 = fadd fast float %1865, %1344
  %1870 = fmul fast float %1869, %1369
  %1871 = fadd fast float %1866, %1345
  %1872 = fmul fast float %1871, %1369
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 3
  %1875 = fcmp fast oeq float %1874, 0.000000e+00
  br i1 %1875, label %3293, label %1876

; <label>:1876                                    ; preds = %1857
  %1877 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1878 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1879 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = extractvalue %dx.types.CBufRet.f32 %1880, 1
  %1883 = extractvalue %dx.types.CBufRet.f32 %1880, 2
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.CBufRet.f32 %1884, 1
  %1887 = call float @dx.op.dot3.f32(i32 55, float %1881, float %1882, float %1883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1888 = select i1 %141, float %1885, float %1881
  %1889 = select i1 %141, float %1887, float %1882
  %1890 = select i1 %141, float %1886, float %1883
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1893 = fmul fast float %1892, %91
  %1894 = fmul fast float %1892, %93
  %1895 = fmul fast float %1892, %95
  %1896 = fadd fast float %1893, %414
  %1897 = fadd fast float %1894, %415
  %1898 = fadd fast float %1895, %416
  %1899 = fcmp fast olt float %1874, 0.000000e+00
  br i1 %1899, label %2995, label %1900

; <label>:1900                                    ; preds = %1876
  %1901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1902 = extractvalue %dx.types.CBufRet.f32 %1901, 0
  %1903 = extractvalue %dx.types.CBufRet.f32 %1901, 1
  %1904 = extractvalue %dx.types.CBufRet.f32 %1901, 2
  %1905 = extractvalue %dx.types.CBufRet.f32 %1901, 3
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.CBufRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.CBufRet.f32 %1906, 2
  %1910 = extractvalue %dx.types.CBufRet.f32 %1906, 3
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.CBufRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.CBufRet.f32 %1911, 2
  %1915 = extractvalue %dx.types.CBufRet.f32 %1911, 3
  %1916 = fmul fast float %1902, %1896
  %1917 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %1903, float %1916)  ; FMad(a,b,c)
  %1918 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %1904, float %1917)  ; FMad(a,b,c)
  %1919 = fadd fast float %1918, %1905
  %1920 = fmul fast float %1907, %1896
  %1921 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %1908, float %1920)  ; FMad(a,b,c)
  %1922 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %1909, float %1921)  ; FMad(a,b,c)
  %1923 = fadd fast float %1922, %1910
  %1924 = fmul fast float %1912, %1896
  %1925 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %1913, float %1924)  ; FMad(a,b,c)
  %1926 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %1914, float %1925)  ; FMad(a,b,c)
  %1927 = fadd fast float %1926, %1915
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 0
  %1930 = extractvalue %dx.types.CBufRet.f32 %1928, 1
  %1931 = extractvalue %dx.types.CBufRet.f32 %1928, 3
  %1932 = fmul fast float %1931, %1919
  %1933 = fmul fast float %1931, %1923
  %1934 = fadd fast float %1932, %1929
  %1935 = fadd fast float %1933, %1930
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.CBufRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.CBufRet.f32 %1936, 3
  %1940 = fmul fast float %1939, %1919
  %1941 = fmul fast float %1939, %1923
  %1942 = fadd fast float %1940, %1937
  %1943 = fadd fast float %1941, %1938
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 1
  %1946 = fsub fast float %1945, %1927
  %1947 = extractvalue %dx.types.CBufRet.f32 %1944, 2
  %1948 = fmul fast float %1946, %1947
  %1949 = fsub fast float 1.000000e+00, %1948
  %1950 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1936, 2
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 2
  %1954 = fadd fast float %1953, %1951
  %1955 = fcmp fast ogt float %1954, 0.000000e+00
  br i1 %1955, label %1956, label %1980

; <label>:1956                                    ; preds = %1900
  %1957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1958 = extractvalue %dx.types.CBufRet.f32 %1957, 0
  %1959 = extractvalue %dx.types.CBufRet.f32 %1957, 1
  %1960 = fsub fast float %1942, %1958
  %1961 = fsub fast float %1943, %1959
  %1962 = fcmp fast olt float %1960, 0.000000e+00
  %1963 = fcmp fast olt float %1961, 0.000000e+00
  %1964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1965 = extractvalue %dx.types.CBufRet.f32 %1964, 0
  %1966 = extractvalue %dx.types.CBufRet.f32 %1964, 1
  %1967 = extractvalue %dx.types.CBufRet.f32 %1964, 2
  %1968 = extractvalue %dx.types.CBufRet.f32 %1964, 3
  %1969 = select i1 %1962, float %1965, float %1967
  %1970 = select i1 %1963, float %1966, float %1968
  %1971 = fmul fast float %1969, %1960
  %1972 = fmul fast float %1970, %1961
  %1973 = call float @dx.op.unary.f32(i32 6, float %1971)  ; FAbs(value)
  %1974 = call float @dx.op.unary.f32(i32 6, float %1972)  ; FAbs(value)
  %1975 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1976 = call float @dx.op.binary.f32(i32 35, float %1973, float %1974)  ; FMax(a,b)
  %1977 = fsub fast float %1975, %1976
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = fmul fast float %1978, %1950
  br label %1980

; <label>:1980                                    ; preds = %1956, %1900
  %1981 = phi float [ %1979, %1956 ], [ 0.000000e+00, %1900 ]
  %1982 = extractvalue %dx.types.CBufRet.f32 %1928, 2
  %1983 = extractvalue %dx.types.CBufRet.f32 %1952, 1
  %1984 = fadd fast float %1983, %1982
  %1985 = fcmp fast ogt float %1984, 0.000000e+00
  %1986 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  br i1 %1985, label %1987, label %2010

; <label>:1987                                    ; preds = %1980
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = fsub fast float %1934, %1989
  %1992 = fsub fast float %1935, %1990
  %1993 = fcmp fast olt float %1991, 0.000000e+00
  %1994 = fcmp fast olt float %1992, 0.000000e+00
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %1999 = extractvalue %dx.types.CBufRet.f32 %1995, 3
  %2000 = select i1 %1993, float %1996, float %1998
  %2001 = select i1 %1994, float %1997, float %1999
  %2002 = fmul fast float %2000, %1991
  %2003 = fmul fast float %2001, %1992
  %2004 = call float @dx.op.unary.f32(i32 6, float %2002)  ; FAbs(value)
  %2005 = call float @dx.op.unary.f32(i32 6, float %2003)  ; FAbs(value)
  %2006 = call float @dx.op.binary.f32(i32 35, float %2004, float %2005)  ; FMax(a,b)
  %2007 = fsub fast float %1986, %2006
  %2008 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2009 = fmul fast float %2008, %1950
  br label %2010

; <label>:2010                                    ; preds = %1987, %1980
  %2011 = phi float [ %2009, %1987 ], [ 0.000000e+00, %1980 ]
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 1
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.CBufRet.f32 %2015, 1
  %2018 = fsub fast float %1919, %2016
  %2019 = fsub fast float %1923, %2017
  %2020 = fcmp fast olt float %2018, 0.000000e+00
  %2021 = fcmp fast olt float %2019, 0.000000e+00
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.CBufRet.f32 %2022, 1
  %2025 = extractvalue %dx.types.CBufRet.f32 %2022, 2
  %2026 = extractvalue %dx.types.CBufRet.f32 %2022, 3
  %2027 = select i1 %2020, float %2023, float %2025
  %2028 = select i1 %2021, float %2024, float %2026
  %2029 = fmul fast float %2027, %2018
  %2030 = fmul fast float %2028, %2019
  %2031 = call float @dx.op.unary.f32(i32 6, float %2029)  ; FAbs(value)
  %2032 = call float @dx.op.unary.f32(i32 6, float %2030)  ; FAbs(value)
  %2033 = call float @dx.op.binary.f32(i32 35, float %2031, float %2032)  ; FMax(a,b)
  %2034 = fsub fast float %1986, %2033
  %2035 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2036 = call float @dx.op.binary.f32(i32 36, float %2035, float %2014)  ; FMin(a,b)
  %2037 = fmul fast float %2036, %1950
  %2038 = fsub fast float %2011, %2037
  %2039 = fsub fast float %1981, %2011
  %2040 = fsub fast float %2039, %2037
  %2041 = call float @dx.op.binary.f32(i32 35, float %2011, float %1981)  ; FMax(a,b)
  %2042 = call float @dx.op.binary.f32(i32 35, float %2037, float %2041)  ; FMax(a,b)
  %2043 = fcmp fast olt float %2042, 1.000000e+00
  br i1 %2043, label %2044, label %2442, !dx.controlflow.hints !105

; <label>:2044                                    ; preds = %2010
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = fcmp fast une float %2046, 0.000000e+00
  br i1 %2047, label %2048, label %2442, !dx.controlflow.hints !106

; <label>:2048                                    ; preds = %2044
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.CBufRet.f32 %2049, 2
  %2053 = extractvalue %dx.types.CBufRet.f32 %2049, 3
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2057 = extractvalue %dx.types.CBufRet.f32 %2054, 2
  %2058 = extractvalue %dx.types.CBufRet.f32 %2054, 3
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.CBufRet.f32 %2059, 1
  %2062 = extractvalue %dx.types.CBufRet.f32 %2059, 2
  %2063 = extractvalue %dx.types.CBufRet.f32 %2059, 3
  %2064 = fmul fast float %2050, %1896
  %2065 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %2051, float %2064)  ; FMad(a,b,c)
  %2066 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %2052, float %2065)  ; FMad(a,b,c)
  %2067 = fadd fast float %2066, %2053
  %2068 = fmul fast float %2055, %1896
  %2069 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %2056, float %2068)  ; FMad(a,b,c)
  %2070 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %2057, float %2069)  ; FMad(a,b,c)
  %2071 = fadd fast float %2070, %2058
  %2072 = fmul fast float %2060, %1896
  %2073 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %2061, float %2072)  ; FMad(a,b,c)
  %2074 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %2062, float %2073)  ; FMad(a,b,c)
  %2075 = fadd fast float %2074, %2063
  %2076 = fcmp fast oge float %2067, 1.000000e+00
  %2077 = fcmp fast oge float %2071, 1.000000e+00
  %2078 = or i1 %2076, %2077
  %2079 = fcmp fast olt float %2067, 0.000000e+00
  %2080 = fcmp fast olt float %2071, 0.000000e+00
  %2081 = or i1 %2079, %2080
  %2082 = or i1 %2078, %2081
  br i1 %2082, label %2442, label %2083, !dx.controlflow.hints !107

; <label>:2083                                    ; preds = %2048
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.CBufRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.CBufRet.f32 %2084, 2
  %2088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.i32 %2088, 2
  %2090 = uitofp i32 %2089 to float
  %2091 = extractvalue %dx.types.CBufRet.i32 %2088, 3
  %2092 = uitofp i32 %2091 to float
  %2093 = extractvalue %dx.types.CBufRet.f32 %2084, 3
  %2094 = fmul fast float %2093, 2.000000e+00
  %2095 = fsub fast float %2067, %2085
  %2096 = fsub fast float %2071, %2086
  %2097 = fmul fast float %2094, %2095
  %2098 = fmul fast float %2094, %2096
  %2099 = fdiv fast float 1.000000e+00, %1879
  %2100 = fmul fast float %2098, %2099
  %2101 = call float @dx.op.unary.f32(i32 6, float %2100)  ; FAbs(value)
  %2102 = fmul fast float %2087, %1898
  %2103 = fmul fast float %2102, %2094
  %2104 = call float @dx.op.unary.f32(i32 6, float %2103)  ; FAbs(value)
  %2105 = call float @dx.op.unary.f32(i32 6, float %2097)  ; FAbs(value)
  %2106 = call float @dx.op.binary.f32(i32 35, float %2104, float %2101)  ; FMax(a,b)
  %2107 = call float @dx.op.binary.f32(i32 35, float %2105, float %2106)  ; FMax(a,b)
  %2108 = fmul fast float %2107, 2.000000e+00
  %2109 = call float @dx.op.unary.f32(i32 23, float %2108)  ; Log(value)
  %2110 = call float @dx.op.binary.f32(i32 35, float %2109, float %2090)  ; FMax(a,b)
  %2111 = call float @dx.op.unary.f32(i32 22, float %2110)  ; Frc(value)
  %2112 = fadd fast float %2111, 0xBFEA666660000000
  %2113 = fmul fast float %2112, 8.000000e+00
  %2114 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2115 = call float @dx.op.unary.f32(i32 27, float %2110)  ; Round_ni(value)
  %2116 = fadd fast float %2115, %2114
  %2117 = call float @dx.op.binary.f32(i32 36, float %2116, float %2092)  ; FMin(a,b)
  %2118 = call float @dx.op.unary.f32(i32 27, float %2117)  ; Round_ni(value)
  %2119 = fsub fast float -0.000000e+00, %2118
  %2120 = call float @dx.op.unary.f32(i32 21, float %2119)  ; Exp(value)
  %2121 = fmul fast float %2120, %2094
  %2122 = fmul fast float %2121, %2067
  %2123 = fmul fast float %2121, %2071
  %2124 = fmul fast float %2122, 2.500000e-01
  %2125 = fmul fast float %2123, 2.500000e-01
  %2126 = fadd fast float %2124, 5.000000e-01
  %2127 = fadd fast float %2125, 5.000000e-01
  %2128 = fsub fast float %2092, %2090
  %2129 = fptoui float %2128 to i32
  %2130 = add i32 %2129, 320
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %2130)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2134 = fcmp fast une float %2117, %2092
  %2135 = fsub fast float %2067, %2132
  %2136 = fsub fast float %2071, %2133
  %2137 = call float @dx.op.unary.f32(i32 6, float %2135)  ; FAbs(value)
  %2138 = call float @dx.op.unary.f32(i32 6, float %2136)  ; FAbs(value)
  %2139 = fmul fast float %2137, %2121
  %2140 = fmul fast float %2138, %2121
  %2141 = fcmp fast olt float %2139, 1.000000e+00
  %2142 = fcmp fast olt float %2140, 1.000000e+00
  %2143 = and i1 %2141, %2142
  %2144 = or i1 %2134, %2143
  br i1 %2144, label %2145, label %2442, !dx.controlflow.hints !108

; <label>:2145                                    ; preds = %2083
  %2146 = fmul fast float %2123, 5.000000e-01
  %2147 = fmul fast float %2122, 5.000000e-01
  %2148 = fadd fast float %2146, 5.000000e-01
  %2149 = fadd fast float %2147, 5.000000e-01
  %2150 = sitofp i32 %2089 to float
  %2151 = fsub fast float %2117, %2150
  %2152 = call float @dx.op.unary.f32(i32 27, float %2151)  ; Round_ni(value)
  %2153 = call float @dx.op.unary.f32(i32 22, float %2117)  ; Frc(value)
  %2154 = call float @dx.op.unary.f32(i32 22, float %2149)  ; Frc(value)
  %2155 = call float @dx.op.unary.f32(i32 22, float %2148)  ; Frc(value)
  %2156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2154, float %2155, float %2152, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2157 = extractvalue %dx.types.ResRet.f32 %2156, 0
  %2158 = extractvalue %dx.types.ResRet.f32 %2156, 1
  %2159 = extractvalue %dx.types.ResRet.f32 %2156, 2
  %2160 = extractvalue %dx.types.ResRet.f32 %2156, 3
  %2161 = fcmp fast ogt float %2153, 0.000000e+00
  br i1 %2161, label %2162, label %2183, !dx.controlflow.hints !109

; <label>:2162                                    ; preds = %2145
  %2163 = fadd fast float %2152, 1.000000e+00
  %2164 = call float @dx.op.unary.f32(i32 22, float %2126)  ; Frc(value)
  %2165 = call float @dx.op.unary.f32(i32 22, float %2127)  ; Frc(value)
  %2166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2164, float %2165, float %2163, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.ResRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.ResRet.f32 %2166, 2
  %2170 = extractvalue %dx.types.ResRet.f32 %2166, 3
  %2171 = fsub fast float %2167, %2157
  %2172 = fsub fast float %2168, %2158
  %2173 = fsub fast float %2169, %2159
  %2174 = fsub fast float %2170, %2160
  %2175 = fmul fast float %2171, %2153
  %2176 = fmul fast float %2172, %2153
  %2177 = fmul fast float %2173, %2153
  %2178 = fmul fast float %2174, %2153
  %2179 = fadd fast float %2175, %2157
  %2180 = fadd fast float %2176, %2158
  %2181 = fadd fast float %2177, %2159
  %2182 = fadd fast float %2178, %2160
  br label %2183

; <label>:2183                                    ; preds = %2162, %2145
  %2184 = phi float [ %2179, %2162 ], [ %2157, %2145 ]
  %2185 = phi float [ %2180, %2162 ], [ %2158, %2145 ]
  %2186 = phi float [ %2181, %2162 ], [ %2159, %2145 ]
  %2187 = phi float [ %2182, %2162 ], [ %2160, %2145 ]
  %2188 = fadd fast float %2184, -5.000000e-01
  %2189 = fadd fast float %2186, -5.000000e-01
  %2190 = fmul fast float %2188, 0xBFD5555560000000
  %2191 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2189, float %2190)  ; FMad(a,b,c)
  %2192 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2185, float 0.000000e+00)  ; FMad(a,b,c)
  %2193 = fadd fast float %2192, %2187
  %2194 = fmul fast float %2188, -7.500000e-01
  %2195 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2189, float %2194)  ; FMad(a,b,c)
  %2196 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2185, float 0.000000e+00)  ; FMad(a,b,c)
  %2197 = fadd fast float %2196, %2187
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2203 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2204 = extractvalue %dx.types.CBufRet.f32 %2200, 3
  %2205 = fsub fast float %2201, %2191
  %2206 = fsub fast float %2202, %2193
  %2207 = fsub fast float %2203, %2195
  %2208 = fsub fast float %2204, %2197
  %2209 = fmul fast float %2205, %2199
  %2210 = fmul fast float %2206, %2199
  %2211 = fmul fast float %2207, %2199
  %2212 = fmul fast float %2208, %2199
  %2213 = fadd fast float %2209, %2191
  %2214 = fadd fast float %2210, %2193
  %2215 = fadd fast float %2211, %2195
  %2216 = fadd fast float %2212, %2197
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 536870911
  %2220 = uitofp i32 %2219 to float
  %2221 = fmul fast float %2220, %2067
  %2222 = fmul fast float %2220, %2071
  %2223 = fptoui float %2221 to i32
  %2224 = fptoui float %2222 to i32
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 31
  %2228 = lshr i32 %2223, %2227
  %2229 = lshr i32 %2224, %2227
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = and i32 %2231, 31
  %2233 = shl i32 1, %2232
  %2234 = call i32 @dx.op.binary.i32(i32 40, i32 %2233, i32 4)  ; UMin(a,b)
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = extractvalue %dx.types.ResRet.i32 %2235, 1
  %2238 = icmp eq i32 %2234, 0
  br i1 %2238, label %2280, label %2239

; <label>:2239                                    ; preds = %2183
  br label %2240

; <label>:2240                                    ; preds = %2268, %2239
  %2241 = phi i32 [ %2271, %2268 ], [ 0, %2239 ]
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = lshr i32 %2243, 16
  %2245 = and i32 %2244, 31
  %2246 = shl i32 %2229, %2245
  %2247 = add i32 %2246, %2228
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 31
  %2251 = shl i32 %2247, %2250
  %2252 = add i32 %2251, %2241
  %2253 = shl i32 %2252, 2
  %2254 = add i32 %2253, 32
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = icmp slt i32 %2256, 0
  %2258 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %2241
  %2259 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %2241
  %2260 = bitcast float* %2258 to i32*
  %2261 = bitcast float* %2259 to i32*
  br i1 %2257, label %2262, label %2268

; <label>:2262                                    ; preds = %2240
  %2263 = and i32 %2256, 1073741823
  %2264 = add nuw nsw i32 %2263, 20
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = extractvalue %dx.types.ResRet.i32 %2265, 1
  br label %2268

; <label>:2268                                    ; preds = %2262, %2240
  %2269 = phi i32 [ %2266, %2262 ], [ %2236, %2240 ]
  %2270 = phi i32 [ %2267, %2262 ], [ %2237, %2240 ]
  store i32 %2269, i32* %2260, align 4
  store i32 %2270, i32* %2261, align 4
  %2271 = add nuw i32 %2241, 1
  %2272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.i32 %2272, 2
  %2274 = icmp eq i32 %2273, 0
  %2275 = icmp ugt i32 %2256, -1073741825
  %2276 = and i1 %2275, %2274
  %2277 = icmp ult i32 %2271, %2234
  %2278 = and i1 %2276, %2277
  br i1 %2278, label %2240, label %2279

; <label>:2279                                    ; preds = %2268
  br label %2280

; <label>:2280                                    ; preds = %2279, %2183
  %2281 = phi i32 [ 0, %2183 ], [ %2271, %2279 ]
  %2282 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2283 = fptoui float %2282 to i32
  %2284 = icmp eq i32 %2283, 0
  br i1 %2284, label %2336, label %2285

; <label>:2285                                    ; preds = %2280
  br label %2286

; <label>:2286                                    ; preds = %2331, %2285
  %2287 = phi i32 [ %2332, %2331 ], [ %2281, %2285 ]
  %2288 = phi i32 [ %2333, %2331 ], [ 0, %2285 ]
  %2289 = lshr i32 %2288, 2
  %2290 = and i32 %2288, 3
  %2291 = add nuw nsw i32 %2289, 83
  %2292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %2291)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.i32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.i32 %2292, 1
  %2295 = extractvalue %dx.types.CBufRet.i32 %2292, 2
  %2296 = extractvalue %dx.types.CBufRet.i32 %2292, 3
  %2297 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %2293, i32* %2297, align 4
  %2298 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %2294, i32* %2298, align 4
  %2299 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %2295, i32* %2299, align 4
  %2300 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %2296, i32* %2300, align 4
  %2301 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %2290
  %2302 = load i32, i32* %2301, align 4, !tbaa !110, !noalias !112
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = lshr i32 %2304, 16
  %2306 = and i32 %2305, 31
  %2307 = shl i32 %2229, %2306
  %2308 = add i32 %2307, %2228
  %2309 = shl i32 %2308, 2
  %2310 = add i32 %2309, %2302
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = icmp eq i32 %2312, 0
  br i1 %2313, label %2331, label %2314

; <label>:2314                                    ; preds = %2286
  %2315 = icmp slt i32 %2312, 0
  %2316 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %2287
  %2317 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %2287
  %2318 = bitcast float* %2316 to i32*
  %2319 = bitcast float* %2317 to i32*
  br i1 %2315, label %2320, label %2327

; <label>:2320                                    ; preds = %2314
  %2321 = and i32 %2312, 1073741823
  %2322 = add i32 %2302, 20
  %2323 = add i32 %2322, %2321
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = extractvalue %dx.types.ResRet.i32 %2324, 1
  br label %2327

; <label>:2327                                    ; preds = %2320, %2314
  %2328 = phi i32 [ %2325, %2320 ], [ %2236, %2314 ]
  %2329 = phi i32 [ %2326, %2320 ], [ %2237, %2314 ]
  store i32 %2328, i32* %2318, align 4
  store i32 %2329, i32* %2319, align 4
  %2330 = add i32 %2287, 1
  br label %2331

; <label>:2331                                    ; preds = %2327, %2286
  %2332 = phi i32 [ %2287, %2286 ], [ %2330, %2327 ]
  %2333 = add nuw i32 %2288, 1
  %2334 = icmp eq i32 %2333, %2283
  br i1 %2334, label %2335, label %2286

; <label>:2335                                    ; preds = %2331
  br label %2336

; <label>:2336                                    ; preds = %2335, %2280
  %2337 = phi i32 [ %2281, %2280 ], [ %2332, %2335 ]
  %2338 = icmp eq i32 %2337, 1
  %2339 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 0
  %2340 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 0
  br i1 %2338, label %2341, label %2344

; <label>:2341                                    ; preds = %2336
  %2342 = load float, float* %2339, align 4
  %2343 = load float, float* %2340, align 4
  br label %2371

; <label>:2344                                    ; preds = %2336
  %2345 = load float, float* %2339, align 4
  %2346 = load float, float* %2340, align 4
  %2347 = fdiv fast float 1.000000e+00, %2346
  %2348 = fsub fast float %2345, %2347
  %2349 = icmp ugt i32 %2337, 1
  br i1 %2349, label %2350, label %2366

; <label>:2350                                    ; preds = %2344
  br label %2351

; <label>:2351                                    ; preds = %2351, %2350
  %2352 = phi float [ %2361, %2351 ], [ %2348, %2350 ]
  %2353 = phi float [ %2362, %2351 ], [ %2345, %2350 ]
  %2354 = phi i32 [ %2363, %2351 ], [ 1, %2350 ]
  %2355 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %2354
  %2356 = load float, float* %2355, align 4
  %2357 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %2354
  %2358 = load float, float* %2357, align 4
  %2359 = fdiv fast float 1.000000e+00, %2358
  %2360 = fsub fast float %2356, %2359
  %2361 = call float @dx.op.binary.f32(i32 36, float %2352, float %2360)  ; FMin(a,b)
  %2362 = call float @dx.op.binary.f32(i32 35, float %2353, float %2356)  ; FMax(a,b)
  %2363 = add nuw i32 %2354, 1
  %2364 = icmp eq i32 %2363, %2337
  br i1 %2364, label %2365, label %2351

; <label>:2365                                    ; preds = %2351
  br label %2366

; <label>:2366                                    ; preds = %2365, %2344
  %2367 = phi float [ %2348, %2344 ], [ %2361, %2365 ]
  %2368 = phi float [ %2345, %2344 ], [ %2362, %2365 ]
  %2369 = fsub fast float %2368, %2367
  %2370 = fdiv fast float 1.000000e+00, %2369
  br label %2371

; <label>:2371                                    ; preds = %2366, %2341
  %2372 = phi float [ %2342, %2341 ], [ %2368, %2366 ]
  %2373 = phi float [ %2343, %2341 ], [ %2370, %2366 ]
  %2374 = fadd fast float %2075, %2372
  %2375 = fmul fast float %2374, %2373
  %2376 = call float @dx.op.unary.f32(i32 7, float %2375)  ; Saturate(value)
  %2377 = fmul fast float %2376, 2.000000e+00
  %2378 = fsub fast float 1.000000e+00, %2377
  %2379 = fmul fast float %2213, %2213
  %2380 = fsub fast float %2214, %2379
  %2381 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2380)  ; FMax(a,b)
  %2382 = fdiv fast float 1.000000e+00, %2381
  %2383 = fmul fast float %2214, %2213
  %2384 = fsub fast float %2215, %2383
  %2385 = fsub fast float %2378, %2213
  %2386 = fmul fast float %2378, %2378
  %2387 = fsub fast float %2386, %2214
  %2388 = fmul fast float %2382, %2384
  %2389 = fmul fast float %2388, %2385
  %2390 = fsub fast float %2387, %2389
  %2391 = fmul fast float %2214, %2214
  %2392 = fsub fast float %2216, %2391
  %2393 = fmul fast float %2384, %2384
  %2394 = fmul fast float %2393, %2382
  %2395 = fsub fast float %2392, %2394
  %2396 = fdiv fast float %2390, %2395
  %2397 = fmul fast float %2396, %2384
  %2398 = fsub fast float %2385, %2397
  %2399 = fmul fast float %2398, %2382
  %2400 = fmul fast float %2399, %2213
  %2401 = fsub fast float 1.000000e+00, %2400
  %2402 = fmul fast float %2396, %2214
  %2403 = fsub fast float %2401, %2402
  %2404 = fmul fast float %2399, %2399
  %2405 = fmul fast float %2396, 4.000000e+00
  %2406 = fmul fast float %2405, %2403
  %2407 = fsub fast float %2404, %2406
  %2408 = call float @dx.op.unary.f32(i32 24, float %2407)  ; Sqrt(value)
  %2409 = fcmp fast oge float %2399, 0.000000e+00
  %2410 = fsub fast float -0.000000e+00, %2408
  %2411 = select i1 %2409, float %2410, float %2408
  %2412 = fsub fast float %2411, %2399
  %2413 = fdiv fast float %2412, %2396
  %2414 = fdiv fast float %2403, %2412
  %2415 = fmul fast float %2413, 5.000000e-01
  %2416 = fmul fast float %2414, 2.000000e+00
  %2417 = select i1 %2409, float %2415, float %2416
  %2418 = select i1 %2409, float %2416, float %2415
  %2419 = call float @dx.op.binary.f32(i32 35, float %2417, float %2418)  ; FMax(a,b)
  %2420 = call float @dx.op.binary.f32(i32 36, float %2417, float %2418)  ; FMin(a,b)
  %2421 = fcmp fast ogt float %2378, %2419
  %2422 = fsub fast float %2378, %2420
  %2423 = fsub fast float %2378, %2419
  %2424 = fsub fast float %2419, %2420
  %2425 = select i1 %2421, float %2423, float %2424
  %2426 = fmul float %2422, %2425
  %2427 = select i1 %2421, float %2420, float %2378
  %2428 = fcmp fast ogt float %2378, %2420
  %2429 = fmul fast float %2427, %2419
  %2430 = fadd fast float %2427, %2419
  %2431 = fmul fast float %2430, %2213
  %2432 = fadd fast float %2429, %2214
  %2433 = fsub fast float %2432, %2431
  %2434 = fdiv fast float %2433, %2426
  %2435 = select i1 %2428, float %2434, float 0.000000e+00
  %2436 = fsub fast float 1.000000e+00, %2435
  %2437 = select i1 %2421, float %2436, float %2435
  %2438 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2439 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2440 = fmul fast float %2439, %2438
  %2441 = fsub fast float 1.000000e+00, %2440
  br label %2442

; <label>:2442                                    ; preds = %2371, %2083, %2048, %2044, %2010
  %2443 = phi float [ 1.000000e+00, %2010 ], [ %2441, %2371 ], [ 1.000000e+00, %2048 ], [ 1.000000e+00, %2083 ], [ 1.000000e+00, %2044 ]
  %2444 = fcmp fast ogt float %2040, 0.000000e+00
  br i1 %2444, label %2445, label %2607, !dx.controlflow.hints !121

; <label>:2445                                    ; preds = %2442
  %2446 = fadd fast float %1953, %1927
  %2447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.f32 %2447, 2
  %2449 = extractvalue %dx.types.CBufRet.f32 %2447, 3
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 2
  %2452 = call float @dx.op.binary.f32(i32 35, float %2446, float 0.000000e+00)  ; FMax(a,b)
  %2453 = fadd fast float %2452, 0x3F10000000000000
  %2454 = fcmp fast oeq float %2451, 0.000000e+00
  br i1 %2454, label %2455, label %2522

; <label>:2455                                    ; preds = %2445
  %2456 = extractvalue %dx.types.CBufRet.f32 %2447, 1
  %2457 = extractvalue %dx.types.CBufRet.f32 %2447, 0
  %2458 = fmul fast float %2457, %1942
  %2459 = fmul fast float %2456, %1943
  %2460 = fadd fast float %2458, 5.000000e-01
  %2461 = call float @dx.op.unary.f32(i32 27, float %2460)  ; Round_ni(value)
  %2462 = fadd fast float %2459, 5.000000e-01
  %2463 = call float @dx.op.unary.f32(i32 27, float %2462)  ; Round_ni(value)
  %2464 = fsub fast float %2460, %2461
  %2465 = fsub fast float %2462, %2463
  %2466 = fadd fast float %2461, -5.000000e-01
  %2467 = fadd fast float %2463, -5.000000e-01
  %2468 = fmul fast float %2464, 2.000000e+00
  %2469 = fsub fast float 3.000000e+00, %2468
  %2470 = fadd fast float %2468, 1.000000e+00
  %2471 = fsub fast float 2.000000e+00, %2464
  %2472 = bitcast float %2469 to i32
  %2473 = sub nsw i32 2129859010, %2472
  %2474 = bitcast i32 %2473 to float
  %2475 = fmul fast float %2474, %2471
  %2476 = fadd fast float %2475, -1.000000e+00
  %2477 = bitcast float %2470 to i32
  %2478 = sub nsw i32 2129859010, %2477
  %2479 = bitcast i32 %2478 to float
  %2480 = fmul fast float %2479, %2464
  %2481 = fadd fast float %2480, 1.000000e+00
  %2482 = fmul fast float %2465, 2.000000e+00
  %2483 = fsub fast float 3.000000e+00, %2482
  %2484 = fadd fast float %2482, 1.000000e+00
  %2485 = fsub fast float 2.000000e+00, %2465
  %2486 = bitcast float %2483 to i32
  %2487 = sub nsw i32 2129859010, %2486
  %2488 = bitcast i32 %2487 to float
  %2489 = fmul fast float %2488, %2485
  %2490 = fadd fast float %2489, -1.000000e+00
  %2491 = bitcast float %2484 to i32
  %2492 = sub nsw i32 2129859010, %2491
  %2493 = bitcast i32 %2492 to float
  %2494 = fmul fast float %2493, %2465
  %2495 = fadd fast float %2494, 1.000000e+00
  %2496 = fadd fast float %2476, %2466
  %2497 = fmul fast float %2496, %2448
  %2498 = fadd fast float %2490, %2467
  %2499 = fmul fast float %2498, %2449
  %2500 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %37, float %2497, float %2499, float undef, float undef, i32 0, i32 0, i32 undef, float %2453)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = fmul fast float %2501, %2469
  %2503 = fadd fast float %2481, %2466
  %2504 = fmul fast float %2503, %2448
  %2505 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %37, float %2504, float %2499, float undef, float undef, i32 0, i32 0, i32 undef, float %2453)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2506 = extractvalue %dx.types.ResRet.f32 %2505, 0
  %2507 = fmul fast float %2506, %2470
  %2508 = fadd fast float %2495, %2467
  %2509 = fmul fast float %2508, %2449
  %2510 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %37, float %2497, float %2509, float undef, float undef, i32 0, i32 0, i32 undef, float %2453)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2511 = extractvalue %dx.types.ResRet.f32 %2510, 0
  %2512 = fmul fast float %2511, %2469
  %2513 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %37, float %2504, float %2509, float undef, float undef, i32 0, i32 0, i32 undef, float %2453)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2514 = extractvalue %dx.types.ResRet.f32 %2513, 0
  %2515 = fmul fast float %2514, %2470
  %2516 = fadd fast float %2515, %2512
  %2517 = fmul fast float %2516, %2484
  %2518 = fadd fast float %2507, %2502
  %2519 = fmul fast float %2518, %2483
  %2520 = fadd fast float %2519, %2517
  %2521 = fmul fast float %2520, 6.250000e-02
  br label %2607

; <label>:2522                                    ; preds = %2445
  %2523 = fmul fast float %325, 0x401921FB60000000
  %2524 = call float @dx.op.unary.f32(i32 13, float %2523)  ; Sin(value)
  %2525 = call float @dx.op.unary.f32(i32 12, float %2523)  ; Cos(value)
  %2526 = fsub fast float -0.000000e+00, %2524
  br label %2527

; <label>:2527                                    ; preds = %2576, %2522
  %2528 = phi float [ 0.000000e+00, %2522 ], [ %2571, %2576 ]
  %2529 = phi float [ 0.000000e+00, %2522 ], [ %2573, %2576 ]
  %2530 = phi i32 [ 0, %2522 ], [ %2577, %2576 ]
  %2531 = mul i32 %2530, 2
  %2532 = add i32 0, %2531
  %2533 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2532
  %2534 = load float, float* %2533, align 4
  %2535 = mul i32 %2530, 2
  %2536 = add i32 1, %2535
  %2537 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2536
  %2538 = load float, float* %2537, align 4
  %2539 = fmul fast float %2534, %2525
  %2540 = call float @dx.op.tertiary.f32(i32 46, float %2538, float %2526, float %2539)  ; FMad(a,b,c)
  %2541 = fmul fast float %2534, %2524
  %2542 = call float @dx.op.tertiary.f32(i32 46, float %2538, float %2525, float %2541)  ; FMad(a,b,c)
  %2543 = fmul fast float %2540, %2451
  %2544 = fmul fast float %2542, %2451
  %2545 = fadd fast float %2543, %1942
  %2546 = fadd fast float %2544, %1943
  %2547 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %36, float %2545, float %2546, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2548 = extractvalue %dx.types.ResRet.f32 %2547, 0
  %2549 = extractvalue %dx.types.ResRet.f32 %2547, 1
  %2550 = extractvalue %dx.types.ResRet.f32 %2547, 2
  %2551 = extractvalue %dx.types.ResRet.f32 %2547, 3
  %2552 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 0
  store float %2548, float* %2552, align 4
  %2553 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 1
  store float %2549, float* %2553, align 4
  %2554 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 2
  store float %2550, float* %2554, align 4
  %2555 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 3
  store float %2551, float* %2555, align 4
  %2556 = fsub fast float %2548, %2453
  %2557 = fcmp fast olt float %2556, 0.000000e+00
  %2558 = select i1 %2557, float 0.000000e+00, float 1.000000e+00
  %2559 = fadd fast float %2558, %2528
  %2560 = fmul fast float %2558, %2556
  %2561 = fadd fast float %2560, %2529
  br label %2562

; <label>:2562                                    ; preds = %2562, %2527
  %2563 = phi i32 [ 1, %2527 ], [ %2574, %2562 ]
  %2564 = phi float [ %2561, %2527 ], [ %2573, %2562 ]
  %2565 = phi float [ %2559, %2527 ], [ %2571, %2562 ]
  %2566 = getelementptr [4 x float], [4 x float]* %77, i32 0, i32 %2563
  %2567 = load float, float* %2566, align 4, !tbaa !96, !noalias !112
  %2568 = fsub fast float %2567, %2453
  %2569 = fcmp fast olt float %2568, 0.000000e+00
  %2570 = select i1 %2569, float 0.000000e+00, float 1.000000e+00
  %2571 = fadd fast float %2570, %2565
  %2572 = fmul fast float %2570, %2568
  %2573 = fadd fast float %2572, %2564
  %2574 = add nuw nsw i32 %2563, 1
  %2575 = icmp eq i32 %2574, 4
  br i1 %2575, label %2576, label %2562, !llvm.loop !122

; <label>:2576                                    ; preds = %2562
  %2577 = add nuw nsw i32 %2530, 1
  %2578 = icmp eq i32 %2577, 8
  br i1 %2578, label %2579, label %2527, !llvm.loop !123

; <label>:2579                                    ; preds = %2576
  %2580 = fdiv fast float 1.000000e+00, %2571
  %2581 = fmul fast float %2580, %2573
  %2582 = fdiv fast float 1.000000e+00, %2453
  %2583 = fmul fast float %2581, %2582
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2585 = call float @dx.op.binary.f32(i32 35, float %2584, float 0.000000e+00)  ; FMax(a,b)
  %2586 = fmul fast float %2571, 3.125000e-02
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  %2588 = fmul fast float %2587, 2.000000e+00
  %2589 = fadd fast float %2588, -1.000000e+00
  %2590 = fcmp fast ogt float %2589, 0.000000e+00
  %2591 = fcmp fast olt float %2589, 0.000000e+00
  %2592 = zext i1 %2590 to i32
  %2593 = zext i1 %2591 to i32
  %2594 = sub nsw i32 %2592, %2593
  %2595 = sitofp i32 %2594 to float
  %2596 = fmul fast float %2595, %2589
  %2597 = fsub fast float 1.000000e+00, %2596
  %2598 = fmul fast float %2597, %2597
  %2599 = fmul fast float %2598, %2597
  %2600 = fsub fast float %2597, %2599
  %2601 = fmul fast float %2600, %2585
  %2602 = fsub fast float 1.000000e+00, %2599
  %2603 = fsub fast float %2602, %2601
  %2604 = fmul fast float %2595, 5.000000e-01
  %2605 = fmul fast float %2604, %2603
  %2606 = fsub fast float 5.000000e-01, %2605
  br label %2607

; <label>:2607                                    ; preds = %2579, %2455, %2442
  %2608 = phi float [ 1.000000e+00, %2442 ], [ %2521, %2455 ], [ %2606, %2579 ]
  %2609 = fcmp fast ogt float %2038, 0.000000e+00
  br i1 %2609, label %2610, label %2774, !dx.controlflow.hints !124

; <label>:2610                                    ; preds = %2607
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 1
  %2613 = fadd fast float %2612, %1927
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 2
  %2616 = extractvalue %dx.types.CBufRet.f32 %2614, 3
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 1
  %2619 = call float @dx.op.binary.f32(i32 35, float %2613, float 0.000000e+00)  ; FMax(a,b)
  %2620 = fadd fast float %2619, 0x3F10000000000000
  %2621 = fcmp fast oeq float %2618, 0.000000e+00
  br i1 %2621, label %2622, label %2689

; <label>:2622                                    ; preds = %2610
  %2623 = extractvalue %dx.types.CBufRet.f32 %2614, 1
  %2624 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2625 = fmul fast float %2624, %1934
  %2626 = fmul fast float %2623, %1935
  %2627 = fadd fast float %2625, 5.000000e-01
  %2628 = call float @dx.op.unary.f32(i32 27, float %2627)  ; Round_ni(value)
  %2629 = fadd fast float %2626, 5.000000e-01
  %2630 = call float @dx.op.unary.f32(i32 27, float %2629)  ; Round_ni(value)
  %2631 = fsub fast float %2627, %2628
  %2632 = fsub fast float %2629, %2630
  %2633 = fadd fast float %2628, -5.000000e-01
  %2634 = fadd fast float %2630, -5.000000e-01
  %2635 = fmul fast float %2631, 2.000000e+00
  %2636 = fsub fast float 3.000000e+00, %2635
  %2637 = fadd fast float %2635, 1.000000e+00
  %2638 = fsub fast float 2.000000e+00, %2631
  %2639 = bitcast float %2636 to i32
  %2640 = sub nsw i32 2129859010, %2639
  %2641 = bitcast i32 %2640 to float
  %2642 = fmul fast float %2641, %2638
  %2643 = fadd fast float %2642, -1.000000e+00
  %2644 = bitcast float %2637 to i32
  %2645 = sub nsw i32 2129859010, %2644
  %2646 = bitcast i32 %2645 to float
  %2647 = fmul fast float %2646, %2631
  %2648 = fadd fast float %2647, 1.000000e+00
  %2649 = fmul fast float %2632, 2.000000e+00
  %2650 = fsub fast float 3.000000e+00, %2649
  %2651 = fadd fast float %2649, 1.000000e+00
  %2652 = fsub fast float 2.000000e+00, %2632
  %2653 = bitcast float %2650 to i32
  %2654 = sub nsw i32 2129859010, %2653
  %2655 = bitcast i32 %2654 to float
  %2656 = fmul fast float %2655, %2652
  %2657 = fadd fast float %2656, -1.000000e+00
  %2658 = bitcast float %2651 to i32
  %2659 = sub nsw i32 2129859010, %2658
  %2660 = bitcast i32 %2659 to float
  %2661 = fmul fast float %2660, %2632
  %2662 = fadd fast float %2661, 1.000000e+00
  %2663 = fadd fast float %2643, %2633
  %2664 = fmul fast float %2663, %2615
  %2665 = fadd fast float %2657, %2634
  %2666 = fmul fast float %2665, %2616
  %2667 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %37, float %2664, float %2666, float undef, float undef, i32 0, i32 0, i32 undef, float %2620)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2668 = extractvalue %dx.types.ResRet.f32 %2667, 0
  %2669 = fmul fast float %2668, %2636
  %2670 = fadd fast float %2648, %2633
  %2671 = fmul fast float %2670, %2615
  %2672 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %37, float %2671, float %2666, float undef, float undef, i32 0, i32 0, i32 undef, float %2620)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2673 = extractvalue %dx.types.ResRet.f32 %2672, 0
  %2674 = fmul fast float %2673, %2637
  %2675 = fadd fast float %2662, %2634
  %2676 = fmul fast float %2675, %2616
  %2677 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %37, float %2664, float %2676, float undef, float undef, i32 0, i32 0, i32 undef, float %2620)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2678 = extractvalue %dx.types.ResRet.f32 %2677, 0
  %2679 = fmul fast float %2678, %2636
  %2680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %37, float %2671, float %2676, float undef, float undef, i32 0, i32 0, i32 undef, float %2620)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2681 = extractvalue %dx.types.ResRet.f32 %2680, 0
  %2682 = fmul fast float %2681, %2637
  %2683 = fadd fast float %2682, %2679
  %2684 = fmul fast float %2683, %2651
  %2685 = fadd fast float %2674, %2669
  %2686 = fmul fast float %2685, %2650
  %2687 = fadd fast float %2686, %2684
  %2688 = fmul fast float %2687, 6.250000e-02
  br label %2774

; <label>:2689                                    ; preds = %2610
  %2690 = fmul fast float %325, 0x401921FB60000000
  %2691 = call float @dx.op.unary.f32(i32 13, float %2690)  ; Sin(value)
  %2692 = call float @dx.op.unary.f32(i32 12, float %2690)  ; Cos(value)
  %2693 = fsub fast float -0.000000e+00, %2691
  br label %2694

; <label>:2694                                    ; preds = %2743, %2689
  %2695 = phi float [ 0.000000e+00, %2689 ], [ %2738, %2743 ]
  %2696 = phi float [ 0.000000e+00, %2689 ], [ %2740, %2743 ]
  %2697 = phi i32 [ 0, %2689 ], [ %2744, %2743 ]
  %2698 = mul i32 %2697, 2
  %2699 = add i32 0, %2698
  %2700 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2699
  %2701 = load float, float* %2700, align 4
  %2702 = mul i32 %2697, 2
  %2703 = add i32 1, %2702
  %2704 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2703
  %2705 = load float, float* %2704, align 4
  %2706 = fmul fast float %2701, %2692
  %2707 = call float @dx.op.tertiary.f32(i32 46, float %2705, float %2693, float %2706)  ; FMad(a,b,c)
  %2708 = fmul fast float %2701, %2691
  %2709 = call float @dx.op.tertiary.f32(i32 46, float %2705, float %2692, float %2708)  ; FMad(a,b,c)
  %2710 = fmul fast float %2707, %2618
  %2711 = fmul fast float %2709, %2618
  %2712 = fadd fast float %2710, %1934
  %2713 = fadd fast float %2711, %1935
  %2714 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %36, float %2712, float %2713, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2715 = extractvalue %dx.types.ResRet.f32 %2714, 0
  %2716 = extractvalue %dx.types.ResRet.f32 %2714, 1
  %2717 = extractvalue %dx.types.ResRet.f32 %2714, 2
  %2718 = extractvalue %dx.types.ResRet.f32 %2714, 3
  %2719 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 0
  store float %2715, float* %2719, align 4
  %2720 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 1
  store float %2716, float* %2720, align 4
  %2721 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 2
  store float %2717, float* %2721, align 4
  %2722 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 3
  store float %2718, float* %2722, align 4
  %2723 = fsub fast float %2715, %2620
  %2724 = fcmp fast olt float %2723, 0.000000e+00
  %2725 = select i1 %2724, float 0.000000e+00, float 1.000000e+00
  %2726 = fadd fast float %2725, %2695
  %2727 = fmul fast float %2725, %2723
  %2728 = fadd fast float %2727, %2696
  br label %2729

; <label>:2729                                    ; preds = %2729, %2694
  %2730 = phi i32 [ 1, %2694 ], [ %2741, %2729 ]
  %2731 = phi float [ %2728, %2694 ], [ %2740, %2729 ]
  %2732 = phi float [ %2726, %2694 ], [ %2738, %2729 ]
  %2733 = getelementptr [4 x float], [4 x float]* %76, i32 0, i32 %2730
  %2734 = load float, float* %2733, align 4, !tbaa !96, !noalias !112
  %2735 = fsub fast float %2734, %2620
  %2736 = fcmp fast olt float %2735, 0.000000e+00
  %2737 = select i1 %2736, float 0.000000e+00, float 1.000000e+00
  %2738 = fadd fast float %2737, %2732
  %2739 = fmul fast float %2737, %2735
  %2740 = fadd fast float %2739, %2731
  %2741 = add nuw nsw i32 %2730, 1
  %2742 = icmp eq i32 %2741, 4
  br i1 %2742, label %2743, label %2729, !llvm.loop !122

; <label>:2743                                    ; preds = %2729
  %2744 = add nuw nsw i32 %2697, 1
  %2745 = icmp eq i32 %2744, 8
  br i1 %2745, label %2746, label %2694, !llvm.loop !123

; <label>:2746                                    ; preds = %2743
  %2747 = fdiv fast float 1.000000e+00, %2738
  %2748 = fmul fast float %2747, %2740
  %2749 = fdiv fast float 1.000000e+00, %2620
  %2750 = fmul fast float %2748, %2749
  %2751 = call float @dx.op.unary.f32(i32 7, float %2750)  ; Saturate(value)
  %2752 = call float @dx.op.binary.f32(i32 35, float %2751, float 0.000000e+00)  ; FMax(a,b)
  %2753 = fmul fast float %2738, 3.125000e-02
  %2754 = call float @dx.op.unary.f32(i32 7, float %2753)  ; Saturate(value)
  %2755 = fmul fast float %2754, 2.000000e+00
  %2756 = fadd fast float %2755, -1.000000e+00
  %2757 = fcmp fast ogt float %2756, 0.000000e+00
  %2758 = fcmp fast olt float %2756, 0.000000e+00
  %2759 = zext i1 %2757 to i32
  %2760 = zext i1 %2758 to i32
  %2761 = sub nsw i32 %2759, %2760
  %2762 = sitofp i32 %2761 to float
  %2763 = fmul fast float %2762, %2756
  %2764 = fsub fast float 1.000000e+00, %2763
  %2765 = fmul fast float %2764, %2764
  %2766 = fmul fast float %2765, %2764
  %2767 = fsub fast float %2764, %2766
  %2768 = fmul fast float %2767, %2752
  %2769 = fsub fast float 1.000000e+00, %2766
  %2770 = fsub fast float %2769, %2768
  %2771 = fmul fast float %2762, 5.000000e-01
  %2772 = fmul fast float %2771, %2770
  %2773 = fsub fast float 5.000000e-01, %2772
  br label %2774

; <label>:2774                                    ; preds = %2746, %2622, %2607
  %2775 = phi float [ 1.000000e+00, %2607 ], [ %2688, %2622 ], [ %2773, %2746 ]
  %2776 = fcmp fast ogt float %2037, 0.000000e+00
  br i1 %2776, label %2777, label %2941, !dx.controlflow.hints !125

; <label>:2777                                    ; preds = %2774
  %2778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2778, 0
  %2780 = fadd fast float %2779, %1927
  %2781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2782 = extractvalue %dx.types.CBufRet.f32 %2781, 2
  %2783 = extractvalue %dx.types.CBufRet.f32 %2781, 3
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = call float @dx.op.binary.f32(i32 35, float %2780, float 0.000000e+00)  ; FMax(a,b)
  %2787 = fadd fast float %2786, 0x3F10000000000000
  %2788 = fcmp fast oeq float %2785, 0.000000e+00
  br i1 %2788, label %2789, label %2856

; <label>:2789                                    ; preds = %2777
  %2790 = extractvalue %dx.types.CBufRet.f32 %2781, 1
  %2791 = extractvalue %dx.types.CBufRet.f32 %2781, 0
  %2792 = fmul fast float %2791, %1919
  %2793 = fmul fast float %2790, %1923
  %2794 = fadd fast float %2792, 5.000000e-01
  %2795 = call float @dx.op.unary.f32(i32 27, float %2794)  ; Round_ni(value)
  %2796 = fadd fast float %2793, 5.000000e-01
  %2797 = call float @dx.op.unary.f32(i32 27, float %2796)  ; Round_ni(value)
  %2798 = fsub fast float %2794, %2795
  %2799 = fsub fast float %2796, %2797
  %2800 = fadd fast float %2795, -5.000000e-01
  %2801 = fadd fast float %2797, -5.000000e-01
  %2802 = fmul fast float %2798, 2.000000e+00
  %2803 = fsub fast float 3.000000e+00, %2802
  %2804 = fadd fast float %2802, 1.000000e+00
  %2805 = fsub fast float 2.000000e+00, %2798
  %2806 = bitcast float %2803 to i32
  %2807 = sub nsw i32 2129859010, %2806
  %2808 = bitcast i32 %2807 to float
  %2809 = fmul fast float %2808, %2805
  %2810 = fadd fast float %2809, -1.000000e+00
  %2811 = bitcast float %2804 to i32
  %2812 = sub nsw i32 2129859010, %2811
  %2813 = bitcast i32 %2812 to float
  %2814 = fmul fast float %2813, %2798
  %2815 = fadd fast float %2814, 1.000000e+00
  %2816 = fmul fast float %2799, 2.000000e+00
  %2817 = fsub fast float 3.000000e+00, %2816
  %2818 = fadd fast float %2816, 1.000000e+00
  %2819 = fsub fast float 2.000000e+00, %2799
  %2820 = bitcast float %2817 to i32
  %2821 = sub nsw i32 2129859010, %2820
  %2822 = bitcast i32 %2821 to float
  %2823 = fmul fast float %2822, %2819
  %2824 = fadd fast float %2823, -1.000000e+00
  %2825 = bitcast float %2818 to i32
  %2826 = sub nsw i32 2129859010, %2825
  %2827 = bitcast i32 %2826 to float
  %2828 = fmul fast float %2827, %2799
  %2829 = fadd fast float %2828, 1.000000e+00
  %2830 = fadd fast float %2810, %2800
  %2831 = fmul fast float %2830, %2782
  %2832 = fadd fast float %2824, %2801
  %2833 = fmul fast float %2832, %2783
  %2834 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %37, float %2831, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float %2787)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2835 = extractvalue %dx.types.ResRet.f32 %2834, 0
  %2836 = fmul fast float %2835, %2803
  %2837 = fadd fast float %2815, %2800
  %2838 = fmul fast float %2837, %2782
  %2839 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %37, float %2838, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float %2787)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = fmul fast float %2840, %2804
  %2842 = fadd fast float %2829, %2801
  %2843 = fmul fast float %2842, %2783
  %2844 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %37, float %2831, float %2843, float undef, float undef, i32 0, i32 0, i32 undef, float %2787)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2845 = extractvalue %dx.types.ResRet.f32 %2844, 0
  %2846 = fmul fast float %2845, %2803
  %2847 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %37, float %2838, float %2843, float undef, float undef, i32 0, i32 0, i32 undef, float %2787)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2848 = extractvalue %dx.types.ResRet.f32 %2847, 0
  %2849 = fmul fast float %2848, %2804
  %2850 = fadd fast float %2849, %2846
  %2851 = fmul fast float %2850, %2818
  %2852 = fadd fast float %2841, %2836
  %2853 = fmul fast float %2852, %2817
  %2854 = fadd fast float %2853, %2851
  %2855 = fmul fast float %2854, 6.250000e-02
  br label %2941

; <label>:2856                                    ; preds = %2777
  %2857 = fmul fast float %325, 0x401921FB60000000
  %2858 = call float @dx.op.unary.f32(i32 13, float %2857)  ; Sin(value)
  %2859 = call float @dx.op.unary.f32(i32 12, float %2857)  ; Cos(value)
  %2860 = fsub fast float -0.000000e+00, %2858
  br label %2861

; <label>:2861                                    ; preds = %2910, %2856
  %2862 = phi float [ 0.000000e+00, %2856 ], [ %2905, %2910 ]
  %2863 = phi float [ 0.000000e+00, %2856 ], [ %2907, %2910 ]
  %2864 = phi i32 [ 0, %2856 ], [ %2911, %2910 ]
  %2865 = mul i32 %2864, 2
  %2866 = add i32 0, %2865
  %2867 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2866
  %2868 = load float, float* %2867, align 4
  %2869 = mul i32 %2864, 2
  %2870 = add i32 1, %2869
  %2871 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2870
  %2872 = load float, float* %2871, align 4
  %2873 = fmul fast float %2868, %2859
  %2874 = call float @dx.op.tertiary.f32(i32 46, float %2872, float %2860, float %2873)  ; FMad(a,b,c)
  %2875 = fmul fast float %2868, %2858
  %2876 = call float @dx.op.tertiary.f32(i32 46, float %2872, float %2859, float %2875)  ; FMad(a,b,c)
  %2877 = fmul fast float %2874, %2785
  %2878 = fmul fast float %2876, %2785
  %2879 = fadd fast float %2877, %1919
  %2880 = fadd fast float %2878, %1923
  %2881 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %36, float %2879, float %2880, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.ResRet.f32 %2881, 1
  %2884 = extractvalue %dx.types.ResRet.f32 %2881, 2
  %2885 = extractvalue %dx.types.ResRet.f32 %2881, 3
  %2886 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 0
  store float %2882, float* %2886, align 4
  %2887 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 1
  store float %2883, float* %2887, align 4
  %2888 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 2
  store float %2884, float* %2888, align 4
  %2889 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 3
  store float %2885, float* %2889, align 4
  %2890 = fsub fast float %2882, %2787
  %2891 = fcmp fast olt float %2890, 0.000000e+00
  %2892 = select i1 %2891, float 0.000000e+00, float 1.000000e+00
  %2893 = fadd fast float %2892, %2862
  %2894 = fmul fast float %2892, %2890
  %2895 = fadd fast float %2894, %2863
  br label %2896

; <label>:2896                                    ; preds = %2896, %2861
  %2897 = phi i32 [ 1, %2861 ], [ %2908, %2896 ]
  %2898 = phi float [ %2895, %2861 ], [ %2907, %2896 ]
  %2899 = phi float [ %2893, %2861 ], [ %2905, %2896 ]
  %2900 = getelementptr [4 x float], [4 x float]* %75, i32 0, i32 %2897
  %2901 = load float, float* %2900, align 4, !tbaa !96, !noalias !112
  %2902 = fsub fast float %2901, %2787
  %2903 = fcmp fast olt float %2902, 0.000000e+00
  %2904 = select i1 %2903, float 0.000000e+00, float 1.000000e+00
  %2905 = fadd fast float %2904, %2899
  %2906 = fmul fast float %2904, %2902
  %2907 = fadd fast float %2906, %2898
  %2908 = add nuw nsw i32 %2897, 1
  %2909 = icmp eq i32 %2908, 4
  br i1 %2909, label %2910, label %2896, !llvm.loop !122

; <label>:2910                                    ; preds = %2896
  %2911 = add nuw nsw i32 %2864, 1
  %2912 = icmp eq i32 %2911, 8
  br i1 %2912, label %2913, label %2861, !llvm.loop !123

; <label>:2913                                    ; preds = %2910
  %2914 = fdiv fast float 1.000000e+00, %2905
  %2915 = fmul fast float %2914, %2907
  %2916 = fdiv fast float 1.000000e+00, %2787
  %2917 = fmul fast float %2915, %2916
  %2918 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  %2919 = call float @dx.op.binary.f32(i32 35, float %2918, float 0.000000e+00)  ; FMax(a,b)
  %2920 = fmul fast float %2905, 3.125000e-02
  %2921 = call float @dx.op.unary.f32(i32 7, float %2920)  ; Saturate(value)
  %2922 = fmul fast float %2921, 2.000000e+00
  %2923 = fadd fast float %2922, -1.000000e+00
  %2924 = fcmp fast ogt float %2923, 0.000000e+00
  %2925 = fcmp fast olt float %2923, 0.000000e+00
  %2926 = zext i1 %2924 to i32
  %2927 = zext i1 %2925 to i32
  %2928 = sub nsw i32 %2926, %2927
  %2929 = sitofp i32 %2928 to float
  %2930 = fmul fast float %2929, %2923
  %2931 = fsub fast float 1.000000e+00, %2930
  %2932 = fmul fast float %2931, %2931
  %2933 = fmul fast float %2932, %2931
  %2934 = fsub fast float %2931, %2933
  %2935 = fmul fast float %2934, %2919
  %2936 = fsub fast float 1.000000e+00, %2933
  %2937 = fsub fast float %2936, %2935
  %2938 = fmul fast float %2929, 5.000000e-01
  %2939 = fmul fast float %2938, %2937
  %2940 = fsub fast float 5.000000e-01, %2939
  br label %2941

; <label>:2941                                    ; preds = %2913, %2789, %2774
  %2942 = phi float [ 1.000000e+00, %2774 ], [ %2855, %2789 ], [ %2940, %2913 ]
  %2943 = fsub fast float %2608, %2443
  %2944 = fmul fast float %2943, %1981
  %2945 = fadd fast float %2944, %2443
  %2946 = fsub fast float %2775, %2945
  %2947 = fmul fast float %2946, %2011
  %2948 = fadd fast float %2947, %2945
  %2949 = fsub fast float %2942, %2948
  %2950 = fmul fast float %2949, %2037
  %2951 = fadd fast float %2950, %2948
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2954 = fcmp fast ogt float %2953, 0.000000e+00
  br i1 %2954, label %2955, label %2995, !dx.controlflow.hints !126

; <label>:2955                                    ; preds = %2941
  %2956 = fcmp fast ugt float %2953, 0.000000e+00
  br i1 %2956, label %2957, label %2992

; <label>:2957                                    ; preds = %2955
  %2958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2959 = extractvalue %dx.types.CBufRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.CBufRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.CBufRet.f32 %2958, 2
  %2962 = extractvalue %dx.types.CBufRet.f32 %2958, 3
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.CBufRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.CBufRet.f32 %2963, 2
  %2967 = extractvalue %dx.types.CBufRet.f32 %2963, 3
  %2968 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2969 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2971 = extractvalue %dx.types.CBufRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.CBufRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.CBufRet.f32 %2970, 2
  %2974 = fadd fast float %2971, %1896
  %2975 = fadd fast float %2972, %1897
  %2976 = fadd fast float %2973, %1898
  %2977 = fmul fast float %2974, %2959
  %2978 = call float @dx.op.tertiary.f32(i32 46, float %2960, float %2975, float %2977)  ; FMad(a,b,c)
  %2979 = call float @dx.op.tertiary.f32(i32 46, float %2961, float %2976, float %2978)  ; FMad(a,b,c)
  %2980 = fadd fast float %2979, %2962
  %2981 = fmul fast float %2974, %2964
  %2982 = call float @dx.op.tertiary.f32(i32 46, float %2965, float %2975, float %2981)  ; FMad(a,b,c)
  %2983 = call float @dx.op.tertiary.f32(i32 46, float %2966, float %2976, float %2982)  ; FMad(a,b,c)
  %2984 = fadd fast float %2983, %2967
  %2985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %32, float %2980, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = fmul fast float %2986, %2969
  %2988 = fadd fast float %2987, %2968
  %2989 = call float @dx.op.unary.f32(i32 7, float %2988)  ; Saturate(value)
  %2990 = fmul fast float %2989, %2953
  %2991 = fsub fast float 1.000000e+00, %2990
  br label %2992

; <label>:2992                                    ; preds = %2957, %2955
  %2993 = phi float [ %2991, %2957 ], [ 1.000000e+00, %2955 ]
  %2994 = fmul fast float %2993, %2951
  br label %2995

; <label>:2995                                    ; preds = %2992, %2941, %1876
  %2996 = phi float [ 1.000000e+00, %1876 ], [ %2994, %2992 ], [ %2951, %2941 ]
  %2997 = call float @dx.op.binary.f32(i32 36, float %2996, float %2996)  ; FMin(a,b)
  %2998 = call float @dx.op.binary.f32(i32 36, float %2996, float %2997)  ; FMin(a,b)
  %2999 = fcmp fast ogt float %2998, 0.000000e+00
  br i1 %2999, label %3000, label %3165, !dx.controlflow.hints !127

; <label>:3000                                    ; preds = %2995
  %3001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3002 = extractvalue %dx.types.CBufRet.f32 %3001, 0
  %3003 = extractvalue %dx.types.CBufRet.f32 %3001, 1
  %3004 = extractvalue %dx.types.CBufRet.f32 %3001, 2
  %3005 = extractvalue %dx.types.CBufRet.f32 %3001, 3
  %3006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3008 = extractvalue %dx.types.CBufRet.f32 %3006, 1
  %3009 = extractvalue %dx.types.CBufRet.f32 %3006, 2
  %3010 = extractvalue %dx.types.CBufRet.f32 %3006, 3
  %3011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.f32 %3011, 0
  %3013 = extractvalue %dx.types.CBufRet.f32 %3011, 1
  %3014 = extractvalue %dx.types.CBufRet.f32 %3011, 2
  %3015 = extractvalue %dx.types.CBufRet.f32 %3011, 3
  %3016 = fmul fast float %3002, %1896
  %3017 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %3003, float %3016)  ; FMad(a,b,c)
  %3018 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %3004, float %3017)  ; FMad(a,b,c)
  %3019 = fadd fast float %3018, %3005
  %3020 = fmul fast float %3007, %1896
  %3021 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %3008, float %3020)  ; FMad(a,b,c)
  %3022 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %3009, float %3021)  ; FMad(a,b,c)
  %3023 = fadd fast float %3022, %3010
  %3024 = fmul fast float %3012, %1896
  %3025 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %3013, float %3024)  ; FMad(a,b,c)
  %3026 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %3014, float %3025)  ; FMad(a,b,c)
  %3027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.f32 %3027, 0
  %3029 = extractvalue %dx.types.CBufRet.f32 %3027, 1
  %3030 = extractvalue %dx.types.CBufRet.f32 %3027, 3
  %3031 = fmul fast float %3030, %3019
  %3032 = fmul fast float %3030, %3023
  %3033 = fadd fast float %3031, %3028
  %3034 = fadd fast float %3032, %3029
  %3035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3036 = extractvalue %dx.types.CBufRet.f32 %3035, 0
  %3037 = extractvalue %dx.types.CBufRet.f32 %3035, 1
  %3038 = fsub fast float %3033, %3036
  %3039 = fsub fast float %3034, %3037
  %3040 = fcmp fast olt float %3038, 0.000000e+00
  %3041 = fcmp fast olt float %3039, 0.000000e+00
  %3042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.f32 %3042, 0
  %3044 = extractvalue %dx.types.CBufRet.f32 %3042, 1
  %3045 = extractvalue %dx.types.CBufRet.f32 %3042, 2
  %3046 = extractvalue %dx.types.CBufRet.f32 %3042, 3
  %3047 = select i1 %3040, float %3043, float %3045
  %3048 = select i1 %3041, float %3044, float %3046
  %3049 = fmul fast float %3047, %3038
  %3050 = fmul fast float %3048, %3039
  %3051 = call float @dx.op.unary.f32(i32 6, float %3049)  ; FAbs(value)
  %3052 = call float @dx.op.unary.f32(i32 6, float %3050)  ; FAbs(value)
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 0
  %3055 = call float @dx.op.binary.f32(i32 35, float %3051, float %3052)  ; FMax(a,b)
  %3056 = fsub fast float %3054, %3055
  %3057 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3058 = fcmp fast ogt float %3057, 0.000000e+00
  br i1 %3058, label %3059, label %3100, !dx.controlflow.hints !128

; <label>:3059                                    ; preds = %3000
  %3060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %3033, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 1
  %3062 = fcmp fast ogt float %3061, 0.000000e+00
  br i1 %3062, label %3063, label %3096

; <label>:3063                                    ; preds = %3059
  %3064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %35, float %3033, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 0
  %3066 = extractvalue %dx.types.ResRet.f32 %3064, 1
  %3067 = extractvalue %dx.types.ResRet.f32 %3064, 2
  %3068 = extractvalue %dx.types.ResRet.f32 %3064, 3
  %3069 = fsub fast float 1.000000e+00, %3015
  %3070 = fsub fast float %3069, %3026
  %3071 = fmul fast float %3070, 0x400921FB60000000
  %3072 = fadd fast float %3071, 0x3FF921FB60000000
  %3073 = call float @dx.op.unary.f32(i32 13, float %3072)  ; Sin(value)
  %3074 = fadd fast float %3073, -1.000000e+00
  %3075 = fmul fast float %3074, 0x3FD45F3060000000
  %3076 = fmul fast float %3070, 0x401921FB60000000
  %3077 = fadd fast float %3076, 0x400921FB60000000
  %3078 = call float @dx.op.unary.f32(i32 13, float %3077)  ; Sin(value)
  %3079 = fadd fast float %3078, 0x3E7777A5C0000000
  %3080 = fmul fast float %3079, 0x3FC45F3060000000
  %3081 = fmul fast float %3070, 0x4022D97C80000000
  %3082 = fadd fast float %3081, 0x4012D97C80000000
  %3083 = call float @dx.op.unary.f32(i32 13, float %3082)  ; Sin(value)
  %3084 = fadd fast float %3083, 1.000000e+00
  %3085 = fmul fast float %3084, 0x3FBB2995E0000000
  %3086 = fmul fast float %3070, 0x402921FB60000000
  %3087 = fadd fast float %3086, 0x401921FB60000000
  %3088 = call float @dx.op.unary.f32(i32 13, float %3087)  ; Sin(value)
  %3089 = fadd fast float %3088, 0xBE8777A5C0000000
  %3090 = fmul fast float %3089, 0x3FB45F3060000000
  %3091 = call float @dx.op.dot4.f32(i32 56, float %3065, float %3066, float %3067, float %3068, float %3075, float %3080, float %3085, float %3090)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3092 = fmul fast float %3091, 0xBFF7154760000000
  %3093 = call float @dx.op.unary.f32(i32 21, float %3092)  ; Exp(value)
  %3094 = call float @dx.op.unary.f32(i32 7, float %3093)  ; Saturate(value)
  %3095 = fadd float %3094, -1.000000e+00
  br label %3096

; <label>:3096                                    ; preds = %3063, %3059
  %3097 = phi float [ %3095, %3063 ], [ 0.000000e+00, %3059 ]
  %3098 = fmul fast float %3097, %3057
  %3099 = fadd fast float %3098, 1.000000e+00
  br label %3100

; <label>:3100                                    ; preds = %3096, %3000
  %3101 = phi float [ %3099, %3096 ], [ 1.000000e+00, %3000 ]
  %3102 = fmul fast float %3101, %2996
  %3103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3104 = extractvalue %dx.types.CBufRet.f32 %3103, 0
  %3105 = extractvalue %dx.types.CBufRet.f32 %3103, 1
  %3106 = extractvalue %dx.types.CBufRet.f32 %3103, 2
  %3107 = fadd fast float %3104, %414
  %3108 = fadd fast float %3105, %415
  %3109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3110 = extractvalue %dx.types.CBufRet.f32 %3109, 1
  %3111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3112 = extractvalue %dx.types.CBufRet.f32 %3111, 0
  %3113 = extractvalue %dx.types.CBufRet.f32 %3111, 1
  %3114 = extractvalue %dx.types.CBufRet.f32 %3111, 2
  %3115 = fsub fast float -0.000000e+00, %3107
  %3116 = fsub fast float -0.000000e+00, %3108
  %3117 = fsub fast float %444, %3106
  %3118 = fadd fast float %3117, %3110
  %3119 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3115, float %3116, float %3118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3120 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3112, float %3113, float %3114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3121 = fdiv fast float 1.000000e+00, %3120
  %3122 = fmul fast float %3121, %3119
  %3123 = fmul fast float %3112, %3122
  %3124 = fmul fast float %3113, %3122
  %3125 = fadd fast float %3123, %3107
  %3126 = fadd fast float %3124, %3108
  %3127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3128 = extractvalue %dx.types.CBufRet.f32 %3127, 0
  %3129 = extractvalue %dx.types.CBufRet.f32 %3127, 1
  %3130 = fsub fast float %3125, %3128
  %3131 = fsub fast float %3126, %3129
  %3132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.f32 %3132, 2
  %3134 = extractvalue %dx.types.CBufRet.f32 %3132, 3
  %3135 = fmul fast float %3130, %3133
  %3136 = fmul fast float %3131, %3134
  %3137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3138 = extractvalue %dx.types.CBufRet.i32 %3137, 3
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %3145, label %3140

; <label>:3140                                    ; preds = %3100
  %3141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %34, float %3135, float %3136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.ResRet.f32 %3141, 1
  %3144 = extractvalue %dx.types.ResRet.f32 %3141, 2
  br label %3150

; <label>:3145                                    ; preds = %3100
  %3146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3135, float %3136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  %3148 = extractvalue %dx.types.ResRet.f32 %3146, 1
  %3149 = extractvalue %dx.types.ResRet.f32 %3146, 2
  br label %3150

; <label>:3150                                    ; preds = %3145, %3140
  %3151 = phi float [ %3142, %3140 ], [ %3147, %3145 ]
  %3152 = phi float [ %3143, %3140 ], [ %3148, %3145 ]
  %3153 = phi float [ %3144, %3140 ], [ %3149, %3145 ]
  %3154 = extractvalue %dx.types.CBufRet.f32 %3109, 2
  %3155 = fmul fast float %3154, %3151
  %3156 = extractvalue %dx.types.CBufRet.f32 %3109, 0
  %3157 = fsub fast float %3122, %3156
  %3158 = fsub fast float %3157, %3155
  %3159 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3158)  ; FMax(a,b)
  %3160 = fmul fast float %3159, %3152
  %3161 = call float @dx.op.binary.f32(i32 36, float %3153, float %3160)  ; FMin(a,b)
  %3162 = fmul fast float %3161, 0xBFF7154760000000
  %3163 = call float @dx.op.unary.f32(i32 21, float %3162)  ; Exp(value)
  %3164 = fmul fast float %3102, %3163
  br label %3165

; <label>:3165                                    ; preds = %3150, %2995
  %3166 = phi float [ %3164, %3150 ], [ %2996, %2995 ]
  %3167 = call float @dx.op.binary.f32(i32 36, float %3166, float %3166)  ; FMin(a,b)
  %3168 = call float @dx.op.binary.f32(i32 36, float %3166, float %3167)  ; FMin(a,b)
  %3169 = fcmp fast ogt float %3168, 0.000000e+00
  br i1 %3169, label %3170, label %3293, !dx.controlflow.hints !129

; <label>:3170                                    ; preds = %3165
  %3171 = fmul fast float %3166, %1888
  %3172 = fmul fast float %3166, %1889
  %3173 = fmul fast float %3166, %1890
  %3174 = fsub fast float %1877, %447
  %3175 = fsub fast float %1878, %448
  %3176 = fsub fast float %1879, %449
  %3177 = call float @dx.op.dot3.f32(i32 55, float %3174, float %3175, float %3176, float %3174, float %3175, float %3176)  ; Dot3(ax,ay,az,bx,by,bz)
  %3178 = call float @dx.op.unary.f32(i32 25, float %3177)  ; Rsqrt(value)
  %3179 = fmul fast float %3178, %3174
  %3180 = fmul fast float %3178, %3175
  %3181 = fmul fast float %3178, %3176
  %3182 = call float @dx.op.dot3.f32(i32 55, float %1877, float %1878, float %1879, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = call float @dx.op.dot3.f32(i32 55, float %450, float %451, float %452, float %3179, float %3180, float %3181)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3185 = fmul fast float %3184, %3184
  %3186 = fmul fast float %3185, 0x47DE623840000000
  %3187 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  %3188 = fmul fast float %3187, %3184
  %3189 = call float @dx.op.dot3.f32(i32 55, float %336, float %337, float %338, float %3179, float %3180, float %3181)  ; Dot3(ax,ay,az,bx,by,bz)
  %3190 = fmul fast float %3189, %3189
  %3191 = call float @dx.op.unary.f32(i32 6, float %3182)  ; FAbs(value)
  %3192 = fsub fast float 1.000000e+00, %473
  %3193 = fmul fast float %455, %455
  %3194 = fmul fast float %3193, %3192
  %3195 = fadd fast float %3194, %473
  %3196 = bitcast float %3195 to i32
  %3197 = ashr i32 %3196, 1
  %3198 = add nsw i32 %3197, 532487669
  %3199 = bitcast i32 %3198 to float
  %3200 = fadd fast float %3199, %455
  %3201 = fmul fast float %473, %3190
  %3202 = fsub fast float 1.000000e+00, %3190
  %3203 = fadd fast float %3202, %3201
  %3204 = fmul fast float %3191, %3191
  %3205 = fmul fast float %3204, %3192
  %3206 = fadd fast float %3205, %473
  %3207 = bitcast float %3206 to i32
  %3208 = ashr i32 %3207, 1
  %3209 = add nsw i32 %3208, 532487669
  %3210 = bitcast i32 %3209 to float
  %3211 = fadd fast float %3210, %3191
  %3212 = fmul fast float %3203, %3203
  %3213 = fmul fast float %3212, %3200
  %3214 = fmul fast float %3213, %3211
  %3215 = fdiv fast float 0x3FF0A00000000000, %3214
  %3216 = fmul fast float %3215, %473
  %3217 = call float @dx.op.unary.f32(i32 6, float %3183)  ; FAbs(value)
  %3218 = fsub fast float 1.000000e+00, %3217
  %3219 = bitcast float %3218 to i32
  %3220 = sitofp i32 %3219 to float
  %3221 = fmul fast float %3220, 5.000000e+00
  %3222 = fadd fast float %3221, 0xC1EFBF8940000000
  %3223 = fptosi float %3222 to i32
  %3224 = bitcast i32 %3223 to float
  %3225 = fsub fast float 1.000000e+00, %435
  %3226 = fsub fast float 1.000000e+00, %436
  %3227 = fsub fast float 1.000000e+00, %453
  %3228 = fmul fast float %3224, %3225
  %3229 = fmul fast float %3224, %3226
  %3230 = fmul fast float %3224, %3227
  %3231 = fadd fast float %3228, %435
  %3232 = fadd fast float %3229, %436
  %3233 = fadd fast float %3230, %453
  %3234 = fmul fast float %3182, 9.843750e-01
  %3235 = fadd fast float %3234, 7.812500e-03
  %3236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %3235, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 3
  %3239 = fmul fast float %3237, %435
  %3240 = fmul fast float %3237, %436
  %3241 = fmul fast float %3237, %453
  %3242 = fadd fast float %3239, %3238
  %3243 = fadd fast float %3240, %3238
  %3244 = fadd fast float %3241, %3238
  %3245 = call float @dx.op.binary.f32(i32 35, float %3243, float %3244)  ; FMax(a,b)
  %3246 = call float @dx.op.binary.f32(i32 35, float %3242, float %3245)  ; FMax(a,b)
  %3247 = fsub fast float 1.000000e+00, %3246
  %3248 = fsub fast float -0.000000e+00, %336
  %3249 = fsub fast float -0.000000e+00, %337
  %3250 = fsub fast float -0.000000e+00, %338
  %3251 = call float @dx.op.dot3.f32(i32 55, float %1877, float %1878, float %1879, float %3248, float %3249, float %3250)  ; Dot3(ax,ay,az,bx,by,bz)
  %3252 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3253 = fmul fast float %3252, 9.843750e-01
  %3254 = fadd fast float %3253, 7.812500e-03
  %3255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %3254, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 2
  %3257 = extractvalue %dx.types.ResRet.f32 %3255, 3
  %3258 = fmul fast float %3256, %435
  %3259 = fmul fast float %3256, %436
  %3260 = fmul fast float %3256, %453
  %3261 = fadd fast float %3258, %3257
  %3262 = fadd fast float %3259, %3257
  %3263 = fadd fast float %3260, %3257
  %3264 = call float @dx.op.binary.f32(i32 35, float %3262, float %3263)  ; FMax(a,b)
  %3265 = call float @dx.op.binary.f32(i32 35, float %3261, float %3264)  ; FMax(a,b)
  %3266 = fsub fast float 1.000000e+00, %3265
  %3267 = fmul fast float %3266, %3252
  %3268 = fmul fast float %3267, %355
  %3269 = fmul fast float %3267, %356
  %3270 = fmul fast float %3267, %357
  %3271 = fmul fast float %3247, %3188
  %3272 = fadd fast float %3268, %3271
  %3273 = fadd fast float %3269, %3271
  %3274 = fadd fast float %3270, %3271
  %3275 = fmul fast float %3272, %3171
  %3276 = fmul fast float %3273, %3172
  %3277 = fmul fast float %3274, %3173
  %3278 = fadd fast float %3275, %1868
  %3279 = fadd fast float %3276, %1870
  %3280 = fadd fast float %3277, %1872
  %3281 = fmul fast float %3188, %3171
  %3282 = fmul fast float %3281, %3216
  %3283 = fmul fast float %3282, %3231
  %3284 = fmul fast float %3188, %3172
  %3285 = fmul fast float %3284, %3216
  %3286 = fmul fast float %3285, %3232
  %3287 = fmul fast float %3188, %3173
  %3288 = fmul fast float %3287, %3216
  %3289 = fmul fast float %3288, %3233
  %3290 = fadd fast float %3283, %1861
  %3291 = fadd fast float %3286, %1862
  %3292 = fadd fast float %3289, %1863
  br label %3293

; <label>:3293                                    ; preds = %3170, %3165, %1857
  %3294 = phi float [ %1861, %1857 ], [ %1861, %3165 ], [ %3290, %3170 ]
  %3295 = phi float [ %1862, %1857 ], [ %1862, %3165 ], [ %3291, %3170 ]
  %3296 = phi float [ %1863, %1857 ], [ %1863, %3165 ], [ %3292, %3170 ]
  %3297 = phi float [ %1868, %1857 ], [ %1868, %3165 ], [ %3278, %3170 ]
  %3298 = phi float [ %1870, %1857 ], [ %1870, %3165 ], [ %3279, %3170 ]
  %3299 = phi float [ %1872, %1857 ], [ %1872, %3165 ], [ %3280, %3170 ]
  %3300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.i32 %3300, 0
  %3302 = icmp eq i32 %3301, 0
  br i1 %3302, label %3843, label %3303

; <label>:3303                                    ; preds = %3293
  %3304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3305 = extractvalue %dx.types.CBufRet.f32 %3304, 2
  %3306 = extractvalue %dx.types.CBufRet.f32 %3304, 3
  %3307 = fmul fast float %3305, %82
  %3308 = fmul fast float %3306, %83
  %3309 = fptoui float %3307 to i32
  %3310 = fptoui float %3308 to i32
  %3311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3312 = extractvalue %dx.types.CBufRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.CBufRet.f32 %3311, 2
  %3314 = extractvalue %dx.types.CBufRet.f32 %3311, 3
  %3315 = fadd fast float %380, -4.000000e+00
  %3316 = call float @dx.op.binary.f32(i32 35, float %3315, float 0.000000e+00)  ; FMax(a,b)
  %3317 = fadd fast float %3316, %3312
  %3318 = fmul fast float %3317, %3313
  %3319 = call float @dx.op.unary.f32(i32 23, float %3318)  ; Log(value)
  %3320 = fmul fast float %3319, %3314
  %3321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3322 = extractvalue %dx.types.CBufRet.f32 %3321, 2
  %3323 = fmul fast float %3320, %3322
  %3324 = call float @dx.op.unary.f32(i32 7, float %3323)  ; Saturate(value)
  %3325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.i32 %3325, 1
  %3327 = add i32 %3326, -1
  %3328 = uitofp i32 %3326 to float
  %3329 = fmul fast float %3328, %3324
  %3330 = fptoui float %3329 to i32
  %3331 = call i32 @dx.op.binary.i32(i32 40, i32 %3330, i32 %3327)  ; UMin(a,b)
  %3332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.i32 %3332, 2
  %3334 = extractvalue %dx.types.CBufRet.i32 %3332, 3
  %3335 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3310, i32 %3333, i32 %3309)  ; UMad(a,b,c)
  %3336 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3331, i32 %3334, i32 %3335)  ; UMad(a,b,c)
  %3337 = add nsw i32 %3301, -1
  %3338 = call i32 @dx.op.binary.i32(i32 37, i32 %3337, i32 0)  ; IMax(a,b)
  %3339 = call float @dx.op.binary.f32(i32 35, float %380, float 0.000000e+00)  ; FMax(a,b)
  %3340 = fptoui float %3339 to i32
  %3341 = lshr i32 %3340, 5
  %3342 = call i32 @dx.op.binary.i32(i32 40, i32 %3341, i32 8191)  ; UMin(a,b)
  %3343 = shl i32 %3342, 2
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = lshr i32 %3345, 16
  %3347 = and i32 %3345, 65535
  %3348 = lshr i32 %3345, 21
  %3349 = lshr i32 %3347, 5
  %3350 = call i32 @dx.op.binary.i32(i32 40, i32 %3349, i32 %3338)  ; UMin(a,b)
  %3351 = icmp ugt i32 %3348, %3350
  br i1 %3351, label %3843, label %3352

; <label>:3352                                    ; preds = %3303
  br label %3353

; <label>:3353                                    ; preds = %3833, %3352
  %3354 = phi i32 [ %3840, %3833 ], [ %3348, %3352 ]
  %3355 = phi float [ %3834, %3833 ], [ %3294, %3352 ]
  %3356 = phi float [ %3835, %3833 ], [ %3295, %3352 ]
  %3357 = phi float [ %3836, %3833 ], [ %3296, %3352 ]
  %3358 = phi float [ %3837, %3833 ], [ %3297, %3352 ]
  %3359 = phi float [ %3838, %3833 ], [ %3298, %3352 ]
  %3360 = phi float [ %3839, %3833 ], [ %3299, %3352 ]
  %3361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3362 = extractvalue %dx.types.CBufRet.i32 %3361, 0
  %3363 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3336, i32 %3362, i32 %3354)  ; UMad(a,b,c)
  %3364 = shl i32 %3363, 2
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = shl i32 %3354, 5
  %3368 = sub nsw i32 %3346, %3367
  %3369 = call i32 @dx.op.binary.i32(i32 37, i32 %3368, i32 0)  ; IMax(a,b)
  %3370 = call i32 @dx.op.binary.i32(i32 38, i32 %3369, i32 31)  ; IMin(a,b)
  %3371 = sub nsw i32 1, %3346
  %3372 = add nsw i32 %3371, %3347
  %3373 = call i32 @dx.op.binary.i32(i32 37, i32 %3372, i32 0)  ; IMax(a,b)
  %3374 = call i32 @dx.op.binary.i32(i32 38, i32 %3373, i32 32)  ; IMin(a,b)
  %3375 = and i32 %3374, 31
  %3376 = shl i32 -1, %3375
  %3377 = xor i32 %3376, -1
  %3378 = and i32 %3370, 31
  %3379 = shl i32 %3377, %3378
  %3380 = icmp eq i32 %3374, 32
  %3381 = select i1 %3380, i32 -1, i32 %3379
  %3382 = and i32 %3381, %3366
  %3383 = icmp eq i32 %3382, 0
  br i1 %3383, label %3833, label %3384

; <label>:3384                                    ; preds = %3353
  br label %3385

; <label>:3385                                    ; preds = %3519, %3384
  %3386 = phi i32 [ %3397, %3519 ], [ %3382, %3384 ]
  %3387 = phi float [ %3520, %3519 ], [ %3355, %3384 ]
  %3388 = phi float [ %3521, %3519 ], [ %3356, %3384 ]
  %3389 = phi float [ %3522, %3519 ], [ %3357, %3384 ]
  %3390 = phi float [ %3523, %3519 ], [ %3358, %3384 ]
  %3391 = phi float [ %3524, %3519 ], [ %3359, %3384 ]
  %3392 = phi float [ %3525, %3519 ], [ %3360, %3384 ]
  %3393 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3386)  ; FirstbitLo(value)
  %3394 = add i32 %3393, %3367
  %3395 = and i32 %3393, 31
  %3396 = shl i32 1, %3395
  %3397 = xor i32 %3396, %3386
  %3398 = mul i32 %3394, 112
  %3399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = or i32 %3398, 12
  %3404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = add i32 %3398, 16
  %3407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.f32 %3407, 0
  %3409 = extractvalue %dx.types.ResRet.f32 %3407, 1
  %3410 = extractvalue %dx.types.ResRet.f32 %3407, 2
  %3411 = add i32 %3398, 28
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = add i32 %3398, 44
  %3415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.f32 %3415, 0
  %3417 = add i32 %3398, 48
  %3418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3422 = extractvalue %dx.types.ResRet.f32 %3418, 3
  %3423 = add i32 %3398, 64
  %3424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3426 = extractvalue %dx.types.ResRet.f32 %3424, 1
  %3427 = extractvalue %dx.types.ResRet.f32 %3424, 2
  %3428 = extractvalue %dx.types.ResRet.f32 %3424, 3
  %3429 = add i32 %3398, 80
  %3430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.f32 %3430, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3430, 2
  %3433 = add i32 %3398, 92
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = call float @dx.op.dot3.f32(i32 55, float %3400, float %3401, float %3402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3437 = select i1 %141, float %3431, float %3400
  %3438 = select i1 %141, float %3436, float %3401
  %3439 = select i1 %141, float %3432, float %3402
  %3440 = and i32 %3435, 65535
  %3441 = uitofp i32 %3440 to float
  %3442 = lshr i32 %3435, 16
  %3443 = uitofp i32 %3442 to float
  %3444 = and i32 %3413, 65535
  %3445 = and i32 %3413, 50331648
  %3446 = icmp eq i32 %3445, 33554432
  %3447 = fsub fast float %3419, %414
  %3448 = fsub fast float %3420, %415
  %3449 = fsub fast float %3421, %416
  %3450 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3448, float %3449, float %3447, float %3448, float %3449)  ; Dot3(ax,ay,az,bx,by,bz)
  %3451 = call float @dx.op.unary.f32(i32 24, float %3450)  ; Sqrt(value)
  %3452 = fdiv fast float 1.000000e+00, %3451
  %3453 = fmul fast float %3452, %3447
  %3454 = fmul fast float %3452, %3448
  %3455 = fmul fast float %3452, %3449
  %3456 = fadd fast float %3451, %3405
  %3457 = fdiv fast float 1.000000e+00, %3456
  %3458 = fmul float %3416, %3457
  %3459 = fmul float %3458, %3458
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  br i1 %3446, label %3461, label %3482

; <label>:3461                                    ; preds = %3385
  %3462 = fmul fast float %3427, %3408
  %3463 = fmul fast float %3427, %3409
  %3464 = fmul fast float %3427, %3410
  %3465 = fadd fast float %3447, %3462
  %3466 = fadd fast float %3448, %3463
  %3467 = fadd fast float %3449, %3464
  %3468 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3466, float %3467, float %3465, float %3466, float %3467)  ; Dot3(ax,ay,az,bx,by,bz)
  %3469 = call float @dx.op.unary.f32(i32 25, float %3468)  ; Rsqrt(value)
  %3470 = fmul fast float %3469, %3465
  %3471 = fmul fast float %3469, %3466
  %3472 = fmul fast float %3469, %3467
  %3473 = fsub fast float %414, %3419
  %3474 = fsub fast float %415, %3420
  %3475 = fsub fast float %416, %3421
  %3476 = fsub fast float -0.000000e+00, %3473
  %3477 = fsub fast float -0.000000e+00, %3474
  %3478 = fsub fast float -0.000000e+00, %3475
  %3479 = call float @dx.op.dot3.f32(i32 55, float %3476, float %3477, float %3478, float %3408, float %3409, float %3410)  ; Dot3(ax,ay,az,bx,by,bz)
  %3480 = fcmp fast ogt float %3479, 0.000000e+00
  %3481 = uitofp i1 %3480 to float
  br label %3482

; <label>:3482                                    ; preds = %3461, %3385
  %3483 = phi float [ %3481, %3461 ], [ 1.000000e+00, %3385 ]
  %3484 = phi float [ %3470, %3461 ], [ %3453, %3385 ]
  %3485 = phi float [ %3471, %3461 ], [ %3454, %3385 ]
  %3486 = phi float [ %3472, %3461 ], [ %3455, %3385 ]
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3408, float %3409, float %3410, float %3484, float %3485, float %3486)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = fmul fast float %3487, %3487
  %3489 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = fmul fast float %3490, 5.000000e-01
  %3492 = fcmp fast ogt float %3487, 0.000000e+00
  %3493 = fsub fast float 1.000000e+00, %3491
  %3494 = select i1 %3492, float %3491, float %3493
  %3495 = fmul fast float %3494, %3443
  %3496 = fadd fast float %3495, %3441
  %3497 = fmul fast float %3496, 0x3EF0001000000000
  %3498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %3497, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = fmul fast float %3487, %3425
  %3501 = fadd fast float %3500, %3426
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3503 = select i1 %3446, float 1.000000e+00, float %3502
  %3504 = select i1 %3446, float %3502, float 1.000000e+00
  %3505 = fmul fast float %3451, %3422
  %3506 = fsub fast float 1.000000e+00, %3505
  %3507 = fmul fast float %3506, %3428
  %3508 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3509 = fmul fast float %3508, %3504
  %3510 = fmul fast float %3509, 2.000000e+00
  %3511 = fsub fast float 3.000000e+00, %3510
  %3512 = fmul fast float %3499, %3483
  %3513 = fmul fast float %3509, %3509
  %3514 = fmul fast float %3513, %3512
  %3515 = fmul fast float %3514, %3511
  %3516 = call float @dx.op.binary.f32(i32 36, float %3515, float %3515)  ; FMin(a,b)
  %3517 = call float @dx.op.binary.f32(i32 36, float %3515, float %3516)  ; FMin(a,b)
  %3518 = fcmp fast ogt float %3517, 0.000000e+00
  br i1 %3518, label %3527, label %3519, !dx.controlflow.hints !130

; <label>:3519                                    ; preds = %3678, %3673, %3482
  %3520 = phi float [ %3387, %3673 ], [ %3387, %3482 ], [ %3829, %3678 ]
  %3521 = phi float [ %3388, %3673 ], [ %3388, %3482 ], [ %3830, %3678 ]
  %3522 = phi float [ %3389, %3673 ], [ %3389, %3482 ], [ %3831, %3678 ]
  %3523 = phi float [ %3390, %3673 ], [ %3390, %3482 ], [ %3817, %3678 ]
  %3524 = phi float [ %3391, %3673 ], [ %3391, %3482 ], [ %3818, %3678 ]
  %3525 = phi float [ %3392, %3673 ], [ %3392, %3482 ], [ %3819, %3678 ]
  %3526 = icmp eq i32 %3386, %3396
  br i1 %3526, label %3832, label %3385

; <label>:3527                                    ; preds = %3482
  %3528 = icmp eq i32 %3444, 255
  br i1 %3528, label %3673, label %3529, !dx.controlflow.hints !131

; <label>:3529                                    ; preds = %3527
  %3530 = mul nuw nsw i32 %3444, 176
  %3531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 0
  %3533 = extractvalue %dx.types.ResRet.f32 %3531, 1
  %3534 = extractvalue %dx.types.ResRet.f32 %3531, 2
  %3535 = extractvalue %dx.types.ResRet.f32 %3531, 3
  %3536 = add nuw nsw i32 %3530, 16
  %3537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.f32 %3537, 0
  %3539 = extractvalue %dx.types.ResRet.f32 %3537, 1
  %3540 = add nuw nsw i32 %3530, 32
  %3541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.f32 %3541, 0
  %3543 = extractvalue %dx.types.ResRet.f32 %3541, 1
  %3544 = extractvalue %dx.types.ResRet.f32 %3541, 2
  %3545 = add nuw nsw i32 %3530, 48
  %3546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.ResRet.f32 %3546, 1
  %3549 = extractvalue %dx.types.ResRet.f32 %3546, 2
  %3550 = extractvalue %dx.types.ResRet.f32 %3546, 3
  %3551 = add nuw nsw i32 %3530, 64
  %3552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.ResRet.f32 %3552, 1
  %3555 = extractvalue %dx.types.ResRet.f32 %3552, 2
  %3556 = extractvalue %dx.types.ResRet.f32 %3552, 3
  %3557 = add nuw nsw i32 %3530, 80
  %3558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.f32 %3558, 0
  %3560 = extractvalue %dx.types.ResRet.f32 %3558, 1
  %3561 = extractvalue %dx.types.ResRet.f32 %3558, 2
  %3562 = extractvalue %dx.types.ResRet.f32 %3558, 3
  %3563 = add nuw nsw i32 %3530, 96
  %3564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.f32 %3564, 0
  %3566 = extractvalue %dx.types.ResRet.f32 %3564, 1
  %3567 = extractvalue %dx.types.ResRet.f32 %3564, 2
  %3568 = extractvalue %dx.types.ResRet.f32 %3564, 3
  %3569 = bitcast float %3539 to i32
  %3570 = fmul fast float %3544, %91
  %3571 = fmul fast float %3544, %93
  %3572 = fmul fast float %3544, %95
  %3573 = fadd fast float %3570, %414
  %3574 = fadd fast float %3571, %415
  %3575 = fadd fast float %3572, %416
  %3576 = fmul fast float %3573, %3547
  %3577 = call float @dx.op.tertiary.f32(i32 46, float %3574, float %3553, float %3576)  ; FMad(a,b,c)
  %3578 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3559, float %3577)  ; FMad(a,b,c)
  %3579 = fadd fast float %3578, %3565
  %3580 = fmul fast float %3573, %3548
  %3581 = call float @dx.op.tertiary.f32(i32 46, float %3574, float %3554, float %3580)  ; FMad(a,b,c)
  %3582 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3560, float %3581)  ; FMad(a,b,c)
  %3583 = fadd fast float %3582, %3566
  %3584 = fmul fast float %3573, %3549
  %3585 = call float @dx.op.tertiary.f32(i32 46, float %3574, float %3555, float %3584)  ; FMad(a,b,c)
  %3586 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3561, float %3585)  ; FMad(a,b,c)
  %3587 = fadd fast float %3586, %3567
  %3588 = fmul fast float %3573, %3550
  %3589 = call float @dx.op.tertiary.f32(i32 46, float %3574, float %3556, float %3588)  ; FMad(a,b,c)
  %3590 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3562, float %3589)  ; FMad(a,b,c)
  %3591 = fadd fast float %3590, %3568
  %3592 = fdiv fast float %3579, %3591
  %3593 = fdiv fast float %3583, %3591
  %3594 = fdiv fast float %3587, %3591
  %3595 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3594)  ; FMax(a,b)
  %3596 = fmul fast float %325, 0x401921FB60000000
  %3597 = call float @dx.op.unary.f32(i32 13, float %3596)  ; Sin(value)
  %3598 = call float @dx.op.unary.f32(i32 12, float %3596)  ; Cos(value)
  %3599 = fmul fast float %3598, %3543
  %3600 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3543, float 0.000000e+00)  ; FMad(a,b,c)
  %3601 = fmul fast float %3543, %3597
  %3602 = fsub fast float -0.000000e+00, %3601
  %3603 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3543, float 0.000000e+00)  ; FMad(a,b,c)
  br label %3604

; <label>:3604                                    ; preds = %3604, %3529
  %3605 = phi float [ 0.000000e+00, %3529 ], [ %3637, %3604 ]
  %3606 = phi float [ 0.000000e+00, %3529 ], [ %3639, %3604 ]
  %3607 = phi i32 [ 0, %3529 ], [ %3640, %3604 ]
  %3608 = mul i32 %3607, 2
  %3609 = add i32 0, %3608
  %3610 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3609
  %3611 = load float, float* %3610, align 4
  %3612 = mul i32 %3607, 2
  %3613 = add i32 1, %3612
  %3614 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3613
  %3615 = load float, float* %3614, align 4
  %3616 = fmul fast float %3599, %3611
  %3617 = call float @dx.op.tertiary.f32(i32 46, float %3615, float %3602, float %3616)  ; FMad(a,b,c)
  %3618 = fmul fast float %3611, %3600
  %3619 = call float @dx.op.tertiary.f32(i32 46, float %3615, float %3603, float %3618)  ; FMad(a,b,c)
  %3620 = fadd fast float %3617, %3592
  %3621 = fadd fast float %3619, %3593
  %3622 = fmul fast float %3620, %3538
  %3623 = fmul fast float %3621, %3538
  %3624 = call float @dx.op.binary.f32(i32 35, float %3622, float %3534)  ; FMax(a,b)
  %3625 = call float @dx.op.binary.f32(i32 35, float %3623, float %3534)  ; FMax(a,b)
  %3626 = call float @dx.op.binary.f32(i32 36, float %3624, float %3535)  ; FMin(a,b)
  %3627 = call float @dx.op.binary.f32(i32 36, float %3625, float %3535)  ; FMin(a,b)
  %3628 = fadd fast float %3626, %3532
  %3629 = fadd fast float %3627, %3533
  %3630 = uitofp i32 %3569 to float
  %3631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %36, float %3628, float %3629, float %3630, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = fsub fast float %3632, %3595
  %3634 = fsub fast float %3633, %3542
  %3635 = fcmp fast ogt float %3634, 0.000000e+00
  %3636 = select i1 %3635, float 1.000000e+00, float 0.000000e+00
  %3637 = fadd fast float %3636, %3605
  %3638 = select i1 %3635, float %3634, float 0.000000e+00
  %3639 = fadd fast float %3638, %3606
  %3640 = add nuw nsw i32 %3607, 1
  %3641 = icmp eq i32 %3640, 8
  br i1 %3641, label %3642, label %3604

; <label>:3642                                    ; preds = %3604
  %3643 = fdiv fast float 1.000000e+00, %3637
  %3644 = fmul fast float %3643, %3639
  %3645 = fdiv fast float 1.000000e+00, %3595
  %3646 = fmul fast float %3644, %3645
  %3647 = call float @dx.op.unary.f32(i32 7, float %3646)  ; Saturate(value)
  %3648 = call float @dx.op.binary.f32(i32 35, float %3647, float 0.000000e+00)  ; FMax(a,b)
  %3649 = fmul fast float %3637, 1.250000e-01
  %3650 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3651 = fmul fast float %3650, 2.000000e+00
  %3652 = fadd fast float %3651, -1.000000e+00
  %3653 = fcmp fast ogt float %3652, 0.000000e+00
  %3654 = fcmp fast olt float %3652, 0.000000e+00
  %3655 = zext i1 %3653 to i32
  %3656 = zext i1 %3654 to i32
  %3657 = sub nsw i32 %3655, %3656
  %3658 = sitofp i32 %3657 to float
  %3659 = fmul fast float %3658, %3652
  %3660 = fsub fast float 1.000000e+00, %3659
  %3661 = fmul fast float %3660, %3660
  %3662 = fmul fast float %3661, %3660
  %3663 = fsub fast float %3660, %3662
  %3664 = fmul fast float %3663, %3648
  %3665 = fsub fast float 1.000000e+00, %3662
  %3666 = fsub fast float %3665, %3664
  %3667 = fmul fast float %3658, 5.000000e-01
  %3668 = fmul fast float %3667, %3666
  %3669 = fsub fast float -5.000000e-01, %3668
  %3670 = fmul fast float %3669, %3503
  %3671 = fadd fast float %3670, 1.000000e+00
  %3672 = fmul fast float %3671, %3515
  br label %3673

; <label>:3673                                    ; preds = %3642, %3527
  %3674 = phi float [ %3672, %3642 ], [ %3515, %3527 ]
  %3675 = call float @dx.op.binary.f32(i32 36, float %3674, float %3674)  ; FMin(a,b)
  %3676 = call float @dx.op.binary.f32(i32 36, float %3674, float %3675)  ; FMin(a,b)
  %3677 = fcmp fast ogt float %3676, 0.000000e+00
  br i1 %3677, label %3678, label %3519, !dx.controlflow.hints !132

; <label>:3678                                    ; preds = %3673
  %3679 = fmul fast float %3674, %3437
  %3680 = fmul fast float %3674, %3438
  %3681 = fmul fast float %3674, %3439
  %3682 = fsub fast float %3453, %447
  %3683 = fsub fast float %3454, %448
  %3684 = fsub fast float %3455, %449
  %3685 = call float @dx.op.dot3.f32(i32 55, float %3682, float %3683, float %3684, float %3682, float %3683, float %3684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3686 = call float @dx.op.unary.f32(i32 25, float %3685)  ; Rsqrt(value)
  %3687 = fmul fast float %3686, %3682
  %3688 = fmul fast float %3686, %3683
  %3689 = fmul fast float %3686, %3684
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3453, float %3454, float %3455, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = call float @dx.op.dot3.f32(i32 55, float %450, float %451, float %452, float %3687, float %3688, float %3689)  ; Dot3(ax,ay,az,bx,by,bz)
  %3692 = call float @dx.op.unary.f32(i32 7, float %3690)  ; Saturate(value)
  %3693 = fmul fast float %3692, %3460
  %3694 = fmul fast float %3692, %3692
  %3695 = fmul fast float %3694, 0x47DE623840000000
  %3696 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  %3697 = fmul fast float %3693, %3696
  %3698 = bitcast float %3450 to i32
  %3699 = ashr i32 %3698, 1
  %3700 = sub nsw i32 1597463007, %3699
  %3701 = bitcast i32 %3700 to float
  %3702 = fmul fast float %3701, %3447
  %3703 = fmul fast float %3701, %3448
  %3704 = fmul fast float %3701, %3449
  %3705 = fsub fast float %3702, %447
  %3706 = fsub fast float %3703, %448
  %3707 = fsub fast float %3704, %449
  %3708 = call float @dx.op.dot3.f32(i32 55, float %3705, float %3706, float %3707, float %3705, float %3706, float %3707)  ; Dot3(ax,ay,az,bx,by,bz)
  %3709 = call float @dx.op.unary.f32(i32 25, float %3708)  ; Rsqrt(value)
  %3710 = fmul fast float %3705, %3709
  %3711 = fmul fast float %3706, %3709
  %3712 = fmul fast float %3707, %3709
  %3713 = call float @dx.op.dot3.f32(i32 55, float %336, float %337, float %338, float %3710, float %3711, float %3712)  ; Dot3(ax,ay,az,bx,by,bz)
  %3714 = fmul fast float %3713, %3713
  %3715 = call float @dx.op.unary.f32(i32 6, float %3690)  ; FAbs(value)
  %3716 = fsub fast float 1.000000e+00, %473
  %3717 = fmul fast float %455, %455
  %3718 = fmul fast float %3717, %3716
  %3719 = fadd fast float %3718, %473
  %3720 = bitcast float %3719 to i32
  %3721 = ashr i32 %3720, 1
  %3722 = add nsw i32 %3721, 532487669
  %3723 = bitcast i32 %3722 to float
  %3724 = fadd fast float %3723, %455
  %3725 = fmul fast float %473, %3714
  %3726 = fsub fast float 1.000000e+00, %3714
  %3727 = fadd fast float %3726, %3725
  %3728 = fmul fast float %3715, %3715
  %3729 = fmul fast float %3728, %3716
  %3730 = fadd fast float %3729, %473
  %3731 = bitcast float %3730 to i32
  %3732 = ashr i32 %3731, 1
  %3733 = add nsw i32 %3732, 532487669
  %3734 = bitcast i32 %3733 to float
  %3735 = fadd fast float %3734, %3715
  %3736 = fmul fast float %3727, %3727
  %3737 = fmul fast float %3736, %3724
  %3738 = fmul fast float %3737, %3735
  %3739 = fdiv fast float 1.000000e+00, %3738
  %3740 = bitcast float %473 to i32
  %3741 = sitofp i32 %3740 to float
  %3742 = fmul fast float %3741, 0x3FE7F73180000000
  %3743 = fadd fast float %3742, 0x41AFE27C40000000
  %3744 = fptosi float %3743 to i32
  %3745 = bitcast i32 %3744 to float
  %3746 = fmul fast float %3416, 0x3FD80E9D60000000
  %3747 = fmul fast float %3746, %3701
  %3748 = fadd fast float %3745, %3747
  %3749 = bitcast float %3748 to i32
  %3750 = sub nsw i32 2129859010, %3749
  %3751 = bitcast i32 %3750 to float
  %3752 = fmul fast float %473, %3739
  %3753 = fmul fast float %3752, %3745
  %3754 = fmul fast float %3753, %3751
  %3755 = call float @dx.op.unary.f32(i32 6, float %3691)  ; FAbs(value)
  %3756 = fsub fast float 1.000000e+00, %3755
  %3757 = bitcast float %3756 to i32
  %3758 = sitofp i32 %3757 to float
  %3759 = fmul fast float %3758, 5.000000e+00
  %3760 = fadd fast float %3759, 0xC1EFBF8940000000
  %3761 = fptosi float %3760 to i32
  %3762 = bitcast i32 %3761 to float
  %3763 = fsub fast float 1.000000e+00, %435
  %3764 = fsub fast float 1.000000e+00, %436
  %3765 = fsub fast float 1.000000e+00, %453
  %3766 = fmul fast float %3762, %3763
  %3767 = fmul fast float %3762, %3764
  %3768 = fmul fast float %3762, %3765
  %3769 = fadd fast float %3766, %435
  %3770 = fadd fast float %3767, %436
  %3771 = fadd fast float %3768, %453
  %3772 = fmul fast float %3690, 9.843750e-01
  %3773 = fadd fast float %3772, 7.812500e-03
  %3774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %3773, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 2
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 3
  %3777 = fmul fast float %3775, %435
  %3778 = fmul fast float %3775, %436
  %3779 = fmul fast float %3775, %453
  %3780 = fadd fast float %3777, %3776
  %3781 = fadd fast float %3778, %3776
  %3782 = fadd fast float %3779, %3776
  %3783 = call float @dx.op.binary.f32(i32 35, float %3781, float %3782)  ; FMax(a,b)
  %3784 = call float @dx.op.binary.f32(i32 35, float %3780, float %3783)  ; FMax(a,b)
  %3785 = fsub fast float 1.000000e+00, %3784
  %3786 = fsub fast float -0.000000e+00, %336
  %3787 = fsub fast float -0.000000e+00, %337
  %3788 = fsub fast float -0.000000e+00, %338
  %3789 = call float @dx.op.dot3.f32(i32 55, float %3453, float %3454, float %3455, float %3786, float %3787, float %3788)  ; Dot3(ax,ay,az,bx,by,bz)
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3791 = fmul fast float %3790, %3460
  %3792 = fmul fast float %3790, 9.843750e-01
  %3793 = fadd fast float %3792, 7.812500e-03
  %3794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %3793, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3795 = extractvalue %dx.types.ResRet.f32 %3794, 2
  %3796 = extractvalue %dx.types.ResRet.f32 %3794, 3
  %3797 = fmul fast float %3795, %435
  %3798 = fmul fast float %3795, %436
  %3799 = fmul fast float %3795, %453
  %3800 = fadd fast float %3797, %3796
  %3801 = fadd fast float %3798, %3796
  %3802 = fadd fast float %3799, %3796
  %3803 = call float @dx.op.binary.f32(i32 35, float %3801, float %3802)  ; FMax(a,b)
  %3804 = call float @dx.op.binary.f32(i32 35, float %3800, float %3803)  ; FMax(a,b)
  %3805 = fsub fast float 1.000000e+00, %3804
  %3806 = fmul fast float %3791, %3805
  %3807 = fmul fast float %3806, %355
  %3808 = fmul fast float %3806, %356
  %3809 = fmul fast float %3806, %357
  %3810 = fmul fast float %3785, %3697
  %3811 = fadd fast float %3807, %3810
  %3812 = fadd fast float %3808, %3810
  %3813 = fadd fast float %3809, %3810
  %3814 = fmul fast float %3811, %3679
  %3815 = fmul fast float %3812, %3680
  %3816 = fmul fast float %3813, %3681
  %3817 = fadd fast float %3814, %3390
  %3818 = fadd fast float %3815, %3391
  %3819 = fadd fast float %3816, %3392
  %3820 = fmul fast float %3697, %3679
  %3821 = fmul fast float %3820, %3769
  %3822 = fmul fast float %3821, %3754
  %3823 = fmul fast float %3697, %3680
  %3824 = fmul fast float %3823, %3770
  %3825 = fmul fast float %3824, %3754
  %3826 = fmul fast float %3697, %3681
  %3827 = fmul fast float %3826, %3771
  %3828 = fmul fast float %3827, %3754
  %3829 = fadd fast float %3822, %3387
  %3830 = fadd fast float %3825, %3388
  %3831 = fadd fast float %3828, %3389
  br label %3519

; <label>:3832                                    ; preds = %3519
  br label %3833

; <label>:3833                                    ; preds = %3832, %3353
  %3834 = phi float [ %3355, %3353 ], [ %3520, %3832 ]
  %3835 = phi float [ %3356, %3353 ], [ %3521, %3832 ]
  %3836 = phi float [ %3357, %3353 ], [ %3522, %3832 ]
  %3837 = phi float [ %3358, %3353 ], [ %3523, %3832 ]
  %3838 = phi float [ %3359, %3353 ], [ %3524, %3832 ]
  %3839 = phi float [ %3360, %3353 ], [ %3525, %3832 ]
  %3840 = add i32 %3354, 1
  %3841 = icmp ugt i32 %3840, %3350
  br i1 %3841, label %3842, label %3353

; <label>:3842                                    ; preds = %3833
  br label %3843

; <label>:3843                                    ; preds = %3842, %3303, %3293
  %3844 = phi float [ %3294, %3293 ], [ %3294, %3303 ], [ %3834, %3842 ]
  %3845 = phi float [ %3295, %3293 ], [ %3295, %3303 ], [ %3835, %3842 ]
  %3846 = phi float [ %3296, %3293 ], [ %3296, %3303 ], [ %3836, %3842 ]
  %3847 = phi float [ %3297, %3293 ], [ %3297, %3303 ], [ %3837, %3842 ]
  %3848 = phi float [ %3298, %3293 ], [ %3298, %3303 ], [ %3838, %3842 ]
  %3849 = phi float [ %3299, %3293 ], [ %3299, %3303 ], [ %3839, %3842 ]
  %3850 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %3851 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %3852 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %3853 = fmul fast float %3850, %3847
  %3854 = fmul fast float %3851, %3848
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 0
  br i1 %141, label %3857, label %3881

; <label>:3857                                    ; preds = %3843
  %3858 = fadd fast float %3849, %443
  %3859 = fmul fast float %3858, %441
  %3860 = fsub fast float 1.000000e+00, %441
  %3861 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 3
  %3864 = fmul fast float %3863, %3861
  %3865 = fsub fast float 1.000000e+00, %455
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = fmul fast float %3867, %3865
  %3869 = fsub fast float 1.000000e+00, %358
  %3870 = extractvalue %dx.types.CBufRet.f32 %3866, 2
  %3871 = fmul fast float %3870, %3869
  %3872 = fadd fast float %3854, %3853
  %3873 = extractvalue %dx.types.CBufRet.f32 %3862, 1
  %3874 = fadd fast float %3864, %3859
  %3875 = fsub fast float %3874, %3868
  %3876 = fsub fast float %3875, %3871
  %3877 = fsub fast float %3876, %3873
  %3878 = extractvalue %dx.types.CBufRet.f32 %3862, 2
  %3879 = fmul fast float %3877, %3878
  %3880 = call float @dx.op.unary.f32(i32 7, float %3879)  ; Saturate(value)
  br label %3885

; <label>:3881                                    ; preds = %3843
  %3882 = fmul fast float %3852, %3849
  %3883 = fmul fast float %3856, %3854
  %3884 = fmul fast float %3882, %3856
  br label %3885

; <label>:3885                                    ; preds = %3881, %3857
  %3886 = phi float [ %3872, %3857 ], [ %3853, %3881 ]
  %3887 = phi float [ %3880, %3857 ], [ %3883, %3881 ]
  %3888 = phi float [ 1.000000e+00, %3857 ], [ %3884, %3881 ]
  %3889 = fmul float %3856, %3886
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 0
  %3892 = fmul fast float %3891, %3845
  %3893 = fmul fast float %3891, %3846
  %3894 = fadd fast float %3845, %3844
  %3895 = select i1 %141, float %3894, float %3844
  %3896 = fmul float %3895, %3891
  %3897 = select i1 %141, float 0.000000e+00, float %3892
  %3898 = select i1 %141, float 0.000000e+00, float %3893
  %3899 = fmul fast float %3889, %3850
  %3900 = fmul fast float %3887, %3851
  %3901 = fmul fast float %3888, %3852
  %3902 = fadd fast float %3896, %3899
  %3903 = fadd fast float %3897, %3900
  %3904 = fadd fast float %3898, %3901
  %3905 = select i1 %141, float %3887, float %3903
  %3906 = select i1 %141, float %3888, float %3904
  %3907 = call float @dx.op.binary.f32(i32 36, float %3902, float 3.225500e+04)  ; FMin(a,b)
  %3908 = call float @dx.op.binary.f32(i32 36, float %3905, float 3.225500e+04)  ; FMin(a,b)
  %3909 = call float @dx.op.binary.f32(i32 36, float %3906, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3907)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3908)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3909)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.viewIdState = !{!51}
!dx.entryPoints = !{!52}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !41, !44}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40}
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
!23 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!24 = !{i32 16, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !33}
!33 = !{i32 0, i32 14}
!34 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!35 = !{i32 26, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!41 = !{!42, !43}
!42 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!43 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 256, null}
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!46 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!47 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!48 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!49 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!50 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!51 = !{[59 x i32] [i32 57, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7]}
!52 = !{void ()* @ps_main, !"ps_main", !53, !4, !84}
!53 = !{!54, !82, null}
!54 = !{!55, !58, !59, !60, !62, !63, !65, !68, !70, !72, !74, !75, !76, !77, !78, !80, !81}
!55 = !{i32 0, !"SV_Position", i8 9, i8 3, !56, i8 4, i32 1, i8 4, i32 0, i8 0, !57}
!56 = !{i32 0}
!57 = !{i32 3, i32 11}
!58 = !{i32 1, !"COLOR", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!59 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 2, i8 0, null}
!60 = !{i32 3, !"NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 3, i8 0, !61}
!61 = !{i32 3, i32 7}
!62 = !{i32 4, !"TANGENT", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!63 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !56, i8 2, i32 1, i8 1, i32 3, i8 3, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !66, i8 1, i32 1, i8 4, i32 5, i8 0, !67}
!66 = !{i32 1}
!67 = !{i32 3, i32 3}
!68 = !{i32 7, !"CARD_TILE2_AND_TILE", i8 9, i8 0, !69, i8 1, i32 1, i8 4, i32 6, i8 0, null}
!69 = !{i32 3}
!70 = !{i32 8, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !66, i8 4, i32 1, i8 4, i32 7, i8 0, !71}
!71 = !{i32 3, i32 15}
!72 = !{i32 9, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !73, i8 4, i32 1, i8 4, i32 8, i8 0, !71}
!73 = !{i32 2}
!74 = !{i32 10, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !69, i8 4, i32 1, i8 4, i32 9, i8 0, !71}
!75 = !{i32 11, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !56, i8 4, i32 1, i8 4, i32 10, i8 0, !61}
!76 = !{i32 12, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 2, i32 11, i8 0, null}
!77 = !{i32 13, !"SCEONDARY_NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 12, i8 0, null}
!78 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !56, i8 1, i32 1, i8 4, i32 13, i8 0, !79}
!79 = !{i32 3, i32 9}
!80 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !56, i8 1, i32 1, i8 1, i32 14, i8 0, !64}
!81 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !56, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!84 = !{i32 0, i64 24}
!85 = !{!86, !88, !89, !90, !91, !93, !94, !95}
!86 = distinct !{!86, !87, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outTexCoords"}
!87 = distinct !{!87, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z"}
!88 = distinct !{!88, !87, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outNormal"}
!89 = distinct !{!89, !87, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outCoverage"}
!90 = distinct !{!90, !87, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outMipLevel"}
!91 = distinct !{!91, !92, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outTexCoords"}
!92 = distinct !{!92, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z"}
!93 = distinct !{!93, !92, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outNormal"}
!94 = distinct !{!94, !92, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outMipLevel"}
!95 = distinct !{!95, !92, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outCoverage"}
!96 = !{!97, !97, i64 0}
!97 = !{!"float", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !98, i64 0}
!112 = !{!113, !115, !117, !119}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !104}
!123 = distinct !{!123, !104}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}

