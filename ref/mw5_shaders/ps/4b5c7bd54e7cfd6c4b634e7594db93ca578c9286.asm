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
; CARD_BARY_AND_TILE       1   xyzw        5     NONE   float   xy  
; CARD_TILE2_AND_TILE      3   xyzw        6     NONE   float       
; CARD_TEXCOORDS_AND_RAY     1   xyzw        7     NONE   float   xyzw
; CARD_TEXCOORDS_AND_RAY     2   xyzw        8     NONE   float   xyzw
; CARD_TEXCOORDS_AND_RAY     3   xyzw        9     NONE   float   xyzw
; CARD_DEPTH_AND_SCALE     0   xyzw       10     NONE   float   xyz 
; LGV_POSITION_INDEX       0   xyzw       11     NONE   float      w
; SECONDARY_TEXCOORDS      0   xy         12     NONE   float       
; SCEONDARY_NORMAL         0   xyzw       13     NONE   float       
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_IsFrontFace           0   x          15    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 99ae2294d753d527d557a01f263b3534
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
;                                   texture     f32          2d     T14     t69,space2     1
;                                   texture     f32          2d     T15     t37,space2     1
;                                   texture    byte         r/o     T16     t10,space1     1
;                                   texture    byte         r/o     T17      t1,space1     1
;                                   texture     f32          1d     T18     t32,space2     1
;                                   texture     f32     2darray     T19      t8,space2     1
;                                   texture     f32          2d     T20      t2,space2     1
;                                   texture     f32          2d     T21      t3,space2     1
;                                   texture     f32          2d     T22      t4,space2     1
;                                   textureunorm_f32     2darray     T23     t80,space2     1
;                                   texture    byte         r/o     T24     t67,space1     1
;                                   texture     f32          2d     T25      t7,space2     1
;                                   texture     f32          2d     T26      t6,space2     1
;                                   texture     f32          2d     T27      t5,space2     1
;                                   texture     f32          2d     T28     t38,space2     1
;                                   texture    byte         r/o     T29     t12,space1     1
;                                   texture    byte         r/o     T30     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 61, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 60 }
;   output 1 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 60 }
;   output 2 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 60 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = alloca [4 x i32], align 4
  %39 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = icmp ne i32 %39, 0
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = alloca [3 x float], align 4
  %69 = alloca [3 x float], align 4
  %70 = alloca [3 x float], align 4
  %71 = alloca [3 x float], align 4
  %72 = alloca [3 x float], align 4
  %73 = alloca [3 x float], align 4
  %74 = alloca [3 x float], align 4
  %75 = alloca [3 x float], align 4
  %76 = alloca [12 x float], align 4
  %77 = alloca [12 x float], align 4
  %78 = alloca [3 x float], align 4
  %79 = alloca [3 x float], align 4
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fmul fast float %81, %65
  %83 = fmul fast float %81, %66
  %84 = select i1 %40, float 1.000000e+00, float -1.000000e+00
  %85 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %86 = bitcast float %85 to i32
  %87 = ashr i32 %86, 1
  %88 = sub nsw i32 1597250115, %87
  %89 = bitcast i32 %88 to float
  %90 = fmul fast float %61, %84
  %91 = fmul fast float %90, %89
  %92 = fmul fast float %62, %84
  %93 = fmul fast float %92, %89
  %94 = fmul fast float %63, %84
  %95 = fmul fast float %94, %89
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.i32 %97, 3
  %99 = and i32 %98, 3
  %100 = icmp ne i32 %99, 0
  %101 = and i32 %98, 4
  %102 = icmp ne i32 %101, 0
  %103 = and i1 %100, %102
  br i1 %103, label %104, label %115

; <label>:104                                     ; preds = %0
  %105 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %106 = fmul fast float %105, %83
  %107 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %108 = fmul fast float %107, %82
  %109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %34, float %108, float %106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = fsub fast float 1.000000e+00, %110
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = fcmp fast olt float %111, %113
  br label %118

; <label>:115                                     ; preds = %0
  %116 = icmp eq i32 %101, 0
  %117 = and i1 %100, %116
  br label %118

; <label>:118                                     ; preds = %115, %104
  %119 = phi i1 [ %114, %104 ], [ %117, %115 ]
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = fmul fast float %121, 0x3FE3C6EF40000000
  %123 = frem fast float %82, 2.560000e+02
  %124 = frem fast float %83, 2.560000e+02
  %125 = fptoui float %123 to i32
  %126 = fptoui float %124 to i32
  %127 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %125, i32 %126, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = fadd fast float %128, %122
  %130 = add i32 %41, 60
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = add i32 %132, 0
  %134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %135 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %134, i32 0)  ; GetDimensions(handle,mipLevel)
  %136 = extractvalue %dx.types.Dimensions %135, 0
  %137 = sitofp i32 %136 to float
  %138 = extractvalue %dx.types.Dimensions %135, 1
  %139 = sitofp i32 %138 to float
  %140 = add i32 %41, 24
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 2
  %143 = bitcast i32 %142 to float
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 0
  store float %58, float* %148, align 4, !noalias !84
  %149 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 1
  store float %59, float* %149, align 4, !noalias !84
  %150 = fsub fast float 1.000000e+00, %58
  %151 = fsub fast float %150, %59
  %152 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 2
  store float %151, float* %152, align 4, !noalias !84
  %153 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float %43, float* %153, align 4, !tbaa !95, !noalias !84
  %154 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float %44, float* %154, align 4, !tbaa !95, !noalias !84
  %155 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float %45, float* %155, align 4, !tbaa !95, !noalias !84
  %156 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 0
  %157 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 0
  store float %56, float* %156, align 4
  store float %57, float* %157, align 4
  %158 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 1
  %159 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 1
  store float %52, float* %158, align 4
  store float %53, float* %159, align 4
  %160 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 2
  %161 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 2
  store float %48, float* %160, align 4
  store float %49, float* %161, align 4
  %162 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 0
  %163 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 0
  store float %54, float* %162, align 4
  store float %55, float* %163, align 4
  %164 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 1
  %165 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 1
  store float %50, float* %164, align 4
  store float %51, float* %165, align 4
  %166 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 2
  %167 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 2
  store float %46, float* %166, align 4
  store float %47, float* %167, align 4
  br label %168

; <label>:168                                     ; preds = %264, %118
  %169 = phi float [ %266, %264 ], [ %58, %118 ]
  %170 = phi float [ %255, %264 ], [ undef, %118 ]
  %171 = phi float [ %256, %264 ], [ undef, %118 ]
  %172 = phi float [ %257, %264 ], [ undef, %118 ]
  %173 = phi float [ %258, %264 ], [ 1.000000e+00, %118 ]
  %174 = phi float [ %259, %264 ], [ 0.000000e+00, %118 ]
  %175 = phi i32 [ %262, %264 ], [ 0, %118 ]
  %176 = phi float [ %260, %264 ], [ 0.000000e+00, %118 ]
  %177 = phi float [ %261, %264 ], [ 0.000000e+00, %118 ]
  %178 = fcmp fast ogt float %169, 0x3EB0C6F7A0000000
  br i1 %178, label %179, label %254

; <label>:179                                     ; preds = %168
  %180 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %175
  %181 = load float, float* %180, align 4, !tbaa !95, !noalias !84
  %182 = fdiv fast float 1.000000e+00, %181
  %183 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 %175
  %184 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 %175
  %185 = load float, float* %183, align 4
  %186 = load float, float* %184, align 4
  %187 = fmul fast float %185, %182
  %188 = fmul fast float %186, %182
  %189 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 %175
  %190 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 %175
  %191 = load float, float* %189, align 4
  %192 = load float, float* %190, align 4
  %193 = fmul fast float %191, %182
  %194 = fmul fast float %192, %182
  %195 = fmul fast float %187, %137
  %196 = call float @dx.op.unary.f32(i32 83, float %195)  ; DerivCoarseX(value)
  %197 = call float @dx.op.unary.f32(i32 84, float %195)  ; DerivCoarseY(value)
  %198 = fmul fast float %188, %139
  %199 = call float @dx.op.unary.f32(i32 83, float %198)  ; DerivCoarseX(value)
  %200 = call float @dx.op.unary.f32(i32 84, float %198)  ; DerivCoarseY(value)
  %201 = fmul fast float %199, %199
  %202 = fmul fast float %200, %200
  %203 = fadd fast float %202, %201
  %204 = fmul fast float %199, %196
  %205 = fmul fast float %200, %197
  %206 = fadd fast float %205, %204
  %207 = fmul fast float %196, %196
  %208 = fmul fast float %197, %197
  %209 = fadd fast float %208, %207
  %210 = fmul fast float %203, %209
  %211 = fmul fast float %206, %206
  %212 = fsub fast float %210, %211
  %213 = bitcast float %212 to i32
  %214 = fadd fast float %203, %209
  %215 = bitcast float %214 to i32
  %216 = sub i32 8388608, %215
  %217 = add i32 %216, %213
  %218 = ashr i32 %217, 24
  %219 = sitofp i32 %218 to float
  %220 = add i32 %41, 72
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = add i32 %222, 0
  %224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %224, %dx.types.Handle %34, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float %219)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, 2.000000e+00
  %228 = fadd fast float %227, -1.000000e+00
  %229 = fmul fast float %228, %143
  %230 = fmul fast float %193, %229
  %231 = fmul fast float %194, %229
  %232 = fadd fast float %230, %187
  %233 = fadd fast float %231, %188
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = add i32 %235, 0
  %237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %237, %dx.types.Handle %34, float %232, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float %219)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = extractvalue %dx.types.ResRet.f32 %238, 3
  %243 = fmul fast float %239, 2.000000e+00
  %244 = fmul fast float %240, 2.000000e+00
  %245 = fmul fast float %241, 2.000000e+00
  %246 = fadd fast float %243, -1.000000e+00
  %247 = fadd fast float %244, -1.000000e+00
  %248 = fadd fast float %245, -1.000000e+00
  %249 = fmul fast float %169, %242
  %250 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %246, float %247, float %248)  ; Dot3(ax,ay,az,bx,by,bz)
  %251 = fmul fast float %249, %250
  %252 = fcmp fast olt float %251, %173
  br i1 %252, label %253, label %254

; <label>:253                                     ; preds = %179
  br label %254

; <label>:254                                     ; preds = %253, %179, %168
  %255 = phi float [ %170, %168 ], [ %246, %253 ], [ %170, %179 ]
  %256 = phi float [ %171, %168 ], [ %247, %253 ], [ %171, %179 ]
  %257 = phi float [ %172, %168 ], [ %248, %253 ], [ %172, %179 ]
  %258 = phi float [ %173, %168 ], [ %251, %253 ], [ %173, %179 ]
  %259 = phi float [ %174, %168 ], [ %219, %253 ], [ %219, %179 ]
  %260 = phi float [ %176, %168 ], [ %232, %253 ], [ %176, %179 ]
  %261 = phi float [ %177, %168 ], [ %233, %253 ], [ %177, %179 ]
  %262 = add nuw nsw i32 %175, 1
  %263 = icmp eq i32 %262, 3
  br i1 %263, label %267, label %264

; <label>:264                                     ; preds = %254
  %265 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 %262
  %266 = load float, float* %265, align 4, !tbaa !95, !noalias !84
  br label %168

; <label>:267                                     ; preds = %254
  %268 = call float @dx.op.unary.f32(i32 22, float %129)  ; Frc(value)
  br i1 %40, label %278, label %269

; <label>:269                                     ; preds = %267
  %270 = call float @dx.op.dot3.f32(i32 55, float %91, float %93, float %95, float %255, float %256, float %257)  ; Dot3(ax,ay,az,bx,by,bz)
  %271 = fmul fast float %270, 2.000000e+00
  %272 = fmul fast float %271, %91
  %273 = fmul fast float %271, %93
  %274 = fmul fast float %271, %95
  %275 = fsub fast float %255, %272
  %276 = fsub fast float %256, %273
  %277 = fsub fast float %257, %274
  br label %278

; <label>:278                                     ; preds = %269, %267
  %279 = phi float [ %275, %269 ], [ %255, %267 ]
  %280 = phi float [ %276, %269 ], [ %256, %267 ]
  %281 = phi float [ %277, %269 ], [ %257, %267 ]
  %282 = add i32 %41, 56
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = add i32 %284, 0
  %286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %286, %dx.types.Handle %34, float %260, float %261, float undef, float undef, i32 0, i32 0, i32 undef, float %259)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = extractvalue %dx.types.ResRet.f32 %287, 3
  %292 = add i32 %41, 64
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = add i32 %294, 0
  %296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %296, %dx.types.Handle %34, float %260, float %261, float undef, float undef, i32 0, i32 0, i32 undef, float %259)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = extractvalue %dx.types.ResRet.f32 %297, 2
  %301 = extractvalue %dx.types.ResRet.f32 %297, 3
  %302 = add i32 %41, 68
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = add i32 %304, 0
  %306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %306, %dx.types.Handle %34, float %260, float %261, float undef, float undef, i32 0, i32 0, i32 undef, float %259)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = add i32 %41, 72
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = add i32 %311, 0
  %313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %312, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %313, %dx.types.Handle %34, float %260, float %261, float undef, float undef, i32 0, i32 0, i32 undef, float %259)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = fadd fast float %60, 1.000000e+00
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 2
  %319 = bitcast i32 %318 to float
  %320 = fmul fast float %315, 2.000000e+00
  %321 = fsub fast float %316, %320
  %322 = fmul fast float %319, %321
  %323 = fadd fast float %322, %67
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 3
  %327 = fmul fast float %82, 2.000000e+00
  %328 = fmul fast float %327, %325
  %329 = fmul fast float %83, 2.000000e+00
  %330 = fmul fast float %329, %326
  %331 = fsub fast float 1.000000e+00, %328
  %332 = fsub fast float 1.000000e+00, %330
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = fmul fast float %331, %334
  %338 = fmul fast float %331, %335
  %339 = fmul fast float %331, %336
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fmul fast float %332, %341
  %345 = fmul fast float %332, %342
  %346 = fmul fast float %332, %343
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = fadd fast float %344, %348
  %352 = fadd fast float %351, %337
  %353 = fadd fast float %345, %349
  %354 = fadd fast float %353, %338
  %355 = fadd fast float %346, %350
  %356 = fadd fast float %355, %339
  %357 = fmul fast float %352, %323
  %358 = fmul fast float %354, %323
  %359 = fmul fast float %356, %323
  %360 = call float @dx.op.unary.f32(i32 26, float %42)  ; Round_ne(value)
  %361 = fptoui float %360 to i32
  %362 = call float @dx.op.unary.f32(i32 26, float %64)  ; Round_ne(value)
  %363 = fptoui float %362 to i32
  %364 = shl i32 %363, 3
  %365 = or i32 %364, 4
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 16777215
  %369 = add i32 %368, %361
  %370 = shl i32 %369, 6
  %371 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 0
  %372 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 0
  %373 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 0
  %374 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 0
  %375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = extractvalue %dx.types.ResRet.f32 %375, 1
  %378 = extractvalue %dx.types.ResRet.f32 %375, 2
  %379 = extractvalue %dx.types.ResRet.f32 %375, 3
  store float %376, float* %371, align 4
  store float %377, float* %372, align 4
  store float %378, float* %373, align 4
  store float %379, float* %374, align 4
  %380 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 1
  %381 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 1
  %382 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 1
  %383 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 1
  %384 = or i32 %370, 16
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  store float %386, float* %380, align 4
  store float %387, float* %381, align 4
  store float %388, float* %382, align 4
  store float %389, float* %383, align 4
  %390 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 2
  %391 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 2
  %392 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 2
  %393 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 2
  %394 = or i32 %370, 32
  %395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = extractvalue %dx.types.ResRet.f32 %395, 3
  store float %396, float* %390, align 4
  store float %397, float* %391, align 4
  store float %398, float* %392, align 4
  store float %399, float* %393, align 4
  %400 = or i32 %370, 48
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.i32 %403, 1
  %405 = icmp eq i32 %404, 0
  %406 = and i32 %402, 4
  %407 = icmp ne i32 %406, 0
  %408 = and i1 %405, %407
  br i1 %408, label %409, label %448

; <label>:409                                     ; preds = %278
  %410 = and i32 %402, 3
  %411 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 %410
  %412 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 %410
  %413 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 %410
  %414 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 %410
  %415 = load float, float* %411, align 4
  %416 = load float, float* %412, align 4
  %417 = load float, float* %413, align 4
  %418 = load float, float* %414, align 4
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %422 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %423 = call float @dx.op.dot3.f32(i32 55, float %415, float %416, float %417, float %420, float %421, float %422)  ; Dot3(ax,ay,az,bx,by,bz)
  %424 = fadd fast float %423, %418
  %425 = fcmp fast ogt float %424, 1.000000e+00
  br i1 %425, label %426, label %431

; <label>:426                                     ; preds = %409
  %427 = fadd fast float %424, -1.000000e+00
  %428 = fmul fast float %427, 4.000000e+00
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = fmul fast float %429, 4.000000e+00
  br label %437

; <label>:431                                     ; preds = %409
  %432 = fcmp fast olt float %424, 0.000000e+00
  br i1 %432, label %433, label %437

; <label>:433                                     ; preds = %431
  %434 = fmul fast float %424, -4.000000e+00
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fmul fast float %435, -4.000000e+00
  br label %437

; <label>:437                                     ; preds = %433, %431, %426
  %438 = phi float [ %430, %426 ], [ %436, %433 ], [ 0.000000e+00, %431 ]
  %439 = icmp eq i32 %410, 0
  %440 = select i1 %439, float %438, float 0.000000e+00
  %441 = fadd fast float %379, %440
  store float %441, float* %374, align 4, !noalias !99
  %442 = icmp eq i32 %410, 1
  %443 = select i1 %442, float %438, float 0.000000e+00
  %444 = fadd fast float %389, %443
  store float %444, float* %383, align 4, !noalias !99
  %445 = icmp eq i32 %410, 2
  %446 = select i1 %445, float %438, float 0.000000e+00
  %447 = fadd fast float %399, %446
  store float %447, float* %393, align 4, !noalias !99
  br label %448

; <label>:448                                     ; preds = %437, %278
  %449 = phi float [ %399, %278 ], [ %447, %437 ]
  %450 = phi float [ %389, %278 ], [ %444, %437 ]
  %451 = phi float [ %379, %278 ], [ %441, %437 ]
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %456 = fadd fast float %453, %357
  %457 = fadd fast float %454, %358
  %458 = fadd fast float %455, %359
  %459 = call float @dx.op.dot4.f32(i32 56, float %376, float %377, float %378, float %451, float %456, float %457, float %458, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %460 = call float @dx.op.dot4.f32(i32 56, float %386, float %387, float %388, float %450, float %456, float %457, float %458, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %461 = call float @dx.op.dot4.f32(i32 56, float %396, float %397, float %398, float %449, float %456, float %457, float %458, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %462 = fadd fast float %308, 0xBFB99999A0000000
  %463 = call float @dx.op.unary.f32(i32 7, float %462)  ; Saturate(value)
  %464 = fmul fast float %463, 0x3FF1C71C80000000
  %465 = call float @dx.op.binary.f32(i32 36, float %308, float 0x3FB99999A0000000)  ; FMin(a,b)
  %466 = fsub fast float 1.000000e+00, %464
  %467 = call float @dx.op.unary.f32(i32 7, float %466)  ; Saturate(value)
  %468 = fmul fast float %467, %288
  %469 = fmul fast float %467, %289
  %470 = fmul fast float %467, %290
  %471 = call float @dx.op.unary.f32(i32 7, float %468)  ; Saturate(value)
  %472 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  %473 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %474 = fmul fast float %464, %288
  %475 = fmul fast float %464, %289
  %476 = fmul fast float %464, %290
  %477 = fadd fast float %474, %465
  %478 = fadd fast float %475, %465
  %479 = fadd fast float %476, %465
  %480 = call float @dx.op.unary.f32(i32 7, float %477)  ; Saturate(value)
  %481 = call float @dx.op.unary.f32(i32 7, float %478)  ; Saturate(value)
  %482 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %483 = call float @dx.op.dot3.f32(i32 55, float %471, float %472, float %473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %484 = fmul fast float %483, 1.875000e-01
  %485 = fadd fast float %484, 0x3FE647AE20000000
  %486 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = fsub fast float -0.000000e+00, %359
  %490 = call float @dx.op.dot3.f32(i32 55, float %357, float %358, float %359, float %357, float %358, float %359)  ; Dot3(ax,ay,az,bx,by,bz)
  %491 = call float @dx.op.unary.f32(i32 25, float %490)  ; Rsqrt(value)
  %492 = fmul fast float %491, %357
  %493 = fmul fast float %491, %358
  %494 = fmul fast float %491, %359
  %495 = fsub fast float -0.000000e+00, %492
  %496 = fsub fast float -0.000000e+00, %493
  %497 = fsub fast float -0.000000e+00, %494
  %498 = select i1 %119, float 0.000000e+00, float %482
  %499 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %500 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  %501 = call float @dx.op.dot3.f32(i32 55, float %492, float %493, float %494, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %502 = fmul fast float %501, 2.000000e+00
  %503 = fmul fast float %502, %279
  %504 = fmul fast float %502, %280
  %505 = fmul fast float %502, %281
  %506 = fsub fast float %492, %503
  %507 = fsub fast float %493, %504
  %508 = fsub fast float %494, %505
  %509 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %301)  ; FMin(a,b)
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %513 = fadd fast float %511, %357
  %514 = fadd fast float %512, %358
  %515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.i32 %515, 0
  %517 = icmp eq i32 %516, 1
  br i1 %517, label %518, label %553

; <label>:518                                     ; preds = %448
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 0
  %521 = extractvalue %dx.types.CBufRet.f32 %519, 1
  %522 = fsub fast float %513, %520
  %523 = fsub fast float %514, %521
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %527 = fmul fast float %522, %525
  %528 = fmul fast float %523, %526
  %529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %34, float %527, float %528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = fcmp fast ogt float %530, 0.000000e+00
  %532 = extractvalue %dx.types.CBufRet.i32 %515, 3
  %533 = icmp ne i32 %532, 0
  %534 = and i1 %531, %533
  br i1 %534, label %535, label %553, !dx.controlflow.hints !104

; <label>:535                                     ; preds = %518
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %539 = fsub fast float %513, %537
  %540 = fsub fast float %514, %538
  %541 = fmul fast float %539, %539
  %542 = fmul fast float %540, %540
  %543 = fadd fast float %541, %542
  %544 = uitofp i32 %532 to float
  %545 = fmul fast float %544, %544
  %546 = fcmp fast ogt float %543, %545
  br i1 %546, label %553, label %547

; <label>:547                                     ; preds = %535
  %548 = call float @dx.op.unary.f32(i32 24, float %543)  ; Sqrt(value)
  %549 = fsub fast float %544, %548
  %550 = fmul fast float %549, 0x3F75555560000000
  %551 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %552 = call float @dx.op.binary.f32(i32 36, float %551, float %530)  ; FMin(a,b)
  br label %553

; <label>:553                                     ; preds = %547, %535, %518, %448
  %554 = phi float [ 1.000000e+00, %448 ], [ %552, %547 ], [ %530, %518 ], [ 0.000000e+00, %535 ]
  %555 = fcmp fast ogt float %554, 0.000000e+00
  br i1 %555, label %556, label %931, !dx.controlflow.hints !105

; <label>:556                                     ; preds = %553
  %557 = fadd fast float %42, 5.000000e-01
  %558 = fptoui float %557 to i32
  %559 = fadd fast float %64, 5.000000e-01
  %560 = fptoui float %559 to i32
  %561 = shl i32 %560, 3
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = or i32 %561, 4
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 16777215
  %568 = add i32 %567, %558
  %569 = shl i32 %568, 5
  %570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  %574 = or i32 %569, 16
  %575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = extractvalue %dx.types.ResRet.f32 %575, 2
  %579 = lshr i32 %566, 24
  %580 = and i32 %579, 3
  %581 = add nuw nsw i32 %580, 3
  %582 = shl i32 1, %581
  %583 = lshr i32 %566, 29
  %584 = lshr i32 %566, 23
  %585 = and i32 %584, 56
  %586 = shl nuw nsw i32 %583, 3
  %587 = lshr i32 %563, 16
  %588 = and i32 %563, 65535
  %589 = uitofp i32 %582 to float
  %590 = fmul fast float %589, 1.562500e-02
  %591 = uitofp i32 %587 to float
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %594 = fmul fast float %593, %591
  %595 = uitofp i32 %585 to float
  %596 = fmul fast float %595, 1.562500e-02
  %597 = uitofp i32 %586 to float
  %598 = fmul fast float %597, 1.562500e-02
  %599 = uitofp i32 %588 to float
  %600 = fmul fast float %593, %599
  %601 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %602 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %603 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %604 = fmul fast float %601, %571
  %605 = fmul fast float %602, %572
  %606 = fmul fast float %603, %573
  %607 = fadd fast float %604, %576
  %608 = fmul fast float %590, %607
  %609 = fadd fast float %608, %596
  %610 = fadd fast float %605, %577
  %611 = fmul fast float %590, %610
  %612 = fadd fast float %611, %598
  %613 = fadd fast float %606, %578
  %614 = fmul fast float %594, %613
  %615 = fadd fast float %614, %600
  %616 = fmul fast float %609, 5.000000e-01
  %617 = fmul fast float %612, 0x3FD5555560000000
  %618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %32, float %609, float %612, float %615, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %624 = fmul fast float %623, %619
  %625 = fmul fast float %623, %620
  %626 = fmul fast float %623, %621
  %627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %616, float %617, float %615, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = extractvalue %dx.types.ResRet.f32 %627, 1
  %630 = extractvalue %dx.types.ResRet.f32 %627, 2
  %631 = extractvalue %dx.types.ResRet.f32 %627, 3
  %632 = fadd fast float %616, 5.000000e-01
  %633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %632, float %617, float %615, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = extractvalue %dx.types.ResRet.f32 %633, 3
  %638 = fadd fast float %617, 0x3FD5555560000000
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %616, float %638, float %615, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = extractvalue %dx.types.ResRet.f32 %639, 3
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %632, float %638, float %615, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = extractvalue %dx.types.ResRet.f32 %644, 3
  %649 = fadd fast float %617, 0x3FE5555560000000
  %650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %616, float %649, float %615, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = extractvalue %dx.types.ResRet.f32 %650, 3
  %655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %632, float %649, float %615, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = extractvalue %dx.types.ResRet.f32 %655, 1
  %658 = extractvalue %dx.types.ResRet.f32 %655, 2
  %659 = extractvalue %dx.types.ResRet.f32 %655, 3
  %660 = fmul fast float %628, 0x400BB67AE0000000
  %661 = fadd fast float %660, 0xBFFBB67AE0000000
  %662 = fmul fast float %661, %624
  %663 = fmul fast float %629, 0x400BB67AE0000000
  %664 = fadd fast float %663, 0xBFFBB67AE0000000
  %665 = fmul fast float %664, %625
  %666 = fmul fast float %630, 0x400BB67AE0000000
  %667 = fadd fast float %666, 0xBFFBB67AE0000000
  %668 = fmul fast float %667, %626
  %669 = fmul fast float %631, 0x4011E377A0000000
  %670 = fadd fast float %669, 0xC001E377A0000000
  %671 = fmul fast float %670, %624
  %672 = fmul fast float %634, 0x4011E377A0000000
  %673 = fadd fast float %672, 0xC001E377A0000000
  %674 = fmul fast float %673, %625
  %675 = fmul fast float %635, 0x4011E377A0000000
  %676 = fadd fast float %675, 0xC001E377A0000000
  %677 = fmul fast float %676, %626
  %678 = fmul fast float %636, 0x400BB67AE0000000
  %679 = fadd fast float %678, 0xBFFBB67AE0000000
  %680 = fmul fast float %679, %624
  %681 = fmul fast float %637, 0x400BB67AE0000000
  %682 = fadd fast float %681, 0xBFFBB67AE0000000
  %683 = fmul fast float %682, %625
  %684 = fmul fast float %640, 0x400BB67AE0000000
  %685 = fadd fast float %684, 0xBFFBB67AE0000000
  %686 = fmul fast float %685, %626
  %687 = fmul fast float %641, 0x400BB67AE0000000
  %688 = fadd fast float %687, 0xBFFBB67AE0000000
  %689 = fmul fast float %688, %624
  %690 = fmul fast float %642, 0x400BB67AE0000000
  %691 = fadd fast float %690, 0xBFFBB67AE0000000
  %692 = fmul fast float %691, %625
  %693 = fmul fast float %643, 0x400BB67AE0000000
  %694 = fadd fast float %693, 0xBFFBB67AE0000000
  %695 = fmul fast float %694, %626
  %696 = fmul fast float %645, 0x400EFBDEC0000000
  %697 = fadd fast float %696, 0xBFFEFBDEC0000000
  %698 = fmul fast float %697, %624
  %699 = fmul fast float %646, 0x400EFBDEC0000000
  %700 = fadd fast float %699, 0xBFFEFBDEC0000000
  %701 = fmul fast float %700, %625
  %702 = fmul fast float %647, 0x400EFBDEC0000000
  %703 = fadd fast float %702, 0xBFFEFBDEC0000000
  %704 = fmul fast float %703, %626
  %705 = fmul fast float %648, 0x400EFBDEC0000000
  %706 = fadd fast float %705, 0xBFFEFBDEC0000000
  %707 = fmul fast float %706, %624
  %708 = fmul fast float %651, 0x400EFBDEC0000000
  %709 = fadd fast float %708, 0xBFFEFBDEC0000000
  %710 = fmul fast float %709, %625
  %711 = fmul fast float %652, 0x400EFBDEC0000000
  %712 = fadd fast float %711, 0xBFFEFBDEC0000000
  %713 = fmul fast float %712, %626
  %714 = fmul fast float %653, 0x400EFBDEC0000000
  %715 = fadd fast float %714, 0xBFFEFBDEC0000000
  %716 = fmul fast float %715, %624
  %717 = fmul fast float %654, 0x400EFBDEC0000000
  %718 = fadd fast float %717, 0xBFFEFBDEC0000000
  %719 = fmul fast float %718, %625
  %720 = fmul fast float %656, 0x400EFBDEC0000000
  %721 = fadd fast float %720, 0xBFFEFBDEC0000000
  %722 = fmul fast float %721, %626
  %723 = fmul fast float %657, 0x400EFBDEC0000000
  %724 = fadd fast float %723, 0xBFFEFBDEC0000000
  %725 = fmul fast float %724, %624
  %726 = fmul fast float %658, 0x400EFBDEC0000000
  %727 = fadd fast float %726, 0xBFFEFBDEC0000000
  %728 = fmul fast float %727, %625
  %729 = fmul fast float %659, 0x400EFBDEC0000000
  %730 = fadd fast float %729, 0xBFFEFBDEC0000000
  %731 = fmul fast float %730, %626
  %732 = fmul fast float %624, 0x3FD20DD760000000
  %733 = fmul fast float %281, 0x3FD4D8D7C0000000
  %734 = fmul fast float %733, %662
  %735 = fmul fast float %281, %281
  %736 = fmul fast float %735, 0x3FEE471020000000
  %737 = fadd fast float %736, 0xBFD42F6020000000
  %738 = fmul fast float %671, %737
  %739 = fmul fast float %279, 0x3FD4D8D7C0000000
  %740 = fmul fast float %739, %689
  %741 = fmul fast float %280, 0x3FD4D8D7C0000000
  %742 = fmul fast float %741, %680
  %743 = fmul fast float %281, 0xBFF17B1420000000
  %744 = fmul fast float %698, %279
  %745 = fmul fast float %707, %280
  %746 = fmul fast float %279, %279
  %747 = fmul fast float %280, %280
  %748 = fsub fast float %746, %747
  %749 = fmul fast float %748, 0x3FC17B1420000000
  %750 = fmul fast float %749, %716
  %751 = fmul fast float %279, 0x3FD17B1420000000
  %752 = fmul fast float %751, %280
  %753 = fmul fast float %752, %725
  %754 = fadd fast float %745, %744
  %755 = fmul fast float %743, %754
  %756 = fadd fast float %755, %738
  %757 = fmul fast float %756, 2.500000e-01
  %758 = fadd fast float %734, %732
  %759 = fsub fast float %758, %742
  %760 = fsub fast float %759, %740
  %761 = fadd fast float %760, %757
  %762 = fadd fast float %761, %750
  %763 = fadd fast float %762, %753
  %764 = fmul fast float %625, 0x3FD20DD760000000
  %765 = fmul fast float %733, %665
  %766 = fmul fast float %674, %737
  %767 = fmul fast float %739, %692
  %768 = fmul fast float %741, %683
  %769 = fmul fast float %701, %279
  %770 = fmul fast float %710, %280
  %771 = fmul fast float %749, %719
  %772 = fmul fast float %752, %728
  %773 = fadd fast float %770, %769
  %774 = fmul fast float %743, %773
  %775 = fadd fast float %774, %766
  %776 = fmul fast float %775, 2.500000e-01
  %777 = fadd fast float %765, %764
  %778 = fsub fast float %777, %768
  %779 = fsub fast float %778, %767
  %780 = fadd fast float %779, %771
  %781 = fadd fast float %780, %776
  %782 = fadd fast float %781, %772
  %783 = fmul fast float %626, 0x3FD20DD760000000
  %784 = fmul fast float %733, %668
  %785 = fmul fast float %677, %737
  %786 = fmul fast float %739, %695
  %787 = fmul fast float %741, %686
  %788 = fmul fast float %704, %279
  %789 = fmul fast float %713, %280
  %790 = fmul fast float %749, %722
  %791 = fmul fast float %752, %731
  %792 = fadd fast float %789, %788
  %793 = fmul fast float %743, %792
  %794 = fadd fast float %793, %785
  %795 = fmul fast float %794, 2.500000e-01
  %796 = fadd fast float %784, %783
  %797 = fsub fast float %796, %786
  %798 = fsub fast float %797, %787
  %799 = fadd fast float %798, %795
  %800 = fadd fast float %799, %790
  %801 = fadd fast float %800, %791
  %802 = call float @dx.op.binary.f32(i32 35, float %763, float 0.000000e+00)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 35, float %782, float 0.000000e+00)  ; FMax(a,b)
  %804 = call float @dx.op.binary.f32(i32 35, float %801, float 0.000000e+00)  ; FMax(a,b)
  %805 = fsub fast float -0.000000e+00, %279
  %806 = fsub fast float -0.000000e+00, %280
  %807 = fmul fast float %281, 0xBFD4D8D7C0000000
  %808 = fmul fast float %807, %662
  %809 = fmul fast float %689, 0x3FD4D8D7C0000000
  %810 = fmul fast float %281, 0x3FF17B1420000000
  %811 = fmul fast float %698, %805
  %812 = fmul fast float %707, %806
  %813 = fmul fast float %280, 0x3FD17B1420000000
  %814 = fmul fast float %813, %725
  %815 = fadd fast float %812, %811
  %816 = fmul fast float %810, %815
  %817 = fadd fast float %816, %738
  %818 = fmul fast float %817, 2.500000e-01
  %819 = fadd fast float %814, %809
  %820 = fmul fast float %819, %279
  %821 = fadd fast float %808, %732
  %822 = fadd fast float %821, %742
  %823 = fadd fast float %822, %750
  %824 = fadd fast float %823, %818
  %825 = fadd fast float %824, %820
  %826 = fmul fast float %807, %665
  %827 = fmul fast float %692, 0x3FD4D8D7C0000000
  %828 = fmul fast float %701, %805
  %829 = fmul fast float %710, %806
  %830 = fmul fast float %813, %728
  %831 = fadd fast float %829, %828
  %832 = fmul fast float %810, %831
  %833 = fadd fast float %832, %766
  %834 = fmul fast float %833, 2.500000e-01
  %835 = fadd fast float %830, %827
  %836 = fmul fast float %835, %279
  %837 = fadd fast float %826, %764
  %838 = fadd fast float %837, %768
  %839 = fadd fast float %838, %771
  %840 = fadd fast float %839, %834
  %841 = fadd fast float %840, %836
  %842 = fmul fast float %807, %668
  %843 = fmul fast float %686, 0x3FD4D8D7C0000000
  %844 = fmul fast float %704, %805
  %845 = fmul fast float %713, %806
  %846 = fmul fast float %751, %731
  %847 = fadd fast float %845, %844
  %848 = fmul fast float %810, %847
  %849 = fadd fast float %848, %785
  %850 = fmul fast float %849, 2.500000e-01
  %851 = fadd fast float %846, %843
  %852 = fmul fast float %851, %280
  %853 = fadd fast float %842, %783
  %854 = fadd fast float %853, %786
  %855 = fadd fast float %854, %790
  %856 = fadd fast float %855, %850
  %857 = fadd fast float %856, %852
  %858 = call float @dx.op.binary.f32(i32 35, float %825, float 0.000000e+00)  ; FMax(a,b)
  %859 = call float @dx.op.binary.f32(i32 35, float %841, float 0.000000e+00)  ; FMax(a,b)
  %860 = call float @dx.op.binary.f32(i32 35, float %857, float 0.000000e+00)  ; FMax(a,b)
  %861 = fmul fast float %508, 0x3FD4D8D7C0000000
  %862 = fmul fast float %861, %662
  %863 = fmul fast float %508, %508
  %864 = fmul fast float %863, 0x3FEE471020000000
  %865 = fadd fast float %864, 0xBFD42F6020000000
  %866 = fmul fast float %671, %865
  %867 = fmul fast float %506, 0x3FD4D8D7C0000000
  %868 = fmul fast float %867, %689
  %869 = fmul fast float %507, 0x3FD4D8D7C0000000
  %870 = fmul fast float %869, %680
  %871 = fmul fast float %508, 0xBFF17B1420000000
  %872 = fmul fast float %698, %506
  %873 = fmul fast float %707, %507
  %874 = fmul fast float %506, %506
  %875 = fmul fast float %507, %507
  %876 = fsub fast float %874, %875
  %877 = fmul fast float %876, 0x3FC17B1420000000
  %878 = fmul fast float %877, %716
  %879 = fmul fast float %507, 0x3FD17B1420000000
  %880 = fmul fast float %879, %506
  %881 = fmul fast float %880, %725
  %882 = fadd fast float %873, %872
  %883 = fmul fast float %871, %882
  %884 = fadd fast float %883, %866
  %885 = fmul fast float %884, 2.500000e-01
  %886 = fadd fast float %862, %732
  %887 = fsub fast float %886, %870
  %888 = fsub fast float %887, %868
  %889 = fadd fast float %888, %885
  %890 = fadd fast float %889, %878
  %891 = fadd fast float %890, %881
  %892 = fmul fast float %861, %665
  %893 = fmul fast float %674, %865
  %894 = fmul fast float %867, %692
  %895 = fmul fast float %869, %683
  %896 = fmul fast float %701, %506
  %897 = fmul fast float %710, %507
  %898 = fmul fast float %877, %719
  %899 = fmul fast float %880, %728
  %900 = fadd fast float %897, %896
  %901 = fmul fast float %871, %900
  %902 = fadd fast float %901, %893
  %903 = fmul fast float %902, 2.500000e-01
  %904 = fadd fast float %892, %764
  %905 = fsub fast float %904, %895
  %906 = fsub fast float %905, %894
  %907 = fadd fast float %906, %898
  %908 = fadd fast float %907, %903
  %909 = fadd fast float %908, %899
  %910 = fmul fast float %861, %668
  %911 = fmul fast float %677, %865
  %912 = fmul fast float %867, %695
  %913 = fmul fast float %869, %686
  %914 = fmul fast float %704, %506
  %915 = fmul fast float %713, %507
  %916 = fmul fast float %877, %722
  %917 = fmul fast float %880, %731
  %918 = fadd fast float %915, %914
  %919 = fmul fast float %871, %918
  %920 = fadd fast float %919, %911
  %921 = fmul fast float %920, 2.500000e-01
  %922 = fadd fast float %910, %783
  %923 = fsub fast float %922, %912
  %924 = fsub fast float %923, %913
  %925 = fadd fast float %924, %921
  %926 = fadd fast float %925, %916
  %927 = fadd fast float %926, %917
  %928 = call float @dx.op.binary.f32(i32 35, float %891, float 0.000000e+00)  ; FMax(a,b)
  %929 = call float @dx.op.binary.f32(i32 35, float %909, float 0.000000e+00)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 35, float %927, float 0.000000e+00)  ; FMax(a,b)
  br label %931

; <label>:931                                     ; preds = %556, %553
  %932 = phi float [ %928, %556 ], [ 0.000000e+00, %553 ]
  %933 = phi float [ %929, %556 ], [ 0.000000e+00, %553 ]
  %934 = phi float [ %930, %556 ], [ 0.000000e+00, %553 ]
  %935 = phi float [ %858, %556 ], [ 0.000000e+00, %553 ]
  %936 = phi float [ %859, %556 ], [ 0.000000e+00, %553 ]
  %937 = phi float [ %860, %556 ], [ 0.000000e+00, %553 ]
  %938 = phi float [ %802, %556 ], [ 0.000000e+00, %553 ]
  %939 = phi float [ %803, %556 ], [ 0.000000e+00, %553 ]
  %940 = phi float [ %804, %556 ], [ 0.000000e+00, %553 ]
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = fcmp fast ogt float %942, 0.000000e+00
  %944 = and i1 %555, %943
  br i1 %944, label %945, label %1152, !dx.controlflow.hints !106

; <label>:945                                     ; preds = %931
  %946 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %947 = fadd fast float %946, %359
  %948 = fmul fast float %279, 3.200000e+01
  %949 = fmul fast float %280, 3.200000e+01
  %950 = fadd fast float %513, %948
  %951 = fadd fast float %514, %949
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %954 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %955 = fsub fast float %950, %953
  %956 = fsub fast float %951, %954
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = fmul fast float %955, %958
  %961 = fmul fast float %956, %959
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %964 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %965 = fsub fast float %513, %963
  %966 = fsub fast float %514, %964
  %967 = fmul fast float %965, %965
  %968 = fmul fast float %966, %966
  %969 = fadd fast float %967, %968
  %970 = call float @dx.op.unary.f32(i32 24, float %969)  ; Sqrt(value)
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %974 = fsub fast float %970, %972
  %975 = fdiv fast float %974, %973
  %976 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %977 = fmul fast float %976, 2.000000e+00
  %978 = fsub fast float 3.000000e+00, %977
  %979 = fmul fast float %976, %976
  %980 = fmul fast float %979, %978
  %981 = fcmp fast oge float %960, 0.000000e+00
  %982 = fcmp fast ole float %960, 1.000000e+00
  %983 = and i1 %982, %981
  %984 = fcmp fast oge float %961, 0.000000e+00
  %985 = and i1 %984, %983
  %986 = fcmp fast ole float %961, 1.000000e+00
  %987 = and i1 %986, %985
  %988 = fcmp fast ogt float %980, 0.000000e+00
  %989 = and i1 %988, %987
  br i1 %989, label %990, label %1113, !dx.controlflow.hints !107

; <label>:990                                     ; preds = %945
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %994 = fmul fast float %992, %960
  %995 = fmul fast float %993, %961
  %996 = call float @dx.op.unary.f32(i32 27, float %994)  ; Round_ni(value)
  %997 = call float @dx.op.unary.f32(i32 27, float %995)  ; Round_ni(value)
  %998 = fptosi float %996 to i32
  %999 = fptosi float %997 to i32
  %1000 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %998, i32 %999, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = lshr i32 %1001, 16
  %1003 = icmp eq i32 %1002, 65535
  br i1 %1003, label %1113, label %1004

; <label>:1004                                    ; preds = %990
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = fmul fast float %1006, %960
  %1008 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1009 = fadd fast float %1007, %1008
  %1010 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1011 = fmul fast float %1010, %961
  %1012 = extractvalue %dx.types.CBufRet.f32 %1005, 3
  %1013 = fadd fast float %1011, %1012
  %1014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %34, float %1009, float %1013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1019 = extractvalue %dx.types.CBufRet.f32 %1017, 0
  %1020 = fsub fast float %1018, %1019
  %1021 = fmul fast float %1020, %1015
  %1022 = fadd fast float %1021, %1019
  %1023 = extractvalue %dx.types.CBufRet.f32 %1017, 3
  %1024 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1025 = fsub fast float %1023, %1024
  %1026 = fmul fast float %1025, %1016
  %1027 = fadd fast float %1026, %1024
  %1028 = fsub fast float %947, %1022
  %1029 = fsub fast float %1027, %1022
  %1030 = fdiv fast float %1028, %1029
  %1031 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1032 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %1033 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %1035 = fmul fast float %1033, %960
  %1036 = fmul fast float %1034, %961
  %1037 = fmul fast float %1035, 1.250000e-01
  %1038 = fmul fast float %1036, 1.250000e-01
  %1039 = call float @dx.op.unary.f32(i32 27, float %1037)  ; Round_ni(value)
  %1040 = call float @dx.op.unary.f32(i32 27, float %1038)  ; Round_ni(value)
  %1041 = fmul fast float %1039, 8.000000e+00
  %1042 = fmul fast float %1040, 8.000000e+00
  %1043 = fsub fast float %1035, %1041
  %1044 = fsub fast float %1036, %1042
  %1045 = fadd fast float %1043, 5.000000e-01
  %1046 = fadd fast float %1044, 5.000000e-01
  %1047 = and i32 %1002, 255
  %1048 = lshr i32 %1001, 24
  %1049 = mul nuw nsw i32 %1047, 9
  %1050 = uitofp i32 %1049 to float
  %1051 = mul nuw nsw i32 %1048, 9
  %1052 = uitofp i32 %1051 to float
  %1053 = fadd fast float %1045, %1050
  %1054 = fadd fast float %1046, %1052
  %1055 = fdiv fast float %1053, %942
  %1056 = fdiv fast float %1054, %1032
  %1057 = fmul fast float %1031, 4.375000e-01
  %1058 = fadd fast float %1057, 3.125000e-02
  %1059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %34, float %1055, float %1056, float %1058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = fadd fast float %1057, 5.312500e-01
  %1064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %34, float %1055, float %1056, float %1063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.ResRet.f32 %1064, 2
  %1068 = fmul fast float %1065, 2.000000e+00
  %1069 = fmul fast float %1066, 2.000000e+00
  %1070 = fmul fast float %1067, 2.000000e+00
  %1071 = fadd fast float %1068, -1.000000e+00
  %1072 = fadd fast float %1069, -1.000000e+00
  %1073 = fadd fast float %1070, -1.000000e+00
  %1074 = fmul fast float %1071, %1071
  %1075 = fmul fast float %1072, %1072
  %1076 = fadd fast float %1074, %1075
  %1077 = fmul fast float %1073, %1073
  %1078 = fadd fast float %1076, %1077
  %1079 = call float @dx.op.unary.f32(i32 24, float %1078)  ; Sqrt(value)
  %1080 = fcmp fast ogt float %1079, 0.000000e+00
  br i1 %1080, label %1081, label %1085

; <label>:1081                                    ; preds = %1004
  %1082 = fdiv fast float %1071, %1079
  %1083 = fdiv fast float %1072, %1079
  %1084 = fdiv fast float %1073, %1079
  br label %1085

; <label>:1085                                    ; preds = %1081, %1004
  %1086 = phi float [ %1082, %1081 ], [ 0.000000e+00, %1004 ]
  %1087 = phi float [ %1083, %1081 ], [ 0.000000e+00, %1004 ]
  %1088 = phi float [ %1084, %1081 ], [ 0.000000e+00, %1004 ]
  %1089 = call float @dx.op.dot3.f32(i32 55, float %1086, float %1087, float %1088, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %1090 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1089)  ; FMax(a,b)
  %1091 = fmul fast float %1090, 0x400C5BF8A0000000
  %1092 = fmul fast float %1060, %980
  %1093 = fmul fast float %1092, %1091
  %1094 = fmul fast float %1061, %980
  %1095 = fmul fast float %1094, %1091
  %1096 = fmul fast float %1062, %980
  %1097 = fmul fast float %1096, %1091
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 3
  %1100 = fmul fast float %1093, %1099
  %1101 = fmul fast float %1095, %1099
  %1102 = fmul fast float %1097, %1099
  %1103 = fcmp fast ogt float %947, %1027
  br i1 %1103, label %1104, label %1113

; <label>:1104                                    ; preds = %1085
  %1105 = fmul fast float %1029, 0x3FC24924A0000000
  %1106 = fsub fast float %947, %1027
  %1107 = fdiv fast float %1106, %1105
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1109 = fsub fast float 1.000000e+00, %1108
  %1110 = fmul fast float %1109, %1100
  %1111 = fmul fast float %1109, %1101
  %1112 = fmul fast float %1109, %1102
  br label %1113

; <label>:1113                                    ; preds = %1104, %1085, %990, %945
  %1114 = phi float [ %1112, %1104 ], [ %1102, %1085 ], [ 0.000000e+00, %990 ], [ 0.000000e+00, %945 ]
  %1115 = phi float [ %1111, %1104 ], [ %1101, %1085 ], [ 0.000000e+00, %990 ], [ 0.000000e+00, %945 ]
  %1116 = phi float [ %1110, %1104 ], [ %1100, %1085 ], [ 0.000000e+00, %990 ], [ 0.000000e+00, %945 ]
  %1117 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1116)  ; FMax(a,b)
  %1118 = fmul fast float %1117, 0x3FD20DD760000000
  %1119 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %506, float %507, float %508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = fmul fast float %1119, 0x3FDF454380000000
  %1121 = fmul fast float %1119, %1119
  %1122 = fmul fast float %1121, 0x3FEE471020000000
  %1123 = fadd fast float %1122, 0xBFD42F6020000000
  %1124 = call float @dx.op.dot3.f32(i32 55, float %1117, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1120, float %1123)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1115)  ; FMax(a,b)
  %1126 = fmul fast float %1125, 0x3FD20DD760000000
  %1127 = call float @dx.op.dot3.f32(i32 55, float %1125, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1120, float %1123)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1114)  ; FMax(a,b)
  %1129 = fmul fast float %1128, 0x3FD20DD760000000
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1128, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1120, float %1123)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = call float @dx.op.binary.f32(i32 35, float %1118, float 0.000000e+00)  ; FMax(a,b)
  %1132 = call float @dx.op.binary.f32(i32 35, float %1126, float 0.000000e+00)  ; FMax(a,b)
  %1133 = call float @dx.op.binary.f32(i32 35, float %1129, float 0.000000e+00)  ; FMax(a,b)
  %1134 = call float @dx.op.binary.f32(i32 35, float %1124, float 0.000000e+00)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1127, float 0.000000e+00)  ; FMax(a,b)
  %1136 = call float @dx.op.binary.f32(i32 35, float %1130, float 0.000000e+00)  ; FMax(a,b)
  %1137 = fmul fast float %1131, %554
  %1138 = fmul fast float %1132, %554
  %1139 = fmul fast float %1133, %554
  %1140 = fadd fast float %1137, %938
  %1141 = fadd fast float %1138, %939
  %1142 = fadd fast float %1139, %940
  %1143 = fadd fast float %1137, %935
  %1144 = fadd fast float %1138, %936
  %1145 = fadd fast float %1139, %937
  %1146 = fmul fast float %1134, %554
  %1147 = fmul fast float %1135, %554
  %1148 = fmul fast float %1136, %554
  %1149 = fadd fast float %1146, %932
  %1150 = fadd fast float %1147, %933
  %1151 = fadd fast float %1148, %934
  br label %1152

; <label>:1152                                    ; preds = %1113, %931
  %1153 = phi float [ %1149, %1113 ], [ %932, %931 ]
  %1154 = phi float [ %1150, %1113 ], [ %933, %931 ]
  %1155 = phi float [ %1151, %1113 ], [ %934, %931 ]
  %1156 = phi float [ %1143, %1113 ], [ %935, %931 ]
  %1157 = phi float [ %1144, %1113 ], [ %936, %931 ]
  %1158 = phi float [ %1145, %1113 ], [ %937, %931 ]
  %1159 = phi float [ %1140, %1113 ], [ %938, %931 ]
  %1160 = phi float [ %1141, %1113 ], [ %939, %931 ]
  %1161 = phi float [ %1142, %1113 ], [ %940, %931 ]
  %1162 = fcmp fast olt float %554, 1.000000e+00
  br i1 %1162, label %1163, label %1996, !dx.controlflow.hints !108

; <label>:1163                                    ; preds = %1152
  %1164 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %1165 = fadd fast float %1164, %359
  %1166 = fmul fast float %279, 3.200000e+01
  %1167 = fmul fast float %280, 3.200000e+01
  %1168 = fadd fast float %513, %1166
  %1169 = fadd fast float %514, %1167
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1173 = fsub fast float %1168, %1171
  %1174 = fsub fast float %1169, %1172
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = fmul fast float %1173, %1176
  %1179 = fmul fast float %1174, %1177
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = fmul fast float %1178, %1181
  %1183 = extractvalue %dx.types.CBufRet.f32 %1180, 1
  %1184 = fadd fast float %1182, %1183
  %1185 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1186 = fmul fast float %1185, %1179
  %1187 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1188 = fadd fast float %1186, %1187
  %1189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %34, float %1184, float %1188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1195 = fsub fast float %1193, %1194
  %1196 = fmul fast float %1195, %1190
  %1197 = fadd fast float %1196, %1194
  %1198 = extractvalue %dx.types.CBufRet.f32 %1192, 3
  %1199 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1200 = fsub fast float %1198, %1199
  %1201 = fmul fast float %1200, %1191
  %1202 = fadd fast float %1201, %1199
  %1203 = fsub fast float %1165, %1197
  %1204 = fsub fast float %1202, %1197
  %1205 = fdiv fast float %1203, %1204
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = fmul fast float %1208, %1206
  %1210 = extractvalue %dx.types.CBufRet.f32 %1207, 1
  %1211 = fadd fast float %1209, %1210
  %1212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %1184, float %1188, float %1211, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1220 = fmul fast float %1217, %1213
  %1221 = fmul fast float %1218, %1214
  %1222 = fmul fast float %1219, %1215
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.CBufRet.f32 %1223, 2
  %1227 = fadd fast float %1220, %1224
  %1228 = fadd fast float %1221, %1225
  %1229 = fadd fast float %1222, %1226
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  %1232 = fmul fast float %1231, %1178
  %1233 = extractvalue %dx.types.CBufRet.f32 %1230, 1
  %1234 = fadd fast float %1232, %1233
  %1235 = extractvalue %dx.types.CBufRet.f32 %1230, 2
  %1236 = fmul fast float %1235, %1179
  %1237 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1238 = fadd fast float %1236, %1237
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1243 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1248 = extractvalue %dx.types.CBufRet.f32 %1244, 3
  %1249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %1234, float %1238, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %1234, float %1238, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = fmul fast float %1250, %1227
  %1260 = fmul fast float %1255, %1227
  %1261 = fmul fast float %1257, %1227
  %1262 = fmul fast float %1253, %1227
  %1263 = fadd fast float %1259, %1240
  %1264 = fadd fast float %1260, %1241
  %1265 = fadd fast float %1261, %1242
  %1266 = fadd fast float %1262, %1243
  %1267 = fmul fast float %1251, %1227
  %1268 = fmul fast float %1256, %1227
  %1269 = fadd fast float %1267, %1245
  %1270 = fadd fast float %1268, %1246
  %1271 = fmul fast float %1252, %1227
  %1272 = fmul fast float %1258, %1227
  %1273 = fadd fast float %1271, %1247
  %1274 = fadd fast float %1272, %1248
  %1275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %1234, float %1238, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1275, 2
  %1279 = extractvalue %dx.types.ResRet.f32 %1275, 3
  %1280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %1234, float %1238, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.ResRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.ResRet.f32 %1280, 2
  %1284 = extractvalue %dx.types.ResRet.f32 %1280, 3
  %1285 = fmul fast float %1276, %1228
  %1286 = fmul fast float %1281, %1228
  %1287 = fmul fast float %1283, %1228
  %1288 = fmul fast float %1279, %1228
  %1289 = fadd fast float %1263, %1285
  %1290 = fadd fast float %1264, %1286
  %1291 = fadd fast float %1265, %1287
  %1292 = fadd fast float %1266, %1288
  %1293 = fmul fast float %1277, %1228
  %1294 = fmul fast float %1282, %1228
  %1295 = fadd fast float %1269, %1293
  %1296 = fadd fast float %1270, %1294
  %1297 = fmul fast float %1278, %1228
  %1298 = fmul fast float %1284, %1228
  %1299 = fadd fast float %1273, %1297
  %1300 = fadd fast float %1274, %1298
  %1301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %1234, float %1238, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.ResRet.f32 %1301, 3
  %1306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %1234, float %1238, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.ResRet.f32 %1306, 2
  %1310 = extractvalue %dx.types.ResRet.f32 %1306, 3
  %1311 = fmul fast float %1302, %1229
  %1312 = fmul fast float %1307, %1229
  %1313 = fmul fast float %1309, %1229
  %1314 = fmul fast float %1305, %1229
  %1315 = fadd fast float %1289, %1311
  %1316 = fadd fast float %1290, %1312
  %1317 = fadd fast float %1291, %1313
  %1318 = fadd fast float %1292, %1314
  %1319 = fmul fast float %1303, %1229
  %1320 = fmul fast float %1308, %1229
  %1321 = fadd fast float %1295, %1319
  %1322 = fadd fast float %1296, %1320
  %1323 = fmul fast float %1304, %1229
  %1324 = fmul fast float %1310, %1229
  %1325 = fadd fast float %1299, %1323
  %1326 = fadd fast float %1300, %1324
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 0
  %1329 = fsub fast float %513, %1328
  %1330 = fsub fast float %1171, %513
  %1331 = call float @dx.op.binary.f32(i32 35, float %1330, float %1329)  ; FMax(a,b)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1327, 1
  %1333 = fsub fast float %514, %1332
  %1334 = fsub fast float %1172, %514
  %1335 = call float @dx.op.binary.f32(i32 35, float %1334, float %1333)  ; FMax(a,b)
  %1336 = call float @dx.op.binary.f32(i32 35, float %1331, float %1335)  ; FMax(a,b)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1338 = fmul fast float %1337, %1336
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1344 = extractvalue %dx.types.CBufRet.f32 %1340, 3
  %1345 = fsub fast float %1341, %1315
  %1346 = fsub fast float %1342, %1316
  %1347 = fsub fast float %1343, %1317
  %1348 = fsub fast float %1344, %1318
  %1349 = fmul fast float %1345, %1339
  %1350 = fmul fast float %1346, %1339
  %1351 = fmul fast float %1347, %1339
  %1352 = fmul fast float %1348, %1339
  %1353 = fadd fast float %1349, %1315
  %1354 = fadd fast float %1350, %1316
  %1355 = fadd fast float %1351, %1317
  %1356 = fadd fast float %1352, %1318
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1360 = fsub fast float %1358, %1321
  %1361 = fsub fast float %1359, %1322
  %1362 = fmul fast float %1360, %1339
  %1363 = fmul fast float %1361, %1339
  %1364 = fadd fast float %1362, %1321
  %1365 = fadd fast float %1363, %1322
  %1366 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1367 = extractvalue %dx.types.CBufRet.f32 %1357, 3
  %1368 = fsub fast float %1366, %1325
  %1369 = fsub fast float %1367, %1326
  %1370 = fmul fast float %1368, %1339
  %1371 = fmul fast float %1369, %1339
  %1372 = fadd fast float %1370, %1325
  %1373 = fadd fast float %1371, %1326
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = fmul fast float %1375, %1353
  %1377 = fmul fast float %1375, %1354
  %1378 = fmul fast float %1375, %1355
  %1379 = fmul fast float %1375, %1356
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1382 = fmul fast float %1381, %1364
  %1383 = fmul fast float %1381, %1365
  %1384 = fadd fast float %1382, %1376
  %1385 = fadd fast float %1383, %1378
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  %1388 = fmul fast float %1387, %1372
  %1389 = fmul fast float %1387, %1373
  %1390 = fadd fast float %1384, %1388
  %1391 = fadd fast float %1385, %1389
  %1392 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1393 = fmul fast float %1392, %1353
  %1394 = fmul fast float %1392, %1354
  %1395 = fmul fast float %1392, %1355
  %1396 = fmul fast float %1392, %1356
  %1397 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1398 = fmul fast float %1397, %1364
  %1399 = fmul fast float %1397, %1365
  %1400 = fadd fast float %1398, %1393
  %1401 = fadd fast float %1399, %1395
  %1402 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1403 = fmul fast float %1402, %1372
  %1404 = fmul fast float %1402, %1373
  %1405 = fadd fast float %1400, %1403
  %1406 = fadd fast float %1401, %1404
  %1407 = extractvalue %dx.types.CBufRet.f32 %1374, 2
  %1408 = fmul fast float %1407, %1353
  %1409 = fmul fast float %1407, %1354
  %1410 = fmul fast float %1407, %1355
  %1411 = fmul fast float %1407, %1356
  %1412 = extractvalue %dx.types.CBufRet.f32 %1380, 2
  %1413 = fmul fast float %1412, %1364
  %1414 = fmul fast float %1412, %1365
  %1415 = fadd fast float %1413, %1408
  %1416 = fadd fast float %1414, %1410
  %1417 = extractvalue %dx.types.CBufRet.f32 %1386, 2
  %1418 = fmul fast float %1417, %1372
  %1419 = fmul fast float %1417, %1373
  %1420 = fadd fast float %1415, %1418
  %1421 = fadd fast float %1416, %1419
  %1422 = fmul fast float %1409, %1409
  %1423 = fmul fast float %1421, %1421
  %1424 = fmul fast float %1411, %1411
  %1425 = fadd fast float %1424, %1422
  %1426 = fadd fast float %1425, %1423
  %1427 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1428 = fcmp fast ugt float %1427, 0.000000e+00
  br i1 %1428, label %1429, label %1444

; <label>:1429                                    ; preds = %1163
  %1430 = fsub fast float -0.000000e+00, %1411
  %1431 = fdiv fast float %1430, %1427
  %1432 = fsub fast float -0.000000e+00, %1409
  %1433 = fdiv fast float %1432, %1427
  %1434 = fdiv fast float %1421, %1427
  %1435 = fmul fast float %1420, 0x3FE279A760000000
  %1436 = fmul fast float %1433, %1409
  %1437 = fmul fast float %1434, %1421
  %1438 = fmul fast float %1431, %1411
  %1439 = fadd fast float %1436, %1438
  %1440 = fsub fast float %1439, %1437
  %1441 = call float @dx.op.unary.f32(i32 6, float %1440)  ; FAbs(value)
  %1442 = fadd fast float %1441, 0x3DDB7CDFE0000000
  %1443 = fdiv fast float %1435, %1442
  br label %1444

; <label>:1444                                    ; preds = %1429, %1163
  %1445 = phi float [ %1443, %1429 ], [ 1.000000e+00, %1163 ]
  %1446 = fmul fast float %1394, %1394
  %1447 = fmul fast float %1406, %1406
  %1448 = fmul fast float %1396, %1396
  %1449 = fadd fast float %1448, %1446
  %1450 = fadd fast float %1449, %1447
  %1451 = call float @dx.op.unary.f32(i32 24, float %1450)  ; Sqrt(value)
  %1452 = fcmp fast ugt float %1451, 0.000000e+00
  br i1 %1452, label %1453, label %1468

; <label>:1453                                    ; preds = %1444
  %1454 = fsub fast float -0.000000e+00, %1396
  %1455 = fdiv fast float %1454, %1451
  %1456 = fsub fast float -0.000000e+00, %1394
  %1457 = fdiv fast float %1456, %1451
  %1458 = fdiv fast float %1406, %1451
  %1459 = fmul fast float %1405, 0x3FE279A760000000
  %1460 = fmul fast float %1457, %1394
  %1461 = fmul fast float %1458, %1406
  %1462 = fmul fast float %1455, %1396
  %1463 = fadd fast float %1460, %1462
  %1464 = fsub fast float %1463, %1461
  %1465 = call float @dx.op.unary.f32(i32 6, float %1464)  ; FAbs(value)
  %1466 = fadd fast float %1465, 0x3DDB7CDFE0000000
  %1467 = fdiv fast float %1459, %1466
  br label %1468

; <label>:1468                                    ; preds = %1453, %1444
  %1469 = phi float [ %1467, %1453 ], [ 1.000000e+00, %1444 ]
  %1470 = call float @dx.op.binary.f32(i32 36, float %1469, float %1445)  ; FMin(a,b)
  %1471 = fmul fast float %1377, %1377
  %1472 = fmul fast float %1391, %1391
  %1473 = fmul fast float %1379, %1379
  %1474 = fadd fast float %1473, %1471
  %1475 = fadd fast float %1474, %1472
  %1476 = call float @dx.op.unary.f32(i32 24, float %1475)  ; Sqrt(value)
  %1477 = fcmp fast ugt float %1476, 0.000000e+00
  br i1 %1477, label %1478, label %1493

; <label>:1478                                    ; preds = %1468
  %1479 = fsub fast float -0.000000e+00, %1379
  %1480 = fdiv fast float %1479, %1476
  %1481 = fsub fast float -0.000000e+00, %1377
  %1482 = fdiv fast float %1481, %1476
  %1483 = fdiv fast float %1391, %1476
  %1484 = fmul fast float %1390, 0x3FE279A760000000
  %1485 = fmul fast float %1482, %1377
  %1486 = fmul fast float %1483, %1391
  %1487 = fmul fast float %1480, %1379
  %1488 = fadd fast float %1485, %1487
  %1489 = fsub fast float %1488, %1486
  %1490 = call float @dx.op.unary.f32(i32 6, float %1489)  ; FAbs(value)
  %1491 = fadd fast float %1490, 0x3DDB7CDFE0000000
  %1492 = fdiv fast float %1484, %1491
  br label %1493

; <label>:1493                                    ; preds = %1478, %1468
  %1494 = phi float [ %1492, %1478 ], [ 1.000000e+00, %1468 ]
  %1495 = call float @dx.op.binary.f32(i32 36, float %1494, float %1470)  ; FMin(a,b)
  %1496 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1497 = fcmp fast olt float %1496, 1.000000e+00
  br i1 %1497, label %1498, label %1508

; <label>:1498                                    ; preds = %1493
  %1499 = fmul fast float %1496, %1377
  %1500 = fmul fast float %1496, %1391
  %1501 = fmul fast float %1496, %1379
  %1502 = fmul fast float %1496, %1394
  %1503 = fmul fast float %1496, %1406
  %1504 = fmul fast float %1496, %1396
  %1505 = fmul fast float %1496, %1409
  %1506 = fmul fast float %1496, %1421
  %1507 = fmul fast float %1496, %1411
  br label %1508

; <label>:1508                                    ; preds = %1498, %1493
  %1509 = phi float [ %1505, %1498 ], [ %1409, %1493 ]
  %1510 = phi float [ %1506, %1498 ], [ %1421, %1493 ]
  %1511 = phi float [ %1507, %1498 ], [ %1411, %1493 ]
  %1512 = phi float [ %1502, %1498 ], [ %1394, %1493 ]
  %1513 = phi float [ %1503, %1498 ], [ %1406, %1493 ]
  %1514 = phi float [ %1504, %1498 ], [ %1396, %1493 ]
  %1515 = phi float [ %1499, %1498 ], [ %1377, %1493 ]
  %1516 = phi float [ %1500, %1498 ], [ %1391, %1493 ]
  %1517 = phi float [ %1501, %1498 ], [ %1379, %1493 ]
  %1518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1390)  ; FMax(a,b)
  %1519 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1405)  ; FMax(a,b)
  %1520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1420)  ; FMax(a,b)
  %1521 = fcmp fast oge float %1178, 0.000000e+00
  %1522 = and i1 %1521, %943
  %1523 = fcmp fast ole float %1178, 1.000000e+00
  %1524 = and i1 %1523, %1522
  %1525 = fcmp fast oge float %1179, 0.000000e+00
  %1526 = and i1 %1525, %1524
  %1527 = fcmp fast ole float %1179, 1.000000e+00
  %1528 = and i1 %1527, %1526
  br i1 %1528, label %1529, label %1674, !dx.controlflow.hints !109

; <label>:1529                                    ; preds = %1508
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 2
  %1532 = extractvalue %dx.types.CBufRet.f32 %1530, 3
  %1533 = fmul fast float %1531, %1178
  %1534 = fmul fast float %1532, %1179
  %1535 = call float @dx.op.unary.f32(i32 27, float %1533)  ; Round_ni(value)
  %1536 = call float @dx.op.unary.f32(i32 27, float %1534)  ; Round_ni(value)
  %1537 = fptosi float %1535 to i32
  %1538 = fptosi float %1536 to i32
  %1539 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %1537, i32 %1538, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 65535
  %1542 = lshr i32 %1540, 16
  %1543 = icmp eq i32 %1541, 65535
  br i1 %1543, label %1580, label %1544

; <label>:1544                                    ; preds = %1529
  %1545 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %1546 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1547 = extractvalue %dx.types.CBufRet.f32 %1530, 1
  %1548 = fmul fast float %1546, %1178
  %1549 = fmul fast float %1547, %1179
  %1550 = fmul fast float %1548, 1.250000e-01
  %1551 = fmul fast float %1549, 1.250000e-01
  %1552 = call float @dx.op.unary.f32(i32 27, float %1550)  ; Round_ni(value)
  %1553 = call float @dx.op.unary.f32(i32 27, float %1551)  ; Round_ni(value)
  %1554 = fmul fast float %1552, 8.000000e+00
  %1555 = fmul fast float %1553, 8.000000e+00
  %1556 = and i32 %1540, 255
  %1557 = lshr i32 %1540, 8
  %1558 = and i32 %1557, 255
  %1559 = mul nuw nsw i32 %1556, 9
  %1560 = uitofp i32 %1559 to float
  %1561 = mul nuw nsw i32 %1558, 9
  %1562 = uitofp i32 %1561 to float
  %1563 = fadd fast float %1560, 5.000000e-01
  %1564 = fadd fast float %1563, %1548
  %1565 = fsub fast float %1564, %1554
  %1566 = fadd fast float %1562, 5.000000e-01
  %1567 = fadd fast float %1566, %1549
  %1568 = fsub fast float %1567, %1555
  %1569 = fdiv fast float %1565, %942
  %1570 = fdiv fast float %1568, %1545
  %1571 = fmul fast float %1206, 4.375000e-01
  %1572 = fadd fast float %1571, 3.125000e-02
  %1573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %34, float %1569, float %1570, float %1572, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.ResRet.f32 %1573, 2
  %1577 = fadd fast float %1574, %1518
  %1578 = fadd fast float %1575, %1519
  %1579 = fadd fast float %1576, %1520
  br label %1580

; <label>:1580                                    ; preds = %1544, %1529
  %1581 = phi float [ %1579, %1544 ], [ %1520, %1529 ]
  %1582 = phi float [ %1578, %1544 ], [ %1519, %1529 ]
  %1583 = phi float [ %1577, %1544 ], [ %1518, %1529 ]
  %1584 = icmp eq i32 %1542, 65535
  br i1 %1584, label %1674, label %1585

; <label>:1585                                    ; preds = %1580
  %1586 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %1587 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1588 = extractvalue %dx.types.CBufRet.f32 %1530, 1
  %1589 = fmul fast float %1587, %1178
  %1590 = fmul fast float %1588, %1179
  %1591 = fmul fast float %1589, 1.250000e-01
  %1592 = fmul fast float %1590, 1.250000e-01
  %1593 = call float @dx.op.unary.f32(i32 27, float %1591)  ; Round_ni(value)
  %1594 = call float @dx.op.unary.f32(i32 27, float %1592)  ; Round_ni(value)
  %1595 = fmul fast float %1593, 8.000000e+00
  %1596 = fmul fast float %1594, 8.000000e+00
  %1597 = fsub fast float %1589, %1595
  %1598 = fsub fast float %1590, %1596
  %1599 = fadd fast float %1597, 5.000000e-01
  %1600 = fadd fast float %1598, 5.000000e-01
  %1601 = and i32 %1542, 255
  %1602 = lshr i32 %1540, 24
  %1603 = mul nuw nsw i32 %1601, 9
  %1604 = uitofp i32 %1603 to float
  %1605 = mul nuw nsw i32 %1602, 9
  %1606 = uitofp i32 %1605 to float
  %1607 = fadd fast float %1599, %1604
  %1608 = fadd fast float %1600, %1606
  %1609 = fdiv fast float %1607, %942
  %1610 = fdiv fast float %1608, %1586
  %1611 = fmul fast float %1206, 4.375000e-01
  %1612 = fadd fast float %1611, 3.125000e-02
  %1613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %34, float %1609, float %1610, float %1612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = fadd fast float %1611, 5.312500e-01
  %1618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %34, float %1609, float %1610, float %1617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1619 = extractvalue %dx.types.ResRet.f32 %1618, 0
  %1620 = extractvalue %dx.types.ResRet.f32 %1618, 1
  %1621 = extractvalue %dx.types.ResRet.f32 %1618, 2
  %1622 = fmul fast float %1619, 2.000000e+00
  %1623 = fmul fast float %1620, 2.000000e+00
  %1624 = fmul fast float %1621, 2.000000e+00
  %1625 = fadd fast float %1622, -1.000000e+00
  %1626 = fadd fast float %1623, -1.000000e+00
  %1627 = fadd fast float %1624, -1.000000e+00
  %1628 = fmul fast float %1625, %1625
  %1629 = fmul fast float %1626, %1626
  %1630 = fadd fast float %1628, %1629
  %1631 = fmul fast float %1627, %1627
  %1632 = fadd fast float %1630, %1631
  %1633 = call float @dx.op.unary.f32(i32 24, float %1632)  ; Sqrt(value)
  %1634 = fcmp fast ogt float %1633, 0.000000e+00
  br i1 %1634, label %1635, label %1639

; <label>:1635                                    ; preds = %1585
  %1636 = fdiv fast float %1625, %1633
  %1637 = fdiv fast float %1626, %1633
  %1638 = fdiv fast float %1627, %1633
  br label %1639

; <label>:1639                                    ; preds = %1635, %1585
  %1640 = phi float [ %1636, %1635 ], [ 0.000000e+00, %1585 ]
  %1641 = phi float [ %1637, %1635 ], [ 0.000000e+00, %1585 ]
  %1642 = phi float [ %1638, %1635 ], [ 0.000000e+00, %1585 ]
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 0
  %1645 = extractvalue %dx.types.CBufRet.f32 %1643, 1
  %1646 = fsub fast float %513, %1644
  %1647 = fsub fast float %514, %1645
  %1648 = fmul fast float %1646, %1646
  %1649 = fmul fast float %1647, %1647
  %1650 = fadd fast float %1648, %1649
  %1651 = call float @dx.op.unary.f32(i32 24, float %1650)  ; Sqrt(value)
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1655 = fsub fast float %1651, %1653
  %1656 = fdiv fast float %1655, %1654
  %1657 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1658 = fmul fast float %1657, 2.000000e+00
  %1659 = fsub fast float 3.000000e+00, %1658
  %1660 = fmul fast float %1657, %1657
  %1661 = fmul fast float %1660, %1659
  %1662 = call float @dx.op.dot3.f32(i32 55, float %1640, float %1641, float %1642, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %1663 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1662)  ; FMax(a,b)
  %1664 = fmul fast float %1663, 0x400C5BF8A0000000
  %1665 = fmul fast float %1661, %1614
  %1666 = fmul fast float %1665, %1664
  %1667 = fadd fast float %1666, %1583
  %1668 = fmul fast float %1661, %1615
  %1669 = fmul fast float %1668, %1664
  %1670 = fadd fast float %1669, %1582
  %1671 = fmul fast float %1661, %1616
  %1672 = fmul fast float %1671, %1664
  %1673 = fadd fast float %1672, %1581
  br label %1674

; <label>:1674                                    ; preds = %1639, %1580, %1508
  %1675 = phi float [ %1673, %1639 ], [ %1581, %1580 ], [ %1520, %1508 ]
  %1676 = phi float [ %1670, %1639 ], [ %1582, %1580 ], [ %1519, %1508 ]
  %1677 = phi float [ %1667, %1639 ], [ %1583, %1580 ], [ %1518, %1508 ]
  %1678 = fcmp fast ogt float %1165, %1202
  %1679 = and i1 %1521, %1678
  %1680 = and i1 %1523, %1679
  %1681 = and i1 %1525, %1680
  %1682 = and i1 %1527, %1681
  br i1 %1682, label %1683, label %1740, !dx.controlflow.hints !110

; <label>:1683                                    ; preds = %1674
  %1684 = fmul fast float %1204, 0x3FC24924A0000000
  %1685 = fsub fast float %1165, %1202
  %1686 = fdiv fast float %1685, %1684
  %1687 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.f32 %1688, 0
  %1690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1691 = extractvalue %dx.types.CBufRet.f32 %1690, 0
  %1692 = extractvalue %dx.types.CBufRet.f32 %1690, 1
  %1693 = extractvalue %dx.types.CBufRet.f32 %1690, 2
  %1694 = fsub fast float %1689, %1677
  %1695 = fsub fast float %1691, %1515
  %1696 = fsub fast float %1692, %1516
  %1697 = fsub fast float %1693, %1517
  %1698 = fmul fast float %1694, %1687
  %1699 = fmul fast float %1695, %1687
  %1700 = fmul fast float %1696, %1687
  %1701 = fmul fast float %1697, %1687
  %1702 = fadd fast float %1698, %1677
  %1703 = fadd fast float %1699, %1515
  %1704 = fadd fast float %1700, %1516
  %1705 = fadd fast float %1701, %1517
  %1706 = extractvalue %dx.types.CBufRet.f32 %1688, 1
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1707, 2
  %1711 = fsub fast float %1706, %1676
  %1712 = fsub fast float %1708, %1512
  %1713 = fsub fast float %1709, %1513
  %1714 = fsub fast float %1710, %1514
  %1715 = fmul fast float %1711, %1687
  %1716 = fmul fast float %1712, %1687
  %1717 = fmul fast float %1713, %1687
  %1718 = fmul fast float %1714, %1687
  %1719 = fadd fast float %1715, %1676
  %1720 = fadd fast float %1716, %1512
  %1721 = fadd fast float %1717, %1513
  %1722 = fadd fast float %1718, %1514
  %1723 = extractvalue %dx.types.CBufRet.f32 %1688, 2
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1728 = fsub fast float %1723, %1675
  %1729 = fsub fast float %1725, %1509
  %1730 = fsub fast float %1726, %1510
  %1731 = fsub fast float %1727, %1511
  %1732 = fmul fast float %1728, %1687
  %1733 = fmul fast float %1729, %1687
  %1734 = fmul fast float %1730, %1687
  %1735 = fmul fast float %1731, %1687
  %1736 = fadd fast float %1732, %1675
  %1737 = fadd fast float %1733, %1509
  %1738 = fadd fast float %1734, %1510
  %1739 = fadd fast float %1735, %1511
  br label %1740

; <label>:1740                                    ; preds = %1683, %1674
  %1741 = phi float [ %1736, %1683 ], [ %1675, %1674 ]
  %1742 = phi float [ %1737, %1683 ], [ %1509, %1674 ]
  %1743 = phi float [ %1738, %1683 ], [ %1510, %1674 ]
  %1744 = phi float [ %1739, %1683 ], [ %1511, %1674 ]
  %1745 = phi float [ %1719, %1683 ], [ %1676, %1674 ]
  %1746 = phi float [ %1720, %1683 ], [ %1512, %1674 ]
  %1747 = phi float [ %1721, %1683 ], [ %1513, %1674 ]
  %1748 = phi float [ %1722, %1683 ], [ %1514, %1674 ]
  %1749 = phi float [ %1702, %1683 ], [ %1677, %1674 ]
  %1750 = phi float [ %1703, %1683 ], [ %1515, %1674 ]
  %1751 = phi float [ %1704, %1683 ], [ %1516, %1674 ]
  %1752 = phi float [ %1705, %1683 ], [ %1517, %1674 ]
  %1753 = extractvalue %dx.types.CBufRet.f32 %1327, 3
  %1754 = fmul fast float %1753, %1749
  %1755 = fmul fast float %1753, %1745
  %1756 = fmul fast float %1753, %1741
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 3
  %1759 = fmul fast float %1754, %1758
  %1760 = fmul fast float %1755, %1758
  %1761 = fmul fast float %1756, %1758
  %1762 = fmul fast float %1750, 1.500000e+00
  %1763 = fmul fast float %1762, %1753
  %1764 = fmul fast float %1763, %1758
  %1765 = fmul fast float %1751, 1.500000e+00
  %1766 = fmul fast float %1765, %1753
  %1767 = fmul fast float %1766, %1758
  %1768 = fmul fast float %1752, 1.500000e+00
  %1769 = fmul fast float %1768, %1753
  %1770 = fmul fast float %1769, %1758
  %1771 = fmul fast float %1746, 1.500000e+00
  %1772 = fmul fast float %1771, %1753
  %1773 = fmul fast float %1772, %1758
  %1774 = fmul fast float %1747, 1.500000e+00
  %1775 = fmul fast float %1774, %1753
  %1776 = fmul fast float %1775, %1758
  %1777 = fmul fast float %1748, 1.500000e+00
  %1778 = fmul fast float %1777, %1753
  %1779 = fmul fast float %1778, %1758
  %1780 = fmul fast float %1742, 1.500000e+00
  %1781 = fmul fast float %1780, %1753
  %1782 = fmul fast float %1781, %1758
  %1783 = fmul fast float %1743, 1.500000e+00
  %1784 = fmul fast float %1783, %1753
  %1785 = fmul fast float %1784, %1758
  %1786 = fmul fast float %1744, 1.500000e+00
  %1787 = fmul fast float %1786, %1753
  %1788 = fmul fast float %1787, %1758
  %1789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1759)  ; FMax(a,b)
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1764, float %1767, float %1770, float %1764, float %1767, float %1770)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = fcmp fast oeq float %1790, 0.000000e+00
  %1792 = fcmp fast oeq float %1789, 0.000000e+00
  %1793 = or i1 %1792, %1791
  br i1 %1793, label %1823, label %1794

; <label>:1794                                    ; preds = %1740
  %1795 = fsub fast float -0.000000e+00, %1770
  %1796 = fsub fast float -0.000000e+00, %1764
  %1797 = call float @dx.op.unary.f32(i32 24, float %1790)  ; Sqrt(value)
  %1798 = fdiv fast float %1797, %1789
  %1799 = fcmp fast ogt float %1798, 0x3FFB6F8900000000
  %1800 = select i1 %1799, float 0x3FFB6F8900000000, float %1798
  %1801 = fmul fast float %1800, 0x3FE8A23460000000
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  %1803 = call float @dx.op.binary.f32(i32 35, float %1800, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1804 = fmul fast float %1802, %1789
  %1805 = fmul fast float %1803, 0x3FF279A740000000
  %1806 = fadd fast float %1805, -1.000000e+00
  %1807 = call float @dx.op.dot3.f32(i32 55, float %1795, float %1796, float %1767, float %1795, float %1796, float %1767)  ; Dot3(ax,ay,az,bx,by,bz)
  %1808 = call float @dx.op.unary.f32(i32 25, float %1807)  ; Rsqrt(value)
  %1809 = fmul fast float %1808, %1795
  %1810 = fmul fast float %1808, %1796
  %1811 = fmul fast float %1808, %1767
  %1812 = fmul fast float %1806, %1806
  %1813 = fsub fast float 1.000000e+00, %1812
  %1814 = fmul fast float %1803, 0x40005F8BE0000000
  %1815 = fsub fast float 0x400C5BF8A0000000, %1814
  %1816 = fdiv fast float %1804, %1815
  %1817 = fmul fast float %1816, 0x3FEE31C3C0000000
  %1818 = fmul fast float %1817, %1813
  %1819 = fmul fast float %1803, 0x3FDACB7480000000
  %1820 = fadd fast float %1819, 0xBFD7347680000000
  %1821 = fmul fast float %1820, %1816
  %1822 = fmul fast float %1821, %1813
  br label %1823

; <label>:1823                                    ; preds = %1794, %1740
  %1824 = phi float [ %1809, %1794 ], [ 0.000000e+00, %1740 ]
  %1825 = phi float [ %1810, %1794 ], [ 0.000000e+00, %1740 ]
  %1826 = phi float [ %1811, %1794 ], [ 0.000000e+00, %1740 ]
  %1827 = phi float [ %1818, %1794 ], [ 0.000000e+00, %1740 ]
  %1828 = phi float [ %1822, %1794 ], [ 0.000000e+00, %1740 ]
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1824, float %1825, float %1826, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = fmul fast float %1829, 0x3FDF454380000000
  %1831 = fmul fast float %1829, %1829
  %1832 = fmul fast float %1831, 0x3FEE471020000000
  %1833 = fadd fast float %1832, 0xBFD42F6020000000
  %1834 = fmul fast float %1789, 0x3FD20DD760000000
  %1835 = fmul fast float %1833, %1828
  %1836 = fadd fast float %1835, %1834
  %1837 = fmul fast float %1830, %1827
  %1838 = fadd fast float %1836, %1837
  %1839 = fsub fast float %1836, %1837
  %1840 = call float @dx.op.dot3.f32(i32 55, float %1824, float %1825, float %1826, float %506, float %507, float %508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1841 = fmul fast float %1840, 0x3FDF454380000000
  %1842 = fmul fast float %1840, %1840
  %1843 = fmul fast float %1842, 0x3FEE471020000000
  %1844 = fadd fast float %1843, 0xBFD42F6020000000
  %1845 = call float @dx.op.dot3.f32(i32 55, float %1789, float %1827, float %1828, float 0x3FD20DD760000000, float %1841, float %1844)  ; Dot3(ax,ay,az,bx,by,bz)
  %1846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1760)  ; FMax(a,b)
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1776, float %1779, float %1773, float %1776, float %1779)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = fcmp fast oeq float %1847, 0.000000e+00
  %1849 = fcmp fast oeq float %1846, 0.000000e+00
  %1850 = or i1 %1849, %1848
  br i1 %1850, label %1880, label %1851

; <label>:1851                                    ; preds = %1823
  %1852 = fsub fast float -0.000000e+00, %1779
  %1853 = fsub fast float -0.000000e+00, %1773
  %1854 = call float @dx.op.unary.f32(i32 24, float %1847)  ; Sqrt(value)
  %1855 = fdiv fast float %1854, %1846
  %1856 = fcmp fast ogt float %1855, 0x3FFB6F8900000000
  %1857 = select i1 %1856, float 0x3FFB6F8900000000, float %1855
  %1858 = fmul fast float %1857, 0x3FE8A23460000000
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = call float @dx.op.binary.f32(i32 35, float %1857, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1861 = fmul fast float %1859, %1846
  %1862 = fmul fast float %1860, 0x3FF279A740000000
  %1863 = fadd fast float %1862, -1.000000e+00
  %1864 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1853, float %1776, float %1852, float %1853, float %1776)  ; Dot3(ax,ay,az,bx,by,bz)
  %1865 = call float @dx.op.unary.f32(i32 25, float %1864)  ; Rsqrt(value)
  %1866 = fmul fast float %1865, %1852
  %1867 = fmul fast float %1865, %1853
  %1868 = fmul fast float %1865, %1776
  %1869 = fmul fast float %1863, %1863
  %1870 = fsub fast float 1.000000e+00, %1869
  %1871 = fmul fast float %1860, 0x40005F8BE0000000
  %1872 = fsub fast float 0x400C5BF8A0000000, %1871
  %1873 = fdiv fast float %1861, %1872
  %1874 = fmul fast float %1873, 0x3FEE31C3C0000000
  %1875 = fmul fast float %1874, %1870
  %1876 = fmul fast float %1860, 0x3FDACB7480000000
  %1877 = fadd fast float %1876, 0xBFD7347680000000
  %1878 = fmul fast float %1877, %1873
  %1879 = fmul fast float %1878, %1870
  br label %1880

; <label>:1880                                    ; preds = %1851, %1823
  %1881 = phi float [ %1866, %1851 ], [ 0.000000e+00, %1823 ]
  %1882 = phi float [ %1867, %1851 ], [ 0.000000e+00, %1823 ]
  %1883 = phi float [ %1868, %1851 ], [ 0.000000e+00, %1823 ]
  %1884 = phi float [ %1875, %1851 ], [ 0.000000e+00, %1823 ]
  %1885 = phi float [ %1879, %1851 ], [ 0.000000e+00, %1823 ]
  %1886 = call float @dx.op.dot3.f32(i32 55, float %1881, float %1882, float %1883, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %1887 = fmul fast float %1886, 0x3FDF454380000000
  %1888 = fmul fast float %1886, %1886
  %1889 = fmul fast float %1888, 0x3FEE471020000000
  %1890 = fadd fast float %1889, 0xBFD42F6020000000
  %1891 = fmul fast float %1846, 0x3FD20DD760000000
  %1892 = fmul fast float %1890, %1885
  %1893 = fadd fast float %1892, %1891
  %1894 = fmul fast float %1887, %1884
  %1895 = fadd fast float %1893, %1894
  %1896 = fsub fast float %1893, %1894
  %1897 = call float @dx.op.dot3.f32(i32 55, float %1881, float %1882, float %1883, float %506, float %507, float %508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1898 = fmul fast float %1897, 0x3FDF454380000000
  %1899 = fmul fast float %1897, %1897
  %1900 = fmul fast float %1899, 0x3FEE471020000000
  %1901 = fadd fast float %1900, 0xBFD42F6020000000
  %1902 = call float @dx.op.dot3.f32(i32 55, float %1846, float %1884, float %1885, float 0x3FD20DD760000000, float %1898, float %1901)  ; Dot3(ax,ay,az,bx,by,bz)
  %1903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1761)  ; FMax(a,b)
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1782, float %1785, float %1788, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = fcmp fast oeq float %1904, 0.000000e+00
  %1906 = fcmp fast oeq float %1903, 0.000000e+00
  %1907 = or i1 %1906, %1905
  br i1 %1907, label %1937, label %1908

; <label>:1908                                    ; preds = %1880
  %1909 = fsub fast float -0.000000e+00, %1788
  %1910 = fsub fast float -0.000000e+00, %1782
  %1911 = call float @dx.op.unary.f32(i32 24, float %1904)  ; Sqrt(value)
  %1912 = fdiv fast float %1911, %1903
  %1913 = fcmp fast ogt float %1912, 0x3FFB6F8900000000
  %1914 = select i1 %1913, float 0x3FFB6F8900000000, float %1912
  %1915 = fmul fast float %1914, 0x3FE8A23460000000
  %1916 = call float @dx.op.unary.f32(i32 7, float %1915)  ; Saturate(value)
  %1917 = call float @dx.op.binary.f32(i32 35, float %1914, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1918 = fmul fast float %1916, %1903
  %1919 = fmul fast float %1917, 0x3FF279A740000000
  %1920 = fadd fast float %1919, -1.000000e+00
  %1921 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1910, float %1785, float %1909, float %1910, float %1785)  ; Dot3(ax,ay,az,bx,by,bz)
  %1922 = call float @dx.op.unary.f32(i32 25, float %1921)  ; Rsqrt(value)
  %1923 = fmul fast float %1922, %1909
  %1924 = fmul fast float %1922, %1910
  %1925 = fmul fast float %1922, %1785
  %1926 = fmul fast float %1920, %1920
  %1927 = fsub fast float 1.000000e+00, %1926
  %1928 = fmul fast float %1917, 0x40005F8BE0000000
  %1929 = fsub fast float 0x400C5BF8A0000000, %1928
  %1930 = fdiv fast float %1918, %1929
  %1931 = fmul fast float %1930, 0x3FEE31C3C0000000
  %1932 = fmul fast float %1931, %1927
  %1933 = fmul fast float %1917, 0x3FDACB7480000000
  %1934 = fadd fast float %1933, 0xBFD7347680000000
  %1935 = fmul fast float %1934, %1930
  %1936 = fmul fast float %1935, %1927
  br label %1937

; <label>:1937                                    ; preds = %1908, %1880
  %1938 = phi float [ %1923, %1908 ], [ 0.000000e+00, %1880 ]
  %1939 = phi float [ %1924, %1908 ], [ 0.000000e+00, %1880 ]
  %1940 = phi float [ %1925, %1908 ], [ 0.000000e+00, %1880 ]
  %1941 = phi float [ %1932, %1908 ], [ 0.000000e+00, %1880 ]
  %1942 = phi float [ %1936, %1908 ], [ 0.000000e+00, %1880 ]
  %1943 = call float @dx.op.dot3.f32(i32 55, float %1938, float %1939, float %1940, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %1944 = fmul fast float %1943, 0x3FDF454380000000
  %1945 = fmul fast float %1943, %1943
  %1946 = fmul fast float %1945, 0x3FEE471020000000
  %1947 = fadd fast float %1946, 0xBFD42F6020000000
  %1948 = fmul fast float %1903, 0x3FD20DD760000000
  %1949 = fmul fast float %1947, %1942
  %1950 = fadd fast float %1949, %1948
  %1951 = fmul fast float %1944, %1941
  %1952 = fadd fast float %1950, %1951
  %1953 = fsub fast float %1950, %1951
  %1954 = call float @dx.op.dot3.f32(i32 55, float %1938, float %1939, float %1940, float %506, float %507, float %508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1955 = fmul fast float %1954, 0x3FDF454380000000
  %1956 = fmul fast float %1954, %1954
  %1957 = fmul fast float %1956, 0x3FEE471020000000
  %1958 = fadd fast float %1957, 0xBFD42F6020000000
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1903, float %1941, float %1942, float 0x3FD20DD760000000, float %1955, float %1958)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = call float @dx.op.binary.f32(i32 35, float %1838, float 0.000000e+00)  ; FMax(a,b)
  %1961 = call float @dx.op.binary.f32(i32 35, float %1895, float 0.000000e+00)  ; FMax(a,b)
  %1962 = call float @dx.op.binary.f32(i32 35, float %1952, float 0.000000e+00)  ; FMax(a,b)
  %1963 = call float @dx.op.binary.f32(i32 35, float %1839, float 0.000000e+00)  ; FMax(a,b)
  %1964 = call float @dx.op.binary.f32(i32 35, float %1896, float 0.000000e+00)  ; FMax(a,b)
  %1965 = call float @dx.op.binary.f32(i32 35, float %1953, float 0.000000e+00)  ; FMax(a,b)
  %1966 = call float @dx.op.binary.f32(i32 35, float %1845, float 0.000000e+00)  ; FMax(a,b)
  %1967 = call float @dx.op.binary.f32(i32 35, float %1902, float 0.000000e+00)  ; FMax(a,b)
  %1968 = call float @dx.op.binary.f32(i32 35, float %1959, float 0.000000e+00)  ; FMax(a,b)
  %1969 = fsub fast float %1159, %1960
  %1970 = fsub fast float %1160, %1961
  %1971 = fsub fast float %1161, %1962
  %1972 = fmul fast float %1969, %554
  %1973 = fmul fast float %1970, %554
  %1974 = fmul fast float %1971, %554
  %1975 = fadd fast float %1972, %1960
  %1976 = fadd fast float %1973, %1961
  %1977 = fadd fast float %1974, %1962
  %1978 = fsub fast float %1156, %1963
  %1979 = fsub fast float %1157, %1964
  %1980 = fsub fast float %1158, %1965
  %1981 = fmul fast float %1978, %554
  %1982 = fmul fast float %1979, %554
  %1983 = fmul fast float %1980, %554
  %1984 = fadd fast float %1981, %1963
  %1985 = fadd fast float %1982, %1964
  %1986 = fadd fast float %1983, %1965
  %1987 = fsub fast float %1153, %1966
  %1988 = fsub fast float %1154, %1967
  %1989 = fsub fast float %1155, %1968
  %1990 = fmul fast float %1987, %554
  %1991 = fmul fast float %1988, %554
  %1992 = fmul fast float %1989, %554
  %1993 = fadd fast float %1990, %1966
  %1994 = fadd fast float %1991, %1967
  %1995 = fadd fast float %1992, %1968
  br label %1996

; <label>:1996                                    ; preds = %1937, %1152
  %1997 = phi float [ %1993, %1937 ], [ %1153, %1152 ]
  %1998 = phi float [ %1994, %1937 ], [ %1154, %1152 ]
  %1999 = phi float [ %1995, %1937 ], [ %1155, %1152 ]
  %2000 = phi float [ %1984, %1937 ], [ %1156, %1152 ]
  %2001 = phi float [ %1985, %1937 ], [ %1157, %1152 ]
  %2002 = phi float [ %1986, %1937 ], [ %1158, %1152 ]
  %2003 = phi float [ %1975, %1937 ], [ %1159, %1152 ]
  %2004 = phi float [ %1976, %1937 ], [ %1160, %1152 ]
  %2005 = phi float [ %1977, %1937 ], [ %1161, %1152 ]
  %2006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.f32 %2006, 0
  %2008 = call float @dx.op.binary.f32(i32 36, float %471, float %2007)  ; FMin(a,b)
  %2009 = fsub fast float 1.000000e+00, %509
  %2010 = fmul fast float %2008, %2009
  %2011 = fsub fast float 1.000000e+00, %2010
  %2012 = bitcast float %2011 to i32
  %2013 = sub nsw i32 2129859010, %2012
  %2014 = bitcast i32 %2013 to float
  %2015 = call float @dx.op.binary.f32(i32 36, float %472, float %2007)  ; FMin(a,b)
  %2016 = fmul fast float %2015, %2009
  %2017 = fsub fast float 1.000000e+00, %2016
  %2018 = bitcast float %2017 to i32
  %2019 = sub nsw i32 2129859010, %2018
  %2020 = bitcast i32 %2019 to float
  %2021 = call float @dx.op.binary.f32(i32 36, float %473, float %2007)  ; FMin(a,b)
  %2022 = fmul fast float %2021, %2009
  %2023 = fsub fast float 1.000000e+00, %2022
  %2024 = bitcast float %2023 to i32
  %2025 = sub nsw i32 2129859010, %2024
  %2026 = bitcast i32 %2025 to float
  %2027 = fmul fast float %2003, %509
  %2028 = fmul fast float %2027, %2014
  %2029 = fmul fast float %2004, %509
  %2030 = fmul fast float %2029, %2020
  %2031 = fmul fast float %2005, %509
  %2032 = fmul fast float %2031, %2026
  %2033 = call float @dx.op.binary.f32(i32 36, float %480, float %2007)  ; FMin(a,b)
  %2034 = fmul fast float %2033, %2009
  %2035 = fsub fast float 1.000000e+00, %2034
  %2036 = bitcast float %2035 to i32
  %2037 = sub nsw i32 2129859010, %2036
  %2038 = bitcast i32 %2037 to float
  %2039 = call float @dx.op.binary.f32(i32 36, float %481, float %2007)  ; FMin(a,b)
  %2040 = fmul fast float %2039, %2009
  %2041 = fsub fast float 1.000000e+00, %2040
  %2042 = bitcast float %2041 to i32
  %2043 = sub nsw i32 2129859010, %2042
  %2044 = bitcast i32 %2043 to float
  %2045 = call float @dx.op.binary.f32(i32 36, float %498, float %2007)  ; FMin(a,b)
  %2046 = fmul fast float %2045, %2009
  %2047 = fsub fast float 1.000000e+00, %2046
  %2048 = bitcast float %2047 to i32
  %2049 = sub nsw i32 2129859010, %2048
  %2050 = bitcast i32 %2049 to float
  %2051 = fmul fast float %1997, %509
  %2052 = fmul fast float %2051, %2038
  %2053 = fmul fast float %1998, %509
  %2054 = fmul fast float %2053, %2044
  %2055 = fmul fast float %1999, %509
  %2056 = fmul fast float %2055, %2050
  %2057 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2030, float %2032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2058 = select i1 %119, float 0.000000e+00, float %2028
  %2059 = select i1 %119, float %2057, float %2030
  %2060 = select i1 %119, float 0.000000e+00, float %2032
  %2061 = call float @dx.op.dot3.f32(i32 55, float %2000, float %2001, float %2002, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2062 = select i1 %119, float 0.000000e+00, float %2000
  %2063 = select i1 %119, float %2061, float %2001
  %2064 = select i1 %119, float 0.000000e+00, float %2002
  %2065 = call float @dx.op.dot3.f32(i32 55, float %2052, float %2054, float %2056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2066 = select i1 %119, float 0.000000e+00, float %2052
  %2067 = select i1 %119, float %2065, float %2054
  %2068 = select i1 %119, float 0.000000e+00, float %2056
  %2069 = fmul fast float %500, 9.843750e-01
  %2070 = fmul fast float %291, 9.843750e-01
  %2071 = fadd fast float %2069, 7.812500e-03
  %2072 = fadd fast float %2070, 7.812500e-03
  %2073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %2071, float %2072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 2
  %2075 = extractvalue %dx.types.ResRet.f32 %2073, 3
  %2076 = fmul fast float %2074, %480
  %2077 = fmul fast float %2074, %481
  %2078 = fmul fast float %2074, %498
  %2079 = fadd fast float %2076, %2075
  %2080 = fadd fast float %2077, %2075
  %2081 = fadd fast float %2078, %2075
  %2082 = call float @dx.op.binary.f32(i32 35, float %2080, float %2081)  ; FMax(a,b)
  %2083 = call float @dx.op.binary.f32(i32 35, float %2079, float %2082)  ; FMax(a,b)
  %2084 = fsub fast float 1.000000e+00, %2083
  %2085 = fmul fast float %2079, %2066
  %2086 = fmul fast float %2080, %2067
  %2087 = fmul fast float %2081, %2068
  %2088 = fmul fast float %2062, %298
  %2089 = fmul fast float %2063, %299
  %2090 = fmul fast float %2064, %300
  %2091 = fadd fast float %2088, %2058
  %2092 = fmul fast float %2091, %2084
  %2093 = fadd fast float %2089, %2059
  %2094 = fmul fast float %2093, %2084
  %2095 = fadd fast float %2090, %2060
  %2096 = fmul fast float %2095, %2084
  %2097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2098 = extractvalue %dx.types.CBufRet.f32 %2097, 3
  %2099 = fcmp fast oeq float %2098, 0.000000e+00
  br i1 %2099, label %3039, label %2100

; <label>:2100                                    ; preds = %1996
  %2101 = extractvalue %dx.types.CBufRet.f32 %2097, 0
  %2102 = extractvalue %dx.types.CBufRet.f32 %2097, 1
  %2103 = extractvalue %dx.types.CBufRet.f32 %2097, 2
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2107 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = call float @dx.op.dot3.f32(i32 55, float %2105, float %2106, float %2107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2112 = select i1 %119, float %2109, float %2105
  %2113 = select i1 %119, float %2111, float %2106
  %2114 = select i1 %119, float %2110, float %2107
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 2
  %2117 = fmul fast float %2116, %279
  %2118 = fmul fast float %2116, %280
  %2119 = fmul fast float %2116, %281
  %2120 = fadd fast float %2117, %357
  %2121 = fadd fast float %2118, %358
  %2122 = fadd fast float %2119, %359
  %2123 = fcmp fast olt float %2098, 0.000000e+00
  br i1 %2123, label %2745, label %2124

; <label>:2124                                    ; preds = %2100
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.CBufRet.f32 %2125, 1
  %2128 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %2129 = extractvalue %dx.types.CBufRet.f32 %2125, 3
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.CBufRet.f32 %2130, 1
  %2133 = extractvalue %dx.types.CBufRet.f32 %2130, 2
  %2134 = extractvalue %dx.types.CBufRet.f32 %2130, 3
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.CBufRet.f32 %2135, 1
  %2138 = extractvalue %dx.types.CBufRet.f32 %2135, 2
  %2139 = extractvalue %dx.types.CBufRet.f32 %2135, 3
  %2140 = fmul fast float %2126, %2120
  %2141 = call float @dx.op.tertiary.f32(i32 46, float %2121, float %2127, float %2140)  ; FMad(a,b,c)
  %2142 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2128, float %2141)  ; FMad(a,b,c)
  %2143 = fadd fast float %2142, %2129
  %2144 = fmul fast float %2131, %2120
  %2145 = call float @dx.op.tertiary.f32(i32 46, float %2121, float %2132, float %2144)  ; FMad(a,b,c)
  %2146 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2133, float %2145)  ; FMad(a,b,c)
  %2147 = fadd fast float %2146, %2134
  %2148 = fmul fast float %2136, %2120
  %2149 = call float @dx.op.tertiary.f32(i32 46, float %2121, float %2137, float %2148)  ; FMad(a,b,c)
  %2150 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2138, float %2149)  ; FMad(a,b,c)
  %2151 = fadd fast float %2150, %2139
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 0
  %2154 = extractvalue %dx.types.CBufRet.f32 %2152, 1
  %2155 = extractvalue %dx.types.CBufRet.f32 %2152, 3
  %2156 = fmul fast float %2155, %2143
  %2157 = fmul fast float %2155, %2147
  %2158 = fadd fast float %2156, %2153
  %2159 = fadd fast float %2157, %2154
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2163 = extractvalue %dx.types.CBufRet.f32 %2160, 3
  %2164 = fmul fast float %2163, %2143
  %2165 = fmul fast float %2163, %2147
  %2166 = fadd fast float %2164, %2161
  %2167 = fadd fast float %2165, %2162
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 1
  %2170 = fsub fast float %2169, %2151
  %2171 = extractvalue %dx.types.CBufRet.f32 %2168, 2
  %2172 = fmul fast float %2170, %2171
  %2173 = fsub fast float 1.000000e+00, %2172
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2178 = fadd fast float %2177, %2175
  %2179 = fcmp fast ogt float %2178, 0.000000e+00
  br i1 %2179, label %2180, label %2204

; <label>:2180                                    ; preds = %2124
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.CBufRet.f32 %2181, 1
  %2184 = fsub fast float %2166, %2182
  %2185 = fsub fast float %2167, %2183
  %2186 = fcmp fast olt float %2184, 0.000000e+00
  %2187 = fcmp fast olt float %2185, 0.000000e+00
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2191 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2192 = extractvalue %dx.types.CBufRet.f32 %2188, 3
  %2193 = select i1 %2186, float %2189, float %2191
  %2194 = select i1 %2187, float %2190, float %2192
  %2195 = fmul fast float %2193, %2184
  %2196 = fmul fast float %2194, %2185
  %2197 = call float @dx.op.unary.f32(i32 6, float %2195)  ; FAbs(value)
  %2198 = call float @dx.op.unary.f32(i32 6, float %2196)  ; FAbs(value)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2200 = call float @dx.op.binary.f32(i32 35, float %2197, float %2198)  ; FMax(a,b)
  %2201 = fsub fast float %2199, %2200
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2203 = fmul fast float %2202, %2174
  br label %2204

; <label>:2204                                    ; preds = %2180, %2124
  %2205 = phi float [ %2203, %2180 ], [ 0.000000e+00, %2124 ]
  %2206 = extractvalue %dx.types.CBufRet.f32 %2152, 2
  %2207 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2208 = fadd fast float %2207, %2206
  %2209 = fcmp fast ogt float %2208, 0.000000e+00
  %2210 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  br i1 %2209, label %2211, label %2234

; <label>:2211                                    ; preds = %2204
  %2212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.CBufRet.f32 %2212, 1
  %2215 = fsub fast float %2158, %2213
  %2216 = fsub fast float %2159, %2214
  %2217 = fcmp fast olt float %2215, 0.000000e+00
  %2218 = fcmp fast olt float %2216, 0.000000e+00
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 0
  %2221 = extractvalue %dx.types.CBufRet.f32 %2219, 1
  %2222 = extractvalue %dx.types.CBufRet.f32 %2219, 2
  %2223 = extractvalue %dx.types.CBufRet.f32 %2219, 3
  %2224 = select i1 %2217, float %2220, float %2222
  %2225 = select i1 %2218, float %2221, float %2223
  %2226 = fmul fast float %2224, %2215
  %2227 = fmul fast float %2225, %2216
  %2228 = call float @dx.op.unary.f32(i32 6, float %2226)  ; FAbs(value)
  %2229 = call float @dx.op.unary.f32(i32 6, float %2227)  ; FAbs(value)
  %2230 = call float @dx.op.binary.f32(i32 35, float %2228, float %2229)  ; FMax(a,b)
  %2231 = fsub fast float %2210, %2230
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = fmul fast float %2232, %2174
  br label %2234

; <label>:2234                                    ; preds = %2211, %2204
  %2235 = phi float [ %2233, %2211 ], [ 0.000000e+00, %2204 ]
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 1
  %2238 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2241 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2242 = fsub fast float %2143, %2240
  %2243 = fsub fast float %2147, %2241
  %2244 = fcmp fast olt float %2242, 0.000000e+00
  %2245 = fcmp fast olt float %2243, 0.000000e+00
  %2246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2247 = extractvalue %dx.types.CBufRet.f32 %2246, 0
  %2248 = extractvalue %dx.types.CBufRet.f32 %2246, 1
  %2249 = extractvalue %dx.types.CBufRet.f32 %2246, 2
  %2250 = extractvalue %dx.types.CBufRet.f32 %2246, 3
  %2251 = select i1 %2244, float %2247, float %2249
  %2252 = select i1 %2245, float %2248, float %2250
  %2253 = fmul fast float %2251, %2242
  %2254 = fmul fast float %2252, %2243
  %2255 = call float @dx.op.unary.f32(i32 6, float %2253)  ; FAbs(value)
  %2256 = call float @dx.op.unary.f32(i32 6, float %2254)  ; FAbs(value)
  %2257 = call float @dx.op.binary.f32(i32 35, float %2255, float %2256)  ; FMax(a,b)
  %2258 = fsub fast float %2210, %2257
  %2259 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2260 = call float @dx.op.binary.f32(i32 36, float %2259, float %2238)  ; FMin(a,b)
  %2261 = fmul fast float %2260, %2174
  %2262 = fsub fast float %2235, %2261
  %2263 = fsub fast float %2205, %2235
  %2264 = fsub fast float %2263, %2261
  %2265 = call float @dx.op.binary.f32(i32 35, float %2235, float %2205)  ; FMax(a,b)
  %2266 = call float @dx.op.binary.f32(i32 35, float %2261, float %2265)  ; FMax(a,b)
  %2267 = fcmp fast olt float %2266, 1.000000e+00
  br i1 %2267, label %2268, label %2666, !dx.controlflow.hints !111

; <label>:2268                                    ; preds = %2234
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = fcmp fast une float %2270, 0.000000e+00
  br i1 %2271, label %2272, label %2666, !dx.controlflow.hints !112

; <label>:2272                                    ; preds = %2268
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2277 = extractvalue %dx.types.CBufRet.f32 %2273, 3
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.CBufRet.f32 %2278, 2
  %2282 = extractvalue %dx.types.CBufRet.f32 %2278, 3
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2286 = extractvalue %dx.types.CBufRet.f32 %2283, 2
  %2287 = extractvalue %dx.types.CBufRet.f32 %2283, 3
  %2288 = fmul fast float %2274, %2120
  %2289 = call float @dx.op.tertiary.f32(i32 46, float %2121, float %2275, float %2288)  ; FMad(a,b,c)
  %2290 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2276, float %2289)  ; FMad(a,b,c)
  %2291 = fadd fast float %2290, %2277
  %2292 = fmul fast float %2279, %2120
  %2293 = call float @dx.op.tertiary.f32(i32 46, float %2121, float %2280, float %2292)  ; FMad(a,b,c)
  %2294 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2281, float %2293)  ; FMad(a,b,c)
  %2295 = fadd fast float %2294, %2282
  %2296 = fmul fast float %2284, %2120
  %2297 = call float @dx.op.tertiary.f32(i32 46, float %2121, float %2285, float %2296)  ; FMad(a,b,c)
  %2298 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2286, float %2297)  ; FMad(a,b,c)
  %2299 = fadd fast float %2298, %2287
  %2300 = fcmp fast oge float %2291, 1.000000e+00
  %2301 = fcmp fast oge float %2295, 1.000000e+00
  %2302 = or i1 %2300, %2301
  %2303 = fcmp fast olt float %2291, 0.000000e+00
  %2304 = fcmp fast olt float %2295, 0.000000e+00
  %2305 = or i1 %2303, %2304
  %2306 = or i1 %2302, %2305
  br i1 %2306, label %2666, label %2307, !dx.controlflow.hints !113

; <label>:2307                                    ; preds = %2272
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.i32 %2312, 2
  %2314 = uitofp i32 %2313 to float
  %2315 = extractvalue %dx.types.CBufRet.i32 %2312, 3
  %2316 = uitofp i32 %2315 to float
  %2317 = extractvalue %dx.types.CBufRet.f32 %2308, 3
  %2318 = fmul fast float %2317, 2.000000e+00
  %2319 = fsub fast float %2291, %2309
  %2320 = fsub fast float %2295, %2310
  %2321 = fmul fast float %2318, %2319
  %2322 = fmul fast float %2318, %2320
  %2323 = fdiv fast float 1.000000e+00, %2103
  %2324 = fmul fast float %2322, %2323
  %2325 = call float @dx.op.unary.f32(i32 6, float %2324)  ; FAbs(value)
  %2326 = fmul fast float %2311, %2122
  %2327 = fmul fast float %2326, %2318
  %2328 = call float @dx.op.unary.f32(i32 6, float %2327)  ; FAbs(value)
  %2329 = call float @dx.op.unary.f32(i32 6, float %2321)  ; FAbs(value)
  %2330 = call float @dx.op.binary.f32(i32 35, float %2328, float %2325)  ; FMax(a,b)
  %2331 = call float @dx.op.binary.f32(i32 35, float %2329, float %2330)  ; FMax(a,b)
  %2332 = fmul fast float %2331, 2.000000e+00
  %2333 = call float @dx.op.unary.f32(i32 23, float %2332)  ; Log(value)
  %2334 = call float @dx.op.binary.f32(i32 35, float %2333, float %2314)  ; FMax(a,b)
  %2335 = call float @dx.op.unary.f32(i32 22, float %2334)  ; Frc(value)
  %2336 = fadd fast float %2335, 0xBFEA666660000000
  %2337 = fmul fast float %2336, 8.000000e+00
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2339 = call float @dx.op.unary.f32(i32 27, float %2334)  ; Round_ni(value)
  %2340 = fadd fast float %2339, %2338
  %2341 = call float @dx.op.binary.f32(i32 36, float %2340, float %2316)  ; FMin(a,b)
  %2342 = call float @dx.op.unary.f32(i32 27, float %2341)  ; Round_ni(value)
  %2343 = fsub fast float -0.000000e+00, %2342
  %2344 = call float @dx.op.unary.f32(i32 21, float %2343)  ; Exp(value)
  %2345 = fmul fast float %2344, %2318
  %2346 = fmul fast float %2345, %2291
  %2347 = fmul fast float %2345, %2295
  %2348 = fmul fast float %2346, 2.500000e-01
  %2349 = fmul fast float %2347, 2.500000e-01
  %2350 = fadd fast float %2348, 5.000000e-01
  %2351 = fadd fast float %2349, 5.000000e-01
  %2352 = fsub fast float %2316, %2314
  %2353 = fptoui float %2352 to i32
  %2354 = add i32 %2353, 320
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 %2354)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.CBufRet.f32 %2355, 1
  %2358 = fcmp fast une float %2341, %2316
  %2359 = fsub fast float %2291, %2356
  %2360 = fsub fast float %2295, %2357
  %2361 = call float @dx.op.unary.f32(i32 6, float %2359)  ; FAbs(value)
  %2362 = call float @dx.op.unary.f32(i32 6, float %2360)  ; FAbs(value)
  %2363 = fmul fast float %2361, %2345
  %2364 = fmul fast float %2362, %2345
  %2365 = fcmp fast olt float %2363, 1.000000e+00
  %2366 = fcmp fast olt float %2364, 1.000000e+00
  %2367 = and i1 %2365, %2366
  %2368 = or i1 %2358, %2367
  br i1 %2368, label %2369, label %2666, !dx.controlflow.hints !114

; <label>:2369                                    ; preds = %2307
  %2370 = fmul fast float %2347, 5.000000e-01
  %2371 = fmul fast float %2346, 5.000000e-01
  %2372 = fadd fast float %2370, 5.000000e-01
  %2373 = fadd fast float %2371, 5.000000e-01
  %2374 = sitofp i32 %2313 to float
  %2375 = fsub fast float %2341, %2374
  %2376 = call float @dx.op.unary.f32(i32 27, float %2375)  ; Round_ni(value)
  %2377 = call float @dx.op.unary.f32(i32 22, float %2341)  ; Frc(value)
  %2378 = call float @dx.op.unary.f32(i32 22, float %2373)  ; Frc(value)
  %2379 = call float @dx.op.unary.f32(i32 22, float %2372)  ; Frc(value)
  %2380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %33, float %2378, float %2379, float %2376, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.ResRet.f32 %2380, 1
  %2383 = extractvalue %dx.types.ResRet.f32 %2380, 2
  %2384 = extractvalue %dx.types.ResRet.f32 %2380, 3
  %2385 = fcmp fast ogt float %2377, 0.000000e+00
  br i1 %2385, label %2386, label %2407, !dx.controlflow.hints !115

; <label>:2386                                    ; preds = %2369
  %2387 = fadd fast float %2376, 1.000000e+00
  %2388 = call float @dx.op.unary.f32(i32 22, float %2350)  ; Frc(value)
  %2389 = call float @dx.op.unary.f32(i32 22, float %2351)  ; Frc(value)
  %2390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %33, float %2388, float %2389, float %2387, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.ResRet.f32 %2390, 1
  %2393 = extractvalue %dx.types.ResRet.f32 %2390, 2
  %2394 = extractvalue %dx.types.ResRet.f32 %2390, 3
  %2395 = fsub fast float %2391, %2381
  %2396 = fsub fast float %2392, %2382
  %2397 = fsub fast float %2393, %2383
  %2398 = fsub fast float %2394, %2384
  %2399 = fmul fast float %2395, %2377
  %2400 = fmul fast float %2396, %2377
  %2401 = fmul fast float %2397, %2377
  %2402 = fmul fast float %2398, %2377
  %2403 = fadd fast float %2399, %2381
  %2404 = fadd fast float %2400, %2382
  %2405 = fadd fast float %2401, %2383
  %2406 = fadd fast float %2402, %2384
  br label %2407

; <label>:2407                                    ; preds = %2386, %2369
  %2408 = phi float [ %2403, %2386 ], [ %2381, %2369 ]
  %2409 = phi float [ %2404, %2386 ], [ %2382, %2369 ]
  %2410 = phi float [ %2405, %2386 ], [ %2383, %2369 ]
  %2411 = phi float [ %2406, %2386 ], [ %2384, %2369 ]
  %2412 = fadd fast float %2408, -5.000000e-01
  %2413 = fadd fast float %2410, -5.000000e-01
  %2414 = fmul fast float %2412, 0xBFD5555560000000
  %2415 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2413, float %2414)  ; FMad(a,b,c)
  %2416 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2409, float 0.000000e+00)  ; FMad(a,b,c)
  %2417 = fadd fast float %2416, %2411
  %2418 = fmul fast float %2412, -7.500000e-01
  %2419 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2413, float %2418)  ; FMad(a,b,c)
  %2420 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2409, float 0.000000e+00)  ; FMad(a,b,c)
  %2421 = fadd fast float %2420, %2411
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 0
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 0
  %2426 = extractvalue %dx.types.CBufRet.f32 %2424, 1
  %2427 = extractvalue %dx.types.CBufRet.f32 %2424, 2
  %2428 = extractvalue %dx.types.CBufRet.f32 %2424, 3
  %2429 = fsub fast float %2425, %2415
  %2430 = fsub fast float %2426, %2417
  %2431 = fsub fast float %2427, %2419
  %2432 = fsub fast float %2428, %2421
  %2433 = fmul fast float %2429, %2423
  %2434 = fmul fast float %2430, %2423
  %2435 = fmul fast float %2431, %2423
  %2436 = fmul fast float %2432, %2423
  %2437 = fadd fast float %2433, %2415
  %2438 = fadd fast float %2434, %2417
  %2439 = fadd fast float %2435, %2419
  %2440 = fadd fast float %2436, %2421
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 536870911
  %2444 = uitofp i32 %2443 to float
  %2445 = fmul fast float %2444, %2291
  %2446 = fmul fast float %2444, %2295
  %2447 = fptoui float %2445 to i32
  %2448 = fptoui float %2446 to i32
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 31
  %2452 = lshr i32 %2447, %2451
  %2453 = lshr i32 %2448, %2451
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = and i32 %2455, 31
  %2457 = shl i32 1, %2456
  %2458 = call i32 @dx.op.binary.i32(i32 40, i32 %2457, i32 4)  ; UMin(a,b)
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = extractvalue %dx.types.ResRet.i32 %2459, 1
  %2462 = icmp eq i32 %2458, 0
  br i1 %2462, label %2504, label %2463

; <label>:2463                                    ; preds = %2407
  br label %2464

; <label>:2464                                    ; preds = %2492, %2463
  %2465 = phi i32 [ %2495, %2492 ], [ 0, %2463 ]
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = lshr i32 %2467, 16
  %2469 = and i32 %2468, 31
  %2470 = shl i32 %2453, %2469
  %2471 = add i32 %2470, %2452
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 31
  %2475 = shl i32 %2471, %2474
  %2476 = add i32 %2475, %2465
  %2477 = shl i32 %2476, 2
  %2478 = add i32 %2477, 32
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = icmp slt i32 %2480, 0
  %2482 = getelementptr [12 x float], [12 x float]* %76, i32 0, i32 %2465
  %2483 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %2465
  %2484 = bitcast float* %2482 to i32*
  %2485 = bitcast float* %2483 to i32*
  br i1 %2481, label %2486, label %2492

; <label>:2486                                    ; preds = %2464
  %2487 = and i32 %2480, 1073741823
  %2488 = add nuw nsw i32 %2487, 20
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = extractvalue %dx.types.ResRet.i32 %2489, 1
  br label %2492

; <label>:2492                                    ; preds = %2486, %2464
  %2493 = phi i32 [ %2490, %2486 ], [ %2460, %2464 ]
  %2494 = phi i32 [ %2491, %2486 ], [ %2461, %2464 ]
  store i32 %2493, i32* %2484, align 4
  store i32 %2494, i32* %2485, align 4
  %2495 = add nuw i32 %2465, 1
  %2496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2497 = extractvalue %dx.types.CBufRet.i32 %2496, 2
  %2498 = icmp eq i32 %2497, 0
  %2499 = icmp ugt i32 %2480, -1073741825
  %2500 = and i1 %2499, %2498
  %2501 = icmp ult i32 %2495, %2458
  %2502 = and i1 %2500, %2501
  br i1 %2502, label %2464, label %2503

; <label>:2503                                    ; preds = %2492
  br label %2504

; <label>:2504                                    ; preds = %2503, %2407
  %2505 = phi i32 [ 0, %2407 ], [ %2495, %2503 ]
  %2506 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2507 = fptoui float %2506 to i32
  %2508 = icmp eq i32 %2507, 0
  br i1 %2508, label %2560, label %2509

; <label>:2509                                    ; preds = %2504
  br label %2510

; <label>:2510                                    ; preds = %2555, %2509
  %2511 = phi i32 [ %2556, %2555 ], [ %2505, %2509 ]
  %2512 = phi i32 [ %2557, %2555 ], [ 0, %2509 ]
  %2513 = lshr i32 %2512, 2
  %2514 = and i32 %2512, 3
  %2515 = add nuw nsw i32 %2513, 83
  %2516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 %2515)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.i32 %2516, 0
  %2518 = extractvalue %dx.types.CBufRet.i32 %2516, 1
  %2519 = extractvalue %dx.types.CBufRet.i32 %2516, 2
  %2520 = extractvalue %dx.types.CBufRet.i32 %2516, 3
  %2521 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 0
  store i32 %2517, i32* %2521, align 4
  %2522 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 1
  store i32 %2518, i32* %2522, align 4
  %2523 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 2
  store i32 %2519, i32* %2523, align 4
  %2524 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 3
  store i32 %2520, i32* %2524, align 4
  %2525 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 %2514
  %2526 = load i32, i32* %2525, align 4, !tbaa !116, !noalias !118
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = lshr i32 %2528, 16
  %2530 = and i32 %2529, 31
  %2531 = shl i32 %2453, %2530
  %2532 = add i32 %2531, %2452
  %2533 = shl i32 %2532, 2
  %2534 = add i32 %2533, %2526
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = icmp eq i32 %2536, 0
  br i1 %2537, label %2555, label %2538

; <label>:2538                                    ; preds = %2510
  %2539 = icmp slt i32 %2536, 0
  %2540 = getelementptr [12 x float], [12 x float]* %76, i32 0, i32 %2511
  %2541 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %2511
  %2542 = bitcast float* %2540 to i32*
  %2543 = bitcast float* %2541 to i32*
  br i1 %2539, label %2544, label %2551

; <label>:2544                                    ; preds = %2538
  %2545 = and i32 %2536, 1073741823
  %2546 = add i32 %2526, 20
  %2547 = add i32 %2546, %2545
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = extractvalue %dx.types.ResRet.i32 %2548, 1
  br label %2551

; <label>:2551                                    ; preds = %2544, %2538
  %2552 = phi i32 [ %2549, %2544 ], [ %2460, %2538 ]
  %2553 = phi i32 [ %2550, %2544 ], [ %2461, %2538 ]
  store i32 %2552, i32* %2542, align 4
  store i32 %2553, i32* %2543, align 4
  %2554 = add i32 %2511, 1
  br label %2555

; <label>:2555                                    ; preds = %2551, %2510
  %2556 = phi i32 [ %2511, %2510 ], [ %2554, %2551 ]
  %2557 = add nuw i32 %2512, 1
  %2558 = icmp eq i32 %2557, %2507
  br i1 %2558, label %2559, label %2510

; <label>:2559                                    ; preds = %2555
  br label %2560

; <label>:2560                                    ; preds = %2559, %2504
  %2561 = phi i32 [ %2505, %2504 ], [ %2556, %2559 ]
  %2562 = icmp eq i32 %2561, 1
  %2563 = getelementptr [12 x float], [12 x float]* %76, i32 0, i32 0
  %2564 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  br i1 %2562, label %2565, label %2568

; <label>:2565                                    ; preds = %2560
  %2566 = load float, float* %2563, align 4
  %2567 = load float, float* %2564, align 4
  br label %2595

; <label>:2568                                    ; preds = %2560
  %2569 = load float, float* %2563, align 4
  %2570 = load float, float* %2564, align 4
  %2571 = fdiv fast float 1.000000e+00, %2570
  %2572 = fsub fast float %2569, %2571
  %2573 = icmp ugt i32 %2561, 1
  br i1 %2573, label %2574, label %2590

; <label>:2574                                    ; preds = %2568
  br label %2575

; <label>:2575                                    ; preds = %2575, %2574
  %2576 = phi float [ %2585, %2575 ], [ %2572, %2574 ]
  %2577 = phi float [ %2586, %2575 ], [ %2569, %2574 ]
  %2578 = phi i32 [ %2587, %2575 ], [ 1, %2574 ]
  %2579 = getelementptr [12 x float], [12 x float]* %76, i32 0, i32 %2578
  %2580 = load float, float* %2579, align 4
  %2581 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %2578
  %2582 = load float, float* %2581, align 4
  %2583 = fdiv fast float 1.000000e+00, %2582
  %2584 = fsub fast float %2580, %2583
  %2585 = call float @dx.op.binary.f32(i32 36, float %2576, float %2584)  ; FMin(a,b)
  %2586 = call float @dx.op.binary.f32(i32 35, float %2577, float %2580)  ; FMax(a,b)
  %2587 = add nuw i32 %2578, 1
  %2588 = icmp eq i32 %2587, %2561
  br i1 %2588, label %2589, label %2575

; <label>:2589                                    ; preds = %2575
  br label %2590

; <label>:2590                                    ; preds = %2589, %2568
  %2591 = phi float [ %2572, %2568 ], [ %2585, %2589 ]
  %2592 = phi float [ %2569, %2568 ], [ %2586, %2589 ]
  %2593 = fsub fast float %2592, %2591
  %2594 = fdiv fast float 1.000000e+00, %2593
  br label %2595

; <label>:2595                                    ; preds = %2590, %2565
  %2596 = phi float [ %2566, %2565 ], [ %2592, %2590 ]
  %2597 = phi float [ %2567, %2565 ], [ %2594, %2590 ]
  %2598 = fadd fast float %2299, %2596
  %2599 = fmul fast float %2598, %2597
  %2600 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2601 = fmul fast float %2600, 2.000000e+00
  %2602 = fsub fast float 1.000000e+00, %2601
  %2603 = fmul fast float %2437, %2437
  %2604 = fsub fast float %2438, %2603
  %2605 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2604)  ; FMax(a,b)
  %2606 = fdiv fast float 1.000000e+00, %2605
  %2607 = fmul fast float %2438, %2437
  %2608 = fsub fast float %2439, %2607
  %2609 = fsub fast float %2602, %2437
  %2610 = fmul fast float %2602, %2602
  %2611 = fsub fast float %2610, %2438
  %2612 = fmul fast float %2606, %2608
  %2613 = fmul fast float %2612, %2609
  %2614 = fsub fast float %2611, %2613
  %2615 = fmul fast float %2438, %2438
  %2616 = fsub fast float %2440, %2615
  %2617 = fmul fast float %2608, %2608
  %2618 = fmul fast float %2617, %2606
  %2619 = fsub fast float %2616, %2618
  %2620 = fdiv fast float %2614, %2619
  %2621 = fmul fast float %2620, %2608
  %2622 = fsub fast float %2609, %2621
  %2623 = fmul fast float %2622, %2606
  %2624 = fmul fast float %2623, %2437
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2620, %2438
  %2627 = fsub fast float %2625, %2626
  %2628 = fmul fast float %2623, %2623
  %2629 = fmul fast float %2620, 4.000000e+00
  %2630 = fmul fast float %2629, %2627
  %2631 = fsub fast float %2628, %2630
  %2632 = call float @dx.op.unary.f32(i32 24, float %2631)  ; Sqrt(value)
  %2633 = fcmp fast oge float %2623, 0.000000e+00
  %2634 = fsub fast float -0.000000e+00, %2632
  %2635 = select i1 %2633, float %2634, float %2632
  %2636 = fsub fast float %2635, %2623
  %2637 = fdiv fast float %2636, %2620
  %2638 = fdiv fast float %2627, %2636
  %2639 = fmul fast float %2637, 5.000000e-01
  %2640 = fmul fast float %2638, 2.000000e+00
  %2641 = select i1 %2633, float %2639, float %2640
  %2642 = select i1 %2633, float %2640, float %2639
  %2643 = call float @dx.op.binary.f32(i32 35, float %2641, float %2642)  ; FMax(a,b)
  %2644 = call float @dx.op.binary.f32(i32 36, float %2641, float %2642)  ; FMin(a,b)
  %2645 = fcmp fast ogt float %2602, %2643
  %2646 = fsub fast float %2602, %2644
  %2647 = fsub fast float %2602, %2643
  %2648 = fsub fast float %2643, %2644
  %2649 = select i1 %2645, float %2647, float %2648
  %2650 = fmul float %2646, %2649
  %2651 = select i1 %2645, float %2644, float %2602
  %2652 = fcmp fast ogt float %2602, %2644
  %2653 = fmul fast float %2651, %2643
  %2654 = fadd fast float %2651, %2643
  %2655 = fmul fast float %2654, %2437
  %2656 = fadd fast float %2653, %2438
  %2657 = fsub fast float %2656, %2655
  %2658 = fdiv fast float %2657, %2650
  %2659 = select i1 %2652, float %2658, float 0.000000e+00
  %2660 = fsub fast float 1.000000e+00, %2659
  %2661 = select i1 %2645, float %2660, float %2659
  %2662 = call float @dx.op.unary.f32(i32 7, float %2661)  ; Saturate(value)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2422, 3
  %2664 = fmul fast float %2663, %2662
  %2665 = fsub fast float 1.000000e+00, %2664
  br label %2666

; <label>:2666                                    ; preds = %2595, %2307, %2272, %2268, %2234
  %2667 = phi float [ 1.000000e+00, %2234 ], [ %2665, %2595 ], [ 1.000000e+00, %2272 ], [ 1.000000e+00, %2307 ], [ 1.000000e+00, %2268 ]
  %2668 = fcmp fast ogt float %2264, 0.000000e+00
  br i1 %2668, label %2669, label %2675, !dx.controlflow.hints !127

; <label>:2669                                    ; preds = %2666
  %2670 = fadd fast float %2177, %2151
  %2671 = call float @dx.op.binary.f32(i32 35, float %2670, float 0.000000e+00)  ; FMax(a,b)
  %2672 = fadd fast float %2671, 0x3F10000000000000
  %2673 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %35, float %2166, float %2167, float undef, float undef, i32 0, i32 0, i32 undef, float %2672)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2674 = extractvalue %dx.types.ResRet.f32 %2673, 0
  br label %2675

; <label>:2675                                    ; preds = %2669, %2666
  %2676 = phi float [ %2674, %2669 ], [ 1.000000e+00, %2666 ]
  %2677 = fcmp fast ogt float %2262, 0.000000e+00
  br i1 %2677, label %2678, label %2684, !dx.controlflow.hints !128

; <label>:2678                                    ; preds = %2675
  %2679 = fadd fast float %2207, %2151
  %2680 = call float @dx.op.binary.f32(i32 35, float %2679, float 0.000000e+00)  ; FMax(a,b)
  %2681 = fadd fast float %2680, 0x3F10000000000000
  %2682 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %35, float %2158, float %2159, float undef, float undef, i32 0, i32 0, i32 undef, float %2681)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2683 = extractvalue %dx.types.ResRet.f32 %2682, 0
  br label %2684

; <label>:2684                                    ; preds = %2678, %2675
  %2685 = phi float [ %2683, %2678 ], [ 1.000000e+00, %2675 ]
  %2686 = fcmp fast ogt float %2261, 0.000000e+00
  br i1 %2686, label %2687, label %2694, !dx.controlflow.hints !129

; <label>:2687                                    ; preds = %2684
  %2688 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2689 = fadd fast float %2688, %2151
  %2690 = call float @dx.op.binary.f32(i32 35, float %2689, float 0.000000e+00)  ; FMax(a,b)
  %2691 = fadd fast float %2690, 0x3F10000000000000
  %2692 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %35, float %2143, float %2147, float undef, float undef, i32 0, i32 0, i32 undef, float %2691)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2693 = extractvalue %dx.types.ResRet.f32 %2692, 0
  br label %2694

; <label>:2694                                    ; preds = %2687, %2684
  %2695 = phi float [ %2693, %2687 ], [ 1.000000e+00, %2684 ]
  %2696 = fsub fast float %2676, %2667
  %2697 = fmul fast float %2696, %2205
  %2698 = fadd fast float %2697, %2667
  %2699 = fsub fast float %2685, %2698
  %2700 = fmul fast float %2699, %2235
  %2701 = fadd fast float %2700, %2698
  %2702 = fsub fast float %2695, %2701
  %2703 = fmul fast float %2702, %2261
  %2704 = fadd fast float %2703, %2701
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 2
  %2707 = fcmp fast ogt float %2706, 0.000000e+00
  br i1 %2707, label %2708, label %2745, !dx.controlflow.hints !130

; <label>:2708                                    ; preds = %2694
  %2709 = fcmp fast ugt float %2706, 0.000000e+00
  br i1 %2709, label %2710, label %2742

; <label>:2710                                    ; preds = %2708
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.CBufRet.f32 %2711, 2
  %2715 = extractvalue %dx.types.CBufRet.f32 %2711, 3
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.CBufRet.f32 %2716, 2
  %2720 = extractvalue %dx.types.CBufRet.f32 %2716, 3
  %2721 = extractvalue %dx.types.CBufRet.f32 %2705, 0
  %2722 = extractvalue %dx.types.CBufRet.f32 %2705, 1
  %2723 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %2724 = fadd fast float %511, %2120
  %2725 = fadd fast float %512, %2121
  %2726 = fadd fast float %2723, %2122
  %2727 = fmul fast float %2724, %2712
  %2728 = call float @dx.op.tertiary.f32(i32 46, float %2713, float %2725, float %2727)  ; FMad(a,b,c)
  %2729 = call float @dx.op.tertiary.f32(i32 46, float %2714, float %2726, float %2728)  ; FMad(a,b,c)
  %2730 = fadd fast float %2729, %2715
  %2731 = fmul fast float %2724, %2717
  %2732 = call float @dx.op.tertiary.f32(i32 46, float %2718, float %2725, float %2731)  ; FMad(a,b,c)
  %2733 = call float @dx.op.tertiary.f32(i32 46, float %2719, float %2726, float %2732)  ; FMad(a,b,c)
  %2734 = fadd fast float %2733, %2720
  %2735 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %31, float %2730, float %2734, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = fmul fast float %2736, %2722
  %2738 = fadd fast float %2737, %2721
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = fmul fast float %2739, %2706
  %2741 = fsub fast float 1.000000e+00, %2740
  br label %2742

; <label>:2742                                    ; preds = %2710, %2708
  %2743 = phi float [ %2741, %2710 ], [ 1.000000e+00, %2708 ]
  %2744 = fmul fast float %2743, %2704
  br label %2745

; <label>:2745                                    ; preds = %2742, %2694, %2100
  %2746 = phi float [ 1.000000e+00, %2100 ], [ %2744, %2742 ], [ %2704, %2694 ]
  %2747 = call float @dx.op.binary.f32(i32 36, float %2746, float %2746)  ; FMin(a,b)
  %2748 = call float @dx.op.binary.f32(i32 36, float %2746, float %2747)  ; FMin(a,b)
  %2749 = fcmp fast ogt float %2748, 0.000000e+00
  br i1 %2749, label %2750, label %2907, !dx.controlflow.hints !131

; <label>:2750                                    ; preds = %2745
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.CBufRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.CBufRet.f32 %2751, 2
  %2755 = extractvalue %dx.types.CBufRet.f32 %2751, 3
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.CBufRet.f32 %2756, 2
  %2760 = extractvalue %dx.types.CBufRet.f32 %2756, 3
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.CBufRet.f32 %2761, 1
  %2764 = extractvalue %dx.types.CBufRet.f32 %2761, 2
  %2765 = extractvalue %dx.types.CBufRet.f32 %2761, 3
  %2766 = fmul fast float %2752, %2120
  %2767 = call float @dx.op.tertiary.f32(i32 46, float %2121, float %2753, float %2766)  ; FMad(a,b,c)
  %2768 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2754, float %2767)  ; FMad(a,b,c)
  %2769 = fadd fast float %2768, %2755
  %2770 = fmul fast float %2757, %2120
  %2771 = call float @dx.op.tertiary.f32(i32 46, float %2121, float %2758, float %2770)  ; FMad(a,b,c)
  %2772 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2759, float %2771)  ; FMad(a,b,c)
  %2773 = fadd fast float %2772, %2760
  %2774 = fmul fast float %2762, %2120
  %2775 = call float @dx.op.tertiary.f32(i32 46, float %2121, float %2763, float %2774)  ; FMad(a,b,c)
  %2776 = call float @dx.op.tertiary.f32(i32 46, float %2122, float %2764, float %2775)  ; FMad(a,b,c)
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.CBufRet.f32 %2777, 1
  %2780 = extractvalue %dx.types.CBufRet.f32 %2777, 3
  %2781 = fmul fast float %2780, %2769
  %2782 = fmul fast float %2780, %2773
  %2783 = fadd fast float %2781, %2778
  %2784 = fadd fast float %2782, %2779
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = fsub fast float %2783, %2786
  %2789 = fsub fast float %2784, %2787
  %2790 = fcmp fast olt float %2788, 0.000000e+00
  %2791 = fcmp fast olt float %2789, 0.000000e+00
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = extractvalue %dx.types.CBufRet.f32 %2792, 3
  %2797 = select i1 %2790, float %2793, float %2795
  %2798 = select i1 %2791, float %2794, float %2796
  %2799 = fmul fast float %2797, %2788
  %2800 = fmul fast float %2798, %2789
  %2801 = call float @dx.op.unary.f32(i32 6, float %2799)  ; FAbs(value)
  %2802 = call float @dx.op.unary.f32(i32 6, float %2800)  ; FAbs(value)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2804 = call float @dx.op.binary.f32(i32 35, float %2801, float %2802)  ; FMax(a,b)
  %2805 = fsub fast float %2803, %2804
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2807 = fcmp fast ogt float %2806, 0.000000e+00
  br i1 %2807, label %2808, label %2849, !dx.controlflow.hints !132

; <label>:2808                                    ; preds = %2750
  %2809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %2783, float %2784, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2810 = extractvalue %dx.types.ResRet.f32 %2809, 1
  %2811 = fcmp fast ogt float %2810, 0.000000e+00
  br i1 %2811, label %2812, label %2845

; <label>:2812                                    ; preds = %2808
  %2813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %34, float %2783, float %2784, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2814 = extractvalue %dx.types.ResRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.ResRet.f32 %2813, 1
  %2816 = extractvalue %dx.types.ResRet.f32 %2813, 2
  %2817 = extractvalue %dx.types.ResRet.f32 %2813, 3
  %2818 = fsub fast float 1.000000e+00, %2765
  %2819 = fsub fast float %2818, %2776
  %2820 = fmul fast float %2819, 0x400921FB60000000
  %2821 = fadd fast float %2820, 0x3FF921FB60000000
  %2822 = call float @dx.op.unary.f32(i32 13, float %2821)  ; Sin(value)
  %2823 = fadd fast float %2822, -1.000000e+00
  %2824 = fmul fast float %2823, 0x3FD45F3060000000
  %2825 = fmul fast float %2819, 0x401921FB60000000
  %2826 = fadd fast float %2825, 0x400921FB60000000
  %2827 = call float @dx.op.unary.f32(i32 13, float %2826)  ; Sin(value)
  %2828 = fadd fast float %2827, 0x3E7777A5C0000000
  %2829 = fmul fast float %2828, 0x3FC45F3060000000
  %2830 = fmul fast float %2819, 0x4022D97C80000000
  %2831 = fadd fast float %2830, 0x4012D97C80000000
  %2832 = call float @dx.op.unary.f32(i32 13, float %2831)  ; Sin(value)
  %2833 = fadd fast float %2832, 1.000000e+00
  %2834 = fmul fast float %2833, 0x3FBB2995E0000000
  %2835 = fmul fast float %2819, 0x402921FB60000000
  %2836 = fadd fast float %2835, 0x401921FB60000000
  %2837 = call float @dx.op.unary.f32(i32 13, float %2836)  ; Sin(value)
  %2838 = fadd fast float %2837, 0xBE8777A5C0000000
  %2839 = fmul fast float %2838, 0x3FB45F3060000000
  %2840 = call float @dx.op.dot4.f32(i32 56, float %2814, float %2815, float %2816, float %2817, float %2824, float %2829, float %2834, float %2839)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2841 = fmul fast float %2840, 0xBFF7154760000000
  %2842 = call float @dx.op.unary.f32(i32 21, float %2841)  ; Exp(value)
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2844 = fadd float %2843, -1.000000e+00
  br label %2845

; <label>:2845                                    ; preds = %2812, %2808
  %2846 = phi float [ %2844, %2812 ], [ 0.000000e+00, %2808 ]
  %2847 = fmul fast float %2846, %2806
  %2848 = fadd fast float %2847, 1.000000e+00
  br label %2849

; <label>:2849                                    ; preds = %2845, %2750
  %2850 = phi float [ %2848, %2845 ], [ 1.000000e+00, %2750 ]
  %2851 = fmul fast float %2850, %2746
  %2852 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %2853 = fadd fast float %511, %357
  %2854 = fadd fast float %512, %358
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 1
  %2857 = fsub fast float -0.000000e+00, %2853
  %2858 = fsub fast float -0.000000e+00, %2854
  %2859 = fsub fast float %489, %2852
  %2860 = fadd fast float %2859, %2856
  %2861 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2857, float %2858, float %2860)  ; Dot3(ax,ay,az,bx,by,bz)
  %2862 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2101, float %2102, float %2103)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = fdiv fast float 1.000000e+00, %2862
  %2864 = fmul fast float %2863, %2861
  %2865 = fmul fast float %2101, %2864
  %2866 = fmul fast float %2102, %2864
  %2867 = fadd fast float %2865, %2853
  %2868 = fadd fast float %2866, %2854
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.CBufRet.f32 %2869, 1
  %2872 = fsub fast float %2867, %2870
  %2873 = fsub fast float %2868, %2871
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 2
  %2876 = extractvalue %dx.types.CBufRet.f32 %2874, 3
  %2877 = fmul fast float %2872, %2875
  %2878 = fmul fast float %2873, %2876
  %2879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2880 = extractvalue %dx.types.CBufRet.i32 %2879, 3
  %2881 = icmp eq i32 %2880, 0
  br i1 %2881, label %2887, label %2882

; <label>:2882                                    ; preds = %2849
  %2883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %33, float %2877, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.ResRet.f32 %2883, 1
  %2886 = extractvalue %dx.types.ResRet.f32 %2883, 2
  br label %2892

; <label>:2887                                    ; preds = %2849
  %2888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %34, float %2877, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2889 = extractvalue %dx.types.ResRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.ResRet.f32 %2888, 1
  %2891 = extractvalue %dx.types.ResRet.f32 %2888, 2
  br label %2892

; <label>:2892                                    ; preds = %2887, %2882
  %2893 = phi float [ %2884, %2882 ], [ %2889, %2887 ]
  %2894 = phi float [ %2885, %2882 ], [ %2890, %2887 ]
  %2895 = phi float [ %2886, %2882 ], [ %2891, %2887 ]
  %2896 = extractvalue %dx.types.CBufRet.f32 %2855, 2
  %2897 = fmul fast float %2896, %2893
  %2898 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2899 = fsub fast float %2864, %2898
  %2900 = fsub fast float %2899, %2897
  %2901 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2900)  ; FMax(a,b)
  %2902 = fmul fast float %2901, %2894
  %2903 = call float @dx.op.binary.f32(i32 36, float %2895, float %2902)  ; FMin(a,b)
  %2904 = fmul fast float %2903, 0xBFF7154760000000
  %2905 = call float @dx.op.unary.f32(i32 21, float %2904)  ; Exp(value)
  %2906 = fmul fast float %2851, %2905
  br label %2907

; <label>:2907                                    ; preds = %2892, %2745
  %2908 = phi float [ %2906, %2892 ], [ %2746, %2745 ]
  %2909 = call float @dx.op.binary.f32(i32 36, float %2908, float %2908)  ; FMin(a,b)
  %2910 = call float @dx.op.binary.f32(i32 36, float %2908, float %2909)  ; FMin(a,b)
  %2911 = fcmp fast ogt float %2910, 0.000000e+00
  br i1 %2911, label %2912, label %3039, !dx.controlflow.hints !133

; <label>:2912                                    ; preds = %2907
  %2913 = fmul fast float %2908, %2112
  %2914 = fmul fast float %2908, %2113
  %2915 = fmul fast float %2908, %2114
  %2916 = fsub fast float %2101, %492
  %2917 = fsub fast float %2102, %493
  %2918 = fsub fast float %2103, %494
  %2919 = call float @dx.op.dot3.f32(i32 55, float %2916, float %2917, float %2918, float %2916, float %2917, float %2918)  ; Dot3(ax,ay,az,bx,by,bz)
  %2920 = call float @dx.op.unary.f32(i32 25, float %2919)  ; Rsqrt(value)
  %2921 = fmul fast float %2920, %2916
  %2922 = fmul fast float %2920, %2917
  %2923 = fmul fast float %2920, %2918
  %2924 = call float @dx.op.dot3.f32(i32 55, float %2101, float %2102, float %2103, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %2925 = call float @dx.op.dot3.f32(i32 55, float %495, float %496, float %497, float %2921, float %2922, float %2923)  ; Dot3(ax,ay,az,bx,by,bz)
  %2926 = call float @dx.op.unary.f32(i32 7, float %2924)  ; Saturate(value)
  %2927 = fmul fast float %2926, %2926
  %2928 = fmul fast float %2927, 0x47DE623840000000
  %2929 = call float @dx.op.unary.f32(i32 7, float %2928)  ; Saturate(value)
  %2930 = fmul fast float %2929, %2926
  %2931 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %2921, float %2922, float %2923)  ; Dot3(ax,ay,az,bx,by,bz)
  %2932 = fmul fast float %2931, %2931
  %2933 = call float @dx.op.unary.f32(i32 6, float %2924)  ; FAbs(value)
  %2934 = fsub fast float 1.000000e+00, %291
  %2935 = call float @dx.op.binary.f32(i32 35, float %2934, float 0x3F847AE140000000)  ; FMax(a,b)
  %2936 = fmul fast float %2935, %2935
  %2937 = fmul fast float %2936, %2936
  %2938 = fsub fast float 1.000000e+00, %2937
  %2939 = fmul fast float %500, %500
  %2940 = fmul fast float %2939, %2938
  %2941 = fadd fast float %2940, %2937
  %2942 = bitcast float %2941 to i32
  %2943 = ashr i32 %2942, 1
  %2944 = add nsw i32 %2943, 532487669
  %2945 = bitcast i32 %2944 to float
  %2946 = fadd fast float %2945, %500
  %2947 = fmul fast float %2937, %2932
  %2948 = fsub fast float 1.000000e+00, %2932
  %2949 = fadd fast float %2948, %2947
  %2950 = fmul fast float %2933, %2933
  %2951 = fmul fast float %2950, %2938
  %2952 = fadd fast float %2951, %2937
  %2953 = bitcast float %2952 to i32
  %2954 = ashr i32 %2953, 1
  %2955 = add nsw i32 %2954, 532487669
  %2956 = bitcast i32 %2955 to float
  %2957 = fadd fast float %2956, %2933
  %2958 = fmul fast float %2949, %2949
  %2959 = fmul fast float %2958, %2946
  %2960 = fmul fast float %2959, %2957
  %2961 = fdiv fast float 0x3FF0A00000000000, %2960
  %2962 = fmul fast float %2961, %2937
  %2963 = call float @dx.op.unary.f32(i32 6, float %2925)  ; FAbs(value)
  %2964 = fsub fast float 1.000000e+00, %2963
  %2965 = bitcast float %2964 to i32
  %2966 = sitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 5.000000e+00
  %2968 = fadd fast float %2967, 0xC1EFBF8940000000
  %2969 = fptosi float %2968 to i32
  %2970 = bitcast i32 %2969 to float
  %2971 = fsub fast float 1.000000e+00, %480
  %2972 = fsub fast float 1.000000e+00, %481
  %2973 = fsub fast float 1.000000e+00, %498
  %2974 = fmul fast float %2970, %2971
  %2975 = fmul fast float %2970, %2972
  %2976 = fmul fast float %2970, %2973
  %2977 = fadd fast float %2974, %480
  %2978 = fadd fast float %2975, %481
  %2979 = fadd fast float %2976, %498
  %2980 = fmul fast float %2924, 9.843750e-01
  %2981 = fadd fast float %2980, 7.812500e-03
  %2982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %2981, float %2072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 3
  %2985 = fmul fast float %2983, %480
  %2986 = fmul fast float %2983, %481
  %2987 = fmul fast float %2983, %498
  %2988 = fadd fast float %2985, %2984
  %2989 = fadd fast float %2986, %2984
  %2990 = fadd fast float %2987, %2984
  %2991 = call float @dx.op.binary.f32(i32 35, float %2989, float %2990)  ; FMax(a,b)
  %2992 = call float @dx.op.binary.f32(i32 35, float %2988, float %2991)  ; FMax(a,b)
  %2993 = fsub fast float 1.000000e+00, %2992
  %2994 = fsub fast float -0.000000e+00, %279
  %2995 = fsub fast float -0.000000e+00, %280
  %2996 = fsub fast float -0.000000e+00, %281
  %2997 = call float @dx.op.dot3.f32(i32 55, float %2101, float %2102, float %2103, float %2994, float %2995, float %2996)  ; Dot3(ax,ay,az,bx,by,bz)
  %2998 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %2999 = fmul fast float %2998, 9.843750e-01
  %3000 = fadd fast float %2999, 7.812500e-03
  %3001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %3000, float %2072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3002 = extractvalue %dx.types.ResRet.f32 %3001, 2
  %3003 = extractvalue %dx.types.ResRet.f32 %3001, 3
  %3004 = fmul fast float %3002, %480
  %3005 = fmul fast float %3002, %481
  %3006 = fmul fast float %3002, %498
  %3007 = fadd fast float %3004, %3003
  %3008 = fadd fast float %3005, %3003
  %3009 = fadd fast float %3006, %3003
  %3010 = call float @dx.op.binary.f32(i32 35, float %3008, float %3009)  ; FMax(a,b)
  %3011 = call float @dx.op.binary.f32(i32 35, float %3007, float %3010)  ; FMax(a,b)
  %3012 = fsub fast float 1.000000e+00, %3011
  %3013 = fmul fast float %3012, %2998
  %3014 = fmul fast float %3013, %298
  %3015 = fmul fast float %3013, %299
  %3016 = fmul fast float %3013, %300
  %3017 = fmul fast float %2993, %2930
  %3018 = fadd fast float %3014, %3017
  %3019 = fadd fast float %3015, %3017
  %3020 = fadd fast float %3016, %3017
  %3021 = fmul fast float %3018, %2913
  %3022 = fmul fast float %3019, %2914
  %3023 = fmul fast float %3020, %2915
  %3024 = fadd fast float %3021, %2092
  %3025 = fadd fast float %3022, %2094
  %3026 = fadd fast float %3023, %2096
  %3027 = fmul fast float %2930, %2913
  %3028 = fmul fast float %3027, %2962
  %3029 = fmul fast float %3028, %2977
  %3030 = fmul fast float %2930, %2914
  %3031 = fmul fast float %3030, %2962
  %3032 = fmul fast float %3031, %2978
  %3033 = fmul fast float %2930, %2915
  %3034 = fmul fast float %3033, %2962
  %3035 = fmul fast float %3034, %2979
  %3036 = fadd fast float %3029, %2085
  %3037 = fadd fast float %3032, %2086
  %3038 = fadd fast float %3035, %2087
  br label %3039

; <label>:3039                                    ; preds = %2912, %2907, %1996
  %3040 = phi float [ %2085, %1996 ], [ %2085, %2907 ], [ %3036, %2912 ]
  %3041 = phi float [ %2086, %1996 ], [ %2086, %2907 ], [ %3037, %2912 ]
  %3042 = phi float [ %2087, %1996 ], [ %2087, %2907 ], [ %3038, %2912 ]
  %3043 = phi float [ %2092, %1996 ], [ %2092, %2907 ], [ %3024, %2912 ]
  %3044 = phi float [ %2094, %1996 ], [ %2094, %2907 ], [ %3025, %2912 ]
  %3045 = phi float [ %2096, %1996 ], [ %2096, %2907 ], [ %3026, %2912 ]
  %3046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.i32 %3046, 0
  %3048 = icmp eq i32 %3047, 0
  br i1 %3048, label %3547, label %3049

; <label>:3049                                    ; preds = %3039
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %3052 = extractvalue %dx.types.CBufRet.f32 %3050, 3
  %3053 = fmul fast float %3051, %82
  %3054 = fmul fast float %3052, %83
  %3055 = fptoui float %3053 to i32
  %3056 = fptoui float %3054 to i32
  %3057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3058 = extractvalue %dx.types.CBufRet.f32 %3057, 0
  %3059 = extractvalue %dx.types.CBufRet.f32 %3057, 2
  %3060 = extractvalue %dx.types.CBufRet.f32 %3057, 3
  %3061 = fadd fast float %323, -4.000000e+00
  %3062 = call float @dx.op.binary.f32(i32 35, float %3061, float 0.000000e+00)  ; FMax(a,b)
  %3063 = fadd fast float %3062, %3058
  %3064 = fmul fast float %3063, %3059
  %3065 = call float @dx.op.unary.f32(i32 23, float %3064)  ; Log(value)
  %3066 = fmul fast float %3065, %3060
  %3067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3068 = extractvalue %dx.types.CBufRet.f32 %3067, 2
  %3069 = fmul fast float %3066, %3068
  %3070 = call float @dx.op.unary.f32(i32 7, float %3069)  ; Saturate(value)
  %3071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.i32 %3071, 1
  %3073 = add i32 %3072, -1
  %3074 = uitofp i32 %3072 to float
  %3075 = fmul fast float %3074, %3070
  %3076 = fptoui float %3075 to i32
  %3077 = call i32 @dx.op.binary.i32(i32 40, i32 %3076, i32 %3073)  ; UMin(a,b)
  %3078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3079 = extractvalue %dx.types.CBufRet.i32 %3078, 2
  %3080 = extractvalue %dx.types.CBufRet.i32 %3078, 3
  %3081 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3056, i32 %3079, i32 %3055)  ; UMad(a,b,c)
  %3082 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3077, i32 %3080, i32 %3081)  ; UMad(a,b,c)
  %3083 = add nsw i32 %3047, -1
  %3084 = call i32 @dx.op.binary.i32(i32 37, i32 %3083, i32 0)  ; IMax(a,b)
  %3085 = call float @dx.op.binary.f32(i32 35, float %323, float 0.000000e+00)  ; FMax(a,b)
  %3086 = fptoui float %3085 to i32
  %3087 = lshr i32 %3086, 5
  %3088 = call i32 @dx.op.binary.i32(i32 40, i32 %3087, i32 8191)  ; UMin(a,b)
  %3089 = shl i32 %3088, 2
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = lshr i32 %3091, 16
  %3093 = and i32 %3091, 65535
  %3094 = lshr i32 %3091, 21
  %3095 = lshr i32 %3093, 5
  %3096 = call i32 @dx.op.binary.i32(i32 40, i32 %3095, i32 %3084)  ; UMin(a,b)
  %3097 = icmp ugt i32 %3094, %3096
  br i1 %3097, label %3547, label %3098

; <label>:3098                                    ; preds = %3049
  br label %3099

; <label>:3099                                    ; preds = %3537, %3098
  %3100 = phi i32 [ %3544, %3537 ], [ %3094, %3098 ]
  %3101 = phi float [ %3538, %3537 ], [ %3040, %3098 ]
  %3102 = phi float [ %3539, %3537 ], [ %3041, %3098 ]
  %3103 = phi float [ %3540, %3537 ], [ %3042, %3098 ]
  %3104 = phi float [ %3541, %3537 ], [ %3043, %3098 ]
  %3105 = phi float [ %3542, %3537 ], [ %3044, %3098 ]
  %3106 = phi float [ %3543, %3537 ], [ %3045, %3098 ]
  %3107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3108 = extractvalue %dx.types.CBufRet.i32 %3107, 0
  %3109 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3082, i32 %3108, i32 %3100)  ; UMad(a,b,c)
  %3110 = shl i32 %3109, 2
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = shl i32 %3100, 5
  %3114 = sub nsw i32 %3092, %3113
  %3115 = call i32 @dx.op.binary.i32(i32 37, i32 %3114, i32 0)  ; IMax(a,b)
  %3116 = call i32 @dx.op.binary.i32(i32 38, i32 %3115, i32 31)  ; IMin(a,b)
  %3117 = sub nsw i32 1, %3092
  %3118 = add nsw i32 %3117, %3093
  %3119 = call i32 @dx.op.binary.i32(i32 37, i32 %3118, i32 0)  ; IMax(a,b)
  %3120 = call i32 @dx.op.binary.i32(i32 38, i32 %3119, i32 32)  ; IMin(a,b)
  %3121 = and i32 %3120, 31
  %3122 = shl i32 -1, %3121
  %3123 = xor i32 %3122, -1
  %3124 = and i32 %3116, 31
  %3125 = shl i32 %3123, %3124
  %3126 = icmp eq i32 %3120, 32
  %3127 = select i1 %3126, i32 -1, i32 %3125
  %3128 = and i32 %3127, %3112
  %3129 = icmp eq i32 %3128, 0
  br i1 %3129, label %3537, label %3130

; <label>:3130                                    ; preds = %3099
  br label %3131

; <label>:3131                                    ; preds = %3265, %3130
  %3132 = phi i32 [ %3143, %3265 ], [ %3128, %3130 ]
  %3133 = phi float [ %3266, %3265 ], [ %3101, %3130 ]
  %3134 = phi float [ %3267, %3265 ], [ %3102, %3130 ]
  %3135 = phi float [ %3268, %3265 ], [ %3103, %3130 ]
  %3136 = phi float [ %3269, %3265 ], [ %3104, %3130 ]
  %3137 = phi float [ %3270, %3265 ], [ %3105, %3130 ]
  %3138 = phi float [ %3271, %3265 ], [ %3106, %3130 ]
  %3139 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3132)  ; FirstbitLo(value)
  %3140 = add i32 %3139, %3113
  %3141 = and i32 %3139, 31
  %3142 = shl i32 1, %3141
  %3143 = xor i32 %3142, %3132
  %3144 = mul i32 %3140, 112
  %3145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.f32 %3145, 0
  %3147 = extractvalue %dx.types.ResRet.f32 %3145, 1
  %3148 = extractvalue %dx.types.ResRet.f32 %3145, 2
  %3149 = or i32 %3144, 12
  %3150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = add i32 %3144, 16
  %3153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.f32 %3153, 0
  %3155 = extractvalue %dx.types.ResRet.f32 %3153, 1
  %3156 = extractvalue %dx.types.ResRet.f32 %3153, 2
  %3157 = add i32 %3144, 28
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %3144, 44
  %3161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  %3163 = add i32 %3144, 48
  %3164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.ResRet.f32 %3164, 1
  %3167 = extractvalue %dx.types.ResRet.f32 %3164, 2
  %3168 = extractvalue %dx.types.ResRet.f32 %3164, 3
  %3169 = add i32 %3144, 64
  %3170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.f32 %3170, 0
  %3172 = extractvalue %dx.types.ResRet.f32 %3170, 1
  %3173 = extractvalue %dx.types.ResRet.f32 %3170, 2
  %3174 = extractvalue %dx.types.ResRet.f32 %3170, 3
  %3175 = add i32 %3144, 80
  %3176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3175, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.f32 %3176, 1
  %3178 = extractvalue %dx.types.ResRet.f32 %3176, 2
  %3179 = add i32 %3144, 92
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3179, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = call float @dx.op.dot3.f32(i32 55, float %3146, float %3147, float %3148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = select i1 %119, float %3177, float %3146
  %3184 = select i1 %119, float %3182, float %3147
  %3185 = select i1 %119, float %3178, float %3148
  %3186 = and i32 %3181, 65535
  %3187 = uitofp i32 %3186 to float
  %3188 = lshr i32 %3181, 16
  %3189 = uitofp i32 %3188 to float
  %3190 = and i32 %3159, 65535
  %3191 = and i32 %3159, 50331648
  %3192 = icmp eq i32 %3191, 33554432
  %3193 = fsub fast float %3165, %357
  %3194 = fsub fast float %3166, %358
  %3195 = fsub fast float %3167, %359
  %3196 = call float @dx.op.dot3.f32(i32 55, float %3193, float %3194, float %3195, float %3193, float %3194, float %3195)  ; Dot3(ax,ay,az,bx,by,bz)
  %3197 = call float @dx.op.unary.f32(i32 24, float %3196)  ; Sqrt(value)
  %3198 = fdiv fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3193
  %3200 = fmul fast float %3198, %3194
  %3201 = fmul fast float %3198, %3195
  %3202 = fadd fast float %3197, %3151
  %3203 = fdiv fast float 1.000000e+00, %3202
  %3204 = fmul float %3162, %3203
  %3205 = fmul float %3204, %3204
  %3206 = call float @dx.op.unary.f32(i32 7, float %3205)  ; Saturate(value)
  br i1 %3192, label %3207, label %3228

; <label>:3207                                    ; preds = %3131
  %3208 = fmul fast float %3173, %3154
  %3209 = fmul fast float %3173, %3155
  %3210 = fmul fast float %3173, %3156
  %3211 = fadd fast float %3193, %3208
  %3212 = fadd fast float %3194, %3209
  %3213 = fadd fast float %3195, %3210
  %3214 = call float @dx.op.dot3.f32(i32 55, float %3211, float %3212, float %3213, float %3211, float %3212, float %3213)  ; Dot3(ax,ay,az,bx,by,bz)
  %3215 = call float @dx.op.unary.f32(i32 25, float %3214)  ; Rsqrt(value)
  %3216 = fmul fast float %3215, %3211
  %3217 = fmul fast float %3215, %3212
  %3218 = fmul fast float %3215, %3213
  %3219 = fsub fast float %357, %3165
  %3220 = fsub fast float %358, %3166
  %3221 = fsub fast float %359, %3167
  %3222 = fsub fast float -0.000000e+00, %3219
  %3223 = fsub fast float -0.000000e+00, %3220
  %3224 = fsub fast float -0.000000e+00, %3221
  %3225 = call float @dx.op.dot3.f32(i32 55, float %3222, float %3223, float %3224, float %3154, float %3155, float %3156)  ; Dot3(ax,ay,az,bx,by,bz)
  %3226 = fcmp fast ogt float %3225, 0.000000e+00
  %3227 = uitofp i1 %3226 to float
  br label %3228

; <label>:3228                                    ; preds = %3207, %3131
  %3229 = phi float [ %3227, %3207 ], [ 1.000000e+00, %3131 ]
  %3230 = phi float [ %3216, %3207 ], [ %3199, %3131 ]
  %3231 = phi float [ %3217, %3207 ], [ %3200, %3131 ]
  %3232 = phi float [ %3218, %3207 ], [ %3201, %3131 ]
  %3233 = call float @dx.op.dot3.f32(i32 55, float %3154, float %3155, float %3156, float %3230, float %3231, float %3232)  ; Dot3(ax,ay,az,bx,by,bz)
  %3234 = fmul fast float %3233, %3233
  %3235 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3236 = fsub fast float 1.000000e+00, %3235
  %3237 = fmul fast float %3236, 5.000000e-01
  %3238 = fcmp fast ogt float %3233, 0.000000e+00
  %3239 = fsub fast float 1.000000e+00, %3237
  %3240 = select i1 %3238, float %3237, float %3239
  %3241 = fmul fast float %3240, %3189
  %3242 = fadd fast float %3241, %3187
  %3243 = fmul fast float %3242, 0x3EF0001000000000
  %3244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %3243, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3245 = extractvalue %dx.types.ResRet.f32 %3244, 0
  %3246 = fmul fast float %3233, %3171
  %3247 = fadd fast float %3246, %3172
  %3248 = call float @dx.op.unary.f32(i32 7, float %3247)  ; Saturate(value)
  %3249 = select i1 %3192, float 1.000000e+00, float %3248
  %3250 = select i1 %3192, float %3248, float 1.000000e+00
  %3251 = fmul fast float %3197, %3168
  %3252 = fsub fast float 1.000000e+00, %3251
  %3253 = fmul fast float %3252, %3174
  %3254 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3255 = fmul fast float %3254, %3250
  %3256 = fmul fast float %3255, 2.000000e+00
  %3257 = fsub fast float 3.000000e+00, %3256
  %3258 = fmul fast float %3245, %3229
  %3259 = fmul fast float %3255, %3255
  %3260 = fmul fast float %3259, %3258
  %3261 = fmul fast float %3260, %3257
  %3262 = call float @dx.op.binary.f32(i32 36, float %3261, float %3261)  ; FMin(a,b)
  %3263 = call float @dx.op.binary.f32(i32 36, float %3261, float %3262)  ; FMin(a,b)
  %3264 = fcmp fast ogt float %3263, 0.000000e+00
  br i1 %3264, label %3273, label %3265, !dx.controlflow.hints !134

; <label>:3265                                    ; preds = %3378, %3373, %3228
  %3266 = phi float [ %3133, %3373 ], [ %3133, %3228 ], [ %3533, %3378 ]
  %3267 = phi float [ %3134, %3373 ], [ %3134, %3228 ], [ %3534, %3378 ]
  %3268 = phi float [ %3135, %3373 ], [ %3135, %3228 ], [ %3535, %3378 ]
  %3269 = phi float [ %3136, %3373 ], [ %3136, %3228 ], [ %3521, %3378 ]
  %3270 = phi float [ %3137, %3373 ], [ %3137, %3228 ], [ %3522, %3378 ]
  %3271 = phi float [ %3138, %3373 ], [ %3138, %3228 ], [ %3523, %3378 ]
  %3272 = icmp eq i32 %3132, %3142
  br i1 %3272, label %3536, label %3131

; <label>:3273                                    ; preds = %3228
  %3274 = icmp eq i32 %3190, 255
  br i1 %3274, label %3373, label %3275, !dx.controlflow.hints !135

; <label>:3275                                    ; preds = %3273
  %3276 = mul nuw nsw i32 %3190, 176
  %3277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3276, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.ResRet.f32 %3277, 1
  %3280 = extractvalue %dx.types.ResRet.f32 %3277, 2
  %3281 = extractvalue %dx.types.ResRet.f32 %3277, 3
  %3282 = add nuw nsw i32 %3276, 16
  %3283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3282, i32 undef)  ; BufferLoad(srv,index,wot)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.ResRet.f32 %3283, 1
  %3286 = add nuw nsw i32 %3276, 32
  %3287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.f32 %3287, 0
  %3289 = extractvalue %dx.types.ResRet.f32 %3287, 1
  %3290 = extractvalue %dx.types.ResRet.f32 %3287, 2
  %3291 = add nuw nsw i32 %3276, 48
  %3292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.ResRet.f32 %3292, 2
  %3296 = extractvalue %dx.types.ResRet.f32 %3292, 3
  %3297 = add nuw nsw i32 %3276, 64
  %3298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.f32 %3298, 0
  %3300 = extractvalue %dx.types.ResRet.f32 %3298, 1
  %3301 = extractvalue %dx.types.ResRet.f32 %3298, 2
  %3302 = extractvalue %dx.types.ResRet.f32 %3298, 3
  %3303 = add nuw nsw i32 %3276, 80
  %3304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = extractvalue %dx.types.ResRet.f32 %3304, 1
  %3307 = extractvalue %dx.types.ResRet.f32 %3304, 2
  %3308 = extractvalue %dx.types.ResRet.f32 %3304, 3
  %3309 = add nuw nsw i32 %3276, 96
  %3310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.ResRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.ResRet.f32 %3310, 3
  %3315 = bitcast float %3285 to i32
  %3316 = fmul fast float %3290, %279
  %3317 = fmul fast float %3290, %280
  %3318 = fmul fast float %3290, %281
  %3319 = fadd fast float %3316, %357
  %3320 = fadd fast float %3317, %358
  %3321 = fadd fast float %3318, %359
  %3322 = fmul fast float %3319, %3293
  %3323 = call float @dx.op.tertiary.f32(i32 46, float %3320, float %3299, float %3322)  ; FMad(a,b,c)
  %3324 = call float @dx.op.tertiary.f32(i32 46, float %3321, float %3305, float %3323)  ; FMad(a,b,c)
  %3325 = fadd fast float %3324, %3311
  %3326 = fmul fast float %3319, %3294
  %3327 = call float @dx.op.tertiary.f32(i32 46, float %3320, float %3300, float %3326)  ; FMad(a,b,c)
  %3328 = call float @dx.op.tertiary.f32(i32 46, float %3321, float %3306, float %3327)  ; FMad(a,b,c)
  %3329 = fadd fast float %3328, %3312
  %3330 = fmul fast float %3319, %3295
  %3331 = call float @dx.op.tertiary.f32(i32 46, float %3320, float %3301, float %3330)  ; FMad(a,b,c)
  %3332 = call float @dx.op.tertiary.f32(i32 46, float %3321, float %3307, float %3331)  ; FMad(a,b,c)
  %3333 = fadd fast float %3332, %3313
  %3334 = fmul fast float %3319, %3296
  %3335 = call float @dx.op.tertiary.f32(i32 46, float %3320, float %3302, float %3334)  ; FMad(a,b,c)
  %3336 = call float @dx.op.tertiary.f32(i32 46, float %3321, float %3308, float %3335)  ; FMad(a,b,c)
  %3337 = fadd fast float %3336, %3314
  %3338 = fdiv fast float %3325, %3337
  %3339 = fdiv fast float %3329, %3337
  %3340 = fdiv fast float %3333, %3337
  %3341 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3340)  ; FMax(a,b)
  %3342 = fmul fast float %268, 0x401921FB60000000
  %3343 = call float @dx.op.unary.f32(i32 13, float %3342)  ; Sin(value)
  %3344 = call float @dx.op.unary.f32(i32 12, float %3342)  ; Cos(value)
  %3345 = fsub fast float -0.000000e+00, %3343
  %3346 = fmul fast float %3280, 5.000000e-01
  %3347 = call float @dx.op.dot2.f32(i32 54, float %268, float %268, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %3348 = call float @dx.op.unary.f32(i32 22, float %3347)  ; Frc(value)
  %3349 = fmul fast float %3348, 0x404A7DD040000000
  %3350 = call float @dx.op.unary.f32(i32 22, float %3349)  ; Frc(value)
  %3351 = fmul fast float %3350, %3289
  %3352 = fadd fast float %3351, %3346
  %3353 = call float @dx.op.tertiary.f32(i32 46, float %3352, float %3345, float 0.000000e+00)  ; FMad(a,b,c)
  %3354 = call float @dx.op.tertiary.f32(i32 46, float %3352, float %3344, float 0.000000e+00)  ; FMad(a,b,c)
  %3355 = fadd fast float %3353, %3338
  %3356 = fadd fast float %3354, %3339
  %3357 = fmul fast float %3355, %3284
  %3358 = fmul fast float %3356, %3284
  %3359 = call float @dx.op.binary.f32(i32 35, float %3357, float %3280)  ; FMax(a,b)
  %3360 = call float @dx.op.binary.f32(i32 35, float %3358, float %3280)  ; FMax(a,b)
  %3361 = call float @dx.op.binary.f32(i32 36, float %3359, float %3281)  ; FMin(a,b)
  %3362 = call float @dx.op.binary.f32(i32 36, float %3360, float %3281)  ; FMin(a,b)
  %3363 = fadd fast float %3361, %3278
  %3364 = fadd fast float %3362, %3279
  %3365 = uitofp i32 %3315 to float
  %3366 = fadd fast float %3341, %3288
  %3367 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %35, float %3363, float %3364, float %3365, float undef, i32 0, i32 0, i32 undef, float %3366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3368 = extractvalue %dx.types.ResRet.f32 %3367, 0
  %3369 = fadd fast float %3368, -1.000000e+00
  %3370 = fmul fast float %3369, %3249
  %3371 = fadd fast float %3370, 1.000000e+00
  %3372 = fmul fast float %3371, %3261
  br label %3373

; <label>:3373                                    ; preds = %3275, %3273
  %3374 = phi float [ %3372, %3275 ], [ %3261, %3273 ]
  %3375 = call float @dx.op.binary.f32(i32 36, float %3374, float %3374)  ; FMin(a,b)
  %3376 = call float @dx.op.binary.f32(i32 36, float %3374, float %3375)  ; FMin(a,b)
  %3377 = fcmp fast ogt float %3376, 0.000000e+00
  br i1 %3377, label %3378, label %3265, !dx.controlflow.hints !136

; <label>:3378                                    ; preds = %3373
  %3379 = fmul fast float %3374, %3183
  %3380 = fmul fast float %3374, %3184
  %3381 = fmul fast float %3374, %3185
  %3382 = fsub fast float %3199, %492
  %3383 = fsub fast float %3200, %493
  %3384 = fsub fast float %3201, %494
  %3385 = call float @dx.op.dot3.f32(i32 55, float %3382, float %3383, float %3384, float %3382, float %3383, float %3384)  ; Dot3(ax,ay,az,bx,by,bz)
  %3386 = call float @dx.op.unary.f32(i32 25, float %3385)  ; Rsqrt(value)
  %3387 = fmul fast float %3386, %3382
  %3388 = fmul fast float %3386, %3383
  %3389 = fmul fast float %3386, %3384
  %3390 = call float @dx.op.dot3.f32(i32 55, float %3199, float %3200, float %3201, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %3391 = call float @dx.op.dot3.f32(i32 55, float %495, float %496, float %497, float %3387, float %3388, float %3389)  ; Dot3(ax,ay,az,bx,by,bz)
  %3392 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3393 = fmul fast float %3392, %3206
  %3394 = fmul fast float %3392, %3392
  %3395 = fmul fast float %3394, 0x47DE623840000000
  %3396 = call float @dx.op.unary.f32(i32 7, float %3395)  ; Saturate(value)
  %3397 = fmul fast float %3393, %3396
  %3398 = bitcast float %3196 to i32
  %3399 = ashr i32 %3398, 1
  %3400 = sub nsw i32 1597463007, %3399
  %3401 = bitcast i32 %3400 to float
  %3402 = fmul fast float %3401, %3193
  %3403 = fmul fast float %3401, %3194
  %3404 = fmul fast float %3401, %3195
  %3405 = fsub fast float %3402, %492
  %3406 = fsub fast float %3403, %493
  %3407 = fsub fast float %3404, %494
  %3408 = call float @dx.op.dot3.f32(i32 55, float %3405, float %3406, float %3407, float %3405, float %3406, float %3407)  ; Dot3(ax,ay,az,bx,by,bz)
  %3409 = call float @dx.op.unary.f32(i32 25, float %3408)  ; Rsqrt(value)
  %3410 = fmul fast float %3405, %3409
  %3411 = fmul fast float %3406, %3409
  %3412 = fmul fast float %3407, %3409
  %3413 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %3410, float %3411, float %3412)  ; Dot3(ax,ay,az,bx,by,bz)
  %3414 = fmul fast float %3413, %3413
  %3415 = call float @dx.op.unary.f32(i32 6, float %3390)  ; FAbs(value)
  %3416 = fsub fast float 1.000000e+00, %291
  %3417 = call float @dx.op.binary.f32(i32 35, float %3416, float 0x3F847AE140000000)  ; FMax(a,b)
  %3418 = fmul fast float %3417, %3417
  %3419 = fmul fast float %3418, %3418
  %3420 = fsub fast float 1.000000e+00, %3419
  %3421 = fmul fast float %500, %500
  %3422 = fmul fast float %3421, %3420
  %3423 = fadd fast float %3422, %3419
  %3424 = bitcast float %3423 to i32
  %3425 = ashr i32 %3424, 1
  %3426 = add nsw i32 %3425, 532487669
  %3427 = bitcast i32 %3426 to float
  %3428 = fadd fast float %3427, %500
  %3429 = fmul fast float %3419, %3414
  %3430 = fsub fast float 1.000000e+00, %3414
  %3431 = fadd fast float %3430, %3429
  %3432 = fmul fast float %3415, %3415
  %3433 = fmul fast float %3432, %3420
  %3434 = fadd fast float %3433, %3419
  %3435 = bitcast float %3434 to i32
  %3436 = ashr i32 %3435, 1
  %3437 = add nsw i32 %3436, 532487669
  %3438 = bitcast i32 %3437 to float
  %3439 = fadd fast float %3438, %3415
  %3440 = fmul fast float %3431, %3431
  %3441 = fmul fast float %3440, %3428
  %3442 = fmul fast float %3441, %3439
  %3443 = fdiv fast float 1.000000e+00, %3442
  %3444 = bitcast float %3419 to i32
  %3445 = sitofp i32 %3444 to float
  %3446 = fmul fast float %3445, 0x3FE7F73180000000
  %3447 = fadd fast float %3446, 0x41AFE27C40000000
  %3448 = fptosi float %3447 to i32
  %3449 = bitcast i32 %3448 to float
  %3450 = fmul fast float %3162, 0x3FD80E9D60000000
  %3451 = fmul fast float %3450, %3401
  %3452 = fadd fast float %3449, %3451
  %3453 = bitcast float %3452 to i32
  %3454 = sub nsw i32 2129859010, %3453
  %3455 = bitcast i32 %3454 to float
  %3456 = fmul fast float %3419, %3443
  %3457 = fmul fast float %3456, %3449
  %3458 = fmul fast float %3457, %3455
  %3459 = call float @dx.op.unary.f32(i32 6, float %3391)  ; FAbs(value)
  %3460 = fsub fast float 1.000000e+00, %3459
  %3461 = bitcast float %3460 to i32
  %3462 = sitofp i32 %3461 to float
  %3463 = fmul fast float %3462, 5.000000e+00
  %3464 = fadd fast float %3463, 0xC1EFBF8940000000
  %3465 = fptosi float %3464 to i32
  %3466 = bitcast i32 %3465 to float
  %3467 = fsub fast float 1.000000e+00, %480
  %3468 = fsub fast float 1.000000e+00, %481
  %3469 = fsub fast float 1.000000e+00, %498
  %3470 = fmul fast float %3466, %3467
  %3471 = fmul fast float %3466, %3468
  %3472 = fmul fast float %3466, %3469
  %3473 = fadd fast float %3470, %480
  %3474 = fadd fast float %3471, %481
  %3475 = fadd fast float %3472, %498
  %3476 = fmul fast float %3390, 9.843750e-01
  %3477 = fadd fast float %3476, 7.812500e-03
  %3478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %3477, float %2072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3479 = extractvalue %dx.types.ResRet.f32 %3478, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3478, 3
  %3481 = fmul fast float %3479, %480
  %3482 = fmul fast float %3479, %481
  %3483 = fmul fast float %3479, %498
  %3484 = fadd fast float %3481, %3480
  %3485 = fadd fast float %3482, %3480
  %3486 = fadd fast float %3483, %3480
  %3487 = call float @dx.op.binary.f32(i32 35, float %3485, float %3486)  ; FMax(a,b)
  %3488 = call float @dx.op.binary.f32(i32 35, float %3484, float %3487)  ; FMax(a,b)
  %3489 = fsub fast float 1.000000e+00, %3488
  %3490 = fsub fast float -0.000000e+00, %279
  %3491 = fsub fast float -0.000000e+00, %280
  %3492 = fsub fast float -0.000000e+00, %281
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3199, float %3200, float %3201, float %3490, float %3491, float %3492)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = call float @dx.op.unary.f32(i32 7, float %3493)  ; Saturate(value)
  %3495 = fmul fast float %3494, %3206
  %3496 = fmul fast float %3494, 9.843750e-01
  %3497 = fadd fast float %3496, 7.812500e-03
  %3498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %3497, float %2072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 3
  %3501 = fmul fast float %3499, %480
  %3502 = fmul fast float %3499, %481
  %3503 = fmul fast float %3499, %498
  %3504 = fadd fast float %3501, %3500
  %3505 = fadd fast float %3502, %3500
  %3506 = fadd fast float %3503, %3500
  %3507 = call float @dx.op.binary.f32(i32 35, float %3505, float %3506)  ; FMax(a,b)
  %3508 = call float @dx.op.binary.f32(i32 35, float %3504, float %3507)  ; FMax(a,b)
  %3509 = fsub fast float 1.000000e+00, %3508
  %3510 = fmul fast float %3495, %3509
  %3511 = fmul fast float %3510, %298
  %3512 = fmul fast float %3510, %299
  %3513 = fmul fast float %3510, %300
  %3514 = fmul fast float %3489, %3397
  %3515 = fadd fast float %3511, %3514
  %3516 = fadd fast float %3512, %3514
  %3517 = fadd fast float %3513, %3514
  %3518 = fmul fast float %3515, %3379
  %3519 = fmul fast float %3516, %3380
  %3520 = fmul fast float %3517, %3381
  %3521 = fadd fast float %3518, %3136
  %3522 = fadd fast float %3519, %3137
  %3523 = fadd fast float %3520, %3138
  %3524 = fmul fast float %3397, %3379
  %3525 = fmul fast float %3524, %3473
  %3526 = fmul fast float %3525, %3458
  %3527 = fmul fast float %3397, %3380
  %3528 = fmul fast float %3527, %3474
  %3529 = fmul fast float %3528, %3458
  %3530 = fmul fast float %3397, %3381
  %3531 = fmul fast float %3530, %3475
  %3532 = fmul fast float %3531, %3458
  %3533 = fadd fast float %3526, %3133
  %3534 = fadd fast float %3529, %3134
  %3535 = fadd fast float %3532, %3135
  br label %3265

; <label>:3536                                    ; preds = %3265
  br label %3537

; <label>:3537                                    ; preds = %3536, %3099
  %3538 = phi float [ %3101, %3099 ], [ %3266, %3536 ]
  %3539 = phi float [ %3102, %3099 ], [ %3267, %3536 ]
  %3540 = phi float [ %3103, %3099 ], [ %3268, %3536 ]
  %3541 = phi float [ %3104, %3099 ], [ %3269, %3536 ]
  %3542 = phi float [ %3105, %3099 ], [ %3270, %3536 ]
  %3543 = phi float [ %3106, %3099 ], [ %3271, %3536 ]
  %3544 = add i32 %3100, 1
  %3545 = icmp ugt i32 %3544, %3096
  br i1 %3545, label %3546, label %3099

; <label>:3546                                    ; preds = %3537
  br label %3547

; <label>:3547                                    ; preds = %3546, %3049, %3039
  %3548 = phi float [ %3040, %3039 ], [ %3040, %3049 ], [ %3538, %3546 ]
  %3549 = phi float [ %3041, %3039 ], [ %3041, %3049 ], [ %3539, %3546 ]
  %3550 = phi float [ %3042, %3039 ], [ %3042, %3049 ], [ %3540, %3546 ]
  %3551 = phi float [ %3043, %3039 ], [ %3043, %3049 ], [ %3541, %3546 ]
  %3552 = phi float [ %3044, %3039 ], [ %3044, %3049 ], [ %3542, %3546 ]
  %3553 = phi float [ %3045, %3039 ], [ %3045, %3049 ], [ %3543, %3546 ]
  %3554 = call float @dx.op.unary.f32(i32 24, float %471)  ; Sqrt(value)
  %3555 = call float @dx.op.unary.f32(i32 24, float %472)  ; Sqrt(value)
  %3556 = call float @dx.op.unary.f32(i32 24, float %473)  ; Sqrt(value)
  %3557 = fmul fast float %3554, %3551
  %3558 = fmul fast float %3555, %3552
  %3559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3560 = extractvalue %dx.types.CBufRet.f32 %3559, 0
  br i1 %119, label %3561, label %3585

; <label>:3561                                    ; preds = %3547
  %3562 = fadd fast float %3553, %488
  %3563 = fmul fast float %3562, %486
  %3564 = fsub fast float 1.000000e+00, %486
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 3
  %3568 = fmul fast float %3567, %3565
  %3569 = fsub fast float 1.000000e+00, %500
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = fmul fast float %3571, %3569
  %3573 = fsub fast float 1.000000e+00, %301
  %3574 = extractvalue %dx.types.CBufRet.f32 %3570, 2
  %3575 = fmul fast float %3574, %3573
  %3576 = fadd fast float %3558, %3557
  %3577 = extractvalue %dx.types.CBufRet.f32 %3566, 1
  %3578 = fadd fast float %3568, %3563
  %3579 = fsub fast float %3578, %3572
  %3580 = fsub fast float %3579, %3575
  %3581 = fsub fast float %3580, %3577
  %3582 = extractvalue %dx.types.CBufRet.f32 %3566, 2
  %3583 = fmul fast float %3581, %3582
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  br label %3589

; <label>:3585                                    ; preds = %3547
  %3586 = fmul fast float %3556, %3553
  %3587 = fmul fast float %3560, %3558
  %3588 = fmul fast float %3586, %3560
  br label %3589

; <label>:3589                                    ; preds = %3585, %3561
  %3590 = phi float [ %3576, %3561 ], [ %3557, %3585 ]
  %3591 = phi float [ %3584, %3561 ], [ %3587, %3585 ]
  %3592 = phi float [ 1.000000e+00, %3561 ], [ %3588, %3585 ]
  %3593 = fmul float %3560, %3590
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = fmul fast float %3595, %3549
  %3597 = fmul fast float %3595, %3550
  %3598 = fadd fast float %3549, %3548
  %3599 = select i1 %119, float %3598, float %3548
  %3600 = fmul float %3599, %3595
  %3601 = select i1 %119, float 0.000000e+00, float %3596
  %3602 = select i1 %119, float 0.000000e+00, float %3597
  %3603 = fmul fast float %3593, %3554
  %3604 = fmul fast float %3591, %3555
  %3605 = fmul fast float %3592, %3556
  %3606 = fadd fast float %3600, %3603
  %3607 = fadd fast float %3601, %3604
  %3608 = fadd fast float %3602, %3605
  %3609 = select i1 %119, float %3591, float %3607
  %3610 = select i1 %119, float %3592, float %3608
  %3611 = call float @dx.op.binary.f32(i32 36, float %3606, float 3.225500e+04)  ; FMin(a,b)
  %3612 = call float @dx.op.binary.f32(i32 36, float %3609, float 3.225500e+04)  ; FMin(a,b)
  %3613 = call float @dx.op.binary.f32(i32 36, float %3610, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3611)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3612)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3613)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!49}
!dx.entryPoints = !{!50}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !40, !43}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39}
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
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!27 = !{i32 19, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !32}
!32 = !{i32 0, i32 14}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!40 = !{!41, !42}
!41 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!42 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 256, null}
!43 = !{!44, !45, !46, !47, !48}
!44 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!45 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!49 = !{[63 x i32] [i32 61, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7]}
!50 = !{void ()* @ps_main, !"ps_main", !51, !4, !83}
!51 = !{!52, !81, null}
!52 = !{!53, !56, !57, !59, !61, !62, !64, !67, !69, !71, !73, !74, !75, !76, !77, !78, !79, !80}
!53 = !{i32 0, !"SV_Position", i8 9, i8 3, !54, i8 4, i32 1, i8 4, i32 0, i8 0, !55}
!54 = !{i32 0}
!55 = !{i32 3, i32 11}
!56 = !{i32 1, !"COLOR", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!57 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 2, i8 0, !58}
!58 = !{i32 3, i32 8}
!59 = !{i32 3, !"NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 3, i8 0, !60}
!60 = !{i32 3, i32 7}
!61 = !{i32 4, !"TANGENT", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!62 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !54, i8 2, i32 1, i8 1, i32 3, i8 3, !63}
!63 = !{i32 3, i32 1}
!64 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !65, i8 1, i32 1, i8 4, i32 5, i8 0, !66}
!65 = !{i32 1}
!66 = !{i32 3, i32 3}
!67 = !{i32 7, !"CARD_TILE2_AND_TILE", i8 9, i8 0, !68, i8 1, i32 1, i8 4, i32 6, i8 0, null}
!68 = !{i32 3}
!69 = !{i32 8, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !65, i8 4, i32 1, i8 4, i32 7, i8 0, !70}
!70 = !{i32 3, i32 15}
!71 = !{i32 9, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !72, i8 4, i32 1, i8 4, i32 8, i8 0, !70}
!72 = !{i32 2}
!73 = !{i32 10, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !68, i8 4, i32 1, i8 4, i32 9, i8 0, !70}
!74 = !{i32 11, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !54, i8 4, i32 1, i8 4, i32 10, i8 0, !60}
!75 = !{i32 12, !"LGV_POSITION_INDEX", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 11, i8 0, !58}
!76 = !{i32 13, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 2, i32 12, i8 0, null}
!77 = !{i32 14, !"SCEONDARY_NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 13, i8 0, null}
!78 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !54, i8 1, i32 1, i8 4, i32 14, i8 0, !63}
!79 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !54, i8 1, i32 1, i8 1, i32 15, i8 0, !63}
!80 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !54, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!81 = !{!82}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !54, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!83 = !{i32 0, i64 24}
!84 = !{!85, !87, !88, !89, !90, !92, !93, !94}
!85 = distinct !{!85, !86, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outTexCoords"}
!86 = distinct !{!86, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z"}
!87 = distinct !{!87, !86, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outNormal"}
!88 = distinct !{!88, !86, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outCoverage"}
!89 = distinct !{!89, !86, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outMipLevel"}
!90 = distinct !{!90, !91, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outTexCoords"}
!91 = distinct !{!91, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z"}
!92 = distinct !{!92, !91, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outNormal"}
!93 = distinct !{!93, !91, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outMipLevel"}
!94 = distinct !{!94, !91, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outCoverage"}
!95 = !{!96, !96, i64 0}
!96 = !{!"float", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !{!100, !102}
!100 = distinct !{!100, !101, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!101 = distinct !{!101, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!102 = distinct !{!102, !103, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!103 = distinct !{!103, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = !{!117, !117, i64 0}
!117 = !{!"int", !97, i64 0}
!118 = !{!119, !121, !123, !125}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!121 = distinct !{!121, !122, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!122 = distinct !{!122, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!123 = distinct !{!123, !124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!124 = distinct !{!124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!125 = distinct !{!125, !126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!126 = distinct !{!126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}

