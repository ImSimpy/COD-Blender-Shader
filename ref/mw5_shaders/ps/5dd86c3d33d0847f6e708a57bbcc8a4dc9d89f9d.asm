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
; LGV_IS_STATIC            0   x           7     NONE   float   x   
; WGV_TEXCOORD             0    yzw        7     NONE   float       
; WGV_NORMAL               0   xyzw        8     NONE   float       
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float       
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float       
; OBJECT_POSITION          0   xyzw       11     NONE   float       
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint       
; SV_IsFrontFace           0    y         12    FFACE    uint    y  
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: cc724292529d1b61f967e89e7fb15808
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
; LGV_IS_STATIC            0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
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
;   [272 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T2     t62,space1     1
;                                   texture    byte         r/o      T3     t63,space1     1
;                                   texture     f32          3d      T4     t21,space2     1
;                                   texture     f32          3d      T5     t22,space2     1
;                                   texture    byte         r/o      T6     t59,space1     1
;                                   texture    byte         r/o      T7     t60,space1     1
;                                   texture     f32          3d      T8     t19,space2     1
;                                   texture     f32          3d      T9     t20,space2     1
;                                   texture     f32          2d     T10     t33,space2     1
;                                   texture     f32     2darray     T11     t16,space2     1
;                                   texture     f32          3d     T12     t15,space2     1
;                                   texture     f32          2d     T13     t14,space2     1
;                                   texture     f32          2d     T14     t13,space2     1
;                                   texture     u32          2d     T15     t17,space2     1
;                                   texture     f32          3d     T16     t18,space2     1
;                                   texture     f32          2d     T17     t69,space2     1
;                                   texture     f32          2d     T18     t37,space2     1
;                                   texture    byte         r/o     T19     t10,space1     1
;                                   texture    byte         r/o     T20      t1,space1     1
;                                   texture     f32          1d     T21     t32,space2     1
;                                   texture     f32     2darray     T22      t8,space2     1
;                                   texture     f32          2d     T23      t1,space2     1
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
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = alloca [4 x i32], align 4
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = icmp ne i32 %43, 0
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = alloca [12 x float], align 4
  %59 = alloca [12 x float], align 4
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = fmul fast float %61, %55
  %63 = fmul fast float %61, %56
  %64 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %65 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %66 = bitcast float %65 to i32
  %67 = ashr i32 %66, 1
  %68 = sub nsw i32 1597250115, %67
  %69 = bitcast i32 %68 to float
  %70 = fmul fast float %49, %64
  %71 = fmul fast float %70, %69
  %72 = fmul fast float %50, %64
  %73 = fmul fast float %72, %69
  %74 = fmul fast float %51, %64
  %75 = fmul fast float %74, %69
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.i32 %77, 3
  %79 = and i32 %78, 3
  %80 = icmp ne i32 %79, 0
  %81 = and i32 %78, 4
  %82 = icmp ne i32 %81, 0
  %83 = and i1 %80, %82
  br i1 %83, label %84, label %95

; <label>:84                                      ; preds = %0
  %85 = extractvalue %dx.types.CBufRet.f32 %76, 3
  %86 = fmul fast float %85, %63
  %87 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %88 = fmul fast float %87, %62
  %89 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %88, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = fsub fast float 1.000000e+00, %90
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = fcmp fast olt float %91, %93
  br label %98

; <label>:95                                      ; preds = %0
  %96 = icmp eq i32 %81, 0
  %97 = and i1 %80, %96
  br label %98

; <label>:98                                      ; preds = %95, %84
  %99 = phi i1 [ %94, %84 ], [ %97, %95 ]
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = fmul fast float %101, 0x3FE3C6EF40000000
  %103 = frem fast float %62, 2.560000e+02
  %104 = frem fast float %63, 2.560000e+02
  %105 = fptoui float %103 to i32
  %106 = fptoui float %104 to i32
  %107 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %105, i32 %106, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = fadd fast float %108, %102
  %110 = call float @dx.op.unary.f32(i32 22, float %109)  ; Frc(value)
  %111 = add i32 %45, 60
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = add i32 %113, 0
  %115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %116 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %115, i32 0)  ; GetDimensions(handle,mipLevel)
  %117 = extractvalue %dx.types.Dimensions %116, 0
  %118 = sitofp i32 %117 to float
  %119 = extractvalue %dx.types.Dimensions %116, 1
  %120 = sitofp i32 %119 to float
  %121 = fmul fast float %118, %52
  %122 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %123 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %124 = fmul fast float %120, %53
  %125 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %126 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %127 = fmul fast float %125, %125
  %128 = fmul fast float %126, %126
  %129 = fadd fast float %128, %127
  %130 = fmul fast float %125, %122
  %131 = fmul fast float %126, %123
  %132 = fadd fast float %131, %130
  %133 = fmul fast float %122, %122
  %134 = fmul fast float %123, %123
  %135 = fadd fast float %134, %133
  %136 = fmul fast float %129, %135
  %137 = fmul fast float %132, %132
  %138 = fsub fast float %136, %137
  %139 = bitcast float %138 to i32
  %140 = fadd fast float %129, %135
  %141 = bitcast float %140 to i32
  %142 = sub i32 8388608, %141
  %143 = add i32 %142, %139
  %144 = ashr i32 %143, 24
  %145 = sitofp i32 %144 to float
  %146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.i32 %146, 0
  %148 = add i32 %147, 0
  %149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %149, %dx.types.Handle %38, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float %145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = extractvalue %dx.types.ResRet.f32 %150, 1
  %153 = extractvalue %dx.types.ResRet.f32 %150, 2
  %154 = fmul fast float %151, 2.000000e+00
  %155 = fmul fast float %152, 2.000000e+00
  %156 = fmul fast float %153, 2.000000e+00
  %157 = fadd fast float %154, -1.000000e+00
  %158 = fadd fast float %155, -1.000000e+00
  %159 = fadd fast float %156, -1.000000e+00
  br i1 %44, label %169, label %160

; <label>:160                                     ; preds = %98
  %161 = call float @dx.op.dot3.f32(i32 55, float %71, float %73, float %75, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %162 = fmul fast float %161, 2.000000e+00
  %163 = fmul fast float %162, %71
  %164 = fmul fast float %162, %73
  %165 = fmul fast float %162, %75
  %166 = fsub fast float %157, %163
  %167 = fsub fast float %158, %164
  %168 = fsub fast float %159, %165
  br label %169

; <label>:169                                     ; preds = %160, %98
  %170 = phi float [ %166, %160 ], [ %157, %98 ]
  %171 = phi float [ %167, %160 ], [ %158, %98 ]
  %172 = phi float [ %168, %160 ], [ %159, %98 ]
  %173 = add i32 %45, 56
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = add i32 %175, 0
  %177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %177, %dx.types.Handle %38, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float %145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = extractvalue %dx.types.ResRet.f32 %178, 1
  %181 = extractvalue %dx.types.ResRet.f32 %178, 2
  %182 = extractvalue %dx.types.ResRet.f32 %178, 3
  %183 = add i32 %45, 64
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = add i32 %185, 0
  %187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %187, %dx.types.Handle %38, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float %145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = extractvalue %dx.types.ResRet.f32 %188, 1
  %191 = extractvalue %dx.types.ResRet.f32 %188, 2
  %192 = extractvalue %dx.types.ResRet.f32 %188, 3
  %193 = add i32 %45, 68
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = add i32 %195, 0
  %197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %197, %dx.types.Handle %38, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float %145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = add i32 %45, 72
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = add i32 %202, 0
  %204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %204, %dx.types.Handle %38, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float %145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fadd fast float %48, 1.000000e+00
  %208 = add i32 %45, 24
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 2
  %211 = bitcast i32 %210 to float
  %212 = fmul fast float %206, 2.000000e+00
  %213 = fsub fast float %207, %212
  %214 = fmul fast float %211, %213
  %215 = fadd fast float %214, %57
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %219 = fmul fast float %62, 2.000000e+00
  %220 = fmul fast float %219, %217
  %221 = fmul fast float %63, 2.000000e+00
  %222 = fmul fast float %221, %218
  %223 = fsub fast float 1.000000e+00, %220
  %224 = fsub fast float 1.000000e+00, %222
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %228 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %229 = fmul fast float %223, %226
  %230 = fmul fast float %223, %227
  %231 = fmul fast float %223, %228
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %236 = fmul fast float %224, %233
  %237 = fmul fast float %224, %234
  %238 = fmul fast float %224, %235
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = fadd fast float %236, %240
  %244 = fadd fast float %243, %229
  %245 = fadd fast float %237, %241
  %246 = fadd fast float %245, %230
  %247 = fadd fast float %238, %242
  %248 = fadd fast float %247, %231
  %249 = fmul fast float %244, %215
  %250 = fmul fast float %246, %215
  %251 = fmul fast float %248, %215
  %252 = call float @dx.op.unary.f32(i32 26, float %47)  ; Round_ne(value)
  %253 = fptoui float %252 to i32
  %254 = shl i32 %253, 6
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %259 = fadd fast float %249, %256
  %260 = fadd fast float %250, %257
  %261 = fadd fast float %251, %258
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = extractvalue %dx.types.ResRet.f32 %262, 3
  %267 = call float @dx.op.dot4.f32(i32 56, float %263, float %264, float %265, float %266, float %259, float %260, float %261, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %268 = or i32 %254, 16
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = extractvalue %dx.types.ResRet.f32 %269, 3
  %274 = call float @dx.op.dot4.f32(i32 56, float %270, float %271, float %272, float %273, float %259, float %260, float %261, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %275 = or i32 %254, 32
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = call float @dx.op.dot4.f32(i32 56, float %277, float %278, float %279, float %280, float %259, float %260, float %261, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %282 = fadd fast float %199, 0xBFB99999A0000000
  %283 = call float @dx.op.unary.f32(i32 7, float %282)  ; Saturate(value)
  %284 = fmul fast float %283, 0x3FF1C71C80000000
  %285 = call float @dx.op.binary.f32(i32 36, float %199, float 0x3FB99999A0000000)  ; FMin(a,b)
  %286 = fsub fast float 1.000000e+00, %284
  %287 = call float @dx.op.unary.f32(i32 7, float %286)  ; Saturate(value)
  %288 = fmul fast float %287, %179
  %289 = fmul fast float %287, %180
  %290 = fmul fast float %287, %181
  %291 = call float @dx.op.unary.f32(i32 7, float %288)  ; Saturate(value)
  %292 = call float @dx.op.unary.f32(i32 7, float %289)  ; Saturate(value)
  %293 = call float @dx.op.unary.f32(i32 7, float %290)  ; Saturate(value)
  %294 = fmul fast float %284, %179
  %295 = fmul fast float %284, %180
  %296 = fmul fast float %284, %181
  %297 = fadd fast float %294, %285
  %298 = fadd fast float %295, %285
  %299 = fadd fast float %296, %285
  %300 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %301 = call float @dx.op.unary.f32(i32 7, float %298)  ; Saturate(value)
  %302 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %303 = call float @dx.op.dot3.f32(i32 55, float %291, float %292, float %293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %304 = fmul fast float %303, 1.875000e-01
  %305 = fadd fast float %304, 0x3FE647AE20000000
  %306 = call float @dx.op.unary.f32(i32 7, float %305)  ; Saturate(value)
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = fsub fast float -0.000000e+00, %251
  %310 = call float @dx.op.dot3.f32(i32 55, float %249, float %250, float %251, float %249, float %250, float %251)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = call float @dx.op.unary.f32(i32 25, float %310)  ; Rsqrt(value)
  %312 = fmul fast float %311, %249
  %313 = fmul fast float %311, %250
  %314 = fmul fast float %311, %251
  %315 = fsub fast float -0.000000e+00, %312
  %316 = fsub fast float -0.000000e+00, %313
  %317 = fsub fast float -0.000000e+00, %314
  %318 = select i1 %99, float 0.000000e+00, float %302
  %319 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %315, float %316, float %317)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %321 = call float @dx.op.dot3.f32(i32 55, float %312, float %313, float %314, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = fmul fast float %321, 2.000000e+00
  %323 = fmul fast float %322, %170
  %324 = fmul fast float %322, %171
  %325 = fmul fast float %322, %172
  %326 = fsub fast float %312, %323
  %327 = fsub fast float %313, %324
  %328 = fsub fast float %314, %325
  %329 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %192)  ; FMin(a,b)
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = fadd fast float %331, %249
  %334 = fadd fast float %332, %250
  %335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.i32 %335, 0
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %373

; <label>:338                                     ; preds = %169
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = fsub fast float %333, %340
  %343 = fsub fast float %334, %341
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = fmul fast float %342, %345
  %348 = fmul fast float %343, %346
  %349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %347, float %348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = fcmp fast ogt float %350, 0.000000e+00
  %352 = extractvalue %dx.types.CBufRet.i32 %335, 3
  %353 = icmp ne i32 %352, 0
  %354 = and i1 %351, %353
  br i1 %354, label %355, label %373, !dx.controlflow.hints !85

; <label>:355                                     ; preds = %338
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = fsub fast float %333, %357
  %360 = fsub fast float %334, %358
  %361 = fmul fast float %359, %359
  %362 = fmul fast float %360, %360
  %363 = fadd fast float %361, %362
  %364 = uitofp i32 %352 to float
  %365 = fmul fast float %364, %364
  %366 = fcmp fast ogt float %363, %365
  br i1 %366, label %373, label %367

; <label>:367                                     ; preds = %355
  %368 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %369 = fsub fast float %364, %368
  %370 = fmul fast float %369, 0x3F75555560000000
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = call float @dx.op.binary.f32(i32 36, float %371, float %350)  ; FMin(a,b)
  br label %373

; <label>:373                                     ; preds = %367, %355, %338, %169
  %374 = phi float [ 1.000000e+00, %169 ], [ %372, %367 ], [ %350, %338 ], [ 0.000000e+00, %355 ]
  %375 = fcmp fast ogt float %374, 0.000000e+00
  br i1 %375, label %376, label %909, !dx.controlflow.hints !86

; <label>:376                                     ; preds = %373
  %377 = fadd fast float %47, 5.000000e-01
  %378 = fptoui float %377 to i32
  %379 = fcmp fast une float %46, 0.000000e+00
  br i1 %379, label %380, label %432

; <label>:380                                     ; preds = %376
  %381 = fadd fast float %54, 5.000000e-01
  %382 = fptoui float %381 to i32
  %383 = shl i32 %382, 3
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = or i32 %383, 4
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 16777215
  %390 = add i32 %389, %378
  %391 = shl i32 %390, 5
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = or i32 %391, 16
  %397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = extractvalue %dx.types.ResRet.f32 %397, 1
  %400 = extractvalue %dx.types.ResRet.f32 %397, 2
  %401 = lshr i32 %388, 24
  %402 = and i32 %401, 3
  %403 = add nuw nsw i32 %402, 3
  %404 = shl i32 1, %403
  %405 = lshr i32 %388, 29
  %406 = lshr i32 %388, 23
  %407 = and i32 %406, 56
  %408 = shl nuw nsw i32 %405, 3
  %409 = lshr i32 %385, 16
  %410 = and i32 %385, 65535
  %411 = uitofp i32 %404 to float
  %412 = fmul fast float %411, 1.562500e-02
  %413 = uitofp i32 %409 to float
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 3
  %416 = fmul fast float %415, %413
  %417 = uitofp i32 %407 to float
  %418 = fmul fast float %417, 1.562500e-02
  %419 = uitofp i32 %408 to float
  %420 = fmul fast float %419, 1.562500e-02
  %421 = uitofp i32 %410 to float
  %422 = fmul fast float %415, %421
  %423 = fmul fast float %412, %393
  %424 = fmul fast float %412, %394
  %425 = fmul fast float %416, %395
  %426 = fmul fast float %412, %398
  %427 = fmul fast float %412, %399
  %428 = fmul fast float %416, %400
  %429 = fadd fast float %426, %418
  %430 = fadd fast float %427, %420
  %431 = fadd fast float %428, %422
  br label %443

; <label>:432                                     ; preds = %376
  %433 = shl i32 %378, 5
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = or i32 %433, 16
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  br label %443

; <label>:443                                     ; preds = %432, %380
  %444 = phi float [ %429, %380 ], [ %440, %432 ]
  %445 = phi float [ %430, %380 ], [ %441, %432 ]
  %446 = phi float [ %431, %380 ], [ %442, %432 ]
  %447 = phi float [ %423, %380 ], [ %435, %432 ]
  %448 = phi float [ %424, %380 ], [ %436, %432 ]
  %449 = phi float [ %425, %380 ], [ %437, %432 ]
  %450 = call float @dx.op.unary.f32(i32 7, float %267)  ; Saturate(value)
  %451 = call float @dx.op.unary.f32(i32 7, float %274)  ; Saturate(value)
  %452 = call float @dx.op.unary.f32(i32 7, float %281)  ; Saturate(value)
  %453 = fmul fast float %450, %447
  %454 = fmul fast float %451, %448
  %455 = fmul fast float %452, %449
  %456 = fadd fast float %453, %444
  %457 = fadd fast float %454, %445
  %458 = fadd fast float %455, %446
  %459 = fmul fast float %456, 5.000000e-01
  %460 = fmul fast float %457, 0x3FD5555560000000
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 3
  %463 = fadd fast float %459, 5.000000e-01
  %464 = fadd fast float %460, 0x3FD5555560000000
  %465 = fadd fast float %460, 0x3FE5555560000000
  br i1 %379, label %466, label %576

; <label>:466                                     ; preds = %443
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %36, float %456, float %457, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = fmul fast float %462, %468
  %472 = fmul fast float %462, %469
  %473 = fmul fast float %462, %470
  %474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %459, float %460, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %463, float %460, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = extractvalue %dx.types.ResRet.f32 %479, 3
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %459, float %464, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %463, float %464, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %459, float %465, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = extractvalue %dx.types.ResRet.f32 %494, 1
  %497 = extractvalue %dx.types.ResRet.f32 %494, 2
  %498 = extractvalue %dx.types.ResRet.f32 %494, 3
  %499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %463, float %465, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = extractvalue %dx.types.ResRet.f32 %499, 1
  %502 = extractvalue %dx.types.ResRet.f32 %499, 2
  %503 = extractvalue %dx.types.ResRet.f32 %499, 3
  %504 = fmul fast float %475, 0x400BB67AE0000000
  %505 = fadd fast float %504, 0xBFFBB67AE0000000
  %506 = fmul fast float %505, %471
  %507 = fmul fast float %476, 0x400BB67AE0000000
  %508 = fadd fast float %507, 0xBFFBB67AE0000000
  %509 = fmul fast float %508, %472
  %510 = fmul fast float %477, 0x400BB67AE0000000
  %511 = fadd fast float %510, 0xBFFBB67AE0000000
  %512 = fmul fast float %511, %473
  %513 = fmul fast float %478, 0x4011E377A0000000
  %514 = fadd fast float %513, 0xC001E377A0000000
  %515 = fmul fast float %514, %471
  %516 = fmul fast float %480, 0x4011E377A0000000
  %517 = fadd fast float %516, 0xC001E377A0000000
  %518 = fmul fast float %517, %472
  %519 = fmul fast float %481, 0x4011E377A0000000
  %520 = fadd fast float %519, 0xC001E377A0000000
  %521 = fmul fast float %520, %473
  %522 = fmul fast float %482, 0x400BB67AE0000000
  %523 = fadd fast float %522, 0xBFFBB67AE0000000
  %524 = fmul fast float %523, %471
  %525 = fmul fast float %483, 0x400BB67AE0000000
  %526 = fadd fast float %525, 0xBFFBB67AE0000000
  %527 = fmul fast float %526, %472
  %528 = fmul fast float %485, 0x400BB67AE0000000
  %529 = fadd fast float %528, 0xBFFBB67AE0000000
  %530 = fmul fast float %529, %473
  %531 = fmul fast float %486, 0x400BB67AE0000000
  %532 = fadd fast float %531, 0xBFFBB67AE0000000
  %533 = fmul fast float %532, %471
  %534 = fmul fast float %487, 0x400BB67AE0000000
  %535 = fadd fast float %534, 0xBFFBB67AE0000000
  %536 = fmul fast float %535, %472
  %537 = fmul fast float %488, 0x400BB67AE0000000
  %538 = fadd fast float %537, 0xBFFBB67AE0000000
  %539 = fmul fast float %538, %473
  %540 = fmul fast float %490, 0x400EFBDEC0000000
  %541 = fadd fast float %540, 0xBFFEFBDEC0000000
  %542 = fmul fast float %541, %471
  %543 = fmul fast float %491, 0x400EFBDEC0000000
  %544 = fadd fast float %543, 0xBFFEFBDEC0000000
  %545 = fmul fast float %544, %472
  %546 = fmul fast float %492, 0x400EFBDEC0000000
  %547 = fadd fast float %546, 0xBFFEFBDEC0000000
  %548 = fmul fast float %547, %473
  %549 = fmul fast float %493, 0x400EFBDEC0000000
  %550 = fadd fast float %549, 0xBFFEFBDEC0000000
  %551 = fmul fast float %550, %471
  %552 = fmul fast float %495, 0x400EFBDEC0000000
  %553 = fadd fast float %552, 0xBFFEFBDEC0000000
  %554 = fmul fast float %553, %472
  %555 = fmul fast float %496, 0x400EFBDEC0000000
  %556 = fadd fast float %555, 0xBFFEFBDEC0000000
  %557 = fmul fast float %556, %473
  %558 = fmul fast float %497, 0x400EFBDEC0000000
  %559 = fadd fast float %558, 0xBFFEFBDEC0000000
  %560 = fmul fast float %559, %471
  %561 = fmul fast float %498, 0x400EFBDEC0000000
  %562 = fadd fast float %561, 0xBFFEFBDEC0000000
  %563 = fmul fast float %562, %472
  %564 = fmul fast float %500, 0x400EFBDEC0000000
  %565 = fadd fast float %564, 0xBFFEFBDEC0000000
  %566 = fmul fast float %565, %473
  %567 = fmul fast float %501, 0x400EFBDEC0000000
  %568 = fadd fast float %567, 0xBFFEFBDEC0000000
  %569 = fmul fast float %568, %471
  %570 = fmul fast float %502, 0x400EFBDEC0000000
  %571 = fadd fast float %570, 0xBFFEFBDEC0000000
  %572 = fmul fast float %571, %472
  %573 = fmul fast float %503, 0x400EFBDEC0000000
  %574 = fadd fast float %573, 0xBFFEFBDEC0000000
  %575 = fmul fast float %574, %473
  br label %686

; <label>:576                                     ; preds = %443
  %577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %36, float %456, float %457, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = extractvalue %dx.types.ResRet.f32 %577, 1
  %580 = extractvalue %dx.types.ResRet.f32 %577, 2
  %581 = fmul fast float %462, %578
  %582 = fmul fast float %462, %579
  %583 = fmul fast float %462, %580
  %584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %459, float %460, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = extractvalue %dx.types.ResRet.f32 %584, 1
  %587 = extractvalue %dx.types.ResRet.f32 %584, 2
  %588 = extractvalue %dx.types.ResRet.f32 %584, 3
  %589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %463, float %460, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = extractvalue %dx.types.ResRet.f32 %589, 3
  %594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %459, float %464, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = extractvalue %dx.types.ResRet.f32 %594, 1
  %597 = extractvalue %dx.types.ResRet.f32 %594, 2
  %598 = extractvalue %dx.types.ResRet.f32 %594, 3
  %599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %463, float %464, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = extractvalue %dx.types.ResRet.f32 %599, 3
  %604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %459, float %465, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = extractvalue %dx.types.ResRet.f32 %604, 3
  %609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %463, float %465, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = fmul fast float %585, 0x400BB67AE0000000
  %615 = fadd fast float %614, 0xBFFBB67AE0000000
  %616 = fmul fast float %615, %581
  %617 = fmul fast float %586, 0x400BB67AE0000000
  %618 = fadd fast float %617, 0xBFFBB67AE0000000
  %619 = fmul fast float %618, %582
  %620 = fmul fast float %587, 0x400BB67AE0000000
  %621 = fadd fast float %620, 0xBFFBB67AE0000000
  %622 = fmul fast float %621, %583
  %623 = fmul fast float %588, 0x4011E377A0000000
  %624 = fadd fast float %623, 0xC001E377A0000000
  %625 = fmul fast float %624, %581
  %626 = fmul fast float %590, 0x4011E377A0000000
  %627 = fadd fast float %626, 0xC001E377A0000000
  %628 = fmul fast float %627, %582
  %629 = fmul fast float %591, 0x4011E377A0000000
  %630 = fadd fast float %629, 0xC001E377A0000000
  %631 = fmul fast float %630, %583
  %632 = fmul fast float %592, 0x400BB67AE0000000
  %633 = fadd fast float %632, 0xBFFBB67AE0000000
  %634 = fmul fast float %633, %581
  %635 = fmul fast float %593, 0x400BB67AE0000000
  %636 = fadd fast float %635, 0xBFFBB67AE0000000
  %637 = fmul fast float %636, %582
  %638 = fmul fast float %595, 0x400BB67AE0000000
  %639 = fadd fast float %638, 0xBFFBB67AE0000000
  %640 = fmul fast float %639, %583
  %641 = fmul fast float %596, 0x400BB67AE0000000
  %642 = fadd fast float %641, 0xBFFBB67AE0000000
  %643 = fmul fast float %642, %581
  %644 = fmul fast float %597, 0x400BB67AE0000000
  %645 = fadd fast float %644, 0xBFFBB67AE0000000
  %646 = fmul fast float %645, %582
  %647 = fmul fast float %598, 0x400BB67AE0000000
  %648 = fadd fast float %647, 0xBFFBB67AE0000000
  %649 = fmul fast float %648, %583
  %650 = fmul fast float %600, 0x400EFBDEC0000000
  %651 = fadd fast float %650, 0xBFFEFBDEC0000000
  %652 = fmul fast float %651, %581
  %653 = fmul fast float %601, 0x400EFBDEC0000000
  %654 = fadd fast float %653, 0xBFFEFBDEC0000000
  %655 = fmul fast float %654, %582
  %656 = fmul fast float %602, 0x400EFBDEC0000000
  %657 = fadd fast float %656, 0xBFFEFBDEC0000000
  %658 = fmul fast float %657, %583
  %659 = fmul fast float %603, 0x400EFBDEC0000000
  %660 = fadd fast float %659, 0xBFFEFBDEC0000000
  %661 = fmul fast float %660, %581
  %662 = fmul fast float %605, 0x400EFBDEC0000000
  %663 = fadd fast float %662, 0xBFFEFBDEC0000000
  %664 = fmul fast float %663, %582
  %665 = fmul fast float %606, 0x400EFBDEC0000000
  %666 = fadd fast float %665, 0xBFFEFBDEC0000000
  %667 = fmul fast float %666, %583
  %668 = fmul fast float %607, 0x400EFBDEC0000000
  %669 = fadd fast float %668, 0xBFFEFBDEC0000000
  %670 = fmul fast float %669, %581
  %671 = fmul fast float %608, 0x400EFBDEC0000000
  %672 = fadd fast float %671, 0xBFFEFBDEC0000000
  %673 = fmul fast float %672, %582
  %674 = fmul fast float %610, 0x400EFBDEC0000000
  %675 = fadd fast float %674, 0xBFFEFBDEC0000000
  %676 = fmul fast float %675, %583
  %677 = fmul fast float %611, 0x400EFBDEC0000000
  %678 = fadd fast float %677, 0xBFFEFBDEC0000000
  %679 = fmul fast float %678, %581
  %680 = fmul fast float %612, 0x400EFBDEC0000000
  %681 = fadd fast float %680, 0xBFFEFBDEC0000000
  %682 = fmul fast float %681, %582
  %683 = fmul fast float %613, 0x400EFBDEC0000000
  %684 = fadd fast float %683, 0xBFFEFBDEC0000000
  %685 = fmul fast float %684, %583
  br label %686

; <label>:686                                     ; preds = %576, %466
  %687 = phi float [ %676, %576 ], [ %566, %466 ]
  %688 = phi float [ %658, %576 ], [ %548, %466 ]
  %689 = phi float [ %631, %576 ], [ %521, %466 ]
  %690 = phi float [ %667, %576 ], [ %557, %466 ]
  %691 = phi float [ %685, %576 ], [ %575, %466 ]
  %692 = phi float [ %649, %576 ], [ %539, %466 ]
  %693 = phi float [ %622, %576 ], [ %512, %466 ]
  %694 = phi float [ %640, %576 ], [ %530, %466 ]
  %695 = phi float [ %583, %576 ], [ %473, %466 ]
  %696 = phi float [ %673, %576 ], [ %563, %466 ]
  %697 = phi float [ %655, %576 ], [ %545, %466 ]
  %698 = phi float [ %628, %576 ], [ %518, %466 ]
  %699 = phi float [ %664, %576 ], [ %554, %466 ]
  %700 = phi float [ %682, %576 ], [ %572, %466 ]
  %701 = phi float [ %646, %576 ], [ %536, %466 ]
  %702 = phi float [ %619, %576 ], [ %509, %466 ]
  %703 = phi float [ %637, %576 ], [ %527, %466 ]
  %704 = phi float [ %582, %576 ], [ %472, %466 ]
  %705 = phi float [ %670, %576 ], [ %560, %466 ]
  %706 = phi float [ %652, %576 ], [ %542, %466 ]
  %707 = phi float [ %625, %576 ], [ %515, %466 ]
  %708 = phi float [ %661, %576 ], [ %551, %466 ]
  %709 = phi float [ %679, %576 ], [ %569, %466 ]
  %710 = phi float [ %643, %576 ], [ %533, %466 ]
  %711 = phi float [ %616, %576 ], [ %506, %466 ]
  %712 = phi float [ %634, %576 ], [ %524, %466 ]
  %713 = phi float [ %581, %576 ], [ %471, %466 ]
  %714 = fmul fast float %713, 0x3FD20DD760000000
  %715 = fmul fast float %172, 0x3FD4D8D7C0000000
  %716 = fmul fast float %715, %711
  %717 = fmul fast float %172, %172
  %718 = fmul fast float %717, 0x3FEE471020000000
  %719 = fadd fast float %718, 0xBFD42F6020000000
  %720 = fmul fast float %707, %719
  %721 = fmul fast float %170, 0x3FD4D8D7C0000000
  %722 = fmul fast float %721, %710
  %723 = fmul fast float %171, 0x3FD4D8D7C0000000
  %724 = fmul fast float %723, %712
  %725 = fmul fast float %172, 0xBFF17B1420000000
  %726 = fmul fast float %706, %170
  %727 = fmul fast float %708, %171
  %728 = fmul fast float %170, %170
  %729 = fmul fast float %171, %171
  %730 = fsub fast float %728, %729
  %731 = fmul fast float %730, 0x3FC17B1420000000
  %732 = fmul fast float %731, %705
  %733 = fmul fast float %170, 0x3FD17B1420000000
  %734 = fmul fast float %733, %171
  %735 = fmul fast float %734, %709
  %736 = fadd fast float %727, %726
  %737 = fmul fast float %725, %736
  %738 = fadd fast float %737, %720
  %739 = fmul fast float %738, 2.500000e-01
  %740 = fadd fast float %735, %732
  %741 = fsub fast float %740, %722
  %742 = fadd fast float %741, %739
  %743 = fadd fast float %742, %716
  %744 = fadd fast float %743, %714
  %745 = fsub fast float %744, %724
  %746 = fmul fast float %704, 0x3FD20DD760000000
  %747 = fmul fast float %715, %702
  %748 = fmul fast float %698, %719
  %749 = fmul fast float %721, %701
  %750 = fmul fast float %723, %703
  %751 = fmul fast float %697, %170
  %752 = fmul fast float %699, %171
  %753 = fmul fast float %731, %696
  %754 = fmul fast float %734, %700
  %755 = fadd fast float %752, %751
  %756 = fmul fast float %725, %755
  %757 = fadd fast float %756, %748
  %758 = fmul fast float %757, 2.500000e-01
  %759 = fadd fast float %754, %753
  %760 = fsub fast float %759, %749
  %761 = fadd fast float %760, %758
  %762 = fadd fast float %761, %747
  %763 = fadd fast float %762, %746
  %764 = fsub fast float %763, %750
  %765 = fmul fast float %695, 0x3FD20DD760000000
  %766 = fmul fast float %715, %693
  %767 = fmul fast float %689, %719
  %768 = fmul fast float %721, %692
  %769 = fmul fast float %723, %694
  %770 = fmul fast float %688, %170
  %771 = fmul fast float %690, %171
  %772 = fmul fast float %731, %687
  %773 = fmul fast float %734, %691
  %774 = fadd fast float %771, %770
  %775 = fmul fast float %725, %774
  %776 = fadd fast float %775, %767
  %777 = fmul fast float %776, 2.500000e-01
  %778 = fadd fast float %773, %772
  %779 = fsub fast float %778, %768
  %780 = fadd fast float %779, %777
  %781 = fadd fast float %780, %766
  %782 = fadd fast float %781, %765
  %783 = fsub fast float %782, %769
  %784 = call float @dx.op.binary.f32(i32 35, float %745, float 0.000000e+00)  ; FMax(a,b)
  %785 = call float @dx.op.binary.f32(i32 35, float %764, float 0.000000e+00)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 35, float %783, float 0.000000e+00)  ; FMax(a,b)
  %787 = fsub fast float -0.000000e+00, %170
  %788 = fsub fast float -0.000000e+00, %171
  %789 = fmul fast float %172, 0xBFD4D8D7C0000000
  %790 = fmul fast float %789, %711
  %791 = fmul fast float %710, %170
  %792 = fmul fast float %712, %171
  %793 = fmul fast float %172, 0x3FF17B1420000000
  %794 = fmul fast float %706, %787
  %795 = fmul fast float %708, %788
  %796 = fadd fast float %795, %794
  %797 = fmul fast float %793, %796
  %798 = fadd fast float %797, %720
  %799 = fmul fast float %798, 2.500000e-01
  %800 = fadd fast float %792, %791
  %801 = fmul fast float %800, 0x3FD4D8D7C0000000
  %802 = fadd fast float %740, %790
  %803 = fadd fast float %802, %714
  %804 = fadd fast float %803, %799
  %805 = fadd fast float %804, %801
  %806 = fmul fast float %789, %702
  %807 = fmul fast float %701, %170
  %808 = fmul fast float %703, %171
  %809 = fmul fast float %697, %787
  %810 = fmul fast float %699, %788
  %811 = fadd fast float %810, %809
  %812 = fmul fast float %793, %811
  %813 = fadd fast float %812, %748
  %814 = fmul fast float %813, 2.500000e-01
  %815 = fadd fast float %808, %807
  %816 = fmul fast float %815, 0x3FD4D8D7C0000000
  %817 = fadd fast float %759, %806
  %818 = fadd fast float %817, %746
  %819 = fadd fast float %818, %814
  %820 = fadd fast float %819, %816
  %821 = fmul fast float %789, %693
  %822 = fmul fast float %692, %170
  %823 = fmul fast float %694, %171
  %824 = fmul fast float %688, %787
  %825 = fmul fast float %690, %788
  %826 = fadd fast float %825, %824
  %827 = fmul fast float %793, %826
  %828 = fadd fast float %827, %767
  %829 = fmul fast float %828, 2.500000e-01
  %830 = fadd fast float %823, %822
  %831 = fmul fast float %830, 0x3FD4D8D7C0000000
  %832 = fadd fast float %778, %821
  %833 = fadd fast float %832, %765
  %834 = fadd fast float %833, %829
  %835 = fadd fast float %834, %831
  %836 = call float @dx.op.binary.f32(i32 35, float %805, float 0.000000e+00)  ; FMax(a,b)
  %837 = call float @dx.op.binary.f32(i32 35, float %820, float 0.000000e+00)  ; FMax(a,b)
  %838 = call float @dx.op.binary.f32(i32 35, float %835, float 0.000000e+00)  ; FMax(a,b)
  %839 = fmul fast float %328, 0x3FD4D8D7C0000000
  %840 = fmul fast float %839, %711
  %841 = fmul fast float %328, %328
  %842 = fmul fast float %841, 0x3FEE471020000000
  %843 = fadd fast float %842, 0xBFD42F6020000000
  %844 = fmul fast float %707, %843
  %845 = fmul fast float %326, 0x3FD4D8D7C0000000
  %846 = fmul fast float %845, %710
  %847 = fmul fast float %327, 0x3FD4D8D7C0000000
  %848 = fmul fast float %847, %712
  %849 = fmul fast float %328, 0xBFF17B1420000000
  %850 = fmul fast float %706, %326
  %851 = fmul fast float %708, %327
  %852 = fmul fast float %326, %326
  %853 = fmul fast float %327, %327
  %854 = fsub fast float %852, %853
  %855 = fmul fast float %854, 0x3FC17B1420000000
  %856 = fmul fast float %855, %705
  %857 = fmul fast float %327, 0x3FD17B1420000000
  %858 = fmul fast float %857, %326
  %859 = fmul fast float %858, %709
  %860 = fadd fast float %851, %850
  %861 = fmul fast float %849, %860
  %862 = fadd fast float %861, %844
  %863 = fmul fast float %862, 2.500000e-01
  %864 = fadd fast float %859, %856
  %865 = fsub fast float %864, %846
  %866 = fadd fast float %865, %863
  %867 = fadd fast float %866, %840
  %868 = fadd fast float %867, %714
  %869 = fsub fast float %868, %848
  %870 = fmul fast float %839, %702
  %871 = fmul fast float %698, %843
  %872 = fmul fast float %845, %701
  %873 = fmul fast float %847, %703
  %874 = fmul fast float %697, %326
  %875 = fmul fast float %699, %327
  %876 = fmul fast float %855, %696
  %877 = fmul fast float %858, %700
  %878 = fadd fast float %875, %874
  %879 = fmul fast float %849, %878
  %880 = fadd fast float %879, %871
  %881 = fmul fast float %880, 2.500000e-01
  %882 = fadd fast float %877, %876
  %883 = fsub fast float %882, %872
  %884 = fadd fast float %883, %881
  %885 = fadd fast float %884, %870
  %886 = fadd fast float %885, %746
  %887 = fsub fast float %886, %873
  %888 = fmul fast float %839, %693
  %889 = fmul fast float %689, %843
  %890 = fmul fast float %845, %692
  %891 = fmul fast float %847, %694
  %892 = fmul fast float %688, %326
  %893 = fmul fast float %690, %327
  %894 = fmul fast float %855, %687
  %895 = fmul fast float %858, %691
  %896 = fadd fast float %893, %892
  %897 = fmul fast float %849, %896
  %898 = fadd fast float %897, %889
  %899 = fmul fast float %898, 2.500000e-01
  %900 = fadd fast float %895, %894
  %901 = fsub fast float %900, %890
  %902 = fadd fast float %901, %899
  %903 = fadd fast float %902, %888
  %904 = fadd fast float %903, %765
  %905 = fsub fast float %904, %891
  %906 = call float @dx.op.binary.f32(i32 35, float %869, float 0.000000e+00)  ; FMax(a,b)
  %907 = call float @dx.op.binary.f32(i32 35, float %887, float 0.000000e+00)  ; FMax(a,b)
  %908 = call float @dx.op.binary.f32(i32 35, float %905, float 0.000000e+00)  ; FMax(a,b)
  br label %909

; <label>:909                                     ; preds = %686, %373
  %910 = phi float [ %906, %686 ], [ 0.000000e+00, %373 ]
  %911 = phi float [ %907, %686 ], [ 0.000000e+00, %373 ]
  %912 = phi float [ %908, %686 ], [ 0.000000e+00, %373 ]
  %913 = phi float [ %836, %686 ], [ 0.000000e+00, %373 ]
  %914 = phi float [ %837, %686 ], [ 0.000000e+00, %373 ]
  %915 = phi float [ %838, %686 ], [ 0.000000e+00, %373 ]
  %916 = phi float [ %784, %686 ], [ 0.000000e+00, %373 ]
  %917 = phi float [ %785, %686 ], [ 0.000000e+00, %373 ]
  %918 = phi float [ %786, %686 ], [ 0.000000e+00, %373 ]
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %921 = fcmp fast ogt float %920, 0.000000e+00
  %922 = and i1 %375, %921
  br i1 %922, label %923, label %1130, !dx.controlflow.hints !87

; <label>:923                                     ; preds = %909
  %924 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %925 = fadd fast float %924, %251
  %926 = fmul fast float %170, 3.200000e+01
  %927 = fmul fast float %171, 3.200000e+01
  %928 = fadd fast float %333, %926
  %929 = fadd fast float %334, %927
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %933 = fsub fast float %928, %931
  %934 = fsub fast float %929, %932
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = fmul fast float %933, %936
  %939 = fmul fast float %934, %937
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %942 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %943 = fsub fast float %333, %941
  %944 = fsub fast float %334, %942
  %945 = fmul fast float %943, %943
  %946 = fmul fast float %944, %944
  %947 = fadd fast float %945, %946
  %948 = call float @dx.op.unary.f32(i32 24, float %947)  ; Sqrt(value)
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %952 = fsub fast float %948, %950
  %953 = fdiv fast float %952, %951
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = fmul fast float %954, 2.000000e+00
  %956 = fsub fast float 3.000000e+00, %955
  %957 = fmul fast float %954, %954
  %958 = fmul fast float %957, %956
  %959 = fcmp fast oge float %938, 0.000000e+00
  %960 = fcmp fast ole float %938, 1.000000e+00
  %961 = and i1 %960, %959
  %962 = fcmp fast oge float %939, 0.000000e+00
  %963 = and i1 %962, %961
  %964 = fcmp fast ole float %939, 1.000000e+00
  %965 = and i1 %964, %963
  %966 = fcmp fast ogt float %958, 0.000000e+00
  %967 = and i1 %966, %965
  br i1 %967, label %968, label %1091, !dx.controlflow.hints !88

; <label>:968                                     ; preds = %923
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 3
  %972 = fmul fast float %970, %938
  %973 = fmul fast float %971, %939
  %974 = call float @dx.op.unary.f32(i32 27, float %972)  ; Round_ni(value)
  %975 = call float @dx.op.unary.f32(i32 27, float %973)  ; Round_ni(value)
  %976 = fptosi float %974 to i32
  %977 = fptosi float %975 to i32
  %978 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %976, i32 %977, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 16
  %981 = icmp eq i32 %980, 65535
  br i1 %981, label %1091, label %982

; <label>:982                                     ; preds = %968
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = fmul fast float %984, %938
  %986 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %987 = fadd fast float %985, %986
  %988 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %989 = fmul fast float %988, %939
  %990 = extractvalue %dx.types.CBufRet.f32 %983, 3
  %991 = fadd fast float %989, %990
  %992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %987, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %998 = fsub fast float %996, %997
  %999 = fmul fast float %998, %993
  %1000 = fadd fast float %999, %997
  %1001 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %1002 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %1003 = fsub fast float %1001, %1002
  %1004 = fmul fast float %1003, %994
  %1005 = fadd fast float %1004, %1002
  %1006 = fsub fast float %925, %1000
  %1007 = fsub fast float %1005, %1000
  %1008 = fdiv fast float %1006, %1007
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %1011 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %1012 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %1013 = fmul fast float %1011, %938
  %1014 = fmul fast float %1012, %939
  %1015 = fmul fast float %1013, 1.250000e-01
  %1016 = fmul fast float %1014, 1.250000e-01
  %1017 = call float @dx.op.unary.f32(i32 27, float %1015)  ; Round_ni(value)
  %1018 = call float @dx.op.unary.f32(i32 27, float %1016)  ; Round_ni(value)
  %1019 = fmul fast float %1017, 8.000000e+00
  %1020 = fmul fast float %1018, 8.000000e+00
  %1021 = fsub fast float %1013, %1019
  %1022 = fsub fast float %1014, %1020
  %1023 = fadd fast float %1021, 5.000000e-01
  %1024 = fadd fast float %1022, 5.000000e-01
  %1025 = and i32 %980, 255
  %1026 = lshr i32 %979, 24
  %1027 = mul nuw nsw i32 %1025, 9
  %1028 = uitofp i32 %1027 to float
  %1029 = mul nuw nsw i32 %1026, 9
  %1030 = uitofp i32 %1029 to float
  %1031 = fadd fast float %1023, %1028
  %1032 = fadd fast float %1024, %1030
  %1033 = fdiv fast float %1031, %920
  %1034 = fdiv fast float %1032, %1010
  %1035 = fmul fast float %1009, 4.375000e-01
  %1036 = fadd fast float %1035, 3.125000e-02
  %1037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1033, float %1034, float %1036, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1041 = fadd fast float %1035, 5.312500e-01
  %1042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1033, float %1034, float %1041, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = fmul fast float %1043, 2.000000e+00
  %1047 = fmul fast float %1044, 2.000000e+00
  %1048 = fmul fast float %1045, 2.000000e+00
  %1049 = fadd fast float %1046, -1.000000e+00
  %1050 = fadd fast float %1047, -1.000000e+00
  %1051 = fadd fast float %1048, -1.000000e+00
  %1052 = fmul fast float %1049, %1049
  %1053 = fmul fast float %1050, %1050
  %1054 = fadd fast float %1052, %1053
  %1055 = fmul fast float %1051, %1051
  %1056 = fadd fast float %1054, %1055
  %1057 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1058 = fcmp fast ogt float %1057, 0.000000e+00
  br i1 %1058, label %1059, label %1063

; <label>:1059                                    ; preds = %982
  %1060 = fdiv fast float %1049, %1057
  %1061 = fdiv fast float %1050, %1057
  %1062 = fdiv fast float %1051, %1057
  br label %1063

; <label>:1063                                    ; preds = %1059, %982
  %1064 = phi float [ %1060, %1059 ], [ 0.000000e+00, %982 ]
  %1065 = phi float [ %1061, %1059 ], [ 0.000000e+00, %982 ]
  %1066 = phi float [ %1062, %1059 ], [ 0.000000e+00, %982 ]
  %1067 = call float @dx.op.dot3.f32(i32 55, float %1064, float %1065, float %1066, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %1068 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1067)  ; FMax(a,b)
  %1069 = fmul fast float %1068, 0x400C5BF8A0000000
  %1070 = fmul fast float %1038, %958
  %1071 = fmul fast float %1070, %1069
  %1072 = fmul fast float %1039, %958
  %1073 = fmul fast float %1072, %1069
  %1074 = fmul fast float %1040, %958
  %1075 = fmul fast float %1074, %1069
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 3
  %1078 = fmul fast float %1071, %1077
  %1079 = fmul fast float %1073, %1077
  %1080 = fmul fast float %1075, %1077
  %1081 = fcmp fast ogt float %925, %1005
  br i1 %1081, label %1082, label %1091

; <label>:1082                                    ; preds = %1063
  %1083 = fmul fast float %1007, 0x3FC24924A0000000
  %1084 = fsub fast float %925, %1005
  %1085 = fdiv fast float %1084, %1083
  %1086 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1087 = fsub fast float 1.000000e+00, %1086
  %1088 = fmul fast float %1087, %1078
  %1089 = fmul fast float %1087, %1079
  %1090 = fmul fast float %1087, %1080
  br label %1091

; <label>:1091                                    ; preds = %1082, %1063, %968, %923
  %1092 = phi float [ %1090, %1082 ], [ %1080, %1063 ], [ 0.000000e+00, %968 ], [ 0.000000e+00, %923 ]
  %1093 = phi float [ %1089, %1082 ], [ %1079, %1063 ], [ 0.000000e+00, %968 ], [ 0.000000e+00, %923 ]
  %1094 = phi float [ %1088, %1082 ], [ %1078, %1063 ], [ 0.000000e+00, %968 ], [ 0.000000e+00, %923 ]
  %1095 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1094)  ; FMax(a,b)
  %1096 = fmul fast float %1095, 0x3FD20DD760000000
  %1097 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %326, float %327, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = fmul fast float %1097, 0x3FDF454380000000
  %1099 = fmul fast float %1097, %1097
  %1100 = fmul fast float %1099, 0x3FEE471020000000
  %1101 = fadd fast float %1100, 0xBFD42F6020000000
  %1102 = call float @dx.op.dot3.f32(i32 55, float %1095, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1098, float %1101)  ; Dot3(ax,ay,az,bx,by,bz)
  %1103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1093)  ; FMax(a,b)
  %1104 = fmul fast float %1103, 0x3FD20DD760000000
  %1105 = call float @dx.op.dot3.f32(i32 55, float %1103, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1098, float %1101)  ; Dot3(ax,ay,az,bx,by,bz)
  %1106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1092)  ; FMax(a,b)
  %1107 = fmul fast float %1106, 0x3FD20DD760000000
  %1108 = call float @dx.op.dot3.f32(i32 55, float %1106, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1098, float %1101)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = call float @dx.op.binary.f32(i32 35, float %1096, float 0.000000e+00)  ; FMax(a,b)
  %1110 = call float @dx.op.binary.f32(i32 35, float %1104, float 0.000000e+00)  ; FMax(a,b)
  %1111 = call float @dx.op.binary.f32(i32 35, float %1107, float 0.000000e+00)  ; FMax(a,b)
  %1112 = call float @dx.op.binary.f32(i32 35, float %1102, float 0.000000e+00)  ; FMax(a,b)
  %1113 = call float @dx.op.binary.f32(i32 35, float %1105, float 0.000000e+00)  ; FMax(a,b)
  %1114 = call float @dx.op.binary.f32(i32 35, float %1108, float 0.000000e+00)  ; FMax(a,b)
  %1115 = fmul fast float %1109, %374
  %1116 = fmul fast float %1110, %374
  %1117 = fmul fast float %1111, %374
  %1118 = fadd fast float %1115, %916
  %1119 = fadd fast float %1116, %917
  %1120 = fadd fast float %1117, %918
  %1121 = fadd fast float %1115, %913
  %1122 = fadd fast float %1116, %914
  %1123 = fadd fast float %1117, %915
  %1124 = fmul fast float %1112, %374
  %1125 = fmul fast float %1113, %374
  %1126 = fmul fast float %1114, %374
  %1127 = fadd fast float %1124, %910
  %1128 = fadd fast float %1125, %911
  %1129 = fadd fast float %1126, %912
  br label %1130

; <label>:1130                                    ; preds = %1091, %909
  %1131 = phi float [ %1127, %1091 ], [ %910, %909 ]
  %1132 = phi float [ %1128, %1091 ], [ %911, %909 ]
  %1133 = phi float [ %1129, %1091 ], [ %912, %909 ]
  %1134 = phi float [ %1121, %1091 ], [ %913, %909 ]
  %1135 = phi float [ %1122, %1091 ], [ %914, %909 ]
  %1136 = phi float [ %1123, %1091 ], [ %915, %909 ]
  %1137 = phi float [ %1118, %1091 ], [ %916, %909 ]
  %1138 = phi float [ %1119, %1091 ], [ %917, %909 ]
  %1139 = phi float [ %1120, %1091 ], [ %918, %909 ]
  %1140 = fcmp fast olt float %374, 1.000000e+00
  br i1 %1140, label %1141, label %1974, !dx.controlflow.hints !89

; <label>:1141                                    ; preds = %1130
  %1142 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %1143 = fadd fast float %1142, %251
  %1144 = fmul fast float %170, 3.200000e+01
  %1145 = fmul fast float %171, 3.200000e+01
  %1146 = fadd fast float %333, %1144
  %1147 = fadd fast float %334, %1145
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = extractvalue %dx.types.CBufRet.f32 %1148, 1
  %1151 = fsub fast float %1146, %1149
  %1152 = fsub fast float %1147, %1150
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1156 = fmul fast float %1151, %1154
  %1157 = fmul fast float %1152, %1155
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = fmul fast float %1156, %1159
  %1161 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1162 = fadd fast float %1160, %1161
  %1163 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1164 = fmul fast float %1163, %1157
  %1165 = extractvalue %dx.types.CBufRet.f32 %1158, 3
  %1166 = fadd fast float %1164, %1165
  %1167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1162, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.ResRet.f32 %1167, 1
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1173 = fsub fast float %1171, %1172
  %1174 = fmul fast float %1173, %1168
  %1175 = fadd fast float %1174, %1172
  %1176 = extractvalue %dx.types.CBufRet.f32 %1170, 3
  %1177 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1178 = fsub fast float %1176, %1177
  %1179 = fmul fast float %1178, %1169
  %1180 = fadd fast float %1179, %1177
  %1181 = fsub fast float %1143, %1175
  %1182 = fsub fast float %1180, %1175
  %1183 = fdiv fast float %1181, %1182
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = fmul fast float %1186, %1184
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1189 = fadd fast float %1187, %1188
  %1190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %38, float %1162, float %1166, float %1189, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1198 = fmul fast float %1195, %1191
  %1199 = fmul fast float %1196, %1192
  %1200 = fmul fast float %1197, %1193
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1205 = fadd fast float %1198, %1202
  %1206 = fadd fast float %1199, %1203
  %1207 = fadd fast float %1200, %1204
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = fmul fast float %1209, %1156
  %1211 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1212 = fadd fast float %1210, %1211
  %1213 = extractvalue %dx.types.CBufRet.f32 %1208, 2
  %1214 = fmul fast float %1213, %1157
  %1215 = extractvalue %dx.types.CBufRet.f32 %1208, 3
  %1216 = fadd fast float %1214, %1215
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1221 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.CBufRet.f32 %1222, 3
  %1227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1212, float %1216, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.ResRet.f32 %1227, 3
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1212, float %1216, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = fmul fast float %1228, %1205
  %1238 = fmul fast float %1233, %1205
  %1239 = fmul fast float %1235, %1205
  %1240 = fmul fast float %1231, %1205
  %1241 = fadd fast float %1237, %1218
  %1242 = fadd fast float %1238, %1219
  %1243 = fadd fast float %1239, %1220
  %1244 = fadd fast float %1240, %1221
  %1245 = fmul fast float %1229, %1205
  %1246 = fmul fast float %1234, %1205
  %1247 = fadd fast float %1245, %1223
  %1248 = fadd fast float %1246, %1224
  %1249 = fmul fast float %1230, %1205
  %1250 = fmul fast float %1236, %1205
  %1251 = fadd fast float %1249, %1225
  %1252 = fadd fast float %1250, %1226
  %1253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1212, float %1216, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.f32 %1253, 2
  %1257 = extractvalue %dx.types.ResRet.f32 %1253, 3
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1212, float %1216, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = extractvalue %dx.types.ResRet.f32 %1258, 3
  %1263 = fmul fast float %1254, %1206
  %1264 = fmul fast float %1259, %1206
  %1265 = fmul fast float %1261, %1206
  %1266 = fmul fast float %1257, %1206
  %1267 = fadd fast float %1241, %1263
  %1268 = fadd fast float %1242, %1264
  %1269 = fadd fast float %1243, %1265
  %1270 = fadd fast float %1244, %1266
  %1271 = fmul fast float %1255, %1206
  %1272 = fmul fast float %1260, %1206
  %1273 = fadd fast float %1247, %1271
  %1274 = fadd fast float %1248, %1272
  %1275 = fmul fast float %1256, %1206
  %1276 = fmul fast float %1262, %1206
  %1277 = fadd fast float %1251, %1275
  %1278 = fadd fast float %1252, %1276
  %1279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1212, float %1216, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = extractvalue %dx.types.ResRet.f32 %1279, 3
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1212, float %1216, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = extractvalue %dx.types.ResRet.f32 %1284, 3
  %1289 = fmul fast float %1280, %1207
  %1290 = fmul fast float %1285, %1207
  %1291 = fmul fast float %1287, %1207
  %1292 = fmul fast float %1283, %1207
  %1293 = fadd fast float %1267, %1289
  %1294 = fadd fast float %1268, %1290
  %1295 = fadd fast float %1269, %1291
  %1296 = fadd fast float %1270, %1292
  %1297 = fmul fast float %1281, %1207
  %1298 = fmul fast float %1286, %1207
  %1299 = fadd fast float %1273, %1297
  %1300 = fadd fast float %1274, %1298
  %1301 = fmul fast float %1282, %1207
  %1302 = fmul fast float %1288, %1207
  %1303 = fadd fast float %1277, %1301
  %1304 = fadd fast float %1278, %1302
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = fsub fast float %333, %1306
  %1308 = fsub fast float %1149, %333
  %1309 = call float @dx.op.binary.f32(i32 35, float %1308, float %1307)  ; FMax(a,b)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1311 = fsub fast float %334, %1310
  %1312 = fsub fast float %1150, %334
  %1313 = call float @dx.op.binary.f32(i32 35, float %1312, float %1311)  ; FMax(a,b)
  %1314 = call float @dx.op.binary.f32(i32 35, float %1309, float %1313)  ; FMax(a,b)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1153, 3
  %1316 = fmul fast float %1315, %1314
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.CBufRet.f32 %1318, 1
  %1321 = extractvalue %dx.types.CBufRet.f32 %1318, 2
  %1322 = extractvalue %dx.types.CBufRet.f32 %1318, 3
  %1323 = fsub fast float %1319, %1293
  %1324 = fsub fast float %1320, %1294
  %1325 = fsub fast float %1321, %1295
  %1326 = fsub fast float %1322, %1296
  %1327 = fmul fast float %1323, %1317
  %1328 = fmul fast float %1324, %1317
  %1329 = fmul fast float %1325, %1317
  %1330 = fmul fast float %1326, %1317
  %1331 = fadd fast float %1327, %1293
  %1332 = fadd fast float %1328, %1294
  %1333 = fadd fast float %1329, %1295
  %1334 = fadd fast float %1330, %1296
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 0
  %1337 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1338 = fsub fast float %1336, %1299
  %1339 = fsub fast float %1337, %1300
  %1340 = fmul fast float %1338, %1317
  %1341 = fmul fast float %1339, %1317
  %1342 = fadd fast float %1340, %1299
  %1343 = fadd fast float %1341, %1300
  %1344 = extractvalue %dx.types.CBufRet.f32 %1335, 2
  %1345 = extractvalue %dx.types.CBufRet.f32 %1335, 3
  %1346 = fsub fast float %1344, %1303
  %1347 = fsub fast float %1345, %1304
  %1348 = fmul fast float %1346, %1317
  %1349 = fmul fast float %1347, %1317
  %1350 = fadd fast float %1348, %1303
  %1351 = fadd fast float %1349, %1304
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = fmul fast float %1353, %1331
  %1355 = fmul fast float %1353, %1332
  %1356 = fmul fast float %1353, %1333
  %1357 = fmul fast float %1353, %1334
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 0
  %1360 = fmul fast float %1359, %1342
  %1361 = fmul fast float %1359, %1343
  %1362 = fadd fast float %1360, %1354
  %1363 = fadd fast float %1361, %1356
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = fmul fast float %1365, %1350
  %1367 = fmul fast float %1365, %1351
  %1368 = fadd fast float %1362, %1366
  %1369 = fadd fast float %1363, %1367
  %1370 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1371 = fmul fast float %1370, %1331
  %1372 = fmul fast float %1370, %1332
  %1373 = fmul fast float %1370, %1333
  %1374 = fmul fast float %1370, %1334
  %1375 = extractvalue %dx.types.CBufRet.f32 %1358, 1
  %1376 = fmul fast float %1375, %1342
  %1377 = fmul fast float %1375, %1343
  %1378 = fadd fast float %1376, %1371
  %1379 = fadd fast float %1377, %1373
  %1380 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1381 = fmul fast float %1380, %1350
  %1382 = fmul fast float %1380, %1351
  %1383 = fadd fast float %1378, %1381
  %1384 = fadd fast float %1379, %1382
  %1385 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1386 = fmul fast float %1385, %1331
  %1387 = fmul fast float %1385, %1332
  %1388 = fmul fast float %1385, %1333
  %1389 = fmul fast float %1385, %1334
  %1390 = extractvalue %dx.types.CBufRet.f32 %1358, 2
  %1391 = fmul fast float %1390, %1342
  %1392 = fmul fast float %1390, %1343
  %1393 = fadd fast float %1391, %1386
  %1394 = fadd fast float %1392, %1388
  %1395 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1396 = fmul fast float %1395, %1350
  %1397 = fmul fast float %1395, %1351
  %1398 = fadd fast float %1393, %1396
  %1399 = fadd fast float %1394, %1397
  %1400 = fmul fast float %1387, %1387
  %1401 = fmul fast float %1399, %1399
  %1402 = fmul fast float %1389, %1389
  %1403 = fadd fast float %1402, %1400
  %1404 = fadd fast float %1403, %1401
  %1405 = call float @dx.op.unary.f32(i32 24, float %1404)  ; Sqrt(value)
  %1406 = fcmp fast ugt float %1405, 0.000000e+00
  br i1 %1406, label %1407, label %1422

; <label>:1407                                    ; preds = %1141
  %1408 = fsub fast float -0.000000e+00, %1389
  %1409 = fdiv fast float %1408, %1405
  %1410 = fsub fast float -0.000000e+00, %1387
  %1411 = fdiv fast float %1410, %1405
  %1412 = fdiv fast float %1399, %1405
  %1413 = fmul fast float %1398, 0x3FE279A760000000
  %1414 = fmul fast float %1411, %1387
  %1415 = fmul fast float %1412, %1399
  %1416 = fmul fast float %1409, %1389
  %1417 = fadd fast float %1414, %1416
  %1418 = fsub fast float %1417, %1415
  %1419 = call float @dx.op.unary.f32(i32 6, float %1418)  ; FAbs(value)
  %1420 = fadd fast float %1419, 0x3DDB7CDFE0000000
  %1421 = fdiv fast float %1413, %1420
  br label %1422

; <label>:1422                                    ; preds = %1407, %1141
  %1423 = phi float [ %1421, %1407 ], [ 1.000000e+00, %1141 ]
  %1424 = fmul fast float %1372, %1372
  %1425 = fmul fast float %1384, %1384
  %1426 = fmul fast float %1374, %1374
  %1427 = fadd fast float %1426, %1424
  %1428 = fadd fast float %1427, %1425
  %1429 = call float @dx.op.unary.f32(i32 24, float %1428)  ; Sqrt(value)
  %1430 = fcmp fast ugt float %1429, 0.000000e+00
  br i1 %1430, label %1431, label %1446

; <label>:1431                                    ; preds = %1422
  %1432 = fsub fast float -0.000000e+00, %1374
  %1433 = fdiv fast float %1432, %1429
  %1434 = fsub fast float -0.000000e+00, %1372
  %1435 = fdiv fast float %1434, %1429
  %1436 = fdiv fast float %1384, %1429
  %1437 = fmul fast float %1383, 0x3FE279A760000000
  %1438 = fmul fast float %1435, %1372
  %1439 = fmul fast float %1436, %1384
  %1440 = fmul fast float %1433, %1374
  %1441 = fadd fast float %1438, %1440
  %1442 = fsub fast float %1441, %1439
  %1443 = call float @dx.op.unary.f32(i32 6, float %1442)  ; FAbs(value)
  %1444 = fadd fast float %1443, 0x3DDB7CDFE0000000
  %1445 = fdiv fast float %1437, %1444
  br label %1446

; <label>:1446                                    ; preds = %1431, %1422
  %1447 = phi float [ %1445, %1431 ], [ 1.000000e+00, %1422 ]
  %1448 = call float @dx.op.binary.f32(i32 36, float %1447, float %1423)  ; FMin(a,b)
  %1449 = fmul fast float %1355, %1355
  %1450 = fmul fast float %1369, %1369
  %1451 = fmul fast float %1357, %1357
  %1452 = fadd fast float %1451, %1449
  %1453 = fadd fast float %1452, %1450
  %1454 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1455 = fcmp fast ugt float %1454, 0.000000e+00
  br i1 %1455, label %1456, label %1471

; <label>:1456                                    ; preds = %1446
  %1457 = fsub fast float -0.000000e+00, %1357
  %1458 = fdiv fast float %1457, %1454
  %1459 = fsub fast float -0.000000e+00, %1355
  %1460 = fdiv fast float %1459, %1454
  %1461 = fdiv fast float %1369, %1454
  %1462 = fmul fast float %1368, 0x3FE279A760000000
  %1463 = fmul fast float %1460, %1355
  %1464 = fmul fast float %1461, %1369
  %1465 = fmul fast float %1458, %1357
  %1466 = fadd fast float %1463, %1465
  %1467 = fsub fast float %1466, %1464
  %1468 = call float @dx.op.unary.f32(i32 6, float %1467)  ; FAbs(value)
  %1469 = fadd fast float %1468, 0x3DDB7CDFE0000000
  %1470 = fdiv fast float %1462, %1469
  br label %1471

; <label>:1471                                    ; preds = %1456, %1446
  %1472 = phi float [ %1470, %1456 ], [ 1.000000e+00, %1446 ]
  %1473 = call float @dx.op.binary.f32(i32 36, float %1472, float %1448)  ; FMin(a,b)
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1475 = fcmp fast olt float %1474, 1.000000e+00
  br i1 %1475, label %1476, label %1486

; <label>:1476                                    ; preds = %1471
  %1477 = fmul fast float %1474, %1355
  %1478 = fmul fast float %1474, %1369
  %1479 = fmul fast float %1474, %1357
  %1480 = fmul fast float %1474, %1372
  %1481 = fmul fast float %1474, %1384
  %1482 = fmul fast float %1474, %1374
  %1483 = fmul fast float %1474, %1387
  %1484 = fmul fast float %1474, %1399
  %1485 = fmul fast float %1474, %1389
  br label %1486

; <label>:1486                                    ; preds = %1476, %1471
  %1487 = phi float [ %1483, %1476 ], [ %1387, %1471 ]
  %1488 = phi float [ %1484, %1476 ], [ %1399, %1471 ]
  %1489 = phi float [ %1485, %1476 ], [ %1389, %1471 ]
  %1490 = phi float [ %1480, %1476 ], [ %1372, %1471 ]
  %1491 = phi float [ %1481, %1476 ], [ %1384, %1471 ]
  %1492 = phi float [ %1482, %1476 ], [ %1374, %1471 ]
  %1493 = phi float [ %1477, %1476 ], [ %1355, %1471 ]
  %1494 = phi float [ %1478, %1476 ], [ %1369, %1471 ]
  %1495 = phi float [ %1479, %1476 ], [ %1357, %1471 ]
  %1496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1368)  ; FMax(a,b)
  %1497 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1383)  ; FMax(a,b)
  %1498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1398)  ; FMax(a,b)
  %1499 = fcmp fast oge float %1156, 0.000000e+00
  %1500 = and i1 %1499, %921
  %1501 = fcmp fast ole float %1156, 1.000000e+00
  %1502 = and i1 %1501, %1500
  %1503 = fcmp fast oge float %1157, 0.000000e+00
  %1504 = and i1 %1503, %1502
  %1505 = fcmp fast ole float %1157, 1.000000e+00
  %1506 = and i1 %1505, %1504
  br i1 %1506, label %1507, label %1652, !dx.controlflow.hints !90

; <label>:1507                                    ; preds = %1486
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 2
  %1510 = extractvalue %dx.types.CBufRet.f32 %1508, 3
  %1511 = fmul fast float %1509, %1156
  %1512 = fmul fast float %1510, %1157
  %1513 = call float @dx.op.unary.f32(i32 27, float %1511)  ; Round_ni(value)
  %1514 = call float @dx.op.unary.f32(i32 27, float %1512)  ; Round_ni(value)
  %1515 = fptosi float %1513 to i32
  %1516 = fptosi float %1514 to i32
  %1517 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %1515, i32 %1516, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 65535
  %1520 = lshr i32 %1518, 16
  %1521 = icmp eq i32 %1519, 65535
  br i1 %1521, label %1558, label %1522

; <label>:1522                                    ; preds = %1507
  %1523 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %1524 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1525 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1526 = fmul fast float %1524, %1156
  %1527 = fmul fast float %1525, %1157
  %1528 = fmul fast float %1526, 1.250000e-01
  %1529 = fmul fast float %1527, 1.250000e-01
  %1530 = call float @dx.op.unary.f32(i32 27, float %1528)  ; Round_ni(value)
  %1531 = call float @dx.op.unary.f32(i32 27, float %1529)  ; Round_ni(value)
  %1532 = fmul fast float %1530, 8.000000e+00
  %1533 = fmul fast float %1531, 8.000000e+00
  %1534 = and i32 %1518, 255
  %1535 = lshr i32 %1518, 8
  %1536 = and i32 %1535, 255
  %1537 = mul nuw nsw i32 %1534, 9
  %1538 = uitofp i32 %1537 to float
  %1539 = mul nuw nsw i32 %1536, 9
  %1540 = uitofp i32 %1539 to float
  %1541 = fadd fast float %1538, 5.000000e-01
  %1542 = fadd fast float %1541, %1526
  %1543 = fsub fast float %1542, %1532
  %1544 = fadd fast float %1540, 5.000000e-01
  %1545 = fadd fast float %1544, %1527
  %1546 = fsub fast float %1545, %1533
  %1547 = fdiv fast float %1543, %920
  %1548 = fdiv fast float %1546, %1523
  %1549 = fmul fast float %1184, 4.375000e-01
  %1550 = fadd fast float %1549, 3.125000e-02
  %1551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1547, float %1548, float %1550, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1555 = fadd fast float %1552, %1496
  %1556 = fadd fast float %1553, %1497
  %1557 = fadd fast float %1554, %1498
  br label %1558

; <label>:1558                                    ; preds = %1522, %1507
  %1559 = phi float [ %1557, %1522 ], [ %1498, %1507 ]
  %1560 = phi float [ %1556, %1522 ], [ %1497, %1507 ]
  %1561 = phi float [ %1555, %1522 ], [ %1496, %1507 ]
  %1562 = icmp eq i32 %1520, 65535
  br i1 %1562, label %1652, label %1563

; <label>:1563                                    ; preds = %1558
  %1564 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %1565 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1566 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1567 = fmul fast float %1565, %1156
  %1568 = fmul fast float %1566, %1157
  %1569 = fmul fast float %1567, 1.250000e-01
  %1570 = fmul fast float %1568, 1.250000e-01
  %1571 = call float @dx.op.unary.f32(i32 27, float %1569)  ; Round_ni(value)
  %1572 = call float @dx.op.unary.f32(i32 27, float %1570)  ; Round_ni(value)
  %1573 = fmul fast float %1571, 8.000000e+00
  %1574 = fmul fast float %1572, 8.000000e+00
  %1575 = fsub fast float %1567, %1573
  %1576 = fsub fast float %1568, %1574
  %1577 = fadd fast float %1575, 5.000000e-01
  %1578 = fadd fast float %1576, 5.000000e-01
  %1579 = and i32 %1520, 255
  %1580 = lshr i32 %1518, 24
  %1581 = mul nuw nsw i32 %1579, 9
  %1582 = uitofp i32 %1581 to float
  %1583 = mul nuw nsw i32 %1580, 9
  %1584 = uitofp i32 %1583 to float
  %1585 = fadd fast float %1577, %1582
  %1586 = fadd fast float %1578, %1584
  %1587 = fdiv fast float %1585, %920
  %1588 = fdiv fast float %1586, %1564
  %1589 = fmul fast float %1184, 4.375000e-01
  %1590 = fadd fast float %1589, 3.125000e-02
  %1591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1587, float %1588, float %1590, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.ResRet.f32 %1591, 1
  %1594 = extractvalue %dx.types.ResRet.f32 %1591, 2
  %1595 = fadd fast float %1589, 5.312500e-01
  %1596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1587, float %1588, float %1595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = fmul fast float %1597, 2.000000e+00
  %1601 = fmul fast float %1598, 2.000000e+00
  %1602 = fmul fast float %1599, 2.000000e+00
  %1603 = fadd fast float %1600, -1.000000e+00
  %1604 = fadd fast float %1601, -1.000000e+00
  %1605 = fadd fast float %1602, -1.000000e+00
  %1606 = fmul fast float %1603, %1603
  %1607 = fmul fast float %1604, %1604
  %1608 = fadd fast float %1606, %1607
  %1609 = fmul fast float %1605, %1605
  %1610 = fadd fast float %1608, %1609
  %1611 = call float @dx.op.unary.f32(i32 24, float %1610)  ; Sqrt(value)
  %1612 = fcmp fast ogt float %1611, 0.000000e+00
  br i1 %1612, label %1613, label %1617

; <label>:1613                                    ; preds = %1563
  %1614 = fdiv fast float %1603, %1611
  %1615 = fdiv fast float %1604, %1611
  %1616 = fdiv fast float %1605, %1611
  br label %1617

; <label>:1617                                    ; preds = %1613, %1563
  %1618 = phi float [ %1614, %1613 ], [ 0.000000e+00, %1563 ]
  %1619 = phi float [ %1615, %1613 ], [ 0.000000e+00, %1563 ]
  %1620 = phi float [ %1616, %1613 ], [ 0.000000e+00, %1563 ]
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 0
  %1623 = extractvalue %dx.types.CBufRet.f32 %1621, 1
  %1624 = fsub fast float %333, %1622
  %1625 = fsub fast float %334, %1623
  %1626 = fmul fast float %1624, %1624
  %1627 = fmul fast float %1625, %1625
  %1628 = fadd fast float %1626, %1627
  %1629 = call float @dx.op.unary.f32(i32 24, float %1628)  ; Sqrt(value)
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1633 = fsub fast float %1629, %1631
  %1634 = fdiv fast float %1633, %1632
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = fmul fast float %1635, 2.000000e+00
  %1637 = fsub fast float 3.000000e+00, %1636
  %1638 = fmul fast float %1635, %1635
  %1639 = fmul fast float %1638, %1637
  %1640 = call float @dx.op.dot3.f32(i32 55, float %1618, float %1619, float %1620, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %1641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1640)  ; FMax(a,b)
  %1642 = fmul fast float %1641, 0x400C5BF8A0000000
  %1643 = fmul fast float %1639, %1592
  %1644 = fmul fast float %1643, %1642
  %1645 = fadd fast float %1644, %1561
  %1646 = fmul fast float %1639, %1593
  %1647 = fmul fast float %1646, %1642
  %1648 = fadd fast float %1647, %1560
  %1649 = fmul fast float %1639, %1594
  %1650 = fmul fast float %1649, %1642
  %1651 = fadd fast float %1650, %1559
  br label %1652

; <label>:1652                                    ; preds = %1617, %1558, %1486
  %1653 = phi float [ %1651, %1617 ], [ %1559, %1558 ], [ %1498, %1486 ]
  %1654 = phi float [ %1648, %1617 ], [ %1560, %1558 ], [ %1497, %1486 ]
  %1655 = phi float [ %1645, %1617 ], [ %1561, %1558 ], [ %1496, %1486 ]
  %1656 = fcmp fast ogt float %1143, %1180
  %1657 = and i1 %1499, %1656
  %1658 = and i1 %1501, %1657
  %1659 = and i1 %1503, %1658
  %1660 = and i1 %1505, %1659
  br i1 %1660, label %1661, label %1718, !dx.controlflow.hints !91

; <label>:1661                                    ; preds = %1652
  %1662 = fmul fast float %1182, 0x3FC24924A0000000
  %1663 = fsub fast float %1143, %1180
  %1664 = fdiv fast float %1663, %1662
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.CBufRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.CBufRet.f32 %1668, 2
  %1672 = fsub fast float %1667, %1655
  %1673 = fsub fast float %1669, %1493
  %1674 = fsub fast float %1670, %1494
  %1675 = fsub fast float %1671, %1495
  %1676 = fmul fast float %1672, %1665
  %1677 = fmul fast float %1673, %1665
  %1678 = fmul fast float %1674, %1665
  %1679 = fmul fast float %1675, %1665
  %1680 = fadd fast float %1676, %1655
  %1681 = fadd fast float %1677, %1493
  %1682 = fadd fast float %1678, %1494
  %1683 = fadd fast float %1679, %1495
  %1684 = extractvalue %dx.types.CBufRet.f32 %1666, 1
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.CBufRet.f32 %1685, 2
  %1689 = fsub fast float %1684, %1654
  %1690 = fsub fast float %1686, %1490
  %1691 = fsub fast float %1687, %1491
  %1692 = fsub fast float %1688, %1492
  %1693 = fmul fast float %1689, %1665
  %1694 = fmul fast float %1690, %1665
  %1695 = fmul fast float %1691, %1665
  %1696 = fmul fast float %1692, %1665
  %1697 = fadd fast float %1693, %1654
  %1698 = fadd fast float %1694, %1490
  %1699 = fadd fast float %1695, %1491
  %1700 = fadd fast float %1696, %1492
  %1701 = extractvalue %dx.types.CBufRet.f32 %1666, 2
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.CBufRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1706 = fsub fast float %1701, %1653
  %1707 = fsub fast float %1703, %1487
  %1708 = fsub fast float %1704, %1488
  %1709 = fsub fast float %1705, %1489
  %1710 = fmul fast float %1706, %1665
  %1711 = fmul fast float %1707, %1665
  %1712 = fmul fast float %1708, %1665
  %1713 = fmul fast float %1709, %1665
  %1714 = fadd fast float %1710, %1653
  %1715 = fadd fast float %1711, %1487
  %1716 = fadd fast float %1712, %1488
  %1717 = fadd fast float %1713, %1489
  br label %1718

; <label>:1718                                    ; preds = %1661, %1652
  %1719 = phi float [ %1714, %1661 ], [ %1653, %1652 ]
  %1720 = phi float [ %1715, %1661 ], [ %1487, %1652 ]
  %1721 = phi float [ %1716, %1661 ], [ %1488, %1652 ]
  %1722 = phi float [ %1717, %1661 ], [ %1489, %1652 ]
  %1723 = phi float [ %1697, %1661 ], [ %1654, %1652 ]
  %1724 = phi float [ %1698, %1661 ], [ %1490, %1652 ]
  %1725 = phi float [ %1699, %1661 ], [ %1491, %1652 ]
  %1726 = phi float [ %1700, %1661 ], [ %1492, %1652 ]
  %1727 = phi float [ %1680, %1661 ], [ %1655, %1652 ]
  %1728 = phi float [ %1681, %1661 ], [ %1493, %1652 ]
  %1729 = phi float [ %1682, %1661 ], [ %1494, %1652 ]
  %1730 = phi float [ %1683, %1661 ], [ %1495, %1652 ]
  %1731 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1732 = fmul fast float %1731, %1727
  %1733 = fmul fast float %1731, %1723
  %1734 = fmul fast float %1731, %1719
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 3
  %1737 = fmul fast float %1732, %1736
  %1738 = fmul fast float %1733, %1736
  %1739 = fmul fast float %1734, %1736
  %1740 = fmul fast float %1728, 1.500000e+00
  %1741 = fmul fast float %1740, %1731
  %1742 = fmul fast float %1741, %1736
  %1743 = fmul fast float %1729, 1.500000e+00
  %1744 = fmul fast float %1743, %1731
  %1745 = fmul fast float %1744, %1736
  %1746 = fmul fast float %1730, 1.500000e+00
  %1747 = fmul fast float %1746, %1731
  %1748 = fmul fast float %1747, %1736
  %1749 = fmul fast float %1724, 1.500000e+00
  %1750 = fmul fast float %1749, %1731
  %1751 = fmul fast float %1750, %1736
  %1752 = fmul fast float %1725, 1.500000e+00
  %1753 = fmul fast float %1752, %1731
  %1754 = fmul fast float %1753, %1736
  %1755 = fmul fast float %1726, 1.500000e+00
  %1756 = fmul fast float %1755, %1731
  %1757 = fmul fast float %1756, %1736
  %1758 = fmul fast float %1720, 1.500000e+00
  %1759 = fmul fast float %1758, %1731
  %1760 = fmul fast float %1759, %1736
  %1761 = fmul fast float %1721, 1.500000e+00
  %1762 = fmul fast float %1761, %1731
  %1763 = fmul fast float %1762, %1736
  %1764 = fmul fast float %1722, 1.500000e+00
  %1765 = fmul fast float %1764, %1731
  %1766 = fmul fast float %1765, %1736
  %1767 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1737)  ; FMax(a,b)
  %1768 = call float @dx.op.dot3.f32(i32 55, float %1742, float %1745, float %1748, float %1742, float %1745, float %1748)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = fcmp fast oeq float %1768, 0.000000e+00
  %1770 = fcmp fast oeq float %1767, 0.000000e+00
  %1771 = or i1 %1770, %1769
  br i1 %1771, label %1801, label %1772

; <label>:1772                                    ; preds = %1718
  %1773 = fsub fast float -0.000000e+00, %1748
  %1774 = fsub fast float -0.000000e+00, %1742
  %1775 = call float @dx.op.unary.f32(i32 24, float %1768)  ; Sqrt(value)
  %1776 = fdiv fast float %1775, %1767
  %1777 = fcmp fast ogt float %1776, 0x3FFB6F8900000000
  %1778 = select i1 %1777, float 0x3FFB6F8900000000, float %1776
  %1779 = fmul fast float %1778, 0x3FE8A23460000000
  %1780 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1781 = call float @dx.op.binary.f32(i32 35, float %1778, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1782 = fmul fast float %1780, %1767
  %1783 = fmul fast float %1781, 0x3FF279A740000000
  %1784 = fadd fast float %1783, -1.000000e+00
  %1785 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1774, float %1745, float %1773, float %1774, float %1745)  ; Dot3(ax,ay,az,bx,by,bz)
  %1786 = call float @dx.op.unary.f32(i32 25, float %1785)  ; Rsqrt(value)
  %1787 = fmul fast float %1786, %1773
  %1788 = fmul fast float %1786, %1774
  %1789 = fmul fast float %1786, %1745
  %1790 = fmul fast float %1784, %1784
  %1791 = fsub fast float 1.000000e+00, %1790
  %1792 = fmul fast float %1781, 0x40005F8BE0000000
  %1793 = fsub fast float 0x400C5BF8A0000000, %1792
  %1794 = fdiv fast float %1782, %1793
  %1795 = fmul fast float %1794, 0x3FEE31C3C0000000
  %1796 = fmul fast float %1795, %1791
  %1797 = fmul fast float %1781, 0x3FDACB7480000000
  %1798 = fadd fast float %1797, 0xBFD7347680000000
  %1799 = fmul fast float %1798, %1794
  %1800 = fmul fast float %1799, %1791
  br label %1801

; <label>:1801                                    ; preds = %1772, %1718
  %1802 = phi float [ %1787, %1772 ], [ 0.000000e+00, %1718 ]
  %1803 = phi float [ %1788, %1772 ], [ 0.000000e+00, %1718 ]
  %1804 = phi float [ %1789, %1772 ], [ 0.000000e+00, %1718 ]
  %1805 = phi float [ %1796, %1772 ], [ 0.000000e+00, %1718 ]
  %1806 = phi float [ %1800, %1772 ], [ 0.000000e+00, %1718 ]
  %1807 = call float @dx.op.dot3.f32(i32 55, float %1802, float %1803, float %1804, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %1808 = fmul fast float %1807, 0x3FDF454380000000
  %1809 = fmul fast float %1807, %1807
  %1810 = fmul fast float %1809, 0x3FEE471020000000
  %1811 = fadd fast float %1810, 0xBFD42F6020000000
  %1812 = fmul fast float %1767, 0x3FD20DD760000000
  %1813 = fmul fast float %1811, %1806
  %1814 = fadd fast float %1813, %1812
  %1815 = fmul fast float %1808, %1805
  %1816 = fadd fast float %1814, %1815
  %1817 = fsub fast float %1814, %1815
  %1818 = call float @dx.op.dot3.f32(i32 55, float %1802, float %1803, float %1804, float %326, float %327, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %1819 = fmul fast float %1818, 0x3FDF454380000000
  %1820 = fmul fast float %1818, %1818
  %1821 = fmul fast float %1820, 0x3FEE471020000000
  %1822 = fadd fast float %1821, 0xBFD42F6020000000
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1767, float %1805, float %1806, float 0x3FD20DD760000000, float %1819, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1738)  ; FMax(a,b)
  %1825 = call float @dx.op.dot3.f32(i32 55, float %1751, float %1754, float %1757, float %1751, float %1754, float %1757)  ; Dot3(ax,ay,az,bx,by,bz)
  %1826 = fcmp fast oeq float %1825, 0.000000e+00
  %1827 = fcmp fast oeq float %1824, 0.000000e+00
  %1828 = or i1 %1827, %1826
  br i1 %1828, label %1858, label %1829

; <label>:1829                                    ; preds = %1801
  %1830 = fsub fast float -0.000000e+00, %1757
  %1831 = fsub fast float -0.000000e+00, %1751
  %1832 = call float @dx.op.unary.f32(i32 24, float %1825)  ; Sqrt(value)
  %1833 = fdiv fast float %1832, %1824
  %1834 = fcmp fast ogt float %1833, 0x3FFB6F8900000000
  %1835 = select i1 %1834, float 0x3FFB6F8900000000, float %1833
  %1836 = fmul fast float %1835, 0x3FE8A23460000000
  %1837 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1838 = call float @dx.op.binary.f32(i32 35, float %1835, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1839 = fmul fast float %1837, %1824
  %1840 = fmul fast float %1838, 0x3FF279A740000000
  %1841 = fadd fast float %1840, -1.000000e+00
  %1842 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1831, float %1754, float %1830, float %1831, float %1754)  ; Dot3(ax,ay,az,bx,by,bz)
  %1843 = call float @dx.op.unary.f32(i32 25, float %1842)  ; Rsqrt(value)
  %1844 = fmul fast float %1843, %1830
  %1845 = fmul fast float %1843, %1831
  %1846 = fmul fast float %1843, %1754
  %1847 = fmul fast float %1841, %1841
  %1848 = fsub fast float 1.000000e+00, %1847
  %1849 = fmul fast float %1838, 0x40005F8BE0000000
  %1850 = fsub fast float 0x400C5BF8A0000000, %1849
  %1851 = fdiv fast float %1839, %1850
  %1852 = fmul fast float %1851, 0x3FEE31C3C0000000
  %1853 = fmul fast float %1852, %1848
  %1854 = fmul fast float %1838, 0x3FDACB7480000000
  %1855 = fadd fast float %1854, 0xBFD7347680000000
  %1856 = fmul fast float %1855, %1851
  %1857 = fmul fast float %1856, %1848
  br label %1858

; <label>:1858                                    ; preds = %1829, %1801
  %1859 = phi float [ %1844, %1829 ], [ 0.000000e+00, %1801 ]
  %1860 = phi float [ %1845, %1829 ], [ 0.000000e+00, %1801 ]
  %1861 = phi float [ %1846, %1829 ], [ 0.000000e+00, %1801 ]
  %1862 = phi float [ %1853, %1829 ], [ 0.000000e+00, %1801 ]
  %1863 = phi float [ %1857, %1829 ], [ 0.000000e+00, %1801 ]
  %1864 = call float @dx.op.dot3.f32(i32 55, float %1859, float %1860, float %1861, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %1865 = fmul fast float %1864, 0x3FDF454380000000
  %1866 = fmul fast float %1864, %1864
  %1867 = fmul fast float %1866, 0x3FEE471020000000
  %1868 = fadd fast float %1867, 0xBFD42F6020000000
  %1869 = fmul fast float %1824, 0x3FD20DD760000000
  %1870 = fmul fast float %1868, %1863
  %1871 = fadd fast float %1870, %1869
  %1872 = fmul fast float %1865, %1862
  %1873 = fadd fast float %1871, %1872
  %1874 = fsub fast float %1871, %1872
  %1875 = call float @dx.op.dot3.f32(i32 55, float %1859, float %1860, float %1861, float %326, float %327, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %1876 = fmul fast float %1875, 0x3FDF454380000000
  %1877 = fmul fast float %1875, %1875
  %1878 = fmul fast float %1877, 0x3FEE471020000000
  %1879 = fadd fast float %1878, 0xBFD42F6020000000
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1824, float %1862, float %1863, float 0x3FD20DD760000000, float %1876, float %1879)  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1739)  ; FMax(a,b)
  %1882 = call float @dx.op.dot3.f32(i32 55, float %1760, float %1763, float %1766, float %1760, float %1763, float %1766)  ; Dot3(ax,ay,az,bx,by,bz)
  %1883 = fcmp fast oeq float %1882, 0.000000e+00
  %1884 = fcmp fast oeq float %1881, 0.000000e+00
  %1885 = or i1 %1884, %1883
  br i1 %1885, label %1915, label %1886

; <label>:1886                                    ; preds = %1858
  %1887 = fsub fast float -0.000000e+00, %1766
  %1888 = fsub fast float -0.000000e+00, %1760
  %1889 = call float @dx.op.unary.f32(i32 24, float %1882)  ; Sqrt(value)
  %1890 = fdiv fast float %1889, %1881
  %1891 = fcmp fast ogt float %1890, 0x3FFB6F8900000000
  %1892 = select i1 %1891, float 0x3FFB6F8900000000, float %1890
  %1893 = fmul fast float %1892, 0x3FE8A23460000000
  %1894 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1895 = call float @dx.op.binary.f32(i32 35, float %1892, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1896 = fmul fast float %1894, %1881
  %1897 = fmul fast float %1895, 0x3FF279A740000000
  %1898 = fadd fast float %1897, -1.000000e+00
  %1899 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1763, float %1887, float %1888, float %1763)  ; Dot3(ax,ay,az,bx,by,bz)
  %1900 = call float @dx.op.unary.f32(i32 25, float %1899)  ; Rsqrt(value)
  %1901 = fmul fast float %1900, %1887
  %1902 = fmul fast float %1900, %1888
  %1903 = fmul fast float %1900, %1763
  %1904 = fmul fast float %1898, %1898
  %1905 = fsub fast float 1.000000e+00, %1904
  %1906 = fmul fast float %1895, 0x40005F8BE0000000
  %1907 = fsub fast float 0x400C5BF8A0000000, %1906
  %1908 = fdiv fast float %1896, %1907
  %1909 = fmul fast float %1908, 0x3FEE31C3C0000000
  %1910 = fmul fast float %1909, %1905
  %1911 = fmul fast float %1895, 0x3FDACB7480000000
  %1912 = fadd fast float %1911, 0xBFD7347680000000
  %1913 = fmul fast float %1912, %1908
  %1914 = fmul fast float %1913, %1905
  br label %1915

; <label>:1915                                    ; preds = %1886, %1858
  %1916 = phi float [ %1901, %1886 ], [ 0.000000e+00, %1858 ]
  %1917 = phi float [ %1902, %1886 ], [ 0.000000e+00, %1858 ]
  %1918 = phi float [ %1903, %1886 ], [ 0.000000e+00, %1858 ]
  %1919 = phi float [ %1910, %1886 ], [ 0.000000e+00, %1858 ]
  %1920 = phi float [ %1914, %1886 ], [ 0.000000e+00, %1858 ]
  %1921 = call float @dx.op.dot3.f32(i32 55, float %1916, float %1917, float %1918, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %1922 = fmul fast float %1921, 0x3FDF454380000000
  %1923 = fmul fast float %1921, %1921
  %1924 = fmul fast float %1923, 0x3FEE471020000000
  %1925 = fadd fast float %1924, 0xBFD42F6020000000
  %1926 = fmul fast float %1881, 0x3FD20DD760000000
  %1927 = fmul fast float %1925, %1920
  %1928 = fadd fast float %1927, %1926
  %1929 = fmul fast float %1922, %1919
  %1930 = fadd fast float %1928, %1929
  %1931 = fsub fast float %1928, %1929
  %1932 = call float @dx.op.dot3.f32(i32 55, float %1916, float %1917, float %1918, float %326, float %327, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %1933 = fmul fast float %1932, 0x3FDF454380000000
  %1934 = fmul fast float %1932, %1932
  %1935 = fmul fast float %1934, 0x3FEE471020000000
  %1936 = fadd fast float %1935, 0xBFD42F6020000000
  %1937 = call float @dx.op.dot3.f32(i32 55, float %1881, float %1919, float %1920, float 0x3FD20DD760000000, float %1933, float %1936)  ; Dot3(ax,ay,az,bx,by,bz)
  %1938 = call float @dx.op.binary.f32(i32 35, float %1816, float 0.000000e+00)  ; FMax(a,b)
  %1939 = call float @dx.op.binary.f32(i32 35, float %1873, float 0.000000e+00)  ; FMax(a,b)
  %1940 = call float @dx.op.binary.f32(i32 35, float %1930, float 0.000000e+00)  ; FMax(a,b)
  %1941 = call float @dx.op.binary.f32(i32 35, float %1817, float 0.000000e+00)  ; FMax(a,b)
  %1942 = call float @dx.op.binary.f32(i32 35, float %1874, float 0.000000e+00)  ; FMax(a,b)
  %1943 = call float @dx.op.binary.f32(i32 35, float %1931, float 0.000000e+00)  ; FMax(a,b)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1823, float 0.000000e+00)  ; FMax(a,b)
  %1945 = call float @dx.op.binary.f32(i32 35, float %1880, float 0.000000e+00)  ; FMax(a,b)
  %1946 = call float @dx.op.binary.f32(i32 35, float %1937, float 0.000000e+00)  ; FMax(a,b)
  %1947 = fsub fast float %1137, %1938
  %1948 = fsub fast float %1138, %1939
  %1949 = fsub fast float %1139, %1940
  %1950 = fmul fast float %1947, %374
  %1951 = fmul fast float %1948, %374
  %1952 = fmul fast float %1949, %374
  %1953 = fadd fast float %1950, %1938
  %1954 = fadd fast float %1951, %1939
  %1955 = fadd fast float %1952, %1940
  %1956 = fsub fast float %1134, %1941
  %1957 = fsub fast float %1135, %1942
  %1958 = fsub fast float %1136, %1943
  %1959 = fmul fast float %1956, %374
  %1960 = fmul fast float %1957, %374
  %1961 = fmul fast float %1958, %374
  %1962 = fadd fast float %1959, %1941
  %1963 = fadd fast float %1960, %1942
  %1964 = fadd fast float %1961, %1943
  %1965 = fsub fast float %1131, %1944
  %1966 = fsub fast float %1132, %1945
  %1967 = fsub fast float %1133, %1946
  %1968 = fmul fast float %1965, %374
  %1969 = fmul fast float %1966, %374
  %1970 = fmul fast float %1967, %374
  %1971 = fadd fast float %1968, %1944
  %1972 = fadd fast float %1969, %1945
  %1973 = fadd fast float %1970, %1946
  br label %1974

; <label>:1974                                    ; preds = %1915, %1130
  %1975 = phi float [ %1971, %1915 ], [ %1131, %1130 ]
  %1976 = phi float [ %1972, %1915 ], [ %1132, %1130 ]
  %1977 = phi float [ %1973, %1915 ], [ %1133, %1130 ]
  %1978 = phi float [ %1962, %1915 ], [ %1134, %1130 ]
  %1979 = phi float [ %1963, %1915 ], [ %1135, %1130 ]
  %1980 = phi float [ %1964, %1915 ], [ %1136, %1130 ]
  %1981 = phi float [ %1953, %1915 ], [ %1137, %1130 ]
  %1982 = phi float [ %1954, %1915 ], [ %1138, %1130 ]
  %1983 = phi float [ %1955, %1915 ], [ %1139, %1130 ]
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.f32 %1984, 0
  %1986 = call float @dx.op.binary.f32(i32 36, float %291, float %1985)  ; FMin(a,b)
  %1987 = fsub fast float 1.000000e+00, %329
  %1988 = fmul fast float %1986, %1987
  %1989 = fsub fast float 1.000000e+00, %1988
  %1990 = bitcast float %1989 to i32
  %1991 = sub nsw i32 2129859010, %1990
  %1992 = bitcast i32 %1991 to float
  %1993 = call float @dx.op.binary.f32(i32 36, float %292, float %1985)  ; FMin(a,b)
  %1994 = fmul fast float %1993, %1987
  %1995 = fsub fast float 1.000000e+00, %1994
  %1996 = bitcast float %1995 to i32
  %1997 = sub nsw i32 2129859010, %1996
  %1998 = bitcast i32 %1997 to float
  %1999 = call float @dx.op.binary.f32(i32 36, float %293, float %1985)  ; FMin(a,b)
  %2000 = fmul fast float %1999, %1987
  %2001 = fsub fast float 1.000000e+00, %2000
  %2002 = bitcast float %2001 to i32
  %2003 = sub nsw i32 2129859010, %2002
  %2004 = bitcast i32 %2003 to float
  %2005 = fmul fast float %1981, %329
  %2006 = fmul fast float %2005, %1992
  %2007 = fmul fast float %1982, %329
  %2008 = fmul fast float %2007, %1998
  %2009 = fmul fast float %1983, %329
  %2010 = fmul fast float %2009, %2004
  %2011 = call float @dx.op.binary.f32(i32 36, float %300, float %1985)  ; FMin(a,b)
  %2012 = fmul fast float %2011, %1987
  %2013 = fsub fast float 1.000000e+00, %2012
  %2014 = bitcast float %2013 to i32
  %2015 = sub nsw i32 2129859010, %2014
  %2016 = bitcast i32 %2015 to float
  %2017 = call float @dx.op.binary.f32(i32 36, float %301, float %1985)  ; FMin(a,b)
  %2018 = fmul fast float %2017, %1987
  %2019 = fsub fast float 1.000000e+00, %2018
  %2020 = bitcast float %2019 to i32
  %2021 = sub nsw i32 2129859010, %2020
  %2022 = bitcast i32 %2021 to float
  %2023 = call float @dx.op.binary.f32(i32 36, float %318, float %1985)  ; FMin(a,b)
  %2024 = fmul fast float %2023, %1987
  %2025 = fsub fast float 1.000000e+00, %2024
  %2026 = bitcast float %2025 to i32
  %2027 = sub nsw i32 2129859010, %2026
  %2028 = bitcast i32 %2027 to float
  %2029 = fmul fast float %1975, %329
  %2030 = fmul fast float %2029, %2016
  %2031 = fmul fast float %1976, %329
  %2032 = fmul fast float %2031, %2022
  %2033 = fmul fast float %1977, %329
  %2034 = fmul fast float %2033, %2028
  %2035 = call float @dx.op.dot3.f32(i32 55, float %2006, float %2008, float %2010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2036 = select i1 %99, float 0.000000e+00, float %2006
  %2037 = select i1 %99, float %2035, float %2008
  %2038 = select i1 %99, float 0.000000e+00, float %2010
  %2039 = call float @dx.op.dot3.f32(i32 55, float %1978, float %1979, float %1980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2040 = select i1 %99, float 0.000000e+00, float %1978
  %2041 = select i1 %99, float %2039, float %1979
  %2042 = select i1 %99, float 0.000000e+00, float %1980
  %2043 = call float @dx.op.dot3.f32(i32 55, float %2030, float %2032, float %2034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2044 = select i1 %99, float 0.000000e+00, float %2030
  %2045 = select i1 %99, float %2043, float %2032
  %2046 = select i1 %99, float 0.000000e+00, float %2034
  %2047 = fmul fast float %320, 9.843750e-01
  %2048 = fmul fast float %182, 9.843750e-01
  %2049 = fadd fast float %2047, 7.812500e-03
  %2050 = fadd fast float %2048, 7.812500e-03
  %2051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %2049, float %2050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 2
  %2053 = extractvalue %dx.types.ResRet.f32 %2051, 3
  %2054 = fmul fast float %2052, %300
  %2055 = fmul fast float %2052, %301
  %2056 = fmul fast float %2052, %318
  %2057 = fadd fast float %2054, %2053
  %2058 = fadd fast float %2055, %2053
  %2059 = fadd fast float %2056, %2053
  %2060 = call float @dx.op.binary.f32(i32 35, float %2058, float %2059)  ; FMax(a,b)
  %2061 = call float @dx.op.binary.f32(i32 35, float %2057, float %2060)  ; FMax(a,b)
  %2062 = fsub fast float 1.000000e+00, %2061
  %2063 = fmul fast float %2057, %2044
  %2064 = fmul fast float %2058, %2045
  %2065 = fmul fast float %2059, %2046
  %2066 = fmul fast float %2040, %189
  %2067 = fmul fast float %2041, %190
  %2068 = fmul fast float %2042, %191
  %2069 = fadd fast float %2066, %2036
  %2070 = fmul fast float %2069, %2062
  %2071 = fadd fast float %2067, %2037
  %2072 = fmul fast float %2071, %2062
  %2073 = fadd fast float %2068, %2038
  %2074 = fmul fast float %2073, %2062
  %2075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2076 = extractvalue %dx.types.CBufRet.f32 %2075, 3
  %2077 = fcmp fast oeq float %2076, 0.000000e+00
  br i1 %2077, label %3032, label %2078

; <label>:2078                                    ; preds = %1974
  %2079 = extractvalue %dx.types.CBufRet.f32 %2075, 0
  %2080 = extractvalue %dx.types.CBufRet.f32 %2075, 1
  %2081 = extractvalue %dx.types.CBufRet.f32 %2075, 2
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = extractvalue %dx.types.CBufRet.f32 %2082, 1
  %2085 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2087 = extractvalue %dx.types.CBufRet.f32 %2086, 0
  %2088 = extractvalue %dx.types.CBufRet.f32 %2086, 1
  %2089 = call float @dx.op.dot3.f32(i32 55, float %2083, float %2084, float %2085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2090 = select i1 %99, float %2087, float %2083
  %2091 = select i1 %99, float %2089, float %2084
  %2092 = select i1 %99, float %2088, float %2085
  %2093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2094 = extractvalue %dx.types.CBufRet.f32 %2093, 2
  %2095 = fmul fast float %2094, %170
  %2096 = fmul fast float %2094, %171
  %2097 = fmul fast float %2094, %172
  %2098 = fadd fast float %2095, %249
  %2099 = fadd fast float %2096, %250
  %2100 = fadd fast float %2097, %251
  %2101 = fcmp fast olt float %2076, 0.000000e+00
  br i1 %2101, label %2738, label %2102

; <label>:2102                                    ; preds = %2078
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.CBufRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.CBufRet.f32 %2103, 2
  %2107 = extractvalue %dx.types.CBufRet.f32 %2103, 3
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  %2112 = extractvalue %dx.types.CBufRet.f32 %2108, 3
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2116 = extractvalue %dx.types.CBufRet.f32 %2113, 2
  %2117 = extractvalue %dx.types.CBufRet.f32 %2113, 3
  %2118 = fmul fast float %2104, %2098
  %2119 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2105, float %2118)  ; FMad(a,b,c)
  %2120 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2106, float %2119)  ; FMad(a,b,c)
  %2121 = fadd fast float %2120, %2107
  %2122 = fmul fast float %2109, %2098
  %2123 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2110, float %2122)  ; FMad(a,b,c)
  %2124 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2111, float %2123)  ; FMad(a,b,c)
  %2125 = fadd fast float %2124, %2112
  %2126 = fmul fast float %2114, %2098
  %2127 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2115, float %2126)  ; FMad(a,b,c)
  %2128 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2116, float %2127)  ; FMad(a,b,c)
  %2129 = fadd fast float %2128, %2117
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2132 = fcmp fast une float %2131, 0.000000e+00
  %2133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2134 = extractvalue %dx.types.CBufRet.f32 %2133, 0
  %2135 = extractvalue %dx.types.CBufRet.f32 %2133, 1
  %2136 = extractvalue %dx.types.CBufRet.f32 %2133, 3
  %2137 = fmul fast float %2136, %2121
  %2138 = fmul fast float %2136, %2125
  %2139 = fadd fast float %2137, %2134
  %2140 = fadd fast float %2138, %2135
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.CBufRet.f32 %2141, 3
  %2145 = fmul fast float %2144, %2121
  %2146 = fmul fast float %2144, %2125
  %2147 = fadd fast float %2145, %2142
  %2148 = fadd fast float %2146, %2143
  %2149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2150 = extractvalue %dx.types.CBufRet.f32 %2149, 1
  %2151 = fsub fast float %2150, %2129
  %2152 = extractvalue %dx.types.CBufRet.f32 %2149, 2
  %2153 = fmul fast float %2151, %2152
  %2154 = fsub fast float 1.000000e+00, %2153
  %2155 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  br i1 %2132, label %2216, label %2156

; <label>:2156                                    ; preds = %2102
  %2157 = extractvalue %dx.types.CBufRet.f32 %2141, 2
  %2158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2158, 2
  %2160 = fadd fast float %2159, %2157
  %2161 = fcmp fast ogt float %2160, 0.000000e+00
  br i1 %2161, label %2162, label %2186

; <label>:2162                                    ; preds = %2156
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.CBufRet.f32 %2163, 1
  %2166 = fsub fast float %2147, %2164
  %2167 = fsub fast float %2148, %2165
  %2168 = fcmp fast olt float %2166, 0.000000e+00
  %2169 = fcmp fast olt float %2167, 0.000000e+00
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.CBufRet.f32 %2170, 2
  %2174 = extractvalue %dx.types.CBufRet.f32 %2170, 3
  %2175 = select i1 %2168, float %2171, float %2173
  %2176 = select i1 %2169, float %2172, float %2174
  %2177 = fmul fast float %2175, %2166
  %2178 = fmul fast float %2176, %2167
  %2179 = call float @dx.op.unary.f32(i32 6, float %2177)  ; FAbs(value)
  %2180 = call float @dx.op.unary.f32(i32 6, float %2178)  ; FAbs(value)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2093, 0
  %2182 = call float @dx.op.binary.f32(i32 35, float %2179, float %2180)  ; FMax(a,b)
  %2183 = fsub fast float %2181, %2182
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2185 = fmul fast float %2184, %2155
  br label %2186

; <label>:2186                                    ; preds = %2162, %2156
  %2187 = phi float [ %2185, %2162 ], [ 0.000000e+00, %2156 ]
  %2188 = extractvalue %dx.types.CBufRet.f32 %2133, 2
  %2189 = extractvalue %dx.types.CBufRet.f32 %2158, 1
  %2190 = fadd fast float %2189, %2188
  %2191 = fcmp fast ogt float %2190, 0.000000e+00
  br i1 %2191, label %2192, label %2216

; <label>:2192                                    ; preds = %2186
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2196 = fsub fast float %2139, %2194
  %2197 = fsub fast float %2140, %2195
  %2198 = fcmp fast olt float %2196, 0.000000e+00
  %2199 = fcmp fast olt float %2197, 0.000000e+00
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2203 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2204 = extractvalue %dx.types.CBufRet.f32 %2200, 3
  %2205 = select i1 %2198, float %2201, float %2203
  %2206 = select i1 %2199, float %2202, float %2204
  %2207 = fmul fast float %2205, %2196
  %2208 = fmul fast float %2206, %2197
  %2209 = call float @dx.op.unary.f32(i32 6, float %2207)  ; FAbs(value)
  %2210 = call float @dx.op.unary.f32(i32 6, float %2208)  ; FAbs(value)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2093, 0
  %2212 = call float @dx.op.binary.f32(i32 35, float %2209, float %2210)  ; FMax(a,b)
  %2213 = fsub fast float %2211, %2212
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = fmul fast float %2214, %2155
  br label %2216

; <label>:2216                                    ; preds = %2192, %2186, %2102
  %2217 = phi float [ 0.000000e+00, %2102 ], [ %2215, %2192 ], [ 0.000000e+00, %2186 ]
  %2218 = phi float [ 0.000000e+00, %2102 ], [ %2187, %2192 ], [ %2187, %2186 ]
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 1
  %2221 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  %2222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.CBufRet.f32 %2222, 1
  %2225 = fsub fast float %2121, %2223
  %2226 = fsub fast float %2125, %2224
  %2227 = fcmp fast olt float %2225, 0.000000e+00
  %2228 = fcmp fast olt float %2226, 0.000000e+00
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.CBufRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.CBufRet.f32 %2229, 2
  %2233 = extractvalue %dx.types.CBufRet.f32 %2229, 3
  %2234 = select i1 %2227, float %2230, float %2232
  %2235 = select i1 %2228, float %2231, float %2233
  %2236 = fmul fast float %2234, %2225
  %2237 = fmul fast float %2235, %2226
  %2238 = call float @dx.op.unary.f32(i32 6, float %2236)  ; FAbs(value)
  %2239 = call float @dx.op.unary.f32(i32 6, float %2237)  ; FAbs(value)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2093, 0
  %2241 = call float @dx.op.binary.f32(i32 35, float %2238, float %2239)  ; FMax(a,b)
  %2242 = fsub fast float %2240, %2241
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  %2244 = call float @dx.op.binary.f32(i32 36, float %2243, float %2221)  ; FMin(a,b)
  %2245 = fmul fast float %2244, %2155
  %2246 = fsub fast float %2217, %2245
  %2247 = fsub fast float %2218, %2217
  %2248 = fsub fast float %2247, %2245
  %2249 = call float @dx.op.binary.f32(i32 35, float %2217, float %2218)  ; FMax(a,b)
  %2250 = call float @dx.op.binary.f32(i32 35, float %2245, float %2249)  ; FMax(a,b)
  %2251 = fcmp fast olt float %2250, 1.000000e+00
  br i1 %2251, label %2252, label %2650, !dx.controlflow.hints !92

; <label>:2252                                    ; preds = %2216
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = fcmp fast une float %2254, 0.000000e+00
  br i1 %2255, label %2256, label %2650, !dx.controlflow.hints !93

; <label>:2256                                    ; preds = %2252
  %2257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.f32 %2257, 0
  %2259 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2260 = extractvalue %dx.types.CBufRet.f32 %2257, 2
  %2261 = extractvalue %dx.types.CBufRet.f32 %2257, 3
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2265 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2266 = extractvalue %dx.types.CBufRet.f32 %2262, 3
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2270 = extractvalue %dx.types.CBufRet.f32 %2267, 2
  %2271 = extractvalue %dx.types.CBufRet.f32 %2267, 3
  %2272 = fmul fast float %2258, %2098
  %2273 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2259, float %2272)  ; FMad(a,b,c)
  %2274 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2260, float %2273)  ; FMad(a,b,c)
  %2275 = fadd fast float %2274, %2261
  %2276 = fmul fast float %2263, %2098
  %2277 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2264, float %2276)  ; FMad(a,b,c)
  %2278 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2265, float %2277)  ; FMad(a,b,c)
  %2279 = fadd fast float %2278, %2266
  %2280 = fmul fast float %2268, %2098
  %2281 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2269, float %2280)  ; FMad(a,b,c)
  %2282 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2270, float %2281)  ; FMad(a,b,c)
  %2283 = fadd fast float %2282, %2271
  %2284 = fcmp fast oge float %2275, 1.000000e+00
  %2285 = fcmp fast oge float %2279, 1.000000e+00
  %2286 = or i1 %2284, %2285
  %2287 = fcmp fast olt float %2275, 0.000000e+00
  %2288 = fcmp fast olt float %2279, 0.000000e+00
  %2289 = or i1 %2287, %2288
  %2290 = or i1 %2286, %2289
  br i1 %2290, label %2650, label %2291, !dx.controlflow.hints !94

; <label>:2291                                    ; preds = %2256
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2295 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.i32 %2296, 2
  %2298 = uitofp i32 %2297 to float
  %2299 = extractvalue %dx.types.CBufRet.i32 %2296, 3
  %2300 = uitofp i32 %2299 to float
  %2301 = extractvalue %dx.types.CBufRet.f32 %2292, 3
  %2302 = fmul fast float %2301, 2.000000e+00
  %2303 = fsub fast float %2275, %2293
  %2304 = fsub fast float %2279, %2294
  %2305 = fmul fast float %2302, %2303
  %2306 = fmul fast float %2302, %2304
  %2307 = fdiv fast float 1.000000e+00, %2081
  %2308 = fmul fast float %2306, %2307
  %2309 = call float @dx.op.unary.f32(i32 6, float %2308)  ; FAbs(value)
  %2310 = fmul fast float %2295, %2100
  %2311 = fmul fast float %2310, %2302
  %2312 = call float @dx.op.unary.f32(i32 6, float %2311)  ; FAbs(value)
  %2313 = call float @dx.op.unary.f32(i32 6, float %2305)  ; FAbs(value)
  %2314 = call float @dx.op.binary.f32(i32 35, float %2312, float %2309)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 35, float %2313, float %2314)  ; FMax(a,b)
  %2316 = fmul fast float %2315, 2.000000e+00
  %2317 = call float @dx.op.unary.f32(i32 23, float %2316)  ; Log(value)
  %2318 = call float @dx.op.binary.f32(i32 35, float %2317, float %2298)  ; FMax(a,b)
  %2319 = call float @dx.op.unary.f32(i32 22, float %2318)  ; Frc(value)
  %2320 = fadd fast float %2319, 0xBFEA666660000000
  %2321 = fmul fast float %2320, 8.000000e+00
  %2322 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2323 = call float @dx.op.unary.f32(i32 27, float %2318)  ; Round_ni(value)
  %2324 = fadd fast float %2323, %2322
  %2325 = call float @dx.op.binary.f32(i32 36, float %2324, float %2300)  ; FMin(a,b)
  %2326 = call float @dx.op.unary.f32(i32 27, float %2325)  ; Round_ni(value)
  %2327 = fsub fast float -0.000000e+00, %2326
  %2328 = call float @dx.op.unary.f32(i32 21, float %2327)  ; Exp(value)
  %2329 = fmul fast float %2328, %2302
  %2330 = fmul fast float %2329, %2275
  %2331 = fmul fast float %2329, %2279
  %2332 = fmul fast float %2330, 2.500000e-01
  %2333 = fmul fast float %2331, 2.500000e-01
  %2334 = fadd fast float %2332, 5.000000e-01
  %2335 = fadd fast float %2333, 5.000000e-01
  %2336 = fsub fast float %2300, %2298
  %2337 = fptoui float %2336 to i32
  %2338 = add i32 %2337, 320
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %2338)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2342 = fcmp fast une float %2325, %2300
  %2343 = fsub fast float %2275, %2340
  %2344 = fsub fast float %2279, %2341
  %2345 = call float @dx.op.unary.f32(i32 6, float %2343)  ; FAbs(value)
  %2346 = call float @dx.op.unary.f32(i32 6, float %2344)  ; FAbs(value)
  %2347 = fmul fast float %2345, %2329
  %2348 = fmul fast float %2346, %2329
  %2349 = fcmp fast olt float %2347, 1.000000e+00
  %2350 = fcmp fast olt float %2348, 1.000000e+00
  %2351 = and i1 %2349, %2350
  %2352 = or i1 %2342, %2351
  br i1 %2352, label %2353, label %2650, !dx.controlflow.hints !95

; <label>:2353                                    ; preds = %2291
  %2354 = fmul fast float %2331, 5.000000e-01
  %2355 = fmul fast float %2330, 5.000000e-01
  %2356 = fadd fast float %2354, 5.000000e-01
  %2357 = fadd fast float %2355, 5.000000e-01
  %2358 = sitofp i32 %2297 to float
  %2359 = fsub fast float %2325, %2358
  %2360 = call float @dx.op.unary.f32(i32 27, float %2359)  ; Round_ni(value)
  %2361 = call float @dx.op.unary.f32(i32 22, float %2325)  ; Frc(value)
  %2362 = call float @dx.op.unary.f32(i32 22, float %2357)  ; Frc(value)
  %2363 = call float @dx.op.unary.f32(i32 22, float %2356)  ; Frc(value)
  %2364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %2362, float %2363, float %2360, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.ResRet.f32 %2364, 1
  %2367 = extractvalue %dx.types.ResRet.f32 %2364, 2
  %2368 = extractvalue %dx.types.ResRet.f32 %2364, 3
  %2369 = fcmp fast ogt float %2361, 0.000000e+00
  br i1 %2369, label %2370, label %2391, !dx.controlflow.hints !96

; <label>:2370                                    ; preds = %2353
  %2371 = fadd fast float %2360, 1.000000e+00
  %2372 = call float @dx.op.unary.f32(i32 22, float %2334)  ; Frc(value)
  %2373 = call float @dx.op.unary.f32(i32 22, float %2335)  ; Frc(value)
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %2372, float %2373, float %2371, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.ResRet.f32 %2374, 1
  %2377 = extractvalue %dx.types.ResRet.f32 %2374, 2
  %2378 = extractvalue %dx.types.ResRet.f32 %2374, 3
  %2379 = fsub fast float %2375, %2365
  %2380 = fsub fast float %2376, %2366
  %2381 = fsub fast float %2377, %2367
  %2382 = fsub fast float %2378, %2368
  %2383 = fmul fast float %2379, %2361
  %2384 = fmul fast float %2380, %2361
  %2385 = fmul fast float %2381, %2361
  %2386 = fmul fast float %2382, %2361
  %2387 = fadd fast float %2383, %2365
  %2388 = fadd fast float %2384, %2366
  %2389 = fadd fast float %2385, %2367
  %2390 = fadd fast float %2386, %2368
  br label %2391

; <label>:2391                                    ; preds = %2370, %2353
  %2392 = phi float [ %2387, %2370 ], [ %2365, %2353 ]
  %2393 = phi float [ %2388, %2370 ], [ %2366, %2353 ]
  %2394 = phi float [ %2389, %2370 ], [ %2367, %2353 ]
  %2395 = phi float [ %2390, %2370 ], [ %2368, %2353 ]
  %2396 = fadd fast float %2392, -5.000000e-01
  %2397 = fadd fast float %2394, -5.000000e-01
  %2398 = fmul fast float %2396, 0xBFD5555560000000
  %2399 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2397, float %2398)  ; FMad(a,b,c)
  %2400 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2393, float 0.000000e+00)  ; FMad(a,b,c)
  %2401 = fadd fast float %2400, %2395
  %2402 = fmul fast float %2396, -7.500000e-01
  %2403 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2397, float %2402)  ; FMad(a,b,c)
  %2404 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2393, float 0.000000e+00)  ; FMad(a,b,c)
  %2405 = fadd fast float %2404, %2395
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.CBufRet.f32 %2408, 1
  %2411 = extractvalue %dx.types.CBufRet.f32 %2408, 2
  %2412 = extractvalue %dx.types.CBufRet.f32 %2408, 3
  %2413 = fsub fast float %2409, %2399
  %2414 = fsub fast float %2410, %2401
  %2415 = fsub fast float %2411, %2403
  %2416 = fsub fast float %2412, %2405
  %2417 = fmul fast float %2413, %2407
  %2418 = fmul fast float %2414, %2407
  %2419 = fmul fast float %2415, %2407
  %2420 = fmul fast float %2416, %2407
  %2421 = fadd fast float %2417, %2399
  %2422 = fadd fast float %2418, %2401
  %2423 = fadd fast float %2419, %2403
  %2424 = fadd fast float %2420, %2405
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 536870911
  %2428 = uitofp i32 %2427 to float
  %2429 = fmul fast float %2428, %2275
  %2430 = fmul fast float %2428, %2279
  %2431 = fptoui float %2429 to i32
  %2432 = fptoui float %2430 to i32
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 31
  %2436 = lshr i32 %2431, %2435
  %2437 = lshr i32 %2432, %2435
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = and i32 %2439, 31
  %2441 = shl i32 1, %2440
  %2442 = call i32 @dx.op.binary.i32(i32 40, i32 %2441, i32 4)  ; UMin(a,b)
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.i32 %2443, 1
  %2446 = icmp eq i32 %2442, 0
  br i1 %2446, label %2488, label %2447

; <label>:2447                                    ; preds = %2391
  br label %2448

; <label>:2448                                    ; preds = %2476, %2447
  %2449 = phi i32 [ %2479, %2476 ], [ 0, %2447 ]
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = lshr i32 %2451, 16
  %2453 = and i32 %2452, 31
  %2454 = shl i32 %2437, %2453
  %2455 = add i32 %2454, %2436
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = and i32 %2457, 31
  %2459 = shl i32 %2455, %2458
  %2460 = add i32 %2459, %2449
  %2461 = shl i32 %2460, 2
  %2462 = add i32 %2461, 32
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = icmp slt i32 %2464, 0
  %2466 = getelementptr [12 x float], [12 x float]* %58, i32 0, i32 %2449
  %2467 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2449
  %2468 = bitcast float* %2466 to i32*
  %2469 = bitcast float* %2467 to i32*
  br i1 %2465, label %2470, label %2476

; <label>:2470                                    ; preds = %2448
  %2471 = and i32 %2464, 1073741823
  %2472 = add nuw nsw i32 %2471, 20
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = extractvalue %dx.types.ResRet.i32 %2473, 1
  br label %2476

; <label>:2476                                    ; preds = %2470, %2448
  %2477 = phi i32 [ %2474, %2470 ], [ %2444, %2448 ]
  %2478 = phi i32 [ %2475, %2470 ], [ %2445, %2448 ]
  store i32 %2477, i32* %2468, align 4
  store i32 %2478, i32* %2469, align 4
  %2479 = add nuw i32 %2449, 1
  %2480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2481 = extractvalue %dx.types.CBufRet.i32 %2480, 2
  %2482 = icmp eq i32 %2481, 0
  %2483 = icmp ugt i32 %2464, -1073741825
  %2484 = and i1 %2483, %2482
  %2485 = icmp ult i32 %2479, %2442
  %2486 = and i1 %2484, %2485
  br i1 %2486, label %2448, label %2487

; <label>:2487                                    ; preds = %2476
  br label %2488

; <label>:2488                                    ; preds = %2487, %2391
  %2489 = phi i32 [ 0, %2391 ], [ %2479, %2487 ]
  %2490 = extractvalue %dx.types.CBufRet.f32 %2253, 2
  %2491 = fptoui float %2490 to i32
  %2492 = icmp eq i32 %2491, 0
  br i1 %2492, label %2544, label %2493

; <label>:2493                                    ; preds = %2488
  br label %2494

; <label>:2494                                    ; preds = %2539, %2493
  %2495 = phi i32 [ %2540, %2539 ], [ %2489, %2493 ]
  %2496 = phi i32 [ %2541, %2539 ], [ 0, %2493 ]
  %2497 = lshr i32 %2496, 2
  %2498 = and i32 %2496, 3
  %2499 = add nuw nsw i32 %2497, 83
  %2500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 %2499)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.i32 %2500, 0
  %2502 = extractvalue %dx.types.CBufRet.i32 %2500, 1
  %2503 = extractvalue %dx.types.CBufRet.i32 %2500, 2
  %2504 = extractvalue %dx.types.CBufRet.i32 %2500, 3
  %2505 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %2501, i32* %2505, align 4
  %2506 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %2502, i32* %2506, align 4
  %2507 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %2503, i32* %2507, align 4
  %2508 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %2504, i32* %2508, align 4
  %2509 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 %2498
  %2510 = load i32, i32* %2509, align 4, !tbaa !97, !noalias !101
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = lshr i32 %2512, 16
  %2514 = and i32 %2513, 31
  %2515 = shl i32 %2437, %2514
  %2516 = add i32 %2515, %2436
  %2517 = shl i32 %2516, 2
  %2518 = add i32 %2517, %2510
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2539, label %2522

; <label>:2522                                    ; preds = %2494
  %2523 = icmp slt i32 %2520, 0
  %2524 = getelementptr [12 x float], [12 x float]* %58, i32 0, i32 %2495
  %2525 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2495
  %2526 = bitcast float* %2524 to i32*
  %2527 = bitcast float* %2525 to i32*
  br i1 %2523, label %2528, label %2535

; <label>:2528                                    ; preds = %2522
  %2529 = and i32 %2520, 1073741823
  %2530 = add i32 %2510, 20
  %2531 = add i32 %2530, %2529
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = extractvalue %dx.types.ResRet.i32 %2532, 1
  br label %2535

; <label>:2535                                    ; preds = %2528, %2522
  %2536 = phi i32 [ %2533, %2528 ], [ %2444, %2522 ]
  %2537 = phi i32 [ %2534, %2528 ], [ %2445, %2522 ]
  store i32 %2536, i32* %2526, align 4
  store i32 %2537, i32* %2527, align 4
  %2538 = add i32 %2495, 1
  br label %2539

; <label>:2539                                    ; preds = %2535, %2494
  %2540 = phi i32 [ %2495, %2494 ], [ %2538, %2535 ]
  %2541 = add nuw i32 %2496, 1
  %2542 = icmp eq i32 %2541, %2491
  br i1 %2542, label %2543, label %2494

; <label>:2543                                    ; preds = %2539
  br label %2544

; <label>:2544                                    ; preds = %2543, %2488
  %2545 = phi i32 [ %2489, %2488 ], [ %2540, %2543 ]
  %2546 = icmp eq i32 %2545, 1
  %2547 = getelementptr [12 x float], [12 x float]* %58, i32 0, i32 0
  %2548 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 0
  br i1 %2546, label %2549, label %2552

; <label>:2549                                    ; preds = %2544
  %2550 = load float, float* %2547, align 4
  %2551 = load float, float* %2548, align 4
  br label %2579

; <label>:2552                                    ; preds = %2544
  %2553 = load float, float* %2547, align 4
  %2554 = load float, float* %2548, align 4
  %2555 = fdiv fast float 1.000000e+00, %2554
  %2556 = fsub fast float %2553, %2555
  %2557 = icmp ugt i32 %2545, 1
  br i1 %2557, label %2558, label %2574

; <label>:2558                                    ; preds = %2552
  br label %2559

; <label>:2559                                    ; preds = %2559, %2558
  %2560 = phi float [ %2569, %2559 ], [ %2556, %2558 ]
  %2561 = phi float [ %2570, %2559 ], [ %2553, %2558 ]
  %2562 = phi i32 [ %2571, %2559 ], [ 1, %2558 ]
  %2563 = getelementptr [12 x float], [12 x float]* %58, i32 0, i32 %2562
  %2564 = load float, float* %2563, align 4
  %2565 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2562
  %2566 = load float, float* %2565, align 4
  %2567 = fdiv fast float 1.000000e+00, %2566
  %2568 = fsub fast float %2564, %2567
  %2569 = call float @dx.op.binary.f32(i32 36, float %2560, float %2568)  ; FMin(a,b)
  %2570 = call float @dx.op.binary.f32(i32 35, float %2561, float %2564)  ; FMax(a,b)
  %2571 = add nuw i32 %2562, 1
  %2572 = icmp eq i32 %2571, %2545
  br i1 %2572, label %2573, label %2559

; <label>:2573                                    ; preds = %2559
  br label %2574

; <label>:2574                                    ; preds = %2573, %2552
  %2575 = phi float [ %2556, %2552 ], [ %2569, %2573 ]
  %2576 = phi float [ %2553, %2552 ], [ %2570, %2573 ]
  %2577 = fsub fast float %2576, %2575
  %2578 = fdiv fast float 1.000000e+00, %2577
  br label %2579

; <label>:2579                                    ; preds = %2574, %2549
  %2580 = phi float [ %2550, %2549 ], [ %2576, %2574 ]
  %2581 = phi float [ %2551, %2549 ], [ %2578, %2574 ]
  %2582 = fadd fast float %2283, %2580
  %2583 = fmul fast float %2582, %2581
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2585 = fmul fast float %2584, 2.000000e+00
  %2586 = fsub fast float 1.000000e+00, %2585
  %2587 = fmul fast float %2421, %2421
  %2588 = fsub fast float %2422, %2587
  %2589 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2588)  ; FMax(a,b)
  %2590 = fdiv fast float 1.000000e+00, %2589
  %2591 = fmul fast float %2422, %2421
  %2592 = fsub fast float %2423, %2591
  %2593 = fsub fast float %2586, %2421
  %2594 = fmul fast float %2586, %2586
  %2595 = fsub fast float %2594, %2422
  %2596 = fmul fast float %2590, %2592
  %2597 = fmul fast float %2596, %2593
  %2598 = fsub fast float %2595, %2597
  %2599 = fmul fast float %2422, %2422
  %2600 = fsub fast float %2424, %2599
  %2601 = fmul fast float %2592, %2592
  %2602 = fmul fast float %2601, %2590
  %2603 = fsub fast float %2600, %2602
  %2604 = fdiv fast float %2598, %2603
  %2605 = fmul fast float %2604, %2592
  %2606 = fsub fast float %2593, %2605
  %2607 = fmul fast float %2606, %2590
  %2608 = fmul fast float %2607, %2421
  %2609 = fsub fast float 1.000000e+00, %2608
  %2610 = fmul fast float %2604, %2422
  %2611 = fsub fast float %2609, %2610
  %2612 = fmul fast float %2607, %2607
  %2613 = fmul fast float %2604, 4.000000e+00
  %2614 = fmul fast float %2613, %2611
  %2615 = fsub fast float %2612, %2614
  %2616 = call float @dx.op.unary.f32(i32 24, float %2615)  ; Sqrt(value)
  %2617 = fcmp fast oge float %2607, 0.000000e+00
  %2618 = fsub fast float -0.000000e+00, %2616
  %2619 = select i1 %2617, float %2618, float %2616
  %2620 = fsub fast float %2619, %2607
  %2621 = fdiv fast float %2620, %2604
  %2622 = fdiv fast float %2611, %2620
  %2623 = fmul fast float %2621, 5.000000e-01
  %2624 = fmul fast float %2622, 2.000000e+00
  %2625 = select i1 %2617, float %2623, float %2624
  %2626 = select i1 %2617, float %2624, float %2623
  %2627 = call float @dx.op.binary.f32(i32 35, float %2625, float %2626)  ; FMax(a,b)
  %2628 = call float @dx.op.binary.f32(i32 36, float %2625, float %2626)  ; FMin(a,b)
  %2629 = fcmp fast ogt float %2586, %2627
  %2630 = fsub fast float %2586, %2628
  %2631 = fsub fast float %2586, %2627
  %2632 = fsub fast float %2627, %2628
  %2633 = select i1 %2629, float %2631, float %2632
  %2634 = fmul float %2630, %2633
  %2635 = select i1 %2629, float %2628, float %2586
  %2636 = fcmp fast ogt float %2586, %2628
  %2637 = fmul fast float %2635, %2627
  %2638 = fadd fast float %2635, %2627
  %2639 = fmul fast float %2638, %2421
  %2640 = fadd fast float %2637, %2422
  %2641 = fsub fast float %2640, %2639
  %2642 = fdiv fast float %2641, %2634
  %2643 = select i1 %2636, float %2642, float 0.000000e+00
  %2644 = fsub fast float 1.000000e+00, %2643
  %2645 = select i1 %2629, float %2644, float %2643
  %2646 = call float @dx.op.unary.f32(i32 7, float %2645)  ; Saturate(value)
  %2647 = extractvalue %dx.types.CBufRet.f32 %2406, 3
  %2648 = fmul fast float %2647, %2646
  %2649 = fsub fast float 1.000000e+00, %2648
  br label %2650

; <label>:2650                                    ; preds = %2579, %2291, %2256, %2252, %2216
  %2651 = phi float [ 1.000000e+00, %2216 ], [ %2649, %2579 ], [ 1.000000e+00, %2256 ], [ 1.000000e+00, %2291 ], [ 1.000000e+00, %2252 ]
  %2652 = fcmp fast ogt float %2248, 0.000000e+00
  br i1 %2652, label %2653, label %2661, !dx.controlflow.hints !110

; <label>:2653                                    ; preds = %2650
  %2654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2655 = extractvalue %dx.types.CBufRet.f32 %2654, 2
  %2656 = fadd fast float %2655, %2129
  %2657 = call float @dx.op.binary.f32(i32 35, float %2656, float 0.000000e+00)  ; FMax(a,b)
  %2658 = fadd fast float %2657, 0x3F10000000000000
  %2659 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %39, float %2147, float %2148, float undef, float undef, i32 0, i32 0, i32 undef, float %2658)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  br label %2661

; <label>:2661                                    ; preds = %2653, %2650
  %2662 = phi float [ %2660, %2653 ], [ 1.000000e+00, %2650 ]
  %2663 = fcmp fast ogt float %2246, 0.000000e+00
  br i1 %2663, label %2664, label %2672, !dx.controlflow.hints !111

; <label>:2664                                    ; preds = %2661
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 1
  %2667 = fadd fast float %2666, %2129
  %2668 = call float @dx.op.binary.f32(i32 35, float %2667, float 0.000000e+00)  ; FMax(a,b)
  %2669 = fadd fast float %2668, 0x3F10000000000000
  %2670 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %39, float %2139, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float %2669)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2671 = extractvalue %dx.types.ResRet.f32 %2670, 0
  br label %2672

; <label>:2672                                    ; preds = %2664, %2661
  %2673 = phi float [ %2671, %2664 ], [ 1.000000e+00, %2661 ]
  %2674 = fcmp fast ogt float %2245, 0.000000e+00
  br i1 %2674, label %2675, label %2687, !dx.controlflow.hints !112

; <label>:2675                                    ; preds = %2672
  %2676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2677 = extractvalue %dx.types.CBufRet.f32 %2676, 0
  %2678 = fadd fast float %2677, %2129
  %2679 = call float @dx.op.binary.f32(i32 35, float %2678, float 0.000000e+00)  ; FMax(a,b)
  %2680 = fadd fast float %2679, 0x3F10000000000000
  br i1 %2132, label %2681, label %2684, !dx.controlflow.hints !113

; <label>:2681                                    ; preds = %2675
  %2682 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %39, float %2121, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float %2680)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2683 = extractvalue %dx.types.ResRet.f32 %2682, 0
  br label %2687

; <label>:2684                                    ; preds = %2675
  %2685 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %39, float %2121, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float %2680)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2686 = extractvalue %dx.types.ResRet.f32 %2685, 0
  br label %2687

; <label>:2687                                    ; preds = %2684, %2681, %2672
  %2688 = phi float [ %2683, %2681 ], [ %2686, %2684 ], [ 1.000000e+00, %2672 ]
  %2689 = fsub fast float %2662, %2651
  %2690 = fmul fast float %2689, %2218
  %2691 = fadd fast float %2690, %2651
  %2692 = fsub fast float %2673, %2691
  %2693 = fmul fast float %2692, %2217
  %2694 = fadd fast float %2693, %2691
  %2695 = fsub fast float %2688, %2694
  %2696 = fmul fast float %2695, %2245
  %2697 = fadd fast float %2696, %2694
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 2
  %2700 = fcmp fast ogt float %2699, 0.000000e+00
  br i1 %2700, label %2701, label %2738, !dx.controlflow.hints !114

; <label>:2701                                    ; preds = %2687
  %2702 = fcmp fast ugt float %2699, 0.000000e+00
  br i1 %2702, label %2703, label %2735

; <label>:2703                                    ; preds = %2701
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.CBufRet.f32 %2704, 2
  %2708 = extractvalue %dx.types.CBufRet.f32 %2704, 3
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2713 = extractvalue %dx.types.CBufRet.f32 %2709, 3
  %2714 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2715 = extractvalue %dx.types.CBufRet.f32 %2698, 1
  %2716 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %2717 = fadd fast float %331, %2098
  %2718 = fadd fast float %332, %2099
  %2719 = fadd fast float %2716, %2100
  %2720 = fmul fast float %2717, %2705
  %2721 = call float @dx.op.tertiary.f32(i32 46, float %2706, float %2718, float %2720)  ; FMad(a,b,c)
  %2722 = call float @dx.op.tertiary.f32(i32 46, float %2707, float %2719, float %2721)  ; FMad(a,b,c)
  %2723 = fadd fast float %2722, %2708
  %2724 = fmul fast float %2717, %2710
  %2725 = call float @dx.op.tertiary.f32(i32 46, float %2711, float %2718, float %2724)  ; FMad(a,b,c)
  %2726 = call float @dx.op.tertiary.f32(i32 46, float %2712, float %2719, float %2725)  ; FMad(a,b,c)
  %2727 = fadd fast float %2726, %2713
  %2728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %35, float %2723, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = fmul fast float %2729, %2715
  %2731 = fadd fast float %2730, %2714
  %2732 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  %2733 = fmul fast float %2732, %2699
  %2734 = fsub fast float 1.000000e+00, %2733
  br label %2735

; <label>:2735                                    ; preds = %2703, %2701
  %2736 = phi float [ %2734, %2703 ], [ 1.000000e+00, %2701 ]
  %2737 = fmul fast float %2736, %2697
  br label %2738

; <label>:2738                                    ; preds = %2735, %2687, %2078
  %2739 = phi float [ 1.000000e+00, %2078 ], [ %2737, %2735 ], [ %2697, %2687 ]
  %2740 = call float @dx.op.binary.f32(i32 36, float %2739, float %2739)  ; FMin(a,b)
  %2741 = call float @dx.op.binary.f32(i32 36, float %2739, float %2740)  ; FMin(a,b)
  %2742 = fcmp fast ogt float %2741, 0.000000e+00
  br i1 %2742, label %2743, label %2900, !dx.controlflow.hints !115

; <label>:2743                                    ; preds = %2738
  %2744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2745 = extractvalue %dx.types.CBufRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.CBufRet.f32 %2744, 1
  %2747 = extractvalue %dx.types.CBufRet.f32 %2744, 2
  %2748 = extractvalue %dx.types.CBufRet.f32 %2744, 3
  %2749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2750 = extractvalue %dx.types.CBufRet.f32 %2749, 0
  %2751 = extractvalue %dx.types.CBufRet.f32 %2749, 1
  %2752 = extractvalue %dx.types.CBufRet.f32 %2749, 2
  %2753 = extractvalue %dx.types.CBufRet.f32 %2749, 3
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.CBufRet.f32 %2754, 1
  %2757 = extractvalue %dx.types.CBufRet.f32 %2754, 2
  %2758 = extractvalue %dx.types.CBufRet.f32 %2754, 3
  %2759 = fmul fast float %2745, %2098
  %2760 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2746, float %2759)  ; FMad(a,b,c)
  %2761 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2747, float %2760)  ; FMad(a,b,c)
  %2762 = fadd fast float %2761, %2748
  %2763 = fmul fast float %2750, %2098
  %2764 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2751, float %2763)  ; FMad(a,b,c)
  %2765 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2752, float %2764)  ; FMad(a,b,c)
  %2766 = fadd fast float %2765, %2753
  %2767 = fmul fast float %2755, %2098
  %2768 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2756, float %2767)  ; FMad(a,b,c)
  %2769 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2757, float %2768)  ; FMad(a,b,c)
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.CBufRet.f32 %2770, 3
  %2774 = fmul fast float %2773, %2762
  %2775 = fmul fast float %2773, %2766
  %2776 = fadd fast float %2774, %2771
  %2777 = fadd fast float %2775, %2772
  %2778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2778, 0
  %2780 = extractvalue %dx.types.CBufRet.f32 %2778, 1
  %2781 = fsub fast float %2776, %2779
  %2782 = fsub fast float %2777, %2780
  %2783 = fcmp fast olt float %2781, 0.000000e+00
  %2784 = fcmp fast olt float %2782, 0.000000e+00
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2789 = extractvalue %dx.types.CBufRet.f32 %2785, 3
  %2790 = select i1 %2783, float %2786, float %2788
  %2791 = select i1 %2784, float %2787, float %2789
  %2792 = fmul fast float %2790, %2781
  %2793 = fmul fast float %2791, %2782
  %2794 = call float @dx.op.unary.f32(i32 6, float %2792)  ; FAbs(value)
  %2795 = call float @dx.op.unary.f32(i32 6, float %2793)  ; FAbs(value)
  %2796 = extractvalue %dx.types.CBufRet.f32 %2093, 0
  %2797 = call float @dx.op.binary.f32(i32 35, float %2794, float %2795)  ; FMax(a,b)
  %2798 = fsub fast float %2796, %2797
  %2799 = call float @dx.op.unary.f32(i32 7, float %2798)  ; Saturate(value)
  %2800 = fcmp fast ogt float %2799, 0.000000e+00
  br i1 %2800, label %2801, label %2842, !dx.controlflow.hints !116

; <label>:2801                                    ; preds = %2743
  %2802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %38, float %2776, float %2777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 1
  %2804 = fcmp fast ogt float %2803, 0.000000e+00
  br i1 %2804, label %2805, label %2838

; <label>:2805                                    ; preds = %2801
  %2806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %38, float %2776, float %2777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2807 = extractvalue %dx.types.ResRet.f32 %2806, 0
  %2808 = extractvalue %dx.types.ResRet.f32 %2806, 1
  %2809 = extractvalue %dx.types.ResRet.f32 %2806, 2
  %2810 = extractvalue %dx.types.ResRet.f32 %2806, 3
  %2811 = fsub fast float 1.000000e+00, %2758
  %2812 = fsub fast float %2811, %2769
  %2813 = fmul fast float %2812, 0x400921FB60000000
  %2814 = fadd fast float %2813, 0x3FF921FB60000000
  %2815 = call float @dx.op.unary.f32(i32 13, float %2814)  ; Sin(value)
  %2816 = fadd fast float %2815, -1.000000e+00
  %2817 = fmul fast float %2816, 0x3FD45F3060000000
  %2818 = fmul fast float %2812, 0x401921FB60000000
  %2819 = fadd fast float %2818, 0x400921FB60000000
  %2820 = call float @dx.op.unary.f32(i32 13, float %2819)  ; Sin(value)
  %2821 = fadd fast float %2820, 0x3E7777A5C0000000
  %2822 = fmul fast float %2821, 0x3FC45F3060000000
  %2823 = fmul fast float %2812, 0x4022D97C80000000
  %2824 = fadd fast float %2823, 0x4012D97C80000000
  %2825 = call float @dx.op.unary.f32(i32 13, float %2824)  ; Sin(value)
  %2826 = fadd fast float %2825, 1.000000e+00
  %2827 = fmul fast float %2826, 0x3FBB2995E0000000
  %2828 = fmul fast float %2812, 0x402921FB60000000
  %2829 = fadd fast float %2828, 0x401921FB60000000
  %2830 = call float @dx.op.unary.f32(i32 13, float %2829)  ; Sin(value)
  %2831 = fadd fast float %2830, 0xBE8777A5C0000000
  %2832 = fmul fast float %2831, 0x3FB45F3060000000
  %2833 = call float @dx.op.dot4.f32(i32 56, float %2807, float %2808, float %2809, float %2810, float %2817, float %2822, float %2827, float %2832)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2834 = fmul fast float %2833, 0xBFF7154760000000
  %2835 = call float @dx.op.unary.f32(i32 21, float %2834)  ; Exp(value)
  %2836 = call float @dx.op.unary.f32(i32 7, float %2835)  ; Saturate(value)
  %2837 = fadd float %2836, -1.000000e+00
  br label %2838

; <label>:2838                                    ; preds = %2805, %2801
  %2839 = phi float [ %2837, %2805 ], [ 0.000000e+00, %2801 ]
  %2840 = fmul fast float %2839, %2799
  %2841 = fadd fast float %2840, 1.000000e+00
  br label %2842

; <label>:2842                                    ; preds = %2838, %2743
  %2843 = phi float [ %2841, %2838 ], [ 1.000000e+00, %2743 ]
  %2844 = fmul fast float %2843, %2739
  %2845 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %2846 = fadd fast float %331, %249
  %2847 = fadd fast float %332, %250
  %2848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2848, 1
  %2850 = fsub fast float -0.000000e+00, %2846
  %2851 = fsub fast float -0.000000e+00, %2847
  %2852 = fsub fast float %309, %2845
  %2853 = fadd fast float %2852, %2849
  %2854 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2850, float %2851, float %2853)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2079, float %2080, float %2081)  ; Dot3(ax,ay,az,bx,by,bz)
  %2856 = fdiv fast float 1.000000e+00, %2855
  %2857 = fmul fast float %2856, %2854
  %2858 = fmul fast float %2079, %2857
  %2859 = fmul fast float %2080, %2857
  %2860 = fadd fast float %2858, %2846
  %2861 = fadd fast float %2859, %2847
  %2862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2862, 0
  %2864 = extractvalue %dx.types.CBufRet.f32 %2862, 1
  %2865 = fsub fast float %2860, %2863
  %2866 = fsub fast float %2861, %2864
  %2867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2868 = extractvalue %dx.types.CBufRet.f32 %2867, 2
  %2869 = extractvalue %dx.types.CBufRet.f32 %2867, 3
  %2870 = fmul fast float %2865, %2868
  %2871 = fmul fast float %2866, %2869
  %2872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2873 = extractvalue %dx.types.CBufRet.i32 %2872, 3
  %2874 = icmp eq i32 %2873, 0
  br i1 %2874, label %2880, label %2875

; <label>:2875                                    ; preds = %2842
  %2876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %37, float %2870, float %2871, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = extractvalue %dx.types.ResRet.f32 %2876, 1
  %2879 = extractvalue %dx.types.ResRet.f32 %2876, 2
  br label %2885

; <label>:2880                                    ; preds = %2842
  %2881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %38, float %2870, float %2871, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.ResRet.f32 %2881, 1
  %2884 = extractvalue %dx.types.ResRet.f32 %2881, 2
  br label %2885

; <label>:2885                                    ; preds = %2880, %2875
  %2886 = phi float [ %2877, %2875 ], [ %2882, %2880 ]
  %2887 = phi float [ %2878, %2875 ], [ %2883, %2880 ]
  %2888 = phi float [ %2879, %2875 ], [ %2884, %2880 ]
  %2889 = extractvalue %dx.types.CBufRet.f32 %2848, 2
  %2890 = fmul fast float %2889, %2886
  %2891 = extractvalue %dx.types.CBufRet.f32 %2848, 0
  %2892 = fsub fast float %2857, %2891
  %2893 = fsub fast float %2892, %2890
  %2894 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2893)  ; FMax(a,b)
  %2895 = fmul fast float %2894, %2887
  %2896 = call float @dx.op.binary.f32(i32 36, float %2888, float %2895)  ; FMin(a,b)
  %2897 = fmul fast float %2896, 0xBFF7154760000000
  %2898 = call float @dx.op.unary.f32(i32 21, float %2897)  ; Exp(value)
  %2899 = fmul fast float %2844, %2898
  br label %2900

; <label>:2900                                    ; preds = %2885, %2738
  %2901 = phi float [ %2899, %2885 ], [ %2739, %2738 ]
  %2902 = call float @dx.op.binary.f32(i32 36, float %2901, float %2901)  ; FMin(a,b)
  %2903 = call float @dx.op.binary.f32(i32 36, float %2901, float %2902)  ; FMin(a,b)
  %2904 = fcmp fast ogt float %2903, 0.000000e+00
  br i1 %2904, label %2905, label %3032, !dx.controlflow.hints !117

; <label>:2905                                    ; preds = %2900
  %2906 = fmul fast float %2901, %2090
  %2907 = fmul fast float %2901, %2091
  %2908 = fmul fast float %2901, %2092
  %2909 = fsub fast float %2079, %312
  %2910 = fsub fast float %2080, %313
  %2911 = fsub fast float %2081, %314
  %2912 = call float @dx.op.dot3.f32(i32 55, float %2909, float %2910, float %2911, float %2909, float %2910, float %2911)  ; Dot3(ax,ay,az,bx,by,bz)
  %2913 = call float @dx.op.unary.f32(i32 25, float %2912)  ; Rsqrt(value)
  %2914 = fmul fast float %2913, %2909
  %2915 = fmul fast float %2913, %2910
  %2916 = fmul fast float %2913, %2911
  %2917 = call float @dx.op.dot3.f32(i32 55, float %2079, float %2080, float %2081, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2918 = call float @dx.op.dot3.f32(i32 55, float %315, float %316, float %317, float %2914, float %2915, float %2916)  ; Dot3(ax,ay,az,bx,by,bz)
  %2919 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  %2920 = fmul fast float %2919, %2919
  %2921 = fmul fast float %2920, 0x47DE623840000000
  %2922 = call float @dx.op.unary.f32(i32 7, float %2921)  ; Saturate(value)
  %2923 = fmul fast float %2922, %2919
  %2924 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %2914, float %2915, float %2916)  ; Dot3(ax,ay,az,bx,by,bz)
  %2925 = fmul fast float %2924, %2924
  %2926 = call float @dx.op.unary.f32(i32 6, float %2917)  ; FAbs(value)
  %2927 = fsub fast float 1.000000e+00, %182
  %2928 = call float @dx.op.binary.f32(i32 35, float %2927, float 0x3F847AE140000000)  ; FMax(a,b)
  %2929 = fmul fast float %2928, %2928
  %2930 = fmul fast float %2929, %2929
  %2931 = fsub fast float 1.000000e+00, %2930
  %2932 = fmul fast float %320, %320
  %2933 = fmul fast float %2932, %2931
  %2934 = fadd fast float %2933, %2930
  %2935 = bitcast float %2934 to i32
  %2936 = ashr i32 %2935, 1
  %2937 = add nsw i32 %2936, 532487669
  %2938 = bitcast i32 %2937 to float
  %2939 = fadd fast float %2938, %320
  %2940 = fmul fast float %2930, %2925
  %2941 = fsub fast float 1.000000e+00, %2925
  %2942 = fadd fast float %2941, %2940
  %2943 = fmul fast float %2926, %2926
  %2944 = fmul fast float %2943, %2931
  %2945 = fadd fast float %2944, %2930
  %2946 = bitcast float %2945 to i32
  %2947 = ashr i32 %2946, 1
  %2948 = add nsw i32 %2947, 532487669
  %2949 = bitcast i32 %2948 to float
  %2950 = fadd fast float %2949, %2926
  %2951 = fmul fast float %2942, %2942
  %2952 = fmul fast float %2951, %2939
  %2953 = fmul fast float %2952, %2950
  %2954 = fdiv fast float 0x3FF0A00000000000, %2953
  %2955 = fmul fast float %2954, %2930
  %2956 = call float @dx.op.unary.f32(i32 6, float %2918)  ; FAbs(value)
  %2957 = fsub fast float 1.000000e+00, %2956
  %2958 = bitcast float %2957 to i32
  %2959 = sitofp i32 %2958 to float
  %2960 = fmul fast float %2959, 5.000000e+00
  %2961 = fadd fast float %2960, 0xC1EFBF8940000000
  %2962 = fptosi float %2961 to i32
  %2963 = bitcast i32 %2962 to float
  %2964 = fsub fast float 1.000000e+00, %300
  %2965 = fsub fast float 1.000000e+00, %301
  %2966 = fsub fast float 1.000000e+00, %318
  %2967 = fmul fast float %2963, %2964
  %2968 = fmul fast float %2963, %2965
  %2969 = fmul fast float %2963, %2966
  %2970 = fadd fast float %2967, %300
  %2971 = fadd fast float %2968, %301
  %2972 = fadd fast float %2969, %318
  %2973 = fmul fast float %2917, 9.843750e-01
  %2974 = fadd fast float %2973, 7.812500e-03
  %2975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %2974, float %2050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 2
  %2977 = extractvalue %dx.types.ResRet.f32 %2975, 3
  %2978 = fmul fast float %2976, %300
  %2979 = fmul fast float %2976, %301
  %2980 = fmul fast float %2976, %318
  %2981 = fadd fast float %2978, %2977
  %2982 = fadd fast float %2979, %2977
  %2983 = fadd fast float %2980, %2977
  %2984 = call float @dx.op.binary.f32(i32 35, float %2982, float %2983)  ; FMax(a,b)
  %2985 = call float @dx.op.binary.f32(i32 35, float %2981, float %2984)  ; FMax(a,b)
  %2986 = fsub fast float 1.000000e+00, %2985
  %2987 = fsub fast float -0.000000e+00, %170
  %2988 = fsub fast float -0.000000e+00, %171
  %2989 = fsub fast float -0.000000e+00, %172
  %2990 = call float @dx.op.dot3.f32(i32 55, float %2079, float %2080, float %2081, float %2987, float %2988, float %2989)  ; Dot3(ax,ay,az,bx,by,bz)
  %2991 = call float @dx.op.unary.f32(i32 7, float %2990)  ; Saturate(value)
  %2992 = fmul fast float %2991, 9.843750e-01
  %2993 = fadd fast float %2992, 7.812500e-03
  %2994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %2993, float %2050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 2
  %2996 = extractvalue %dx.types.ResRet.f32 %2994, 3
  %2997 = fmul fast float %2995, %300
  %2998 = fmul fast float %2995, %301
  %2999 = fmul fast float %2995, %318
  %3000 = fadd fast float %2997, %2996
  %3001 = fadd fast float %2998, %2996
  %3002 = fadd fast float %2999, %2996
  %3003 = call float @dx.op.binary.f32(i32 35, float %3001, float %3002)  ; FMax(a,b)
  %3004 = call float @dx.op.binary.f32(i32 35, float %3000, float %3003)  ; FMax(a,b)
  %3005 = fsub fast float 1.000000e+00, %3004
  %3006 = fmul fast float %3005, %2991
  %3007 = fmul fast float %3006, %189
  %3008 = fmul fast float %3006, %190
  %3009 = fmul fast float %3006, %191
  %3010 = fmul fast float %2986, %2923
  %3011 = fadd fast float %3007, %3010
  %3012 = fadd fast float %3008, %3010
  %3013 = fadd fast float %3009, %3010
  %3014 = fmul fast float %3011, %2906
  %3015 = fmul fast float %3012, %2907
  %3016 = fmul fast float %3013, %2908
  %3017 = fadd fast float %3014, %2070
  %3018 = fadd fast float %3015, %2072
  %3019 = fadd fast float %3016, %2074
  %3020 = fmul fast float %2923, %2906
  %3021 = fmul fast float %3020, %2955
  %3022 = fmul fast float %3021, %2970
  %3023 = fmul fast float %2923, %2907
  %3024 = fmul fast float %3023, %2955
  %3025 = fmul fast float %3024, %2971
  %3026 = fmul fast float %2923, %2908
  %3027 = fmul fast float %3026, %2955
  %3028 = fmul fast float %3027, %2972
  %3029 = fadd fast float %3022, %2063
  %3030 = fadd fast float %3025, %2064
  %3031 = fadd fast float %3028, %2065
  br label %3032

; <label>:3032                                    ; preds = %2905, %2900, %1974
  %3033 = phi float [ %2063, %1974 ], [ %2063, %2900 ], [ %3029, %2905 ]
  %3034 = phi float [ %2064, %1974 ], [ %2064, %2900 ], [ %3030, %2905 ]
  %3035 = phi float [ %2065, %1974 ], [ %2065, %2900 ], [ %3031, %2905 ]
  %3036 = phi float [ %2070, %1974 ], [ %2070, %2900 ], [ %3017, %2905 ]
  %3037 = phi float [ %2072, %1974 ], [ %2072, %2900 ], [ %3018, %2905 ]
  %3038 = phi float [ %2074, %1974 ], [ %2074, %2900 ], [ %3019, %2905 ]
  %3039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3040 = extractvalue %dx.types.CBufRet.i32 %3039, 0
  %3041 = icmp eq i32 %3040, 0
  br i1 %3041, label %3540, label %3042

; <label>:3042                                    ; preds = %3032
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 2
  %3045 = extractvalue %dx.types.CBufRet.f32 %3043, 3
  %3046 = fmul fast float %3044, %62
  %3047 = fmul fast float %3045, %63
  %3048 = fptoui float %3046 to i32
  %3049 = fptoui float %3047 to i32
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %3053 = extractvalue %dx.types.CBufRet.f32 %3050, 3
  %3054 = fadd fast float %215, -4.000000e+00
  %3055 = call float @dx.op.binary.f32(i32 35, float %3054, float 0.000000e+00)  ; FMax(a,b)
  %3056 = fadd fast float %3055, %3051
  %3057 = fmul fast float %3056, %3052
  %3058 = call float @dx.op.unary.f32(i32 23, float %3057)  ; Log(value)
  %3059 = fmul fast float %3058, %3053
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 2
  %3062 = fmul fast float %3059, %3061
  %3063 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.i32 %3064, 1
  %3066 = add i32 %3065, -1
  %3067 = uitofp i32 %3065 to float
  %3068 = fmul fast float %3067, %3063
  %3069 = fptoui float %3068 to i32
  %3070 = call i32 @dx.op.binary.i32(i32 40, i32 %3069, i32 %3066)  ; UMin(a,b)
  %3071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.i32 %3071, 2
  %3073 = extractvalue %dx.types.CBufRet.i32 %3071, 3
  %3074 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3049, i32 %3072, i32 %3048)  ; UMad(a,b,c)
  %3075 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3070, i32 %3073, i32 %3074)  ; UMad(a,b,c)
  %3076 = add nsw i32 %3040, -1
  %3077 = call i32 @dx.op.binary.i32(i32 37, i32 %3076, i32 0)  ; IMax(a,b)
  %3078 = call float @dx.op.binary.f32(i32 35, float %215, float 0.000000e+00)  ; FMax(a,b)
  %3079 = fptoui float %3078 to i32
  %3080 = lshr i32 %3079, 5
  %3081 = call i32 @dx.op.binary.i32(i32 40, i32 %3080, i32 8191)  ; UMin(a,b)
  %3082 = shl i32 %3081, 2
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = lshr i32 %3084, 16
  %3086 = and i32 %3084, 65535
  %3087 = lshr i32 %3084, 21
  %3088 = lshr i32 %3086, 5
  %3089 = call i32 @dx.op.binary.i32(i32 40, i32 %3088, i32 %3077)  ; UMin(a,b)
  %3090 = icmp ugt i32 %3087, %3089
  br i1 %3090, label %3540, label %3091

; <label>:3091                                    ; preds = %3042
  br label %3092

; <label>:3092                                    ; preds = %3530, %3091
  %3093 = phi i32 [ %3537, %3530 ], [ %3087, %3091 ]
  %3094 = phi float [ %3531, %3530 ], [ %3033, %3091 ]
  %3095 = phi float [ %3532, %3530 ], [ %3034, %3091 ]
  %3096 = phi float [ %3533, %3530 ], [ %3035, %3091 ]
  %3097 = phi float [ %3534, %3530 ], [ %3036, %3091 ]
  %3098 = phi float [ %3535, %3530 ], [ %3037, %3091 ]
  %3099 = phi float [ %3536, %3530 ], [ %3038, %3091 ]
  %3100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.i32 %3100, 0
  %3102 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3075, i32 %3101, i32 %3093)  ; UMad(a,b,c)
  %3103 = shl i32 %3102, 2
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = shl i32 %3093, 5
  %3107 = sub nsw i32 %3085, %3106
  %3108 = call i32 @dx.op.binary.i32(i32 37, i32 %3107, i32 0)  ; IMax(a,b)
  %3109 = call i32 @dx.op.binary.i32(i32 38, i32 %3108, i32 31)  ; IMin(a,b)
  %3110 = sub nsw i32 1, %3085
  %3111 = add nsw i32 %3110, %3086
  %3112 = call i32 @dx.op.binary.i32(i32 37, i32 %3111, i32 0)  ; IMax(a,b)
  %3113 = call i32 @dx.op.binary.i32(i32 38, i32 %3112, i32 32)  ; IMin(a,b)
  %3114 = and i32 %3113, 31
  %3115 = shl i32 -1, %3114
  %3116 = xor i32 %3115, -1
  %3117 = and i32 %3109, 31
  %3118 = shl i32 %3116, %3117
  %3119 = icmp eq i32 %3113, 32
  %3120 = select i1 %3119, i32 -1, i32 %3118
  %3121 = and i32 %3120, %3105
  %3122 = icmp eq i32 %3121, 0
  br i1 %3122, label %3530, label %3123

; <label>:3123                                    ; preds = %3092
  br label %3124

; <label>:3124                                    ; preds = %3258, %3123
  %3125 = phi i32 [ %3136, %3258 ], [ %3121, %3123 ]
  %3126 = phi float [ %3259, %3258 ], [ %3094, %3123 ]
  %3127 = phi float [ %3260, %3258 ], [ %3095, %3123 ]
  %3128 = phi float [ %3261, %3258 ], [ %3096, %3123 ]
  %3129 = phi float [ %3262, %3258 ], [ %3097, %3123 ]
  %3130 = phi float [ %3263, %3258 ], [ %3098, %3123 ]
  %3131 = phi float [ %3264, %3258 ], [ %3099, %3123 ]
  %3132 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3125)  ; FirstbitLo(value)
  %3133 = add i32 %3132, %3106
  %3134 = and i32 %3132, 31
  %3135 = shl i32 1, %3134
  %3136 = xor i32 %3135, %3125
  %3137 = mul i32 %3133, 112
  %3138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.ResRet.f32 %3138, 1
  %3141 = extractvalue %dx.types.ResRet.f32 %3138, 2
  %3142 = or i32 %3137, 12
  %3143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  %3145 = add i32 %3137, 16
  %3146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  %3148 = extractvalue %dx.types.ResRet.f32 %3146, 1
  %3149 = extractvalue %dx.types.ResRet.f32 %3146, 2
  %3150 = add i32 %3137, 28
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %3137, 44
  %3154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  %3156 = add i32 %3137, 48
  %3157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.f32 %3157, 0
  %3159 = extractvalue %dx.types.ResRet.f32 %3157, 1
  %3160 = extractvalue %dx.types.ResRet.f32 %3157, 2
  %3161 = extractvalue %dx.types.ResRet.f32 %3157, 3
  %3162 = add i32 %3137, 64
  %3163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3162, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.f32 %3163, 0
  %3165 = extractvalue %dx.types.ResRet.f32 %3163, 1
  %3166 = extractvalue %dx.types.ResRet.f32 %3163, 2
  %3167 = extractvalue %dx.types.ResRet.f32 %3163, 3
  %3168 = add i32 %3137, 80
  %3169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 1
  %3171 = extractvalue %dx.types.ResRet.f32 %3169, 2
  %3172 = add i32 %3137, 92
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = call float @dx.op.dot3.f32(i32 55, float %3139, float %3140, float %3141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3176 = select i1 %99, float %3170, float %3139
  %3177 = select i1 %99, float %3175, float %3140
  %3178 = select i1 %99, float %3171, float %3141
  %3179 = and i32 %3174, 65535
  %3180 = uitofp i32 %3179 to float
  %3181 = lshr i32 %3174, 16
  %3182 = uitofp i32 %3181 to float
  %3183 = and i32 %3152, 65535
  %3184 = and i32 %3152, 50331648
  %3185 = icmp eq i32 %3184, 33554432
  %3186 = fsub fast float %3158, %249
  %3187 = fsub fast float %3159, %250
  %3188 = fsub fast float %3160, %251
  %3189 = call float @dx.op.dot3.f32(i32 55, float %3186, float %3187, float %3188, float %3186, float %3187, float %3188)  ; Dot3(ax,ay,az,bx,by,bz)
  %3190 = call float @dx.op.unary.f32(i32 24, float %3189)  ; Sqrt(value)
  %3191 = fdiv fast float 1.000000e+00, %3190
  %3192 = fmul fast float %3191, %3186
  %3193 = fmul fast float %3191, %3187
  %3194 = fmul fast float %3191, %3188
  %3195 = fadd fast float %3190, %3144
  %3196 = fdiv fast float 1.000000e+00, %3195
  %3197 = fmul float %3155, %3196
  %3198 = fmul float %3197, %3197
  %3199 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  br i1 %3185, label %3200, label %3221

; <label>:3200                                    ; preds = %3124
  %3201 = fmul fast float %3166, %3147
  %3202 = fmul fast float %3166, %3148
  %3203 = fmul fast float %3166, %3149
  %3204 = fadd fast float %3186, %3201
  %3205 = fadd fast float %3187, %3202
  %3206 = fadd fast float %3188, %3203
  %3207 = call float @dx.op.dot3.f32(i32 55, float %3204, float %3205, float %3206, float %3204, float %3205, float %3206)  ; Dot3(ax,ay,az,bx,by,bz)
  %3208 = call float @dx.op.unary.f32(i32 25, float %3207)  ; Rsqrt(value)
  %3209 = fmul fast float %3208, %3204
  %3210 = fmul fast float %3208, %3205
  %3211 = fmul fast float %3208, %3206
  %3212 = fsub fast float %249, %3158
  %3213 = fsub fast float %250, %3159
  %3214 = fsub fast float %251, %3160
  %3215 = fsub fast float -0.000000e+00, %3212
  %3216 = fsub fast float -0.000000e+00, %3213
  %3217 = fsub fast float -0.000000e+00, %3214
  %3218 = call float @dx.op.dot3.f32(i32 55, float %3215, float %3216, float %3217, float %3147, float %3148, float %3149)  ; Dot3(ax,ay,az,bx,by,bz)
  %3219 = fcmp fast ogt float %3218, 0.000000e+00
  %3220 = uitofp i1 %3219 to float
  br label %3221

; <label>:3221                                    ; preds = %3200, %3124
  %3222 = phi float [ %3220, %3200 ], [ 1.000000e+00, %3124 ]
  %3223 = phi float [ %3209, %3200 ], [ %3192, %3124 ]
  %3224 = phi float [ %3210, %3200 ], [ %3193, %3124 ]
  %3225 = phi float [ %3211, %3200 ], [ %3194, %3124 ]
  %3226 = call float @dx.op.dot3.f32(i32 55, float %3147, float %3148, float %3149, float %3223, float %3224, float %3225)  ; Dot3(ax,ay,az,bx,by,bz)
  %3227 = fmul fast float %3226, %3226
  %3228 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  %3229 = fsub fast float 1.000000e+00, %3228
  %3230 = fmul fast float %3229, 5.000000e-01
  %3231 = fcmp fast ogt float %3226, 0.000000e+00
  %3232 = fsub fast float 1.000000e+00, %3230
  %3233 = select i1 %3231, float %3230, float %3232
  %3234 = fmul fast float %3233, %3182
  %3235 = fadd fast float %3234, %3180
  %3236 = fmul fast float %3235, 0x3EF0001000000000
  %3237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %38, float %3236, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = fmul fast float %3226, %3164
  %3240 = fadd fast float %3239, %3165
  %3241 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3242 = select i1 %3185, float 1.000000e+00, float %3241
  %3243 = select i1 %3185, float %3241, float 1.000000e+00
  %3244 = fmul fast float %3190, %3161
  %3245 = fsub fast float 1.000000e+00, %3244
  %3246 = fmul fast float %3245, %3167
  %3247 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3248 = fmul fast float %3247, %3243
  %3249 = fmul fast float %3248, 2.000000e+00
  %3250 = fsub fast float 3.000000e+00, %3249
  %3251 = fmul fast float %3238, %3222
  %3252 = fmul fast float %3248, %3248
  %3253 = fmul fast float %3252, %3251
  %3254 = fmul fast float %3253, %3250
  %3255 = call float @dx.op.binary.f32(i32 36, float %3254, float %3254)  ; FMin(a,b)
  %3256 = call float @dx.op.binary.f32(i32 36, float %3254, float %3255)  ; FMin(a,b)
  %3257 = fcmp fast ogt float %3256, 0.000000e+00
  br i1 %3257, label %3266, label %3258, !dx.controlflow.hints !118

; <label>:3258                                    ; preds = %3371, %3366, %3221
  %3259 = phi float [ %3126, %3366 ], [ %3126, %3221 ], [ %3526, %3371 ]
  %3260 = phi float [ %3127, %3366 ], [ %3127, %3221 ], [ %3527, %3371 ]
  %3261 = phi float [ %3128, %3366 ], [ %3128, %3221 ], [ %3528, %3371 ]
  %3262 = phi float [ %3129, %3366 ], [ %3129, %3221 ], [ %3514, %3371 ]
  %3263 = phi float [ %3130, %3366 ], [ %3130, %3221 ], [ %3515, %3371 ]
  %3264 = phi float [ %3131, %3366 ], [ %3131, %3221 ], [ %3516, %3371 ]
  %3265 = icmp eq i32 %3125, %3135
  br i1 %3265, label %3529, label %3124

; <label>:3266                                    ; preds = %3221
  %3267 = icmp eq i32 %3183, 255
  br i1 %3267, label %3366, label %3268, !dx.controlflow.hints !119

; <label>:3268                                    ; preds = %3266
  %3269 = mul nuw nsw i32 %3183, 176
  %3270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  %3272 = extractvalue %dx.types.ResRet.f32 %3270, 1
  %3273 = extractvalue %dx.types.ResRet.f32 %3270, 2
  %3274 = extractvalue %dx.types.ResRet.f32 %3270, 3
  %3275 = add nuw nsw i32 %3269, 16
  %3276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.ResRet.f32 %3276, 1
  %3279 = add nuw nsw i32 %3269, 32
  %3280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = add nuw nsw i32 %3269, 48
  %3285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3288 = extractvalue %dx.types.ResRet.f32 %3285, 2
  %3289 = extractvalue %dx.types.ResRet.f32 %3285, 3
  %3290 = add nuw nsw i32 %3269, 64
  %3291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3290, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 0
  %3293 = extractvalue %dx.types.ResRet.f32 %3291, 1
  %3294 = extractvalue %dx.types.ResRet.f32 %3291, 2
  %3295 = extractvalue %dx.types.ResRet.f32 %3291, 3
  %3296 = add nuw nsw i32 %3269, 80
  %3297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = extractvalue %dx.types.ResRet.f32 %3297, 3
  %3302 = add nuw nsw i32 %3269, 96
  %3303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.ResRet.f32 %3303, 1
  %3306 = extractvalue %dx.types.ResRet.f32 %3303, 2
  %3307 = extractvalue %dx.types.ResRet.f32 %3303, 3
  %3308 = bitcast float %3278 to i32
  %3309 = fmul fast float %3283, %170
  %3310 = fmul fast float %3283, %171
  %3311 = fmul fast float %3283, %172
  %3312 = fadd fast float %3309, %249
  %3313 = fadd fast float %3310, %250
  %3314 = fadd fast float %3311, %251
  %3315 = fmul fast float %3312, %3286
  %3316 = call float @dx.op.tertiary.f32(i32 46, float %3313, float %3292, float %3315)  ; FMad(a,b,c)
  %3317 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3298, float %3316)  ; FMad(a,b,c)
  %3318 = fadd fast float %3317, %3304
  %3319 = fmul fast float %3312, %3287
  %3320 = call float @dx.op.tertiary.f32(i32 46, float %3313, float %3293, float %3319)  ; FMad(a,b,c)
  %3321 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3299, float %3320)  ; FMad(a,b,c)
  %3322 = fadd fast float %3321, %3305
  %3323 = fmul fast float %3312, %3288
  %3324 = call float @dx.op.tertiary.f32(i32 46, float %3313, float %3294, float %3323)  ; FMad(a,b,c)
  %3325 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3300, float %3324)  ; FMad(a,b,c)
  %3326 = fadd fast float %3325, %3306
  %3327 = fmul fast float %3312, %3289
  %3328 = call float @dx.op.tertiary.f32(i32 46, float %3313, float %3295, float %3327)  ; FMad(a,b,c)
  %3329 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3301, float %3328)  ; FMad(a,b,c)
  %3330 = fadd fast float %3329, %3307
  %3331 = fdiv fast float %3318, %3330
  %3332 = fdiv fast float %3322, %3330
  %3333 = fdiv fast float %3326, %3330
  %3334 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3333)  ; FMax(a,b)
  %3335 = fmul fast float %110, 0x401921FB60000000
  %3336 = call float @dx.op.unary.f32(i32 13, float %3335)  ; Sin(value)
  %3337 = call float @dx.op.unary.f32(i32 12, float %3335)  ; Cos(value)
  %3338 = fsub fast float -0.000000e+00, %3336
  %3339 = fmul fast float %3273, 5.000000e-01
  %3340 = call float @dx.op.dot2.f32(i32 54, float %110, float %110, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %3341 = call float @dx.op.unary.f32(i32 22, float %3340)  ; Frc(value)
  %3342 = fmul fast float %3341, 0x404A7DD040000000
  %3343 = call float @dx.op.unary.f32(i32 22, float %3342)  ; Frc(value)
  %3344 = fmul fast float %3343, %3282
  %3345 = fadd fast float %3344, %3339
  %3346 = call float @dx.op.tertiary.f32(i32 46, float %3345, float %3338, float 0.000000e+00)  ; FMad(a,b,c)
  %3347 = call float @dx.op.tertiary.f32(i32 46, float %3345, float %3337, float 0.000000e+00)  ; FMad(a,b,c)
  %3348 = fadd fast float %3346, %3331
  %3349 = fadd fast float %3347, %3332
  %3350 = fmul fast float %3348, %3277
  %3351 = fmul fast float %3349, %3277
  %3352 = call float @dx.op.binary.f32(i32 35, float %3350, float %3273)  ; FMax(a,b)
  %3353 = call float @dx.op.binary.f32(i32 35, float %3351, float %3273)  ; FMax(a,b)
  %3354 = call float @dx.op.binary.f32(i32 36, float %3352, float %3274)  ; FMin(a,b)
  %3355 = call float @dx.op.binary.f32(i32 36, float %3353, float %3274)  ; FMin(a,b)
  %3356 = fadd fast float %3354, %3271
  %3357 = fadd fast float %3355, %3272
  %3358 = uitofp i32 %3308 to float
  %3359 = fadd fast float %3334, %3281
  %3360 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %39, float %3356, float %3357, float %3358, float undef, i32 0, i32 0, i32 undef, float %3359)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = fadd fast float %3361, -1.000000e+00
  %3363 = fmul fast float %3362, %3242
  %3364 = fadd fast float %3363, 1.000000e+00
  %3365 = fmul fast float %3364, %3254
  br label %3366

; <label>:3366                                    ; preds = %3268, %3266
  %3367 = phi float [ %3365, %3268 ], [ %3254, %3266 ]
  %3368 = call float @dx.op.binary.f32(i32 36, float %3367, float %3367)  ; FMin(a,b)
  %3369 = call float @dx.op.binary.f32(i32 36, float %3367, float %3368)  ; FMin(a,b)
  %3370 = fcmp fast ogt float %3369, 0.000000e+00
  br i1 %3370, label %3371, label %3258, !dx.controlflow.hints !120

; <label>:3371                                    ; preds = %3366
  %3372 = fmul fast float %3367, %3176
  %3373 = fmul fast float %3367, %3177
  %3374 = fmul fast float %3367, %3178
  %3375 = fsub fast float %3192, %312
  %3376 = fsub fast float %3193, %313
  %3377 = fsub fast float %3194, %314
  %3378 = call float @dx.op.dot3.f32(i32 55, float %3375, float %3376, float %3377, float %3375, float %3376, float %3377)  ; Dot3(ax,ay,az,bx,by,bz)
  %3379 = call float @dx.op.unary.f32(i32 25, float %3378)  ; Rsqrt(value)
  %3380 = fmul fast float %3379, %3375
  %3381 = fmul fast float %3379, %3376
  %3382 = fmul fast float %3379, %3377
  %3383 = call float @dx.op.dot3.f32(i32 55, float %3192, float %3193, float %3194, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3384 = call float @dx.op.dot3.f32(i32 55, float %315, float %316, float %317, float %3380, float %3381, float %3382)  ; Dot3(ax,ay,az,bx,by,bz)
  %3385 = call float @dx.op.unary.f32(i32 7, float %3383)  ; Saturate(value)
  %3386 = fmul fast float %3385, %3199
  %3387 = fmul fast float %3385, %3385
  %3388 = fmul fast float %3387, 0x47DE623840000000
  %3389 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  %3390 = fmul fast float %3386, %3389
  %3391 = bitcast float %3189 to i32
  %3392 = ashr i32 %3391, 1
  %3393 = sub nsw i32 1597463007, %3392
  %3394 = bitcast i32 %3393 to float
  %3395 = fmul fast float %3394, %3186
  %3396 = fmul fast float %3394, %3187
  %3397 = fmul fast float %3394, %3188
  %3398 = fsub fast float %3395, %312
  %3399 = fsub fast float %3396, %313
  %3400 = fsub fast float %3397, %314
  %3401 = call float @dx.op.dot3.f32(i32 55, float %3398, float %3399, float %3400, float %3398, float %3399, float %3400)  ; Dot3(ax,ay,az,bx,by,bz)
  %3402 = call float @dx.op.unary.f32(i32 25, float %3401)  ; Rsqrt(value)
  %3403 = fmul fast float %3398, %3402
  %3404 = fmul fast float %3399, %3402
  %3405 = fmul fast float %3400, %3402
  %3406 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %3403, float %3404, float %3405)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = fmul fast float %3406, %3406
  %3408 = call float @dx.op.unary.f32(i32 6, float %3383)  ; FAbs(value)
  %3409 = fsub fast float 1.000000e+00, %182
  %3410 = call float @dx.op.binary.f32(i32 35, float %3409, float 0x3F847AE140000000)  ; FMax(a,b)
  %3411 = fmul fast float %3410, %3410
  %3412 = fmul fast float %3411, %3411
  %3413 = fsub fast float 1.000000e+00, %3412
  %3414 = fmul fast float %320, %320
  %3415 = fmul fast float %3414, %3413
  %3416 = fadd fast float %3415, %3412
  %3417 = bitcast float %3416 to i32
  %3418 = ashr i32 %3417, 1
  %3419 = add nsw i32 %3418, 532487669
  %3420 = bitcast i32 %3419 to float
  %3421 = fadd fast float %3420, %320
  %3422 = fmul fast float %3412, %3407
  %3423 = fsub fast float 1.000000e+00, %3407
  %3424 = fadd fast float %3423, %3422
  %3425 = fmul fast float %3408, %3408
  %3426 = fmul fast float %3425, %3413
  %3427 = fadd fast float %3426, %3412
  %3428 = bitcast float %3427 to i32
  %3429 = ashr i32 %3428, 1
  %3430 = add nsw i32 %3429, 532487669
  %3431 = bitcast i32 %3430 to float
  %3432 = fadd fast float %3431, %3408
  %3433 = fmul fast float %3424, %3424
  %3434 = fmul fast float %3433, %3421
  %3435 = fmul fast float %3434, %3432
  %3436 = fdiv fast float 1.000000e+00, %3435
  %3437 = bitcast float %3412 to i32
  %3438 = sitofp i32 %3437 to float
  %3439 = fmul fast float %3438, 0x3FE7F73180000000
  %3440 = fadd fast float %3439, 0x41AFE27C40000000
  %3441 = fptosi float %3440 to i32
  %3442 = bitcast i32 %3441 to float
  %3443 = fmul fast float %3155, 0x3FD80E9D60000000
  %3444 = fmul fast float %3443, %3394
  %3445 = fadd fast float %3442, %3444
  %3446 = bitcast float %3445 to i32
  %3447 = sub nsw i32 2129859010, %3446
  %3448 = bitcast i32 %3447 to float
  %3449 = fmul fast float %3412, %3436
  %3450 = fmul fast float %3449, %3442
  %3451 = fmul fast float %3450, %3448
  %3452 = call float @dx.op.unary.f32(i32 6, float %3384)  ; FAbs(value)
  %3453 = fsub fast float 1.000000e+00, %3452
  %3454 = bitcast float %3453 to i32
  %3455 = sitofp i32 %3454 to float
  %3456 = fmul fast float %3455, 5.000000e+00
  %3457 = fadd fast float %3456, 0xC1EFBF8940000000
  %3458 = fptosi float %3457 to i32
  %3459 = bitcast i32 %3458 to float
  %3460 = fsub fast float 1.000000e+00, %300
  %3461 = fsub fast float 1.000000e+00, %301
  %3462 = fsub fast float 1.000000e+00, %318
  %3463 = fmul fast float %3459, %3460
  %3464 = fmul fast float %3459, %3461
  %3465 = fmul fast float %3459, %3462
  %3466 = fadd fast float %3463, %300
  %3467 = fadd fast float %3464, %301
  %3468 = fadd fast float %3465, %318
  %3469 = fmul fast float %3383, 9.843750e-01
  %3470 = fadd fast float %3469, 7.812500e-03
  %3471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %3470, float %2050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 2
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 3
  %3474 = fmul fast float %3472, %300
  %3475 = fmul fast float %3472, %301
  %3476 = fmul fast float %3472, %318
  %3477 = fadd fast float %3474, %3473
  %3478 = fadd fast float %3475, %3473
  %3479 = fadd fast float %3476, %3473
  %3480 = call float @dx.op.binary.f32(i32 35, float %3478, float %3479)  ; FMax(a,b)
  %3481 = call float @dx.op.binary.f32(i32 35, float %3477, float %3480)  ; FMax(a,b)
  %3482 = fsub fast float 1.000000e+00, %3481
  %3483 = fsub fast float -0.000000e+00, %170
  %3484 = fsub fast float -0.000000e+00, %171
  %3485 = fsub fast float -0.000000e+00, %172
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3192, float %3193, float %3194, float %3483, float %3484, float %3485)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3488 = fmul fast float %3487, %3199
  %3489 = fmul fast float %3487, 9.843750e-01
  %3490 = fadd fast float %3489, 7.812500e-03
  %3491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %3490, float %2050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 3
  %3494 = fmul fast float %3492, %300
  %3495 = fmul fast float %3492, %301
  %3496 = fmul fast float %3492, %318
  %3497 = fadd fast float %3494, %3493
  %3498 = fadd fast float %3495, %3493
  %3499 = fadd fast float %3496, %3493
  %3500 = call float @dx.op.binary.f32(i32 35, float %3498, float %3499)  ; FMax(a,b)
  %3501 = call float @dx.op.binary.f32(i32 35, float %3497, float %3500)  ; FMax(a,b)
  %3502 = fsub fast float 1.000000e+00, %3501
  %3503 = fmul fast float %3488, %3502
  %3504 = fmul fast float %3503, %189
  %3505 = fmul fast float %3503, %190
  %3506 = fmul fast float %3503, %191
  %3507 = fmul fast float %3482, %3390
  %3508 = fadd fast float %3504, %3507
  %3509 = fadd fast float %3505, %3507
  %3510 = fadd fast float %3506, %3507
  %3511 = fmul fast float %3508, %3372
  %3512 = fmul fast float %3509, %3373
  %3513 = fmul fast float %3510, %3374
  %3514 = fadd fast float %3511, %3129
  %3515 = fadd fast float %3512, %3130
  %3516 = fadd fast float %3513, %3131
  %3517 = fmul fast float %3390, %3372
  %3518 = fmul fast float %3517, %3466
  %3519 = fmul fast float %3518, %3451
  %3520 = fmul fast float %3390, %3373
  %3521 = fmul fast float %3520, %3467
  %3522 = fmul fast float %3521, %3451
  %3523 = fmul fast float %3390, %3374
  %3524 = fmul fast float %3523, %3468
  %3525 = fmul fast float %3524, %3451
  %3526 = fadd fast float %3519, %3126
  %3527 = fadd fast float %3522, %3127
  %3528 = fadd fast float %3525, %3128
  br label %3258

; <label>:3529                                    ; preds = %3258
  br label %3530

; <label>:3530                                    ; preds = %3529, %3092
  %3531 = phi float [ %3094, %3092 ], [ %3259, %3529 ]
  %3532 = phi float [ %3095, %3092 ], [ %3260, %3529 ]
  %3533 = phi float [ %3096, %3092 ], [ %3261, %3529 ]
  %3534 = phi float [ %3097, %3092 ], [ %3262, %3529 ]
  %3535 = phi float [ %3098, %3092 ], [ %3263, %3529 ]
  %3536 = phi float [ %3099, %3092 ], [ %3264, %3529 ]
  %3537 = add i32 %3093, 1
  %3538 = icmp ugt i32 %3537, %3089
  br i1 %3538, label %3539, label %3092

; <label>:3539                                    ; preds = %3530
  br label %3540

; <label>:3540                                    ; preds = %3539, %3042, %3032
  %3541 = phi float [ %3033, %3032 ], [ %3033, %3042 ], [ %3531, %3539 ]
  %3542 = phi float [ %3034, %3032 ], [ %3034, %3042 ], [ %3532, %3539 ]
  %3543 = phi float [ %3035, %3032 ], [ %3035, %3042 ], [ %3533, %3539 ]
  %3544 = phi float [ %3036, %3032 ], [ %3036, %3042 ], [ %3534, %3539 ]
  %3545 = phi float [ %3037, %3032 ], [ %3037, %3042 ], [ %3535, %3539 ]
  %3546 = phi float [ %3038, %3032 ], [ %3038, %3042 ], [ %3536, %3539 ]
  %3547 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %3548 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %3549 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %3550 = fmul fast float %3547, %3544
  %3551 = fmul fast float %3548, %3545
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  br i1 %99, label %3554, label %3578

; <label>:3554                                    ; preds = %3540
  %3555 = fadd fast float %3546, %308
  %3556 = fmul fast float %3555, %306
  %3557 = fsub fast float 1.000000e+00, %306
  %3558 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3560 = extractvalue %dx.types.CBufRet.f32 %3559, 3
  %3561 = fmul fast float %3560, %3558
  %3562 = fsub fast float 1.000000e+00, %320
  %3563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3564 = extractvalue %dx.types.CBufRet.f32 %3563, 0
  %3565 = fmul fast float %3564, %3562
  %3566 = fsub fast float 1.000000e+00, %192
  %3567 = extractvalue %dx.types.CBufRet.f32 %3563, 2
  %3568 = fmul fast float %3567, %3566
  %3569 = fadd fast float %3551, %3550
  %3570 = extractvalue %dx.types.CBufRet.f32 %3559, 1
  %3571 = fadd fast float %3561, %3556
  %3572 = fsub fast float %3571, %3565
  %3573 = fsub fast float %3572, %3568
  %3574 = fsub fast float %3573, %3570
  %3575 = extractvalue %dx.types.CBufRet.f32 %3559, 2
  %3576 = fmul fast float %3574, %3575
  %3577 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  br label %3582

; <label>:3578                                    ; preds = %3540
  %3579 = fmul fast float %3549, %3546
  %3580 = fmul fast float %3553, %3551
  %3581 = fmul fast float %3579, %3553
  br label %3582

; <label>:3582                                    ; preds = %3578, %3554
  %3583 = phi float [ %3569, %3554 ], [ %3550, %3578 ]
  %3584 = phi float [ %3577, %3554 ], [ %3580, %3578 ]
  %3585 = phi float [ 1.000000e+00, %3554 ], [ %3581, %3578 ]
  %3586 = fmul float %3553, %3583
  %3587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3588 = extractvalue %dx.types.CBufRet.f32 %3587, 0
  %3589 = fmul fast float %3588, %3542
  %3590 = fmul fast float %3588, %3543
  %3591 = fadd fast float %3542, %3541
  %3592 = select i1 %99, float %3591, float %3541
  %3593 = fmul float %3592, %3588
  %3594 = select i1 %99, float 0.000000e+00, float %3589
  %3595 = select i1 %99, float 0.000000e+00, float %3590
  %3596 = fmul fast float %3586, %3547
  %3597 = fmul fast float %3584, %3548
  %3598 = fmul fast float %3585, %3549
  %3599 = fadd fast float %3593, %3596
  %3600 = fadd fast float %3594, %3597
  %3601 = fadd fast float %3595, %3598
  %3602 = select i1 %99, float %3584, float %3600
  %3603 = select i1 %99, float %3585, float %3601
  %3604 = call float @dx.op.binary.f32(i32 36, float %3599, float 3.225500e+04)  ; FMin(a,b)
  %3605 = call float @dx.op.binary.f32(i32 36, float %3602, float 3.225500e+04)  ; FMin(a,b)
  %3606 = call float @dx.op.binary.f32(i32 36, float %3603, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3604)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3605)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3606)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!53}
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 62, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 63, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 21, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 22, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 59, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 60, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 19, i32 1, i32 4, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 20, i32 1, i32 4, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!19 = !{i32 12, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !23}
!23 = !{i32 0, i32 5}
!24 = !{i32 16, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
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
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 272, null}
!47 = !{!48, !49, !50, !51, !52}
!48 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!53 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!54 = !{void ()* @ps_main, !"ps_main", !55, !4, !84}
!55 = !{!56, !81, null}
!56 = !{!57, !60, !61, !62, !64, !65, !67, !69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!57 = !{i32 0, !"SV_Position", i8 9, i8 3, !58, i8 4, i32 1, i8 4, i32 0, i8 0, !59}
!58 = !{i32 0}
!59 = !{i32 3, i32 11}
!60 = !{i32 1, !"COLOR", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!61 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 2, i8 0, !59}
!62 = !{i32 3, !"NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 3, i8 0, !63}
!63 = !{i32 3, i32 7}
!64 = !{i32 4, !"TANGENT", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!65 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !58, i8 2, i32 1, i8 1, i32 3, i8 3, !66}
!66 = !{i32 3, i32 1}
!67 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !68, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!68 = !{i32 1}
!69 = !{i32 7, !"LGV_POSITION_INDEX", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 6, i8 0, !70}
!70 = !{i32 3, i32 8}
!71 = !{i32 8, !"LGV_IS_STATIC", i8 9, i8 0, !58, i8 2, i32 1, i8 1, i32 7, i8 0, !66}
!72 = !{i32 9, !"WGV_TEXCOORD", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 7, i8 1, null}
!73 = !{i32 10, !"WGV_NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 8, i8 0, null}
!74 = !{i32 11, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 2, i32 9, i8 0, null}
!75 = !{i32 12, !"SCEONDARY_NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 10, i8 0, null}
!76 = !{i32 13, !"OBJECT_POSITION", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 11, i8 0, null}
!77 = !{i32 14, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !58, i8 1, i32 1, i8 1, i32 12, i8 0, null}
!78 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !58, i8 1, i32 1, i8 4, i32 13, i8 0, !66}
!79 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !58, i8 1, i32 1, i8 1, i32 12, i8 1, !66}
!80 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !58, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!81 = !{!82}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 0, i8 0, !83}
!83 = !{i32 3, i32 15}
!84 = !{i32 0, i64 24}
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
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}

