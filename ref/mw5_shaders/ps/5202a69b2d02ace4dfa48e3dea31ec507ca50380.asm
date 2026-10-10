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
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x  w
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
; shader hash: 4fbcf942d3b06f06c68e61eef62ab63f
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
; Number of inputs: 41, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
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
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = icmp ne i32 %40, 0
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = alloca [3 x float], align 4
  %56 = alloca [3 x float], align 4
  %57 = alloca [3 x float], align 4
  %58 = alloca [3 x float], align 4
  %59 = alloca [12 x float], align 4
  %60 = alloca [12 x float], align 4
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = fmul fast float %62, %52
  %64 = fmul fast float %62, %53
  %65 = select i1 %41, float 1.000000e+00, float -1.000000e+00
  %66 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %67 = bitcast float %66 to i32
  %68 = ashr i32 %67, 1
  %69 = sub nsw i32 1597250115, %68
  %70 = bitcast i32 %69 to float
  %71 = fmul fast float %46, %65
  %72 = fmul fast float %71, %70
  %73 = fmul fast float %47, %65
  %74 = fmul fast float %73, %70
  %75 = fmul fast float %48, %65
  %76 = fmul fast float %75, %70
  %77 = lshr i32 %43, 8
  %78 = mul nuw nsw i32 %77, 24
  %79 = add nuw nsw i32 %78, 12
  %80 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %79, i32 undef)  ; BufferLoad(srv,index,wot)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = extractvalue %dx.types.ResRet.i32 %80, 1
  %83 = and i32 %81, 65535
  %84 = uitofp i32 %83 to float
  %85 = lshr i32 %81, 16
  %86 = uitofp i32 %85 to float
  %87 = and i32 %82, 65535
  %88 = uitofp i32 %87 to float
  %89 = lshr i32 %82, 16
  %90 = uitofp i32 %89 to float
  %91 = fmul fast float %84, 0x3F00001000000000
  %92 = fmul fast float %86, 0x3F00001000000000
  %93 = fmul fast float %88, 0x3F00001000000000
  %94 = fmul fast float %90, 0x3F00001000000000
  %95 = fadd fast float %91, -1.000000e+00
  %96 = fadd fast float %92, -1.000000e+00
  %97 = fadd fast float %93, -1.000000e+00
  %98 = fadd fast float %94, -1.000000e+00
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.i32 %100, 3
  %102 = and i32 %101, 3
  %103 = icmp ne i32 %102, 0
  %104 = and i32 %101, 4
  %105 = icmp ne i32 %104, 0
  %106 = and i1 %103, %105
  br i1 %106, label %107, label %118

; <label>:107                                     ; preds = %0
  %108 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %109 = fmul fast float %108, %64
  %110 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %111 = fmul fast float %110, %63
  %112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %111, float %109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fsub fast float 1.000000e+00, %113
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = fcmp fast olt float %114, %116
  br label %121

; <label>:118                                     ; preds = %0
  %119 = icmp eq i32 %104, 0
  %120 = and i1 %103, %119
  br label %121

; <label>:121                                     ; preds = %118, %107
  %122 = phi i1 [ %117, %107 ], [ %120, %118 ]
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %125 = fmul fast float %124, 0x3FE3C6EF40000000
  %126 = frem fast float %63, 2.560000e+02
  %127 = frem fast float %64, 2.560000e+02
  %128 = fptoui float %126 to i32
  %129 = fptoui float %127 to i32
  %130 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %128, i32 %129, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = fadd fast float %131, %125
  %133 = call float @dx.op.unary.f32(i32 22, float %132)  ; Frc(value)
  %134 = add i32 %42, 60
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = add i32 %136, 0
  %138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %139 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %138, i32 0)  ; GetDimensions(handle,mipLevel)
  %140 = extractvalue %dx.types.Dimensions %139, 0
  %141 = sitofp i32 %140 to float
  %142 = extractvalue %dx.types.Dimensions %139, 1
  %143 = sitofp i32 %142 to float
  %144 = fmul fast float %86, 0x3F10001000000000
  %145 = fadd fast float %144, -2.000000e+00
  %146 = fmul fast float %145, %96
  %147 = fsub fast float 1.000000e+00, %146
  %148 = fmul fast float %88, 0x3F10001000000000
  %149 = fadd fast float %148, -2.000000e+00
  %150 = fmul fast float %149, %97
  %151 = fsub fast float %147, %150
  %152 = fmul fast float %84, 0x3F10001000000000
  %153 = fadd fast float %152, -2.000000e+00
  %154 = fmul fast float %153, %96
  %155 = fmul fast float %149, %98
  %156 = fsub fast float %154, %155
  %157 = fmul fast float %153, %97
  %158 = fmul fast float %145, %98
  %159 = fadd fast float %157, %158
  %160 = fadd fast float %154, %155
  %161 = fmul fast float %153, %95
  %162 = fsub fast float 1.000000e+00, %161
  %163 = fsub fast float %162, %150
  %164 = fmul fast float %145, %97
  %165 = fmul fast float %153, %98
  %166 = fsub fast float %164, %165
  %167 = fsub fast float %157, %158
  %168 = fadd fast float %164, %165
  %169 = fsub fast float %162, %146
  %170 = fmul fast float %141, %49
  %171 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %172 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %173 = fmul fast float %143, %50
  %174 = call float @dx.op.unary.f32(i32 83, float %173)  ; DerivCoarseX(value)
  %175 = call float @dx.op.unary.f32(i32 84, float %173)  ; DerivCoarseY(value)
  %176 = fmul fast float %174, %174
  %177 = fmul fast float %175, %175
  %178 = fadd fast float %177, %176
  %179 = fmul fast float %174, %171
  %180 = fmul fast float %175, %172
  %181 = fadd fast float %180, %179
  %182 = fmul fast float %171, %171
  %183 = fmul fast float %172, %172
  %184 = fadd fast float %183, %182
  %185 = fmul fast float %178, %184
  %186 = fmul fast float %181, %181
  %187 = fsub fast float %185, %186
  %188 = bitcast float %187 to i32
  %189 = fadd fast float %178, %184
  %190 = bitcast float %189 to i32
  %191 = sub i32 8388608, %190
  %192 = add i32 %191, %188
  %193 = ashr i32 %192, 24
  %194 = sitofp i32 %193 to float
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = add i32 %196, 0
  %198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %198, %dx.types.Handle %35, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float %194)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = extractvalue %dx.types.ResRet.f32 %199, 1
  %202 = extractvalue %dx.types.ResRet.f32 %199, 2
  %203 = fmul fast float %200, 2.000000e+00
  %204 = fmul fast float %201, 2.000000e+00
  %205 = fmul fast float %202, 2.000000e+00
  %206 = fadd fast float %203, -1.000000e+00
  %207 = fadd fast float %204, -1.000000e+00
  %208 = fadd fast float %205, -1.000000e+00
  %209 = fmul fast float %206, %151
  %210 = call float @dx.op.tertiary.f32(i32 46, float %207, float %156, float %209)  ; FMad(a,b,c)
  %211 = call float @dx.op.tertiary.f32(i32 46, float %208, float %159, float %210)  ; FMad(a,b,c)
  %212 = fmul fast float %206, %160
  %213 = call float @dx.op.tertiary.f32(i32 46, float %207, float %163, float %212)  ; FMad(a,b,c)
  %214 = call float @dx.op.tertiary.f32(i32 46, float %208, float %166, float %213)  ; FMad(a,b,c)
  %215 = fmul fast float %206, %167
  %216 = call float @dx.op.tertiary.f32(i32 46, float %207, float %168, float %215)  ; FMad(a,b,c)
  %217 = call float @dx.op.tertiary.f32(i32 46, float %208, float %169, float %216)  ; FMad(a,b,c)
  br i1 %41, label %227, label %218

; <label>:218                                     ; preds = %121
  %219 = call float @dx.op.dot3.f32(i32 55, float %72, float %74, float %76, float %211, float %214, float %217)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = fmul fast float %219, 2.000000e+00
  %221 = fmul fast float %220, %72
  %222 = fmul fast float %220, %74
  %223 = fmul fast float %220, %76
  %224 = fsub fast float %211, %221
  %225 = fsub fast float %214, %222
  %226 = fsub fast float %217, %223
  br label %227

; <label>:227                                     ; preds = %218, %121
  %228 = phi float [ %224, %218 ], [ %211, %121 ]
  %229 = phi float [ %225, %218 ], [ %214, %121 ]
  %230 = phi float [ %226, %218 ], [ %217, %121 ]
  %231 = add i32 %42, 56
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = add i32 %233, 0
  %235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %235, %dx.types.Handle %35, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float %194)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = extractvalue %dx.types.ResRet.f32 %236, 3
  %241 = add i32 %42, 64
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = add i32 %243, 0
  %245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %245, %dx.types.Handle %35, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float %194)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = add i32 %42, 68
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = add i32 %253, 0
  %255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %255, %dx.types.Handle %35, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float %194)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = add i32 %42, 72
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = add i32 %260, 0
  %262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %262, %dx.types.Handle %35, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float %194)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fadd fast float %45, 1.000000e+00
  %266 = add i32 %42, 24
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 2
  %269 = bitcast i32 %268 to float
  %270 = fmul fast float %264, 2.000000e+00
  %271 = fsub fast float %265, %270
  %272 = fmul fast float %269, %271
  %273 = fadd fast float %272, %54
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %276 = extractvalue %dx.types.CBufRet.f32 %274, 3
  %277 = fmul fast float %63, 2.000000e+00
  %278 = fmul fast float %277, %275
  %279 = fmul fast float %64, 2.000000e+00
  %280 = fmul fast float %279, %276
  %281 = fsub fast float 1.000000e+00, %278
  %282 = fsub fast float 1.000000e+00, %280
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %286 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %287 = fmul fast float %281, %284
  %288 = fmul fast float %281, %285
  %289 = fmul fast float %281, %286
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %293 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %294 = fmul fast float %282, %291
  %295 = fmul fast float %282, %292
  %296 = fmul fast float %282, %293
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = fadd fast float %294, %298
  %302 = fadd fast float %301, %287
  %303 = fadd fast float %295, %299
  %304 = fadd fast float %303, %288
  %305 = fadd fast float %296, %300
  %306 = fadd fast float %305, %289
  %307 = fmul fast float %302, %273
  %308 = fmul fast float %304, %273
  %309 = fmul fast float %306, %273
  %310 = call float @dx.op.unary.f32(i32 26, float %44)  ; Round_ne(value)
  %311 = fptoui float %310 to i32
  %312 = call float @dx.op.unary.f32(i32 26, float %51)  ; Round_ne(value)
  %313 = fptoui float %312 to i32
  %314 = shl i32 %313, 3
  %315 = or i32 %314, 4
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 16777215
  %319 = add i32 %318, %311
  %320 = shl i32 %319, 6
  %321 = getelementptr [3 x float], [3 x float]* %55, i32 0, i32 0
  %322 = getelementptr [3 x float], [3 x float]* %56, i32 0, i32 0
  %323 = getelementptr [3 x float], [3 x float]* %57, i32 0, i32 0
  %324 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 0
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = extractvalue %dx.types.ResRet.f32 %325, 1
  %328 = extractvalue %dx.types.ResRet.f32 %325, 2
  %329 = extractvalue %dx.types.ResRet.f32 %325, 3
  store float %326, float* %321, align 4
  store float %327, float* %322, align 4
  store float %328, float* %323, align 4
  store float %329, float* %324, align 4
  %330 = getelementptr [3 x float], [3 x float]* %55, i32 0, i32 1
  %331 = getelementptr [3 x float], [3 x float]* %56, i32 0, i32 1
  %332 = getelementptr [3 x float], [3 x float]* %57, i32 0, i32 1
  %333 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 1
  %334 = or i32 %320, 16
  %335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = extractvalue %dx.types.ResRet.f32 %335, 1
  %338 = extractvalue %dx.types.ResRet.f32 %335, 2
  %339 = extractvalue %dx.types.ResRet.f32 %335, 3
  store float %336, float* %330, align 4
  store float %337, float* %331, align 4
  store float %338, float* %332, align 4
  store float %339, float* %333, align 4
  %340 = getelementptr [3 x float], [3 x float]* %55, i32 0, i32 2
  %341 = getelementptr [3 x float], [3 x float]* %56, i32 0, i32 2
  %342 = getelementptr [3 x float], [3 x float]* %57, i32 0, i32 2
  %343 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 2
  %344 = or i32 %320, 32
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = extractvalue %dx.types.ResRet.f32 %345, 2
  %349 = extractvalue %dx.types.ResRet.f32 %345, 3
  store float %346, float* %340, align 4
  store float %347, float* %341, align 4
  store float %348, float* %342, align 4
  store float %349, float* %343, align 4
  %350 = or i32 %320, 48
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.i32 %353, 1
  %355 = icmp eq i32 %354, 0
  %356 = and i32 %352, 4
  %357 = icmp ne i32 %356, 0
  %358 = and i1 %355, %357
  br i1 %358, label %359, label %398

; <label>:359                                     ; preds = %227
  %360 = and i32 %352, 3
  %361 = getelementptr [3 x float], [3 x float]* %55, i32 0, i32 %360
  %362 = getelementptr [3 x float], [3 x float]* %56, i32 0, i32 %360
  %363 = getelementptr [3 x float], [3 x float]* %57, i32 0, i32 %360
  %364 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 %360
  %365 = load float, float* %361, align 4
  %366 = load float, float* %362, align 4
  %367 = load float, float* %363, align 4
  %368 = load float, float* %364, align 4
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = call float @dx.op.dot3.f32(i32 55, float %365, float %366, float %367, float %370, float %371, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = fadd fast float %373, %368
  %375 = fcmp fast ogt float %374, 1.000000e+00
  br i1 %375, label %376, label %381

; <label>:376                                     ; preds = %359
  %377 = fadd fast float %374, -1.000000e+00
  %378 = fmul fast float %377, 4.000000e+00
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %380 = fmul fast float %379, 4.000000e+00
  br label %387

; <label>:381                                     ; preds = %359
  %382 = fcmp fast olt float %374, 0.000000e+00
  br i1 %382, label %383, label %387

; <label>:383                                     ; preds = %381
  %384 = fmul fast float %374, -4.000000e+00
  %385 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  %386 = fmul fast float %385, -4.000000e+00
  br label %387

; <label>:387                                     ; preds = %383, %381, %376
  %388 = phi float [ %380, %376 ], [ %386, %383 ], [ 0.000000e+00, %381 ]
  %389 = icmp eq i32 %360, 0
  %390 = select i1 %389, float %388, float 0.000000e+00
  %391 = fadd fast float %329, %390
  store float %391, float* %324, align 4, !noalias !78
  %392 = icmp eq i32 %360, 1
  %393 = select i1 %392, float %388, float 0.000000e+00
  %394 = fadd fast float %339, %393
  store float %394, float* %333, align 4, !noalias !78
  %395 = icmp eq i32 %360, 2
  %396 = select i1 %395, float %388, float 0.000000e+00
  %397 = fadd fast float %349, %396
  store float %397, float* %343, align 4, !noalias !78
  br label %398

; <label>:398                                     ; preds = %387, %227
  %399 = phi float [ %349, %227 ], [ %397, %387 ]
  %400 = phi float [ %339, %227 ], [ %394, %387 ]
  %401 = phi float [ %329, %227 ], [ %391, %387 ]
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = fadd fast float %403, %307
  %407 = fadd fast float %404, %308
  %408 = fadd fast float %405, %309
  %409 = call float @dx.op.dot4.f32(i32 56, float %326, float %327, float %328, float %401, float %406, float %407, float %408, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %410 = call float @dx.op.dot4.f32(i32 56, float %336, float %337, float %338, float %400, float %406, float %407, float %408, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %411 = call float @dx.op.dot4.f32(i32 56, float %346, float %347, float %348, float %399, float %406, float %407, float %408, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %412 = fadd fast float %257, 0xBFB99999A0000000
  %413 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %414 = fmul fast float %413, 0x3FF1C71C80000000
  %415 = call float @dx.op.binary.f32(i32 36, float %257, float 0x3FB99999A0000000)  ; FMin(a,b)
  %416 = fsub fast float 1.000000e+00, %414
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fmul fast float %417, %237
  %419 = fmul fast float %417, %238
  %420 = fmul fast float %417, %239
  %421 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %422 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %423 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %424 = fmul fast float %414, %237
  %425 = fmul fast float %414, %238
  %426 = fmul fast float %414, %239
  %427 = fadd fast float %424, %415
  %428 = fadd fast float %425, %415
  %429 = fadd fast float %426, %415
  %430 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %431 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %432 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %433 = call float @dx.op.dot3.f32(i32 55, float %421, float %422, float %423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = fmul fast float %433, 1.875000e-01
  %435 = fadd fast float %434, 0x3FE647AE20000000
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = fsub fast float -0.000000e+00, %309
  %440 = call float @dx.op.dot3.f32(i32 55, float %307, float %308, float %309, float %307, float %308, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %441 = call float @dx.op.unary.f32(i32 25, float %440)  ; Rsqrt(value)
  %442 = fmul fast float %441, %307
  %443 = fmul fast float %441, %308
  %444 = fmul fast float %441, %309
  %445 = fsub fast float -0.000000e+00, %442
  %446 = fsub fast float -0.000000e+00, %443
  %447 = fsub fast float -0.000000e+00, %444
  %448 = select i1 %122, float 0.000000e+00, float %432
  %449 = call float @dx.op.dot3.f32(i32 55, float %228, float %229, float %230, float %445, float %446, float %447)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %451 = call float @dx.op.dot3.f32(i32 55, float %442, float %443, float %444, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = fmul fast float %451, 2.000000e+00
  %453 = fmul fast float %452, %228
  %454 = fmul fast float %452, %229
  %455 = fmul fast float %452, %230
  %456 = fsub fast float %442, %453
  %457 = fsub fast float %443, %454
  %458 = fsub fast float %444, %455
  %459 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %250)  ; FMin(a,b)
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = fadd fast float %461, %307
  %464 = fadd fast float %462, %308
  %465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.i32 %465, 0
  %467 = icmp eq i32 %466, 1
  br i1 %467, label %468, label %503

; <label>:468                                     ; preds = %398
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 0
  %471 = extractvalue %dx.types.CBufRet.f32 %469, 1
  %472 = fsub fast float %463, %470
  %473 = fsub fast float %464, %471
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %477 = fmul fast float %472, %475
  %478 = fmul fast float %473, %476
  %479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = fcmp fast ogt float %480, 0.000000e+00
  %482 = extractvalue %dx.types.CBufRet.i32 %465, 3
  %483 = icmp ne i32 %482, 0
  %484 = and i1 %481, %483
  br i1 %484, label %485, label %503, !dx.controlflow.hints !83

; <label>:485                                     ; preds = %468
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %489 = fsub fast float %463, %487
  %490 = fsub fast float %464, %488
  %491 = fmul fast float %489, %489
  %492 = fmul fast float %490, %490
  %493 = fadd fast float %491, %492
  %494 = uitofp i32 %482 to float
  %495 = fmul fast float %494, %494
  %496 = fcmp fast ogt float %493, %495
  br i1 %496, label %503, label %497

; <label>:497                                     ; preds = %485
  %498 = call float @dx.op.unary.f32(i32 24, float %493)  ; Sqrt(value)
  %499 = fsub fast float %494, %498
  %500 = fmul fast float %499, 0x3F75555560000000
  %501 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %502 = call float @dx.op.binary.f32(i32 36, float %501, float %480)  ; FMin(a,b)
  br label %503

; <label>:503                                     ; preds = %497, %485, %468, %398
  %504 = phi float [ 1.000000e+00, %398 ], [ %502, %497 ], [ %480, %468 ], [ 0.000000e+00, %485 ]
  %505 = fcmp fast ogt float %504, 0.000000e+00
  br i1 %505, label %506, label %881, !dx.controlflow.hints !84

; <label>:506                                     ; preds = %503
  %507 = fadd fast float %44, 5.000000e-01
  %508 = fptoui float %507 to i32
  %509 = fadd fast float %51, 5.000000e-01
  %510 = fptoui float %509 to i32
  %511 = shl i32 %510, 3
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = or i32 %511, 4
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 16777215
  %518 = add i32 %517, %508
  %519 = shl i32 %518, 5
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = extractvalue %dx.types.ResRet.f32 %520, 2
  %524 = or i32 %519, 16
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = lshr i32 %516, 24
  %530 = and i32 %529, 3
  %531 = add nuw nsw i32 %530, 3
  %532 = shl i32 1, %531
  %533 = lshr i32 %516, 29
  %534 = lshr i32 %516, 23
  %535 = and i32 %534, 56
  %536 = shl nuw nsw i32 %533, 3
  %537 = lshr i32 %513, 16
  %538 = and i32 %513, 65535
  %539 = uitofp i32 %532 to float
  %540 = fmul fast float %539, 1.562500e-02
  %541 = uitofp i32 %537 to float
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 3
  %544 = fmul fast float %543, %541
  %545 = uitofp i32 %535 to float
  %546 = fmul fast float %545, 1.562500e-02
  %547 = uitofp i32 %536 to float
  %548 = fmul fast float %547, 1.562500e-02
  %549 = uitofp i32 %538 to float
  %550 = fmul fast float %543, %549
  %551 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %552 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %553 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %554 = fmul fast float %551, %521
  %555 = fmul fast float %552, %522
  %556 = fmul fast float %553, %523
  %557 = fadd fast float %554, %526
  %558 = fmul fast float %540, %557
  %559 = fadd fast float %558, %546
  %560 = fadd fast float %555, %527
  %561 = fmul fast float %540, %560
  %562 = fadd fast float %561, %548
  %563 = fadd fast float %556, %528
  %564 = fmul fast float %544, %563
  %565 = fadd fast float %564, %550
  %566 = fmul fast float %559, 5.000000e-01
  %567 = fmul fast float %562, 0x3FD5555560000000
  %568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %559, float %562, float %565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 3
  %574 = fmul fast float %573, %569
  %575 = fmul fast float %573, %570
  %576 = fmul fast float %573, %571
  %577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %566, float %567, float %565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = extractvalue %dx.types.ResRet.f32 %577, 1
  %580 = extractvalue %dx.types.ResRet.f32 %577, 2
  %581 = extractvalue %dx.types.ResRet.f32 %577, 3
  %582 = fadd fast float %566, 5.000000e-01
  %583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %582, float %567, float %565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = extractvalue %dx.types.ResRet.f32 %583, 3
  %588 = fadd fast float %567, 0x3FD5555560000000
  %589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %566, float %588, float %565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = extractvalue %dx.types.ResRet.f32 %589, 3
  %594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %582, float %588, float %565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = extractvalue %dx.types.ResRet.f32 %594, 1
  %597 = extractvalue %dx.types.ResRet.f32 %594, 2
  %598 = extractvalue %dx.types.ResRet.f32 %594, 3
  %599 = fadd fast float %567, 0x3FE5555560000000
  %600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %566, float %599, float %565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = extractvalue %dx.types.ResRet.f32 %600, 3
  %605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %582, float %599, float %565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = extractvalue %dx.types.ResRet.f32 %605, 3
  %610 = fmul fast float %578, 0x400BB67AE0000000
  %611 = fadd fast float %610, 0xBFFBB67AE0000000
  %612 = fmul fast float %611, %574
  %613 = fmul fast float %579, 0x400BB67AE0000000
  %614 = fadd fast float %613, 0xBFFBB67AE0000000
  %615 = fmul fast float %614, %575
  %616 = fmul fast float %580, 0x400BB67AE0000000
  %617 = fadd fast float %616, 0xBFFBB67AE0000000
  %618 = fmul fast float %617, %576
  %619 = fmul fast float %581, 0x4011E377A0000000
  %620 = fadd fast float %619, 0xC001E377A0000000
  %621 = fmul fast float %620, %574
  %622 = fmul fast float %584, 0x4011E377A0000000
  %623 = fadd fast float %622, 0xC001E377A0000000
  %624 = fmul fast float %623, %575
  %625 = fmul fast float %585, 0x4011E377A0000000
  %626 = fadd fast float %625, 0xC001E377A0000000
  %627 = fmul fast float %626, %576
  %628 = fmul fast float %586, 0x400BB67AE0000000
  %629 = fadd fast float %628, 0xBFFBB67AE0000000
  %630 = fmul fast float %629, %574
  %631 = fmul fast float %587, 0x400BB67AE0000000
  %632 = fadd fast float %631, 0xBFFBB67AE0000000
  %633 = fmul fast float %632, %575
  %634 = fmul fast float %590, 0x400BB67AE0000000
  %635 = fadd fast float %634, 0xBFFBB67AE0000000
  %636 = fmul fast float %635, %576
  %637 = fmul fast float %591, 0x400BB67AE0000000
  %638 = fadd fast float %637, 0xBFFBB67AE0000000
  %639 = fmul fast float %638, %574
  %640 = fmul fast float %592, 0x400BB67AE0000000
  %641 = fadd fast float %640, 0xBFFBB67AE0000000
  %642 = fmul fast float %641, %575
  %643 = fmul fast float %593, 0x400BB67AE0000000
  %644 = fadd fast float %643, 0xBFFBB67AE0000000
  %645 = fmul fast float %644, %576
  %646 = fmul fast float %595, 0x400EFBDEC0000000
  %647 = fadd fast float %646, 0xBFFEFBDEC0000000
  %648 = fmul fast float %647, %574
  %649 = fmul fast float %596, 0x400EFBDEC0000000
  %650 = fadd fast float %649, 0xBFFEFBDEC0000000
  %651 = fmul fast float %650, %575
  %652 = fmul fast float %597, 0x400EFBDEC0000000
  %653 = fadd fast float %652, 0xBFFEFBDEC0000000
  %654 = fmul fast float %653, %576
  %655 = fmul fast float %598, 0x400EFBDEC0000000
  %656 = fadd fast float %655, 0xBFFEFBDEC0000000
  %657 = fmul fast float %656, %574
  %658 = fmul fast float %601, 0x400EFBDEC0000000
  %659 = fadd fast float %658, 0xBFFEFBDEC0000000
  %660 = fmul fast float %659, %575
  %661 = fmul fast float %602, 0x400EFBDEC0000000
  %662 = fadd fast float %661, 0xBFFEFBDEC0000000
  %663 = fmul fast float %662, %576
  %664 = fmul fast float %603, 0x400EFBDEC0000000
  %665 = fadd fast float %664, 0xBFFEFBDEC0000000
  %666 = fmul fast float %665, %574
  %667 = fmul fast float %604, 0x400EFBDEC0000000
  %668 = fadd fast float %667, 0xBFFEFBDEC0000000
  %669 = fmul fast float %668, %575
  %670 = fmul fast float %606, 0x400EFBDEC0000000
  %671 = fadd fast float %670, 0xBFFEFBDEC0000000
  %672 = fmul fast float %671, %576
  %673 = fmul fast float %607, 0x400EFBDEC0000000
  %674 = fadd fast float %673, 0xBFFEFBDEC0000000
  %675 = fmul fast float %674, %574
  %676 = fmul fast float %608, 0x400EFBDEC0000000
  %677 = fadd fast float %676, 0xBFFEFBDEC0000000
  %678 = fmul fast float %677, %575
  %679 = fmul fast float %609, 0x400EFBDEC0000000
  %680 = fadd fast float %679, 0xBFFEFBDEC0000000
  %681 = fmul fast float %680, %576
  %682 = fmul fast float %574, 0x3FD20DD760000000
  %683 = fmul fast float %230, 0x3FD4D8D7C0000000
  %684 = fmul fast float %683, %612
  %685 = fmul fast float %230, %230
  %686 = fmul fast float %685, 0x3FEE471020000000
  %687 = fadd fast float %686, 0xBFD42F6020000000
  %688 = fmul fast float %621, %687
  %689 = fmul fast float %228, 0x3FD4D8D7C0000000
  %690 = fmul fast float %689, %639
  %691 = fmul fast float %229, 0x3FD4D8D7C0000000
  %692 = fmul fast float %691, %630
  %693 = fmul fast float %230, 0xBFF17B1420000000
  %694 = fmul fast float %648, %228
  %695 = fmul fast float %657, %229
  %696 = fmul fast float %228, %228
  %697 = fmul fast float %229, %229
  %698 = fsub fast float %696, %697
  %699 = fmul fast float %698, 0x3FC17B1420000000
  %700 = fmul fast float %699, %666
  %701 = fmul fast float %228, 0x3FD17B1420000000
  %702 = fmul fast float %701, %229
  %703 = fmul fast float %702, %675
  %704 = fadd fast float %695, %694
  %705 = fmul fast float %693, %704
  %706 = fadd fast float %705, %688
  %707 = fmul fast float %706, 2.500000e-01
  %708 = fadd fast float %684, %682
  %709 = fsub fast float %708, %692
  %710 = fsub fast float %709, %690
  %711 = fadd fast float %710, %707
  %712 = fadd fast float %711, %700
  %713 = fadd fast float %712, %703
  %714 = fmul fast float %575, 0x3FD20DD760000000
  %715 = fmul fast float %683, %615
  %716 = fmul fast float %624, %687
  %717 = fmul fast float %689, %642
  %718 = fmul fast float %691, %633
  %719 = fmul fast float %651, %228
  %720 = fmul fast float %660, %229
  %721 = fmul fast float %699, %669
  %722 = fmul fast float %702, %678
  %723 = fadd fast float %720, %719
  %724 = fmul fast float %693, %723
  %725 = fadd fast float %724, %716
  %726 = fmul fast float %725, 2.500000e-01
  %727 = fadd fast float %715, %714
  %728 = fsub fast float %727, %718
  %729 = fsub fast float %728, %717
  %730 = fadd fast float %729, %721
  %731 = fadd fast float %730, %726
  %732 = fadd fast float %731, %722
  %733 = fmul fast float %576, 0x3FD20DD760000000
  %734 = fmul fast float %683, %618
  %735 = fmul fast float %627, %687
  %736 = fmul fast float %689, %645
  %737 = fmul fast float %691, %636
  %738 = fmul fast float %654, %228
  %739 = fmul fast float %663, %229
  %740 = fmul fast float %699, %672
  %741 = fmul fast float %702, %681
  %742 = fadd fast float %739, %738
  %743 = fmul fast float %693, %742
  %744 = fadd fast float %743, %735
  %745 = fmul fast float %744, 2.500000e-01
  %746 = fadd fast float %734, %733
  %747 = fsub fast float %746, %736
  %748 = fsub fast float %747, %737
  %749 = fadd fast float %748, %745
  %750 = fadd fast float %749, %740
  %751 = fadd fast float %750, %741
  %752 = call float @dx.op.binary.f32(i32 35, float %713, float 0.000000e+00)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float %732, float 0.000000e+00)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float %751, float 0.000000e+00)  ; FMax(a,b)
  %755 = fsub fast float -0.000000e+00, %228
  %756 = fsub fast float -0.000000e+00, %229
  %757 = fmul fast float %230, 0xBFD4D8D7C0000000
  %758 = fmul fast float %757, %612
  %759 = fmul fast float %639, 0x3FD4D8D7C0000000
  %760 = fmul fast float %230, 0x3FF17B1420000000
  %761 = fmul fast float %648, %755
  %762 = fmul fast float %657, %756
  %763 = fmul fast float %229, 0x3FD17B1420000000
  %764 = fmul fast float %763, %675
  %765 = fadd fast float %762, %761
  %766 = fmul fast float %760, %765
  %767 = fadd fast float %766, %688
  %768 = fmul fast float %767, 2.500000e-01
  %769 = fadd fast float %764, %759
  %770 = fmul fast float %769, %228
  %771 = fadd fast float %758, %682
  %772 = fadd fast float %771, %692
  %773 = fadd fast float %772, %700
  %774 = fadd fast float %773, %768
  %775 = fadd fast float %774, %770
  %776 = fmul fast float %757, %615
  %777 = fmul fast float %642, 0x3FD4D8D7C0000000
  %778 = fmul fast float %651, %755
  %779 = fmul fast float %660, %756
  %780 = fmul fast float %763, %678
  %781 = fadd fast float %779, %778
  %782 = fmul fast float %760, %781
  %783 = fadd fast float %782, %716
  %784 = fmul fast float %783, 2.500000e-01
  %785 = fadd fast float %780, %777
  %786 = fmul fast float %785, %228
  %787 = fadd fast float %776, %714
  %788 = fadd fast float %787, %718
  %789 = fadd fast float %788, %721
  %790 = fadd fast float %789, %784
  %791 = fadd fast float %790, %786
  %792 = fmul fast float %757, %618
  %793 = fmul fast float %636, 0x3FD4D8D7C0000000
  %794 = fmul fast float %654, %755
  %795 = fmul fast float %663, %756
  %796 = fmul fast float %701, %681
  %797 = fadd fast float %795, %794
  %798 = fmul fast float %760, %797
  %799 = fadd fast float %798, %735
  %800 = fmul fast float %799, 2.500000e-01
  %801 = fadd fast float %796, %793
  %802 = fmul fast float %801, %229
  %803 = fadd fast float %792, %733
  %804 = fadd fast float %803, %736
  %805 = fadd fast float %804, %740
  %806 = fadd fast float %805, %800
  %807 = fadd fast float %806, %802
  %808 = call float @dx.op.binary.f32(i32 35, float %775, float 0.000000e+00)  ; FMax(a,b)
  %809 = call float @dx.op.binary.f32(i32 35, float %791, float 0.000000e+00)  ; FMax(a,b)
  %810 = call float @dx.op.binary.f32(i32 35, float %807, float 0.000000e+00)  ; FMax(a,b)
  %811 = fmul fast float %458, 0x3FD4D8D7C0000000
  %812 = fmul fast float %811, %612
  %813 = fmul fast float %458, %458
  %814 = fmul fast float %813, 0x3FEE471020000000
  %815 = fadd fast float %814, 0xBFD42F6020000000
  %816 = fmul fast float %621, %815
  %817 = fmul fast float %456, 0x3FD4D8D7C0000000
  %818 = fmul fast float %817, %639
  %819 = fmul fast float %457, 0x3FD4D8D7C0000000
  %820 = fmul fast float %819, %630
  %821 = fmul fast float %458, 0xBFF17B1420000000
  %822 = fmul fast float %648, %456
  %823 = fmul fast float %657, %457
  %824 = fmul fast float %456, %456
  %825 = fmul fast float %457, %457
  %826 = fsub fast float %824, %825
  %827 = fmul fast float %826, 0x3FC17B1420000000
  %828 = fmul fast float %827, %666
  %829 = fmul fast float %457, 0x3FD17B1420000000
  %830 = fmul fast float %829, %456
  %831 = fmul fast float %830, %675
  %832 = fadd fast float %823, %822
  %833 = fmul fast float %821, %832
  %834 = fadd fast float %833, %816
  %835 = fmul fast float %834, 2.500000e-01
  %836 = fadd fast float %812, %682
  %837 = fsub fast float %836, %820
  %838 = fsub fast float %837, %818
  %839 = fadd fast float %838, %835
  %840 = fadd fast float %839, %828
  %841 = fadd fast float %840, %831
  %842 = fmul fast float %811, %615
  %843 = fmul fast float %624, %815
  %844 = fmul fast float %817, %642
  %845 = fmul fast float %819, %633
  %846 = fmul fast float %651, %456
  %847 = fmul fast float %660, %457
  %848 = fmul fast float %827, %669
  %849 = fmul fast float %830, %678
  %850 = fadd fast float %847, %846
  %851 = fmul fast float %821, %850
  %852 = fadd fast float %851, %843
  %853 = fmul fast float %852, 2.500000e-01
  %854 = fadd fast float %842, %714
  %855 = fsub fast float %854, %845
  %856 = fsub fast float %855, %844
  %857 = fadd fast float %856, %848
  %858 = fadd fast float %857, %853
  %859 = fadd fast float %858, %849
  %860 = fmul fast float %811, %618
  %861 = fmul fast float %627, %815
  %862 = fmul fast float %817, %645
  %863 = fmul fast float %819, %636
  %864 = fmul fast float %654, %456
  %865 = fmul fast float %663, %457
  %866 = fmul fast float %827, %672
  %867 = fmul fast float %830, %681
  %868 = fadd fast float %865, %864
  %869 = fmul fast float %821, %868
  %870 = fadd fast float %869, %861
  %871 = fmul fast float %870, 2.500000e-01
  %872 = fadd fast float %860, %733
  %873 = fsub fast float %872, %862
  %874 = fsub fast float %873, %863
  %875 = fadd fast float %874, %871
  %876 = fadd fast float %875, %866
  %877 = fadd fast float %876, %867
  %878 = call float @dx.op.binary.f32(i32 35, float %841, float 0.000000e+00)  ; FMax(a,b)
  %879 = call float @dx.op.binary.f32(i32 35, float %859, float 0.000000e+00)  ; FMax(a,b)
  %880 = call float @dx.op.binary.f32(i32 35, float %877, float 0.000000e+00)  ; FMax(a,b)
  br label %881

; <label>:881                                     ; preds = %506, %503
  %882 = phi float [ %878, %506 ], [ 0.000000e+00, %503 ]
  %883 = phi float [ %879, %506 ], [ 0.000000e+00, %503 ]
  %884 = phi float [ %880, %506 ], [ 0.000000e+00, %503 ]
  %885 = phi float [ %808, %506 ], [ 0.000000e+00, %503 ]
  %886 = phi float [ %809, %506 ], [ 0.000000e+00, %503 ]
  %887 = phi float [ %810, %506 ], [ 0.000000e+00, %503 ]
  %888 = phi float [ %752, %506 ], [ 0.000000e+00, %503 ]
  %889 = phi float [ %753, %506 ], [ 0.000000e+00, %503 ]
  %890 = phi float [ %754, %506 ], [ 0.000000e+00, %503 ]
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = fcmp fast ogt float %892, 0.000000e+00
  %894 = and i1 %505, %893
  br i1 %894, label %895, label %1102, !dx.controlflow.hints !85

; <label>:895                                     ; preds = %881
  %896 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %897 = fadd fast float %896, %309
  %898 = fmul fast float %228, 3.200000e+01
  %899 = fmul fast float %229, 3.200000e+01
  %900 = fadd fast float %463, %898
  %901 = fadd fast float %464, %899
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = fsub fast float %900, %903
  %906 = fsub fast float %901, %904
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %910 = fmul fast float %905, %908
  %911 = fmul fast float %906, %909
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %914 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %915 = fsub fast float %463, %913
  %916 = fsub fast float %464, %914
  %917 = fmul fast float %915, %915
  %918 = fmul fast float %916, %916
  %919 = fadd fast float %917, %918
  %920 = call float @dx.op.unary.f32(i32 24, float %919)  ; Sqrt(value)
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %924 = fsub fast float %920, %922
  %925 = fdiv fast float %924, %923
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %927 = fmul fast float %926, 2.000000e+00
  %928 = fsub fast float 3.000000e+00, %927
  %929 = fmul fast float %926, %926
  %930 = fmul fast float %929, %928
  %931 = fcmp fast oge float %910, 0.000000e+00
  %932 = fcmp fast ole float %910, 1.000000e+00
  %933 = and i1 %932, %931
  %934 = fcmp fast oge float %911, 0.000000e+00
  %935 = and i1 %934, %933
  %936 = fcmp fast ole float %911, 1.000000e+00
  %937 = and i1 %936, %935
  %938 = fcmp fast ogt float %930, 0.000000e+00
  %939 = and i1 %938, %937
  br i1 %939, label %940, label %1063, !dx.controlflow.hints !86

; <label>:940                                     ; preds = %895
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %944 = fmul fast float %942, %910
  %945 = fmul fast float %943, %911
  %946 = call float @dx.op.unary.f32(i32 27, float %944)  ; Round_ni(value)
  %947 = call float @dx.op.unary.f32(i32 27, float %945)  ; Round_ni(value)
  %948 = fptosi float %946 to i32
  %949 = fptosi float %947 to i32
  %950 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %948, i32 %949, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = lshr i32 %951, 16
  %953 = icmp eq i32 %952, 65535
  br i1 %953, label %1063, label %954

; <label>:954                                     ; preds = %940
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %957 = fmul fast float %956, %910
  %958 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %959 = fadd fast float %957, %958
  %960 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %961 = fmul fast float %960, %911
  %962 = extractvalue %dx.types.CBufRet.f32 %955, 3
  %963 = fadd fast float %961, %962
  %964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %959, float %963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %970 = fsub fast float %968, %969
  %971 = fmul fast float %970, %965
  %972 = fadd fast float %971, %969
  %973 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %974 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %975 = fsub fast float %973, %974
  %976 = fmul fast float %975, %966
  %977 = fadd fast float %976, %974
  %978 = fsub fast float %897, %972
  %979 = fsub fast float %977, %972
  %980 = fdiv fast float %978, %979
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %982 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %983 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %984 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %985 = fmul fast float %983, %910
  %986 = fmul fast float %984, %911
  %987 = fmul fast float %985, 1.250000e-01
  %988 = fmul fast float %986, 1.250000e-01
  %989 = call float @dx.op.unary.f32(i32 27, float %987)  ; Round_ni(value)
  %990 = call float @dx.op.unary.f32(i32 27, float %988)  ; Round_ni(value)
  %991 = fmul fast float %989, 8.000000e+00
  %992 = fmul fast float %990, 8.000000e+00
  %993 = fsub fast float %985, %991
  %994 = fsub fast float %986, %992
  %995 = fadd fast float %993, 5.000000e-01
  %996 = fadd fast float %994, 5.000000e-01
  %997 = and i32 %952, 255
  %998 = lshr i32 %951, 24
  %999 = mul nuw nsw i32 %997, 9
  %1000 = uitofp i32 %999 to float
  %1001 = mul nuw nsw i32 %998, 9
  %1002 = uitofp i32 %1001 to float
  %1003 = fadd fast float %995, %1000
  %1004 = fadd fast float %996, %1002
  %1005 = fdiv fast float %1003, %892
  %1006 = fdiv fast float %1004, %982
  %1007 = fmul fast float %981, 4.375000e-01
  %1008 = fadd fast float %1007, 3.125000e-02
  %1009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1005, float %1006, float %1008, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.ResRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %1009, 2
  %1013 = fadd fast float %1007, 5.312500e-01
  %1014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1005, float %1006, float %1013, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = fmul fast float %1015, 2.000000e+00
  %1019 = fmul fast float %1016, 2.000000e+00
  %1020 = fmul fast float %1017, 2.000000e+00
  %1021 = fadd fast float %1018, -1.000000e+00
  %1022 = fadd fast float %1019, -1.000000e+00
  %1023 = fadd fast float %1020, -1.000000e+00
  %1024 = fmul fast float %1021, %1021
  %1025 = fmul fast float %1022, %1022
  %1026 = fadd fast float %1024, %1025
  %1027 = fmul fast float %1023, %1023
  %1028 = fadd fast float %1026, %1027
  %1029 = call float @dx.op.unary.f32(i32 24, float %1028)  ; Sqrt(value)
  %1030 = fcmp fast ogt float %1029, 0.000000e+00
  br i1 %1030, label %1031, label %1035

; <label>:1031                                    ; preds = %954
  %1032 = fdiv fast float %1021, %1029
  %1033 = fdiv fast float %1022, %1029
  %1034 = fdiv fast float %1023, %1029
  br label %1035

; <label>:1035                                    ; preds = %1031, %954
  %1036 = phi float [ %1032, %1031 ], [ 0.000000e+00, %954 ]
  %1037 = phi float [ %1033, %1031 ], [ 0.000000e+00, %954 ]
  %1038 = phi float [ %1034, %1031 ], [ 0.000000e+00, %954 ]
  %1039 = call float @dx.op.dot3.f32(i32 55, float %1036, float %1037, float %1038, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1039)  ; FMax(a,b)
  %1041 = fmul fast float %1040, 0x400C5BF8A0000000
  %1042 = fmul fast float %1010, %930
  %1043 = fmul fast float %1042, %1041
  %1044 = fmul fast float %1011, %930
  %1045 = fmul fast float %1044, %1041
  %1046 = fmul fast float %1012, %930
  %1047 = fmul fast float %1046, %1041
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 3
  %1050 = fmul fast float %1043, %1049
  %1051 = fmul fast float %1045, %1049
  %1052 = fmul fast float %1047, %1049
  %1053 = fcmp fast ogt float %897, %977
  br i1 %1053, label %1054, label %1063

; <label>:1054                                    ; preds = %1035
  %1055 = fmul fast float %979, 0x3FC24924A0000000
  %1056 = fsub fast float %897, %977
  %1057 = fdiv fast float %1056, %1055
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1059 = fsub fast float 1.000000e+00, %1058
  %1060 = fmul fast float %1059, %1050
  %1061 = fmul fast float %1059, %1051
  %1062 = fmul fast float %1059, %1052
  br label %1063

; <label>:1063                                    ; preds = %1054, %1035, %940, %895
  %1064 = phi float [ %1062, %1054 ], [ %1052, %1035 ], [ 0.000000e+00, %940 ], [ 0.000000e+00, %895 ]
  %1065 = phi float [ %1061, %1054 ], [ %1051, %1035 ], [ 0.000000e+00, %940 ], [ 0.000000e+00, %895 ]
  %1066 = phi float [ %1060, %1054 ], [ %1050, %1035 ], [ 0.000000e+00, %940 ], [ 0.000000e+00, %895 ]
  %1067 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1066)  ; FMax(a,b)
  %1068 = fmul fast float %1067, 0x3FD20DD760000000
  %1069 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1070 = fmul fast float %1069, 0x3FDF454380000000
  %1071 = fmul fast float %1069, %1069
  %1072 = fmul fast float %1071, 0x3FEE471020000000
  %1073 = fadd fast float %1072, 0xBFD42F6020000000
  %1074 = call float @dx.op.dot3.f32(i32 55, float %1067, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1070, float %1073)  ; Dot3(ax,ay,az,bx,by,bz)
  %1075 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1065)  ; FMax(a,b)
  %1076 = fmul fast float %1075, 0x3FD20DD760000000
  %1077 = call float @dx.op.dot3.f32(i32 55, float %1075, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1070, float %1073)  ; Dot3(ax,ay,az,bx,by,bz)
  %1078 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1064)  ; FMax(a,b)
  %1079 = fmul fast float %1078, 0x3FD20DD760000000
  %1080 = call float @dx.op.dot3.f32(i32 55, float %1078, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1070, float %1073)  ; Dot3(ax,ay,az,bx,by,bz)
  %1081 = call float @dx.op.binary.f32(i32 35, float %1068, float 0.000000e+00)  ; FMax(a,b)
  %1082 = call float @dx.op.binary.f32(i32 35, float %1076, float 0.000000e+00)  ; FMax(a,b)
  %1083 = call float @dx.op.binary.f32(i32 35, float %1079, float 0.000000e+00)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float %1074, float 0.000000e+00)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 35, float %1077, float 0.000000e+00)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1080, float 0.000000e+00)  ; FMax(a,b)
  %1087 = fmul fast float %1081, %504
  %1088 = fmul fast float %1082, %504
  %1089 = fmul fast float %1083, %504
  %1090 = fadd fast float %1087, %888
  %1091 = fadd fast float %1088, %889
  %1092 = fadd fast float %1089, %890
  %1093 = fadd fast float %1087, %885
  %1094 = fadd fast float %1088, %886
  %1095 = fadd fast float %1089, %887
  %1096 = fmul fast float %1084, %504
  %1097 = fmul fast float %1085, %504
  %1098 = fmul fast float %1086, %504
  %1099 = fadd fast float %1096, %882
  %1100 = fadd fast float %1097, %883
  %1101 = fadd fast float %1098, %884
  br label %1102

; <label>:1102                                    ; preds = %1063, %881
  %1103 = phi float [ %1099, %1063 ], [ %882, %881 ]
  %1104 = phi float [ %1100, %1063 ], [ %883, %881 ]
  %1105 = phi float [ %1101, %1063 ], [ %884, %881 ]
  %1106 = phi float [ %1093, %1063 ], [ %885, %881 ]
  %1107 = phi float [ %1094, %1063 ], [ %886, %881 ]
  %1108 = phi float [ %1095, %1063 ], [ %887, %881 ]
  %1109 = phi float [ %1090, %1063 ], [ %888, %881 ]
  %1110 = phi float [ %1091, %1063 ], [ %889, %881 ]
  %1111 = phi float [ %1092, %1063 ], [ %890, %881 ]
  %1112 = fcmp fast olt float %504, 1.000000e+00
  br i1 %1112, label %1113, label %1946, !dx.controlflow.hints !87

; <label>:1113                                    ; preds = %1102
  %1114 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %1115 = fadd fast float %1114, %309
  %1116 = fmul fast float %228, 3.200000e+01
  %1117 = fmul fast float %229, 3.200000e+01
  %1118 = fadd fast float %463, %1116
  %1119 = fadd fast float %464, %1117
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1123 = fsub fast float %1118, %1121
  %1124 = fsub fast float %1119, %1122
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1128 = fmul fast float %1123, %1126
  %1129 = fmul fast float %1124, %1127
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1132 = fmul fast float %1128, %1131
  %1133 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1134 = fadd fast float %1132, %1133
  %1135 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1136 = fmul fast float %1135, %1129
  %1137 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1138 = fadd fast float %1136, %1137
  %1139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %1134, float %1138, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.f32 %1142, 1
  %1144 = extractvalue %dx.types.CBufRet.f32 %1142, 0
  %1145 = fsub fast float %1143, %1144
  %1146 = fmul fast float %1145, %1140
  %1147 = fadd fast float %1146, %1144
  %1148 = extractvalue %dx.types.CBufRet.f32 %1142, 3
  %1149 = extractvalue %dx.types.CBufRet.f32 %1142, 2
  %1150 = fsub fast float %1148, %1149
  %1151 = fmul fast float %1150, %1141
  %1152 = fadd fast float %1151, %1149
  %1153 = fsub fast float %1115, %1147
  %1154 = fsub fast float %1152, %1147
  %1155 = fdiv fast float %1153, %1154
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 0
  %1159 = fmul fast float %1158, %1156
  %1160 = extractvalue %dx.types.CBufRet.f32 %1157, 1
  %1161 = fadd fast float %1159, %1160
  %1162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %1134, float %1138, float %1161, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.ResRet.f32 %1162, 2
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1170 = fmul fast float %1167, %1163
  %1171 = fmul fast float %1168, %1164
  %1172 = fmul fast float %1169, %1165
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 0
  %1175 = extractvalue %dx.types.CBufRet.f32 %1173, 1
  %1176 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1177 = fadd fast float %1170, %1174
  %1178 = fadd fast float %1171, %1175
  %1179 = fadd fast float %1172, %1176
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = fmul fast float %1181, %1128
  %1183 = extractvalue %dx.types.CBufRet.f32 %1180, 1
  %1184 = fadd fast float %1182, %1183
  %1185 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1186 = fmul fast float %1185, %1129
  %1187 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1188 = fadd fast float %1186, %1187
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1193 = extractvalue %dx.types.CBufRet.f32 %1189, 3
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1198 = extractvalue %dx.types.CBufRet.f32 %1194, 3
  %1199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1184, float %1188, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  %1203 = extractvalue %dx.types.ResRet.f32 %1199, 3
  %1204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1184, float %1188, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.ResRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.ResRet.f32 %1204, 2
  %1208 = extractvalue %dx.types.ResRet.f32 %1204, 3
  %1209 = fmul fast float %1200, %1177
  %1210 = fmul fast float %1205, %1177
  %1211 = fmul fast float %1207, %1177
  %1212 = fmul fast float %1203, %1177
  %1213 = fadd fast float %1209, %1190
  %1214 = fadd fast float %1210, %1191
  %1215 = fadd fast float %1211, %1192
  %1216 = fadd fast float %1212, %1193
  %1217 = fmul fast float %1201, %1177
  %1218 = fmul fast float %1206, %1177
  %1219 = fadd fast float %1217, %1195
  %1220 = fadd fast float %1218, %1196
  %1221 = fmul fast float %1202, %1177
  %1222 = fmul fast float %1208, %1177
  %1223 = fadd fast float %1221, %1197
  %1224 = fadd fast float %1222, %1198
  %1225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1184, float %1188, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.ResRet.f32 %1225, 2
  %1229 = extractvalue %dx.types.ResRet.f32 %1225, 3
  %1230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1184, float %1188, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = extractvalue %dx.types.ResRet.f32 %1230, 3
  %1235 = fmul fast float %1226, %1178
  %1236 = fmul fast float %1231, %1178
  %1237 = fmul fast float %1233, %1178
  %1238 = fmul fast float %1229, %1178
  %1239 = fadd fast float %1213, %1235
  %1240 = fadd fast float %1214, %1236
  %1241 = fadd fast float %1215, %1237
  %1242 = fadd fast float %1216, %1238
  %1243 = fmul fast float %1227, %1178
  %1244 = fmul fast float %1232, %1178
  %1245 = fadd fast float %1219, %1243
  %1246 = fadd fast float %1220, %1244
  %1247 = fmul fast float %1228, %1178
  %1248 = fmul fast float %1234, %1178
  %1249 = fadd fast float %1223, %1247
  %1250 = fadd fast float %1224, %1248
  %1251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1184, float %1188, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1255 = extractvalue %dx.types.ResRet.f32 %1251, 3
  %1256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1184, float %1188, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.ResRet.f32 %1256, 3
  %1261 = fmul fast float %1252, %1179
  %1262 = fmul fast float %1257, %1179
  %1263 = fmul fast float %1259, %1179
  %1264 = fmul fast float %1255, %1179
  %1265 = fadd fast float %1239, %1261
  %1266 = fadd fast float %1240, %1262
  %1267 = fadd fast float %1241, %1263
  %1268 = fadd fast float %1242, %1264
  %1269 = fmul fast float %1253, %1179
  %1270 = fmul fast float %1258, %1179
  %1271 = fadd fast float %1245, %1269
  %1272 = fadd fast float %1246, %1270
  %1273 = fmul fast float %1254, %1179
  %1274 = fmul fast float %1260, %1179
  %1275 = fadd fast float %1249, %1273
  %1276 = fadd fast float %1250, %1274
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1279 = fsub fast float %463, %1278
  %1280 = fsub fast float %1121, %463
  %1281 = call float @dx.op.binary.f32(i32 35, float %1280, float %1279)  ; FMax(a,b)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1277, 1
  %1283 = fsub fast float %464, %1282
  %1284 = fsub fast float %1122, %464
  %1285 = call float @dx.op.binary.f32(i32 35, float %1284, float %1283)  ; FMax(a,b)
  %1286 = call float @dx.op.binary.f32(i32 35, float %1281, float %1285)  ; FMax(a,b)
  %1287 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1288 = fmul fast float %1287, %1286
  %1289 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.CBufRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.CBufRet.f32 %1290, 2
  %1294 = extractvalue %dx.types.CBufRet.f32 %1290, 3
  %1295 = fsub fast float %1291, %1265
  %1296 = fsub fast float %1292, %1266
  %1297 = fsub fast float %1293, %1267
  %1298 = fsub fast float %1294, %1268
  %1299 = fmul fast float %1295, %1289
  %1300 = fmul fast float %1296, %1289
  %1301 = fmul fast float %1297, %1289
  %1302 = fmul fast float %1298, %1289
  %1303 = fadd fast float %1299, %1265
  %1304 = fadd fast float %1300, %1266
  %1305 = fadd fast float %1301, %1267
  %1306 = fadd fast float %1302, %1268
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 0
  %1309 = extractvalue %dx.types.CBufRet.f32 %1307, 1
  %1310 = fsub fast float %1308, %1271
  %1311 = fsub fast float %1309, %1272
  %1312 = fmul fast float %1310, %1289
  %1313 = fmul fast float %1311, %1289
  %1314 = fadd fast float %1312, %1271
  %1315 = fadd fast float %1313, %1272
  %1316 = extractvalue %dx.types.CBufRet.f32 %1307, 2
  %1317 = extractvalue %dx.types.CBufRet.f32 %1307, 3
  %1318 = fsub fast float %1316, %1275
  %1319 = fsub fast float %1317, %1276
  %1320 = fmul fast float %1318, %1289
  %1321 = fmul fast float %1319, %1289
  %1322 = fadd fast float %1320, %1275
  %1323 = fadd fast float %1321, %1276
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 0
  %1326 = fmul fast float %1325, %1303
  %1327 = fmul fast float %1325, %1304
  %1328 = fmul fast float %1325, %1305
  %1329 = fmul fast float %1325, %1306
  %1330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1331 = extractvalue %dx.types.CBufRet.f32 %1330, 0
  %1332 = fmul fast float %1331, %1314
  %1333 = fmul fast float %1331, %1315
  %1334 = fadd fast float %1332, %1326
  %1335 = fadd fast float %1333, %1328
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = fmul fast float %1337, %1322
  %1339 = fmul fast float %1337, %1323
  %1340 = fadd fast float %1334, %1338
  %1341 = fadd fast float %1335, %1339
  %1342 = extractvalue %dx.types.CBufRet.f32 %1324, 1
  %1343 = fmul fast float %1342, %1303
  %1344 = fmul fast float %1342, %1304
  %1345 = fmul fast float %1342, %1305
  %1346 = fmul fast float %1342, %1306
  %1347 = extractvalue %dx.types.CBufRet.f32 %1330, 1
  %1348 = fmul fast float %1347, %1314
  %1349 = fmul fast float %1347, %1315
  %1350 = fadd fast float %1348, %1343
  %1351 = fadd fast float %1349, %1345
  %1352 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1353 = fmul fast float %1352, %1322
  %1354 = fmul fast float %1352, %1323
  %1355 = fadd fast float %1350, %1353
  %1356 = fadd fast float %1351, %1354
  %1357 = extractvalue %dx.types.CBufRet.f32 %1324, 2
  %1358 = fmul fast float %1357, %1303
  %1359 = fmul fast float %1357, %1304
  %1360 = fmul fast float %1357, %1305
  %1361 = fmul fast float %1357, %1306
  %1362 = extractvalue %dx.types.CBufRet.f32 %1330, 2
  %1363 = fmul fast float %1362, %1314
  %1364 = fmul fast float %1362, %1315
  %1365 = fadd fast float %1363, %1358
  %1366 = fadd fast float %1364, %1360
  %1367 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1368 = fmul fast float %1367, %1322
  %1369 = fmul fast float %1367, %1323
  %1370 = fadd fast float %1365, %1368
  %1371 = fadd fast float %1366, %1369
  %1372 = fmul fast float %1359, %1359
  %1373 = fmul fast float %1371, %1371
  %1374 = fmul fast float %1361, %1361
  %1375 = fadd fast float %1374, %1372
  %1376 = fadd fast float %1375, %1373
  %1377 = call float @dx.op.unary.f32(i32 24, float %1376)  ; Sqrt(value)
  %1378 = fcmp fast ugt float %1377, 0.000000e+00
  br i1 %1378, label %1379, label %1394

; <label>:1379                                    ; preds = %1113
  %1380 = fsub fast float -0.000000e+00, %1361
  %1381 = fdiv fast float %1380, %1377
  %1382 = fsub fast float -0.000000e+00, %1359
  %1383 = fdiv fast float %1382, %1377
  %1384 = fdiv fast float %1371, %1377
  %1385 = fmul fast float %1370, 0x3FE279A760000000
  %1386 = fmul fast float %1383, %1359
  %1387 = fmul fast float %1384, %1371
  %1388 = fmul fast float %1381, %1361
  %1389 = fadd fast float %1386, %1388
  %1390 = fsub fast float %1389, %1387
  %1391 = call float @dx.op.unary.f32(i32 6, float %1390)  ; FAbs(value)
  %1392 = fadd fast float %1391, 0x3DDB7CDFE0000000
  %1393 = fdiv fast float %1385, %1392
  br label %1394

; <label>:1394                                    ; preds = %1379, %1113
  %1395 = phi float [ %1393, %1379 ], [ 1.000000e+00, %1113 ]
  %1396 = fmul fast float %1344, %1344
  %1397 = fmul fast float %1356, %1356
  %1398 = fmul fast float %1346, %1346
  %1399 = fadd fast float %1398, %1396
  %1400 = fadd fast float %1399, %1397
  %1401 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1402 = fcmp fast ugt float %1401, 0.000000e+00
  br i1 %1402, label %1403, label %1418

; <label>:1403                                    ; preds = %1394
  %1404 = fsub fast float -0.000000e+00, %1346
  %1405 = fdiv fast float %1404, %1401
  %1406 = fsub fast float -0.000000e+00, %1344
  %1407 = fdiv fast float %1406, %1401
  %1408 = fdiv fast float %1356, %1401
  %1409 = fmul fast float %1355, 0x3FE279A760000000
  %1410 = fmul fast float %1407, %1344
  %1411 = fmul fast float %1408, %1356
  %1412 = fmul fast float %1405, %1346
  %1413 = fadd fast float %1410, %1412
  %1414 = fsub fast float %1413, %1411
  %1415 = call float @dx.op.unary.f32(i32 6, float %1414)  ; FAbs(value)
  %1416 = fadd fast float %1415, 0x3DDB7CDFE0000000
  %1417 = fdiv fast float %1409, %1416
  br label %1418

; <label>:1418                                    ; preds = %1403, %1394
  %1419 = phi float [ %1417, %1403 ], [ 1.000000e+00, %1394 ]
  %1420 = call float @dx.op.binary.f32(i32 36, float %1419, float %1395)  ; FMin(a,b)
  %1421 = fmul fast float %1327, %1327
  %1422 = fmul fast float %1341, %1341
  %1423 = fmul fast float %1329, %1329
  %1424 = fadd fast float %1423, %1421
  %1425 = fadd fast float %1424, %1422
  %1426 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1427 = fcmp fast ugt float %1426, 0.000000e+00
  br i1 %1427, label %1428, label %1443

; <label>:1428                                    ; preds = %1418
  %1429 = fsub fast float -0.000000e+00, %1329
  %1430 = fdiv fast float %1429, %1426
  %1431 = fsub fast float -0.000000e+00, %1327
  %1432 = fdiv fast float %1431, %1426
  %1433 = fdiv fast float %1341, %1426
  %1434 = fmul fast float %1340, 0x3FE279A760000000
  %1435 = fmul fast float %1432, %1327
  %1436 = fmul fast float %1433, %1341
  %1437 = fmul fast float %1430, %1329
  %1438 = fadd fast float %1435, %1437
  %1439 = fsub fast float %1438, %1436
  %1440 = call float @dx.op.unary.f32(i32 6, float %1439)  ; FAbs(value)
  %1441 = fadd fast float %1440, 0x3DDB7CDFE0000000
  %1442 = fdiv fast float %1434, %1441
  br label %1443

; <label>:1443                                    ; preds = %1428, %1418
  %1444 = phi float [ %1442, %1428 ], [ 1.000000e+00, %1418 ]
  %1445 = call float @dx.op.binary.f32(i32 36, float %1444, float %1420)  ; FMin(a,b)
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = fcmp fast olt float %1446, 1.000000e+00
  br i1 %1447, label %1448, label %1458

; <label>:1448                                    ; preds = %1443
  %1449 = fmul fast float %1446, %1327
  %1450 = fmul fast float %1446, %1341
  %1451 = fmul fast float %1446, %1329
  %1452 = fmul fast float %1446, %1344
  %1453 = fmul fast float %1446, %1356
  %1454 = fmul fast float %1446, %1346
  %1455 = fmul fast float %1446, %1359
  %1456 = fmul fast float %1446, %1371
  %1457 = fmul fast float %1446, %1361
  br label %1458

; <label>:1458                                    ; preds = %1448, %1443
  %1459 = phi float [ %1455, %1448 ], [ %1359, %1443 ]
  %1460 = phi float [ %1456, %1448 ], [ %1371, %1443 ]
  %1461 = phi float [ %1457, %1448 ], [ %1361, %1443 ]
  %1462 = phi float [ %1452, %1448 ], [ %1344, %1443 ]
  %1463 = phi float [ %1453, %1448 ], [ %1356, %1443 ]
  %1464 = phi float [ %1454, %1448 ], [ %1346, %1443 ]
  %1465 = phi float [ %1449, %1448 ], [ %1327, %1443 ]
  %1466 = phi float [ %1450, %1448 ], [ %1341, %1443 ]
  %1467 = phi float [ %1451, %1448 ], [ %1329, %1443 ]
  %1468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1340)  ; FMax(a,b)
  %1469 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1355)  ; FMax(a,b)
  %1470 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1370)  ; FMax(a,b)
  %1471 = fcmp fast oge float %1128, 0.000000e+00
  %1472 = and i1 %1471, %893
  %1473 = fcmp fast ole float %1128, 1.000000e+00
  %1474 = and i1 %1473, %1472
  %1475 = fcmp fast oge float %1129, 0.000000e+00
  %1476 = and i1 %1475, %1474
  %1477 = fcmp fast ole float %1129, 1.000000e+00
  %1478 = and i1 %1477, %1476
  br i1 %1478, label %1479, label %1624, !dx.controlflow.hints !88

; <label>:1479                                    ; preds = %1458
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 2
  %1482 = extractvalue %dx.types.CBufRet.f32 %1480, 3
  %1483 = fmul fast float %1481, %1128
  %1484 = fmul fast float %1482, %1129
  %1485 = call float @dx.op.unary.f32(i32 27, float %1483)  ; Round_ni(value)
  %1486 = call float @dx.op.unary.f32(i32 27, float %1484)  ; Round_ni(value)
  %1487 = fptosi float %1485 to i32
  %1488 = fptosi float %1486 to i32
  %1489 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %1487, i32 %1488, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 65535
  %1492 = lshr i32 %1490, 16
  %1493 = icmp eq i32 %1491, 65535
  br i1 %1493, label %1530, label %1494

; <label>:1494                                    ; preds = %1479
  %1495 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %1496 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  %1497 = extractvalue %dx.types.CBufRet.f32 %1480, 1
  %1498 = fmul fast float %1496, %1128
  %1499 = fmul fast float %1497, %1129
  %1500 = fmul fast float %1498, 1.250000e-01
  %1501 = fmul fast float %1499, 1.250000e-01
  %1502 = call float @dx.op.unary.f32(i32 27, float %1500)  ; Round_ni(value)
  %1503 = call float @dx.op.unary.f32(i32 27, float %1501)  ; Round_ni(value)
  %1504 = fmul fast float %1502, 8.000000e+00
  %1505 = fmul fast float %1503, 8.000000e+00
  %1506 = and i32 %1490, 255
  %1507 = lshr i32 %1490, 8
  %1508 = and i32 %1507, 255
  %1509 = mul nuw nsw i32 %1506, 9
  %1510 = uitofp i32 %1509 to float
  %1511 = mul nuw nsw i32 %1508, 9
  %1512 = uitofp i32 %1511 to float
  %1513 = fadd fast float %1510, 5.000000e-01
  %1514 = fadd fast float %1513, %1498
  %1515 = fsub fast float %1514, %1504
  %1516 = fadd fast float %1512, 5.000000e-01
  %1517 = fadd fast float %1516, %1499
  %1518 = fsub fast float %1517, %1505
  %1519 = fdiv fast float %1515, %892
  %1520 = fdiv fast float %1518, %1495
  %1521 = fmul fast float %1156, 4.375000e-01
  %1522 = fadd fast float %1521, 3.125000e-02
  %1523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1519, float %1520, float %1522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.ResRet.f32 %1523, 1
  %1526 = extractvalue %dx.types.ResRet.f32 %1523, 2
  %1527 = fadd fast float %1524, %1468
  %1528 = fadd fast float %1525, %1469
  %1529 = fadd fast float %1526, %1470
  br label %1530

; <label>:1530                                    ; preds = %1494, %1479
  %1531 = phi float [ %1529, %1494 ], [ %1470, %1479 ]
  %1532 = phi float [ %1528, %1494 ], [ %1469, %1479 ]
  %1533 = phi float [ %1527, %1494 ], [ %1468, %1479 ]
  %1534 = icmp eq i32 %1492, 65535
  br i1 %1534, label %1624, label %1535

; <label>:1535                                    ; preds = %1530
  %1536 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %1537 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  %1538 = extractvalue %dx.types.CBufRet.f32 %1480, 1
  %1539 = fmul fast float %1537, %1128
  %1540 = fmul fast float %1538, %1129
  %1541 = fmul fast float %1539, 1.250000e-01
  %1542 = fmul fast float %1540, 1.250000e-01
  %1543 = call float @dx.op.unary.f32(i32 27, float %1541)  ; Round_ni(value)
  %1544 = call float @dx.op.unary.f32(i32 27, float %1542)  ; Round_ni(value)
  %1545 = fmul fast float %1543, 8.000000e+00
  %1546 = fmul fast float %1544, 8.000000e+00
  %1547 = fsub fast float %1539, %1545
  %1548 = fsub fast float %1540, %1546
  %1549 = fadd fast float %1547, 5.000000e-01
  %1550 = fadd fast float %1548, 5.000000e-01
  %1551 = and i32 %1492, 255
  %1552 = lshr i32 %1490, 24
  %1553 = mul nuw nsw i32 %1551, 9
  %1554 = uitofp i32 %1553 to float
  %1555 = mul nuw nsw i32 %1552, 9
  %1556 = uitofp i32 %1555 to float
  %1557 = fadd fast float %1549, %1554
  %1558 = fadd fast float %1550, %1556
  %1559 = fdiv fast float %1557, %892
  %1560 = fdiv fast float %1558, %1536
  %1561 = fmul fast float %1156, 4.375000e-01
  %1562 = fadd fast float %1561, 3.125000e-02
  %1563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1559, float %1560, float %1562, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.ResRet.f32 %1563, 1
  %1566 = extractvalue %dx.types.ResRet.f32 %1563, 2
  %1567 = fadd fast float %1561, 5.312500e-01
  %1568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1559, float %1560, float %1567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.ResRet.f32 %1568, 1
  %1571 = extractvalue %dx.types.ResRet.f32 %1568, 2
  %1572 = fmul fast float %1569, 2.000000e+00
  %1573 = fmul fast float %1570, 2.000000e+00
  %1574 = fmul fast float %1571, 2.000000e+00
  %1575 = fadd fast float %1572, -1.000000e+00
  %1576 = fadd fast float %1573, -1.000000e+00
  %1577 = fadd fast float %1574, -1.000000e+00
  %1578 = fmul fast float %1575, %1575
  %1579 = fmul fast float %1576, %1576
  %1580 = fadd fast float %1578, %1579
  %1581 = fmul fast float %1577, %1577
  %1582 = fadd fast float %1580, %1581
  %1583 = call float @dx.op.unary.f32(i32 24, float %1582)  ; Sqrt(value)
  %1584 = fcmp fast ogt float %1583, 0.000000e+00
  br i1 %1584, label %1585, label %1589

; <label>:1585                                    ; preds = %1535
  %1586 = fdiv fast float %1575, %1583
  %1587 = fdiv fast float %1576, %1583
  %1588 = fdiv fast float %1577, %1583
  br label %1589

; <label>:1589                                    ; preds = %1585, %1535
  %1590 = phi float [ %1586, %1585 ], [ 0.000000e+00, %1535 ]
  %1591 = phi float [ %1587, %1585 ], [ 0.000000e+00, %1535 ]
  %1592 = phi float [ %1588, %1585 ], [ 0.000000e+00, %1535 ]
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.CBufRet.f32 %1593, 1
  %1596 = fsub fast float %463, %1594
  %1597 = fsub fast float %464, %1595
  %1598 = fmul fast float %1596, %1596
  %1599 = fmul fast float %1597, %1597
  %1600 = fadd fast float %1598, %1599
  %1601 = call float @dx.op.unary.f32(i32 24, float %1600)  ; Sqrt(value)
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 1
  %1605 = fsub fast float %1601, %1603
  %1606 = fdiv fast float %1605, %1604
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = fmul fast float %1607, 2.000000e+00
  %1609 = fsub fast float 3.000000e+00, %1608
  %1610 = fmul fast float %1607, %1607
  %1611 = fmul fast float %1610, %1609
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1591, float %1592, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1612)  ; FMax(a,b)
  %1614 = fmul fast float %1613, 0x400C5BF8A0000000
  %1615 = fmul fast float %1611, %1564
  %1616 = fmul fast float %1615, %1614
  %1617 = fadd fast float %1616, %1533
  %1618 = fmul fast float %1611, %1565
  %1619 = fmul fast float %1618, %1614
  %1620 = fadd fast float %1619, %1532
  %1621 = fmul fast float %1611, %1566
  %1622 = fmul fast float %1621, %1614
  %1623 = fadd fast float %1622, %1531
  br label %1624

; <label>:1624                                    ; preds = %1589, %1530, %1458
  %1625 = phi float [ %1623, %1589 ], [ %1531, %1530 ], [ %1470, %1458 ]
  %1626 = phi float [ %1620, %1589 ], [ %1532, %1530 ], [ %1469, %1458 ]
  %1627 = phi float [ %1617, %1589 ], [ %1533, %1530 ], [ %1468, %1458 ]
  %1628 = fcmp fast ogt float %1115, %1152
  %1629 = and i1 %1471, %1628
  %1630 = and i1 %1473, %1629
  %1631 = and i1 %1475, %1630
  %1632 = and i1 %1477, %1631
  br i1 %1632, label %1633, label %1690, !dx.controlflow.hints !89

; <label>:1633                                    ; preds = %1624
  %1634 = fmul fast float %1154, 0x3FC24924A0000000
  %1635 = fsub fast float %1115, %1152
  %1636 = fdiv fast float %1635, %1634
  %1637 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1643 = extractvalue %dx.types.CBufRet.f32 %1640, 2
  %1644 = fsub fast float %1639, %1627
  %1645 = fsub fast float %1641, %1465
  %1646 = fsub fast float %1642, %1466
  %1647 = fsub fast float %1643, %1467
  %1648 = fmul fast float %1644, %1637
  %1649 = fmul fast float %1645, %1637
  %1650 = fmul fast float %1646, %1637
  %1651 = fmul fast float %1647, %1637
  %1652 = fadd fast float %1648, %1627
  %1653 = fadd fast float %1649, %1465
  %1654 = fadd fast float %1650, %1466
  %1655 = fadd fast float %1651, %1467
  %1656 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.CBufRet.f32 %1657, 1
  %1660 = extractvalue %dx.types.CBufRet.f32 %1657, 2
  %1661 = fsub fast float %1656, %1626
  %1662 = fsub fast float %1658, %1462
  %1663 = fsub fast float %1659, %1463
  %1664 = fsub fast float %1660, %1464
  %1665 = fmul fast float %1661, %1637
  %1666 = fmul fast float %1662, %1637
  %1667 = fmul fast float %1663, %1637
  %1668 = fmul fast float %1664, %1637
  %1669 = fadd fast float %1665, %1626
  %1670 = fadd fast float %1666, %1462
  %1671 = fadd fast float %1667, %1463
  %1672 = fadd fast float %1668, %1464
  %1673 = extractvalue %dx.types.CBufRet.f32 %1638, 2
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.CBufRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.CBufRet.f32 %1674, 2
  %1678 = fsub fast float %1673, %1625
  %1679 = fsub fast float %1675, %1459
  %1680 = fsub fast float %1676, %1460
  %1681 = fsub fast float %1677, %1461
  %1682 = fmul fast float %1678, %1637
  %1683 = fmul fast float %1679, %1637
  %1684 = fmul fast float %1680, %1637
  %1685 = fmul fast float %1681, %1637
  %1686 = fadd fast float %1682, %1625
  %1687 = fadd fast float %1683, %1459
  %1688 = fadd fast float %1684, %1460
  %1689 = fadd fast float %1685, %1461
  br label %1690

; <label>:1690                                    ; preds = %1633, %1624
  %1691 = phi float [ %1686, %1633 ], [ %1625, %1624 ]
  %1692 = phi float [ %1687, %1633 ], [ %1459, %1624 ]
  %1693 = phi float [ %1688, %1633 ], [ %1460, %1624 ]
  %1694 = phi float [ %1689, %1633 ], [ %1461, %1624 ]
  %1695 = phi float [ %1669, %1633 ], [ %1626, %1624 ]
  %1696 = phi float [ %1670, %1633 ], [ %1462, %1624 ]
  %1697 = phi float [ %1671, %1633 ], [ %1463, %1624 ]
  %1698 = phi float [ %1672, %1633 ], [ %1464, %1624 ]
  %1699 = phi float [ %1652, %1633 ], [ %1627, %1624 ]
  %1700 = phi float [ %1653, %1633 ], [ %1465, %1624 ]
  %1701 = phi float [ %1654, %1633 ], [ %1466, %1624 ]
  %1702 = phi float [ %1655, %1633 ], [ %1467, %1624 ]
  %1703 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1704 = fmul fast float %1703, %1699
  %1705 = fmul fast float %1703, %1695
  %1706 = fmul fast float %1703, %1691
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 3
  %1709 = fmul fast float %1704, %1708
  %1710 = fmul fast float %1705, %1708
  %1711 = fmul fast float %1706, %1708
  %1712 = fmul fast float %1700, 1.500000e+00
  %1713 = fmul fast float %1712, %1703
  %1714 = fmul fast float %1713, %1708
  %1715 = fmul fast float %1701, 1.500000e+00
  %1716 = fmul fast float %1715, %1703
  %1717 = fmul fast float %1716, %1708
  %1718 = fmul fast float %1702, 1.500000e+00
  %1719 = fmul fast float %1718, %1703
  %1720 = fmul fast float %1719, %1708
  %1721 = fmul fast float %1696, 1.500000e+00
  %1722 = fmul fast float %1721, %1703
  %1723 = fmul fast float %1722, %1708
  %1724 = fmul fast float %1697, 1.500000e+00
  %1725 = fmul fast float %1724, %1703
  %1726 = fmul fast float %1725, %1708
  %1727 = fmul fast float %1698, 1.500000e+00
  %1728 = fmul fast float %1727, %1703
  %1729 = fmul fast float %1728, %1708
  %1730 = fmul fast float %1692, 1.500000e+00
  %1731 = fmul fast float %1730, %1703
  %1732 = fmul fast float %1731, %1708
  %1733 = fmul fast float %1693, 1.500000e+00
  %1734 = fmul fast float %1733, %1703
  %1735 = fmul fast float %1734, %1708
  %1736 = fmul fast float %1694, 1.500000e+00
  %1737 = fmul fast float %1736, %1703
  %1738 = fmul fast float %1737, %1708
  %1739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1709)  ; FMax(a,b)
  %1740 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1717, float %1720, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1741 = fcmp fast oeq float %1740, 0.000000e+00
  %1742 = fcmp fast oeq float %1739, 0.000000e+00
  %1743 = or i1 %1742, %1741
  br i1 %1743, label %1773, label %1744

; <label>:1744                                    ; preds = %1690
  %1745 = fsub fast float -0.000000e+00, %1720
  %1746 = fsub fast float -0.000000e+00, %1714
  %1747 = call float @dx.op.unary.f32(i32 24, float %1740)  ; Sqrt(value)
  %1748 = fdiv fast float %1747, %1739
  %1749 = fcmp fast ogt float %1748, 0x3FFB6F8900000000
  %1750 = select i1 %1749, float 0x3FFB6F8900000000, float %1748
  %1751 = fmul fast float %1750, 0x3FE8A23460000000
  %1752 = call float @dx.op.unary.f32(i32 7, float %1751)  ; Saturate(value)
  %1753 = call float @dx.op.binary.f32(i32 35, float %1750, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1754 = fmul fast float %1752, %1739
  %1755 = fmul fast float %1753, 0x3FF279A740000000
  %1756 = fadd fast float %1755, -1.000000e+00
  %1757 = call float @dx.op.dot3.f32(i32 55, float %1745, float %1746, float %1717, float %1745, float %1746, float %1717)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = call float @dx.op.unary.f32(i32 25, float %1757)  ; Rsqrt(value)
  %1759 = fmul fast float %1758, %1745
  %1760 = fmul fast float %1758, %1746
  %1761 = fmul fast float %1758, %1717
  %1762 = fmul fast float %1756, %1756
  %1763 = fsub fast float 1.000000e+00, %1762
  %1764 = fmul fast float %1753, 0x40005F8BE0000000
  %1765 = fsub fast float 0x400C5BF8A0000000, %1764
  %1766 = fdiv fast float %1754, %1765
  %1767 = fmul fast float %1766, 0x3FEE31C3C0000000
  %1768 = fmul fast float %1767, %1763
  %1769 = fmul fast float %1753, 0x3FDACB7480000000
  %1770 = fadd fast float %1769, 0xBFD7347680000000
  %1771 = fmul fast float %1770, %1766
  %1772 = fmul fast float %1771, %1763
  br label %1773

; <label>:1773                                    ; preds = %1744, %1690
  %1774 = phi float [ %1759, %1744 ], [ 0.000000e+00, %1690 ]
  %1775 = phi float [ %1760, %1744 ], [ 0.000000e+00, %1690 ]
  %1776 = phi float [ %1761, %1744 ], [ 0.000000e+00, %1690 ]
  %1777 = phi float [ %1768, %1744 ], [ 0.000000e+00, %1690 ]
  %1778 = phi float [ %1772, %1744 ], [ 0.000000e+00, %1690 ]
  %1779 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1775, float %1776, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1780 = fmul fast float %1779, 0x3FDF454380000000
  %1781 = fmul fast float %1779, %1779
  %1782 = fmul fast float %1781, 0x3FEE471020000000
  %1783 = fadd fast float %1782, 0xBFD42F6020000000
  %1784 = fmul fast float %1739, 0x3FD20DD760000000
  %1785 = fmul fast float %1783, %1778
  %1786 = fadd fast float %1785, %1784
  %1787 = fmul fast float %1780, %1777
  %1788 = fadd fast float %1786, %1787
  %1789 = fsub fast float %1786, %1787
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1775, float %1776, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = fmul fast float %1790, 0x3FDF454380000000
  %1792 = fmul fast float %1790, %1790
  %1793 = fmul fast float %1792, 0x3FEE471020000000
  %1794 = fadd fast float %1793, 0xBFD42F6020000000
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1777, float %1778, float 0x3FD20DD760000000, float %1791, float %1794)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1710)  ; FMax(a,b)
  %1797 = call float @dx.op.dot3.f32(i32 55, float %1723, float %1726, float %1729, float %1723, float %1726, float %1729)  ; Dot3(ax,ay,az,bx,by,bz)
  %1798 = fcmp fast oeq float %1797, 0.000000e+00
  %1799 = fcmp fast oeq float %1796, 0.000000e+00
  %1800 = or i1 %1799, %1798
  br i1 %1800, label %1830, label %1801

; <label>:1801                                    ; preds = %1773
  %1802 = fsub fast float -0.000000e+00, %1729
  %1803 = fsub fast float -0.000000e+00, %1723
  %1804 = call float @dx.op.unary.f32(i32 24, float %1797)  ; Sqrt(value)
  %1805 = fdiv fast float %1804, %1796
  %1806 = fcmp fast ogt float %1805, 0x3FFB6F8900000000
  %1807 = select i1 %1806, float 0x3FFB6F8900000000, float %1805
  %1808 = fmul fast float %1807, 0x3FE8A23460000000
  %1809 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1810 = call float @dx.op.binary.f32(i32 35, float %1807, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1811 = fmul fast float %1809, %1796
  %1812 = fmul fast float %1810, 0x3FF279A740000000
  %1813 = fadd fast float %1812, -1.000000e+00
  %1814 = call float @dx.op.dot3.f32(i32 55, float %1802, float %1803, float %1726, float %1802, float %1803, float %1726)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = call float @dx.op.unary.f32(i32 25, float %1814)  ; Rsqrt(value)
  %1816 = fmul fast float %1815, %1802
  %1817 = fmul fast float %1815, %1803
  %1818 = fmul fast float %1815, %1726
  %1819 = fmul fast float %1813, %1813
  %1820 = fsub fast float 1.000000e+00, %1819
  %1821 = fmul fast float %1810, 0x40005F8BE0000000
  %1822 = fsub fast float 0x400C5BF8A0000000, %1821
  %1823 = fdiv fast float %1811, %1822
  %1824 = fmul fast float %1823, 0x3FEE31C3C0000000
  %1825 = fmul fast float %1824, %1820
  %1826 = fmul fast float %1810, 0x3FDACB7480000000
  %1827 = fadd fast float %1826, 0xBFD7347680000000
  %1828 = fmul fast float %1827, %1823
  %1829 = fmul fast float %1828, %1820
  br label %1830

; <label>:1830                                    ; preds = %1801, %1773
  %1831 = phi float [ %1816, %1801 ], [ 0.000000e+00, %1773 ]
  %1832 = phi float [ %1817, %1801 ], [ 0.000000e+00, %1773 ]
  %1833 = phi float [ %1818, %1801 ], [ 0.000000e+00, %1773 ]
  %1834 = phi float [ %1825, %1801 ], [ 0.000000e+00, %1773 ]
  %1835 = phi float [ %1829, %1801 ], [ 0.000000e+00, %1773 ]
  %1836 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1837 = fmul fast float %1836, 0x3FDF454380000000
  %1838 = fmul fast float %1836, %1836
  %1839 = fmul fast float %1838, 0x3FEE471020000000
  %1840 = fadd fast float %1839, 0xBFD42F6020000000
  %1841 = fmul fast float %1796, 0x3FD20DD760000000
  %1842 = fmul fast float %1840, %1835
  %1843 = fadd fast float %1842, %1841
  %1844 = fmul fast float %1837, %1834
  %1845 = fadd fast float %1843, %1844
  %1846 = fsub fast float %1843, %1844
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = fmul fast float %1847, 0x3FDF454380000000
  %1849 = fmul fast float %1847, %1847
  %1850 = fmul fast float %1849, 0x3FEE471020000000
  %1851 = fadd fast float %1850, 0xBFD42F6020000000
  %1852 = call float @dx.op.dot3.f32(i32 55, float %1796, float %1834, float %1835, float 0x3FD20DD760000000, float %1848, float %1851)  ; Dot3(ax,ay,az,bx,by,bz)
  %1853 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1711)  ; FMax(a,b)
  %1854 = call float @dx.op.dot3.f32(i32 55, float %1732, float %1735, float %1738, float %1732, float %1735, float %1738)  ; Dot3(ax,ay,az,bx,by,bz)
  %1855 = fcmp fast oeq float %1854, 0.000000e+00
  %1856 = fcmp fast oeq float %1853, 0.000000e+00
  %1857 = or i1 %1856, %1855
  br i1 %1857, label %1887, label %1858

; <label>:1858                                    ; preds = %1830
  %1859 = fsub fast float -0.000000e+00, %1738
  %1860 = fsub fast float -0.000000e+00, %1732
  %1861 = call float @dx.op.unary.f32(i32 24, float %1854)  ; Sqrt(value)
  %1862 = fdiv fast float %1861, %1853
  %1863 = fcmp fast ogt float %1862, 0x3FFB6F8900000000
  %1864 = select i1 %1863, float 0x3FFB6F8900000000, float %1862
  %1865 = fmul fast float %1864, 0x3FE8A23460000000
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = call float @dx.op.binary.f32(i32 35, float %1864, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1868 = fmul fast float %1866, %1853
  %1869 = fmul fast float %1867, 0x3FF279A740000000
  %1870 = fadd fast float %1869, -1.000000e+00
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1859, float %1860, float %1735, float %1859, float %1860, float %1735)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = call float @dx.op.unary.f32(i32 25, float %1871)  ; Rsqrt(value)
  %1873 = fmul fast float %1872, %1859
  %1874 = fmul fast float %1872, %1860
  %1875 = fmul fast float %1872, %1735
  %1876 = fmul fast float %1870, %1870
  %1877 = fsub fast float 1.000000e+00, %1876
  %1878 = fmul fast float %1867, 0x40005F8BE0000000
  %1879 = fsub fast float 0x400C5BF8A0000000, %1878
  %1880 = fdiv fast float %1868, %1879
  %1881 = fmul fast float %1880, 0x3FEE31C3C0000000
  %1882 = fmul fast float %1881, %1877
  %1883 = fmul fast float %1867, 0x3FDACB7480000000
  %1884 = fadd fast float %1883, 0xBFD7347680000000
  %1885 = fmul fast float %1884, %1880
  %1886 = fmul fast float %1885, %1877
  br label %1887

; <label>:1887                                    ; preds = %1858, %1830
  %1888 = phi float [ %1873, %1858 ], [ 0.000000e+00, %1830 ]
  %1889 = phi float [ %1874, %1858 ], [ 0.000000e+00, %1830 ]
  %1890 = phi float [ %1875, %1858 ], [ 0.000000e+00, %1830 ]
  %1891 = phi float [ %1882, %1858 ], [ 0.000000e+00, %1830 ]
  %1892 = phi float [ %1886, %1858 ], [ 0.000000e+00, %1830 ]
  %1893 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1889, float %1890, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1894 = fmul fast float %1893, 0x3FDF454380000000
  %1895 = fmul fast float %1893, %1893
  %1896 = fmul fast float %1895, 0x3FEE471020000000
  %1897 = fadd fast float %1896, 0xBFD42F6020000000
  %1898 = fmul fast float %1853, 0x3FD20DD760000000
  %1899 = fmul fast float %1897, %1892
  %1900 = fadd fast float %1899, %1898
  %1901 = fmul fast float %1894, %1891
  %1902 = fadd fast float %1900, %1901
  %1903 = fsub fast float %1900, %1901
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1889, float %1890, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = fmul fast float %1904, 0x3FDF454380000000
  %1906 = fmul fast float %1904, %1904
  %1907 = fmul fast float %1906, 0x3FEE471020000000
  %1908 = fadd fast float %1907, 0xBFD42F6020000000
  %1909 = call float @dx.op.dot3.f32(i32 55, float %1853, float %1891, float %1892, float 0x3FD20DD760000000, float %1905, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1910 = call float @dx.op.binary.f32(i32 35, float %1788, float 0.000000e+00)  ; FMax(a,b)
  %1911 = call float @dx.op.binary.f32(i32 35, float %1845, float 0.000000e+00)  ; FMax(a,b)
  %1912 = call float @dx.op.binary.f32(i32 35, float %1902, float 0.000000e+00)  ; FMax(a,b)
  %1913 = call float @dx.op.binary.f32(i32 35, float %1789, float 0.000000e+00)  ; FMax(a,b)
  %1914 = call float @dx.op.binary.f32(i32 35, float %1846, float 0.000000e+00)  ; FMax(a,b)
  %1915 = call float @dx.op.binary.f32(i32 35, float %1903, float 0.000000e+00)  ; FMax(a,b)
  %1916 = call float @dx.op.binary.f32(i32 35, float %1795, float 0.000000e+00)  ; FMax(a,b)
  %1917 = call float @dx.op.binary.f32(i32 35, float %1852, float 0.000000e+00)  ; FMax(a,b)
  %1918 = call float @dx.op.binary.f32(i32 35, float %1909, float 0.000000e+00)  ; FMax(a,b)
  %1919 = fsub fast float %1109, %1910
  %1920 = fsub fast float %1110, %1911
  %1921 = fsub fast float %1111, %1912
  %1922 = fmul fast float %1919, %504
  %1923 = fmul fast float %1920, %504
  %1924 = fmul fast float %1921, %504
  %1925 = fadd fast float %1922, %1910
  %1926 = fadd fast float %1923, %1911
  %1927 = fadd fast float %1924, %1912
  %1928 = fsub fast float %1106, %1913
  %1929 = fsub fast float %1107, %1914
  %1930 = fsub fast float %1108, %1915
  %1931 = fmul fast float %1928, %504
  %1932 = fmul fast float %1929, %504
  %1933 = fmul fast float %1930, %504
  %1934 = fadd fast float %1931, %1913
  %1935 = fadd fast float %1932, %1914
  %1936 = fadd fast float %1933, %1915
  %1937 = fsub fast float %1103, %1916
  %1938 = fsub fast float %1104, %1917
  %1939 = fsub fast float %1105, %1918
  %1940 = fmul fast float %1937, %504
  %1941 = fmul fast float %1938, %504
  %1942 = fmul fast float %1939, %504
  %1943 = fadd fast float %1940, %1916
  %1944 = fadd fast float %1941, %1917
  %1945 = fadd fast float %1942, %1918
  br label %1946

; <label>:1946                                    ; preds = %1887, %1102
  %1947 = phi float [ %1943, %1887 ], [ %1103, %1102 ]
  %1948 = phi float [ %1944, %1887 ], [ %1104, %1102 ]
  %1949 = phi float [ %1945, %1887 ], [ %1105, %1102 ]
  %1950 = phi float [ %1934, %1887 ], [ %1106, %1102 ]
  %1951 = phi float [ %1935, %1887 ], [ %1107, %1102 ]
  %1952 = phi float [ %1936, %1887 ], [ %1108, %1102 ]
  %1953 = phi float [ %1925, %1887 ], [ %1109, %1102 ]
  %1954 = phi float [ %1926, %1887 ], [ %1110, %1102 ]
  %1955 = phi float [ %1927, %1887 ], [ %1111, %1102 ]
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 0
  %1958 = call float @dx.op.binary.f32(i32 36, float %421, float %1957)  ; FMin(a,b)
  %1959 = fsub fast float 1.000000e+00, %459
  %1960 = fmul fast float %1958, %1959
  %1961 = fsub fast float 1.000000e+00, %1960
  %1962 = bitcast float %1961 to i32
  %1963 = sub nsw i32 2129859010, %1962
  %1964 = bitcast i32 %1963 to float
  %1965 = call float @dx.op.binary.f32(i32 36, float %422, float %1957)  ; FMin(a,b)
  %1966 = fmul fast float %1965, %1959
  %1967 = fsub fast float 1.000000e+00, %1966
  %1968 = bitcast float %1967 to i32
  %1969 = sub nsw i32 2129859010, %1968
  %1970 = bitcast i32 %1969 to float
  %1971 = call float @dx.op.binary.f32(i32 36, float %423, float %1957)  ; FMin(a,b)
  %1972 = fmul fast float %1971, %1959
  %1973 = fsub fast float 1.000000e+00, %1972
  %1974 = bitcast float %1973 to i32
  %1975 = sub nsw i32 2129859010, %1974
  %1976 = bitcast i32 %1975 to float
  %1977 = fmul fast float %1953, %459
  %1978 = fmul fast float %1977, %1964
  %1979 = fmul fast float %1954, %459
  %1980 = fmul fast float %1979, %1970
  %1981 = fmul fast float %1955, %459
  %1982 = fmul fast float %1981, %1976
  %1983 = call float @dx.op.binary.f32(i32 36, float %430, float %1957)  ; FMin(a,b)
  %1984 = fmul fast float %1983, %1959
  %1985 = fsub fast float 1.000000e+00, %1984
  %1986 = bitcast float %1985 to i32
  %1987 = sub nsw i32 2129859010, %1986
  %1988 = bitcast i32 %1987 to float
  %1989 = call float @dx.op.binary.f32(i32 36, float %431, float %1957)  ; FMin(a,b)
  %1990 = fmul fast float %1989, %1959
  %1991 = fsub fast float 1.000000e+00, %1990
  %1992 = bitcast float %1991 to i32
  %1993 = sub nsw i32 2129859010, %1992
  %1994 = bitcast i32 %1993 to float
  %1995 = call float @dx.op.binary.f32(i32 36, float %448, float %1957)  ; FMin(a,b)
  %1996 = fmul fast float %1995, %1959
  %1997 = fsub fast float 1.000000e+00, %1996
  %1998 = bitcast float %1997 to i32
  %1999 = sub nsw i32 2129859010, %1998
  %2000 = bitcast i32 %1999 to float
  %2001 = fmul fast float %1947, %459
  %2002 = fmul fast float %2001, %1988
  %2003 = fmul fast float %1948, %459
  %2004 = fmul fast float %2003, %1994
  %2005 = fmul fast float %1949, %459
  %2006 = fmul fast float %2005, %2000
  %2007 = call float @dx.op.dot3.f32(i32 55, float %1978, float %1980, float %1982, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = select i1 %122, float 0.000000e+00, float %1978
  %2009 = select i1 %122, float %2007, float %1980
  %2010 = select i1 %122, float 0.000000e+00, float %1982
  %2011 = call float @dx.op.dot3.f32(i32 55, float %1950, float %1951, float %1952, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2012 = select i1 %122, float 0.000000e+00, float %1950
  %2013 = select i1 %122, float %2011, float %1951
  %2014 = select i1 %122, float 0.000000e+00, float %1952
  %2015 = call float @dx.op.dot3.f32(i32 55, float %2002, float %2004, float %2006, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = select i1 %122, float 0.000000e+00, float %2002
  %2017 = select i1 %122, float %2015, float %2004
  %2018 = select i1 %122, float 0.000000e+00, float %2006
  %2019 = fmul fast float %450, 9.843750e-01
  %2020 = fmul fast float %240, 9.843750e-01
  %2021 = fadd fast float %2019, 7.812500e-03
  %2022 = fadd fast float %2020, 7.812500e-03
  %2023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2021, float %2022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 2
  %2025 = extractvalue %dx.types.ResRet.f32 %2023, 3
  %2026 = fmul fast float %2024, %430
  %2027 = fmul fast float %2024, %431
  %2028 = fmul fast float %2024, %448
  %2029 = fadd fast float %2026, %2025
  %2030 = fadd fast float %2027, %2025
  %2031 = fadd fast float %2028, %2025
  %2032 = call float @dx.op.binary.f32(i32 35, float %2030, float %2031)  ; FMax(a,b)
  %2033 = call float @dx.op.binary.f32(i32 35, float %2029, float %2032)  ; FMax(a,b)
  %2034 = fsub fast float 1.000000e+00, %2033
  %2035 = fmul fast float %2029, %2016
  %2036 = fmul fast float %2030, %2017
  %2037 = fmul fast float %2031, %2018
  %2038 = fmul fast float %2012, %247
  %2039 = fmul fast float %2013, %248
  %2040 = fmul fast float %2014, %249
  %2041 = fadd fast float %2038, %2008
  %2042 = fmul fast float %2041, %2034
  %2043 = fadd fast float %2039, %2009
  %2044 = fmul fast float %2043, %2034
  %2045 = fadd fast float %2040, %2010
  %2046 = fmul fast float %2045, %2034
  %2047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.f32 %2047, 3
  %2049 = fcmp fast oeq float %2048, 0.000000e+00
  br i1 %2049, label %2989, label %2050

; <label>:2050                                    ; preds = %1946
  %2051 = extractvalue %dx.types.CBufRet.f32 %2047, 0
  %2052 = extractvalue %dx.types.CBufRet.f32 %2047, 1
  %2053 = extractvalue %dx.types.CBufRet.f32 %2047, 2
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2057 = extractvalue %dx.types.CBufRet.f32 %2054, 2
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.CBufRet.f32 %2058, 1
  %2061 = call float @dx.op.dot3.f32(i32 55, float %2055, float %2056, float %2057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2062 = select i1 %122, float %2059, float %2055
  %2063 = select i1 %122, float %2061, float %2056
  %2064 = select i1 %122, float %2060, float %2057
  %2065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.f32 %2065, 2
  %2067 = fmul fast float %2066, %228
  %2068 = fmul fast float %2066, %229
  %2069 = fmul fast float %2066, %230
  %2070 = fadd fast float %2067, %307
  %2071 = fadd fast float %2068, %308
  %2072 = fadd fast float %2069, %309
  %2073 = fcmp fast olt float %2048, 0.000000e+00
  br i1 %2073, label %2695, label %2074

; <label>:2074                                    ; preds = %2050
  %2075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2076 = extractvalue %dx.types.CBufRet.f32 %2075, 0
  %2077 = extractvalue %dx.types.CBufRet.f32 %2075, 1
  %2078 = extractvalue %dx.types.CBufRet.f32 %2075, 2
  %2079 = extractvalue %dx.types.CBufRet.f32 %2075, 3
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.CBufRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.CBufRet.f32 %2080, 2
  %2084 = extractvalue %dx.types.CBufRet.f32 %2080, 3
  %2085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2086 = extractvalue %dx.types.CBufRet.f32 %2085, 0
  %2087 = extractvalue %dx.types.CBufRet.f32 %2085, 1
  %2088 = extractvalue %dx.types.CBufRet.f32 %2085, 2
  %2089 = extractvalue %dx.types.CBufRet.f32 %2085, 3
  %2090 = fmul fast float %2076, %2070
  %2091 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2077, float %2090)  ; FMad(a,b,c)
  %2092 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2078, float %2091)  ; FMad(a,b,c)
  %2093 = fadd fast float %2092, %2079
  %2094 = fmul fast float %2081, %2070
  %2095 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2082, float %2094)  ; FMad(a,b,c)
  %2096 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2083, float %2095)  ; FMad(a,b,c)
  %2097 = fadd fast float %2096, %2084
  %2098 = fmul fast float %2086, %2070
  %2099 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2087, float %2098)  ; FMad(a,b,c)
  %2100 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2088, float %2099)  ; FMad(a,b,c)
  %2101 = fadd fast float %2100, %2089
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.CBufRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.CBufRet.f32 %2102, 3
  %2106 = fmul fast float %2105, %2093
  %2107 = fmul fast float %2105, %2097
  %2108 = fadd fast float %2106, %2103
  %2109 = fadd fast float %2107, %2104
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.CBufRet.f32 %2110, 3
  %2114 = fmul fast float %2113, %2093
  %2115 = fmul fast float %2113, %2097
  %2116 = fadd fast float %2114, %2111
  %2117 = fadd fast float %2115, %2112
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2120 = fsub fast float %2119, %2101
  %2121 = extractvalue %dx.types.CBufRet.f32 %2118, 2
  %2122 = fmul fast float %2120, %2121
  %2123 = fsub fast float 1.000000e+00, %2122
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = extractvalue %dx.types.CBufRet.f32 %2110, 2
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 2
  %2128 = fadd fast float %2127, %2125
  %2129 = fcmp fast ogt float %2128, 0.000000e+00
  br i1 %2129, label %2130, label %2154

; <label>:2130                                    ; preds = %2074
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2134 = fsub fast float %2116, %2132
  %2135 = fsub fast float %2117, %2133
  %2136 = fcmp fast olt float %2134, 0.000000e+00
  %2137 = fcmp fast olt float %2135, 0.000000e+00
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.CBufRet.f32 %2138, 1
  %2141 = extractvalue %dx.types.CBufRet.f32 %2138, 2
  %2142 = extractvalue %dx.types.CBufRet.f32 %2138, 3
  %2143 = select i1 %2136, float %2139, float %2141
  %2144 = select i1 %2137, float %2140, float %2142
  %2145 = fmul fast float %2143, %2134
  %2146 = fmul fast float %2144, %2135
  %2147 = call float @dx.op.unary.f32(i32 6, float %2145)  ; FAbs(value)
  %2148 = call float @dx.op.unary.f32(i32 6, float %2146)  ; FAbs(value)
  %2149 = extractvalue %dx.types.CBufRet.f32 %2065, 0
  %2150 = call float @dx.op.binary.f32(i32 35, float %2147, float %2148)  ; FMax(a,b)
  %2151 = fsub fast float %2149, %2150
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2153 = fmul fast float %2152, %2124
  br label %2154

; <label>:2154                                    ; preds = %2130, %2074
  %2155 = phi float [ %2153, %2130 ], [ 0.000000e+00, %2074 ]
  %2156 = extractvalue %dx.types.CBufRet.f32 %2102, 2
  %2157 = extractvalue %dx.types.CBufRet.f32 %2126, 1
  %2158 = fadd fast float %2157, %2156
  %2159 = fcmp fast ogt float %2158, 0.000000e+00
  %2160 = extractvalue %dx.types.CBufRet.f32 %2065, 0
  br i1 %2159, label %2161, label %2184

; <label>:2161                                    ; preds = %2154
  %2162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2163 = extractvalue %dx.types.CBufRet.f32 %2162, 0
  %2164 = extractvalue %dx.types.CBufRet.f32 %2162, 1
  %2165 = fsub fast float %2108, %2163
  %2166 = fsub fast float %2109, %2164
  %2167 = fcmp fast olt float %2165, 0.000000e+00
  %2168 = fcmp fast olt float %2166, 0.000000e+00
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 0
  %2171 = extractvalue %dx.types.CBufRet.f32 %2169, 1
  %2172 = extractvalue %dx.types.CBufRet.f32 %2169, 2
  %2173 = extractvalue %dx.types.CBufRet.f32 %2169, 3
  %2174 = select i1 %2167, float %2170, float %2172
  %2175 = select i1 %2168, float %2171, float %2173
  %2176 = fmul fast float %2174, %2165
  %2177 = fmul fast float %2175, %2166
  %2178 = call float @dx.op.unary.f32(i32 6, float %2176)  ; FAbs(value)
  %2179 = call float @dx.op.unary.f32(i32 6, float %2177)  ; FAbs(value)
  %2180 = call float @dx.op.binary.f32(i32 35, float %2178, float %2179)  ; FMax(a,b)
  %2181 = fsub fast float %2160, %2180
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = fmul fast float %2182, %2124
  br label %2184

; <label>:2184                                    ; preds = %2161, %2154
  %2185 = phi float [ %2183, %2161 ], [ 0.000000e+00, %2154 ]
  %2186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2187 = extractvalue %dx.types.CBufRet.f32 %2186, 1
  %2188 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.CBufRet.f32 %2189, 1
  %2192 = fsub fast float %2093, %2190
  %2193 = fsub fast float %2097, %2191
  %2194 = fcmp fast olt float %2192, 0.000000e+00
  %2195 = fcmp fast olt float %2193, 0.000000e+00
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = extractvalue %dx.types.CBufRet.f32 %2196, 1
  %2199 = extractvalue %dx.types.CBufRet.f32 %2196, 2
  %2200 = extractvalue %dx.types.CBufRet.f32 %2196, 3
  %2201 = select i1 %2194, float %2197, float %2199
  %2202 = select i1 %2195, float %2198, float %2200
  %2203 = fmul fast float %2201, %2192
  %2204 = fmul fast float %2202, %2193
  %2205 = call float @dx.op.unary.f32(i32 6, float %2203)  ; FAbs(value)
  %2206 = call float @dx.op.unary.f32(i32 6, float %2204)  ; FAbs(value)
  %2207 = call float @dx.op.binary.f32(i32 35, float %2205, float %2206)  ; FMax(a,b)
  %2208 = fsub fast float %2160, %2207
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = call float @dx.op.binary.f32(i32 36, float %2209, float %2188)  ; FMin(a,b)
  %2211 = fmul fast float %2210, %2124
  %2212 = fsub fast float %2185, %2211
  %2213 = fsub fast float %2155, %2185
  %2214 = fsub fast float %2213, %2211
  %2215 = call float @dx.op.binary.f32(i32 35, float %2185, float %2155)  ; FMax(a,b)
  %2216 = call float @dx.op.binary.f32(i32 35, float %2211, float %2215)  ; FMax(a,b)
  %2217 = fcmp fast olt float %2216, 1.000000e+00
  br i1 %2217, label %2218, label %2616, !dx.controlflow.hints !90

; <label>:2218                                    ; preds = %2184
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 0
  %2221 = fcmp fast une float %2220, 0.000000e+00
  br i1 %2221, label %2222, label %2616, !dx.controlflow.hints !91

; <label>:2222                                    ; preds = %2218
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2225 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2226 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2227 = extractvalue %dx.types.CBufRet.f32 %2223, 3
  %2228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.f32 %2228, 0
  %2230 = extractvalue %dx.types.CBufRet.f32 %2228, 1
  %2231 = extractvalue %dx.types.CBufRet.f32 %2228, 2
  %2232 = extractvalue %dx.types.CBufRet.f32 %2228, 3
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.CBufRet.f32 %2233, 1
  %2236 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2237 = extractvalue %dx.types.CBufRet.f32 %2233, 3
  %2238 = fmul fast float %2224, %2070
  %2239 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2225, float %2238)  ; FMad(a,b,c)
  %2240 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2226, float %2239)  ; FMad(a,b,c)
  %2241 = fadd fast float %2240, %2227
  %2242 = fmul fast float %2229, %2070
  %2243 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2230, float %2242)  ; FMad(a,b,c)
  %2244 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2231, float %2243)  ; FMad(a,b,c)
  %2245 = fadd fast float %2244, %2232
  %2246 = fmul fast float %2234, %2070
  %2247 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2235, float %2246)  ; FMad(a,b,c)
  %2248 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2236, float %2247)  ; FMad(a,b,c)
  %2249 = fadd fast float %2248, %2237
  %2250 = fcmp fast oge float %2241, 1.000000e+00
  %2251 = fcmp fast oge float %2245, 1.000000e+00
  %2252 = or i1 %2250, %2251
  %2253 = fcmp fast olt float %2241, 0.000000e+00
  %2254 = fcmp fast olt float %2245, 0.000000e+00
  %2255 = or i1 %2253, %2254
  %2256 = or i1 %2252, %2255
  br i1 %2256, label %2616, label %2257, !dx.controlflow.hints !92

; <label>:2257                                    ; preds = %2222
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.CBufRet.f32 %2258, 1
  %2261 = extractvalue %dx.types.CBufRet.f32 %2258, 2
  %2262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.i32 %2262, 2
  %2264 = uitofp i32 %2263 to float
  %2265 = extractvalue %dx.types.CBufRet.i32 %2262, 3
  %2266 = uitofp i32 %2265 to float
  %2267 = extractvalue %dx.types.CBufRet.f32 %2258, 3
  %2268 = fmul fast float %2267, 2.000000e+00
  %2269 = fsub fast float %2241, %2259
  %2270 = fsub fast float %2245, %2260
  %2271 = fmul fast float %2268, %2269
  %2272 = fmul fast float %2268, %2270
  %2273 = fdiv fast float 1.000000e+00, %2053
  %2274 = fmul fast float %2272, %2273
  %2275 = call float @dx.op.unary.f32(i32 6, float %2274)  ; FAbs(value)
  %2276 = fmul fast float %2261, %2072
  %2277 = fmul fast float %2276, %2268
  %2278 = call float @dx.op.unary.f32(i32 6, float %2277)  ; FAbs(value)
  %2279 = call float @dx.op.unary.f32(i32 6, float %2271)  ; FAbs(value)
  %2280 = call float @dx.op.binary.f32(i32 35, float %2278, float %2275)  ; FMax(a,b)
  %2281 = call float @dx.op.binary.f32(i32 35, float %2279, float %2280)  ; FMax(a,b)
  %2282 = fmul fast float %2281, 2.000000e+00
  %2283 = call float @dx.op.unary.f32(i32 23, float %2282)  ; Log(value)
  %2284 = call float @dx.op.binary.f32(i32 35, float %2283, float %2264)  ; FMax(a,b)
  %2285 = call float @dx.op.unary.f32(i32 22, float %2284)  ; Frc(value)
  %2286 = fadd fast float %2285, 0xBFEA666660000000
  %2287 = fmul fast float %2286, 8.000000e+00
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = call float @dx.op.unary.f32(i32 27, float %2284)  ; Round_ni(value)
  %2290 = fadd fast float %2289, %2288
  %2291 = call float @dx.op.binary.f32(i32 36, float %2290, float %2266)  ; FMin(a,b)
  %2292 = call float @dx.op.unary.f32(i32 27, float %2291)  ; Round_ni(value)
  %2293 = fsub fast float -0.000000e+00, %2292
  %2294 = call float @dx.op.unary.f32(i32 21, float %2293)  ; Exp(value)
  %2295 = fmul fast float %2294, %2268
  %2296 = fmul fast float %2295, %2241
  %2297 = fmul fast float %2295, %2245
  %2298 = fmul fast float %2296, 2.500000e-01
  %2299 = fmul fast float %2297, 2.500000e-01
  %2300 = fadd fast float %2298, 5.000000e-01
  %2301 = fadd fast float %2299, 5.000000e-01
  %2302 = fsub fast float %2266, %2264
  %2303 = fptoui float %2302 to i32
  %2304 = add i32 %2303, 320
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %2304)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = fcmp fast une float %2291, %2266
  %2309 = fsub fast float %2241, %2306
  %2310 = fsub fast float %2245, %2307
  %2311 = call float @dx.op.unary.f32(i32 6, float %2309)  ; FAbs(value)
  %2312 = call float @dx.op.unary.f32(i32 6, float %2310)  ; FAbs(value)
  %2313 = fmul fast float %2311, %2295
  %2314 = fmul fast float %2312, %2295
  %2315 = fcmp fast olt float %2313, 1.000000e+00
  %2316 = fcmp fast olt float %2314, 1.000000e+00
  %2317 = and i1 %2315, %2316
  %2318 = or i1 %2308, %2317
  br i1 %2318, label %2319, label %2616, !dx.controlflow.hints !93

; <label>:2319                                    ; preds = %2257
  %2320 = fmul fast float %2297, 5.000000e-01
  %2321 = fmul fast float %2296, 5.000000e-01
  %2322 = fadd fast float %2320, 5.000000e-01
  %2323 = fadd fast float %2321, 5.000000e-01
  %2324 = sitofp i32 %2263 to float
  %2325 = fsub fast float %2291, %2324
  %2326 = call float @dx.op.unary.f32(i32 27, float %2325)  ; Round_ni(value)
  %2327 = call float @dx.op.unary.f32(i32 22, float %2291)  ; Frc(value)
  %2328 = call float @dx.op.unary.f32(i32 22, float %2323)  ; Frc(value)
  %2329 = call float @dx.op.unary.f32(i32 22, float %2322)  ; Frc(value)
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2328, float %2329, float %2326, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = extractvalue %dx.types.ResRet.f32 %2330, 1
  %2333 = extractvalue %dx.types.ResRet.f32 %2330, 2
  %2334 = extractvalue %dx.types.ResRet.f32 %2330, 3
  %2335 = fcmp fast ogt float %2327, 0.000000e+00
  br i1 %2335, label %2336, label %2357, !dx.controlflow.hints !94

; <label>:2336                                    ; preds = %2319
  %2337 = fadd fast float %2326, 1.000000e+00
  %2338 = call float @dx.op.unary.f32(i32 22, float %2300)  ; Frc(value)
  %2339 = call float @dx.op.unary.f32(i32 22, float %2301)  ; Frc(value)
  %2340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2338, float %2339, float %2337, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.ResRet.f32 %2340, 1
  %2343 = extractvalue %dx.types.ResRet.f32 %2340, 2
  %2344 = extractvalue %dx.types.ResRet.f32 %2340, 3
  %2345 = fsub fast float %2341, %2331
  %2346 = fsub fast float %2342, %2332
  %2347 = fsub fast float %2343, %2333
  %2348 = fsub fast float %2344, %2334
  %2349 = fmul fast float %2345, %2327
  %2350 = fmul fast float %2346, %2327
  %2351 = fmul fast float %2347, %2327
  %2352 = fmul fast float %2348, %2327
  %2353 = fadd fast float %2349, %2331
  %2354 = fadd fast float %2350, %2332
  %2355 = fadd fast float %2351, %2333
  %2356 = fadd fast float %2352, %2334
  br label %2357

; <label>:2357                                    ; preds = %2336, %2319
  %2358 = phi float [ %2353, %2336 ], [ %2331, %2319 ]
  %2359 = phi float [ %2354, %2336 ], [ %2332, %2319 ]
  %2360 = phi float [ %2355, %2336 ], [ %2333, %2319 ]
  %2361 = phi float [ %2356, %2336 ], [ %2334, %2319 ]
  %2362 = fadd fast float %2358, -5.000000e-01
  %2363 = fadd fast float %2360, -5.000000e-01
  %2364 = fmul fast float %2362, 0xBFD5555560000000
  %2365 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2363, float %2364)  ; FMad(a,b,c)
  %2366 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2359, float 0.000000e+00)  ; FMad(a,b,c)
  %2367 = fadd fast float %2366, %2361
  %2368 = fmul fast float %2362, -7.500000e-01
  %2369 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2363, float %2368)  ; FMad(a,b,c)
  %2370 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2359, float 0.000000e+00)  ; FMad(a,b,c)
  %2371 = fadd fast float %2370, %2361
  %2372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2372, 0
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.CBufRet.f32 %2374, 1
  %2377 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2378 = extractvalue %dx.types.CBufRet.f32 %2374, 3
  %2379 = fsub fast float %2375, %2365
  %2380 = fsub fast float %2376, %2367
  %2381 = fsub fast float %2377, %2369
  %2382 = fsub fast float %2378, %2371
  %2383 = fmul fast float %2379, %2373
  %2384 = fmul fast float %2380, %2373
  %2385 = fmul fast float %2381, %2373
  %2386 = fmul fast float %2382, %2373
  %2387 = fadd fast float %2383, %2365
  %2388 = fadd fast float %2384, %2367
  %2389 = fadd fast float %2385, %2369
  %2390 = fadd fast float %2386, %2371
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 536870911
  %2394 = uitofp i32 %2393 to float
  %2395 = fmul fast float %2394, %2241
  %2396 = fmul fast float %2394, %2245
  %2397 = fptoui float %2395 to i32
  %2398 = fptoui float %2396 to i32
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 31
  %2402 = lshr i32 %2397, %2401
  %2403 = lshr i32 %2398, %2401
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = and i32 %2405, 31
  %2407 = shl i32 1, %2406
  %2408 = call i32 @dx.op.binary.i32(i32 40, i32 %2407, i32 4)  ; UMin(a,b)
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = extractvalue %dx.types.ResRet.i32 %2409, 1
  %2412 = icmp eq i32 %2408, 0
  br i1 %2412, label %2454, label %2413

; <label>:2413                                    ; preds = %2357
  br label %2414

; <label>:2414                                    ; preds = %2442, %2413
  %2415 = phi i32 [ %2445, %2442 ], [ 0, %2413 ]
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = lshr i32 %2417, 16
  %2419 = and i32 %2418, 31
  %2420 = shl i32 %2403, %2419
  %2421 = add i32 %2420, %2402
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 31
  %2425 = shl i32 %2421, %2424
  %2426 = add i32 %2425, %2415
  %2427 = shl i32 %2426, 2
  %2428 = add i32 %2427, 32
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = icmp slt i32 %2430, 0
  %2432 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2415
  %2433 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2415
  %2434 = bitcast float* %2432 to i32*
  %2435 = bitcast float* %2433 to i32*
  br i1 %2431, label %2436, label %2442

; <label>:2436                                    ; preds = %2414
  %2437 = and i32 %2430, 1073741823
  %2438 = add nuw nsw i32 %2437, 20
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = extractvalue %dx.types.ResRet.i32 %2439, 1
  br label %2442

; <label>:2442                                    ; preds = %2436, %2414
  %2443 = phi i32 [ %2440, %2436 ], [ %2410, %2414 ]
  %2444 = phi i32 [ %2441, %2436 ], [ %2411, %2414 ]
  store i32 %2443, i32* %2434, align 4
  store i32 %2444, i32* %2435, align 4
  %2445 = add nuw i32 %2415, 1
  %2446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.i32 %2446, 2
  %2448 = icmp eq i32 %2447, 0
  %2449 = icmp ugt i32 %2430, -1073741825
  %2450 = and i1 %2449, %2448
  %2451 = icmp ult i32 %2445, %2408
  %2452 = and i1 %2450, %2451
  br i1 %2452, label %2414, label %2453

; <label>:2453                                    ; preds = %2442
  br label %2454

; <label>:2454                                    ; preds = %2453, %2357
  %2455 = phi i32 [ 0, %2357 ], [ %2445, %2453 ]
  %2456 = extractvalue %dx.types.CBufRet.f32 %2219, 2
  %2457 = fptoui float %2456 to i32
  %2458 = icmp eq i32 %2457, 0
  br i1 %2458, label %2510, label %2459

; <label>:2459                                    ; preds = %2454
  br label %2460

; <label>:2460                                    ; preds = %2505, %2459
  %2461 = phi i32 [ %2506, %2505 ], [ %2455, %2459 ]
  %2462 = phi i32 [ %2507, %2505 ], [ 0, %2459 ]
  %2463 = lshr i32 %2462, 2
  %2464 = and i32 %2462, 3
  %2465 = add nuw nsw i32 %2463, 83
  %2466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 %2465)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.i32 %2466, 0
  %2468 = extractvalue %dx.types.CBufRet.i32 %2466, 1
  %2469 = extractvalue %dx.types.CBufRet.i32 %2466, 2
  %2470 = extractvalue %dx.types.CBufRet.i32 %2466, 3
  %2471 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 0
  store i32 %2467, i32* %2471, align 4
  %2472 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 1
  store i32 %2468, i32* %2472, align 4
  %2473 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 2
  store i32 %2469, i32* %2473, align 4
  %2474 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 3
  store i32 %2470, i32* %2474, align 4
  %2475 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 %2464
  %2476 = load i32, i32* %2475, align 4, !tbaa !95, !noalias !99
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = lshr i32 %2478, 16
  %2480 = and i32 %2479, 31
  %2481 = shl i32 %2403, %2480
  %2482 = add i32 %2481, %2402
  %2483 = shl i32 %2482, 2
  %2484 = add i32 %2483, %2476
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = icmp eq i32 %2486, 0
  br i1 %2487, label %2505, label %2488

; <label>:2488                                    ; preds = %2460
  %2489 = icmp slt i32 %2486, 0
  %2490 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2461
  %2491 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2461
  %2492 = bitcast float* %2490 to i32*
  %2493 = bitcast float* %2491 to i32*
  br i1 %2489, label %2494, label %2501

; <label>:2494                                    ; preds = %2488
  %2495 = and i32 %2486, 1073741823
  %2496 = add i32 %2476, 20
  %2497 = add i32 %2496, %2495
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = extractvalue %dx.types.ResRet.i32 %2498, 1
  br label %2501

; <label>:2501                                    ; preds = %2494, %2488
  %2502 = phi i32 [ %2499, %2494 ], [ %2410, %2488 ]
  %2503 = phi i32 [ %2500, %2494 ], [ %2411, %2488 ]
  store i32 %2502, i32* %2492, align 4
  store i32 %2503, i32* %2493, align 4
  %2504 = add i32 %2461, 1
  br label %2505

; <label>:2505                                    ; preds = %2501, %2460
  %2506 = phi i32 [ %2461, %2460 ], [ %2504, %2501 ]
  %2507 = add nuw i32 %2462, 1
  %2508 = icmp eq i32 %2507, %2457
  br i1 %2508, label %2509, label %2460

; <label>:2509                                    ; preds = %2505
  br label %2510

; <label>:2510                                    ; preds = %2509, %2454
  %2511 = phi i32 [ %2455, %2454 ], [ %2506, %2509 ]
  %2512 = icmp eq i32 %2511, 1
  %2513 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 0
  %2514 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 0
  br i1 %2512, label %2515, label %2518

; <label>:2515                                    ; preds = %2510
  %2516 = load float, float* %2513, align 4
  %2517 = load float, float* %2514, align 4
  br label %2545

; <label>:2518                                    ; preds = %2510
  %2519 = load float, float* %2513, align 4
  %2520 = load float, float* %2514, align 4
  %2521 = fdiv fast float 1.000000e+00, %2520
  %2522 = fsub fast float %2519, %2521
  %2523 = icmp ugt i32 %2511, 1
  br i1 %2523, label %2524, label %2540

; <label>:2524                                    ; preds = %2518
  br label %2525

; <label>:2525                                    ; preds = %2525, %2524
  %2526 = phi float [ %2535, %2525 ], [ %2522, %2524 ]
  %2527 = phi float [ %2536, %2525 ], [ %2519, %2524 ]
  %2528 = phi i32 [ %2537, %2525 ], [ 1, %2524 ]
  %2529 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2528
  %2530 = load float, float* %2529, align 4
  %2531 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2528
  %2532 = load float, float* %2531, align 4
  %2533 = fdiv fast float 1.000000e+00, %2532
  %2534 = fsub fast float %2530, %2533
  %2535 = call float @dx.op.binary.f32(i32 36, float %2526, float %2534)  ; FMin(a,b)
  %2536 = call float @dx.op.binary.f32(i32 35, float %2527, float %2530)  ; FMax(a,b)
  %2537 = add nuw i32 %2528, 1
  %2538 = icmp eq i32 %2537, %2511
  br i1 %2538, label %2539, label %2525

; <label>:2539                                    ; preds = %2525
  br label %2540

; <label>:2540                                    ; preds = %2539, %2518
  %2541 = phi float [ %2522, %2518 ], [ %2535, %2539 ]
  %2542 = phi float [ %2519, %2518 ], [ %2536, %2539 ]
  %2543 = fsub fast float %2542, %2541
  %2544 = fdiv fast float 1.000000e+00, %2543
  br label %2545

; <label>:2545                                    ; preds = %2540, %2515
  %2546 = phi float [ %2516, %2515 ], [ %2542, %2540 ]
  %2547 = phi float [ %2517, %2515 ], [ %2544, %2540 ]
  %2548 = fadd fast float %2249, %2546
  %2549 = fmul fast float %2548, %2547
  %2550 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2551 = fmul fast float %2550, 2.000000e+00
  %2552 = fsub fast float 1.000000e+00, %2551
  %2553 = fmul fast float %2387, %2387
  %2554 = fsub fast float %2388, %2553
  %2555 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2554)  ; FMax(a,b)
  %2556 = fdiv fast float 1.000000e+00, %2555
  %2557 = fmul fast float %2388, %2387
  %2558 = fsub fast float %2389, %2557
  %2559 = fsub fast float %2552, %2387
  %2560 = fmul fast float %2552, %2552
  %2561 = fsub fast float %2560, %2388
  %2562 = fmul fast float %2556, %2558
  %2563 = fmul fast float %2562, %2559
  %2564 = fsub fast float %2561, %2563
  %2565 = fmul fast float %2388, %2388
  %2566 = fsub fast float %2390, %2565
  %2567 = fmul fast float %2558, %2558
  %2568 = fmul fast float %2567, %2556
  %2569 = fsub fast float %2566, %2568
  %2570 = fdiv fast float %2564, %2569
  %2571 = fmul fast float %2570, %2558
  %2572 = fsub fast float %2559, %2571
  %2573 = fmul fast float %2572, %2556
  %2574 = fmul fast float %2573, %2387
  %2575 = fsub fast float 1.000000e+00, %2574
  %2576 = fmul fast float %2570, %2388
  %2577 = fsub fast float %2575, %2576
  %2578 = fmul fast float %2573, %2573
  %2579 = fmul fast float %2570, 4.000000e+00
  %2580 = fmul fast float %2579, %2577
  %2581 = fsub fast float %2578, %2580
  %2582 = call float @dx.op.unary.f32(i32 24, float %2581)  ; Sqrt(value)
  %2583 = fcmp fast oge float %2573, 0.000000e+00
  %2584 = fsub fast float -0.000000e+00, %2582
  %2585 = select i1 %2583, float %2584, float %2582
  %2586 = fsub fast float %2585, %2573
  %2587 = fdiv fast float %2586, %2570
  %2588 = fdiv fast float %2577, %2586
  %2589 = fmul fast float %2587, 5.000000e-01
  %2590 = fmul fast float %2588, 2.000000e+00
  %2591 = select i1 %2583, float %2589, float %2590
  %2592 = select i1 %2583, float %2590, float %2589
  %2593 = call float @dx.op.binary.f32(i32 35, float %2591, float %2592)  ; FMax(a,b)
  %2594 = call float @dx.op.binary.f32(i32 36, float %2591, float %2592)  ; FMin(a,b)
  %2595 = fcmp fast ogt float %2552, %2593
  %2596 = fsub fast float %2552, %2594
  %2597 = fsub fast float %2552, %2593
  %2598 = fsub fast float %2593, %2594
  %2599 = select i1 %2595, float %2597, float %2598
  %2600 = fmul float %2596, %2599
  %2601 = select i1 %2595, float %2594, float %2552
  %2602 = fcmp fast ogt float %2552, %2594
  %2603 = fmul fast float %2601, %2593
  %2604 = fadd fast float %2601, %2593
  %2605 = fmul fast float %2604, %2387
  %2606 = fadd fast float %2603, %2388
  %2607 = fsub fast float %2606, %2605
  %2608 = fdiv fast float %2607, %2600
  %2609 = select i1 %2602, float %2608, float 0.000000e+00
  %2610 = fsub fast float 1.000000e+00, %2609
  %2611 = select i1 %2595, float %2610, float %2609
  %2612 = call float @dx.op.unary.f32(i32 7, float %2611)  ; Saturate(value)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2372, 3
  %2614 = fmul fast float %2613, %2612
  %2615 = fsub fast float 1.000000e+00, %2614
  br label %2616

; <label>:2616                                    ; preds = %2545, %2257, %2222, %2218, %2184
  %2617 = phi float [ 1.000000e+00, %2184 ], [ %2615, %2545 ], [ 1.000000e+00, %2222 ], [ 1.000000e+00, %2257 ], [ 1.000000e+00, %2218 ]
  %2618 = fcmp fast ogt float %2214, 0.000000e+00
  br i1 %2618, label %2619, label %2625, !dx.controlflow.hints !108

; <label>:2619                                    ; preds = %2616
  %2620 = fadd fast float %2127, %2101
  %2621 = call float @dx.op.binary.f32(i32 35, float %2620, float 0.000000e+00)  ; FMax(a,b)
  %2622 = fadd fast float %2621, 0x3F10000000000000
  %2623 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %36, float %2116, float %2117, float undef, float undef, i32 0, i32 0, i32 undef, float %2622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  br label %2625

; <label>:2625                                    ; preds = %2619, %2616
  %2626 = phi float [ %2624, %2619 ], [ 1.000000e+00, %2616 ]
  %2627 = fcmp fast ogt float %2212, 0.000000e+00
  br i1 %2627, label %2628, label %2634, !dx.controlflow.hints !109

; <label>:2628                                    ; preds = %2625
  %2629 = fadd fast float %2157, %2101
  %2630 = call float @dx.op.binary.f32(i32 35, float %2629, float 0.000000e+00)  ; FMax(a,b)
  %2631 = fadd fast float %2630, 0x3F10000000000000
  %2632 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %36, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float %2631)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  br label %2634

; <label>:2634                                    ; preds = %2628, %2625
  %2635 = phi float [ %2633, %2628 ], [ 1.000000e+00, %2625 ]
  %2636 = fcmp fast ogt float %2211, 0.000000e+00
  br i1 %2636, label %2637, label %2644, !dx.controlflow.hints !110

; <label>:2637                                    ; preds = %2634
  %2638 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  %2639 = fadd fast float %2638, %2101
  %2640 = call float @dx.op.binary.f32(i32 35, float %2639, float 0.000000e+00)  ; FMax(a,b)
  %2641 = fadd fast float %2640, 0x3F10000000000000
  %2642 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %36, float %2093, float %2097, float undef, float undef, i32 0, i32 0, i32 undef, float %2641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  br label %2644

; <label>:2644                                    ; preds = %2637, %2634
  %2645 = phi float [ %2643, %2637 ], [ 1.000000e+00, %2634 ]
  %2646 = fsub fast float %2626, %2617
  %2647 = fmul fast float %2646, %2155
  %2648 = fadd fast float %2647, %2617
  %2649 = fsub fast float %2635, %2648
  %2650 = fmul fast float %2649, %2185
  %2651 = fadd fast float %2650, %2648
  %2652 = fsub fast float %2645, %2651
  %2653 = fmul fast float %2652, %2211
  %2654 = fadd fast float %2653, %2651
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 2
  %2657 = fcmp fast ogt float %2656, 0.000000e+00
  br i1 %2657, label %2658, label %2695, !dx.controlflow.hints !111

; <label>:2658                                    ; preds = %2644
  %2659 = fcmp fast ugt float %2656, 0.000000e+00
  br i1 %2659, label %2660, label %2692

; <label>:2660                                    ; preds = %2658
  %2661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2662 = extractvalue %dx.types.CBufRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.CBufRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.CBufRet.f32 %2661, 2
  %2665 = extractvalue %dx.types.CBufRet.f32 %2661, 3
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2670 = extractvalue %dx.types.CBufRet.f32 %2666, 3
  %2671 = extractvalue %dx.types.CBufRet.f32 %2655, 0
  %2672 = extractvalue %dx.types.CBufRet.f32 %2655, 1
  %2673 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %2674 = fadd fast float %461, %2070
  %2675 = fadd fast float %462, %2071
  %2676 = fadd fast float %2673, %2072
  %2677 = fmul fast float %2674, %2662
  %2678 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %2675, float %2677)  ; FMad(a,b,c)
  %2679 = call float @dx.op.tertiary.f32(i32 46, float %2664, float %2676, float %2678)  ; FMad(a,b,c)
  %2680 = fadd fast float %2679, %2665
  %2681 = fmul fast float %2674, %2667
  %2682 = call float @dx.op.tertiary.f32(i32 46, float %2668, float %2675, float %2681)  ; FMad(a,b,c)
  %2683 = call float @dx.op.tertiary.f32(i32 46, float %2669, float %2676, float %2682)  ; FMad(a,b,c)
  %2684 = fadd fast float %2683, %2670
  %2685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %32, float %2680, float %2684, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2686 = extractvalue %dx.types.ResRet.f32 %2685, 0
  %2687 = fmul fast float %2686, %2672
  %2688 = fadd fast float %2687, %2671
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2690 = fmul fast float %2689, %2656
  %2691 = fsub fast float 1.000000e+00, %2690
  br label %2692

; <label>:2692                                    ; preds = %2660, %2658
  %2693 = phi float [ %2691, %2660 ], [ 1.000000e+00, %2658 ]
  %2694 = fmul fast float %2693, %2654
  br label %2695

; <label>:2695                                    ; preds = %2692, %2644, %2050
  %2696 = phi float [ 1.000000e+00, %2050 ], [ %2694, %2692 ], [ %2654, %2644 ]
  %2697 = call float @dx.op.binary.f32(i32 36, float %2696, float %2696)  ; FMin(a,b)
  %2698 = call float @dx.op.binary.f32(i32 36, float %2696, float %2697)  ; FMin(a,b)
  %2699 = fcmp fast ogt float %2698, 0.000000e+00
  br i1 %2699, label %2700, label %2857, !dx.controlflow.hints !112

; <label>:2700                                    ; preds = %2695
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.CBufRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.CBufRet.f32 %2701, 2
  %2705 = extractvalue %dx.types.CBufRet.f32 %2701, 3
  %2706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2707 = extractvalue %dx.types.CBufRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.CBufRet.f32 %2706, 1
  %2709 = extractvalue %dx.types.CBufRet.f32 %2706, 2
  %2710 = extractvalue %dx.types.CBufRet.f32 %2706, 3
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.CBufRet.f32 %2711, 2
  %2715 = extractvalue %dx.types.CBufRet.f32 %2711, 3
  %2716 = fmul fast float %2702, %2070
  %2717 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2703, float %2716)  ; FMad(a,b,c)
  %2718 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2704, float %2717)  ; FMad(a,b,c)
  %2719 = fadd fast float %2718, %2705
  %2720 = fmul fast float %2707, %2070
  %2721 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2708, float %2720)  ; FMad(a,b,c)
  %2722 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2709, float %2721)  ; FMad(a,b,c)
  %2723 = fadd fast float %2722, %2710
  %2724 = fmul fast float %2712, %2070
  %2725 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2713, float %2724)  ; FMad(a,b,c)
  %2726 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2714, float %2725)  ; FMad(a,b,c)
  %2727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2728 = extractvalue %dx.types.CBufRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.CBufRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.CBufRet.f32 %2727, 3
  %2731 = fmul fast float %2730, %2719
  %2732 = fmul fast float %2730, %2723
  %2733 = fadd fast float %2731, %2728
  %2734 = fadd fast float %2732, %2729
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.CBufRet.f32 %2735, 1
  %2738 = fsub fast float %2733, %2736
  %2739 = fsub fast float %2734, %2737
  %2740 = fcmp fast olt float %2738, 0.000000e+00
  %2741 = fcmp fast olt float %2739, 0.000000e+00
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.CBufRet.f32 %2742, 1
  %2745 = extractvalue %dx.types.CBufRet.f32 %2742, 2
  %2746 = extractvalue %dx.types.CBufRet.f32 %2742, 3
  %2747 = select i1 %2740, float %2743, float %2745
  %2748 = select i1 %2741, float %2744, float %2746
  %2749 = fmul fast float %2747, %2738
  %2750 = fmul fast float %2748, %2739
  %2751 = call float @dx.op.unary.f32(i32 6, float %2749)  ; FAbs(value)
  %2752 = call float @dx.op.unary.f32(i32 6, float %2750)  ; FAbs(value)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2065, 0
  %2754 = call float @dx.op.binary.f32(i32 35, float %2751, float %2752)  ; FMax(a,b)
  %2755 = fsub fast float %2753, %2754
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = fcmp fast ogt float %2756, 0.000000e+00
  br i1 %2757, label %2758, label %2799, !dx.controlflow.hints !113

; <label>:2758                                    ; preds = %2700
  %2759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %2733, float %2734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2761 = fcmp fast ogt float %2760, 0.000000e+00
  br i1 %2761, label %2762, label %2795

; <label>:2762                                    ; preds = %2758
  %2763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %35, float %2733, float %2734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2764 = extractvalue %dx.types.ResRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.ResRet.f32 %2763, 1
  %2766 = extractvalue %dx.types.ResRet.f32 %2763, 2
  %2767 = extractvalue %dx.types.ResRet.f32 %2763, 3
  %2768 = fsub fast float 1.000000e+00, %2715
  %2769 = fsub fast float %2768, %2726
  %2770 = fmul fast float %2769, 0x400921FB60000000
  %2771 = fadd fast float %2770, 0x3FF921FB60000000
  %2772 = call float @dx.op.unary.f32(i32 13, float %2771)  ; Sin(value)
  %2773 = fadd fast float %2772, -1.000000e+00
  %2774 = fmul fast float %2773, 0x3FD45F3060000000
  %2775 = fmul fast float %2769, 0x401921FB60000000
  %2776 = fadd fast float %2775, 0x400921FB60000000
  %2777 = call float @dx.op.unary.f32(i32 13, float %2776)  ; Sin(value)
  %2778 = fadd fast float %2777, 0x3E7777A5C0000000
  %2779 = fmul fast float %2778, 0x3FC45F3060000000
  %2780 = fmul fast float %2769, 0x4022D97C80000000
  %2781 = fadd fast float %2780, 0x4012D97C80000000
  %2782 = call float @dx.op.unary.f32(i32 13, float %2781)  ; Sin(value)
  %2783 = fadd fast float %2782, 1.000000e+00
  %2784 = fmul fast float %2783, 0x3FBB2995E0000000
  %2785 = fmul fast float %2769, 0x402921FB60000000
  %2786 = fadd fast float %2785, 0x401921FB60000000
  %2787 = call float @dx.op.unary.f32(i32 13, float %2786)  ; Sin(value)
  %2788 = fadd fast float %2787, 0xBE8777A5C0000000
  %2789 = fmul fast float %2788, 0x3FB45F3060000000
  %2790 = call float @dx.op.dot4.f32(i32 56, float %2764, float %2765, float %2766, float %2767, float %2774, float %2779, float %2784, float %2789)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2791 = fmul fast float %2790, 0xBFF7154760000000
  %2792 = call float @dx.op.unary.f32(i32 21, float %2791)  ; Exp(value)
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2794 = fadd float %2793, -1.000000e+00
  br label %2795

; <label>:2795                                    ; preds = %2762, %2758
  %2796 = phi float [ %2794, %2762 ], [ 0.000000e+00, %2758 ]
  %2797 = fmul fast float %2796, %2756
  %2798 = fadd fast float %2797, 1.000000e+00
  br label %2799

; <label>:2799                                    ; preds = %2795, %2700
  %2800 = phi float [ %2798, %2795 ], [ 1.000000e+00, %2700 ]
  %2801 = fmul fast float %2800, %2696
  %2802 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %2803 = fadd fast float %461, %307
  %2804 = fadd fast float %462, %308
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 1
  %2807 = fsub fast float -0.000000e+00, %2803
  %2808 = fsub fast float -0.000000e+00, %2804
  %2809 = fsub fast float %439, %2802
  %2810 = fadd fast float %2809, %2806
  %2811 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2807, float %2808, float %2810)  ; Dot3(ax,ay,az,bx,by,bz)
  %2812 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %2813 = fdiv fast float 1.000000e+00, %2812
  %2814 = fmul fast float %2813, %2811
  %2815 = fmul fast float %2051, %2814
  %2816 = fmul fast float %2052, %2814
  %2817 = fadd fast float %2815, %2803
  %2818 = fadd fast float %2816, %2804
  %2819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.CBufRet.f32 %2819, 1
  %2822 = fsub fast float %2817, %2820
  %2823 = fsub fast float %2818, %2821
  %2824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2824, 2
  %2826 = extractvalue %dx.types.CBufRet.f32 %2824, 3
  %2827 = fmul fast float %2822, %2825
  %2828 = fmul fast float %2823, %2826
  %2829 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.i32 %2829, 3
  %2831 = icmp eq i32 %2830, 0
  br i1 %2831, label %2837, label %2832

; <label>:2832                                    ; preds = %2799
  %2833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %34, float %2827, float %2828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.ResRet.f32 %2833, 2
  br label %2842

; <label>:2837                                    ; preds = %2799
  %2838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %2827, float %2828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  br label %2842

; <label>:2842                                    ; preds = %2837, %2832
  %2843 = phi float [ %2834, %2832 ], [ %2839, %2837 ]
  %2844 = phi float [ %2835, %2832 ], [ %2840, %2837 ]
  %2845 = phi float [ %2836, %2832 ], [ %2841, %2837 ]
  %2846 = extractvalue %dx.types.CBufRet.f32 %2805, 2
  %2847 = fmul fast float %2846, %2843
  %2848 = extractvalue %dx.types.CBufRet.f32 %2805, 0
  %2849 = fsub fast float %2814, %2848
  %2850 = fsub fast float %2849, %2847
  %2851 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2850)  ; FMax(a,b)
  %2852 = fmul fast float %2851, %2844
  %2853 = call float @dx.op.binary.f32(i32 36, float %2845, float %2852)  ; FMin(a,b)
  %2854 = fmul fast float %2853, 0xBFF7154760000000
  %2855 = call float @dx.op.unary.f32(i32 21, float %2854)  ; Exp(value)
  %2856 = fmul fast float %2801, %2855
  br label %2857

; <label>:2857                                    ; preds = %2842, %2695
  %2858 = phi float [ %2856, %2842 ], [ %2696, %2695 ]
  %2859 = call float @dx.op.binary.f32(i32 36, float %2858, float %2858)  ; FMin(a,b)
  %2860 = call float @dx.op.binary.f32(i32 36, float %2858, float %2859)  ; FMin(a,b)
  %2861 = fcmp fast ogt float %2860, 0.000000e+00
  br i1 %2861, label %2862, label %2989, !dx.controlflow.hints !114

; <label>:2862                                    ; preds = %2857
  %2863 = fmul fast float %2858, %2062
  %2864 = fmul fast float %2858, %2063
  %2865 = fmul fast float %2858, %2064
  %2866 = fsub fast float %2051, %442
  %2867 = fsub fast float %2052, %443
  %2868 = fsub fast float %2053, %444
  %2869 = call float @dx.op.dot3.f32(i32 55, float %2866, float %2867, float %2868, float %2866, float %2867, float %2868)  ; Dot3(ax,ay,az,bx,by,bz)
  %2870 = call float @dx.op.unary.f32(i32 25, float %2869)  ; Rsqrt(value)
  %2871 = fmul fast float %2870, %2866
  %2872 = fmul fast float %2870, %2867
  %2873 = fmul fast float %2870, %2868
  %2874 = call float @dx.op.dot3.f32(i32 55, float %2051, float %2052, float %2053, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %2875 = call float @dx.op.dot3.f32(i32 55, float %445, float %446, float %447, float %2871, float %2872, float %2873)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = call float @dx.op.unary.f32(i32 7, float %2874)  ; Saturate(value)
  %2877 = fmul fast float %2876, %2876
  %2878 = fmul fast float %2877, 0x47DE623840000000
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2880 = fmul fast float %2879, %2876
  %2881 = call float @dx.op.dot3.f32(i32 55, float %228, float %229, float %230, float %2871, float %2872, float %2873)  ; Dot3(ax,ay,az,bx,by,bz)
  %2882 = fmul fast float %2881, %2881
  %2883 = call float @dx.op.unary.f32(i32 6, float %2874)  ; FAbs(value)
  %2884 = fsub fast float 1.000000e+00, %240
  %2885 = call float @dx.op.binary.f32(i32 35, float %2884, float 0x3F847AE140000000)  ; FMax(a,b)
  %2886 = fmul fast float %2885, %2885
  %2887 = fmul fast float %2886, %2886
  %2888 = fsub fast float 1.000000e+00, %2887
  %2889 = fmul fast float %450, %450
  %2890 = fmul fast float %2889, %2888
  %2891 = fadd fast float %2890, %2887
  %2892 = bitcast float %2891 to i32
  %2893 = ashr i32 %2892, 1
  %2894 = add nsw i32 %2893, 532487669
  %2895 = bitcast i32 %2894 to float
  %2896 = fadd fast float %2895, %450
  %2897 = fmul fast float %2887, %2882
  %2898 = fsub fast float 1.000000e+00, %2882
  %2899 = fadd fast float %2898, %2897
  %2900 = fmul fast float %2883, %2883
  %2901 = fmul fast float %2900, %2888
  %2902 = fadd fast float %2901, %2887
  %2903 = bitcast float %2902 to i32
  %2904 = ashr i32 %2903, 1
  %2905 = add nsw i32 %2904, 532487669
  %2906 = bitcast i32 %2905 to float
  %2907 = fadd fast float %2906, %2883
  %2908 = fmul fast float %2899, %2899
  %2909 = fmul fast float %2908, %2896
  %2910 = fmul fast float %2909, %2907
  %2911 = fdiv fast float 0x3FF0A00000000000, %2910
  %2912 = fmul fast float %2911, %2887
  %2913 = call float @dx.op.unary.f32(i32 6, float %2875)  ; FAbs(value)
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = bitcast float %2914 to i32
  %2916 = sitofp i32 %2915 to float
  %2917 = fmul fast float %2916, 5.000000e+00
  %2918 = fadd fast float %2917, 0xC1EFBF8940000000
  %2919 = fptosi float %2918 to i32
  %2920 = bitcast i32 %2919 to float
  %2921 = fsub fast float 1.000000e+00, %430
  %2922 = fsub fast float 1.000000e+00, %431
  %2923 = fsub fast float 1.000000e+00, %448
  %2924 = fmul fast float %2920, %2921
  %2925 = fmul fast float %2920, %2922
  %2926 = fmul fast float %2920, %2923
  %2927 = fadd fast float %2924, %430
  %2928 = fadd fast float %2925, %431
  %2929 = fadd fast float %2926, %448
  %2930 = fmul fast float %2874, 9.843750e-01
  %2931 = fadd fast float %2930, 7.812500e-03
  %2932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2931, float %2022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 2
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 3
  %2935 = fmul fast float %2933, %430
  %2936 = fmul fast float %2933, %431
  %2937 = fmul fast float %2933, %448
  %2938 = fadd fast float %2935, %2934
  %2939 = fadd fast float %2936, %2934
  %2940 = fadd fast float %2937, %2934
  %2941 = call float @dx.op.binary.f32(i32 35, float %2939, float %2940)  ; FMax(a,b)
  %2942 = call float @dx.op.binary.f32(i32 35, float %2938, float %2941)  ; FMax(a,b)
  %2943 = fsub fast float 1.000000e+00, %2942
  %2944 = fsub fast float -0.000000e+00, %228
  %2945 = fsub fast float -0.000000e+00, %229
  %2946 = fsub fast float -0.000000e+00, %230
  %2947 = call float @dx.op.dot3.f32(i32 55, float %2051, float %2052, float %2053, float %2944, float %2945, float %2946)  ; Dot3(ax,ay,az,bx,by,bz)
  %2948 = call float @dx.op.unary.f32(i32 7, float %2947)  ; Saturate(value)
  %2949 = fmul fast float %2948, 9.843750e-01
  %2950 = fadd fast float %2949, 7.812500e-03
  %2951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2950, float %2022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 2
  %2953 = extractvalue %dx.types.ResRet.f32 %2951, 3
  %2954 = fmul fast float %2952, %430
  %2955 = fmul fast float %2952, %431
  %2956 = fmul fast float %2952, %448
  %2957 = fadd fast float %2954, %2953
  %2958 = fadd fast float %2955, %2953
  %2959 = fadd fast float %2956, %2953
  %2960 = call float @dx.op.binary.f32(i32 35, float %2958, float %2959)  ; FMax(a,b)
  %2961 = call float @dx.op.binary.f32(i32 35, float %2957, float %2960)  ; FMax(a,b)
  %2962 = fsub fast float 1.000000e+00, %2961
  %2963 = fmul fast float %2962, %2948
  %2964 = fmul fast float %2963, %247
  %2965 = fmul fast float %2963, %248
  %2966 = fmul fast float %2963, %249
  %2967 = fmul fast float %2943, %2880
  %2968 = fadd fast float %2964, %2967
  %2969 = fadd fast float %2965, %2967
  %2970 = fadd fast float %2966, %2967
  %2971 = fmul fast float %2968, %2863
  %2972 = fmul fast float %2969, %2864
  %2973 = fmul fast float %2970, %2865
  %2974 = fadd fast float %2971, %2042
  %2975 = fadd fast float %2972, %2044
  %2976 = fadd fast float %2973, %2046
  %2977 = fmul fast float %2880, %2863
  %2978 = fmul fast float %2977, %2912
  %2979 = fmul fast float %2978, %2927
  %2980 = fmul fast float %2880, %2864
  %2981 = fmul fast float %2980, %2912
  %2982 = fmul fast float %2981, %2928
  %2983 = fmul fast float %2880, %2865
  %2984 = fmul fast float %2983, %2912
  %2985 = fmul fast float %2984, %2929
  %2986 = fadd fast float %2979, %2035
  %2987 = fadd fast float %2982, %2036
  %2988 = fadd fast float %2985, %2037
  br label %2989

; <label>:2989                                    ; preds = %2862, %2857, %1946
  %2990 = phi float [ %2035, %1946 ], [ %2035, %2857 ], [ %2986, %2862 ]
  %2991 = phi float [ %2036, %1946 ], [ %2036, %2857 ], [ %2987, %2862 ]
  %2992 = phi float [ %2037, %1946 ], [ %2037, %2857 ], [ %2988, %2862 ]
  %2993 = phi float [ %2042, %1946 ], [ %2042, %2857 ], [ %2974, %2862 ]
  %2994 = phi float [ %2044, %1946 ], [ %2044, %2857 ], [ %2975, %2862 ]
  %2995 = phi float [ %2046, %1946 ], [ %2046, %2857 ], [ %2976, %2862 ]
  %2996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2997 = extractvalue %dx.types.CBufRet.i32 %2996, 0
  %2998 = icmp eq i32 %2997, 0
  br i1 %2998, label %3497, label %2999

; <label>:2999                                    ; preds = %2989
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 2
  %3002 = extractvalue %dx.types.CBufRet.f32 %3000, 3
  %3003 = fmul fast float %3001, %63
  %3004 = fmul fast float %3002, %64
  %3005 = fptoui float %3003 to i32
  %3006 = fptoui float %3004 to i32
  %3007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3008 = extractvalue %dx.types.CBufRet.f32 %3007, 0
  %3009 = extractvalue %dx.types.CBufRet.f32 %3007, 2
  %3010 = extractvalue %dx.types.CBufRet.f32 %3007, 3
  %3011 = fadd fast float %273, -4.000000e+00
  %3012 = call float @dx.op.binary.f32(i32 35, float %3011, float 0.000000e+00)  ; FMax(a,b)
  %3013 = fadd fast float %3012, %3008
  %3014 = fmul fast float %3013, %3009
  %3015 = call float @dx.op.unary.f32(i32 23, float %3014)  ; Log(value)
  %3016 = fmul fast float %3015, %3010
  %3017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.f32 %3017, 2
  %3019 = fmul fast float %3016, %3018
  %3020 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  %3021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3022 = extractvalue %dx.types.CBufRet.i32 %3021, 1
  %3023 = add i32 %3022, -1
  %3024 = uitofp i32 %3022 to float
  %3025 = fmul fast float %3024, %3020
  %3026 = fptoui float %3025 to i32
  %3027 = call i32 @dx.op.binary.i32(i32 40, i32 %3026, i32 %3023)  ; UMin(a,b)
  %3028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3029 = extractvalue %dx.types.CBufRet.i32 %3028, 2
  %3030 = extractvalue %dx.types.CBufRet.i32 %3028, 3
  %3031 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3006, i32 %3029, i32 %3005)  ; UMad(a,b,c)
  %3032 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3027, i32 %3030, i32 %3031)  ; UMad(a,b,c)
  %3033 = add nsw i32 %2997, -1
  %3034 = call i32 @dx.op.binary.i32(i32 37, i32 %3033, i32 0)  ; IMax(a,b)
  %3035 = call float @dx.op.binary.f32(i32 35, float %273, float 0.000000e+00)  ; FMax(a,b)
  %3036 = fptoui float %3035 to i32
  %3037 = lshr i32 %3036, 5
  %3038 = call i32 @dx.op.binary.i32(i32 40, i32 %3037, i32 8191)  ; UMin(a,b)
  %3039 = shl i32 %3038, 2
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = lshr i32 %3041, 16
  %3043 = and i32 %3041, 65535
  %3044 = lshr i32 %3041, 21
  %3045 = lshr i32 %3043, 5
  %3046 = call i32 @dx.op.binary.i32(i32 40, i32 %3045, i32 %3034)  ; UMin(a,b)
  %3047 = icmp ugt i32 %3044, %3046
  br i1 %3047, label %3497, label %3048

; <label>:3048                                    ; preds = %2999
  br label %3049

; <label>:3049                                    ; preds = %3487, %3048
  %3050 = phi i32 [ %3494, %3487 ], [ %3044, %3048 ]
  %3051 = phi float [ %3488, %3487 ], [ %2990, %3048 ]
  %3052 = phi float [ %3489, %3487 ], [ %2991, %3048 ]
  %3053 = phi float [ %3490, %3487 ], [ %2992, %3048 ]
  %3054 = phi float [ %3491, %3487 ], [ %2993, %3048 ]
  %3055 = phi float [ %3492, %3487 ], [ %2994, %3048 ]
  %3056 = phi float [ %3493, %3487 ], [ %2995, %3048 ]
  %3057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3058 = extractvalue %dx.types.CBufRet.i32 %3057, 0
  %3059 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3032, i32 %3058, i32 %3050)  ; UMad(a,b,c)
  %3060 = shl i32 %3059, 2
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = shl i32 %3050, 5
  %3064 = sub nsw i32 %3042, %3063
  %3065 = call i32 @dx.op.binary.i32(i32 37, i32 %3064, i32 0)  ; IMax(a,b)
  %3066 = call i32 @dx.op.binary.i32(i32 38, i32 %3065, i32 31)  ; IMin(a,b)
  %3067 = sub nsw i32 1, %3042
  %3068 = add nsw i32 %3067, %3043
  %3069 = call i32 @dx.op.binary.i32(i32 37, i32 %3068, i32 0)  ; IMax(a,b)
  %3070 = call i32 @dx.op.binary.i32(i32 38, i32 %3069, i32 32)  ; IMin(a,b)
  %3071 = and i32 %3070, 31
  %3072 = shl i32 -1, %3071
  %3073 = xor i32 %3072, -1
  %3074 = and i32 %3066, 31
  %3075 = shl i32 %3073, %3074
  %3076 = icmp eq i32 %3070, 32
  %3077 = select i1 %3076, i32 -1, i32 %3075
  %3078 = and i32 %3077, %3062
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3487, label %3080

; <label>:3080                                    ; preds = %3049
  br label %3081

; <label>:3081                                    ; preds = %3215, %3080
  %3082 = phi i32 [ %3093, %3215 ], [ %3078, %3080 ]
  %3083 = phi float [ %3216, %3215 ], [ %3051, %3080 ]
  %3084 = phi float [ %3217, %3215 ], [ %3052, %3080 ]
  %3085 = phi float [ %3218, %3215 ], [ %3053, %3080 ]
  %3086 = phi float [ %3219, %3215 ], [ %3054, %3080 ]
  %3087 = phi float [ %3220, %3215 ], [ %3055, %3080 ]
  %3088 = phi float [ %3221, %3215 ], [ %3056, %3080 ]
  %3089 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3082)  ; FirstbitLo(value)
  %3090 = add i32 %3089, %3063
  %3091 = and i32 %3089, 31
  %3092 = shl i32 1, %3091
  %3093 = xor i32 %3092, %3082
  %3094 = mul i32 %3090, 112
  %3095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.f32 %3095, 0
  %3097 = extractvalue %dx.types.ResRet.f32 %3095, 1
  %3098 = extractvalue %dx.types.ResRet.f32 %3095, 2
  %3099 = or i32 %3094, 12
  %3100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = add i32 %3094, 16
  %3103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.f32 %3103, 0
  %3105 = extractvalue %dx.types.ResRet.f32 %3103, 1
  %3106 = extractvalue %dx.types.ResRet.f32 %3103, 2
  %3107 = add i32 %3094, 28
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = add i32 %3094, 44
  %3111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 0
  %3113 = add i32 %3094, 48
  %3114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = extractvalue %dx.types.ResRet.f32 %3114, 1
  %3117 = extractvalue %dx.types.ResRet.f32 %3114, 2
  %3118 = extractvalue %dx.types.ResRet.f32 %3114, 3
  %3119 = add i32 %3094, 64
  %3120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.f32 %3120, 0
  %3122 = extractvalue %dx.types.ResRet.f32 %3120, 1
  %3123 = extractvalue %dx.types.ResRet.f32 %3120, 2
  %3124 = extractvalue %dx.types.ResRet.f32 %3120, 3
  %3125 = add i32 %3094, 80
  %3126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.f32 %3126, 1
  %3128 = extractvalue %dx.types.ResRet.f32 %3126, 2
  %3129 = add i32 %3094, 92
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = call float @dx.op.dot3.f32(i32 55, float %3096, float %3097, float %3098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3133 = select i1 %122, float %3127, float %3096
  %3134 = select i1 %122, float %3132, float %3097
  %3135 = select i1 %122, float %3128, float %3098
  %3136 = and i32 %3131, 65535
  %3137 = uitofp i32 %3136 to float
  %3138 = lshr i32 %3131, 16
  %3139 = uitofp i32 %3138 to float
  %3140 = and i32 %3109, 65535
  %3141 = and i32 %3109, 50331648
  %3142 = icmp eq i32 %3141, 33554432
  %3143 = fsub fast float %3115, %307
  %3144 = fsub fast float %3116, %308
  %3145 = fsub fast float %3117, %309
  %3146 = call float @dx.op.dot3.f32(i32 55, float %3143, float %3144, float %3145, float %3143, float %3144, float %3145)  ; Dot3(ax,ay,az,bx,by,bz)
  %3147 = call float @dx.op.unary.f32(i32 24, float %3146)  ; Sqrt(value)
  %3148 = fdiv fast float 1.000000e+00, %3147
  %3149 = fmul fast float %3148, %3143
  %3150 = fmul fast float %3148, %3144
  %3151 = fmul fast float %3148, %3145
  %3152 = fadd fast float %3147, %3101
  %3153 = fdiv fast float 1.000000e+00, %3152
  %3154 = fmul float %3112, %3153
  %3155 = fmul float %3154, %3154
  %3156 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  br i1 %3142, label %3157, label %3178

; <label>:3157                                    ; preds = %3081
  %3158 = fmul fast float %3123, %3104
  %3159 = fmul fast float %3123, %3105
  %3160 = fmul fast float %3123, %3106
  %3161 = fadd fast float %3143, %3158
  %3162 = fadd fast float %3144, %3159
  %3163 = fadd fast float %3145, %3160
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3161, float %3162, float %3163, float %3161, float %3162, float %3163)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.unary.f32(i32 25, float %3164)  ; Rsqrt(value)
  %3166 = fmul fast float %3165, %3161
  %3167 = fmul fast float %3165, %3162
  %3168 = fmul fast float %3165, %3163
  %3169 = fsub fast float %307, %3115
  %3170 = fsub fast float %308, %3116
  %3171 = fsub fast float %309, %3117
  %3172 = fsub fast float -0.000000e+00, %3169
  %3173 = fsub fast float -0.000000e+00, %3170
  %3174 = fsub fast float -0.000000e+00, %3171
  %3175 = call float @dx.op.dot3.f32(i32 55, float %3172, float %3173, float %3174, float %3104, float %3105, float %3106)  ; Dot3(ax,ay,az,bx,by,bz)
  %3176 = fcmp fast ogt float %3175, 0.000000e+00
  %3177 = uitofp i1 %3176 to float
  br label %3178

; <label>:3178                                    ; preds = %3157, %3081
  %3179 = phi float [ %3177, %3157 ], [ 1.000000e+00, %3081 ]
  %3180 = phi float [ %3166, %3157 ], [ %3149, %3081 ]
  %3181 = phi float [ %3167, %3157 ], [ %3150, %3081 ]
  %3182 = phi float [ %3168, %3157 ], [ %3151, %3081 ]
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3104, float %3105, float %3106, float %3180, float %3181, float %3182)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = fmul fast float %3183, %3183
  %3185 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  %3186 = fsub fast float 1.000000e+00, %3185
  %3187 = fmul fast float %3186, 5.000000e-01
  %3188 = fcmp fast ogt float %3183, 0.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3187
  %3190 = select i1 %3188, float %3187, float %3189
  %3191 = fmul fast float %3190, %3139
  %3192 = fadd fast float %3191, %3137
  %3193 = fmul fast float %3192, 0x3EF0001000000000
  %3194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %3193, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3195 = extractvalue %dx.types.ResRet.f32 %3194, 0
  %3196 = fmul fast float %3183, %3121
  %3197 = fadd fast float %3196, %3122
  %3198 = call float @dx.op.unary.f32(i32 7, float %3197)  ; Saturate(value)
  %3199 = select i1 %3142, float 1.000000e+00, float %3198
  %3200 = select i1 %3142, float %3198, float 1.000000e+00
  %3201 = fmul fast float %3147, %3118
  %3202 = fsub fast float 1.000000e+00, %3201
  %3203 = fmul fast float %3202, %3124
  %3204 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3205 = fmul fast float %3204, %3200
  %3206 = fmul fast float %3205, 2.000000e+00
  %3207 = fsub fast float 3.000000e+00, %3206
  %3208 = fmul fast float %3195, %3179
  %3209 = fmul fast float %3205, %3205
  %3210 = fmul fast float %3209, %3208
  %3211 = fmul fast float %3210, %3207
  %3212 = call float @dx.op.binary.f32(i32 36, float %3211, float %3211)  ; FMin(a,b)
  %3213 = call float @dx.op.binary.f32(i32 36, float %3211, float %3212)  ; FMin(a,b)
  %3214 = fcmp fast ogt float %3213, 0.000000e+00
  br i1 %3214, label %3223, label %3215, !dx.controlflow.hints !115

; <label>:3215                                    ; preds = %3328, %3323, %3178
  %3216 = phi float [ %3083, %3323 ], [ %3083, %3178 ], [ %3483, %3328 ]
  %3217 = phi float [ %3084, %3323 ], [ %3084, %3178 ], [ %3484, %3328 ]
  %3218 = phi float [ %3085, %3323 ], [ %3085, %3178 ], [ %3485, %3328 ]
  %3219 = phi float [ %3086, %3323 ], [ %3086, %3178 ], [ %3471, %3328 ]
  %3220 = phi float [ %3087, %3323 ], [ %3087, %3178 ], [ %3472, %3328 ]
  %3221 = phi float [ %3088, %3323 ], [ %3088, %3178 ], [ %3473, %3328 ]
  %3222 = icmp eq i32 %3082, %3092
  br i1 %3222, label %3486, label %3081

; <label>:3223                                    ; preds = %3178
  %3224 = icmp eq i32 %3140, 255
  br i1 %3224, label %3323, label %3225, !dx.controlflow.hints !116

; <label>:3225                                    ; preds = %3223
  %3226 = mul nuw nsw i32 %3140, 176
  %3227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.f32 %3227, 0
  %3229 = extractvalue %dx.types.ResRet.f32 %3227, 1
  %3230 = extractvalue %dx.types.ResRet.f32 %3227, 2
  %3231 = extractvalue %dx.types.ResRet.f32 %3227, 3
  %3232 = add nuw nsw i32 %3226, 16
  %3233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3232, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.ResRet.f32 %3233, 1
  %3236 = add nuw nsw i32 %3226, 32
  %3237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.ResRet.f32 %3237, 1
  %3240 = extractvalue %dx.types.ResRet.f32 %3237, 2
  %3241 = add nuw nsw i32 %3226, 48
  %3242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.f32 %3242, 0
  %3244 = extractvalue %dx.types.ResRet.f32 %3242, 1
  %3245 = extractvalue %dx.types.ResRet.f32 %3242, 2
  %3246 = extractvalue %dx.types.ResRet.f32 %3242, 3
  %3247 = add nuw nsw i32 %3226, 64
  %3248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.f32 %3248, 0
  %3250 = extractvalue %dx.types.ResRet.f32 %3248, 1
  %3251 = extractvalue %dx.types.ResRet.f32 %3248, 2
  %3252 = extractvalue %dx.types.ResRet.f32 %3248, 3
  %3253 = add nuw nsw i32 %3226, 80
  %3254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.ResRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.ResRet.f32 %3254, 2
  %3258 = extractvalue %dx.types.ResRet.f32 %3254, 3
  %3259 = add nuw nsw i32 %3226, 96
  %3260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.ResRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.ResRet.f32 %3260, 2
  %3264 = extractvalue %dx.types.ResRet.f32 %3260, 3
  %3265 = bitcast float %3235 to i32
  %3266 = fmul fast float %3240, %228
  %3267 = fmul fast float %3240, %229
  %3268 = fmul fast float %3240, %230
  %3269 = fadd fast float %3266, %307
  %3270 = fadd fast float %3267, %308
  %3271 = fadd fast float %3268, %309
  %3272 = fmul fast float %3269, %3243
  %3273 = call float @dx.op.tertiary.f32(i32 46, float %3270, float %3249, float %3272)  ; FMad(a,b,c)
  %3274 = call float @dx.op.tertiary.f32(i32 46, float %3271, float %3255, float %3273)  ; FMad(a,b,c)
  %3275 = fadd fast float %3274, %3261
  %3276 = fmul fast float %3269, %3244
  %3277 = call float @dx.op.tertiary.f32(i32 46, float %3270, float %3250, float %3276)  ; FMad(a,b,c)
  %3278 = call float @dx.op.tertiary.f32(i32 46, float %3271, float %3256, float %3277)  ; FMad(a,b,c)
  %3279 = fadd fast float %3278, %3262
  %3280 = fmul fast float %3269, %3245
  %3281 = call float @dx.op.tertiary.f32(i32 46, float %3270, float %3251, float %3280)  ; FMad(a,b,c)
  %3282 = call float @dx.op.tertiary.f32(i32 46, float %3271, float %3257, float %3281)  ; FMad(a,b,c)
  %3283 = fadd fast float %3282, %3263
  %3284 = fmul fast float %3269, %3246
  %3285 = call float @dx.op.tertiary.f32(i32 46, float %3270, float %3252, float %3284)  ; FMad(a,b,c)
  %3286 = call float @dx.op.tertiary.f32(i32 46, float %3271, float %3258, float %3285)  ; FMad(a,b,c)
  %3287 = fadd fast float %3286, %3264
  %3288 = fdiv fast float %3275, %3287
  %3289 = fdiv fast float %3279, %3287
  %3290 = fdiv fast float %3283, %3287
  %3291 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3290)  ; FMax(a,b)
  %3292 = fmul fast float %133, 0x401921FB60000000
  %3293 = call float @dx.op.unary.f32(i32 13, float %3292)  ; Sin(value)
  %3294 = call float @dx.op.unary.f32(i32 12, float %3292)  ; Cos(value)
  %3295 = fsub fast float -0.000000e+00, %3293
  %3296 = fmul fast float %3230, 5.000000e-01
  %3297 = call float @dx.op.dot2.f32(i32 54, float %133, float %133, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %3298 = call float @dx.op.unary.f32(i32 22, float %3297)  ; Frc(value)
  %3299 = fmul fast float %3298, 0x404A7DD040000000
  %3300 = call float @dx.op.unary.f32(i32 22, float %3299)  ; Frc(value)
  %3301 = fmul fast float %3300, %3239
  %3302 = fadd fast float %3301, %3296
  %3303 = call float @dx.op.tertiary.f32(i32 46, float %3302, float %3295, float 0.000000e+00)  ; FMad(a,b,c)
  %3304 = call float @dx.op.tertiary.f32(i32 46, float %3302, float %3294, float 0.000000e+00)  ; FMad(a,b,c)
  %3305 = fadd fast float %3303, %3288
  %3306 = fadd fast float %3304, %3289
  %3307 = fmul fast float %3305, %3234
  %3308 = fmul fast float %3306, %3234
  %3309 = call float @dx.op.binary.f32(i32 35, float %3307, float %3230)  ; FMax(a,b)
  %3310 = call float @dx.op.binary.f32(i32 35, float %3308, float %3230)  ; FMax(a,b)
  %3311 = call float @dx.op.binary.f32(i32 36, float %3309, float %3231)  ; FMin(a,b)
  %3312 = call float @dx.op.binary.f32(i32 36, float %3310, float %3231)  ; FMin(a,b)
  %3313 = fadd fast float %3311, %3228
  %3314 = fadd fast float %3312, %3229
  %3315 = uitofp i32 %3265 to float
  %3316 = fadd fast float %3291, %3238
  %3317 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %36, float %3313, float %3314, float %3315, float undef, i32 0, i32 0, i32 undef, float %3316)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = fadd fast float %3318, -1.000000e+00
  %3320 = fmul fast float %3319, %3199
  %3321 = fadd fast float %3320, 1.000000e+00
  %3322 = fmul fast float %3321, %3211
  br label %3323

; <label>:3323                                    ; preds = %3225, %3223
  %3324 = phi float [ %3322, %3225 ], [ %3211, %3223 ]
  %3325 = call float @dx.op.binary.f32(i32 36, float %3324, float %3324)  ; FMin(a,b)
  %3326 = call float @dx.op.binary.f32(i32 36, float %3324, float %3325)  ; FMin(a,b)
  %3327 = fcmp fast ogt float %3326, 0.000000e+00
  br i1 %3327, label %3328, label %3215, !dx.controlflow.hints !117

; <label>:3328                                    ; preds = %3323
  %3329 = fmul fast float %3324, %3133
  %3330 = fmul fast float %3324, %3134
  %3331 = fmul fast float %3324, %3135
  %3332 = fsub fast float %3149, %442
  %3333 = fsub fast float %3150, %443
  %3334 = fsub fast float %3151, %444
  %3335 = call float @dx.op.dot3.f32(i32 55, float %3332, float %3333, float %3334, float %3332, float %3333, float %3334)  ; Dot3(ax,ay,az,bx,by,bz)
  %3336 = call float @dx.op.unary.f32(i32 25, float %3335)  ; Rsqrt(value)
  %3337 = fmul fast float %3336, %3332
  %3338 = fmul fast float %3336, %3333
  %3339 = fmul fast float %3336, %3334
  %3340 = call float @dx.op.dot3.f32(i32 55, float %3149, float %3150, float %3151, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = call float @dx.op.dot3.f32(i32 55, float %445, float %446, float %447, float %3337, float %3338, float %3339)  ; Dot3(ax,ay,az,bx,by,bz)
  %3342 = call float @dx.op.unary.f32(i32 7, float %3340)  ; Saturate(value)
  %3343 = fmul fast float %3342, %3156
  %3344 = fmul fast float %3342, %3342
  %3345 = fmul fast float %3344, 0x47DE623840000000
  %3346 = call float @dx.op.unary.f32(i32 7, float %3345)  ; Saturate(value)
  %3347 = fmul fast float %3343, %3346
  %3348 = bitcast float %3146 to i32
  %3349 = ashr i32 %3348, 1
  %3350 = sub nsw i32 1597463007, %3349
  %3351 = bitcast i32 %3350 to float
  %3352 = fmul fast float %3351, %3143
  %3353 = fmul fast float %3351, %3144
  %3354 = fmul fast float %3351, %3145
  %3355 = fsub fast float %3352, %442
  %3356 = fsub fast float %3353, %443
  %3357 = fsub fast float %3354, %444
  %3358 = call float @dx.op.dot3.f32(i32 55, float %3355, float %3356, float %3357, float %3355, float %3356, float %3357)  ; Dot3(ax,ay,az,bx,by,bz)
  %3359 = call float @dx.op.unary.f32(i32 25, float %3358)  ; Rsqrt(value)
  %3360 = fmul fast float %3355, %3359
  %3361 = fmul fast float %3356, %3359
  %3362 = fmul fast float %3357, %3359
  %3363 = call float @dx.op.dot3.f32(i32 55, float %228, float %229, float %230, float %3360, float %3361, float %3362)  ; Dot3(ax,ay,az,bx,by,bz)
  %3364 = fmul fast float %3363, %3363
  %3365 = call float @dx.op.unary.f32(i32 6, float %3340)  ; FAbs(value)
  %3366 = fsub fast float 1.000000e+00, %240
  %3367 = call float @dx.op.binary.f32(i32 35, float %3366, float 0x3F847AE140000000)  ; FMax(a,b)
  %3368 = fmul fast float %3367, %3367
  %3369 = fmul fast float %3368, %3368
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = fmul fast float %450, %450
  %3372 = fmul fast float %3371, %3370
  %3373 = fadd fast float %3372, %3369
  %3374 = bitcast float %3373 to i32
  %3375 = ashr i32 %3374, 1
  %3376 = add nsw i32 %3375, 532487669
  %3377 = bitcast i32 %3376 to float
  %3378 = fadd fast float %3377, %450
  %3379 = fmul fast float %3369, %3364
  %3380 = fsub fast float 1.000000e+00, %3364
  %3381 = fadd fast float %3380, %3379
  %3382 = fmul fast float %3365, %3365
  %3383 = fmul fast float %3382, %3370
  %3384 = fadd fast float %3383, %3369
  %3385 = bitcast float %3384 to i32
  %3386 = ashr i32 %3385, 1
  %3387 = add nsw i32 %3386, 532487669
  %3388 = bitcast i32 %3387 to float
  %3389 = fadd fast float %3388, %3365
  %3390 = fmul fast float %3381, %3381
  %3391 = fmul fast float %3390, %3378
  %3392 = fmul fast float %3391, %3389
  %3393 = fdiv fast float 1.000000e+00, %3392
  %3394 = bitcast float %3369 to i32
  %3395 = sitofp i32 %3394 to float
  %3396 = fmul fast float %3395, 0x3FE7F73180000000
  %3397 = fadd fast float %3396, 0x41AFE27C40000000
  %3398 = fptosi float %3397 to i32
  %3399 = bitcast i32 %3398 to float
  %3400 = fmul fast float %3112, 0x3FD80E9D60000000
  %3401 = fmul fast float %3400, %3351
  %3402 = fadd fast float %3399, %3401
  %3403 = bitcast float %3402 to i32
  %3404 = sub nsw i32 2129859010, %3403
  %3405 = bitcast i32 %3404 to float
  %3406 = fmul fast float %3369, %3393
  %3407 = fmul fast float %3406, %3399
  %3408 = fmul fast float %3407, %3405
  %3409 = call float @dx.op.unary.f32(i32 6, float %3341)  ; FAbs(value)
  %3410 = fsub fast float 1.000000e+00, %3409
  %3411 = bitcast float %3410 to i32
  %3412 = sitofp i32 %3411 to float
  %3413 = fmul fast float %3412, 5.000000e+00
  %3414 = fadd fast float %3413, 0xC1EFBF8940000000
  %3415 = fptosi float %3414 to i32
  %3416 = bitcast i32 %3415 to float
  %3417 = fsub fast float 1.000000e+00, %430
  %3418 = fsub fast float 1.000000e+00, %431
  %3419 = fsub fast float 1.000000e+00, %448
  %3420 = fmul fast float %3416, %3417
  %3421 = fmul fast float %3416, %3418
  %3422 = fmul fast float %3416, %3419
  %3423 = fadd fast float %3420, %430
  %3424 = fadd fast float %3421, %431
  %3425 = fadd fast float %3422, %448
  %3426 = fmul fast float %3340, 9.843750e-01
  %3427 = fadd fast float %3426, 7.812500e-03
  %3428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3427, float %2022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3429 = extractvalue %dx.types.ResRet.f32 %3428, 2
  %3430 = extractvalue %dx.types.ResRet.f32 %3428, 3
  %3431 = fmul fast float %3429, %430
  %3432 = fmul fast float %3429, %431
  %3433 = fmul fast float %3429, %448
  %3434 = fadd fast float %3431, %3430
  %3435 = fadd fast float %3432, %3430
  %3436 = fadd fast float %3433, %3430
  %3437 = call float @dx.op.binary.f32(i32 35, float %3435, float %3436)  ; FMax(a,b)
  %3438 = call float @dx.op.binary.f32(i32 35, float %3434, float %3437)  ; FMax(a,b)
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = fsub fast float -0.000000e+00, %228
  %3441 = fsub fast float -0.000000e+00, %229
  %3442 = fsub fast float -0.000000e+00, %230
  %3443 = call float @dx.op.dot3.f32(i32 55, float %3149, float %3150, float %3151, float %3440, float %3441, float %3442)  ; Dot3(ax,ay,az,bx,by,bz)
  %3444 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  %3445 = fmul fast float %3444, %3156
  %3446 = fmul fast float %3444, 9.843750e-01
  %3447 = fadd fast float %3446, 7.812500e-03
  %3448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3447, float %2022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 2
  %3450 = extractvalue %dx.types.ResRet.f32 %3448, 3
  %3451 = fmul fast float %3449, %430
  %3452 = fmul fast float %3449, %431
  %3453 = fmul fast float %3449, %448
  %3454 = fadd fast float %3451, %3450
  %3455 = fadd fast float %3452, %3450
  %3456 = fadd fast float %3453, %3450
  %3457 = call float @dx.op.binary.f32(i32 35, float %3455, float %3456)  ; FMax(a,b)
  %3458 = call float @dx.op.binary.f32(i32 35, float %3454, float %3457)  ; FMax(a,b)
  %3459 = fsub fast float 1.000000e+00, %3458
  %3460 = fmul fast float %3445, %3459
  %3461 = fmul fast float %3460, %247
  %3462 = fmul fast float %3460, %248
  %3463 = fmul fast float %3460, %249
  %3464 = fmul fast float %3439, %3347
  %3465 = fadd fast float %3461, %3464
  %3466 = fadd fast float %3462, %3464
  %3467 = fadd fast float %3463, %3464
  %3468 = fmul fast float %3465, %3329
  %3469 = fmul fast float %3466, %3330
  %3470 = fmul fast float %3467, %3331
  %3471 = fadd fast float %3468, %3086
  %3472 = fadd fast float %3469, %3087
  %3473 = fadd fast float %3470, %3088
  %3474 = fmul fast float %3347, %3329
  %3475 = fmul fast float %3474, %3423
  %3476 = fmul fast float %3475, %3408
  %3477 = fmul fast float %3347, %3330
  %3478 = fmul fast float %3477, %3424
  %3479 = fmul fast float %3478, %3408
  %3480 = fmul fast float %3347, %3331
  %3481 = fmul fast float %3480, %3425
  %3482 = fmul fast float %3481, %3408
  %3483 = fadd fast float %3476, %3083
  %3484 = fadd fast float %3479, %3084
  %3485 = fadd fast float %3482, %3085
  br label %3215

; <label>:3486                                    ; preds = %3215
  br label %3487

; <label>:3487                                    ; preds = %3486, %3049
  %3488 = phi float [ %3051, %3049 ], [ %3216, %3486 ]
  %3489 = phi float [ %3052, %3049 ], [ %3217, %3486 ]
  %3490 = phi float [ %3053, %3049 ], [ %3218, %3486 ]
  %3491 = phi float [ %3054, %3049 ], [ %3219, %3486 ]
  %3492 = phi float [ %3055, %3049 ], [ %3220, %3486 ]
  %3493 = phi float [ %3056, %3049 ], [ %3221, %3486 ]
  %3494 = add i32 %3050, 1
  %3495 = icmp ugt i32 %3494, %3046
  br i1 %3495, label %3496, label %3049

; <label>:3496                                    ; preds = %3487
  br label %3497

; <label>:3497                                    ; preds = %3496, %2999, %2989
  %3498 = phi float [ %2990, %2989 ], [ %2990, %2999 ], [ %3488, %3496 ]
  %3499 = phi float [ %2991, %2989 ], [ %2991, %2999 ], [ %3489, %3496 ]
  %3500 = phi float [ %2992, %2989 ], [ %2992, %2999 ], [ %3490, %3496 ]
  %3501 = phi float [ %2993, %2989 ], [ %2993, %2999 ], [ %3491, %3496 ]
  %3502 = phi float [ %2994, %2989 ], [ %2994, %2999 ], [ %3492, %3496 ]
  %3503 = phi float [ %2995, %2989 ], [ %2995, %2999 ], [ %3493, %3496 ]
  %3504 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %3505 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %3506 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %3507 = fmul fast float %3504, %3501
  %3508 = fmul fast float %3505, %3502
  %3509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3510 = extractvalue %dx.types.CBufRet.f32 %3509, 0
  br i1 %122, label %3511, label %3535

; <label>:3511                                    ; preds = %3497
  %3512 = fadd fast float %3503, %438
  %3513 = fmul fast float %3512, %436
  %3514 = fsub fast float 1.000000e+00, %436
  %3515 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 3
  %3518 = fmul fast float %3517, %3515
  %3519 = fsub fast float 1.000000e+00, %450
  %3520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.f32 %3520, 0
  %3522 = fmul fast float %3521, %3519
  %3523 = fsub fast float 1.000000e+00, %250
  %3524 = extractvalue %dx.types.CBufRet.f32 %3520, 2
  %3525 = fmul fast float %3524, %3523
  %3526 = fadd fast float %3508, %3507
  %3527 = extractvalue %dx.types.CBufRet.f32 %3516, 1
  %3528 = fadd fast float %3518, %3513
  %3529 = fsub fast float %3528, %3522
  %3530 = fsub fast float %3529, %3525
  %3531 = fsub fast float %3530, %3527
  %3532 = extractvalue %dx.types.CBufRet.f32 %3516, 2
  %3533 = fmul fast float %3531, %3532
  %3534 = call float @dx.op.unary.f32(i32 7, float %3533)  ; Saturate(value)
  br label %3539

; <label>:3535                                    ; preds = %3497
  %3536 = fmul fast float %3506, %3503
  %3537 = fmul fast float %3510, %3508
  %3538 = fmul fast float %3536, %3510
  br label %3539

; <label>:3539                                    ; preds = %3535, %3511
  %3540 = phi float [ %3526, %3511 ], [ %3507, %3535 ]
  %3541 = phi float [ %3534, %3511 ], [ %3537, %3535 ]
  %3542 = phi float [ 1.000000e+00, %3511 ], [ %3538, %3535 ]
  %3543 = fmul float %3510, %3540
  %3544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3545 = extractvalue %dx.types.CBufRet.f32 %3544, 0
  %3546 = fmul fast float %3545, %3499
  %3547 = fmul fast float %3545, %3500
  %3548 = fadd fast float %3499, %3498
  %3549 = select i1 %122, float %3548, float %3498
  %3550 = fmul float %3549, %3545
  %3551 = select i1 %122, float 0.000000e+00, float %3546
  %3552 = select i1 %122, float 0.000000e+00, float %3547
  %3553 = fmul fast float %3543, %3504
  %3554 = fmul fast float %3541, %3505
  %3555 = fmul fast float %3542, %3506
  %3556 = fadd fast float %3550, %3553
  %3557 = fadd fast float %3551, %3554
  %3558 = fadd fast float %3552, %3555
  %3559 = select i1 %122, float %3541, float %3557
  %3560 = select i1 %122, float %3542, float %3558
  %3561 = call float @dx.op.binary.f32(i32 36, float %3556, float 3.225500e+04)  ; FMin(a,b)
  %3562 = call float @dx.op.binary.f32(i32 36, float %3559, float 3.225500e+04)  ; FMin(a,b)
  %3563 = call float @dx.op.binary.f32(i32 36, float %3560, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3561)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3562)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3563)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!50 = !{[43 x i32] [i32 41, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7]}
!51 = !{void ()* @ps_main, !"ps_main", !52, !4, !77}
!52 = !{!53, !74, null}
!53 = !{!54, !57, !58, !59, !61, !62, !64, !66, !68, !69, !70, !72, !73}
!54 = !{i32 0, !"SV_Position", i8 9, i8 3, !55, i8 4, i32 1, i8 4, i32 0, i8 0, !56}
!55 = !{i32 0}
!56 = !{i32 3, i32 11}
!57 = !{i32 1, !"COLOR", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!58 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 2, i8 0, !56}
!59 = !{i32 3, !"NORMAL", i8 9, i8 0, !55, i8 2, i32 1, i8 3, i32 3, i8 0, !60}
!60 = !{i32 3, i32 7}
!61 = !{i32 4, !"TANGENT", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!62 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !55, i8 2, i32 1, i8 1, i32 3, i8 3, !63}
!63 = !{i32 3, i32 1}
!64 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !65, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!65 = !{i32 1}
!66 = !{i32 7, !"LGV_POSITION_INDEX", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!67 = !{i32 3, i32 8}
!68 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !55, i8 2, i32 1, i8 2, i32 7, i8 0, null}
!69 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 8, i8 0, null}
!70 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !55, i8 1, i32 1, i8 4, i32 9, i8 0, !71}
!71 = !{i32 3, i32 9}
!72 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !55, i8 1, i32 1, i8 1, i32 10, i8 0, !63}
!73 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !55, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!74 = !{!75}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !55, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!76 = !{i32 3, i32 15}
!77 = !{i32 0, i64 24}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!80 = distinct !{!80, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!81 = distinct !{!81, !82, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!82 = distinct !{!82, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
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
!95 = !{!96, !96, i64 0}
!96 = !{!"int", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !{!100, !102, !104, !106}
!100 = distinct !{!100, !101, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!101 = distinct !{!101, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!102 = distinct !{!102, !103, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!103 = distinct !{!103, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!104 = distinct !{!104, !105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!105 = distinct !{!105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!106 = distinct !{!106, !107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!107 = distinct !{!107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}

