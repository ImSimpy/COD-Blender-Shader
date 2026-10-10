;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xyzw        2     NONE   float      w
; NORMAL                   0   xyz         3     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float       
; CARD_BARY_AND_TILE       1   xyzw        5     NONE   float       
; CARD_TEXCOORDS_AND_RAY     1   xyzw        6     NONE   float   xyzw
; CARD_DEPTH_AND_SCALE     0   xyzw        7     NONE   float   x   
; LGV_POSITION_INDEX       0   xyzw        8     NONE   float      w
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float       
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float       
; PACKED_TRI_DATA          0   xyzw       11     NONE    uint   x  w
; SV_IsFrontFace           0   x          12    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 7f2d3e872f0754a835241e52ff66cccb
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
; CARD_TEXCOORDS_AND_RAY     1          noperspective       
; CARD_DEPTH_AND_SCALE     0          noperspective       
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
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture    byte         r/o      T2     t31,space1     1
;                                   texture    byte         r/o      T3     t61,space1     1
;                                   texture    byte         r/o      T4     t62,space1     1
;                                   texture    byte         r/o      T5     t63,space1     1
;                                   texture     f32          3d      T6     t21,space2     1
;                                   texture     f32          3d      T7     t22,space2     1
;                                   texture     f32          2d      T8     t33,space2     1
;                                   texture     f32     2darray      T9     t16,space2     1
;                                   texture     f32          3d     T10     t15,space2     1
;                                   texture     f32          2d     T11     t14,space2     1
;                                   texture     f32          2d     T12     t13,space2     1
;                                   texture     u32          2d     T13     t17,space2     1
;                                   texture     f32          3d     T14     t18,space2     1
;                                   texture     f32          2d     T15     t69,space2     1
;                                   texture     f32          2d     T16     t37,space2     1
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
; Number of inputs: 49, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 35, 44, 47, 48 }
;   output 1 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 35, 44, 47, 48 }
;   output 2 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 35, 44, 47, 48 }
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = alloca [4 x i32], align 4
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = icmp ne i32 %40, 0
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = alloca [3 x float], align 4
  %59 = alloca [3 x float], align 4
  %60 = alloca [3 x float], align 4
  %61 = alloca [3 x float], align 4
  %62 = alloca [12 x float], align 4
  %63 = alloca [12 x float], align 4
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = fmul fast float %65, %55
  %67 = fmul fast float %65, %56
  %68 = select i1 %41, float 1.000000e+00, float -1.000000e+00
  %69 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %70 = bitcast float %69 to i32
  %71 = ashr i32 %70, 1
  %72 = sub nsw i32 1597250115, %71
  %73 = bitcast i32 %72 to float
  %74 = fmul fast float %51, %68
  %75 = fmul fast float %74, %73
  %76 = fmul fast float %52, %68
  %77 = fmul fast float %76, %73
  %78 = fmul fast float %53, %68
  %79 = fmul fast float %78, %73
  %80 = lshr i32 %43, 8
  %81 = mul nuw nsw i32 %80, 24
  %82 = add nuw nsw i32 %81, 12
  %83 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %82, i32 undef)  ; BufferLoad(srv,index,wot)
  %84 = extractvalue %dx.types.ResRet.i32 %83, 0
  %85 = extractvalue %dx.types.ResRet.i32 %83, 1
  %86 = and i32 %84, 65535
  %87 = uitofp i32 %86 to float
  %88 = lshr i32 %84, 16
  %89 = uitofp i32 %88 to float
  %90 = and i32 %85, 65535
  %91 = uitofp i32 %90 to float
  %92 = lshr i32 %85, 16
  %93 = uitofp i32 %92 to float
  %94 = fmul fast float %87, 0x3F00001000000000
  %95 = fmul fast float %89, 0x3F00001000000000
  %96 = fmul fast float %91, 0x3F00001000000000
  %97 = fmul fast float %93, 0x3F00001000000000
  %98 = fadd fast float %94, -1.000000e+00
  %99 = fadd fast float %95, -1.000000e+00
  %100 = fadd fast float %96, -1.000000e+00
  %101 = fadd fast float %97, -1.000000e+00
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.i32 %103, 3
  %105 = and i32 %104, 3
  %106 = icmp ne i32 %105, 0
  %107 = and i32 %104, 4
  %108 = icmp ne i32 %107, 0
  %109 = and i1 %106, %108
  br i1 %109, label %110, label %121

; <label>:110                                     ; preds = %0
  %111 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %112 = fmul fast float %111, %67
  %113 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %114 = fmul fast float %113, %66
  %115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %114, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fsub fast float 1.000000e+00, %116
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = fcmp fast olt float %117, %119
  br label %124

; <label>:121                                     ; preds = %0
  %122 = icmp eq i32 %107, 0
  %123 = and i1 %106, %122
  br label %124

; <label>:124                                     ; preds = %121, %110
  %125 = phi i1 [ %120, %110 ], [ %123, %121 ]
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %128 = fmul fast float %127, 0x3FE3C6EF40000000
  %129 = frem fast float %66, 2.560000e+02
  %130 = frem fast float %67, 2.560000e+02
  %131 = fptoui float %129 to i32
  %132 = fptoui float %130 to i32
  %133 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %131, i32 %132, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = fadd fast float %134, %128
  %136 = call float @dx.op.unary.f32(i32 22, float %135)  ; Frc(value)
  %137 = add i32 %42, 60
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = add i32 %139, 0
  %141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %142 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %141, i32 0)  ; GetDimensions(handle,mipLevel)
  %143 = extractvalue %dx.types.Dimensions %142, 0
  %144 = sitofp i32 %143 to float
  %145 = extractvalue %dx.types.Dimensions %142, 1
  %146 = sitofp i32 %145 to float
  %147 = fmul fast float %89, 0x3F10001000000000
  %148 = fadd fast float %147, -2.000000e+00
  %149 = fmul fast float %148, %99
  %150 = fsub fast float 1.000000e+00, %149
  %151 = fmul fast float %91, 0x3F10001000000000
  %152 = fadd fast float %151, -2.000000e+00
  %153 = fmul fast float %152, %100
  %154 = fsub fast float %150, %153
  %155 = fmul fast float %87, 0x3F10001000000000
  %156 = fadd fast float %155, -2.000000e+00
  %157 = fmul fast float %156, %99
  %158 = fmul fast float %152, %101
  %159 = fsub fast float %157, %158
  %160 = fmul fast float %156, %100
  %161 = fmul fast float %148, %101
  %162 = fadd fast float %160, %161
  %163 = fadd fast float %157, %158
  %164 = fmul fast float %156, %98
  %165 = fsub fast float 1.000000e+00, %164
  %166 = fsub fast float %165, %153
  %167 = fmul fast float %148, %100
  %168 = fmul fast float %156, %101
  %169 = fsub fast float %167, %168
  %170 = fsub fast float %160, %161
  %171 = fadd fast float %167, %168
  %172 = fsub fast float %165, %149
  %173 = add i32 %42, 24
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 2
  %176 = bitcast i32 %175 to float
  %177 = fdiv fast float 1.000000e+00, %45
  %178 = fmul fast float %177, %46
  %179 = fmul fast float %177, %47
  %180 = fmul fast float %178, %144
  %181 = call float @dx.op.unary.f32(i32 83, float %180)  ; DerivCoarseX(value)
  %182 = call float @dx.op.unary.f32(i32 84, float %180)  ; DerivCoarseY(value)
  %183 = fmul fast float %179, %146
  %184 = call float @dx.op.unary.f32(i32 83, float %183)  ; DerivCoarseX(value)
  %185 = call float @dx.op.unary.f32(i32 84, float %183)  ; DerivCoarseY(value)
  %186 = fmul fast float %184, %184
  %187 = fmul fast float %185, %185
  %188 = fadd fast float %187, %186
  %189 = fmul fast float %184, %181
  %190 = fmul fast float %185, %182
  %191 = fadd fast float %190, %189
  %192 = fmul fast float %181, %181
  %193 = fmul fast float %182, %182
  %194 = fadd fast float %193, %192
  %195 = fmul fast float %188, %194
  %196 = fmul fast float %191, %191
  %197 = fsub fast float %195, %196
  %198 = bitcast float %197 to i32
  %199 = fadd fast float %188, %194
  %200 = bitcast float %199 to i32
  %201 = sub i32 8388608, %200
  %202 = add i32 %201, %198
  %203 = ashr i32 %202, 24
  %204 = sitofp i32 %203 to float
  %205 = add i32 %42, 72
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = add i32 %207, 0
  %209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %209, %dx.types.Handle %35, float %178, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fmul fast float %211, 2.000000e+00
  %213 = fadd fast float %212, -1.000000e+00
  %214 = fmul fast float %213, %176
  %215 = fmul fast float %48, %68
  %216 = fmul fast float %215, %177
  %217 = fmul fast float %216, %214
  %218 = fmul fast float %49, %68
  %219 = fmul fast float %218, %177
  %220 = fmul fast float %219, %214
  %221 = fadd fast float %217, %178
  %222 = fadd fast float %220, %179
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = add i32 %224, 0
  %226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %226, %dx.types.Handle %35, float %221, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = extractvalue %dx.types.ResRet.f32 %227, 1
  %230 = extractvalue %dx.types.ResRet.f32 %227, 2
  %231 = fmul fast float %228, 2.000000e+00
  %232 = fmul fast float %229, 2.000000e+00
  %233 = fmul fast float %230, 2.000000e+00
  %234 = fadd fast float %231, -1.000000e+00
  %235 = fadd fast float %232, -1.000000e+00
  %236 = fadd fast float %233, -1.000000e+00
  %237 = fmul fast float %234, %154
  %238 = call float @dx.op.tertiary.f32(i32 46, float %235, float %159, float %237)  ; FMad(a,b,c)
  %239 = call float @dx.op.tertiary.f32(i32 46, float %236, float %162, float %238)  ; FMad(a,b,c)
  %240 = fmul fast float %234, %163
  %241 = call float @dx.op.tertiary.f32(i32 46, float %235, float %166, float %240)  ; FMad(a,b,c)
  %242 = call float @dx.op.tertiary.f32(i32 46, float %236, float %169, float %241)  ; FMad(a,b,c)
  %243 = fmul fast float %234, %170
  %244 = call float @dx.op.tertiary.f32(i32 46, float %235, float %171, float %243)  ; FMad(a,b,c)
  %245 = call float @dx.op.tertiary.f32(i32 46, float %236, float %172, float %244)  ; FMad(a,b,c)
  br i1 %41, label %255, label %246

; <label>:246                                     ; preds = %124
  %247 = call float @dx.op.dot3.f32(i32 55, float %75, float %77, float %79, float %239, float %242, float %245)  ; Dot3(ax,ay,az,bx,by,bz)
  %248 = fmul fast float %247, 2.000000e+00
  %249 = fmul fast float %248, %75
  %250 = fmul fast float %248, %77
  %251 = fmul fast float %248, %79
  %252 = fsub fast float %239, %249
  %253 = fsub fast float %242, %250
  %254 = fsub fast float %245, %251
  br label %255

; <label>:255                                     ; preds = %246, %124
  %256 = phi float [ %252, %246 ], [ %239, %124 ]
  %257 = phi float [ %253, %246 ], [ %242, %124 ]
  %258 = phi float [ %254, %246 ], [ %245, %124 ]
  %259 = add i32 %42, 56
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = add i32 %261, 0
  %263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %263, %dx.types.Handle %35, float %221, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = extractvalue %dx.types.ResRet.f32 %264, 3
  %269 = add i32 %42, 64
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = add i32 %271, 0
  %273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %273, %dx.types.Handle %35, float %221, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = add i32 %42, 68
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = add i32 %281, 0
  %283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %283, %dx.types.Handle %35, float %221, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = add i32 %287, 0
  %289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %289, %dx.types.Handle %35, float %221, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = fadd fast float %50, 1.000000e+00
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 2
  %295 = bitcast i32 %294 to float
  %296 = fmul fast float %291, 2.000000e+00
  %297 = fsub fast float %292, %296
  %298 = fmul fast float %295, %297
  %299 = fadd fast float %298, %57
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 3
  %303 = fmul fast float %66, 2.000000e+00
  %304 = fmul fast float %303, %301
  %305 = fmul fast float %67, 2.000000e+00
  %306 = fmul fast float %305, %302
  %307 = fsub fast float 1.000000e+00, %304
  %308 = fsub fast float 1.000000e+00, %306
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = fmul fast float %307, %310
  %314 = fmul fast float %307, %311
  %315 = fmul fast float %307, %312
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %320 = fmul fast float %308, %317
  %321 = fmul fast float %308, %318
  %322 = fmul fast float %308, %319
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %327 = fadd fast float %320, %324
  %328 = fadd fast float %327, %313
  %329 = fadd fast float %321, %325
  %330 = fadd fast float %329, %314
  %331 = fadd fast float %322, %326
  %332 = fadd fast float %331, %315
  %333 = fmul fast float %328, %299
  %334 = fmul fast float %330, %299
  %335 = fmul fast float %332, %299
  %336 = call float @dx.op.unary.f32(i32 26, float %44)  ; Round_ne(value)
  %337 = fptoui float %336 to i32
  %338 = call float @dx.op.unary.f32(i32 26, float %54)  ; Round_ne(value)
  %339 = fptoui float %338 to i32
  %340 = shl i32 %339, 3
  %341 = or i32 %340, 4
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 16777215
  %345 = add i32 %344, %337
  %346 = shl i32 %345, 6
  %347 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 0
  %348 = getelementptr [3 x float], [3 x float]* %59, i32 0, i32 0
  %349 = getelementptr [3 x float], [3 x float]* %60, i32 0, i32 0
  %350 = getelementptr [3 x float], [3 x float]* %61, i32 0, i32 0
  %351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = extractvalue %dx.types.ResRet.f32 %351, 1
  %354 = extractvalue %dx.types.ResRet.f32 %351, 2
  %355 = extractvalue %dx.types.ResRet.f32 %351, 3
  store float %352, float* %347, align 4
  store float %353, float* %348, align 4
  store float %354, float* %349, align 4
  store float %355, float* %350, align 4
  %356 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 1
  %357 = getelementptr [3 x float], [3 x float]* %59, i32 0, i32 1
  %358 = getelementptr [3 x float], [3 x float]* %60, i32 0, i32 1
  %359 = getelementptr [3 x float], [3 x float]* %61, i32 0, i32 1
  %360 = or i32 %346, 16
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = extractvalue %dx.types.ResRet.f32 %361, 3
  store float %362, float* %356, align 4
  store float %363, float* %357, align 4
  store float %364, float* %358, align 4
  store float %365, float* %359, align 4
  %366 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 2
  %367 = getelementptr [3 x float], [3 x float]* %59, i32 0, i32 2
  %368 = getelementptr [3 x float], [3 x float]* %60, i32 0, i32 2
  %369 = getelementptr [3 x float], [3 x float]* %61, i32 0, i32 2
  %370 = or i32 %346, 32
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  store float %372, float* %366, align 4
  store float %373, float* %367, align 4
  store float %374, float* %368, align 4
  store float %375, float* %369, align 4
  %376 = or i32 %346, 48
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.i32 %379, 1
  %381 = icmp eq i32 %380, 0
  %382 = and i32 %378, 4
  %383 = icmp ne i32 %382, 0
  %384 = and i1 %381, %383
  br i1 %384, label %385, label %424

; <label>:385                                     ; preds = %255
  %386 = and i32 %378, 3
  %387 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 %386
  %388 = getelementptr [3 x float], [3 x float]* %59, i32 0, i32 %386
  %389 = getelementptr [3 x float], [3 x float]* %60, i32 0, i32 %386
  %390 = getelementptr [3 x float], [3 x float]* %61, i32 0, i32 %386
  %391 = load float, float* %387, align 4
  %392 = load float, float* %388, align 4
  %393 = load float, float* %389, align 4
  %394 = load float, float* %390, align 4
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = call float @dx.op.dot3.f32(i32 55, float %391, float %392, float %393, float %396, float %397, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = fadd fast float %399, %394
  %401 = fcmp fast ogt float %400, 1.000000e+00
  br i1 %401, label %402, label %407

; <label>:402                                     ; preds = %385
  %403 = fadd fast float %400, -1.000000e+00
  %404 = fmul fast float %403, 4.000000e+00
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fmul fast float %405, 4.000000e+00
  br label %413

; <label>:407                                     ; preds = %385
  %408 = fcmp fast olt float %400, 0.000000e+00
  br i1 %408, label %409, label %413

; <label>:409                                     ; preds = %407
  %410 = fmul fast float %400, -4.000000e+00
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = fmul fast float %411, -4.000000e+00
  br label %413

; <label>:413                                     ; preds = %409, %407, %402
  %414 = phi float [ %406, %402 ], [ %412, %409 ], [ 0.000000e+00, %407 ]
  %415 = icmp eq i32 %386, 0
  %416 = select i1 %415, float %414, float 0.000000e+00
  %417 = fadd fast float %355, %416
  store float %417, float* %350, align 4, !noalias !80
  %418 = icmp eq i32 %386, 1
  %419 = select i1 %418, float %414, float 0.000000e+00
  %420 = fadd fast float %365, %419
  store float %420, float* %359, align 4, !noalias !80
  %421 = icmp eq i32 %386, 2
  %422 = select i1 %421, float %414, float 0.000000e+00
  %423 = fadd fast float %375, %422
  store float %423, float* %369, align 4, !noalias !80
  br label %424

; <label>:424                                     ; preds = %413, %255
  %425 = phi float [ %375, %255 ], [ %423, %413 ]
  %426 = phi float [ %365, %255 ], [ %420, %413 ]
  %427 = phi float [ %355, %255 ], [ %417, %413 ]
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %432 = fadd fast float %429, %333
  %433 = fadd fast float %430, %334
  %434 = fadd fast float %431, %335
  %435 = call float @dx.op.dot4.f32(i32 56, float %352, float %353, float %354, float %427, float %432, float %433, float %434, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %436 = call float @dx.op.dot4.f32(i32 56, float %362, float %363, float %364, float %426, float %432, float %433, float %434, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %437 = call float @dx.op.dot4.f32(i32 56, float %372, float %373, float %374, float %425, float %432, float %433, float %434, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %438 = fadd fast float %285, 0xBFB99999A0000000
  %439 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %440 = fmul fast float %439, 0x3FF1C71C80000000
  %441 = call float @dx.op.binary.f32(i32 36, float %285, float 0x3FB99999A0000000)  ; FMin(a,b)
  %442 = fsub fast float 1.000000e+00, %440
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %444 = fmul fast float %443, %265
  %445 = fmul fast float %443, %266
  %446 = fmul fast float %443, %267
  %447 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %448 = call float @dx.op.unary.f32(i32 7, float %445)  ; Saturate(value)
  %449 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %450 = fmul fast float %440, %265
  %451 = fmul fast float %440, %266
  %452 = fmul fast float %440, %267
  %453 = fadd fast float %450, %441
  %454 = fadd fast float %451, %441
  %455 = fadd fast float %452, %441
  %456 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %457 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %458 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  %459 = call float @dx.op.dot3.f32(i32 55, float %447, float %448, float %449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = fmul fast float %459, 1.875000e-01
  %461 = fadd fast float %460, 0x3FE647AE20000000
  %462 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %465 = fsub fast float -0.000000e+00, %335
  %466 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %467 = call float @dx.op.unary.f32(i32 25, float %466)  ; Rsqrt(value)
  %468 = fmul fast float %467, %333
  %469 = fmul fast float %467, %334
  %470 = fmul fast float %467, %335
  %471 = fsub fast float -0.000000e+00, %468
  %472 = fsub fast float -0.000000e+00, %469
  %473 = fsub fast float -0.000000e+00, %470
  %474 = select i1 %125, float 0.000000e+00, float %458
  %475 = call float @dx.op.dot3.f32(i32 55, float %256, float %257, float %258, float %471, float %472, float %473)  ; Dot3(ax,ay,az,bx,by,bz)
  %476 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %477 = call float @dx.op.dot3.f32(i32 55, float %468, float %469, float %470, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %478 = fmul fast float %477, 2.000000e+00
  %479 = fmul fast float %478, %256
  %480 = fmul fast float %478, %257
  %481 = fmul fast float %478, %258
  %482 = fsub fast float %468, %479
  %483 = fsub fast float %469, %480
  %484 = fsub fast float %470, %481
  %485 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %278)  ; FMin(a,b)
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %489 = fadd fast float %487, %333
  %490 = fadd fast float %488, %334
  %491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.i32 %491, 0
  %493 = icmp eq i32 %492, 1
  br i1 %493, label %494, label %529

; <label>:494                                     ; preds = %424
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 0
  %497 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %498 = fsub fast float %489, %496
  %499 = fsub fast float %490, %497
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.f32 %500, 1
  %503 = fmul fast float %498, %501
  %504 = fmul fast float %499, %502
  %505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = fcmp fast ogt float %506, 0.000000e+00
  %508 = extractvalue %dx.types.CBufRet.i32 %491, 3
  %509 = icmp ne i32 %508, 0
  %510 = and i1 %507, %509
  br i1 %510, label %511, label %529, !dx.controlflow.hints !85

; <label>:511                                     ; preds = %494
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = fsub fast float %489, %513
  %516 = fsub fast float %490, %514
  %517 = fmul fast float %515, %515
  %518 = fmul fast float %516, %516
  %519 = fadd fast float %517, %518
  %520 = uitofp i32 %508 to float
  %521 = fmul fast float %520, %520
  %522 = fcmp fast ogt float %519, %521
  br i1 %522, label %529, label %523

; <label>:523                                     ; preds = %511
  %524 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %525 = fsub fast float %520, %524
  %526 = fmul fast float %525, 0x3F75555560000000
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = call float @dx.op.binary.f32(i32 36, float %527, float %506)  ; FMin(a,b)
  br label %529

; <label>:529                                     ; preds = %523, %511, %494, %424
  %530 = phi float [ 1.000000e+00, %424 ], [ %528, %523 ], [ %506, %494 ], [ 0.000000e+00, %511 ]
  %531 = fcmp fast ogt float %530, 0.000000e+00
  br i1 %531, label %532, label %907, !dx.controlflow.hints !86

; <label>:532                                     ; preds = %529
  %533 = fadd fast float %44, 5.000000e-01
  %534 = fptoui float %533 to i32
  %535 = fadd fast float %54, 5.000000e-01
  %536 = fptoui float %535 to i32
  %537 = shl i32 %536, 3
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = or i32 %537, 4
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 16777215
  %544 = add i32 %543, %534
  %545 = shl i32 %544, 5
  %546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = extractvalue %dx.types.ResRet.f32 %546, 2
  %550 = or i32 %545, 16
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = lshr i32 %542, 24
  %556 = and i32 %555, 3
  %557 = add nuw nsw i32 %556, 3
  %558 = shl i32 1, %557
  %559 = lshr i32 %542, 29
  %560 = lshr i32 %542, 23
  %561 = and i32 %560, 56
  %562 = shl nuw nsw i32 %559, 3
  %563 = lshr i32 %539, 16
  %564 = and i32 %539, 65535
  %565 = uitofp i32 %558 to float
  %566 = fmul fast float %565, 1.562500e-02
  %567 = uitofp i32 %563 to float
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 3
  %570 = fmul fast float %569, %567
  %571 = uitofp i32 %561 to float
  %572 = fmul fast float %571, 1.562500e-02
  %573 = uitofp i32 %562 to float
  %574 = fmul fast float %573, 1.562500e-02
  %575 = uitofp i32 %564 to float
  %576 = fmul fast float %569, %575
  %577 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %578 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %579 = call float @dx.op.unary.f32(i32 7, float %437)  ; Saturate(value)
  %580 = fmul fast float %577, %547
  %581 = fmul fast float %578, %548
  %582 = fmul fast float %579, %549
  %583 = fadd fast float %580, %552
  %584 = fmul fast float %566, %583
  %585 = fadd fast float %584, %572
  %586 = fadd fast float %581, %553
  %587 = fmul fast float %566, %586
  %588 = fadd fast float %587, %574
  %589 = fadd fast float %582, %554
  %590 = fmul fast float %570, %589
  %591 = fadd fast float %590, %576
  %592 = fmul fast float %585, 5.000000e-01
  %593 = fmul fast float %588, 0x3FD5555560000000
  %594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %585, float %588, float %591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = extractvalue %dx.types.ResRet.f32 %594, 1
  %597 = extractvalue %dx.types.ResRet.f32 %594, 2
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 3
  %600 = fmul fast float %599, %595
  %601 = fmul fast float %599, %596
  %602 = fmul fast float %599, %597
  %603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %592, float %593, float %591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = extractvalue %dx.types.ResRet.f32 %603, 3
  %608 = fadd fast float %592, 5.000000e-01
  %609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %608, float %593, float %591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = fadd fast float %593, 0x3FD5555560000000
  %615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %592, float %614, float %591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = extractvalue %dx.types.ResRet.f32 %615, 3
  %620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %608, float %614, float %591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = extractvalue %dx.types.ResRet.f32 %620, 3
  %625 = fadd fast float %593, 0x3FE5555560000000
  %626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %592, float %625, float %591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = extractvalue %dx.types.ResRet.f32 %626, 2
  %630 = extractvalue %dx.types.ResRet.f32 %626, 3
  %631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %608, float %625, float %591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 2
  %635 = extractvalue %dx.types.ResRet.f32 %631, 3
  %636 = fmul fast float %604, 0x400BB67AE0000000
  %637 = fadd fast float %636, 0xBFFBB67AE0000000
  %638 = fmul fast float %637, %600
  %639 = fmul fast float %605, 0x400BB67AE0000000
  %640 = fadd fast float %639, 0xBFFBB67AE0000000
  %641 = fmul fast float %640, %601
  %642 = fmul fast float %606, 0x400BB67AE0000000
  %643 = fadd fast float %642, 0xBFFBB67AE0000000
  %644 = fmul fast float %643, %602
  %645 = fmul fast float %607, 0x4011E377A0000000
  %646 = fadd fast float %645, 0xC001E377A0000000
  %647 = fmul fast float %646, %600
  %648 = fmul fast float %610, 0x4011E377A0000000
  %649 = fadd fast float %648, 0xC001E377A0000000
  %650 = fmul fast float %649, %601
  %651 = fmul fast float %611, 0x4011E377A0000000
  %652 = fadd fast float %651, 0xC001E377A0000000
  %653 = fmul fast float %652, %602
  %654 = fmul fast float %612, 0x400BB67AE0000000
  %655 = fadd fast float %654, 0xBFFBB67AE0000000
  %656 = fmul fast float %655, %600
  %657 = fmul fast float %613, 0x400BB67AE0000000
  %658 = fadd fast float %657, 0xBFFBB67AE0000000
  %659 = fmul fast float %658, %601
  %660 = fmul fast float %616, 0x400BB67AE0000000
  %661 = fadd fast float %660, 0xBFFBB67AE0000000
  %662 = fmul fast float %661, %602
  %663 = fmul fast float %617, 0x400BB67AE0000000
  %664 = fadd fast float %663, 0xBFFBB67AE0000000
  %665 = fmul fast float %664, %600
  %666 = fmul fast float %618, 0x400BB67AE0000000
  %667 = fadd fast float %666, 0xBFFBB67AE0000000
  %668 = fmul fast float %667, %601
  %669 = fmul fast float %619, 0x400BB67AE0000000
  %670 = fadd fast float %669, 0xBFFBB67AE0000000
  %671 = fmul fast float %670, %602
  %672 = fmul fast float %621, 0x400EFBDEC0000000
  %673 = fadd fast float %672, 0xBFFEFBDEC0000000
  %674 = fmul fast float %673, %600
  %675 = fmul fast float %622, 0x400EFBDEC0000000
  %676 = fadd fast float %675, 0xBFFEFBDEC0000000
  %677 = fmul fast float %676, %601
  %678 = fmul fast float %623, 0x400EFBDEC0000000
  %679 = fadd fast float %678, 0xBFFEFBDEC0000000
  %680 = fmul fast float %679, %602
  %681 = fmul fast float %624, 0x400EFBDEC0000000
  %682 = fadd fast float %681, 0xBFFEFBDEC0000000
  %683 = fmul fast float %682, %600
  %684 = fmul fast float %627, 0x400EFBDEC0000000
  %685 = fadd fast float %684, 0xBFFEFBDEC0000000
  %686 = fmul fast float %685, %601
  %687 = fmul fast float %628, 0x400EFBDEC0000000
  %688 = fadd fast float %687, 0xBFFEFBDEC0000000
  %689 = fmul fast float %688, %602
  %690 = fmul fast float %629, 0x400EFBDEC0000000
  %691 = fadd fast float %690, 0xBFFEFBDEC0000000
  %692 = fmul fast float %691, %600
  %693 = fmul fast float %630, 0x400EFBDEC0000000
  %694 = fadd fast float %693, 0xBFFEFBDEC0000000
  %695 = fmul fast float %694, %601
  %696 = fmul fast float %632, 0x400EFBDEC0000000
  %697 = fadd fast float %696, 0xBFFEFBDEC0000000
  %698 = fmul fast float %697, %602
  %699 = fmul fast float %633, 0x400EFBDEC0000000
  %700 = fadd fast float %699, 0xBFFEFBDEC0000000
  %701 = fmul fast float %700, %600
  %702 = fmul fast float %634, 0x400EFBDEC0000000
  %703 = fadd fast float %702, 0xBFFEFBDEC0000000
  %704 = fmul fast float %703, %601
  %705 = fmul fast float %635, 0x400EFBDEC0000000
  %706 = fadd fast float %705, 0xBFFEFBDEC0000000
  %707 = fmul fast float %706, %602
  %708 = fmul fast float %600, 0x3FD20DD760000000
  %709 = fmul fast float %258, 0x3FD4D8D7C0000000
  %710 = fmul fast float %709, %638
  %711 = fmul fast float %258, %258
  %712 = fmul fast float %711, 0x3FEE471020000000
  %713 = fadd fast float %712, 0xBFD42F6020000000
  %714 = fmul fast float %647, %713
  %715 = fmul fast float %256, 0x3FD4D8D7C0000000
  %716 = fmul fast float %715, %665
  %717 = fmul fast float %257, 0x3FD4D8D7C0000000
  %718 = fmul fast float %717, %656
  %719 = fmul fast float %258, 0xBFF17B1420000000
  %720 = fmul fast float %674, %256
  %721 = fmul fast float %683, %257
  %722 = fmul fast float %256, %256
  %723 = fmul fast float %257, %257
  %724 = fsub fast float %722, %723
  %725 = fmul fast float %724, 0x3FC17B1420000000
  %726 = fmul fast float %725, %692
  %727 = fmul fast float %256, 0x3FD17B1420000000
  %728 = fmul fast float %727, %257
  %729 = fmul fast float %728, %701
  %730 = fadd fast float %721, %720
  %731 = fmul fast float %719, %730
  %732 = fadd fast float %731, %714
  %733 = fmul fast float %732, 2.500000e-01
  %734 = fadd fast float %710, %708
  %735 = fsub fast float %734, %718
  %736 = fsub fast float %735, %716
  %737 = fadd fast float %736, %733
  %738 = fadd fast float %737, %726
  %739 = fadd fast float %738, %729
  %740 = fmul fast float %601, 0x3FD20DD760000000
  %741 = fmul fast float %709, %641
  %742 = fmul fast float %650, %713
  %743 = fmul fast float %715, %668
  %744 = fmul fast float %717, %659
  %745 = fmul fast float %677, %256
  %746 = fmul fast float %686, %257
  %747 = fmul fast float %725, %695
  %748 = fmul fast float %728, %704
  %749 = fadd fast float %746, %745
  %750 = fmul fast float %719, %749
  %751 = fadd fast float %750, %742
  %752 = fmul fast float %751, 2.500000e-01
  %753 = fadd fast float %741, %740
  %754 = fsub fast float %753, %744
  %755 = fsub fast float %754, %743
  %756 = fadd fast float %755, %747
  %757 = fadd fast float %756, %752
  %758 = fadd fast float %757, %748
  %759 = fmul fast float %602, 0x3FD20DD760000000
  %760 = fmul fast float %709, %644
  %761 = fmul fast float %653, %713
  %762 = fmul fast float %715, %671
  %763 = fmul fast float %717, %662
  %764 = fmul fast float %680, %256
  %765 = fmul fast float %689, %257
  %766 = fmul fast float %725, %698
  %767 = fmul fast float %728, %707
  %768 = fadd fast float %765, %764
  %769 = fmul fast float %719, %768
  %770 = fadd fast float %769, %761
  %771 = fmul fast float %770, 2.500000e-01
  %772 = fadd fast float %760, %759
  %773 = fsub fast float %772, %762
  %774 = fsub fast float %773, %763
  %775 = fadd fast float %774, %771
  %776 = fadd fast float %775, %766
  %777 = fadd fast float %776, %767
  %778 = call float @dx.op.binary.f32(i32 35, float %739, float 0.000000e+00)  ; FMax(a,b)
  %779 = call float @dx.op.binary.f32(i32 35, float %758, float 0.000000e+00)  ; FMax(a,b)
  %780 = call float @dx.op.binary.f32(i32 35, float %777, float 0.000000e+00)  ; FMax(a,b)
  %781 = fsub fast float -0.000000e+00, %256
  %782 = fsub fast float -0.000000e+00, %257
  %783 = fmul fast float %258, 0xBFD4D8D7C0000000
  %784 = fmul fast float %783, %638
  %785 = fmul fast float %665, 0x3FD4D8D7C0000000
  %786 = fmul fast float %258, 0x3FF17B1420000000
  %787 = fmul fast float %674, %781
  %788 = fmul fast float %683, %782
  %789 = fmul fast float %257, 0x3FD17B1420000000
  %790 = fmul fast float %789, %701
  %791 = fadd fast float %788, %787
  %792 = fmul fast float %786, %791
  %793 = fadd fast float %792, %714
  %794 = fmul fast float %793, 2.500000e-01
  %795 = fadd fast float %790, %785
  %796 = fmul fast float %795, %256
  %797 = fadd fast float %784, %708
  %798 = fadd fast float %797, %718
  %799 = fadd fast float %798, %726
  %800 = fadd fast float %799, %794
  %801 = fadd fast float %800, %796
  %802 = fmul fast float %783, %641
  %803 = fmul fast float %668, 0x3FD4D8D7C0000000
  %804 = fmul fast float %677, %781
  %805 = fmul fast float %686, %782
  %806 = fmul fast float %789, %704
  %807 = fadd fast float %805, %804
  %808 = fmul fast float %786, %807
  %809 = fadd fast float %808, %742
  %810 = fmul fast float %809, 2.500000e-01
  %811 = fadd fast float %806, %803
  %812 = fmul fast float %811, %256
  %813 = fadd fast float %802, %740
  %814 = fadd fast float %813, %744
  %815 = fadd fast float %814, %747
  %816 = fadd fast float %815, %810
  %817 = fadd fast float %816, %812
  %818 = fmul fast float %783, %644
  %819 = fmul fast float %662, 0x3FD4D8D7C0000000
  %820 = fmul fast float %680, %781
  %821 = fmul fast float %689, %782
  %822 = fmul fast float %727, %707
  %823 = fadd fast float %821, %820
  %824 = fmul fast float %786, %823
  %825 = fadd fast float %824, %761
  %826 = fmul fast float %825, 2.500000e-01
  %827 = fadd fast float %822, %819
  %828 = fmul fast float %827, %257
  %829 = fadd fast float %818, %759
  %830 = fadd fast float %829, %762
  %831 = fadd fast float %830, %766
  %832 = fadd fast float %831, %826
  %833 = fadd fast float %832, %828
  %834 = call float @dx.op.binary.f32(i32 35, float %801, float 0.000000e+00)  ; FMax(a,b)
  %835 = call float @dx.op.binary.f32(i32 35, float %817, float 0.000000e+00)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 35, float %833, float 0.000000e+00)  ; FMax(a,b)
  %837 = fmul fast float %484, 0x3FD4D8D7C0000000
  %838 = fmul fast float %837, %638
  %839 = fmul fast float %484, %484
  %840 = fmul fast float %839, 0x3FEE471020000000
  %841 = fadd fast float %840, 0xBFD42F6020000000
  %842 = fmul fast float %647, %841
  %843 = fmul fast float %482, 0x3FD4D8D7C0000000
  %844 = fmul fast float %843, %665
  %845 = fmul fast float %483, 0x3FD4D8D7C0000000
  %846 = fmul fast float %845, %656
  %847 = fmul fast float %484, 0xBFF17B1420000000
  %848 = fmul fast float %674, %482
  %849 = fmul fast float %683, %483
  %850 = fmul fast float %482, %482
  %851 = fmul fast float %483, %483
  %852 = fsub fast float %850, %851
  %853 = fmul fast float %852, 0x3FC17B1420000000
  %854 = fmul fast float %853, %692
  %855 = fmul fast float %483, 0x3FD17B1420000000
  %856 = fmul fast float %855, %482
  %857 = fmul fast float %856, %701
  %858 = fadd fast float %849, %848
  %859 = fmul fast float %847, %858
  %860 = fadd fast float %859, %842
  %861 = fmul fast float %860, 2.500000e-01
  %862 = fadd fast float %838, %708
  %863 = fsub fast float %862, %846
  %864 = fsub fast float %863, %844
  %865 = fadd fast float %864, %861
  %866 = fadd fast float %865, %854
  %867 = fadd fast float %866, %857
  %868 = fmul fast float %837, %641
  %869 = fmul fast float %650, %841
  %870 = fmul fast float %843, %668
  %871 = fmul fast float %845, %659
  %872 = fmul fast float %677, %482
  %873 = fmul fast float %686, %483
  %874 = fmul fast float %853, %695
  %875 = fmul fast float %856, %704
  %876 = fadd fast float %873, %872
  %877 = fmul fast float %847, %876
  %878 = fadd fast float %877, %869
  %879 = fmul fast float %878, 2.500000e-01
  %880 = fadd fast float %868, %740
  %881 = fsub fast float %880, %871
  %882 = fsub fast float %881, %870
  %883 = fadd fast float %882, %874
  %884 = fadd fast float %883, %879
  %885 = fadd fast float %884, %875
  %886 = fmul fast float %837, %644
  %887 = fmul fast float %653, %841
  %888 = fmul fast float %843, %671
  %889 = fmul fast float %845, %662
  %890 = fmul fast float %680, %482
  %891 = fmul fast float %689, %483
  %892 = fmul fast float %853, %698
  %893 = fmul fast float %856, %707
  %894 = fadd fast float %891, %890
  %895 = fmul fast float %847, %894
  %896 = fadd fast float %895, %887
  %897 = fmul fast float %896, 2.500000e-01
  %898 = fadd fast float %886, %759
  %899 = fsub fast float %898, %888
  %900 = fsub fast float %899, %889
  %901 = fadd fast float %900, %897
  %902 = fadd fast float %901, %892
  %903 = fadd fast float %902, %893
  %904 = call float @dx.op.binary.f32(i32 35, float %867, float 0.000000e+00)  ; FMax(a,b)
  %905 = call float @dx.op.binary.f32(i32 35, float %885, float 0.000000e+00)  ; FMax(a,b)
  %906 = call float @dx.op.binary.f32(i32 35, float %903, float 0.000000e+00)  ; FMax(a,b)
  br label %907

; <label>:907                                     ; preds = %532, %529
  %908 = phi float [ %904, %532 ], [ 0.000000e+00, %529 ]
  %909 = phi float [ %905, %532 ], [ 0.000000e+00, %529 ]
  %910 = phi float [ %906, %532 ], [ 0.000000e+00, %529 ]
  %911 = phi float [ %834, %532 ], [ 0.000000e+00, %529 ]
  %912 = phi float [ %835, %532 ], [ 0.000000e+00, %529 ]
  %913 = phi float [ %836, %532 ], [ 0.000000e+00, %529 ]
  %914 = phi float [ %778, %532 ], [ 0.000000e+00, %529 ]
  %915 = phi float [ %779, %532 ], [ 0.000000e+00, %529 ]
  %916 = phi float [ %780, %532 ], [ 0.000000e+00, %529 ]
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %919 = fcmp fast ogt float %918, 0.000000e+00
  %920 = and i1 %531, %919
  br i1 %920, label %921, label %1128, !dx.controlflow.hints !87

; <label>:921                                     ; preds = %907
  %922 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %923 = fadd fast float %922, %335
  %924 = fmul fast float %256, 3.200000e+01
  %925 = fmul fast float %257, 3.200000e+01
  %926 = fadd fast float %489, %924
  %927 = fadd fast float %490, %925
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = fsub fast float %926, %929
  %932 = fsub fast float %927, %930
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %936 = fmul fast float %931, %934
  %937 = fmul fast float %932, %935
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %941 = fsub fast float %489, %939
  %942 = fsub fast float %490, %940
  %943 = fmul fast float %941, %941
  %944 = fmul fast float %942, %942
  %945 = fadd fast float %943, %944
  %946 = call float @dx.op.unary.f32(i32 24, float %945)  ; Sqrt(value)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %950 = fsub fast float %946, %948
  %951 = fdiv fast float %950, %949
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %953 = fmul fast float %952, 2.000000e+00
  %954 = fsub fast float 3.000000e+00, %953
  %955 = fmul fast float %952, %952
  %956 = fmul fast float %955, %954
  %957 = fcmp fast oge float %936, 0.000000e+00
  %958 = fcmp fast ole float %936, 1.000000e+00
  %959 = and i1 %958, %957
  %960 = fcmp fast oge float %937, 0.000000e+00
  %961 = and i1 %960, %959
  %962 = fcmp fast ole float %937, 1.000000e+00
  %963 = and i1 %962, %961
  %964 = fcmp fast ogt float %956, 0.000000e+00
  %965 = and i1 %964, %963
  br i1 %965, label %966, label %1089, !dx.controlflow.hints !88

; <label>:966                                     ; preds = %921
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %970 = fmul fast float %968, %936
  %971 = fmul fast float %969, %937
  %972 = call float @dx.op.unary.f32(i32 27, float %970)  ; Round_ni(value)
  %973 = call float @dx.op.unary.f32(i32 27, float %971)  ; Round_ni(value)
  %974 = fptosi float %972 to i32
  %975 = fptosi float %973 to i32
  %976 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %974, i32 %975, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 16
  %979 = icmp eq i32 %978, 65535
  br i1 %979, label %1089, label %980

; <label>:980                                     ; preds = %966
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = fmul fast float %982, %936
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %985 = fadd fast float %983, %984
  %986 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %987 = fmul fast float %986, %937
  %988 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %989 = fadd fast float %987, %988
  %990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %985, float %989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %996 = fsub fast float %994, %995
  %997 = fmul fast float %996, %991
  %998 = fadd fast float %997, %995
  %999 = extractvalue %dx.types.CBufRet.f32 %993, 3
  %1000 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %1001 = fsub fast float %999, %1000
  %1002 = fmul fast float %1001, %992
  %1003 = fadd fast float %1002, %1000
  %1004 = fsub fast float %923, %998
  %1005 = fsub fast float %1003, %998
  %1006 = fdiv fast float %1004, %1005
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %1009 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %1011 = fmul fast float %1009, %936
  %1012 = fmul fast float %1010, %937
  %1013 = fmul fast float %1011, 1.250000e-01
  %1014 = fmul fast float %1012, 1.250000e-01
  %1015 = call float @dx.op.unary.f32(i32 27, float %1013)  ; Round_ni(value)
  %1016 = call float @dx.op.unary.f32(i32 27, float %1014)  ; Round_ni(value)
  %1017 = fmul fast float %1015, 8.000000e+00
  %1018 = fmul fast float %1016, 8.000000e+00
  %1019 = fsub fast float %1011, %1017
  %1020 = fsub fast float %1012, %1018
  %1021 = fadd fast float %1019, 5.000000e-01
  %1022 = fadd fast float %1020, 5.000000e-01
  %1023 = and i32 %978, 255
  %1024 = lshr i32 %977, 24
  %1025 = mul nuw nsw i32 %1023, 9
  %1026 = uitofp i32 %1025 to float
  %1027 = mul nuw nsw i32 %1024, 9
  %1028 = uitofp i32 %1027 to float
  %1029 = fadd fast float %1021, %1026
  %1030 = fadd fast float %1022, %1028
  %1031 = fdiv fast float %1029, %918
  %1032 = fdiv fast float %1030, %1008
  %1033 = fmul fast float %1007, 4.375000e-01
  %1034 = fadd fast float %1033, 3.125000e-02
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1031, float %1032, float %1034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = fadd fast float %1033, 5.312500e-01
  %1040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1031, float %1032, float %1039, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = fmul fast float %1041, 2.000000e+00
  %1045 = fmul fast float %1042, 2.000000e+00
  %1046 = fmul fast float %1043, 2.000000e+00
  %1047 = fadd fast float %1044, -1.000000e+00
  %1048 = fadd fast float %1045, -1.000000e+00
  %1049 = fadd fast float %1046, -1.000000e+00
  %1050 = fmul fast float %1047, %1047
  %1051 = fmul fast float %1048, %1048
  %1052 = fadd fast float %1050, %1051
  %1053 = fmul fast float %1049, %1049
  %1054 = fadd fast float %1052, %1053
  %1055 = call float @dx.op.unary.f32(i32 24, float %1054)  ; Sqrt(value)
  %1056 = fcmp fast ogt float %1055, 0.000000e+00
  br i1 %1056, label %1057, label %1061

; <label>:1057                                    ; preds = %980
  %1058 = fdiv fast float %1047, %1055
  %1059 = fdiv fast float %1048, %1055
  %1060 = fdiv fast float %1049, %1055
  br label %1061

; <label>:1061                                    ; preds = %1057, %980
  %1062 = phi float [ %1058, %1057 ], [ 0.000000e+00, %980 ]
  %1063 = phi float [ %1059, %1057 ], [ 0.000000e+00, %980 ]
  %1064 = phi float [ %1060, %1057 ], [ 0.000000e+00, %980 ]
  %1065 = call float @dx.op.dot3.f32(i32 55, float %1062, float %1063, float %1064, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1066 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1065)  ; FMax(a,b)
  %1067 = fmul fast float %1066, 0x400C5BF8A0000000
  %1068 = fmul fast float %1036, %956
  %1069 = fmul fast float %1068, %1067
  %1070 = fmul fast float %1037, %956
  %1071 = fmul fast float %1070, %1067
  %1072 = fmul fast float %1038, %956
  %1073 = fmul fast float %1072, %1067
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 3
  %1076 = fmul fast float %1069, %1075
  %1077 = fmul fast float %1071, %1075
  %1078 = fmul fast float %1073, %1075
  %1079 = fcmp fast ogt float %923, %1003
  br i1 %1079, label %1080, label %1089

; <label>:1080                                    ; preds = %1061
  %1081 = fmul fast float %1005, 0x3FC24924A0000000
  %1082 = fsub fast float %923, %1003
  %1083 = fdiv fast float %1082, %1081
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  %1085 = fsub fast float 1.000000e+00, %1084
  %1086 = fmul fast float %1085, %1076
  %1087 = fmul fast float %1085, %1077
  %1088 = fmul fast float %1085, %1078
  br label %1089

; <label>:1089                                    ; preds = %1080, %1061, %966, %921
  %1090 = phi float [ %1088, %1080 ], [ %1078, %1061 ], [ 0.000000e+00, %966 ], [ 0.000000e+00, %921 ]
  %1091 = phi float [ %1087, %1080 ], [ %1077, %1061 ], [ 0.000000e+00, %966 ], [ 0.000000e+00, %921 ]
  %1092 = phi float [ %1086, %1080 ], [ %1076, %1061 ], [ 0.000000e+00, %966 ], [ 0.000000e+00, %921 ]
  %1093 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1092)  ; FMax(a,b)
  %1094 = fmul fast float %1093, 0x3FD20DD760000000
  %1095 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %482, float %483, float %484)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = fmul fast float %1095, 0x3FDF454380000000
  %1097 = fmul fast float %1095, %1095
  %1098 = fmul fast float %1097, 0x3FEE471020000000
  %1099 = fadd fast float %1098, 0xBFD42F6020000000
  %1100 = call float @dx.op.dot3.f32(i32 55, float %1093, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1096, float %1099)  ; Dot3(ax,ay,az,bx,by,bz)
  %1101 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1091)  ; FMax(a,b)
  %1102 = fmul fast float %1101, 0x3FD20DD760000000
  %1103 = call float @dx.op.dot3.f32(i32 55, float %1101, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1096, float %1099)  ; Dot3(ax,ay,az,bx,by,bz)
  %1104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1090)  ; FMax(a,b)
  %1105 = fmul fast float %1104, 0x3FD20DD760000000
  %1106 = call float @dx.op.dot3.f32(i32 55, float %1104, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1096, float %1099)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1094, float 0.000000e+00)  ; FMax(a,b)
  %1108 = call float @dx.op.binary.f32(i32 35, float %1102, float 0.000000e+00)  ; FMax(a,b)
  %1109 = call float @dx.op.binary.f32(i32 35, float %1105, float 0.000000e+00)  ; FMax(a,b)
  %1110 = call float @dx.op.binary.f32(i32 35, float %1100, float 0.000000e+00)  ; FMax(a,b)
  %1111 = call float @dx.op.binary.f32(i32 35, float %1103, float 0.000000e+00)  ; FMax(a,b)
  %1112 = call float @dx.op.binary.f32(i32 35, float %1106, float 0.000000e+00)  ; FMax(a,b)
  %1113 = fmul fast float %1107, %530
  %1114 = fmul fast float %1108, %530
  %1115 = fmul fast float %1109, %530
  %1116 = fadd fast float %1113, %914
  %1117 = fadd fast float %1114, %915
  %1118 = fadd fast float %1115, %916
  %1119 = fadd fast float %1113, %911
  %1120 = fadd fast float %1114, %912
  %1121 = fadd fast float %1115, %913
  %1122 = fmul fast float %1110, %530
  %1123 = fmul fast float %1111, %530
  %1124 = fmul fast float %1112, %530
  %1125 = fadd fast float %1122, %908
  %1126 = fadd fast float %1123, %909
  %1127 = fadd fast float %1124, %910
  br label %1128

; <label>:1128                                    ; preds = %1089, %907
  %1129 = phi float [ %1125, %1089 ], [ %908, %907 ]
  %1130 = phi float [ %1126, %1089 ], [ %909, %907 ]
  %1131 = phi float [ %1127, %1089 ], [ %910, %907 ]
  %1132 = phi float [ %1119, %1089 ], [ %911, %907 ]
  %1133 = phi float [ %1120, %1089 ], [ %912, %907 ]
  %1134 = phi float [ %1121, %1089 ], [ %913, %907 ]
  %1135 = phi float [ %1116, %1089 ], [ %914, %907 ]
  %1136 = phi float [ %1117, %1089 ], [ %915, %907 ]
  %1137 = phi float [ %1118, %1089 ], [ %916, %907 ]
  %1138 = fcmp fast olt float %530, 1.000000e+00
  br i1 %1138, label %1139, label %1972, !dx.controlflow.hints !89

; <label>:1139                                    ; preds = %1128
  %1140 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %1141 = fadd fast float %1140, %335
  %1142 = fmul fast float %256, 3.200000e+01
  %1143 = fmul fast float %257, 3.200000e+01
  %1144 = fadd fast float %489, %1142
  %1145 = fadd fast float %490, %1143
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.CBufRet.f32 %1146, 1
  %1149 = fsub fast float %1144, %1147
  %1150 = fsub fast float %1145, %1148
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.CBufRet.f32 %1151, 1
  %1154 = fmul fast float %1149, %1152
  %1155 = fmul fast float %1150, %1153
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = fmul fast float %1154, %1157
  %1159 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1160 = fadd fast float %1158, %1159
  %1161 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1162 = fmul fast float %1161, %1155
  %1163 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1164 = fadd fast float %1162, %1163
  %1165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %1160, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 1
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1171 = fsub fast float %1169, %1170
  %1172 = fmul fast float %1171, %1166
  %1173 = fadd fast float %1172, %1170
  %1174 = extractvalue %dx.types.CBufRet.f32 %1168, 3
  %1175 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1176 = fsub fast float %1174, %1175
  %1177 = fmul fast float %1176, %1167
  %1178 = fadd fast float %1177, %1175
  %1179 = fsub fast float %1141, %1173
  %1180 = fsub fast float %1178, %1173
  %1181 = fdiv fast float %1179, %1180
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1185 = fmul fast float %1184, %1182
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1187 = fadd fast float %1185, %1186
  %1188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %1160, float %1164, float %1187, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = extractvalue %dx.types.ResRet.f32 %1188, 1
  %1191 = extractvalue %dx.types.ResRet.f32 %1188, 2
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1196 = fmul fast float %1193, %1189
  %1197 = fmul fast float %1194, %1190
  %1198 = fmul fast float %1195, %1191
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1203 = fadd fast float %1196, %1200
  %1204 = fadd fast float %1197, %1201
  %1205 = fadd fast float %1198, %1202
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = fmul fast float %1207, %1154
  %1209 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1210 = fadd fast float %1208, %1209
  %1211 = extractvalue %dx.types.CBufRet.f32 %1206, 2
  %1212 = fmul fast float %1211, %1155
  %1213 = extractvalue %dx.types.CBufRet.f32 %1206, 3
  %1214 = fadd fast float %1212, %1213
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1219 = extractvalue %dx.types.CBufRet.f32 %1215, 3
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.CBufRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.CBufRet.f32 %1220, 2
  %1224 = extractvalue %dx.types.CBufRet.f32 %1220, 3
  %1225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1210, float %1214, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.ResRet.f32 %1225, 2
  %1229 = extractvalue %dx.types.ResRet.f32 %1225, 3
  %1230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1210, float %1214, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = extractvalue %dx.types.ResRet.f32 %1230, 3
  %1235 = fmul fast float %1226, %1203
  %1236 = fmul fast float %1231, %1203
  %1237 = fmul fast float %1233, %1203
  %1238 = fmul fast float %1229, %1203
  %1239 = fadd fast float %1235, %1216
  %1240 = fadd fast float %1236, %1217
  %1241 = fadd fast float %1237, %1218
  %1242 = fadd fast float %1238, %1219
  %1243 = fmul fast float %1227, %1203
  %1244 = fmul fast float %1232, %1203
  %1245 = fadd fast float %1243, %1221
  %1246 = fadd fast float %1244, %1222
  %1247 = fmul fast float %1228, %1203
  %1248 = fmul fast float %1234, %1203
  %1249 = fadd fast float %1247, %1223
  %1250 = fadd fast float %1248, %1224
  %1251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1210, float %1214, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1255 = extractvalue %dx.types.ResRet.f32 %1251, 3
  %1256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1210, float %1214, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.ResRet.f32 %1256, 3
  %1261 = fmul fast float %1252, %1204
  %1262 = fmul fast float %1257, %1204
  %1263 = fmul fast float %1259, %1204
  %1264 = fmul fast float %1255, %1204
  %1265 = fadd fast float %1239, %1261
  %1266 = fadd fast float %1240, %1262
  %1267 = fadd fast float %1241, %1263
  %1268 = fadd fast float %1242, %1264
  %1269 = fmul fast float %1253, %1204
  %1270 = fmul fast float %1258, %1204
  %1271 = fadd fast float %1245, %1269
  %1272 = fadd fast float %1246, %1270
  %1273 = fmul fast float %1254, %1204
  %1274 = fmul fast float %1260, %1204
  %1275 = fadd fast float %1249, %1273
  %1276 = fadd fast float %1250, %1274
  %1277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1210, float %1214, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  %1281 = extractvalue %dx.types.ResRet.f32 %1277, 3
  %1282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1210, float %1214, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = extractvalue %dx.types.ResRet.f32 %1282, 3
  %1287 = fmul fast float %1278, %1205
  %1288 = fmul fast float %1283, %1205
  %1289 = fmul fast float %1285, %1205
  %1290 = fmul fast float %1281, %1205
  %1291 = fadd fast float %1265, %1287
  %1292 = fadd fast float %1266, %1288
  %1293 = fadd fast float %1267, %1289
  %1294 = fadd fast float %1268, %1290
  %1295 = fmul fast float %1279, %1205
  %1296 = fmul fast float %1284, %1205
  %1297 = fadd fast float %1271, %1295
  %1298 = fadd fast float %1272, %1296
  %1299 = fmul fast float %1280, %1205
  %1300 = fmul fast float %1286, %1205
  %1301 = fadd fast float %1275, %1299
  %1302 = fadd fast float %1276, %1300
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = fsub fast float %489, %1304
  %1306 = fsub fast float %1147, %489
  %1307 = call float @dx.op.binary.f32(i32 35, float %1306, float %1305)  ; FMax(a,b)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1303, 1
  %1309 = fsub fast float %490, %1308
  %1310 = fsub fast float %1148, %490
  %1311 = call float @dx.op.binary.f32(i32 35, float %1310, float %1309)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 35, float %1307, float %1311)  ; FMax(a,b)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1151, 3
  %1314 = fmul fast float %1313, %1312
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.CBufRet.f32 %1316, 2
  %1320 = extractvalue %dx.types.CBufRet.f32 %1316, 3
  %1321 = fsub fast float %1317, %1291
  %1322 = fsub fast float %1318, %1292
  %1323 = fsub fast float %1319, %1293
  %1324 = fsub fast float %1320, %1294
  %1325 = fmul fast float %1321, %1315
  %1326 = fmul fast float %1322, %1315
  %1327 = fmul fast float %1323, %1315
  %1328 = fmul fast float %1324, %1315
  %1329 = fadd fast float %1325, %1291
  %1330 = fadd fast float %1326, %1292
  %1331 = fadd fast float %1327, %1293
  %1332 = fadd fast float %1328, %1294
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1335 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1336 = fsub fast float %1334, %1297
  %1337 = fsub fast float %1335, %1298
  %1338 = fmul fast float %1336, %1315
  %1339 = fmul fast float %1337, %1315
  %1340 = fadd fast float %1338, %1297
  %1341 = fadd fast float %1339, %1298
  %1342 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1343 = extractvalue %dx.types.CBufRet.f32 %1333, 3
  %1344 = fsub fast float %1342, %1301
  %1345 = fsub fast float %1343, %1302
  %1346 = fmul fast float %1344, %1315
  %1347 = fmul fast float %1345, %1315
  %1348 = fadd fast float %1346, %1301
  %1349 = fadd fast float %1347, %1302
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 0
  %1352 = fmul fast float %1351, %1329
  %1353 = fmul fast float %1351, %1330
  %1354 = fmul fast float %1351, %1331
  %1355 = fmul fast float %1351, %1332
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 0
  %1358 = fmul fast float %1357, %1340
  %1359 = fmul fast float %1357, %1341
  %1360 = fadd fast float %1358, %1352
  %1361 = fadd fast float %1359, %1354
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = fmul fast float %1363, %1348
  %1365 = fmul fast float %1363, %1349
  %1366 = fadd fast float %1360, %1364
  %1367 = fadd fast float %1361, %1365
  %1368 = extractvalue %dx.types.CBufRet.f32 %1350, 1
  %1369 = fmul fast float %1368, %1329
  %1370 = fmul fast float %1368, %1330
  %1371 = fmul fast float %1368, %1331
  %1372 = fmul fast float %1368, %1332
  %1373 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1374 = fmul fast float %1373, %1340
  %1375 = fmul fast float %1373, %1341
  %1376 = fadd fast float %1374, %1369
  %1377 = fadd fast float %1375, %1371
  %1378 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1379 = fmul fast float %1378, %1348
  %1380 = fmul fast float %1378, %1349
  %1381 = fadd fast float %1376, %1379
  %1382 = fadd fast float %1377, %1380
  %1383 = extractvalue %dx.types.CBufRet.f32 %1350, 2
  %1384 = fmul fast float %1383, %1329
  %1385 = fmul fast float %1383, %1330
  %1386 = fmul fast float %1383, %1331
  %1387 = fmul fast float %1383, %1332
  %1388 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1389 = fmul fast float %1388, %1340
  %1390 = fmul fast float %1388, %1341
  %1391 = fadd fast float %1389, %1384
  %1392 = fadd fast float %1390, %1386
  %1393 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1394 = fmul fast float %1393, %1348
  %1395 = fmul fast float %1393, %1349
  %1396 = fadd fast float %1391, %1394
  %1397 = fadd fast float %1392, %1395
  %1398 = fmul fast float %1385, %1385
  %1399 = fmul fast float %1397, %1397
  %1400 = fmul fast float %1387, %1387
  %1401 = fadd fast float %1400, %1398
  %1402 = fadd fast float %1401, %1399
  %1403 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1404 = fcmp fast ugt float %1403, 0.000000e+00
  br i1 %1404, label %1405, label %1420

; <label>:1405                                    ; preds = %1139
  %1406 = fsub fast float -0.000000e+00, %1387
  %1407 = fdiv fast float %1406, %1403
  %1408 = fsub fast float -0.000000e+00, %1385
  %1409 = fdiv fast float %1408, %1403
  %1410 = fdiv fast float %1397, %1403
  %1411 = fmul fast float %1396, 0x3FE279A760000000
  %1412 = fmul fast float %1409, %1385
  %1413 = fmul fast float %1410, %1397
  %1414 = fmul fast float %1407, %1387
  %1415 = fadd fast float %1412, %1414
  %1416 = fsub fast float %1415, %1413
  %1417 = call float @dx.op.unary.f32(i32 6, float %1416)  ; FAbs(value)
  %1418 = fadd fast float %1417, 0x3DDB7CDFE0000000
  %1419 = fdiv fast float %1411, %1418
  br label %1420

; <label>:1420                                    ; preds = %1405, %1139
  %1421 = phi float [ %1419, %1405 ], [ 1.000000e+00, %1139 ]
  %1422 = fmul fast float %1370, %1370
  %1423 = fmul fast float %1382, %1382
  %1424 = fmul fast float %1372, %1372
  %1425 = fadd fast float %1424, %1422
  %1426 = fadd fast float %1425, %1423
  %1427 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1428 = fcmp fast ugt float %1427, 0.000000e+00
  br i1 %1428, label %1429, label %1444

; <label>:1429                                    ; preds = %1420
  %1430 = fsub fast float -0.000000e+00, %1372
  %1431 = fdiv fast float %1430, %1427
  %1432 = fsub fast float -0.000000e+00, %1370
  %1433 = fdiv fast float %1432, %1427
  %1434 = fdiv fast float %1382, %1427
  %1435 = fmul fast float %1381, 0x3FE279A760000000
  %1436 = fmul fast float %1433, %1370
  %1437 = fmul fast float %1434, %1382
  %1438 = fmul fast float %1431, %1372
  %1439 = fadd fast float %1436, %1438
  %1440 = fsub fast float %1439, %1437
  %1441 = call float @dx.op.unary.f32(i32 6, float %1440)  ; FAbs(value)
  %1442 = fadd fast float %1441, 0x3DDB7CDFE0000000
  %1443 = fdiv fast float %1435, %1442
  br label %1444

; <label>:1444                                    ; preds = %1429, %1420
  %1445 = phi float [ %1443, %1429 ], [ 1.000000e+00, %1420 ]
  %1446 = call float @dx.op.binary.f32(i32 36, float %1445, float %1421)  ; FMin(a,b)
  %1447 = fmul fast float %1353, %1353
  %1448 = fmul fast float %1367, %1367
  %1449 = fmul fast float %1355, %1355
  %1450 = fadd fast float %1449, %1447
  %1451 = fadd fast float %1450, %1448
  %1452 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1453 = fcmp fast ugt float %1452, 0.000000e+00
  br i1 %1453, label %1454, label %1469

; <label>:1454                                    ; preds = %1444
  %1455 = fsub fast float -0.000000e+00, %1355
  %1456 = fdiv fast float %1455, %1452
  %1457 = fsub fast float -0.000000e+00, %1353
  %1458 = fdiv fast float %1457, %1452
  %1459 = fdiv fast float %1367, %1452
  %1460 = fmul fast float %1366, 0x3FE279A760000000
  %1461 = fmul fast float %1458, %1353
  %1462 = fmul fast float %1459, %1367
  %1463 = fmul fast float %1456, %1355
  %1464 = fadd fast float %1461, %1463
  %1465 = fsub fast float %1464, %1462
  %1466 = call float @dx.op.unary.f32(i32 6, float %1465)  ; FAbs(value)
  %1467 = fadd fast float %1466, 0x3DDB7CDFE0000000
  %1468 = fdiv fast float %1460, %1467
  br label %1469

; <label>:1469                                    ; preds = %1454, %1444
  %1470 = phi float [ %1468, %1454 ], [ 1.000000e+00, %1444 ]
  %1471 = call float @dx.op.binary.f32(i32 36, float %1470, float %1446)  ; FMin(a,b)
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = fcmp fast olt float %1472, 1.000000e+00
  br i1 %1473, label %1474, label %1484

; <label>:1474                                    ; preds = %1469
  %1475 = fmul fast float %1472, %1353
  %1476 = fmul fast float %1472, %1367
  %1477 = fmul fast float %1472, %1355
  %1478 = fmul fast float %1472, %1370
  %1479 = fmul fast float %1472, %1382
  %1480 = fmul fast float %1472, %1372
  %1481 = fmul fast float %1472, %1385
  %1482 = fmul fast float %1472, %1397
  %1483 = fmul fast float %1472, %1387
  br label %1484

; <label>:1484                                    ; preds = %1474, %1469
  %1485 = phi float [ %1481, %1474 ], [ %1385, %1469 ]
  %1486 = phi float [ %1482, %1474 ], [ %1397, %1469 ]
  %1487 = phi float [ %1483, %1474 ], [ %1387, %1469 ]
  %1488 = phi float [ %1478, %1474 ], [ %1370, %1469 ]
  %1489 = phi float [ %1479, %1474 ], [ %1382, %1469 ]
  %1490 = phi float [ %1480, %1474 ], [ %1372, %1469 ]
  %1491 = phi float [ %1475, %1474 ], [ %1353, %1469 ]
  %1492 = phi float [ %1476, %1474 ], [ %1367, %1469 ]
  %1493 = phi float [ %1477, %1474 ], [ %1355, %1469 ]
  %1494 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1366)  ; FMax(a,b)
  %1495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1381)  ; FMax(a,b)
  %1496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1396)  ; FMax(a,b)
  %1497 = fcmp fast oge float %1154, 0.000000e+00
  %1498 = and i1 %1497, %919
  %1499 = fcmp fast ole float %1154, 1.000000e+00
  %1500 = and i1 %1499, %1498
  %1501 = fcmp fast oge float %1155, 0.000000e+00
  %1502 = and i1 %1501, %1500
  %1503 = fcmp fast ole float %1155, 1.000000e+00
  %1504 = and i1 %1503, %1502
  br i1 %1504, label %1505, label %1650, !dx.controlflow.hints !90

; <label>:1505                                    ; preds = %1484
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1508 = extractvalue %dx.types.CBufRet.f32 %1506, 3
  %1509 = fmul fast float %1507, %1154
  %1510 = fmul fast float %1508, %1155
  %1511 = call float @dx.op.unary.f32(i32 27, float %1509)  ; Round_ni(value)
  %1512 = call float @dx.op.unary.f32(i32 27, float %1510)  ; Round_ni(value)
  %1513 = fptosi float %1511 to i32
  %1514 = fptosi float %1512 to i32
  %1515 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %1513, i32 %1514, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 65535
  %1518 = lshr i32 %1516, 16
  %1519 = icmp eq i32 %1517, 65535
  br i1 %1519, label %1556, label %1520

; <label>:1520                                    ; preds = %1505
  %1521 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %1522 = extractvalue %dx.types.CBufRet.f32 %1506, 0
  %1523 = extractvalue %dx.types.CBufRet.f32 %1506, 1
  %1524 = fmul fast float %1522, %1154
  %1525 = fmul fast float %1523, %1155
  %1526 = fmul fast float %1524, 1.250000e-01
  %1527 = fmul fast float %1525, 1.250000e-01
  %1528 = call float @dx.op.unary.f32(i32 27, float %1526)  ; Round_ni(value)
  %1529 = call float @dx.op.unary.f32(i32 27, float %1527)  ; Round_ni(value)
  %1530 = fmul fast float %1528, 8.000000e+00
  %1531 = fmul fast float %1529, 8.000000e+00
  %1532 = and i32 %1516, 255
  %1533 = lshr i32 %1516, 8
  %1534 = and i32 %1533, 255
  %1535 = mul nuw nsw i32 %1532, 9
  %1536 = uitofp i32 %1535 to float
  %1537 = mul nuw nsw i32 %1534, 9
  %1538 = uitofp i32 %1537 to float
  %1539 = fadd fast float %1536, 5.000000e-01
  %1540 = fadd fast float %1539, %1524
  %1541 = fsub fast float %1540, %1530
  %1542 = fadd fast float %1538, 5.000000e-01
  %1543 = fadd fast float %1542, %1525
  %1544 = fsub fast float %1543, %1531
  %1545 = fdiv fast float %1541, %918
  %1546 = fdiv fast float %1544, %1521
  %1547 = fmul fast float %1182, 4.375000e-01
  %1548 = fadd fast float %1547, 3.125000e-02
  %1549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1545, float %1546, float %1548, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.ResRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.ResRet.f32 %1549, 2
  %1553 = fadd fast float %1550, %1494
  %1554 = fadd fast float %1551, %1495
  %1555 = fadd fast float %1552, %1496
  br label %1556

; <label>:1556                                    ; preds = %1520, %1505
  %1557 = phi float [ %1555, %1520 ], [ %1496, %1505 ]
  %1558 = phi float [ %1554, %1520 ], [ %1495, %1505 ]
  %1559 = phi float [ %1553, %1520 ], [ %1494, %1505 ]
  %1560 = icmp eq i32 %1518, 65535
  br i1 %1560, label %1650, label %1561

; <label>:1561                                    ; preds = %1556
  %1562 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %1563 = extractvalue %dx.types.CBufRet.f32 %1506, 0
  %1564 = extractvalue %dx.types.CBufRet.f32 %1506, 1
  %1565 = fmul fast float %1563, %1154
  %1566 = fmul fast float %1564, %1155
  %1567 = fmul fast float %1565, 1.250000e-01
  %1568 = fmul fast float %1566, 1.250000e-01
  %1569 = call float @dx.op.unary.f32(i32 27, float %1567)  ; Round_ni(value)
  %1570 = call float @dx.op.unary.f32(i32 27, float %1568)  ; Round_ni(value)
  %1571 = fmul fast float %1569, 8.000000e+00
  %1572 = fmul fast float %1570, 8.000000e+00
  %1573 = fsub fast float %1565, %1571
  %1574 = fsub fast float %1566, %1572
  %1575 = fadd fast float %1573, 5.000000e-01
  %1576 = fadd fast float %1574, 5.000000e-01
  %1577 = and i32 %1518, 255
  %1578 = lshr i32 %1516, 24
  %1579 = mul nuw nsw i32 %1577, 9
  %1580 = uitofp i32 %1579 to float
  %1581 = mul nuw nsw i32 %1578, 9
  %1582 = uitofp i32 %1581 to float
  %1583 = fadd fast float %1575, %1580
  %1584 = fadd fast float %1576, %1582
  %1585 = fdiv fast float %1583, %918
  %1586 = fdiv fast float %1584, %1562
  %1587 = fmul fast float %1182, 4.375000e-01
  %1588 = fadd fast float %1587, 3.125000e-02
  %1589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1585, float %1586, float %1588, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  %1591 = extractvalue %dx.types.ResRet.f32 %1589, 1
  %1592 = extractvalue %dx.types.ResRet.f32 %1589, 2
  %1593 = fadd fast float %1587, 5.312500e-01
  %1594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1585, float %1586, float %1593, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1596 = extractvalue %dx.types.ResRet.f32 %1594, 1
  %1597 = extractvalue %dx.types.ResRet.f32 %1594, 2
  %1598 = fmul fast float %1595, 2.000000e+00
  %1599 = fmul fast float %1596, 2.000000e+00
  %1600 = fmul fast float %1597, 2.000000e+00
  %1601 = fadd fast float %1598, -1.000000e+00
  %1602 = fadd fast float %1599, -1.000000e+00
  %1603 = fadd fast float %1600, -1.000000e+00
  %1604 = fmul fast float %1601, %1601
  %1605 = fmul fast float %1602, %1602
  %1606 = fadd fast float %1604, %1605
  %1607 = fmul fast float %1603, %1603
  %1608 = fadd fast float %1606, %1607
  %1609 = call float @dx.op.unary.f32(i32 24, float %1608)  ; Sqrt(value)
  %1610 = fcmp fast ogt float %1609, 0.000000e+00
  br i1 %1610, label %1611, label %1615

; <label>:1611                                    ; preds = %1561
  %1612 = fdiv fast float %1601, %1609
  %1613 = fdiv fast float %1602, %1609
  %1614 = fdiv fast float %1603, %1609
  br label %1615

; <label>:1615                                    ; preds = %1611, %1561
  %1616 = phi float [ %1612, %1611 ], [ 0.000000e+00, %1561 ]
  %1617 = phi float [ %1613, %1611 ], [ 0.000000e+00, %1561 ]
  %1618 = phi float [ %1614, %1611 ], [ 0.000000e+00, %1561 ]
  %1619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.CBufRet.f32 %1619, 1
  %1622 = fsub fast float %489, %1620
  %1623 = fsub fast float %490, %1621
  %1624 = fmul fast float %1622, %1622
  %1625 = fmul fast float %1623, %1623
  %1626 = fadd fast float %1624, %1625
  %1627 = call float @dx.op.unary.f32(i32 24, float %1626)  ; Sqrt(value)
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 0
  %1630 = extractvalue %dx.types.CBufRet.f32 %1628, 1
  %1631 = fsub fast float %1627, %1629
  %1632 = fdiv fast float %1631, %1630
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1634 = fmul fast float %1633, 2.000000e+00
  %1635 = fsub fast float 3.000000e+00, %1634
  %1636 = fmul fast float %1633, %1633
  %1637 = fmul fast float %1636, %1635
  %1638 = call float @dx.op.dot3.f32(i32 55, float %1616, float %1617, float %1618, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1639 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1638)  ; FMax(a,b)
  %1640 = fmul fast float %1639, 0x400C5BF8A0000000
  %1641 = fmul fast float %1637, %1590
  %1642 = fmul fast float %1641, %1640
  %1643 = fadd fast float %1642, %1559
  %1644 = fmul fast float %1637, %1591
  %1645 = fmul fast float %1644, %1640
  %1646 = fadd fast float %1645, %1558
  %1647 = fmul fast float %1637, %1592
  %1648 = fmul fast float %1647, %1640
  %1649 = fadd fast float %1648, %1557
  br label %1650

; <label>:1650                                    ; preds = %1615, %1556, %1484
  %1651 = phi float [ %1649, %1615 ], [ %1557, %1556 ], [ %1496, %1484 ]
  %1652 = phi float [ %1646, %1615 ], [ %1558, %1556 ], [ %1495, %1484 ]
  %1653 = phi float [ %1643, %1615 ], [ %1559, %1556 ], [ %1494, %1484 ]
  %1654 = fcmp fast ogt float %1141, %1178
  %1655 = and i1 %1497, %1654
  %1656 = and i1 %1499, %1655
  %1657 = and i1 %1501, %1656
  %1658 = and i1 %1503, %1657
  br i1 %1658, label %1659, label %1716, !dx.controlflow.hints !91

; <label>:1659                                    ; preds = %1650
  %1660 = fmul fast float %1180, 0x3FC24924A0000000
  %1661 = fsub fast float %1141, %1178
  %1662 = fdiv fast float %1661, %1660
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1664, 0
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.CBufRet.f32 %1666, 1
  %1669 = extractvalue %dx.types.CBufRet.f32 %1666, 2
  %1670 = fsub fast float %1665, %1653
  %1671 = fsub fast float %1667, %1491
  %1672 = fsub fast float %1668, %1492
  %1673 = fsub fast float %1669, %1493
  %1674 = fmul fast float %1670, %1663
  %1675 = fmul fast float %1671, %1663
  %1676 = fmul fast float %1672, %1663
  %1677 = fmul fast float %1673, %1663
  %1678 = fadd fast float %1674, %1653
  %1679 = fadd fast float %1675, %1491
  %1680 = fadd fast float %1676, %1492
  %1681 = fadd fast float %1677, %1493
  %1682 = extractvalue %dx.types.CBufRet.f32 %1664, 1
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.CBufRet.f32 %1683, 1
  %1686 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %1687 = fsub fast float %1682, %1652
  %1688 = fsub fast float %1684, %1488
  %1689 = fsub fast float %1685, %1489
  %1690 = fsub fast float %1686, %1490
  %1691 = fmul fast float %1687, %1663
  %1692 = fmul fast float %1688, %1663
  %1693 = fmul fast float %1689, %1663
  %1694 = fmul fast float %1690, %1663
  %1695 = fadd fast float %1691, %1652
  %1696 = fadd fast float %1692, %1488
  %1697 = fadd fast float %1693, %1489
  %1698 = fadd fast float %1694, %1490
  %1699 = extractvalue %dx.types.CBufRet.f32 %1664, 2
  %1700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.f32 %1700, 0
  %1702 = extractvalue %dx.types.CBufRet.f32 %1700, 1
  %1703 = extractvalue %dx.types.CBufRet.f32 %1700, 2
  %1704 = fsub fast float %1699, %1651
  %1705 = fsub fast float %1701, %1485
  %1706 = fsub fast float %1702, %1486
  %1707 = fsub fast float %1703, %1487
  %1708 = fmul fast float %1704, %1663
  %1709 = fmul fast float %1705, %1663
  %1710 = fmul fast float %1706, %1663
  %1711 = fmul fast float %1707, %1663
  %1712 = fadd fast float %1708, %1651
  %1713 = fadd fast float %1709, %1485
  %1714 = fadd fast float %1710, %1486
  %1715 = fadd fast float %1711, %1487
  br label %1716

; <label>:1716                                    ; preds = %1659, %1650
  %1717 = phi float [ %1712, %1659 ], [ %1651, %1650 ]
  %1718 = phi float [ %1713, %1659 ], [ %1485, %1650 ]
  %1719 = phi float [ %1714, %1659 ], [ %1486, %1650 ]
  %1720 = phi float [ %1715, %1659 ], [ %1487, %1650 ]
  %1721 = phi float [ %1695, %1659 ], [ %1652, %1650 ]
  %1722 = phi float [ %1696, %1659 ], [ %1488, %1650 ]
  %1723 = phi float [ %1697, %1659 ], [ %1489, %1650 ]
  %1724 = phi float [ %1698, %1659 ], [ %1490, %1650 ]
  %1725 = phi float [ %1678, %1659 ], [ %1653, %1650 ]
  %1726 = phi float [ %1679, %1659 ], [ %1491, %1650 ]
  %1727 = phi float [ %1680, %1659 ], [ %1492, %1650 ]
  %1728 = phi float [ %1681, %1659 ], [ %1493, %1650 ]
  %1729 = extractvalue %dx.types.CBufRet.f32 %1303, 3
  %1730 = fmul fast float %1729, %1725
  %1731 = fmul fast float %1729, %1721
  %1732 = fmul fast float %1729, %1717
  %1733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.f32 %1733, 3
  %1735 = fmul fast float %1730, %1734
  %1736 = fmul fast float %1731, %1734
  %1737 = fmul fast float %1732, %1734
  %1738 = fmul fast float %1726, 1.500000e+00
  %1739 = fmul fast float %1738, %1729
  %1740 = fmul fast float %1739, %1734
  %1741 = fmul fast float %1727, 1.500000e+00
  %1742 = fmul fast float %1741, %1729
  %1743 = fmul fast float %1742, %1734
  %1744 = fmul fast float %1728, 1.500000e+00
  %1745 = fmul fast float %1744, %1729
  %1746 = fmul fast float %1745, %1734
  %1747 = fmul fast float %1722, 1.500000e+00
  %1748 = fmul fast float %1747, %1729
  %1749 = fmul fast float %1748, %1734
  %1750 = fmul fast float %1723, 1.500000e+00
  %1751 = fmul fast float %1750, %1729
  %1752 = fmul fast float %1751, %1734
  %1753 = fmul fast float %1724, 1.500000e+00
  %1754 = fmul fast float %1753, %1729
  %1755 = fmul fast float %1754, %1734
  %1756 = fmul fast float %1718, 1.500000e+00
  %1757 = fmul fast float %1756, %1729
  %1758 = fmul fast float %1757, %1734
  %1759 = fmul fast float %1719, 1.500000e+00
  %1760 = fmul fast float %1759, %1729
  %1761 = fmul fast float %1760, %1734
  %1762 = fmul fast float %1720, 1.500000e+00
  %1763 = fmul fast float %1762, %1729
  %1764 = fmul fast float %1763, %1734
  %1765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1735)  ; FMax(a,b)
  %1766 = call float @dx.op.dot3.f32(i32 55, float %1740, float %1743, float %1746, float %1740, float %1743, float %1746)  ; Dot3(ax,ay,az,bx,by,bz)
  %1767 = fcmp fast oeq float %1766, 0.000000e+00
  %1768 = fcmp fast oeq float %1765, 0.000000e+00
  %1769 = or i1 %1768, %1767
  br i1 %1769, label %1799, label %1770

; <label>:1770                                    ; preds = %1716
  %1771 = fsub fast float -0.000000e+00, %1746
  %1772 = fsub fast float -0.000000e+00, %1740
  %1773 = call float @dx.op.unary.f32(i32 24, float %1766)  ; Sqrt(value)
  %1774 = fdiv fast float %1773, %1765
  %1775 = fcmp fast ogt float %1774, 0x3FFB6F8900000000
  %1776 = select i1 %1775, float 0x3FFB6F8900000000, float %1774
  %1777 = fmul fast float %1776, 0x3FE8A23460000000
  %1778 = call float @dx.op.unary.f32(i32 7, float %1777)  ; Saturate(value)
  %1779 = call float @dx.op.binary.f32(i32 35, float %1776, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1780 = fmul fast float %1778, %1765
  %1781 = fmul fast float %1779, 0x3FF279A740000000
  %1782 = fadd fast float %1781, -1.000000e+00
  %1783 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1743, float %1771, float %1772, float %1743)  ; Dot3(ax,ay,az,bx,by,bz)
  %1784 = call float @dx.op.unary.f32(i32 25, float %1783)  ; Rsqrt(value)
  %1785 = fmul fast float %1784, %1771
  %1786 = fmul fast float %1784, %1772
  %1787 = fmul fast float %1784, %1743
  %1788 = fmul fast float %1782, %1782
  %1789 = fsub fast float 1.000000e+00, %1788
  %1790 = fmul fast float %1779, 0x40005F8BE0000000
  %1791 = fsub fast float 0x400C5BF8A0000000, %1790
  %1792 = fdiv fast float %1780, %1791
  %1793 = fmul fast float %1792, 0x3FEE31C3C0000000
  %1794 = fmul fast float %1793, %1789
  %1795 = fmul fast float %1779, 0x3FDACB7480000000
  %1796 = fadd fast float %1795, 0xBFD7347680000000
  %1797 = fmul fast float %1796, %1792
  %1798 = fmul fast float %1797, %1789
  br label %1799

; <label>:1799                                    ; preds = %1770, %1716
  %1800 = phi float [ %1785, %1770 ], [ 0.000000e+00, %1716 ]
  %1801 = phi float [ %1786, %1770 ], [ 0.000000e+00, %1716 ]
  %1802 = phi float [ %1787, %1770 ], [ 0.000000e+00, %1716 ]
  %1803 = phi float [ %1794, %1770 ], [ 0.000000e+00, %1716 ]
  %1804 = phi float [ %1798, %1770 ], [ 0.000000e+00, %1716 ]
  %1805 = call float @dx.op.dot3.f32(i32 55, float %1800, float %1801, float %1802, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1806 = fmul fast float %1805, 0x3FDF454380000000
  %1807 = fmul fast float %1805, %1805
  %1808 = fmul fast float %1807, 0x3FEE471020000000
  %1809 = fadd fast float %1808, 0xBFD42F6020000000
  %1810 = fmul fast float %1765, 0x3FD20DD760000000
  %1811 = fmul fast float %1809, %1804
  %1812 = fadd fast float %1811, %1810
  %1813 = fmul fast float %1806, %1803
  %1814 = fadd fast float %1812, %1813
  %1815 = fsub fast float %1812, %1813
  %1816 = call float @dx.op.dot3.f32(i32 55, float %1800, float %1801, float %1802, float %482, float %483, float %484)  ; Dot3(ax,ay,az,bx,by,bz)
  %1817 = fmul fast float %1816, 0x3FDF454380000000
  %1818 = fmul fast float %1816, %1816
  %1819 = fmul fast float %1818, 0x3FEE471020000000
  %1820 = fadd fast float %1819, 0xBFD42F6020000000
  %1821 = call float @dx.op.dot3.f32(i32 55, float %1765, float %1803, float %1804, float 0x3FD20DD760000000, float %1817, float %1820)  ; Dot3(ax,ay,az,bx,by,bz)
  %1822 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1736)  ; FMax(a,b)
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1749, float %1752, float %1755, float %1749, float %1752, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = fcmp fast oeq float %1823, 0.000000e+00
  %1825 = fcmp fast oeq float %1822, 0.000000e+00
  %1826 = or i1 %1825, %1824
  br i1 %1826, label %1856, label %1827

; <label>:1827                                    ; preds = %1799
  %1828 = fsub fast float -0.000000e+00, %1755
  %1829 = fsub fast float -0.000000e+00, %1749
  %1830 = call float @dx.op.unary.f32(i32 24, float %1823)  ; Sqrt(value)
  %1831 = fdiv fast float %1830, %1822
  %1832 = fcmp fast ogt float %1831, 0x3FFB6F8900000000
  %1833 = select i1 %1832, float 0x3FFB6F8900000000, float %1831
  %1834 = fmul fast float %1833, 0x3FE8A23460000000
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1836 = call float @dx.op.binary.f32(i32 35, float %1833, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1837 = fmul fast float %1835, %1822
  %1838 = fmul fast float %1836, 0x3FF279A740000000
  %1839 = fadd fast float %1838, -1.000000e+00
  %1840 = call float @dx.op.dot3.f32(i32 55, float %1828, float %1829, float %1752, float %1828, float %1829, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %1841 = call float @dx.op.unary.f32(i32 25, float %1840)  ; Rsqrt(value)
  %1842 = fmul fast float %1841, %1828
  %1843 = fmul fast float %1841, %1829
  %1844 = fmul fast float %1841, %1752
  %1845 = fmul fast float %1839, %1839
  %1846 = fsub fast float 1.000000e+00, %1845
  %1847 = fmul fast float %1836, 0x40005F8BE0000000
  %1848 = fsub fast float 0x400C5BF8A0000000, %1847
  %1849 = fdiv fast float %1837, %1848
  %1850 = fmul fast float %1849, 0x3FEE31C3C0000000
  %1851 = fmul fast float %1850, %1846
  %1852 = fmul fast float %1836, 0x3FDACB7480000000
  %1853 = fadd fast float %1852, 0xBFD7347680000000
  %1854 = fmul fast float %1853, %1849
  %1855 = fmul fast float %1854, %1846
  br label %1856

; <label>:1856                                    ; preds = %1827, %1799
  %1857 = phi float [ %1842, %1827 ], [ 0.000000e+00, %1799 ]
  %1858 = phi float [ %1843, %1827 ], [ 0.000000e+00, %1799 ]
  %1859 = phi float [ %1844, %1827 ], [ 0.000000e+00, %1799 ]
  %1860 = phi float [ %1851, %1827 ], [ 0.000000e+00, %1799 ]
  %1861 = phi float [ %1855, %1827 ], [ 0.000000e+00, %1799 ]
  %1862 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1858, float %1859, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1863 = fmul fast float %1862, 0x3FDF454380000000
  %1864 = fmul fast float %1862, %1862
  %1865 = fmul fast float %1864, 0x3FEE471020000000
  %1866 = fadd fast float %1865, 0xBFD42F6020000000
  %1867 = fmul fast float %1822, 0x3FD20DD760000000
  %1868 = fmul fast float %1866, %1861
  %1869 = fadd fast float %1868, %1867
  %1870 = fmul fast float %1863, %1860
  %1871 = fadd fast float %1869, %1870
  %1872 = fsub fast float %1869, %1870
  %1873 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1858, float %1859, float %482, float %483, float %484)  ; Dot3(ax,ay,az,bx,by,bz)
  %1874 = fmul fast float %1873, 0x3FDF454380000000
  %1875 = fmul fast float %1873, %1873
  %1876 = fmul fast float %1875, 0x3FEE471020000000
  %1877 = fadd fast float %1876, 0xBFD42F6020000000
  %1878 = call float @dx.op.dot3.f32(i32 55, float %1822, float %1860, float %1861, float 0x3FD20DD760000000, float %1874, float %1877)  ; Dot3(ax,ay,az,bx,by,bz)
  %1879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1737)  ; FMax(a,b)
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1758, float %1761, float %1764, float %1758, float %1761, float %1764)  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = fcmp fast oeq float %1880, 0.000000e+00
  %1882 = fcmp fast oeq float %1879, 0.000000e+00
  %1883 = or i1 %1882, %1881
  br i1 %1883, label %1913, label %1884

; <label>:1884                                    ; preds = %1856
  %1885 = fsub fast float -0.000000e+00, %1764
  %1886 = fsub fast float -0.000000e+00, %1758
  %1887 = call float @dx.op.unary.f32(i32 24, float %1880)  ; Sqrt(value)
  %1888 = fdiv fast float %1887, %1879
  %1889 = fcmp fast ogt float %1888, 0x3FFB6F8900000000
  %1890 = select i1 %1889, float 0x3FFB6F8900000000, float %1888
  %1891 = fmul fast float %1890, 0x3FE8A23460000000
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = call float @dx.op.binary.f32(i32 35, float %1890, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1894 = fmul fast float %1892, %1879
  %1895 = fmul fast float %1893, 0x3FF279A740000000
  %1896 = fadd fast float %1895, -1.000000e+00
  %1897 = call float @dx.op.dot3.f32(i32 55, float %1885, float %1886, float %1761, float %1885, float %1886, float %1761)  ; Dot3(ax,ay,az,bx,by,bz)
  %1898 = call float @dx.op.unary.f32(i32 25, float %1897)  ; Rsqrt(value)
  %1899 = fmul fast float %1898, %1885
  %1900 = fmul fast float %1898, %1886
  %1901 = fmul fast float %1898, %1761
  %1902 = fmul fast float %1896, %1896
  %1903 = fsub fast float 1.000000e+00, %1902
  %1904 = fmul fast float %1893, 0x40005F8BE0000000
  %1905 = fsub fast float 0x400C5BF8A0000000, %1904
  %1906 = fdiv fast float %1894, %1905
  %1907 = fmul fast float %1906, 0x3FEE31C3C0000000
  %1908 = fmul fast float %1907, %1903
  %1909 = fmul fast float %1893, 0x3FDACB7480000000
  %1910 = fadd fast float %1909, 0xBFD7347680000000
  %1911 = fmul fast float %1910, %1906
  %1912 = fmul fast float %1911, %1903
  br label %1913

; <label>:1913                                    ; preds = %1884, %1856
  %1914 = phi float [ %1899, %1884 ], [ 0.000000e+00, %1856 ]
  %1915 = phi float [ %1900, %1884 ], [ 0.000000e+00, %1856 ]
  %1916 = phi float [ %1901, %1884 ], [ 0.000000e+00, %1856 ]
  %1917 = phi float [ %1908, %1884 ], [ 0.000000e+00, %1856 ]
  %1918 = phi float [ %1912, %1884 ], [ 0.000000e+00, %1856 ]
  %1919 = call float @dx.op.dot3.f32(i32 55, float %1914, float %1915, float %1916, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1920 = fmul fast float %1919, 0x3FDF454380000000
  %1921 = fmul fast float %1919, %1919
  %1922 = fmul fast float %1921, 0x3FEE471020000000
  %1923 = fadd fast float %1922, 0xBFD42F6020000000
  %1924 = fmul fast float %1879, 0x3FD20DD760000000
  %1925 = fmul fast float %1923, %1918
  %1926 = fadd fast float %1925, %1924
  %1927 = fmul fast float %1920, %1917
  %1928 = fadd fast float %1926, %1927
  %1929 = fsub fast float %1926, %1927
  %1930 = call float @dx.op.dot3.f32(i32 55, float %1914, float %1915, float %1916, float %482, float %483, float %484)  ; Dot3(ax,ay,az,bx,by,bz)
  %1931 = fmul fast float %1930, 0x3FDF454380000000
  %1932 = fmul fast float %1930, %1930
  %1933 = fmul fast float %1932, 0x3FEE471020000000
  %1934 = fadd fast float %1933, 0xBFD42F6020000000
  %1935 = call float @dx.op.dot3.f32(i32 55, float %1879, float %1917, float %1918, float 0x3FD20DD760000000, float %1931, float %1934)  ; Dot3(ax,ay,az,bx,by,bz)
  %1936 = call float @dx.op.binary.f32(i32 35, float %1814, float 0.000000e+00)  ; FMax(a,b)
  %1937 = call float @dx.op.binary.f32(i32 35, float %1871, float 0.000000e+00)  ; FMax(a,b)
  %1938 = call float @dx.op.binary.f32(i32 35, float %1928, float 0.000000e+00)  ; FMax(a,b)
  %1939 = call float @dx.op.binary.f32(i32 35, float %1815, float 0.000000e+00)  ; FMax(a,b)
  %1940 = call float @dx.op.binary.f32(i32 35, float %1872, float 0.000000e+00)  ; FMax(a,b)
  %1941 = call float @dx.op.binary.f32(i32 35, float %1929, float 0.000000e+00)  ; FMax(a,b)
  %1942 = call float @dx.op.binary.f32(i32 35, float %1821, float 0.000000e+00)  ; FMax(a,b)
  %1943 = call float @dx.op.binary.f32(i32 35, float %1878, float 0.000000e+00)  ; FMax(a,b)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1935, float 0.000000e+00)  ; FMax(a,b)
  %1945 = fsub fast float %1135, %1936
  %1946 = fsub fast float %1136, %1937
  %1947 = fsub fast float %1137, %1938
  %1948 = fmul fast float %1945, %530
  %1949 = fmul fast float %1946, %530
  %1950 = fmul fast float %1947, %530
  %1951 = fadd fast float %1948, %1936
  %1952 = fadd fast float %1949, %1937
  %1953 = fadd fast float %1950, %1938
  %1954 = fsub fast float %1132, %1939
  %1955 = fsub fast float %1133, %1940
  %1956 = fsub fast float %1134, %1941
  %1957 = fmul fast float %1954, %530
  %1958 = fmul fast float %1955, %530
  %1959 = fmul fast float %1956, %530
  %1960 = fadd fast float %1957, %1939
  %1961 = fadd fast float %1958, %1940
  %1962 = fadd fast float %1959, %1941
  %1963 = fsub fast float %1129, %1942
  %1964 = fsub fast float %1130, %1943
  %1965 = fsub fast float %1131, %1944
  %1966 = fmul fast float %1963, %530
  %1967 = fmul fast float %1964, %530
  %1968 = fmul fast float %1965, %530
  %1969 = fadd fast float %1966, %1942
  %1970 = fadd fast float %1967, %1943
  %1971 = fadd fast float %1968, %1944
  br label %1972

; <label>:1972                                    ; preds = %1913, %1128
  %1973 = phi float [ %1969, %1913 ], [ %1129, %1128 ]
  %1974 = phi float [ %1970, %1913 ], [ %1130, %1128 ]
  %1975 = phi float [ %1971, %1913 ], [ %1131, %1128 ]
  %1976 = phi float [ %1960, %1913 ], [ %1132, %1128 ]
  %1977 = phi float [ %1961, %1913 ], [ %1133, %1128 ]
  %1978 = phi float [ %1962, %1913 ], [ %1134, %1128 ]
  %1979 = phi float [ %1951, %1913 ], [ %1135, %1128 ]
  %1980 = phi float [ %1952, %1913 ], [ %1136, %1128 ]
  %1981 = phi float [ %1953, %1913 ], [ %1137, %1128 ]
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 0
  %1984 = call float @dx.op.binary.f32(i32 36, float %447, float %1983)  ; FMin(a,b)
  %1985 = fsub fast float 1.000000e+00, %485
  %1986 = fmul fast float %1984, %1985
  %1987 = fsub fast float 1.000000e+00, %1986
  %1988 = bitcast float %1987 to i32
  %1989 = sub nsw i32 2129859010, %1988
  %1990 = bitcast i32 %1989 to float
  %1991 = call float @dx.op.binary.f32(i32 36, float %448, float %1983)  ; FMin(a,b)
  %1992 = fmul fast float %1991, %1985
  %1993 = fsub fast float 1.000000e+00, %1992
  %1994 = bitcast float %1993 to i32
  %1995 = sub nsw i32 2129859010, %1994
  %1996 = bitcast i32 %1995 to float
  %1997 = call float @dx.op.binary.f32(i32 36, float %449, float %1983)  ; FMin(a,b)
  %1998 = fmul fast float %1997, %1985
  %1999 = fsub fast float 1.000000e+00, %1998
  %2000 = bitcast float %1999 to i32
  %2001 = sub nsw i32 2129859010, %2000
  %2002 = bitcast i32 %2001 to float
  %2003 = fmul fast float %1979, %485
  %2004 = fmul fast float %2003, %1990
  %2005 = fmul fast float %1980, %485
  %2006 = fmul fast float %2005, %1996
  %2007 = fmul fast float %1981, %485
  %2008 = fmul fast float %2007, %2002
  %2009 = call float @dx.op.binary.f32(i32 36, float %456, float %1983)  ; FMin(a,b)
  %2010 = fmul fast float %2009, %1985
  %2011 = fsub fast float 1.000000e+00, %2010
  %2012 = bitcast float %2011 to i32
  %2013 = sub nsw i32 2129859010, %2012
  %2014 = bitcast i32 %2013 to float
  %2015 = call float @dx.op.binary.f32(i32 36, float %457, float %1983)  ; FMin(a,b)
  %2016 = fmul fast float %2015, %1985
  %2017 = fsub fast float 1.000000e+00, %2016
  %2018 = bitcast float %2017 to i32
  %2019 = sub nsw i32 2129859010, %2018
  %2020 = bitcast i32 %2019 to float
  %2021 = call float @dx.op.binary.f32(i32 36, float %474, float %1983)  ; FMin(a,b)
  %2022 = fmul fast float %2021, %1985
  %2023 = fsub fast float 1.000000e+00, %2022
  %2024 = bitcast float %2023 to i32
  %2025 = sub nsw i32 2129859010, %2024
  %2026 = bitcast i32 %2025 to float
  %2027 = fmul fast float %1973, %485
  %2028 = fmul fast float %2027, %2014
  %2029 = fmul fast float %1974, %485
  %2030 = fmul fast float %2029, %2020
  %2031 = fmul fast float %1975, %485
  %2032 = fmul fast float %2031, %2026
  %2033 = call float @dx.op.dot3.f32(i32 55, float %2004, float %2006, float %2008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2034 = select i1 %125, float 0.000000e+00, float %2004
  %2035 = select i1 %125, float %2033, float %2006
  %2036 = select i1 %125, float 0.000000e+00, float %2008
  %2037 = call float @dx.op.dot3.f32(i32 55, float %1976, float %1977, float %1978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2038 = select i1 %125, float 0.000000e+00, float %1976
  %2039 = select i1 %125, float %2037, float %1977
  %2040 = select i1 %125, float 0.000000e+00, float %1978
  %2041 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2030, float %2032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2042 = select i1 %125, float 0.000000e+00, float %2028
  %2043 = select i1 %125, float %2041, float %2030
  %2044 = select i1 %125, float 0.000000e+00, float %2032
  %2045 = fmul fast float %476, 9.843750e-01
  %2046 = fmul fast float %268, 9.843750e-01
  %2047 = fadd fast float %2045, 7.812500e-03
  %2048 = fadd fast float %2046, 7.812500e-03
  %2049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2047, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 2
  %2051 = extractvalue %dx.types.ResRet.f32 %2049, 3
  %2052 = fmul fast float %2050, %456
  %2053 = fmul fast float %2050, %457
  %2054 = fmul fast float %2050, %474
  %2055 = fadd fast float %2052, %2051
  %2056 = fadd fast float %2053, %2051
  %2057 = fadd fast float %2054, %2051
  %2058 = call float @dx.op.binary.f32(i32 35, float %2056, float %2057)  ; FMax(a,b)
  %2059 = call float @dx.op.binary.f32(i32 35, float %2055, float %2058)  ; FMax(a,b)
  %2060 = fsub fast float 1.000000e+00, %2059
  %2061 = fmul fast float %2055, %2042
  %2062 = fmul fast float %2056, %2043
  %2063 = fmul fast float %2057, %2044
  %2064 = fmul fast float %2038, %275
  %2065 = fmul fast float %2039, %276
  %2066 = fmul fast float %2040, %277
  %2067 = fadd fast float %2064, %2034
  %2068 = fmul fast float %2067, %2060
  %2069 = fadd fast float %2065, %2035
  %2070 = fmul fast float %2069, %2060
  %2071 = fadd fast float %2066, %2036
  %2072 = fmul fast float %2071, %2060
  %2073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2074 = extractvalue %dx.types.CBufRet.f32 %2073, 3
  %2075 = fcmp fast oeq float %2074, 0.000000e+00
  br i1 %2075, label %3015, label %2076

; <label>:2076                                    ; preds = %1972
  %2077 = extractvalue %dx.types.CBufRet.f32 %2073, 0
  %2078 = extractvalue %dx.types.CBufRet.f32 %2073, 1
  %2079 = extractvalue %dx.types.CBufRet.f32 %2073, 2
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.CBufRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.CBufRet.f32 %2080, 2
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.CBufRet.f32 %2084, 1
  %2087 = call float @dx.op.dot3.f32(i32 55, float %2081, float %2082, float %2083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2088 = select i1 %125, float %2085, float %2081
  %2089 = select i1 %125, float %2087, float %2082
  %2090 = select i1 %125, float %2086, float %2083
  %2091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2091, 2
  %2093 = fmul fast float %2092, %256
  %2094 = fmul fast float %2092, %257
  %2095 = fmul fast float %2092, %258
  %2096 = fadd fast float %2093, %333
  %2097 = fadd fast float %2094, %334
  %2098 = fadd fast float %2095, %335
  %2099 = fcmp fast olt float %2074, 0.000000e+00
  br i1 %2099, label %2721, label %2100

; <label>:2100                                    ; preds = %2076
  %2101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2102 = extractvalue %dx.types.CBufRet.f32 %2101, 0
  %2103 = extractvalue %dx.types.CBufRet.f32 %2101, 1
  %2104 = extractvalue %dx.types.CBufRet.f32 %2101, 2
  %2105 = extractvalue %dx.types.CBufRet.f32 %2101, 3
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2110 = extractvalue %dx.types.CBufRet.f32 %2106, 3
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.CBufRet.f32 %2111, 2
  %2115 = extractvalue %dx.types.CBufRet.f32 %2111, 3
  %2116 = fmul fast float %2102, %2096
  %2117 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2103, float %2116)  ; FMad(a,b,c)
  %2118 = call float @dx.op.tertiary.f32(i32 46, float %2098, float %2104, float %2117)  ; FMad(a,b,c)
  %2119 = fadd fast float %2118, %2105
  %2120 = fmul fast float %2107, %2096
  %2121 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2108, float %2120)  ; FMad(a,b,c)
  %2122 = call float @dx.op.tertiary.f32(i32 46, float %2098, float %2109, float %2121)  ; FMad(a,b,c)
  %2123 = fadd fast float %2122, %2110
  %2124 = fmul fast float %2112, %2096
  %2125 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2113, float %2124)  ; FMad(a,b,c)
  %2126 = call float @dx.op.tertiary.f32(i32 46, float %2098, float %2114, float %2125)  ; FMad(a,b,c)
  %2127 = fadd fast float %2126, %2115
  %2128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.f32 %2128, 0
  %2130 = extractvalue %dx.types.CBufRet.f32 %2128, 1
  %2131 = extractvalue %dx.types.CBufRet.f32 %2128, 3
  %2132 = fmul fast float %2131, %2119
  %2133 = fmul fast float %2131, %2123
  %2134 = fadd fast float %2132, %2129
  %2135 = fadd fast float %2133, %2130
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.CBufRet.f32 %2136, 1
  %2139 = extractvalue %dx.types.CBufRet.f32 %2136, 3
  %2140 = fmul fast float %2139, %2119
  %2141 = fmul fast float %2139, %2123
  %2142 = fadd fast float %2140, %2137
  %2143 = fadd fast float %2141, %2138
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 1
  %2146 = fsub fast float %2145, %2127
  %2147 = extractvalue %dx.types.CBufRet.f32 %2144, 2
  %2148 = fmul fast float %2146, %2147
  %2149 = fsub fast float 1.000000e+00, %2148
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2136, 2
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 2
  %2154 = fadd fast float %2153, %2151
  %2155 = fcmp fast ogt float %2154, 0.000000e+00
  br i1 %2155, label %2156, label %2180

; <label>:2156                                    ; preds = %2100
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.CBufRet.f32 %2157, 1
  %2160 = fsub fast float %2142, %2158
  %2161 = fsub fast float %2143, %2159
  %2162 = fcmp fast olt float %2160, 0.000000e+00
  %2163 = fcmp fast olt float %2161, 0.000000e+00
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.CBufRet.f32 %2164, 1
  %2167 = extractvalue %dx.types.CBufRet.f32 %2164, 2
  %2168 = extractvalue %dx.types.CBufRet.f32 %2164, 3
  %2169 = select i1 %2162, float %2165, float %2167
  %2170 = select i1 %2163, float %2166, float %2168
  %2171 = fmul fast float %2169, %2160
  %2172 = fmul fast float %2170, %2161
  %2173 = call float @dx.op.unary.f32(i32 6, float %2171)  ; FAbs(value)
  %2174 = call float @dx.op.unary.f32(i32 6, float %2172)  ; FAbs(value)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2091, 0
  %2176 = call float @dx.op.binary.f32(i32 35, float %2173, float %2174)  ; FMax(a,b)
  %2177 = fsub fast float %2175, %2176
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = fmul fast float %2178, %2150
  br label %2180

; <label>:2180                                    ; preds = %2156, %2100
  %2181 = phi float [ %2179, %2156 ], [ 0.000000e+00, %2100 ]
  %2182 = extractvalue %dx.types.CBufRet.f32 %2128, 2
  %2183 = extractvalue %dx.types.CBufRet.f32 %2152, 1
  %2184 = fadd fast float %2183, %2182
  %2185 = fcmp fast ogt float %2184, 0.000000e+00
  %2186 = extractvalue %dx.types.CBufRet.f32 %2091, 0
  br i1 %2185, label %2187, label %2210

; <label>:2187                                    ; preds = %2180
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2191 = fsub fast float %2134, %2189
  %2192 = fsub fast float %2135, %2190
  %2193 = fcmp fast olt float %2191, 0.000000e+00
  %2194 = fcmp fast olt float %2192, 0.000000e+00
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2198 = extractvalue %dx.types.CBufRet.f32 %2195, 2
  %2199 = extractvalue %dx.types.CBufRet.f32 %2195, 3
  %2200 = select i1 %2193, float %2196, float %2198
  %2201 = select i1 %2194, float %2197, float %2199
  %2202 = fmul fast float %2200, %2191
  %2203 = fmul fast float %2201, %2192
  %2204 = call float @dx.op.unary.f32(i32 6, float %2202)  ; FAbs(value)
  %2205 = call float @dx.op.unary.f32(i32 6, float %2203)  ; FAbs(value)
  %2206 = call float @dx.op.binary.f32(i32 35, float %2204, float %2205)  ; FMax(a,b)
  %2207 = fsub fast float %2186, %2206
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fmul fast float %2208, %2150
  br label %2210

; <label>:2210                                    ; preds = %2187, %2180
  %2211 = phi float [ %2209, %2187 ], [ 0.000000e+00, %2180 ]
  %2212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2212, 1
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 0
  %2217 = extractvalue %dx.types.CBufRet.f32 %2215, 1
  %2218 = fsub fast float %2119, %2216
  %2219 = fsub fast float %2123, %2217
  %2220 = fcmp fast olt float %2218, 0.000000e+00
  %2221 = fcmp fast olt float %2219, 0.000000e+00
  %2222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.CBufRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.CBufRet.f32 %2222, 2
  %2226 = extractvalue %dx.types.CBufRet.f32 %2222, 3
  %2227 = select i1 %2220, float %2223, float %2225
  %2228 = select i1 %2221, float %2224, float %2226
  %2229 = fmul fast float %2227, %2218
  %2230 = fmul fast float %2228, %2219
  %2231 = call float @dx.op.unary.f32(i32 6, float %2229)  ; FAbs(value)
  %2232 = call float @dx.op.unary.f32(i32 6, float %2230)  ; FAbs(value)
  %2233 = call float @dx.op.binary.f32(i32 35, float %2231, float %2232)  ; FMax(a,b)
  %2234 = fsub fast float %2186, %2233
  %2235 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2236 = call float @dx.op.binary.f32(i32 36, float %2235, float %2214)  ; FMin(a,b)
  %2237 = fmul fast float %2236, %2150
  %2238 = fsub fast float %2211, %2237
  %2239 = fsub fast float %2181, %2211
  %2240 = fsub fast float %2239, %2237
  %2241 = call float @dx.op.binary.f32(i32 35, float %2211, float %2181)  ; FMax(a,b)
  %2242 = call float @dx.op.binary.f32(i32 35, float %2237, float %2241)  ; FMax(a,b)
  %2243 = fcmp fast olt float %2242, 1.000000e+00
  br i1 %2243, label %2244, label %2642, !dx.controlflow.hints !92

; <label>:2244                                    ; preds = %2210
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2247 = fcmp fast une float %2246, 0.000000e+00
  br i1 %2247, label %2248, label %2642, !dx.controlflow.hints !93

; <label>:2248                                    ; preds = %2244
  %2249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2249, 0
  %2251 = extractvalue %dx.types.CBufRet.f32 %2249, 1
  %2252 = extractvalue %dx.types.CBufRet.f32 %2249, 2
  %2253 = extractvalue %dx.types.CBufRet.f32 %2249, 3
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 0
  %2256 = extractvalue %dx.types.CBufRet.f32 %2254, 1
  %2257 = extractvalue %dx.types.CBufRet.f32 %2254, 2
  %2258 = extractvalue %dx.types.CBufRet.f32 %2254, 3
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2263 = extractvalue %dx.types.CBufRet.f32 %2259, 3
  %2264 = fmul fast float %2250, %2096
  %2265 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2251, float %2264)  ; FMad(a,b,c)
  %2266 = call float @dx.op.tertiary.f32(i32 46, float %2098, float %2252, float %2265)  ; FMad(a,b,c)
  %2267 = fadd fast float %2266, %2253
  %2268 = fmul fast float %2255, %2096
  %2269 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2256, float %2268)  ; FMad(a,b,c)
  %2270 = call float @dx.op.tertiary.f32(i32 46, float %2098, float %2257, float %2269)  ; FMad(a,b,c)
  %2271 = fadd fast float %2270, %2258
  %2272 = fmul fast float %2260, %2096
  %2273 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2261, float %2272)  ; FMad(a,b,c)
  %2274 = call float @dx.op.tertiary.f32(i32 46, float %2098, float %2262, float %2273)  ; FMad(a,b,c)
  %2275 = fadd fast float %2274, %2263
  %2276 = fcmp fast oge float %2267, 1.000000e+00
  %2277 = fcmp fast oge float %2271, 1.000000e+00
  %2278 = or i1 %2276, %2277
  %2279 = fcmp fast olt float %2267, 0.000000e+00
  %2280 = fcmp fast olt float %2271, 0.000000e+00
  %2281 = or i1 %2279, %2280
  %2282 = or i1 %2278, %2281
  br i1 %2282, label %2642, label %2283, !dx.controlflow.hints !94

; <label>:2283                                    ; preds = %2248
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.i32 %2288, 2
  %2290 = uitofp i32 %2289 to float
  %2291 = extractvalue %dx.types.CBufRet.i32 %2288, 3
  %2292 = uitofp i32 %2291 to float
  %2293 = extractvalue %dx.types.CBufRet.f32 %2284, 3
  %2294 = fmul fast float %2293, 2.000000e+00
  %2295 = fsub fast float %2267, %2285
  %2296 = fsub fast float %2271, %2286
  %2297 = fmul fast float %2294, %2295
  %2298 = fmul fast float %2294, %2296
  %2299 = fdiv fast float 1.000000e+00, %2079
  %2300 = fmul fast float %2298, %2299
  %2301 = call float @dx.op.unary.f32(i32 6, float %2300)  ; FAbs(value)
  %2302 = fmul fast float %2287, %2098
  %2303 = fmul fast float %2302, %2294
  %2304 = call float @dx.op.unary.f32(i32 6, float %2303)  ; FAbs(value)
  %2305 = call float @dx.op.unary.f32(i32 6, float %2297)  ; FAbs(value)
  %2306 = call float @dx.op.binary.f32(i32 35, float %2304, float %2301)  ; FMax(a,b)
  %2307 = call float @dx.op.binary.f32(i32 35, float %2305, float %2306)  ; FMax(a,b)
  %2308 = fmul fast float %2307, 2.000000e+00
  %2309 = call float @dx.op.unary.f32(i32 23, float %2308)  ; Log(value)
  %2310 = call float @dx.op.binary.f32(i32 35, float %2309, float %2290)  ; FMax(a,b)
  %2311 = call float @dx.op.unary.f32(i32 22, float %2310)  ; Frc(value)
  %2312 = fadd fast float %2311, 0xBFEA666660000000
  %2313 = fmul fast float %2312, 8.000000e+00
  %2314 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2315 = call float @dx.op.unary.f32(i32 27, float %2310)  ; Round_ni(value)
  %2316 = fadd fast float %2315, %2314
  %2317 = call float @dx.op.binary.f32(i32 36, float %2316, float %2292)  ; FMin(a,b)
  %2318 = call float @dx.op.unary.f32(i32 27, float %2317)  ; Round_ni(value)
  %2319 = fsub fast float -0.000000e+00, %2318
  %2320 = call float @dx.op.unary.f32(i32 21, float %2319)  ; Exp(value)
  %2321 = fmul fast float %2320, %2294
  %2322 = fmul fast float %2321, %2267
  %2323 = fmul fast float %2321, %2271
  %2324 = fmul fast float %2322, 2.500000e-01
  %2325 = fmul fast float %2323, 2.500000e-01
  %2326 = fadd fast float %2324, 5.000000e-01
  %2327 = fadd fast float %2325, 5.000000e-01
  %2328 = fsub fast float %2292, %2290
  %2329 = fptoui float %2328 to i32
  %2330 = add i32 %2329, 320
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %2330)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 0
  %2333 = extractvalue %dx.types.CBufRet.f32 %2331, 1
  %2334 = fcmp fast une float %2317, %2292
  %2335 = fsub fast float %2267, %2332
  %2336 = fsub fast float %2271, %2333
  %2337 = call float @dx.op.unary.f32(i32 6, float %2335)  ; FAbs(value)
  %2338 = call float @dx.op.unary.f32(i32 6, float %2336)  ; FAbs(value)
  %2339 = fmul fast float %2337, %2321
  %2340 = fmul fast float %2338, %2321
  %2341 = fcmp fast olt float %2339, 1.000000e+00
  %2342 = fcmp fast olt float %2340, 1.000000e+00
  %2343 = and i1 %2341, %2342
  %2344 = or i1 %2334, %2343
  br i1 %2344, label %2345, label %2642, !dx.controlflow.hints !95

; <label>:2345                                    ; preds = %2283
  %2346 = fmul fast float %2323, 5.000000e-01
  %2347 = fmul fast float %2322, 5.000000e-01
  %2348 = fadd fast float %2346, 5.000000e-01
  %2349 = fadd fast float %2347, 5.000000e-01
  %2350 = sitofp i32 %2289 to float
  %2351 = fsub fast float %2317, %2350
  %2352 = call float @dx.op.unary.f32(i32 27, float %2351)  ; Round_ni(value)
  %2353 = call float @dx.op.unary.f32(i32 22, float %2317)  ; Frc(value)
  %2354 = call float @dx.op.unary.f32(i32 22, float %2349)  ; Frc(value)
  %2355 = call float @dx.op.unary.f32(i32 22, float %2348)  ; Frc(value)
  %2356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2354, float %2355, float %2352, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2357 = extractvalue %dx.types.ResRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.ResRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.ResRet.f32 %2356, 2
  %2360 = extractvalue %dx.types.ResRet.f32 %2356, 3
  %2361 = fcmp fast ogt float %2353, 0.000000e+00
  br i1 %2361, label %2362, label %2383, !dx.controlflow.hints !96

; <label>:2362                                    ; preds = %2345
  %2363 = fadd fast float %2352, 1.000000e+00
  %2364 = call float @dx.op.unary.f32(i32 22, float %2326)  ; Frc(value)
  %2365 = call float @dx.op.unary.f32(i32 22, float %2327)  ; Frc(value)
  %2366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2364, float %2365, float %2363, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2367 = extractvalue %dx.types.ResRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.ResRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.ResRet.f32 %2366, 2
  %2370 = extractvalue %dx.types.ResRet.f32 %2366, 3
  %2371 = fsub fast float %2367, %2357
  %2372 = fsub fast float %2368, %2358
  %2373 = fsub fast float %2369, %2359
  %2374 = fsub fast float %2370, %2360
  %2375 = fmul fast float %2371, %2353
  %2376 = fmul fast float %2372, %2353
  %2377 = fmul fast float %2373, %2353
  %2378 = fmul fast float %2374, %2353
  %2379 = fadd fast float %2375, %2357
  %2380 = fadd fast float %2376, %2358
  %2381 = fadd fast float %2377, %2359
  %2382 = fadd fast float %2378, %2360
  br label %2383

; <label>:2383                                    ; preds = %2362, %2345
  %2384 = phi float [ %2379, %2362 ], [ %2357, %2345 ]
  %2385 = phi float [ %2380, %2362 ], [ %2358, %2345 ]
  %2386 = phi float [ %2381, %2362 ], [ %2359, %2345 ]
  %2387 = phi float [ %2382, %2362 ], [ %2360, %2345 ]
  %2388 = fadd fast float %2384, -5.000000e-01
  %2389 = fadd fast float %2386, -5.000000e-01
  %2390 = fmul fast float %2388, 0xBFD5555560000000
  %2391 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2389, float %2390)  ; FMad(a,b,c)
  %2392 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2385, float 0.000000e+00)  ; FMad(a,b,c)
  %2393 = fadd fast float %2392, %2387
  %2394 = fmul fast float %2388, -7.500000e-01
  %2395 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2389, float %2394)  ; FMad(a,b,c)
  %2396 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2385, float 0.000000e+00)  ; FMad(a,b,c)
  %2397 = fadd fast float %2396, %2387
  %2398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2399 = extractvalue %dx.types.CBufRet.f32 %2398, 0
  %2400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.f32 %2400, 0
  %2402 = extractvalue %dx.types.CBufRet.f32 %2400, 1
  %2403 = extractvalue %dx.types.CBufRet.f32 %2400, 2
  %2404 = extractvalue %dx.types.CBufRet.f32 %2400, 3
  %2405 = fsub fast float %2401, %2391
  %2406 = fsub fast float %2402, %2393
  %2407 = fsub fast float %2403, %2395
  %2408 = fsub fast float %2404, %2397
  %2409 = fmul fast float %2405, %2399
  %2410 = fmul fast float %2406, %2399
  %2411 = fmul fast float %2407, %2399
  %2412 = fmul fast float %2408, %2399
  %2413 = fadd fast float %2409, %2391
  %2414 = fadd fast float %2410, %2393
  %2415 = fadd fast float %2411, %2395
  %2416 = fadd fast float %2412, %2397
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, 536870911
  %2420 = uitofp i32 %2419 to float
  %2421 = fmul fast float %2420, %2267
  %2422 = fmul fast float %2420, %2271
  %2423 = fptoui float %2421 to i32
  %2424 = fptoui float %2422 to i32
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 31
  %2428 = lshr i32 %2423, %2427
  %2429 = lshr i32 %2424, %2427
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = and i32 %2431, 31
  %2433 = shl i32 1, %2432
  %2434 = call i32 @dx.op.binary.i32(i32 40, i32 %2433, i32 4)  ; UMin(a,b)
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = extractvalue %dx.types.ResRet.i32 %2435, 1
  %2438 = icmp eq i32 %2434, 0
  br i1 %2438, label %2480, label %2439

; <label>:2439                                    ; preds = %2383
  br label %2440

; <label>:2440                                    ; preds = %2468, %2439
  %2441 = phi i32 [ %2471, %2468 ], [ 0, %2439 ]
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = lshr i32 %2443, 16
  %2445 = and i32 %2444, 31
  %2446 = shl i32 %2429, %2445
  %2447 = add i32 %2446, %2428
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %2449, 31
  %2451 = shl i32 %2447, %2450
  %2452 = add i32 %2451, %2441
  %2453 = shl i32 %2452, 2
  %2454 = add i32 %2453, 32
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = icmp slt i32 %2456, 0
  %2458 = getelementptr [12 x float], [12 x float]* %62, i32 0, i32 %2441
  %2459 = getelementptr [12 x float], [12 x float]* %63, i32 0, i32 %2441
  %2460 = bitcast float* %2458 to i32*
  %2461 = bitcast float* %2459 to i32*
  br i1 %2457, label %2462, label %2468

; <label>:2462                                    ; preds = %2440
  %2463 = and i32 %2456, 1073741823
  %2464 = add nuw nsw i32 %2463, 20
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = extractvalue %dx.types.ResRet.i32 %2465, 1
  br label %2468

; <label>:2468                                    ; preds = %2462, %2440
  %2469 = phi i32 [ %2466, %2462 ], [ %2436, %2440 ]
  %2470 = phi i32 [ %2467, %2462 ], [ %2437, %2440 ]
  store i32 %2469, i32* %2460, align 4
  store i32 %2470, i32* %2461, align 4
  %2471 = add nuw i32 %2441, 1
  %2472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2473 = extractvalue %dx.types.CBufRet.i32 %2472, 2
  %2474 = icmp eq i32 %2473, 0
  %2475 = icmp ugt i32 %2456, -1073741825
  %2476 = and i1 %2475, %2474
  %2477 = icmp ult i32 %2471, %2434
  %2478 = and i1 %2476, %2477
  br i1 %2478, label %2440, label %2479

; <label>:2479                                    ; preds = %2468
  br label %2480

; <label>:2480                                    ; preds = %2479, %2383
  %2481 = phi i32 [ 0, %2383 ], [ %2471, %2479 ]
  %2482 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2483 = fptoui float %2482 to i32
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2536, label %2485

; <label>:2485                                    ; preds = %2480
  br label %2486

; <label>:2486                                    ; preds = %2531, %2485
  %2487 = phi i32 [ %2532, %2531 ], [ %2481, %2485 ]
  %2488 = phi i32 [ %2533, %2531 ], [ 0, %2485 ]
  %2489 = lshr i32 %2488, 2
  %2490 = and i32 %2488, 3
  %2491 = add nuw nsw i32 %2489, 83
  %2492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 %2491)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.i32 %2492, 0
  %2494 = extractvalue %dx.types.CBufRet.i32 %2492, 1
  %2495 = extractvalue %dx.types.CBufRet.i32 %2492, 2
  %2496 = extractvalue %dx.types.CBufRet.i32 %2492, 3
  %2497 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 0
  store i32 %2493, i32* %2497, align 4
  %2498 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 1
  store i32 %2494, i32* %2498, align 4
  %2499 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 2
  store i32 %2495, i32* %2499, align 4
  %2500 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 3
  store i32 %2496, i32* %2500, align 4
  %2501 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 %2490
  %2502 = load i32, i32* %2501, align 4, !tbaa !97, !noalias !101
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = lshr i32 %2504, 16
  %2506 = and i32 %2505, 31
  %2507 = shl i32 %2429, %2506
  %2508 = add i32 %2507, %2428
  %2509 = shl i32 %2508, 2
  %2510 = add i32 %2509, %2502
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2531, label %2514

; <label>:2514                                    ; preds = %2486
  %2515 = icmp slt i32 %2512, 0
  %2516 = getelementptr [12 x float], [12 x float]* %62, i32 0, i32 %2487
  %2517 = getelementptr [12 x float], [12 x float]* %63, i32 0, i32 %2487
  %2518 = bitcast float* %2516 to i32*
  %2519 = bitcast float* %2517 to i32*
  br i1 %2515, label %2520, label %2527

; <label>:2520                                    ; preds = %2514
  %2521 = and i32 %2512, 1073741823
  %2522 = add i32 %2502, 20
  %2523 = add i32 %2522, %2521
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = extractvalue %dx.types.ResRet.i32 %2524, 1
  br label %2527

; <label>:2527                                    ; preds = %2520, %2514
  %2528 = phi i32 [ %2525, %2520 ], [ %2436, %2514 ]
  %2529 = phi i32 [ %2526, %2520 ], [ %2437, %2514 ]
  store i32 %2528, i32* %2518, align 4
  store i32 %2529, i32* %2519, align 4
  %2530 = add i32 %2487, 1
  br label %2531

; <label>:2531                                    ; preds = %2527, %2486
  %2532 = phi i32 [ %2487, %2486 ], [ %2530, %2527 ]
  %2533 = add nuw i32 %2488, 1
  %2534 = icmp eq i32 %2533, %2483
  br i1 %2534, label %2535, label %2486

; <label>:2535                                    ; preds = %2531
  br label %2536

; <label>:2536                                    ; preds = %2535, %2480
  %2537 = phi i32 [ %2481, %2480 ], [ %2532, %2535 ]
  %2538 = icmp eq i32 %2537, 1
  %2539 = getelementptr [12 x float], [12 x float]* %62, i32 0, i32 0
  %2540 = getelementptr [12 x float], [12 x float]* %63, i32 0, i32 0
  br i1 %2538, label %2541, label %2544

; <label>:2541                                    ; preds = %2536
  %2542 = load float, float* %2539, align 4
  %2543 = load float, float* %2540, align 4
  br label %2571

; <label>:2544                                    ; preds = %2536
  %2545 = load float, float* %2539, align 4
  %2546 = load float, float* %2540, align 4
  %2547 = fdiv fast float 1.000000e+00, %2546
  %2548 = fsub fast float %2545, %2547
  %2549 = icmp ugt i32 %2537, 1
  br i1 %2549, label %2550, label %2566

; <label>:2550                                    ; preds = %2544
  br label %2551

; <label>:2551                                    ; preds = %2551, %2550
  %2552 = phi float [ %2561, %2551 ], [ %2548, %2550 ]
  %2553 = phi float [ %2562, %2551 ], [ %2545, %2550 ]
  %2554 = phi i32 [ %2563, %2551 ], [ 1, %2550 ]
  %2555 = getelementptr [12 x float], [12 x float]* %62, i32 0, i32 %2554
  %2556 = load float, float* %2555, align 4
  %2557 = getelementptr [12 x float], [12 x float]* %63, i32 0, i32 %2554
  %2558 = load float, float* %2557, align 4
  %2559 = fdiv fast float 1.000000e+00, %2558
  %2560 = fsub fast float %2556, %2559
  %2561 = call float @dx.op.binary.f32(i32 36, float %2552, float %2560)  ; FMin(a,b)
  %2562 = call float @dx.op.binary.f32(i32 35, float %2553, float %2556)  ; FMax(a,b)
  %2563 = add nuw i32 %2554, 1
  %2564 = icmp eq i32 %2563, %2537
  br i1 %2564, label %2565, label %2551

; <label>:2565                                    ; preds = %2551
  br label %2566

; <label>:2566                                    ; preds = %2565, %2544
  %2567 = phi float [ %2548, %2544 ], [ %2561, %2565 ]
  %2568 = phi float [ %2545, %2544 ], [ %2562, %2565 ]
  %2569 = fsub fast float %2568, %2567
  %2570 = fdiv fast float 1.000000e+00, %2569
  br label %2571

; <label>:2571                                    ; preds = %2566, %2541
  %2572 = phi float [ %2542, %2541 ], [ %2568, %2566 ]
  %2573 = phi float [ %2543, %2541 ], [ %2570, %2566 ]
  %2574 = fadd fast float %2275, %2572
  %2575 = fmul fast float %2574, %2573
  %2576 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2577 = fmul fast float %2576, 2.000000e+00
  %2578 = fsub fast float 1.000000e+00, %2577
  %2579 = fmul fast float %2413, %2413
  %2580 = fsub fast float %2414, %2579
  %2581 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2580)  ; FMax(a,b)
  %2582 = fdiv fast float 1.000000e+00, %2581
  %2583 = fmul fast float %2414, %2413
  %2584 = fsub fast float %2415, %2583
  %2585 = fsub fast float %2578, %2413
  %2586 = fmul fast float %2578, %2578
  %2587 = fsub fast float %2586, %2414
  %2588 = fmul fast float %2582, %2584
  %2589 = fmul fast float %2588, %2585
  %2590 = fsub fast float %2587, %2589
  %2591 = fmul fast float %2414, %2414
  %2592 = fsub fast float %2416, %2591
  %2593 = fmul fast float %2584, %2584
  %2594 = fmul fast float %2593, %2582
  %2595 = fsub fast float %2592, %2594
  %2596 = fdiv fast float %2590, %2595
  %2597 = fmul fast float %2596, %2584
  %2598 = fsub fast float %2585, %2597
  %2599 = fmul fast float %2598, %2582
  %2600 = fmul fast float %2599, %2413
  %2601 = fsub fast float 1.000000e+00, %2600
  %2602 = fmul fast float %2596, %2414
  %2603 = fsub fast float %2601, %2602
  %2604 = fmul fast float %2599, %2599
  %2605 = fmul fast float %2596, 4.000000e+00
  %2606 = fmul fast float %2605, %2603
  %2607 = fsub fast float %2604, %2606
  %2608 = call float @dx.op.unary.f32(i32 24, float %2607)  ; Sqrt(value)
  %2609 = fcmp fast oge float %2599, 0.000000e+00
  %2610 = fsub fast float -0.000000e+00, %2608
  %2611 = select i1 %2609, float %2610, float %2608
  %2612 = fsub fast float %2611, %2599
  %2613 = fdiv fast float %2612, %2596
  %2614 = fdiv fast float %2603, %2612
  %2615 = fmul fast float %2613, 5.000000e-01
  %2616 = fmul fast float %2614, 2.000000e+00
  %2617 = select i1 %2609, float %2615, float %2616
  %2618 = select i1 %2609, float %2616, float %2615
  %2619 = call float @dx.op.binary.f32(i32 35, float %2617, float %2618)  ; FMax(a,b)
  %2620 = call float @dx.op.binary.f32(i32 36, float %2617, float %2618)  ; FMin(a,b)
  %2621 = fcmp fast ogt float %2578, %2619
  %2622 = fsub fast float %2578, %2620
  %2623 = fsub fast float %2578, %2619
  %2624 = fsub fast float %2619, %2620
  %2625 = select i1 %2621, float %2623, float %2624
  %2626 = fmul float %2622, %2625
  %2627 = select i1 %2621, float %2620, float %2578
  %2628 = fcmp fast ogt float %2578, %2620
  %2629 = fmul fast float %2627, %2619
  %2630 = fadd fast float %2627, %2619
  %2631 = fmul fast float %2630, %2413
  %2632 = fadd fast float %2629, %2414
  %2633 = fsub fast float %2632, %2631
  %2634 = fdiv fast float %2633, %2626
  %2635 = select i1 %2628, float %2634, float 0.000000e+00
  %2636 = fsub fast float 1.000000e+00, %2635
  %2637 = select i1 %2621, float %2636, float %2635
  %2638 = call float @dx.op.unary.f32(i32 7, float %2637)  ; Saturate(value)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2398, 3
  %2640 = fmul fast float %2639, %2638
  %2641 = fsub fast float 1.000000e+00, %2640
  br label %2642

; <label>:2642                                    ; preds = %2571, %2283, %2248, %2244, %2210
  %2643 = phi float [ 1.000000e+00, %2210 ], [ %2641, %2571 ], [ 1.000000e+00, %2248 ], [ 1.000000e+00, %2283 ], [ 1.000000e+00, %2244 ]
  %2644 = fcmp fast ogt float %2240, 0.000000e+00
  br i1 %2644, label %2645, label %2651, !dx.controlflow.hints !110

; <label>:2645                                    ; preds = %2642
  %2646 = fadd fast float %2153, %2127
  %2647 = call float @dx.op.binary.f32(i32 35, float %2646, float 0.000000e+00)  ; FMax(a,b)
  %2648 = fadd fast float %2647, 0x3F10000000000000
  %2649 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %36, float %2142, float %2143, float undef, float undef, i32 0, i32 0, i32 undef, float %2648)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  br label %2651

; <label>:2651                                    ; preds = %2645, %2642
  %2652 = phi float [ %2650, %2645 ], [ 1.000000e+00, %2642 ]
  %2653 = fcmp fast ogt float %2238, 0.000000e+00
  br i1 %2653, label %2654, label %2660, !dx.controlflow.hints !111

; <label>:2654                                    ; preds = %2651
  %2655 = fadd fast float %2183, %2127
  %2656 = call float @dx.op.binary.f32(i32 35, float %2655, float 0.000000e+00)  ; FMax(a,b)
  %2657 = fadd fast float %2656, 0x3F10000000000000
  %2658 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %36, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float %2657)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2659 = extractvalue %dx.types.ResRet.f32 %2658, 0
  br label %2660

; <label>:2660                                    ; preds = %2654, %2651
  %2661 = phi float [ %2659, %2654 ], [ 1.000000e+00, %2651 ]
  %2662 = fcmp fast ogt float %2237, 0.000000e+00
  br i1 %2662, label %2663, label %2670, !dx.controlflow.hints !112

; <label>:2663                                    ; preds = %2660
  %2664 = extractvalue %dx.types.CBufRet.f32 %2152, 0
  %2665 = fadd fast float %2664, %2127
  %2666 = call float @dx.op.binary.f32(i32 35, float %2665, float 0.000000e+00)  ; FMax(a,b)
  %2667 = fadd fast float %2666, 0x3F10000000000000
  %2668 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %36, float %2119, float %2123, float undef, float undef, i32 0, i32 0, i32 undef, float %2667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2669 = extractvalue %dx.types.ResRet.f32 %2668, 0
  br label %2670

; <label>:2670                                    ; preds = %2663, %2660
  %2671 = phi float [ %2669, %2663 ], [ 1.000000e+00, %2660 ]
  %2672 = fsub fast float %2652, %2643
  %2673 = fmul fast float %2672, %2181
  %2674 = fadd fast float %2673, %2643
  %2675 = fsub fast float %2661, %2674
  %2676 = fmul fast float %2675, %2211
  %2677 = fadd fast float %2676, %2674
  %2678 = fsub fast float %2671, %2677
  %2679 = fmul fast float %2678, %2237
  %2680 = fadd fast float %2679, %2677
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %2683 = fcmp fast ogt float %2682, 0.000000e+00
  br i1 %2683, label %2684, label %2721, !dx.controlflow.hints !113

; <label>:2684                                    ; preds = %2670
  %2685 = fcmp fast ugt float %2682, 0.000000e+00
  br i1 %2685, label %2686, label %2718

; <label>:2686                                    ; preds = %2684
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.CBufRet.f32 %2687, 1
  %2690 = extractvalue %dx.types.CBufRet.f32 %2687, 2
  %2691 = extractvalue %dx.types.CBufRet.f32 %2687, 3
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.CBufRet.f32 %2692, 1
  %2695 = extractvalue %dx.types.CBufRet.f32 %2692, 2
  %2696 = extractvalue %dx.types.CBufRet.f32 %2692, 3
  %2697 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2698 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2699 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %2700 = fadd fast float %487, %2096
  %2701 = fadd fast float %488, %2097
  %2702 = fadd fast float %2699, %2098
  %2703 = fmul fast float %2700, %2688
  %2704 = call float @dx.op.tertiary.f32(i32 46, float %2689, float %2701, float %2703)  ; FMad(a,b,c)
  %2705 = call float @dx.op.tertiary.f32(i32 46, float %2690, float %2702, float %2704)  ; FMad(a,b,c)
  %2706 = fadd fast float %2705, %2691
  %2707 = fmul fast float %2700, %2693
  %2708 = call float @dx.op.tertiary.f32(i32 46, float %2694, float %2701, float %2707)  ; FMad(a,b,c)
  %2709 = call float @dx.op.tertiary.f32(i32 46, float %2695, float %2702, float %2708)  ; FMad(a,b,c)
  %2710 = fadd fast float %2709, %2696
  %2711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %32, float %2706, float %2710, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2712 = extractvalue %dx.types.ResRet.f32 %2711, 0
  %2713 = fmul fast float %2712, %2698
  %2714 = fadd fast float %2713, %2697
  %2715 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2716 = fmul fast float %2715, %2682
  %2717 = fsub fast float 1.000000e+00, %2716
  br label %2718

; <label>:2718                                    ; preds = %2686, %2684
  %2719 = phi float [ %2717, %2686 ], [ 1.000000e+00, %2684 ]
  %2720 = fmul fast float %2719, %2680
  br label %2721

; <label>:2721                                    ; preds = %2718, %2670, %2076
  %2722 = phi float [ 1.000000e+00, %2076 ], [ %2720, %2718 ], [ %2680, %2670 ]
  %2723 = call float @dx.op.binary.f32(i32 36, float %2722, float %2722)  ; FMin(a,b)
  %2724 = call float @dx.op.binary.f32(i32 36, float %2722, float %2723)  ; FMin(a,b)
  %2725 = fcmp fast ogt float %2724, 0.000000e+00
  br i1 %2725, label %2726, label %2883, !dx.controlflow.hints !114

; <label>:2726                                    ; preds = %2721
  %2727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2728 = extractvalue %dx.types.CBufRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.CBufRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.CBufRet.f32 %2727, 2
  %2731 = extractvalue %dx.types.CBufRet.f32 %2727, 3
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2735 = extractvalue %dx.types.CBufRet.f32 %2732, 2
  %2736 = extractvalue %dx.types.CBufRet.f32 %2732, 3
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2740 = extractvalue %dx.types.CBufRet.f32 %2737, 2
  %2741 = extractvalue %dx.types.CBufRet.f32 %2737, 3
  %2742 = fmul fast float %2728, %2096
  %2743 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2729, float %2742)  ; FMad(a,b,c)
  %2744 = call float @dx.op.tertiary.f32(i32 46, float %2098, float %2730, float %2743)  ; FMad(a,b,c)
  %2745 = fadd fast float %2744, %2731
  %2746 = fmul fast float %2733, %2096
  %2747 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2734, float %2746)  ; FMad(a,b,c)
  %2748 = call float @dx.op.tertiary.f32(i32 46, float %2098, float %2735, float %2747)  ; FMad(a,b,c)
  %2749 = fadd fast float %2748, %2736
  %2750 = fmul fast float %2738, %2096
  %2751 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2739, float %2750)  ; FMad(a,b,c)
  %2752 = call float @dx.op.tertiary.f32(i32 46, float %2098, float %2740, float %2751)  ; FMad(a,b,c)
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.CBufRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.CBufRet.f32 %2753, 3
  %2757 = fmul fast float %2756, %2745
  %2758 = fmul fast float %2756, %2749
  %2759 = fadd fast float %2757, %2754
  %2760 = fadd fast float %2758, %2755
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.CBufRet.f32 %2761, 1
  %2764 = fsub fast float %2759, %2762
  %2765 = fsub fast float %2760, %2763
  %2766 = fcmp fast olt float %2764, 0.000000e+00
  %2767 = fcmp fast olt float %2765, 0.000000e+00
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.CBufRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.CBufRet.f32 %2768, 2
  %2772 = extractvalue %dx.types.CBufRet.f32 %2768, 3
  %2773 = select i1 %2766, float %2769, float %2771
  %2774 = select i1 %2767, float %2770, float %2772
  %2775 = fmul fast float %2773, %2764
  %2776 = fmul fast float %2774, %2765
  %2777 = call float @dx.op.unary.f32(i32 6, float %2775)  ; FAbs(value)
  %2778 = call float @dx.op.unary.f32(i32 6, float %2776)  ; FAbs(value)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2091, 0
  %2780 = call float @dx.op.binary.f32(i32 35, float %2777, float %2778)  ; FMax(a,b)
  %2781 = fsub fast float %2779, %2780
  %2782 = call float @dx.op.unary.f32(i32 7, float %2781)  ; Saturate(value)
  %2783 = fcmp fast ogt float %2782, 0.000000e+00
  br i1 %2783, label %2784, label %2825, !dx.controlflow.hints !115

; <label>:2784                                    ; preds = %2726
  %2785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %2759, float %2760, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2786 = extractvalue %dx.types.ResRet.f32 %2785, 1
  %2787 = fcmp fast ogt float %2786, 0.000000e+00
  br i1 %2787, label %2788, label %2821

; <label>:2788                                    ; preds = %2784
  %2789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %35, float %2759, float %2760, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2790 = extractvalue %dx.types.ResRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.ResRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.ResRet.f32 %2789, 2
  %2793 = extractvalue %dx.types.ResRet.f32 %2789, 3
  %2794 = fsub fast float 1.000000e+00, %2741
  %2795 = fsub fast float %2794, %2752
  %2796 = fmul fast float %2795, 0x400921FB60000000
  %2797 = fadd fast float %2796, 0x3FF921FB60000000
  %2798 = call float @dx.op.unary.f32(i32 13, float %2797)  ; Sin(value)
  %2799 = fadd fast float %2798, -1.000000e+00
  %2800 = fmul fast float %2799, 0x3FD45F3060000000
  %2801 = fmul fast float %2795, 0x401921FB60000000
  %2802 = fadd fast float %2801, 0x400921FB60000000
  %2803 = call float @dx.op.unary.f32(i32 13, float %2802)  ; Sin(value)
  %2804 = fadd fast float %2803, 0x3E7777A5C0000000
  %2805 = fmul fast float %2804, 0x3FC45F3060000000
  %2806 = fmul fast float %2795, 0x4022D97C80000000
  %2807 = fadd fast float %2806, 0x4012D97C80000000
  %2808 = call float @dx.op.unary.f32(i32 13, float %2807)  ; Sin(value)
  %2809 = fadd fast float %2808, 1.000000e+00
  %2810 = fmul fast float %2809, 0x3FBB2995E0000000
  %2811 = fmul fast float %2795, 0x402921FB60000000
  %2812 = fadd fast float %2811, 0x401921FB60000000
  %2813 = call float @dx.op.unary.f32(i32 13, float %2812)  ; Sin(value)
  %2814 = fadd fast float %2813, 0xBE8777A5C0000000
  %2815 = fmul fast float %2814, 0x3FB45F3060000000
  %2816 = call float @dx.op.dot4.f32(i32 56, float %2790, float %2791, float %2792, float %2793, float %2800, float %2805, float %2810, float %2815)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2817 = fmul fast float %2816, 0xBFF7154760000000
  %2818 = call float @dx.op.unary.f32(i32 21, float %2817)  ; Exp(value)
  %2819 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2820 = fadd float %2819, -1.000000e+00
  br label %2821

; <label>:2821                                    ; preds = %2788, %2784
  %2822 = phi float [ %2820, %2788 ], [ 0.000000e+00, %2784 ]
  %2823 = fmul fast float %2822, %2782
  %2824 = fadd fast float %2823, 1.000000e+00
  br label %2825

; <label>:2825                                    ; preds = %2821, %2726
  %2826 = phi float [ %2824, %2821 ], [ 1.000000e+00, %2726 ]
  %2827 = fmul fast float %2826, %2722
  %2828 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %2829 = fadd fast float %487, %333
  %2830 = fadd fast float %488, %334
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2833 = fsub fast float -0.000000e+00, %2829
  %2834 = fsub fast float -0.000000e+00, %2830
  %2835 = fsub fast float %465, %2828
  %2836 = fadd fast float %2835, %2832
  %2837 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2833, float %2834, float %2836)  ; Dot3(ax,ay,az,bx,by,bz)
  %2838 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2077, float %2078, float %2079)  ; Dot3(ax,ay,az,bx,by,bz)
  %2839 = fdiv fast float 1.000000e+00, %2838
  %2840 = fmul fast float %2839, %2837
  %2841 = fmul fast float %2077, %2840
  %2842 = fmul fast float %2078, %2840
  %2843 = fadd fast float %2841, %2829
  %2844 = fadd fast float %2842, %2830
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.CBufRet.f32 %2845, 1
  %2848 = fsub fast float %2843, %2846
  %2849 = fsub fast float %2844, %2847
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 2
  %2852 = extractvalue %dx.types.CBufRet.f32 %2850, 3
  %2853 = fmul fast float %2848, %2851
  %2854 = fmul fast float %2849, %2852
  %2855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.i32 %2855, 3
  %2857 = icmp eq i32 %2856, 0
  br i1 %2857, label %2863, label %2858

; <label>:2858                                    ; preds = %2825
  %2859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %34, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  %2861 = extractvalue %dx.types.ResRet.f32 %2859, 1
  %2862 = extractvalue %dx.types.ResRet.f32 %2859, 2
  br label %2868

; <label>:2863                                    ; preds = %2825
  %2864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2865 = extractvalue %dx.types.ResRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.ResRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.ResRet.f32 %2864, 2
  br label %2868

; <label>:2868                                    ; preds = %2863, %2858
  %2869 = phi float [ %2860, %2858 ], [ %2865, %2863 ]
  %2870 = phi float [ %2861, %2858 ], [ %2866, %2863 ]
  %2871 = phi float [ %2862, %2858 ], [ %2867, %2863 ]
  %2872 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2873 = fmul fast float %2872, %2869
  %2874 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2875 = fsub fast float %2840, %2874
  %2876 = fsub fast float %2875, %2873
  %2877 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2876)  ; FMax(a,b)
  %2878 = fmul fast float %2877, %2870
  %2879 = call float @dx.op.binary.f32(i32 36, float %2871, float %2878)  ; FMin(a,b)
  %2880 = fmul fast float %2879, 0xBFF7154760000000
  %2881 = call float @dx.op.unary.f32(i32 21, float %2880)  ; Exp(value)
  %2882 = fmul fast float %2827, %2881
  br label %2883

; <label>:2883                                    ; preds = %2868, %2721
  %2884 = phi float [ %2882, %2868 ], [ %2722, %2721 ]
  %2885 = call float @dx.op.binary.f32(i32 36, float %2884, float %2884)  ; FMin(a,b)
  %2886 = call float @dx.op.binary.f32(i32 36, float %2884, float %2885)  ; FMin(a,b)
  %2887 = fcmp fast ogt float %2886, 0.000000e+00
  br i1 %2887, label %2888, label %3015, !dx.controlflow.hints !116

; <label>:2888                                    ; preds = %2883
  %2889 = fmul fast float %2884, %2088
  %2890 = fmul fast float %2884, %2089
  %2891 = fmul fast float %2884, %2090
  %2892 = fsub fast float %2077, %468
  %2893 = fsub fast float %2078, %469
  %2894 = fsub fast float %2079, %470
  %2895 = call float @dx.op.dot3.f32(i32 55, float %2892, float %2893, float %2894, float %2892, float %2893, float %2894)  ; Dot3(ax,ay,az,bx,by,bz)
  %2896 = call float @dx.op.unary.f32(i32 25, float %2895)  ; Rsqrt(value)
  %2897 = fmul fast float %2896, %2892
  %2898 = fmul fast float %2896, %2893
  %2899 = fmul fast float %2896, %2894
  %2900 = call float @dx.op.dot3.f32(i32 55, float %2077, float %2078, float %2079, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %2901 = call float @dx.op.dot3.f32(i32 55, float %471, float %472, float %473, float %2897, float %2898, float %2899)  ; Dot3(ax,ay,az,bx,by,bz)
  %2902 = call float @dx.op.unary.f32(i32 7, float %2900)  ; Saturate(value)
  %2903 = fmul fast float %2902, %2902
  %2904 = fmul fast float %2903, 0x47DE623840000000
  %2905 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2906 = fmul fast float %2905, %2902
  %2907 = call float @dx.op.dot3.f32(i32 55, float %256, float %257, float %258, float %2897, float %2898, float %2899)  ; Dot3(ax,ay,az,bx,by,bz)
  %2908 = fmul fast float %2907, %2907
  %2909 = call float @dx.op.unary.f32(i32 6, float %2900)  ; FAbs(value)
  %2910 = fsub fast float 1.000000e+00, %268
  %2911 = call float @dx.op.binary.f32(i32 35, float %2910, float 0x3F847AE140000000)  ; FMax(a,b)
  %2912 = fmul fast float %2911, %2911
  %2913 = fmul fast float %2912, %2912
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = fmul fast float %476, %476
  %2916 = fmul fast float %2915, %2914
  %2917 = fadd fast float %2916, %2913
  %2918 = bitcast float %2917 to i32
  %2919 = ashr i32 %2918, 1
  %2920 = add nsw i32 %2919, 532487669
  %2921 = bitcast i32 %2920 to float
  %2922 = fadd fast float %2921, %476
  %2923 = fmul fast float %2913, %2908
  %2924 = fsub fast float 1.000000e+00, %2908
  %2925 = fadd fast float %2924, %2923
  %2926 = fmul fast float %2909, %2909
  %2927 = fmul fast float %2926, %2914
  %2928 = fadd fast float %2927, %2913
  %2929 = bitcast float %2928 to i32
  %2930 = ashr i32 %2929, 1
  %2931 = add nsw i32 %2930, 532487669
  %2932 = bitcast i32 %2931 to float
  %2933 = fadd fast float %2932, %2909
  %2934 = fmul fast float %2925, %2925
  %2935 = fmul fast float %2934, %2922
  %2936 = fmul fast float %2935, %2933
  %2937 = fdiv fast float 0x3FF0A00000000000, %2936
  %2938 = fmul fast float %2937, %2913
  %2939 = call float @dx.op.unary.f32(i32 6, float %2901)  ; FAbs(value)
  %2940 = fsub fast float 1.000000e+00, %2939
  %2941 = bitcast float %2940 to i32
  %2942 = sitofp i32 %2941 to float
  %2943 = fmul fast float %2942, 5.000000e+00
  %2944 = fadd fast float %2943, 0xC1EFBF8940000000
  %2945 = fptosi float %2944 to i32
  %2946 = bitcast i32 %2945 to float
  %2947 = fsub fast float 1.000000e+00, %456
  %2948 = fsub fast float 1.000000e+00, %457
  %2949 = fsub fast float 1.000000e+00, %474
  %2950 = fmul fast float %2946, %2947
  %2951 = fmul fast float %2946, %2948
  %2952 = fmul fast float %2946, %2949
  %2953 = fadd fast float %2950, %456
  %2954 = fadd fast float %2951, %457
  %2955 = fadd fast float %2952, %474
  %2956 = fmul fast float %2900, 9.843750e-01
  %2957 = fadd fast float %2956, 7.812500e-03
  %2958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2957, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 3
  %2961 = fmul fast float %2959, %456
  %2962 = fmul fast float %2959, %457
  %2963 = fmul fast float %2959, %474
  %2964 = fadd fast float %2961, %2960
  %2965 = fadd fast float %2962, %2960
  %2966 = fadd fast float %2963, %2960
  %2967 = call float @dx.op.binary.f32(i32 35, float %2965, float %2966)  ; FMax(a,b)
  %2968 = call float @dx.op.binary.f32(i32 35, float %2964, float %2967)  ; FMax(a,b)
  %2969 = fsub fast float 1.000000e+00, %2968
  %2970 = fsub fast float -0.000000e+00, %256
  %2971 = fsub fast float -0.000000e+00, %257
  %2972 = fsub fast float -0.000000e+00, %258
  %2973 = call float @dx.op.dot3.f32(i32 55, float %2077, float %2078, float %2079, float %2970, float %2971, float %2972)  ; Dot3(ax,ay,az,bx,by,bz)
  %2974 = call float @dx.op.unary.f32(i32 7, float %2973)  ; Saturate(value)
  %2975 = fmul fast float %2974, 9.843750e-01
  %2976 = fadd fast float %2975, 7.812500e-03
  %2977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2976, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 2
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 3
  %2980 = fmul fast float %2978, %456
  %2981 = fmul fast float %2978, %457
  %2982 = fmul fast float %2978, %474
  %2983 = fadd fast float %2980, %2979
  %2984 = fadd fast float %2981, %2979
  %2985 = fadd fast float %2982, %2979
  %2986 = call float @dx.op.binary.f32(i32 35, float %2984, float %2985)  ; FMax(a,b)
  %2987 = call float @dx.op.binary.f32(i32 35, float %2983, float %2986)  ; FMax(a,b)
  %2988 = fsub fast float 1.000000e+00, %2987
  %2989 = fmul fast float %2988, %2974
  %2990 = fmul fast float %2989, %275
  %2991 = fmul fast float %2989, %276
  %2992 = fmul fast float %2989, %277
  %2993 = fmul fast float %2969, %2906
  %2994 = fadd fast float %2990, %2993
  %2995 = fadd fast float %2991, %2993
  %2996 = fadd fast float %2992, %2993
  %2997 = fmul fast float %2994, %2889
  %2998 = fmul fast float %2995, %2890
  %2999 = fmul fast float %2996, %2891
  %3000 = fadd fast float %2997, %2068
  %3001 = fadd fast float %2998, %2070
  %3002 = fadd fast float %2999, %2072
  %3003 = fmul fast float %2906, %2889
  %3004 = fmul fast float %3003, %2938
  %3005 = fmul fast float %3004, %2953
  %3006 = fmul fast float %2906, %2890
  %3007 = fmul fast float %3006, %2938
  %3008 = fmul fast float %3007, %2954
  %3009 = fmul fast float %2906, %2891
  %3010 = fmul fast float %3009, %2938
  %3011 = fmul fast float %3010, %2955
  %3012 = fadd fast float %3005, %2061
  %3013 = fadd fast float %3008, %2062
  %3014 = fadd fast float %3011, %2063
  br label %3015

; <label>:3015                                    ; preds = %2888, %2883, %1972
  %3016 = phi float [ %2061, %1972 ], [ %2061, %2883 ], [ %3012, %2888 ]
  %3017 = phi float [ %2062, %1972 ], [ %2062, %2883 ], [ %3013, %2888 ]
  %3018 = phi float [ %2063, %1972 ], [ %2063, %2883 ], [ %3014, %2888 ]
  %3019 = phi float [ %2068, %1972 ], [ %2068, %2883 ], [ %3000, %2888 ]
  %3020 = phi float [ %2070, %1972 ], [ %2070, %2883 ], [ %3001, %2888 ]
  %3021 = phi float [ %2072, %1972 ], [ %2072, %2883 ], [ %3002, %2888 ]
  %3022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3023 = extractvalue %dx.types.CBufRet.i32 %3022, 0
  %3024 = icmp eq i32 %3023, 0
  br i1 %3024, label %3523, label %3025

; <label>:3025                                    ; preds = %3015
  %3026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3027 = extractvalue %dx.types.CBufRet.f32 %3026, 2
  %3028 = extractvalue %dx.types.CBufRet.f32 %3026, 3
  %3029 = fmul fast float %3027, %66
  %3030 = fmul fast float %3028, %67
  %3031 = fptoui float %3029 to i32
  %3032 = fptoui float %3030 to i32
  %3033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3034 = extractvalue %dx.types.CBufRet.f32 %3033, 0
  %3035 = extractvalue %dx.types.CBufRet.f32 %3033, 2
  %3036 = extractvalue %dx.types.CBufRet.f32 %3033, 3
  %3037 = fadd fast float %299, -4.000000e+00
  %3038 = call float @dx.op.binary.f32(i32 35, float %3037, float 0.000000e+00)  ; FMax(a,b)
  %3039 = fadd fast float %3038, %3034
  %3040 = fmul fast float %3039, %3035
  %3041 = call float @dx.op.unary.f32(i32 23, float %3040)  ; Log(value)
  %3042 = fmul fast float %3041, %3036
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 2
  %3045 = fmul fast float %3042, %3044
  %3046 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3047 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.i32 %3047, 1
  %3049 = add i32 %3048, -1
  %3050 = uitofp i32 %3048 to float
  %3051 = fmul fast float %3050, %3046
  %3052 = fptoui float %3051 to i32
  %3053 = call i32 @dx.op.binary.i32(i32 40, i32 %3052, i32 %3049)  ; UMin(a,b)
  %3054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.i32 %3054, 2
  %3056 = extractvalue %dx.types.CBufRet.i32 %3054, 3
  %3057 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3032, i32 %3055, i32 %3031)  ; UMad(a,b,c)
  %3058 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3053, i32 %3056, i32 %3057)  ; UMad(a,b,c)
  %3059 = add nsw i32 %3023, -1
  %3060 = call i32 @dx.op.binary.i32(i32 37, i32 %3059, i32 0)  ; IMax(a,b)
  %3061 = call float @dx.op.binary.f32(i32 35, float %299, float 0.000000e+00)  ; FMax(a,b)
  %3062 = fptoui float %3061 to i32
  %3063 = lshr i32 %3062, 5
  %3064 = call i32 @dx.op.binary.i32(i32 40, i32 %3063, i32 8191)  ; UMin(a,b)
  %3065 = shl i32 %3064, 2
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = lshr i32 %3067, 16
  %3069 = and i32 %3067, 65535
  %3070 = lshr i32 %3067, 21
  %3071 = lshr i32 %3069, 5
  %3072 = call i32 @dx.op.binary.i32(i32 40, i32 %3071, i32 %3060)  ; UMin(a,b)
  %3073 = icmp ugt i32 %3070, %3072
  br i1 %3073, label %3523, label %3074

; <label>:3074                                    ; preds = %3025
  br label %3075

; <label>:3075                                    ; preds = %3513, %3074
  %3076 = phi i32 [ %3520, %3513 ], [ %3070, %3074 ]
  %3077 = phi float [ %3514, %3513 ], [ %3016, %3074 ]
  %3078 = phi float [ %3515, %3513 ], [ %3017, %3074 ]
  %3079 = phi float [ %3516, %3513 ], [ %3018, %3074 ]
  %3080 = phi float [ %3517, %3513 ], [ %3019, %3074 ]
  %3081 = phi float [ %3518, %3513 ], [ %3020, %3074 ]
  %3082 = phi float [ %3519, %3513 ], [ %3021, %3074 ]
  %3083 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.i32 %3083, 0
  %3085 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3058, i32 %3084, i32 %3076)  ; UMad(a,b,c)
  %3086 = shl i32 %3085, 2
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = shl i32 %3076, 5
  %3090 = sub nsw i32 %3068, %3089
  %3091 = call i32 @dx.op.binary.i32(i32 37, i32 %3090, i32 0)  ; IMax(a,b)
  %3092 = call i32 @dx.op.binary.i32(i32 38, i32 %3091, i32 31)  ; IMin(a,b)
  %3093 = sub nsw i32 1, %3068
  %3094 = add nsw i32 %3093, %3069
  %3095 = call i32 @dx.op.binary.i32(i32 37, i32 %3094, i32 0)  ; IMax(a,b)
  %3096 = call i32 @dx.op.binary.i32(i32 38, i32 %3095, i32 32)  ; IMin(a,b)
  %3097 = and i32 %3096, 31
  %3098 = shl i32 -1, %3097
  %3099 = xor i32 %3098, -1
  %3100 = and i32 %3092, 31
  %3101 = shl i32 %3099, %3100
  %3102 = icmp eq i32 %3096, 32
  %3103 = select i1 %3102, i32 -1, i32 %3101
  %3104 = and i32 %3103, %3088
  %3105 = icmp eq i32 %3104, 0
  br i1 %3105, label %3513, label %3106

; <label>:3106                                    ; preds = %3075
  br label %3107

; <label>:3107                                    ; preds = %3241, %3106
  %3108 = phi i32 [ %3119, %3241 ], [ %3104, %3106 ]
  %3109 = phi float [ %3242, %3241 ], [ %3077, %3106 ]
  %3110 = phi float [ %3243, %3241 ], [ %3078, %3106 ]
  %3111 = phi float [ %3244, %3241 ], [ %3079, %3106 ]
  %3112 = phi float [ %3245, %3241 ], [ %3080, %3106 ]
  %3113 = phi float [ %3246, %3241 ], [ %3081, %3106 ]
  %3114 = phi float [ %3247, %3241 ], [ %3082, %3106 ]
  %3115 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3108)  ; FirstbitLo(value)
  %3116 = add i32 %3115, %3089
  %3117 = and i32 %3115, 31
  %3118 = shl i32 1, %3117
  %3119 = xor i32 %3118, %3108
  %3120 = mul i32 %3116, 112
  %3121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.f32 %3121, 0
  %3123 = extractvalue %dx.types.ResRet.f32 %3121, 1
  %3124 = extractvalue %dx.types.ResRet.f32 %3121, 2
  %3125 = or i32 %3120, 12
  %3126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.f32 %3126, 0
  %3128 = add i32 %3120, 16
  %3129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.f32 %3129, 0
  %3131 = extractvalue %dx.types.ResRet.f32 %3129, 1
  %3132 = extractvalue %dx.types.ResRet.f32 %3129, 2
  %3133 = add i32 %3120, 28
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3120, 44
  %3137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  %3139 = add i32 %3120, 48
  %3140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.ResRet.f32 %3140, 1
  %3143 = extractvalue %dx.types.ResRet.f32 %3140, 2
  %3144 = extractvalue %dx.types.ResRet.f32 %3140, 3
  %3145 = add i32 %3120, 64
  %3146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  %3148 = extractvalue %dx.types.ResRet.f32 %3146, 1
  %3149 = extractvalue %dx.types.ResRet.f32 %3146, 2
  %3150 = extractvalue %dx.types.ResRet.f32 %3146, 3
  %3151 = add i32 %3120, 80
  %3152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.f32 %3152, 1
  %3154 = extractvalue %dx.types.ResRet.f32 %3152, 2
  %3155 = add i32 %3120, 92
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = call float @dx.op.dot3.f32(i32 55, float %3122, float %3123, float %3124, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = select i1 %125, float %3153, float %3122
  %3160 = select i1 %125, float %3158, float %3123
  %3161 = select i1 %125, float %3154, float %3124
  %3162 = and i32 %3157, 65535
  %3163 = uitofp i32 %3162 to float
  %3164 = lshr i32 %3157, 16
  %3165 = uitofp i32 %3164 to float
  %3166 = and i32 %3135, 65535
  %3167 = and i32 %3135, 50331648
  %3168 = icmp eq i32 %3167, 33554432
  %3169 = fsub fast float %3141, %333
  %3170 = fsub fast float %3142, %334
  %3171 = fsub fast float %3143, %335
  %3172 = call float @dx.op.dot3.f32(i32 55, float %3169, float %3170, float %3171, float %3169, float %3170, float %3171)  ; Dot3(ax,ay,az,bx,by,bz)
  %3173 = call float @dx.op.unary.f32(i32 24, float %3172)  ; Sqrt(value)
  %3174 = fdiv fast float 1.000000e+00, %3173
  %3175 = fmul fast float %3174, %3169
  %3176 = fmul fast float %3174, %3170
  %3177 = fmul fast float %3174, %3171
  %3178 = fadd fast float %3173, %3127
  %3179 = fdiv fast float 1.000000e+00, %3178
  %3180 = fmul float %3138, %3179
  %3181 = fmul float %3180, %3180
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  br i1 %3168, label %3183, label %3204

; <label>:3183                                    ; preds = %3107
  %3184 = fmul fast float %3149, %3130
  %3185 = fmul fast float %3149, %3131
  %3186 = fmul fast float %3149, %3132
  %3187 = fadd fast float %3169, %3184
  %3188 = fadd fast float %3170, %3185
  %3189 = fadd fast float %3171, %3186
  %3190 = call float @dx.op.dot3.f32(i32 55, float %3187, float %3188, float %3189, float %3187, float %3188, float %3189)  ; Dot3(ax,ay,az,bx,by,bz)
  %3191 = call float @dx.op.unary.f32(i32 25, float %3190)  ; Rsqrt(value)
  %3192 = fmul fast float %3191, %3187
  %3193 = fmul fast float %3191, %3188
  %3194 = fmul fast float %3191, %3189
  %3195 = fsub fast float %333, %3141
  %3196 = fsub fast float %334, %3142
  %3197 = fsub fast float %335, %3143
  %3198 = fsub fast float -0.000000e+00, %3195
  %3199 = fsub fast float -0.000000e+00, %3196
  %3200 = fsub fast float -0.000000e+00, %3197
  %3201 = call float @dx.op.dot3.f32(i32 55, float %3198, float %3199, float %3200, float %3130, float %3131, float %3132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3202 = fcmp fast ogt float %3201, 0.000000e+00
  %3203 = uitofp i1 %3202 to float
  br label %3204

; <label>:3204                                    ; preds = %3183, %3107
  %3205 = phi float [ %3203, %3183 ], [ 1.000000e+00, %3107 ]
  %3206 = phi float [ %3192, %3183 ], [ %3175, %3107 ]
  %3207 = phi float [ %3193, %3183 ], [ %3176, %3107 ]
  %3208 = phi float [ %3194, %3183 ], [ %3177, %3107 ]
  %3209 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3131, float %3132, float %3206, float %3207, float %3208)  ; Dot3(ax,ay,az,bx,by,bz)
  %3210 = fmul fast float %3209, %3209
  %3211 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  %3212 = fsub fast float 1.000000e+00, %3211
  %3213 = fmul fast float %3212, 5.000000e-01
  %3214 = fcmp fast ogt float %3209, 0.000000e+00
  %3215 = fsub fast float 1.000000e+00, %3213
  %3216 = select i1 %3214, float %3213, float %3215
  %3217 = fmul fast float %3216, %3165
  %3218 = fadd fast float %3217, %3163
  %3219 = fmul fast float %3218, 0x3EF0001000000000
  %3220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %3219, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3221 = extractvalue %dx.types.ResRet.f32 %3220, 0
  %3222 = fmul fast float %3209, %3147
  %3223 = fadd fast float %3222, %3148
  %3224 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  %3225 = select i1 %3168, float 1.000000e+00, float %3224
  %3226 = select i1 %3168, float %3224, float 1.000000e+00
  %3227 = fmul fast float %3173, %3144
  %3228 = fsub fast float 1.000000e+00, %3227
  %3229 = fmul fast float %3228, %3150
  %3230 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3231 = fmul fast float %3230, %3226
  %3232 = fmul fast float %3231, 2.000000e+00
  %3233 = fsub fast float 3.000000e+00, %3232
  %3234 = fmul fast float %3221, %3205
  %3235 = fmul fast float %3231, %3231
  %3236 = fmul fast float %3235, %3234
  %3237 = fmul fast float %3236, %3233
  %3238 = call float @dx.op.binary.f32(i32 36, float %3237, float %3237)  ; FMin(a,b)
  %3239 = call float @dx.op.binary.f32(i32 36, float %3237, float %3238)  ; FMin(a,b)
  %3240 = fcmp fast ogt float %3239, 0.000000e+00
  br i1 %3240, label %3249, label %3241, !dx.controlflow.hints !117

; <label>:3241                                    ; preds = %3354, %3349, %3204
  %3242 = phi float [ %3109, %3349 ], [ %3109, %3204 ], [ %3509, %3354 ]
  %3243 = phi float [ %3110, %3349 ], [ %3110, %3204 ], [ %3510, %3354 ]
  %3244 = phi float [ %3111, %3349 ], [ %3111, %3204 ], [ %3511, %3354 ]
  %3245 = phi float [ %3112, %3349 ], [ %3112, %3204 ], [ %3497, %3354 ]
  %3246 = phi float [ %3113, %3349 ], [ %3113, %3204 ], [ %3498, %3354 ]
  %3247 = phi float [ %3114, %3349 ], [ %3114, %3204 ], [ %3499, %3354 ]
  %3248 = icmp eq i32 %3108, %3118
  br i1 %3248, label %3512, label %3107

; <label>:3249                                    ; preds = %3204
  %3250 = icmp eq i32 %3166, 255
  br i1 %3250, label %3349, label %3251, !dx.controlflow.hints !118

; <label>:3251                                    ; preds = %3249
  %3252 = mul nuw nsw i32 %3166, 176
  %3253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3252, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.f32 %3253, 0
  %3255 = extractvalue %dx.types.ResRet.f32 %3253, 1
  %3256 = extractvalue %dx.types.ResRet.f32 %3253, 2
  %3257 = extractvalue %dx.types.ResRet.f32 %3253, 3
  %3258 = add nuw nsw i32 %3252, 16
  %3259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.ResRet.f32 %3259, 1
  %3262 = add nuw nsw i32 %3252, 32
  %3263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.f32 %3263, 0
  %3265 = extractvalue %dx.types.ResRet.f32 %3263, 1
  %3266 = extractvalue %dx.types.ResRet.f32 %3263, 2
  %3267 = add nuw nsw i32 %3252, 48
  %3268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.ResRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.ResRet.f32 %3268, 2
  %3272 = extractvalue %dx.types.ResRet.f32 %3268, 3
  %3273 = add nuw nsw i32 %3252, 64
  %3274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.ResRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.ResRet.f32 %3274, 2
  %3278 = extractvalue %dx.types.ResRet.f32 %3274, 3
  %3279 = add nuw nsw i32 %3252, 80
  %3280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = extractvalue %dx.types.ResRet.f32 %3280, 3
  %3285 = add nuw nsw i32 %3252, 96
  %3286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.f32 %3286, 0
  %3288 = extractvalue %dx.types.ResRet.f32 %3286, 1
  %3289 = extractvalue %dx.types.ResRet.f32 %3286, 2
  %3290 = extractvalue %dx.types.ResRet.f32 %3286, 3
  %3291 = bitcast float %3261 to i32
  %3292 = fmul fast float %3266, %256
  %3293 = fmul fast float %3266, %257
  %3294 = fmul fast float %3266, %258
  %3295 = fadd fast float %3292, %333
  %3296 = fadd fast float %3293, %334
  %3297 = fadd fast float %3294, %335
  %3298 = fmul fast float %3295, %3269
  %3299 = call float @dx.op.tertiary.f32(i32 46, float %3296, float %3275, float %3298)  ; FMad(a,b,c)
  %3300 = call float @dx.op.tertiary.f32(i32 46, float %3297, float %3281, float %3299)  ; FMad(a,b,c)
  %3301 = fadd fast float %3300, %3287
  %3302 = fmul fast float %3295, %3270
  %3303 = call float @dx.op.tertiary.f32(i32 46, float %3296, float %3276, float %3302)  ; FMad(a,b,c)
  %3304 = call float @dx.op.tertiary.f32(i32 46, float %3297, float %3282, float %3303)  ; FMad(a,b,c)
  %3305 = fadd fast float %3304, %3288
  %3306 = fmul fast float %3295, %3271
  %3307 = call float @dx.op.tertiary.f32(i32 46, float %3296, float %3277, float %3306)  ; FMad(a,b,c)
  %3308 = call float @dx.op.tertiary.f32(i32 46, float %3297, float %3283, float %3307)  ; FMad(a,b,c)
  %3309 = fadd fast float %3308, %3289
  %3310 = fmul fast float %3295, %3272
  %3311 = call float @dx.op.tertiary.f32(i32 46, float %3296, float %3278, float %3310)  ; FMad(a,b,c)
  %3312 = call float @dx.op.tertiary.f32(i32 46, float %3297, float %3284, float %3311)  ; FMad(a,b,c)
  %3313 = fadd fast float %3312, %3290
  %3314 = fdiv fast float %3301, %3313
  %3315 = fdiv fast float %3305, %3313
  %3316 = fdiv fast float %3309, %3313
  %3317 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3316)  ; FMax(a,b)
  %3318 = fmul fast float %136, 0x401921FB60000000
  %3319 = call float @dx.op.unary.f32(i32 13, float %3318)  ; Sin(value)
  %3320 = call float @dx.op.unary.f32(i32 12, float %3318)  ; Cos(value)
  %3321 = fsub fast float -0.000000e+00, %3319
  %3322 = fmul fast float %3256, 5.000000e-01
  %3323 = call float @dx.op.dot2.f32(i32 54, float %136, float %136, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %3324 = call float @dx.op.unary.f32(i32 22, float %3323)  ; Frc(value)
  %3325 = fmul fast float %3324, 0x404A7DD040000000
  %3326 = call float @dx.op.unary.f32(i32 22, float %3325)  ; Frc(value)
  %3327 = fmul fast float %3326, %3265
  %3328 = fadd fast float %3327, %3322
  %3329 = call float @dx.op.tertiary.f32(i32 46, float %3328, float %3321, float 0.000000e+00)  ; FMad(a,b,c)
  %3330 = call float @dx.op.tertiary.f32(i32 46, float %3328, float %3320, float 0.000000e+00)  ; FMad(a,b,c)
  %3331 = fadd fast float %3329, %3314
  %3332 = fadd fast float %3330, %3315
  %3333 = fmul fast float %3331, %3260
  %3334 = fmul fast float %3332, %3260
  %3335 = call float @dx.op.binary.f32(i32 35, float %3333, float %3256)  ; FMax(a,b)
  %3336 = call float @dx.op.binary.f32(i32 35, float %3334, float %3256)  ; FMax(a,b)
  %3337 = call float @dx.op.binary.f32(i32 36, float %3335, float %3257)  ; FMin(a,b)
  %3338 = call float @dx.op.binary.f32(i32 36, float %3336, float %3257)  ; FMin(a,b)
  %3339 = fadd fast float %3337, %3254
  %3340 = fadd fast float %3338, %3255
  %3341 = uitofp i32 %3291 to float
  %3342 = fadd fast float %3317, %3264
  %3343 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %36, float %3339, float %3340, float %3341, float undef, i32 0, i32 0, i32 undef, float %3342)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = fadd fast float %3344, -1.000000e+00
  %3346 = fmul fast float %3345, %3225
  %3347 = fadd fast float %3346, 1.000000e+00
  %3348 = fmul fast float %3347, %3237
  br label %3349

; <label>:3349                                    ; preds = %3251, %3249
  %3350 = phi float [ %3348, %3251 ], [ %3237, %3249 ]
  %3351 = call float @dx.op.binary.f32(i32 36, float %3350, float %3350)  ; FMin(a,b)
  %3352 = call float @dx.op.binary.f32(i32 36, float %3350, float %3351)  ; FMin(a,b)
  %3353 = fcmp fast ogt float %3352, 0.000000e+00
  br i1 %3353, label %3354, label %3241, !dx.controlflow.hints !119

; <label>:3354                                    ; preds = %3349
  %3355 = fmul fast float %3350, %3159
  %3356 = fmul fast float %3350, %3160
  %3357 = fmul fast float %3350, %3161
  %3358 = fsub fast float %3175, %468
  %3359 = fsub fast float %3176, %469
  %3360 = fsub fast float %3177, %470
  %3361 = call float @dx.op.dot3.f32(i32 55, float %3358, float %3359, float %3360, float %3358, float %3359, float %3360)  ; Dot3(ax,ay,az,bx,by,bz)
  %3362 = call float @dx.op.unary.f32(i32 25, float %3361)  ; Rsqrt(value)
  %3363 = fmul fast float %3362, %3358
  %3364 = fmul fast float %3362, %3359
  %3365 = fmul fast float %3362, %3360
  %3366 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3176, float %3177, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %3367 = call float @dx.op.dot3.f32(i32 55, float %471, float %472, float %473, float %3363, float %3364, float %3365)  ; Dot3(ax,ay,az,bx,by,bz)
  %3368 = call float @dx.op.unary.f32(i32 7, float %3366)  ; Saturate(value)
  %3369 = fmul fast float %3368, %3182
  %3370 = fmul fast float %3368, %3368
  %3371 = fmul fast float %3370, 0x47DE623840000000
  %3372 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3373 = fmul fast float %3369, %3372
  %3374 = bitcast float %3172 to i32
  %3375 = ashr i32 %3374, 1
  %3376 = sub nsw i32 1597463007, %3375
  %3377 = bitcast i32 %3376 to float
  %3378 = fmul fast float %3377, %3169
  %3379 = fmul fast float %3377, %3170
  %3380 = fmul fast float %3377, %3171
  %3381 = fsub fast float %3378, %468
  %3382 = fsub fast float %3379, %469
  %3383 = fsub fast float %3380, %470
  %3384 = call float @dx.op.dot3.f32(i32 55, float %3381, float %3382, float %3383, float %3381, float %3382, float %3383)  ; Dot3(ax,ay,az,bx,by,bz)
  %3385 = call float @dx.op.unary.f32(i32 25, float %3384)  ; Rsqrt(value)
  %3386 = fmul fast float %3381, %3385
  %3387 = fmul fast float %3382, %3385
  %3388 = fmul fast float %3383, %3385
  %3389 = call float @dx.op.dot3.f32(i32 55, float %256, float %257, float %258, float %3386, float %3387, float %3388)  ; Dot3(ax,ay,az,bx,by,bz)
  %3390 = fmul fast float %3389, %3389
  %3391 = call float @dx.op.unary.f32(i32 6, float %3366)  ; FAbs(value)
  %3392 = fsub fast float 1.000000e+00, %268
  %3393 = call float @dx.op.binary.f32(i32 35, float %3392, float 0x3F847AE140000000)  ; FMax(a,b)
  %3394 = fmul fast float %3393, %3393
  %3395 = fmul fast float %3394, %3394
  %3396 = fsub fast float 1.000000e+00, %3395
  %3397 = fmul fast float %476, %476
  %3398 = fmul fast float %3397, %3396
  %3399 = fadd fast float %3398, %3395
  %3400 = bitcast float %3399 to i32
  %3401 = ashr i32 %3400, 1
  %3402 = add nsw i32 %3401, 532487669
  %3403 = bitcast i32 %3402 to float
  %3404 = fadd fast float %3403, %476
  %3405 = fmul fast float %3395, %3390
  %3406 = fsub fast float 1.000000e+00, %3390
  %3407 = fadd fast float %3406, %3405
  %3408 = fmul fast float %3391, %3391
  %3409 = fmul fast float %3408, %3396
  %3410 = fadd fast float %3409, %3395
  %3411 = bitcast float %3410 to i32
  %3412 = ashr i32 %3411, 1
  %3413 = add nsw i32 %3412, 532487669
  %3414 = bitcast i32 %3413 to float
  %3415 = fadd fast float %3414, %3391
  %3416 = fmul fast float %3407, %3407
  %3417 = fmul fast float %3416, %3404
  %3418 = fmul fast float %3417, %3415
  %3419 = fdiv fast float 1.000000e+00, %3418
  %3420 = bitcast float %3395 to i32
  %3421 = sitofp i32 %3420 to float
  %3422 = fmul fast float %3421, 0x3FE7F73180000000
  %3423 = fadd fast float %3422, 0x41AFE27C40000000
  %3424 = fptosi float %3423 to i32
  %3425 = bitcast i32 %3424 to float
  %3426 = fmul fast float %3138, 0x3FD80E9D60000000
  %3427 = fmul fast float %3426, %3377
  %3428 = fadd fast float %3425, %3427
  %3429 = bitcast float %3428 to i32
  %3430 = sub nsw i32 2129859010, %3429
  %3431 = bitcast i32 %3430 to float
  %3432 = fmul fast float %3395, %3419
  %3433 = fmul fast float %3432, %3425
  %3434 = fmul fast float %3433, %3431
  %3435 = call float @dx.op.unary.f32(i32 6, float %3367)  ; FAbs(value)
  %3436 = fsub fast float 1.000000e+00, %3435
  %3437 = bitcast float %3436 to i32
  %3438 = sitofp i32 %3437 to float
  %3439 = fmul fast float %3438, 5.000000e+00
  %3440 = fadd fast float %3439, 0xC1EFBF8940000000
  %3441 = fptosi float %3440 to i32
  %3442 = bitcast i32 %3441 to float
  %3443 = fsub fast float 1.000000e+00, %456
  %3444 = fsub fast float 1.000000e+00, %457
  %3445 = fsub fast float 1.000000e+00, %474
  %3446 = fmul fast float %3442, %3443
  %3447 = fmul fast float %3442, %3444
  %3448 = fmul fast float %3442, %3445
  %3449 = fadd fast float %3446, %456
  %3450 = fadd fast float %3447, %457
  %3451 = fadd fast float %3448, %474
  %3452 = fmul fast float %3366, 9.843750e-01
  %3453 = fadd fast float %3452, 7.812500e-03
  %3454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3453, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 2
  %3456 = extractvalue %dx.types.ResRet.f32 %3454, 3
  %3457 = fmul fast float %3455, %456
  %3458 = fmul fast float %3455, %457
  %3459 = fmul fast float %3455, %474
  %3460 = fadd fast float %3457, %3456
  %3461 = fadd fast float %3458, %3456
  %3462 = fadd fast float %3459, %3456
  %3463 = call float @dx.op.binary.f32(i32 35, float %3461, float %3462)  ; FMax(a,b)
  %3464 = call float @dx.op.binary.f32(i32 35, float %3460, float %3463)  ; FMax(a,b)
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = fsub fast float -0.000000e+00, %256
  %3467 = fsub fast float -0.000000e+00, %257
  %3468 = fsub fast float -0.000000e+00, %258
  %3469 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3176, float %3177, float %3466, float %3467, float %3468)  ; Dot3(ax,ay,az,bx,by,bz)
  %3470 = call float @dx.op.unary.f32(i32 7, float %3469)  ; Saturate(value)
  %3471 = fmul fast float %3470, %3182
  %3472 = fmul fast float %3470, 9.843750e-01
  %3473 = fadd fast float %3472, 7.812500e-03
  %3474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3473, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 3
  %3477 = fmul fast float %3475, %456
  %3478 = fmul fast float %3475, %457
  %3479 = fmul fast float %3475, %474
  %3480 = fadd fast float %3477, %3476
  %3481 = fadd fast float %3478, %3476
  %3482 = fadd fast float %3479, %3476
  %3483 = call float @dx.op.binary.f32(i32 35, float %3481, float %3482)  ; FMax(a,b)
  %3484 = call float @dx.op.binary.f32(i32 35, float %3480, float %3483)  ; FMax(a,b)
  %3485 = fsub fast float 1.000000e+00, %3484
  %3486 = fmul fast float %3471, %3485
  %3487 = fmul fast float %3486, %275
  %3488 = fmul fast float %3486, %276
  %3489 = fmul fast float %3486, %277
  %3490 = fmul fast float %3465, %3373
  %3491 = fadd fast float %3487, %3490
  %3492 = fadd fast float %3488, %3490
  %3493 = fadd fast float %3489, %3490
  %3494 = fmul fast float %3491, %3355
  %3495 = fmul fast float %3492, %3356
  %3496 = fmul fast float %3493, %3357
  %3497 = fadd fast float %3494, %3112
  %3498 = fadd fast float %3495, %3113
  %3499 = fadd fast float %3496, %3114
  %3500 = fmul fast float %3373, %3355
  %3501 = fmul fast float %3500, %3449
  %3502 = fmul fast float %3501, %3434
  %3503 = fmul fast float %3373, %3356
  %3504 = fmul fast float %3503, %3450
  %3505 = fmul fast float %3504, %3434
  %3506 = fmul fast float %3373, %3357
  %3507 = fmul fast float %3506, %3451
  %3508 = fmul fast float %3507, %3434
  %3509 = fadd fast float %3502, %3109
  %3510 = fadd fast float %3505, %3110
  %3511 = fadd fast float %3508, %3111
  br label %3241

; <label>:3512                                    ; preds = %3241
  br label %3513

; <label>:3513                                    ; preds = %3512, %3075
  %3514 = phi float [ %3077, %3075 ], [ %3242, %3512 ]
  %3515 = phi float [ %3078, %3075 ], [ %3243, %3512 ]
  %3516 = phi float [ %3079, %3075 ], [ %3244, %3512 ]
  %3517 = phi float [ %3080, %3075 ], [ %3245, %3512 ]
  %3518 = phi float [ %3081, %3075 ], [ %3246, %3512 ]
  %3519 = phi float [ %3082, %3075 ], [ %3247, %3512 ]
  %3520 = add i32 %3076, 1
  %3521 = icmp ugt i32 %3520, %3072
  br i1 %3521, label %3522, label %3075

; <label>:3522                                    ; preds = %3513
  br label %3523

; <label>:3523                                    ; preds = %3522, %3025, %3015
  %3524 = phi float [ %3016, %3015 ], [ %3016, %3025 ], [ %3514, %3522 ]
  %3525 = phi float [ %3017, %3015 ], [ %3017, %3025 ], [ %3515, %3522 ]
  %3526 = phi float [ %3018, %3015 ], [ %3018, %3025 ], [ %3516, %3522 ]
  %3527 = phi float [ %3019, %3015 ], [ %3019, %3025 ], [ %3517, %3522 ]
  %3528 = phi float [ %3020, %3015 ], [ %3020, %3025 ], [ %3518, %3522 ]
  %3529 = phi float [ %3021, %3015 ], [ %3021, %3025 ], [ %3519, %3522 ]
  %3530 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %3531 = call float @dx.op.unary.f32(i32 24, float %448)  ; Sqrt(value)
  %3532 = call float @dx.op.unary.f32(i32 24, float %449)  ; Sqrt(value)
  %3533 = fmul fast float %3530, %3527
  %3534 = fmul fast float %3531, %3528
  %3535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3536 = extractvalue %dx.types.CBufRet.f32 %3535, 0
  br i1 %125, label %3537, label %3561

; <label>:3537                                    ; preds = %3523
  %3538 = fadd fast float %3529, %464
  %3539 = fmul fast float %3538, %462
  %3540 = fsub fast float 1.000000e+00, %462
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 3
  %3544 = fmul fast float %3543, %3541
  %3545 = fsub fast float 1.000000e+00, %476
  %3546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3546, 0
  %3548 = fmul fast float %3547, %3545
  %3549 = fsub fast float 1.000000e+00, %278
  %3550 = extractvalue %dx.types.CBufRet.f32 %3546, 2
  %3551 = fmul fast float %3550, %3549
  %3552 = fadd fast float %3534, %3533
  %3553 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3554 = fadd fast float %3544, %3539
  %3555 = fsub fast float %3554, %3548
  %3556 = fsub fast float %3555, %3551
  %3557 = fsub fast float %3556, %3553
  %3558 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3559 = fmul fast float %3557, %3558
  %3560 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  br label %3565

; <label>:3561                                    ; preds = %3523
  %3562 = fmul fast float %3532, %3529
  %3563 = fmul fast float %3536, %3534
  %3564 = fmul fast float %3562, %3536
  br label %3565

; <label>:3565                                    ; preds = %3561, %3537
  %3566 = phi float [ %3552, %3537 ], [ %3533, %3561 ]
  %3567 = phi float [ %3560, %3537 ], [ %3563, %3561 ]
  %3568 = phi float [ 1.000000e+00, %3537 ], [ %3564, %3561 ]
  %3569 = fmul float %3536, %3566
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = fmul fast float %3571, %3525
  %3573 = fmul fast float %3571, %3526
  %3574 = fadd fast float %3525, %3524
  %3575 = select i1 %125, float %3574, float %3524
  %3576 = fmul float %3575, %3571
  %3577 = select i1 %125, float 0.000000e+00, float %3572
  %3578 = select i1 %125, float 0.000000e+00, float %3573
  %3579 = fmul fast float %3569, %3530
  %3580 = fmul fast float %3567, %3531
  %3581 = fmul fast float %3568, %3532
  %3582 = fadd fast float %3576, %3579
  %3583 = fadd fast float %3577, %3580
  %3584 = fadd fast float %3578, %3581
  %3585 = select i1 %125, float %3567, float %3583
  %3586 = select i1 %125, float %3568, float %3584
  %3587 = call float @dx.op.binary.f32(i32 36, float %3582, float 3.225500e+04)  ; FMin(a,b)
  %3588 = call float @dx.op.binary.f32(i32 36, float %3585, float 3.225500e+04)  ; FMin(a,b)
  %3589 = call float @dx.op.binary.f32(i32 36, float %3586, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3588)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3589)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.viewIdState = !{!50}
!dx.entryPoints = !{!51}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !41, !44}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 31, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 61, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 62, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 63, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 21, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 22, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !21}
!21 = !{i32 0, i32 5}
!22 = !{i32 14, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
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
!44 = !{!45, !46, !47, !48, !49}
!45 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!46 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!47 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!48 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!49 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!50 = !{[51 x i32] [i32 49, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7]}
!51 = !{void ()* @ps_main, !"ps_main", !52, !4, !79}
!52 = !{!53, !77, null}
!53 = !{!54, !57, !58, !60, !62, !63, !65, !67, !69, !70, !71, !72, !73, !75, !76}
!54 = !{i32 0, !"SV_Position", i8 9, i8 3, !55, i8 4, i32 1, i8 4, i32 0, i8 0, !56}
!55 = !{i32 0}
!56 = !{i32 3, i32 11}
!57 = !{i32 1, !"COLOR", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!58 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 2, i8 0, !59}
!59 = !{i32 3, i32 8}
!60 = !{i32 3, !"NORMAL", i8 9, i8 0, !55, i8 2, i32 1, i8 3, i32 3, i8 0, !61}
!61 = !{i32 3, i32 7}
!62 = !{i32 4, !"TANGENT", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!63 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !55, i8 2, i32 1, i8 1, i32 3, i8 3, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !66, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!66 = !{i32 1}
!67 = !{i32 7, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !66, i8 4, i32 1, i8 4, i32 6, i8 0, !68}
!68 = !{i32 3, i32 15}
!69 = !{i32 8, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !55, i8 4, i32 1, i8 4, i32 7, i8 0, !64}
!70 = !{i32 9, !"LGV_POSITION_INDEX", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 8, i8 0, !59}
!71 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !55, i8 2, i32 1, i8 2, i32 9, i8 0, null}
!72 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 10, i8 0, null}
!73 = !{i32 12, !"PACKED_TRI_DATA", i8 5, i8 0, !55, i8 1, i32 1, i8 4, i32 11, i8 0, !74}
!74 = !{i32 3, i32 9}
!75 = !{i32 13, !"SV_IsFrontFace", i8 5, i8 13, !55, i8 1, i32 1, i8 1, i32 12, i8 0, !64}
!76 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !55, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!77 = !{!78}
!78 = !{i32 0, !"SV_Target", i8 9, i8 16, !55, i8 0, i32 1, i8 4, i32 0, i8 0, !68}
!79 = !{i32 0, i64 24}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!82 = distinct !{!82, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!83 = distinct !{!83, !84, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!84 = distinct !{!84, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!102, !104, !106, !108}
!102 = distinct !{!102, !103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!103 = distinct !{!103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!107 = distinct !{!107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}

