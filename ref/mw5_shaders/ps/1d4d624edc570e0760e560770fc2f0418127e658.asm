;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; ENTITY_IDS               0    yz        12     NONE    uint    y  
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
; shader hash: 4ff496c62e9cdf9b4ca73c163de38309
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
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
; ENTITY_IDS               0        nointerpolation       
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
;   [160 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     u32     2darray      T7     t11,space2     1
;                                   texture     f32     2darray      T8     t10,space2     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t18,space1     1
;                                   texture    byte         r/o     T11     t19,space1     1
;                                   texture    byte         r/o     T12     t20,space1     1
;                                   texture    byte         r/o     T13     t21,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26     t68,space1     1
;                                   texture     f32          2d     T27      t0,space2     1
;                                   texture    byte         r/o     T28     t11,space1     1
;                                   texture    byte         r/o     T29     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %71
  %79 = fmul fast float %77, %72
  %80 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = bitcast float %80 to i32
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 1597250115, %82
  %84 = bitcast i32 %83 to float
  %85 = fmul fast float %84, %63
  %86 = fmul fast float %84, %64
  %87 = fmul fast float %84, %65
  %88 = fmul fast float %64, %61
  %89 = fmul fast float %65, %60
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %65, %59
  %92 = fmul fast float %63, %61
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %63, %60
  %95 = fmul fast float %64, %59
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %90, %62
  %98 = fmul fast float %93, %62
  %99 = fmul fast float %96, %62
  %100 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %101 = bitcast float %100 to i32
  %102 = ashr i32 %101, 1
  %103 = sub nsw i32 1597250115, %102
  %104 = bitcast i32 %103 to float
  %105 = fmul fast float %104, %52
  %106 = fmul fast float %104, %53
  %107 = fmul fast float %104, %54
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fcmp fast une float %109, 0.000000e+00
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %78, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %79, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = select i1 %110, float %121, float %125
  %129 = select i1 %110, float %122, float %126
  %130 = select i1 %110, float %123, float %127
  %131 = fmul fast float %128, %118
  %132 = fmul fast float %129, %118
  %133 = fmul fast float %130, %118
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = select i1 %110, float %135, float %139
  %143 = select i1 %110, float %136, float %140
  %144 = select i1 %110, float %137, float %141
  %145 = fmul fast float %142, %119
  %146 = fmul fast float %143, %119
  %147 = fmul fast float %144, %119
  %148 = fadd fast float %145, %131
  %149 = fadd fast float %146, %132
  %150 = fadd fast float %147, %133
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = select i1 %110, float %152, float %156
  %160 = select i1 %110, float %153, float %157
  %161 = select i1 %110, float %154, float %158
  %162 = fadd fast float %148, %159
  %163 = fadd fast float %149, %160
  %164 = fadd fast float %150, %161
  %165 = fmul fast float %162, %73
  %166 = fmul fast float %163, %73
  %167 = fmul fast float %164, %73
  %168 = shl i32 %34, 5
  %169 = add i32 %168, 4194304
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = extractvalue %dx.types.ResRet.i32 %170, 2
  %174 = extractvalue %dx.types.ResRet.i32 %170, 3
  %175 = add i32 %168, 4194320
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = bitcast i32 %177 to float
  %180 = bitcast i32 %178 to float
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %78
  %185 = fmul fast float %183, %79
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = select i1 %189, i32 %195, i32 0
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 3
  %199 = and i32 %198, 3
  %200 = icmp ne i32 %199, 0
  %201 = and i32 %198, 4
  %202 = icmp ne i32 %201, 0
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %213

; <label>:204                                     ; preds = %0
  %205 = fmul fast float %113, %79
  %206 = fmul fast float %112, %78
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %206, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %216

; <label>:213                                     ; preds = %0
  %214 = icmp eq i32 %201, 0
  %215 = and i1 %200, %214
  br label %216

; <label>:216                                     ; preds = %213, %204
  %217 = phi i1 [ %212, %204 ], [ %215, %213 ]
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fmul fast float %219, 0x3FE3C6EF40000000
  %221 = frem fast float %78, 2.560000e+02
  %222 = frem fast float %79, 2.560000e+02
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fadd fast float %226, %220
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = add i32 %33, 156
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %33, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %33, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %33, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %33, 172
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %33, 232
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %33, 52
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %33, 304
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %33, 188
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %33, 248
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %33, 68
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %33, 320
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %33, 204
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %33, 264
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %33, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %33, 336
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %33, 348
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 32
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %399, 64
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %399, 128
  %405 = icmp eq i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %423, label %410

; <label>:410                                     ; preds = %216
  %411 = add i32 %33, 492
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = fmul fast float %417, %68
  %421 = fmul fast float %418, %69
  %422 = fmul fast float %419, %70
  br label %423

; <label>:423                                     ; preds = %410, %216
  %424 = phi float [ %70, %216 ], [ %422, %410 ]
  %425 = phi float [ %69, %216 ], [ %421, %410 ]
  %426 = phi float [ %68, %216 ], [ %420, %410 ]
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 2
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %450, label %431

; <label>:431                                     ; preds = %423
  %432 = add i32 %33, 44
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 1
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %426, float 1.000000e+00
  %438 = add i32 %33, 60
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %425, float 1.000000e+00
  %444 = add i32 %33, 76
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %424, float 1.000000e+00
  br label %450

; <label>:450                                     ; preds = %431, %423
  %451 = phi float [ %424, %423 ], [ %449, %431 ]
  %452 = phi float [ %425, %423 ], [ %443, %431 ]
  %453 = phi float [ %426, %423 ], [ %437, %431 ]
  %454 = lshr i32 %428, 20
  %455 = and i32 %454, 3
  %456 = add nuw nsw i32 %455, 1
  %457 = add i32 %33, 24
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %33, 28
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = or i32 %462, %459
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %969, label %465

; <label>:465                                     ; preds = %450
  %466 = and i32 %459, 262144
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %39, float 1.000000e+00
  %469 = select i1 %467, float %40, float 0.000000e+00
  %470 = select i1 %467, float %41, float 0.000000e+00
  %471 = select i1 %467, float %42, float 1.000000e+00
  %472 = select i1 %467, float %43, float %66
  %473 = select i1 %467, float %44, float %67
  %474 = add i32 %33, 284
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = fmul fast float %478, 0x3F50624DE0000000
  %480 = add i32 %33, 88
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = and i32 %483, 255
  %485 = lshr i32 %482, 24
  %486 = add i32 %33, 292
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 65535
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %488, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = add i32 %33, 32
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 22
  %497 = shl nuw nsw i32 %496, 5
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = shl i32 %495, 4
  %500 = and i32 %499, 32752
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %495, 7
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 3
  %507 = fmul fast float %506, 1.000000e+03
  %508 = fmul fast float %269, %507
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = fadd fast float %509, %259
  %511 = fmul fast float %270, %507
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %261
  %514 = fmul fast float %479, %507
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fmul fast float %515, 0x401921FB60000000
  %517 = fadd fast float %516, %498
  %518 = call float @dx.op.unary.f32(i32 13, float %517)  ; Sin(value)
  %519 = call float @dx.op.unary.f32(i32 12, float %517)  ; Cos(value)
  %520 = fsub fast float -0.000000e+00, %518
  %521 = fadd fast float %472, -5.000000e-01
  %522 = fadd fast float %473, -5.000000e-01
  %523 = fmul fast float %490, %521
  %524 = fmul fast float %492, %522
  %525 = fadd fast float %523, 5.000000e-01
  %526 = fadd fast float %524, 5.000000e-01
  %527 = fmul fast float %501, %525
  %528 = fmul fast float %504, %526
  %529 = fmul fast float %519, %527
  %530 = call float @dx.op.tertiary.f32(i32 46, float %520, float %528, float %529)  ; FMad(a,b,c)
  %531 = fmul fast float %518, %527
  %532 = call float @dx.op.tertiary.f32(i32 46, float %519, float %528, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %510, %530
  %534 = fadd fast float %513, %532
  %535 = icmp ugt i32 %484, 1
  %536 = icmp ugt i32 %482, 33554431
  %537 = or i1 %536, %535
  br i1 %537, label %538, label %563

; <label>:538                                     ; preds = %465
  %539 = add i32 %33, 228
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = fmul fast float %506, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = mul nuw nsw i32 %484, %485
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %545, %547
  %549 = call float @dx.op.unary.f32(i32 27, float %548)  ; Round_ni(value)
  %550 = fptoui float %549 to i32
  %551 = urem i32 %550, %484
  %552 = udiv i32 %550, %485
  %553 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %554 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %555 = uitofp i32 %551 to float
  %556 = uitofp i32 %552 to float
  %557 = fadd fast float %553, %555
  %558 = fadd fast float %554, %556
  %559 = uitofp i32 %484 to float
  %560 = uitofp i32 %485 to float
  %561 = fdiv fast float %557, %559
  %562 = fdiv fast float %558, %560
  br label %563

; <label>:563                                     ; preds = %538, %465
  %564 = phi float [ %561, %538 ], [ %533, %465 ]
  %565 = phi float [ %562, %538 ], [ %534, %465 ]
  %566 = and i32 %459, 16
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %764, label %568

; <label>:568                                     ; preds = %563
  %569 = add i32 %33, 376
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add i32 %571, 0
  %573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %573, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = extractvalue %dx.types.ResRet.f32 %574, 3
  %579 = and i32 %482, 255
  %580 = uitofp i32 %579 to float
  %581 = lshr i32 %482, 8
  %582 = and i32 %581, 255
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %578, %580
  %585 = fadd fast float %584, %583
  %586 = fmul fast float %585, 0x3F70101000000000
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 512
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %599, label %591

; <label>:591                                     ; preds = %568
  %592 = add i32 %33, 460
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %75, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  br label %599

; <label>:599                                     ; preds = %591, %568
  %600 = phi float [ %598, %591 ], [ 1.000000e+00, %568 ]
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 33554432
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %711, label %605

; <label>:605                                     ; preds = %599
  %606 = add i32 %33, 224
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %608, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = add i32 %33, 228
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 65535
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 24
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = and i32 %619, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = lshr i32 %619, 8
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = lshr i32 %619, 16
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = add i32 %33, 220
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = lshr i32 %636, 24
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = and i32 %636, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = lshr i32 %636, 8
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = lshr i32 %636, 16
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = bitcast float %575 to i32
  %652 = ashr i32 %651, 1
  %653 = sub nsw i32 1597463174, %652
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %575, 5.000000e-01
  %656 = fmul fast float %654, %654
  %657 = fmul fast float %656, %655
  %658 = fsub fast float 1.500000e+00, %657
  %659 = fmul fast float %654, %575
  %660 = fmul fast float %659, %658
  %661 = bitcast float %576 to i32
  %662 = ashr i32 %661, 1
  %663 = sub nsw i32 1597463174, %662
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %576, 5.000000e-01
  %666 = fmul fast float %664, %664
  %667 = fmul fast float %666, %665
  %668 = fsub fast float 1.500000e+00, %667
  %669 = fmul fast float %664, %576
  %670 = fmul fast float %669, %668
  %671 = bitcast float %577 to i32
  %672 = ashr i32 %671, 1
  %673 = sub nsw i32 1597463174, %672
  %674 = bitcast i32 %673 to float
  %675 = fmul fast float %577, 5.000000e-01
  %676 = fmul fast float %674, %674
  %677 = fmul fast float %676, %675
  %678 = fsub fast float 1.500000e+00, %677
  %679 = fmul fast float %674, %577
  %680 = fmul fast float %679, %678
  %681 = fsub fast float %660, %642
  %682 = fsub fast float %670, %646
  %683 = fsub fast float %680, %650
  %684 = fmul fast float %681, %610
  %685 = fmul fast float %682, %612
  %686 = fmul fast float %683, %617
  %687 = fadd fast float %684, %625
  %688 = fadd fast float %685, %629
  %689 = fadd fast float %686, %633
  %690 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %691 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %692 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %693 = fmul fast float %690, %690
  %694 = fmul fast float %691, %691
  %695 = fmul fast float %692, %692
  %696 = fsub fast float %693, %575
  %697 = fsub fast float %694, %576
  %698 = fsub fast float %695, %577
  %699 = fmul fast float %696, %600
  %700 = fmul fast float %697, %600
  %701 = fmul fast float %698, %600
  %702 = fadd fast float %699, %575
  %703 = fadd fast float %700, %576
  %704 = fadd fast float %701, %577
  %705 = fadd fast float %622, %586
  %706 = fsub fast float %705, %639
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %708 = fsub fast float %707, %586
  %709 = fmul fast float %708, %600
  %710 = fadd fast float %709, %586
  br label %764

; <label>:711                                     ; preds = %599
  %712 = and i32 %602, 134217728
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %748, label %714

; <label>:714                                     ; preds = %711
  %715 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %716 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %717 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %718 = fadd fast float %715, -5.000000e-01
  %719 = fadd fast float %716, -5.000000e-01
  %720 = fadd fast float %717, -5.000000e-01
  %721 = fmul fast float %718, %600
  %722 = fmul fast float %719, %600
  %723 = fmul fast float %720, %600
  %724 = fadd fast float %721, 5.000000e-01
  %725 = fadd fast float %722, 5.000000e-01
  %726 = fadd fast float %723, 5.000000e-01
  %727 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %728 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  %729 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  %730 = fmul fast float %724, 2.000000e+00
  %731 = fsub fast float 1.000000e+00, %730
  %732 = fmul fast float %731, %727
  %733 = fadd fast float %732, %730
  %734 = fmul fast float %733, %727
  %735 = fmul fast float %725, 2.000000e+00
  %736 = fsub fast float 1.000000e+00, %735
  %737 = fmul fast float %736, %728
  %738 = fadd fast float %737, %735
  %739 = fmul fast float %738, %728
  %740 = fmul fast float %726, 2.000000e+00
  %741 = fsub fast float 1.000000e+00, %740
  %742 = fmul fast float %741, %729
  %743 = fadd fast float %742, %740
  %744 = fmul fast float %743, %729
  %745 = fmul fast float %734, %734
  %746 = fmul fast float %739, %739
  %747 = fmul fast float %744, %744
  br label %764

; <label>:748                                     ; preds = %711
  %749 = fmul fast float %246, %246
  %750 = fmul fast float %250, %250
  %751 = fmul fast float %254, %254
  %752 = fadd fast float %749, -1.000000e+00
  %753 = fadd fast float %750, -1.000000e+00
  %754 = fadd fast float %751, -1.000000e+00
  %755 = fmul fast float %600, %752
  %756 = fmul fast float %600, %753
  %757 = fmul fast float %600, %754
  %758 = fadd fast float %755, 1.000000e+00
  %759 = fadd fast float %756, 1.000000e+00
  %760 = fadd fast float %757, 1.000000e+00
  %761 = fmul fast float %758, %575
  %762 = fmul fast float %759, %576
  %763 = fmul fast float %760, %577
  br label %764

; <label>:764                                     ; preds = %748, %714, %605, %563
  %765 = phi float [ %710, %605 ], [ %586, %714 ], [ %586, %748 ], [ 0x3FA23C0BE0000000, %563 ]
  %766 = phi float [ %702, %605 ], [ %745, %714 ], [ %761, %748 ], [ 1.000000e+00, %563 ]
  %767 = phi float [ %703, %605 ], [ %746, %714 ], [ %762, %748 ], [ 1.000000e+00, %563 ]
  %768 = phi float [ %704, %605 ], [ %747, %714 ], [ %763, %748 ], [ 1.000000e+00, %563 ]
  %769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.i32 %769, 1
  %771 = and i32 %770, 1
  %772 = icmp ne i32 %771, 0
  %773 = add i32 %33, 356
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 32
  %777 = icmp ne i32 %776, 0
  %778 = and i1 %772, %777
  %779 = select i1 %778, float 1.000000e+00, float %766
  %780 = select i1 %778, float 0x3FD3333340000000, float %767
  %781 = select i1 %778, float 0x3FD3333340000000, float %768
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 32
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %858, label %786

; <label>:786                                     ; preds = %764
  %787 = add i32 %33, 92
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %33, 392
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = add i32 %792, 0
  %794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %794, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = and i32 %789, 255
  %801 = uitofp i32 %800 to float
  %802 = lshr i32 %789, 8
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = lshr i32 %789, 16
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101000000000
  %809 = fmul fast float %796, %801
  %810 = fadd fast float %809, %804
  %811 = fmul fast float %810, 0x3F70101000000000
  %812 = fadd fast float %797, -5.000000e-01
  %813 = fadd fast float %799, -5.000000e-01
  %814 = fmul fast float %812, %808
  %815 = fmul fast float %813, %808
  %816 = fadd fast float %814, 5.000000e-01
  %817 = fadd fast float %815, 5.000000e-01
  %818 = fmul fast float %816, 2.000000e+00
  %819 = fadd fast float %818, -1.000000e+00
  %820 = fmul fast float %817, 2.000000e+00
  %821 = fadd fast float %820, -1.000000e+00
  %822 = fadd fast float %819, %821
  %823 = fmul fast float %822, 5.000000e-01
  %824 = fsub fast float %819, %821
  %825 = fmul fast float %824, 5.000000e-01
  %826 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %827 = fsub fast float 1.000000e+00, %826
  %828 = call float @dx.op.unary.f32(i32 6, float %825)  ; FAbs(value)
  %829 = fsub fast float %827, %828
  %830 = call float @dx.op.dot3.f32(i32 55, float %823, float %825, float %829, float %823, float %825, float %829)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call float @dx.op.unary.f32(i32 25, float %830)  ; Rsqrt(value)
  %832 = fmul fast float %823, %831
  %833 = fmul fast float %825, %831
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = and i32 %835, 67108864
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %854, label %838

; <label>:838                                     ; preds = %786
  %839 = add i32 %33, 280
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 65535
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = and i32 %845, 65535
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = lshr i32 %841, 16
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = fsub fast float %811, %849
  %851 = fmul fast float %850, %843
  %852 = fadd fast float %851, %847
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  br label %854

; <label>:854                                     ; preds = %838, %786
  %855 = phi float [ %853, %838 ], [ %811, %786 ]
  %856 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  %857 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  br label %858

; <label>:858                                     ; preds = %854, %764
  %859 = phi float [ %855, %854 ], [ 0x3FD6666660000000, %764 ]
  %860 = phi float [ %856, %854 ], [ 0.000000e+00, %764 ]
  %861 = phi float [ %857, %854 ], [ 0.000000e+00, %764 ]
  %862 = phi float [ %798, %854 ], [ 1.000000e+00, %764 ]
  %863 = add i32 %33, 160
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = lshr i32 %865, 22
  %867 = shl nuw nsw i32 %866, 5
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 64
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %906, label %873

; <label>:873                                     ; preds = %858
  %874 = add i32 %33, 408
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %876, 0
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 131072
  %882 = icmp eq i32 %881, 0
  %883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %878, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = extractvalue %dx.types.ResRet.f32 %883, 1
  %886 = extractvalue %dx.types.ResRet.f32 %883, 2
  %887 = fmul fast float %884, %234
  %888 = fmul fast float %885, %237
  %889 = fmul fast float %886, %240
  br i1 %882, label %896, label %890

; <label>:890                                     ; preds = %873
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = fmul fast float %892, %887
  %894 = fmul fast float %892, %888
  %895 = fmul fast float %892, %889
  br label %896

; <label>:896                                     ; preds = %890, %873
  %897 = phi float [ %893, %890 ], [ %887, %873 ]
  %898 = phi float [ %894, %890 ], [ %888, %873 ]
  %899 = phi float [ %895, %890 ], [ %889, %873 ]
  %900 = fmul fast float %897, %868
  %901 = select i1 %217, float %900, float %897
  %902 = call float @dx.op.dot3.f32(i32 55, float %901, float %898, float %899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = select i1 %217, float 0.000000e+00, float %897
  %904 = select i1 %217, float %902, float %898
  %905 = select i1 %217, float 0.000000e+00, float %899
  br label %906

; <label>:906                                     ; preds = %896, %858
  %907 = phi float [ %903, %896 ], [ 0.000000e+00, %858 ]
  %908 = phi float [ %904, %896 ], [ 0.000000e+00, %858 ]
  %909 = phi float [ %905, %896 ], [ 0.000000e+00, %858 ]
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = and i32 %911, 30720
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %953, label %914

; <label>:914                                     ; preds = %906
  %915 = add i32 %33, 476
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %917, 0
  %919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %919, %dx.types.Handle %75, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 2
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = and i32 %923, 1048576
  %925 = icmp ne i32 %924, 0
  %926 = select i1 %925, float 1.000000e+00, float %921
  %927 = and i32 %923, 16384
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %939, label %929

; <label>:929                                     ; preds = %914
  %930 = extractvalue %dx.types.ResRet.f32 %920, 0
  %931 = add i32 %33, 96
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 24
  %935 = uitofp i32 %934 to float
  %936 = fmul fast float %930, 0x3F70101020000000
  %937 = select i1 %925, float 0x3F70101020000000, float %936
  %938 = fmul fast float %937, %935
  br label %939

; <label>:939                                     ; preds = %929, %914
  %940 = phi float [ %938, %929 ], [ 0.000000e+00, %914 ]
  %941 = and i32 %923, 4096
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %953, label %943

; <label>:943                                     ; preds = %939
  %944 = add i32 %33, 164
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = and i32 %946, 65535
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = lshr i32 %946, 16
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = fmul fast float %948, %926
  %952 = fadd fast float %951, %950
  br label %953

; <label>:953                                     ; preds = %943, %939, %906
  %954 = phi float [ %940, %943 ], [ %940, %939 ], [ 0.000000e+00, %906 ]
  %955 = phi float [ %952, %943 ], [ 0.000000e+00, %939 ], [ 0.000000e+00, %906 ]
  %956 = add i32 %33, 96
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = and i32 %958, 255
  %960 = uitofp i32 %959 to float
  %961 = lshr i32 %958, 8
  %962 = and i32 %961, 255
  %963 = uitofp i32 %962 to float
  %964 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %965 = fmul fast float %963, %964
  %966 = fadd fast float %965, %960
  %967 = fmul fast float %966, 0x3F70101020000000
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  br label %969

; <label>:969                                     ; preds = %953, %450
  %970 = phi float [ 0.000000e+00, %450 ], [ %860, %953 ]
  %971 = phi float [ 0.000000e+00, %450 ], [ %861, %953 ]
  %972 = phi float [ 0.000000e+00, %450 ], [ %779, %953 ]
  %973 = phi float [ 0.000000e+00, %450 ], [ %780, %953 ]
  %974 = phi float [ 0.000000e+00, %450 ], [ %781, %953 ]
  %975 = phi float [ 0.000000e+00, %450 ], [ %907, %953 ]
  %976 = phi float [ 0.000000e+00, %450 ], [ %908, %953 ]
  %977 = phi float [ 0.000000e+00, %450 ], [ %909, %953 ]
  %978 = phi float [ 0.000000e+00, %450 ], [ %765, %953 ]
  %979 = phi float [ 0.000000e+00, %450 ], [ 1.000000e+00, %953 ]
  %980 = phi float [ 0.000000e+00, %450 ], [ %859, %953 ]
  %981 = phi float [ 0.000000e+00, %450 ], [ %862, %953 ]
  %982 = phi float [ 0.000000e+00, %450 ], [ %955, %953 ]
  %983 = phi float [ 0.000000e+00, %450 ], [ %954, %953 ]
  %984 = phi float [ 0.000000e+00, %450 ], [ %968, %953 ]
  br i1 %401, label %1777, label %985

; <label>:985                                     ; preds = %969
  %986 = icmp ult i32 %456, 2
  %987 = add i32 %33, 40
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %33, 44
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = or i32 %992, %989
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1777, label %995

; <label>:995                                     ; preds = %985
  %996 = and i32 %989, 262144
  %997 = icmp ne i32 %996, 0
  %998 = select i1 %997, float %39, float 1.000000e+00
  %999 = select i1 %997, float %40, float 0.000000e+00
  %1000 = select i1 %997, float %41, float 0.000000e+00
  %1001 = select i1 %997, float %42, float 1.000000e+00
  %1002 = select i1 %997, float %43, float %66
  %1003 = select i1 %997, float %44, float %67
  %1004 = add i32 %33, 300
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = lshr i32 %1006, 16
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = fmul fast float %1008, 0x3F50624DE0000000
  %1010 = add i32 %33, 104
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = lshr i32 %1012, 16
  %1014 = and i32 %1013, 255
  %1015 = lshr i32 %1012, 24
  %1016 = add i32 %33, 308
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = and i32 %1018, 65535
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = lshr i32 %1018, 16
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = add i32 %33, 48
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = lshr i32 %1025, 22
  %1027 = shl nuw nsw i32 %1026, 5
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = shl i32 %1025, 4
  %1030 = and i32 %1029, 32752
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = lshr i32 %1025, 7
  %1033 = and i32 %1032, 32752
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 3
  %1037 = fmul fast float %1036, 1.000000e+03
  %1038 = fmul fast float %311, %1037
  %1039 = call float @dx.op.unary.f32(i32 22, float %1038)  ; Frc(value)
  %1040 = fadd fast float %1039, %301
  %1041 = fmul fast float %312, %1037
  %1042 = call float @dx.op.unary.f32(i32 22, float %1041)  ; Frc(value)
  %1043 = fadd fast float %1042, %303
  %1044 = fmul fast float %1009, %1037
  %1045 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1046 = fmul fast float %1045, 0x401921FB60000000
  %1047 = fadd fast float %1046, %1028
  %1048 = call float @dx.op.unary.f32(i32 13, float %1047)  ; Sin(value)
  %1049 = call float @dx.op.unary.f32(i32 12, float %1047)  ; Cos(value)
  %1050 = fsub fast float -0.000000e+00, %1048
  %1051 = fadd fast float %1002, -5.000000e-01
  %1052 = fadd fast float %1003, -5.000000e-01
  %1053 = fmul fast float %1020, %1051
  %1054 = fmul fast float %1022, %1052
  %1055 = fadd fast float %1053, 5.000000e-01
  %1056 = fadd fast float %1054, 5.000000e-01
  %1057 = fmul fast float %1031, %1055
  %1058 = fmul fast float %1034, %1056
  %1059 = fmul fast float %1049, %1057
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %1058, float %1059)  ; FMad(a,b,c)
  %1061 = fmul fast float %1048, %1057
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %1058, float %1061)  ; FMad(a,b,c)
  %1063 = fadd fast float %1040, %1060
  %1064 = fadd fast float %1043, %1062
  %1065 = icmp ugt i32 %1014, 1
  %1066 = icmp ugt i32 %1012, 33554431
  %1067 = or i1 %1066, %1065
  br i1 %1067, label %1068, label %1093

; <label>:1068                                    ; preds = %995
  %1069 = add i32 %33, 244
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = lshr i32 %1071, 16
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = fmul fast float %1036, %1073
  %1075 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1076 = mul nuw nsw i32 %1014, %1015
  %1077 = uitofp i32 %1076 to float
  %1078 = fmul fast float %1075, %1077
  %1079 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1080 = fptoui float %1079 to i32
  %1081 = urem i32 %1080, %1014
  %1082 = udiv i32 %1080, %1015
  %1083 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1084 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1085 = uitofp i32 %1081 to float
  %1086 = uitofp i32 %1082 to float
  %1087 = fadd fast float %1083, %1085
  %1088 = fadd fast float %1084, %1086
  %1089 = uitofp i32 %1014 to float
  %1090 = uitofp i32 %1015 to float
  %1091 = fdiv fast float %1087, %1089
  %1092 = fdiv fast float %1088, %1090
  br label %1093

; <label>:1093                                    ; preds = %1068, %995
  %1094 = phi float [ %1091, %1068 ], [ %1063, %995 ]
  %1095 = phi float [ %1092, %1068 ], [ %1064, %995 ]
  %1096 = and i32 %989, 256
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1144, label %1098

; <label>:1098                                    ; preds = %1093
  %1099 = add i32 %33, 444
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1103, %dx.types.Handle %75, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = add i32 %33, 116
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = shl i32 %1108, 4
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = lshr i32 %1108, 7
  %1113 = and i32 %1112, 32752
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = fsub fast float 1.000000e+00, %453
  %1116 = call float @dx.op.binary.f32(i32 35, float %1115, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1117 = bitcast float %453 to i32
  %1118 = sitofp i32 %1117 to float
  %1119 = fadd fast float %1118, 0xC1CFBF8940000000
  %1120 = fmul fast float %1114, %1119
  %1121 = fadd fast float %1120, 0x41CFBF8940000000
  %1122 = fptosi float %1121 to i32
  %1123 = bitcast i32 %1122 to float
  %1124 = bitcast float %1116 to i32
  %1125 = sitofp i32 %1124 to float
  %1126 = fadd fast float %1125, 0xC1CFBF8940000000
  %1127 = fmul fast float %1126, %1114
  %1128 = fadd fast float %1127, 0x41CFBF8940000000
  %1129 = fptosi float %1128 to i32
  %1130 = bitcast i32 %1129 to float
  %1131 = fmul fast float %1123, %1111
  %1132 = fmul fast float %1130, %1111
  %1133 = fsub fast float %1116, %1131
  %1134 = fadd fast float %1132, %1116
  %1135 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1136 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1137 = fsub fast float %1105, %1135
  %1138 = fsub fast float %1136, %1135
  %1139 = bitcast float %1138 to i32
  %1140 = sub nsw i32 2129859010, %1139
  %1141 = bitcast i32 %1140 to float
  %1142 = fmul fast float %1141, %1137
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  br label %1144

; <label>:1144                                    ; preds = %1098, %1093
  %1145 = phi float [ %1143, %1098 ], [ %453, %1093 ]
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 128
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1166, label %1150

; <label>:1150                                    ; preds = %1144
  %1151 = add i32 %33, 428
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = add i32 %1153, 0
  %1155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1155, %dx.types.Handle %75, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 524288
  %1161 = icmp ne i32 %1160, 0
  %1162 = fcmp fast ogt float %1157, 0x3FE0101020000000
  %1163 = select i1 %1162, float 1.000000e+00, float 0.000000e+00
  %1164 = select i1 %1161, float %1163, float %1157
  %1165 = fmul fast float %1164, %1145
  br label %1166

; <label>:1166                                    ; preds = %1150, %1144
  %1167 = phi float [ %1165, %1150 ], [ %1145, %1144 ]
  %1168 = fcmp fast ult float %1167, 0x3F70101020000000
  br i1 %1168, label %1777, label %1169

; <label>:1169                                    ; preds = %1166
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 16
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1372, label %1174

; <label>:1174                                    ; preds = %1169
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = add i32 %33, 380
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %1179, 0
  %1181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1181, %dx.types.Handle %74, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1186 = extractvalue %dx.types.ResRet.f32 %1182, 3
  %1187 = and i32 %1176, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = lshr i32 %1176, 8
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1186, %1188
  %1193 = fadd fast float %1192, %1191
  %1194 = fmul fast float %1193, 0x3F70101000000000
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = and i32 %1196, 512
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1207, label %1199

; <label>:1199                                    ; preds = %1174
  %1200 = add i32 %33, 464
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = add i32 %1202, 0
  %1204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1204, %dx.types.Handle %75, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  br label %1207

; <label>:1207                                    ; preds = %1199, %1174
  %1208 = phi float [ %1206, %1199 ], [ 1.000000e+00, %1174 ]
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 33554432
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1319, label %1213

; <label>:1213                                    ; preds = %1207
  %1214 = add i32 %33, 240
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 65535
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = lshr i32 %1216, 16
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = add i32 %33, 244
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 65535
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = lshr i32 %1227, 24
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = and i32 %1227, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1232, 0x3F70101020000000
  %1234 = lshr i32 %1227, 8
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = fmul fast float %1236, 0x3F70101020000000
  %1238 = lshr i32 %1227, 16
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F70101020000000
  %1242 = add i32 %33, 236
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = lshr i32 %1244, 24
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = and i32 %1244, 255
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = lshr i32 %1244, 8
  %1252 = and i32 %1251, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = lshr i32 %1244, 16
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1257, 0x3F70101020000000
  %1259 = bitcast float %1183 to i32
  %1260 = ashr i32 %1259, 1
  %1261 = sub nsw i32 1597463174, %1260
  %1262 = bitcast i32 %1261 to float
  %1263 = fmul fast float %1183, 5.000000e-01
  %1264 = fmul fast float %1262, %1262
  %1265 = fmul fast float %1264, %1263
  %1266 = fsub fast float 1.500000e+00, %1265
  %1267 = fmul fast float %1262, %1183
  %1268 = fmul fast float %1267, %1266
  %1269 = bitcast float %1184 to i32
  %1270 = ashr i32 %1269, 1
  %1271 = sub nsw i32 1597463174, %1270
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1184, 5.000000e-01
  %1274 = fmul fast float %1272, %1272
  %1275 = fmul fast float %1274, %1273
  %1276 = fsub fast float 1.500000e+00, %1275
  %1277 = fmul fast float %1272, %1184
  %1278 = fmul fast float %1277, %1276
  %1279 = bitcast float %1185 to i32
  %1280 = ashr i32 %1279, 1
  %1281 = sub nsw i32 1597463174, %1280
  %1282 = bitcast i32 %1281 to float
  %1283 = fmul fast float %1185, 5.000000e-01
  %1284 = fmul fast float %1282, %1282
  %1285 = fmul fast float %1284, %1283
  %1286 = fsub fast float 1.500000e+00, %1285
  %1287 = fmul fast float %1282, %1185
  %1288 = fmul fast float %1287, %1286
  %1289 = fsub fast float %1268, %1250
  %1290 = fsub fast float %1278, %1254
  %1291 = fsub fast float %1288, %1258
  %1292 = fmul fast float %1289, %1218
  %1293 = fmul fast float %1290, %1220
  %1294 = fmul fast float %1291, %1225
  %1295 = fadd fast float %1292, %1233
  %1296 = fadd fast float %1293, %1237
  %1297 = fadd fast float %1294, %1241
  %1298 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1299 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1300 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1301 = fmul fast float %1298, %1298
  %1302 = fmul fast float %1299, %1299
  %1303 = fmul fast float %1300, %1300
  %1304 = fsub fast float %1301, %1183
  %1305 = fsub fast float %1302, %1184
  %1306 = fsub fast float %1303, %1185
  %1307 = fmul fast float %1304, %1208
  %1308 = fmul fast float %1305, %1208
  %1309 = fmul fast float %1306, %1208
  %1310 = fadd fast float %1307, %1183
  %1311 = fadd fast float %1308, %1184
  %1312 = fadd fast float %1309, %1185
  %1313 = fadd fast float %1230, %1194
  %1314 = fsub fast float %1313, %1247
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fsub fast float %1315, %1194
  %1317 = fmul fast float %1316, %1208
  %1318 = fadd fast float %1317, %1194
  br label %1372

; <label>:1319                                    ; preds = %1207
  %1320 = and i32 %1210, 134217728
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1356, label %1322

; <label>:1322                                    ; preds = %1319
  %1323 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1324 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1325 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1326 = fadd fast float %1323, -5.000000e-01
  %1327 = fadd fast float %1324, -5.000000e-01
  %1328 = fadd fast float %1325, -5.000000e-01
  %1329 = fmul fast float %1326, %1208
  %1330 = fmul fast float %1327, %1208
  %1331 = fmul fast float %1328, %1208
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = fadd fast float %1330, 5.000000e-01
  %1334 = fadd fast float %1331, 5.000000e-01
  %1335 = call float @dx.op.unary.f32(i32 24, float %1183)  ; Sqrt(value)
  %1336 = call float @dx.op.unary.f32(i32 24, float %1184)  ; Sqrt(value)
  %1337 = call float @dx.op.unary.f32(i32 24, float %1185)  ; Sqrt(value)
  %1338 = fmul fast float %1332, 2.000000e+00
  %1339 = fsub fast float 1.000000e+00, %1338
  %1340 = fmul fast float %1339, %1335
  %1341 = fadd fast float %1340, %1338
  %1342 = fmul fast float %1341, %1335
  %1343 = fmul fast float %1333, 2.000000e+00
  %1344 = fsub fast float 1.000000e+00, %1343
  %1345 = fmul fast float %1344, %1336
  %1346 = fadd fast float %1345, %1343
  %1347 = fmul fast float %1346, %1336
  %1348 = fmul fast float %1334, 2.000000e+00
  %1349 = fsub fast float 1.000000e+00, %1348
  %1350 = fmul fast float %1349, %1337
  %1351 = fadd fast float %1350, %1348
  %1352 = fmul fast float %1351, %1337
  %1353 = fmul fast float %1342, %1342
  %1354 = fmul fast float %1347, %1347
  %1355 = fmul fast float %1352, %1352
  br label %1372

; <label>:1356                                    ; preds = %1319
  %1357 = fmul fast float %288, %288
  %1358 = fmul fast float %292, %292
  %1359 = fmul fast float %296, %296
  %1360 = fadd fast float %1357, -1.000000e+00
  %1361 = fadd fast float %1358, -1.000000e+00
  %1362 = fadd fast float %1359, -1.000000e+00
  %1363 = fmul fast float %1208, %1360
  %1364 = fmul fast float %1208, %1361
  %1365 = fmul fast float %1208, %1362
  %1366 = fadd fast float %1363, 1.000000e+00
  %1367 = fadd fast float %1364, 1.000000e+00
  %1368 = fadd fast float %1365, 1.000000e+00
  %1369 = fmul fast float %1366, %1183
  %1370 = fmul fast float %1367, %1184
  %1371 = fmul fast float %1368, %1185
  br label %1372

; <label>:1372                                    ; preds = %1356, %1322, %1213, %1169
  %1373 = phi float [ %1318, %1213 ], [ %1194, %1322 ], [ %1194, %1356 ], [ 0x3FA23C0BE0000000, %1169 ]
  %1374 = phi float [ %1310, %1213 ], [ %1353, %1322 ], [ %1369, %1356 ], [ 1.000000e+00, %1169 ]
  %1375 = phi float [ %1311, %1213 ], [ %1354, %1322 ], [ %1370, %1356 ], [ 1.000000e+00, %1169 ]
  %1376 = phi float [ %1312, %1213 ], [ %1355, %1322 ], [ %1371, %1356 ], [ 1.000000e+00, %1169 ]
  %1377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.i32 %1377, 1
  %1379 = and i32 %1378, 1
  %1380 = icmp ne i32 %1379, 0
  %1381 = add i32 %33, 356
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 32
  %1385 = icmp ne i32 %1384, 0
  %1386 = and i1 %1380, %1385
  %1387 = select i1 %1386, float 1.000000e+00, float %1374
  %1388 = select i1 %1386, float 0x3FD3333340000000, float %1375
  %1389 = select i1 %1386, float 0x3FD3333340000000, float %1376
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = and i32 %1391, 32
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1466, label %1394

; <label>:1394                                    ; preds = %1372
  %1395 = add i32 %33, 108
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %33, 396
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = add i32 %1400, 0
  %1402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1403 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1402, %dx.types.Handle %74, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = extractvalue %dx.types.ResRet.f32 %1403, 3
  %1408 = and i32 %1397, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = lshr i32 %1397, 8
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = lshr i32 %1397, 16
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = fmul fast float %1415, 0x3F70101000000000
  %1417 = fmul fast float %1404, %1409
  %1418 = fadd fast float %1417, %1412
  %1419 = fmul fast float %1418, 0x3F70101000000000
  %1420 = fadd fast float %1405, -5.000000e-01
  %1421 = fadd fast float %1407, -5.000000e-01
  %1422 = fmul fast float %1420, %1416
  %1423 = fmul fast float %1421, %1416
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = fadd fast float %1423, 5.000000e-01
  %1426 = fmul fast float %1424, 2.000000e+00
  %1427 = fadd fast float %1426, -1.000000e+00
  %1428 = fmul fast float %1425, 2.000000e+00
  %1429 = fadd fast float %1428, -1.000000e+00
  %1430 = fadd fast float %1427, %1429
  %1431 = fmul fast float %1430, 5.000000e-01
  %1432 = fsub fast float %1427, %1429
  %1433 = fmul fast float %1432, 5.000000e-01
  %1434 = call float @dx.op.unary.f32(i32 6, float %1431)  ; FAbs(value)
  %1435 = fsub fast float 1.000000e+00, %1434
  %1436 = call float @dx.op.unary.f32(i32 6, float %1433)  ; FAbs(value)
  %1437 = fsub fast float %1435, %1436
  %1438 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1433, float %1437, float %1431, float %1433, float %1437)  ; Dot3(ax,ay,az,bx,by,bz)
  %1439 = call float @dx.op.unary.f32(i32 25, float %1438)  ; Rsqrt(value)
  %1440 = fmul fast float %1431, %1439
  %1441 = fmul fast float %1433, %1439
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 67108864
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1462, label %1446

; <label>:1446                                    ; preds = %1394
  %1447 = add i32 %33, 296
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 65535
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = and i32 %1453, 65535
  %1455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1454)  ; LegacyF16ToF32(value)
  %1456 = lshr i32 %1449, 16
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = fsub fast float %1419, %1457
  %1459 = fmul fast float %1458, %1451
  %1460 = fadd fast float %1459, %1455
  %1461 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  br label %1462

; <label>:1462                                    ; preds = %1446, %1394
  %1463 = phi float [ %1461, %1446 ], [ %1419, %1394 ]
  %1464 = call float @dx.op.dot2.f32(i32 54, float %1440, float %1441, float %998, float %999)  ; Dot2(ax,ay,bx,by)
  %1465 = call float @dx.op.dot2.f32(i32 54, float %1440, float %1441, float %1000, float %1001)  ; Dot2(ax,ay,bx,by)
  br label %1466

; <label>:1466                                    ; preds = %1462, %1372
  %1467 = phi float [ %1463, %1462 ], [ 0x3FD6666660000000, %1372 ]
  %1468 = phi float [ %1464, %1462 ], [ 0.000000e+00, %1372 ]
  %1469 = phi float [ %1465, %1462 ], [ 0.000000e+00, %1372 ]
  %1470 = phi float [ %1406, %1462 ], [ 1.000000e+00, %1372 ]
  %1471 = add i32 %33, 176
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = lshr i32 %1473, 22
  %1475 = shl nuw nsw i32 %1474, 5
  %1476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1475)  ; LegacyF16ToF32(value)
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 64
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1514, label %1481

; <label>:1481                                    ; preds = %1466
  %1482 = add i32 %33, 412
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = add i32 %1484, 0
  %1486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 131072
  %1490 = icmp eq i32 %1489, 0
  %1491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1486, %dx.types.Handle %74, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.ResRet.f32 %1491, 1
  %1494 = extractvalue %dx.types.ResRet.f32 %1491, 2
  %1495 = fmul fast float %1492, %276
  %1496 = fmul fast float %1493, %279
  %1497 = fmul fast float %1494, %282
  br i1 %1490, label %1504, label %1498

; <label>:1498                                    ; preds = %1481
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 0
  %1501 = fmul fast float %1500, %1495
  %1502 = fmul fast float %1500, %1496
  %1503 = fmul fast float %1500, %1497
  br label %1504

; <label>:1504                                    ; preds = %1498, %1481
  %1505 = phi float [ %1501, %1498 ], [ %1495, %1481 ]
  %1506 = phi float [ %1502, %1498 ], [ %1496, %1481 ]
  %1507 = phi float [ %1503, %1498 ], [ %1497, %1481 ]
  %1508 = fmul fast float %1505, %1476
  %1509 = select i1 %217, float %1508, float %1505
  %1510 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1506, float %1507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1511 = select i1 %217, float 0.000000e+00, float %1505
  %1512 = select i1 %217, float %1510, float %1506
  %1513 = select i1 %217, float 0.000000e+00, float %1507
  br label %1514

; <label>:1514                                    ; preds = %1504, %1466
  %1515 = phi float [ %1511, %1504 ], [ 0.000000e+00, %1466 ]
  %1516 = phi float [ %1512, %1504 ], [ 0.000000e+00, %1466 ]
  %1517 = phi float [ %1513, %1504 ], [ 0.000000e+00, %1466 ]
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 30720
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1561, label %1522

; <label>:1522                                    ; preds = %1514
  %1523 = add i32 %33, 480
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = add i32 %1525, 0
  %1527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1527, %dx.types.Handle %75, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 2
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 1048576
  %1533 = icmp ne i32 %1532, 0
  %1534 = select i1 %1533, float 1.000000e+00, float %1529
  %1535 = and i32 %1531, 16384
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1547, label %1537

; <label>:1537                                    ; preds = %1522
  %1538 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1539 = add i32 %33, 112
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = lshr i32 %1541, 24
  %1543 = uitofp i32 %1542 to float
  %1544 = fmul fast float %1538, 0x3F70101020000000
  %1545 = select i1 %1533, float 0x3F70101020000000, float %1544
  %1546 = fmul fast float %1545, %1543
  br label %1547

; <label>:1547                                    ; preds = %1537, %1522
  %1548 = phi float [ %1546, %1537 ], [ 0.000000e+00, %1522 ]
  %1549 = and i32 %1531, 4096
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1561, label %1551

; <label>:1551                                    ; preds = %1547
  %1552 = add i32 %33, 180
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 65535
  %1556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1555)  ; LegacyF16ToF32(value)
  %1557 = lshr i32 %1554, 16
  %1558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1557)  ; LegacyF16ToF32(value)
  %1559 = fmul fast float %1556, %1534
  %1560 = fadd fast float %1559, %1558
  br label %1561

; <label>:1561                                    ; preds = %1551, %1547, %1514
  %1562 = phi float [ %1548, %1551 ], [ %1548, %1547 ], [ 0.000000e+00, %1514 ]
  %1563 = phi float [ %1560, %1551 ], [ 0.000000e+00, %1547 ], [ 0.000000e+00, %1514 ]
  %1564 = add i32 %33, 112
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = lshr i32 %1566, 8
  %1570 = and i32 %1569, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = call float @dx.op.dot3.f32(i32 55, float %1387, float %1388, float %1389, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1573 = fmul fast float %1571, %1572
  %1574 = fadd fast float %1573, %1568
  %1575 = fmul fast float %1574, 0x3F70101020000000
  %1576 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  br i1 %986, label %1577, label %1585

; <label>:1577                                    ; preds = %1561
  %1578 = fsub fast float 1.000000e+00, %1167
  %1579 = fmul fast float %1578, %972
  %1580 = fmul fast float %1578, %973
  %1581 = fmul fast float %1578, %974
  %1582 = fmul fast float %1578, %975
  %1583 = fmul fast float %1578, %976
  %1584 = fmul fast float %1578, %977
  br label %1585

; <label>:1585                                    ; preds = %1577, %1561
  %1586 = phi float [ %1579, %1577 ], [ %972, %1561 ]
  %1587 = phi float [ %1580, %1577 ], [ %973, %1561 ]
  %1588 = phi float [ %1581, %1577 ], [ %974, %1561 ]
  %1589 = phi float [ %1582, %1577 ], [ %975, %1561 ]
  %1590 = phi float [ %1583, %1577 ], [ %976, %1561 ]
  %1591 = phi float [ %1584, %1577 ], [ %977, %1561 ]
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 3
  %1595 = icmp eq i32 %1594, 3
  br i1 %1595, label %1674, label %1596

; <label>:1596                                    ; preds = %1585
  %1597 = and i32 %1593, 16
  %1598 = icmp ne i32 %1597, 0
  %1599 = select i1 %1598, float %1167, float 0.000000e+00
  %1600 = icmp eq i32 %1594, 0
  br i1 %1600, label %1601, label %1629

; <label>:1601                                    ; preds = %1596
  %1602 = and i32 %1593, 64
  %1603 = icmp ne i32 %1602, 0
  %1604 = select i1 %1603, float %1167, float 0.000000e+00
  %1605 = fsub fast float %1387, %1586
  %1606 = fsub fast float %1388, %1587
  %1607 = fsub fast float %1389, %1588
  %1608 = fmul fast float %1599, %1605
  %1609 = fmul fast float %1599, %1606
  %1610 = fmul fast float %1599, %1607
  %1611 = fadd fast float %1608, %1586
  %1612 = fadd fast float %1609, %1587
  %1613 = fadd fast float %1610, %1588
  %1614 = fsub fast float %1373, %978
  %1615 = fmul fast float %1599, %1614
  %1616 = fadd fast float %1615, %978
  %1617 = fsub fast float %1515, %1589
  %1618 = fsub fast float %1516, %1590
  %1619 = fsub fast float %1517, %1591
  %1620 = fmul fast float %1604, %1617
  %1621 = fmul fast float %1604, %1618
  %1622 = fmul fast float %1604, %1619
  %1623 = fadd fast float %1620, %1589
  %1624 = fadd fast float %1621, %1590
  %1625 = fadd fast float %1622, %1591
  %1626 = fsub fast float %1576, %984
  %1627 = fmul fast float %1599, %1626
  %1628 = fadd fast float %1627, %984
  br label %1674

; <label>:1629                                    ; preds = %1596
  %1630 = icmp eq i32 %1594, 1
  br i1 %1630, label %1631, label %1644

; <label>:1631                                    ; preds = %1629
  %1632 = fadd fast float %1387, -1.000000e+00
  %1633 = fadd fast float %1388, -1.000000e+00
  %1634 = fadd fast float %1389, -1.000000e+00
  %1635 = fmul fast float %1599, %1632
  %1636 = fmul fast float %1599, %1633
  %1637 = fmul fast float %1599, %1634
  %1638 = fadd fast float %1635, 1.000000e+00
  %1639 = fadd fast float %1636, 1.000000e+00
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fmul fast float %1638, %1586
  %1642 = fmul fast float %1639, %1587
  %1643 = fmul fast float %1640, %1588
  br label %1674

; <label>:1644                                    ; preds = %1629
  %1645 = icmp eq i32 %1594, 2
  br i1 %1645, label %1646, label %1674

; <label>:1646                                    ; preds = %1644
  %1647 = call float @dx.op.unary.f32(i32 24, float %1387)  ; Sqrt(value)
  %1648 = call float @dx.op.unary.f32(i32 24, float %1388)  ; Sqrt(value)
  %1649 = call float @dx.op.unary.f32(i32 24, float %1389)  ; Sqrt(value)
  %1650 = fadd fast float %1647, -5.000000e-01
  %1651 = fadd fast float %1648, -5.000000e-01
  %1652 = fadd fast float %1649, -5.000000e-01
  %1653 = fmul fast float %1650, %1599
  %1654 = fmul fast float %1651, %1599
  %1655 = fmul fast float %1652, %1599
  %1656 = fadd fast float %1653, 5.000000e-01
  %1657 = fadd fast float %1654, 5.000000e-01
  %1658 = fadd fast float %1655, 5.000000e-01
  %1659 = fmul fast float %1656, 2.000000e+00
  %1660 = fsub fast float 1.000000e+00, %1659
  %1661 = fmul fast float %1660, %1586
  %1662 = fadd fast float %1661, %1659
  %1663 = fmul fast float %1662, %1586
  %1664 = fmul fast float %1657, 2.000000e+00
  %1665 = fsub fast float 1.000000e+00, %1664
  %1666 = fmul fast float %1665, %1587
  %1667 = fadd fast float %1666, %1664
  %1668 = fmul fast float %1667, %1587
  %1669 = fmul fast float %1658, 2.000000e+00
  %1670 = fsub fast float 1.000000e+00, %1669
  %1671 = fmul fast float %1670, %1588
  %1672 = fadd fast float %1671, %1669
  %1673 = fmul fast float %1672, %1588
  br label %1674

; <label>:1674                                    ; preds = %1646, %1644, %1631, %1601, %1585
  %1675 = phi float [ %1586, %1585 ], [ %1663, %1646 ], [ %1586, %1644 ], [ %1641, %1631 ], [ %1611, %1601 ]
  %1676 = phi float [ %1587, %1585 ], [ %1668, %1646 ], [ %1587, %1644 ], [ %1642, %1631 ], [ %1612, %1601 ]
  %1677 = phi float [ %1588, %1585 ], [ %1673, %1646 ], [ %1588, %1644 ], [ %1643, %1631 ], [ %1613, %1601 ]
  %1678 = phi float [ %1589, %1585 ], [ %1589, %1646 ], [ %1589, %1644 ], [ %1589, %1631 ], [ %1623, %1601 ]
  %1679 = phi float [ %1590, %1585 ], [ %1590, %1646 ], [ %1590, %1644 ], [ %1590, %1631 ], [ %1624, %1601 ]
  %1680 = phi float [ %1591, %1585 ], [ %1591, %1646 ], [ %1591, %1644 ], [ %1591, %1631 ], [ %1625, %1601 ]
  %1681 = phi float [ %978, %1585 ], [ %978, %1646 ], [ %978, %1644 ], [ %978, %1631 ], [ %1616, %1601 ]
  %1682 = phi float [ %984, %1585 ], [ %984, %1646 ], [ %984, %1644 ], [ %984, %1631 ], [ %1628, %1601 ]
  %1683 = and i32 %1593, 12
  %1684 = icmp eq i32 %1683, 12
  br i1 %1684, label %1777, label %1685

; <label>:1685                                    ; preds = %1674
  %1686 = and i32 %1593, 2097184
  %1687 = icmp eq i32 %1686, 2097184
  %1688 = select i1 %1687, float %1167, float 0.000000e+00
  %1689 = and i32 %1593, 4194336
  %1690 = icmp eq i32 %1689, 4194336
  %1691 = select i1 %1690, float %1167, float 0.000000e+00
  %1692 = and i32 %1593, 8388640
  %1693 = icmp eq i32 %1692, 8388640
  %1694 = select i1 %1693, float %1167, float 0.000000e+00
  %1695 = and i32 %1593, 4096
  %1696 = icmp ne i32 %1695, 0
  %1697 = select i1 %1696, float %1167, float 0.000000e+00
  %1698 = and i32 %1593, 16384
  %1699 = icmp ne i32 %1698, 0
  %1700 = select i1 %1699, float %1167, float 0.000000e+00
  %1701 = icmp eq i32 %1683, 0
  br i1 %1701, label %1702, label %1721

; <label>:1702                                    ; preds = %1685
  %1703 = fsub fast float %1468, %970
  %1704 = fsub fast float %1469, %971
  %1705 = fmul fast float %1688, %1703
  %1706 = fmul fast float %1688, %1704
  %1707 = fadd fast float %1705, %970
  %1708 = fadd fast float %1706, %971
  %1709 = fsub fast float %1470, %981
  %1710 = fmul fast float %1691, %1709
  %1711 = fadd fast float %1710, %981
  %1712 = fsub fast float %1467, %980
  %1713 = fmul fast float %1694, %1712
  %1714 = fadd fast float %1713, %980
  %1715 = fsub fast float %1563, %982
  %1716 = fmul fast float %1697, %1715
  %1717 = fadd fast float %1716, %982
  %1718 = fsub fast float %1562, %983
  %1719 = fmul fast float %1700, %1718
  %1720 = fadd fast float %1719, %983
  br label %1777

; <label>:1721                                    ; preds = %1685
  %1722 = icmp eq i32 %1683, 4
  br i1 %1722, label %1723, label %1759

; <label>:1723                                    ; preds = %1721
  %1724 = fmul fast float %1688, %1468
  %1725 = fmul fast float %1688, %1469
  %1726 = fadd fast float %1724, %970
  %1727 = fadd fast float %1725, %971
  %1728 = call float @dx.op.binary.f32(i32 36, float %981, float %1470)  ; FMin(a,b)
  %1729 = fsub fast float %1728, %981
  %1730 = fmul fast float %1729, %1691
  %1731 = fadd fast float %1730, %981
  %1732 = fadd fast float %1467, %980
  %1733 = fmul fast float %1732, 0x3FF337FAE0000000
  %1734 = fmul fast float %980, %980
  %1735 = fmul fast float %1467, %1467
  %1736 = fadd fast float %1735, %1734
  %1737 = fmul fast float %1736, 0x3FE5152B00000000
  %1738 = fmul fast float %980, 0xBFCC1F85E0000000
  %1739 = fmul fast float %1738, %1467
  %1740 = fadd fast float %1739, 0xBFE1363700000000
  %1741 = fadd fast float %1740, %1733
  %1742 = fsub fast float %1741, %1737
  %1743 = fmul fast float %1732, 0x3FBA6F0D00000000
  %1744 = fmul fast float %1736, 0x3FD0432880000000
  %1745 = fmul fast float %980, 0xBFEF110800000000
  %1746 = fmul fast float %1745, %1467
  %1747 = fadd fast float %1746, 1.000000e+00
  %1748 = fsub fast float %1747, %1743
  %1749 = fadd fast float %1748, %1744
  %1750 = fdiv fast float %1742, %1749
  %1751 = call float @dx.op.unary.f32(i32 7, float %1750)  ; Saturate(value)
  %1752 = fsub fast float %1751, %980
  %1753 = fmul fast float %1752, %1694
  %1754 = fadd fast float %1753, %980
  %1755 = fmul fast float %1697, %1563
  %1756 = fadd fast float %1755, %982
  %1757 = fmul fast float %1700, %1562
  %1758 = fadd fast float %1757, %983
  br label %1777

; <label>:1759                                    ; preds = %1721
  %1760 = icmp eq i32 %1683, 8
  br i1 %1760, label %1761, label %1777

; <label>:1761                                    ; preds = %1759
  %1762 = fmul fast float %1688, %1468
  %1763 = fmul fast float %1688, %1469
  %1764 = fadd fast float %1762, %970
  %1765 = fadd fast float %1763, %971
  %1766 = call float @dx.op.binary.f32(i32 36, float %981, float %1470)  ; FMin(a,b)
  %1767 = fsub fast float %1766, %981
  %1768 = fmul fast float %1767, %1691
  %1769 = fadd fast float %1768, %981
  %1770 = fsub fast float %1467, %980
  %1771 = fmul fast float %1694, %1770
  %1772 = fadd fast float %1771, %980
  %1773 = fmul fast float %1697, %1563
  %1774 = fadd fast float %1773, %982
  %1775 = fmul fast float %1700, %1562
  %1776 = fadd fast float %1775, %983
  br label %1777

; <label>:1777                                    ; preds = %1761, %1759, %1723, %1702, %1674, %1166, %985, %969
  %1778 = phi float [ %970, %1674 ], [ %970, %1166 ], [ %970, %969 ], [ %1764, %1761 ], [ %970, %1759 ], [ %1726, %1723 ], [ %1707, %1702 ], [ %970, %985 ]
  %1779 = phi float [ %971, %1674 ], [ %971, %1166 ], [ %971, %969 ], [ %1765, %1761 ], [ %971, %1759 ], [ %1727, %1723 ], [ %1708, %1702 ], [ %971, %985 ]
  %1780 = phi float [ %1675, %1674 ], [ %972, %1166 ], [ %972, %969 ], [ %1675, %1761 ], [ %1675, %1759 ], [ %1675, %1723 ], [ %1675, %1702 ], [ %972, %985 ]
  %1781 = phi float [ %1676, %1674 ], [ %973, %1166 ], [ %973, %969 ], [ %1676, %1761 ], [ %1676, %1759 ], [ %1676, %1723 ], [ %1676, %1702 ], [ %973, %985 ]
  %1782 = phi float [ %1677, %1674 ], [ %974, %1166 ], [ %974, %969 ], [ %1677, %1761 ], [ %1677, %1759 ], [ %1677, %1723 ], [ %1677, %1702 ], [ %974, %985 ]
  %1783 = phi float [ %1678, %1674 ], [ %975, %1166 ], [ %975, %969 ], [ %1678, %1761 ], [ %1678, %1759 ], [ %1678, %1723 ], [ %1678, %1702 ], [ %975, %985 ]
  %1784 = phi float [ %1679, %1674 ], [ %976, %1166 ], [ %976, %969 ], [ %1679, %1761 ], [ %1679, %1759 ], [ %1679, %1723 ], [ %1679, %1702 ], [ %976, %985 ]
  %1785 = phi float [ %1680, %1674 ], [ %977, %1166 ], [ %977, %969 ], [ %1680, %1761 ], [ %1680, %1759 ], [ %1680, %1723 ], [ %1680, %1702 ], [ %977, %985 ]
  %1786 = phi float [ %1681, %1674 ], [ %978, %1166 ], [ %978, %969 ], [ %1681, %1761 ], [ %1681, %1759 ], [ %1681, %1723 ], [ %1681, %1702 ], [ %978, %985 ]
  %1787 = phi float [ %980, %1674 ], [ %980, %1166 ], [ %980, %969 ], [ %1772, %1761 ], [ %980, %1759 ], [ %1754, %1723 ], [ %1714, %1702 ], [ %980, %985 ]
  %1788 = phi float [ %981, %1674 ], [ %981, %1166 ], [ %981, %969 ], [ %1769, %1761 ], [ %981, %1759 ], [ %1731, %1723 ], [ %1711, %1702 ], [ %981, %985 ]
  %1789 = phi float [ %982, %1674 ], [ %982, %1166 ], [ %982, %969 ], [ %1774, %1761 ], [ %982, %1759 ], [ %1756, %1723 ], [ %1717, %1702 ], [ %982, %985 ]
  %1790 = phi float [ %983, %1674 ], [ %983, %1166 ], [ %983, %969 ], [ %1776, %1761 ], [ %983, %1759 ], [ %1758, %1723 ], [ %1720, %1702 ], [ %983, %985 ]
  %1791 = phi float [ %1682, %1674 ], [ %984, %1166 ], [ %984, %969 ], [ %1682, %1761 ], [ %1682, %1759 ], [ %1682, %1723 ], [ %1682, %1702 ], [ %984, %985 ]
  br i1 %403, label %2584, label %1792

; <label>:1792                                    ; preds = %1777
  %1793 = icmp ult i32 %456, 3
  %1794 = add i32 %33, 56
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = add i32 %33, 60
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = or i32 %1799, %1796
  %1801 = icmp eq i32 %1800, 0
  br i1 %1801, label %2584, label %1802

; <label>:1802                                    ; preds = %1792
  %1803 = and i32 %1796, 262144
  %1804 = icmp ne i32 %1803, 0
  %1805 = select i1 %1804, float %39, float 1.000000e+00
  %1806 = select i1 %1804, float %40, float 0.000000e+00
  %1807 = select i1 %1804, float %41, float 0.000000e+00
  %1808 = select i1 %1804, float %42, float 1.000000e+00
  %1809 = select i1 %1804, float %43, float %66
  %1810 = select i1 %1804, float %44, float %67
  %1811 = add i32 %33, 316
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = lshr i32 %1813, 16
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = fmul fast float %1815, 0x3F50624DE0000000
  %1817 = add i32 %33, 120
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = lshr i32 %1819, 16
  %1821 = and i32 %1820, 255
  %1822 = lshr i32 %1819, 24
  %1823 = add i32 %33, 324
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 65535
  %1827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1826)  ; LegacyF16ToF32(value)
  %1828 = lshr i32 %1825, 16
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = add i32 %33, 64
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = lshr i32 %1832, 22
  %1834 = shl nuw nsw i32 %1833, 5
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = shl i32 %1832, 4
  %1837 = and i32 %1836, 32752
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = lshr i32 %1832, 7
  %1840 = and i32 %1839, 32752
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 3
  %1844 = fmul fast float %1843, 1.000000e+03
  %1845 = fmul fast float %353, %1844
  %1846 = call float @dx.op.unary.f32(i32 22, float %1845)  ; Frc(value)
  %1847 = fadd fast float %1846, %343
  %1848 = fmul fast float %354, %1844
  %1849 = call float @dx.op.unary.f32(i32 22, float %1848)  ; Frc(value)
  %1850 = fadd fast float %1849, %345
  %1851 = fmul fast float %1816, %1844
  %1852 = call float @dx.op.unary.f32(i32 22, float %1851)  ; Frc(value)
  %1853 = fmul fast float %1852, 0x401921FB60000000
  %1854 = fadd fast float %1853, %1835
  %1855 = call float @dx.op.unary.f32(i32 13, float %1854)  ; Sin(value)
  %1856 = call float @dx.op.unary.f32(i32 12, float %1854)  ; Cos(value)
  %1857 = fsub fast float -0.000000e+00, %1855
  %1858 = fadd fast float %1809, -5.000000e-01
  %1859 = fadd fast float %1810, -5.000000e-01
  %1860 = fmul fast float %1827, %1858
  %1861 = fmul fast float %1829, %1859
  %1862 = fadd fast float %1860, 5.000000e-01
  %1863 = fadd fast float %1861, 5.000000e-01
  %1864 = fmul fast float %1838, %1862
  %1865 = fmul fast float %1841, %1863
  %1866 = fmul fast float %1856, %1864
  %1867 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1865, float %1866)  ; FMad(a,b,c)
  %1868 = fmul fast float %1855, %1864
  %1869 = call float @dx.op.tertiary.f32(i32 46, float %1856, float %1865, float %1868)  ; FMad(a,b,c)
  %1870 = fadd fast float %1847, %1867
  %1871 = fadd fast float %1850, %1869
  %1872 = icmp ugt i32 %1821, 1
  %1873 = icmp ugt i32 %1819, 33554431
  %1874 = or i1 %1873, %1872
  br i1 %1874, label %1875, label %1900

; <label>:1875                                    ; preds = %1802
  %1876 = add i32 %33, 260
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = lshr i32 %1878, 16
  %1880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1879)  ; LegacyF16ToF32(value)
  %1881 = fmul fast float %1843, %1880
  %1882 = call float @dx.op.unary.f32(i32 22, float %1881)  ; Frc(value)
  %1883 = mul nuw nsw i32 %1821, %1822
  %1884 = uitofp i32 %1883 to float
  %1885 = fmul fast float %1882, %1884
  %1886 = call float @dx.op.unary.f32(i32 27, float %1885)  ; Round_ni(value)
  %1887 = fptoui float %1886 to i32
  %1888 = urem i32 %1887, %1821
  %1889 = udiv i32 %1887, %1822
  %1890 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1891 = call float @dx.op.unary.f32(i32 22, float %1871)  ; Frc(value)
  %1892 = uitofp i32 %1888 to float
  %1893 = uitofp i32 %1889 to float
  %1894 = fadd fast float %1890, %1892
  %1895 = fadd fast float %1891, %1893
  %1896 = uitofp i32 %1821 to float
  %1897 = uitofp i32 %1822 to float
  %1898 = fdiv fast float %1894, %1896
  %1899 = fdiv fast float %1895, %1897
  br label %1900

; <label>:1900                                    ; preds = %1875, %1802
  %1901 = phi float [ %1898, %1875 ], [ %1870, %1802 ]
  %1902 = phi float [ %1899, %1875 ], [ %1871, %1802 ]
  %1903 = and i32 %1796, 256
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %1951, label %1905

; <label>:1905                                    ; preds = %1900
  %1906 = add i32 %33, 448
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = add i32 %1908, 0
  %1910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1911 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1910, %dx.types.Handle %75, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = add i32 %33, 132
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = shl i32 %1915, 4
  %1917 = and i32 %1916, 32752
  %1918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1917)  ; LegacyF16ToF32(value)
  %1919 = lshr i32 %1915, 7
  %1920 = and i32 %1919, 32752
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = fsub fast float 1.000000e+00, %452
  %1923 = call float @dx.op.binary.f32(i32 35, float %1922, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1924 = bitcast float %452 to i32
  %1925 = sitofp i32 %1924 to float
  %1926 = fadd fast float %1925, 0xC1CFBF8940000000
  %1927 = fmul fast float %1921, %1926
  %1928 = fadd fast float %1927, 0x41CFBF8940000000
  %1929 = fptosi float %1928 to i32
  %1930 = bitcast i32 %1929 to float
  %1931 = bitcast float %1923 to i32
  %1932 = sitofp i32 %1931 to float
  %1933 = fadd fast float %1932, 0xC1CFBF8940000000
  %1934 = fmul fast float %1933, %1921
  %1935 = fadd fast float %1934, 0x41CFBF8940000000
  %1936 = fptosi float %1935 to i32
  %1937 = bitcast i32 %1936 to float
  %1938 = fmul fast float %1930, %1918
  %1939 = fmul fast float %1937, %1918
  %1940 = fsub fast float %1923, %1938
  %1941 = fadd fast float %1939, %1923
  %1942 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1943 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  %1944 = fsub fast float %1912, %1942
  %1945 = fsub fast float %1943, %1942
  %1946 = bitcast float %1945 to i32
  %1947 = sub nsw i32 2129859010, %1946
  %1948 = bitcast i32 %1947 to float
  %1949 = fmul fast float %1948, %1944
  %1950 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  br label %1951

; <label>:1951                                    ; preds = %1905, %1900
  %1952 = phi float [ %1950, %1905 ], [ %452, %1900 ]
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = and i32 %1954, 128
  %1956 = icmp eq i32 %1955, 0
  br i1 %1956, label %1973, label %1957

; <label>:1957                                    ; preds = %1951
  %1958 = add i32 %33, 432
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = add i32 %1960, 0
  %1962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1961, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1963 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1962, %dx.types.Handle %75, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1964 = extractvalue %dx.types.ResRet.f32 %1963, 0
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, 524288
  %1968 = icmp ne i32 %1967, 0
  %1969 = fcmp fast ogt float %1964, 0x3FE0101020000000
  %1970 = select i1 %1969, float 1.000000e+00, float 0.000000e+00
  %1971 = select i1 %1968, float %1970, float %1964
  %1972 = fmul fast float %1971, %1952
  br label %1973

; <label>:1973                                    ; preds = %1957, %1951
  %1974 = phi float [ %1972, %1957 ], [ %1952, %1951 ]
  %1975 = fcmp fast ult float %1974, 0x3F70101020000000
  br i1 %1975, label %2584, label %1976

; <label>:1976                                    ; preds = %1973
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = and i32 %1978, 16
  %1980 = icmp eq i32 %1979, 0
  br i1 %1980, label %2179, label %1981

; <label>:1981                                    ; preds = %1976
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = add i32 %33, 384
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = add i32 %1986, 0
  %1988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1988, %dx.types.Handle %74, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.ResRet.f32 %1989, 1
  %1992 = extractvalue %dx.types.ResRet.f32 %1989, 2
  %1993 = extractvalue %dx.types.ResRet.f32 %1989, 3
  %1994 = and i32 %1983, 255
  %1995 = uitofp i32 %1994 to float
  %1996 = lshr i32 %1983, 8
  %1997 = and i32 %1996, 255
  %1998 = uitofp i32 %1997 to float
  %1999 = fmul fast float %1993, %1995
  %2000 = fadd fast float %1999, %1998
  %2001 = fmul fast float %2000, 0x3F70101000000000
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = and i32 %2003, 512
  %2005 = icmp eq i32 %2004, 0
  br i1 %2005, label %2014, label %2006

; <label>:2006                                    ; preds = %1981
  %2007 = add i32 %33, 468
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %2009, 0
  %2011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2011, %dx.types.Handle %75, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  br label %2014

; <label>:2014                                    ; preds = %2006, %1981
  %2015 = phi float [ %2013, %2006 ], [ 1.000000e+00, %1981 ]
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 33554432
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2126, label %2020

; <label>:2020                                    ; preds = %2014
  %2021 = add i32 %33, 256
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 65535
  %2025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2024)  ; LegacyF16ToF32(value)
  %2026 = lshr i32 %2023, 16
  %2027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2026)  ; LegacyF16ToF32(value)
  %2028 = add i32 %33, 260
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = and i32 %2030, 65535
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = lshr i32 %2034, 24
  %2036 = uitofp i32 %2035 to float
  %2037 = fmul fast float %2036, 0x3F70101020000000
  %2038 = and i32 %2034, 255
  %2039 = uitofp i32 %2038 to float
  %2040 = fmul fast float %2039, 0x3F70101020000000
  %2041 = lshr i32 %2034, 8
  %2042 = and i32 %2041, 255
  %2043 = uitofp i32 %2042 to float
  %2044 = fmul fast float %2043, 0x3F70101020000000
  %2045 = lshr i32 %2034, 16
  %2046 = and i32 %2045, 255
  %2047 = uitofp i32 %2046 to float
  %2048 = fmul fast float %2047, 0x3F70101020000000
  %2049 = add i32 %33, 252
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = lshr i32 %2051, 24
  %2053 = uitofp i32 %2052 to float
  %2054 = fmul fast float %2053, 0x3F70101020000000
  %2055 = and i32 %2051, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = fmul fast float %2056, 0x3F70101020000000
  %2058 = lshr i32 %2051, 8
  %2059 = and i32 %2058, 255
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = lshr i32 %2051, 16
  %2063 = and i32 %2062, 255
  %2064 = uitofp i32 %2063 to float
  %2065 = fmul fast float %2064, 0x3F70101020000000
  %2066 = bitcast float %1990 to i32
  %2067 = ashr i32 %2066, 1
  %2068 = sub nsw i32 1597463174, %2067
  %2069 = bitcast i32 %2068 to float
  %2070 = fmul fast float %1990, 5.000000e-01
  %2071 = fmul fast float %2069, %2069
  %2072 = fmul fast float %2071, %2070
  %2073 = fsub fast float 1.500000e+00, %2072
  %2074 = fmul fast float %2069, %1990
  %2075 = fmul fast float %2074, %2073
  %2076 = bitcast float %1991 to i32
  %2077 = ashr i32 %2076, 1
  %2078 = sub nsw i32 1597463174, %2077
  %2079 = bitcast i32 %2078 to float
  %2080 = fmul fast float %1991, 5.000000e-01
  %2081 = fmul fast float %2079, %2079
  %2082 = fmul fast float %2081, %2080
  %2083 = fsub fast float 1.500000e+00, %2082
  %2084 = fmul fast float %2079, %1991
  %2085 = fmul fast float %2084, %2083
  %2086 = bitcast float %1992 to i32
  %2087 = ashr i32 %2086, 1
  %2088 = sub nsw i32 1597463174, %2087
  %2089 = bitcast i32 %2088 to float
  %2090 = fmul fast float %1992, 5.000000e-01
  %2091 = fmul fast float %2089, %2089
  %2092 = fmul fast float %2091, %2090
  %2093 = fsub fast float 1.500000e+00, %2092
  %2094 = fmul fast float %2089, %1992
  %2095 = fmul fast float %2094, %2093
  %2096 = fsub fast float %2075, %2057
  %2097 = fsub fast float %2085, %2061
  %2098 = fsub fast float %2095, %2065
  %2099 = fmul fast float %2096, %2025
  %2100 = fmul fast float %2097, %2027
  %2101 = fmul fast float %2098, %2032
  %2102 = fadd fast float %2099, %2040
  %2103 = fadd fast float %2100, %2044
  %2104 = fadd fast float %2101, %2048
  %2105 = call float @dx.op.unary.f32(i32 7, float %2102)  ; Saturate(value)
  %2106 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  %2107 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2108 = fmul fast float %2105, %2105
  %2109 = fmul fast float %2106, %2106
  %2110 = fmul fast float %2107, %2107
  %2111 = fsub fast float %2108, %1990
  %2112 = fsub fast float %2109, %1991
  %2113 = fsub fast float %2110, %1992
  %2114 = fmul fast float %2111, %2015
  %2115 = fmul fast float %2112, %2015
  %2116 = fmul fast float %2113, %2015
  %2117 = fadd fast float %2114, %1990
  %2118 = fadd fast float %2115, %1991
  %2119 = fadd fast float %2116, %1992
  %2120 = fadd fast float %2037, %2001
  %2121 = fsub fast float %2120, %2054
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2123 = fsub fast float %2122, %2001
  %2124 = fmul fast float %2123, %2015
  %2125 = fadd fast float %2124, %2001
  br label %2179

; <label>:2126                                    ; preds = %2014
  %2127 = and i32 %2017, 134217728
  %2128 = icmp eq i32 %2127, 0
  br i1 %2128, label %2163, label %2129

; <label>:2129                                    ; preds = %2126
  %2130 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2131 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2132 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2133 = fadd fast float %2130, -5.000000e-01
  %2134 = fadd fast float %2131, -5.000000e-01
  %2135 = fadd fast float %2132, -5.000000e-01
  %2136 = fmul fast float %2133, %2015
  %2137 = fmul fast float %2134, %2015
  %2138 = fmul fast float %2135, %2015
  %2139 = fadd fast float %2136, 5.000000e-01
  %2140 = fadd fast float %2137, 5.000000e-01
  %2141 = fadd fast float %2138, 5.000000e-01
  %2142 = call float @dx.op.unary.f32(i32 24, float %1990)  ; Sqrt(value)
  %2143 = call float @dx.op.unary.f32(i32 24, float %1991)  ; Sqrt(value)
  %2144 = call float @dx.op.unary.f32(i32 24, float %1992)  ; Sqrt(value)
  %2145 = fmul fast float %2139, 2.000000e+00
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2146, %2142
  %2148 = fadd fast float %2147, %2145
  %2149 = fmul fast float %2148, %2142
  %2150 = fmul fast float %2140, 2.000000e+00
  %2151 = fsub fast float 1.000000e+00, %2150
  %2152 = fmul fast float %2151, %2143
  %2153 = fadd fast float %2152, %2150
  %2154 = fmul fast float %2153, %2143
  %2155 = fmul fast float %2141, 2.000000e+00
  %2156 = fsub fast float 1.000000e+00, %2155
  %2157 = fmul fast float %2156, %2144
  %2158 = fadd fast float %2157, %2155
  %2159 = fmul fast float %2158, %2144
  %2160 = fmul fast float %2149, %2149
  %2161 = fmul fast float %2154, %2154
  %2162 = fmul fast float %2159, %2159
  br label %2179

; <label>:2163                                    ; preds = %2126
  %2164 = fmul fast float %330, %330
  %2165 = fmul fast float %334, %334
  %2166 = fmul fast float %338, %338
  %2167 = fadd fast float %2164, -1.000000e+00
  %2168 = fadd fast float %2165, -1.000000e+00
  %2169 = fadd fast float %2166, -1.000000e+00
  %2170 = fmul fast float %2015, %2167
  %2171 = fmul fast float %2015, %2168
  %2172 = fmul fast float %2015, %2169
  %2173 = fadd fast float %2170, 1.000000e+00
  %2174 = fadd fast float %2171, 1.000000e+00
  %2175 = fadd fast float %2172, 1.000000e+00
  %2176 = fmul fast float %2173, %1990
  %2177 = fmul fast float %2174, %1991
  %2178 = fmul fast float %2175, %1992
  br label %2179

; <label>:2179                                    ; preds = %2163, %2129, %2020, %1976
  %2180 = phi float [ %2125, %2020 ], [ %2001, %2129 ], [ %2001, %2163 ], [ 0x3FA23C0BE0000000, %1976 ]
  %2181 = phi float [ %2117, %2020 ], [ %2160, %2129 ], [ %2176, %2163 ], [ 1.000000e+00, %1976 ]
  %2182 = phi float [ %2118, %2020 ], [ %2161, %2129 ], [ %2177, %2163 ], [ 1.000000e+00, %1976 ]
  %2183 = phi float [ %2119, %2020 ], [ %2162, %2129 ], [ %2178, %2163 ], [ 1.000000e+00, %1976 ]
  %2184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.i32 %2184, 1
  %2186 = and i32 %2185, 1
  %2187 = icmp ne i32 %2186, 0
  %2188 = add i32 %33, 356
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = and i32 %2190, 32
  %2192 = icmp ne i32 %2191, 0
  %2193 = and i1 %2187, %2192
  %2194 = select i1 %2193, float 1.000000e+00, float %2181
  %2195 = select i1 %2193, float 0x3FD3333340000000, float %2182
  %2196 = select i1 %2193, float 0x3FD3333340000000, float %2183
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = and i32 %2198, 32
  %2200 = icmp eq i32 %2199, 0
  br i1 %2200, label %2273, label %2201

; <label>:2201                                    ; preds = %2179
  %2202 = add i32 %33, 124
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = add i32 %33, 400
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = add i32 %2207, 0
  %2209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2209, %dx.types.Handle %74, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2211 = extractvalue %dx.types.ResRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.ResRet.f32 %2210, 1
  %2213 = extractvalue %dx.types.ResRet.f32 %2210, 2
  %2214 = extractvalue %dx.types.ResRet.f32 %2210, 3
  %2215 = and i32 %2204, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = lshr i32 %2204, 8
  %2218 = and i32 %2217, 255
  %2219 = uitofp i32 %2218 to float
  %2220 = lshr i32 %2204, 16
  %2221 = and i32 %2220, 255
  %2222 = uitofp i32 %2221 to float
  %2223 = fmul fast float %2222, 0x3F70101000000000
  %2224 = fmul fast float %2211, %2216
  %2225 = fadd fast float %2224, %2219
  %2226 = fmul fast float %2225, 0x3F70101000000000
  %2227 = fadd fast float %2212, -5.000000e-01
  %2228 = fadd fast float %2214, -5.000000e-01
  %2229 = fmul fast float %2227, %2223
  %2230 = fmul fast float %2228, %2223
  %2231 = fadd fast float %2229, 5.000000e-01
  %2232 = fadd fast float %2230, 5.000000e-01
  %2233 = fmul fast float %2231, 2.000000e+00
  %2234 = fadd fast float %2233, -1.000000e+00
  %2235 = fmul fast float %2232, 2.000000e+00
  %2236 = fadd fast float %2235, -1.000000e+00
  %2237 = fadd fast float %2234, %2236
  %2238 = fmul fast float %2237, 5.000000e-01
  %2239 = fsub fast float %2234, %2236
  %2240 = fmul fast float %2239, 5.000000e-01
  %2241 = call float @dx.op.unary.f32(i32 6, float %2238)  ; FAbs(value)
  %2242 = fsub fast float 1.000000e+00, %2241
  %2243 = call float @dx.op.unary.f32(i32 6, float %2240)  ; FAbs(value)
  %2244 = fsub fast float %2242, %2243
  %2245 = call float @dx.op.dot3.f32(i32 55, float %2238, float %2240, float %2244, float %2238, float %2240, float %2244)  ; Dot3(ax,ay,az,bx,by,bz)
  %2246 = call float @dx.op.unary.f32(i32 25, float %2245)  ; Rsqrt(value)
  %2247 = fmul fast float %2238, %2246
  %2248 = fmul fast float %2240, %2246
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 67108864
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %2269, label %2253

; <label>:2253                                    ; preds = %2201
  %2254 = add i32 %33, 312
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = and i32 %2260, 65535
  %2262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2261)  ; LegacyF16ToF32(value)
  %2263 = lshr i32 %2256, 16
  %2264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2263)  ; LegacyF16ToF32(value)
  %2265 = fsub fast float %2226, %2264
  %2266 = fmul fast float %2265, %2258
  %2267 = fadd fast float %2266, %2262
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  br label %2269

; <label>:2269                                    ; preds = %2253, %2201
  %2270 = phi float [ %2268, %2253 ], [ %2226, %2201 ]
  %2271 = call float @dx.op.dot2.f32(i32 54, float %2247, float %2248, float %1805, float %1806)  ; Dot2(ax,ay,bx,by)
  %2272 = call float @dx.op.dot2.f32(i32 54, float %2247, float %2248, float %1807, float %1808)  ; Dot2(ax,ay,bx,by)
  br label %2273

; <label>:2273                                    ; preds = %2269, %2179
  %2274 = phi float [ %2270, %2269 ], [ 0x3FD6666660000000, %2179 ]
  %2275 = phi float [ %2271, %2269 ], [ 0.000000e+00, %2179 ]
  %2276 = phi float [ %2272, %2269 ], [ 0.000000e+00, %2179 ]
  %2277 = phi float [ %2213, %2269 ], [ 1.000000e+00, %2179 ]
  %2278 = add i32 %33, 192
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = lshr i32 %2280, 22
  %2282 = shl nuw nsw i32 %2281, 5
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 64
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2321, label %2288

; <label>:2288                                    ; preds = %2273
  %2289 = add i32 %33, 416
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = add i32 %2291, 0
  %2293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = and i32 %2295, 131072
  %2297 = icmp eq i32 %2296, 0
  %2298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2293, %dx.types.Handle %74, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2299 = extractvalue %dx.types.ResRet.f32 %2298, 0
  %2300 = extractvalue %dx.types.ResRet.f32 %2298, 1
  %2301 = extractvalue %dx.types.ResRet.f32 %2298, 2
  %2302 = fmul fast float %2299, %318
  %2303 = fmul fast float %2300, %321
  %2304 = fmul fast float %2301, %324
  br i1 %2297, label %2311, label %2305

; <label>:2305                                    ; preds = %2288
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 0
  %2308 = fmul fast float %2307, %2302
  %2309 = fmul fast float %2307, %2303
  %2310 = fmul fast float %2307, %2304
  br label %2311

; <label>:2311                                    ; preds = %2305, %2288
  %2312 = phi float [ %2308, %2305 ], [ %2302, %2288 ]
  %2313 = phi float [ %2309, %2305 ], [ %2303, %2288 ]
  %2314 = phi float [ %2310, %2305 ], [ %2304, %2288 ]
  %2315 = fmul fast float %2312, %2283
  %2316 = select i1 %217, float %2315, float %2312
  %2317 = call float @dx.op.dot3.f32(i32 55, float %2316, float %2313, float %2314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2318 = select i1 %217, float 0.000000e+00, float %2312
  %2319 = select i1 %217, float %2317, float %2313
  %2320 = select i1 %217, float 0.000000e+00, float %2314
  br label %2321

; <label>:2321                                    ; preds = %2311, %2273
  %2322 = phi float [ %2318, %2311 ], [ 0.000000e+00, %2273 ]
  %2323 = phi float [ %2319, %2311 ], [ 0.000000e+00, %2273 ]
  %2324 = phi float [ %2320, %2311 ], [ 0.000000e+00, %2273 ]
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = and i32 %2326, 30720
  %2328 = icmp eq i32 %2327, 0
  br i1 %2328, label %2368, label %2329

; <label>:2329                                    ; preds = %2321
  %2330 = add i32 %33, 484
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = add i32 %2332, 0
  %2334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2334, %dx.types.Handle %75, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2336 = extractvalue %dx.types.ResRet.f32 %2335, 2
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 1048576
  %2340 = icmp ne i32 %2339, 0
  %2341 = select i1 %2340, float 1.000000e+00, float %2336
  %2342 = and i32 %2338, 16384
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2354, label %2344

; <label>:2344                                    ; preds = %2329
  %2345 = extractvalue %dx.types.ResRet.f32 %2335, 0
  %2346 = add i32 %33, 128
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = lshr i32 %2348, 24
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2345, 0x3F70101020000000
  %2352 = select i1 %2340, float 0x3F70101020000000, float %2351
  %2353 = fmul fast float %2352, %2350
  br label %2354

; <label>:2354                                    ; preds = %2344, %2329
  %2355 = phi float [ %2353, %2344 ], [ 0.000000e+00, %2329 ]
  %2356 = and i32 %2338, 4096
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2368, label %2358

; <label>:2358                                    ; preds = %2354
  %2359 = add i32 %33, 196
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = and i32 %2361, 65535
  %2363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2362)  ; LegacyF16ToF32(value)
  %2364 = lshr i32 %2361, 16
  %2365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2364)  ; LegacyF16ToF32(value)
  %2366 = fmul fast float %2363, %2341
  %2367 = fadd fast float %2366, %2365
  br label %2368

; <label>:2368                                    ; preds = %2358, %2354, %2321
  %2369 = phi float [ %2355, %2358 ], [ %2355, %2354 ], [ 0.000000e+00, %2321 ]
  %2370 = phi float [ %2367, %2358 ], [ 0.000000e+00, %2354 ], [ 0.000000e+00, %2321 ]
  %2371 = add i32 %33, 128
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = lshr i32 %2373, 8
  %2377 = and i32 %2376, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = call float @dx.op.dot3.f32(i32 55, float %2194, float %2195, float %2196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2380 = fmul fast float %2378, %2379
  %2381 = fadd fast float %2380, %2375
  %2382 = fmul fast float %2381, 0x3F70101020000000
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  br i1 %1793, label %2384, label %2392

; <label>:2384                                    ; preds = %2368
  %2385 = fsub fast float 1.000000e+00, %1974
  %2386 = fmul fast float %2385, %1780
  %2387 = fmul fast float %2385, %1781
  %2388 = fmul fast float %2385, %1782
  %2389 = fmul fast float %2385, %1783
  %2390 = fmul fast float %2385, %1784
  %2391 = fmul fast float %2385, %1785
  br label %2392

; <label>:2392                                    ; preds = %2384, %2368
  %2393 = phi float [ %2386, %2384 ], [ %1780, %2368 ]
  %2394 = phi float [ %2387, %2384 ], [ %1781, %2368 ]
  %2395 = phi float [ %2388, %2384 ], [ %1782, %2368 ]
  %2396 = phi float [ %2389, %2384 ], [ %1783, %2368 ]
  %2397 = phi float [ %2390, %2384 ], [ %1784, %2368 ]
  %2398 = phi float [ %2391, %2384 ], [ %1785, %2368 ]
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 3
  %2402 = icmp eq i32 %2401, 3
  br i1 %2402, label %2481, label %2403

; <label>:2403                                    ; preds = %2392
  %2404 = and i32 %2400, 16
  %2405 = icmp ne i32 %2404, 0
  %2406 = select i1 %2405, float %1974, float 0.000000e+00
  %2407 = icmp eq i32 %2401, 0
  br i1 %2407, label %2408, label %2436

; <label>:2408                                    ; preds = %2403
  %2409 = and i32 %2400, 64
  %2410 = icmp ne i32 %2409, 0
  %2411 = select i1 %2410, float %1974, float 0.000000e+00
  %2412 = fsub fast float %2194, %2393
  %2413 = fsub fast float %2195, %2394
  %2414 = fsub fast float %2196, %2395
  %2415 = fmul fast float %2406, %2412
  %2416 = fmul fast float %2406, %2413
  %2417 = fmul fast float %2406, %2414
  %2418 = fadd fast float %2415, %2393
  %2419 = fadd fast float %2416, %2394
  %2420 = fadd fast float %2417, %2395
  %2421 = fsub fast float %2180, %1786
  %2422 = fmul fast float %2406, %2421
  %2423 = fadd fast float %2422, %1786
  %2424 = fsub fast float %2322, %2396
  %2425 = fsub fast float %2323, %2397
  %2426 = fsub fast float %2324, %2398
  %2427 = fmul fast float %2411, %2424
  %2428 = fmul fast float %2411, %2425
  %2429 = fmul fast float %2411, %2426
  %2430 = fadd fast float %2427, %2396
  %2431 = fadd fast float %2428, %2397
  %2432 = fadd fast float %2429, %2398
  %2433 = fsub fast float %2383, %1791
  %2434 = fmul fast float %2406, %2433
  %2435 = fadd fast float %2434, %1791
  br label %2481

; <label>:2436                                    ; preds = %2403
  %2437 = icmp eq i32 %2401, 1
  br i1 %2437, label %2438, label %2451

; <label>:2438                                    ; preds = %2436
  %2439 = fadd fast float %2194, -1.000000e+00
  %2440 = fadd fast float %2195, -1.000000e+00
  %2441 = fadd fast float %2196, -1.000000e+00
  %2442 = fmul fast float %2406, %2439
  %2443 = fmul fast float %2406, %2440
  %2444 = fmul fast float %2406, %2441
  %2445 = fadd fast float %2442, 1.000000e+00
  %2446 = fadd fast float %2443, 1.000000e+00
  %2447 = fadd fast float %2444, 1.000000e+00
  %2448 = fmul fast float %2445, %2393
  %2449 = fmul fast float %2446, %2394
  %2450 = fmul fast float %2447, %2395
  br label %2481

; <label>:2451                                    ; preds = %2436
  %2452 = icmp eq i32 %2401, 2
  br i1 %2452, label %2453, label %2481

; <label>:2453                                    ; preds = %2451
  %2454 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2455 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2456 = call float @dx.op.unary.f32(i32 24, float %2196)  ; Sqrt(value)
  %2457 = fadd fast float %2454, -5.000000e-01
  %2458 = fadd fast float %2455, -5.000000e-01
  %2459 = fadd fast float %2456, -5.000000e-01
  %2460 = fmul fast float %2457, %2406
  %2461 = fmul fast float %2458, %2406
  %2462 = fmul fast float %2459, %2406
  %2463 = fadd fast float %2460, 5.000000e-01
  %2464 = fadd fast float %2461, 5.000000e-01
  %2465 = fadd fast float %2462, 5.000000e-01
  %2466 = fmul fast float %2463, 2.000000e+00
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2467, %2393
  %2469 = fadd fast float %2468, %2466
  %2470 = fmul fast float %2469, %2393
  %2471 = fmul fast float %2464, 2.000000e+00
  %2472 = fsub fast float 1.000000e+00, %2471
  %2473 = fmul fast float %2472, %2394
  %2474 = fadd fast float %2473, %2471
  %2475 = fmul fast float %2474, %2394
  %2476 = fmul fast float %2465, 2.000000e+00
  %2477 = fsub fast float 1.000000e+00, %2476
  %2478 = fmul fast float %2477, %2395
  %2479 = fadd fast float %2478, %2476
  %2480 = fmul fast float %2479, %2395
  br label %2481

; <label>:2481                                    ; preds = %2453, %2451, %2438, %2408, %2392
  %2482 = phi float [ %2393, %2392 ], [ %2470, %2453 ], [ %2393, %2451 ], [ %2448, %2438 ], [ %2418, %2408 ]
  %2483 = phi float [ %2394, %2392 ], [ %2475, %2453 ], [ %2394, %2451 ], [ %2449, %2438 ], [ %2419, %2408 ]
  %2484 = phi float [ %2395, %2392 ], [ %2480, %2453 ], [ %2395, %2451 ], [ %2450, %2438 ], [ %2420, %2408 ]
  %2485 = phi float [ %2396, %2392 ], [ %2396, %2453 ], [ %2396, %2451 ], [ %2396, %2438 ], [ %2430, %2408 ]
  %2486 = phi float [ %2397, %2392 ], [ %2397, %2453 ], [ %2397, %2451 ], [ %2397, %2438 ], [ %2431, %2408 ]
  %2487 = phi float [ %2398, %2392 ], [ %2398, %2453 ], [ %2398, %2451 ], [ %2398, %2438 ], [ %2432, %2408 ]
  %2488 = phi float [ %1786, %2392 ], [ %1786, %2453 ], [ %1786, %2451 ], [ %1786, %2438 ], [ %2423, %2408 ]
  %2489 = phi float [ %1791, %2392 ], [ %1791, %2453 ], [ %1791, %2451 ], [ %1791, %2438 ], [ %2435, %2408 ]
  %2490 = and i32 %2400, 12
  %2491 = icmp eq i32 %2490, 12
  br i1 %2491, label %2584, label %2492

; <label>:2492                                    ; preds = %2481
  %2493 = and i32 %2400, 2097184
  %2494 = icmp eq i32 %2493, 2097184
  %2495 = select i1 %2494, float %1974, float 0.000000e+00
  %2496 = and i32 %2400, 4194336
  %2497 = icmp eq i32 %2496, 4194336
  %2498 = select i1 %2497, float %1974, float 0.000000e+00
  %2499 = and i32 %2400, 8388640
  %2500 = icmp eq i32 %2499, 8388640
  %2501 = select i1 %2500, float %1974, float 0.000000e+00
  %2502 = and i32 %2400, 4096
  %2503 = icmp ne i32 %2502, 0
  %2504 = select i1 %2503, float %1974, float 0.000000e+00
  %2505 = and i32 %2400, 16384
  %2506 = icmp ne i32 %2505, 0
  %2507 = select i1 %2506, float %1974, float 0.000000e+00
  %2508 = icmp eq i32 %2490, 0
  br i1 %2508, label %2509, label %2528

; <label>:2509                                    ; preds = %2492
  %2510 = fsub fast float %2275, %1778
  %2511 = fsub fast float %2276, %1779
  %2512 = fmul fast float %2495, %2510
  %2513 = fmul fast float %2495, %2511
  %2514 = fadd fast float %2512, %1778
  %2515 = fadd fast float %2513, %1779
  %2516 = fsub fast float %2277, %1788
  %2517 = fmul fast float %2498, %2516
  %2518 = fadd fast float %2517, %1788
  %2519 = fsub fast float %2274, %1787
  %2520 = fmul fast float %2501, %2519
  %2521 = fadd fast float %2520, %1787
  %2522 = fsub fast float %2370, %1789
  %2523 = fmul fast float %2504, %2522
  %2524 = fadd fast float %2523, %1789
  %2525 = fsub fast float %2369, %1790
  %2526 = fmul fast float %2507, %2525
  %2527 = fadd fast float %2526, %1790
  br label %2584

; <label>:2528                                    ; preds = %2492
  %2529 = icmp eq i32 %2490, 4
  br i1 %2529, label %2530, label %2566

; <label>:2530                                    ; preds = %2528
  %2531 = fmul fast float %2495, %2275
  %2532 = fmul fast float %2495, %2276
  %2533 = fadd fast float %2531, %1778
  %2534 = fadd fast float %2532, %1779
  %2535 = call float @dx.op.binary.f32(i32 36, float %1788, float %2277)  ; FMin(a,b)
  %2536 = fsub fast float %2535, %1788
  %2537 = fmul fast float %2536, %2498
  %2538 = fadd fast float %2537, %1788
  %2539 = fadd fast float %2274, %1787
  %2540 = fmul fast float %2539, 0x3FF337FAE0000000
  %2541 = fmul fast float %1787, %1787
  %2542 = fmul fast float %2274, %2274
  %2543 = fadd fast float %2542, %2541
  %2544 = fmul fast float %2543, 0x3FE5152B00000000
  %2545 = fmul fast float %1787, 0xBFCC1F85E0000000
  %2546 = fmul fast float %2545, %2274
  %2547 = fadd fast float %2546, 0xBFE1363700000000
  %2548 = fadd fast float %2547, %2540
  %2549 = fsub fast float %2548, %2544
  %2550 = fmul fast float %2539, 0x3FBA6F0D00000000
  %2551 = fmul fast float %2543, 0x3FD0432880000000
  %2552 = fmul fast float %1787, 0xBFEF110800000000
  %2553 = fmul fast float %2552, %2274
  %2554 = fadd fast float %2553, 1.000000e+00
  %2555 = fsub fast float %2554, %2550
  %2556 = fadd fast float %2555, %2551
  %2557 = fdiv fast float %2549, %2556
  %2558 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  %2559 = fsub fast float %2558, %1787
  %2560 = fmul fast float %2559, %2501
  %2561 = fadd fast float %2560, %1787
  %2562 = fmul fast float %2504, %2370
  %2563 = fadd fast float %2562, %1789
  %2564 = fmul fast float %2507, %2369
  %2565 = fadd fast float %2564, %1790
  br label %2584

; <label>:2566                                    ; preds = %2528
  %2567 = icmp eq i32 %2490, 8
  br i1 %2567, label %2568, label %2584

; <label>:2568                                    ; preds = %2566
  %2569 = fmul fast float %2495, %2275
  %2570 = fmul fast float %2495, %2276
  %2571 = fadd fast float %2569, %1778
  %2572 = fadd fast float %2570, %1779
  %2573 = call float @dx.op.binary.f32(i32 36, float %1788, float %2277)  ; FMin(a,b)
  %2574 = fsub fast float %2573, %1788
  %2575 = fmul fast float %2574, %2498
  %2576 = fadd fast float %2575, %1788
  %2577 = fsub fast float %2274, %1787
  %2578 = fmul fast float %2501, %2577
  %2579 = fadd fast float %2578, %1787
  %2580 = fmul fast float %2504, %2370
  %2581 = fadd fast float %2580, %1789
  %2582 = fmul fast float %2507, %2369
  %2583 = fadd fast float %2582, %1790
  br label %2584

; <label>:2584                                    ; preds = %2568, %2566, %2530, %2509, %2481, %1973, %1792, %1777
  %2585 = phi float [ %1778, %2481 ], [ %1778, %1973 ], [ %1778, %1777 ], [ %2571, %2568 ], [ %1778, %2566 ], [ %2533, %2530 ], [ %2514, %2509 ], [ %1778, %1792 ]
  %2586 = phi float [ %1779, %2481 ], [ %1779, %1973 ], [ %1779, %1777 ], [ %2572, %2568 ], [ %1779, %2566 ], [ %2534, %2530 ], [ %2515, %2509 ], [ %1779, %1792 ]
  %2587 = phi float [ %2482, %2481 ], [ %1780, %1973 ], [ %1780, %1777 ], [ %2482, %2568 ], [ %2482, %2566 ], [ %2482, %2530 ], [ %2482, %2509 ], [ %1780, %1792 ]
  %2588 = phi float [ %2483, %2481 ], [ %1781, %1973 ], [ %1781, %1777 ], [ %2483, %2568 ], [ %2483, %2566 ], [ %2483, %2530 ], [ %2483, %2509 ], [ %1781, %1792 ]
  %2589 = phi float [ %2484, %2481 ], [ %1782, %1973 ], [ %1782, %1777 ], [ %2484, %2568 ], [ %2484, %2566 ], [ %2484, %2530 ], [ %2484, %2509 ], [ %1782, %1792 ]
  %2590 = phi float [ %2485, %2481 ], [ %1783, %1973 ], [ %1783, %1777 ], [ %2485, %2568 ], [ %2485, %2566 ], [ %2485, %2530 ], [ %2485, %2509 ], [ %1783, %1792 ]
  %2591 = phi float [ %2486, %2481 ], [ %1784, %1973 ], [ %1784, %1777 ], [ %2486, %2568 ], [ %2486, %2566 ], [ %2486, %2530 ], [ %2486, %2509 ], [ %1784, %1792 ]
  %2592 = phi float [ %2487, %2481 ], [ %1785, %1973 ], [ %1785, %1777 ], [ %2487, %2568 ], [ %2487, %2566 ], [ %2487, %2530 ], [ %2487, %2509 ], [ %1785, %1792 ]
  %2593 = phi float [ %2488, %2481 ], [ %1786, %1973 ], [ %1786, %1777 ], [ %2488, %2568 ], [ %2488, %2566 ], [ %2488, %2530 ], [ %2488, %2509 ], [ %1786, %1792 ]
  %2594 = phi float [ %1787, %2481 ], [ %1787, %1973 ], [ %1787, %1777 ], [ %2579, %2568 ], [ %1787, %2566 ], [ %2561, %2530 ], [ %2521, %2509 ], [ %1787, %1792 ]
  %2595 = phi float [ %1788, %2481 ], [ %1788, %1973 ], [ %1788, %1777 ], [ %2576, %2568 ], [ %1788, %2566 ], [ %2538, %2530 ], [ %2518, %2509 ], [ %1788, %1792 ]
  %2596 = phi float [ %1789, %2481 ], [ %1789, %1973 ], [ %1789, %1777 ], [ %2581, %2568 ], [ %1789, %2566 ], [ %2563, %2530 ], [ %2524, %2509 ], [ %1789, %1792 ]
  %2597 = phi float [ %1790, %2481 ], [ %1790, %1973 ], [ %1790, %1777 ], [ %2583, %2568 ], [ %1790, %2566 ], [ %2565, %2530 ], [ %2527, %2509 ], [ %1790, %1792 ]
  %2598 = phi float [ %2489, %2481 ], [ %1791, %1973 ], [ %1791, %1777 ], [ %2489, %2568 ], [ %2489, %2566 ], [ %2489, %2530 ], [ %2489, %2509 ], [ %1791, %1792 ]
  br i1 %405, label %3391, label %2599

; <label>:2599                                    ; preds = %2584
  %2600 = icmp ult i32 %456, 4
  %2601 = add i32 %33, 72
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = add i32 %33, 76
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = or i32 %2606, %2603
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %3391, label %2609

; <label>:2609                                    ; preds = %2599
  %2610 = and i32 %2603, 262144
  %2611 = icmp ne i32 %2610, 0
  %2612 = select i1 %2611, float %39, float 1.000000e+00
  %2613 = select i1 %2611, float %40, float 0.000000e+00
  %2614 = select i1 %2611, float %41, float 0.000000e+00
  %2615 = select i1 %2611, float %42, float 1.000000e+00
  %2616 = select i1 %2611, float %43, float %66
  %2617 = select i1 %2611, float %44, float %67
  %2618 = add i32 %33, 332
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = lshr i32 %2620, 16
  %2622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2621)  ; LegacyF16ToF32(value)
  %2623 = fmul fast float %2622, 0x3F50624DE0000000
  %2624 = add i32 %33, 136
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = lshr i32 %2626, 16
  %2628 = and i32 %2627, 255
  %2629 = lshr i32 %2626, 24
  %2630 = add i32 %33, 340
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 65535
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = lshr i32 %2632, 16
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = add i32 %33, 80
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 22
  %2641 = shl nuw nsw i32 %2640, 5
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = shl i32 %2639, 4
  %2644 = and i32 %2643, 32752
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = lshr i32 %2639, 7
  %2647 = and i32 %2646, 32752
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 3
  %2651 = fmul fast float %2650, 1.000000e+03
  %2652 = fmul fast float %395, %2651
  %2653 = call float @dx.op.unary.f32(i32 22, float %2652)  ; Frc(value)
  %2654 = fadd fast float %2653, %385
  %2655 = fmul fast float %396, %2651
  %2656 = call float @dx.op.unary.f32(i32 22, float %2655)  ; Frc(value)
  %2657 = fadd fast float %2656, %387
  %2658 = fmul fast float %2623, %2651
  %2659 = call float @dx.op.unary.f32(i32 22, float %2658)  ; Frc(value)
  %2660 = fmul fast float %2659, 0x401921FB60000000
  %2661 = fadd fast float %2660, %2642
  %2662 = call float @dx.op.unary.f32(i32 13, float %2661)  ; Sin(value)
  %2663 = call float @dx.op.unary.f32(i32 12, float %2661)  ; Cos(value)
  %2664 = fsub fast float -0.000000e+00, %2662
  %2665 = fadd fast float %2616, -5.000000e-01
  %2666 = fadd fast float %2617, -5.000000e-01
  %2667 = fmul fast float %2634, %2665
  %2668 = fmul fast float %2636, %2666
  %2669 = fadd fast float %2667, 5.000000e-01
  %2670 = fadd fast float %2668, 5.000000e-01
  %2671 = fmul fast float %2645, %2669
  %2672 = fmul fast float %2648, %2670
  %2673 = fmul fast float %2663, %2671
  %2674 = call float @dx.op.tertiary.f32(i32 46, float %2664, float %2672, float %2673)  ; FMad(a,b,c)
  %2675 = fmul fast float %2662, %2671
  %2676 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %2672, float %2675)  ; FMad(a,b,c)
  %2677 = fadd fast float %2654, %2674
  %2678 = fadd fast float %2657, %2676
  %2679 = icmp ugt i32 %2628, 1
  %2680 = icmp ugt i32 %2626, 33554431
  %2681 = or i1 %2680, %2679
  br i1 %2681, label %2682, label %2707

; <label>:2682                                    ; preds = %2609
  %2683 = add i32 %33, 276
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 16
  %2687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2686)  ; LegacyF16ToF32(value)
  %2688 = fmul fast float %2650, %2687
  %2689 = call float @dx.op.unary.f32(i32 22, float %2688)  ; Frc(value)
  %2690 = mul nuw nsw i32 %2628, %2629
  %2691 = uitofp i32 %2690 to float
  %2692 = fmul fast float %2689, %2691
  %2693 = call float @dx.op.unary.f32(i32 27, float %2692)  ; Round_ni(value)
  %2694 = fptoui float %2693 to i32
  %2695 = urem i32 %2694, %2628
  %2696 = udiv i32 %2694, %2629
  %2697 = call float @dx.op.unary.f32(i32 22, float %2677)  ; Frc(value)
  %2698 = call float @dx.op.unary.f32(i32 22, float %2678)  ; Frc(value)
  %2699 = uitofp i32 %2695 to float
  %2700 = uitofp i32 %2696 to float
  %2701 = fadd fast float %2697, %2699
  %2702 = fadd fast float %2698, %2700
  %2703 = uitofp i32 %2628 to float
  %2704 = uitofp i32 %2629 to float
  %2705 = fdiv fast float %2701, %2703
  %2706 = fdiv fast float %2702, %2704
  br label %2707

; <label>:2707                                    ; preds = %2682, %2609
  %2708 = phi float [ %2705, %2682 ], [ %2677, %2609 ]
  %2709 = phi float [ %2706, %2682 ], [ %2678, %2609 ]
  %2710 = and i32 %2603, 256
  %2711 = icmp eq i32 %2710, 0
  br i1 %2711, label %2758, label %2712

; <label>:2712                                    ; preds = %2707
  %2713 = add i32 %33, 452
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = add i32 %2715, 0
  %2717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2717, %dx.types.Handle %75, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2719 = extractvalue %dx.types.ResRet.f32 %2718, 0
  %2720 = add i32 %33, 148
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = shl i32 %2722, 4
  %2724 = and i32 %2723, 32752
  %2725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2724)  ; LegacyF16ToF32(value)
  %2726 = lshr i32 %2722, 7
  %2727 = and i32 %2726, 32752
  %2728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2727)  ; LegacyF16ToF32(value)
  %2729 = fsub fast float 1.000000e+00, %451
  %2730 = call float @dx.op.binary.f32(i32 35, float %2729, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2731 = bitcast float %451 to i32
  %2732 = sitofp i32 %2731 to float
  %2733 = fadd fast float %2732, 0xC1CFBF8940000000
  %2734 = fmul fast float %2728, %2733
  %2735 = fadd fast float %2734, 0x41CFBF8940000000
  %2736 = fptosi float %2735 to i32
  %2737 = bitcast i32 %2736 to float
  %2738 = bitcast float %2730 to i32
  %2739 = sitofp i32 %2738 to float
  %2740 = fadd fast float %2739, 0xC1CFBF8940000000
  %2741 = fmul fast float %2740, %2728
  %2742 = fadd fast float %2741, 0x41CFBF8940000000
  %2743 = fptosi float %2742 to i32
  %2744 = bitcast i32 %2743 to float
  %2745 = fmul fast float %2737, %2725
  %2746 = fmul fast float %2744, %2725
  %2747 = fsub fast float %2730, %2745
  %2748 = fadd fast float %2746, %2730
  %2749 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2750 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  %2751 = fsub fast float %2719, %2749
  %2752 = fsub fast float %2750, %2749
  %2753 = bitcast float %2752 to i32
  %2754 = sub nsw i32 2129859010, %2753
  %2755 = bitcast i32 %2754 to float
  %2756 = fmul fast float %2755, %2751
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  br label %2758

; <label>:2758                                    ; preds = %2712, %2707
  %2759 = phi float [ %2757, %2712 ], [ %451, %2707 ]
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = and i32 %2761, 128
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2780, label %2764

; <label>:2764                                    ; preds = %2758
  %2765 = add i32 %33, 436
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = add i32 %2767, 0
  %2769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2769, %dx.types.Handle %75, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = and i32 %2773, 524288
  %2775 = icmp ne i32 %2774, 0
  %2776 = fcmp fast ogt float %2771, 0x3FE0101020000000
  %2777 = select i1 %2776, float 1.000000e+00, float 0.000000e+00
  %2778 = select i1 %2775, float %2777, float %2771
  %2779 = fmul fast float %2778, %2759
  br label %2780

; <label>:2780                                    ; preds = %2764, %2758
  %2781 = phi float [ %2779, %2764 ], [ %2759, %2758 ]
  %2782 = fcmp fast ult float %2781, 0x3F70101020000000
  br i1 %2782, label %3391, label %2783

; <label>:2783                                    ; preds = %2780
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = and i32 %2785, 16
  %2787 = icmp eq i32 %2786, 0
  br i1 %2787, label %2986, label %2788

; <label>:2788                                    ; preds = %2783
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = add i32 %33, 388
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = add i32 %2793, 0
  %2795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2795, %dx.types.Handle %74, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2797 = extractvalue %dx.types.ResRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.ResRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.ResRet.f32 %2796, 2
  %2800 = extractvalue %dx.types.ResRet.f32 %2796, 3
  %2801 = and i32 %2790, 255
  %2802 = uitofp i32 %2801 to float
  %2803 = lshr i32 %2790, 8
  %2804 = and i32 %2803, 255
  %2805 = uitofp i32 %2804 to float
  %2806 = fmul fast float %2800, %2802
  %2807 = fadd fast float %2806, %2805
  %2808 = fmul fast float %2807, 0x3F70101000000000
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = and i32 %2810, 512
  %2812 = icmp eq i32 %2811, 0
  br i1 %2812, label %2821, label %2813

; <label>:2813                                    ; preds = %2788
  %2814 = add i32 %33, 472
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = add i32 %2816, 0
  %2818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2817, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2818, %dx.types.Handle %75, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 0
  br label %2821

; <label>:2821                                    ; preds = %2813, %2788
  %2822 = phi float [ %2820, %2813 ], [ 1.000000e+00, %2788 ]
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = and i32 %2824, 33554432
  %2826 = icmp eq i32 %2825, 0
  br i1 %2826, label %2933, label %2827

; <label>:2827                                    ; preds = %2821
  %2828 = add i32 %33, 272
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 65535
  %2832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2831)  ; LegacyF16ToF32(value)
  %2833 = lshr i32 %2830, 16
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = add i32 %33, 276
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = and i32 %2837, 65535
  %2839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2838)  ; LegacyF16ToF32(value)
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = lshr i32 %2841, 24
  %2843 = uitofp i32 %2842 to float
  %2844 = fmul fast float %2843, 0x3F70101020000000
  %2845 = and i32 %2841, 255
  %2846 = uitofp i32 %2845 to float
  %2847 = fmul fast float %2846, 0x3F70101020000000
  %2848 = lshr i32 %2841, 8
  %2849 = and i32 %2848, 255
  %2850 = uitofp i32 %2849 to float
  %2851 = fmul fast float %2850, 0x3F70101020000000
  %2852 = lshr i32 %2841, 16
  %2853 = and i32 %2852, 255
  %2854 = uitofp i32 %2853 to float
  %2855 = fmul fast float %2854, 0x3F70101020000000
  %2856 = add i32 %33, 268
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = lshr i32 %2858, 24
  %2860 = uitofp i32 %2859 to float
  %2861 = fmul fast float %2860, 0x3F70101020000000
  %2862 = and i32 %2858, 255
  %2863 = uitofp i32 %2862 to float
  %2864 = fmul fast float %2863, 0x3F70101020000000
  %2865 = lshr i32 %2858, 8
  %2866 = and i32 %2865, 255
  %2867 = uitofp i32 %2866 to float
  %2868 = fmul fast float %2867, 0x3F70101020000000
  %2869 = lshr i32 %2858, 16
  %2870 = and i32 %2869, 255
  %2871 = uitofp i32 %2870 to float
  %2872 = fmul fast float %2871, 0x3F70101020000000
  %2873 = bitcast float %2797 to i32
  %2874 = ashr i32 %2873, 1
  %2875 = sub nsw i32 1597463174, %2874
  %2876 = bitcast i32 %2875 to float
  %2877 = fmul fast float %2797, 5.000000e-01
  %2878 = fmul fast float %2876, %2876
  %2879 = fmul fast float %2878, %2877
  %2880 = fsub fast float 1.500000e+00, %2879
  %2881 = fmul fast float %2876, %2797
  %2882 = fmul fast float %2881, %2880
  %2883 = bitcast float %2798 to i32
  %2884 = ashr i32 %2883, 1
  %2885 = sub nsw i32 1597463174, %2884
  %2886 = bitcast i32 %2885 to float
  %2887 = fmul fast float %2798, 5.000000e-01
  %2888 = fmul fast float %2886, %2886
  %2889 = fmul fast float %2888, %2887
  %2890 = fsub fast float 1.500000e+00, %2889
  %2891 = fmul fast float %2886, %2798
  %2892 = fmul fast float %2891, %2890
  %2893 = bitcast float %2799 to i32
  %2894 = ashr i32 %2893, 1
  %2895 = sub nsw i32 1597463174, %2894
  %2896 = bitcast i32 %2895 to float
  %2897 = fmul fast float %2799, 5.000000e-01
  %2898 = fmul fast float %2896, %2896
  %2899 = fmul fast float %2898, %2897
  %2900 = fsub fast float 1.500000e+00, %2899
  %2901 = fmul fast float %2896, %2799
  %2902 = fmul fast float %2901, %2900
  %2903 = fsub fast float %2882, %2864
  %2904 = fsub fast float %2892, %2868
  %2905 = fsub fast float %2902, %2872
  %2906 = fmul fast float %2903, %2832
  %2907 = fmul fast float %2904, %2834
  %2908 = fmul fast float %2905, %2839
  %2909 = fadd fast float %2906, %2847
  %2910 = fadd fast float %2907, %2851
  %2911 = fadd fast float %2908, %2855
  %2912 = call float @dx.op.unary.f32(i32 7, float %2909)  ; Saturate(value)
  %2913 = call float @dx.op.unary.f32(i32 7, float %2910)  ; Saturate(value)
  %2914 = call float @dx.op.unary.f32(i32 7, float %2911)  ; Saturate(value)
  %2915 = fmul fast float %2912, %2912
  %2916 = fmul fast float %2913, %2913
  %2917 = fmul fast float %2914, %2914
  %2918 = fsub fast float %2915, %2797
  %2919 = fsub fast float %2916, %2798
  %2920 = fsub fast float %2917, %2799
  %2921 = fmul fast float %2918, %2822
  %2922 = fmul fast float %2919, %2822
  %2923 = fmul fast float %2920, %2822
  %2924 = fadd fast float %2921, %2797
  %2925 = fadd fast float %2922, %2798
  %2926 = fadd fast float %2923, %2799
  %2927 = fadd fast float %2844, %2808
  %2928 = fsub fast float %2927, %2861
  %2929 = call float @dx.op.unary.f32(i32 7, float %2928)  ; Saturate(value)
  %2930 = fsub fast float %2929, %2808
  %2931 = fmul fast float %2930, %2822
  %2932 = fadd fast float %2931, %2808
  br label %2986

; <label>:2933                                    ; preds = %2821
  %2934 = and i32 %2824, 134217728
  %2935 = icmp eq i32 %2934, 0
  br i1 %2935, label %2970, label %2936

; <label>:2936                                    ; preds = %2933
  %2937 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2938 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2939 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2940 = fadd fast float %2937, -5.000000e-01
  %2941 = fadd fast float %2938, -5.000000e-01
  %2942 = fadd fast float %2939, -5.000000e-01
  %2943 = fmul fast float %2940, %2822
  %2944 = fmul fast float %2941, %2822
  %2945 = fmul fast float %2942, %2822
  %2946 = fadd fast float %2943, 5.000000e-01
  %2947 = fadd fast float %2944, 5.000000e-01
  %2948 = fadd fast float %2945, 5.000000e-01
  %2949 = call float @dx.op.unary.f32(i32 24, float %2797)  ; Sqrt(value)
  %2950 = call float @dx.op.unary.f32(i32 24, float %2798)  ; Sqrt(value)
  %2951 = call float @dx.op.unary.f32(i32 24, float %2799)  ; Sqrt(value)
  %2952 = fmul fast float %2946, 2.000000e+00
  %2953 = fsub fast float 1.000000e+00, %2952
  %2954 = fmul fast float %2953, %2949
  %2955 = fadd fast float %2954, %2952
  %2956 = fmul fast float %2955, %2949
  %2957 = fmul fast float %2947, 2.000000e+00
  %2958 = fsub fast float 1.000000e+00, %2957
  %2959 = fmul fast float %2958, %2950
  %2960 = fadd fast float %2959, %2957
  %2961 = fmul fast float %2960, %2950
  %2962 = fmul fast float %2948, 2.000000e+00
  %2963 = fsub fast float 1.000000e+00, %2962
  %2964 = fmul fast float %2963, %2951
  %2965 = fadd fast float %2964, %2962
  %2966 = fmul fast float %2965, %2951
  %2967 = fmul fast float %2956, %2956
  %2968 = fmul fast float %2961, %2961
  %2969 = fmul fast float %2966, %2966
  br label %2986

; <label>:2970                                    ; preds = %2933
  %2971 = fmul fast float %372, %372
  %2972 = fmul fast float %376, %376
  %2973 = fmul fast float %380, %380
  %2974 = fadd fast float %2971, -1.000000e+00
  %2975 = fadd fast float %2972, -1.000000e+00
  %2976 = fadd fast float %2973, -1.000000e+00
  %2977 = fmul fast float %2822, %2974
  %2978 = fmul fast float %2822, %2975
  %2979 = fmul fast float %2822, %2976
  %2980 = fadd fast float %2977, 1.000000e+00
  %2981 = fadd fast float %2978, 1.000000e+00
  %2982 = fadd fast float %2979, 1.000000e+00
  %2983 = fmul fast float %2980, %2797
  %2984 = fmul fast float %2981, %2798
  %2985 = fmul fast float %2982, %2799
  br label %2986

; <label>:2986                                    ; preds = %2970, %2936, %2827, %2783
  %2987 = phi float [ %2932, %2827 ], [ %2808, %2936 ], [ %2808, %2970 ], [ 0x3FA23C0BE0000000, %2783 ]
  %2988 = phi float [ %2924, %2827 ], [ %2967, %2936 ], [ %2983, %2970 ], [ 1.000000e+00, %2783 ]
  %2989 = phi float [ %2925, %2827 ], [ %2968, %2936 ], [ %2984, %2970 ], [ 1.000000e+00, %2783 ]
  %2990 = phi float [ %2926, %2827 ], [ %2969, %2936 ], [ %2985, %2970 ], [ 1.000000e+00, %2783 ]
  %2991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2992 = extractvalue %dx.types.CBufRet.i32 %2991, 1
  %2993 = and i32 %2992, 1
  %2994 = icmp ne i32 %2993, 0
  %2995 = add i32 %33, 356
  %2996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.i32 %2996, 0
  %2998 = and i32 %2997, 32
  %2999 = icmp ne i32 %2998, 0
  %3000 = and i1 %2994, %2999
  %3001 = select i1 %3000, float 1.000000e+00, float %2988
  %3002 = select i1 %3000, float 0x3FD3333340000000, float %2989
  %3003 = select i1 %3000, float 0x3FD3333340000000, float %2990
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = and i32 %3005, 32
  %3007 = icmp eq i32 %3006, 0
  br i1 %3007, label %3080, label %3008

; <label>:3008                                    ; preds = %2986
  %3009 = add i32 %33, 140
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = add i32 %33, 404
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = add i32 %3014, 0
  %3016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3016, %dx.types.Handle %74, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3018 = extractvalue %dx.types.ResRet.f32 %3017, 0
  %3019 = extractvalue %dx.types.ResRet.f32 %3017, 1
  %3020 = extractvalue %dx.types.ResRet.f32 %3017, 2
  %3021 = extractvalue %dx.types.ResRet.f32 %3017, 3
  %3022 = and i32 %3011, 255
  %3023 = uitofp i32 %3022 to float
  %3024 = lshr i32 %3011, 8
  %3025 = and i32 %3024, 255
  %3026 = uitofp i32 %3025 to float
  %3027 = lshr i32 %3011, 16
  %3028 = and i32 %3027, 255
  %3029 = uitofp i32 %3028 to float
  %3030 = fmul fast float %3029, 0x3F70101000000000
  %3031 = fmul fast float %3018, %3023
  %3032 = fadd fast float %3031, %3026
  %3033 = fmul fast float %3032, 0x3F70101000000000
  %3034 = fadd fast float %3019, -5.000000e-01
  %3035 = fadd fast float %3021, -5.000000e-01
  %3036 = fmul fast float %3034, %3030
  %3037 = fmul fast float %3035, %3030
  %3038 = fadd fast float %3036, 5.000000e-01
  %3039 = fadd fast float %3037, 5.000000e-01
  %3040 = fmul fast float %3038, 2.000000e+00
  %3041 = fadd fast float %3040, -1.000000e+00
  %3042 = fmul fast float %3039, 2.000000e+00
  %3043 = fadd fast float %3042, -1.000000e+00
  %3044 = fadd fast float %3041, %3043
  %3045 = fmul fast float %3044, 5.000000e-01
  %3046 = fsub fast float %3041, %3043
  %3047 = fmul fast float %3046, 5.000000e-01
  %3048 = call float @dx.op.unary.f32(i32 6, float %3045)  ; FAbs(value)
  %3049 = fsub fast float 1.000000e+00, %3048
  %3050 = call float @dx.op.unary.f32(i32 6, float %3047)  ; FAbs(value)
  %3051 = fsub fast float %3049, %3050
  %3052 = call float @dx.op.dot3.f32(i32 55, float %3045, float %3047, float %3051, float %3045, float %3047, float %3051)  ; Dot3(ax,ay,az,bx,by,bz)
  %3053 = call float @dx.op.unary.f32(i32 25, float %3052)  ; Rsqrt(value)
  %3054 = fmul fast float %3045, %3053
  %3055 = fmul fast float %3047, %3053
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = and i32 %3057, 67108864
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3076, label %3060

; <label>:3060                                    ; preds = %3008
  %3061 = add i32 %33, 328
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 65535
  %3065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3064)  ; LegacyF16ToF32(value)
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 65535
  %3069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3068)  ; LegacyF16ToF32(value)
  %3070 = lshr i32 %3063, 16
  %3071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3070)  ; LegacyF16ToF32(value)
  %3072 = fsub fast float %3033, %3071
  %3073 = fmul fast float %3072, %3065
  %3074 = fadd fast float %3073, %3069
  %3075 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  br label %3076

; <label>:3076                                    ; preds = %3060, %3008
  %3077 = phi float [ %3075, %3060 ], [ %3033, %3008 ]
  %3078 = call float @dx.op.dot2.f32(i32 54, float %3054, float %3055, float %2612, float %2613)  ; Dot2(ax,ay,bx,by)
  %3079 = call float @dx.op.dot2.f32(i32 54, float %3054, float %3055, float %2614, float %2615)  ; Dot2(ax,ay,bx,by)
  br label %3080

; <label>:3080                                    ; preds = %3076, %2986
  %3081 = phi float [ %3077, %3076 ], [ 0x3FD6666660000000, %2986 ]
  %3082 = phi float [ %3078, %3076 ], [ 0.000000e+00, %2986 ]
  %3083 = phi float [ %3079, %3076 ], [ 0.000000e+00, %2986 ]
  %3084 = phi float [ %3020, %3076 ], [ 1.000000e+00, %2986 ]
  %3085 = add i32 %33, 208
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3085, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = lshr i32 %3087, 22
  %3089 = shl nuw nsw i32 %3088, 5
  %3090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3089)  ; LegacyF16ToF32(value)
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = and i32 %3092, 64
  %3094 = icmp eq i32 %3093, 0
  br i1 %3094, label %3128, label %3095

; <label>:3095                                    ; preds = %3080
  %3096 = add i32 %33, 420
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = add i32 %3098, 0
  %3100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3099, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 131072
  %3104 = icmp eq i32 %3103, 0
  %3105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3100, %dx.types.Handle %74, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3106 = extractvalue %dx.types.ResRet.f32 %3105, 0
  %3107 = extractvalue %dx.types.ResRet.f32 %3105, 1
  %3108 = extractvalue %dx.types.ResRet.f32 %3105, 2
  %3109 = fmul fast float %3106, %360
  %3110 = fmul fast float %3107, %363
  %3111 = fmul fast float %3108, %366
  br i1 %3104, label %3118, label %3112

; <label>:3112                                    ; preds = %3095
  %3113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3114 = extractvalue %dx.types.CBufRet.f32 %3113, 0
  %3115 = fmul fast float %3114, %3109
  %3116 = fmul fast float %3114, %3110
  %3117 = fmul fast float %3114, %3111
  br label %3118

; <label>:3118                                    ; preds = %3112, %3095
  %3119 = phi float [ %3115, %3112 ], [ %3109, %3095 ]
  %3120 = phi float [ %3116, %3112 ], [ %3110, %3095 ]
  %3121 = phi float [ %3117, %3112 ], [ %3111, %3095 ]
  %3122 = fmul fast float %3119, %3090
  %3123 = select i1 %217, float %3122, float %3119
  %3124 = call float @dx.op.dot3.f32(i32 55, float %3123, float %3120, float %3121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3125 = select i1 %217, float 0.000000e+00, float %3119
  %3126 = select i1 %217, float %3124, float %3120
  %3127 = select i1 %217, float 0.000000e+00, float %3121
  br label %3128

; <label>:3128                                    ; preds = %3118, %3080
  %3129 = phi float [ %3125, %3118 ], [ 0.000000e+00, %3080 ]
  %3130 = phi float [ %3126, %3118 ], [ 0.000000e+00, %3080 ]
  %3131 = phi float [ %3127, %3118 ], [ 0.000000e+00, %3080 ]
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = and i32 %3133, 30720
  %3135 = icmp eq i32 %3134, 0
  br i1 %3135, label %3175, label %3136

; <label>:3136                                    ; preds = %3128
  %3137 = add i32 %33, 488
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = add i32 %3139, 0
  %3141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3141, %dx.types.Handle %75, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3143 = extractvalue %dx.types.ResRet.f32 %3142, 2
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = and i32 %3145, 1048576
  %3147 = icmp ne i32 %3146, 0
  %3148 = select i1 %3147, float 1.000000e+00, float %3143
  %3149 = and i32 %3145, 16384
  %3150 = icmp eq i32 %3149, 0
  br i1 %3150, label %3161, label %3151

; <label>:3151                                    ; preds = %3136
  %3152 = extractvalue %dx.types.ResRet.f32 %3142, 0
  %3153 = add i32 %33, 144
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = lshr i32 %3155, 24
  %3157 = uitofp i32 %3156 to float
  %3158 = fmul fast float %3152, 0x3F70101020000000
  %3159 = select i1 %3147, float 0x3F70101020000000, float %3158
  %3160 = fmul fast float %3159, %3157
  br label %3161

; <label>:3161                                    ; preds = %3151, %3136
  %3162 = phi float [ %3160, %3151 ], [ 0.000000e+00, %3136 ]
  %3163 = and i32 %3145, 4096
  %3164 = icmp eq i32 %3163, 0
  br i1 %3164, label %3175, label %3165

; <label>:3165                                    ; preds = %3161
  %3166 = add i32 %33, 212
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 65535
  %3170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3169)  ; LegacyF16ToF32(value)
  %3171 = lshr i32 %3168, 16
  %3172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3171)  ; LegacyF16ToF32(value)
  %3173 = fmul fast float %3170, %3148
  %3174 = fadd fast float %3173, %3172
  br label %3175

; <label>:3175                                    ; preds = %3165, %3161, %3128
  %3176 = phi float [ %3162, %3165 ], [ %3162, %3161 ], [ 0.000000e+00, %3128 ]
  %3177 = phi float [ %3174, %3165 ], [ 0.000000e+00, %3161 ], [ 0.000000e+00, %3128 ]
  %3178 = add i32 %33, 144
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = and i32 %3180, 255
  %3182 = uitofp i32 %3181 to float
  %3183 = lshr i32 %3180, 8
  %3184 = and i32 %3183, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3002, float %3003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = fmul fast float %3185, %3186
  %3188 = fadd fast float %3187, %3182
  %3189 = fmul fast float %3188, 0x3F70101020000000
  %3190 = call float @dx.op.unary.f32(i32 7, float %3189)  ; Saturate(value)
  br i1 %2600, label %3191, label %3199

; <label>:3191                                    ; preds = %3175
  %3192 = fsub fast float 1.000000e+00, %2781
  %3193 = fmul fast float %3192, %2587
  %3194 = fmul fast float %3192, %2588
  %3195 = fmul fast float %3192, %2589
  %3196 = fmul fast float %3192, %2590
  %3197 = fmul fast float %3192, %2591
  %3198 = fmul fast float %3192, %2592
  br label %3199

; <label>:3199                                    ; preds = %3191, %3175
  %3200 = phi float [ %3193, %3191 ], [ %2587, %3175 ]
  %3201 = phi float [ %3194, %3191 ], [ %2588, %3175 ]
  %3202 = phi float [ %3195, %3191 ], [ %2589, %3175 ]
  %3203 = phi float [ %3196, %3191 ], [ %2590, %3175 ]
  %3204 = phi float [ %3197, %3191 ], [ %2591, %3175 ]
  %3205 = phi float [ %3198, %3191 ], [ %2592, %3175 ]
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = and i32 %3207, 3
  %3209 = icmp eq i32 %3208, 3
  br i1 %3209, label %3288, label %3210

; <label>:3210                                    ; preds = %3199
  %3211 = and i32 %3207, 16
  %3212 = icmp ne i32 %3211, 0
  %3213 = select i1 %3212, float %2781, float 0.000000e+00
  %3214 = icmp eq i32 %3208, 0
  br i1 %3214, label %3215, label %3243

; <label>:3215                                    ; preds = %3210
  %3216 = and i32 %3207, 64
  %3217 = icmp ne i32 %3216, 0
  %3218 = select i1 %3217, float %2781, float 0.000000e+00
  %3219 = fsub fast float %3001, %3200
  %3220 = fsub fast float %3002, %3201
  %3221 = fsub fast float %3003, %3202
  %3222 = fmul fast float %3213, %3219
  %3223 = fmul fast float %3213, %3220
  %3224 = fmul fast float %3213, %3221
  %3225 = fadd fast float %3222, %3200
  %3226 = fadd fast float %3223, %3201
  %3227 = fadd fast float %3224, %3202
  %3228 = fsub fast float %2987, %2593
  %3229 = fmul fast float %3213, %3228
  %3230 = fadd fast float %3229, %2593
  %3231 = fsub fast float %3129, %3203
  %3232 = fsub fast float %3130, %3204
  %3233 = fsub fast float %3131, %3205
  %3234 = fmul fast float %3218, %3231
  %3235 = fmul fast float %3218, %3232
  %3236 = fmul fast float %3218, %3233
  %3237 = fadd fast float %3234, %3203
  %3238 = fadd fast float %3235, %3204
  %3239 = fadd fast float %3236, %3205
  %3240 = fsub fast float %3190, %2598
  %3241 = fmul fast float %3213, %3240
  %3242 = fadd fast float %3241, %2598
  br label %3288

; <label>:3243                                    ; preds = %3210
  %3244 = icmp eq i32 %3208, 1
  br i1 %3244, label %3245, label %3258

; <label>:3245                                    ; preds = %3243
  %3246 = fadd fast float %3001, -1.000000e+00
  %3247 = fadd fast float %3002, -1.000000e+00
  %3248 = fadd fast float %3003, -1.000000e+00
  %3249 = fmul fast float %3213, %3246
  %3250 = fmul fast float %3213, %3247
  %3251 = fmul fast float %3213, %3248
  %3252 = fadd fast float %3249, 1.000000e+00
  %3253 = fadd fast float %3250, 1.000000e+00
  %3254 = fadd fast float %3251, 1.000000e+00
  %3255 = fmul fast float %3252, %3200
  %3256 = fmul fast float %3253, %3201
  %3257 = fmul fast float %3254, %3202
  br label %3288

; <label>:3258                                    ; preds = %3243
  %3259 = icmp eq i32 %3208, 2
  br i1 %3259, label %3260, label %3288

; <label>:3260                                    ; preds = %3258
  %3261 = call float @dx.op.unary.f32(i32 24, float %3001)  ; Sqrt(value)
  %3262 = call float @dx.op.unary.f32(i32 24, float %3002)  ; Sqrt(value)
  %3263 = call float @dx.op.unary.f32(i32 24, float %3003)  ; Sqrt(value)
  %3264 = fadd fast float %3261, -5.000000e-01
  %3265 = fadd fast float %3262, -5.000000e-01
  %3266 = fadd fast float %3263, -5.000000e-01
  %3267 = fmul fast float %3264, %3213
  %3268 = fmul fast float %3265, %3213
  %3269 = fmul fast float %3266, %3213
  %3270 = fadd fast float %3267, 5.000000e-01
  %3271 = fadd fast float %3268, 5.000000e-01
  %3272 = fadd fast float %3269, 5.000000e-01
  %3273 = fmul fast float %3270, 2.000000e+00
  %3274 = fsub fast float 1.000000e+00, %3273
  %3275 = fmul fast float %3274, %3200
  %3276 = fadd fast float %3275, %3273
  %3277 = fmul fast float %3276, %3200
  %3278 = fmul fast float %3271, 2.000000e+00
  %3279 = fsub fast float 1.000000e+00, %3278
  %3280 = fmul fast float %3279, %3201
  %3281 = fadd fast float %3280, %3278
  %3282 = fmul fast float %3281, %3201
  %3283 = fmul fast float %3272, 2.000000e+00
  %3284 = fsub fast float 1.000000e+00, %3283
  %3285 = fmul fast float %3284, %3202
  %3286 = fadd fast float %3285, %3283
  %3287 = fmul fast float %3286, %3202
  br label %3288

; <label>:3288                                    ; preds = %3260, %3258, %3245, %3215, %3199
  %3289 = phi float [ %3200, %3199 ], [ %3277, %3260 ], [ %3200, %3258 ], [ %3255, %3245 ], [ %3225, %3215 ]
  %3290 = phi float [ %3201, %3199 ], [ %3282, %3260 ], [ %3201, %3258 ], [ %3256, %3245 ], [ %3226, %3215 ]
  %3291 = phi float [ %3202, %3199 ], [ %3287, %3260 ], [ %3202, %3258 ], [ %3257, %3245 ], [ %3227, %3215 ]
  %3292 = phi float [ %3203, %3199 ], [ %3203, %3260 ], [ %3203, %3258 ], [ %3203, %3245 ], [ %3237, %3215 ]
  %3293 = phi float [ %3204, %3199 ], [ %3204, %3260 ], [ %3204, %3258 ], [ %3204, %3245 ], [ %3238, %3215 ]
  %3294 = phi float [ %3205, %3199 ], [ %3205, %3260 ], [ %3205, %3258 ], [ %3205, %3245 ], [ %3239, %3215 ]
  %3295 = phi float [ %2593, %3199 ], [ %2593, %3260 ], [ %2593, %3258 ], [ %2593, %3245 ], [ %3230, %3215 ]
  %3296 = phi float [ %2598, %3199 ], [ %2598, %3260 ], [ %2598, %3258 ], [ %2598, %3245 ], [ %3242, %3215 ]
  %3297 = and i32 %3207, 12
  %3298 = icmp eq i32 %3297, 12
  br i1 %3298, label %3391, label %3299

; <label>:3299                                    ; preds = %3288
  %3300 = and i32 %3207, 2097184
  %3301 = icmp eq i32 %3300, 2097184
  %3302 = select i1 %3301, float %2781, float 0.000000e+00
  %3303 = and i32 %3207, 4194336
  %3304 = icmp eq i32 %3303, 4194336
  %3305 = select i1 %3304, float %2781, float 0.000000e+00
  %3306 = and i32 %3207, 8388640
  %3307 = icmp eq i32 %3306, 8388640
  %3308 = select i1 %3307, float %2781, float 0.000000e+00
  %3309 = and i32 %3207, 4096
  %3310 = icmp ne i32 %3309, 0
  %3311 = select i1 %3310, float %2781, float 0.000000e+00
  %3312 = and i32 %3207, 16384
  %3313 = icmp ne i32 %3312, 0
  %3314 = select i1 %3313, float %2781, float 0.000000e+00
  %3315 = icmp eq i32 %3297, 0
  br i1 %3315, label %3316, label %3335

; <label>:3316                                    ; preds = %3299
  %3317 = fsub fast float %3082, %2585
  %3318 = fsub fast float %3083, %2586
  %3319 = fmul fast float %3302, %3317
  %3320 = fmul fast float %3302, %3318
  %3321 = fadd fast float %3319, %2585
  %3322 = fadd fast float %3320, %2586
  %3323 = fsub fast float %3084, %2595
  %3324 = fmul fast float %3305, %3323
  %3325 = fadd fast float %3324, %2595
  %3326 = fsub fast float %3081, %2594
  %3327 = fmul fast float %3308, %3326
  %3328 = fadd fast float %3327, %2594
  %3329 = fsub fast float %3177, %2596
  %3330 = fmul fast float %3311, %3329
  %3331 = fadd fast float %3330, %2596
  %3332 = fsub fast float %3176, %2597
  %3333 = fmul fast float %3314, %3332
  %3334 = fadd fast float %3333, %2597
  br label %3391

; <label>:3335                                    ; preds = %3299
  %3336 = icmp eq i32 %3297, 4
  br i1 %3336, label %3337, label %3373

; <label>:3337                                    ; preds = %3335
  %3338 = fmul fast float %3302, %3082
  %3339 = fmul fast float %3302, %3083
  %3340 = fadd fast float %3338, %2585
  %3341 = fadd fast float %3339, %2586
  %3342 = call float @dx.op.binary.f32(i32 36, float %2595, float %3084)  ; FMin(a,b)
  %3343 = fsub fast float %3342, %2595
  %3344 = fmul fast float %3343, %3305
  %3345 = fadd fast float %3344, %2595
  %3346 = fadd fast float %3081, %2594
  %3347 = fmul fast float %3346, 0x3FF337FAE0000000
  %3348 = fmul fast float %2594, %2594
  %3349 = fmul fast float %3081, %3081
  %3350 = fadd fast float %3349, %3348
  %3351 = fmul fast float %3350, 0x3FE5152B00000000
  %3352 = fmul fast float %2594, 0xBFCC1F85E0000000
  %3353 = fmul fast float %3352, %3081
  %3354 = fadd fast float %3353, 0xBFE1363700000000
  %3355 = fadd fast float %3354, %3347
  %3356 = fsub fast float %3355, %3351
  %3357 = fmul fast float %3346, 0x3FBA6F0D00000000
  %3358 = fmul fast float %3350, 0x3FD0432880000000
  %3359 = fmul fast float %2594, 0xBFEF110800000000
  %3360 = fmul fast float %3359, %3081
  %3361 = fadd fast float %3360, 1.000000e+00
  %3362 = fsub fast float %3361, %3357
  %3363 = fadd fast float %3362, %3358
  %3364 = fdiv fast float %3356, %3363
  %3365 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3366 = fsub fast float %3365, %2594
  %3367 = fmul fast float %3366, %3308
  %3368 = fadd fast float %3367, %2594
  %3369 = fmul fast float %3311, %3177
  %3370 = fadd fast float %3369, %2596
  %3371 = fmul fast float %3314, %3176
  %3372 = fadd fast float %3371, %2597
  br label %3391

; <label>:3373                                    ; preds = %3335
  %3374 = icmp eq i32 %3297, 8
  br i1 %3374, label %3375, label %3391

; <label>:3375                                    ; preds = %3373
  %3376 = fmul fast float %3302, %3082
  %3377 = fmul fast float %3302, %3083
  %3378 = fadd fast float %3376, %2585
  %3379 = fadd fast float %3377, %2586
  %3380 = call float @dx.op.binary.f32(i32 36, float %2595, float %3084)  ; FMin(a,b)
  %3381 = fsub fast float %3380, %2595
  %3382 = fmul fast float %3381, %3305
  %3383 = fadd fast float %3382, %2595
  %3384 = fsub fast float %3081, %2594
  %3385 = fmul fast float %3308, %3384
  %3386 = fadd fast float %3385, %2594
  %3387 = fmul fast float %3311, %3177
  %3388 = fadd fast float %3387, %2596
  %3389 = fmul fast float %3314, %3176
  %3390 = fadd fast float %3389, %2597
  br label %3391

; <label>:3391                                    ; preds = %3375, %3373, %3337, %3316, %3288, %2780, %2599, %2584
  %3392 = phi float [ %2585, %3288 ], [ %2585, %2780 ], [ %2585, %2584 ], [ %2585, %2599 ], [ %3321, %3316 ], [ %3340, %3337 ], [ %2585, %3373 ], [ %3378, %3375 ]
  %3393 = phi float [ %2586, %3288 ], [ %2586, %2780 ], [ %2586, %2584 ], [ %2586, %2599 ], [ %3322, %3316 ], [ %3341, %3337 ], [ %2586, %3373 ], [ %3379, %3375 ]
  %3394 = phi float [ %3289, %3288 ], [ %2587, %2780 ], [ %2587, %2584 ], [ %2587, %2599 ], [ %3289, %3316 ], [ %3289, %3337 ], [ %3289, %3373 ], [ %3289, %3375 ]
  %3395 = phi float [ %3290, %3288 ], [ %2588, %2780 ], [ %2588, %2584 ], [ %2588, %2599 ], [ %3290, %3316 ], [ %3290, %3337 ], [ %3290, %3373 ], [ %3290, %3375 ]
  %3396 = phi float [ %3291, %3288 ], [ %2589, %2780 ], [ %2589, %2584 ], [ %2589, %2599 ], [ %3291, %3316 ], [ %3291, %3337 ], [ %3291, %3373 ], [ %3291, %3375 ]
  %3397 = phi float [ %3292, %3288 ], [ %2590, %2780 ], [ %2590, %2584 ], [ %2590, %2599 ], [ %3292, %3316 ], [ %3292, %3337 ], [ %3292, %3373 ], [ %3292, %3375 ]
  %3398 = phi float [ %3293, %3288 ], [ %2591, %2780 ], [ %2591, %2584 ], [ %2591, %2599 ], [ %3293, %3316 ], [ %3293, %3337 ], [ %3293, %3373 ], [ %3293, %3375 ]
  %3399 = phi float [ %3294, %3288 ], [ %2592, %2780 ], [ %2592, %2584 ], [ %2592, %2599 ], [ %3294, %3316 ], [ %3294, %3337 ], [ %3294, %3373 ], [ %3294, %3375 ]
  %3400 = phi float [ %3295, %3288 ], [ %2593, %2780 ], [ %2593, %2584 ], [ %2593, %2599 ], [ %3295, %3316 ], [ %3295, %3337 ], [ %3295, %3373 ], [ %3295, %3375 ]
  %3401 = phi float [ %2594, %3288 ], [ %2594, %2780 ], [ %2594, %2584 ], [ %2594, %2599 ], [ %3328, %3316 ], [ %3368, %3337 ], [ %2594, %3373 ], [ %3386, %3375 ]
  %3402 = phi float [ %2595, %3288 ], [ %2595, %2780 ], [ %2595, %2584 ], [ %2595, %2599 ], [ %3325, %3316 ], [ %3345, %3337 ], [ %2595, %3373 ], [ %3383, %3375 ]
  %3403 = phi float [ %2596, %3288 ], [ %2596, %2780 ], [ %2596, %2584 ], [ %2596, %2599 ], [ %3331, %3316 ], [ %3370, %3337 ], [ %2596, %3373 ], [ %3388, %3375 ]
  %3404 = phi float [ %2597, %3288 ], [ %2597, %2780 ], [ %2597, %2584 ], [ %2597, %2599 ], [ %3334, %3316 ], [ %3372, %3337 ], [ %2597, %3373 ], [ %3390, %3375 ]
  %3405 = phi float [ %3296, %3288 ], [ %2598, %2780 ], [ %2598, %2584 ], [ %2598, %2599 ], [ %3296, %3316 ], [ %3296, %3337 ], [ %3296, %3373 ], [ %3296, %3375 ]
  %3406 = add i32 %33, 360
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = extractvalue %dx.types.ResRet.i32 %3407, 1
  %3410 = bitcast i32 %3408 to float
  %3411 = bitcast i32 %3409 to float
  %3412 = fcmp fast oge float %3410, 0.000000e+00
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 0
  %3415 = select i1 %3412, float %3410, float %3414
  %3416 = fadd fast float %3415, %179
  %3417 = fmul fast float %3411, %180
  %3418 = add i32 %33, 456
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = add i32 %3420, 0
  %3422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3422, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = fmul fast float %3417, %3424
  %3426 = fadd fast float %3416, %3425
  %3427 = and i32 %171, 65535
  %3428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3427)  ; LegacyF16ToF32(value)
  %3429 = lshr i32 %171, 16
  %3430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3429)  ; LegacyF16ToF32(value)
  %3431 = and i32 %172, 65535
  %3432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3431)  ; LegacyF16ToF32(value)
  %3433 = fmul fast float %3428, %3394
  %3434 = fmul fast float %3430, %3395
  %3435 = fmul fast float %3432, %3396
  %3436 = shl i32 %173, 4
  %3437 = and i32 %3436, 32752
  %3438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3437)  ; LegacyF16ToF32(value)
  %3439 = lshr i32 %173, 7
  %3440 = and i32 %3439, 32752
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = lshr i32 %173, 22
  %3443 = shl nuw nsw i32 %3442, 5
  %3444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3443)  ; LegacyF16ToF32(value)
  %3445 = and i32 %174, 65535
  %3446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3445)  ; LegacyF16ToF32(value)
  %3447 = fmul fast float %3438, %3397
  %3448 = fmul fast float %3447, %3446
  %3449 = fmul fast float %3441, %3398
  %3450 = fmul fast float %3449, %3446
  %3451 = fmul fast float %3444, %3399
  %3452 = fmul fast float %3451, %3446
  %3453 = call float @dx.op.dot2.f32(i32 54, float %3392, float %3393, float %3392, float %3393)  ; Dot2(ax,ay,bx,by)
  %3454 = fmul fast float %3453, 0x3FE3333340000000
  %3455 = fsub fast float 1.000000e+00, %3454
  %3456 = call float @dx.op.dot3.f32(i32 55, float %3392, float %3393, float %3455, float %3392, float %3393, float %3455)  ; Dot3(ax,ay,az,bx,by,bz)
  %3457 = call float @dx.op.unary.f32(i32 25, float %3456)  ; Rsqrt(value)
  %3458 = fmul fast float %3457, %3392
  %3459 = fmul fast float %3457, %3393
  %3460 = fmul fast float %3455, %3457
  %3461 = fmul fast float %3460, %85
  %3462 = fmul fast float %3460, %86
  %3463 = fmul fast float %3460, %87
  %3464 = fmul fast float %3458, %59
  %3465 = fmul fast float %3458, %60
  %3466 = fmul fast float %3458, %61
  %3467 = fadd fast float %3461, %3464
  %3468 = fadd fast float %3462, %3465
  %3469 = fadd fast float %3463, %3466
  %3470 = fmul fast float %97, %3459
  %3471 = fmul fast float %98, %3459
  %3472 = fmul fast float %99, %3459
  %3473 = fadd fast float %3467, %3470
  %3474 = fadd fast float %3468, %3471
  %3475 = fadd fast float %3469, %3472
  %3476 = call float @dx.op.dot3.f32(i32 55, float %3473, float %3474, float %3475, float %3473, float %3474, float %3475)  ; Dot3(ax,ay,az,bx,by,bz)
  %3477 = call float @dx.op.unary.f32(i32 25, float %3476)  ; Rsqrt(value)
  %3478 = fmul fast float %3473, %3477
  %3479 = fmul fast float %3474, %3477
  %3480 = fmul fast float %3475, %3477
  %3481 = icmp eq i32 %35, 65535
  br i1 %3481, label %3996, label %3482

; <label>:3482                                    ; preds = %3391
  %3483 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3484 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3485 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3486 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3487 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3488 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3489 = fadd fast float %3483, %36
  %3490 = fadd fast float %3484, %37
  %3491 = fadd fast float %3485, %38
  %3492 = fadd fast float %3486, %36
  %3493 = fadd fast float %3487, %37
  %3494 = fadd fast float %3488, %38
  %3495 = mul i32 %35, 48
  %3496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = extractvalue %dx.types.ResRet.f32 %3496, 1
  %3499 = extractvalue %dx.types.ResRet.f32 %3496, 2
  %3500 = add i32 %3495, 16
  %3501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.ResRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.ResRet.f32 %3501, 2
  %3505 = add i32 %3495, 32
  %3506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3510 = extractvalue %dx.types.ResRet.f32 %3506, 3
  %3511 = bitcast float %3510 to i32
  %3512 = fmul fast float %3497, %36
  %3513 = fmul fast float %3498, %37
  %3514 = fmul fast float %3499, %38
  %3515 = fsub fast float %3512, %3502
  %3516 = fsub fast float %3513, %3503
  %3517 = fsub fast float %3514, %3504
  %3518 = call float @dx.op.unary.f32(i32 7, float %3515)  ; Saturate(value)
  %3519 = call float @dx.op.unary.f32(i32 7, float %3516)  ; Saturate(value)
  %3520 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3521 = fmul fast float %3518, %3507
  %3522 = fmul fast float %3519, %3508
  %3523 = fmul fast float %3520, %3509
  %3524 = fadd fast float %3507, -1.000000e+00
  %3525 = fadd fast float %3508, -1.000000e+00
  %3526 = fadd fast float %3509, -1.000000e+00
  %3527 = call float @dx.op.unary.f32(i32 27, float %3521)  ; Round_ni(value)
  %3528 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3529 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3530 = call float @dx.op.binary.f32(i32 36, float %3527, float %3524)  ; FMin(a,b)
  %3531 = call float @dx.op.binary.f32(i32 36, float %3528, float %3525)  ; FMin(a,b)
  %3532 = call float @dx.op.binary.f32(i32 36, float %3529, float %3526)  ; FMin(a,b)
  %3533 = fmul fast float %3532, %3508
  %3534 = fadd fast float %3533, %3531
  %3535 = fmul fast float %3534, %3507
  %3536 = fadd fast float %3535, %3530
  %3537 = fptosi float %3536 to i32
  %3538 = add nsw i32 %3537, %3511
  %3539 = shl nsw i32 %3538, 2
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = lshr i32 %3541, 16
  %3543 = icmp eq i32 %3542, 0
  br i1 %3543, label %3965, label %3544

; <label>:3544                                    ; preds = %3482
  br label %3545

; <label>:3545                                    ; preds = %3666, %3544
  %3546 = phi i32 [ %3568, %3666 ], [ %3542, %3544 ]
  %3547 = phi float [ %3667, %3666 ], [ 0.000000e+00, %3544 ]
  %3548 = phi float [ %3668, %3666 ], [ %3426, %3544 ]
  %3549 = phi float [ %3669, %3666 ], [ %3405, %3544 ]
  %3550 = phi float [ %3670, %3666 ], [ %3404, %3544 ]
  %3551 = phi float [ %3671, %3666 ], [ %3403, %3544 ]
  %3552 = phi float [ %3672, %3666 ], [ %3448, %3544 ]
  %3553 = phi float [ %3673, %3666 ], [ %3450, %3544 ]
  %3554 = phi float [ %3674, %3666 ], [ %3452, %3544 ]
  %3555 = phi float [ %3675, %3666 ], [ %3478, %3544 ]
  %3556 = phi float [ %3676, %3666 ], [ %3479, %3544 ]
  %3557 = phi float [ %3677, %3666 ], [ %3480, %3544 ]
  %3558 = phi float [ %3678, %3666 ], [ %3402, %3544 ]
  %3559 = phi float [ %3679, %3666 ], [ %3401, %3544 ]
  %3560 = phi float [ %3680, %3666 ], [ 0.000000e+00, %3544 ]
  %3561 = phi float [ %3681, %3666 ], [ %3400, %3544 ]
  %3562 = phi float [ %3682, %3666 ], [ %3433, %3544 ]
  %3563 = phi float [ %3683, %3666 ], [ %3434, %3544 ]
  %3564 = phi float [ %3684, %3666 ], [ %3435, %3544 ]
  %3565 = shl nuw nsw i32 %3546, 2
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = lshr i32 %3567, 16
  %3569 = shl i32 %3567, 8
  %3570 = and i32 %3569, 16776960
  %3571 = or i32 %3570, 48
  %3572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = extractvalue %dx.types.ResRet.f32 %3572, 1
  %3575 = extractvalue %dx.types.ResRet.f32 %3572, 2
  %3576 = or i32 %3570, 64
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.i32 %3577, 1
  %3580 = or i32 %3570, 80
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 3
  %3584 = or i32 %3570, 96
  %3585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.ResRet.f32 %3585, 3
  %3590 = or i32 %3570, 112
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3593 = or i32 %3570, 128
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = extractvalue %dx.types.ResRet.f32 %3594, 3
  %3599 = or i32 %3570, 144
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3605 = or i32 %3570, 160
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = or i32 %3570, 192
  %3612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.i32 %3612, 0
  %3614 = or i32 %3570, 208
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = or i32 %3570, 248
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3621, 3
  %3626 = call float @dx.op.dot4.f32(i32 56, float %3622, float %3623, float %3624, float %3625, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3627 = or i32 %3570, 16
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.ResRet.f32 %3628, 3
  %3633 = call float @dx.op.dot4.f32(i32 56, float %3629, float %3630, float %3631, float %3632, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3634 = or i32 %3570, 32
  %3635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.ResRet.f32 %3635, 2
  %3639 = extractvalue %dx.types.ResRet.f32 %3635, 3
  %3640 = call float @dx.op.dot4.f32(i32 56, float %3636, float %3637, float %3638, float %3639, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3641 = call float @dx.op.unary.f32(i32 27, float %3626)  ; Round_ni(value)
  %3642 = call float @dx.op.unary.f32(i32 6, float %3641)  ; FAbs(value)
  %3643 = call float @dx.op.unary.f32(i32 27, float %3633)  ; Round_ni(value)
  %3644 = call float @dx.op.unary.f32(i32 6, float %3643)  ; FAbs(value)
  %3645 = call float @dx.op.unary.f32(i32 6, float %3640)  ; FAbs(value)
  %3646 = call float @dx.op.unary.f32(i32 27, float %3645)  ; Round_ni(value)
  %3647 = fadd fast float %3644, %3642
  %3648 = fadd fast float %3647, %3646
  %3649 = fcmp fast oeq float %3648, 0.000000e+00
  %3650 = call float @dx.op.dot4.f32(i32 56, float %3622, float %3623, float %3624, float %3625, float %3489, float %3490, float %3491, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3651 = call float @dx.op.dot4.f32(i32 56, float %3629, float %3630, float %3631, float %3632, float %3489, float %3490, float %3491, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3652 = call float @dx.op.dot4.f32(i32 56, float %3622, float %3623, float %3624, float %3625, float %3492, float %3493, float %3494, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3653 = call float @dx.op.dot4.f32(i32 56, float %3629, float %3630, float %3631, float %3632, float %3492, float %3493, float %3494, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3654 = fsub fast float %3650, %3626
  %3655 = fsub fast float %3652, %3626
  %3656 = fsub fast float %3651, %3633
  %3657 = fsub fast float %3653, %3633
  %3658 = call float @dx.op.dot3.f32(i32 55, float %3573, float %3574, float %3575, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 2
  %3661 = fadd fast float %3660, %3658
  %3662 = call float @dx.op.unary.f32(i32 7, float %3661)  ; Saturate(value)
  %3663 = extractvalue %dx.types.CBufRet.f32 %3659, 0
  %3664 = fcmp fast ogt float %3662, %3663
  %3665 = and i1 %3649, %3664
  br i1 %3665, label %3686, label %3666

; <label>:3666                                    ; preds = %3951, %3769, %3686, %3545
  %3667 = phi float [ %3547, %3686 ], [ %3772, %3769 ], [ %3772, %3951 ], [ %3547, %3545 ]
  %3668 = phi float [ %3548, %3686 ], [ %3548, %3769 ], [ %3926, %3951 ], [ %3548, %3545 ]
  %3669 = phi float [ %3549, %3686 ], [ %3549, %3769 ], [ %3924, %3951 ], [ %3549, %3545 ]
  %3670 = phi float [ %3550, %3686 ], [ %3550, %3769 ], [ %3896, %3951 ], [ %3550, %3545 ]
  %3671 = phi float [ %3551, %3686 ], [ %3551, %3769 ], [ %3894, %3951 ], [ %3551, %3545 ]
  %3672 = phi float [ %3552, %3686 ], [ %3552, %3769 ], [ %3961, %3951 ], [ %3552, %3545 ]
  %3673 = phi float [ %3553, %3686 ], [ %3553, %3769 ], [ %3962, %3951 ], [ %3553, %3545 ]
  %3674 = phi float [ %3554, %3686 ], [ %3554, %3769 ], [ %3963, %3951 ], [ %3554, %3545 ]
  %3675 = phi float [ %3555, %3686 ], [ %3555, %3769 ], [ %3875, %3951 ], [ %3555, %3545 ]
  %3676 = phi float [ %3556, %3686 ], [ %3556, %3769 ], [ %3876, %3951 ], [ %3556, %3545 ]
  %3677 = phi float [ %3557, %3686 ], [ %3557, %3769 ], [ %3877, %3951 ], [ %3557, %3545 ]
  %3678 = phi float [ %3558, %3686 ], [ %3558, %3769 ], [ %3904, %3951 ], [ %3558, %3545 ]
  %3679 = phi float [ %3559, %3686 ], [ %3559, %3769 ], [ %3901, %3951 ], [ %3559, %3545 ]
  %3680 = phi float [ %3560, %3686 ], [ %3560, %3769 ], [ %3898, %3951 ], [ %3560, %3545 ]
  %3681 = phi float [ %3561, %3686 ], [ %3561, %3769 ], [ %3892, %3951 ], [ %3561, %3545 ]
  %3682 = phi float [ %3562, %3686 ], [ %3562, %3769 ], [ %3887, %3951 ], [ %3562, %3545 ]
  %3683 = phi float [ %3563, %3686 ], [ %3563, %3769 ], [ %3888, %3951 ], [ %3563, %3545 ]
  %3684 = phi float [ %3564, %3686 ], [ %3564, %3769 ], [ %3889, %3951 ], [ %3564, %3545 ]
  %3685 = icmp eq i32 %3568, 0
  br i1 %3685, label %3964, label %3545

; <label>:3686                                    ; preds = %3545
  %3687 = extractvalue %dx.types.ResRet.f32 %3572, 3
  %3688 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3689 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3690 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3691 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3692 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3693 = extractvalue %dx.types.ResRet.i32 %3577, 3
  %3694 = extractvalue %dx.types.ResRet.i32 %3577, 2
  %3695 = bitcast float %3687 to i32
  %3696 = add i32 %3693, 0
  %3697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3699 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3697, %dx.types.Handle %3698, float %3626, float %3633, float undef, float undef, i32 0, i32 0, i32 undef, float %3654, float %3656, float undef, float %3655, float %3657, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = fmul fast float %3700, %3692
  %3702 = fadd fast float %3701, %3691
  %3703 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3704 = fmul fast float %3626, %3586
  %3705 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3633, float %3704)  ; FMad(a,b,c)
  %3706 = fadd fast float %3705, %3690
  %3707 = fmul fast float %3626, %3588
  %3708 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3633, float %3707)  ; FMad(a,b,c)
  %3709 = fadd fast float %3708, %3689
  %3710 = fmul fast float %3654, %3586
  %3711 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3656, float %3710)  ; FMad(a,b,c)
  %3712 = fmul fast float %3654, %3588
  %3713 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3656, float %3712)  ; FMad(a,b,c)
  %3714 = fmul fast float %3655, %3586
  %3715 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3657, float %3714)  ; FMad(a,b,c)
  %3716 = fmul fast float %3655, %3588
  %3717 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3657, float %3716)  ; FMad(a,b,c)
  %3718 = add i32 %3694, 0
  %3719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3718, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3720 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3719, %dx.types.Handle %3698, float %3706, float %3709, float undef, float undef, i32 0, i32 0, i32 undef, float %3711, float %3713, float undef, float %3715, float %3717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = and i32 %3695, 1024
  %3723 = icmp ne i32 %3722, 0
  %3724 = fcmp fast ogt float %3721, 0x3FE0101020000000
  %3725 = uitofp i1 %3724 to float
  %3726 = select i1 %3723, float %3725, float %3721
  %3727 = and i32 %3695, 8192
  %3728 = icmp ne i32 %3727, 0
  %3729 = select i1 %3728, float %3688, float 1.000000e+00
  %3730 = fmul fast float %3626, 2.000000e+00
  %3731 = fadd fast float %3730, -1.000000e+00
  %3732 = call float @dx.op.unary.f32(i32 6, float %3731)  ; FAbs(value)
  %3733 = fmul fast float %3732, %3619
  %3734 = fsub fast float %3733, %3619
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = fmul fast float %3633, 2.000000e+00
  %3737 = fadd fast float %3736, -1.000000e+00
  %3738 = call float @dx.op.unary.f32(i32 6, float %3737)  ; FAbs(value)
  %3739 = fmul fast float %3738, %3620
  %3740 = fsub fast float %3739, %3620
  %3741 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3742 = fmul fast float %3645, %3582
  %3743 = fsub fast float %3742, %3582
  %3744 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3745 = fmul fast float %3703, %3729
  %3746 = fmul fast float %3745, %3700
  %3747 = fmul fast float %3746, %3735
  %3748 = fmul fast float %3747, %3726
  %3749 = fmul fast float %3748, %3741
  %3750 = fmul fast float %3749, %3744
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 1
  %3753 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3754 = fsub fast float %3662, %3753
  %3755 = fmul fast float %3754, %3752
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3757 = fmul fast float %3750, %3583
  %3758 = fadd fast float %3750, %3583
  %3759 = fmul fast float %3758, %3592
  %3760 = fsub fast float %3759, %3592
  %3761 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3762 = and i32 %3695, 128
  %3763 = icmp ne i32 %3762, 0
  %3764 = select i1 %3763, float %3761, float %3757
  %3765 = fmul fast float %3764, %3756
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3768 = fcmp fast ugt float %3765, %3767
  br i1 %3768, label %3769, label %3666

; <label>:3769                                    ; preds = %3686
  %3770 = select i1 %3728, float %3765, float 0.000000e+00
  %3771 = fadd fast float %3770, %3547
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  br i1 %3728, label %3666, label %3773

; <label>:3773                                    ; preds = %3769
  %3774 = and i32 %3695, 4
  %3775 = and i32 %3695, 8
  %3776 = add i32 %3578, 0
  %3777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3776, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3779 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3777, %dx.types.Handle %3778, float %3706, float %3709, float undef, float undef, i32 0, i32 0, i32 undef, float %3711, float %3713, float undef, float %3715, float %3717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.ResRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.ResRet.f32 %3779, 2
  %3783 = extractvalue %dx.types.ResRet.f32 %3779, 3
  %3784 = bitcast float %3604 to i32
  %3785 = and i32 %3784, 255
  %3786 = uitofp i32 %3785 to float
  %3787 = lshr i32 %3784, 8
  %3788 = and i32 %3787, 255
  %3789 = uitofp i32 %3788 to float
  %3790 = fmul fast float %3783, %3786
  %3791 = fadd fast float %3790, %3789
  %3792 = fmul fast float %3791, 0x3F70101000000000
  %3793 = add i32 %3579, 0
  %3794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3793, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3795 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3794, %dx.types.Handle %3778, float %3706, float %3709, float undef, float undef, i32 0, i32 0, i32 undef, float %3711, float %3713, float undef, float %3715, float %3717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3800 = bitcast float %3598 to i32
  %3801 = and i32 %3800, 255
  %3802 = uitofp i32 %3801 to float
  %3803 = lshr i32 %3800, 8
  %3804 = and i32 %3803, 255
  %3805 = uitofp i32 %3804 to float
  %3806 = lshr i32 %3800, 16
  %3807 = and i32 %3806, 255
  %3808 = uitofp i32 %3807 to float
  %3809 = fmul fast float %3808, 0x3F70101000000000
  %3810 = fmul fast float %3796, %3802
  %3811 = fadd fast float %3810, %3805
  %3812 = fmul fast float %3811, 0x3F70101000000000
  %3813 = fadd fast float %3797, -5.000000e-01
  %3814 = fadd fast float %3799, -5.000000e-01
  %3815 = fmul fast float %3813, %3809
  %3816 = fmul fast float %3814, %3809
  %3817 = fadd fast float %3815, 5.000000e-01
  %3818 = fadd fast float %3816, 5.000000e-01
  %3819 = fmul fast float %3780, %3607
  %3820 = fmul fast float %3781, %3608
  %3821 = fmul fast float %3782, %3609
  %3822 = fmul fast float %3817, 2.000000e+00
  %3823 = fadd fast float %3822, -1.000000e+00
  %3824 = fmul fast float %3818, 2.000000e+00
  %3825 = fadd fast float %3824, -1.000000e+00
  %3826 = fadd fast float %3823, %3825
  %3827 = fmul fast float %3826, 5.000000e-01
  %3828 = fsub fast float %3823, %3825
  %3829 = fmul fast float %3828, 5.000000e-01
  %3830 = call float @dx.op.unary.f32(i32 6, float %3827)  ; FAbs(value)
  %3831 = fsub fast float 1.000000e+00, %3830
  %3832 = call float @dx.op.unary.f32(i32 6, float %3829)  ; FAbs(value)
  %3833 = fsub fast float %3831, %3832
  %3834 = call float @dx.op.dot3.f32(i32 55, float %3827, float %3829, float %3833, float %3827, float %3829, float %3833)  ; Dot3(ax,ay,az,bx,by,bz)
  %3835 = call float @dx.op.unary.f32(i32 25, float %3834)  ; Rsqrt(value)
  %3836 = fmul fast float %3827, %3835
  %3837 = fmul fast float %3829, %3835
  %3838 = fmul fast float %3835, %3833
  %3839 = fmul fast float %3838, %3573
  %3840 = fmul fast float %3838, %3574
  %3841 = fmul fast float %3838, %3575
  %3842 = fmul fast float %3836, %3595
  %3843 = fmul fast float %3836, %3596
  %3844 = fmul fast float %3836, %3597
  %3845 = fadd fast float %3842, %3839
  %3846 = fadd fast float %3843, %3840
  %3847 = fadd fast float %3844, %3841
  %3848 = fmul fast float %3837, %3601
  %3849 = fmul fast float %3837, %3602
  %3850 = fmul fast float %3837, %3603
  %3851 = fadd fast float %3845, %3848
  %3852 = fadd fast float %3846, %3849
  %3853 = fadd fast float %3847, %3850
  %3854 = call float @dx.op.dot3.f32(i32 55, float %3851, float %3852, float %3853, float %3851, float %3852, float %3853)  ; Dot3(ax,ay,az,bx,by,bz)
  %3855 = call float @dx.op.unary.f32(i32 25, float %3854)  ; Rsqrt(value)
  %3856 = fmul fast float %3851, %3855
  %3857 = fmul fast float %3852, %3855
  %3858 = fmul fast float %3853, %3855
  %3859 = icmp ne i32 %3775, 0
  %3860 = select i1 %3859, float 1.000000e+00, float 0.000000e+00
  %3861 = fmul fast float %3765, %3860
  %3862 = and i32 %3695, 1
  %3863 = icmp eq i32 %3862, 0
  br i1 %3863, label %3864, label %3868

; <label>:3864                                    ; preds = %3773
  %3865 = fsub fast float %3856, %3555
  %3866 = fsub fast float %3857, %3556
  %3867 = fsub fast float %3858, %3557
  br label %3868

; <label>:3868                                    ; preds = %3864, %3773
  %3869 = phi float [ %3865, %3864 ], [ %3856, %3773 ]
  %3870 = phi float [ %3866, %3864 ], [ %3857, %3773 ]
  %3871 = phi float [ %3867, %3864 ], [ %3858, %3773 ]
  %3872 = fmul float %3871, %3861
  %3873 = fmul float %3870, %3861
  %3874 = fmul float %3869, %3861
  %3875 = fadd fast float %3874, %3555
  %3876 = fadd fast float %3873, %3556
  %3877 = fadd fast float %3872, %3557
  %3878 = icmp ne i32 %3774, 0
  %3879 = select i1 %3878, float 1.000000e+00, float 0.000000e+00
  %3880 = fmul fast float %3765, %3879
  %3881 = fsub fast float %3819, %3562
  %3882 = fsub fast float %3820, %3563
  %3883 = fsub fast float %3821, %3564
  %3884 = fmul fast float %3881, %3880
  %3885 = fmul fast float %3882, %3880
  %3886 = fmul fast float %3883, %3880
  %3887 = fadd fast float %3884, %3562
  %3888 = fadd fast float %3885, %3563
  %3889 = fadd fast float %3886, %3564
  %3890 = fsub fast float %3792, %3561
  %3891 = fmul fast float %3890, %3880
  %3892 = fadd fast float %3891, %3561
  %3893 = fmul fast float %3880, %3551
  %3894 = fsub fast float %3551, %3893
  %3895 = fmul fast float %3880, %3550
  %3896 = fsub fast float %3550, %3895
  %3897 = fadd fast float %3765, %3560
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = fsub fast float %3812, %3559
  %3900 = fmul fast float %3899, %3861
  %3901 = fadd fast float %3900, %3559
  %3902 = fsub fast float %3798, %3558
  %3903 = fmul fast float %3902, %3861
  %3904 = fadd fast float %3903, %3558
  %3905 = call float @dx.op.dot3.f32(i32 55, float %3819, float %3820, float %3821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3909 = fmul fast float %3908, %3905
  %3910 = fadd fast float %3909, %3907
  %3911 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3912 = bitcast float %3610 to i32
  %3913 = and i32 %3912, 65535
  %3914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3913)  ; LegacyF16ToF32(value)
  %3915 = lshr i32 %3912, 16
  %3916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3915)  ; LegacyF16ToF32(value)
  %3917 = fcmp fast oge float %3914, 0.000000e+00
  %3918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3918, 0
  %3920 = select i1 %3917, float %3914, float %3919
  %3921 = fadd fast float %3920, %3916
  %3922 = fsub fast float %3911, %3549
  %3923 = fmul fast float %3922, %3765
  %3924 = fadd fast float %3923, %3549
  %3925 = fmul fast float %3921, %3765
  %3926 = call float @dx.op.binary.f32(i32 35, float %3548, float %3925)  ; FMax(a,b)
  %3927 = and i32 %3695, 16
  %3928 = icmp eq i32 %3927, 0
  br i1 %3928, label %3951, label %3929

; <label>:3929                                    ; preds = %3868
  %3930 = bitcast float %3616 to i32
  %3931 = add i32 %3613, 0
  %3932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3933 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3932, %dx.types.Handle %3778, float %3706, float %3709, float undef, float undef, i32 0, i32 0, i32 undef, float %3711, float %3713, float undef, float %3715, float %3717, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = and i32 %3930, 65535
  %3938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3937)  ; LegacyF16ToF32(value)
  %3939 = fmul fast float %3934, %3607
  %3940 = fmul fast float %3935, %3608
  %3941 = fmul fast float %3936, %3609
  %3942 = and i32 %3695, 16384
  %3943 = icmp ne i32 %3942, 0
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = select i1 %3943, float %3945, float 1.000000e+00
  %3947 = fmul fast float %3946, %3938
  %3948 = fmul fast float %3939, %3947
  %3949 = fmul fast float %3940, %3947
  %3950 = fmul fast float %3941, %3947
  br label %3951

; <label>:3951                                    ; preds = %3929, %3868
  %3952 = phi float [ %3948, %3929 ], [ 0.000000e+00, %3868 ]
  %3953 = phi float [ %3949, %3929 ], [ 0.000000e+00, %3868 ]
  %3954 = phi float [ %3950, %3929 ], [ 0.000000e+00, %3868 ]
  %3955 = fsub fast float %3952, %3552
  %3956 = fsub fast float %3953, %3553
  %3957 = fsub fast float %3954, %3554
  %3958 = fmul fast float %3955, %3765
  %3959 = fmul fast float %3956, %3765
  %3960 = fmul fast float %3957, %3765
  %3961 = fadd fast float %3958, %3552
  %3962 = fadd fast float %3959, %3553
  %3963 = fadd fast float %3960, %3554
  br label %3666

; <label>:3964                                    ; preds = %3666
  br label %3965

; <label>:3965                                    ; preds = %3964, %3482
  %3966 = phi float [ 0.000000e+00, %3482 ], [ %3667, %3964 ]
  %3967 = phi float [ %3426, %3482 ], [ %3668, %3964 ]
  %3968 = phi float [ %3405, %3482 ], [ %3669, %3964 ]
  %3969 = phi float [ %3404, %3482 ], [ %3670, %3964 ]
  %3970 = phi float [ %3403, %3482 ], [ %3671, %3964 ]
  %3971 = phi float [ %3448, %3482 ], [ %3672, %3964 ]
  %3972 = phi float [ %3450, %3482 ], [ %3673, %3964 ]
  %3973 = phi float [ %3452, %3482 ], [ %3674, %3964 ]
  %3974 = phi float [ %3478, %3482 ], [ %3675, %3964 ]
  %3975 = phi float [ %3479, %3482 ], [ %3676, %3964 ]
  %3976 = phi float [ %3480, %3482 ], [ %3677, %3964 ]
  %3977 = phi float [ %3402, %3482 ], [ %3678, %3964 ]
  %3978 = phi float [ %3401, %3482 ], [ %3679, %3964 ]
  %3979 = phi float [ 0.000000e+00, %3482 ], [ %3680, %3964 ]
  %3980 = phi float [ %3400, %3482 ], [ %3681, %3964 ]
  %3981 = phi float [ %3433, %3482 ], [ %3682, %3964 ]
  %3982 = phi float [ %3434, %3482 ], [ %3683, %3964 ]
  %3983 = phi float [ %3435, %3482 ], [ %3684, %3964 ]
  %3984 = call float @dx.op.dot3.f32(i32 55, float %3974, float %3975, float %3976, float %3974, float %3975, float %3976)  ; Dot3(ax,ay,az,bx,by,bz)
  %3985 = call float @dx.op.unary.f32(i32 25, float %3984)  ; Rsqrt(value)
  %3986 = fmul fast float %3985, %3974
  %3987 = fmul fast float %3985, %3975
  %3988 = fmul fast float %3985, %3976
  %3989 = fadd fast float %3979, %979
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %3988, float %3986, float %3987, float %3988)  ; Dot3(ax,ay,az,bx,by,bz)
  %3992 = call float @dx.op.unary.f32(i32 25, float %3991)  ; Rsqrt(value)
  %3993 = fmul fast float %3992, %3986
  %3994 = fmul fast float %3992, %3987
  %3995 = fmul fast float %3992, %3988
  br label %3996

; <label>:3996                                    ; preds = %3965, %3391
  %3997 = phi float [ %3993, %3965 ], [ %3478, %3391 ]
  %3998 = phi float [ %3994, %3965 ], [ %3479, %3391 ]
  %3999 = phi float [ %3995, %3965 ], [ %3480, %3391 ]
  %4000 = phi float [ %3981, %3965 ], [ %3433, %3391 ]
  %4001 = phi float [ %3982, %3965 ], [ %3434, %3391 ]
  %4002 = phi float [ %3983, %3965 ], [ %3435, %3391 ]
  %4003 = phi float [ %3971, %3965 ], [ %3448, %3391 ]
  %4004 = phi float [ %3972, %3965 ], [ %3450, %3391 ]
  %4005 = phi float [ %3973, %3965 ], [ %3452, %3391 ]
  %4006 = phi float [ %3980, %3965 ], [ %3400, %3391 ]
  %4007 = phi float [ %3990, %3965 ], [ %979, %3391 ]
  %4008 = phi float [ %3978, %3965 ], [ %3401, %3391 ]
  %4009 = phi float [ %3977, %3965 ], [ %3402, %3391 ]
  %4010 = phi float [ %3970, %3965 ], [ %3403, %3391 ]
  %4011 = phi float [ %3969, %3965 ], [ %3404, %3391 ]
  %4012 = phi float [ %3966, %3965 ], [ 0.000000e+00, %3391 ]
  %4013 = phi float [ %3967, %3965 ], [ %3426, %3391 ]
  %4014 = phi float [ %3968, %3965 ], [ %3405, %3391 ]
  %4015 = fadd fast float %4006, 0xBFB99999A0000000
  %4016 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4017 = fmul fast float %4016, 0x3FF1C71C80000000
  %4018 = call float @dx.op.binary.f32(i32 36, float %4006, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4019 = fsub fast float 1.000000e+00, %4017
  %4020 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4021 = fmul fast float %4020, %4000
  %4022 = fmul fast float %4020, %4001
  %4023 = fmul fast float %4020, %4002
  %4024 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4025 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4026 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4027 = fmul fast float %4017, %4000
  %4028 = fmul fast float %4017, %4001
  %4029 = fmul fast float %4017, %4002
  %4030 = fadd fast float %4027, %4018
  %4031 = fadd fast float %4028, %4018
  %4032 = fadd fast float %4029, %4018
  %4033 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4034 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4035 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4036 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.i32 %4037, 3
  %4039 = and i32 %4038, 8
  %4040 = icmp ne i32 %4039, 0
  %4041 = call float @dx.op.binary.f32(i32 35, float %4024, float %4000)  ; FMax(a,b)
  %4042 = call float @dx.op.binary.f32(i32 35, float %4025, float %4000)  ; FMax(a,b)
  %4043 = call float @dx.op.binary.f32(i32 35, float %4026, float %4000)  ; FMax(a,b)
  %4044 = call float @dx.op.dot3.f32(i32 55, float %4024, float %4025, float %4026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4045 = select i1 %217, float %4000, float %4024
  %4046 = select i1 %217, float %4044, float %4025
  %4047 = select i1 %217, float 1.000000e+00, float %4026
  %4048 = select i1 %4040, float %4041, float %4045
  %4049 = select i1 %4040, float %4042, float %4046
  %4050 = select i1 %4040, float %4043, float %4047
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4055 = fadd fast float %4052, %165
  %4056 = fadd fast float %4053, %166
  %4057 = fadd fast float %4054, %167
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.CBufRet.f32 %4058, 1
  %4061 = fsub fast float %4055, %4059
  %4062 = fsub fast float %4056, %4060
  %4063 = fmul fast float %4061, %4061
  %4064 = fmul fast float %4062, %4062
  %4065 = fadd fast float %4063, %4064
  %4066 = call float @dx.op.unary.f32(i32 24, float %4065)  ; Sqrt(value)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4058, 2
  %4068 = fcmp fast olt float %4066, %4067
  br i1 %4068, label %4069, label %4136

; <label>:4069                                    ; preds = %3996
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4077 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4078 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4079 = extractvalue %dx.types.CBufRet.f32 %4070, 3
  %4080 = extractvalue %dx.types.CBufRet.f32 %4072, 3
  %4081 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4082 = fadd fast float %4079, %4055
  %4083 = fadd fast float %4080, %4056
  %4084 = fadd fast float %4081, %4057
  %4085 = fmul fast float %4082, %4071
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4083, float %4073, float %4085)  ; FMad(a,b,c)
  %4087 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4075, float %4086)  ; FMad(a,b,c)
  %4088 = fmul fast float %4082, %4076
  %4089 = call float @dx.op.tertiary.f32(i32 46, float %4083, float %4077, float %4088)  ; FMad(a,b,c)
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4078, float %4089)  ; FMad(a,b,c)
  %4091 = fsub fast float %4087, %4079
  %4092 = fsub fast float %4090, %4080
  %4093 = fsub fast float %4091, %4059
  %4094 = fadd fast float %4093, %4067
  %4095 = fsub fast float %4092, %4060
  %4096 = fadd fast float %4095, %4067
  %4097 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4098 = fmul fast float %4094, %4097
  %4099 = fmul fast float %4096, %4097
  %4100 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4101 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4102 = fsub fast float 1.000000e+00, %4100
  %4103 = fsub fast float 1.000000e+00, %4101
  %4104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4102, float %4103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4105 = extractvalue %dx.types.ResRet.f32 %4104, 0
  %4106 = fcmp fast ugt float %4105, 0.000000e+00
  br i1 %4106, label %4107, label %4410

; <label>:4107                                    ; preds = %4069
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 2
  %4110 = fmul fast float %4109, %4105
  %4111 = extractvalue %dx.types.CBufRet.f32 %4108, 3
  %4112 = fadd fast float %4111, %4110
  %4113 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4114 = fadd fast float %4112, %4081
  %4115 = fmul fast float %4087, %4075
  %4116 = call float @dx.op.tertiary.f32(i32 46, float %4090, float %4078, float %4115)  ; FMad(a,b,c)
  %4117 = call float @dx.op.tertiary.f32(i32 46, float %4114, float %4113, float %4116)  ; FMad(a,b,c)
  %4118 = fsub fast float %4117, %4081
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 2
  %4121 = fsub fast float %4118, %4120
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4102, float %4103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4102, float %4103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4128 = extractvalue %dx.types.ResRet.f32 %4126, 1
  %4129 = extractvalue %dx.types.ResRet.f32 %4126, 2
  %4130 = fadd fast float %4127, %4123
  %4131 = fmul fast float %4130, 0x3F847AE140000000
  %4132 = fadd fast float %4128, %4124
  %4133 = fmul fast float %4132, 0x3F847AE140000000
  %4134 = fadd fast float %4129, %4125
  %4135 = fmul fast float %4134, 0x3F847AE140000000
  br label %4410

; <label>:4136                                    ; preds = %3996
  %4137 = and i32 %196, 1
  %4138 = icmp eq i32 %4137, 0
  br i1 %4138, label %4410, label %4139

; <label>:4139                                    ; preds = %4136
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 0
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4147 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4148 = extractvalue %dx.types.CBufRet.f32 %4144, 1
  %4149 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4150 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4151 = extractvalue %dx.types.CBufRet.f32 %4144, 3
  %4152 = fadd fast float %4149, %4055
  %4153 = fadd fast float %4150, %4056
  %4154 = fadd fast float %4151, %4057
  %4155 = fmul fast float %4152, %4141
  %4156 = call float @dx.op.tertiary.f32(i32 46, float %4153, float %4143, float %4155)  ; FMad(a,b,c)
  %4157 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4145, float %4156)  ; FMad(a,b,c)
  %4158 = fmul fast float %4152, %4146
  %4159 = call float @dx.op.tertiary.f32(i32 46, float %4153, float %4147, float %4158)  ; FMad(a,b,c)
  %4160 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4148, float %4159)  ; FMad(a,b,c)
  %4161 = fsub fast float %4157, %4149
  %4162 = fsub fast float %4160, %4150
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4167 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 3
  %4170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.i32 %4170, 0
  %4172 = extractvalue %dx.types.CBufRet.i32 %4170, 1
  %4173 = udiv i32 %4172, %4171
  %4174 = fsub fast float %4161, %4164
  %4175 = fsub fast float %4162, %4165
  %4176 = call float @dx.op.binary.f32(i32 35, float %4174, float 0.000000e+00)  ; FMax(a,b)
  %4177 = call float @dx.op.binary.f32(i32 35, float %4175, float 0.000000e+00)  ; FMax(a,b)
  %4178 = call float @dx.op.binary.f32(i32 36, float %4176, float %4166)  ; FMin(a,b)
  %4179 = call float @dx.op.binary.f32(i32 36, float %4177, float %4167)  ; FMin(a,b)
  %4180 = add i32 %4171, -1
  %4181 = add i32 %4173, -1
  %4182 = fmul fast float %4178, %4169
  %4183 = fmul fast float %4179, %4169
  %4184 = fptoui float %4182 to i32
  %4185 = fptoui float %4183 to i32
  %4186 = call i32 @dx.op.binary.i32(i32 40, i32 %4184, i32 %4180)  ; UMin(a,b)
  %4187 = call i32 @dx.op.binary.i32(i32 40, i32 %4185, i32 %4181)  ; UMin(a,b)
  %4188 = mul i32 %4187, %4171
  %4189 = add i32 %4188, %4186
  %4190 = shl i32 %4189, 2
  %4191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.i32 %4191, 0
  %4193 = icmp eq i32 %4192, -1
  br i1 %4193, label %4410, label %4194

; <label>:4194                                    ; preds = %4139
  %4195 = mul i32 %4192, 148
  %4196 = add i32 %4195, 4
  %4197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = add i32 %4195, 8
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = add i32 %4195, 36
  %4203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = add i32 %4195, 60
  %4206 = add i32 %4195, 92
  %4207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.i32 %4207, 0
  %4209 = add i32 %4195, 116
  %4210 = fsub fast float %4161, %4198
  %4211 = fsub fast float %4162, %4201
  %4212 = fmul fast float %4169, %4210
  %4213 = fmul fast float %4169, %4211
  %4214 = call float @dx.op.unary.f32(i32 7, float %4212)  ; Saturate(value)
  %4215 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4216 = fsub fast float 1.000000e+00, %4215
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 2
  %4219 = call float @dx.op.unary.f32(i32 83, float %4214)  ; DerivCoarseX(value)
  %4220 = call float @dx.op.unary.f32(i32 83, float %4216)  ; DerivCoarseX(value)
  %4221 = call float @dx.op.unary.f32(i32 84, float %4214)  ; DerivCoarseY(value)
  %4222 = call float @dx.op.unary.f32(i32 84, float %4216)  ; DerivCoarseY(value)
  %4223 = fmul fast float %4219, %4218
  %4224 = fmul fast float %4220, %4218
  %4225 = fmul fast float %4221, %4218
  %4226 = fmul fast float %4222, %4218
  %4227 = call float @dx.op.dot2.f32(i32 54, float %4225, float %4226, float %4225, float %4226)  ; Dot2(ax,ay,bx,by)
  %4228 = call float @dx.op.dot2.f32(i32 54, float %4223, float %4224, float %4223, float %4224)  ; Dot2(ax,ay,bx,by)
  %4229 = call float @dx.op.binary.f32(i32 35, float %4228, float %4227)  ; FMax(a,b)
  %4230 = call float @dx.op.unary.f32(i32 23, float %4229)  ; Log(value)
  %4231 = fmul fast float %4230, 5.000000e-01
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 1
  %4234 = fadd fast float %4233, %4231
  %4235 = call float @dx.op.binary.f32(i32 35, float %4234, float 0.000000e+00)  ; FMax(a,b)
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 3
  %4238 = fadd fast float %4237, %4235
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 3
  %4241 = fadd fast float %4238, %4240
  %4242 = add i32 %4208, 0
  %4243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4242, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4244 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4243, i32 0)  ; GetDimensions(handle,mipLevel)
  %4245 = extractvalue %dx.types.Dimensions %4244, 0
  %4246 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4245)  ; FirstbitLo(value)
  %4247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.i32 %4247, 1
  %4249 = sub nsw i32 %4248, %4246
  %4250 = sitofp i32 %4249 to float
  %4251 = fsub fast float %4241, %4250
  %4252 = call float @dx.op.binary.f32(i32 35, float %4251, float 0.000000e+00)  ; FMax(a,b)
  %4253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4243, %dx.types.Handle %28, float %4214, float %4216, float %4204, float undef, i32 0, i32 0, i32 undef, float %4252)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = fcmp ule float %4254, 0x3FE0101020000000
  %4256 = extractvalue %dx.types.CBufRet.i32 %4247, 0
  %4257 = and i32 %4256, 128
  %4258 = icmp ne i32 %4257, 0
  %4259 = and i1 %4255, %4258
  br i1 %4259, label %4410, label %4260

; <label>:4260                                    ; preds = %4194
  %4261 = add i32 %4195, 20
  %4262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = add i32 %4195, 24
  %4265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4264, i32 undef)  ; BufferLoad(srv,index,wot)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = add i32 %4195, 40
  %4268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = add i32 %4195, 96
  %4271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.i32 %4271, 0
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 2
  %4275 = fmul fast float %4274, %4214
  %4276 = fmul fast float %4274, %4216
  %4277 = extractvalue %dx.types.CBufRet.f32 %4273, 3
  %4278 = fadd fast float %4275, %4277
  %4279 = fadd fast float %4276, %4277
  %4280 = add i32 %4272, 0
  %4281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4280, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4282 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4281, i32 0)  ; GetDimensions(handle,mipLevel)
  %4283 = extractvalue %dx.types.Dimensions %4282, 0
  %4284 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4283)  ; FirstbitLo(value)
  %4285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.i32 %4285, 1
  %4287 = sub nsw i32 %4286, %4284
  %4288 = sitofp i32 %4287 to float
  %4289 = fsub fast float %4238, %4288
  %4290 = call float @dx.op.binary.f32(i32 35, float %4289, float 0.000000e+00)  ; FMax(a,b)
  %4291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4281, %dx.types.Handle %28, float %4278, float %4279, float %4269, float undef, i32 0, i32 0, i32 undef, float %4290)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = fmul fast float %4292, %4263
  %4294 = fadd fast float %4293, %4266
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4297 = extractvalue %dx.types.CBufRet.f32 %4295, 1
  %4298 = extractvalue %dx.types.CBufRet.f32 %4295, 2
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 3
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4303 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4304 = fadd fast float %4300, %4161
  %4305 = fadd fast float %4302, %4162
  %4306 = fadd fast float %4294, %4303
  %4307 = fmul fast float %4304, %4296
  %4308 = call float @dx.op.tertiary.f32(i32 46, float %4305, float %4297, float %4307)  ; FMad(a,b,c)
  %4309 = call float @dx.op.tertiary.f32(i32 46, float %4306, float %4298, float %4308)  ; FMad(a,b,c)
  %4310 = fsub fast float %4309, %4303
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 2
  %4313 = fsub fast float %4310, %4312
  %4314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.i32 %4314, 0
  %4316 = call i32 @dx.op.binary.i32(i32 40, i32 %4192, i32 %4315)  ; UMin(a,b)
  %4317 = mul i32 %4316, 36
  %4318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.i32 %4318, 0
  %4320 = add i32 %4317, 4
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 0
  %4323 = fmul fast float %4322, %4214
  %4324 = fmul fast float %4322, %4216
  %4325 = extractvalue %dx.types.CBufRet.f32 %4321, 1
  %4326 = fadd fast float %4323, %4325
  %4327 = fadd fast float %4324, %4325
  %4328 = icmp eq i32 %4319, 0
  br i1 %4328, label %4397, label %4329

; <label>:4329                                    ; preds = %4260
  br label %4330

; <label>:4330                                    ; preds = %4387, %4329
  %4331 = phi float [ %4388, %4387 ], [ 0.000000e+00, %4329 ]
  %4332 = phi float [ %4389, %4387 ], [ 0.000000e+00, %4329 ]
  %4333 = phi float [ %4390, %4387 ], [ 0.000000e+00, %4329 ]
  %4334 = phi float [ %4391, %4387 ], [ 0.000000e+00, %4329 ]
  %4335 = phi float [ %4392, %4387 ], [ 0.000000e+00, %4329 ]
  %4336 = phi float [ %4393, %4387 ], [ 0.000000e+00, %4329 ]
  %4337 = phi i32 [ %4394, %4387 ], [ 0, %4329 ]
  %4338 = shl i32 %4337, 2
  %4339 = add i32 %4205, %4338
  %4340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4341 = extractvalue %dx.types.ResRet.f32 %4340, 0
  %4342 = add i32 %4209, %4338
  %4343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.i32 %4343, 0
  %4345 = add i32 %4344, 0
  %4346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4345, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4347 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4346, i32 0)  ; GetDimensions(handle,mipLevel)
  %4348 = extractvalue %dx.types.Dimensions %4347, 0
  %4349 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4348)  ; FirstbitLo(value)
  %4350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.i32 %4350, 1
  %4352 = sub nsw i32 %4351, %4349
  %4353 = sitofp i32 %4352 to float
  %4354 = fsub fast float %4238, %4353
  %4355 = call float @dx.op.binary.f32(i32 35, float %4354, float 0.000000e+00)  ; FMax(a,b)
  %4356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4346, %dx.types.Handle %28, float %4326, float %4327, float %4341, float undef, i32 0, i32 0, i32 undef, float %4355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = fcmp fast ogt float %4357, 0.000000e+00
  br i1 %4358, label %4359, label %4387

; <label>:4359                                    ; preds = %4330
  %4360 = add i32 %4320, %4338
  %4361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4360, i32 undef)  ; BufferLoad(srv,index,wot)
  %4362 = extractvalue %dx.types.ResRet.i32 %4361, 0
  %4363 = and i32 %4362, 32767
  %4364 = mul nuw nsw i32 %4363, 928
  %4365 = add nuw nsw i32 %4364, 48
  %4366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4370 = add nuw nsw i32 %4364, 60
  %4371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = fmul fast float %4367, %4357
  %4376 = fmul fast float %4368, %4357
  %4377 = fmul fast float %4369, %4357
  %4378 = fadd fast float %4375, %4331
  %4379 = fadd fast float %4376, %4332
  %4380 = fadd fast float %4377, %4333
  %4381 = fmul fast float %4372, %4357
  %4382 = fmul fast float %4373, %4357
  %4383 = fmul fast float %4374, %4357
  %4384 = fadd fast float %4381, %4334
  %4385 = fadd fast float %4382, %4335
  %4386 = fadd fast float %4383, %4336
  br label %4387

; <label>:4387                                    ; preds = %4359, %4330
  %4388 = phi float [ %4378, %4359 ], [ %4331, %4330 ]
  %4389 = phi float [ %4379, %4359 ], [ %4332, %4330 ]
  %4390 = phi float [ %4380, %4359 ], [ %4333, %4330 ]
  %4391 = phi float [ %4384, %4359 ], [ %4334, %4330 ]
  %4392 = phi float [ %4385, %4359 ], [ %4335, %4330 ]
  %4393 = phi float [ %4386, %4359 ], [ %4336, %4330 ]
  %4394 = add nuw i32 %4337, 1
  %4395 = icmp eq i32 %4394, %4319
  br i1 %4395, label %4396, label %4330

; <label>:4396                                    ; preds = %4387
  br label %4397

; <label>:4397                                    ; preds = %4396, %4260
  %4398 = phi float [ 0.000000e+00, %4260 ], [ %4388, %4396 ]
  %4399 = phi float [ 0.000000e+00, %4260 ], [ %4389, %4396 ]
  %4400 = phi float [ 0.000000e+00, %4260 ], [ %4390, %4396 ]
  %4401 = phi float [ 0.000000e+00, %4260 ], [ %4391, %4396 ]
  %4402 = phi float [ 0.000000e+00, %4260 ], [ %4392, %4396 ]
  %4403 = phi float [ 0.000000e+00, %4260 ], [ %4393, %4396 ]
  %4404 = fadd fast float %4401, %4398
  %4405 = fmul fast float %4404, 0x3F847AE140000000
  %4406 = fadd fast float %4402, %4399
  %4407 = fmul fast float %4406, 0x3F847AE140000000
  %4408 = fadd fast float %4403, %4400
  %4409 = fmul fast float %4408, 0x3F847AE140000000
  br label %4410

; <label>:4410                                    ; preds = %4397, %4194, %4139, %4136, %4107, %4069
  %4411 = phi float [ %4121, %4107 ], [ -1.310720e+05, %4069 ], [ %4313, %4397 ], [ -1.310720e+05, %4139 ], [ -1.310720e+05, %4194 ], [ -1.310720e+05, %4136 ]
  %4412 = phi float [ %4131, %4107 ], [ 0.000000e+00, %4069 ], [ %4405, %4397 ], [ 0.000000e+00, %4139 ], [ 0.000000e+00, %4194 ], [ 0.000000e+00, %4136 ]
  %4413 = phi float [ %4133, %4107 ], [ 0.000000e+00, %4069 ], [ %4407, %4397 ], [ 0.000000e+00, %4139 ], [ 0.000000e+00, %4194 ], [ 0.000000e+00, %4136 ]
  %4414 = phi float [ %4135, %4107 ], [ 0.000000e+00, %4069 ], [ %4409, %4397 ], [ 0.000000e+00, %4139 ], [ 0.000000e+00, %4194 ], [ 0.000000e+00, %4136 ]
  %4415 = phi i1 [ true, %4107 ], [ false, %4069 ], [ true, %4397 ], [ false, %4139 ], [ false, %4194 ], [ false, %4136 ]
  %4416 = and i32 %196, 3
  %4417 = icmp eq i32 %4416, 1
  %4418 = select i1 %4417, float 1.000000e+00, float 0.000000e+00
  %4419 = fsub fast float %4411, %167
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = select i1 %4415, float %4420, float 1.000000e+00
  %4422 = fmul fast float %4421, %4418
  %4423 = icmp eq i32 %4416, 3
  %4424 = select i1 %4423, float 1.000000e+00, float %4422
  %4425 = call float @dx.op.binary.f32(i32 35, float %4012, float %4424)  ; FMax(a,b)
  %4426 = fcmp fast olt float %4424, 1.000000e+00
  %4427 = fcmp uge float %49, 0.000000e+00
  %4428 = and i1 %4427, %4426
  br i1 %4428, label %4429, label %4439

; <label>:4429                                    ; preds = %4410
  %4430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.ResRet.f32 %4430, 1
  %4433 = extractvalue %dx.types.ResRet.f32 %4430, 2
  %4434 = fadd fast float %4431, %4425
  %4435 = fcmp ule float %48, 0.000000e+00
  %4436 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = select i1 %4435, float %4436, float 1.000000e+00
  %4438 = fmul fast float %4437, %4433
  br label %4439

; <label>:4439                                    ; preds = %4429, %4410
  %4440 = phi float [ %4434, %4429 ], [ %4425, %4410 ]
  %4441 = phi float [ %4432, %4429 ], [ 0.000000e+00, %4410 ]
  %4442 = phi float [ %4438, %4429 ], [ 0.000000e+00, %4410 ]
  %4443 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4444 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4445 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4446 = fcmp fast une float %4444, 0.000000e+00
  %4447 = fcmp fast une float %4445, 0.000000e+00
  %4448 = or i1 %4446, %4447
  br i1 %4448, label %4449, label %5008

; <label>:4449                                    ; preds = %4439
  br i1 %4446, label %4450, label %4723

; <label>:4450                                    ; preds = %4449
  %4451 = call float @dx.op.unary.f32(i32 23, float %4009)  ; Log(value)
  %4452 = fmul fast float %4451, 4.000000e+00
  %4453 = call float @dx.op.unary.f32(i32 21, float %4452)  ; Exp(value)
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 0
  %4456 = fmul fast float %4455, %36
  %4457 = fmul fast float %4455, %37
  %4458 = fmul fast float %4455, %38
  %4459 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4460 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4461 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4462 = call float @dx.op.unary.f32(i32 23, float %4459)  ; Log(value)
  %4463 = call float @dx.op.unary.f32(i32 23, float %4460)  ; Log(value)
  %4464 = call float @dx.op.unary.f32(i32 23, float %4461)  ; Log(value)
  %4465 = fmul fast float %4462, 4.000000e+00
  %4466 = fmul fast float %4463, 4.000000e+00
  %4467 = fmul fast float %4464, 4.000000e+00
  %4468 = call float @dx.op.unary.f32(i32 21, float %4465)  ; Exp(value)
  %4469 = call float @dx.op.unary.f32(i32 21, float %4466)  ; Exp(value)
  %4470 = call float @dx.op.unary.f32(i32 21, float %4467)  ; Exp(value)
  %4471 = fadd fast float %4469, %4468
  %4472 = fadd fast float %4471, %4470
  %4473 = fdiv fast float 1.000000e+00, %4472
  %4474 = fmul fast float %4473, %4468
  %4475 = fcmp fast ogt float %45, 0.000000e+00
  %4476 = fcmp fast ogt float %46, 0.000000e+00
  %4477 = fcmp fast ogt float %47, 0.000000e+00
  %4478 = fcmp fast olt float %45, 0.000000e+00
  %4479 = fcmp fast olt float %46, 0.000000e+00
  %4480 = fcmp fast olt float %47, 0.000000e+00
  %4481 = zext i1 %4475 to i32
  %4482 = zext i1 %4476 to i32
  %4483 = zext i1 %4477 to i32
  %4484 = zext i1 %4478 to i32
  %4485 = zext i1 %4479 to i32
  %4486 = zext i1 %4480 to i32
  %4487 = sub nsw i32 %4481, %4484
  %4488 = sub nsw i32 %4482, %4485
  %4489 = sub nsw i32 %4483, %4486
  %4490 = call float @dx.op.unary.f32(i32 83, float %4456)  ; DerivCoarseX(value)
  %4491 = call float @dx.op.unary.f32(i32 83, float %4457)  ; DerivCoarseX(value)
  %4492 = call float @dx.op.unary.f32(i32 83, float %4458)  ; DerivCoarseX(value)
  %4493 = call float @dx.op.unary.f32(i32 84, float %4456)  ; DerivCoarseY(value)
  %4494 = call float @dx.op.unary.f32(i32 84, float %4457)  ; DerivCoarseY(value)
  %4495 = call float @dx.op.unary.f32(i32 84, float %4458)  ; DerivCoarseY(value)
  %4496 = fcmp fast ole float %228, %4474
  %4497 = fmul fast float %4473, %4471
  %4498 = fcmp fast ole float %228, %4497
  %4499 = select i1 %4498, float %4458, float %4456
  %4500 = select i1 %4498, float %4456, float %4457
  %4501 = select i1 %4496, float %4457, float %4499
  %4502 = select i1 %4496, float %4458, float %4500
  %4503 = select i1 %4498, float %4492, float %4490
  %4504 = select i1 %4498, float %4490, float %4491
  %4505 = select i1 %4496, float %4491, float %4503
  %4506 = select i1 %4496, float %4492, float %4504
  %4507 = select i1 %4498, float %4495, float %4493
  %4508 = select i1 %4498, float %4493, float %4494
  %4509 = select i1 %4496, float %4494, float %4507
  %4510 = select i1 %4496, float %4495, float %4508
  %4511 = call float @dx.op.unary.f32(i32 27, float %4501)  ; Round_ni(value)
  %4512 = call float @dx.op.unary.f32(i32 27, float %4502)  ; Round_ni(value)
  %4513 = fptosi float %4511 to i32
  %4514 = fptosi float %4512 to i32
  %4515 = xor i32 %4514, %4513
  %4516 = sitofp i32 %4515 to float
  %4517 = fptosi float %4516 to i32
  %4518 = sitofp i32 %4517 to float
  %4519 = fmul fast float %4518, 0x3FE3C6EF40000000
  %4520 = frem fast float %4511, 2.560000e+02
  %4521 = frem fast float %4512, 2.560000e+02
  %4522 = fptoui float %4520 to i32
  %4523 = fptoui float %4521 to i32
  %4524 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4522, i32 %4523, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.ResRet.f32 %4524, 1
  %4527 = extractvalue %dx.types.ResRet.f32 %4524, 2
  %4528 = fadd fast float %4525, %4519
  %4529 = fadd fast float %4526, %4519
  %4530 = fadd fast float %4527, %4519
  %4531 = call float @dx.op.unary.f32(i32 22, float %4528)  ; Frc(value)
  %4532 = call float @dx.op.unary.f32(i32 22, float %4529)  ; Frc(value)
  %4533 = call float @dx.op.unary.f32(i32 22, float %4530)  ; Frc(value)
  %4534 = fmul fast float %4533, 0x401921FB60000000
  %4535 = call float @dx.op.unary.f32(i32 13, float %4534)  ; Sin(value)
  %4536 = call float @dx.op.unary.f32(i32 12, float %4534)  ; Cos(value)
  %4537 = fsub fast float -0.000000e+00, %4536
  %4538 = fmul fast float %4536, %4501
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4535, float %4502, float %4538)  ; FMad(a,b,c)
  %4540 = fmul fast float %4535, %4501
  %4541 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4502, float %4540)  ; FMad(a,b,c)
  %4542 = fadd fast float %4539, %4531
  %4543 = fadd fast float %4541, %4532
  %4544 = extractvalue %dx.types.CBufRet.f32 %4454, 3
  %4545 = bitcast float %4544 to i32
  %4546 = icmp eq i32 %4545, 0
  br i1 %4546, label %4585, label %4547

; <label>:4547                                    ; preds = %4450
  %4548 = add i32 %4545, 0
  %4549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4548, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4550 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4549, %dx.types.Handle %75, float %4542, float %4543, float undef, float undef, i32 0, i32 0, i32 undef, float %4505, float %4506, float undef, float %4509, float %4510, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 0
  %4552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.f32 %4552, 1
  %4554 = extractvalue %dx.types.CBufRet.f32 %4552, 2
  %4555 = fsub fast float 1.000000e+00, %4444
  %4556 = call float @dx.op.binary.f32(i32 35, float %4555, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4557 = bitcast float %4444 to i32
  %4558 = sitofp i32 %4557 to float
  %4559 = fadd fast float %4558, 0xC1CFBF8940000000
  %4560 = fmul fast float %4554, %4559
  %4561 = fadd fast float %4560, 0x41CFBF8940000000
  %4562 = fptosi float %4561 to i32
  %4563 = bitcast i32 %4562 to float
  %4564 = bitcast float %4556 to i32
  %4565 = sitofp i32 %4564 to float
  %4566 = fadd fast float %4565, 0xC1CFBF8940000000
  %4567 = fmul fast float %4566, %4554
  %4568 = fadd fast float %4567, 0x41CFBF8940000000
  %4569 = fptosi float %4568 to i32
  %4570 = bitcast i32 %4569 to float
  %4571 = fmul fast float %4563, %4553
  %4572 = fmul fast float %4570, %4553
  %4573 = fsub fast float %4556, %4571
  %4574 = fadd fast float %4572, %4556
  %4575 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4576 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4577 = fsub fast float %4551, %4575
  %4578 = fsub fast float %4576, %4575
  %4579 = bitcast float %4578 to i32
  %4580 = sub nsw i32 2129859010, %4579
  %4581 = bitcast i32 %4580 to float
  %4582 = fmul fast float %4581, %4577
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fcmp fast olt float %4583, 0x3F70101020000000
  br i1 %4584, label %4723, label %4585

; <label>:4585                                    ; preds = %4547, %4450
  %4586 = phi float [ %4583, %4547 ], [ %4444, %4450 ]
  %4587 = fmul fast float %4586, %4453
  %4588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4589 = extractvalue %dx.types.CBufRet.i32 %4588, 1
  %4590 = extractvalue %dx.types.CBufRet.i32 %4588, 0
  %4591 = add i32 %4590, 0
  %4592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4593 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4592, %dx.types.Handle %74, float %4542, float %4543, float undef, float undef, i32 0, i32 0, i32 undef, float %4505, float %4506, float undef, float %4509, float %4510, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.ResRet.f32 %4593, 3
  %4598 = and i32 %4589, 255
  %4599 = uitofp i32 %4598 to float
  %4600 = lshr i32 %4589, 8
  %4601 = and i32 %4600, 255
  %4602 = uitofp i32 %4601 to float
  %4603 = fmul fast float %4597, %4599
  %4604 = fadd fast float %4603, %4602
  %4605 = fmul fast float %4604, 0x3F70101000000000
  %4606 = fadd fast float %4605, 0xBFB99999A0000000
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = fmul fast float %4607, 0x3FF1C71C80000000
  %4609 = call float @dx.op.binary.f32(i32 36, float %4605, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4610 = fsub fast float 1.000000e+00, %4608
  %4611 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4612 = fmul fast float %4611, %4594
  %4613 = fmul fast float %4611, %4595
  %4614 = fmul fast float %4611, %4596
  %4615 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4616 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4618 = fmul fast float %4608, %4594
  %4619 = fmul fast float %4608, %4595
  %4620 = fmul fast float %4608, %4596
  %4621 = fadd fast float %4618, %4609
  %4622 = fadd fast float %4619, %4609
  %4623 = fadd fast float %4620, %4609
  %4624 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4625 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4626 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.i32 %4627, 3
  %4629 = extractvalue %dx.types.CBufRet.i32 %4627, 2
  %4630 = add i32 %4629, 0
  %4631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4632 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4631, %dx.types.Handle %74, float %4542, float %4543, float undef, float undef, i32 0, i32 0, i32 undef, float %4505, float %4506, float undef, float %4509, float %4510, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.ResRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.ResRet.f32 %4632, 2
  %4636 = extractvalue %dx.types.ResRet.f32 %4632, 3
  %4637 = and i32 %4628, 255
  %4638 = uitofp i32 %4637 to float
  %4639 = lshr i32 %4628, 8
  %4640 = and i32 %4639, 255
  %4641 = uitofp i32 %4640 to float
  %4642 = lshr i32 %4628, 16
  %4643 = and i32 %4642, 255
  %4644 = uitofp i32 %4643 to float
  %4645 = fmul fast float %4644, 0x3F70101000000000
  %4646 = fmul fast float %4633, %4638
  %4647 = fadd fast float %4646, %4641
  %4648 = fmul fast float %4647, 0x3F70101000000000
  %4649 = fadd fast float %4634, -5.000000e-01
  %4650 = fadd fast float %4636, -5.000000e-01
  %4651 = fmul fast float %4649, %4645
  %4652 = fmul fast float %4650, %4645
  %4653 = fadd fast float %4651, 5.000000e-01
  %4654 = fadd fast float %4652, 5.000000e-01
  %4655 = fmul fast float %4653, 2.000000e+00
  %4656 = fadd fast float %4655, -1.000000e+00
  %4657 = fmul fast float %4654, 2.000000e+00
  %4658 = fadd fast float %4657, -1.000000e+00
  %4659 = fadd fast float %4656, %4658
  %4660 = fmul fast float %4659, 5.000000e-01
  %4661 = fsub fast float %4656, %4658
  %4662 = fmul fast float %4661, 5.000000e-01
  %4663 = call float @dx.op.unary.f32(i32 6, float %4660)  ; FAbs(value)
  %4664 = fsub fast float 1.000000e+00, %4663
  %4665 = call float @dx.op.unary.f32(i32 6, float %4662)  ; FAbs(value)
  %4666 = fsub fast float %4664, %4665
  %4667 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4662, float %4666, float %4660, float %4662, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = call float @dx.op.unary.f32(i32 25, float %4667)  ; Rsqrt(value)
  %4669 = fmul fast float %4660, %4668
  %4670 = fmul fast float %4662, %4668
  %4671 = select i1 %4498, i32 %4488, i32 %4489
  %4672 = select i1 %4496, i32 %4487, i32 %4671
  %4673 = sitofp i32 %4672 to float
  %4674 = fmul fast float %4666, %4673
  %4675 = fmul fast float %4674, %4668
  %4676 = select i1 %4498, float %4675, float %4670
  %4677 = select i1 %4498, float %4670, float %4675
  %4678 = select i1 %4496, float %4675, float %4669
  %4679 = select i1 %4496, float %4670, float %4676
  %4680 = select i1 %4496, float %4669, float %4677
  %4681 = fsub fast float %4615, %4048
  %4682 = fsub fast float %4616, %4049
  %4683 = fsub fast float %4617, %4050
  %4684 = fmul fast float %4681, %4587
  %4685 = fmul fast float %4682, %4587
  %4686 = fmul fast float %4683, %4587
  %4687 = fadd fast float %4684, %4048
  %4688 = fadd fast float %4685, %4049
  %4689 = fadd fast float %4686, %4050
  %4690 = fsub fast float %4624, %4033
  %4691 = fsub fast float %4625, %4034
  %4692 = fsub fast float %4626, %4035
  %4693 = fmul fast float %4690, %4587
  %4694 = fmul fast float %4691, %4587
  %4695 = fmul fast float %4692, %4587
  %4696 = fadd fast float %4693, %4033
  %4697 = fadd fast float %4694, %4034
  %4698 = fadd fast float %4695, %4035
  %4699 = fadd fast float %4678, %3997
  %4700 = fadd fast float %4679, %3998
  %4701 = fadd fast float %4680, %3999
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4699, float %4700, float %4701, float %4699, float %4700, float %4701)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call float @dx.op.unary.f32(i32 25, float %4702)  ; Rsqrt(value)
  %4704 = fmul fast float %4699, %4703
  %4705 = fmul fast float %4700, %4703
  %4706 = fmul fast float %4701, %4703
  %4707 = fsub fast float %4704, %3997
  %4708 = fsub fast float %4705, %3998
  %4709 = fsub fast float %4706, %3999
  %4710 = fmul fast float %4707, %4587
  %4711 = fmul fast float %4708, %4587
  %4712 = fmul fast float %4709, %4587
  %4713 = fadd fast float %4710, %3997
  %4714 = fadd fast float %4711, %3998
  %4715 = fadd fast float %4712, %3999
  %4716 = call float @dx.op.binary.f32(i32 36, float %4009, float %4635)  ; FMin(a,b)
  %4717 = fsub fast float %4716, %4009
  %4718 = fmul fast float %4717, %4587
  %4719 = fadd fast float %4718, %4009
  %4720 = fsub fast float %4648, %4036
  %4721 = fmul fast float %4720, %4587
  %4722 = fadd fast float %4721, %4036
  br label %4723

; <label>:4723                                    ; preds = %4585, %4547, %4449
  %4724 = phi float [ %4713, %4585 ], [ %3997, %4547 ], [ %3997, %4449 ]
  %4725 = phi float [ %4714, %4585 ], [ %3998, %4547 ], [ %3998, %4449 ]
  %4726 = phi float [ %4715, %4585 ], [ %3999, %4547 ], [ %3999, %4449 ]
  %4727 = phi float [ %4696, %4585 ], [ %4033, %4547 ], [ %4033, %4449 ]
  %4728 = phi float [ %4697, %4585 ], [ %4034, %4547 ], [ %4034, %4449 ]
  %4729 = phi float [ %4698, %4585 ], [ %4035, %4547 ], [ %4035, %4449 ]
  %4730 = phi float [ %4687, %4585 ], [ %4048, %4547 ], [ %4048, %4449 ]
  %4731 = phi float [ %4688, %4585 ], [ %4049, %4547 ], [ %4049, %4449 ]
  %4732 = phi float [ %4689, %4585 ], [ %4050, %4547 ], [ %4050, %4449 ]
  %4733 = phi float [ %4722, %4585 ], [ %4036, %4547 ], [ %4036, %4449 ]
  %4734 = phi float [ %4719, %4585 ], [ %4009, %4547 ], [ %4009, %4449 ]
  br i1 %4447, label %4735, label %5008

; <label>:4735                                    ; preds = %4723
  %4736 = call float @dx.op.unary.f32(i32 23, float %4734)  ; Log(value)
  %4737 = fmul fast float %4736, 4.000000e+00
  %4738 = call float @dx.op.unary.f32(i32 21, float %4737)  ; Exp(value)
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4741 = fmul fast float %4740, %36
  %4742 = fmul fast float %4740, %37
  %4743 = fmul fast float %4740, %38
  %4744 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4745 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4746 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4747 = call float @dx.op.unary.f32(i32 23, float %4744)  ; Log(value)
  %4748 = call float @dx.op.unary.f32(i32 23, float %4745)  ; Log(value)
  %4749 = call float @dx.op.unary.f32(i32 23, float %4746)  ; Log(value)
  %4750 = fmul fast float %4747, 4.000000e+00
  %4751 = fmul fast float %4748, 4.000000e+00
  %4752 = fmul fast float %4749, 4.000000e+00
  %4753 = call float @dx.op.unary.f32(i32 21, float %4750)  ; Exp(value)
  %4754 = call float @dx.op.unary.f32(i32 21, float %4751)  ; Exp(value)
  %4755 = call float @dx.op.unary.f32(i32 21, float %4752)  ; Exp(value)
  %4756 = fadd fast float %4754, %4753
  %4757 = fadd fast float %4756, %4755
  %4758 = fdiv fast float 1.000000e+00, %4757
  %4759 = fmul fast float %4758, %4753
  %4760 = fcmp fast ogt float %45, 0.000000e+00
  %4761 = fcmp fast ogt float %46, 0.000000e+00
  %4762 = fcmp fast ogt float %47, 0.000000e+00
  %4763 = fcmp fast olt float %45, 0.000000e+00
  %4764 = fcmp fast olt float %46, 0.000000e+00
  %4765 = fcmp fast olt float %47, 0.000000e+00
  %4766 = zext i1 %4760 to i32
  %4767 = zext i1 %4761 to i32
  %4768 = zext i1 %4762 to i32
  %4769 = zext i1 %4763 to i32
  %4770 = zext i1 %4764 to i32
  %4771 = zext i1 %4765 to i32
  %4772 = sub nsw i32 %4766, %4769
  %4773 = sub nsw i32 %4767, %4770
  %4774 = sub nsw i32 %4768, %4771
  %4775 = call float @dx.op.unary.f32(i32 83, float %4741)  ; DerivCoarseX(value)
  %4776 = call float @dx.op.unary.f32(i32 83, float %4742)  ; DerivCoarseX(value)
  %4777 = call float @dx.op.unary.f32(i32 83, float %4743)  ; DerivCoarseX(value)
  %4778 = call float @dx.op.unary.f32(i32 84, float %4741)  ; DerivCoarseY(value)
  %4779 = call float @dx.op.unary.f32(i32 84, float %4742)  ; DerivCoarseY(value)
  %4780 = call float @dx.op.unary.f32(i32 84, float %4743)  ; DerivCoarseY(value)
  %4781 = fcmp fast ole float %228, %4759
  %4782 = fmul fast float %4758, %4756
  %4783 = fcmp fast ole float %228, %4782
  %4784 = select i1 %4783, float %4743, float %4741
  %4785 = select i1 %4783, float %4741, float %4742
  %4786 = select i1 %4781, float %4742, float %4784
  %4787 = select i1 %4781, float %4743, float %4785
  %4788 = select i1 %4783, float %4777, float %4775
  %4789 = select i1 %4783, float %4775, float %4776
  %4790 = select i1 %4781, float %4776, float %4788
  %4791 = select i1 %4781, float %4777, float %4789
  %4792 = select i1 %4783, float %4780, float %4778
  %4793 = select i1 %4783, float %4778, float %4779
  %4794 = select i1 %4781, float %4779, float %4792
  %4795 = select i1 %4781, float %4780, float %4793
  %4796 = call float @dx.op.unary.f32(i32 27, float %4786)  ; Round_ni(value)
  %4797 = call float @dx.op.unary.f32(i32 27, float %4787)  ; Round_ni(value)
  %4798 = fptosi float %4796 to i32
  %4799 = fptosi float %4797 to i32
  %4800 = xor i32 %4799, %4798
  %4801 = sitofp i32 %4800 to float
  %4802 = fptosi float %4801 to i32
  %4803 = sitofp i32 %4802 to float
  %4804 = fmul fast float %4803, 0x3FE3C6EF40000000
  %4805 = frem fast float %4796, 2.560000e+02
  %4806 = frem fast float %4797, 2.560000e+02
  %4807 = fptoui float %4805 to i32
  %4808 = fptoui float %4806 to i32
  %4809 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4807, i32 %4808, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.ResRet.f32 %4809, 1
  %4812 = extractvalue %dx.types.ResRet.f32 %4809, 2
  %4813 = fadd fast float %4810, %4804
  %4814 = fadd fast float %4811, %4804
  %4815 = fadd fast float %4812, %4804
  %4816 = call float @dx.op.unary.f32(i32 22, float %4813)  ; Frc(value)
  %4817 = call float @dx.op.unary.f32(i32 22, float %4814)  ; Frc(value)
  %4818 = call float @dx.op.unary.f32(i32 22, float %4815)  ; Frc(value)
  %4819 = fmul fast float %4818, 0x401921FB60000000
  %4820 = call float @dx.op.unary.f32(i32 13, float %4819)  ; Sin(value)
  %4821 = call float @dx.op.unary.f32(i32 12, float %4819)  ; Cos(value)
  %4822 = fsub fast float -0.000000e+00, %4821
  %4823 = fmul fast float %4821, %4786
  %4824 = call float @dx.op.tertiary.f32(i32 46, float %4820, float %4787, float %4823)  ; FMad(a,b,c)
  %4825 = fmul fast float %4820, %4786
  %4826 = call float @dx.op.tertiary.f32(i32 46, float %4822, float %4787, float %4825)  ; FMad(a,b,c)
  %4827 = fadd fast float %4824, %4816
  %4828 = fadd fast float %4826, %4817
  %4829 = extractvalue %dx.types.CBufRet.f32 %4739, 3
  %4830 = bitcast float %4829 to i32
  %4831 = icmp eq i32 %4830, 0
  br i1 %4831, label %4870, label %4832

; <label>:4832                                    ; preds = %4735
  %4833 = add i32 %4830, 0
  %4834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4835 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4834, %dx.types.Handle %75, float %4827, float %4828, float undef, float undef, i32 0, i32 0, i32 undef, float %4790, float %4791, float undef, float %4794, float %4795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4836 = extractvalue %dx.types.ResRet.f32 %4835, 0
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4840 = fsub fast float 1.000000e+00, %4445
  %4841 = call float @dx.op.binary.f32(i32 35, float %4840, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4842 = bitcast float %4445 to i32
  %4843 = sitofp i32 %4842 to float
  %4844 = fadd fast float %4843, 0xC1CFBF8940000000
  %4845 = fmul fast float %4839, %4844
  %4846 = fadd fast float %4845, 0x41CFBF8940000000
  %4847 = fptosi float %4846 to i32
  %4848 = bitcast i32 %4847 to float
  %4849 = bitcast float %4841 to i32
  %4850 = sitofp i32 %4849 to float
  %4851 = fadd fast float %4850, 0xC1CFBF8940000000
  %4852 = fmul fast float %4851, %4839
  %4853 = fadd fast float %4852, 0x41CFBF8940000000
  %4854 = fptosi float %4853 to i32
  %4855 = bitcast i32 %4854 to float
  %4856 = fmul fast float %4848, %4838
  %4857 = fmul fast float %4855, %4838
  %4858 = fsub fast float %4841, %4856
  %4859 = fadd fast float %4857, %4841
  %4860 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4861 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4862 = fsub fast float %4836, %4860
  %4863 = fsub fast float %4861, %4860
  %4864 = bitcast float %4863 to i32
  %4865 = sub nsw i32 2129859010, %4864
  %4866 = bitcast i32 %4865 to float
  %4867 = fmul fast float %4866, %4862
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = fcmp fast olt float %4868, 0x3F70101020000000
  br i1 %4869, label %5008, label %4870

; <label>:4870                                    ; preds = %4832, %4735
  %4871 = phi float [ %4868, %4832 ], [ %4445, %4735 ]
  %4872 = fmul fast float %4871, %4738
  %4873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.i32 %4873, 1
  %4875 = extractvalue %dx.types.CBufRet.i32 %4873, 0
  %4876 = add i32 %4875, 0
  %4877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4878 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4877, %dx.types.Handle %74, float %4827, float %4828, float undef, float undef, i32 0, i32 0, i32 undef, float %4790, float %4791, float undef, float %4794, float %4795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.f32 %4878, 2
  %4882 = extractvalue %dx.types.ResRet.f32 %4878, 3
  %4883 = and i32 %4874, 255
  %4884 = uitofp i32 %4883 to float
  %4885 = lshr i32 %4874, 8
  %4886 = and i32 %4885, 255
  %4887 = uitofp i32 %4886 to float
  %4888 = fmul fast float %4882, %4884
  %4889 = fadd fast float %4888, %4887
  %4890 = fmul fast float %4889, 0x3F70101000000000
  %4891 = fadd fast float %4890, 0xBFB99999A0000000
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4892, 0x3FF1C71C80000000
  %4894 = call float @dx.op.binary.f32(i32 36, float %4890, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4895 = fsub fast float 1.000000e+00, %4893
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = fmul fast float %4896, %4879
  %4898 = fmul fast float %4896, %4880
  %4899 = fmul fast float %4896, %4881
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4903 = fmul fast float %4893, %4879
  %4904 = fmul fast float %4893, %4880
  %4905 = fmul fast float %4893, %4881
  %4906 = fadd fast float %4903, %4894
  %4907 = fadd fast float %4904, %4894
  %4908 = fadd fast float %4905, %4894
  %4909 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4910 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.i32 %4912, 3
  %4914 = extractvalue %dx.types.CBufRet.i32 %4912, 2
  %4915 = add i32 %4914, 0
  %4916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4916, %dx.types.Handle %74, float %4827, float %4828, float undef, float undef, i32 0, i32 0, i32 undef, float %4790, float %4791, float undef, float %4794, float %4795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.ResRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.ResRet.f32 %4917, 2
  %4921 = extractvalue %dx.types.ResRet.f32 %4917, 3
  %4922 = and i32 %4913, 255
  %4923 = uitofp i32 %4922 to float
  %4924 = lshr i32 %4913, 8
  %4925 = and i32 %4924, 255
  %4926 = uitofp i32 %4925 to float
  %4927 = lshr i32 %4913, 16
  %4928 = and i32 %4927, 255
  %4929 = uitofp i32 %4928 to float
  %4930 = fmul fast float %4929, 0x3F70101000000000
  %4931 = fmul fast float %4918, %4923
  %4932 = fadd fast float %4931, %4926
  %4933 = fmul fast float %4932, 0x3F70101000000000
  %4934 = fadd fast float %4919, -5.000000e-01
  %4935 = fadd fast float %4921, -5.000000e-01
  %4936 = fmul fast float %4934, %4930
  %4937 = fmul fast float %4935, %4930
  %4938 = fadd fast float %4936, 5.000000e-01
  %4939 = fadd fast float %4937, 5.000000e-01
  %4940 = fmul fast float %4938, 2.000000e+00
  %4941 = fadd fast float %4940, -1.000000e+00
  %4942 = fmul fast float %4939, 2.000000e+00
  %4943 = fadd fast float %4942, -1.000000e+00
  %4944 = fadd fast float %4941, %4943
  %4945 = fmul fast float %4944, 5.000000e-01
  %4946 = fsub fast float %4941, %4943
  %4947 = fmul fast float %4946, 5.000000e-01
  %4948 = call float @dx.op.unary.f32(i32 6, float %4945)  ; FAbs(value)
  %4949 = fsub fast float 1.000000e+00, %4948
  %4950 = call float @dx.op.unary.f32(i32 6, float %4947)  ; FAbs(value)
  %4951 = fsub fast float %4949, %4950
  %4952 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4947, float %4951, float %4945, float %4947, float %4951)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = call float @dx.op.unary.f32(i32 25, float %4952)  ; Rsqrt(value)
  %4954 = fmul fast float %4945, %4953
  %4955 = fmul fast float %4947, %4953
  %4956 = select i1 %4783, i32 %4773, i32 %4774
  %4957 = select i1 %4781, i32 %4772, i32 %4956
  %4958 = sitofp i32 %4957 to float
  %4959 = fmul fast float %4951, %4958
  %4960 = fmul fast float %4959, %4953
  %4961 = select i1 %4783, float %4960, float %4955
  %4962 = select i1 %4783, float %4955, float %4960
  %4963 = select i1 %4781, float %4960, float %4954
  %4964 = select i1 %4781, float %4955, float %4961
  %4965 = select i1 %4781, float %4954, float %4962
  %4966 = fsub fast float %4900, %4730
  %4967 = fsub fast float %4901, %4731
  %4968 = fsub fast float %4902, %4732
  %4969 = fmul fast float %4966, %4872
  %4970 = fmul fast float %4967, %4872
  %4971 = fmul fast float %4968, %4872
  %4972 = fadd fast float %4969, %4730
  %4973 = fadd fast float %4970, %4731
  %4974 = fadd fast float %4971, %4732
  %4975 = fsub fast float %4909, %4727
  %4976 = fsub fast float %4910, %4728
  %4977 = fsub fast float %4911, %4729
  %4978 = fmul fast float %4975, %4872
  %4979 = fmul fast float %4976, %4872
  %4980 = fmul fast float %4977, %4872
  %4981 = fadd fast float %4978, %4727
  %4982 = fadd fast float %4979, %4728
  %4983 = fadd fast float %4980, %4729
  %4984 = fadd fast float %4963, %4724
  %4985 = fadd fast float %4964, %4725
  %4986 = fadd fast float %4965, %4726
  %4987 = call float @dx.op.dot3.f32(i32 55, float %4984, float %4985, float %4986, float %4984, float %4985, float %4986)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = call float @dx.op.unary.f32(i32 25, float %4987)  ; Rsqrt(value)
  %4989 = fmul fast float %4984, %4988
  %4990 = fmul fast float %4985, %4988
  %4991 = fmul fast float %4986, %4988
  %4992 = fsub fast float %4989, %4724
  %4993 = fsub fast float %4990, %4725
  %4994 = fsub fast float %4991, %4726
  %4995 = fmul fast float %4992, %4872
  %4996 = fmul fast float %4993, %4872
  %4997 = fmul fast float %4994, %4872
  %4998 = fadd fast float %4995, %4724
  %4999 = fadd fast float %4996, %4725
  %5000 = fadd fast float %4997, %4726
  %5001 = call float @dx.op.binary.f32(i32 36, float %4734, float %4920)  ; FMin(a,b)
  %5002 = fsub fast float %5001, %4734
  %5003 = fmul fast float %5002, %4872
  %5004 = fadd fast float %5003, %4734
  %5005 = fsub fast float %4933, %4733
  %5006 = fmul fast float %5005, %4872
  %5007 = fadd fast float %5006, %4733
  br label %5008

; <label>:5008                                    ; preds = %4870, %4832, %4723, %4439
  %5009 = phi float [ %4998, %4870 ], [ %4724, %4832 ], [ %4724, %4723 ], [ %3997, %4439 ]
  %5010 = phi float [ %4999, %4870 ], [ %4725, %4832 ], [ %4725, %4723 ], [ %3998, %4439 ]
  %5011 = phi float [ %5000, %4870 ], [ %4726, %4832 ], [ %4726, %4723 ], [ %3999, %4439 ]
  %5012 = phi float [ %4981, %4870 ], [ %4727, %4832 ], [ %4727, %4723 ], [ %4033, %4439 ]
  %5013 = phi float [ %4982, %4870 ], [ %4728, %4832 ], [ %4728, %4723 ], [ %4034, %4439 ]
  %5014 = phi float [ %4983, %4870 ], [ %4729, %4832 ], [ %4729, %4723 ], [ %4035, %4439 ]
  %5015 = phi float [ %4972, %4870 ], [ %4730, %4832 ], [ %4730, %4723 ], [ %4048, %4439 ]
  %5016 = phi float [ %4973, %4870 ], [ %4731, %4832 ], [ %4731, %4723 ], [ %4049, %4439 ]
  %5017 = phi float [ %4974, %4870 ], [ %4732, %4832 ], [ %4732, %4723 ], [ %4050, %4439 ]
  %5018 = phi float [ %5007, %4870 ], [ %4733, %4832 ], [ %4733, %4723 ], [ %4036, %4439 ]
  %5019 = phi float [ %5004, %4870 ], [ %4734, %4832 ], [ %4734, %4723 ], [ %4009, %4439 ]
  %5020 = fcmp fast une float %4443, 0.000000e+00
  %5021 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = call float @dx.op.unary.f32(i32 25, float %5021)  ; Rsqrt(value)
  br i1 %5020, label %5030, label %5023

; <label>:5023                                    ; preds = %5008
  %5024 = fmul fast float %5022, %165
  %5025 = fmul fast float %5022, %166
  %5026 = fmul fast float %5022, %167
  %5027 = fsub fast float -0.000000e+00, %5024
  %5028 = fsub fast float -0.000000e+00, %5025
  %5029 = fsub fast float -0.000000e+00, %5026
  br label %5197

; <label>:5030                                    ; preds = %5008
  %5031 = fmul fast float %165, %5022
  %5032 = fsub fast float -0.000000e+00, %5031
  %5033 = fmul fast float %166, %5022
  %5034 = fsub fast float -0.000000e+00, %5033
  %5035 = fmul fast float %167, %5022
  %5036 = fsub fast float -0.000000e+00, %5035
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5034, float %5036, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = fmul fast float %4443, 2.500000e+00
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = fmul fast float %4443, 0x4013FFFFE0000000
  %5041 = fadd fast float %5040, 0xBFFFFFFFE0000000
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = fmul fast float %4443, 0x4004000020000000
  %5044 = fadd fast float %5043, 0xBFF8000040000000
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %4015, 1.000000e+01
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = fmul fast float %5047, 2.000000e+00
  %5049 = fsub fast float 3.000000e+00, %5048
  %5050 = fmul fast float %5047, %5047
  %5051 = fmul fast float %5050, %5049
  %5052 = fsub fast float 1.000000e+00, %5051
  %5053 = fsub fast float 0x3FE3333340000000, %5018
  %5054 = fmul fast float %5053, 0x400AAAAAA0000000
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fmul fast float %5052, %5055
  %5057 = fmul fast float %5015, 0x3FEA2B8620000000
  %5058 = fmul fast float %5016, 0x3FEA2B8620000000
  %5059 = fmul fast float %5017, 0x3FEA2B8620000000
  %5060 = fadd fast float %5057, 0x3FC81DFBA0000000
  %5061 = fmul fast float %5060, %5015
  %5062 = fadd fast float %5061, 0x3F910E6020000000
  %5063 = fadd fast float %5058, 0x3FC81DFBA0000000
  %5064 = fmul fast float %5063, %5016
  %5065 = fadd fast float %5064, 0x3F910E6020000000
  %5066 = fadd fast float %5059, 0x3FC81DFBA0000000
  %5067 = fmul fast float %5066, %5017
  %5068 = fadd fast float %5067, 0x3F910E6020000000
  %5069 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5070 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5071 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5072 = fsub fast float %5069, %5015
  %5073 = fsub fast float %5070, %5016
  %5074 = fsub fast float %5071, %5017
  %5075 = fmul fast float %5072, %5039
  %5076 = fmul fast float %5075, %5056
  %5077 = fmul fast float %5073, %5039
  %5078 = fmul fast float %5077, %5056
  %5079 = fmul fast float %5074, %5039
  %5080 = fmul fast float %5079, %5056
  %5081 = fadd fast float %5076, %5015
  %5082 = fadd fast float %5078, %5016
  %5083 = fadd fast float %5080, %5017
  %5084 = fmul fast float %5019, %5019
  %5085 = fmul fast float %5084, %5084
  %5086 = fadd fast float %5042, 1.000000e+00
  %5087 = fsub fast float %5086, %5056
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = fsub fast float 1.000000e+00, %5085
  %5092 = call float @dx.op.binary.f32(i32 36, float %5088, float %5091)  ; FMin(a,b)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5094 = call float @dx.op.binary.f32(i32 35, float %5092, float %5093)  ; FMax(a,b)
  %5095 = fadd fast float %5090, 0xBFE4CCCCC0000000
  %5096 = fmul fast float %5095, 0x4006DB6DA0000000
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fmul fast float %5097, 2.000000e+00
  %5099 = fsub fast float 3.000000e+00, %5098
  %5100 = bitcast float %5012 to i32
  %5101 = ashr i32 %5100, 1
  %5102 = add nsw i32 %5101, 532487669
  %5103 = bitcast i32 %5102 to float
  %5104 = fsub fast float 1.000000e+00, %5103
  %5105 = bitcast float %5104 to i32
  %5106 = sub nsw i32 2129859010, %5105
  %5107 = bitcast i32 %5106 to float
  %5108 = fmul fast float %5107, 2.000000e+00
  %5109 = bitcast float %5013 to i32
  %5110 = ashr i32 %5109, 1
  %5111 = add nsw i32 %5110, 532487669
  %5112 = bitcast i32 %5111 to float
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = bitcast float %5113 to i32
  %5115 = sub nsw i32 2129859010, %5114
  %5116 = bitcast i32 %5115 to float
  %5117 = fmul fast float %5116, 2.000000e+00
  %5118 = bitcast float %5014 to i32
  %5119 = ashr i32 %5118, 1
  %5120 = add nsw i32 %5119, 532487669
  %5121 = bitcast i32 %5120 to float
  %5122 = fsub fast float 1.000000e+00, %5121
  %5123 = bitcast float %5122 to i32
  %5124 = sub nsw i32 2129859010, %5123
  %5125 = bitcast i32 %5124 to float
  %5126 = fmul fast float %5125, 2.000000e+00
  %5127 = fsub fast float 0x4002A9FBE0000000, %5108
  %5128 = fadd fast float %5108, 0x3FD54FDF00000000
  %5129 = bitcast float %5128 to i32
  %5130 = sub nsw i32 2129859010, %5129
  %5131 = bitcast i32 %5130 to float
  %5132 = fmul fast float %5131, %5127
  %5133 = fmul fast float %5132, %5132
  %5134 = fsub fast float 0x4002A9FBE0000000, %5117
  %5135 = fadd fast float %5117, 0x3FD54FDF00000000
  %5136 = bitcast float %5135 to i32
  %5137 = sub nsw i32 2129859010, %5136
  %5138 = bitcast i32 %5137 to float
  %5139 = fmul fast float %5138, %5134
  %5140 = fmul fast float %5139, %5139
  %5141 = fsub fast float 0x4002A9FBE0000000, %5126
  %5142 = fadd fast float %5126, 0x3FD54FDF00000000
  %5143 = bitcast float %5142 to i32
  %5144 = sub nsw i32 2129859010, %5143
  %5145 = bitcast i32 %5144 to float
  %5146 = fmul fast float %5145, %5141
  %5147 = fmul fast float %5146, %5146
  %5148 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5133)  ; FMax(a,b)
  %5149 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5140)  ; FMax(a,b)
  %5150 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5147)  ; FMax(a,b)
  %5151 = fsub fast float 1.000000e+00, %5037
  %5152 = fadd fast float %5151, %5052
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = fsub fast float 1.000000e+00, %4424
  %5155 = fmul fast float %5094, %5154
  %5156 = fmul fast float %5097, %5097
  %5157 = fmul fast float %5156, %5155
  %5158 = fmul fast float %5157, %5099
  %5159 = fmul fast float %5154, 0xBFE99999A0000000
  %5160 = fmul fast float %5159, %5039
  %5161 = fmul fast float %5160, %5056
  %5162 = fadd fast float %5161, 1.000000e+00
  %5163 = fadd fast float %5018, -1.000000e+00
  %5164 = fmul fast float %5162, %5163
  %5165 = fadd fast float %5164, 1.000000e+00
  %5166 = fsub fast float %5148, %5012
  %5167 = fsub fast float %5149, %5013
  %5168 = fsub fast float %5150, %5014
  %5169 = fmul fast float %5158, %5166
  %5170 = fmul fast float %5158, %5167
  %5171 = fmul fast float %5158, %5168
  %5172 = fadd fast float %5169, %5012
  %5173 = fadd fast float %5170, %5013
  %5174 = fadd fast float %5171, %5014
  %5175 = fsub fast float %85, %5009
  %5176 = fsub fast float %86, %5010
  %5177 = fsub fast float %87, %5011
  %5178 = fmul fast float %5158, %5175
  %5179 = fmul fast float %5158, %5176
  %5180 = fmul fast float %5158, %5177
  %5181 = fadd fast float %5178, %5009
  %5182 = fadd fast float %5179, %5010
  %5183 = fadd fast float %5180, %5011
  %5184 = fmul fast float %5158, %5153
  %5185 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5186 = fsub fast float 1.000000e+00, %5185
  %5187 = fmul fast float %5184, %5186
  %5188 = fadd fast float %5187, %5185
  %5189 = fsub fast float 1.000000e+00, %5019
  %5190 = fmul fast float %5158, %5189
  %5191 = fadd fast float %5190, %5019
  %5192 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5182, float %5183, float %5181, float %5182, float %5183)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = call float @dx.op.unary.f32(i32 25, float %5192)  ; Rsqrt(value)
  %5194 = fmul fast float %5181, %5193
  %5195 = fmul fast float %5182, %5193
  %5196 = fmul fast float %5183, %5193
  br label %5197

; <label>:5197                                    ; preds = %5030, %5023
  %5198 = phi float [ %5029, %5023 ], [ %5036, %5030 ]
  %5199 = phi float [ %5028, %5023 ], [ %5034, %5030 ]
  %5200 = phi float [ %5027, %5023 ], [ %5032, %5030 ]
  %5201 = phi float [ %5026, %5023 ], [ %5035, %5030 ]
  %5202 = phi float [ %5025, %5023 ], [ %5033, %5030 ]
  %5203 = phi float [ %5024, %5023 ], [ %5031, %5030 ]
  %5204 = phi float [ %5009, %5023 ], [ %5194, %5030 ]
  %5205 = phi float [ %5010, %5023 ], [ %5195, %5030 ]
  %5206 = phi float [ %5011, %5023 ], [ %5196, %5030 ]
  %5207 = phi float [ %5012, %5023 ], [ %5172, %5030 ]
  %5208 = phi float [ %5013, %5023 ], [ %5173, %5030 ]
  %5209 = phi float [ %5014, %5023 ], [ %5174, %5030 ]
  %5210 = phi float [ %5015, %5023 ], [ %5081, %5030 ]
  %5211 = phi float [ %5016, %5023 ], [ %5082, %5030 ]
  %5212 = phi float [ %5017, %5023 ], [ %5083, %5030 ]
  %5213 = phi float [ %5018, %5023 ], [ %5188, %5030 ]
  %5214 = phi float [ %5019, %5023 ], [ %5191, %5030 ]
  %5215 = select i1 %217, float 0.000000e+00, float %5209
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %5200, float %5199, float %5198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5202, float %5201, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5219 = fmul fast float %5218, 2.000000e+00
  %5220 = fmul fast float %5219, %5204
  %5221 = fmul fast float %5219, %5205
  %5222 = fmul fast float %5219, %5206
  %5223 = fsub fast float %5203, %5220
  %5224 = fsub fast float %5202, %5221
  %5225 = fsub fast float %5201, %5222
  %5226 = call float @dx.op.binary.f32(i32 36, float %5214, float 1.000000e+00)  ; FMin(a,b)
  %5227 = fsub fast float 1.000000e+00, %5214
  %5228 = bitcast float %5227 to i32
  %5229 = sub nsw i32 2129859010, %5228
  %5230 = fsub fast float 1.000000e+00, %55
  %5231 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = call float @dx.op.binary.f32(i32 35, float %5231, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5233 = fdiv fast float %5230, %5232
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = fmul fast float %5235, 5.000000e-01
  %5237 = fadd fast float %5236, 5.000000e-01
  %5238 = fmul fast float %5237, %55
  %5239 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = fmul fast float %5240, %5233
  %5242 = fadd fast float %5238, %5241
  %5243 = fsub fast float 5.000000e-01, %5236
  %5244 = fmul fast float %5243, %5210
  %5245 = fmul fast float %5243, %5211
  %5246 = fmul fast float %5243, %5212
  %5247 = fadd fast float %5242, %5244
  %5248 = fadd fast float %5242, %5245
  %5249 = fadd fast float %5242, %5246
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5224, float %5225, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5252 = fmul fast float %5251, 5.000000e-01
  %5253 = fadd fast float %5252, 5.000000e-01
  %5254 = fmul fast float %5253, %55
  %5255 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5224, float %5225, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = fmul fast float %5256, %5233
  %5258 = fadd fast float %5254, %5257
  %5259 = fsub fast float 5.000000e-01, %5252
  %5260 = fmul fast float %5259, %5210
  %5261 = fmul fast float %5259, %5211
  %5262 = fmul fast float %5259, %5212
  %5263 = fadd fast float %5258, %5260
  %5264 = fadd fast float %5258, %5261
  %5265 = fadd fast float %5258, %5262
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5268 = call float @dx.op.binary.f32(i32 36, float %5210, float %5267)  ; FMin(a,b)
  %5269 = fsub fast float 1.000000e+00, %5226
  %5270 = fmul fast float %5268, %5269
  %5271 = fsub fast float 1.000000e+00, %5270
  %5272 = bitcast float %5271 to i32
  %5273 = sub nsw i32 2129859010, %5272
  %5274 = bitcast i32 %5273 to float
  %5275 = call float @dx.op.binary.f32(i32 36, float %5211, float %5267)  ; FMin(a,b)
  %5276 = fmul fast float %5275, %5269
  %5277 = fsub fast float 1.000000e+00, %5276
  %5278 = bitcast float %5277 to i32
  %5279 = sub nsw i32 2129859010, %5278
  %5280 = bitcast i32 %5279 to float
  %5281 = call float @dx.op.binary.f32(i32 36, float %5212, float %5267)  ; FMin(a,b)
  %5282 = fmul fast float %5281, %5269
  %5283 = fsub fast float 1.000000e+00, %5282
  %5284 = bitcast float %5283 to i32
  %5285 = sub nsw i32 2129859010, %5284
  %5286 = bitcast i32 %5285 to float
  %5287 = fmul fast float %5226, %56
  %5288 = fmul fast float %5287, %5247
  %5289 = fmul fast float %5288, %5274
  %5290 = fmul fast float %5226, %57
  %5291 = fmul fast float %5290, %5248
  %5292 = fmul fast float %5291, %5280
  %5293 = fmul fast float %5226, %58
  %5294 = fmul fast float %5293, %5249
  %5295 = fmul fast float %5294, %5286
  %5296 = call float @dx.op.binary.f32(i32 36, float %5207, float %5267)  ; FMin(a,b)
  %5297 = fmul fast float %5296, %5269
  %5298 = fsub fast float 1.000000e+00, %5297
  %5299 = bitcast float %5298 to i32
  %5300 = sub nsw i32 2129859010, %5299
  %5301 = bitcast i32 %5300 to float
  %5302 = call float @dx.op.binary.f32(i32 36, float %5208, float %5267)  ; FMin(a,b)
  %5303 = fmul fast float %5302, %5269
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = bitcast float %5304 to i32
  %5306 = sub nsw i32 2129859010, %5305
  %5307 = bitcast i32 %5306 to float
  %5308 = call float @dx.op.binary.f32(i32 36, float %5215, float %5267)  ; FMin(a,b)
  %5309 = fmul fast float %5308, %5269
  %5310 = fsub fast float 1.000000e+00, %5309
  %5311 = bitcast float %5310 to i32
  %5312 = sub nsw i32 2129859010, %5311
  %5313 = bitcast i32 %5312 to float
  %5314 = fmul fast float %5287, %5263
  %5315 = fmul fast float %5314, %5301
  %5316 = fmul fast float %5290, %5264
  %5317 = fmul fast float %5316, %5307
  %5318 = fmul fast float %5293, %5265
  %5319 = fmul fast float %5318, %5313
  %5320 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5292, float %5295, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = select i1 %217, float 0.000000e+00, float %5289
  %5322 = select i1 %217, float %5320, float %5292
  %5323 = select i1 %217, float 0.000000e+00, float %5295
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5317, float %5319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = select i1 %217, float 0.000000e+00, float %5315
  %5326 = select i1 %217, float %5324, float %5317
  %5327 = select i1 %217, float 0.000000e+00, float %5319
  %5328 = fmul fast float %5217, 9.843750e-01
  %5329 = fmul fast float %5213, 9.843750e-01
  %5330 = fadd fast float %5328, 7.812500e-03
  %5331 = fadd fast float %5329, 7.812500e-03
  %5332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5330, float %5331, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5333 = extractvalue %dx.types.ResRet.f32 %5332, 2
  %5334 = extractvalue %dx.types.ResRet.f32 %5332, 3
  %5335 = fmul fast float %5333, %5207
  %5336 = fmul fast float %5333, %5208
  %5337 = fmul fast float %5333, %5215
  %5338 = fadd fast float %5335, %5334
  %5339 = fadd fast float %5336, %5334
  %5340 = fadd fast float %5337, %5334
  %5341 = fcmp fast ogt float %4010, 0.000000e+00
  br i1 %5341, label %5342, label %5368

; <label>:5342                                    ; preds = %5197
  %5343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4010, float %5217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5344 = extractvalue %dx.types.ResRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.ResRet.f32 %5343, 1
  %5346 = extractvalue %dx.types.ResRet.f32 %5343, 2
  %5347 = fadd fast float %5344, -5.000000e-01
  %5348 = fadd fast float %5345, -5.000000e-01
  %5349 = fadd fast float %5346, -5.000000e-01
  %5350 = fsub fast float 1.000000e+00, %5207
  %5351 = fsub fast float 1.000000e+00, %5208
  %5352 = fsub fast float 1.000000e+00, %5215
  %5353 = fmul fast float %5207, 4.000000e+00
  %5354 = fmul fast float %5353, %5350
  %5355 = fmul fast float %5354, %5347
  %5356 = fmul fast float %5208, 4.000000e+00
  %5357 = fmul fast float %5356, %5351
  %5358 = fmul fast float %5357, %5348
  %5359 = fmul fast float %5215, 4.000000e+00
  %5360 = fmul fast float %5359, %5352
  %5361 = fmul fast float %5360, %5349
  %5362 = fadd fast float %5355, %5338
  %5363 = fadd fast float %5358, %5339
  %5364 = fadd fast float %5361, %5340
  %5365 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5366 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  br label %5368

; <label>:5368                                    ; preds = %5342, %5197
  %5369 = phi float [ %5365, %5342 ], [ %5338, %5197 ]
  %5370 = phi float [ %5366, %5342 ], [ %5339, %5197 ]
  %5371 = phi float [ %5367, %5342 ], [ %5340, %5197 ]
  %5372 = call float @dx.op.binary.f32(i32 35, float %5370, float %5371)  ; FMax(a,b)
  %5373 = call float @dx.op.binary.f32(i32 35, float %5369, float %5372)  ; FMax(a,b)
  %5374 = fsub fast float 1.000000e+00, %5373
  %5375 = fmul fast float %5374, %5321
  %5376 = fmul fast float %5374, %5322
  %5377 = fmul fast float %5374, %5323
  %5378 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = fcmp fast ogt float %5378, 0x3E7FF19E20000000
  %5380 = fdiv fast float 1.000000e+00, %5378
  %5381 = select i1 %5379, float %5380, float 0.000000e+00
  %5382 = fmul fast float %5381, %5210
  %5383 = fmul fast float %5381, %5211
  %5384 = fmul fast float %5381, %5212
  %5385 = fadd fast float %5382, -1.000000e+00
  %5386 = fadd fast float %5383, -1.000000e+00
  %5387 = fadd fast float %5384, -1.000000e+00
  %5388 = fmul fast float %5385, 5.000000e-01
  %5389 = fmul fast float %5386, 5.000000e-01
  %5390 = fmul fast float %5387, 5.000000e-01
  %5391 = fadd fast float %5388, 1.000000e+00
  %5392 = fadd fast float %5389, 1.000000e+00
  %5393 = fadd fast float %5390, 1.000000e+00
  %5394 = fmul fast float %5369, %5325
  %5395 = fmul fast float %5370, %5326
  %5396 = fmul fast float %5371, %5327
  %5397 = fsub fast float 1.000000e+00, %5217
  %5398 = bitcast float %5397 to i32
  %5399 = sitofp i32 %5398 to float
  %5400 = fmul fast float %5399, 5.000000e+00
  %5401 = fadd fast float %5400, 0xC1EFBF8940000000
  %5402 = fptosi float %5401 to i32
  %5403 = bitcast i32 %5402 to float
  %5404 = fmul fast float %5403, %4011
  %5405 = fmul fast float %5321, %5404
  %5406 = fmul fast float %5405, %5374
  %5407 = fmul fast float %5406, %5391
  %5408 = fmul fast float %5322, %5404
  %5409 = fmul fast float %5408, %5374
  %5410 = fmul fast float %5409, %5392
  %5411 = fmul fast float %5323, %5404
  %5412 = fmul fast float %5411, %5374
  %5413 = fmul fast float %5412, %5393
  %5414 = fmul fast float %5375, %4007
  %5415 = fmul fast float %5376, %4007
  %5416 = fmul fast float %5377, %4007
  %5417 = fadd fast float %5394, %4003
  %5418 = fadd fast float %5417, %5407
  %5419 = fmul fast float %5418, %4007
  %5420 = fadd fast float %5395, %4004
  %5421 = fadd fast float %5420, %5410
  %5422 = fmul fast float %5421, %4007
  %5423 = fadd fast float %5396, %4005
  %5424 = fadd fast float %5423, %5413
  %5425 = fmul fast float %5424, %4007
  %5426 = bitcast i32 %5229 to float
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 3
  %5429 = fcmp fast oeq float %5428, 0.000000e+00
  br i1 %5429, label %5657, label %5430

; <label>:5430                                    ; preds = %5368
  %5431 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5427, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5427, 2
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.CBufRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.CBufRet.f32 %5434, 2
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = select i1 %217, float %5439, float %5435
  %5443 = select i1 %217, float %5441, float %5436
  %5444 = select i1 %217, float %5440, float %5437
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5447 = fcmp fast une float %5446, 0.000000e+00
  br i1 %5447, label %5448, label %5465

; <label>:5448                                    ; preds = %5430
  %5449 = fptoui float %78 to i32
  %5450 = fptoui float %79 to i32
  %5451 = lshr i32 %5449, 4
  %5452 = lshr i32 %5450, 4
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 0
  %5455 = fptoui float %5454 to i32
  %5456 = add i32 %5455, 15
  %5457 = lshr i32 %5456, 4
  %5458 = mul i32 %5457, %5452
  %5459 = add i32 %5458, %5451
  %5460 = shl i32 %5459, 3
  %5461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5460, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.i32 %5461, 0
  %5463 = and i32 %5462, -268435456
  %5464 = icmp eq i32 %5463, -1342177280
  br i1 %5464, label %5475, label %5465

; <label>:5465                                    ; preds = %5448, %5430
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 2
  %5468 = extractvalue %dx.types.CBufRet.f32 %5466, 3
  %5469 = fmul fast float %5467, %78
  %5470 = fmul fast float %5468, %79
  %5471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5469, float %5470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.ResRet.f32 %5471, 2
  br label %5475

; <label>:5475                                    ; preds = %5465, %5448
  %5476 = phi float [ %5472, %5465 ], [ 0.000000e+00, %5448 ]
  %5477 = phi float [ %5473, %5465 ], [ 0.000000e+00, %5448 ]
  %5478 = phi float [ %5474, %5465 ], [ 0.000000e+00, %5448 ]
  %5479 = call float @dx.op.binary.f32(i32 36, float %5477, float %5478)  ; FMin(a,b)
  %5480 = call float @dx.op.binary.f32(i32 36, float %5476, float %5479)  ; FMin(a,b)
  %5481 = fcmp fast ogt float %5480, 0.000000e+00
  br i1 %5481, label %5482, label %5657, !dx.controlflow.hints !76

; <label>:5482                                    ; preds = %5475
  %5483 = fmul fast float %5476, %5442
  %5484 = fmul fast float %5477, %5443
  %5485 = fmul fast float %5478, %5444
  %5486 = fsub fast float %5431, %5203
  %5487 = fsub fast float %5432, %5202
  %5488 = fsub fast float %5433, %5201
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5486, float %5487, float %5488, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = call float @dx.op.unary.f32(i32 25, float %5489)  ; Rsqrt(value)
  %5491 = fmul fast float %5490, %5486
  %5492 = fmul fast float %5490, %5487
  %5493 = fmul fast float %5490, %5488
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5199, float %5198, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5497 = fmul fast float %5496, %5496
  %5498 = fmul fast float %5497, %5426
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = fmul fast float %5499, %5496
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = fmul fast float %5501, %5501
  %5503 = call float @dx.op.unary.f32(i32 6, float %5494)  ; FAbs(value)
  %5504 = fsub fast float 1.000000e+00, %5213
  %5505 = call float @dx.op.binary.f32(i32 35, float %5504, float 0x3F847AE140000000)  ; FMax(a,b)
  %5506 = fmul fast float %5505, %5505
  %5507 = fmul fast float %5506, %5506
  %5508 = fsub fast float 1.000000e+00, %5507
  %5509 = fmul fast float %5217, %5217
  %5510 = fmul fast float %5509, %5508
  %5511 = fadd fast float %5510, %5507
  %5512 = bitcast float %5511 to i32
  %5513 = ashr i32 %5512, 1
  %5514 = add nsw i32 %5513, 532487669
  %5515 = bitcast i32 %5514 to float
  %5516 = fadd fast float %5515, %5217
  %5517 = fmul fast float %5507, %5502
  %5518 = fsub fast float 1.000000e+00, %5502
  %5519 = fadd fast float %5518, %5517
  %5520 = fmul fast float %5503, %5503
  %5521 = fmul fast float %5520, %5508
  %5522 = fadd fast float %5521, %5507
  %5523 = bitcast float %5522 to i32
  %5524 = ashr i32 %5523, 1
  %5525 = add nsw i32 %5524, 532487669
  %5526 = bitcast i32 %5525 to float
  %5527 = fadd fast float %5526, %5503
  %5528 = fmul fast float %5519, %5519
  %5529 = fmul fast float %5528, %5516
  %5530 = fmul fast float %5529, %5527
  %5531 = fdiv fast float 0x3FF0A00000000000, %5530
  %5532 = fmul fast float %5531, %5507
  %5533 = call float @dx.op.unary.f32(i32 6, float %5495)  ; FAbs(value)
  %5534 = fsub fast float 1.000000e+00, %5533
  %5535 = bitcast float %5534 to i32
  %5536 = sitofp i32 %5535 to float
  %5537 = fmul fast float %5536, 5.000000e+00
  %5538 = fadd fast float %5537, 0xC1EFBF8940000000
  %5539 = fptosi float %5538 to i32
  %5540 = bitcast i32 %5539 to float
  %5541 = fsub fast float 1.000000e+00, %5207
  %5542 = fsub fast float 1.000000e+00, %5208
  %5543 = fsub fast float 1.000000e+00, %5215
  %5544 = fmul fast float %5540, %5541
  %5545 = fmul fast float %5540, %5542
  %5546 = fmul fast float %5540, %5543
  %5547 = fadd fast float %5544, %5207
  %5548 = fadd fast float %5545, %5208
  %5549 = fadd fast float %5546, %5215
  br i1 %5341, label %5550, label %5573

; <label>:5550                                    ; preds = %5482
  %5551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4010, float %5533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5552 = extractvalue %dx.types.ResRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.ResRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.ResRet.f32 %5551, 2
  %5555 = fadd fast float %5552, -5.000000e-01
  %5556 = fadd fast float %5553, -5.000000e-01
  %5557 = fadd fast float %5554, -5.000000e-01
  %5558 = fmul fast float %5207, 4.000000e+00
  %5559 = fmul fast float %5558, %5541
  %5560 = fmul fast float %5559, %5555
  %5561 = fmul fast float %5208, 4.000000e+00
  %5562 = fmul fast float %5561, %5542
  %5563 = fmul fast float %5562, %5556
  %5564 = fmul fast float %5215, 4.000000e+00
  %5565 = fmul fast float %5564, %5543
  %5566 = fmul fast float %5565, %5557
  %5567 = fadd fast float %5560, %5547
  %5568 = fadd fast float %5563, %5548
  %5569 = fadd fast float %5566, %5549
  %5570 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5571 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5572 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  br label %5573

; <label>:5573                                    ; preds = %5550, %5482
  %5574 = phi float [ %5570, %5550 ], [ %5547, %5482 ]
  %5575 = phi float [ %5571, %5550 ], [ %5548, %5482 ]
  %5576 = phi float [ %5572, %5550 ], [ %5549, %5482 ]
  %5577 = fmul fast float %5494, 9.843750e-01
  %5578 = fadd fast float %5577, 7.812500e-03
  %5579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5578, float %5331, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5580 = extractvalue %dx.types.ResRet.f32 %5579, 2
  %5581 = extractvalue %dx.types.ResRet.f32 %5579, 3
  %5582 = fmul fast float %5580, %5207
  %5583 = fmul fast float %5580, %5208
  %5584 = fmul fast float %5580, %5215
  %5585 = fadd fast float %5582, %5581
  %5586 = fadd fast float %5583, %5581
  %5587 = fadd fast float %5584, %5581
  br i1 %5341, label %5588, label %5611

; <label>:5588                                    ; preds = %5573
  %5589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4010, float %5494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5590 = extractvalue %dx.types.ResRet.f32 %5589, 0
  %5591 = extractvalue %dx.types.ResRet.f32 %5589, 1
  %5592 = extractvalue %dx.types.ResRet.f32 %5589, 2
  %5593 = fadd fast float %5590, -5.000000e-01
  %5594 = fadd fast float %5591, -5.000000e-01
  %5595 = fadd fast float %5592, -5.000000e-01
  %5596 = fmul fast float %5207, 4.000000e+00
  %5597 = fmul fast float %5596, %5541
  %5598 = fmul fast float %5597, %5593
  %5599 = fmul fast float %5208, 4.000000e+00
  %5600 = fmul fast float %5599, %5542
  %5601 = fmul fast float %5600, %5594
  %5602 = fmul fast float %5215, 4.000000e+00
  %5603 = fmul fast float %5602, %5543
  %5604 = fmul fast float %5603, %5595
  %5605 = fadd fast float %5598, %5585
  %5606 = fadd fast float %5601, %5586
  %5607 = fadd fast float %5604, %5587
  %5608 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5609 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5610 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  br label %5611

; <label>:5611                                    ; preds = %5588, %5573
  %5612 = phi float [ %5608, %5588 ], [ %5585, %5573 ]
  %5613 = phi float [ %5609, %5588 ], [ %5586, %5573 ]
  %5614 = phi float [ %5610, %5588 ], [ %5587, %5573 ]
  %5615 = call float @dx.op.binary.f32(i32 35, float %5613, float %5614)  ; FMax(a,b)
  %5616 = call float @dx.op.binary.f32(i32 35, float %5612, float %5615)  ; FMax(a,b)
  %5617 = fsub fast float 1.000000e+00, %5616
  %5618 = fmul fast float %5574, %5532
  %5619 = fmul fast float %5575, %5532
  %5620 = fmul fast float %5576, %5532
  %5621 = fsub fast float 1.000000e+00, %5495
  %5622 = bitcast float %5621 to i32
  %5623 = sitofp i32 %5622 to float
  %5624 = fmul fast float %5623, 5.000000e+00
  %5625 = fadd fast float %5624, 0xC1EFBF8940000000
  %5626 = fptosi float %5625 to i32
  %5627 = bitcast i32 %5626 to float
  %5628 = fmul fast float %5627, %4011
  %5629 = fmul fast float %5617, %5628
  %5630 = fmul fast float %5629, %5391
  %5631 = fmul fast float %5629, %5392
  %5632 = fmul fast float %5629, %5393
  %5633 = fadd fast float %5630, %5618
  %5634 = fadd fast float %5631, %5619
  %5635 = fadd fast float %5632, %5620
  %5636 = fmul fast float %5500, %5483
  %5637 = fmul fast float %5636, %5617
  %5638 = fmul fast float %5500, %5484
  %5639 = fmul fast float %5638, %5617
  %5640 = fmul fast float %5500, %5485
  %5641 = fmul fast float %5640, %5617
  %5642 = fmul fast float %5636, %5633
  %5643 = fmul fast float %5638, %5634
  %5644 = fmul fast float %5640, %5635
  %5645 = fadd fast float %5637, %5375
  %5646 = fmul fast float %5645, %4007
  %5647 = fadd fast float %5639, %5376
  %5648 = fmul fast float %5647, %4007
  %5649 = fadd fast float %5641, %5377
  %5650 = fmul fast float %5649, %4007
  %5651 = fadd fast float %5642, %5418
  %5652 = fmul fast float %5651, %4007
  %5653 = fadd fast float %5643, %5421
  %5654 = fmul fast float %5653, %4007
  %5655 = fadd fast float %5644, %5424
  %5656 = fmul fast float %5655, %4007
  br label %5657

; <label>:5657                                    ; preds = %5611, %5475, %5368
  %5658 = phi float [ %5419, %5368 ], [ %5419, %5475 ], [ %5652, %5611 ]
  %5659 = phi float [ %5422, %5368 ], [ %5422, %5475 ], [ %5654, %5611 ]
  %5660 = phi float [ %5425, %5368 ], [ %5425, %5475 ], [ %5656, %5611 ]
  %5661 = phi float [ %5414, %5368 ], [ %5414, %5475 ], [ %5646, %5611 ]
  %5662 = phi float [ %5415, %5368 ], [ %5415, %5475 ], [ %5648, %5611 ]
  %5663 = phi float [ %5416, %5368 ], [ %5416, %5475 ], [ %5650, %5611 ]
  %5664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.i32 %5664, 0
  %5666 = icmp eq i32 %5665, 0
  br i1 %5666, label %6101, label %5667

; <label>:5667                                    ; preds = %5657
  %5668 = fptoui float %78 to i32
  %5669 = fptoui float %79 to i32
  %5670 = lshr i32 %5668, 4
  %5671 = lshr i32 %5669, 4
  %5672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.i32 %5672, 0
  %5674 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5671, i32 %5673, i32 %5670)  ; UMad(a,b,c)
  %5675 = add nsw i32 %5665, -1
  %5676 = call i32 @dx.op.binary.i32(i32 37, i32 %5675, i32 0)  ; IMax(a,b)
  %5677 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5678 = fptoui float %5677 to i32
  %5679 = lshr i32 %5678, 5
  %5680 = call i32 @dx.op.binary.i32(i32 40, i32 %5679, i32 8191)  ; UMin(a,b)
  %5681 = shl i32 %5680, 2
  %5682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5681, i32 undef)  ; BufferLoad(srv,index,wot)
  %5683 = extractvalue %dx.types.ResRet.i32 %5682, 0
  %5684 = lshr i32 %5683, 16
  %5685 = and i32 %5683, 65535
  %5686 = lshr i32 %5683, 21
  %5687 = lshr i32 %5685, 5
  %5688 = call i32 @dx.op.binary.i32(i32 40, i32 %5687, i32 %5676)  ; UMin(a,b)
  %5689 = icmp ugt i32 %5686, %5688
  br i1 %5689, label %6101, label %5690

; <label>:5690                                    ; preds = %5667
  br label %5691

; <label>:5691                                    ; preds = %6091, %5690
  %5692 = phi i32 [ %6098, %6091 ], [ %5686, %5690 ]
  %5693 = phi float [ %6092, %6091 ], [ %5658, %5690 ]
  %5694 = phi float [ %6093, %6091 ], [ %5659, %5690 ]
  %5695 = phi float [ %6094, %6091 ], [ %5660, %5690 ]
  %5696 = phi float [ %6095, %6091 ], [ %5661, %5690 ]
  %5697 = phi float [ %6096, %6091 ], [ %5662, %5690 ]
  %5698 = phi float [ %6097, %6091 ], [ %5663, %5690 ]
  %5699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.i32 %5699, 0
  %5701 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5674, i32 %5700, i32 %5692)  ; UMad(a,b,c)
  %5702 = shl i32 %5701, 2
  %5703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5702, i32 undef)  ; BufferLoad(srv,index,wot)
  %5704 = extractvalue %dx.types.ResRet.i32 %5703, 0
  %5705 = shl i32 %5692, 5
  %5706 = sub nsw i32 %5684, %5705
  %5707 = call i32 @dx.op.binary.i32(i32 37, i32 %5706, i32 0)  ; IMax(a,b)
  %5708 = call i32 @dx.op.binary.i32(i32 38, i32 %5707, i32 31)  ; IMin(a,b)
  %5709 = sub nsw i32 1, %5684
  %5710 = add nsw i32 %5709, %5685
  %5711 = call i32 @dx.op.binary.i32(i32 37, i32 %5710, i32 0)  ; IMax(a,b)
  %5712 = call i32 @dx.op.binary.i32(i32 38, i32 %5711, i32 32)  ; IMin(a,b)
  %5713 = and i32 %5712, 31
  %5714 = shl i32 -1, %5713
  %5715 = xor i32 %5714, -1
  %5716 = and i32 %5708, 31
  %5717 = shl i32 %5715, %5716
  %5718 = icmp eq i32 %5712, 32
  %5719 = select i1 %5718, i32 -1, i32 %5717
  %5720 = and i32 %5719, %5704
  %5721 = icmp eq i32 %5720, 0
  br i1 %5721, label %6091, label %5722

; <label>:5722                                    ; preds = %5691
  br label %5723

; <label>:5723                                    ; preds = %5803, %5722
  %5724 = phi i32 [ %5735, %5803 ], [ %5720, %5722 ]
  %5725 = phi float [ %5804, %5803 ], [ %5693, %5722 ]
  %5726 = phi float [ %5805, %5803 ], [ %5694, %5722 ]
  %5727 = phi float [ %5806, %5803 ], [ %5695, %5722 ]
  %5728 = phi float [ %5807, %5803 ], [ %5696, %5722 ]
  %5729 = phi float [ %5808, %5803 ], [ %5697, %5722 ]
  %5730 = phi float [ %5809, %5803 ], [ %5698, %5722 ]
  %5731 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5724)  ; FirstbitLo(value)
  %5732 = add i32 %5731, %5705
  %5733 = and i32 %5731, 31
  %5734 = shl i32 1, %5733
  %5735 = xor i32 %5734, %5724
  %5736 = mul i32 %5732, 112
  %5737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5736, i32 undef)  ; BufferLoad(srv,index,wot)
  %5738 = extractvalue %dx.types.ResRet.f32 %5737, 0
  %5739 = extractvalue %dx.types.ResRet.f32 %5737, 1
  %5740 = extractvalue %dx.types.ResRet.f32 %5737, 2
  %5741 = or i32 %5736, 12
  %5742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5741, i32 undef)  ; BufferLoad(srv,index,wot)
  %5743 = extractvalue %dx.types.ResRet.f32 %5742, 0
  %5744 = add i32 %5736, 44
  %5745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5744, i32 undef)  ; BufferLoad(srv,index,wot)
  %5746 = extractvalue %dx.types.ResRet.f32 %5745, 0
  %5747 = add i32 %5736, 48
  %5748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5747, i32 undef)  ; BufferLoad(srv,index,wot)
  %5749 = extractvalue %dx.types.ResRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.ResRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.ResRet.f32 %5748, 2
  %5752 = add i32 %5736, 80
  %5753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5752, i32 undef)  ; BufferLoad(srv,index,wot)
  %5754 = extractvalue %dx.types.ResRet.f32 %5753, 1
  %5755 = extractvalue %dx.types.ResRet.f32 %5753, 2
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5739, float %5740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = select i1 %217, float %5754, float %5738
  %5758 = select i1 %217, float %5756, float %5739
  %5759 = select i1 %217, float %5755, float %5740
  %5760 = fsub fast float %5749, %165
  %5761 = fsub fast float %5750, %166
  %5762 = fsub fast float %5751, %167
  %5763 = call float @dx.op.dot3.f32(i32 55, float %5760, float %5761, float %5762, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = call float @dx.op.unary.f32(i32 24, float %5763)  ; Sqrt(value)
  %5765 = fdiv fast float 1.000000e+00, %5764
  %5766 = fmul fast float %5765, %5760
  %5767 = fmul fast float %5765, %5761
  %5768 = fmul fast float %5765, %5762
  %5769 = fadd fast float %5764, %5743
  %5770 = fdiv fast float 1.000000e+00, %5769
  %5771 = fmul float %5746, %5770
  %5772 = fmul float %5771, %5771
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = and i32 %5734, %5720
  %5775 = icmp eq i32 %5774, 0
  br i1 %5775, label %5798, label %5776, !dx.controlflow.hints !77

; <label>:5776                                    ; preds = %5723
  %5777 = lshr i32 %5668, 5
  %5778 = lshr i32 %5669, 5
  %5779 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5777, i32 %5778, i32 %5732, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5780 = extractvalue %dx.types.ResRet.i32 %5779, 0
  %5781 = and i32 %5780, 3
  %5782 = icmp eq i32 %5781, 0
  %5783 = select i1 %5782, float 1.000000e+00, float 0.000000e+00
  %5784 = icmp eq i32 %5781, 3
  br i1 %5784, label %5785, label %5798

; <label>:5785                                    ; preds = %5776
  %5786 = lshr i32 %5780, 10
  %5787 = and i32 %5786, 8160
  %5788 = and i32 %5669, 31
  %5789 = or i32 %5787, %5788
  %5790 = lshr i32 %5780, 1
  %5791 = and i32 %5790, 16352
  %5792 = and i32 %5668, 31
  %5793 = or i32 %5791, %5792
  %5794 = lshr i32 %5780, 23
  %5795 = and i32 %5794, 255
  %5796 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5793, i32 %5789, i32 %5795, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5797 = extractvalue %dx.types.ResRet.f32 %5796, 0
  br label %5798

; <label>:5798                                    ; preds = %5785, %5776, %5723
  %5799 = phi float [ %5797, %5785 ], [ %5783, %5776 ], [ 0.000000e+00, %5723 ]
  %5800 = call float @dx.op.binary.f32(i32 36, float %5799, float %5799)  ; FMin(a,b)
  %5801 = call float @dx.op.binary.f32(i32 36, float %5799, float %5800)  ; FMin(a,b)
  %5802 = fcmp fast ogt float %5801, 0.000000e+00
  br i1 %5802, label %5811, label %5803, !dx.controlflow.hints !78

; <label>:5803                                    ; preds = %6047, %5798
  %5804 = phi float [ %5725, %5798 ], [ %6087, %6047 ]
  %5805 = phi float [ %5726, %5798 ], [ %6088, %6047 ]
  %5806 = phi float [ %5727, %5798 ], [ %6089, %6047 ]
  %5807 = phi float [ %5728, %5798 ], [ %6081, %6047 ]
  %5808 = phi float [ %5729, %5798 ], [ %6082, %6047 ]
  %5809 = phi float [ %5730, %5798 ], [ %6083, %6047 ]
  %5810 = icmp eq i32 %5724, %5734
  br i1 %5810, label %6090, label %5723

; <label>:5811                                    ; preds = %5798
  %5812 = fmul fast float %5799, %5757
  %5813 = fmul fast float %5799, %5758
  %5814 = fmul fast float %5799, %5759
  %5815 = fsub fast float %5751, %4411
  %5816 = fcmp fast ogt float %5815, 0.000000e+00
  %5817 = fsub fast float %167, %4411
  %5818 = fcmp fast ogt float %5817, 0.000000e+00
  %5819 = xor i1 %5818, %5816
  %5820 = fsub fast float %4411, %5751
  %5821 = fmul fast float %5820, 2.000000e+00
  %5822 = fadd fast float %5821, %5751
  %5823 = select i1 %5819, float %5751, float %5822
  %5824 = fsub fast float %5823, %167
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5760, float %5761, float %5824, float %5760, float %5761, float %5824)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = call float @dx.op.unary.f32(i32 25, float %5825)  ; Rsqrt(value)
  %5827 = fmul fast float %5826, %5760
  %5828 = fmul fast float %5826, %5761
  %5829 = fmul fast float %5826, %5824
  %5830 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4419)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5827, float %5828, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = fdiv fast float 1.000000e+00, %5831
  %5833 = fmul fast float %5832, %5830
  %5834 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5817, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = fcmp fast ogt float %5834, 0.000000e+00
  %5836 = fcmp fast olt float %5834, 0.000000e+00
  %5837 = zext i1 %5835 to i32
  %5838 = zext i1 %5836 to i32
  %5839 = sub nsw i32 %5837, %5838
  %5840 = sitofp i32 %5839 to float
  %5841 = fsub fast float %5823, %4411
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5760, float %5761, float %5841, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = fcmp fast ogt float %5842, 0.000000e+00
  %5844 = fcmp fast olt float %5842, 0.000000e+00
  %5845 = zext i1 %5843 to i32
  %5846 = zext i1 %5844 to i32
  %5847 = sub nsw i32 %5845, %5846
  %5848 = sitofp i32 %5847 to float
  %5849 = fcmp fast une float %5840, %5848
  br i1 %5849, label %5850, label %5860

; <label>:5850                                    ; preds = %5811
  %5851 = fmul fast float %5833, %5829
  %5852 = fmul fast float %5833, %5828
  %5853 = fmul fast float %5833, %5827
  %5854 = fmul fast float %5853, %5853
  %5855 = fmul fast float %5852, %5852
  %5856 = fadd fast float %5854, %5855
  %5857 = fmul fast float %5851, %5851
  %5858 = fadd fast float %5856, %5857
  %5859 = call float @dx.op.unary.f32(i32 24, float %5858)  ; Sqrt(value)
  br label %5872

; <label>:5860                                    ; preds = %5811
  %5861 = icmp slt i32 %5839, 0
  br i1 %5861, label %5862, label %5872

; <label>:5862                                    ; preds = %5860
  %5863 = fsub fast float %165, %5749
  %5864 = fsub fast float %166, %5750
  %5865 = fsub fast float %167, %5823
  %5866 = fmul fast float %5863, %5863
  %5867 = fmul fast float %5864, %5864
  %5868 = fadd fast float %5866, %5867
  %5869 = fmul fast float %5865, %5865
  %5870 = fadd fast float %5868, %5869
  %5871 = call float @dx.op.unary.f32(i32 24, float %5870)  ; Sqrt(value)
  br label %5872

; <label>:5872                                    ; preds = %5862, %5860, %5850
  %5873 = phi float [ %5859, %5850 ], [ %5871, %5862 ], [ 0.000000e+00, %5860 ]
  %5874 = and i1 %5818, %5816
  %5875 = fsub fast float -0.000000e+00, %5873
  %5876 = select i1 %5874, float -0.000000e+00, float %5875
  %5877 = fmul fast float %4412, 0x3FF7154760000000
  %5878 = fmul fast float %5877, %5876
  %5879 = fmul fast float %4413, 0x3FF7154760000000
  %5880 = fmul fast float %5879, %5876
  %5881 = fmul fast float %4414, 0x3FF7154760000000
  %5882 = fmul fast float %5881, %5876
  %5883 = call float @dx.op.unary.f32(i32 21, float %5878)  ; Exp(value)
  %5884 = call float @dx.op.unary.f32(i32 21, float %5880)  ; Exp(value)
  %5885 = call float @dx.op.unary.f32(i32 21, float %5882)  ; Exp(value)
  %5886 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5887 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  %5888 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  %5889 = fmul fast float %5812, %5886
  %5890 = fmul fast float %5813, %5887
  %5891 = fmul fast float %5814, %5888
  %5892 = fsub fast float %5766, %5203
  %5893 = fsub fast float %5767, %5202
  %5894 = fsub fast float %5768, %5201
  %5895 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %5892, float %5893, float %5894)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = call float @dx.op.unary.f32(i32 25, float %5895)  ; Rsqrt(value)
  %5897 = fmul fast float %5896, %5892
  %5898 = fmul fast float %5896, %5893
  %5899 = fmul fast float %5896, %5894
  %5900 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5901 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5199, float %5198, float %5897, float %5898, float %5899)  ; Dot3(ax,ay,az,bx,by,bz)
  %5902 = call float @dx.op.unary.f32(i32 7, float %5900)  ; Saturate(value)
  %5903 = fmul fast float %5902, %5773
  %5904 = fmul fast float %5902, %5902
  %5905 = fmul fast float %5904, %5426
  %5906 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5907 = fmul fast float %5903, %5906
  %5908 = bitcast float %5763 to i32
  %5909 = ashr i32 %5908, 1
  %5910 = sub nsw i32 1597463007, %5909
  %5911 = bitcast i32 %5910 to float
  %5912 = fmul fast float %5911, %5760
  %5913 = fmul fast float %5911, %5761
  %5914 = fmul fast float %5911, %5762
  %5915 = fsub fast float %5912, %5203
  %5916 = fsub fast float %5913, %5202
  %5917 = fsub fast float %5914, %5201
  %5918 = call float @dx.op.dot3.f32(i32 55, float %5915, float %5916, float %5917, float %5915, float %5916, float %5917)  ; Dot3(ax,ay,az,bx,by,bz)
  %5919 = call float @dx.op.unary.f32(i32 25, float %5918)  ; Rsqrt(value)
  %5920 = fmul fast float %5915, %5919
  %5921 = fmul fast float %5916, %5919
  %5922 = fmul fast float %5917, %5919
  %5923 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %5920, float %5921, float %5922)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = fmul fast float %5923, %5923
  %5925 = call float @dx.op.unary.f32(i32 6, float %5900)  ; FAbs(value)
  %5926 = fsub fast float 1.000000e+00, %5213
  %5927 = call float @dx.op.binary.f32(i32 35, float %5926, float 0x3F847AE140000000)  ; FMax(a,b)
  %5928 = fmul fast float %5927, %5927
  %5929 = fmul fast float %5928, %5928
  %5930 = fsub fast float 1.000000e+00, %5929
  %5931 = fmul fast float %5217, %5217
  %5932 = fmul fast float %5931, %5930
  %5933 = fadd fast float %5932, %5929
  %5934 = bitcast float %5933 to i32
  %5935 = ashr i32 %5934, 1
  %5936 = add nsw i32 %5935, 532487669
  %5937 = bitcast i32 %5936 to float
  %5938 = fadd fast float %5937, %5217
  %5939 = fmul fast float %5929, %5924
  %5940 = fsub fast float 1.000000e+00, %5924
  %5941 = fadd fast float %5940, %5939
  %5942 = fmul fast float %5925, %5925
  %5943 = fmul fast float %5942, %5930
  %5944 = fadd fast float %5943, %5929
  %5945 = bitcast float %5944 to i32
  %5946 = ashr i32 %5945, 1
  %5947 = add nsw i32 %5946, 532487669
  %5948 = bitcast i32 %5947 to float
  %5949 = fadd fast float %5948, %5925
  %5950 = fmul fast float %5941, %5941
  %5951 = fmul fast float %5950, %5938
  %5952 = fmul fast float %5951, %5949
  %5953 = fdiv fast float 1.000000e+00, %5952
  %5954 = bitcast float %5929 to i32
  %5955 = sitofp i32 %5954 to float
  %5956 = fmul fast float %5955, 0x3FE7F73180000000
  %5957 = fadd fast float %5956, 0x41AFE27C40000000
  %5958 = fptosi float %5957 to i32
  %5959 = bitcast i32 %5958 to float
  %5960 = fmul fast float %5746, 0x3FD80E9D60000000
  %5961 = fmul fast float %5960, %5911
  %5962 = fadd fast float %5959, %5961
  %5963 = bitcast float %5962 to i32
  %5964 = sub nsw i32 2129859010, %5963
  %5965 = bitcast i32 %5964 to float
  %5966 = fmul fast float %5929, %5953
  %5967 = fmul fast float %5966, %5959
  %5968 = fmul fast float %5967, %5965
  %5969 = call float @dx.op.unary.f32(i32 6, float %5901)  ; FAbs(value)
  %5970 = fsub fast float 1.000000e+00, %5969
  %5971 = bitcast float %5970 to i32
  %5972 = sitofp i32 %5971 to float
  %5973 = fmul fast float %5972, 5.000000e+00
  %5974 = fadd fast float %5973, 0xC1EFBF8940000000
  %5975 = fptosi float %5974 to i32
  %5976 = bitcast i32 %5975 to float
  %5977 = fsub fast float 1.000000e+00, %5207
  %5978 = fsub fast float 1.000000e+00, %5208
  %5979 = fsub fast float 1.000000e+00, %5215
  %5980 = fmul fast float %5976, %5977
  %5981 = fmul fast float %5976, %5978
  %5982 = fmul fast float %5976, %5979
  %5983 = fadd fast float %5980, %5207
  %5984 = fadd fast float %5981, %5208
  %5985 = fadd fast float %5982, %5215
  br i1 %5341, label %5986, label %6009

; <label>:5986                                    ; preds = %5872
  %5987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4010, float %5969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5988 = extractvalue %dx.types.ResRet.f32 %5987, 0
  %5989 = extractvalue %dx.types.ResRet.f32 %5987, 1
  %5990 = extractvalue %dx.types.ResRet.f32 %5987, 2
  %5991 = fadd fast float %5988, -5.000000e-01
  %5992 = fadd fast float %5989, -5.000000e-01
  %5993 = fadd fast float %5990, -5.000000e-01
  %5994 = fmul fast float %5207, 4.000000e+00
  %5995 = fmul fast float %5994, %5977
  %5996 = fmul fast float %5995, %5991
  %5997 = fmul fast float %5208, 4.000000e+00
  %5998 = fmul fast float %5997, %5978
  %5999 = fmul fast float %5998, %5992
  %6000 = fmul fast float %5215, 4.000000e+00
  %6001 = fmul fast float %6000, %5979
  %6002 = fmul fast float %6001, %5993
  %6003 = fadd fast float %5996, %5983
  %6004 = fadd fast float %5999, %5984
  %6005 = fadd fast float %6002, %5985
  %6006 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6007 = call float @dx.op.unary.f32(i32 7, float %6004)  ; Saturate(value)
  %6008 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  br label %6009

; <label>:6009                                    ; preds = %5986, %5872
  %6010 = phi float [ %6006, %5986 ], [ %5983, %5872 ]
  %6011 = phi float [ %6007, %5986 ], [ %5984, %5872 ]
  %6012 = phi float [ %6008, %5986 ], [ %5985, %5872 ]
  %6013 = fmul fast float %5900, 9.843750e-01
  %6014 = fadd fast float %6013, 7.812500e-03
  %6015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %6014, float %5331, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 2
  %6017 = extractvalue %dx.types.ResRet.f32 %6015, 3
  %6018 = fmul fast float %6016, %5207
  %6019 = fmul fast float %6016, %5208
  %6020 = fmul fast float %6016, %5215
  %6021 = fadd fast float %6018, %6017
  %6022 = fadd fast float %6019, %6017
  %6023 = fadd fast float %6020, %6017
  br i1 %5341, label %6024, label %6047

; <label>:6024                                    ; preds = %6009
  %6025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4010, float %5900, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6025, 2
  %6029 = fadd fast float %6026, -5.000000e-01
  %6030 = fadd fast float %6027, -5.000000e-01
  %6031 = fadd fast float %6028, -5.000000e-01
  %6032 = fmul fast float %5207, 4.000000e+00
  %6033 = fmul fast float %6032, %5977
  %6034 = fmul fast float %6033, %6029
  %6035 = fmul fast float %5208, 4.000000e+00
  %6036 = fmul fast float %6035, %5978
  %6037 = fmul fast float %6036, %6030
  %6038 = fmul fast float %5215, 4.000000e+00
  %6039 = fmul fast float %6038, %5979
  %6040 = fmul fast float %6039, %6031
  %6041 = fadd fast float %6034, %6021
  %6042 = fadd fast float %6037, %6022
  %6043 = fadd fast float %6040, %6023
  %6044 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6045 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6046 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  br label %6047

; <label>:6047                                    ; preds = %6024, %6009
  %6048 = phi float [ %6044, %6024 ], [ %6021, %6009 ]
  %6049 = phi float [ %6045, %6024 ], [ %6022, %6009 ]
  %6050 = phi float [ %6046, %6024 ], [ %6023, %6009 ]
  %6051 = call float @dx.op.binary.f32(i32 35, float %6049, float %6050)  ; FMax(a,b)
  %6052 = call float @dx.op.binary.f32(i32 35, float %6048, float %6051)  ; FMax(a,b)
  %6053 = fsub fast float 1.000000e+00, %6052
  %6054 = fmul fast float %6010, %5968
  %6055 = fmul fast float %6011, %5968
  %6056 = fmul fast float %6012, %5968
  %6057 = fsub fast float 1.000000e+00, %5901
  %6058 = bitcast float %6057 to i32
  %6059 = sitofp i32 %6058 to float
  %6060 = fmul fast float %6059, 5.000000e+00
  %6061 = fadd fast float %6060, 0xC1EFBF8940000000
  %6062 = fptosi float %6061 to i32
  %6063 = bitcast i32 %6062 to float
  %6064 = fmul fast float %6063, %4011
  %6065 = fmul fast float %6053, %6064
  %6066 = fmul fast float %6065, %5391
  %6067 = fmul fast float %6065, %5392
  %6068 = fmul fast float %6065, %5393
  %6069 = fadd fast float %6066, %6054
  %6070 = fadd fast float %6067, %6055
  %6071 = fadd fast float %6068, %6056
  %6072 = fmul fast float %5889, %4007
  %6073 = fmul fast float %6072, %5907
  %6074 = fmul fast float %6073, %6053
  %6075 = fmul fast float %5890, %4007
  %6076 = fmul fast float %6075, %5907
  %6077 = fmul fast float %6076, %6053
  %6078 = fmul fast float %5891, %4007
  %6079 = fmul fast float %6078, %5907
  %6080 = fmul fast float %6079, %6053
  %6081 = fadd fast float %6074, %5728
  %6082 = fadd fast float %6077, %5729
  %6083 = fadd fast float %6080, %5730
  %6084 = fmul fast float %6073, %6069
  %6085 = fmul fast float %6076, %6070
  %6086 = fmul fast float %6079, %6071
  %6087 = fadd fast float %6084, %5725
  %6088 = fadd fast float %6085, %5726
  %6089 = fadd fast float %6086, %5727
  br label %5803

; <label>:6090                                    ; preds = %5803
  br label %6091

; <label>:6091                                    ; preds = %6090, %5691
  %6092 = phi float [ %5693, %5691 ], [ %5804, %6090 ]
  %6093 = phi float [ %5694, %5691 ], [ %5805, %6090 ]
  %6094 = phi float [ %5695, %5691 ], [ %5806, %6090 ]
  %6095 = phi float [ %5696, %5691 ], [ %5807, %6090 ]
  %6096 = phi float [ %5697, %5691 ], [ %5808, %6090 ]
  %6097 = phi float [ %5698, %5691 ], [ %5809, %6090 ]
  %6098 = add i32 %5692, 1
  %6099 = icmp ugt i32 %6098, %5688
  br i1 %6099, label %6100, label %5691

; <label>:6100                                    ; preds = %6091
  br label %6101

; <label>:6101                                    ; preds = %6100, %5667, %5657
  %6102 = phi float [ %5658, %5657 ], [ %5658, %5667 ], [ %6092, %6100 ]
  %6103 = phi float [ %5659, %5657 ], [ %5659, %5667 ], [ %6093, %6100 ]
  %6104 = phi float [ %5660, %5657 ], [ %5660, %5667 ], [ %6094, %6100 ]
  %6105 = phi float [ %5661, %5657 ], [ %5661, %5667 ], [ %6095, %6100 ]
  %6106 = phi float [ %5662, %5657 ], [ %5662, %5667 ], [ %6096, %6100 ]
  %6107 = phi float [ %5663, %5657 ], [ %5663, %5667 ], [ %6097, %6100 ]
  %6108 = call float @dx.op.unary.f32(i32 24, float %5210)  ; Sqrt(value)
  %6109 = call float @dx.op.unary.f32(i32 24, float %5211)  ; Sqrt(value)
  %6110 = call float @dx.op.unary.f32(i32 24, float %5212)  ; Sqrt(value)
  %6111 = fmul fast float %6108, %6105
  %6112 = fmul fast float %6109, %6106
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 0
  br i1 %217, label %6115, label %6135

; <label>:6115                                    ; preds = %6101
  %6116 = fadd fast float %6107, %4013
  %6117 = fmul fast float %6116, %4014
  %6118 = fsub fast float 1.000000e+00, %4014
  %6119 = call float @dx.op.unary.f32(i32 7, float %6118)  ; Saturate(value)
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 3
  %6122 = fmul fast float %6121, %6119
  %6123 = fadd fast float %6122, %6117
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6126 = fmul fast float %6125, %5397
  %6127 = fsub fast float %6123, %6126
  %6128 = fadd fast float %6112, %6111
  %6129 = fmul fast float %6114, %6128
  %6130 = extractvalue %dx.types.CBufRet.f32 %6120, 1
  %6131 = fsub fast float %6127, %6130
  %6132 = extractvalue %dx.types.CBufRet.f32 %6120, 2
  %6133 = fmul fast float %6131, %6132
  %6134 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  br label %6151

; <label>:6135                                    ; preds = %6101
  %6136 = fmul fast float %6110, %6107
  %6137 = fmul fast float %6114, %6111
  %6138 = fmul fast float %6114, %6112
  %6139 = fmul fast float %6136, %6114
  %6140 = add i32 %33, 356
  %6141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6140, i32 undef)  ; BufferLoad(srv,index,wot)
  %6142 = extractvalue %dx.types.ResRet.i32 %6141, 0
  %6143 = and i32 %6142, 32
  %6144 = icmp eq i32 %6143, 0
  br i1 %6144, label %6151, label %6145

; <label>:6145                                    ; preds = %6135
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 0
  %6148 = fmul fast float %6147, 0x3FE99999A0000000
  %6149 = fadd fast float %6147, %6137
  %6150 = fadd fast float %6148, %6139
  br label %6151

; <label>:6151                                    ; preds = %6145, %6135, %6115
  %6152 = phi float [ %6129, %6115 ], [ %6149, %6145 ], [ %6137, %6135 ]
  %6153 = phi float [ %6134, %6115 ], [ %6138, %6145 ], [ %6138, %6135 ]
  %6154 = phi float [ 1.000000e+00, %6115 ], [ %6150, %6145 ], [ %6139, %6135 ]
  %6155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6156 = extractvalue %dx.types.CBufRet.f32 %6155, 0
  %6157 = fmul fast float %6156, %6103
  %6158 = fmul fast float %6156, %6104
  %6159 = fadd fast float %6103, %6102
  %6160 = select i1 %217, float %6159, float %6102
  %6161 = fmul float %6160, %6156
  %6162 = select i1 %217, float 0.000000e+00, float %6157
  %6163 = select i1 %217, float 0.000000e+00, float %6158
  %6164 = fmul fast float %6152, %6108
  %6165 = fmul fast float %6153, %6109
  %6166 = fmul fast float %6154, %6110
  %6167 = fadd fast float %6161, %6164
  %6168 = fadd fast float %6162, %6165
  %6169 = fadd fast float %6163, %6166
  %6170 = select i1 %217, float %6153, float %6168
  %6171 = select i1 %217, float %6154, float %6169
  %6172 = call float @dx.op.binary.f32(i32 36, float %6167, float 3.225500e+04)  ; FMin(a,b)
  %6173 = call float @dx.op.binary.f32(i32 36, float %6170, float 3.225500e+04)  ; FMin(a,b)
  %6174 = call float @dx.op.binary.f32(i32 36, float %6171, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6172)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6173)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6174)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!46}
!dx.entryPoints = !{!47}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!41 = !{!42, !43, !44, !45}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!46 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!47 = !{void ()* @ps_main, !"ps_main", !48, !4, !75}
!48 = !{!49, !73, null}
!49 = !{!50, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72}
!50 = !{i32 0, !"SV_Position", i8 9, i8 3, !51, i8 4, i32 1, i8 4, i32 0, i8 0, !52}
!51 = !{i32 0}
!52 = !{i32 3, i32 11}
!53 = !{i32 1, !"COLOR", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 1, i8 0, !54}
!54 = !{i32 3, i32 14}
!55 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 2, i8 0, !56}
!56 = !{i32 3, i32 3}
!57 = !{i32 3, !"NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 3, i8 0, !58}
!58 = !{i32 3, i32 7}
!59 = !{i32 4, !"TANGENT", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 4, i8 0, !60}
!60 = !{i32 3, i32 15}
!61 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 5, i8 0, !58}
!62 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !60}
!63 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 7, i8 0, !58}
!64 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 8, i8 0, !60}
!65 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !51, i8 2, i32 1, i8 2, i32 9, i8 0, !56}
!66 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 10, i8 0, !60}
!67 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 11, i8 0, !58}
!68 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !51, i8 1, i32 1, i8 1, i32 12, i8 0, !69}
!69 = !{i32 3, i32 1}
!70 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !51, i8 1, i32 1, i8 2, i32 12, i8 1, !69}
!71 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !51, i8 1, i32 1, i8 4, i32 13, i8 0, !69}
!72 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !51, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!73 = !{!74}
!74 = !{i32 0, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!75 = !{i32 0, i64 24}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}

