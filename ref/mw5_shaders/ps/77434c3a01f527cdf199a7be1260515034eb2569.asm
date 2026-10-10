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
; shader hash: 3f5dd5d885a62eeeab4772593b026b02
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
  %248 = add i32 %42, 68
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = add i32 %250, 0
  %252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %251, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %252, %dx.types.Handle %35, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float %194)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fadd fast float %45, 1.000000e+00
  %256 = add i32 %42, 24
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 2
  %259 = bitcast i32 %258 to float
  %260 = fmul fast float %254, 2.000000e+00
  %261 = fsub fast float %255, %260
  %262 = fmul fast float %259, %261
  %263 = fadd fast float %262, %54
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 3
  %267 = fmul fast float %63, 2.000000e+00
  %268 = fmul fast float %267, %265
  %269 = fmul fast float %64, 2.000000e+00
  %270 = fmul fast float %269, %266
  %271 = fsub fast float 1.000000e+00, %268
  %272 = fsub fast float 1.000000e+00, %270
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %275 = extractvalue %dx.types.CBufRet.f32 %273, 1
  %276 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %277 = fmul fast float %271, %274
  %278 = fmul fast float %271, %275
  %279 = fmul fast float %271, %276
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %283 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %284 = fmul fast float %272, %281
  %285 = fmul fast float %272, %282
  %286 = fmul fast float %272, %283
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %290 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %291 = fadd fast float %284, %288
  %292 = fadd fast float %291, %277
  %293 = fadd fast float %285, %289
  %294 = fadd fast float %293, %278
  %295 = fadd fast float %286, %290
  %296 = fadd fast float %295, %279
  %297 = fmul fast float %292, %263
  %298 = fmul fast float %294, %263
  %299 = fmul fast float %296, %263
  %300 = call float @dx.op.unary.f32(i32 26, float %44)  ; Round_ne(value)
  %301 = fptoui float %300 to i32
  %302 = call float @dx.op.unary.f32(i32 26, float %51)  ; Round_ne(value)
  %303 = fptoui float %302 to i32
  %304 = shl i32 %303, 3
  %305 = or i32 %304, 4
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 16777215
  %309 = add i32 %308, %301
  %310 = shl i32 %309, 6
  %311 = getelementptr [3 x float], [3 x float]* %55, i32 0, i32 0
  %312 = getelementptr [3 x float], [3 x float]* %56, i32 0, i32 0
  %313 = getelementptr [3 x float], [3 x float]* %57, i32 0, i32 0
  %314 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 0
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  store float %316, float* %311, align 4
  store float %317, float* %312, align 4
  store float %318, float* %313, align 4
  store float %319, float* %314, align 4
  %320 = getelementptr [3 x float], [3 x float]* %55, i32 0, i32 1
  %321 = getelementptr [3 x float], [3 x float]* %56, i32 0, i32 1
  %322 = getelementptr [3 x float], [3 x float]* %57, i32 0, i32 1
  %323 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 1
  %324 = or i32 %310, 16
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = extractvalue %dx.types.ResRet.f32 %325, 1
  %328 = extractvalue %dx.types.ResRet.f32 %325, 2
  %329 = extractvalue %dx.types.ResRet.f32 %325, 3
  store float %326, float* %320, align 4
  store float %327, float* %321, align 4
  store float %328, float* %322, align 4
  store float %329, float* %323, align 4
  %330 = getelementptr [3 x float], [3 x float]* %55, i32 0, i32 2
  %331 = getelementptr [3 x float], [3 x float]* %56, i32 0, i32 2
  %332 = getelementptr [3 x float], [3 x float]* %57, i32 0, i32 2
  %333 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 2
  %334 = or i32 %310, 32
  %335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = extractvalue %dx.types.ResRet.f32 %335, 1
  %338 = extractvalue %dx.types.ResRet.f32 %335, 2
  %339 = extractvalue %dx.types.ResRet.f32 %335, 3
  store float %336, float* %330, align 4
  store float %337, float* %331, align 4
  store float %338, float* %332, align 4
  store float %339, float* %333, align 4
  %340 = or i32 %310, 48
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.i32 %343, 1
  %345 = icmp eq i32 %344, 0
  %346 = and i32 %342, 4
  %347 = icmp ne i32 %346, 0
  %348 = and i1 %345, %347
  br i1 %348, label %349, label %388

; <label>:349                                     ; preds = %227
  %350 = and i32 %342, 3
  %351 = getelementptr [3 x float], [3 x float]* %55, i32 0, i32 %350
  %352 = getelementptr [3 x float], [3 x float]* %56, i32 0, i32 %350
  %353 = getelementptr [3 x float], [3 x float]* %57, i32 0, i32 %350
  %354 = getelementptr [3 x float], [3 x float]* %58, i32 0, i32 %350
  %355 = load float, float* %351, align 4
  %356 = load float, float* %352, align 4
  %357 = load float, float* %353, align 4
  %358 = load float, float* %354, align 4
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = call float @dx.op.dot3.f32(i32 55, float %355, float %356, float %357, float %360, float %361, float %362)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = fadd fast float %363, %358
  %365 = fcmp fast ogt float %364, 1.000000e+00
  br i1 %365, label %366, label %371

; <label>:366                                     ; preds = %349
  %367 = fadd fast float %364, -1.000000e+00
  %368 = fmul fast float %367, 4.000000e+00
  %369 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  %370 = fmul fast float %369, 4.000000e+00
  br label %377

; <label>:371                                     ; preds = %349
  %372 = fcmp fast olt float %364, 0.000000e+00
  br i1 %372, label %373, label %377

; <label>:373                                     ; preds = %371
  %374 = fmul fast float %364, -4.000000e+00
  %375 = call float @dx.op.unary.f32(i32 7, float %374)  ; Saturate(value)
  %376 = fmul fast float %375, -4.000000e+00
  br label %377

; <label>:377                                     ; preds = %373, %371, %366
  %378 = phi float [ %370, %366 ], [ %376, %373 ], [ 0.000000e+00, %371 ]
  %379 = icmp eq i32 %350, 0
  %380 = select i1 %379, float %378, float 0.000000e+00
  %381 = fadd fast float %319, %380
  store float %381, float* %314, align 4, !noalias !78
  %382 = icmp eq i32 %350, 1
  %383 = select i1 %382, float %378, float 0.000000e+00
  %384 = fadd fast float %329, %383
  store float %384, float* %323, align 4, !noalias !78
  %385 = icmp eq i32 %350, 2
  %386 = select i1 %385, float %378, float 0.000000e+00
  %387 = fadd fast float %339, %386
  store float %387, float* %333, align 4, !noalias !78
  br label %388

; <label>:388                                     ; preds = %377, %227
  %389 = phi float [ %339, %227 ], [ %387, %377 ]
  %390 = phi float [ %329, %227 ], [ %384, %377 ]
  %391 = phi float [ %319, %227 ], [ %381, %377 ]
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = extractvalue %dx.types.CBufRet.f32 %392, 1
  %395 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %396 = fadd fast float %393, %297
  %397 = fadd fast float %394, %298
  %398 = fadd fast float %395, %299
  %399 = call float @dx.op.dot4.f32(i32 56, float %316, float %317, float %318, float %391, float %396, float %397, float %398, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %400 = call float @dx.op.dot4.f32(i32 56, float %326, float %327, float %328, float %390, float %396, float %397, float %398, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %401 = call float @dx.op.dot4.f32(i32 56, float %336, float %337, float %338, float %389, float %396, float %397, float %398, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %402 = fadd fast float %247, 0xBFB99999A0000000
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = fmul fast float %403, 0x3FF1C71C80000000
  %405 = call float @dx.op.binary.f32(i32 36, float %247, float 0x3FB99999A0000000)  ; FMin(a,b)
  %406 = fsub fast float 1.000000e+00, %404
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %407, %237
  %409 = fmul fast float %407, %238
  %410 = fmul fast float %407, %239
  %411 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %412 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %413 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %414 = fmul fast float %404, %237
  %415 = fmul fast float %404, %238
  %416 = fmul fast float %404, %239
  %417 = fadd fast float %414, %405
  %418 = fadd fast float %415, %405
  %419 = fadd fast float %416, %405
  %420 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %421 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %422 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %423 = call float @dx.op.dot3.f32(i32 55, float %411, float %412, float %413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %424 = fmul fast float %423, 1.875000e-01
  %425 = fadd fast float %424, 0x3FE647AE20000000
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = fsub fast float -0.000000e+00, %299
  %430 = call float @dx.op.dot3.f32(i32 55, float %297, float %298, float %299, float %297, float %298, float %299)  ; Dot3(ax,ay,az,bx,by,bz)
  %431 = call float @dx.op.unary.f32(i32 25, float %430)  ; Rsqrt(value)
  %432 = fmul fast float %431, %297
  %433 = fmul fast float %431, %298
  %434 = fmul fast float %431, %299
  %435 = fsub fast float -0.000000e+00, %432
  %436 = fsub fast float -0.000000e+00, %433
  %437 = fsub fast float -0.000000e+00, %434
  %438 = select i1 %122, float 0.000000e+00, float %422
  %439 = call float @dx.op.dot3.f32(i32 55, float %228, float %229, float %230, float %435, float %436, float %437)  ; Dot3(ax,ay,az,bx,by,bz)
  %440 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %441 = call float @dx.op.dot3.f32(i32 55, float %432, float %433, float %434, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %442 = fmul fast float %441, 2.000000e+00
  %443 = fmul fast float %442, %228
  %444 = fmul fast float %442, %229
  %445 = fmul fast float %442, %230
  %446 = fsub fast float %432, %443
  %447 = fsub fast float %433, %444
  %448 = fsub fast float %434, %445
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = fadd fast float %450, %297
  %453 = fadd fast float %451, %298
  %454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.i32 %454, 0
  %456 = icmp eq i32 %455, 1
  br i1 %456, label %457, label %492

; <label>:457                                     ; preds = %388
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = fsub fast float %452, %459
  %462 = fsub fast float %453, %460
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %465 = extractvalue %dx.types.CBufRet.f32 %463, 1
  %466 = fmul fast float %461, %464
  %467 = fmul fast float %462, %465
  %468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = fcmp fast ogt float %469, 0.000000e+00
  %471 = extractvalue %dx.types.CBufRet.i32 %454, 3
  %472 = icmp ne i32 %471, 0
  %473 = and i1 %470, %472
  br i1 %473, label %474, label %492, !dx.controlflow.hints !83

; <label>:474                                     ; preds = %457
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %478 = fsub fast float %452, %476
  %479 = fsub fast float %453, %477
  %480 = fmul fast float %478, %478
  %481 = fmul fast float %479, %479
  %482 = fadd fast float %480, %481
  %483 = uitofp i32 %471 to float
  %484 = fmul fast float %483, %483
  %485 = fcmp fast ogt float %482, %484
  br i1 %485, label %492, label %486

; <label>:486                                     ; preds = %474
  %487 = call float @dx.op.unary.f32(i32 24, float %482)  ; Sqrt(value)
  %488 = fsub fast float %483, %487
  %489 = fmul fast float %488, 0x3F75555560000000
  %490 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %491 = call float @dx.op.binary.f32(i32 36, float %490, float %469)  ; FMin(a,b)
  br label %492

; <label>:492                                     ; preds = %486, %474, %457, %388
  %493 = phi float [ 1.000000e+00, %388 ], [ %491, %486 ], [ %469, %457 ], [ 0.000000e+00, %474 ]
  %494 = fcmp fast ogt float %493, 0.000000e+00
  br i1 %494, label %495, label %814, !dx.controlflow.hints !84

; <label>:495                                     ; preds = %492
  %496 = fadd fast float %44, 5.000000e-01
  %497 = fptoui float %496 to i32
  %498 = fadd fast float %51, 5.000000e-01
  %499 = fptoui float %498 to i32
  %500 = shl i32 %499, 3
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = or i32 %500, 4
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 16777215
  %507 = add i32 %506, %497
  %508 = shl i32 %507, 5
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = or i32 %508, 16
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = lshr i32 %505, 24
  %519 = and i32 %518, 3
  %520 = add nuw nsw i32 %519, 3
  %521 = shl i32 1, %520
  %522 = lshr i32 %505, 29
  %523 = lshr i32 %505, 23
  %524 = and i32 %523, 56
  %525 = shl nuw nsw i32 %522, 3
  %526 = lshr i32 %502, 16
  %527 = and i32 %502, 65535
  %528 = uitofp i32 %521 to float
  %529 = fmul fast float %528, 1.562500e-02
  %530 = uitofp i32 %526 to float
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 3
  %533 = fmul fast float %532, %530
  %534 = uitofp i32 %524 to float
  %535 = fmul fast float %534, 1.562500e-02
  %536 = uitofp i32 %525 to float
  %537 = fmul fast float %536, 1.562500e-02
  %538 = uitofp i32 %527 to float
  %539 = fmul fast float %532, %538
  %540 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %541 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %542 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %543 = fmul fast float %540, %510
  %544 = fmul fast float %541, %511
  %545 = fmul fast float %542, %512
  %546 = fadd fast float %543, %515
  %547 = fmul fast float %529, %546
  %548 = fadd fast float %547, %535
  %549 = fadd fast float %544, %516
  %550 = fmul fast float %529, %549
  %551 = fadd fast float %550, %537
  %552 = fadd fast float %545, %517
  %553 = fmul fast float %533, %552
  %554 = fadd fast float %553, %539
  %555 = fmul fast float %548, 5.000000e-01
  %556 = fmul fast float %551, 0x3FD5555560000000
  %557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %548, float %551, float %554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %563 = fmul fast float %562, %558
  %564 = fmul fast float %562, %559
  %565 = fmul fast float %562, %560
  %566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %555, float %556, float %554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = extractvalue %dx.types.ResRet.f32 %566, 2
  %570 = extractvalue %dx.types.ResRet.f32 %566, 3
  %571 = fadd fast float %555, 5.000000e-01
  %572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %571, float %556, float %554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  %577 = fadd fast float %556, 0x3FD5555560000000
  %578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %555, float %577, float %554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = extractvalue %dx.types.ResRet.f32 %578, 3
  %583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %571, float %577, float %554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = extractvalue %dx.types.ResRet.f32 %583, 3
  %588 = fadd fast float %556, 0x3FE5555560000000
  %589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %555, float %588, float %554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = extractvalue %dx.types.ResRet.f32 %589, 3
  %594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %571, float %588, float %554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = extractvalue %dx.types.ResRet.f32 %594, 1
  %597 = extractvalue %dx.types.ResRet.f32 %594, 2
  %598 = extractvalue %dx.types.ResRet.f32 %594, 3
  %599 = fmul fast float %567, 0x400BB67AE0000000
  %600 = fadd fast float %599, 0xBFFBB67AE0000000
  %601 = fmul fast float %600, %563
  %602 = fmul fast float %568, 0x400BB67AE0000000
  %603 = fadd fast float %602, 0xBFFBB67AE0000000
  %604 = fmul fast float %603, %564
  %605 = fmul fast float %569, 0x400BB67AE0000000
  %606 = fadd fast float %605, 0xBFFBB67AE0000000
  %607 = fmul fast float %606, %565
  %608 = fmul fast float %570, 0x4011E377A0000000
  %609 = fadd fast float %608, 0xC001E377A0000000
  %610 = fmul fast float %609, %563
  %611 = fmul fast float %573, 0x4011E377A0000000
  %612 = fadd fast float %611, 0xC001E377A0000000
  %613 = fmul fast float %612, %564
  %614 = fmul fast float %574, 0x4011E377A0000000
  %615 = fadd fast float %614, 0xC001E377A0000000
  %616 = fmul fast float %615, %565
  %617 = fmul fast float %575, 0x400BB67AE0000000
  %618 = fadd fast float %617, 0xBFFBB67AE0000000
  %619 = fmul fast float %618, %563
  %620 = fmul fast float %576, 0x400BB67AE0000000
  %621 = fadd fast float %620, 0xBFFBB67AE0000000
  %622 = fmul fast float %621, %564
  %623 = fmul fast float %579, 0x400BB67AE0000000
  %624 = fadd fast float %623, 0xBFFBB67AE0000000
  %625 = fmul fast float %624, %565
  %626 = fmul fast float %580, 0x400BB67AE0000000
  %627 = fadd fast float %626, 0xBFFBB67AE0000000
  %628 = fmul fast float %627, %563
  %629 = fmul fast float %581, 0x400BB67AE0000000
  %630 = fadd fast float %629, 0xBFFBB67AE0000000
  %631 = fmul fast float %630, %564
  %632 = fmul fast float %582, 0x400BB67AE0000000
  %633 = fadd fast float %632, 0xBFFBB67AE0000000
  %634 = fmul fast float %633, %565
  %635 = fmul fast float %584, 0x400EFBDEC0000000
  %636 = fadd fast float %635, 0xBFFEFBDEC0000000
  %637 = fmul fast float %636, %563
  %638 = fmul fast float %585, 0x400EFBDEC0000000
  %639 = fadd fast float %638, 0xBFFEFBDEC0000000
  %640 = fmul fast float %639, %564
  %641 = fmul fast float %586, 0x400EFBDEC0000000
  %642 = fadd fast float %641, 0xBFFEFBDEC0000000
  %643 = fmul fast float %642, %565
  %644 = fmul fast float %587, 0x400EFBDEC0000000
  %645 = fadd fast float %644, 0xBFFEFBDEC0000000
  %646 = fmul fast float %645, %563
  %647 = fmul fast float %590, 0x400EFBDEC0000000
  %648 = fadd fast float %647, 0xBFFEFBDEC0000000
  %649 = fmul fast float %648, %564
  %650 = fmul fast float %591, 0x400EFBDEC0000000
  %651 = fadd fast float %650, 0xBFFEFBDEC0000000
  %652 = fmul fast float %651, %565
  %653 = fmul fast float %592, 0x400EFBDEC0000000
  %654 = fadd fast float %653, 0xBFFEFBDEC0000000
  %655 = fmul fast float %654, %563
  %656 = fmul fast float %593, 0x400EFBDEC0000000
  %657 = fadd fast float %656, 0xBFFEFBDEC0000000
  %658 = fmul fast float %657, %564
  %659 = fmul fast float %595, 0x400EFBDEC0000000
  %660 = fadd fast float %659, 0xBFFEFBDEC0000000
  %661 = fmul fast float %660, %565
  %662 = fmul fast float %596, 0x400EFBDEC0000000
  %663 = fadd fast float %662, 0xBFFEFBDEC0000000
  %664 = fmul fast float %663, %563
  %665 = fmul fast float %597, 0x400EFBDEC0000000
  %666 = fadd fast float %665, 0xBFFEFBDEC0000000
  %667 = fmul fast float %666, %564
  %668 = fmul fast float %598, 0x400EFBDEC0000000
  %669 = fadd fast float %668, 0xBFFEFBDEC0000000
  %670 = fmul fast float %669, %565
  %671 = fmul fast float %563, 0x3FD20DD760000000
  %672 = fmul fast float %230, 0x3FD4D8D7C0000000
  %673 = fmul fast float %672, %601
  %674 = fmul fast float %230, %230
  %675 = fmul fast float %674, 0x3FEE471020000000
  %676 = fadd fast float %675, 0xBFD42F6020000000
  %677 = fmul fast float %610, %676
  %678 = fmul fast float %228, 0x3FD4D8D7C0000000
  %679 = fmul fast float %678, %628
  %680 = fmul fast float %229, 0x3FD4D8D7C0000000
  %681 = fmul fast float %680, %619
  %682 = fmul fast float %230, 0xBFF17B1420000000
  %683 = fmul fast float %637, %228
  %684 = fmul fast float %646, %229
  %685 = fmul fast float %228, %228
  %686 = fmul fast float %229, %229
  %687 = fsub fast float %685, %686
  %688 = fmul fast float %687, 0x3FC17B1420000000
  %689 = fmul fast float %688, %655
  %690 = fmul fast float %228, 0x3FD17B1420000000
  %691 = fmul fast float %690, %229
  %692 = fmul fast float %691, %664
  %693 = fadd fast float %684, %683
  %694 = fmul fast float %682, %693
  %695 = fadd fast float %694, %677
  %696 = fmul fast float %695, 2.500000e-01
  %697 = fadd fast float %673, %671
  %698 = fsub fast float %697, %681
  %699 = fsub fast float %698, %679
  %700 = fadd fast float %699, %696
  %701 = fadd fast float %700, %689
  %702 = fadd fast float %701, %692
  %703 = fmul fast float %564, 0x3FD20DD760000000
  %704 = fmul fast float %672, %604
  %705 = fmul fast float %613, %676
  %706 = fmul fast float %678, %631
  %707 = fmul fast float %680, %622
  %708 = fmul fast float %640, %228
  %709 = fmul fast float %649, %229
  %710 = fmul fast float %688, %658
  %711 = fmul fast float %691, %667
  %712 = fadd fast float %709, %708
  %713 = fmul fast float %682, %712
  %714 = fadd fast float %713, %705
  %715 = fmul fast float %714, 2.500000e-01
  %716 = fadd fast float %704, %703
  %717 = fsub fast float %716, %707
  %718 = fsub fast float %717, %706
  %719 = fadd fast float %718, %710
  %720 = fadd fast float %719, %715
  %721 = fadd fast float %720, %711
  %722 = fmul fast float %565, 0x3FD20DD760000000
  %723 = fmul fast float %672, %607
  %724 = fmul fast float %616, %676
  %725 = fmul fast float %678, %634
  %726 = fmul fast float %680, %625
  %727 = fmul fast float %643, %228
  %728 = fmul fast float %652, %229
  %729 = fmul fast float %688, %661
  %730 = fmul fast float %691, %670
  %731 = fadd fast float %728, %727
  %732 = fmul fast float %682, %731
  %733 = fadd fast float %732, %724
  %734 = fmul fast float %733, 2.500000e-01
  %735 = fadd fast float %723, %722
  %736 = fsub fast float %735, %725
  %737 = fsub fast float %736, %726
  %738 = fadd fast float %737, %734
  %739 = fadd fast float %738, %729
  %740 = fadd fast float %739, %730
  %741 = call float @dx.op.binary.f32(i32 35, float %702, float 0.000000e+00)  ; FMax(a,b)
  %742 = call float @dx.op.binary.f32(i32 35, float %721, float 0.000000e+00)  ; FMax(a,b)
  %743 = call float @dx.op.binary.f32(i32 35, float %740, float 0.000000e+00)  ; FMax(a,b)
  %744 = fmul fast float %448, 0x3FD4D8D7C0000000
  %745 = fmul fast float %744, %601
  %746 = fmul fast float %448, %448
  %747 = fmul fast float %746, 0x3FEE471020000000
  %748 = fadd fast float %747, 0xBFD42F6020000000
  %749 = fmul fast float %610, %748
  %750 = fmul fast float %446, 0x3FD4D8D7C0000000
  %751 = fmul fast float %750, %628
  %752 = fmul fast float %447, 0x3FD4D8D7C0000000
  %753 = fmul fast float %752, %619
  %754 = fmul fast float %448, 0xBFF17B1420000000
  %755 = fmul fast float %637, %446
  %756 = fmul fast float %646, %447
  %757 = fmul fast float %446, %446
  %758 = fmul fast float %447, %447
  %759 = fsub fast float %757, %758
  %760 = fmul fast float %759, 0x3FC17B1420000000
  %761 = fmul fast float %760, %655
  %762 = fmul fast float %447, 0x3FD17B1420000000
  %763 = fmul fast float %762, %446
  %764 = fmul fast float %763, %664
  %765 = fadd fast float %756, %755
  %766 = fmul fast float %754, %765
  %767 = fadd fast float %766, %749
  %768 = fmul fast float %767, 2.500000e-01
  %769 = fadd fast float %745, %671
  %770 = fsub fast float %769, %753
  %771 = fsub fast float %770, %751
  %772 = fadd fast float %771, %768
  %773 = fadd fast float %772, %761
  %774 = fadd fast float %773, %764
  %775 = fmul fast float %744, %604
  %776 = fmul fast float %613, %748
  %777 = fmul fast float %750, %631
  %778 = fmul fast float %752, %622
  %779 = fmul fast float %640, %446
  %780 = fmul fast float %649, %447
  %781 = fmul fast float %760, %658
  %782 = fmul fast float %763, %667
  %783 = fadd fast float %780, %779
  %784 = fmul fast float %754, %783
  %785 = fadd fast float %784, %776
  %786 = fmul fast float %785, 2.500000e-01
  %787 = fadd fast float %775, %703
  %788 = fsub fast float %787, %778
  %789 = fsub fast float %788, %777
  %790 = fadd fast float %789, %781
  %791 = fadd fast float %790, %786
  %792 = fadd fast float %791, %782
  %793 = fmul fast float %744, %607
  %794 = fmul fast float %616, %748
  %795 = fmul fast float %750, %634
  %796 = fmul fast float %752, %625
  %797 = fmul fast float %643, %446
  %798 = fmul fast float %652, %447
  %799 = fmul fast float %760, %661
  %800 = fmul fast float %763, %670
  %801 = fadd fast float %798, %797
  %802 = fmul fast float %754, %801
  %803 = fadd fast float %802, %794
  %804 = fmul fast float %803, 2.500000e-01
  %805 = fadd fast float %793, %722
  %806 = fsub fast float %805, %795
  %807 = fsub fast float %806, %796
  %808 = fadd fast float %807, %804
  %809 = fadd fast float %808, %799
  %810 = fadd fast float %809, %800
  %811 = call float @dx.op.binary.f32(i32 35, float %774, float 0.000000e+00)  ; FMax(a,b)
  %812 = call float @dx.op.binary.f32(i32 35, float %792, float 0.000000e+00)  ; FMax(a,b)
  %813 = call float @dx.op.binary.f32(i32 35, float %810, float 0.000000e+00)  ; FMax(a,b)
  br label %814

; <label>:814                                     ; preds = %495, %492
  %815 = phi float [ %811, %495 ], [ 0.000000e+00, %492 ]
  %816 = phi float [ %812, %495 ], [ 0.000000e+00, %492 ]
  %817 = phi float [ %813, %495 ], [ 0.000000e+00, %492 ]
  %818 = phi float [ %741, %495 ], [ 0.000000e+00, %492 ]
  %819 = phi float [ %742, %495 ], [ 0.000000e+00, %492 ]
  %820 = phi float [ %743, %495 ], [ 0.000000e+00, %492 ]
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = fcmp fast ogt float %822, 0.000000e+00
  %824 = and i1 %494, %823
  br i1 %824, label %825, label %1029, !dx.controlflow.hints !85

; <label>:825                                     ; preds = %814
  %826 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %827 = fadd fast float %826, %299
  %828 = fmul fast float %228, 3.200000e+01
  %829 = fmul fast float %229, 3.200000e+01
  %830 = fadd fast float %452, %828
  %831 = fadd fast float %453, %829
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %834 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %835 = fsub fast float %830, %833
  %836 = fsub fast float %831, %834
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %839 = extractvalue %dx.types.CBufRet.f32 %837, 1
  %840 = fmul fast float %835, %838
  %841 = fmul fast float %836, %839
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 0
  %844 = extractvalue %dx.types.CBufRet.f32 %842, 1
  %845 = fsub fast float %452, %843
  %846 = fsub fast float %453, %844
  %847 = fmul fast float %845, %845
  %848 = fmul fast float %846, %846
  %849 = fadd fast float %847, %848
  %850 = call float @dx.op.unary.f32(i32 24, float %849)  ; Sqrt(value)
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %854 = fsub fast float %850, %852
  %855 = fdiv fast float %854, %853
  %856 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %857 = fmul fast float %856, 2.000000e+00
  %858 = fsub fast float 3.000000e+00, %857
  %859 = fmul fast float %856, %856
  %860 = fmul fast float %859, %858
  %861 = fcmp fast oge float %840, 0.000000e+00
  %862 = fcmp fast ole float %840, 1.000000e+00
  %863 = and i1 %862, %861
  %864 = fcmp fast oge float %841, 0.000000e+00
  %865 = and i1 %864, %863
  %866 = fcmp fast ole float %841, 1.000000e+00
  %867 = and i1 %866, %865
  %868 = fcmp fast ogt float %860, 0.000000e+00
  %869 = and i1 %868, %867
  br i1 %869, label %870, label %993, !dx.controlflow.hints !86

; <label>:870                                     ; preds = %825
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %873 = extractvalue %dx.types.CBufRet.f32 %871, 3
  %874 = fmul fast float %872, %840
  %875 = fmul fast float %873, %841
  %876 = call float @dx.op.unary.f32(i32 27, float %874)  ; Round_ni(value)
  %877 = call float @dx.op.unary.f32(i32 27, float %875)  ; Round_ni(value)
  %878 = fptosi float %876 to i32
  %879 = fptosi float %877 to i32
  %880 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %878, i32 %879, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = lshr i32 %881, 16
  %883 = icmp eq i32 %882, 65535
  br i1 %883, label %993, label %884

; <label>:884                                     ; preds = %870
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = fmul fast float %886, %840
  %888 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %889 = fadd fast float %887, %888
  %890 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %891 = fmul fast float %890, %841
  %892 = extractvalue %dx.types.CBufRet.f32 %885, 3
  %893 = fadd fast float %891, %892
  %894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %889, float %893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %899 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %900 = fsub fast float %898, %899
  %901 = fmul fast float %900, %895
  %902 = fadd fast float %901, %899
  %903 = extractvalue %dx.types.CBufRet.f32 %897, 3
  %904 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %905 = fsub fast float %903, %904
  %906 = fmul fast float %905, %896
  %907 = fadd fast float %906, %904
  %908 = fsub fast float %827, %902
  %909 = fsub fast float %907, %902
  %910 = fdiv fast float %908, %909
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %913 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %914 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %915 = fmul fast float %913, %840
  %916 = fmul fast float %914, %841
  %917 = fmul fast float %915, 1.250000e-01
  %918 = fmul fast float %916, 1.250000e-01
  %919 = call float @dx.op.unary.f32(i32 27, float %917)  ; Round_ni(value)
  %920 = call float @dx.op.unary.f32(i32 27, float %918)  ; Round_ni(value)
  %921 = fmul fast float %919, 8.000000e+00
  %922 = fmul fast float %920, 8.000000e+00
  %923 = fsub fast float %915, %921
  %924 = fsub fast float %916, %922
  %925 = fadd fast float %923, 5.000000e-01
  %926 = fadd fast float %924, 5.000000e-01
  %927 = and i32 %882, 255
  %928 = lshr i32 %881, 24
  %929 = mul nuw nsw i32 %927, 9
  %930 = uitofp i32 %929 to float
  %931 = mul nuw nsw i32 %928, 9
  %932 = uitofp i32 %931 to float
  %933 = fadd fast float %925, %930
  %934 = fadd fast float %926, %932
  %935 = fdiv fast float %933, %822
  %936 = fdiv fast float %934, %912
  %937 = fmul fast float %911, 4.375000e-01
  %938 = fadd fast float %937, 3.125000e-02
  %939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %935, float %936, float %938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = extractvalue %dx.types.ResRet.f32 %939, 1
  %942 = extractvalue %dx.types.ResRet.f32 %939, 2
  %943 = fadd fast float %937, 5.312500e-01
  %944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %935, float %936, float %943, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %945 = extractvalue %dx.types.ResRet.f32 %944, 0
  %946 = extractvalue %dx.types.ResRet.f32 %944, 1
  %947 = extractvalue %dx.types.ResRet.f32 %944, 2
  %948 = fmul fast float %945, 2.000000e+00
  %949 = fmul fast float %946, 2.000000e+00
  %950 = fmul fast float %947, 2.000000e+00
  %951 = fadd fast float %948, -1.000000e+00
  %952 = fadd fast float %949, -1.000000e+00
  %953 = fadd fast float %950, -1.000000e+00
  %954 = fmul fast float %951, %951
  %955 = fmul fast float %952, %952
  %956 = fadd fast float %954, %955
  %957 = fmul fast float %953, %953
  %958 = fadd fast float %956, %957
  %959 = call float @dx.op.unary.f32(i32 24, float %958)  ; Sqrt(value)
  %960 = fcmp fast ogt float %959, 0.000000e+00
  br i1 %960, label %961, label %965

; <label>:961                                     ; preds = %884
  %962 = fdiv fast float %951, %959
  %963 = fdiv fast float %952, %959
  %964 = fdiv fast float %953, %959
  br label %965

; <label>:965                                     ; preds = %961, %884
  %966 = phi float [ %962, %961 ], [ 0.000000e+00, %884 ]
  %967 = phi float [ %963, %961 ], [ 0.000000e+00, %884 ]
  %968 = phi float [ %964, %961 ], [ 0.000000e+00, %884 ]
  %969 = call float @dx.op.dot3.f32(i32 55, float %966, float %967, float %968, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %969)  ; FMax(a,b)
  %971 = fmul fast float %970, 0x400C5BF8A0000000
  %972 = fmul fast float %940, %860
  %973 = fmul fast float %972, %971
  %974 = fmul fast float %941, %860
  %975 = fmul fast float %974, %971
  %976 = fmul fast float %942, %860
  %977 = fmul fast float %976, %971
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %980 = fmul fast float %973, %979
  %981 = fmul fast float %975, %979
  %982 = fmul fast float %977, %979
  %983 = fcmp fast ogt float %827, %907
  br i1 %983, label %984, label %993

; <label>:984                                     ; preds = %965
  %985 = fmul fast float %909, 0x3FC24924A0000000
  %986 = fsub fast float %827, %907
  %987 = fdiv fast float %986, %985
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fsub fast float 1.000000e+00, %988
  %990 = fmul fast float %989, %980
  %991 = fmul fast float %989, %981
  %992 = fmul fast float %989, %982
  br label %993

; <label>:993                                     ; preds = %984, %965, %870, %825
  %994 = phi float [ %992, %984 ], [ %982, %965 ], [ 0.000000e+00, %870 ], [ 0.000000e+00, %825 ]
  %995 = phi float [ %991, %984 ], [ %981, %965 ], [ 0.000000e+00, %870 ], [ 0.000000e+00, %825 ]
  %996 = phi float [ %990, %984 ], [ %980, %965 ], [ 0.000000e+00, %870 ], [ 0.000000e+00, %825 ]
  %997 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %996)  ; FMax(a,b)
  %998 = fmul fast float %997, 0x3FD20DD760000000
  %999 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %446, float %447, float %448)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = fmul fast float %999, 0x3FDF454380000000
  %1001 = fmul fast float %999, %999
  %1002 = fmul fast float %1001, 0x3FEE471020000000
  %1003 = fadd fast float %1002, 0xBFD42F6020000000
  %1004 = call float @dx.op.dot3.f32(i32 55, float %997, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1000, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %995)  ; FMax(a,b)
  %1006 = fmul fast float %1005, 0x3FD20DD760000000
  %1007 = call float @dx.op.dot3.f32(i32 55, float %1005, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1000, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %994)  ; FMax(a,b)
  %1009 = fmul fast float %1008, 0x3FD20DD760000000
  %1010 = call float @dx.op.dot3.f32(i32 55, float %1008, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1000, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = call float @dx.op.binary.f32(i32 35, float %998, float 0.000000e+00)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 35, float %1006, float 0.000000e+00)  ; FMax(a,b)
  %1013 = call float @dx.op.binary.f32(i32 35, float %1009, float 0.000000e+00)  ; FMax(a,b)
  %1014 = call float @dx.op.binary.f32(i32 35, float %1004, float 0.000000e+00)  ; FMax(a,b)
  %1015 = call float @dx.op.binary.f32(i32 35, float %1007, float 0.000000e+00)  ; FMax(a,b)
  %1016 = call float @dx.op.binary.f32(i32 35, float %1010, float 0.000000e+00)  ; FMax(a,b)
  %1017 = fmul fast float %1011, %493
  %1018 = fmul fast float %1012, %493
  %1019 = fmul fast float %1013, %493
  %1020 = fadd fast float %1017, %818
  %1021 = fadd fast float %1018, %819
  %1022 = fadd fast float %1019, %820
  %1023 = fmul fast float %1014, %493
  %1024 = fmul fast float %1015, %493
  %1025 = fmul fast float %1016, %493
  %1026 = fadd fast float %1023, %815
  %1027 = fadd fast float %1024, %816
  %1028 = fadd fast float %1025, %817
  br label %1029

; <label>:1029                                    ; preds = %993, %814
  %1030 = phi float [ %1026, %993 ], [ %815, %814 ]
  %1031 = phi float [ %1027, %993 ], [ %816, %814 ]
  %1032 = phi float [ %1028, %993 ], [ %817, %814 ]
  %1033 = phi float [ %1020, %993 ], [ %818, %814 ]
  %1034 = phi float [ %1021, %993 ], [ %819, %814 ]
  %1035 = phi float [ %1022, %993 ], [ %820, %814 ]
  %1036 = fcmp fast olt float %493, 1.000000e+00
  br i1 %1036, label %1037, label %1855, !dx.controlflow.hints !87

; <label>:1037                                    ; preds = %1029
  %1038 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %1039 = fadd fast float %1038, %299
  %1040 = fmul fast float %228, 3.200000e+01
  %1041 = fmul fast float %229, 3.200000e+01
  %1042 = fadd fast float %452, %1040
  %1043 = fadd fast float %453, %1041
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1047 = fsub fast float %1042, %1045
  %1048 = fsub fast float %1043, %1046
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = fmul fast float %1047, %1050
  %1053 = fmul fast float %1048, %1051
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = fmul fast float %1052, %1055
  %1057 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1058 = fadd fast float %1056, %1057
  %1059 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1060 = fmul fast float %1059, %1053
  %1061 = extractvalue %dx.types.CBufRet.f32 %1054, 3
  %1062 = fadd fast float %1060, %1061
  %1063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %1058, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 1
  %1068 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1069 = fsub fast float %1067, %1068
  %1070 = fmul fast float %1069, %1064
  %1071 = fadd fast float %1070, %1068
  %1072 = extractvalue %dx.types.CBufRet.f32 %1066, 3
  %1073 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1074 = fsub fast float %1072, %1073
  %1075 = fmul fast float %1074, %1065
  %1076 = fadd fast float %1075, %1073
  %1077 = fsub fast float %1039, %1071
  %1078 = fsub fast float %1076, %1071
  %1079 = fdiv fast float %1077, %1078
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 0
  %1083 = fmul fast float %1082, %1080
  %1084 = extractvalue %dx.types.CBufRet.f32 %1081, 1
  %1085 = fadd fast float %1083, %1084
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %1058, float %1062, float %1085, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1094 = fmul fast float %1091, %1087
  %1095 = fmul fast float %1092, %1088
  %1096 = fmul fast float %1093, %1089
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1101 = fadd fast float %1094, %1098
  %1102 = fadd fast float %1095, %1099
  %1103 = fadd fast float %1096, %1100
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1106 = fmul fast float %1105, %1052
  %1107 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1108 = fadd fast float %1106, %1107
  %1109 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1110 = fmul fast float %1109, %1053
  %1111 = extractvalue %dx.types.CBufRet.f32 %1104, 3
  %1112 = fadd fast float %1110, %1111
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1117 = extractvalue %dx.types.CBufRet.f32 %1113, 3
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1118, 2
  %1122 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1108, float %1112, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.ResRet.f32 %1123, 3
  %1128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1108, float %1112, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.ResRet.f32 %1128, 3
  %1133 = fmul fast float %1124, %1101
  %1134 = fmul fast float %1129, %1101
  %1135 = fmul fast float %1131, %1101
  %1136 = fmul fast float %1127, %1101
  %1137 = fadd fast float %1133, %1114
  %1138 = fadd fast float %1134, %1115
  %1139 = fadd fast float %1135, %1116
  %1140 = fadd fast float %1136, %1117
  %1141 = fmul fast float %1125, %1101
  %1142 = fmul fast float %1130, %1101
  %1143 = fadd fast float %1141, %1119
  %1144 = fadd fast float %1142, %1120
  %1145 = fmul fast float %1126, %1101
  %1146 = fmul fast float %1132, %1101
  %1147 = fadd fast float %1145, %1121
  %1148 = fadd fast float %1146, %1122
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1108, float %1112, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1108, float %1112, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = extractvalue %dx.types.ResRet.f32 %1154, 3
  %1159 = fmul fast float %1150, %1102
  %1160 = fmul fast float %1155, %1102
  %1161 = fmul fast float %1157, %1102
  %1162 = fmul fast float %1153, %1102
  %1163 = fadd fast float %1137, %1159
  %1164 = fadd fast float %1138, %1160
  %1165 = fadd fast float %1139, %1161
  %1166 = fadd fast float %1140, %1162
  %1167 = fmul fast float %1151, %1102
  %1168 = fmul fast float %1156, %1102
  %1169 = fadd fast float %1143, %1167
  %1170 = fadd fast float %1144, %1168
  %1171 = fmul fast float %1152, %1102
  %1172 = fmul fast float %1158, %1102
  %1173 = fadd fast float %1147, %1171
  %1174 = fadd fast float %1148, %1172
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1108, float %1112, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.ResRet.f32 %1175, 3
  %1180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1108, float %1112, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1184 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1185 = fmul fast float %1176, %1103
  %1186 = fmul fast float %1181, %1103
  %1187 = fmul fast float %1183, %1103
  %1188 = fmul fast float %1179, %1103
  %1189 = fadd fast float %1163, %1185
  %1190 = fadd fast float %1164, %1186
  %1191 = fadd fast float %1165, %1187
  %1192 = fadd fast float %1166, %1188
  %1193 = fmul fast float %1177, %1103
  %1194 = fmul fast float %1182, %1103
  %1195 = fadd fast float %1169, %1193
  %1196 = fadd fast float %1170, %1194
  %1197 = fmul fast float %1178, %1103
  %1198 = fmul fast float %1184, %1103
  %1199 = fadd fast float %1173, %1197
  %1200 = fadd fast float %1174, %1198
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = fsub fast float %452, %1202
  %1204 = fsub fast float %1045, %452
  %1205 = call float @dx.op.binary.f32(i32 35, float %1204, float %1203)  ; FMax(a,b)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1207 = fsub fast float %453, %1206
  %1208 = fsub fast float %1046, %453
  %1209 = call float @dx.op.binary.f32(i32 35, float %1208, float %1207)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 35, float %1205, float %1209)  ; FMax(a,b)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1049, 3
  %1212 = fmul fast float %1211, %1210
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.CBufRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1218 = extractvalue %dx.types.CBufRet.f32 %1214, 3
  %1219 = fsub fast float %1215, %1189
  %1220 = fsub fast float %1216, %1190
  %1221 = fsub fast float %1217, %1191
  %1222 = fsub fast float %1218, %1192
  %1223 = fmul fast float %1219, %1213
  %1224 = fmul fast float %1220, %1213
  %1225 = fmul fast float %1221, %1213
  %1226 = fmul fast float %1222, %1213
  %1227 = fadd fast float %1223, %1189
  %1228 = fadd fast float %1224, %1190
  %1229 = fadd fast float %1225, %1191
  %1230 = fadd fast float %1226, %1192
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1234 = fsub fast float %1232, %1195
  %1235 = fsub fast float %1233, %1196
  %1236 = fmul fast float %1234, %1213
  %1237 = fmul fast float %1235, %1213
  %1238 = fadd fast float %1236, %1195
  %1239 = fadd fast float %1237, %1196
  %1240 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1241 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1242 = fsub fast float %1240, %1199
  %1243 = fsub fast float %1241, %1200
  %1244 = fmul fast float %1242, %1213
  %1245 = fmul fast float %1243, %1213
  %1246 = fadd fast float %1244, %1199
  %1247 = fadd fast float %1245, %1200
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = fmul fast float %1249, %1227
  %1251 = fmul fast float %1249, %1228
  %1252 = fmul fast float %1249, %1229
  %1253 = fmul fast float %1249, %1230
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = fmul fast float %1255, %1238
  %1257 = fmul fast float %1255, %1239
  %1258 = fadd fast float %1256, %1250
  %1259 = fadd fast float %1257, %1252
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = fmul fast float %1261, %1246
  %1263 = fmul fast float %1261, %1247
  %1264 = fadd fast float %1258, %1262
  %1265 = fadd fast float %1259, %1263
  %1266 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1267 = fmul fast float %1266, %1227
  %1268 = fmul fast float %1266, %1228
  %1269 = fmul fast float %1266, %1229
  %1270 = fmul fast float %1266, %1230
  %1271 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1272 = fmul fast float %1271, %1238
  %1273 = fmul fast float %1271, %1239
  %1274 = fadd fast float %1272, %1267
  %1275 = fadd fast float %1273, %1269
  %1276 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1277 = fmul fast float %1276, %1246
  %1278 = fmul fast float %1276, %1247
  %1279 = fadd fast float %1274, %1277
  %1280 = fadd fast float %1275, %1278
  %1281 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1282 = fmul fast float %1281, %1227
  %1283 = fmul fast float %1281, %1228
  %1284 = fmul fast float %1281, %1229
  %1285 = fmul fast float %1281, %1230
  %1286 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1287 = fmul fast float %1286, %1238
  %1288 = fmul fast float %1286, %1239
  %1289 = fadd fast float %1287, %1282
  %1290 = fadd fast float %1288, %1284
  %1291 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1292 = fmul fast float %1291, %1246
  %1293 = fmul fast float %1291, %1247
  %1294 = fadd fast float %1289, %1292
  %1295 = fadd fast float %1290, %1293
  %1296 = fmul fast float %1283, %1283
  %1297 = fmul fast float %1295, %1295
  %1298 = fmul fast float %1285, %1285
  %1299 = fadd fast float %1298, %1296
  %1300 = fadd fast float %1299, %1297
  %1301 = call float @dx.op.unary.f32(i32 24, float %1300)  ; Sqrt(value)
  %1302 = fcmp fast ugt float %1301, 0.000000e+00
  br i1 %1302, label %1303, label %1318

; <label>:1303                                    ; preds = %1037
  %1304 = fsub fast float -0.000000e+00, %1285
  %1305 = fdiv fast float %1304, %1301
  %1306 = fsub fast float -0.000000e+00, %1283
  %1307 = fdiv fast float %1306, %1301
  %1308 = fdiv fast float %1295, %1301
  %1309 = fmul fast float %1294, 0x3FE279A760000000
  %1310 = fmul fast float %1307, %1283
  %1311 = fmul fast float %1308, %1295
  %1312 = fmul fast float %1305, %1285
  %1313 = fadd fast float %1310, %1312
  %1314 = fsub fast float %1313, %1311
  %1315 = call float @dx.op.unary.f32(i32 6, float %1314)  ; FAbs(value)
  %1316 = fadd fast float %1315, 0x3DDB7CDFE0000000
  %1317 = fdiv fast float %1309, %1316
  br label %1318

; <label>:1318                                    ; preds = %1303, %1037
  %1319 = phi float [ %1317, %1303 ], [ 1.000000e+00, %1037 ]
  %1320 = fmul fast float %1268, %1268
  %1321 = fmul fast float %1280, %1280
  %1322 = fmul fast float %1270, %1270
  %1323 = fadd fast float %1322, %1320
  %1324 = fadd fast float %1323, %1321
  %1325 = call float @dx.op.unary.f32(i32 24, float %1324)  ; Sqrt(value)
  %1326 = fcmp fast ugt float %1325, 0.000000e+00
  br i1 %1326, label %1327, label %1342

; <label>:1327                                    ; preds = %1318
  %1328 = fsub fast float -0.000000e+00, %1270
  %1329 = fdiv fast float %1328, %1325
  %1330 = fsub fast float -0.000000e+00, %1268
  %1331 = fdiv fast float %1330, %1325
  %1332 = fdiv fast float %1280, %1325
  %1333 = fmul fast float %1279, 0x3FE279A760000000
  %1334 = fmul fast float %1331, %1268
  %1335 = fmul fast float %1332, %1280
  %1336 = fmul fast float %1329, %1270
  %1337 = fadd fast float %1334, %1336
  %1338 = fsub fast float %1337, %1335
  %1339 = call float @dx.op.unary.f32(i32 6, float %1338)  ; FAbs(value)
  %1340 = fadd fast float %1339, 0x3DDB7CDFE0000000
  %1341 = fdiv fast float %1333, %1340
  br label %1342

; <label>:1342                                    ; preds = %1327, %1318
  %1343 = phi float [ %1341, %1327 ], [ 1.000000e+00, %1318 ]
  %1344 = call float @dx.op.binary.f32(i32 36, float %1343, float %1319)  ; FMin(a,b)
  %1345 = fmul fast float %1251, %1251
  %1346 = fmul fast float %1265, %1265
  %1347 = fmul fast float %1253, %1253
  %1348 = fadd fast float %1347, %1345
  %1349 = fadd fast float %1348, %1346
  %1350 = call float @dx.op.unary.f32(i32 24, float %1349)  ; Sqrt(value)
  %1351 = fcmp fast ugt float %1350, 0.000000e+00
  br i1 %1351, label %1352, label %1367

; <label>:1352                                    ; preds = %1342
  %1353 = fsub fast float -0.000000e+00, %1253
  %1354 = fdiv fast float %1353, %1350
  %1355 = fsub fast float -0.000000e+00, %1251
  %1356 = fdiv fast float %1355, %1350
  %1357 = fdiv fast float %1265, %1350
  %1358 = fmul fast float %1264, 0x3FE279A760000000
  %1359 = fmul fast float %1356, %1251
  %1360 = fmul fast float %1357, %1265
  %1361 = fmul fast float %1354, %1253
  %1362 = fadd fast float %1359, %1361
  %1363 = fsub fast float %1362, %1360
  %1364 = call float @dx.op.unary.f32(i32 6, float %1363)  ; FAbs(value)
  %1365 = fadd fast float %1364, 0x3DDB7CDFE0000000
  %1366 = fdiv fast float %1358, %1365
  br label %1367

; <label>:1367                                    ; preds = %1352, %1342
  %1368 = phi float [ %1366, %1352 ], [ 1.000000e+00, %1342 ]
  %1369 = call float @dx.op.binary.f32(i32 36, float %1368, float %1344)  ; FMin(a,b)
  %1370 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1371 = fcmp fast olt float %1370, 1.000000e+00
  br i1 %1371, label %1372, label %1382

; <label>:1372                                    ; preds = %1367
  %1373 = fmul fast float %1370, %1251
  %1374 = fmul fast float %1370, %1265
  %1375 = fmul fast float %1370, %1253
  %1376 = fmul fast float %1370, %1268
  %1377 = fmul fast float %1370, %1280
  %1378 = fmul fast float %1370, %1270
  %1379 = fmul fast float %1370, %1283
  %1380 = fmul fast float %1370, %1295
  %1381 = fmul fast float %1370, %1285
  br label %1382

; <label>:1382                                    ; preds = %1372, %1367
  %1383 = phi float [ %1379, %1372 ], [ %1283, %1367 ]
  %1384 = phi float [ %1380, %1372 ], [ %1295, %1367 ]
  %1385 = phi float [ %1381, %1372 ], [ %1285, %1367 ]
  %1386 = phi float [ %1376, %1372 ], [ %1268, %1367 ]
  %1387 = phi float [ %1377, %1372 ], [ %1280, %1367 ]
  %1388 = phi float [ %1378, %1372 ], [ %1270, %1367 ]
  %1389 = phi float [ %1373, %1372 ], [ %1251, %1367 ]
  %1390 = phi float [ %1374, %1372 ], [ %1265, %1367 ]
  %1391 = phi float [ %1375, %1372 ], [ %1253, %1367 ]
  %1392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1264)  ; FMax(a,b)
  %1393 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1279)  ; FMax(a,b)
  %1394 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1294)  ; FMax(a,b)
  %1395 = fcmp fast oge float %1052, 0.000000e+00
  %1396 = and i1 %1395, %823
  %1397 = fcmp fast ole float %1052, 1.000000e+00
  %1398 = and i1 %1397, %1396
  %1399 = fcmp fast oge float %1053, 0.000000e+00
  %1400 = and i1 %1399, %1398
  %1401 = fcmp fast ole float %1053, 1.000000e+00
  %1402 = and i1 %1401, %1400
  br i1 %1402, label %1403, label %1548, !dx.controlflow.hints !88

; <label>:1403                                    ; preds = %1382
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1406 = extractvalue %dx.types.CBufRet.f32 %1404, 3
  %1407 = fmul fast float %1405, %1052
  %1408 = fmul fast float %1406, %1053
  %1409 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1410 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1411 = fptosi float %1409 to i32
  %1412 = fptosi float %1410 to i32
  %1413 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %1411, i32 %1412, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 65535
  %1416 = lshr i32 %1414, 16
  %1417 = icmp eq i32 %1415, 65535
  br i1 %1417, label %1454, label %1418

; <label>:1418                                    ; preds = %1403
  %1419 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %1420 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1421 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1422 = fmul fast float %1420, %1052
  %1423 = fmul fast float %1421, %1053
  %1424 = fmul fast float %1422, 1.250000e-01
  %1425 = fmul fast float %1423, 1.250000e-01
  %1426 = call float @dx.op.unary.f32(i32 27, float %1424)  ; Round_ni(value)
  %1427 = call float @dx.op.unary.f32(i32 27, float %1425)  ; Round_ni(value)
  %1428 = fmul fast float %1426, 8.000000e+00
  %1429 = fmul fast float %1427, 8.000000e+00
  %1430 = and i32 %1414, 255
  %1431 = lshr i32 %1414, 8
  %1432 = and i32 %1431, 255
  %1433 = mul nuw nsw i32 %1430, 9
  %1434 = uitofp i32 %1433 to float
  %1435 = mul nuw nsw i32 %1432, 9
  %1436 = uitofp i32 %1435 to float
  %1437 = fadd fast float %1434, 5.000000e-01
  %1438 = fadd fast float %1437, %1422
  %1439 = fsub fast float %1438, %1428
  %1440 = fadd fast float %1436, 5.000000e-01
  %1441 = fadd fast float %1440, %1423
  %1442 = fsub fast float %1441, %1429
  %1443 = fdiv fast float %1439, %822
  %1444 = fdiv fast float %1442, %1419
  %1445 = fmul fast float %1080, 4.375000e-01
  %1446 = fadd fast float %1445, 3.125000e-02
  %1447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1443, float %1444, float %1446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.ResRet.f32 %1447, 1
  %1450 = extractvalue %dx.types.ResRet.f32 %1447, 2
  %1451 = fadd fast float %1448, %1392
  %1452 = fadd fast float %1449, %1393
  %1453 = fadd fast float %1450, %1394
  br label %1454

; <label>:1454                                    ; preds = %1418, %1403
  %1455 = phi float [ %1453, %1418 ], [ %1394, %1403 ]
  %1456 = phi float [ %1452, %1418 ], [ %1393, %1403 ]
  %1457 = phi float [ %1451, %1418 ], [ %1392, %1403 ]
  %1458 = icmp eq i32 %1416, 65535
  br i1 %1458, label %1548, label %1459

; <label>:1459                                    ; preds = %1454
  %1460 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %1461 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1462 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1463 = fmul fast float %1461, %1052
  %1464 = fmul fast float %1462, %1053
  %1465 = fmul fast float %1463, 1.250000e-01
  %1466 = fmul fast float %1464, 1.250000e-01
  %1467 = call float @dx.op.unary.f32(i32 27, float %1465)  ; Round_ni(value)
  %1468 = call float @dx.op.unary.f32(i32 27, float %1466)  ; Round_ni(value)
  %1469 = fmul fast float %1467, 8.000000e+00
  %1470 = fmul fast float %1468, 8.000000e+00
  %1471 = fsub fast float %1463, %1469
  %1472 = fsub fast float %1464, %1470
  %1473 = fadd fast float %1471, 5.000000e-01
  %1474 = fadd fast float %1472, 5.000000e-01
  %1475 = and i32 %1416, 255
  %1476 = lshr i32 %1414, 24
  %1477 = mul nuw nsw i32 %1475, 9
  %1478 = uitofp i32 %1477 to float
  %1479 = mul nuw nsw i32 %1476, 9
  %1480 = uitofp i32 %1479 to float
  %1481 = fadd fast float %1473, %1478
  %1482 = fadd fast float %1474, %1480
  %1483 = fdiv fast float %1481, %822
  %1484 = fdiv fast float %1482, %1460
  %1485 = fmul fast float %1080, 4.375000e-01
  %1486 = fadd fast float %1485, 3.125000e-02
  %1487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1483, float %1484, float %1486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.ResRet.f32 %1487, 1
  %1490 = extractvalue %dx.types.ResRet.f32 %1487, 2
  %1491 = fadd fast float %1485, 5.312500e-01
  %1492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1483, float %1484, float %1491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.ResRet.f32 %1492, 2
  %1496 = fmul fast float %1493, 2.000000e+00
  %1497 = fmul fast float %1494, 2.000000e+00
  %1498 = fmul fast float %1495, 2.000000e+00
  %1499 = fadd fast float %1496, -1.000000e+00
  %1500 = fadd fast float %1497, -1.000000e+00
  %1501 = fadd fast float %1498, -1.000000e+00
  %1502 = fmul fast float %1499, %1499
  %1503 = fmul fast float %1500, %1500
  %1504 = fadd fast float %1502, %1503
  %1505 = fmul fast float %1501, %1501
  %1506 = fadd fast float %1504, %1505
  %1507 = call float @dx.op.unary.f32(i32 24, float %1506)  ; Sqrt(value)
  %1508 = fcmp fast ogt float %1507, 0.000000e+00
  br i1 %1508, label %1509, label %1513

; <label>:1509                                    ; preds = %1459
  %1510 = fdiv fast float %1499, %1507
  %1511 = fdiv fast float %1500, %1507
  %1512 = fdiv fast float %1501, %1507
  br label %1513

; <label>:1513                                    ; preds = %1509, %1459
  %1514 = phi float [ %1510, %1509 ], [ 0.000000e+00, %1459 ]
  %1515 = phi float [ %1511, %1509 ], [ 0.000000e+00, %1459 ]
  %1516 = phi float [ %1512, %1509 ], [ 0.000000e+00, %1459 ]
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 0
  %1519 = extractvalue %dx.types.CBufRet.f32 %1517, 1
  %1520 = fsub fast float %452, %1518
  %1521 = fsub fast float %453, %1519
  %1522 = fmul fast float %1520, %1520
  %1523 = fmul fast float %1521, %1521
  %1524 = fadd fast float %1522, %1523
  %1525 = call float @dx.op.unary.f32(i32 24, float %1524)  ; Sqrt(value)
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.CBufRet.f32 %1526, 1
  %1529 = fsub fast float %1525, %1527
  %1530 = fdiv fast float %1529, %1528
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1532 = fmul fast float %1531, 2.000000e+00
  %1533 = fsub fast float 3.000000e+00, %1532
  %1534 = fmul fast float %1531, %1531
  %1535 = fmul fast float %1534, %1533
  %1536 = call float @dx.op.dot3.f32(i32 55, float %1514, float %1515, float %1516, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1537 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1536)  ; FMax(a,b)
  %1538 = fmul fast float %1537, 0x400C5BF8A0000000
  %1539 = fmul fast float %1535, %1488
  %1540 = fmul fast float %1539, %1538
  %1541 = fadd fast float %1540, %1457
  %1542 = fmul fast float %1535, %1489
  %1543 = fmul fast float %1542, %1538
  %1544 = fadd fast float %1543, %1456
  %1545 = fmul fast float %1535, %1490
  %1546 = fmul fast float %1545, %1538
  %1547 = fadd fast float %1546, %1455
  br label %1548

; <label>:1548                                    ; preds = %1513, %1454, %1382
  %1549 = phi float [ %1547, %1513 ], [ %1455, %1454 ], [ %1394, %1382 ]
  %1550 = phi float [ %1544, %1513 ], [ %1456, %1454 ], [ %1393, %1382 ]
  %1551 = phi float [ %1541, %1513 ], [ %1457, %1454 ], [ %1392, %1382 ]
  %1552 = fcmp fast ogt float %1039, %1076
  %1553 = and i1 %1395, %1552
  %1554 = and i1 %1397, %1553
  %1555 = and i1 %1399, %1554
  %1556 = and i1 %1401, %1555
  br i1 %1556, label %1557, label %1614, !dx.controlflow.hints !89

; <label>:1557                                    ; preds = %1548
  %1558 = fmul fast float %1078, 0x3FC24924A0000000
  %1559 = fsub fast float %1039, %1076
  %1560 = fdiv fast float %1559, %1558
  %1561 = call float @dx.op.unary.f32(i32 7, float %1560)  ; Saturate(value)
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.CBufRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.CBufRet.f32 %1564, 2
  %1568 = fsub fast float %1563, %1551
  %1569 = fsub fast float %1565, %1389
  %1570 = fsub fast float %1566, %1390
  %1571 = fsub fast float %1567, %1391
  %1572 = fmul fast float %1568, %1561
  %1573 = fmul fast float %1569, %1561
  %1574 = fmul fast float %1570, %1561
  %1575 = fmul fast float %1571, %1561
  %1576 = fadd fast float %1572, %1551
  %1577 = fadd fast float %1573, %1389
  %1578 = fadd fast float %1574, %1390
  %1579 = fadd fast float %1575, %1391
  %1580 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1584 = extractvalue %dx.types.CBufRet.f32 %1581, 2
  %1585 = fsub fast float %1580, %1550
  %1586 = fsub fast float %1582, %1386
  %1587 = fsub fast float %1583, %1387
  %1588 = fsub fast float %1584, %1388
  %1589 = fmul fast float %1585, %1561
  %1590 = fmul fast float %1586, %1561
  %1591 = fmul fast float %1587, %1561
  %1592 = fmul fast float %1588, %1561
  %1593 = fadd fast float %1589, %1550
  %1594 = fadd fast float %1590, %1386
  %1595 = fadd fast float %1591, %1387
  %1596 = fadd fast float %1592, %1388
  %1597 = extractvalue %dx.types.CBufRet.f32 %1562, 2
  %1598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1599 = extractvalue %dx.types.CBufRet.f32 %1598, 0
  %1600 = extractvalue %dx.types.CBufRet.f32 %1598, 1
  %1601 = extractvalue %dx.types.CBufRet.f32 %1598, 2
  %1602 = fsub fast float %1597, %1549
  %1603 = fsub fast float %1599, %1383
  %1604 = fsub fast float %1600, %1384
  %1605 = fsub fast float %1601, %1385
  %1606 = fmul fast float %1602, %1561
  %1607 = fmul fast float %1603, %1561
  %1608 = fmul fast float %1604, %1561
  %1609 = fmul fast float %1605, %1561
  %1610 = fadd fast float %1606, %1549
  %1611 = fadd fast float %1607, %1383
  %1612 = fadd fast float %1608, %1384
  %1613 = fadd fast float %1609, %1385
  br label %1614

; <label>:1614                                    ; preds = %1557, %1548
  %1615 = phi float [ %1610, %1557 ], [ %1549, %1548 ]
  %1616 = phi float [ %1611, %1557 ], [ %1383, %1548 ]
  %1617 = phi float [ %1612, %1557 ], [ %1384, %1548 ]
  %1618 = phi float [ %1613, %1557 ], [ %1385, %1548 ]
  %1619 = phi float [ %1593, %1557 ], [ %1550, %1548 ]
  %1620 = phi float [ %1594, %1557 ], [ %1386, %1548 ]
  %1621 = phi float [ %1595, %1557 ], [ %1387, %1548 ]
  %1622 = phi float [ %1596, %1557 ], [ %1388, %1548 ]
  %1623 = phi float [ %1576, %1557 ], [ %1551, %1548 ]
  %1624 = phi float [ %1577, %1557 ], [ %1389, %1548 ]
  %1625 = phi float [ %1578, %1557 ], [ %1390, %1548 ]
  %1626 = phi float [ %1579, %1557 ], [ %1391, %1548 ]
  %1627 = extractvalue %dx.types.CBufRet.f32 %1201, 3
  %1628 = fmul fast float %1627, %1623
  %1629 = fmul fast float %1627, %1619
  %1630 = fmul fast float %1627, %1615
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 3
  %1633 = fmul fast float %1628, %1632
  %1634 = fmul fast float %1629, %1632
  %1635 = fmul fast float %1630, %1632
  %1636 = fmul fast float %1624, 1.500000e+00
  %1637 = fmul fast float %1636, %1627
  %1638 = fmul fast float %1637, %1632
  %1639 = fmul fast float %1625, 1.500000e+00
  %1640 = fmul fast float %1639, %1627
  %1641 = fmul fast float %1640, %1632
  %1642 = fmul fast float %1626, 1.500000e+00
  %1643 = fmul fast float %1642, %1627
  %1644 = fmul fast float %1643, %1632
  %1645 = fmul fast float %1620, 1.500000e+00
  %1646 = fmul fast float %1645, %1627
  %1647 = fmul fast float %1646, %1632
  %1648 = fmul fast float %1621, 1.500000e+00
  %1649 = fmul fast float %1648, %1627
  %1650 = fmul fast float %1649, %1632
  %1651 = fmul fast float %1622, 1.500000e+00
  %1652 = fmul fast float %1651, %1627
  %1653 = fmul fast float %1652, %1632
  %1654 = fmul fast float %1616, 1.500000e+00
  %1655 = fmul fast float %1654, %1627
  %1656 = fmul fast float %1655, %1632
  %1657 = fmul fast float %1617, 1.500000e+00
  %1658 = fmul fast float %1657, %1627
  %1659 = fmul fast float %1658, %1632
  %1660 = fmul fast float %1618, 1.500000e+00
  %1661 = fmul fast float %1660, %1627
  %1662 = fmul fast float %1661, %1632
  %1663 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1633)  ; FMax(a,b)
  %1664 = call float @dx.op.dot3.f32(i32 55, float %1638, float %1641, float %1644, float %1638, float %1641, float %1644)  ; Dot3(ax,ay,az,bx,by,bz)
  %1665 = fcmp fast oeq float %1664, 0.000000e+00
  %1666 = fcmp fast oeq float %1663, 0.000000e+00
  %1667 = or i1 %1666, %1665
  br i1 %1667, label %1697, label %1668

; <label>:1668                                    ; preds = %1614
  %1669 = fsub fast float -0.000000e+00, %1644
  %1670 = fsub fast float -0.000000e+00, %1638
  %1671 = call float @dx.op.unary.f32(i32 24, float %1664)  ; Sqrt(value)
  %1672 = fdiv fast float %1671, %1663
  %1673 = fcmp fast ogt float %1672, 0x3FFB6F8900000000
  %1674 = select i1 %1673, float 0x3FFB6F8900000000, float %1672
  %1675 = fmul fast float %1674, 0x3FE8A23460000000
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = call float @dx.op.binary.f32(i32 35, float %1674, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1678 = fmul fast float %1676, %1663
  %1679 = fmul fast float %1677, 0x3FF279A740000000
  %1680 = fadd fast float %1679, -1.000000e+00
  %1681 = call float @dx.op.dot3.f32(i32 55, float %1669, float %1670, float %1641, float %1669, float %1670, float %1641)  ; Dot3(ax,ay,az,bx,by,bz)
  %1682 = call float @dx.op.unary.f32(i32 25, float %1681)  ; Rsqrt(value)
  %1683 = fmul fast float %1682, %1669
  %1684 = fmul fast float %1682, %1670
  %1685 = fmul fast float %1682, %1641
  %1686 = fmul fast float %1680, %1680
  %1687 = fsub fast float 1.000000e+00, %1686
  %1688 = fmul fast float %1677, 0x40005F8BE0000000
  %1689 = fsub fast float 0x400C5BF8A0000000, %1688
  %1690 = fdiv fast float %1678, %1689
  %1691 = fmul fast float %1690, 0x3FEE31C3C0000000
  %1692 = fmul fast float %1691, %1687
  %1693 = fmul fast float %1677, 0x3FDACB7480000000
  %1694 = fadd fast float %1693, 0xBFD7347680000000
  %1695 = fmul fast float %1694, %1690
  %1696 = fmul fast float %1695, %1687
  br label %1697

; <label>:1697                                    ; preds = %1668, %1614
  %1698 = phi float [ %1683, %1668 ], [ 0.000000e+00, %1614 ]
  %1699 = phi float [ %1684, %1668 ], [ 0.000000e+00, %1614 ]
  %1700 = phi float [ %1685, %1668 ], [ 0.000000e+00, %1614 ]
  %1701 = phi float [ %1692, %1668 ], [ 0.000000e+00, %1614 ]
  %1702 = phi float [ %1696, %1668 ], [ 0.000000e+00, %1614 ]
  %1703 = call float @dx.op.dot3.f32(i32 55, float %1698, float %1699, float %1700, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1704 = fmul fast float %1703, %1703
  %1705 = fmul fast float %1704, 0x3FEE471020000000
  %1706 = fadd fast float %1705, 0xBFD42F6020000000
  %1707 = fmul fast float %1663, 0x3FD20DD760000000
  %1708 = fmul fast float %1706, %1702
  %1709 = fmul fast float %1701, 0x3FDF454380000000
  %1710 = fmul fast float %1709, %1703
  %1711 = fadd fast float %1710, %1707
  %1712 = fadd fast float %1711, %1708
  %1713 = call float @dx.op.dot3.f32(i32 55, float %1698, float %1699, float %1700, float %446, float %447, float %448)  ; Dot3(ax,ay,az,bx,by,bz)
  %1714 = fmul fast float %1713, 0x3FDF454380000000
  %1715 = fmul fast float %1713, %1713
  %1716 = fmul fast float %1715, 0x3FEE471020000000
  %1717 = fadd fast float %1716, 0xBFD42F6020000000
  %1718 = call float @dx.op.dot3.f32(i32 55, float %1663, float %1701, float %1702, float 0x3FD20DD760000000, float %1714, float %1717)  ; Dot3(ax,ay,az,bx,by,bz)
  %1719 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1634)  ; FMax(a,b)
  %1720 = call float @dx.op.dot3.f32(i32 55, float %1647, float %1650, float %1653, float %1647, float %1650, float %1653)  ; Dot3(ax,ay,az,bx,by,bz)
  %1721 = fcmp fast oeq float %1720, 0.000000e+00
  %1722 = fcmp fast oeq float %1719, 0.000000e+00
  %1723 = or i1 %1722, %1721
  br i1 %1723, label %1753, label %1724

; <label>:1724                                    ; preds = %1697
  %1725 = fsub fast float -0.000000e+00, %1653
  %1726 = fsub fast float -0.000000e+00, %1647
  %1727 = call float @dx.op.unary.f32(i32 24, float %1720)  ; Sqrt(value)
  %1728 = fdiv fast float %1727, %1719
  %1729 = fcmp fast ogt float %1728, 0x3FFB6F8900000000
  %1730 = select i1 %1729, float 0x3FFB6F8900000000, float %1728
  %1731 = fmul fast float %1730, 0x3FE8A23460000000
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = call float @dx.op.binary.f32(i32 35, float %1730, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1734 = fmul fast float %1732, %1719
  %1735 = fmul fast float %1733, 0x3FF279A740000000
  %1736 = fadd fast float %1735, -1.000000e+00
  %1737 = call float @dx.op.dot3.f32(i32 55, float %1725, float %1726, float %1650, float %1725, float %1726, float %1650)  ; Dot3(ax,ay,az,bx,by,bz)
  %1738 = call float @dx.op.unary.f32(i32 25, float %1737)  ; Rsqrt(value)
  %1739 = fmul fast float %1738, %1725
  %1740 = fmul fast float %1738, %1726
  %1741 = fmul fast float %1738, %1650
  %1742 = fmul fast float %1736, %1736
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = fmul fast float %1733, 0x40005F8BE0000000
  %1745 = fsub fast float 0x400C5BF8A0000000, %1744
  %1746 = fdiv fast float %1734, %1745
  %1747 = fmul fast float %1746, 0x3FEE31C3C0000000
  %1748 = fmul fast float %1747, %1743
  %1749 = fmul fast float %1733, 0x3FDACB7480000000
  %1750 = fadd fast float %1749, 0xBFD7347680000000
  %1751 = fmul fast float %1750, %1746
  %1752 = fmul fast float %1751, %1743
  br label %1753

; <label>:1753                                    ; preds = %1724, %1697
  %1754 = phi float [ %1739, %1724 ], [ 0.000000e+00, %1697 ]
  %1755 = phi float [ %1740, %1724 ], [ 0.000000e+00, %1697 ]
  %1756 = phi float [ %1741, %1724 ], [ 0.000000e+00, %1697 ]
  %1757 = phi float [ %1748, %1724 ], [ 0.000000e+00, %1697 ]
  %1758 = phi float [ %1752, %1724 ], [ 0.000000e+00, %1697 ]
  %1759 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1755, float %1756, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1760 = fmul fast float %1759, %1759
  %1761 = fmul fast float %1760, 0x3FEE471020000000
  %1762 = fadd fast float %1761, 0xBFD42F6020000000
  %1763 = fmul fast float %1719, 0x3FD20DD760000000
  %1764 = fmul fast float %1762, %1758
  %1765 = fmul fast float %1757, 0x3FDF454380000000
  %1766 = fmul fast float %1765, %1759
  %1767 = fadd fast float %1766, %1763
  %1768 = fadd fast float %1767, %1764
  %1769 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1755, float %1756, float %446, float %447, float %448)  ; Dot3(ax,ay,az,bx,by,bz)
  %1770 = fmul fast float %1769, 0x3FDF454380000000
  %1771 = fmul fast float %1769, %1769
  %1772 = fmul fast float %1771, 0x3FEE471020000000
  %1773 = fadd fast float %1772, 0xBFD42F6020000000
  %1774 = call float @dx.op.dot3.f32(i32 55, float %1719, float %1757, float %1758, float 0x3FD20DD760000000, float %1770, float %1773)  ; Dot3(ax,ay,az,bx,by,bz)
  %1775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1635)  ; FMax(a,b)
  %1776 = call float @dx.op.dot3.f32(i32 55, float %1656, float %1659, float %1662, float %1656, float %1659, float %1662)  ; Dot3(ax,ay,az,bx,by,bz)
  %1777 = fcmp fast oeq float %1776, 0.000000e+00
  %1778 = fcmp fast oeq float %1775, 0.000000e+00
  %1779 = or i1 %1778, %1777
  br i1 %1779, label %1809, label %1780

; <label>:1780                                    ; preds = %1753
  %1781 = fsub fast float -0.000000e+00, %1662
  %1782 = fsub fast float -0.000000e+00, %1656
  %1783 = call float @dx.op.unary.f32(i32 24, float %1776)  ; Sqrt(value)
  %1784 = fdiv fast float %1783, %1775
  %1785 = fcmp fast ogt float %1784, 0x3FFB6F8900000000
  %1786 = select i1 %1785, float 0x3FFB6F8900000000, float %1784
  %1787 = fmul fast float %1786, 0x3FE8A23460000000
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1789 = call float @dx.op.binary.f32(i32 35, float %1786, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1790 = fmul fast float %1788, %1775
  %1791 = fmul fast float %1789, 0x3FF279A740000000
  %1792 = fadd fast float %1791, -1.000000e+00
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1782, float %1659, float %1781, float %1782, float %1659)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = call float @dx.op.unary.f32(i32 25, float %1793)  ; Rsqrt(value)
  %1795 = fmul fast float %1794, %1781
  %1796 = fmul fast float %1794, %1782
  %1797 = fmul fast float %1794, %1659
  %1798 = fmul fast float %1792, %1792
  %1799 = fsub fast float 1.000000e+00, %1798
  %1800 = fmul fast float %1789, 0x40005F8BE0000000
  %1801 = fsub fast float 0x400C5BF8A0000000, %1800
  %1802 = fdiv fast float %1790, %1801
  %1803 = fmul fast float %1802, 0x3FEE31C3C0000000
  %1804 = fmul fast float %1803, %1799
  %1805 = fmul fast float %1789, 0x3FDACB7480000000
  %1806 = fadd fast float %1805, 0xBFD7347680000000
  %1807 = fmul fast float %1806, %1802
  %1808 = fmul fast float %1807, %1799
  br label %1809

; <label>:1809                                    ; preds = %1780, %1753
  %1810 = phi float [ %1795, %1780 ], [ 0.000000e+00, %1753 ]
  %1811 = phi float [ %1796, %1780 ], [ 0.000000e+00, %1753 ]
  %1812 = phi float [ %1797, %1780 ], [ 0.000000e+00, %1753 ]
  %1813 = phi float [ %1804, %1780 ], [ 0.000000e+00, %1753 ]
  %1814 = phi float [ %1808, %1780 ], [ 0.000000e+00, %1753 ]
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1810, float %1811, float %1812, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = fmul fast float %1815, %1815
  %1817 = fmul fast float %1816, 0x3FEE471020000000
  %1818 = fadd fast float %1817, 0xBFD42F6020000000
  %1819 = fmul fast float %1775, 0x3FD20DD760000000
  %1820 = fmul fast float %1818, %1814
  %1821 = fmul fast float %1813, 0x3FDF454380000000
  %1822 = fmul fast float %1821, %1815
  %1823 = fadd fast float %1822, %1819
  %1824 = fadd fast float %1823, %1820
  %1825 = call float @dx.op.dot3.f32(i32 55, float %1810, float %1811, float %1812, float %446, float %447, float %448)  ; Dot3(ax,ay,az,bx,by,bz)
  %1826 = fmul fast float %1825, 0x3FDF454380000000
  %1827 = fmul fast float %1825, %1825
  %1828 = fmul fast float %1827, 0x3FEE471020000000
  %1829 = fadd fast float %1828, 0xBFD42F6020000000
  %1830 = call float @dx.op.dot3.f32(i32 55, float %1775, float %1813, float %1814, float 0x3FD20DD760000000, float %1826, float %1829)  ; Dot3(ax,ay,az,bx,by,bz)
  %1831 = call float @dx.op.binary.f32(i32 35, float %1712, float 0.000000e+00)  ; FMax(a,b)
  %1832 = call float @dx.op.binary.f32(i32 35, float %1768, float 0.000000e+00)  ; FMax(a,b)
  %1833 = call float @dx.op.binary.f32(i32 35, float %1824, float 0.000000e+00)  ; FMax(a,b)
  %1834 = call float @dx.op.binary.f32(i32 35, float %1718, float 0.000000e+00)  ; FMax(a,b)
  %1835 = call float @dx.op.binary.f32(i32 35, float %1774, float 0.000000e+00)  ; FMax(a,b)
  %1836 = call float @dx.op.binary.f32(i32 35, float %1830, float 0.000000e+00)  ; FMax(a,b)
  %1837 = fsub fast float %1033, %1831
  %1838 = fsub fast float %1034, %1832
  %1839 = fsub fast float %1035, %1833
  %1840 = fmul fast float %1837, %493
  %1841 = fmul fast float %1838, %493
  %1842 = fmul fast float %1839, %493
  %1843 = fadd fast float %1840, %1831
  %1844 = fadd fast float %1841, %1832
  %1845 = fadd fast float %1842, %1833
  %1846 = fsub fast float %1030, %1834
  %1847 = fsub fast float %1031, %1835
  %1848 = fsub fast float %1032, %1836
  %1849 = fmul fast float %1846, %493
  %1850 = fmul fast float %1847, %493
  %1851 = fmul fast float %1848, %493
  %1852 = fadd fast float %1849, %1834
  %1853 = fadd fast float %1850, %1835
  %1854 = fadd fast float %1851, %1836
  br label %1855

; <label>:1855                                    ; preds = %1809, %1029
  %1856 = phi float [ %1852, %1809 ], [ %1030, %1029 ]
  %1857 = phi float [ %1853, %1809 ], [ %1031, %1029 ]
  %1858 = phi float [ %1854, %1809 ], [ %1032, %1029 ]
  %1859 = phi float [ %1843, %1809 ], [ %1033, %1029 ]
  %1860 = phi float [ %1844, %1809 ], [ %1034, %1029 ]
  %1861 = phi float [ %1845, %1809 ], [ %1035, %1029 ]
  %1862 = fmul fast float %1859, 0x3FEE623840000000
  %1863 = fmul fast float %1860, 0x3FEE623840000000
  %1864 = fmul fast float %1861, 0x3FEE623840000000
  %1865 = fmul fast float %1856, 0x3FEE623840000000
  %1866 = fmul fast float %1857, 0x3FEE623840000000
  %1867 = fmul fast float %1858, 0x3FEE623840000000
  %1868 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1863, float %1864, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1869 = select i1 %122, float 0.000000e+00, float %1862
  %1870 = select i1 %122, float %1868, float %1863
  %1871 = select i1 %122, float 0.000000e+00, float %1864
  %1872 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1873 = select i1 %122, float 0.000000e+00, float %1865
  %1874 = select i1 %122, float %1872, float %1866
  %1875 = select i1 %122, float 0.000000e+00, float %1867
  %1876 = fmul fast float %440, 9.843750e-01
  %1877 = fmul fast float %240, 9.843750e-01
  %1878 = fadd fast float %1876, 7.812500e-03
  %1879 = fadd fast float %1877, 7.812500e-03
  %1880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %1878, float %1879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 2
  %1882 = extractvalue %dx.types.ResRet.f32 %1880, 3
  %1883 = fmul fast float %1881, %420
  %1884 = fmul fast float %1881, %421
  %1885 = fmul fast float %1881, %438
  %1886 = fadd fast float %1883, %1882
  %1887 = fadd fast float %1884, %1882
  %1888 = fadd fast float %1885, %1882
  %1889 = call float @dx.op.binary.f32(i32 35, float %1887, float %1888)  ; FMax(a,b)
  %1890 = call float @dx.op.binary.f32(i32 35, float %1886, float %1889)  ; FMax(a,b)
  %1891 = fsub fast float 1.000000e+00, %1890
  %1892 = fmul fast float %1891, %1869
  %1893 = fmul fast float %1891, %1870
  %1894 = fmul fast float %1891, %1871
  %1895 = fmul fast float %1886, %1873
  %1896 = fmul fast float %1887, %1874
  %1897 = fmul fast float %1888, %1875
  %1898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1898, 3
  %1900 = fcmp fast oeq float %1899, 0.000000e+00
  br i1 %1900, label %2813, label %1901

; <label>:1901                                    ; preds = %1855
  %1902 = extractvalue %dx.types.CBufRet.f32 %1898, 0
  %1903 = extractvalue %dx.types.CBufRet.f32 %1898, 1
  %1904 = extractvalue %dx.types.CBufRet.f32 %1898, 2
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.CBufRet.f32 %1909, 1
  %1912 = call float @dx.op.dot3.f32(i32 55, float %1906, float %1907, float %1908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1913 = select i1 %122, float %1910, float %1906
  %1914 = select i1 %122, float %1912, float %1907
  %1915 = select i1 %122, float %1911, float %1908
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 2
  %1918 = fmul fast float %1917, %228
  %1919 = fmul fast float %1917, %229
  %1920 = fmul fast float %1917, %230
  %1921 = fadd fast float %1918, %297
  %1922 = fadd fast float %1919, %298
  %1923 = fadd fast float %1920, %299
  %1924 = fcmp fast olt float %1899, 0.000000e+00
  br i1 %1924, label %2546, label %1925

; <label>:1925                                    ; preds = %1901
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.CBufRet.f32 %1926, 1
  %1929 = extractvalue %dx.types.CBufRet.f32 %1926, 2
  %1930 = extractvalue %dx.types.CBufRet.f32 %1926, 3
  %1931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1931, 0
  %1933 = extractvalue %dx.types.CBufRet.f32 %1931, 1
  %1934 = extractvalue %dx.types.CBufRet.f32 %1931, 2
  %1935 = extractvalue %dx.types.CBufRet.f32 %1931, 3
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.CBufRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.CBufRet.f32 %1936, 2
  %1940 = extractvalue %dx.types.CBufRet.f32 %1936, 3
  %1941 = fmul fast float %1927, %1921
  %1942 = call float @dx.op.tertiary.f32(i32 46, float %1922, float %1928, float %1941)  ; FMad(a,b,c)
  %1943 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %1929, float %1942)  ; FMad(a,b,c)
  %1944 = fadd fast float %1943, %1930
  %1945 = fmul fast float %1932, %1921
  %1946 = call float @dx.op.tertiary.f32(i32 46, float %1922, float %1933, float %1945)  ; FMad(a,b,c)
  %1947 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %1934, float %1946)  ; FMad(a,b,c)
  %1948 = fadd fast float %1947, %1935
  %1949 = fmul fast float %1937, %1921
  %1950 = call float @dx.op.tertiary.f32(i32 46, float %1922, float %1938, float %1949)  ; FMad(a,b,c)
  %1951 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %1939, float %1950)  ; FMad(a,b,c)
  %1952 = fadd fast float %1951, %1940
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 0
  %1955 = extractvalue %dx.types.CBufRet.f32 %1953, 1
  %1956 = extractvalue %dx.types.CBufRet.f32 %1953, 3
  %1957 = fmul fast float %1956, %1944
  %1958 = fmul fast float %1956, %1948
  %1959 = fadd fast float %1957, %1954
  %1960 = fadd fast float %1958, %1955
  %1961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1962 = extractvalue %dx.types.CBufRet.f32 %1961, 0
  %1963 = extractvalue %dx.types.CBufRet.f32 %1961, 1
  %1964 = extractvalue %dx.types.CBufRet.f32 %1961, 3
  %1965 = fmul fast float %1964, %1944
  %1966 = fmul fast float %1964, %1948
  %1967 = fadd fast float %1965, %1962
  %1968 = fadd fast float %1966, %1963
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1971 = fsub fast float %1970, %1952
  %1972 = extractvalue %dx.types.CBufRet.f32 %1969, 2
  %1973 = fmul fast float %1971, %1972
  %1974 = fsub fast float 1.000000e+00, %1973
  %1975 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1976 = extractvalue %dx.types.CBufRet.f32 %1961, 2
  %1977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1977, 2
  %1979 = fadd fast float %1978, %1976
  %1980 = fcmp fast ogt float %1979, 0.000000e+00
  br i1 %1980, label %1981, label %2005

; <label>:1981                                    ; preds = %1925
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.CBufRet.f32 %1982, 1
  %1985 = fsub fast float %1967, %1983
  %1986 = fsub fast float %1968, %1984
  %1987 = fcmp fast olt float %1985, 0.000000e+00
  %1988 = fcmp fast olt float %1986, 0.000000e+00
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %1992 = extractvalue %dx.types.CBufRet.f32 %1989, 2
  %1993 = extractvalue %dx.types.CBufRet.f32 %1989, 3
  %1994 = select i1 %1987, float %1990, float %1992
  %1995 = select i1 %1988, float %1991, float %1993
  %1996 = fmul fast float %1994, %1985
  %1997 = fmul fast float %1995, %1986
  %1998 = call float @dx.op.unary.f32(i32 6, float %1996)  ; FAbs(value)
  %1999 = call float @dx.op.unary.f32(i32 6, float %1997)  ; FAbs(value)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %2001 = call float @dx.op.binary.f32(i32 35, float %1998, float %1999)  ; FMax(a,b)
  %2002 = fsub fast float %2000, %2001
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = fmul fast float %2003, %1975
  br label %2005

; <label>:2005                                    ; preds = %1981, %1925
  %2006 = phi float [ %2004, %1981 ], [ 0.000000e+00, %1925 ]
  %2007 = extractvalue %dx.types.CBufRet.f32 %1953, 2
  %2008 = extractvalue %dx.types.CBufRet.f32 %1977, 1
  %2009 = fadd fast float %2008, %2007
  %2010 = fcmp fast ogt float %2009, 0.000000e+00
  %2011 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  br i1 %2010, label %2012, label %2035

; <label>:2012                                    ; preds = %2005
  %2013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.CBufRet.f32 %2013, 1
  %2016 = fsub fast float %1959, %2014
  %2017 = fsub fast float %1960, %2015
  %2018 = fcmp fast olt float %2016, 0.000000e+00
  %2019 = fcmp fast olt float %2017, 0.000000e+00
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.CBufRet.f32 %2020, 2
  %2024 = extractvalue %dx.types.CBufRet.f32 %2020, 3
  %2025 = select i1 %2018, float %2021, float %2023
  %2026 = select i1 %2019, float %2022, float %2024
  %2027 = fmul fast float %2025, %2016
  %2028 = fmul fast float %2026, %2017
  %2029 = call float @dx.op.unary.f32(i32 6, float %2027)  ; FAbs(value)
  %2030 = call float @dx.op.unary.f32(i32 6, float %2028)  ; FAbs(value)
  %2031 = call float @dx.op.binary.f32(i32 35, float %2029, float %2030)  ; FMax(a,b)
  %2032 = fsub fast float %2011, %2031
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2034 = fmul fast float %2033, %1975
  br label %2035

; <label>:2035                                    ; preds = %2012, %2005
  %2036 = phi float [ %2034, %2012 ], [ 0.000000e+00, %2005 ]
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 1
  %2039 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.CBufRet.f32 %2040, 1
  %2043 = fsub fast float %1944, %2041
  %2044 = fsub fast float %1948, %2042
  %2045 = fcmp fast olt float %2043, 0.000000e+00
  %2046 = fcmp fast olt float %2044, 0.000000e+00
  %2047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.f32 %2047, 0
  %2049 = extractvalue %dx.types.CBufRet.f32 %2047, 1
  %2050 = extractvalue %dx.types.CBufRet.f32 %2047, 2
  %2051 = extractvalue %dx.types.CBufRet.f32 %2047, 3
  %2052 = select i1 %2045, float %2048, float %2050
  %2053 = select i1 %2046, float %2049, float %2051
  %2054 = fmul fast float %2052, %2043
  %2055 = fmul fast float %2053, %2044
  %2056 = call float @dx.op.unary.f32(i32 6, float %2054)  ; FAbs(value)
  %2057 = call float @dx.op.unary.f32(i32 6, float %2055)  ; FAbs(value)
  %2058 = call float @dx.op.binary.f32(i32 35, float %2056, float %2057)  ; FMax(a,b)
  %2059 = fsub fast float %2011, %2058
  %2060 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2061 = call float @dx.op.binary.f32(i32 36, float %2060, float %2039)  ; FMin(a,b)
  %2062 = fmul fast float %2061, %1975
  %2063 = fsub fast float %2036, %2062
  %2064 = fsub fast float %2006, %2036
  %2065 = fsub fast float %2064, %2062
  %2066 = call float @dx.op.binary.f32(i32 35, float %2036, float %2006)  ; FMax(a,b)
  %2067 = call float @dx.op.binary.f32(i32 35, float %2062, float %2066)  ; FMax(a,b)
  %2068 = fcmp fast olt float %2067, 1.000000e+00
  br i1 %2068, label %2069, label %2467, !dx.controlflow.hints !90

; <label>:2069                                    ; preds = %2035
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 0
  %2072 = fcmp fast une float %2071, 0.000000e+00
  br i1 %2072, label %2073, label %2467, !dx.controlflow.hints !91

; <label>:2073                                    ; preds = %2069
  %2074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.f32 %2074, 0
  %2076 = extractvalue %dx.types.CBufRet.f32 %2074, 1
  %2077 = extractvalue %dx.types.CBufRet.f32 %2074, 2
  %2078 = extractvalue %dx.types.CBufRet.f32 %2074, 3
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.CBufRet.f32 %2079, 1
  %2082 = extractvalue %dx.types.CBufRet.f32 %2079, 2
  %2083 = extractvalue %dx.types.CBufRet.f32 %2079, 3
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.CBufRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.CBufRet.f32 %2084, 2
  %2088 = extractvalue %dx.types.CBufRet.f32 %2084, 3
  %2089 = fmul fast float %2075, %1921
  %2090 = call float @dx.op.tertiary.f32(i32 46, float %1922, float %2076, float %2089)  ; FMad(a,b,c)
  %2091 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %2077, float %2090)  ; FMad(a,b,c)
  %2092 = fadd fast float %2091, %2078
  %2093 = fmul fast float %2080, %1921
  %2094 = call float @dx.op.tertiary.f32(i32 46, float %1922, float %2081, float %2093)  ; FMad(a,b,c)
  %2095 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %2082, float %2094)  ; FMad(a,b,c)
  %2096 = fadd fast float %2095, %2083
  %2097 = fmul fast float %2085, %1921
  %2098 = call float @dx.op.tertiary.f32(i32 46, float %1922, float %2086, float %2097)  ; FMad(a,b,c)
  %2099 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %2087, float %2098)  ; FMad(a,b,c)
  %2100 = fadd fast float %2099, %2088
  %2101 = fcmp fast oge float %2092, 1.000000e+00
  %2102 = fcmp fast oge float %2096, 1.000000e+00
  %2103 = or i1 %2101, %2102
  %2104 = fcmp fast olt float %2092, 0.000000e+00
  %2105 = fcmp fast olt float %2096, 0.000000e+00
  %2106 = or i1 %2104, %2105
  %2107 = or i1 %2103, %2106
  br i1 %2107, label %2467, label %2108, !dx.controlflow.hints !92

; <label>:2108                                    ; preds = %2073
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.CBufRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.i32 %2113, 2
  %2115 = uitofp i32 %2114 to float
  %2116 = extractvalue %dx.types.CBufRet.i32 %2113, 3
  %2117 = uitofp i32 %2116 to float
  %2118 = extractvalue %dx.types.CBufRet.f32 %2109, 3
  %2119 = fmul fast float %2118, 2.000000e+00
  %2120 = fsub fast float %2092, %2110
  %2121 = fsub fast float %2096, %2111
  %2122 = fmul fast float %2119, %2120
  %2123 = fmul fast float %2119, %2121
  %2124 = fdiv fast float 1.000000e+00, %1904
  %2125 = fmul fast float %2123, %2124
  %2126 = call float @dx.op.unary.f32(i32 6, float %2125)  ; FAbs(value)
  %2127 = fmul fast float %2112, %1923
  %2128 = fmul fast float %2127, %2119
  %2129 = call float @dx.op.unary.f32(i32 6, float %2128)  ; FAbs(value)
  %2130 = call float @dx.op.unary.f32(i32 6, float %2122)  ; FAbs(value)
  %2131 = call float @dx.op.binary.f32(i32 35, float %2129, float %2126)  ; FMax(a,b)
  %2132 = call float @dx.op.binary.f32(i32 35, float %2130, float %2131)  ; FMax(a,b)
  %2133 = fmul fast float %2132, 2.000000e+00
  %2134 = call float @dx.op.unary.f32(i32 23, float %2133)  ; Log(value)
  %2135 = call float @dx.op.binary.f32(i32 35, float %2134, float %2115)  ; FMax(a,b)
  %2136 = call float @dx.op.unary.f32(i32 22, float %2135)  ; Frc(value)
  %2137 = fadd fast float %2136, 0xBFEA666660000000
  %2138 = fmul fast float %2137, 8.000000e+00
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = call float @dx.op.unary.f32(i32 27, float %2135)  ; Round_ni(value)
  %2141 = fadd fast float %2140, %2139
  %2142 = call float @dx.op.binary.f32(i32 36, float %2141, float %2117)  ; FMin(a,b)
  %2143 = call float @dx.op.unary.f32(i32 27, float %2142)  ; Round_ni(value)
  %2144 = fsub fast float -0.000000e+00, %2143
  %2145 = call float @dx.op.unary.f32(i32 21, float %2144)  ; Exp(value)
  %2146 = fmul fast float %2145, %2119
  %2147 = fmul fast float %2146, %2092
  %2148 = fmul fast float %2146, %2096
  %2149 = fmul fast float %2147, 2.500000e-01
  %2150 = fmul fast float %2148, 2.500000e-01
  %2151 = fadd fast float %2149, 5.000000e-01
  %2152 = fadd fast float %2150, 5.000000e-01
  %2153 = fsub fast float %2117, %2115
  %2154 = fptoui float %2153 to i32
  %2155 = add i32 %2154, 320
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %2155)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2159 = fcmp fast une float %2142, %2117
  %2160 = fsub fast float %2092, %2157
  %2161 = fsub fast float %2096, %2158
  %2162 = call float @dx.op.unary.f32(i32 6, float %2160)  ; FAbs(value)
  %2163 = call float @dx.op.unary.f32(i32 6, float %2161)  ; FAbs(value)
  %2164 = fmul fast float %2162, %2146
  %2165 = fmul fast float %2163, %2146
  %2166 = fcmp fast olt float %2164, 1.000000e+00
  %2167 = fcmp fast olt float %2165, 1.000000e+00
  %2168 = and i1 %2166, %2167
  %2169 = or i1 %2159, %2168
  br i1 %2169, label %2170, label %2467, !dx.controlflow.hints !93

; <label>:2170                                    ; preds = %2108
  %2171 = fmul fast float %2148, 5.000000e-01
  %2172 = fmul fast float %2147, 5.000000e-01
  %2173 = fadd fast float %2171, 5.000000e-01
  %2174 = fadd fast float %2172, 5.000000e-01
  %2175 = sitofp i32 %2114 to float
  %2176 = fsub fast float %2142, %2175
  %2177 = call float @dx.op.unary.f32(i32 27, float %2176)  ; Round_ni(value)
  %2178 = call float @dx.op.unary.f32(i32 22, float %2142)  ; Frc(value)
  %2179 = call float @dx.op.unary.f32(i32 22, float %2174)  ; Frc(value)
  %2180 = call float @dx.op.unary.f32(i32 22, float %2173)  ; Frc(value)
  %2181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2179, float %2180, float %2177, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2182 = extractvalue %dx.types.ResRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.ResRet.f32 %2181, 1
  %2184 = extractvalue %dx.types.ResRet.f32 %2181, 2
  %2185 = extractvalue %dx.types.ResRet.f32 %2181, 3
  %2186 = fcmp fast ogt float %2178, 0.000000e+00
  br i1 %2186, label %2187, label %2208, !dx.controlflow.hints !94

; <label>:2187                                    ; preds = %2170
  %2188 = fadd fast float %2177, 1.000000e+00
  %2189 = call float @dx.op.unary.f32(i32 22, float %2151)  ; Frc(value)
  %2190 = call float @dx.op.unary.f32(i32 22, float %2152)  ; Frc(value)
  %2191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2189, float %2190, float %2188, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2192 = extractvalue %dx.types.ResRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.ResRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.ResRet.f32 %2191, 2
  %2195 = extractvalue %dx.types.ResRet.f32 %2191, 3
  %2196 = fsub fast float %2192, %2182
  %2197 = fsub fast float %2193, %2183
  %2198 = fsub fast float %2194, %2184
  %2199 = fsub fast float %2195, %2185
  %2200 = fmul fast float %2196, %2178
  %2201 = fmul fast float %2197, %2178
  %2202 = fmul fast float %2198, %2178
  %2203 = fmul fast float %2199, %2178
  %2204 = fadd fast float %2200, %2182
  %2205 = fadd fast float %2201, %2183
  %2206 = fadd fast float %2202, %2184
  %2207 = fadd fast float %2203, %2185
  br label %2208

; <label>:2208                                    ; preds = %2187, %2170
  %2209 = phi float [ %2204, %2187 ], [ %2182, %2170 ]
  %2210 = phi float [ %2205, %2187 ], [ %2183, %2170 ]
  %2211 = phi float [ %2206, %2187 ], [ %2184, %2170 ]
  %2212 = phi float [ %2207, %2187 ], [ %2185, %2170 ]
  %2213 = fadd fast float %2209, -5.000000e-01
  %2214 = fadd fast float %2211, -5.000000e-01
  %2215 = fmul fast float %2213, 0xBFD5555560000000
  %2216 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2214, float %2215)  ; FMad(a,b,c)
  %2217 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2210, float 0.000000e+00)  ; FMad(a,b,c)
  %2218 = fadd fast float %2217, %2212
  %2219 = fmul fast float %2213, -7.500000e-01
  %2220 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2214, float %2219)  ; FMad(a,b,c)
  %2221 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2210, float 0.000000e+00)  ; FMad(a,b,c)
  %2222 = fadd fast float %2221, %2212
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 0
  %2227 = extractvalue %dx.types.CBufRet.f32 %2225, 1
  %2228 = extractvalue %dx.types.CBufRet.f32 %2225, 2
  %2229 = extractvalue %dx.types.CBufRet.f32 %2225, 3
  %2230 = fsub fast float %2226, %2216
  %2231 = fsub fast float %2227, %2218
  %2232 = fsub fast float %2228, %2220
  %2233 = fsub fast float %2229, %2222
  %2234 = fmul fast float %2230, %2224
  %2235 = fmul fast float %2231, %2224
  %2236 = fmul fast float %2232, %2224
  %2237 = fmul fast float %2233, %2224
  %2238 = fadd fast float %2234, %2216
  %2239 = fadd fast float %2235, %2218
  %2240 = fadd fast float %2236, %2220
  %2241 = fadd fast float %2237, %2222
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 536870911
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, %2092
  %2247 = fmul fast float %2245, %2096
  %2248 = fptoui float %2246 to i32
  %2249 = fptoui float %2247 to i32
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 31
  %2253 = lshr i32 %2248, %2252
  %2254 = lshr i32 %2249, %2252
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 31
  %2258 = shl i32 1, %2257
  %2259 = call i32 @dx.op.binary.i32(i32 40, i32 %2258, i32 4)  ; UMin(a,b)
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = extractvalue %dx.types.ResRet.i32 %2260, 1
  %2263 = icmp eq i32 %2259, 0
  br i1 %2263, label %2305, label %2264

; <label>:2264                                    ; preds = %2208
  br label %2265

; <label>:2265                                    ; preds = %2293, %2264
  %2266 = phi i32 [ %2296, %2293 ], [ 0, %2264 ]
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = lshr i32 %2268, 16
  %2270 = and i32 %2269, 31
  %2271 = shl i32 %2254, %2270
  %2272 = add i32 %2271, %2253
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 31
  %2276 = shl i32 %2272, %2275
  %2277 = add i32 %2276, %2266
  %2278 = shl i32 %2277, 2
  %2279 = add i32 %2278, 32
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = icmp slt i32 %2281, 0
  %2283 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2266
  %2284 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2266
  %2285 = bitcast float* %2283 to i32*
  %2286 = bitcast float* %2284 to i32*
  br i1 %2282, label %2287, label %2293

; <label>:2287                                    ; preds = %2265
  %2288 = and i32 %2281, 1073741823
  %2289 = add nuw nsw i32 %2288, 20
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = extractvalue %dx.types.ResRet.i32 %2290, 1
  br label %2293

; <label>:2293                                    ; preds = %2287, %2265
  %2294 = phi i32 [ %2291, %2287 ], [ %2261, %2265 ]
  %2295 = phi i32 [ %2292, %2287 ], [ %2262, %2265 ]
  store i32 %2294, i32* %2285, align 4
  store i32 %2295, i32* %2286, align 4
  %2296 = add nuw i32 %2266, 1
  %2297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.i32 %2297, 2
  %2299 = icmp eq i32 %2298, 0
  %2300 = icmp ugt i32 %2281, -1073741825
  %2301 = and i1 %2300, %2299
  %2302 = icmp ult i32 %2296, %2259
  %2303 = and i1 %2301, %2302
  br i1 %2303, label %2265, label %2304

; <label>:2304                                    ; preds = %2293
  br label %2305

; <label>:2305                                    ; preds = %2304, %2208
  %2306 = phi i32 [ 0, %2208 ], [ %2296, %2304 ]
  %2307 = extractvalue %dx.types.CBufRet.f32 %2070, 2
  %2308 = fptoui float %2307 to i32
  %2309 = icmp eq i32 %2308, 0
  br i1 %2309, label %2361, label %2310

; <label>:2310                                    ; preds = %2305
  br label %2311

; <label>:2311                                    ; preds = %2356, %2310
  %2312 = phi i32 [ %2357, %2356 ], [ %2306, %2310 ]
  %2313 = phi i32 [ %2358, %2356 ], [ 0, %2310 ]
  %2314 = lshr i32 %2313, 2
  %2315 = and i32 %2313, 3
  %2316 = add nuw nsw i32 %2314, 83
  %2317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 %2316)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.i32 %2317, 0
  %2319 = extractvalue %dx.types.CBufRet.i32 %2317, 1
  %2320 = extractvalue %dx.types.CBufRet.i32 %2317, 2
  %2321 = extractvalue %dx.types.CBufRet.i32 %2317, 3
  %2322 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 0
  store i32 %2318, i32* %2322, align 4
  %2323 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 1
  store i32 %2319, i32* %2323, align 4
  %2324 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 2
  store i32 %2320, i32* %2324, align 4
  %2325 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 3
  store i32 %2321, i32* %2325, align 4
  %2326 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 %2315
  %2327 = load i32, i32* %2326, align 4, !tbaa !95, !noalias !99
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = lshr i32 %2329, 16
  %2331 = and i32 %2330, 31
  %2332 = shl i32 %2254, %2331
  %2333 = add i32 %2332, %2253
  %2334 = shl i32 %2333, 2
  %2335 = add i32 %2334, %2327
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2356, label %2339

; <label>:2339                                    ; preds = %2311
  %2340 = icmp slt i32 %2337, 0
  %2341 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2312
  %2342 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2312
  %2343 = bitcast float* %2341 to i32*
  %2344 = bitcast float* %2342 to i32*
  br i1 %2340, label %2345, label %2352

; <label>:2345                                    ; preds = %2339
  %2346 = and i32 %2337, 1073741823
  %2347 = add i32 %2327, 20
  %2348 = add i32 %2347, %2346
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = extractvalue %dx.types.ResRet.i32 %2349, 1
  br label %2352

; <label>:2352                                    ; preds = %2345, %2339
  %2353 = phi i32 [ %2350, %2345 ], [ %2261, %2339 ]
  %2354 = phi i32 [ %2351, %2345 ], [ %2262, %2339 ]
  store i32 %2353, i32* %2343, align 4
  store i32 %2354, i32* %2344, align 4
  %2355 = add i32 %2312, 1
  br label %2356

; <label>:2356                                    ; preds = %2352, %2311
  %2357 = phi i32 [ %2312, %2311 ], [ %2355, %2352 ]
  %2358 = add nuw i32 %2313, 1
  %2359 = icmp eq i32 %2358, %2308
  br i1 %2359, label %2360, label %2311

; <label>:2360                                    ; preds = %2356
  br label %2361

; <label>:2361                                    ; preds = %2360, %2305
  %2362 = phi i32 [ %2306, %2305 ], [ %2357, %2360 ]
  %2363 = icmp eq i32 %2362, 1
  %2364 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 0
  %2365 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 0
  br i1 %2363, label %2366, label %2369

; <label>:2366                                    ; preds = %2361
  %2367 = load float, float* %2364, align 4
  %2368 = load float, float* %2365, align 4
  br label %2396

; <label>:2369                                    ; preds = %2361
  %2370 = load float, float* %2364, align 4
  %2371 = load float, float* %2365, align 4
  %2372 = fdiv fast float 1.000000e+00, %2371
  %2373 = fsub fast float %2370, %2372
  %2374 = icmp ugt i32 %2362, 1
  br i1 %2374, label %2375, label %2391

; <label>:2375                                    ; preds = %2369
  br label %2376

; <label>:2376                                    ; preds = %2376, %2375
  %2377 = phi float [ %2386, %2376 ], [ %2373, %2375 ]
  %2378 = phi float [ %2387, %2376 ], [ %2370, %2375 ]
  %2379 = phi i32 [ %2388, %2376 ], [ 1, %2375 ]
  %2380 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2379
  %2381 = load float, float* %2380, align 4
  %2382 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2379
  %2383 = load float, float* %2382, align 4
  %2384 = fdiv fast float 1.000000e+00, %2383
  %2385 = fsub fast float %2381, %2384
  %2386 = call float @dx.op.binary.f32(i32 36, float %2377, float %2385)  ; FMin(a,b)
  %2387 = call float @dx.op.binary.f32(i32 35, float %2378, float %2381)  ; FMax(a,b)
  %2388 = add nuw i32 %2379, 1
  %2389 = icmp eq i32 %2388, %2362
  br i1 %2389, label %2390, label %2376

; <label>:2390                                    ; preds = %2376
  br label %2391

; <label>:2391                                    ; preds = %2390, %2369
  %2392 = phi float [ %2373, %2369 ], [ %2386, %2390 ]
  %2393 = phi float [ %2370, %2369 ], [ %2387, %2390 ]
  %2394 = fsub fast float %2393, %2392
  %2395 = fdiv fast float 1.000000e+00, %2394
  br label %2396

; <label>:2396                                    ; preds = %2391, %2366
  %2397 = phi float [ %2367, %2366 ], [ %2393, %2391 ]
  %2398 = phi float [ %2368, %2366 ], [ %2395, %2391 ]
  %2399 = fadd fast float %2100, %2397
  %2400 = fmul fast float %2399, %2398
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2402 = fmul fast float %2401, 2.000000e+00
  %2403 = fsub fast float 1.000000e+00, %2402
  %2404 = fmul fast float %2238, %2238
  %2405 = fsub fast float %2239, %2404
  %2406 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2405)  ; FMax(a,b)
  %2407 = fdiv fast float 1.000000e+00, %2406
  %2408 = fmul fast float %2239, %2238
  %2409 = fsub fast float %2240, %2408
  %2410 = fsub fast float %2403, %2238
  %2411 = fmul fast float %2403, %2403
  %2412 = fsub fast float %2411, %2239
  %2413 = fmul fast float %2407, %2409
  %2414 = fmul fast float %2413, %2410
  %2415 = fsub fast float %2412, %2414
  %2416 = fmul fast float %2239, %2239
  %2417 = fsub fast float %2241, %2416
  %2418 = fmul fast float %2409, %2409
  %2419 = fmul fast float %2418, %2407
  %2420 = fsub fast float %2417, %2419
  %2421 = fdiv fast float %2415, %2420
  %2422 = fmul fast float %2421, %2409
  %2423 = fsub fast float %2410, %2422
  %2424 = fmul fast float %2423, %2407
  %2425 = fmul fast float %2424, %2238
  %2426 = fsub fast float 1.000000e+00, %2425
  %2427 = fmul fast float %2421, %2239
  %2428 = fsub fast float %2426, %2427
  %2429 = fmul fast float %2424, %2424
  %2430 = fmul fast float %2421, 4.000000e+00
  %2431 = fmul fast float %2430, %2428
  %2432 = fsub fast float %2429, %2431
  %2433 = call float @dx.op.unary.f32(i32 24, float %2432)  ; Sqrt(value)
  %2434 = fcmp fast oge float %2424, 0.000000e+00
  %2435 = fsub fast float -0.000000e+00, %2433
  %2436 = select i1 %2434, float %2435, float %2433
  %2437 = fsub fast float %2436, %2424
  %2438 = fdiv fast float %2437, %2421
  %2439 = fdiv fast float %2428, %2437
  %2440 = fmul fast float %2438, 5.000000e-01
  %2441 = fmul fast float %2439, 2.000000e+00
  %2442 = select i1 %2434, float %2440, float %2441
  %2443 = select i1 %2434, float %2441, float %2440
  %2444 = call float @dx.op.binary.f32(i32 35, float %2442, float %2443)  ; FMax(a,b)
  %2445 = call float @dx.op.binary.f32(i32 36, float %2442, float %2443)  ; FMin(a,b)
  %2446 = fcmp fast ogt float %2403, %2444
  %2447 = fsub fast float %2403, %2445
  %2448 = fsub fast float %2403, %2444
  %2449 = fsub fast float %2444, %2445
  %2450 = select i1 %2446, float %2448, float %2449
  %2451 = fmul float %2447, %2450
  %2452 = select i1 %2446, float %2445, float %2403
  %2453 = fcmp fast ogt float %2403, %2445
  %2454 = fmul fast float %2452, %2444
  %2455 = fadd fast float %2452, %2444
  %2456 = fmul fast float %2455, %2238
  %2457 = fadd fast float %2454, %2239
  %2458 = fsub fast float %2457, %2456
  %2459 = fdiv fast float %2458, %2451
  %2460 = select i1 %2453, float %2459, float 0.000000e+00
  %2461 = fsub fast float 1.000000e+00, %2460
  %2462 = select i1 %2446, float %2461, float %2460
  %2463 = call float @dx.op.unary.f32(i32 7, float %2462)  ; Saturate(value)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2223, 3
  %2465 = fmul fast float %2464, %2463
  %2466 = fsub fast float 1.000000e+00, %2465
  br label %2467

; <label>:2467                                    ; preds = %2396, %2108, %2073, %2069, %2035
  %2468 = phi float [ 1.000000e+00, %2035 ], [ %2466, %2396 ], [ 1.000000e+00, %2073 ], [ 1.000000e+00, %2108 ], [ 1.000000e+00, %2069 ]
  %2469 = fcmp fast ogt float %2065, 0.000000e+00
  br i1 %2469, label %2470, label %2476, !dx.controlflow.hints !108

; <label>:2470                                    ; preds = %2467
  %2471 = fadd fast float %1978, %1952
  %2472 = call float @dx.op.binary.f32(i32 35, float %2471, float 0.000000e+00)  ; FMax(a,b)
  %2473 = fadd fast float %2472, 0x3F10000000000000
  %2474 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %36, float %1967, float %1968, float undef, float undef, i32 0, i32 0, i32 undef, float %2473)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2475 = extractvalue %dx.types.ResRet.f32 %2474, 0
  br label %2476

; <label>:2476                                    ; preds = %2470, %2467
  %2477 = phi float [ %2475, %2470 ], [ 1.000000e+00, %2467 ]
  %2478 = fcmp fast ogt float %2063, 0.000000e+00
  br i1 %2478, label %2479, label %2485, !dx.controlflow.hints !109

; <label>:2479                                    ; preds = %2476
  %2480 = fadd fast float %2008, %1952
  %2481 = call float @dx.op.binary.f32(i32 35, float %2480, float 0.000000e+00)  ; FMax(a,b)
  %2482 = fadd fast float %2481, 0x3F10000000000000
  %2483 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %36, float %1959, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float %2482)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  br label %2485

; <label>:2485                                    ; preds = %2479, %2476
  %2486 = phi float [ %2484, %2479 ], [ 1.000000e+00, %2476 ]
  %2487 = fcmp fast ogt float %2062, 0.000000e+00
  br i1 %2487, label %2488, label %2495, !dx.controlflow.hints !110

; <label>:2488                                    ; preds = %2485
  %2489 = extractvalue %dx.types.CBufRet.f32 %1977, 0
  %2490 = fadd fast float %2489, %1952
  %2491 = call float @dx.op.binary.f32(i32 35, float %2490, float 0.000000e+00)  ; FMax(a,b)
  %2492 = fadd fast float %2491, 0x3F10000000000000
  %2493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %36, float %1944, float %1948, float undef, float undef, i32 0, i32 0, i32 undef, float %2492)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2494 = extractvalue %dx.types.ResRet.f32 %2493, 0
  br label %2495

; <label>:2495                                    ; preds = %2488, %2485
  %2496 = phi float [ %2494, %2488 ], [ 1.000000e+00, %2485 ]
  %2497 = fsub fast float %2477, %2468
  %2498 = fmul fast float %2497, %2006
  %2499 = fadd fast float %2498, %2468
  %2500 = fsub fast float %2486, %2499
  %2501 = fmul fast float %2500, %2036
  %2502 = fadd fast float %2501, %2499
  %2503 = fsub fast float %2496, %2502
  %2504 = fmul fast float %2503, %2062
  %2505 = fadd fast float %2504, %2502
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 2
  %2508 = fcmp fast ogt float %2507, 0.000000e+00
  br i1 %2508, label %2509, label %2546, !dx.controlflow.hints !111

; <label>:2509                                    ; preds = %2495
  %2510 = fcmp fast ugt float %2507, 0.000000e+00
  br i1 %2510, label %2511, label %2543

; <label>:2511                                    ; preds = %2509
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 0
  %2514 = extractvalue %dx.types.CBufRet.f32 %2512, 1
  %2515 = extractvalue %dx.types.CBufRet.f32 %2512, 2
  %2516 = extractvalue %dx.types.CBufRet.f32 %2512, 3
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.CBufRet.f32 %2517, 1
  %2520 = extractvalue %dx.types.CBufRet.f32 %2517, 2
  %2521 = extractvalue %dx.types.CBufRet.f32 %2517, 3
  %2522 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2523 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %2524 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %2525 = fadd fast float %450, %1921
  %2526 = fadd fast float %451, %1922
  %2527 = fadd fast float %2524, %1923
  %2528 = fmul fast float %2525, %2513
  %2529 = call float @dx.op.tertiary.f32(i32 46, float %2514, float %2526, float %2528)  ; FMad(a,b,c)
  %2530 = call float @dx.op.tertiary.f32(i32 46, float %2515, float %2527, float %2529)  ; FMad(a,b,c)
  %2531 = fadd fast float %2530, %2516
  %2532 = fmul fast float %2525, %2518
  %2533 = call float @dx.op.tertiary.f32(i32 46, float %2519, float %2526, float %2532)  ; FMad(a,b,c)
  %2534 = call float @dx.op.tertiary.f32(i32 46, float %2520, float %2527, float %2533)  ; FMad(a,b,c)
  %2535 = fadd fast float %2534, %2521
  %2536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %32, float %2531, float %2535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2537 = extractvalue %dx.types.ResRet.f32 %2536, 0
  %2538 = fmul fast float %2537, %2523
  %2539 = fadd fast float %2538, %2522
  %2540 = call float @dx.op.unary.f32(i32 7, float %2539)  ; Saturate(value)
  %2541 = fmul fast float %2540, %2507
  %2542 = fsub fast float 1.000000e+00, %2541
  br label %2543

; <label>:2543                                    ; preds = %2511, %2509
  %2544 = phi float [ %2542, %2511 ], [ 1.000000e+00, %2509 ]
  %2545 = fmul fast float %2544, %2505
  br label %2546

; <label>:2546                                    ; preds = %2543, %2495, %1901
  %2547 = phi float [ 1.000000e+00, %1901 ], [ %2545, %2543 ], [ %2505, %2495 ]
  %2548 = call float @dx.op.binary.f32(i32 36, float %2547, float %2547)  ; FMin(a,b)
  %2549 = call float @dx.op.binary.f32(i32 36, float %2547, float %2548)  ; FMin(a,b)
  %2550 = fcmp fast ogt float %2549, 0.000000e+00
  br i1 %2550, label %2551, label %2708, !dx.controlflow.hints !112

; <label>:2551                                    ; preds = %2546
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2554 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2555 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2556 = extractvalue %dx.types.CBufRet.f32 %2552, 3
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2560 = extractvalue %dx.types.CBufRet.f32 %2557, 2
  %2561 = extractvalue %dx.types.CBufRet.f32 %2557, 3
  %2562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.CBufRet.f32 %2562, 1
  %2565 = extractvalue %dx.types.CBufRet.f32 %2562, 2
  %2566 = extractvalue %dx.types.CBufRet.f32 %2562, 3
  %2567 = fmul fast float %2553, %1921
  %2568 = call float @dx.op.tertiary.f32(i32 46, float %1922, float %2554, float %2567)  ; FMad(a,b,c)
  %2569 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %2555, float %2568)  ; FMad(a,b,c)
  %2570 = fadd fast float %2569, %2556
  %2571 = fmul fast float %2558, %1921
  %2572 = call float @dx.op.tertiary.f32(i32 46, float %1922, float %2559, float %2571)  ; FMad(a,b,c)
  %2573 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %2560, float %2572)  ; FMad(a,b,c)
  %2574 = fadd fast float %2573, %2561
  %2575 = fmul fast float %2563, %1921
  %2576 = call float @dx.op.tertiary.f32(i32 46, float %1922, float %2564, float %2575)  ; FMad(a,b,c)
  %2577 = call float @dx.op.tertiary.f32(i32 46, float %1923, float %2565, float %2576)  ; FMad(a,b,c)
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2581 = extractvalue %dx.types.CBufRet.f32 %2578, 3
  %2582 = fmul fast float %2581, %2570
  %2583 = fmul fast float %2581, %2574
  %2584 = fadd fast float %2582, %2579
  %2585 = fadd fast float %2583, %2580
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 0
  %2588 = extractvalue %dx.types.CBufRet.f32 %2586, 1
  %2589 = fsub fast float %2584, %2587
  %2590 = fsub fast float %2585, %2588
  %2591 = fcmp fast olt float %2589, 0.000000e+00
  %2592 = fcmp fast olt float %2590, 0.000000e+00
  %2593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2594 = extractvalue %dx.types.CBufRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.CBufRet.f32 %2593, 1
  %2596 = extractvalue %dx.types.CBufRet.f32 %2593, 2
  %2597 = extractvalue %dx.types.CBufRet.f32 %2593, 3
  %2598 = select i1 %2591, float %2594, float %2596
  %2599 = select i1 %2592, float %2595, float %2597
  %2600 = fmul fast float %2598, %2589
  %2601 = fmul fast float %2599, %2590
  %2602 = call float @dx.op.unary.f32(i32 6, float %2600)  ; FAbs(value)
  %2603 = call float @dx.op.unary.f32(i32 6, float %2601)  ; FAbs(value)
  %2604 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %2605 = call float @dx.op.binary.f32(i32 35, float %2602, float %2603)  ; FMax(a,b)
  %2606 = fsub fast float %2604, %2605
  %2607 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  %2608 = fcmp fast ogt float %2607, 0.000000e+00
  br i1 %2608, label %2609, label %2650, !dx.controlflow.hints !113

; <label>:2609                                    ; preds = %2551
  %2610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %2584, float %2585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2611 = extractvalue %dx.types.ResRet.f32 %2610, 1
  %2612 = fcmp fast ogt float %2611, 0.000000e+00
  br i1 %2612, label %2613, label %2646

; <label>:2613                                    ; preds = %2609
  %2614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %35, float %2584, float %2585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.ResRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.ResRet.f32 %2614, 2
  %2618 = extractvalue %dx.types.ResRet.f32 %2614, 3
  %2619 = fsub fast float 1.000000e+00, %2566
  %2620 = fsub fast float %2619, %2577
  %2621 = fmul fast float %2620, 0x400921FB60000000
  %2622 = fadd fast float %2621, 0x3FF921FB60000000
  %2623 = call float @dx.op.unary.f32(i32 13, float %2622)  ; Sin(value)
  %2624 = fadd fast float %2623, -1.000000e+00
  %2625 = fmul fast float %2624, 0x3FD45F3060000000
  %2626 = fmul fast float %2620, 0x401921FB60000000
  %2627 = fadd fast float %2626, 0x400921FB60000000
  %2628 = call float @dx.op.unary.f32(i32 13, float %2627)  ; Sin(value)
  %2629 = fadd fast float %2628, 0x3E7777A5C0000000
  %2630 = fmul fast float %2629, 0x3FC45F3060000000
  %2631 = fmul fast float %2620, 0x4022D97C80000000
  %2632 = fadd fast float %2631, 0x4012D97C80000000
  %2633 = call float @dx.op.unary.f32(i32 13, float %2632)  ; Sin(value)
  %2634 = fadd fast float %2633, 1.000000e+00
  %2635 = fmul fast float %2634, 0x3FBB2995E0000000
  %2636 = fmul fast float %2620, 0x402921FB60000000
  %2637 = fadd fast float %2636, 0x401921FB60000000
  %2638 = call float @dx.op.unary.f32(i32 13, float %2637)  ; Sin(value)
  %2639 = fadd fast float %2638, 0xBE8777A5C0000000
  %2640 = fmul fast float %2639, 0x3FB45F3060000000
  %2641 = call float @dx.op.dot4.f32(i32 56, float %2615, float %2616, float %2617, float %2618, float %2625, float %2630, float %2635, float %2640)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2642 = fmul fast float %2641, 0xBFF7154760000000
  %2643 = call float @dx.op.unary.f32(i32 21, float %2642)  ; Exp(value)
  %2644 = call float @dx.op.unary.f32(i32 7, float %2643)  ; Saturate(value)
  %2645 = fadd float %2644, -1.000000e+00
  br label %2646

; <label>:2646                                    ; preds = %2613, %2609
  %2647 = phi float [ %2645, %2613 ], [ 0.000000e+00, %2609 ]
  %2648 = fmul fast float %2647, %2607
  %2649 = fadd fast float %2648, 1.000000e+00
  br label %2650

; <label>:2650                                    ; preds = %2646, %2551
  %2651 = phi float [ %2649, %2646 ], [ 1.000000e+00, %2551 ]
  %2652 = fmul fast float %2651, %2547
  %2653 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %2654 = fadd fast float %450, %297
  %2655 = fadd fast float %451, %298
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 1
  %2658 = fsub fast float -0.000000e+00, %2654
  %2659 = fsub fast float -0.000000e+00, %2655
  %2660 = fsub fast float %429, %2653
  %2661 = fadd fast float %2660, %2657
  %2662 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2658, float %2659, float %2661)  ; Dot3(ax,ay,az,bx,by,bz)
  %2663 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1902, float %1903, float %1904)  ; Dot3(ax,ay,az,bx,by,bz)
  %2664 = fdiv fast float 1.000000e+00, %2663
  %2665 = fmul fast float %2664, %2662
  %2666 = fmul fast float %1902, %2665
  %2667 = fmul fast float %1903, %2665
  %2668 = fadd fast float %2666, %2654
  %2669 = fadd fast float %2667, %2655
  %2670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2671 = extractvalue %dx.types.CBufRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.CBufRet.f32 %2670, 1
  %2673 = fsub fast float %2668, %2671
  %2674 = fsub fast float %2669, %2672
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 2
  %2677 = extractvalue %dx.types.CBufRet.f32 %2675, 3
  %2678 = fmul fast float %2673, %2676
  %2679 = fmul fast float %2674, %2677
  %2680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2681 = extractvalue %dx.types.CBufRet.i32 %2680, 3
  %2682 = icmp eq i32 %2681, 0
  br i1 %2682, label %2688, label %2683

; <label>:2683                                    ; preds = %2650
  %2684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %34, float %2678, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2685 = extractvalue %dx.types.ResRet.f32 %2684, 0
  %2686 = extractvalue %dx.types.ResRet.f32 %2684, 1
  %2687 = extractvalue %dx.types.ResRet.f32 %2684, 2
  br label %2693

; <label>:2688                                    ; preds = %2650
  %2689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %2678, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2690 = extractvalue %dx.types.ResRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.ResRet.f32 %2689, 1
  %2692 = extractvalue %dx.types.ResRet.f32 %2689, 2
  br label %2693

; <label>:2693                                    ; preds = %2688, %2683
  %2694 = phi float [ %2685, %2683 ], [ %2690, %2688 ]
  %2695 = phi float [ %2686, %2683 ], [ %2691, %2688 ]
  %2696 = phi float [ %2687, %2683 ], [ %2692, %2688 ]
  %2697 = extractvalue %dx.types.CBufRet.f32 %2656, 2
  %2698 = fmul fast float %2697, %2694
  %2699 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  %2700 = fsub fast float %2665, %2699
  %2701 = fsub fast float %2700, %2698
  %2702 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2701)  ; FMax(a,b)
  %2703 = fmul fast float %2702, %2695
  %2704 = call float @dx.op.binary.f32(i32 36, float %2696, float %2703)  ; FMin(a,b)
  %2705 = fmul fast float %2704, 0xBFF7154760000000
  %2706 = call float @dx.op.unary.f32(i32 21, float %2705)  ; Exp(value)
  %2707 = fmul fast float %2652, %2706
  br label %2708

; <label>:2708                                    ; preds = %2693, %2546
  %2709 = phi float [ %2707, %2693 ], [ %2547, %2546 ]
  %2710 = call float @dx.op.binary.f32(i32 36, float %2709, float %2709)  ; FMin(a,b)
  %2711 = call float @dx.op.binary.f32(i32 36, float %2709, float %2710)  ; FMin(a,b)
  %2712 = fcmp fast ogt float %2711, 0.000000e+00
  br i1 %2712, label %2713, label %2813, !dx.controlflow.hints !114

; <label>:2713                                    ; preds = %2708
  %2714 = fmul fast float %2709, %1913
  %2715 = fmul fast float %2709, %1914
  %2716 = fmul fast float %2709, %1915
  %2717 = fsub fast float %1902, %432
  %2718 = fsub fast float %1903, %433
  %2719 = fsub fast float %1904, %434
  %2720 = call float @dx.op.dot3.f32(i32 55, float %2717, float %2718, float %2719, float %2717, float %2718, float %2719)  ; Dot3(ax,ay,az,bx,by,bz)
  %2721 = call float @dx.op.unary.f32(i32 25, float %2720)  ; Rsqrt(value)
  %2722 = fmul fast float %2721, %2717
  %2723 = fmul fast float %2721, %2718
  %2724 = fmul fast float %2721, %2719
  %2725 = call float @dx.op.dot3.f32(i32 55, float %1902, float %1903, float %1904, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %2726 = call float @dx.op.dot3.f32(i32 55, float %435, float %436, float %437, float %2722, float %2723, float %2724)  ; Dot3(ax,ay,az,bx,by,bz)
  %2727 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2728 = fmul fast float %2727, %2727
  %2729 = fmul fast float %2728, 0x47DE623840000000
  %2730 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2731 = fmul fast float %2730, %2727
  %2732 = call float @dx.op.dot3.f32(i32 55, float %228, float %229, float %230, float %2722, float %2723, float %2724)  ; Dot3(ax,ay,az,bx,by,bz)
  %2733 = fmul fast float %2732, %2732
  %2734 = call float @dx.op.unary.f32(i32 6, float %2725)  ; FAbs(value)
  %2735 = fsub fast float 1.000000e+00, %240
  %2736 = call float @dx.op.binary.f32(i32 35, float %2735, float 0x3F847AE140000000)  ; FMax(a,b)
  %2737 = fmul fast float %2736, %2736
  %2738 = fmul fast float %2737, %2737
  %2739 = fsub fast float 1.000000e+00, %2738
  %2740 = fmul fast float %440, %440
  %2741 = fmul fast float %2740, %2739
  %2742 = fadd fast float %2741, %2738
  %2743 = bitcast float %2742 to i32
  %2744 = ashr i32 %2743, 1
  %2745 = add nsw i32 %2744, 532487669
  %2746 = bitcast i32 %2745 to float
  %2747 = fadd fast float %2746, %440
  %2748 = fmul fast float %2738, %2733
  %2749 = fsub fast float 1.000000e+00, %2733
  %2750 = fadd fast float %2749, %2748
  %2751 = fmul fast float %2734, %2734
  %2752 = fmul fast float %2751, %2739
  %2753 = fadd fast float %2752, %2738
  %2754 = bitcast float %2753 to i32
  %2755 = ashr i32 %2754, 1
  %2756 = add nsw i32 %2755, 532487669
  %2757 = bitcast i32 %2756 to float
  %2758 = fadd fast float %2757, %2734
  %2759 = fmul fast float %2750, %2750
  %2760 = fmul fast float %2759, %2747
  %2761 = fmul fast float %2760, %2758
  %2762 = fdiv fast float 0x3FF0A00000000000, %2761
  %2763 = fmul fast float %2762, %2738
  %2764 = call float @dx.op.unary.f32(i32 6, float %2726)  ; FAbs(value)
  %2765 = fsub fast float 1.000000e+00, %2764
  %2766 = bitcast float %2765 to i32
  %2767 = sitofp i32 %2766 to float
  %2768 = fmul fast float %2767, 5.000000e+00
  %2769 = fadd fast float %2768, 0xC1EFBF8940000000
  %2770 = fptosi float %2769 to i32
  %2771 = bitcast i32 %2770 to float
  %2772 = fsub fast float 1.000000e+00, %420
  %2773 = fsub fast float 1.000000e+00, %421
  %2774 = fsub fast float 1.000000e+00, %438
  %2775 = fmul fast float %2771, %2772
  %2776 = fmul fast float %2771, %2773
  %2777 = fmul fast float %2771, %2774
  %2778 = fadd fast float %2775, %420
  %2779 = fadd fast float %2776, %421
  %2780 = fadd fast float %2777, %438
  %2781 = fmul fast float %2725, 9.843750e-01
  %2782 = fadd fast float %2781, 7.812500e-03
  %2783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2782, float %1879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 2
  %2785 = extractvalue %dx.types.ResRet.f32 %2783, 3
  %2786 = fmul fast float %2784, %420
  %2787 = fmul fast float %2784, %421
  %2788 = fmul fast float %2784, %438
  %2789 = fadd fast float %2786, %2785
  %2790 = fadd fast float %2787, %2785
  %2791 = fadd fast float %2788, %2785
  %2792 = call float @dx.op.binary.f32(i32 35, float %2790, float %2791)  ; FMax(a,b)
  %2793 = call float @dx.op.binary.f32(i32 35, float %2789, float %2792)  ; FMax(a,b)
  %2794 = fsub fast float 1.000000e+00, %2793
  %2795 = fmul fast float %2731, %2714
  %2796 = fmul fast float %2795, %2794
  %2797 = fmul fast float %2731, %2715
  %2798 = fmul fast float %2797, %2794
  %2799 = fmul fast float %2731, %2716
  %2800 = fmul fast float %2799, %2794
  %2801 = fadd fast float %2796, %1892
  %2802 = fadd fast float %2798, %1893
  %2803 = fadd fast float %2800, %1894
  %2804 = fmul fast float %2795, %2763
  %2805 = fmul fast float %2804, %2778
  %2806 = fmul fast float %2797, %2763
  %2807 = fmul fast float %2806, %2779
  %2808 = fmul fast float %2799, %2763
  %2809 = fmul fast float %2808, %2780
  %2810 = fadd fast float %2805, %1895
  %2811 = fadd fast float %2807, %1896
  %2812 = fadd fast float %2809, %1897
  br label %2813

; <label>:2813                                    ; preds = %2713, %2708, %1855
  %2814 = phi float [ %1895, %1855 ], [ %1895, %2708 ], [ %2810, %2713 ]
  %2815 = phi float [ %1896, %1855 ], [ %1896, %2708 ], [ %2811, %2713 ]
  %2816 = phi float [ %1897, %1855 ], [ %1897, %2708 ], [ %2812, %2713 ]
  %2817 = phi float [ %1892, %1855 ], [ %1892, %2708 ], [ %2801, %2713 ]
  %2818 = phi float [ %1893, %1855 ], [ %1893, %2708 ], [ %2802, %2713 ]
  %2819 = phi float [ %1894, %1855 ], [ %1894, %2708 ], [ %2803, %2713 ]
  %2820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.i32 %2820, 0
  %2822 = icmp eq i32 %2821, 0
  br i1 %2822, label %3293, label %2823

; <label>:2823                                    ; preds = %2813
  %2824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2824, 2
  %2826 = extractvalue %dx.types.CBufRet.f32 %2824, 3
  %2827 = fmul fast float %2825, %63
  %2828 = fmul fast float %2826, %64
  %2829 = fptoui float %2827 to i32
  %2830 = fptoui float %2828 to i32
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2834 = extractvalue %dx.types.CBufRet.f32 %2831, 3
  %2835 = fadd fast float %263, -4.000000e+00
  %2836 = call float @dx.op.binary.f32(i32 35, float %2835, float 0.000000e+00)  ; FMax(a,b)
  %2837 = fadd fast float %2836, %2832
  %2838 = fmul fast float %2837, %2833
  %2839 = call float @dx.op.unary.f32(i32 23, float %2838)  ; Log(value)
  %2840 = fmul fast float %2839, %2834
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 2
  %2843 = fmul fast float %2840, %2842
  %2844 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.i32 %2845, 1
  %2847 = add i32 %2846, -1
  %2848 = uitofp i32 %2846 to float
  %2849 = fmul fast float %2848, %2844
  %2850 = fptoui float %2849 to i32
  %2851 = call i32 @dx.op.binary.i32(i32 40, i32 %2850, i32 %2847)  ; UMin(a,b)
  %2852 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.i32 %2852, 2
  %2854 = extractvalue %dx.types.CBufRet.i32 %2852, 3
  %2855 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2830, i32 %2853, i32 %2829)  ; UMad(a,b,c)
  %2856 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2851, i32 %2854, i32 %2855)  ; UMad(a,b,c)
  %2857 = add nsw i32 %2821, -1
  %2858 = call i32 @dx.op.binary.i32(i32 37, i32 %2857, i32 0)  ; IMax(a,b)
  %2859 = call float @dx.op.binary.f32(i32 35, float %263, float 0.000000e+00)  ; FMax(a,b)
  %2860 = fptoui float %2859 to i32
  %2861 = lshr i32 %2860, 5
  %2862 = call i32 @dx.op.binary.i32(i32 40, i32 %2861, i32 8191)  ; UMin(a,b)
  %2863 = shl i32 %2862, 2
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = lshr i32 %2865, 16
  %2867 = and i32 %2865, 65535
  %2868 = lshr i32 %2865, 21
  %2869 = lshr i32 %2867, 5
  %2870 = call i32 @dx.op.binary.i32(i32 40, i32 %2869, i32 %2858)  ; UMin(a,b)
  %2871 = icmp ugt i32 %2868, %2870
  br i1 %2871, label %3293, label %2872

; <label>:2872                                    ; preds = %2823
  br label %2873

; <label>:2873                                    ; preds = %3283, %2872
  %2874 = phi i32 [ %3290, %3283 ], [ %2868, %2872 ]
  %2875 = phi float [ %3284, %3283 ], [ %2814, %2872 ]
  %2876 = phi float [ %3285, %3283 ], [ %2815, %2872 ]
  %2877 = phi float [ %3286, %3283 ], [ %2816, %2872 ]
  %2878 = phi float [ %3287, %3283 ], [ %2817, %2872 ]
  %2879 = phi float [ %3288, %3283 ], [ %2818, %2872 ]
  %2880 = phi float [ %3289, %3283 ], [ %2819, %2872 ]
  %2881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.i32 %2881, 0
  %2883 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2856, i32 %2882, i32 %2874)  ; UMad(a,b,c)
  %2884 = shl i32 %2883, 2
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = shl i32 %2874, 5
  %2888 = sub nsw i32 %2866, %2887
  %2889 = call i32 @dx.op.binary.i32(i32 37, i32 %2888, i32 0)  ; IMax(a,b)
  %2890 = call i32 @dx.op.binary.i32(i32 38, i32 %2889, i32 31)  ; IMin(a,b)
  %2891 = sub nsw i32 1, %2866
  %2892 = add nsw i32 %2891, %2867
  %2893 = call i32 @dx.op.binary.i32(i32 37, i32 %2892, i32 0)  ; IMax(a,b)
  %2894 = call i32 @dx.op.binary.i32(i32 38, i32 %2893, i32 32)  ; IMin(a,b)
  %2895 = and i32 %2894, 31
  %2896 = shl i32 -1, %2895
  %2897 = xor i32 %2896, -1
  %2898 = and i32 %2890, 31
  %2899 = shl i32 %2897, %2898
  %2900 = icmp eq i32 %2894, 32
  %2901 = select i1 %2900, i32 -1, i32 %2899
  %2902 = and i32 %2901, %2886
  %2903 = icmp eq i32 %2902, 0
  br i1 %2903, label %3283, label %2904

; <label>:2904                                    ; preds = %2873
  br label %2905

; <label>:2905                                    ; preds = %3039, %2904
  %2906 = phi i32 [ %2917, %3039 ], [ %2902, %2904 ]
  %2907 = phi float [ %3040, %3039 ], [ %2875, %2904 ]
  %2908 = phi float [ %3041, %3039 ], [ %2876, %2904 ]
  %2909 = phi float [ %3042, %3039 ], [ %2877, %2904 ]
  %2910 = phi float [ %3043, %3039 ], [ %2878, %2904 ]
  %2911 = phi float [ %3044, %3039 ], [ %2879, %2904 ]
  %2912 = phi float [ %3045, %3039 ], [ %2880, %2904 ]
  %2913 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2906)  ; FirstbitLo(value)
  %2914 = add i32 %2913, %2887
  %2915 = and i32 %2913, 31
  %2916 = shl i32 1, %2915
  %2917 = xor i32 %2916, %2906
  %2918 = mul i32 %2914, 112
  %2919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = extractvalue %dx.types.ResRet.f32 %2919, 1
  %2922 = extractvalue %dx.types.ResRet.f32 %2919, 2
  %2923 = or i32 %2918, 12
  %2924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = add i32 %2918, 16
  %2927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.ResRet.f32 %2927, 1
  %2930 = extractvalue %dx.types.ResRet.f32 %2927, 2
  %2931 = add i32 %2918, 28
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = add i32 %2918, 44
  %2935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = add i32 %2918, 48
  %2938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.f32 %2938, 0
  %2940 = extractvalue %dx.types.ResRet.f32 %2938, 1
  %2941 = extractvalue %dx.types.ResRet.f32 %2938, 2
  %2942 = extractvalue %dx.types.ResRet.f32 %2938, 3
  %2943 = add i32 %2918, 64
  %2944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.f32 %2944, 0
  %2946 = extractvalue %dx.types.ResRet.f32 %2944, 1
  %2947 = extractvalue %dx.types.ResRet.f32 %2944, 2
  %2948 = extractvalue %dx.types.ResRet.f32 %2944, 3
  %2949 = add i32 %2918, 80
  %2950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 1
  %2952 = extractvalue %dx.types.ResRet.f32 %2950, 2
  %2953 = add i32 %2918, 92
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = call float @dx.op.dot3.f32(i32 55, float %2920, float %2921, float %2922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2957 = select i1 %122, float %2951, float %2920
  %2958 = select i1 %122, float %2956, float %2921
  %2959 = select i1 %122, float %2952, float %2922
  %2960 = and i32 %2955, 65535
  %2961 = uitofp i32 %2960 to float
  %2962 = lshr i32 %2955, 16
  %2963 = uitofp i32 %2962 to float
  %2964 = and i32 %2933, 65535
  %2965 = and i32 %2933, 50331648
  %2966 = icmp eq i32 %2965, 33554432
  %2967 = fsub fast float %2939, %297
  %2968 = fsub fast float %2940, %298
  %2969 = fsub fast float %2941, %299
  %2970 = call float @dx.op.dot3.f32(i32 55, float %2967, float %2968, float %2969, float %2967, float %2968, float %2969)  ; Dot3(ax,ay,az,bx,by,bz)
  %2971 = call float @dx.op.unary.f32(i32 24, float %2970)  ; Sqrt(value)
  %2972 = fdiv fast float 1.000000e+00, %2971
  %2973 = fmul fast float %2972, %2967
  %2974 = fmul fast float %2972, %2968
  %2975 = fmul fast float %2972, %2969
  %2976 = fadd fast float %2971, %2925
  %2977 = fdiv fast float 1.000000e+00, %2976
  %2978 = fmul float %2936, %2977
  %2979 = fmul float %2978, %2978
  %2980 = call float @dx.op.unary.f32(i32 7, float %2979)  ; Saturate(value)
  br i1 %2966, label %2981, label %3002

; <label>:2981                                    ; preds = %2905
  %2982 = fmul fast float %2947, %2928
  %2983 = fmul fast float %2947, %2929
  %2984 = fmul fast float %2947, %2930
  %2985 = fadd fast float %2967, %2982
  %2986 = fadd fast float %2968, %2983
  %2987 = fadd fast float %2969, %2984
  %2988 = call float @dx.op.dot3.f32(i32 55, float %2985, float %2986, float %2987, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %2989 = call float @dx.op.unary.f32(i32 25, float %2988)  ; Rsqrt(value)
  %2990 = fmul fast float %2989, %2985
  %2991 = fmul fast float %2989, %2986
  %2992 = fmul fast float %2989, %2987
  %2993 = fsub fast float %297, %2939
  %2994 = fsub fast float %298, %2940
  %2995 = fsub fast float %299, %2941
  %2996 = fsub fast float -0.000000e+00, %2993
  %2997 = fsub fast float -0.000000e+00, %2994
  %2998 = fsub fast float -0.000000e+00, %2995
  %2999 = call float @dx.op.dot3.f32(i32 55, float %2996, float %2997, float %2998, float %2928, float %2929, float %2930)  ; Dot3(ax,ay,az,bx,by,bz)
  %3000 = fcmp fast ogt float %2999, 0.000000e+00
  %3001 = uitofp i1 %3000 to float
  br label %3002

; <label>:3002                                    ; preds = %2981, %2905
  %3003 = phi float [ %3001, %2981 ], [ 1.000000e+00, %2905 ]
  %3004 = phi float [ %2990, %2981 ], [ %2973, %2905 ]
  %3005 = phi float [ %2991, %2981 ], [ %2974, %2905 ]
  %3006 = phi float [ %2992, %2981 ], [ %2975, %2905 ]
  %3007 = call float @dx.op.dot3.f32(i32 55, float %2928, float %2929, float %2930, float %3004, float %3005, float %3006)  ; Dot3(ax,ay,az,bx,by,bz)
  %3008 = fmul fast float %3007, %3007
  %3009 = call float @dx.op.unary.f32(i32 7, float %3008)  ; Saturate(value)
  %3010 = fsub fast float 1.000000e+00, %3009
  %3011 = fmul fast float %3010, 5.000000e-01
  %3012 = fcmp fast ogt float %3007, 0.000000e+00
  %3013 = fsub fast float 1.000000e+00, %3011
  %3014 = select i1 %3012, float %3011, float %3013
  %3015 = fmul fast float %3014, %2963
  %3016 = fadd fast float %3015, %2961
  %3017 = fmul fast float %3016, 0x3EF0001000000000
  %3018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %3017, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3019 = extractvalue %dx.types.ResRet.f32 %3018, 0
  %3020 = fmul fast float %3007, %2945
  %3021 = fadd fast float %3020, %2946
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = select i1 %2966, float 1.000000e+00, float %3022
  %3024 = select i1 %2966, float %3022, float 1.000000e+00
  %3025 = fmul fast float %2971, %2942
  %3026 = fsub fast float 1.000000e+00, %3025
  %3027 = fmul fast float %3026, %2948
  %3028 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3029 = fmul fast float %3028, %3024
  %3030 = fmul fast float %3029, 2.000000e+00
  %3031 = fsub fast float 3.000000e+00, %3030
  %3032 = fmul fast float %3019, %3003
  %3033 = fmul fast float %3029, %3029
  %3034 = fmul fast float %3033, %3032
  %3035 = fmul fast float %3034, %3031
  %3036 = call float @dx.op.binary.f32(i32 36, float %3035, float %3035)  ; FMin(a,b)
  %3037 = call float @dx.op.binary.f32(i32 36, float %3035, float %3036)  ; FMin(a,b)
  %3038 = fcmp fast ogt float %3037, 0.000000e+00
  br i1 %3038, label %3047, label %3039, !dx.controlflow.hints !115

; <label>:3039                                    ; preds = %3152, %3147, %3002
  %3040 = phi float [ %2907, %3147 ], [ %2907, %3002 ], [ %3279, %3152 ]
  %3041 = phi float [ %2908, %3147 ], [ %2908, %3002 ], [ %3280, %3152 ]
  %3042 = phi float [ %2909, %3147 ], [ %2909, %3002 ], [ %3281, %3152 ]
  %3043 = phi float [ %2910, %3147 ], [ %2910, %3002 ], [ %3270, %3152 ]
  %3044 = phi float [ %2911, %3147 ], [ %2911, %3002 ], [ %3271, %3152 ]
  %3045 = phi float [ %2912, %3147 ], [ %2912, %3002 ], [ %3272, %3152 ]
  %3046 = icmp eq i32 %2906, %2916
  br i1 %3046, label %3282, label %2905

; <label>:3047                                    ; preds = %3002
  %3048 = icmp eq i32 %2964, 255
  br i1 %3048, label %3147, label %3049, !dx.controlflow.hints !116

; <label>:3049                                    ; preds = %3047
  %3050 = mul nuw nsw i32 %2964, 176
  %3051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = extractvalue %dx.types.ResRet.f32 %3051, 1
  %3054 = extractvalue %dx.types.ResRet.f32 %3051, 2
  %3055 = extractvalue %dx.types.ResRet.f32 %3051, 3
  %3056 = add nuw nsw i32 %3050, 16
  %3057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = extractvalue %dx.types.ResRet.f32 %3057, 1
  %3060 = add nuw nsw i32 %3050, 32
  %3061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.ResRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %3061, 2
  %3065 = add nuw nsw i32 %3050, 48
  %3066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 0
  %3068 = extractvalue %dx.types.ResRet.f32 %3066, 1
  %3069 = extractvalue %dx.types.ResRet.f32 %3066, 2
  %3070 = extractvalue %dx.types.ResRet.f32 %3066, 3
  %3071 = add nuw nsw i32 %3050, 64
  %3072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = extractvalue %dx.types.ResRet.f32 %3072, 1
  %3075 = extractvalue %dx.types.ResRet.f32 %3072, 2
  %3076 = extractvalue %dx.types.ResRet.f32 %3072, 3
  %3077 = add nuw nsw i32 %3050, 80
  %3078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.f32 %3078, 0
  %3080 = extractvalue %dx.types.ResRet.f32 %3078, 1
  %3081 = extractvalue %dx.types.ResRet.f32 %3078, 2
  %3082 = extractvalue %dx.types.ResRet.f32 %3078, 3
  %3083 = add nuw nsw i32 %3050, 96
  %3084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.f32 %3084, 0
  %3086 = extractvalue %dx.types.ResRet.f32 %3084, 1
  %3087 = extractvalue %dx.types.ResRet.f32 %3084, 2
  %3088 = extractvalue %dx.types.ResRet.f32 %3084, 3
  %3089 = bitcast float %3059 to i32
  %3090 = fmul fast float %3064, %228
  %3091 = fmul fast float %3064, %229
  %3092 = fmul fast float %3064, %230
  %3093 = fadd fast float %3090, %297
  %3094 = fadd fast float %3091, %298
  %3095 = fadd fast float %3092, %299
  %3096 = fmul fast float %3093, %3067
  %3097 = call float @dx.op.tertiary.f32(i32 46, float %3094, float %3073, float %3096)  ; FMad(a,b,c)
  %3098 = call float @dx.op.tertiary.f32(i32 46, float %3095, float %3079, float %3097)  ; FMad(a,b,c)
  %3099 = fadd fast float %3098, %3085
  %3100 = fmul fast float %3093, %3068
  %3101 = call float @dx.op.tertiary.f32(i32 46, float %3094, float %3074, float %3100)  ; FMad(a,b,c)
  %3102 = call float @dx.op.tertiary.f32(i32 46, float %3095, float %3080, float %3101)  ; FMad(a,b,c)
  %3103 = fadd fast float %3102, %3086
  %3104 = fmul fast float %3093, %3069
  %3105 = call float @dx.op.tertiary.f32(i32 46, float %3094, float %3075, float %3104)  ; FMad(a,b,c)
  %3106 = call float @dx.op.tertiary.f32(i32 46, float %3095, float %3081, float %3105)  ; FMad(a,b,c)
  %3107 = fadd fast float %3106, %3087
  %3108 = fmul fast float %3093, %3070
  %3109 = call float @dx.op.tertiary.f32(i32 46, float %3094, float %3076, float %3108)  ; FMad(a,b,c)
  %3110 = call float @dx.op.tertiary.f32(i32 46, float %3095, float %3082, float %3109)  ; FMad(a,b,c)
  %3111 = fadd fast float %3110, %3088
  %3112 = fdiv fast float %3099, %3111
  %3113 = fdiv fast float %3103, %3111
  %3114 = fdiv fast float %3107, %3111
  %3115 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3114)  ; FMax(a,b)
  %3116 = fmul fast float %133, 0x401921FB60000000
  %3117 = call float @dx.op.unary.f32(i32 13, float %3116)  ; Sin(value)
  %3118 = call float @dx.op.unary.f32(i32 12, float %3116)  ; Cos(value)
  %3119 = fsub fast float -0.000000e+00, %3117
  %3120 = fmul fast float %3054, 5.000000e-01
  %3121 = call float @dx.op.dot2.f32(i32 54, float %133, float %133, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %3122 = call float @dx.op.unary.f32(i32 22, float %3121)  ; Frc(value)
  %3123 = fmul fast float %3122, 0x404A7DD040000000
  %3124 = call float @dx.op.unary.f32(i32 22, float %3123)  ; Frc(value)
  %3125 = fmul fast float %3124, %3063
  %3126 = fadd fast float %3125, %3120
  %3127 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3119, float 0.000000e+00)  ; FMad(a,b,c)
  %3128 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3118, float 0.000000e+00)  ; FMad(a,b,c)
  %3129 = fadd fast float %3127, %3112
  %3130 = fadd fast float %3128, %3113
  %3131 = fmul fast float %3129, %3058
  %3132 = fmul fast float %3130, %3058
  %3133 = call float @dx.op.binary.f32(i32 35, float %3131, float %3054)  ; FMax(a,b)
  %3134 = call float @dx.op.binary.f32(i32 35, float %3132, float %3054)  ; FMax(a,b)
  %3135 = call float @dx.op.binary.f32(i32 36, float %3133, float %3055)  ; FMin(a,b)
  %3136 = call float @dx.op.binary.f32(i32 36, float %3134, float %3055)  ; FMin(a,b)
  %3137 = fadd fast float %3135, %3052
  %3138 = fadd fast float %3136, %3053
  %3139 = uitofp i32 %3089 to float
  %3140 = fadd fast float %3115, %3062
  %3141 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %36, float %3137, float %3138, float %3139, float undef, i32 0, i32 0, i32 undef, float %3140)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = fadd fast float %3142, -1.000000e+00
  %3144 = fmul fast float %3143, %3023
  %3145 = fadd fast float %3144, 1.000000e+00
  %3146 = fmul fast float %3145, %3035
  br label %3147

; <label>:3147                                    ; preds = %3049, %3047
  %3148 = phi float [ %3146, %3049 ], [ %3035, %3047 ]
  %3149 = call float @dx.op.binary.f32(i32 36, float %3148, float %3148)  ; FMin(a,b)
  %3150 = call float @dx.op.binary.f32(i32 36, float %3148, float %3149)  ; FMin(a,b)
  %3151 = fcmp fast ogt float %3150, 0.000000e+00
  br i1 %3151, label %3152, label %3039, !dx.controlflow.hints !117

; <label>:3152                                    ; preds = %3147
  %3153 = fmul fast float %3148, %2957
  %3154 = fmul fast float %3148, %2958
  %3155 = fmul fast float %3148, %2959
  %3156 = fsub fast float %2973, %432
  %3157 = fsub fast float %2974, %433
  %3158 = fsub fast float %2975, %434
  %3159 = call float @dx.op.dot3.f32(i32 55, float %3156, float %3157, float %3158, float %3156, float %3157, float %3158)  ; Dot3(ax,ay,az,bx,by,bz)
  %3160 = call float @dx.op.unary.f32(i32 25, float %3159)  ; Rsqrt(value)
  %3161 = fmul fast float %3160, %3156
  %3162 = fmul fast float %3160, %3157
  %3163 = fmul fast float %3160, %3158
  %3164 = call float @dx.op.dot3.f32(i32 55, float %2973, float %2974, float %2975, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.dot3.f32(i32 55, float %435, float %436, float %437, float %3161, float %3162, float %3163)  ; Dot3(ax,ay,az,bx,by,bz)
  %3166 = call float @dx.op.unary.f32(i32 7, float %3164)  ; Saturate(value)
  %3167 = fmul fast float %3166, %2980
  %3168 = fmul fast float %3166, %3166
  %3169 = fmul fast float %3168, 0x47DE623840000000
  %3170 = call float @dx.op.unary.f32(i32 7, float %3169)  ; Saturate(value)
  %3171 = fmul fast float %3167, %3170
  %3172 = bitcast float %2970 to i32
  %3173 = ashr i32 %3172, 1
  %3174 = sub nsw i32 1597463007, %3173
  %3175 = bitcast i32 %3174 to float
  %3176 = fmul fast float %3175, %2967
  %3177 = fmul fast float %3175, %2968
  %3178 = fmul fast float %3175, %2969
  %3179 = fsub fast float %3176, %432
  %3180 = fsub fast float %3177, %433
  %3181 = fsub fast float %3178, %434
  %3182 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3180, float %3181, float %3179, float %3180, float %3181)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = call float @dx.op.unary.f32(i32 25, float %3182)  ; Rsqrt(value)
  %3184 = fmul fast float %3179, %3183
  %3185 = fmul fast float %3180, %3183
  %3186 = fmul fast float %3181, %3183
  %3187 = call float @dx.op.dot3.f32(i32 55, float %228, float %229, float %230, float %3184, float %3185, float %3186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3188 = fmul fast float %3187, %3187
  %3189 = call float @dx.op.unary.f32(i32 6, float %3164)  ; FAbs(value)
  %3190 = fsub fast float 1.000000e+00, %240
  %3191 = call float @dx.op.binary.f32(i32 35, float %3190, float 0x3F847AE140000000)  ; FMax(a,b)
  %3192 = fmul fast float %3191, %3191
  %3193 = fmul fast float %3192, %3192
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %440, %440
  %3196 = fmul fast float %3195, %3194
  %3197 = fadd fast float %3196, %3193
  %3198 = bitcast float %3197 to i32
  %3199 = ashr i32 %3198, 1
  %3200 = add nsw i32 %3199, 532487669
  %3201 = bitcast i32 %3200 to float
  %3202 = fadd fast float %3201, %440
  %3203 = fmul fast float %3193, %3188
  %3204 = fsub fast float 1.000000e+00, %3188
  %3205 = fadd fast float %3204, %3203
  %3206 = fmul fast float %3189, %3189
  %3207 = fmul fast float %3206, %3194
  %3208 = fadd fast float %3207, %3193
  %3209 = bitcast float %3208 to i32
  %3210 = ashr i32 %3209, 1
  %3211 = add nsw i32 %3210, 532487669
  %3212 = bitcast i32 %3211 to float
  %3213 = fadd fast float %3212, %3189
  %3214 = fmul fast float %3205, %3205
  %3215 = fmul fast float %3214, %3202
  %3216 = fmul fast float %3215, %3213
  %3217 = fdiv fast float 1.000000e+00, %3216
  %3218 = bitcast float %3193 to i32
  %3219 = sitofp i32 %3218 to float
  %3220 = fmul fast float %3219, 0x3FE7F73180000000
  %3221 = fadd fast float %3220, 0x41AFE27C40000000
  %3222 = fptosi float %3221 to i32
  %3223 = bitcast i32 %3222 to float
  %3224 = fmul fast float %2936, 0x3FD80E9D60000000
  %3225 = fmul fast float %3224, %3175
  %3226 = fadd fast float %3223, %3225
  %3227 = bitcast float %3226 to i32
  %3228 = sub nsw i32 2129859010, %3227
  %3229 = bitcast i32 %3228 to float
  %3230 = fmul fast float %3193, %3217
  %3231 = fmul fast float %3230, %3223
  %3232 = fmul fast float %3231, %3229
  %3233 = call float @dx.op.unary.f32(i32 6, float %3165)  ; FAbs(value)
  %3234 = fsub fast float 1.000000e+00, %3233
  %3235 = bitcast float %3234 to i32
  %3236 = sitofp i32 %3235 to float
  %3237 = fmul fast float %3236, 5.000000e+00
  %3238 = fadd fast float %3237, 0xC1EFBF8940000000
  %3239 = fptosi float %3238 to i32
  %3240 = bitcast i32 %3239 to float
  %3241 = fsub fast float 1.000000e+00, %420
  %3242 = fsub fast float 1.000000e+00, %421
  %3243 = fsub fast float 1.000000e+00, %438
  %3244 = fmul fast float %3240, %3241
  %3245 = fmul fast float %3240, %3242
  %3246 = fmul fast float %3240, %3243
  %3247 = fadd fast float %3244, %420
  %3248 = fadd fast float %3245, %421
  %3249 = fadd fast float %3246, %438
  %3250 = fmul fast float %3164, 9.843750e-01
  %3251 = fadd fast float %3250, 7.812500e-03
  %3252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3251, float %1879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3253 = extractvalue %dx.types.ResRet.f32 %3252, 2
  %3254 = extractvalue %dx.types.ResRet.f32 %3252, 3
  %3255 = fmul fast float %3253, %420
  %3256 = fmul fast float %3253, %421
  %3257 = fmul fast float %3253, %438
  %3258 = fadd fast float %3255, %3254
  %3259 = fadd fast float %3256, %3254
  %3260 = fadd fast float %3257, %3254
  %3261 = call float @dx.op.binary.f32(i32 35, float %3259, float %3260)  ; FMax(a,b)
  %3262 = call float @dx.op.binary.f32(i32 35, float %3258, float %3261)  ; FMax(a,b)
  %3263 = fsub fast float 1.000000e+00, %3262
  %3264 = fmul fast float %3171, %3153
  %3265 = fmul fast float %3264, %3263
  %3266 = fmul fast float %3171, %3154
  %3267 = fmul fast float %3266, %3263
  %3268 = fmul fast float %3171, %3155
  %3269 = fmul fast float %3268, %3263
  %3270 = fadd fast float %3265, %2910
  %3271 = fadd fast float %3267, %2911
  %3272 = fadd fast float %3269, %2912
  %3273 = fmul fast float %3264, %3247
  %3274 = fmul fast float %3273, %3232
  %3275 = fmul fast float %3266, %3248
  %3276 = fmul fast float %3275, %3232
  %3277 = fmul fast float %3268, %3249
  %3278 = fmul fast float %3277, %3232
  %3279 = fadd fast float %3274, %2907
  %3280 = fadd fast float %3276, %2908
  %3281 = fadd fast float %3278, %2909
  br label %3039

; <label>:3282                                    ; preds = %3039
  br label %3283

; <label>:3283                                    ; preds = %3282, %2873
  %3284 = phi float [ %2875, %2873 ], [ %3040, %3282 ]
  %3285 = phi float [ %2876, %2873 ], [ %3041, %3282 ]
  %3286 = phi float [ %2877, %2873 ], [ %3042, %3282 ]
  %3287 = phi float [ %2878, %2873 ], [ %3043, %3282 ]
  %3288 = phi float [ %2879, %2873 ], [ %3044, %3282 ]
  %3289 = phi float [ %2880, %2873 ], [ %3045, %3282 ]
  %3290 = add i32 %2874, 1
  %3291 = icmp ugt i32 %3290, %2870
  br i1 %3291, label %3292, label %2873

; <label>:3292                                    ; preds = %3283
  br label %3293

; <label>:3293                                    ; preds = %3292, %2823, %2813
  %3294 = phi float [ %2814, %2813 ], [ %2814, %2823 ], [ %3284, %3292 ]
  %3295 = phi float [ %2815, %2813 ], [ %2815, %2823 ], [ %3285, %3292 ]
  %3296 = phi float [ %2816, %2813 ], [ %2816, %2823 ], [ %3286, %3292 ]
  %3297 = phi float [ %2817, %2813 ], [ %2817, %2823 ], [ %3287, %3292 ]
  %3298 = phi float [ %2818, %2813 ], [ %2818, %2823 ], [ %3288, %3292 ]
  %3299 = phi float [ %2819, %2813 ], [ %2819, %2823 ], [ %3289, %3292 ]
  %3300 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %3301 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %3302 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %3303 = fmul fast float %3300, %3297
  %3304 = fmul fast float %3301, %3298
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  br i1 %122, label %3307, label %3327

; <label>:3307                                    ; preds = %3293
  %3308 = fadd fast float %3299, %428
  %3309 = fmul fast float %3308, %426
  %3310 = fsub fast float 1.000000e+00, %426
  %3311 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 3
  %3314 = fmul fast float %3313, %3311
  %3315 = fadd fast float %3314, %3309
  %3316 = fsub fast float 1.000000e+00, %440
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  %3319 = fmul fast float %3318, %3316
  %3320 = fsub fast float %3315, %3319
  %3321 = fadd fast float %3304, %3303
  %3322 = extractvalue %dx.types.CBufRet.f32 %3312, 1
  %3323 = fsub fast float %3320, %3322
  %3324 = extractvalue %dx.types.CBufRet.f32 %3312, 2
  %3325 = fmul fast float %3323, %3324
  %3326 = call float @dx.op.unary.f32(i32 7, float %3325)  ; Saturate(value)
  br label %3331

; <label>:3327                                    ; preds = %3293
  %3328 = fmul fast float %3302, %3299
  %3329 = fmul fast float %3306, %3304
  %3330 = fmul fast float %3328, %3306
  br label %3331

; <label>:3331                                    ; preds = %3327, %3307
  %3332 = phi float [ %3321, %3307 ], [ %3303, %3327 ]
  %3333 = phi float [ %3326, %3307 ], [ %3329, %3327 ]
  %3334 = phi float [ 1.000000e+00, %3307 ], [ %3330, %3327 ]
  %3335 = fmul float %3306, %3332
  %3336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3337 = extractvalue %dx.types.CBufRet.f32 %3336, 0
  %3338 = fmul fast float %3337, %3295
  %3339 = fmul fast float %3337, %3296
  %3340 = fadd fast float %3295, %3294
  %3341 = select i1 %122, float %3340, float %3294
  %3342 = fmul float %3341, %3337
  %3343 = select i1 %122, float 0.000000e+00, float %3338
  %3344 = select i1 %122, float 0.000000e+00, float %3339
  %3345 = fmul fast float %3335, %3300
  %3346 = fmul fast float %3333, %3301
  %3347 = fmul fast float %3334, %3302
  %3348 = fadd fast float %3342, %3345
  %3349 = fadd fast float %3343, %3346
  %3350 = fadd fast float %3344, %3347
  %3351 = select i1 %122, float %3333, float %3349
  %3352 = select i1 %122, float %3334, float %3350
  %3353 = call float @dx.op.binary.f32(i32 36, float %3348, float 3.225500e+04)  ; FMin(a,b)
  %3354 = call float @dx.op.binary.f32(i32 36, float %3351, float 3.225500e+04)  ; FMin(a,b)
  %3355 = call float @dx.op.binary.f32(i32 36, float %3352, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3353)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3354)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3355)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

