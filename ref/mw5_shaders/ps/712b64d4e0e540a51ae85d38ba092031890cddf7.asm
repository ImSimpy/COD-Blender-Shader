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
; shader hash: 0df2118e51776b3087f09ec8cfe5b5c5
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
  %178 = bitcast i32 %177 to float
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %182 = fmul fast float %180, %78
  %183 = fmul fast float %181, %79
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 114688
  %187 = icmp ne i32 %186, 0
  %188 = select i1 %187, float %182, float 0.000000e+00
  %189 = select i1 %187, float %183, float 0.000000e+00
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fmul fast float %191, 2.550000e+02
  %193 = fptoui float %192 to i32
  %194 = select i1 %187, i32 %193, i32 0
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 3
  %197 = and i32 %196, 3
  %198 = icmp ne i32 %197, 0
  %199 = and i32 %196, 4
  %200 = icmp ne i32 %199, 0
  %201 = and i1 %198, %200
  br i1 %201, label %202, label %211

; <label>:202                                     ; preds = %0
  %203 = fmul fast float %113, %79
  %204 = fmul fast float %112, %78
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %204, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = fcmp fast olt float %207, %209
  br label %214

; <label>:211                                     ; preds = %0
  %212 = icmp eq i32 %199, 0
  %213 = and i1 %198, %212
  br label %214

; <label>:214                                     ; preds = %211, %202
  %215 = phi i1 [ %210, %202 ], [ %213, %211 ]
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fmul fast float %217, 0x3FE3C6EF40000000
  %219 = frem fast float %78, 2.560000e+02
  %220 = frem fast float %79, 2.560000e+02
  %221 = fptoui float %219 to i32
  %222 = fptoui float %220 to i32
  %223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fadd fast float %224, %218
  %226 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %227 = add i32 %33, 156
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = shl i32 %229, 4
  %231 = and i32 %230, 32752
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = lshr i32 %229, 7
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %229, 22
  %237 = shl nuw nsw i32 %236, 5
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = add i32 %33, 216
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 255
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F70101020000000
  %245 = lshr i32 %241, 8
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = lshr i32 %241, 16
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = add i32 %33, 36
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = add i32 %33, 288
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = fmul fast float %264, 0x3F50624DE0000000
  %268 = fmul fast float %266, 0x3F50624DE0000000
  %269 = add i32 %33, 172
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = shl i32 %271, 4
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %271, 7
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %271, 22
  %279 = shl nuw nsw i32 %278, 5
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %33, 232
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %283, 8
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %283, 16
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = add i32 %33, 52
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %33, 304
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = fmul fast float %306, 0x3F50624DE0000000
  %310 = fmul fast float %308, 0x3F50624DE0000000
  %311 = add i32 %33, 188
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %33, 248
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %33, 68
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %33, 320
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %348, 0x3F50624DE0000000
  %352 = fmul fast float %350, 0x3F50624DE0000000
  %353 = add i32 %33, 204
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = shl i32 %355, 4
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %355, 7
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %355, 22
  %363 = shl nuw nsw i32 %362, 5
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %33, 264
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %367, 8
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = lshr i32 %367, 16
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = add i32 %33, 84
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = add i32 %33, 336
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = fmul fast float %390, 0x3F50624DE0000000
  %394 = fmul fast float %392, 0x3F50624DE0000000
  %395 = add i32 %33, 348
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 32
  %399 = icmp eq i32 %398, 0
  %400 = and i32 %397, 64
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %397, 128
  %403 = icmp eq i32 %402, 0
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 2
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %421, label %408

; <label>:408                                     ; preds = %214
  %409 = add i32 %33, 488
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = add i32 %411, 0
  %413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %413, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = fmul fast float %415, %68
  %419 = fmul fast float %416, %69
  %420 = fmul fast float %417, %70
  br label %421

; <label>:421                                     ; preds = %408, %214
  %422 = phi float [ %70, %214 ], [ %420, %408 ]
  %423 = phi float [ %69, %214 ], [ %419, %408 ]
  %424 = phi float [ %68, %214 ], [ %418, %408 ]
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 2
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %448, label %429

; <label>:429                                     ; preds = %421
  %430 = add i32 %33, 44
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 1
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %424, float 1.000000e+00
  %436 = add i32 %33, 60
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 1
  %440 = icmp ne i32 %439, 0
  %441 = select i1 %440, float %423, float 1.000000e+00
  %442 = add i32 %33, 76
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 1
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %422, float 1.000000e+00
  br label %448

; <label>:448                                     ; preds = %429, %421
  %449 = phi float [ %422, %421 ], [ %447, %429 ]
  %450 = phi float [ %423, %421 ], [ %441, %429 ]
  %451 = phi float [ %424, %421 ], [ %435, %429 ]
  %452 = lshr i32 %426, 20
  %453 = and i32 %452, 3
  %454 = add nuw nsw i32 %453, 1
  %455 = add i32 %33, 24
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = add i32 %33, 28
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = or i32 %460, %457
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %921, label %463

; <label>:463                                     ; preds = %448
  %464 = and i32 %457, 262144
  %465 = icmp ne i32 %464, 0
  %466 = select i1 %465, float %39, float 1.000000e+00
  %467 = select i1 %465, float %40, float 0.000000e+00
  %468 = select i1 %465, float %41, float 0.000000e+00
  %469 = select i1 %465, float %42, float 1.000000e+00
  %470 = select i1 %465, float %43, float %66
  %471 = select i1 %465, float %44, float %67
  %472 = add i32 %33, 284
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = lshr i32 %474, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = fmul fast float %476, 0x3F50624DE0000000
  %478 = add i32 %33, 88
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 16
  %482 = and i32 %481, 255
  %483 = lshr i32 %480, 24
  %484 = add i32 %33, 292
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 65535
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %486, 16
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = add i32 %33, 32
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 22
  %495 = shl nuw nsw i32 %494, 5
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = shl i32 %493, 4
  %498 = and i32 %497, 32752
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = lshr i32 %493, 7
  %501 = and i32 %500, 32752
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 3
  %505 = fmul fast float %504, 1.000000e+03
  %506 = fmul fast float %267, %505
  %507 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %508 = fadd fast float %507, %257
  %509 = fmul fast float %268, %505
  %510 = call float @dx.op.unary.f32(i32 22, float %509)  ; Frc(value)
  %511 = fadd fast float %510, %259
  %512 = fmul fast float %477, %505
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = fmul fast float %513, 0x401921FB60000000
  %515 = fadd fast float %514, %496
  %516 = call float @dx.op.unary.f32(i32 13, float %515)  ; Sin(value)
  %517 = call float @dx.op.unary.f32(i32 12, float %515)  ; Cos(value)
  %518 = fsub fast float -0.000000e+00, %516
  %519 = fadd fast float %470, -5.000000e-01
  %520 = fadd fast float %471, -5.000000e-01
  %521 = fmul fast float %488, %519
  %522 = fmul fast float %490, %520
  %523 = fadd fast float %521, 5.000000e-01
  %524 = fadd fast float %522, 5.000000e-01
  %525 = fmul fast float %499, %523
  %526 = fmul fast float %502, %524
  %527 = fmul fast float %517, %525
  %528 = call float @dx.op.tertiary.f32(i32 46, float %518, float %526, float %527)  ; FMad(a,b,c)
  %529 = fmul fast float %516, %525
  %530 = call float @dx.op.tertiary.f32(i32 46, float %517, float %526, float %529)  ; FMad(a,b,c)
  %531 = fadd fast float %508, %528
  %532 = fadd fast float %511, %530
  %533 = icmp ugt i32 %482, 1
  %534 = icmp ugt i32 %480, 33554431
  %535 = or i1 %534, %533
  br i1 %535, label %536, label %561

; <label>:536                                     ; preds = %463
  %537 = add i32 %33, 228
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = lshr i32 %539, 16
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = fmul fast float %504, %541
  %543 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %544 = mul nuw nsw i32 %482, %483
  %545 = uitofp i32 %544 to float
  %546 = fmul fast float %543, %545
  %547 = call float @dx.op.unary.f32(i32 27, float %546)  ; Round_ni(value)
  %548 = fptoui float %547 to i32
  %549 = urem i32 %548, %482
  %550 = udiv i32 %548, %483
  %551 = call float @dx.op.unary.f32(i32 22, float %531)  ; Frc(value)
  %552 = call float @dx.op.unary.f32(i32 22, float %532)  ; Frc(value)
  %553 = uitofp i32 %549 to float
  %554 = uitofp i32 %550 to float
  %555 = fadd fast float %551, %553
  %556 = fadd fast float %552, %554
  %557 = uitofp i32 %482 to float
  %558 = uitofp i32 %483 to float
  %559 = fdiv fast float %555, %557
  %560 = fdiv fast float %556, %558
  br label %561

; <label>:561                                     ; preds = %536, %463
  %562 = phi float [ %559, %536 ], [ %531, %463 ]
  %563 = phi float [ %560, %536 ], [ %532, %463 ]
  %564 = and i32 %457, 16
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %762, label %566

; <label>:566                                     ; preds = %561
  %567 = add i32 %33, 376
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = add i32 %569, 0
  %571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %571, %dx.types.Handle %74, float %562, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  %577 = and i32 %480, 255
  %578 = uitofp i32 %577 to float
  %579 = lshr i32 %480, 8
  %580 = and i32 %579, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %576, %578
  %583 = fadd fast float %582, %581
  %584 = fmul fast float %583, 0x3F70101000000000
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 512
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %597, label %589

; <label>:589                                     ; preds = %566
  %590 = add i32 %33, 456
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = add i32 %592, 0
  %594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %594, %dx.types.Handle %75, float %562, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  br label %597

; <label>:597                                     ; preds = %589, %566
  %598 = phi float [ %596, %589 ], [ 1.000000e+00, %566 ]
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %600, 33554432
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %709, label %603

; <label>:603                                     ; preds = %597
  %604 = add i32 %33, 224
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = lshr i32 %606, 16
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = add i32 %33, 228
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 65535
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = lshr i32 %617, 24
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F70101020000000
  %621 = and i32 %617, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = lshr i32 %617, 8
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = lshr i32 %617, 16
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = add i32 %33, 220
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = lshr i32 %634, 24
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = and i32 %634, 255
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = lshr i32 %634, 8
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101020000000
  %645 = lshr i32 %634, 16
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = bitcast float %573 to i32
  %650 = ashr i32 %649, 1
  %651 = sub nsw i32 1597463174, %650
  %652 = bitcast i32 %651 to float
  %653 = fmul fast float %573, 5.000000e-01
  %654 = fmul fast float %652, %652
  %655 = fmul fast float %654, %653
  %656 = fsub fast float 1.500000e+00, %655
  %657 = fmul fast float %652, %573
  %658 = fmul fast float %657, %656
  %659 = bitcast float %574 to i32
  %660 = ashr i32 %659, 1
  %661 = sub nsw i32 1597463174, %660
  %662 = bitcast i32 %661 to float
  %663 = fmul fast float %574, 5.000000e-01
  %664 = fmul fast float %662, %662
  %665 = fmul fast float %664, %663
  %666 = fsub fast float 1.500000e+00, %665
  %667 = fmul fast float %662, %574
  %668 = fmul fast float %667, %666
  %669 = bitcast float %575 to i32
  %670 = ashr i32 %669, 1
  %671 = sub nsw i32 1597463174, %670
  %672 = bitcast i32 %671 to float
  %673 = fmul fast float %575, 5.000000e-01
  %674 = fmul fast float %672, %672
  %675 = fmul fast float %674, %673
  %676 = fsub fast float 1.500000e+00, %675
  %677 = fmul fast float %672, %575
  %678 = fmul fast float %677, %676
  %679 = fsub fast float %658, %640
  %680 = fsub fast float %668, %644
  %681 = fsub fast float %678, %648
  %682 = fmul fast float %679, %608
  %683 = fmul fast float %680, %610
  %684 = fmul fast float %681, %615
  %685 = fadd fast float %682, %623
  %686 = fadd fast float %683, %627
  %687 = fadd fast float %684, %631
  %688 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %689 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %690 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %691 = fmul fast float %688, %688
  %692 = fmul fast float %689, %689
  %693 = fmul fast float %690, %690
  %694 = fsub fast float %691, %573
  %695 = fsub fast float %692, %574
  %696 = fsub fast float %693, %575
  %697 = fmul fast float %694, %598
  %698 = fmul fast float %695, %598
  %699 = fmul fast float %696, %598
  %700 = fadd fast float %697, %573
  %701 = fadd fast float %698, %574
  %702 = fadd fast float %699, %575
  %703 = fadd fast float %620, %584
  %704 = fsub fast float %703, %637
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %706 = fsub fast float %705, %584
  %707 = fmul fast float %706, %598
  %708 = fadd fast float %707, %584
  br label %762

; <label>:709                                     ; preds = %597
  %710 = and i32 %600, 134217728
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %746, label %712

; <label>:712                                     ; preds = %709
  %713 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %714 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %715 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %716 = fadd fast float %713, -5.000000e-01
  %717 = fadd fast float %714, -5.000000e-01
  %718 = fadd fast float %715, -5.000000e-01
  %719 = fmul fast float %716, %598
  %720 = fmul fast float %717, %598
  %721 = fmul fast float %718, %598
  %722 = fadd fast float %719, 5.000000e-01
  %723 = fadd fast float %720, 5.000000e-01
  %724 = fadd fast float %721, 5.000000e-01
  %725 = call float @dx.op.unary.f32(i32 24, float %573)  ; Sqrt(value)
  %726 = call float @dx.op.unary.f32(i32 24, float %574)  ; Sqrt(value)
  %727 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %728 = fmul fast float %722, 2.000000e+00
  %729 = fsub fast float 1.000000e+00, %728
  %730 = fmul fast float %729, %725
  %731 = fadd fast float %730, %728
  %732 = fmul fast float %731, %725
  %733 = fmul fast float %723, 2.000000e+00
  %734 = fsub fast float 1.000000e+00, %733
  %735 = fmul fast float %734, %726
  %736 = fadd fast float %735, %733
  %737 = fmul fast float %736, %726
  %738 = fmul fast float %724, 2.000000e+00
  %739 = fsub fast float 1.000000e+00, %738
  %740 = fmul fast float %739, %727
  %741 = fadd fast float %740, %738
  %742 = fmul fast float %741, %727
  %743 = fmul fast float %732, %732
  %744 = fmul fast float %737, %737
  %745 = fmul fast float %742, %742
  br label %762

; <label>:746                                     ; preds = %709
  %747 = fmul fast float %244, %244
  %748 = fmul fast float %248, %248
  %749 = fmul fast float %252, %252
  %750 = fadd fast float %747, -1.000000e+00
  %751 = fadd fast float %748, -1.000000e+00
  %752 = fadd fast float %749, -1.000000e+00
  %753 = fmul fast float %598, %750
  %754 = fmul fast float %598, %751
  %755 = fmul fast float %598, %752
  %756 = fadd fast float %753, 1.000000e+00
  %757 = fadd fast float %754, 1.000000e+00
  %758 = fadd fast float %755, 1.000000e+00
  %759 = fmul fast float %756, %573
  %760 = fmul fast float %757, %574
  %761 = fmul fast float %758, %575
  br label %762

; <label>:762                                     ; preds = %746, %712, %603, %561
  %763 = phi float [ %708, %603 ], [ %584, %712 ], [ %584, %746 ], [ 0x3FA23C0BE0000000, %561 ]
  %764 = phi float [ %700, %603 ], [ %743, %712 ], [ %759, %746 ], [ 1.000000e+00, %561 ]
  %765 = phi float [ %701, %603 ], [ %744, %712 ], [ %760, %746 ], [ 1.000000e+00, %561 ]
  %766 = phi float [ %702, %603 ], [ %745, %712 ], [ %761, %746 ], [ 1.000000e+00, %561 ]
  %767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.i32 %767, 1
  %769 = and i32 %768, 1
  %770 = icmp ne i32 %769, 0
  %771 = add i32 %33, 356
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 32
  %775 = icmp ne i32 %774, 0
  %776 = and i1 %770, %775
  %777 = select i1 %776, float 1.000000e+00, float %764
  %778 = select i1 %776, float 0x3FD3333340000000, float %765
  %779 = select i1 %776, float 0x3FD3333340000000, float %766
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 32
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %856, label %784

; <label>:784                                     ; preds = %762
  %785 = add i32 %33, 92
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = add i32 %33, 392
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = add i32 %790, 0
  %792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %793 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %792, %dx.types.Handle %74, float %562, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = extractvalue %dx.types.ResRet.f32 %793, 2
  %797 = extractvalue %dx.types.ResRet.f32 %793, 3
  %798 = and i32 %787, 255
  %799 = uitofp i32 %798 to float
  %800 = lshr i32 %787, 8
  %801 = and i32 %800, 255
  %802 = uitofp i32 %801 to float
  %803 = lshr i32 %787, 16
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F70101000000000
  %807 = fmul fast float %794, %799
  %808 = fadd fast float %807, %802
  %809 = fmul fast float %808, 0x3F70101000000000
  %810 = fadd fast float %795, -5.000000e-01
  %811 = fadd fast float %797, -5.000000e-01
  %812 = fmul fast float %810, %806
  %813 = fmul fast float %811, %806
  %814 = fadd fast float %812, 5.000000e-01
  %815 = fadd fast float %813, 5.000000e-01
  %816 = fmul fast float %814, 2.000000e+00
  %817 = fadd fast float %816, -1.000000e+00
  %818 = fmul fast float %815, 2.000000e+00
  %819 = fadd fast float %818, -1.000000e+00
  %820 = fadd fast float %817, %819
  %821 = fmul fast float %820, 5.000000e-01
  %822 = fsub fast float %817, %819
  %823 = fmul fast float %822, 5.000000e-01
  %824 = call float @dx.op.unary.f32(i32 6, float %821)  ; FAbs(value)
  %825 = fsub fast float 1.000000e+00, %824
  %826 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %827 = fsub fast float %825, %826
  %828 = call float @dx.op.dot3.f32(i32 55, float %821, float %823, float %827, float %821, float %823, float %827)  ; Dot3(ax,ay,az,bx,by,bz)
  %829 = call float @dx.op.unary.f32(i32 25, float %828)  ; Rsqrt(value)
  %830 = fmul fast float %821, %829
  %831 = fmul fast float %823, %829
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 67108864
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %852, label %836

; <label>:836                                     ; preds = %784
  %837 = add i32 %33, 280
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 65535
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 65535
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = lshr i32 %839, 16
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = fsub fast float %809, %847
  %849 = fmul fast float %848, %841
  %850 = fadd fast float %849, %845
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  br label %852

; <label>:852                                     ; preds = %836, %784
  %853 = phi float [ %851, %836 ], [ %809, %784 ]
  %854 = call float @dx.op.dot2.f32(i32 54, float %830, float %831, float %466, float %467)  ; Dot2(ax,ay,bx,by)
  %855 = call float @dx.op.dot2.f32(i32 54, float %830, float %831, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  br label %856

; <label>:856                                     ; preds = %852, %762
  %857 = phi float [ %853, %852 ], [ 0x3FD6666660000000, %762 ]
  %858 = phi float [ %854, %852 ], [ 0.000000e+00, %762 ]
  %859 = phi float [ %855, %852 ], [ 0.000000e+00, %762 ]
  %860 = phi float [ %796, %852 ], [ 1.000000e+00, %762 ]
  %861 = add i32 %33, 160
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = lshr i32 %863, 22
  %865 = shl nuw nsw i32 %864, 5
  %866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %865)  ; LegacyF16ToF32(value)
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 64
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %904, label %871

; <label>:871                                     ; preds = %856
  %872 = add i32 %33, 408
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %874, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 131072
  %880 = icmp eq i32 %879, 0
  %881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %876, %dx.types.Handle %74, float %562, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = fmul fast float %882, %232
  %886 = fmul fast float %883, %235
  %887 = fmul fast float %884, %238
  br i1 %880, label %894, label %888

; <label>:888                                     ; preds = %871
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = fmul fast float %890, %885
  %892 = fmul fast float %890, %886
  %893 = fmul fast float %890, %887
  br label %894

; <label>:894                                     ; preds = %888, %871
  %895 = phi float [ %891, %888 ], [ %885, %871 ]
  %896 = phi float [ %892, %888 ], [ %886, %871 ]
  %897 = phi float [ %893, %888 ], [ %887, %871 ]
  %898 = fmul fast float %895, %866
  %899 = select i1 %215, float %898, float %895
  %900 = call float @dx.op.dot3.f32(i32 55, float %899, float %896, float %897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = select i1 %215, float 0.000000e+00, float %895
  %902 = select i1 %215, float %900, float %896
  %903 = select i1 %215, float 0.000000e+00, float %897
  br label %904

; <label>:904                                     ; preds = %894, %856
  %905 = phi float [ %901, %894 ], [ 0.000000e+00, %856 ]
  %906 = phi float [ %902, %894 ], [ 0.000000e+00, %856 ]
  %907 = phi float [ %903, %894 ], [ 0.000000e+00, %856 ]
  %908 = add i32 %33, 96
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = lshr i32 %910, 8
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = call float @dx.op.dot3.f32(i32 55, float %777, float %778, float %779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = fmul fast float %915, %916
  %918 = fadd fast float %917, %912
  %919 = fmul fast float %918, 0x3F70101020000000
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  br label %921

; <label>:921                                     ; preds = %904, %448
  %922 = phi float [ 0.000000e+00, %448 ], [ %858, %904 ]
  %923 = phi float [ 0.000000e+00, %448 ], [ %859, %904 ]
  %924 = phi float [ 0.000000e+00, %448 ], [ %777, %904 ]
  %925 = phi float [ 0.000000e+00, %448 ], [ %778, %904 ]
  %926 = phi float [ 0.000000e+00, %448 ], [ %779, %904 ]
  %927 = phi float [ 0.000000e+00, %448 ], [ %905, %904 ]
  %928 = phi float [ 0.000000e+00, %448 ], [ %906, %904 ]
  %929 = phi float [ 0.000000e+00, %448 ], [ %907, %904 ]
  %930 = phi float [ 0.000000e+00, %448 ], [ %763, %904 ]
  %931 = phi float [ 0.000000e+00, %448 ], [ 1.000000e+00, %904 ]
  %932 = phi float [ 0.000000e+00, %448 ], [ %857, %904 ]
  %933 = phi float [ 0.000000e+00, %448 ], [ %860, %904 ]
  %934 = phi float [ 0.000000e+00, %448 ], [ %920, %904 ]
  br i1 %399, label %1661, label %935

; <label>:935                                     ; preds = %921
  %936 = icmp ult i32 %454, 2
  %937 = add i32 %33, 40
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = add i32 %33, 44
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = or i32 %942, %939
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1661, label %945

; <label>:945                                     ; preds = %935
  %946 = and i32 %939, 262144
  %947 = icmp ne i32 %946, 0
  %948 = select i1 %947, float %39, float 1.000000e+00
  %949 = select i1 %947, float %40, float 0.000000e+00
  %950 = select i1 %947, float %41, float 0.000000e+00
  %951 = select i1 %947, float %42, float 1.000000e+00
  %952 = select i1 %947, float %43, float %66
  %953 = select i1 %947, float %44, float %67
  %954 = add i32 %33, 300
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = fmul fast float %958, 0x3F50624DE0000000
  %960 = add i32 %33, 104
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = lshr i32 %962, 16
  %964 = and i32 %963, 255
  %965 = lshr i32 %962, 24
  %966 = add i32 %33, 308
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 65535
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = lshr i32 %968, 16
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = add i32 %33, 48
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = lshr i32 %975, 22
  %977 = shl nuw nsw i32 %976, 5
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = shl i32 %975, 4
  %980 = and i32 %979, 32752
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = lshr i32 %975, 7
  %983 = and i32 %982, 32752
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 3
  %987 = fmul fast float %986, 1.000000e+03
  %988 = fmul fast float %309, %987
  %989 = call float @dx.op.unary.f32(i32 22, float %988)  ; Frc(value)
  %990 = fadd fast float %989, %299
  %991 = fmul fast float %310, %987
  %992 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %993 = fadd fast float %992, %301
  %994 = fmul fast float %959, %987
  %995 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %996 = fmul fast float %995, 0x401921FB60000000
  %997 = fadd fast float %996, %978
  %998 = call float @dx.op.unary.f32(i32 13, float %997)  ; Sin(value)
  %999 = call float @dx.op.unary.f32(i32 12, float %997)  ; Cos(value)
  %1000 = fsub fast float -0.000000e+00, %998
  %1001 = fadd fast float %952, -5.000000e-01
  %1002 = fadd fast float %953, -5.000000e-01
  %1003 = fmul fast float %970, %1001
  %1004 = fmul fast float %972, %1002
  %1005 = fadd fast float %1003, 5.000000e-01
  %1006 = fadd fast float %1004, 5.000000e-01
  %1007 = fmul fast float %981, %1005
  %1008 = fmul fast float %984, %1006
  %1009 = fmul fast float %999, %1007
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %1008, float %1009)  ; FMad(a,b,c)
  %1011 = fmul fast float %998, %1007
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %999, float %1008, float %1011)  ; FMad(a,b,c)
  %1013 = fadd fast float %990, %1010
  %1014 = fadd fast float %993, %1012
  %1015 = icmp ugt i32 %964, 1
  %1016 = icmp ugt i32 %962, 33554431
  %1017 = or i1 %1016, %1015
  br i1 %1017, label %1018, label %1043

; <label>:1018                                    ; preds = %945
  %1019 = add i32 %33, 244
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = lshr i32 %1021, 16
  %1023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1022)  ; LegacyF16ToF32(value)
  %1024 = fmul fast float %986, %1023
  %1025 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1026 = mul nuw nsw i32 %964, %965
  %1027 = uitofp i32 %1026 to float
  %1028 = fmul fast float %1025, %1027
  %1029 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1030 = fptoui float %1029 to i32
  %1031 = urem i32 %1030, %964
  %1032 = udiv i32 %1030, %965
  %1033 = call float @dx.op.unary.f32(i32 22, float %1013)  ; Frc(value)
  %1034 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1035 = uitofp i32 %1031 to float
  %1036 = uitofp i32 %1032 to float
  %1037 = fadd fast float %1033, %1035
  %1038 = fadd fast float %1034, %1036
  %1039 = uitofp i32 %964 to float
  %1040 = uitofp i32 %965 to float
  %1041 = fdiv fast float %1037, %1039
  %1042 = fdiv fast float %1038, %1040
  br label %1043

; <label>:1043                                    ; preds = %1018, %945
  %1044 = phi float [ %1041, %1018 ], [ %1013, %945 ]
  %1045 = phi float [ %1042, %1018 ], [ %1014, %945 ]
  %1046 = and i32 %939, 256
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1094, label %1048

; <label>:1048                                    ; preds = %1043
  %1049 = add i32 %33, 444
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = add i32 %1051, 0
  %1053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1053, %dx.types.Handle %75, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = add i32 %33, 116
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = shl i32 %1058, 4
  %1060 = and i32 %1059, 32752
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = lshr i32 %1058, 7
  %1063 = and i32 %1062, 32752
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = fsub fast float 1.000000e+00, %451
  %1066 = call float @dx.op.binary.f32(i32 35, float %1065, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1067 = bitcast float %451 to i32
  %1068 = sitofp i32 %1067 to float
  %1069 = fadd fast float %1068, 0xC1CFBF8940000000
  %1070 = fmul fast float %1064, %1069
  %1071 = fadd fast float %1070, 0x41CFBF8940000000
  %1072 = fptosi float %1071 to i32
  %1073 = bitcast i32 %1072 to float
  %1074 = bitcast float %1066 to i32
  %1075 = sitofp i32 %1074 to float
  %1076 = fadd fast float %1075, 0xC1CFBF8940000000
  %1077 = fmul fast float %1076, %1064
  %1078 = fadd fast float %1077, 0x41CFBF8940000000
  %1079 = fptosi float %1078 to i32
  %1080 = bitcast i32 %1079 to float
  %1081 = fmul fast float %1073, %1061
  %1082 = fmul fast float %1080, %1061
  %1083 = fsub fast float %1066, %1081
  %1084 = fadd fast float %1082, %1066
  %1085 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  %1086 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1087 = fsub fast float %1055, %1085
  %1088 = fsub fast float %1086, %1085
  %1089 = bitcast float %1088 to i32
  %1090 = sub nsw i32 2129859010, %1089
  %1091 = bitcast i32 %1090 to float
  %1092 = fmul fast float %1091, %1087
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  br label %1094

; <label>:1094                                    ; preds = %1048, %1043
  %1095 = phi float [ %1093, %1048 ], [ %451, %1043 ]
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 128
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1116, label %1100

; <label>:1100                                    ; preds = %1094
  %1101 = add i32 %33, 428
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1105, %dx.types.Handle %75, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 524288
  %1111 = icmp ne i32 %1110, 0
  %1112 = fcmp fast ogt float %1107, 0x3FE0101020000000
  %1113 = select i1 %1112, float 1.000000e+00, float 0.000000e+00
  %1114 = select i1 %1111, float %1113, float %1107
  %1115 = fmul fast float %1114, %1095
  br label %1116

; <label>:1116                                    ; preds = %1100, %1094
  %1117 = phi float [ %1115, %1100 ], [ %1095, %1094 ]
  %1118 = fcmp fast ult float %1117, 0x3F70101020000000
  br i1 %1118, label %1661, label %1119

; <label>:1119                                    ; preds = %1116
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %1121, 16
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1322, label %1124

; <label>:1124                                    ; preds = %1119
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = add i32 %33, 380
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = add i32 %1129, 0
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1131, %dx.types.Handle %74, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = extractvalue %dx.types.ResRet.f32 %1132, 3
  %1137 = and i32 %1126, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = lshr i32 %1126, 8
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1136, %1138
  %1143 = fadd fast float %1142, %1141
  %1144 = fmul fast float %1143, 0x3F70101000000000
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = and i32 %1146, 512
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1157, label %1149

; <label>:1149                                    ; preds = %1124
  %1150 = add i32 %33, 460
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %1152, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1154, %dx.types.Handle %75, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  br label %1157

; <label>:1157                                    ; preds = %1149, %1124
  %1158 = phi float [ %1156, %1149 ], [ 1.000000e+00, %1124 ]
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 33554432
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1269, label %1163

; <label>:1163                                    ; preds = %1157
  %1164 = add i32 %33, 240
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 65535
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = lshr i32 %1166, 16
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = add i32 %33, 244
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 65535
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 24
  %1179 = uitofp i32 %1178 to float
  %1180 = fmul fast float %1179, 0x3F70101020000000
  %1181 = and i32 %1177, 255
  %1182 = uitofp i32 %1181 to float
  %1183 = fmul fast float %1182, 0x3F70101020000000
  %1184 = lshr i32 %1177, 8
  %1185 = and i32 %1184, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = fmul fast float %1186, 0x3F70101020000000
  %1188 = lshr i32 %1177, 16
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F70101020000000
  %1192 = add i32 %33, 236
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 24
  %1196 = uitofp i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F70101020000000
  %1198 = and i32 %1194, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1199, 0x3F70101020000000
  %1201 = lshr i32 %1194, 8
  %1202 = and i32 %1201, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1203, 0x3F70101020000000
  %1205 = lshr i32 %1194, 16
  %1206 = and i32 %1205, 255
  %1207 = uitofp i32 %1206 to float
  %1208 = fmul fast float %1207, 0x3F70101020000000
  %1209 = bitcast float %1133 to i32
  %1210 = ashr i32 %1209, 1
  %1211 = sub nsw i32 1597463174, %1210
  %1212 = bitcast i32 %1211 to float
  %1213 = fmul fast float %1133, 5.000000e-01
  %1214 = fmul fast float %1212, %1212
  %1215 = fmul fast float %1214, %1213
  %1216 = fsub fast float 1.500000e+00, %1215
  %1217 = fmul fast float %1212, %1133
  %1218 = fmul fast float %1217, %1216
  %1219 = bitcast float %1134 to i32
  %1220 = ashr i32 %1219, 1
  %1221 = sub nsw i32 1597463174, %1220
  %1222 = bitcast i32 %1221 to float
  %1223 = fmul fast float %1134, 5.000000e-01
  %1224 = fmul fast float %1222, %1222
  %1225 = fmul fast float %1224, %1223
  %1226 = fsub fast float 1.500000e+00, %1225
  %1227 = fmul fast float %1222, %1134
  %1228 = fmul fast float %1227, %1226
  %1229 = bitcast float %1135 to i32
  %1230 = ashr i32 %1229, 1
  %1231 = sub nsw i32 1597463174, %1230
  %1232 = bitcast i32 %1231 to float
  %1233 = fmul fast float %1135, 5.000000e-01
  %1234 = fmul fast float %1232, %1232
  %1235 = fmul fast float %1234, %1233
  %1236 = fsub fast float 1.500000e+00, %1235
  %1237 = fmul fast float %1232, %1135
  %1238 = fmul fast float %1237, %1236
  %1239 = fsub fast float %1218, %1200
  %1240 = fsub fast float %1228, %1204
  %1241 = fsub fast float %1238, %1208
  %1242 = fmul fast float %1239, %1168
  %1243 = fmul fast float %1240, %1170
  %1244 = fmul fast float %1241, %1175
  %1245 = fadd fast float %1242, %1183
  %1246 = fadd fast float %1243, %1187
  %1247 = fadd fast float %1244, %1191
  %1248 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1249 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1250 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1251 = fmul fast float %1248, %1248
  %1252 = fmul fast float %1249, %1249
  %1253 = fmul fast float %1250, %1250
  %1254 = fsub fast float %1251, %1133
  %1255 = fsub fast float %1252, %1134
  %1256 = fsub fast float %1253, %1135
  %1257 = fmul fast float %1254, %1158
  %1258 = fmul fast float %1255, %1158
  %1259 = fmul fast float %1256, %1158
  %1260 = fadd fast float %1257, %1133
  %1261 = fadd fast float %1258, %1134
  %1262 = fadd fast float %1259, %1135
  %1263 = fadd fast float %1180, %1144
  %1264 = fsub fast float %1263, %1197
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = fsub fast float %1265, %1144
  %1267 = fmul fast float %1266, %1158
  %1268 = fadd fast float %1267, %1144
  br label %1322

; <label>:1269                                    ; preds = %1157
  %1270 = and i32 %1160, 134217728
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1306, label %1272

; <label>:1272                                    ; preds = %1269
  %1273 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %1274 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %1275 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1276 = fadd fast float %1273, -5.000000e-01
  %1277 = fadd fast float %1274, -5.000000e-01
  %1278 = fadd fast float %1275, -5.000000e-01
  %1279 = fmul fast float %1276, %1158
  %1280 = fmul fast float %1277, %1158
  %1281 = fmul fast float %1278, %1158
  %1282 = fadd fast float %1279, 5.000000e-01
  %1283 = fadd fast float %1280, 5.000000e-01
  %1284 = fadd fast float %1281, 5.000000e-01
  %1285 = call float @dx.op.unary.f32(i32 24, float %1133)  ; Sqrt(value)
  %1286 = call float @dx.op.unary.f32(i32 24, float %1134)  ; Sqrt(value)
  %1287 = call float @dx.op.unary.f32(i32 24, float %1135)  ; Sqrt(value)
  %1288 = fmul fast float %1282, 2.000000e+00
  %1289 = fsub fast float 1.000000e+00, %1288
  %1290 = fmul fast float %1289, %1285
  %1291 = fadd fast float %1290, %1288
  %1292 = fmul fast float %1291, %1285
  %1293 = fmul fast float %1283, 2.000000e+00
  %1294 = fsub fast float 1.000000e+00, %1293
  %1295 = fmul fast float %1294, %1286
  %1296 = fadd fast float %1295, %1293
  %1297 = fmul fast float %1296, %1286
  %1298 = fmul fast float %1284, 2.000000e+00
  %1299 = fsub fast float 1.000000e+00, %1298
  %1300 = fmul fast float %1299, %1287
  %1301 = fadd fast float %1300, %1298
  %1302 = fmul fast float %1301, %1287
  %1303 = fmul fast float %1292, %1292
  %1304 = fmul fast float %1297, %1297
  %1305 = fmul fast float %1302, %1302
  br label %1322

; <label>:1306                                    ; preds = %1269
  %1307 = fmul fast float %286, %286
  %1308 = fmul fast float %290, %290
  %1309 = fmul fast float %294, %294
  %1310 = fadd fast float %1307, -1.000000e+00
  %1311 = fadd fast float %1308, -1.000000e+00
  %1312 = fadd fast float %1309, -1.000000e+00
  %1313 = fmul fast float %1158, %1310
  %1314 = fmul fast float %1158, %1311
  %1315 = fmul fast float %1158, %1312
  %1316 = fadd fast float %1313, 1.000000e+00
  %1317 = fadd fast float %1314, 1.000000e+00
  %1318 = fadd fast float %1315, 1.000000e+00
  %1319 = fmul fast float %1316, %1133
  %1320 = fmul fast float %1317, %1134
  %1321 = fmul fast float %1318, %1135
  br label %1322

; <label>:1322                                    ; preds = %1306, %1272, %1163, %1119
  %1323 = phi float [ %1268, %1163 ], [ %1144, %1272 ], [ %1144, %1306 ], [ 0x3FA23C0BE0000000, %1119 ]
  %1324 = phi float [ %1260, %1163 ], [ %1303, %1272 ], [ %1319, %1306 ], [ 1.000000e+00, %1119 ]
  %1325 = phi float [ %1261, %1163 ], [ %1304, %1272 ], [ %1320, %1306 ], [ 1.000000e+00, %1119 ]
  %1326 = phi float [ %1262, %1163 ], [ %1305, %1272 ], [ %1321, %1306 ], [ 1.000000e+00, %1119 ]
  %1327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.i32 %1327, 1
  %1329 = and i32 %1328, 1
  %1330 = icmp ne i32 %1329, 0
  %1331 = add i32 %33, 356
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 32
  %1335 = icmp ne i32 %1334, 0
  %1336 = and i1 %1330, %1335
  %1337 = select i1 %1336, float 1.000000e+00, float %1324
  %1338 = select i1 %1336, float 0x3FD3333340000000, float %1325
  %1339 = select i1 %1336, float 0x3FD3333340000000, float %1326
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 32
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1416, label %1344

; <label>:1344                                    ; preds = %1322
  %1345 = add i32 %33, 108
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = add i32 %33, 396
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = add i32 %1350, 0
  %1352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1352, %dx.types.Handle %74, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1353, 2
  %1357 = extractvalue %dx.types.ResRet.f32 %1353, 3
  %1358 = and i32 %1347, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = lshr i32 %1347, 8
  %1361 = and i32 %1360, 255
  %1362 = uitofp i32 %1361 to float
  %1363 = lshr i32 %1347, 16
  %1364 = and i32 %1363, 255
  %1365 = uitofp i32 %1364 to float
  %1366 = fmul fast float %1365, 0x3F70101000000000
  %1367 = fmul fast float %1354, %1359
  %1368 = fadd fast float %1367, %1362
  %1369 = fmul fast float %1368, 0x3F70101000000000
  %1370 = fadd fast float %1355, -5.000000e-01
  %1371 = fadd fast float %1357, -5.000000e-01
  %1372 = fmul fast float %1370, %1366
  %1373 = fmul fast float %1371, %1366
  %1374 = fadd fast float %1372, 5.000000e-01
  %1375 = fadd fast float %1373, 5.000000e-01
  %1376 = fmul fast float %1374, 2.000000e+00
  %1377 = fadd fast float %1376, -1.000000e+00
  %1378 = fmul fast float %1375, 2.000000e+00
  %1379 = fadd fast float %1378, -1.000000e+00
  %1380 = fadd fast float %1377, %1379
  %1381 = fmul fast float %1380, 5.000000e-01
  %1382 = fsub fast float %1377, %1379
  %1383 = fmul fast float %1382, 5.000000e-01
  %1384 = call float @dx.op.unary.f32(i32 6, float %1381)  ; FAbs(value)
  %1385 = fsub fast float 1.000000e+00, %1384
  %1386 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1387 = fsub fast float %1385, %1386
  %1388 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1383, float %1387, float %1381, float %1383, float %1387)  ; Dot3(ax,ay,az,bx,by,bz)
  %1389 = call float @dx.op.unary.f32(i32 25, float %1388)  ; Rsqrt(value)
  %1390 = fmul fast float %1381, %1389
  %1391 = fmul fast float %1383, %1389
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 67108864
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1412, label %1396

; <label>:1396                                    ; preds = %1344
  %1397 = add i32 %33, 296
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %1399, 65535
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 65535
  %1405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1404)  ; LegacyF16ToF32(value)
  %1406 = lshr i32 %1399, 16
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = fsub fast float %1369, %1407
  %1409 = fmul fast float %1408, %1401
  %1410 = fadd fast float %1409, %1405
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  br label %1412

; <label>:1412                                    ; preds = %1396, %1344
  %1413 = phi float [ %1411, %1396 ], [ %1369, %1344 ]
  %1414 = call float @dx.op.dot2.f32(i32 54, float %1390, float %1391, float %948, float %949)  ; Dot2(ax,ay,bx,by)
  %1415 = call float @dx.op.dot2.f32(i32 54, float %1390, float %1391, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  br label %1416

; <label>:1416                                    ; preds = %1412, %1322
  %1417 = phi float [ %1413, %1412 ], [ 0x3FD6666660000000, %1322 ]
  %1418 = phi float [ %1414, %1412 ], [ 0.000000e+00, %1322 ]
  %1419 = phi float [ %1415, %1412 ], [ 0.000000e+00, %1322 ]
  %1420 = phi float [ %1356, %1412 ], [ 1.000000e+00, %1322 ]
  %1421 = add i32 %33, 176
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = lshr i32 %1423, 22
  %1425 = shl nuw nsw i32 %1424, 5
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 64
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1464, label %1431

; <label>:1431                                    ; preds = %1416
  %1432 = add i32 %33, 412
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 131072
  %1440 = icmp eq i32 %1439, 0
  %1441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1436, %dx.types.Handle %74, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = fmul fast float %1442, %274
  %1446 = fmul fast float %1443, %277
  %1447 = fmul fast float %1444, %280
  br i1 %1440, label %1454, label %1448

; <label>:1448                                    ; preds = %1431
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1451 = fmul fast float %1450, %1445
  %1452 = fmul fast float %1450, %1446
  %1453 = fmul fast float %1450, %1447
  br label %1454

; <label>:1454                                    ; preds = %1448, %1431
  %1455 = phi float [ %1451, %1448 ], [ %1445, %1431 ]
  %1456 = phi float [ %1452, %1448 ], [ %1446, %1431 ]
  %1457 = phi float [ %1453, %1448 ], [ %1447, %1431 ]
  %1458 = fmul fast float %1455, %1426
  %1459 = select i1 %215, float %1458, float %1455
  %1460 = call float @dx.op.dot3.f32(i32 55, float %1459, float %1456, float %1457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1461 = select i1 %215, float 0.000000e+00, float %1455
  %1462 = select i1 %215, float %1460, float %1456
  %1463 = select i1 %215, float 0.000000e+00, float %1457
  br label %1464

; <label>:1464                                    ; preds = %1454, %1416
  %1465 = phi float [ %1461, %1454 ], [ 0.000000e+00, %1416 ]
  %1466 = phi float [ %1462, %1454 ], [ 0.000000e+00, %1416 ]
  %1467 = phi float [ %1463, %1454 ], [ 0.000000e+00, %1416 ]
  %1468 = add i32 %33, 112
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 255
  %1472 = uitofp i32 %1471 to float
  %1473 = lshr i32 %1470, 8
  %1474 = and i32 %1473, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1337, float %1338, float %1339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = fmul fast float %1475, %1476
  %1478 = fadd fast float %1477, %1472
  %1479 = fmul fast float %1478, 0x3F70101020000000
  %1480 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  br i1 %936, label %1481, label %1489

; <label>:1481                                    ; preds = %1464
  %1482 = fsub fast float 1.000000e+00, %1117
  %1483 = fmul fast float %1482, %924
  %1484 = fmul fast float %1482, %925
  %1485 = fmul fast float %1482, %926
  %1486 = fmul fast float %1482, %927
  %1487 = fmul fast float %1482, %928
  %1488 = fmul fast float %1482, %929
  br label %1489

; <label>:1489                                    ; preds = %1481, %1464
  %1490 = phi float [ %1483, %1481 ], [ %924, %1464 ]
  %1491 = phi float [ %1484, %1481 ], [ %925, %1464 ]
  %1492 = phi float [ %1485, %1481 ], [ %926, %1464 ]
  %1493 = phi float [ %1486, %1481 ], [ %927, %1464 ]
  %1494 = phi float [ %1487, %1481 ], [ %928, %1464 ]
  %1495 = phi float [ %1488, %1481 ], [ %929, %1464 ]
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 3
  %1499 = icmp eq i32 %1498, 3
  br i1 %1499, label %1578, label %1500

; <label>:1500                                    ; preds = %1489
  %1501 = and i32 %1497, 16
  %1502 = icmp ne i32 %1501, 0
  %1503 = select i1 %1502, float %1117, float 0.000000e+00
  %1504 = icmp eq i32 %1498, 0
  br i1 %1504, label %1505, label %1533

; <label>:1505                                    ; preds = %1500
  %1506 = and i32 %1497, 64
  %1507 = icmp ne i32 %1506, 0
  %1508 = select i1 %1507, float %1117, float 0.000000e+00
  %1509 = fsub fast float %1337, %1490
  %1510 = fsub fast float %1338, %1491
  %1511 = fsub fast float %1339, %1492
  %1512 = fmul fast float %1503, %1509
  %1513 = fmul fast float %1503, %1510
  %1514 = fmul fast float %1503, %1511
  %1515 = fadd fast float %1512, %1490
  %1516 = fadd fast float %1513, %1491
  %1517 = fadd fast float %1514, %1492
  %1518 = fsub fast float %1323, %930
  %1519 = fmul fast float %1503, %1518
  %1520 = fadd fast float %1519, %930
  %1521 = fsub fast float %1465, %1493
  %1522 = fsub fast float %1466, %1494
  %1523 = fsub fast float %1467, %1495
  %1524 = fmul fast float %1508, %1521
  %1525 = fmul fast float %1508, %1522
  %1526 = fmul fast float %1508, %1523
  %1527 = fadd fast float %1524, %1493
  %1528 = fadd fast float %1525, %1494
  %1529 = fadd fast float %1526, %1495
  %1530 = fsub fast float %1480, %934
  %1531 = fmul fast float %1503, %1530
  %1532 = fadd fast float %1531, %934
  br label %1578

; <label>:1533                                    ; preds = %1500
  %1534 = icmp eq i32 %1498, 1
  br i1 %1534, label %1535, label %1548

; <label>:1535                                    ; preds = %1533
  %1536 = fadd fast float %1337, -1.000000e+00
  %1537 = fadd fast float %1338, -1.000000e+00
  %1538 = fadd fast float %1339, -1.000000e+00
  %1539 = fmul fast float %1503, %1536
  %1540 = fmul fast float %1503, %1537
  %1541 = fmul fast float %1503, %1538
  %1542 = fadd fast float %1539, 1.000000e+00
  %1543 = fadd fast float %1540, 1.000000e+00
  %1544 = fadd fast float %1541, 1.000000e+00
  %1545 = fmul fast float %1542, %1490
  %1546 = fmul fast float %1543, %1491
  %1547 = fmul fast float %1544, %1492
  br label %1578

; <label>:1548                                    ; preds = %1533
  %1549 = icmp eq i32 %1498, 2
  br i1 %1549, label %1550, label %1578

; <label>:1550                                    ; preds = %1548
  %1551 = call float @dx.op.unary.f32(i32 24, float %1337)  ; Sqrt(value)
  %1552 = call float @dx.op.unary.f32(i32 24, float %1338)  ; Sqrt(value)
  %1553 = call float @dx.op.unary.f32(i32 24, float %1339)  ; Sqrt(value)
  %1554 = fadd fast float %1551, -5.000000e-01
  %1555 = fadd fast float %1552, -5.000000e-01
  %1556 = fadd fast float %1553, -5.000000e-01
  %1557 = fmul fast float %1554, %1503
  %1558 = fmul fast float %1555, %1503
  %1559 = fmul fast float %1556, %1503
  %1560 = fadd fast float %1557, 5.000000e-01
  %1561 = fadd fast float %1558, 5.000000e-01
  %1562 = fadd fast float %1559, 5.000000e-01
  %1563 = fmul fast float %1560, 2.000000e+00
  %1564 = fsub fast float 1.000000e+00, %1563
  %1565 = fmul fast float %1564, %1490
  %1566 = fadd fast float %1565, %1563
  %1567 = fmul fast float %1566, %1490
  %1568 = fmul fast float %1561, 2.000000e+00
  %1569 = fsub fast float 1.000000e+00, %1568
  %1570 = fmul fast float %1569, %1491
  %1571 = fadd fast float %1570, %1568
  %1572 = fmul fast float %1571, %1491
  %1573 = fmul fast float %1562, 2.000000e+00
  %1574 = fsub fast float 1.000000e+00, %1573
  %1575 = fmul fast float %1574, %1492
  %1576 = fadd fast float %1575, %1573
  %1577 = fmul fast float %1576, %1492
  br label %1578

; <label>:1578                                    ; preds = %1550, %1548, %1535, %1505, %1489
  %1579 = phi float [ %1490, %1489 ], [ %1567, %1550 ], [ %1490, %1548 ], [ %1545, %1535 ], [ %1515, %1505 ]
  %1580 = phi float [ %1491, %1489 ], [ %1572, %1550 ], [ %1491, %1548 ], [ %1546, %1535 ], [ %1516, %1505 ]
  %1581 = phi float [ %1492, %1489 ], [ %1577, %1550 ], [ %1492, %1548 ], [ %1547, %1535 ], [ %1517, %1505 ]
  %1582 = phi float [ %1493, %1489 ], [ %1493, %1550 ], [ %1493, %1548 ], [ %1493, %1535 ], [ %1527, %1505 ]
  %1583 = phi float [ %1494, %1489 ], [ %1494, %1550 ], [ %1494, %1548 ], [ %1494, %1535 ], [ %1528, %1505 ]
  %1584 = phi float [ %1495, %1489 ], [ %1495, %1550 ], [ %1495, %1548 ], [ %1495, %1535 ], [ %1529, %1505 ]
  %1585 = phi float [ %930, %1489 ], [ %930, %1550 ], [ %930, %1548 ], [ %930, %1535 ], [ %1520, %1505 ]
  %1586 = phi float [ %934, %1489 ], [ %934, %1550 ], [ %934, %1548 ], [ %934, %1535 ], [ %1532, %1505 ]
  %1587 = and i32 %1497, 12
  %1588 = icmp eq i32 %1587, 12
  br i1 %1588, label %1661, label %1589

; <label>:1589                                    ; preds = %1578
  %1590 = and i32 %1497, 2097184
  %1591 = icmp eq i32 %1590, 2097184
  %1592 = select i1 %1591, float %1117, float 0.000000e+00
  %1593 = and i32 %1497, 4194336
  %1594 = icmp eq i32 %1593, 4194336
  %1595 = select i1 %1594, float %1117, float 0.000000e+00
  %1596 = and i32 %1497, 8388640
  %1597 = icmp eq i32 %1596, 8388640
  %1598 = select i1 %1597, float %1117, float 0.000000e+00
  %1599 = icmp eq i32 %1587, 0
  br i1 %1599, label %1600, label %1613

; <label>:1600                                    ; preds = %1589
  %1601 = fsub fast float %1418, %922
  %1602 = fsub fast float %1419, %923
  %1603 = fmul fast float %1592, %1601
  %1604 = fmul fast float %1592, %1602
  %1605 = fadd fast float %1603, %922
  %1606 = fadd fast float %1604, %923
  %1607 = fsub fast float %1420, %933
  %1608 = fmul fast float %1595, %1607
  %1609 = fadd fast float %1608, %933
  %1610 = fsub fast float %1417, %932
  %1611 = fmul fast float %1598, %1610
  %1612 = fadd fast float %1611, %932
  br label %1661

; <label>:1613                                    ; preds = %1589
  %1614 = icmp eq i32 %1587, 4
  br i1 %1614, label %1615, label %1647

; <label>:1615                                    ; preds = %1613
  %1616 = fmul fast float %1592, %1418
  %1617 = fmul fast float %1592, %1419
  %1618 = fadd fast float %1616, %922
  %1619 = fadd fast float %1617, %923
  %1620 = call float @dx.op.binary.f32(i32 36, float %933, float %1420)  ; FMin(a,b)
  %1621 = fsub fast float %1620, %933
  %1622 = fmul fast float %1621, %1595
  %1623 = fadd fast float %1622, %933
  %1624 = fadd fast float %1417, %932
  %1625 = fmul fast float %1624, 0x3FF337FAE0000000
  %1626 = fmul fast float %932, %932
  %1627 = fmul fast float %1417, %1417
  %1628 = fadd fast float %1627, %1626
  %1629 = fmul fast float %1628, 0x3FE5152B00000000
  %1630 = fmul fast float %932, 0xBFCC1F85E0000000
  %1631 = fmul fast float %1630, %1417
  %1632 = fadd fast float %1631, 0xBFE1363700000000
  %1633 = fadd fast float %1632, %1625
  %1634 = fsub fast float %1633, %1629
  %1635 = fmul fast float %1624, 0x3FBA6F0D00000000
  %1636 = fmul fast float %1628, 0x3FD0432880000000
  %1637 = fmul fast float %932, 0xBFEF110800000000
  %1638 = fmul fast float %1637, %1417
  %1639 = fadd fast float %1638, 1.000000e+00
  %1640 = fsub fast float %1639, %1635
  %1641 = fadd fast float %1640, %1636
  %1642 = fdiv fast float %1634, %1641
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = fsub fast float %1643, %932
  %1645 = fmul fast float %1644, %1598
  %1646 = fadd fast float %1645, %932
  br label %1661

; <label>:1647                                    ; preds = %1613
  %1648 = icmp eq i32 %1587, 8
  br i1 %1648, label %1649, label %1661

; <label>:1649                                    ; preds = %1647
  %1650 = fmul fast float %1592, %1418
  %1651 = fmul fast float %1592, %1419
  %1652 = fadd fast float %1650, %922
  %1653 = fadd fast float %1651, %923
  %1654 = call float @dx.op.binary.f32(i32 36, float %933, float %1420)  ; FMin(a,b)
  %1655 = fsub fast float %1654, %933
  %1656 = fmul fast float %1655, %1595
  %1657 = fadd fast float %1656, %933
  %1658 = fsub fast float %1417, %932
  %1659 = fmul fast float %1598, %1658
  %1660 = fadd fast float %1659, %932
  br label %1661

; <label>:1661                                    ; preds = %1649, %1647, %1615, %1600, %1578, %1116, %935, %921
  %1662 = phi float [ %922, %1578 ], [ %922, %1116 ], [ %922, %921 ], [ %1652, %1649 ], [ %922, %1647 ], [ %1618, %1615 ], [ %1605, %1600 ], [ %922, %935 ]
  %1663 = phi float [ %923, %1578 ], [ %923, %1116 ], [ %923, %921 ], [ %1653, %1649 ], [ %923, %1647 ], [ %1619, %1615 ], [ %1606, %1600 ], [ %923, %935 ]
  %1664 = phi float [ %1579, %1578 ], [ %924, %1116 ], [ %924, %921 ], [ %1579, %1649 ], [ %1579, %1647 ], [ %1579, %1615 ], [ %1579, %1600 ], [ %924, %935 ]
  %1665 = phi float [ %1580, %1578 ], [ %925, %1116 ], [ %925, %921 ], [ %1580, %1649 ], [ %1580, %1647 ], [ %1580, %1615 ], [ %1580, %1600 ], [ %925, %935 ]
  %1666 = phi float [ %1581, %1578 ], [ %926, %1116 ], [ %926, %921 ], [ %1581, %1649 ], [ %1581, %1647 ], [ %1581, %1615 ], [ %1581, %1600 ], [ %926, %935 ]
  %1667 = phi float [ %1582, %1578 ], [ %927, %1116 ], [ %927, %921 ], [ %1582, %1649 ], [ %1582, %1647 ], [ %1582, %1615 ], [ %1582, %1600 ], [ %927, %935 ]
  %1668 = phi float [ %1583, %1578 ], [ %928, %1116 ], [ %928, %921 ], [ %1583, %1649 ], [ %1583, %1647 ], [ %1583, %1615 ], [ %1583, %1600 ], [ %928, %935 ]
  %1669 = phi float [ %1584, %1578 ], [ %929, %1116 ], [ %929, %921 ], [ %1584, %1649 ], [ %1584, %1647 ], [ %1584, %1615 ], [ %1584, %1600 ], [ %929, %935 ]
  %1670 = phi float [ %1585, %1578 ], [ %930, %1116 ], [ %930, %921 ], [ %1585, %1649 ], [ %1585, %1647 ], [ %1585, %1615 ], [ %1585, %1600 ], [ %930, %935 ]
  %1671 = phi float [ %932, %1578 ], [ %932, %1116 ], [ %932, %921 ], [ %1660, %1649 ], [ %932, %1647 ], [ %1646, %1615 ], [ %1612, %1600 ], [ %932, %935 ]
  %1672 = phi float [ %933, %1578 ], [ %933, %1116 ], [ %933, %921 ], [ %1657, %1649 ], [ %933, %1647 ], [ %1623, %1615 ], [ %1609, %1600 ], [ %933, %935 ]
  %1673 = phi float [ %1586, %1578 ], [ %934, %1116 ], [ %934, %921 ], [ %1586, %1649 ], [ %1586, %1647 ], [ %1586, %1615 ], [ %1586, %1600 ], [ %934, %935 ]
  br i1 %401, label %2400, label %1674

; <label>:1674                                    ; preds = %1661
  %1675 = icmp ult i32 %454, 3
  %1676 = add i32 %33, 56
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = add i32 %33, 60
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = or i32 %1681, %1678
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %2400, label %1684

; <label>:1684                                    ; preds = %1674
  %1685 = and i32 %1678, 262144
  %1686 = icmp ne i32 %1685, 0
  %1687 = select i1 %1686, float %39, float 1.000000e+00
  %1688 = select i1 %1686, float %40, float 0.000000e+00
  %1689 = select i1 %1686, float %41, float 0.000000e+00
  %1690 = select i1 %1686, float %42, float 1.000000e+00
  %1691 = select i1 %1686, float %43, float %66
  %1692 = select i1 %1686, float %44, float %67
  %1693 = add i32 %33, 316
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = lshr i32 %1695, 16
  %1697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1696)  ; LegacyF16ToF32(value)
  %1698 = fmul fast float %1697, 0x3F50624DE0000000
  %1699 = add i32 %33, 120
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = lshr i32 %1701, 16
  %1703 = and i32 %1702, 255
  %1704 = lshr i32 %1701, 24
  %1705 = add i32 %33, 324
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 65535
  %1709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1708)  ; LegacyF16ToF32(value)
  %1710 = lshr i32 %1707, 16
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = add i32 %33, 64
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = lshr i32 %1714, 22
  %1716 = shl nuw nsw i32 %1715, 5
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = shl i32 %1714, 4
  %1719 = and i32 %1718, 32752
  %1720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1719)  ; LegacyF16ToF32(value)
  %1721 = lshr i32 %1714, 7
  %1722 = and i32 %1721, 32752
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1726 = fmul fast float %1725, 1.000000e+03
  %1727 = fmul fast float %351, %1726
  %1728 = call float @dx.op.unary.f32(i32 22, float %1727)  ; Frc(value)
  %1729 = fadd fast float %1728, %341
  %1730 = fmul fast float %352, %1726
  %1731 = call float @dx.op.unary.f32(i32 22, float %1730)  ; Frc(value)
  %1732 = fadd fast float %1731, %343
  %1733 = fmul fast float %1698, %1726
  %1734 = call float @dx.op.unary.f32(i32 22, float %1733)  ; Frc(value)
  %1735 = fmul fast float %1734, 0x401921FB60000000
  %1736 = fadd fast float %1735, %1717
  %1737 = call float @dx.op.unary.f32(i32 13, float %1736)  ; Sin(value)
  %1738 = call float @dx.op.unary.f32(i32 12, float %1736)  ; Cos(value)
  %1739 = fsub fast float -0.000000e+00, %1737
  %1740 = fadd fast float %1691, -5.000000e-01
  %1741 = fadd fast float %1692, -5.000000e-01
  %1742 = fmul fast float %1709, %1740
  %1743 = fmul fast float %1711, %1741
  %1744 = fadd fast float %1742, 5.000000e-01
  %1745 = fadd fast float %1743, 5.000000e-01
  %1746 = fmul fast float %1720, %1744
  %1747 = fmul fast float %1723, %1745
  %1748 = fmul fast float %1738, %1746
  %1749 = call float @dx.op.tertiary.f32(i32 46, float %1739, float %1747, float %1748)  ; FMad(a,b,c)
  %1750 = fmul fast float %1737, %1746
  %1751 = call float @dx.op.tertiary.f32(i32 46, float %1738, float %1747, float %1750)  ; FMad(a,b,c)
  %1752 = fadd fast float %1729, %1749
  %1753 = fadd fast float %1732, %1751
  %1754 = icmp ugt i32 %1703, 1
  %1755 = icmp ugt i32 %1701, 33554431
  %1756 = or i1 %1755, %1754
  br i1 %1756, label %1757, label %1782

; <label>:1757                                    ; preds = %1684
  %1758 = add i32 %33, 260
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = lshr i32 %1760, 16
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = fmul fast float %1725, %1762
  %1764 = call float @dx.op.unary.f32(i32 22, float %1763)  ; Frc(value)
  %1765 = mul nuw nsw i32 %1703, %1704
  %1766 = uitofp i32 %1765 to float
  %1767 = fmul fast float %1764, %1766
  %1768 = call float @dx.op.unary.f32(i32 27, float %1767)  ; Round_ni(value)
  %1769 = fptoui float %1768 to i32
  %1770 = urem i32 %1769, %1703
  %1771 = udiv i32 %1769, %1704
  %1772 = call float @dx.op.unary.f32(i32 22, float %1752)  ; Frc(value)
  %1773 = call float @dx.op.unary.f32(i32 22, float %1753)  ; Frc(value)
  %1774 = uitofp i32 %1770 to float
  %1775 = uitofp i32 %1771 to float
  %1776 = fadd fast float %1772, %1774
  %1777 = fadd fast float %1773, %1775
  %1778 = uitofp i32 %1703 to float
  %1779 = uitofp i32 %1704 to float
  %1780 = fdiv fast float %1776, %1778
  %1781 = fdiv fast float %1777, %1779
  br label %1782

; <label>:1782                                    ; preds = %1757, %1684
  %1783 = phi float [ %1780, %1757 ], [ %1752, %1684 ]
  %1784 = phi float [ %1781, %1757 ], [ %1753, %1684 ]
  %1785 = and i32 %1678, 256
  %1786 = icmp eq i32 %1785, 0
  br i1 %1786, label %1833, label %1787

; <label>:1787                                    ; preds = %1782
  %1788 = add i32 %33, 448
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = add i32 %1790, 0
  %1792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1793 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1792, %dx.types.Handle %75, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1794 = extractvalue %dx.types.ResRet.f32 %1793, 0
  %1795 = add i32 %33, 132
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = shl i32 %1797, 4
  %1799 = and i32 %1798, 32752
  %1800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1799)  ; LegacyF16ToF32(value)
  %1801 = lshr i32 %1797, 7
  %1802 = and i32 %1801, 32752
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = fsub fast float 1.000000e+00, %450
  %1805 = call float @dx.op.binary.f32(i32 35, float %1804, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1806 = bitcast float %450 to i32
  %1807 = sitofp i32 %1806 to float
  %1808 = fadd fast float %1807, 0xC1CFBF8940000000
  %1809 = fmul fast float %1803, %1808
  %1810 = fadd fast float %1809, 0x41CFBF8940000000
  %1811 = fptosi float %1810 to i32
  %1812 = bitcast i32 %1811 to float
  %1813 = bitcast float %1805 to i32
  %1814 = sitofp i32 %1813 to float
  %1815 = fadd fast float %1814, 0xC1CFBF8940000000
  %1816 = fmul fast float %1815, %1803
  %1817 = fadd fast float %1816, 0x41CFBF8940000000
  %1818 = fptosi float %1817 to i32
  %1819 = bitcast i32 %1818 to float
  %1820 = fmul fast float %1812, %1800
  %1821 = fmul fast float %1819, %1800
  %1822 = fsub fast float %1805, %1820
  %1823 = fadd fast float %1821, %1805
  %1824 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1825 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1826 = fsub fast float %1794, %1824
  %1827 = fsub fast float %1825, %1824
  %1828 = bitcast float %1827 to i32
  %1829 = sub nsw i32 2129859010, %1828
  %1830 = bitcast i32 %1829 to float
  %1831 = fmul fast float %1830, %1826
  %1832 = call float @dx.op.unary.f32(i32 7, float %1831)  ; Saturate(value)
  br label %1833

; <label>:1833                                    ; preds = %1787, %1782
  %1834 = phi float [ %1832, %1787 ], [ %450, %1782 ]
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 128
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %1855, label %1839

; <label>:1839                                    ; preds = %1833
  %1840 = add i32 %33, 432
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = add i32 %1842, 0
  %1844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1845 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1844, %dx.types.Handle %75, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = and i32 %1848, 524288
  %1850 = icmp ne i32 %1849, 0
  %1851 = fcmp fast ogt float %1846, 0x3FE0101020000000
  %1852 = select i1 %1851, float 1.000000e+00, float 0.000000e+00
  %1853 = select i1 %1850, float %1852, float %1846
  %1854 = fmul fast float %1853, %1834
  br label %1855

; <label>:1855                                    ; preds = %1839, %1833
  %1856 = phi float [ %1854, %1839 ], [ %1834, %1833 ]
  %1857 = fcmp fast ult float %1856, 0x3F70101020000000
  br i1 %1857, label %2400, label %1858

; <label>:1858                                    ; preds = %1855
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = and i32 %1860, 16
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %2061, label %1863

; <label>:1863                                    ; preds = %1858
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = add i32 %33, 384
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = add i32 %1868, 0
  %1870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1870, %dx.types.Handle %74, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = extractvalue %dx.types.ResRet.f32 %1871, 3
  %1876 = and i32 %1865, 255
  %1877 = uitofp i32 %1876 to float
  %1878 = lshr i32 %1865, 8
  %1879 = and i32 %1878, 255
  %1880 = uitofp i32 %1879 to float
  %1881 = fmul fast float %1875, %1877
  %1882 = fadd fast float %1881, %1880
  %1883 = fmul fast float %1882, 0x3F70101000000000
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = and i32 %1885, 512
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %1896, label %1888

; <label>:1888                                    ; preds = %1863
  %1889 = add i32 %33, 464
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = add i32 %1891, 0
  %1893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1893, %dx.types.Handle %75, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  br label %1896

; <label>:1896                                    ; preds = %1888, %1863
  %1897 = phi float [ %1895, %1888 ], [ 1.000000e+00, %1863 ]
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 33554432
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %2008, label %1902

; <label>:1902                                    ; preds = %1896
  %1903 = add i32 %33, 256
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 65535
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = lshr i32 %1905, 16
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = add i32 %33, 260
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = and i32 %1912, 65535
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = lshr i32 %1916, 24
  %1918 = uitofp i32 %1917 to float
  %1919 = fmul fast float %1918, 0x3F70101020000000
  %1920 = and i32 %1916, 255
  %1921 = uitofp i32 %1920 to float
  %1922 = fmul fast float %1921, 0x3F70101020000000
  %1923 = lshr i32 %1916, 8
  %1924 = and i32 %1923, 255
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1925, 0x3F70101020000000
  %1927 = lshr i32 %1916, 16
  %1928 = and i32 %1927, 255
  %1929 = uitofp i32 %1928 to float
  %1930 = fmul fast float %1929, 0x3F70101020000000
  %1931 = add i32 %33, 252
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = lshr i32 %1933, 24
  %1935 = uitofp i32 %1934 to float
  %1936 = fmul fast float %1935, 0x3F70101020000000
  %1937 = and i32 %1933, 255
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1938, 0x3F70101020000000
  %1940 = lshr i32 %1933, 8
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1942, 0x3F70101020000000
  %1944 = lshr i32 %1933, 16
  %1945 = and i32 %1944, 255
  %1946 = uitofp i32 %1945 to float
  %1947 = fmul fast float %1946, 0x3F70101020000000
  %1948 = bitcast float %1872 to i32
  %1949 = ashr i32 %1948, 1
  %1950 = sub nsw i32 1597463174, %1949
  %1951 = bitcast i32 %1950 to float
  %1952 = fmul fast float %1872, 5.000000e-01
  %1953 = fmul fast float %1951, %1951
  %1954 = fmul fast float %1953, %1952
  %1955 = fsub fast float 1.500000e+00, %1954
  %1956 = fmul fast float %1951, %1872
  %1957 = fmul fast float %1956, %1955
  %1958 = bitcast float %1873 to i32
  %1959 = ashr i32 %1958, 1
  %1960 = sub nsw i32 1597463174, %1959
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1873, 5.000000e-01
  %1963 = fmul fast float %1961, %1961
  %1964 = fmul fast float %1963, %1962
  %1965 = fsub fast float 1.500000e+00, %1964
  %1966 = fmul fast float %1961, %1873
  %1967 = fmul fast float %1966, %1965
  %1968 = bitcast float %1874 to i32
  %1969 = ashr i32 %1968, 1
  %1970 = sub nsw i32 1597463174, %1969
  %1971 = bitcast i32 %1970 to float
  %1972 = fmul fast float %1874, 5.000000e-01
  %1973 = fmul fast float %1971, %1971
  %1974 = fmul fast float %1973, %1972
  %1975 = fsub fast float 1.500000e+00, %1974
  %1976 = fmul fast float %1971, %1874
  %1977 = fmul fast float %1976, %1975
  %1978 = fsub fast float %1957, %1939
  %1979 = fsub fast float %1967, %1943
  %1980 = fsub fast float %1977, %1947
  %1981 = fmul fast float %1978, %1907
  %1982 = fmul fast float %1979, %1909
  %1983 = fmul fast float %1980, %1914
  %1984 = fadd fast float %1981, %1922
  %1985 = fadd fast float %1982, %1926
  %1986 = fadd fast float %1983, %1930
  %1987 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1988 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1989 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1990 = fmul fast float %1987, %1987
  %1991 = fmul fast float %1988, %1988
  %1992 = fmul fast float %1989, %1989
  %1993 = fsub fast float %1990, %1872
  %1994 = fsub fast float %1991, %1873
  %1995 = fsub fast float %1992, %1874
  %1996 = fmul fast float %1993, %1897
  %1997 = fmul fast float %1994, %1897
  %1998 = fmul fast float %1995, %1897
  %1999 = fadd fast float %1996, %1872
  %2000 = fadd fast float %1997, %1873
  %2001 = fadd fast float %1998, %1874
  %2002 = fadd fast float %1919, %1883
  %2003 = fsub fast float %2002, %1936
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2005 = fsub fast float %2004, %1883
  %2006 = fmul fast float %2005, %1897
  %2007 = fadd fast float %2006, %1883
  br label %2061

; <label>:2008                                    ; preds = %1896
  %2009 = and i32 %1899, 134217728
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2045, label %2011

; <label>:2011                                    ; preds = %2008
  %2012 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %2013 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %2014 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2015 = fadd fast float %2012, -5.000000e-01
  %2016 = fadd fast float %2013, -5.000000e-01
  %2017 = fadd fast float %2014, -5.000000e-01
  %2018 = fmul fast float %2015, %1897
  %2019 = fmul fast float %2016, %1897
  %2020 = fmul fast float %2017, %1897
  %2021 = fadd fast float %2018, 5.000000e-01
  %2022 = fadd fast float %2019, 5.000000e-01
  %2023 = fadd fast float %2020, 5.000000e-01
  %2024 = call float @dx.op.unary.f32(i32 24, float %1872)  ; Sqrt(value)
  %2025 = call float @dx.op.unary.f32(i32 24, float %1873)  ; Sqrt(value)
  %2026 = call float @dx.op.unary.f32(i32 24, float %1874)  ; Sqrt(value)
  %2027 = fmul fast float %2021, 2.000000e+00
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = fmul fast float %2028, %2024
  %2030 = fadd fast float %2029, %2027
  %2031 = fmul fast float %2030, %2024
  %2032 = fmul fast float %2022, 2.000000e+00
  %2033 = fsub fast float 1.000000e+00, %2032
  %2034 = fmul fast float %2033, %2025
  %2035 = fadd fast float %2034, %2032
  %2036 = fmul fast float %2035, %2025
  %2037 = fmul fast float %2023, 2.000000e+00
  %2038 = fsub fast float 1.000000e+00, %2037
  %2039 = fmul fast float %2038, %2026
  %2040 = fadd fast float %2039, %2037
  %2041 = fmul fast float %2040, %2026
  %2042 = fmul fast float %2031, %2031
  %2043 = fmul fast float %2036, %2036
  %2044 = fmul fast float %2041, %2041
  br label %2061

; <label>:2045                                    ; preds = %2008
  %2046 = fmul fast float %328, %328
  %2047 = fmul fast float %332, %332
  %2048 = fmul fast float %336, %336
  %2049 = fadd fast float %2046, -1.000000e+00
  %2050 = fadd fast float %2047, -1.000000e+00
  %2051 = fadd fast float %2048, -1.000000e+00
  %2052 = fmul fast float %1897, %2049
  %2053 = fmul fast float %1897, %2050
  %2054 = fmul fast float %1897, %2051
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fadd fast float %2053, 1.000000e+00
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fmul fast float %2055, %1872
  %2059 = fmul fast float %2056, %1873
  %2060 = fmul fast float %2057, %1874
  br label %2061

; <label>:2061                                    ; preds = %2045, %2011, %1902, %1858
  %2062 = phi float [ %2007, %1902 ], [ %1883, %2011 ], [ %1883, %2045 ], [ 0x3FA23C0BE0000000, %1858 ]
  %2063 = phi float [ %1999, %1902 ], [ %2042, %2011 ], [ %2058, %2045 ], [ 1.000000e+00, %1858 ]
  %2064 = phi float [ %2000, %1902 ], [ %2043, %2011 ], [ %2059, %2045 ], [ 1.000000e+00, %1858 ]
  %2065 = phi float [ %2001, %1902 ], [ %2044, %2011 ], [ %2060, %2045 ], [ 1.000000e+00, %1858 ]
  %2066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2067 = extractvalue %dx.types.CBufRet.i32 %2066, 1
  %2068 = and i32 %2067, 1
  %2069 = icmp ne i32 %2068, 0
  %2070 = add i32 %33, 356
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = and i32 %2072, 32
  %2074 = icmp ne i32 %2073, 0
  %2075 = and i1 %2069, %2074
  %2076 = select i1 %2075, float 1.000000e+00, float %2063
  %2077 = select i1 %2075, float 0x3FD3333340000000, float %2064
  %2078 = select i1 %2075, float 0x3FD3333340000000, float %2065
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = and i32 %2080, 32
  %2082 = icmp eq i32 %2081, 0
  br i1 %2082, label %2155, label %2083

; <label>:2083                                    ; preds = %2061
  %2084 = add i32 %33, 124
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = add i32 %33, 400
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %2089, 0
  %2091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2091, %dx.types.Handle %74, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.ResRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.ResRet.f32 %2092, 2
  %2096 = extractvalue %dx.types.ResRet.f32 %2092, 3
  %2097 = and i32 %2086, 255
  %2098 = uitofp i32 %2097 to float
  %2099 = lshr i32 %2086, 8
  %2100 = and i32 %2099, 255
  %2101 = uitofp i32 %2100 to float
  %2102 = lshr i32 %2086, 16
  %2103 = and i32 %2102, 255
  %2104 = uitofp i32 %2103 to float
  %2105 = fmul fast float %2104, 0x3F70101000000000
  %2106 = fmul fast float %2093, %2098
  %2107 = fadd fast float %2106, %2101
  %2108 = fmul fast float %2107, 0x3F70101000000000
  %2109 = fadd fast float %2094, -5.000000e-01
  %2110 = fadd fast float %2096, -5.000000e-01
  %2111 = fmul fast float %2109, %2105
  %2112 = fmul fast float %2110, %2105
  %2113 = fadd fast float %2111, 5.000000e-01
  %2114 = fadd fast float %2112, 5.000000e-01
  %2115 = fmul fast float %2113, 2.000000e+00
  %2116 = fadd fast float %2115, -1.000000e+00
  %2117 = fmul fast float %2114, 2.000000e+00
  %2118 = fadd fast float %2117, -1.000000e+00
  %2119 = fadd fast float %2116, %2118
  %2120 = fmul fast float %2119, 5.000000e-01
  %2121 = fsub fast float %2116, %2118
  %2122 = fmul fast float %2121, 5.000000e-01
  %2123 = call float @dx.op.unary.f32(i32 6, float %2120)  ; FAbs(value)
  %2124 = fsub fast float 1.000000e+00, %2123
  %2125 = call float @dx.op.unary.f32(i32 6, float %2122)  ; FAbs(value)
  %2126 = fsub fast float %2124, %2125
  %2127 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2122, float %2126, float %2120, float %2122, float %2126)  ; Dot3(ax,ay,az,bx,by,bz)
  %2128 = call float @dx.op.unary.f32(i32 25, float %2127)  ; Rsqrt(value)
  %2129 = fmul fast float %2120, %2128
  %2130 = fmul fast float %2122, %2128
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 67108864
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2151, label %2135

; <label>:2135                                    ; preds = %2083
  %2136 = add i32 %33, 312
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = and i32 %2138, 65535
  %2140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2139)  ; LegacyF16ToF32(value)
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = and i32 %2142, 65535
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = lshr i32 %2138, 16
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = fsub fast float %2108, %2146
  %2148 = fmul fast float %2147, %2140
  %2149 = fadd fast float %2148, %2144
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  br label %2151

; <label>:2151                                    ; preds = %2135, %2083
  %2152 = phi float [ %2150, %2135 ], [ %2108, %2083 ]
  %2153 = call float @dx.op.dot2.f32(i32 54, float %2129, float %2130, float %1687, float %1688)  ; Dot2(ax,ay,bx,by)
  %2154 = call float @dx.op.dot2.f32(i32 54, float %2129, float %2130, float %1689, float %1690)  ; Dot2(ax,ay,bx,by)
  br label %2155

; <label>:2155                                    ; preds = %2151, %2061
  %2156 = phi float [ %2152, %2151 ], [ 0x3FD6666660000000, %2061 ]
  %2157 = phi float [ %2153, %2151 ], [ 0.000000e+00, %2061 ]
  %2158 = phi float [ %2154, %2151 ], [ 0.000000e+00, %2061 ]
  %2159 = phi float [ %2095, %2151 ], [ 1.000000e+00, %2061 ]
  %2160 = add i32 %33, 192
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = lshr i32 %2162, 22
  %2164 = shl nuw nsw i32 %2163, 5
  %2165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2164)  ; LegacyF16ToF32(value)
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = and i32 %2167, 64
  %2169 = icmp eq i32 %2168, 0
  br i1 %2169, label %2203, label %2170

; <label>:2170                                    ; preds = %2155
  %2171 = add i32 %33, 416
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = add i32 %2173, 0
  %2175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = and i32 %2177, 131072
  %2179 = icmp eq i32 %2178, 0
  %2180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2175, %dx.types.Handle %74, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2181 = extractvalue %dx.types.ResRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.ResRet.f32 %2180, 1
  %2183 = extractvalue %dx.types.ResRet.f32 %2180, 2
  %2184 = fmul fast float %2181, %316
  %2185 = fmul fast float %2182, %319
  %2186 = fmul fast float %2183, %322
  br i1 %2179, label %2193, label %2187

; <label>:2187                                    ; preds = %2170
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = fmul fast float %2189, %2184
  %2191 = fmul fast float %2189, %2185
  %2192 = fmul fast float %2189, %2186
  br label %2193

; <label>:2193                                    ; preds = %2187, %2170
  %2194 = phi float [ %2190, %2187 ], [ %2184, %2170 ]
  %2195 = phi float [ %2191, %2187 ], [ %2185, %2170 ]
  %2196 = phi float [ %2192, %2187 ], [ %2186, %2170 ]
  %2197 = fmul fast float %2194, %2165
  %2198 = select i1 %215, float %2197, float %2194
  %2199 = call float @dx.op.dot3.f32(i32 55, float %2198, float %2195, float %2196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2200 = select i1 %215, float 0.000000e+00, float %2194
  %2201 = select i1 %215, float %2199, float %2195
  %2202 = select i1 %215, float 0.000000e+00, float %2196
  br label %2203

; <label>:2203                                    ; preds = %2193, %2155
  %2204 = phi float [ %2200, %2193 ], [ 0.000000e+00, %2155 ]
  %2205 = phi float [ %2201, %2193 ], [ 0.000000e+00, %2155 ]
  %2206 = phi float [ %2202, %2193 ], [ 0.000000e+00, %2155 ]
  %2207 = add i32 %33, 128
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = lshr i32 %2209, 8
  %2213 = and i32 %2212, 255
  %2214 = uitofp i32 %2213 to float
  %2215 = call float @dx.op.dot3.f32(i32 55, float %2076, float %2077, float %2078, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2216 = fmul fast float %2214, %2215
  %2217 = fadd fast float %2216, %2211
  %2218 = fmul fast float %2217, 0x3F70101020000000
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  br i1 %1675, label %2220, label %2228

; <label>:2220                                    ; preds = %2203
  %2221 = fsub fast float 1.000000e+00, %1856
  %2222 = fmul fast float %2221, %1664
  %2223 = fmul fast float %2221, %1665
  %2224 = fmul fast float %2221, %1666
  %2225 = fmul fast float %2221, %1667
  %2226 = fmul fast float %2221, %1668
  %2227 = fmul fast float %2221, %1669
  br label %2228

; <label>:2228                                    ; preds = %2220, %2203
  %2229 = phi float [ %2222, %2220 ], [ %1664, %2203 ]
  %2230 = phi float [ %2223, %2220 ], [ %1665, %2203 ]
  %2231 = phi float [ %2224, %2220 ], [ %1666, %2203 ]
  %2232 = phi float [ %2225, %2220 ], [ %1667, %2203 ]
  %2233 = phi float [ %2226, %2220 ], [ %1668, %2203 ]
  %2234 = phi float [ %2227, %2220 ], [ %1669, %2203 ]
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 3
  %2238 = icmp eq i32 %2237, 3
  br i1 %2238, label %2317, label %2239

; <label>:2239                                    ; preds = %2228
  %2240 = and i32 %2236, 16
  %2241 = icmp ne i32 %2240, 0
  %2242 = select i1 %2241, float %1856, float 0.000000e+00
  %2243 = icmp eq i32 %2237, 0
  br i1 %2243, label %2244, label %2272

; <label>:2244                                    ; preds = %2239
  %2245 = and i32 %2236, 64
  %2246 = icmp ne i32 %2245, 0
  %2247 = select i1 %2246, float %1856, float 0.000000e+00
  %2248 = fsub fast float %2076, %2229
  %2249 = fsub fast float %2077, %2230
  %2250 = fsub fast float %2078, %2231
  %2251 = fmul fast float %2242, %2248
  %2252 = fmul fast float %2242, %2249
  %2253 = fmul fast float %2242, %2250
  %2254 = fadd fast float %2251, %2229
  %2255 = fadd fast float %2252, %2230
  %2256 = fadd fast float %2253, %2231
  %2257 = fsub fast float %2062, %1670
  %2258 = fmul fast float %2242, %2257
  %2259 = fadd fast float %2258, %1670
  %2260 = fsub fast float %2204, %2232
  %2261 = fsub fast float %2205, %2233
  %2262 = fsub fast float %2206, %2234
  %2263 = fmul fast float %2247, %2260
  %2264 = fmul fast float %2247, %2261
  %2265 = fmul fast float %2247, %2262
  %2266 = fadd fast float %2263, %2232
  %2267 = fadd fast float %2264, %2233
  %2268 = fadd fast float %2265, %2234
  %2269 = fsub fast float %2219, %1673
  %2270 = fmul fast float %2242, %2269
  %2271 = fadd fast float %2270, %1673
  br label %2317

; <label>:2272                                    ; preds = %2239
  %2273 = icmp eq i32 %2237, 1
  br i1 %2273, label %2274, label %2287

; <label>:2274                                    ; preds = %2272
  %2275 = fadd fast float %2076, -1.000000e+00
  %2276 = fadd fast float %2077, -1.000000e+00
  %2277 = fadd fast float %2078, -1.000000e+00
  %2278 = fmul fast float %2242, %2275
  %2279 = fmul fast float %2242, %2276
  %2280 = fmul fast float %2242, %2277
  %2281 = fadd fast float %2278, 1.000000e+00
  %2282 = fadd fast float %2279, 1.000000e+00
  %2283 = fadd fast float %2280, 1.000000e+00
  %2284 = fmul fast float %2281, %2229
  %2285 = fmul fast float %2282, %2230
  %2286 = fmul fast float %2283, %2231
  br label %2317

; <label>:2287                                    ; preds = %2272
  %2288 = icmp eq i32 %2237, 2
  br i1 %2288, label %2289, label %2317

; <label>:2289                                    ; preds = %2287
  %2290 = call float @dx.op.unary.f32(i32 24, float %2076)  ; Sqrt(value)
  %2291 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2292 = call float @dx.op.unary.f32(i32 24, float %2078)  ; Sqrt(value)
  %2293 = fadd fast float %2290, -5.000000e-01
  %2294 = fadd fast float %2291, -5.000000e-01
  %2295 = fadd fast float %2292, -5.000000e-01
  %2296 = fmul fast float %2293, %2242
  %2297 = fmul fast float %2294, %2242
  %2298 = fmul fast float %2295, %2242
  %2299 = fadd fast float %2296, 5.000000e-01
  %2300 = fadd fast float %2297, 5.000000e-01
  %2301 = fadd fast float %2298, 5.000000e-01
  %2302 = fmul fast float %2299, 2.000000e+00
  %2303 = fsub fast float 1.000000e+00, %2302
  %2304 = fmul fast float %2303, %2229
  %2305 = fadd fast float %2304, %2302
  %2306 = fmul fast float %2305, %2229
  %2307 = fmul fast float %2300, 2.000000e+00
  %2308 = fsub fast float 1.000000e+00, %2307
  %2309 = fmul fast float %2308, %2230
  %2310 = fadd fast float %2309, %2307
  %2311 = fmul fast float %2310, %2230
  %2312 = fmul fast float %2301, 2.000000e+00
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = fmul fast float %2313, %2231
  %2315 = fadd fast float %2314, %2312
  %2316 = fmul fast float %2315, %2231
  br label %2317

; <label>:2317                                    ; preds = %2289, %2287, %2274, %2244, %2228
  %2318 = phi float [ %2229, %2228 ], [ %2306, %2289 ], [ %2229, %2287 ], [ %2284, %2274 ], [ %2254, %2244 ]
  %2319 = phi float [ %2230, %2228 ], [ %2311, %2289 ], [ %2230, %2287 ], [ %2285, %2274 ], [ %2255, %2244 ]
  %2320 = phi float [ %2231, %2228 ], [ %2316, %2289 ], [ %2231, %2287 ], [ %2286, %2274 ], [ %2256, %2244 ]
  %2321 = phi float [ %2232, %2228 ], [ %2232, %2289 ], [ %2232, %2287 ], [ %2232, %2274 ], [ %2266, %2244 ]
  %2322 = phi float [ %2233, %2228 ], [ %2233, %2289 ], [ %2233, %2287 ], [ %2233, %2274 ], [ %2267, %2244 ]
  %2323 = phi float [ %2234, %2228 ], [ %2234, %2289 ], [ %2234, %2287 ], [ %2234, %2274 ], [ %2268, %2244 ]
  %2324 = phi float [ %1670, %2228 ], [ %1670, %2289 ], [ %1670, %2287 ], [ %1670, %2274 ], [ %2259, %2244 ]
  %2325 = phi float [ %1673, %2228 ], [ %1673, %2289 ], [ %1673, %2287 ], [ %1673, %2274 ], [ %2271, %2244 ]
  %2326 = and i32 %2236, 12
  %2327 = icmp eq i32 %2326, 12
  br i1 %2327, label %2400, label %2328

; <label>:2328                                    ; preds = %2317
  %2329 = and i32 %2236, 2097184
  %2330 = icmp eq i32 %2329, 2097184
  %2331 = select i1 %2330, float %1856, float 0.000000e+00
  %2332 = and i32 %2236, 4194336
  %2333 = icmp eq i32 %2332, 4194336
  %2334 = select i1 %2333, float %1856, float 0.000000e+00
  %2335 = and i32 %2236, 8388640
  %2336 = icmp eq i32 %2335, 8388640
  %2337 = select i1 %2336, float %1856, float 0.000000e+00
  %2338 = icmp eq i32 %2326, 0
  br i1 %2338, label %2339, label %2352

; <label>:2339                                    ; preds = %2328
  %2340 = fsub fast float %2157, %1662
  %2341 = fsub fast float %2158, %1663
  %2342 = fmul fast float %2331, %2340
  %2343 = fmul fast float %2331, %2341
  %2344 = fadd fast float %2342, %1662
  %2345 = fadd fast float %2343, %1663
  %2346 = fsub fast float %2159, %1672
  %2347 = fmul fast float %2334, %2346
  %2348 = fadd fast float %2347, %1672
  %2349 = fsub fast float %2156, %1671
  %2350 = fmul fast float %2337, %2349
  %2351 = fadd fast float %2350, %1671
  br label %2400

; <label>:2352                                    ; preds = %2328
  %2353 = icmp eq i32 %2326, 4
  br i1 %2353, label %2354, label %2386

; <label>:2354                                    ; preds = %2352
  %2355 = fmul fast float %2331, %2157
  %2356 = fmul fast float %2331, %2158
  %2357 = fadd fast float %2355, %1662
  %2358 = fadd fast float %2356, %1663
  %2359 = call float @dx.op.binary.f32(i32 36, float %1672, float %2159)  ; FMin(a,b)
  %2360 = fsub fast float %2359, %1672
  %2361 = fmul fast float %2360, %2334
  %2362 = fadd fast float %2361, %1672
  %2363 = fadd fast float %2156, %1671
  %2364 = fmul fast float %2363, 0x3FF337FAE0000000
  %2365 = fmul fast float %1671, %1671
  %2366 = fmul fast float %2156, %2156
  %2367 = fadd fast float %2366, %2365
  %2368 = fmul fast float %2367, 0x3FE5152B00000000
  %2369 = fmul fast float %1671, 0xBFCC1F85E0000000
  %2370 = fmul fast float %2369, %2156
  %2371 = fadd fast float %2370, 0xBFE1363700000000
  %2372 = fadd fast float %2371, %2364
  %2373 = fsub fast float %2372, %2368
  %2374 = fmul fast float %2363, 0x3FBA6F0D00000000
  %2375 = fmul fast float %2367, 0x3FD0432880000000
  %2376 = fmul fast float %1671, 0xBFEF110800000000
  %2377 = fmul fast float %2376, %2156
  %2378 = fadd fast float %2377, 1.000000e+00
  %2379 = fsub fast float %2378, %2374
  %2380 = fadd fast float %2379, %2375
  %2381 = fdiv fast float %2373, %2380
  %2382 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  %2383 = fsub fast float %2382, %1671
  %2384 = fmul fast float %2383, %2337
  %2385 = fadd fast float %2384, %1671
  br label %2400

; <label>:2386                                    ; preds = %2352
  %2387 = icmp eq i32 %2326, 8
  br i1 %2387, label %2388, label %2400

; <label>:2388                                    ; preds = %2386
  %2389 = fmul fast float %2331, %2157
  %2390 = fmul fast float %2331, %2158
  %2391 = fadd fast float %2389, %1662
  %2392 = fadd fast float %2390, %1663
  %2393 = call float @dx.op.binary.f32(i32 36, float %1672, float %2159)  ; FMin(a,b)
  %2394 = fsub fast float %2393, %1672
  %2395 = fmul fast float %2394, %2334
  %2396 = fadd fast float %2395, %1672
  %2397 = fsub fast float %2156, %1671
  %2398 = fmul fast float %2337, %2397
  %2399 = fadd fast float %2398, %1671
  br label %2400

; <label>:2400                                    ; preds = %2388, %2386, %2354, %2339, %2317, %1855, %1674, %1661
  %2401 = phi float [ %1662, %2317 ], [ %1662, %1855 ], [ %1662, %1661 ], [ %2391, %2388 ], [ %1662, %2386 ], [ %2357, %2354 ], [ %2344, %2339 ], [ %1662, %1674 ]
  %2402 = phi float [ %1663, %2317 ], [ %1663, %1855 ], [ %1663, %1661 ], [ %2392, %2388 ], [ %1663, %2386 ], [ %2358, %2354 ], [ %2345, %2339 ], [ %1663, %1674 ]
  %2403 = phi float [ %2318, %2317 ], [ %1664, %1855 ], [ %1664, %1661 ], [ %2318, %2388 ], [ %2318, %2386 ], [ %2318, %2354 ], [ %2318, %2339 ], [ %1664, %1674 ]
  %2404 = phi float [ %2319, %2317 ], [ %1665, %1855 ], [ %1665, %1661 ], [ %2319, %2388 ], [ %2319, %2386 ], [ %2319, %2354 ], [ %2319, %2339 ], [ %1665, %1674 ]
  %2405 = phi float [ %2320, %2317 ], [ %1666, %1855 ], [ %1666, %1661 ], [ %2320, %2388 ], [ %2320, %2386 ], [ %2320, %2354 ], [ %2320, %2339 ], [ %1666, %1674 ]
  %2406 = phi float [ %2321, %2317 ], [ %1667, %1855 ], [ %1667, %1661 ], [ %2321, %2388 ], [ %2321, %2386 ], [ %2321, %2354 ], [ %2321, %2339 ], [ %1667, %1674 ]
  %2407 = phi float [ %2322, %2317 ], [ %1668, %1855 ], [ %1668, %1661 ], [ %2322, %2388 ], [ %2322, %2386 ], [ %2322, %2354 ], [ %2322, %2339 ], [ %1668, %1674 ]
  %2408 = phi float [ %2323, %2317 ], [ %1669, %1855 ], [ %1669, %1661 ], [ %2323, %2388 ], [ %2323, %2386 ], [ %2323, %2354 ], [ %2323, %2339 ], [ %1669, %1674 ]
  %2409 = phi float [ %2324, %2317 ], [ %1670, %1855 ], [ %1670, %1661 ], [ %2324, %2388 ], [ %2324, %2386 ], [ %2324, %2354 ], [ %2324, %2339 ], [ %1670, %1674 ]
  %2410 = phi float [ %1671, %2317 ], [ %1671, %1855 ], [ %1671, %1661 ], [ %2399, %2388 ], [ %1671, %2386 ], [ %2385, %2354 ], [ %2351, %2339 ], [ %1671, %1674 ]
  %2411 = phi float [ %1672, %2317 ], [ %1672, %1855 ], [ %1672, %1661 ], [ %2396, %2388 ], [ %1672, %2386 ], [ %2362, %2354 ], [ %2348, %2339 ], [ %1672, %1674 ]
  %2412 = phi float [ %2325, %2317 ], [ %1673, %1855 ], [ %1673, %1661 ], [ %2325, %2388 ], [ %2325, %2386 ], [ %2325, %2354 ], [ %2325, %2339 ], [ %1673, %1674 ]
  br i1 %403, label %3139, label %2413

; <label>:2413                                    ; preds = %2400
  %2414 = icmp ult i32 %454, 4
  %2415 = add i32 %33, 72
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = add i32 %33, 76
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = or i32 %2420, %2417
  %2422 = icmp eq i32 %2421, 0
  br i1 %2422, label %3139, label %2423

; <label>:2423                                    ; preds = %2413
  %2424 = and i32 %2417, 262144
  %2425 = icmp ne i32 %2424, 0
  %2426 = select i1 %2425, float %39, float 1.000000e+00
  %2427 = select i1 %2425, float %40, float 0.000000e+00
  %2428 = select i1 %2425, float %41, float 0.000000e+00
  %2429 = select i1 %2425, float %42, float 1.000000e+00
  %2430 = select i1 %2425, float %43, float %66
  %2431 = select i1 %2425, float %44, float %67
  %2432 = add i32 %33, 332
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = lshr i32 %2434, 16
  %2436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2435)  ; LegacyF16ToF32(value)
  %2437 = fmul fast float %2436, 0x3F50624DE0000000
  %2438 = add i32 %33, 136
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = lshr i32 %2440, 16
  %2442 = and i32 %2441, 255
  %2443 = lshr i32 %2440, 24
  %2444 = add i32 %33, 340
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 65535
  %2448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2447)  ; LegacyF16ToF32(value)
  %2449 = lshr i32 %2446, 16
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = add i32 %33, 80
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = lshr i32 %2453, 22
  %2455 = shl nuw nsw i32 %2454, 5
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = shl i32 %2453, 4
  %2458 = and i32 %2457, 32752
  %2459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2458)  ; LegacyF16ToF32(value)
  %2460 = lshr i32 %2453, 7
  %2461 = and i32 %2460, 32752
  %2462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2461)  ; LegacyF16ToF32(value)
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 3
  %2465 = fmul fast float %2464, 1.000000e+03
  %2466 = fmul fast float %393, %2465
  %2467 = call float @dx.op.unary.f32(i32 22, float %2466)  ; Frc(value)
  %2468 = fadd fast float %2467, %383
  %2469 = fmul fast float %394, %2465
  %2470 = call float @dx.op.unary.f32(i32 22, float %2469)  ; Frc(value)
  %2471 = fadd fast float %2470, %385
  %2472 = fmul fast float %2437, %2465
  %2473 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2474 = fmul fast float %2473, 0x401921FB60000000
  %2475 = fadd fast float %2474, %2456
  %2476 = call float @dx.op.unary.f32(i32 13, float %2475)  ; Sin(value)
  %2477 = call float @dx.op.unary.f32(i32 12, float %2475)  ; Cos(value)
  %2478 = fsub fast float -0.000000e+00, %2476
  %2479 = fadd fast float %2430, -5.000000e-01
  %2480 = fadd fast float %2431, -5.000000e-01
  %2481 = fmul fast float %2448, %2479
  %2482 = fmul fast float %2450, %2480
  %2483 = fadd fast float %2481, 5.000000e-01
  %2484 = fadd fast float %2482, 5.000000e-01
  %2485 = fmul fast float %2459, %2483
  %2486 = fmul fast float %2462, %2484
  %2487 = fmul fast float %2477, %2485
  %2488 = call float @dx.op.tertiary.f32(i32 46, float %2478, float %2486, float %2487)  ; FMad(a,b,c)
  %2489 = fmul fast float %2476, %2485
  %2490 = call float @dx.op.tertiary.f32(i32 46, float %2477, float %2486, float %2489)  ; FMad(a,b,c)
  %2491 = fadd fast float %2468, %2488
  %2492 = fadd fast float %2471, %2490
  %2493 = icmp ugt i32 %2442, 1
  %2494 = icmp ugt i32 %2440, 33554431
  %2495 = or i1 %2494, %2493
  br i1 %2495, label %2496, label %2521

; <label>:2496                                    ; preds = %2423
  %2497 = add i32 %33, 276
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = lshr i32 %2499, 16
  %2501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2500)  ; LegacyF16ToF32(value)
  %2502 = fmul fast float %2464, %2501
  %2503 = call float @dx.op.unary.f32(i32 22, float %2502)  ; Frc(value)
  %2504 = mul nuw nsw i32 %2442, %2443
  %2505 = uitofp i32 %2504 to float
  %2506 = fmul fast float %2503, %2505
  %2507 = call float @dx.op.unary.f32(i32 27, float %2506)  ; Round_ni(value)
  %2508 = fptoui float %2507 to i32
  %2509 = urem i32 %2508, %2442
  %2510 = udiv i32 %2508, %2443
  %2511 = call float @dx.op.unary.f32(i32 22, float %2491)  ; Frc(value)
  %2512 = call float @dx.op.unary.f32(i32 22, float %2492)  ; Frc(value)
  %2513 = uitofp i32 %2509 to float
  %2514 = uitofp i32 %2510 to float
  %2515 = fadd fast float %2511, %2513
  %2516 = fadd fast float %2512, %2514
  %2517 = uitofp i32 %2442 to float
  %2518 = uitofp i32 %2443 to float
  %2519 = fdiv fast float %2515, %2517
  %2520 = fdiv fast float %2516, %2518
  br label %2521

; <label>:2521                                    ; preds = %2496, %2423
  %2522 = phi float [ %2519, %2496 ], [ %2491, %2423 ]
  %2523 = phi float [ %2520, %2496 ], [ %2492, %2423 ]
  %2524 = and i32 %2417, 256
  %2525 = icmp eq i32 %2524, 0
  br i1 %2525, label %2572, label %2526

; <label>:2526                                    ; preds = %2521
  %2527 = add i32 %33, 452
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = add i32 %2529, 0
  %2531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2531, %dx.types.Handle %75, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2534 = add i32 %33, 148
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = shl i32 %2536, 4
  %2538 = and i32 %2537, 32752
  %2539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2538)  ; LegacyF16ToF32(value)
  %2540 = lshr i32 %2536, 7
  %2541 = and i32 %2540, 32752
  %2542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2541)  ; LegacyF16ToF32(value)
  %2543 = fsub fast float 1.000000e+00, %449
  %2544 = call float @dx.op.binary.f32(i32 35, float %2543, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2545 = bitcast float %449 to i32
  %2546 = sitofp i32 %2545 to float
  %2547 = fadd fast float %2546, 0xC1CFBF8940000000
  %2548 = fmul fast float %2542, %2547
  %2549 = fadd fast float %2548, 0x41CFBF8940000000
  %2550 = fptosi float %2549 to i32
  %2551 = bitcast i32 %2550 to float
  %2552 = bitcast float %2544 to i32
  %2553 = sitofp i32 %2552 to float
  %2554 = fadd fast float %2553, 0xC1CFBF8940000000
  %2555 = fmul fast float %2554, %2542
  %2556 = fadd fast float %2555, 0x41CFBF8940000000
  %2557 = fptosi float %2556 to i32
  %2558 = bitcast i32 %2557 to float
  %2559 = fmul fast float %2551, %2539
  %2560 = fmul fast float %2558, %2539
  %2561 = fsub fast float %2544, %2559
  %2562 = fadd fast float %2560, %2544
  %2563 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2564 = call float @dx.op.unary.f32(i32 7, float %2562)  ; Saturate(value)
  %2565 = fsub fast float %2533, %2563
  %2566 = fsub fast float %2564, %2563
  %2567 = bitcast float %2566 to i32
  %2568 = sub nsw i32 2129859010, %2567
  %2569 = bitcast i32 %2568 to float
  %2570 = fmul fast float %2569, %2565
  %2571 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  br label %2572

; <label>:2572                                    ; preds = %2526, %2521
  %2573 = phi float [ %2571, %2526 ], [ %449, %2521 ]
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 128
  %2577 = icmp eq i32 %2576, 0
  br i1 %2577, label %2594, label %2578

; <label>:2578                                    ; preds = %2572
  %2579 = add i32 %33, 436
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = add i32 %2581, 0
  %2583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2583, %dx.types.Handle %75, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = and i32 %2587, 524288
  %2589 = icmp ne i32 %2588, 0
  %2590 = fcmp fast ogt float %2585, 0x3FE0101020000000
  %2591 = select i1 %2590, float 1.000000e+00, float 0.000000e+00
  %2592 = select i1 %2589, float %2591, float %2585
  %2593 = fmul fast float %2592, %2573
  br label %2594

; <label>:2594                                    ; preds = %2578, %2572
  %2595 = phi float [ %2593, %2578 ], [ %2573, %2572 ]
  %2596 = fcmp fast ult float %2595, 0x3F70101020000000
  br i1 %2596, label %3139, label %2597

; <label>:2597                                    ; preds = %2594
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 16
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %2800, label %2602

; <label>:2602                                    ; preds = %2597
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = add i32 %33, 388
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = add i32 %2607, 0
  %2609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2609, %dx.types.Handle %74, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2611 = extractvalue %dx.types.ResRet.f32 %2610, 0
  %2612 = extractvalue %dx.types.ResRet.f32 %2610, 1
  %2613 = extractvalue %dx.types.ResRet.f32 %2610, 2
  %2614 = extractvalue %dx.types.ResRet.f32 %2610, 3
  %2615 = and i32 %2604, 255
  %2616 = uitofp i32 %2615 to float
  %2617 = lshr i32 %2604, 8
  %2618 = and i32 %2617, 255
  %2619 = uitofp i32 %2618 to float
  %2620 = fmul fast float %2614, %2616
  %2621 = fadd fast float %2620, %2619
  %2622 = fmul fast float %2621, 0x3F70101000000000
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 512
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2635, label %2627

; <label>:2627                                    ; preds = %2602
  %2628 = add i32 %33, 468
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = add i32 %2630, 0
  %2632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2632, %dx.types.Handle %75, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  br label %2635

; <label>:2635                                    ; preds = %2627, %2602
  %2636 = phi float [ %2634, %2627 ], [ 1.000000e+00, %2602 ]
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 33554432
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2747, label %2641

; <label>:2641                                    ; preds = %2635
  %2642 = add i32 %33, 272
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 65535
  %2646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2645)  ; LegacyF16ToF32(value)
  %2647 = lshr i32 %2644, 16
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = add i32 %33, 276
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 65535
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = lshr i32 %2655, 24
  %2657 = uitofp i32 %2656 to float
  %2658 = fmul fast float %2657, 0x3F70101020000000
  %2659 = and i32 %2655, 255
  %2660 = uitofp i32 %2659 to float
  %2661 = fmul fast float %2660, 0x3F70101020000000
  %2662 = lshr i32 %2655, 8
  %2663 = and i32 %2662, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = lshr i32 %2655, 16
  %2667 = and i32 %2666, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = add i32 %33, 268
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = lshr i32 %2672, 24
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101020000000
  %2676 = and i32 %2672, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = lshr i32 %2672, 8
  %2680 = and i32 %2679, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = lshr i32 %2672, 16
  %2684 = and i32 %2683, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = bitcast float %2611 to i32
  %2688 = ashr i32 %2687, 1
  %2689 = sub nsw i32 1597463174, %2688
  %2690 = bitcast i32 %2689 to float
  %2691 = fmul fast float %2611, 5.000000e-01
  %2692 = fmul fast float %2690, %2690
  %2693 = fmul fast float %2692, %2691
  %2694 = fsub fast float 1.500000e+00, %2693
  %2695 = fmul fast float %2690, %2611
  %2696 = fmul fast float %2695, %2694
  %2697 = bitcast float %2612 to i32
  %2698 = ashr i32 %2697, 1
  %2699 = sub nsw i32 1597463174, %2698
  %2700 = bitcast i32 %2699 to float
  %2701 = fmul fast float %2612, 5.000000e-01
  %2702 = fmul fast float %2700, %2700
  %2703 = fmul fast float %2702, %2701
  %2704 = fsub fast float 1.500000e+00, %2703
  %2705 = fmul fast float %2700, %2612
  %2706 = fmul fast float %2705, %2704
  %2707 = bitcast float %2613 to i32
  %2708 = ashr i32 %2707, 1
  %2709 = sub nsw i32 1597463174, %2708
  %2710 = bitcast i32 %2709 to float
  %2711 = fmul fast float %2613, 5.000000e-01
  %2712 = fmul fast float %2710, %2710
  %2713 = fmul fast float %2712, %2711
  %2714 = fsub fast float 1.500000e+00, %2713
  %2715 = fmul fast float %2710, %2613
  %2716 = fmul fast float %2715, %2714
  %2717 = fsub fast float %2696, %2678
  %2718 = fsub fast float %2706, %2682
  %2719 = fsub fast float %2716, %2686
  %2720 = fmul fast float %2717, %2646
  %2721 = fmul fast float %2718, %2648
  %2722 = fmul fast float %2719, %2653
  %2723 = fadd fast float %2720, %2661
  %2724 = fadd fast float %2721, %2665
  %2725 = fadd fast float %2722, %2669
  %2726 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2727 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  %2728 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2729 = fmul fast float %2726, %2726
  %2730 = fmul fast float %2727, %2727
  %2731 = fmul fast float %2728, %2728
  %2732 = fsub fast float %2729, %2611
  %2733 = fsub fast float %2730, %2612
  %2734 = fsub fast float %2731, %2613
  %2735 = fmul fast float %2732, %2636
  %2736 = fmul fast float %2733, %2636
  %2737 = fmul fast float %2734, %2636
  %2738 = fadd fast float %2735, %2611
  %2739 = fadd fast float %2736, %2612
  %2740 = fadd fast float %2737, %2613
  %2741 = fadd fast float %2658, %2622
  %2742 = fsub fast float %2741, %2675
  %2743 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2744 = fsub fast float %2743, %2622
  %2745 = fmul fast float %2744, %2636
  %2746 = fadd fast float %2745, %2622
  br label %2800

; <label>:2747                                    ; preds = %2635
  %2748 = and i32 %2638, 134217728
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2784, label %2750

; <label>:2750                                    ; preds = %2747
  %2751 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2752 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2753 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2754 = fadd fast float %2751, -5.000000e-01
  %2755 = fadd fast float %2752, -5.000000e-01
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fmul fast float %2754, %2636
  %2758 = fmul fast float %2755, %2636
  %2759 = fmul fast float %2756, %2636
  %2760 = fadd fast float %2757, 5.000000e-01
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = call float @dx.op.unary.f32(i32 24, float %2611)  ; Sqrt(value)
  %2764 = call float @dx.op.unary.f32(i32 24, float %2612)  ; Sqrt(value)
  %2765 = call float @dx.op.unary.f32(i32 24, float %2613)  ; Sqrt(value)
  %2766 = fmul fast float %2760, 2.000000e+00
  %2767 = fsub fast float 1.000000e+00, %2766
  %2768 = fmul fast float %2767, %2763
  %2769 = fadd fast float %2768, %2766
  %2770 = fmul fast float %2769, %2763
  %2771 = fmul fast float %2761, 2.000000e+00
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2772, %2764
  %2774 = fadd fast float %2773, %2771
  %2775 = fmul fast float %2774, %2764
  %2776 = fmul fast float %2762, 2.000000e+00
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2777, %2765
  %2779 = fadd fast float %2778, %2776
  %2780 = fmul fast float %2779, %2765
  %2781 = fmul fast float %2770, %2770
  %2782 = fmul fast float %2775, %2775
  %2783 = fmul fast float %2780, %2780
  br label %2800

; <label>:2784                                    ; preds = %2747
  %2785 = fmul fast float %370, %370
  %2786 = fmul fast float %374, %374
  %2787 = fmul fast float %378, %378
  %2788 = fadd fast float %2785, -1.000000e+00
  %2789 = fadd fast float %2786, -1.000000e+00
  %2790 = fadd fast float %2787, -1.000000e+00
  %2791 = fmul fast float %2636, %2788
  %2792 = fmul fast float %2636, %2789
  %2793 = fmul fast float %2636, %2790
  %2794 = fadd fast float %2791, 1.000000e+00
  %2795 = fadd fast float %2792, 1.000000e+00
  %2796 = fadd fast float %2793, 1.000000e+00
  %2797 = fmul fast float %2794, %2611
  %2798 = fmul fast float %2795, %2612
  %2799 = fmul fast float %2796, %2613
  br label %2800

; <label>:2800                                    ; preds = %2784, %2750, %2641, %2597
  %2801 = phi float [ %2746, %2641 ], [ %2622, %2750 ], [ %2622, %2784 ], [ 0x3FA23C0BE0000000, %2597 ]
  %2802 = phi float [ %2738, %2641 ], [ %2781, %2750 ], [ %2797, %2784 ], [ 1.000000e+00, %2597 ]
  %2803 = phi float [ %2739, %2641 ], [ %2782, %2750 ], [ %2798, %2784 ], [ 1.000000e+00, %2597 ]
  %2804 = phi float [ %2740, %2641 ], [ %2783, %2750 ], [ %2799, %2784 ], [ 1.000000e+00, %2597 ]
  %2805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.i32 %2805, 1
  %2807 = and i32 %2806, 1
  %2808 = icmp ne i32 %2807, 0
  %2809 = add i32 %33, 356
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = and i32 %2811, 32
  %2813 = icmp ne i32 %2812, 0
  %2814 = and i1 %2808, %2813
  %2815 = select i1 %2814, float 1.000000e+00, float %2802
  %2816 = select i1 %2814, float 0x3FD3333340000000, float %2803
  %2817 = select i1 %2814, float 0x3FD3333340000000, float %2804
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 32
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2894, label %2822

; <label>:2822                                    ; preds = %2800
  %2823 = add i32 %33, 140
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = add i32 %33, 404
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = add i32 %2828, 0
  %2830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2830, %dx.types.Handle %74, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.ResRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.ResRet.f32 %2831, 2
  %2835 = extractvalue %dx.types.ResRet.f32 %2831, 3
  %2836 = and i32 %2825, 255
  %2837 = uitofp i32 %2836 to float
  %2838 = lshr i32 %2825, 8
  %2839 = and i32 %2838, 255
  %2840 = uitofp i32 %2839 to float
  %2841 = lshr i32 %2825, 16
  %2842 = and i32 %2841, 255
  %2843 = uitofp i32 %2842 to float
  %2844 = fmul fast float %2843, 0x3F70101000000000
  %2845 = fmul fast float %2832, %2837
  %2846 = fadd fast float %2845, %2840
  %2847 = fmul fast float %2846, 0x3F70101000000000
  %2848 = fadd fast float %2833, -5.000000e-01
  %2849 = fadd fast float %2835, -5.000000e-01
  %2850 = fmul fast float %2848, %2844
  %2851 = fmul fast float %2849, %2844
  %2852 = fadd fast float %2850, 5.000000e-01
  %2853 = fadd fast float %2851, 5.000000e-01
  %2854 = fmul fast float %2852, 2.000000e+00
  %2855 = fadd fast float %2854, -1.000000e+00
  %2856 = fmul fast float %2853, 2.000000e+00
  %2857 = fadd fast float %2856, -1.000000e+00
  %2858 = fadd fast float %2855, %2857
  %2859 = fmul fast float %2858, 5.000000e-01
  %2860 = fsub fast float %2855, %2857
  %2861 = fmul fast float %2860, 5.000000e-01
  %2862 = call float @dx.op.unary.f32(i32 6, float %2859)  ; FAbs(value)
  %2863 = fsub fast float 1.000000e+00, %2862
  %2864 = call float @dx.op.unary.f32(i32 6, float %2861)  ; FAbs(value)
  %2865 = fsub fast float %2863, %2864
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2859, float %2861, float %2865, float %2859, float %2861, float %2865)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = call float @dx.op.unary.f32(i32 25, float %2866)  ; Rsqrt(value)
  %2868 = fmul fast float %2859, %2867
  %2869 = fmul fast float %2861, %2867
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 67108864
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2890, label %2874

; <label>:2874                                    ; preds = %2822
  %2875 = add i32 %33, 328
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 65535
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 65535
  %2883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2882)  ; LegacyF16ToF32(value)
  %2884 = lshr i32 %2877, 16
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = fsub fast float %2847, %2885
  %2887 = fmul fast float %2886, %2879
  %2888 = fadd fast float %2887, %2883
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  br label %2890

; <label>:2890                                    ; preds = %2874, %2822
  %2891 = phi float [ %2889, %2874 ], [ %2847, %2822 ]
  %2892 = call float @dx.op.dot2.f32(i32 54, float %2868, float %2869, float %2426, float %2427)  ; Dot2(ax,ay,bx,by)
  %2893 = call float @dx.op.dot2.f32(i32 54, float %2868, float %2869, float %2428, float %2429)  ; Dot2(ax,ay,bx,by)
  br label %2894

; <label>:2894                                    ; preds = %2890, %2800
  %2895 = phi float [ %2891, %2890 ], [ 0x3FD6666660000000, %2800 ]
  %2896 = phi float [ %2892, %2890 ], [ 0.000000e+00, %2800 ]
  %2897 = phi float [ %2893, %2890 ], [ 0.000000e+00, %2800 ]
  %2898 = phi float [ %2834, %2890 ], [ 1.000000e+00, %2800 ]
  %2899 = add i32 %33, 208
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = lshr i32 %2901, 22
  %2903 = shl nuw nsw i32 %2902, 5
  %2904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2903)  ; LegacyF16ToF32(value)
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 64
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %2942, label %2909

; <label>:2909                                    ; preds = %2894
  %2910 = add i32 %33, 420
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = add i32 %2912, 0
  %2914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 131072
  %2918 = icmp eq i32 %2917, 0
  %2919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2914, %dx.types.Handle %74, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = extractvalue %dx.types.ResRet.f32 %2919, 1
  %2922 = extractvalue %dx.types.ResRet.f32 %2919, 2
  %2923 = fmul fast float %2920, %358
  %2924 = fmul fast float %2921, %361
  %2925 = fmul fast float %2922, %364
  br i1 %2918, label %2932, label %2926

; <label>:2926                                    ; preds = %2909
  %2927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.f32 %2927, 0
  %2929 = fmul fast float %2928, %2923
  %2930 = fmul fast float %2928, %2924
  %2931 = fmul fast float %2928, %2925
  br label %2932

; <label>:2932                                    ; preds = %2926, %2909
  %2933 = phi float [ %2929, %2926 ], [ %2923, %2909 ]
  %2934 = phi float [ %2930, %2926 ], [ %2924, %2909 ]
  %2935 = phi float [ %2931, %2926 ], [ %2925, %2909 ]
  %2936 = fmul fast float %2933, %2904
  %2937 = select i1 %215, float %2936, float %2933
  %2938 = call float @dx.op.dot3.f32(i32 55, float %2937, float %2934, float %2935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2939 = select i1 %215, float 0.000000e+00, float %2933
  %2940 = select i1 %215, float %2938, float %2934
  %2941 = select i1 %215, float 0.000000e+00, float %2935
  br label %2942

; <label>:2942                                    ; preds = %2932, %2894
  %2943 = phi float [ %2939, %2932 ], [ 0.000000e+00, %2894 ]
  %2944 = phi float [ %2940, %2932 ], [ 0.000000e+00, %2894 ]
  %2945 = phi float [ %2941, %2932 ], [ 0.000000e+00, %2894 ]
  %2946 = add i32 %33, 144
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 255
  %2950 = uitofp i32 %2949 to float
  %2951 = lshr i32 %2948, 8
  %2952 = and i32 %2951, 255
  %2953 = uitofp i32 %2952 to float
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2815, float %2816, float %2817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = fmul fast float %2953, %2954
  %2956 = fadd fast float %2955, %2950
  %2957 = fmul fast float %2956, 0x3F70101020000000
  %2958 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  br i1 %2414, label %2959, label %2967

; <label>:2959                                    ; preds = %2942
  %2960 = fsub fast float 1.000000e+00, %2595
  %2961 = fmul fast float %2960, %2403
  %2962 = fmul fast float %2960, %2404
  %2963 = fmul fast float %2960, %2405
  %2964 = fmul fast float %2960, %2406
  %2965 = fmul fast float %2960, %2407
  %2966 = fmul fast float %2960, %2408
  br label %2967

; <label>:2967                                    ; preds = %2959, %2942
  %2968 = phi float [ %2961, %2959 ], [ %2403, %2942 ]
  %2969 = phi float [ %2962, %2959 ], [ %2404, %2942 ]
  %2970 = phi float [ %2963, %2959 ], [ %2405, %2942 ]
  %2971 = phi float [ %2964, %2959 ], [ %2406, %2942 ]
  %2972 = phi float [ %2965, %2959 ], [ %2407, %2942 ]
  %2973 = phi float [ %2966, %2959 ], [ %2408, %2942 ]
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 3
  %2977 = icmp eq i32 %2976, 3
  br i1 %2977, label %3056, label %2978

; <label>:2978                                    ; preds = %2967
  %2979 = and i32 %2975, 16
  %2980 = icmp ne i32 %2979, 0
  %2981 = select i1 %2980, float %2595, float 0.000000e+00
  %2982 = icmp eq i32 %2976, 0
  br i1 %2982, label %2983, label %3011

; <label>:2983                                    ; preds = %2978
  %2984 = and i32 %2975, 64
  %2985 = icmp ne i32 %2984, 0
  %2986 = select i1 %2985, float %2595, float 0.000000e+00
  %2987 = fsub fast float %2815, %2968
  %2988 = fsub fast float %2816, %2969
  %2989 = fsub fast float %2817, %2970
  %2990 = fmul fast float %2981, %2987
  %2991 = fmul fast float %2981, %2988
  %2992 = fmul fast float %2981, %2989
  %2993 = fadd fast float %2990, %2968
  %2994 = fadd fast float %2991, %2969
  %2995 = fadd fast float %2992, %2970
  %2996 = fsub fast float %2801, %2409
  %2997 = fmul fast float %2981, %2996
  %2998 = fadd fast float %2997, %2409
  %2999 = fsub fast float %2943, %2971
  %3000 = fsub fast float %2944, %2972
  %3001 = fsub fast float %2945, %2973
  %3002 = fmul fast float %2986, %2999
  %3003 = fmul fast float %2986, %3000
  %3004 = fmul fast float %2986, %3001
  %3005 = fadd fast float %3002, %2971
  %3006 = fadd fast float %3003, %2972
  %3007 = fadd fast float %3004, %2973
  %3008 = fsub fast float %2958, %2412
  %3009 = fmul fast float %2981, %3008
  %3010 = fadd fast float %3009, %2412
  br label %3056

; <label>:3011                                    ; preds = %2978
  %3012 = icmp eq i32 %2976, 1
  br i1 %3012, label %3013, label %3026

; <label>:3013                                    ; preds = %3011
  %3014 = fadd fast float %2815, -1.000000e+00
  %3015 = fadd fast float %2816, -1.000000e+00
  %3016 = fadd fast float %2817, -1.000000e+00
  %3017 = fmul fast float %2981, %3014
  %3018 = fmul fast float %2981, %3015
  %3019 = fmul fast float %2981, %3016
  %3020 = fadd fast float %3017, 1.000000e+00
  %3021 = fadd fast float %3018, 1.000000e+00
  %3022 = fadd fast float %3019, 1.000000e+00
  %3023 = fmul fast float %3020, %2968
  %3024 = fmul fast float %3021, %2969
  %3025 = fmul fast float %3022, %2970
  br label %3056

; <label>:3026                                    ; preds = %3011
  %3027 = icmp eq i32 %2976, 2
  br i1 %3027, label %3028, label %3056

; <label>:3028                                    ; preds = %3026
  %3029 = call float @dx.op.unary.f32(i32 24, float %2815)  ; Sqrt(value)
  %3030 = call float @dx.op.unary.f32(i32 24, float %2816)  ; Sqrt(value)
  %3031 = call float @dx.op.unary.f32(i32 24, float %2817)  ; Sqrt(value)
  %3032 = fadd fast float %3029, -5.000000e-01
  %3033 = fadd fast float %3030, -5.000000e-01
  %3034 = fadd fast float %3031, -5.000000e-01
  %3035 = fmul fast float %3032, %2981
  %3036 = fmul fast float %3033, %2981
  %3037 = fmul fast float %3034, %2981
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fmul fast float %3038, 2.000000e+00
  %3042 = fsub fast float 1.000000e+00, %3041
  %3043 = fmul fast float %3042, %2968
  %3044 = fadd fast float %3043, %3041
  %3045 = fmul fast float %3044, %2968
  %3046 = fmul fast float %3039, 2.000000e+00
  %3047 = fsub fast float 1.000000e+00, %3046
  %3048 = fmul fast float %3047, %2969
  %3049 = fadd fast float %3048, %3046
  %3050 = fmul fast float %3049, %2969
  %3051 = fmul fast float %3040, 2.000000e+00
  %3052 = fsub fast float 1.000000e+00, %3051
  %3053 = fmul fast float %3052, %2970
  %3054 = fadd fast float %3053, %3051
  %3055 = fmul fast float %3054, %2970
  br label %3056

; <label>:3056                                    ; preds = %3028, %3026, %3013, %2983, %2967
  %3057 = phi float [ %2968, %2967 ], [ %3045, %3028 ], [ %2968, %3026 ], [ %3023, %3013 ], [ %2993, %2983 ]
  %3058 = phi float [ %2969, %2967 ], [ %3050, %3028 ], [ %2969, %3026 ], [ %3024, %3013 ], [ %2994, %2983 ]
  %3059 = phi float [ %2970, %2967 ], [ %3055, %3028 ], [ %2970, %3026 ], [ %3025, %3013 ], [ %2995, %2983 ]
  %3060 = phi float [ %2971, %2967 ], [ %2971, %3028 ], [ %2971, %3026 ], [ %2971, %3013 ], [ %3005, %2983 ]
  %3061 = phi float [ %2972, %2967 ], [ %2972, %3028 ], [ %2972, %3026 ], [ %2972, %3013 ], [ %3006, %2983 ]
  %3062 = phi float [ %2973, %2967 ], [ %2973, %3028 ], [ %2973, %3026 ], [ %2973, %3013 ], [ %3007, %2983 ]
  %3063 = phi float [ %2409, %2967 ], [ %2409, %3028 ], [ %2409, %3026 ], [ %2409, %3013 ], [ %2998, %2983 ]
  %3064 = phi float [ %2412, %2967 ], [ %2412, %3028 ], [ %2412, %3026 ], [ %2412, %3013 ], [ %3010, %2983 ]
  %3065 = and i32 %2975, 12
  %3066 = icmp eq i32 %3065, 12
  br i1 %3066, label %3139, label %3067

; <label>:3067                                    ; preds = %3056
  %3068 = and i32 %2975, 2097184
  %3069 = icmp eq i32 %3068, 2097184
  %3070 = select i1 %3069, float %2595, float 0.000000e+00
  %3071 = and i32 %2975, 4194336
  %3072 = icmp eq i32 %3071, 4194336
  %3073 = select i1 %3072, float %2595, float 0.000000e+00
  %3074 = and i32 %2975, 8388640
  %3075 = icmp eq i32 %3074, 8388640
  %3076 = select i1 %3075, float %2595, float 0.000000e+00
  %3077 = icmp eq i32 %3065, 0
  br i1 %3077, label %3078, label %3091

; <label>:3078                                    ; preds = %3067
  %3079 = fsub fast float %2896, %2401
  %3080 = fsub fast float %2897, %2402
  %3081 = fmul fast float %3070, %3079
  %3082 = fmul fast float %3070, %3080
  %3083 = fadd fast float %3081, %2401
  %3084 = fadd fast float %3082, %2402
  %3085 = fsub fast float %2898, %2411
  %3086 = fmul fast float %3073, %3085
  %3087 = fadd fast float %3086, %2411
  %3088 = fsub fast float %2895, %2410
  %3089 = fmul fast float %3076, %3088
  %3090 = fadd fast float %3089, %2410
  br label %3139

; <label>:3091                                    ; preds = %3067
  %3092 = icmp eq i32 %3065, 4
  br i1 %3092, label %3093, label %3125

; <label>:3093                                    ; preds = %3091
  %3094 = fmul fast float %3070, %2896
  %3095 = fmul fast float %3070, %2897
  %3096 = fadd fast float %3094, %2401
  %3097 = fadd fast float %3095, %2402
  %3098 = call float @dx.op.binary.f32(i32 36, float %2411, float %2898)  ; FMin(a,b)
  %3099 = fsub fast float %3098, %2411
  %3100 = fmul fast float %3099, %3073
  %3101 = fadd fast float %3100, %2411
  %3102 = fadd fast float %2895, %2410
  %3103 = fmul fast float %3102, 0x3FF337FAE0000000
  %3104 = fmul fast float %2410, %2410
  %3105 = fmul fast float %2895, %2895
  %3106 = fadd fast float %3105, %3104
  %3107 = fmul fast float %3106, 0x3FE5152B00000000
  %3108 = fmul fast float %2410, 0xBFCC1F85E0000000
  %3109 = fmul fast float %3108, %2895
  %3110 = fadd fast float %3109, 0xBFE1363700000000
  %3111 = fadd fast float %3110, %3103
  %3112 = fsub fast float %3111, %3107
  %3113 = fmul fast float %3102, 0x3FBA6F0D00000000
  %3114 = fmul fast float %3106, 0x3FD0432880000000
  %3115 = fmul fast float %2410, 0xBFEF110800000000
  %3116 = fmul fast float %3115, %2895
  %3117 = fadd fast float %3116, 1.000000e+00
  %3118 = fsub fast float %3117, %3113
  %3119 = fadd fast float %3118, %3114
  %3120 = fdiv fast float %3112, %3119
  %3121 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  %3122 = fsub fast float %3121, %2410
  %3123 = fmul fast float %3122, %3076
  %3124 = fadd fast float %3123, %2410
  br label %3139

; <label>:3125                                    ; preds = %3091
  %3126 = icmp eq i32 %3065, 8
  br i1 %3126, label %3127, label %3139

; <label>:3127                                    ; preds = %3125
  %3128 = fmul fast float %3070, %2896
  %3129 = fmul fast float %3070, %2897
  %3130 = fadd fast float %3128, %2401
  %3131 = fadd fast float %3129, %2402
  %3132 = call float @dx.op.binary.f32(i32 36, float %2411, float %2898)  ; FMin(a,b)
  %3133 = fsub fast float %3132, %2411
  %3134 = fmul fast float %3133, %3073
  %3135 = fadd fast float %3134, %2411
  %3136 = fsub fast float %2895, %2410
  %3137 = fmul fast float %3076, %3136
  %3138 = fadd fast float %3137, %2410
  br label %3139

; <label>:3139                                    ; preds = %3127, %3125, %3093, %3078, %3056, %2594, %2413, %2400
  %3140 = phi float [ %2401, %3056 ], [ %2401, %2594 ], [ %2401, %2400 ], [ %2401, %2413 ], [ %3083, %3078 ], [ %3096, %3093 ], [ %2401, %3125 ], [ %3130, %3127 ]
  %3141 = phi float [ %2402, %3056 ], [ %2402, %2594 ], [ %2402, %2400 ], [ %2402, %2413 ], [ %3084, %3078 ], [ %3097, %3093 ], [ %2402, %3125 ], [ %3131, %3127 ]
  %3142 = phi float [ %3057, %3056 ], [ %2403, %2594 ], [ %2403, %2400 ], [ %2403, %2413 ], [ %3057, %3078 ], [ %3057, %3093 ], [ %3057, %3125 ], [ %3057, %3127 ]
  %3143 = phi float [ %3058, %3056 ], [ %2404, %2594 ], [ %2404, %2400 ], [ %2404, %2413 ], [ %3058, %3078 ], [ %3058, %3093 ], [ %3058, %3125 ], [ %3058, %3127 ]
  %3144 = phi float [ %3059, %3056 ], [ %2405, %2594 ], [ %2405, %2400 ], [ %2405, %2413 ], [ %3059, %3078 ], [ %3059, %3093 ], [ %3059, %3125 ], [ %3059, %3127 ]
  %3145 = phi float [ %3060, %3056 ], [ %2406, %2594 ], [ %2406, %2400 ], [ %2406, %2413 ], [ %3060, %3078 ], [ %3060, %3093 ], [ %3060, %3125 ], [ %3060, %3127 ]
  %3146 = phi float [ %3061, %3056 ], [ %2407, %2594 ], [ %2407, %2400 ], [ %2407, %2413 ], [ %3061, %3078 ], [ %3061, %3093 ], [ %3061, %3125 ], [ %3061, %3127 ]
  %3147 = phi float [ %3062, %3056 ], [ %2408, %2594 ], [ %2408, %2400 ], [ %2408, %2413 ], [ %3062, %3078 ], [ %3062, %3093 ], [ %3062, %3125 ], [ %3062, %3127 ]
  %3148 = phi float [ %3063, %3056 ], [ %2409, %2594 ], [ %2409, %2400 ], [ %2409, %2413 ], [ %3063, %3078 ], [ %3063, %3093 ], [ %3063, %3125 ], [ %3063, %3127 ]
  %3149 = phi float [ %2410, %3056 ], [ %2410, %2594 ], [ %2410, %2400 ], [ %2410, %2413 ], [ %3090, %3078 ], [ %3124, %3093 ], [ %2410, %3125 ], [ %3138, %3127 ]
  %3150 = phi float [ %2411, %3056 ], [ %2411, %2594 ], [ %2411, %2400 ], [ %2411, %2413 ], [ %3087, %3078 ], [ %3101, %3093 ], [ %2411, %3125 ], [ %3135, %3127 ]
  %3151 = phi float [ %3064, %3056 ], [ %2412, %2594 ], [ %2412, %2400 ], [ %2412, %2413 ], [ %3064, %3078 ], [ %3064, %3093 ], [ %3064, %3125 ], [ %3064, %3127 ]
  %3152 = add i32 %33, 360
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = bitcast i32 %3154 to float
  %3156 = fcmp fast oge float %3155, 0.000000e+00
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 0
  %3159 = select i1 %3156, float %3155, float %3158
  %3160 = fadd fast float %3159, %178
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 0
  %3163 = and i32 %171, 65535
  %3164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3163)  ; LegacyF16ToF32(value)
  %3165 = lshr i32 %171, 16
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = and i32 %172, 65535
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = fmul fast float %3164, %3142
  %3170 = fmul fast float %3166, %3143
  %3171 = fmul fast float %3168, %3144
  %3172 = shl i32 %173, 4
  %3173 = and i32 %3172, 32752
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = lshr i32 %173, 7
  %3176 = and i32 %3175, 32752
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = lshr i32 %173, 22
  %3179 = shl nuw nsw i32 %3178, 5
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = and i32 %174, 65535
  %3182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3181)  ; LegacyF16ToF32(value)
  %3183 = fmul fast float %3162, %3145
  %3184 = fmul fast float %3183, %3174
  %3185 = fmul fast float %3184, %3182
  %3186 = fmul fast float %3162, %3146
  %3187 = fmul fast float %3186, %3177
  %3188 = fmul fast float %3187, %3182
  %3189 = fmul fast float %3162, %3147
  %3190 = fmul fast float %3189, %3180
  %3191 = fmul fast float %3190, %3182
  %3192 = call float @dx.op.dot2.f32(i32 54, float %3140, float %3141, float %3140, float %3141)  ; Dot2(ax,ay,bx,by)
  %3193 = fmul fast float %3192, 0x3FE3333340000000
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = call float @dx.op.dot3.f32(i32 55, float %3140, float %3141, float %3194, float %3140, float %3141, float %3194)  ; Dot3(ax,ay,az,bx,by,bz)
  %3196 = call float @dx.op.unary.f32(i32 25, float %3195)  ; Rsqrt(value)
  %3197 = fmul fast float %3196, %3140
  %3198 = fmul fast float %3196, %3141
  %3199 = fmul fast float %3194, %3196
  %3200 = fmul fast float %3199, %85
  %3201 = fmul fast float %3199, %86
  %3202 = fmul fast float %3199, %87
  %3203 = fmul fast float %3197, %59
  %3204 = fmul fast float %3197, %60
  %3205 = fmul fast float %3197, %61
  %3206 = fadd fast float %3200, %3203
  %3207 = fadd fast float %3201, %3204
  %3208 = fadd fast float %3202, %3205
  %3209 = fmul fast float %97, %3198
  %3210 = fmul fast float %98, %3198
  %3211 = fmul fast float %99, %3198
  %3212 = fadd fast float %3206, %3209
  %3213 = fadd fast float %3207, %3210
  %3214 = fadd fast float %3208, %3211
  %3215 = call float @dx.op.dot3.f32(i32 55, float %3212, float %3213, float %3214, float %3212, float %3213, float %3214)  ; Dot3(ax,ay,az,bx,by,bz)
  %3216 = call float @dx.op.unary.f32(i32 25, float %3215)  ; Rsqrt(value)
  %3217 = fmul fast float %3212, %3216
  %3218 = fmul fast float %3213, %3216
  %3219 = fmul fast float %3214, %3216
  %3220 = icmp eq i32 %35, 65535
  br i1 %3220, label %3739, label %3221

; <label>:3221                                    ; preds = %3139
  %3222 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3223 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3224 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3225 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3226 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3227 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3228 = fadd fast float %3222, %36
  %3229 = fadd fast float %3223, %37
  %3230 = fadd fast float %3224, %38
  %3231 = fadd fast float %3225, %36
  %3232 = fadd fast float %3226, %37
  %3233 = fadd fast float %3227, %38
  %3234 = mul i32 %35, 48
  %3235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.ResRet.f32 %3235, 2
  %3239 = add i32 %3234, 16
  %3240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = extractvalue %dx.types.ResRet.f32 %3240, 1
  %3243 = extractvalue %dx.types.ResRet.f32 %3240, 2
  %3244 = add i32 %3234, 32
  %3245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.f32 %3245, 0
  %3247 = extractvalue %dx.types.ResRet.f32 %3245, 1
  %3248 = extractvalue %dx.types.ResRet.f32 %3245, 2
  %3249 = extractvalue %dx.types.ResRet.f32 %3245, 3
  %3250 = bitcast float %3249 to i32
  %3251 = fmul fast float %3236, %36
  %3252 = fmul fast float %3237, %37
  %3253 = fmul fast float %3238, %38
  %3254 = fsub fast float %3251, %3241
  %3255 = fsub fast float %3252, %3242
  %3256 = fsub fast float %3253, %3243
  %3257 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3258 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3259 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  %3260 = fmul fast float %3257, %3246
  %3261 = fmul fast float %3258, %3247
  %3262 = fmul fast float %3259, %3248
  %3263 = fadd fast float %3246, -1.000000e+00
  %3264 = fadd fast float %3247, -1.000000e+00
  %3265 = fadd fast float %3248, -1.000000e+00
  %3266 = call float @dx.op.unary.f32(i32 27, float %3260)  ; Round_ni(value)
  %3267 = call float @dx.op.unary.f32(i32 27, float %3261)  ; Round_ni(value)
  %3268 = call float @dx.op.unary.f32(i32 27, float %3262)  ; Round_ni(value)
  %3269 = call float @dx.op.binary.f32(i32 36, float %3266, float %3263)  ; FMin(a,b)
  %3270 = call float @dx.op.binary.f32(i32 36, float %3267, float %3264)  ; FMin(a,b)
  %3271 = call float @dx.op.binary.f32(i32 36, float %3268, float %3265)  ; FMin(a,b)
  %3272 = fmul fast float %3271, %3247
  %3273 = fadd fast float %3272, %3270
  %3274 = fmul fast float %3273, %3246
  %3275 = fadd fast float %3274, %3269
  %3276 = fptosi float %3275 to i32
  %3277 = add nsw i32 %3276, %3250
  %3278 = shl nsw i32 %3277, 2
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = lshr i32 %3280, 16
  %3282 = icmp eq i32 %3281, 0
  br i1 %3282, label %3707, label %3283

; <label>:3283                                    ; preds = %3221
  br label %3284

; <label>:3284                                    ; preds = %3406, %3283
  %3285 = phi i32 [ %3308, %3406 ], [ %3281, %3283 ]
  %3286 = phi float [ %3407, %3406 ], [ 0.000000e+00, %3283 ]
  %3287 = phi float [ %3408, %3406 ], [ %931, %3283 ]
  %3288 = phi float [ %3409, %3406 ], [ %3160, %3283 ]
  %3289 = phi float [ %3410, %3406 ], [ %3151, %3283 ]
  %3290 = phi float [ %3411, %3406 ], [ 0.000000e+00, %3283 ]
  %3291 = phi float [ %3412, %3406 ], [ 0.000000e+00, %3283 ]
  %3292 = phi float [ %3413, %3406 ], [ %3185, %3283 ]
  %3293 = phi float [ %3414, %3406 ], [ %3188, %3283 ]
  %3294 = phi float [ %3415, %3406 ], [ %3191, %3283 ]
  %3295 = phi float [ %3416, %3406 ], [ %3217, %3283 ]
  %3296 = phi float [ %3417, %3406 ], [ %3218, %3283 ]
  %3297 = phi float [ %3418, %3406 ], [ %3219, %3283 ]
  %3298 = phi float [ %3419, %3406 ], [ %3150, %3283 ]
  %3299 = phi float [ %3420, %3406 ], [ %3149, %3283 ]
  %3300 = phi float [ %3421, %3406 ], [ 0.000000e+00, %3283 ]
  %3301 = phi float [ %3422, %3406 ], [ %3148, %3283 ]
  %3302 = phi float [ %3423, %3406 ], [ %3169, %3283 ]
  %3303 = phi float [ %3424, %3406 ], [ %3170, %3283 ]
  %3304 = phi float [ %3425, %3406 ], [ %3171, %3283 ]
  %3305 = shl nuw nsw i32 %3285, 2
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = lshr i32 %3307, 16
  %3309 = shl i32 %3307, 8
  %3310 = and i32 %3309, 16776960
  %3311 = or i32 %3310, 48
  %3312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.ResRet.f32 %3312, 2
  %3316 = or i32 %3310, 64
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = extractvalue %dx.types.ResRet.i32 %3317, 1
  %3320 = or i32 %3310, 80
  %3321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 3
  %3324 = or i32 %3310, 96
  %3325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3329 = extractvalue %dx.types.ResRet.f32 %3325, 3
  %3330 = or i32 %3310, 112
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3333 = or i32 %3310, 128
  %3334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.ResRet.f32 %3334, 1
  %3337 = extractvalue %dx.types.ResRet.f32 %3334, 2
  %3338 = extractvalue %dx.types.ResRet.f32 %3334, 3
  %3339 = or i32 %3310, 144
  %3340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.f32 %3340, 0
  %3342 = extractvalue %dx.types.ResRet.f32 %3340, 1
  %3343 = extractvalue %dx.types.ResRet.f32 %3340, 2
  %3344 = extractvalue %dx.types.ResRet.f32 %3340, 3
  %3345 = or i32 %3310, 160
  %3346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.ResRet.f32 %3346, 2
  %3350 = extractvalue %dx.types.ResRet.f32 %3346, 3
  %3351 = or i32 %3310, 192
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = or i32 %3310, 208
  %3355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3357 = or i32 %3310, 248
  %3358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.f32 %3358, 0
  %3360 = extractvalue %dx.types.ResRet.f32 %3358, 1
  %3361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3365 = extractvalue %dx.types.ResRet.f32 %3361, 3
  %3366 = call float @dx.op.dot4.f32(i32 56, float %3362, float %3363, float %3364, float %3365, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3367 = or i32 %3310, 16
  %3368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.f32 %3368, 0
  %3370 = extractvalue %dx.types.ResRet.f32 %3368, 1
  %3371 = extractvalue %dx.types.ResRet.f32 %3368, 2
  %3372 = extractvalue %dx.types.ResRet.f32 %3368, 3
  %3373 = call float @dx.op.dot4.f32(i32 56, float %3369, float %3370, float %3371, float %3372, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3374 = or i32 %3310, 32
  %3375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = extractvalue %dx.types.ResRet.f32 %3375, 3
  %3380 = call float @dx.op.dot4.f32(i32 56, float %3376, float %3377, float %3378, float %3379, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3381 = call float @dx.op.unary.f32(i32 27, float %3366)  ; Round_ni(value)
  %3382 = call float @dx.op.unary.f32(i32 6, float %3381)  ; FAbs(value)
  %3383 = call float @dx.op.unary.f32(i32 27, float %3373)  ; Round_ni(value)
  %3384 = call float @dx.op.unary.f32(i32 6, float %3383)  ; FAbs(value)
  %3385 = call float @dx.op.unary.f32(i32 6, float %3380)  ; FAbs(value)
  %3386 = call float @dx.op.unary.f32(i32 27, float %3385)  ; Round_ni(value)
  %3387 = fadd fast float %3384, %3382
  %3388 = fadd fast float %3387, %3386
  %3389 = fcmp fast oeq float %3388, 0.000000e+00
  %3390 = call float @dx.op.dot4.f32(i32 56, float %3362, float %3363, float %3364, float %3365, float %3228, float %3229, float %3230, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3391 = call float @dx.op.dot4.f32(i32 56, float %3369, float %3370, float %3371, float %3372, float %3228, float %3229, float %3230, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3392 = call float @dx.op.dot4.f32(i32 56, float %3362, float %3363, float %3364, float %3365, float %3231, float %3232, float %3233, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3393 = call float @dx.op.dot4.f32(i32 56, float %3369, float %3370, float %3371, float %3372, float %3231, float %3232, float %3233, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3394 = fsub fast float %3390, %3366
  %3395 = fsub fast float %3392, %3366
  %3396 = fsub fast float %3391, %3373
  %3397 = fsub fast float %3393, %3373
  %3398 = call float @dx.op.dot3.f32(i32 55, float %3313, float %3314, float %3315, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3400 = extractvalue %dx.types.CBufRet.f32 %3399, 2
  %3401 = fadd fast float %3400, %3398
  %3402 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  %3403 = extractvalue %dx.types.CBufRet.f32 %3399, 0
  %3404 = fcmp fast ogt float %3402, %3403
  %3405 = and i1 %3389, %3404
  br i1 %3405, label %3427, label %3406

; <label>:3406                                    ; preds = %3693, %3510, %3427, %3284
  %3407 = phi float [ %3286, %3427 ], [ %3513, %3510 ], [ %3513, %3693 ], [ %3286, %3284 ]
  %3408 = phi float [ %3287, %3427 ], [ %3287, %3510 ], [ %3668, %3693 ], [ %3287, %3284 ]
  %3409 = phi float [ %3288, %3427 ], [ %3288, %3510 ], [ %3667, %3693 ], [ %3288, %3284 ]
  %3410 = phi float [ %3289, %3427 ], [ %3289, %3510 ], [ %3665, %3693 ], [ %3289, %3284 ]
  %3411 = phi float [ %3290, %3427 ], [ %3290, %3510 ], [ %3637, %3693 ], [ %3290, %3284 ]
  %3412 = phi float [ %3291, %3427 ], [ %3291, %3510 ], [ %3635, %3693 ], [ %3291, %3284 ]
  %3413 = phi float [ %3292, %3427 ], [ %3292, %3510 ], [ %3703, %3693 ], [ %3292, %3284 ]
  %3414 = phi float [ %3293, %3427 ], [ %3293, %3510 ], [ %3704, %3693 ], [ %3293, %3284 ]
  %3415 = phi float [ %3294, %3427 ], [ %3294, %3510 ], [ %3705, %3693 ], [ %3294, %3284 ]
  %3416 = phi float [ %3295, %3427 ], [ %3295, %3510 ], [ %3616, %3693 ], [ %3295, %3284 ]
  %3417 = phi float [ %3296, %3427 ], [ %3296, %3510 ], [ %3617, %3693 ], [ %3296, %3284 ]
  %3418 = phi float [ %3297, %3427 ], [ %3297, %3510 ], [ %3618, %3693 ], [ %3297, %3284 ]
  %3419 = phi float [ %3298, %3427 ], [ %3298, %3510 ], [ %3645, %3693 ], [ %3298, %3284 ]
  %3420 = phi float [ %3299, %3427 ], [ %3299, %3510 ], [ %3642, %3693 ], [ %3299, %3284 ]
  %3421 = phi float [ %3300, %3427 ], [ %3300, %3510 ], [ %3639, %3693 ], [ %3300, %3284 ]
  %3422 = phi float [ %3301, %3427 ], [ %3301, %3510 ], [ %3633, %3693 ], [ %3301, %3284 ]
  %3423 = phi float [ %3302, %3427 ], [ %3302, %3510 ], [ %3628, %3693 ], [ %3302, %3284 ]
  %3424 = phi float [ %3303, %3427 ], [ %3303, %3510 ], [ %3629, %3693 ], [ %3303, %3284 ]
  %3425 = phi float [ %3304, %3427 ], [ %3304, %3510 ], [ %3630, %3693 ], [ %3304, %3284 ]
  %3426 = icmp eq i32 %3308, 0
  br i1 %3426, label %3706, label %3284

; <label>:3427                                    ; preds = %3284
  %3428 = extractvalue %dx.types.ResRet.f32 %3312, 3
  %3429 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3430 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3431 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3432 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3433 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3434 = extractvalue %dx.types.ResRet.i32 %3317, 3
  %3435 = extractvalue %dx.types.ResRet.i32 %3317, 2
  %3436 = bitcast float %3428 to i32
  %3437 = add i32 %3434, 0
  %3438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3437, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3440 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3438, %dx.types.Handle %3439, float %3366, float %3373, float undef, float undef, i32 0, i32 0, i32 undef, float %3394, float %3396, float undef, float %3395, float %3397, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3441 = extractvalue %dx.types.ResRet.f32 %3440, 0
  %3442 = fmul fast float %3441, %3433
  %3443 = fadd fast float %3442, %3432
  %3444 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  %3445 = fmul fast float %3366, %3326
  %3446 = call float @dx.op.tertiary.f32(i32 46, float %3327, float %3373, float %3445)  ; FMad(a,b,c)
  %3447 = fadd fast float %3446, %3431
  %3448 = fmul fast float %3366, %3328
  %3449 = call float @dx.op.tertiary.f32(i32 46, float %3329, float %3373, float %3448)  ; FMad(a,b,c)
  %3450 = fadd fast float %3449, %3430
  %3451 = fmul fast float %3394, %3326
  %3452 = call float @dx.op.tertiary.f32(i32 46, float %3327, float %3396, float %3451)  ; FMad(a,b,c)
  %3453 = fmul fast float %3394, %3328
  %3454 = call float @dx.op.tertiary.f32(i32 46, float %3329, float %3396, float %3453)  ; FMad(a,b,c)
  %3455 = fmul fast float %3395, %3326
  %3456 = call float @dx.op.tertiary.f32(i32 46, float %3327, float %3397, float %3455)  ; FMad(a,b,c)
  %3457 = fmul fast float %3395, %3328
  %3458 = call float @dx.op.tertiary.f32(i32 46, float %3329, float %3397, float %3457)  ; FMad(a,b,c)
  %3459 = add i32 %3435, 0
  %3460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3459, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3461 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3460, %dx.types.Handle %3439, float %3447, float %3450, float undef, float undef, i32 0, i32 0, i32 undef, float %3452, float %3454, float undef, float %3456, float %3458, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = and i32 %3436, 1024
  %3464 = icmp ne i32 %3463, 0
  %3465 = fcmp fast ogt float %3462, 0x3FE0101020000000
  %3466 = uitofp i1 %3465 to float
  %3467 = select i1 %3464, float %3466, float %3462
  %3468 = and i32 %3436, 8192
  %3469 = icmp ne i32 %3468, 0
  %3470 = select i1 %3469, float %3429, float 1.000000e+00
  %3471 = fmul fast float %3366, 2.000000e+00
  %3472 = fadd fast float %3471, -1.000000e+00
  %3473 = call float @dx.op.unary.f32(i32 6, float %3472)  ; FAbs(value)
  %3474 = fmul fast float %3473, %3359
  %3475 = fsub fast float %3474, %3359
  %3476 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3477 = fmul fast float %3373, 2.000000e+00
  %3478 = fadd fast float %3477, -1.000000e+00
  %3479 = call float @dx.op.unary.f32(i32 6, float %3478)  ; FAbs(value)
  %3480 = fmul fast float %3479, %3360
  %3481 = fsub fast float %3480, %3360
  %3482 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  %3483 = fmul fast float %3385, %3322
  %3484 = fsub fast float %3483, %3322
  %3485 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3486 = fmul fast float %3444, %3470
  %3487 = fmul fast float %3486, %3441
  %3488 = fmul fast float %3487, %3476
  %3489 = fmul fast float %3488, %3467
  %3490 = fmul fast float %3489, %3482
  %3491 = fmul fast float %3490, %3485
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 1
  %3494 = extractvalue %dx.types.CBufRet.f32 %3492, 0
  %3495 = fsub fast float %3402, %3494
  %3496 = fmul fast float %3495, %3493
  %3497 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3498 = fmul fast float %3491, %3323
  %3499 = fadd fast float %3491, %3323
  %3500 = fmul fast float %3499, %3332
  %3501 = fsub fast float %3500, %3332
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3503 = and i32 %3436, 128
  %3504 = icmp ne i32 %3503, 0
  %3505 = select i1 %3504, float %3502, float %3498
  %3506 = fmul fast float %3505, %3497
  %3507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3508 = extractvalue %dx.types.CBufRet.f32 %3507, 0
  %3509 = fcmp fast ugt float %3506, %3508
  br i1 %3509, label %3510, label %3406

; <label>:3510                                    ; preds = %3427
  %3511 = select i1 %3469, float %3506, float 0.000000e+00
  %3512 = fadd fast float %3511, %3286
  %3513 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  br i1 %3469, label %3406, label %3514

; <label>:3514                                    ; preds = %3510
  %3515 = and i32 %3436, 4
  %3516 = and i32 %3436, 8
  %3517 = add i32 %3318, 0
  %3518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3517, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3520 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3518, %dx.types.Handle %3519, float %3447, float %3450, float undef, float undef, i32 0, i32 0, i32 undef, float %3452, float %3454, float undef, float %3456, float %3458, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = extractvalue %dx.types.ResRet.f32 %3520, 3
  %3525 = bitcast float %3344 to i32
  %3526 = and i32 %3525, 255
  %3527 = uitofp i32 %3526 to float
  %3528 = lshr i32 %3525, 8
  %3529 = and i32 %3528, 255
  %3530 = uitofp i32 %3529 to float
  %3531 = fmul fast float %3524, %3527
  %3532 = fadd fast float %3531, %3530
  %3533 = fmul fast float %3532, 0x3F70101000000000
  %3534 = add i32 %3319, 0
  %3535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3534, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3536 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3535, %dx.types.Handle %3519, float %3447, float %3450, float undef, float undef, i32 0, i32 0, i32 undef, float %3452, float %3454, float undef, float %3456, float %3458, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 0
  %3538 = extractvalue %dx.types.ResRet.f32 %3536, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3536, 2
  %3540 = extractvalue %dx.types.ResRet.f32 %3536, 3
  %3541 = bitcast float %3338 to i32
  %3542 = and i32 %3541, 255
  %3543 = uitofp i32 %3542 to float
  %3544 = lshr i32 %3541, 8
  %3545 = and i32 %3544, 255
  %3546 = uitofp i32 %3545 to float
  %3547 = lshr i32 %3541, 16
  %3548 = and i32 %3547, 255
  %3549 = uitofp i32 %3548 to float
  %3550 = fmul fast float %3549, 0x3F70101000000000
  %3551 = fmul fast float %3537, %3543
  %3552 = fadd fast float %3551, %3546
  %3553 = fmul fast float %3552, 0x3F70101000000000
  %3554 = fadd fast float %3538, -5.000000e-01
  %3555 = fadd fast float %3540, -5.000000e-01
  %3556 = fmul fast float %3554, %3550
  %3557 = fmul fast float %3555, %3550
  %3558 = fadd fast float %3556, 5.000000e-01
  %3559 = fadd fast float %3557, 5.000000e-01
  %3560 = fmul fast float %3521, %3347
  %3561 = fmul fast float %3522, %3348
  %3562 = fmul fast float %3523, %3349
  %3563 = fmul fast float %3558, 2.000000e+00
  %3564 = fadd fast float %3563, -1.000000e+00
  %3565 = fmul fast float %3559, 2.000000e+00
  %3566 = fadd fast float %3565, -1.000000e+00
  %3567 = fadd fast float %3564, %3566
  %3568 = fmul fast float %3567, 5.000000e-01
  %3569 = fsub fast float %3564, %3566
  %3570 = fmul fast float %3569, 5.000000e-01
  %3571 = call float @dx.op.unary.f32(i32 6, float %3568)  ; FAbs(value)
  %3572 = fsub fast float 1.000000e+00, %3571
  %3573 = call float @dx.op.unary.f32(i32 6, float %3570)  ; FAbs(value)
  %3574 = fsub fast float %3572, %3573
  %3575 = call float @dx.op.dot3.f32(i32 55, float %3568, float %3570, float %3574, float %3568, float %3570, float %3574)  ; Dot3(ax,ay,az,bx,by,bz)
  %3576 = call float @dx.op.unary.f32(i32 25, float %3575)  ; Rsqrt(value)
  %3577 = fmul fast float %3568, %3576
  %3578 = fmul fast float %3570, %3576
  %3579 = fmul fast float %3576, %3574
  %3580 = fmul fast float %3579, %3313
  %3581 = fmul fast float %3579, %3314
  %3582 = fmul fast float %3579, %3315
  %3583 = fmul fast float %3577, %3335
  %3584 = fmul fast float %3577, %3336
  %3585 = fmul fast float %3577, %3337
  %3586 = fadd fast float %3583, %3580
  %3587 = fadd fast float %3584, %3581
  %3588 = fadd fast float %3585, %3582
  %3589 = fmul fast float %3578, %3341
  %3590 = fmul fast float %3578, %3342
  %3591 = fmul fast float %3578, %3343
  %3592 = fadd fast float %3586, %3589
  %3593 = fadd fast float %3587, %3590
  %3594 = fadd fast float %3588, %3591
  %3595 = call float @dx.op.dot3.f32(i32 55, float %3592, float %3593, float %3594, float %3592, float %3593, float %3594)  ; Dot3(ax,ay,az,bx,by,bz)
  %3596 = call float @dx.op.unary.f32(i32 25, float %3595)  ; Rsqrt(value)
  %3597 = fmul fast float %3592, %3596
  %3598 = fmul fast float %3593, %3596
  %3599 = fmul fast float %3594, %3596
  %3600 = icmp ne i32 %3516, 0
  %3601 = select i1 %3600, float 1.000000e+00, float 0.000000e+00
  %3602 = fmul fast float %3506, %3601
  %3603 = and i32 %3436, 1
  %3604 = icmp eq i32 %3603, 0
  br i1 %3604, label %3605, label %3609

; <label>:3605                                    ; preds = %3514
  %3606 = fsub fast float %3597, %3295
  %3607 = fsub fast float %3598, %3296
  %3608 = fsub fast float %3599, %3297
  br label %3609

; <label>:3609                                    ; preds = %3605, %3514
  %3610 = phi float [ %3606, %3605 ], [ %3597, %3514 ]
  %3611 = phi float [ %3607, %3605 ], [ %3598, %3514 ]
  %3612 = phi float [ %3608, %3605 ], [ %3599, %3514 ]
  %3613 = fmul float %3612, %3602
  %3614 = fmul float %3611, %3602
  %3615 = fmul float %3610, %3602
  %3616 = fadd fast float %3615, %3295
  %3617 = fadd fast float %3614, %3296
  %3618 = fadd fast float %3613, %3297
  %3619 = icmp ne i32 %3515, 0
  %3620 = select i1 %3619, float 1.000000e+00, float 0.000000e+00
  %3621 = fmul fast float %3506, %3620
  %3622 = fsub fast float %3560, %3302
  %3623 = fsub fast float %3561, %3303
  %3624 = fsub fast float %3562, %3304
  %3625 = fmul fast float %3622, %3621
  %3626 = fmul fast float %3623, %3621
  %3627 = fmul fast float %3624, %3621
  %3628 = fadd fast float %3625, %3302
  %3629 = fadd fast float %3626, %3303
  %3630 = fadd fast float %3627, %3304
  %3631 = fsub fast float %3533, %3301
  %3632 = fmul fast float %3631, %3621
  %3633 = fadd fast float %3632, %3301
  %3634 = fmul fast float %3621, %3291
  %3635 = fsub fast float %3291, %3634
  %3636 = fmul fast float %3621, %3290
  %3637 = fsub fast float %3290, %3636
  %3638 = fadd fast float %3506, %3300
  %3639 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3640 = fsub fast float %3553, %3299
  %3641 = fmul fast float %3640, %3602
  %3642 = fadd fast float %3641, %3299
  %3643 = fsub fast float %3539, %3298
  %3644 = fmul fast float %3643, %3602
  %3645 = fadd fast float %3644, %3298
  %3646 = call float @dx.op.dot3.f32(i32 55, float %3560, float %3561, float %3562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.CBufRet.f32 %3647, 1
  %3650 = fmul fast float %3649, %3646
  %3651 = fadd fast float %3650, %3648
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3653 = bitcast float %3350 to i32
  %3654 = and i32 %3653, 65535
  %3655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3654)  ; LegacyF16ToF32(value)
  %3656 = lshr i32 %3653, 16
  %3657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3656)  ; LegacyF16ToF32(value)
  %3658 = fcmp fast oge float %3655, 0.000000e+00
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 0
  %3661 = select i1 %3658, float %3655, float %3660
  %3662 = fadd fast float %3661, %3657
  %3663 = fsub fast float %3652, %3289
  %3664 = fmul fast float %3663, %3506
  %3665 = fadd fast float %3664, %3289
  %3666 = fmul fast float %3662, %3506
  %3667 = call float @dx.op.binary.f32(i32 35, float %3288, float %3666)  ; FMax(a,b)
  %3668 = call float @dx.op.binary.f32(i32 35, float %3287, float %3506)  ; FMax(a,b)
  %3669 = and i32 %3436, 16
  %3670 = icmp eq i32 %3669, 0
  br i1 %3670, label %3693, label %3671

; <label>:3671                                    ; preds = %3609
  %3672 = bitcast float %3356 to i32
  %3673 = add i32 %3353, 0
  %3674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3673, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3675 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3674, %dx.types.Handle %3519, float %3447, float %3450, float undef, float undef, i32 0, i32 0, i32 undef, float %3452, float %3454, float undef, float %3456, float %3458, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.f32 %3675, 1
  %3678 = extractvalue %dx.types.ResRet.f32 %3675, 2
  %3679 = and i32 %3672, 65535
  %3680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3679)  ; LegacyF16ToF32(value)
  %3681 = fmul fast float %3676, %3347
  %3682 = fmul fast float %3677, %3348
  %3683 = fmul fast float %3678, %3349
  %3684 = and i32 %3436, 16384
  %3685 = icmp ne i32 %3684, 0
  %3686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.f32 %3686, 0
  %3688 = select i1 %3685, float %3687, float 1.000000e+00
  %3689 = fmul fast float %3688, %3680
  %3690 = fmul fast float %3681, %3689
  %3691 = fmul fast float %3682, %3689
  %3692 = fmul fast float %3683, %3689
  br label %3693

; <label>:3693                                    ; preds = %3671, %3609
  %3694 = phi float [ %3690, %3671 ], [ 0.000000e+00, %3609 ]
  %3695 = phi float [ %3691, %3671 ], [ 0.000000e+00, %3609 ]
  %3696 = phi float [ %3692, %3671 ], [ 0.000000e+00, %3609 ]
  %3697 = fsub fast float %3694, %3292
  %3698 = fsub fast float %3695, %3293
  %3699 = fsub fast float %3696, %3294
  %3700 = fmul fast float %3697, %3506
  %3701 = fmul fast float %3698, %3506
  %3702 = fmul fast float %3699, %3506
  %3703 = fadd fast float %3700, %3292
  %3704 = fadd fast float %3701, %3293
  %3705 = fadd fast float %3702, %3294
  br label %3406

; <label>:3706                                    ; preds = %3406
  br label %3707

; <label>:3707                                    ; preds = %3706, %3221
  %3708 = phi float [ 0.000000e+00, %3221 ], [ %3407, %3706 ]
  %3709 = phi float [ %931, %3221 ], [ %3408, %3706 ]
  %3710 = phi float [ %3160, %3221 ], [ %3409, %3706 ]
  %3711 = phi float [ %3151, %3221 ], [ %3410, %3706 ]
  %3712 = phi float [ 0.000000e+00, %3221 ], [ %3411, %3706 ]
  %3713 = phi float [ 0.000000e+00, %3221 ], [ %3412, %3706 ]
  %3714 = phi float [ %3185, %3221 ], [ %3413, %3706 ]
  %3715 = phi float [ %3188, %3221 ], [ %3414, %3706 ]
  %3716 = phi float [ %3191, %3221 ], [ %3415, %3706 ]
  %3717 = phi float [ %3217, %3221 ], [ %3416, %3706 ]
  %3718 = phi float [ %3218, %3221 ], [ %3417, %3706 ]
  %3719 = phi float [ %3219, %3221 ], [ %3418, %3706 ]
  %3720 = phi float [ %3150, %3221 ], [ %3419, %3706 ]
  %3721 = phi float [ %3149, %3221 ], [ %3420, %3706 ]
  %3722 = phi float [ 0.000000e+00, %3221 ], [ %3421, %3706 ]
  %3723 = phi float [ %3148, %3221 ], [ %3422, %3706 ]
  %3724 = phi float [ %3169, %3221 ], [ %3423, %3706 ]
  %3725 = phi float [ %3170, %3221 ], [ %3424, %3706 ]
  %3726 = phi float [ %3171, %3221 ], [ %3425, %3706 ]
  %3727 = call float @dx.op.dot3.f32(i32 55, float %3717, float %3718, float %3719, float %3717, float %3718, float %3719)  ; Dot3(ax,ay,az,bx,by,bz)
  %3728 = call float @dx.op.unary.f32(i32 25, float %3727)  ; Rsqrt(value)
  %3729 = fmul fast float %3728, %3717
  %3730 = fmul fast float %3728, %3718
  %3731 = fmul fast float %3728, %3719
  %3732 = fadd fast float %3722, %931
  %3733 = call float @dx.op.unary.f32(i32 7, float %3732)  ; Saturate(value)
  %3734 = call float @dx.op.dot3.f32(i32 55, float %3729, float %3730, float %3731, float %3729, float %3730, float %3731)  ; Dot3(ax,ay,az,bx,by,bz)
  %3735 = call float @dx.op.unary.f32(i32 25, float %3734)  ; Rsqrt(value)
  %3736 = fmul fast float %3735, %3729
  %3737 = fmul fast float %3735, %3730
  %3738 = fmul fast float %3735, %3731
  br label %3739

; <label>:3739                                    ; preds = %3707, %3139
  %3740 = phi float [ %3724, %3707 ], [ %3169, %3139 ]
  %3741 = phi float [ %3725, %3707 ], [ %3170, %3139 ]
  %3742 = phi float [ %3726, %3707 ], [ %3171, %3139 ]
  %3743 = phi float [ %3736, %3707 ], [ %3217, %3139 ]
  %3744 = phi float [ %3737, %3707 ], [ %3218, %3139 ]
  %3745 = phi float [ %3738, %3707 ], [ %3219, %3139 ]
  %3746 = phi float [ %3714, %3707 ], [ %3185, %3139 ]
  %3747 = phi float [ %3715, %3707 ], [ %3188, %3139 ]
  %3748 = phi float [ %3716, %3707 ], [ %3191, %3139 ]
  %3749 = phi float [ %3723, %3707 ], [ %3148, %3139 ]
  %3750 = phi float [ %3733, %3707 ], [ %931, %3139 ]
  %3751 = phi float [ %3721, %3707 ], [ %3149, %3139 ]
  %3752 = phi float [ %3720, %3707 ], [ %3150, %3139 ]
  %3753 = phi float [ %3713, %3707 ], [ 0.000000e+00, %3139 ]
  %3754 = phi float [ %3712, %3707 ], [ 0.000000e+00, %3139 ]
  %3755 = phi float [ %3708, %3707 ], [ 0.000000e+00, %3139 ]
  %3756 = phi float [ %3710, %3707 ], [ %3160, %3139 ]
  %3757 = phi float [ %3709, %3707 ], [ %931, %3139 ]
  %3758 = phi float [ %3711, %3707 ], [ %3151, %3139 ]
  %3759 = fadd fast float %3749, 0xBFB99999A0000000
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = fmul fast float %3760, 0x3FF1C71C80000000
  %3762 = call float @dx.op.binary.f32(i32 36, float %3749, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3763 = fsub fast float 1.000000e+00, %3761
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3765 = fmul fast float %3764, %3740
  %3766 = fmul fast float %3764, %3741
  %3767 = fmul fast float %3764, %3742
  %3768 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3769 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3770 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3771 = fmul fast float %3761, %3740
  %3772 = fmul fast float %3761, %3741
  %3773 = fmul fast float %3761, %3742
  %3774 = fadd fast float %3771, %3762
  %3775 = fadd fast float %3772, %3762
  %3776 = fadd fast float %3773, %3762
  %3777 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3778 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3779 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3780 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.i32 %3781, 3
  %3783 = and i32 %3782, 8
  %3784 = icmp ne i32 %3783, 0
  %3785 = call float @dx.op.binary.f32(i32 35, float %3768, float %3740)  ; FMax(a,b)
  %3786 = call float @dx.op.binary.f32(i32 35, float %3769, float %3740)  ; FMax(a,b)
  %3787 = call float @dx.op.binary.f32(i32 35, float %3770, float %3740)  ; FMax(a,b)
  %3788 = call float @dx.op.dot3.f32(i32 55, float %3768, float %3769, float %3770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3789 = select i1 %215, float %3740, float %3768
  %3790 = select i1 %215, float %3788, float %3769
  %3791 = select i1 %215, float 1.000000e+00, float %3770
  %3792 = select i1 %3784, float %3785, float %3789
  %3793 = select i1 %3784, float %3786, float %3790
  %3794 = select i1 %3784, float %3787, float %3791
  %3795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3796 = extractvalue %dx.types.CBufRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.CBufRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.CBufRet.f32 %3795, 2
  %3799 = fadd fast float %3796, %165
  %3800 = fadd fast float %3797, %166
  %3801 = fadd fast float %3798, %167
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3805 = fsub fast float %3799, %3803
  %3806 = fsub fast float %3800, %3804
  %3807 = fmul fast float %3805, %3805
  %3808 = fmul fast float %3806, %3806
  %3809 = fadd fast float %3807, %3808
  %3810 = call float @dx.op.unary.f32(i32 24, float %3809)  ; Sqrt(value)
  %3811 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3812 = fcmp fast olt float %3810, %3811
  br i1 %3812, label %3813, label %3880

; <label>:3813                                    ; preds = %3739
  %3814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.CBufRet.f32 %3814, 1
  %3821 = extractvalue %dx.types.CBufRet.f32 %3816, 1
  %3822 = extractvalue %dx.types.CBufRet.f32 %3818, 1
  %3823 = extractvalue %dx.types.CBufRet.f32 %3814, 3
  %3824 = extractvalue %dx.types.CBufRet.f32 %3816, 3
  %3825 = extractvalue %dx.types.CBufRet.f32 %3818, 3
  %3826 = fadd fast float %3823, %3799
  %3827 = fadd fast float %3824, %3800
  %3828 = fadd fast float %3825, %3801
  %3829 = fmul fast float %3826, %3815
  %3830 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3817, float %3829)  ; FMad(a,b,c)
  %3831 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3819, float %3830)  ; FMad(a,b,c)
  %3832 = fmul fast float %3826, %3820
  %3833 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3821, float %3832)  ; FMad(a,b,c)
  %3834 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3822, float %3833)  ; FMad(a,b,c)
  %3835 = fsub fast float %3831, %3823
  %3836 = fsub fast float %3834, %3824
  %3837 = fsub fast float %3835, %3803
  %3838 = fadd fast float %3837, %3811
  %3839 = fsub fast float %3836, %3804
  %3840 = fadd fast float %3839, %3811
  %3841 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %3842 = fmul fast float %3838, %3841
  %3843 = fmul fast float %3840, %3841
  %3844 = call float @dx.op.unary.f32(i32 7, float %3842)  ; Saturate(value)
  %3845 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3846 = fsub fast float 1.000000e+00, %3844
  %3847 = fsub fast float 1.000000e+00, %3845
  %3848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3846, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = fcmp fast ugt float %3849, 0.000000e+00
  br i1 %3850, label %3851, label %4154

; <label>:3851                                    ; preds = %3813
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 2
  %3854 = fmul fast float %3853, %3849
  %3855 = extractvalue %dx.types.CBufRet.f32 %3852, 3
  %3856 = fadd fast float %3855, %3854
  %3857 = extractvalue %dx.types.CBufRet.f32 %3818, 2
  %3858 = fadd fast float %3856, %3825
  %3859 = fmul fast float %3831, %3819
  %3860 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3822, float %3859)  ; FMad(a,b,c)
  %3861 = call float @dx.op.tertiary.f32(i32 46, float %3858, float %3857, float %3860)  ; FMad(a,b,c)
  %3862 = fsub fast float %3861, %3825
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 2
  %3865 = fsub fast float %3862, %3864
  %3866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3846, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %3846, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = fadd fast float %3871, %3867
  %3875 = fmul fast float %3874, 0x3F847AE140000000
  %3876 = fadd fast float %3872, %3868
  %3877 = fmul fast float %3876, 0x3F847AE140000000
  %3878 = fadd fast float %3873, %3869
  %3879 = fmul fast float %3878, 0x3F847AE140000000
  br label %4154

; <label>:3880                                    ; preds = %3739
  %3881 = and i32 %194, 1
  %3882 = icmp eq i32 %3881, 0
  br i1 %3882, label %4154, label %3883

; <label>:3883                                    ; preds = %3880
  %3884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3884, 0
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.CBufRet.f32 %3884, 1
  %3891 = extractvalue %dx.types.CBufRet.f32 %3886, 1
  %3892 = extractvalue %dx.types.CBufRet.f32 %3888, 1
  %3893 = extractvalue %dx.types.CBufRet.f32 %3884, 3
  %3894 = extractvalue %dx.types.CBufRet.f32 %3886, 3
  %3895 = extractvalue %dx.types.CBufRet.f32 %3888, 3
  %3896 = fadd fast float %3893, %3799
  %3897 = fadd fast float %3894, %3800
  %3898 = fadd fast float %3895, %3801
  %3899 = fmul fast float %3896, %3885
  %3900 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3887, float %3899)  ; FMad(a,b,c)
  %3901 = call float @dx.op.tertiary.f32(i32 46, float %3898, float %3889, float %3900)  ; FMad(a,b,c)
  %3902 = fmul fast float %3896, %3890
  %3903 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3891, float %3902)  ; FMad(a,b,c)
  %3904 = call float @dx.op.tertiary.f32(i32 46, float %3898, float %3892, float %3903)  ; FMad(a,b,c)
  %3905 = fsub fast float %3901, %3893
  %3906 = fsub fast float %3904, %3894
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %3910 = extractvalue %dx.types.CBufRet.f32 %3907, 2
  %3911 = extractvalue %dx.types.CBufRet.f32 %3907, 3
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 3
  %3914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.i32 %3914, 0
  %3916 = extractvalue %dx.types.CBufRet.i32 %3914, 1
  %3917 = udiv i32 %3916, %3915
  %3918 = fsub fast float %3905, %3908
  %3919 = fsub fast float %3906, %3909
  %3920 = call float @dx.op.binary.f32(i32 35, float %3918, float 0.000000e+00)  ; FMax(a,b)
  %3921 = call float @dx.op.binary.f32(i32 35, float %3919, float 0.000000e+00)  ; FMax(a,b)
  %3922 = call float @dx.op.binary.f32(i32 36, float %3920, float %3910)  ; FMin(a,b)
  %3923 = call float @dx.op.binary.f32(i32 36, float %3921, float %3911)  ; FMin(a,b)
  %3924 = add i32 %3915, -1
  %3925 = add i32 %3917, -1
  %3926 = fmul fast float %3922, %3913
  %3927 = fmul fast float %3923, %3913
  %3928 = fptoui float %3926 to i32
  %3929 = fptoui float %3927 to i32
  %3930 = call i32 @dx.op.binary.i32(i32 40, i32 %3928, i32 %3924)  ; UMin(a,b)
  %3931 = call i32 @dx.op.binary.i32(i32 40, i32 %3929, i32 %3925)  ; UMin(a,b)
  %3932 = mul i32 %3931, %3915
  %3933 = add i32 %3932, %3930
  %3934 = shl i32 %3933, 2
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = icmp eq i32 %3936, -1
  br i1 %3937, label %4154, label %3938

; <label>:3938                                    ; preds = %3883
  %3939 = mul i32 %3936, 148
  %3940 = add i32 %3939, 4
  %3941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = add i32 %3939, 8
  %3944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = add i32 %3939, 36
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = add i32 %3939, 60
  %3950 = add i32 %3939, 92
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = add i32 %3939, 116
  %3954 = fsub fast float %3905, %3942
  %3955 = fsub fast float %3906, %3945
  %3956 = fmul fast float %3913, %3954
  %3957 = fmul fast float %3913, %3955
  %3958 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3959 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3960 = fsub fast float 1.000000e+00, %3959
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 2
  %3963 = call float @dx.op.unary.f32(i32 83, float %3958)  ; DerivCoarseX(value)
  %3964 = call float @dx.op.unary.f32(i32 83, float %3960)  ; DerivCoarseX(value)
  %3965 = call float @dx.op.unary.f32(i32 84, float %3958)  ; DerivCoarseY(value)
  %3966 = call float @dx.op.unary.f32(i32 84, float %3960)  ; DerivCoarseY(value)
  %3967 = fmul fast float %3963, %3962
  %3968 = fmul fast float %3964, %3962
  %3969 = fmul fast float %3965, %3962
  %3970 = fmul fast float %3966, %3962
  %3971 = call float @dx.op.dot2.f32(i32 54, float %3969, float %3970, float %3969, float %3970)  ; Dot2(ax,ay,bx,by)
  %3972 = call float @dx.op.dot2.f32(i32 54, float %3967, float %3968, float %3967, float %3968)  ; Dot2(ax,ay,bx,by)
  %3973 = call float @dx.op.binary.f32(i32 35, float %3972, float %3971)  ; FMax(a,b)
  %3974 = call float @dx.op.unary.f32(i32 23, float %3973)  ; Log(value)
  %3975 = fmul fast float %3974, 5.000000e-01
  %3976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3976, 1
  %3978 = fadd fast float %3977, %3975
  %3979 = call float @dx.op.binary.f32(i32 35, float %3978, float 0.000000e+00)  ; FMax(a,b)
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 3
  %3982 = fadd fast float %3981, %3979
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3985 = fadd fast float %3982, %3984
  %3986 = add i32 %3952, 0
  %3987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3986, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3988 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3987, i32 0)  ; GetDimensions(handle,mipLevel)
  %3989 = extractvalue %dx.types.Dimensions %3988, 0
  %3990 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3989)  ; FirstbitLo(value)
  %3991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.i32 %3991, 1
  %3993 = sub nsw i32 %3992, %3990
  %3994 = sitofp i32 %3993 to float
  %3995 = fsub fast float %3985, %3994
  %3996 = call float @dx.op.binary.f32(i32 35, float %3995, float 0.000000e+00)  ; FMax(a,b)
  %3997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3987, %dx.types.Handle %28, float %3958, float %3960, float %3948, float undef, i32 0, i32 0, i32 undef, float %3996)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %3999 = fcmp ule float %3998, 0x3FE0101020000000
  %4000 = extractvalue %dx.types.CBufRet.i32 %3991, 0
  %4001 = and i32 %4000, 128
  %4002 = icmp ne i32 %4001, 0
  %4003 = and i1 %3999, %4002
  br i1 %4003, label %4154, label %4004

; <label>:4004                                    ; preds = %3938
  %4005 = add i32 %3939, 20
  %4006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = add i32 %3939, 24
  %4009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = add i32 %3939, 40
  %4012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4011, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 0
  %4014 = add i32 %3939, 96
  %4015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4014, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.i32 %4015, 0
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 2
  %4019 = fmul fast float %4018, %3958
  %4020 = fmul fast float %4018, %3960
  %4021 = extractvalue %dx.types.CBufRet.f32 %4017, 3
  %4022 = fadd fast float %4019, %4021
  %4023 = fadd fast float %4020, %4021
  %4024 = add i32 %4016, 0
  %4025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4024, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4026 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4025, i32 0)  ; GetDimensions(handle,mipLevel)
  %4027 = extractvalue %dx.types.Dimensions %4026, 0
  %4028 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4027)  ; FirstbitLo(value)
  %4029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.i32 %4029, 1
  %4031 = sub nsw i32 %4030, %4028
  %4032 = sitofp i32 %4031 to float
  %4033 = fsub fast float %3982, %4032
  %4034 = call float @dx.op.binary.f32(i32 35, float %4033, float 0.000000e+00)  ; FMax(a,b)
  %4035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4025, %dx.types.Handle %28, float %4022, float %4023, float %4013, float undef, i32 0, i32 0, i32 undef, float %4034)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = fmul fast float %4036, %4007
  %4038 = fadd fast float %4037, %4010
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4041 = extractvalue %dx.types.CBufRet.f32 %4039, 1
  %4042 = extractvalue %dx.types.CBufRet.f32 %4039, 2
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 3
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 3
  %4047 = extractvalue %dx.types.CBufRet.f32 %4039, 3
  %4048 = fadd fast float %4044, %3905
  %4049 = fadd fast float %4046, %3906
  %4050 = fadd fast float %4038, %4047
  %4051 = fmul fast float %4048, %4040
  %4052 = call float @dx.op.tertiary.f32(i32 46, float %4049, float %4041, float %4051)  ; FMad(a,b,c)
  %4053 = call float @dx.op.tertiary.f32(i32 46, float %4050, float %4042, float %4052)  ; FMad(a,b,c)
  %4054 = fsub fast float %4053, %4047
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 2
  %4057 = fsub fast float %4054, %4056
  %4058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.i32 %4058, 0
  %4060 = call i32 @dx.op.binary.i32(i32 40, i32 %3936, i32 %4059)  ; UMin(a,b)
  %4061 = mul i32 %4060, 36
  %4062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.i32 %4062, 0
  %4064 = add i32 %4061, 4
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = fmul fast float %4066, %3958
  %4068 = fmul fast float %4066, %3960
  %4069 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4070 = fadd fast float %4067, %4069
  %4071 = fadd fast float %4068, %4069
  %4072 = icmp eq i32 %4063, 0
  br i1 %4072, label %4141, label %4073

; <label>:4073                                    ; preds = %4004
  br label %4074

; <label>:4074                                    ; preds = %4131, %4073
  %4075 = phi float [ %4132, %4131 ], [ 0.000000e+00, %4073 ]
  %4076 = phi float [ %4133, %4131 ], [ 0.000000e+00, %4073 ]
  %4077 = phi float [ %4134, %4131 ], [ 0.000000e+00, %4073 ]
  %4078 = phi float [ %4135, %4131 ], [ 0.000000e+00, %4073 ]
  %4079 = phi float [ %4136, %4131 ], [ 0.000000e+00, %4073 ]
  %4080 = phi float [ %4137, %4131 ], [ 0.000000e+00, %4073 ]
  %4081 = phi i32 [ %4138, %4131 ], [ 0, %4073 ]
  %4082 = shl i32 %4081, 2
  %4083 = add i32 %3949, %4082
  %4084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4083, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = add i32 %3953, %4082
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = add i32 %4088, 0
  %4090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4089, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4091 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4090, i32 0)  ; GetDimensions(handle,mipLevel)
  %4092 = extractvalue %dx.types.Dimensions %4091, 0
  %4093 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4092)  ; FirstbitLo(value)
  %4094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.i32 %4094, 1
  %4096 = sub nsw i32 %4095, %4093
  %4097 = sitofp i32 %4096 to float
  %4098 = fsub fast float %3982, %4097
  %4099 = call float @dx.op.binary.f32(i32 35, float %4098, float 0.000000e+00)  ; FMax(a,b)
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4090, %dx.types.Handle %28, float %4070, float %4071, float %4085, float undef, i32 0, i32 0, i32 undef, float %4099)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = fcmp fast ogt float %4101, 0.000000e+00
  br i1 %4102, label %4103, label %4131

; <label>:4103                                    ; preds = %4074
  %4104 = add i32 %4064, %4082
  %4105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.i32 %4105, 0
  %4107 = and i32 %4106, 32767
  %4108 = mul nuw nsw i32 %4107, 928
  %4109 = add nuw nsw i32 %4108, 48
  %4110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4110, 2
  %4114 = add nuw nsw i32 %4108, 60
  %4115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4119 = fmul fast float %4111, %4101
  %4120 = fmul fast float %4112, %4101
  %4121 = fmul fast float %4113, %4101
  %4122 = fadd fast float %4119, %4075
  %4123 = fadd fast float %4120, %4076
  %4124 = fadd fast float %4121, %4077
  %4125 = fmul fast float %4116, %4101
  %4126 = fmul fast float %4117, %4101
  %4127 = fmul fast float %4118, %4101
  %4128 = fadd fast float %4125, %4078
  %4129 = fadd fast float %4126, %4079
  %4130 = fadd fast float %4127, %4080
  br label %4131

; <label>:4131                                    ; preds = %4103, %4074
  %4132 = phi float [ %4122, %4103 ], [ %4075, %4074 ]
  %4133 = phi float [ %4123, %4103 ], [ %4076, %4074 ]
  %4134 = phi float [ %4124, %4103 ], [ %4077, %4074 ]
  %4135 = phi float [ %4128, %4103 ], [ %4078, %4074 ]
  %4136 = phi float [ %4129, %4103 ], [ %4079, %4074 ]
  %4137 = phi float [ %4130, %4103 ], [ %4080, %4074 ]
  %4138 = add nuw i32 %4081, 1
  %4139 = icmp eq i32 %4138, %4063
  br i1 %4139, label %4140, label %4074

; <label>:4140                                    ; preds = %4131
  br label %4141

; <label>:4141                                    ; preds = %4140, %4004
  %4142 = phi float [ 0.000000e+00, %4004 ], [ %4132, %4140 ]
  %4143 = phi float [ 0.000000e+00, %4004 ], [ %4133, %4140 ]
  %4144 = phi float [ 0.000000e+00, %4004 ], [ %4134, %4140 ]
  %4145 = phi float [ 0.000000e+00, %4004 ], [ %4135, %4140 ]
  %4146 = phi float [ 0.000000e+00, %4004 ], [ %4136, %4140 ]
  %4147 = phi float [ 0.000000e+00, %4004 ], [ %4137, %4140 ]
  %4148 = fadd fast float %4145, %4142
  %4149 = fmul fast float %4148, 0x3F847AE140000000
  %4150 = fadd fast float %4146, %4143
  %4151 = fmul fast float %4150, 0x3F847AE140000000
  %4152 = fadd fast float %4147, %4144
  %4153 = fmul fast float %4152, 0x3F847AE140000000
  br label %4154

; <label>:4154                                    ; preds = %4141, %3938, %3883, %3880, %3851, %3813
  %4155 = phi float [ %3865, %3851 ], [ -1.310720e+05, %3813 ], [ %4057, %4141 ], [ -1.310720e+05, %3883 ], [ -1.310720e+05, %3938 ], [ -1.310720e+05, %3880 ]
  %4156 = phi float [ %3875, %3851 ], [ 0.000000e+00, %3813 ], [ %4149, %4141 ], [ 0.000000e+00, %3883 ], [ 0.000000e+00, %3938 ], [ 0.000000e+00, %3880 ]
  %4157 = phi float [ %3877, %3851 ], [ 0.000000e+00, %3813 ], [ %4151, %4141 ], [ 0.000000e+00, %3883 ], [ 0.000000e+00, %3938 ], [ 0.000000e+00, %3880 ]
  %4158 = phi float [ %3879, %3851 ], [ 0.000000e+00, %3813 ], [ %4153, %4141 ], [ 0.000000e+00, %3883 ], [ 0.000000e+00, %3938 ], [ 0.000000e+00, %3880 ]
  %4159 = phi i1 [ true, %3851 ], [ false, %3813 ], [ true, %4141 ], [ false, %3883 ], [ false, %3938 ], [ false, %3880 ]
  %4160 = and i32 %194, 3
  %4161 = icmp eq i32 %4160, 1
  %4162 = select i1 %4161, float 1.000000e+00, float 0.000000e+00
  %4163 = fsub fast float %4155, %167
  %4164 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4165 = select i1 %4159, float %4164, float 1.000000e+00
  %4166 = fmul fast float %4165, %4162
  %4167 = icmp eq i32 %4160, 3
  %4168 = select i1 %4167, float 1.000000e+00, float %4166
  %4169 = call float @dx.op.binary.f32(i32 35, float %3755, float %4168)  ; FMax(a,b)
  %4170 = fcmp fast olt float %4168, 1.000000e+00
  %4171 = fcmp uge float %49, 0.000000e+00
  %4172 = and i1 %4171, %4170
  br i1 %4172, label %4173, label %4183

; <label>:4173                                    ; preds = %4154
  %4174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = extractvalue %dx.types.ResRet.f32 %4174, 1
  %4177 = extractvalue %dx.types.ResRet.f32 %4174, 2
  %4178 = fadd fast float %4175, %4169
  %4179 = fcmp ule float %48, 0.000000e+00
  %4180 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4181 = select i1 %4179, float %4180, float 1.000000e+00
  %4182 = fmul fast float %4181, %4177
  br label %4183

; <label>:4183                                    ; preds = %4173, %4154
  %4184 = phi float [ %4178, %4173 ], [ %4169, %4154 ]
  %4185 = phi float [ %4176, %4173 ], [ 0.000000e+00, %4154 ]
  %4186 = phi float [ %4182, %4173 ], [ 0.000000e+00, %4154 ]
  %4187 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4188 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4189 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4190 = fcmp fast une float %4188, 0.000000e+00
  %4191 = fcmp fast une float %4189, 0.000000e+00
  %4192 = or i1 %4190, %4191
  br i1 %4192, label %4193, label %4752

; <label>:4193                                    ; preds = %4183
  br i1 %4190, label %4194, label %4467

; <label>:4194                                    ; preds = %4193
  %4195 = call float @dx.op.unary.f32(i32 23, float %3752)  ; Log(value)
  %4196 = fmul fast float %4195, 4.000000e+00
  %4197 = call float @dx.op.unary.f32(i32 21, float %4196)  ; Exp(value)
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4200 = fmul fast float %4199, %36
  %4201 = fmul fast float %4199, %37
  %4202 = fmul fast float %4199, %38
  %4203 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4204 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4205 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4206 = call float @dx.op.unary.f32(i32 23, float %4203)  ; Log(value)
  %4207 = call float @dx.op.unary.f32(i32 23, float %4204)  ; Log(value)
  %4208 = call float @dx.op.unary.f32(i32 23, float %4205)  ; Log(value)
  %4209 = fmul fast float %4206, 4.000000e+00
  %4210 = fmul fast float %4207, 4.000000e+00
  %4211 = fmul fast float %4208, 4.000000e+00
  %4212 = call float @dx.op.unary.f32(i32 21, float %4209)  ; Exp(value)
  %4213 = call float @dx.op.unary.f32(i32 21, float %4210)  ; Exp(value)
  %4214 = call float @dx.op.unary.f32(i32 21, float %4211)  ; Exp(value)
  %4215 = fadd fast float %4213, %4212
  %4216 = fadd fast float %4215, %4214
  %4217 = fdiv fast float 1.000000e+00, %4216
  %4218 = fmul fast float %4217, %4212
  %4219 = fcmp fast ogt float %45, 0.000000e+00
  %4220 = fcmp fast ogt float %46, 0.000000e+00
  %4221 = fcmp fast ogt float %47, 0.000000e+00
  %4222 = fcmp fast olt float %45, 0.000000e+00
  %4223 = fcmp fast olt float %46, 0.000000e+00
  %4224 = fcmp fast olt float %47, 0.000000e+00
  %4225 = zext i1 %4219 to i32
  %4226 = zext i1 %4220 to i32
  %4227 = zext i1 %4221 to i32
  %4228 = zext i1 %4222 to i32
  %4229 = zext i1 %4223 to i32
  %4230 = zext i1 %4224 to i32
  %4231 = sub nsw i32 %4225, %4228
  %4232 = sub nsw i32 %4226, %4229
  %4233 = sub nsw i32 %4227, %4230
  %4234 = call float @dx.op.unary.f32(i32 83, float %4200)  ; DerivCoarseX(value)
  %4235 = call float @dx.op.unary.f32(i32 83, float %4201)  ; DerivCoarseX(value)
  %4236 = call float @dx.op.unary.f32(i32 83, float %4202)  ; DerivCoarseX(value)
  %4237 = call float @dx.op.unary.f32(i32 84, float %4200)  ; DerivCoarseY(value)
  %4238 = call float @dx.op.unary.f32(i32 84, float %4201)  ; DerivCoarseY(value)
  %4239 = call float @dx.op.unary.f32(i32 84, float %4202)  ; DerivCoarseY(value)
  %4240 = fcmp fast ole float %226, %4218
  %4241 = fmul fast float %4217, %4215
  %4242 = fcmp fast ole float %226, %4241
  %4243 = select i1 %4242, float %4202, float %4200
  %4244 = select i1 %4242, float %4200, float %4201
  %4245 = select i1 %4240, float %4201, float %4243
  %4246 = select i1 %4240, float %4202, float %4244
  %4247 = select i1 %4242, float %4236, float %4234
  %4248 = select i1 %4242, float %4234, float %4235
  %4249 = select i1 %4240, float %4235, float %4247
  %4250 = select i1 %4240, float %4236, float %4248
  %4251 = select i1 %4242, float %4239, float %4237
  %4252 = select i1 %4242, float %4237, float %4238
  %4253 = select i1 %4240, float %4238, float %4251
  %4254 = select i1 %4240, float %4239, float %4252
  %4255 = call float @dx.op.unary.f32(i32 27, float %4245)  ; Round_ni(value)
  %4256 = call float @dx.op.unary.f32(i32 27, float %4246)  ; Round_ni(value)
  %4257 = fptosi float %4255 to i32
  %4258 = fptosi float %4256 to i32
  %4259 = xor i32 %4258, %4257
  %4260 = sitofp i32 %4259 to float
  %4261 = fptosi float %4260 to i32
  %4262 = sitofp i32 %4261 to float
  %4263 = fmul fast float %4262, 0x3FE3C6EF40000000
  %4264 = frem fast float %4255, 2.560000e+02
  %4265 = frem fast float %4256, 2.560000e+02
  %4266 = fptoui float %4264 to i32
  %4267 = fptoui float %4265 to i32
  %4268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4266, i32 %4267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = extractvalue %dx.types.ResRet.f32 %4268, 1
  %4271 = extractvalue %dx.types.ResRet.f32 %4268, 2
  %4272 = fadd fast float %4269, %4263
  %4273 = fadd fast float %4270, %4263
  %4274 = fadd fast float %4271, %4263
  %4275 = call float @dx.op.unary.f32(i32 22, float %4272)  ; Frc(value)
  %4276 = call float @dx.op.unary.f32(i32 22, float %4273)  ; Frc(value)
  %4277 = call float @dx.op.unary.f32(i32 22, float %4274)  ; Frc(value)
  %4278 = fmul fast float %4277, 0x401921FB60000000
  %4279 = call float @dx.op.unary.f32(i32 13, float %4278)  ; Sin(value)
  %4280 = call float @dx.op.unary.f32(i32 12, float %4278)  ; Cos(value)
  %4281 = fsub fast float -0.000000e+00, %4280
  %4282 = fmul fast float %4280, %4245
  %4283 = call float @dx.op.tertiary.f32(i32 46, float %4279, float %4246, float %4282)  ; FMad(a,b,c)
  %4284 = fmul fast float %4279, %4245
  %4285 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4246, float %4284)  ; FMad(a,b,c)
  %4286 = fadd fast float %4283, %4275
  %4287 = fadd fast float %4285, %4276
  %4288 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4289 = bitcast float %4288 to i32
  %4290 = icmp eq i32 %4289, 0
  br i1 %4290, label %4329, label %4291

; <label>:4291                                    ; preds = %4194
  %4292 = add i32 %4289, 0
  %4293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4293, %dx.types.Handle %75, float %4286, float %4287, float undef, float undef, i32 0, i32 0, i32 undef, float %4249, float %4250, float undef, float %4253, float %4254, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 1
  %4298 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4299 = fsub fast float 1.000000e+00, %4188
  %4300 = call float @dx.op.binary.f32(i32 35, float %4299, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4301 = bitcast float %4188 to i32
  %4302 = sitofp i32 %4301 to float
  %4303 = fadd fast float %4302, 0xC1CFBF8940000000
  %4304 = fmul fast float %4298, %4303
  %4305 = fadd fast float %4304, 0x41CFBF8940000000
  %4306 = fptosi float %4305 to i32
  %4307 = bitcast i32 %4306 to float
  %4308 = bitcast float %4300 to i32
  %4309 = sitofp i32 %4308 to float
  %4310 = fadd fast float %4309, 0xC1CFBF8940000000
  %4311 = fmul fast float %4310, %4298
  %4312 = fadd fast float %4311, 0x41CFBF8940000000
  %4313 = fptosi float %4312 to i32
  %4314 = bitcast i32 %4313 to float
  %4315 = fmul fast float %4307, %4297
  %4316 = fmul fast float %4314, %4297
  %4317 = fsub fast float %4300, %4315
  %4318 = fadd fast float %4316, %4300
  %4319 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4320 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4321 = fsub fast float %4295, %4319
  %4322 = fsub fast float %4320, %4319
  %4323 = bitcast float %4322 to i32
  %4324 = sub nsw i32 2129859010, %4323
  %4325 = bitcast i32 %4324 to float
  %4326 = fmul fast float %4325, %4321
  %4327 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4328 = fcmp fast olt float %4327, 0x3F70101020000000
  br i1 %4328, label %4467, label %4329

; <label>:4329                                    ; preds = %4291, %4194
  %4330 = phi float [ %4327, %4291 ], [ %4188, %4194 ]
  %4331 = fmul fast float %4330, %4197
  %4332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.i32 %4332, 1
  %4334 = extractvalue %dx.types.CBufRet.i32 %4332, 0
  %4335 = add i32 %4334, 0
  %4336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4337 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4336, %dx.types.Handle %74, float %4286, float %4287, float undef, float undef, i32 0, i32 0, i32 undef, float %4249, float %4250, float undef, float %4253, float %4254, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4338 = extractvalue %dx.types.ResRet.f32 %4337, 0
  %4339 = extractvalue %dx.types.ResRet.f32 %4337, 1
  %4340 = extractvalue %dx.types.ResRet.f32 %4337, 2
  %4341 = extractvalue %dx.types.ResRet.f32 %4337, 3
  %4342 = and i32 %4333, 255
  %4343 = uitofp i32 %4342 to float
  %4344 = lshr i32 %4333, 8
  %4345 = and i32 %4344, 255
  %4346 = uitofp i32 %4345 to float
  %4347 = fmul fast float %4341, %4343
  %4348 = fadd fast float %4347, %4346
  %4349 = fmul fast float %4348, 0x3F70101000000000
  %4350 = fadd fast float %4349, 0xBFB99999A0000000
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = fmul fast float %4351, 0x3FF1C71C80000000
  %4353 = call float @dx.op.binary.f32(i32 36, float %4349, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4354 = fsub fast float 1.000000e+00, %4352
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fmul fast float %4355, %4338
  %4357 = fmul fast float %4355, %4339
  %4358 = fmul fast float %4355, %4340
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4362 = fmul fast float %4352, %4338
  %4363 = fmul fast float %4352, %4339
  %4364 = fmul fast float %4352, %4340
  %4365 = fadd fast float %4362, %4353
  %4366 = fadd fast float %4363, %4353
  %4367 = fadd fast float %4364, %4353
  %4368 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4369 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4370 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.i32 %4371, 3
  %4373 = extractvalue %dx.types.CBufRet.i32 %4371, 2
  %4374 = add i32 %4373, 0
  %4375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4375, %dx.types.Handle %74, float %4286, float %4287, float undef, float undef, i32 0, i32 0, i32 undef, float %4249, float %4250, float undef, float %4253, float %4254, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = extractvalue %dx.types.ResRet.f32 %4376, 3
  %4381 = and i32 %4372, 255
  %4382 = uitofp i32 %4381 to float
  %4383 = lshr i32 %4372, 8
  %4384 = and i32 %4383, 255
  %4385 = uitofp i32 %4384 to float
  %4386 = lshr i32 %4372, 16
  %4387 = and i32 %4386, 255
  %4388 = uitofp i32 %4387 to float
  %4389 = fmul fast float %4388, 0x3F70101000000000
  %4390 = fmul fast float %4377, %4382
  %4391 = fadd fast float %4390, %4385
  %4392 = fmul fast float %4391, 0x3F70101000000000
  %4393 = fadd fast float %4378, -5.000000e-01
  %4394 = fadd fast float %4380, -5.000000e-01
  %4395 = fmul fast float %4393, %4389
  %4396 = fmul fast float %4394, %4389
  %4397 = fadd fast float %4395, 5.000000e-01
  %4398 = fadd fast float %4396, 5.000000e-01
  %4399 = fmul fast float %4397, 2.000000e+00
  %4400 = fadd fast float %4399, -1.000000e+00
  %4401 = fmul fast float %4398, 2.000000e+00
  %4402 = fadd fast float %4401, -1.000000e+00
  %4403 = fadd fast float %4400, %4402
  %4404 = fmul fast float %4403, 5.000000e-01
  %4405 = fsub fast float %4400, %4402
  %4406 = fmul fast float %4405, 5.000000e-01
  %4407 = call float @dx.op.unary.f32(i32 6, float %4404)  ; FAbs(value)
  %4408 = fsub fast float 1.000000e+00, %4407
  %4409 = call float @dx.op.unary.f32(i32 6, float %4406)  ; FAbs(value)
  %4410 = fsub fast float %4408, %4409
  %4411 = call float @dx.op.dot3.f32(i32 55, float %4404, float %4406, float %4410, float %4404, float %4406, float %4410)  ; Dot3(ax,ay,az,bx,by,bz)
  %4412 = call float @dx.op.unary.f32(i32 25, float %4411)  ; Rsqrt(value)
  %4413 = fmul fast float %4404, %4412
  %4414 = fmul fast float %4406, %4412
  %4415 = select i1 %4242, i32 %4232, i32 %4233
  %4416 = select i1 %4240, i32 %4231, i32 %4415
  %4417 = sitofp i32 %4416 to float
  %4418 = fmul fast float %4410, %4417
  %4419 = fmul fast float %4418, %4412
  %4420 = select i1 %4242, float %4419, float %4414
  %4421 = select i1 %4242, float %4414, float %4419
  %4422 = select i1 %4240, float %4419, float %4413
  %4423 = select i1 %4240, float %4414, float %4420
  %4424 = select i1 %4240, float %4413, float %4421
  %4425 = fsub fast float %4359, %3792
  %4426 = fsub fast float %4360, %3793
  %4427 = fsub fast float %4361, %3794
  %4428 = fmul fast float %4425, %4331
  %4429 = fmul fast float %4426, %4331
  %4430 = fmul fast float %4427, %4331
  %4431 = fadd fast float %4428, %3792
  %4432 = fadd fast float %4429, %3793
  %4433 = fadd fast float %4430, %3794
  %4434 = fsub fast float %4368, %3777
  %4435 = fsub fast float %4369, %3778
  %4436 = fsub fast float %4370, %3779
  %4437 = fmul fast float %4434, %4331
  %4438 = fmul fast float %4435, %4331
  %4439 = fmul fast float %4436, %4331
  %4440 = fadd fast float %4437, %3777
  %4441 = fadd fast float %4438, %3778
  %4442 = fadd fast float %4439, %3779
  %4443 = fadd fast float %4422, %3743
  %4444 = fadd fast float %4423, %3744
  %4445 = fadd fast float %4424, %3745
  %4446 = call float @dx.op.dot3.f32(i32 55, float %4443, float %4444, float %4445, float %4443, float %4444, float %4445)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = call float @dx.op.unary.f32(i32 25, float %4446)  ; Rsqrt(value)
  %4448 = fmul fast float %4443, %4447
  %4449 = fmul fast float %4444, %4447
  %4450 = fmul fast float %4445, %4447
  %4451 = fsub fast float %4448, %3743
  %4452 = fsub fast float %4449, %3744
  %4453 = fsub fast float %4450, %3745
  %4454 = fmul fast float %4451, %4331
  %4455 = fmul fast float %4452, %4331
  %4456 = fmul fast float %4453, %4331
  %4457 = fadd fast float %4454, %3743
  %4458 = fadd fast float %4455, %3744
  %4459 = fadd fast float %4456, %3745
  %4460 = call float @dx.op.binary.f32(i32 36, float %3752, float %4379)  ; FMin(a,b)
  %4461 = fsub fast float %4460, %3752
  %4462 = fmul fast float %4461, %4331
  %4463 = fadd fast float %4462, %3752
  %4464 = fsub fast float %4392, %3780
  %4465 = fmul fast float %4464, %4331
  %4466 = fadd fast float %4465, %3780
  br label %4467

; <label>:4467                                    ; preds = %4329, %4291, %4193
  %4468 = phi float [ %4457, %4329 ], [ %3743, %4291 ], [ %3743, %4193 ]
  %4469 = phi float [ %4458, %4329 ], [ %3744, %4291 ], [ %3744, %4193 ]
  %4470 = phi float [ %4459, %4329 ], [ %3745, %4291 ], [ %3745, %4193 ]
  %4471 = phi float [ %4440, %4329 ], [ %3777, %4291 ], [ %3777, %4193 ]
  %4472 = phi float [ %4441, %4329 ], [ %3778, %4291 ], [ %3778, %4193 ]
  %4473 = phi float [ %4442, %4329 ], [ %3779, %4291 ], [ %3779, %4193 ]
  %4474 = phi float [ %4431, %4329 ], [ %3792, %4291 ], [ %3792, %4193 ]
  %4475 = phi float [ %4432, %4329 ], [ %3793, %4291 ], [ %3793, %4193 ]
  %4476 = phi float [ %4433, %4329 ], [ %3794, %4291 ], [ %3794, %4193 ]
  %4477 = phi float [ %4466, %4329 ], [ %3780, %4291 ], [ %3780, %4193 ]
  %4478 = phi float [ %4463, %4329 ], [ %3752, %4291 ], [ %3752, %4193 ]
  br i1 %4191, label %4479, label %4752

; <label>:4479                                    ; preds = %4467
  %4480 = call float @dx.op.unary.f32(i32 23, float %4478)  ; Log(value)
  %4481 = fmul fast float %4480, 4.000000e+00
  %4482 = call float @dx.op.unary.f32(i32 21, float %4481)  ; Exp(value)
  %4483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4483, 0
  %4485 = fmul fast float %4484, %36
  %4486 = fmul fast float %4484, %37
  %4487 = fmul fast float %4484, %38
  %4488 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4489 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4490 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4491 = call float @dx.op.unary.f32(i32 23, float %4488)  ; Log(value)
  %4492 = call float @dx.op.unary.f32(i32 23, float %4489)  ; Log(value)
  %4493 = call float @dx.op.unary.f32(i32 23, float %4490)  ; Log(value)
  %4494 = fmul fast float %4491, 4.000000e+00
  %4495 = fmul fast float %4492, 4.000000e+00
  %4496 = fmul fast float %4493, 4.000000e+00
  %4497 = call float @dx.op.unary.f32(i32 21, float %4494)  ; Exp(value)
  %4498 = call float @dx.op.unary.f32(i32 21, float %4495)  ; Exp(value)
  %4499 = call float @dx.op.unary.f32(i32 21, float %4496)  ; Exp(value)
  %4500 = fadd fast float %4498, %4497
  %4501 = fadd fast float %4500, %4499
  %4502 = fdiv fast float 1.000000e+00, %4501
  %4503 = fmul fast float %4502, %4497
  %4504 = fcmp fast ogt float %45, 0.000000e+00
  %4505 = fcmp fast ogt float %46, 0.000000e+00
  %4506 = fcmp fast ogt float %47, 0.000000e+00
  %4507 = fcmp fast olt float %45, 0.000000e+00
  %4508 = fcmp fast olt float %46, 0.000000e+00
  %4509 = fcmp fast olt float %47, 0.000000e+00
  %4510 = zext i1 %4504 to i32
  %4511 = zext i1 %4505 to i32
  %4512 = zext i1 %4506 to i32
  %4513 = zext i1 %4507 to i32
  %4514 = zext i1 %4508 to i32
  %4515 = zext i1 %4509 to i32
  %4516 = sub nsw i32 %4510, %4513
  %4517 = sub nsw i32 %4511, %4514
  %4518 = sub nsw i32 %4512, %4515
  %4519 = call float @dx.op.unary.f32(i32 83, float %4485)  ; DerivCoarseX(value)
  %4520 = call float @dx.op.unary.f32(i32 83, float %4486)  ; DerivCoarseX(value)
  %4521 = call float @dx.op.unary.f32(i32 83, float %4487)  ; DerivCoarseX(value)
  %4522 = call float @dx.op.unary.f32(i32 84, float %4485)  ; DerivCoarseY(value)
  %4523 = call float @dx.op.unary.f32(i32 84, float %4486)  ; DerivCoarseY(value)
  %4524 = call float @dx.op.unary.f32(i32 84, float %4487)  ; DerivCoarseY(value)
  %4525 = fcmp fast ole float %226, %4503
  %4526 = fmul fast float %4502, %4500
  %4527 = fcmp fast ole float %226, %4526
  %4528 = select i1 %4527, float %4487, float %4485
  %4529 = select i1 %4527, float %4485, float %4486
  %4530 = select i1 %4525, float %4486, float %4528
  %4531 = select i1 %4525, float %4487, float %4529
  %4532 = select i1 %4527, float %4521, float %4519
  %4533 = select i1 %4527, float %4519, float %4520
  %4534 = select i1 %4525, float %4520, float %4532
  %4535 = select i1 %4525, float %4521, float %4533
  %4536 = select i1 %4527, float %4524, float %4522
  %4537 = select i1 %4527, float %4522, float %4523
  %4538 = select i1 %4525, float %4523, float %4536
  %4539 = select i1 %4525, float %4524, float %4537
  %4540 = call float @dx.op.unary.f32(i32 27, float %4530)  ; Round_ni(value)
  %4541 = call float @dx.op.unary.f32(i32 27, float %4531)  ; Round_ni(value)
  %4542 = fptosi float %4540 to i32
  %4543 = fptosi float %4541 to i32
  %4544 = xor i32 %4543, %4542
  %4545 = sitofp i32 %4544 to float
  %4546 = fptosi float %4545 to i32
  %4547 = sitofp i32 %4546 to float
  %4548 = fmul fast float %4547, 0x3FE3C6EF40000000
  %4549 = frem fast float %4540, 2.560000e+02
  %4550 = frem fast float %4541, 2.560000e+02
  %4551 = fptoui float %4549 to i32
  %4552 = fptoui float %4550 to i32
  %4553 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4551, i32 %4552, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4556 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4557 = fadd fast float %4554, %4548
  %4558 = fadd fast float %4555, %4548
  %4559 = fadd fast float %4556, %4548
  %4560 = call float @dx.op.unary.f32(i32 22, float %4557)  ; Frc(value)
  %4561 = call float @dx.op.unary.f32(i32 22, float %4558)  ; Frc(value)
  %4562 = call float @dx.op.unary.f32(i32 22, float %4559)  ; Frc(value)
  %4563 = fmul fast float %4562, 0x401921FB60000000
  %4564 = call float @dx.op.unary.f32(i32 13, float %4563)  ; Sin(value)
  %4565 = call float @dx.op.unary.f32(i32 12, float %4563)  ; Cos(value)
  %4566 = fsub fast float -0.000000e+00, %4565
  %4567 = fmul fast float %4565, %4530
  %4568 = call float @dx.op.tertiary.f32(i32 46, float %4564, float %4531, float %4567)  ; FMad(a,b,c)
  %4569 = fmul fast float %4564, %4530
  %4570 = call float @dx.op.tertiary.f32(i32 46, float %4566, float %4531, float %4569)  ; FMad(a,b,c)
  %4571 = fadd fast float %4568, %4560
  %4572 = fadd fast float %4570, %4561
  %4573 = extractvalue %dx.types.CBufRet.f32 %4483, 3
  %4574 = bitcast float %4573 to i32
  %4575 = icmp eq i32 %4574, 0
  br i1 %4575, label %4614, label %4576

; <label>:4576                                    ; preds = %4479
  %4577 = add i32 %4574, 0
  %4578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4579 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4578, %dx.types.Handle %75, float %4571, float %4572, float undef, float undef, i32 0, i32 0, i32 undef, float %4534, float %4535, float undef, float %4538, float %4539, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 1
  %4583 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4584 = fsub fast float 1.000000e+00, %4189
  %4585 = call float @dx.op.binary.f32(i32 35, float %4584, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4586 = bitcast float %4189 to i32
  %4587 = sitofp i32 %4586 to float
  %4588 = fadd fast float %4587, 0xC1CFBF8940000000
  %4589 = fmul fast float %4583, %4588
  %4590 = fadd fast float %4589, 0x41CFBF8940000000
  %4591 = fptosi float %4590 to i32
  %4592 = bitcast i32 %4591 to float
  %4593 = bitcast float %4585 to i32
  %4594 = sitofp i32 %4593 to float
  %4595 = fadd fast float %4594, 0xC1CFBF8940000000
  %4596 = fmul fast float %4595, %4583
  %4597 = fadd fast float %4596, 0x41CFBF8940000000
  %4598 = fptosi float %4597 to i32
  %4599 = bitcast i32 %4598 to float
  %4600 = fmul fast float %4592, %4582
  %4601 = fmul fast float %4599, %4582
  %4602 = fsub fast float %4585, %4600
  %4603 = fadd fast float %4601, %4585
  %4604 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4606 = fsub fast float %4580, %4604
  %4607 = fsub fast float %4605, %4604
  %4608 = bitcast float %4607 to i32
  %4609 = sub nsw i32 2129859010, %4608
  %4610 = bitcast i32 %4609 to float
  %4611 = fmul fast float %4610, %4606
  %4612 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4613 = fcmp fast olt float %4612, 0x3F70101020000000
  br i1 %4613, label %4752, label %4614

; <label>:4614                                    ; preds = %4576, %4479
  %4615 = phi float [ %4612, %4576 ], [ %4189, %4479 ]
  %4616 = fmul fast float %4615, %4482
  %4617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.i32 %4617, 1
  %4619 = extractvalue %dx.types.CBufRet.i32 %4617, 0
  %4620 = add i32 %4619, 0
  %4621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4622 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4621, %dx.types.Handle %74, float %4571, float %4572, float undef, float undef, i32 0, i32 0, i32 undef, float %4534, float %4535, float undef, float %4538, float %4539, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4623 = extractvalue %dx.types.ResRet.f32 %4622, 0
  %4624 = extractvalue %dx.types.ResRet.f32 %4622, 1
  %4625 = extractvalue %dx.types.ResRet.f32 %4622, 2
  %4626 = extractvalue %dx.types.ResRet.f32 %4622, 3
  %4627 = and i32 %4618, 255
  %4628 = uitofp i32 %4627 to float
  %4629 = lshr i32 %4618, 8
  %4630 = and i32 %4629, 255
  %4631 = uitofp i32 %4630 to float
  %4632 = fmul fast float %4626, %4628
  %4633 = fadd fast float %4632, %4631
  %4634 = fmul fast float %4633, 0x3F70101000000000
  %4635 = fadd fast float %4634, 0xBFB99999A0000000
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = fmul fast float %4636, 0x3FF1C71C80000000
  %4638 = call float @dx.op.binary.f32(i32 36, float %4634, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4639 = fsub fast float 1.000000e+00, %4637
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = fmul fast float %4640, %4623
  %4642 = fmul fast float %4640, %4624
  %4643 = fmul fast float %4640, %4625
  %4644 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4647 = fmul fast float %4637, %4623
  %4648 = fmul fast float %4637, %4624
  %4649 = fmul fast float %4637, %4625
  %4650 = fadd fast float %4647, %4638
  %4651 = fadd fast float %4648, %4638
  %4652 = fadd fast float %4649, %4638
  %4653 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4657 = extractvalue %dx.types.CBufRet.i32 %4656, 3
  %4658 = extractvalue %dx.types.CBufRet.i32 %4656, 2
  %4659 = add i32 %4658, 0
  %4660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4661 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4660, %dx.types.Handle %74, float %4571, float %4572, float undef, float undef, i32 0, i32 0, i32 undef, float %4534, float %4535, float undef, float %4538, float %4539, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4662 = extractvalue %dx.types.ResRet.f32 %4661, 0
  %4663 = extractvalue %dx.types.ResRet.f32 %4661, 1
  %4664 = extractvalue %dx.types.ResRet.f32 %4661, 2
  %4665 = extractvalue %dx.types.ResRet.f32 %4661, 3
  %4666 = and i32 %4657, 255
  %4667 = uitofp i32 %4666 to float
  %4668 = lshr i32 %4657, 8
  %4669 = and i32 %4668, 255
  %4670 = uitofp i32 %4669 to float
  %4671 = lshr i32 %4657, 16
  %4672 = and i32 %4671, 255
  %4673 = uitofp i32 %4672 to float
  %4674 = fmul fast float %4673, 0x3F70101000000000
  %4675 = fmul fast float %4662, %4667
  %4676 = fadd fast float %4675, %4670
  %4677 = fmul fast float %4676, 0x3F70101000000000
  %4678 = fadd fast float %4663, -5.000000e-01
  %4679 = fadd fast float %4665, -5.000000e-01
  %4680 = fmul fast float %4678, %4674
  %4681 = fmul fast float %4679, %4674
  %4682 = fadd fast float %4680, 5.000000e-01
  %4683 = fadd fast float %4681, 5.000000e-01
  %4684 = fmul fast float %4682, 2.000000e+00
  %4685 = fadd fast float %4684, -1.000000e+00
  %4686 = fmul fast float %4683, 2.000000e+00
  %4687 = fadd fast float %4686, -1.000000e+00
  %4688 = fadd fast float %4685, %4687
  %4689 = fmul fast float %4688, 5.000000e-01
  %4690 = fsub fast float %4685, %4687
  %4691 = fmul fast float %4690, 5.000000e-01
  %4692 = call float @dx.op.unary.f32(i32 6, float %4689)  ; FAbs(value)
  %4693 = fsub fast float 1.000000e+00, %4692
  %4694 = call float @dx.op.unary.f32(i32 6, float %4691)  ; FAbs(value)
  %4695 = fsub fast float %4693, %4694
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4691, float %4695, float %4689, float %4691, float %4695)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.unary.f32(i32 25, float %4696)  ; Rsqrt(value)
  %4698 = fmul fast float %4689, %4697
  %4699 = fmul fast float %4691, %4697
  %4700 = select i1 %4527, i32 %4517, i32 %4518
  %4701 = select i1 %4525, i32 %4516, i32 %4700
  %4702 = sitofp i32 %4701 to float
  %4703 = fmul fast float %4695, %4702
  %4704 = fmul fast float %4703, %4697
  %4705 = select i1 %4527, float %4704, float %4699
  %4706 = select i1 %4527, float %4699, float %4704
  %4707 = select i1 %4525, float %4704, float %4698
  %4708 = select i1 %4525, float %4699, float %4705
  %4709 = select i1 %4525, float %4698, float %4706
  %4710 = fsub fast float %4644, %4474
  %4711 = fsub fast float %4645, %4475
  %4712 = fsub fast float %4646, %4476
  %4713 = fmul fast float %4710, %4616
  %4714 = fmul fast float %4711, %4616
  %4715 = fmul fast float %4712, %4616
  %4716 = fadd fast float %4713, %4474
  %4717 = fadd fast float %4714, %4475
  %4718 = fadd fast float %4715, %4476
  %4719 = fsub fast float %4653, %4471
  %4720 = fsub fast float %4654, %4472
  %4721 = fsub fast float %4655, %4473
  %4722 = fmul fast float %4719, %4616
  %4723 = fmul fast float %4720, %4616
  %4724 = fmul fast float %4721, %4616
  %4725 = fadd fast float %4722, %4471
  %4726 = fadd fast float %4723, %4472
  %4727 = fadd fast float %4724, %4473
  %4728 = fadd fast float %4707, %4468
  %4729 = fadd fast float %4708, %4469
  %4730 = fadd fast float %4709, %4470
  %4731 = call float @dx.op.dot3.f32(i32 55, float %4728, float %4729, float %4730, float %4728, float %4729, float %4730)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = call float @dx.op.unary.f32(i32 25, float %4731)  ; Rsqrt(value)
  %4733 = fmul fast float %4728, %4732
  %4734 = fmul fast float %4729, %4732
  %4735 = fmul fast float %4730, %4732
  %4736 = fsub fast float %4733, %4468
  %4737 = fsub fast float %4734, %4469
  %4738 = fsub fast float %4735, %4470
  %4739 = fmul fast float %4736, %4616
  %4740 = fmul fast float %4737, %4616
  %4741 = fmul fast float %4738, %4616
  %4742 = fadd fast float %4739, %4468
  %4743 = fadd fast float %4740, %4469
  %4744 = fadd fast float %4741, %4470
  %4745 = call float @dx.op.binary.f32(i32 36, float %4478, float %4664)  ; FMin(a,b)
  %4746 = fsub fast float %4745, %4478
  %4747 = fmul fast float %4746, %4616
  %4748 = fadd fast float %4747, %4478
  %4749 = fsub fast float %4677, %4477
  %4750 = fmul fast float %4749, %4616
  %4751 = fadd fast float %4750, %4477
  br label %4752

; <label>:4752                                    ; preds = %4614, %4576, %4467, %4183
  %4753 = phi float [ %4742, %4614 ], [ %4468, %4576 ], [ %4468, %4467 ], [ %3743, %4183 ]
  %4754 = phi float [ %4743, %4614 ], [ %4469, %4576 ], [ %4469, %4467 ], [ %3744, %4183 ]
  %4755 = phi float [ %4744, %4614 ], [ %4470, %4576 ], [ %4470, %4467 ], [ %3745, %4183 ]
  %4756 = phi float [ %4725, %4614 ], [ %4471, %4576 ], [ %4471, %4467 ], [ %3777, %4183 ]
  %4757 = phi float [ %4726, %4614 ], [ %4472, %4576 ], [ %4472, %4467 ], [ %3778, %4183 ]
  %4758 = phi float [ %4727, %4614 ], [ %4473, %4576 ], [ %4473, %4467 ], [ %3779, %4183 ]
  %4759 = phi float [ %4716, %4614 ], [ %4474, %4576 ], [ %4474, %4467 ], [ %3792, %4183 ]
  %4760 = phi float [ %4717, %4614 ], [ %4475, %4576 ], [ %4475, %4467 ], [ %3793, %4183 ]
  %4761 = phi float [ %4718, %4614 ], [ %4476, %4576 ], [ %4476, %4467 ], [ %3794, %4183 ]
  %4762 = phi float [ %4751, %4614 ], [ %4477, %4576 ], [ %4477, %4467 ], [ %3780, %4183 ]
  %4763 = phi float [ %4748, %4614 ], [ %4478, %4576 ], [ %4478, %4467 ], [ %3752, %4183 ]
  %4764 = fcmp fast une float %4187, 0.000000e+00
  %4765 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = call float @dx.op.unary.f32(i32 25, float %4765)  ; Rsqrt(value)
  br i1 %4764, label %4774, label %4767

; <label>:4767                                    ; preds = %4752
  %4768 = fmul fast float %4766, %165
  %4769 = fmul fast float %4766, %166
  %4770 = fmul fast float %4766, %167
  %4771 = fsub fast float -0.000000e+00, %4768
  %4772 = fsub fast float -0.000000e+00, %4769
  %4773 = fsub fast float -0.000000e+00, %4770
  br label %4941

; <label>:4774                                    ; preds = %4752
  %4775 = fmul fast float %165, %4766
  %4776 = fsub fast float -0.000000e+00, %4775
  %4777 = fmul fast float %166, %4766
  %4778 = fsub fast float -0.000000e+00, %4777
  %4779 = fmul fast float %167, %4766
  %4780 = fsub fast float -0.000000e+00, %4779
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4778, float %4780, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = fmul fast float %4187, 2.500000e+00
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = fmul fast float %4187, 0x4013FFFFE0000000
  %4785 = fadd fast float %4784, 0xBFFFFFFFE0000000
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = fmul fast float %4187, 0x4004000020000000
  %4788 = fadd fast float %4787, 0xBFF8000040000000
  %4789 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4790 = fmul fast float %3759, 1.000000e+01
  %4791 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4792 = fmul fast float %4791, 2.000000e+00
  %4793 = fsub fast float 3.000000e+00, %4792
  %4794 = fmul fast float %4791, %4791
  %4795 = fmul fast float %4794, %4793
  %4796 = fsub fast float 1.000000e+00, %4795
  %4797 = fsub fast float 0x3FE3333340000000, %4762
  %4798 = fmul fast float %4797, 0x400AAAAAA0000000
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fmul fast float %4796, %4799
  %4801 = fmul fast float %4759, 0x3FEA2B8620000000
  %4802 = fmul fast float %4760, 0x3FEA2B8620000000
  %4803 = fmul fast float %4761, 0x3FEA2B8620000000
  %4804 = fadd fast float %4801, 0x3FC81DFBA0000000
  %4805 = fmul fast float %4804, %4759
  %4806 = fadd fast float %4805, 0x3F910E6020000000
  %4807 = fadd fast float %4802, 0x3FC81DFBA0000000
  %4808 = fmul fast float %4807, %4760
  %4809 = fadd fast float %4808, 0x3F910E6020000000
  %4810 = fadd fast float %4803, 0x3FC81DFBA0000000
  %4811 = fmul fast float %4810, %4761
  %4812 = fadd fast float %4811, 0x3F910E6020000000
  %4813 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4814 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4815 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4816 = fsub fast float %4813, %4759
  %4817 = fsub fast float %4814, %4760
  %4818 = fsub fast float %4815, %4761
  %4819 = fmul fast float %4816, %4783
  %4820 = fmul fast float %4819, %4800
  %4821 = fmul fast float %4817, %4783
  %4822 = fmul fast float %4821, %4800
  %4823 = fmul fast float %4818, %4783
  %4824 = fmul fast float %4823, %4800
  %4825 = fadd fast float %4820, %4759
  %4826 = fadd fast float %4822, %4760
  %4827 = fadd fast float %4824, %4761
  %4828 = fmul fast float %4763, %4763
  %4829 = fmul fast float %4828, %4828
  %4830 = fadd fast float %4786, 1.000000e+00
  %4831 = fsub fast float %4830, %4800
  %4832 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4833 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = fsub fast float 1.000000e+00, %4829
  %4836 = call float @dx.op.binary.f32(i32 36, float %4832, float %4835)  ; FMin(a,b)
  %4837 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4838 = call float @dx.op.binary.f32(i32 35, float %4836, float %4837)  ; FMax(a,b)
  %4839 = fadd fast float %4834, 0xBFE4CCCCC0000000
  %4840 = fmul fast float %4839, 0x4006DB6DA0000000
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = fmul fast float %4841, 2.000000e+00
  %4843 = fsub fast float 3.000000e+00, %4842
  %4844 = bitcast float %4756 to i32
  %4845 = ashr i32 %4844, 1
  %4846 = add nsw i32 %4845, 532487669
  %4847 = bitcast i32 %4846 to float
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = bitcast float %4848 to i32
  %4850 = sub nsw i32 2129859010, %4849
  %4851 = bitcast i32 %4850 to float
  %4852 = fmul fast float %4851, 2.000000e+00
  %4853 = bitcast float %4757 to i32
  %4854 = ashr i32 %4853, 1
  %4855 = add nsw i32 %4854, 532487669
  %4856 = bitcast i32 %4855 to float
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = bitcast float %4857 to i32
  %4859 = sub nsw i32 2129859010, %4858
  %4860 = bitcast i32 %4859 to float
  %4861 = fmul fast float %4860, 2.000000e+00
  %4862 = bitcast float %4758 to i32
  %4863 = ashr i32 %4862, 1
  %4864 = add nsw i32 %4863, 532487669
  %4865 = bitcast i32 %4864 to float
  %4866 = fsub fast float 1.000000e+00, %4865
  %4867 = bitcast float %4866 to i32
  %4868 = sub nsw i32 2129859010, %4867
  %4869 = bitcast i32 %4868 to float
  %4870 = fmul fast float %4869, 2.000000e+00
  %4871 = fsub fast float 0x4002A9FBE0000000, %4852
  %4872 = fadd fast float %4852, 0x3FD54FDF00000000
  %4873 = bitcast float %4872 to i32
  %4874 = sub nsw i32 2129859010, %4873
  %4875 = bitcast i32 %4874 to float
  %4876 = fmul fast float %4875, %4871
  %4877 = fmul fast float %4876, %4876
  %4878 = fsub fast float 0x4002A9FBE0000000, %4861
  %4879 = fadd fast float %4861, 0x3FD54FDF00000000
  %4880 = bitcast float %4879 to i32
  %4881 = sub nsw i32 2129859010, %4880
  %4882 = bitcast i32 %4881 to float
  %4883 = fmul fast float %4882, %4878
  %4884 = fmul fast float %4883, %4883
  %4885 = fsub fast float 0x4002A9FBE0000000, %4870
  %4886 = fadd fast float %4870, 0x3FD54FDF00000000
  %4887 = bitcast float %4886 to i32
  %4888 = sub nsw i32 2129859010, %4887
  %4889 = bitcast i32 %4888 to float
  %4890 = fmul fast float %4889, %4885
  %4891 = fmul fast float %4890, %4890
  %4892 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4877)  ; FMax(a,b)
  %4893 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4884)  ; FMax(a,b)
  %4894 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4891)  ; FMax(a,b)
  %4895 = fsub fast float 1.000000e+00, %4781
  %4896 = fadd fast float %4895, %4796
  %4897 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4898 = fsub fast float 1.000000e+00, %4168
  %4899 = fmul fast float %4838, %4898
  %4900 = fmul fast float %4841, %4841
  %4901 = fmul fast float %4900, %4899
  %4902 = fmul fast float %4901, %4843
  %4903 = fmul fast float %4898, 0xBFE99999A0000000
  %4904 = fmul fast float %4903, %4783
  %4905 = fmul fast float %4904, %4800
  %4906 = fadd fast float %4905, 1.000000e+00
  %4907 = fadd fast float %4762, -1.000000e+00
  %4908 = fmul fast float %4906, %4907
  %4909 = fadd fast float %4908, 1.000000e+00
  %4910 = fsub fast float %4892, %4756
  %4911 = fsub fast float %4893, %4757
  %4912 = fsub fast float %4894, %4758
  %4913 = fmul fast float %4902, %4910
  %4914 = fmul fast float %4902, %4911
  %4915 = fmul fast float %4902, %4912
  %4916 = fadd fast float %4913, %4756
  %4917 = fadd fast float %4914, %4757
  %4918 = fadd fast float %4915, %4758
  %4919 = fsub fast float %85, %4753
  %4920 = fsub fast float %86, %4754
  %4921 = fsub fast float %87, %4755
  %4922 = fmul fast float %4902, %4919
  %4923 = fmul fast float %4902, %4920
  %4924 = fmul fast float %4902, %4921
  %4925 = fadd fast float %4922, %4753
  %4926 = fadd fast float %4923, %4754
  %4927 = fadd fast float %4924, %4755
  %4928 = fmul fast float %4902, %4897
  %4929 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4930 = fsub fast float 1.000000e+00, %4929
  %4931 = fmul fast float %4928, %4930
  %4932 = fadd fast float %4931, %4929
  %4933 = fsub fast float 1.000000e+00, %4763
  %4934 = fmul fast float %4902, %4933
  %4935 = fadd fast float %4934, %4763
  %4936 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4937 = call float @dx.op.unary.f32(i32 25, float %4936)  ; Rsqrt(value)
  %4938 = fmul fast float %4925, %4937
  %4939 = fmul fast float %4926, %4937
  %4940 = fmul fast float %4927, %4937
  br label %4941

; <label>:4941                                    ; preds = %4774, %4767
  %4942 = phi float [ %4773, %4767 ], [ %4780, %4774 ]
  %4943 = phi float [ %4772, %4767 ], [ %4778, %4774 ]
  %4944 = phi float [ %4771, %4767 ], [ %4776, %4774 ]
  %4945 = phi float [ %4770, %4767 ], [ %4779, %4774 ]
  %4946 = phi float [ %4769, %4767 ], [ %4777, %4774 ]
  %4947 = phi float [ %4768, %4767 ], [ %4775, %4774 ]
  %4948 = phi float [ %4753, %4767 ], [ %4938, %4774 ]
  %4949 = phi float [ %4754, %4767 ], [ %4939, %4774 ]
  %4950 = phi float [ %4755, %4767 ], [ %4940, %4774 ]
  %4951 = phi float [ %4756, %4767 ], [ %4916, %4774 ]
  %4952 = phi float [ %4757, %4767 ], [ %4917, %4774 ]
  %4953 = phi float [ %4758, %4767 ], [ %4918, %4774 ]
  %4954 = phi float [ %4759, %4767 ], [ %4825, %4774 ]
  %4955 = phi float [ %4760, %4767 ], [ %4826, %4774 ]
  %4956 = phi float [ %4761, %4767 ], [ %4827, %4774 ]
  %4957 = phi float [ %4762, %4767 ], [ %4932, %4774 ]
  %4958 = phi float [ %4763, %4767 ], [ %4935, %4774 ]
  %4959 = select i1 %215, float 0.000000e+00, float %4953
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float %4944, float %4943, float %4942)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4962 = call float @dx.op.dot3.f32(i32 55, float %4947, float %4946, float %4945, float %4948, float %4949, float %4950)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = fmul fast float %4962, 2.000000e+00
  %4964 = fmul fast float %4963, %4948
  %4965 = fmul fast float %4963, %4949
  %4966 = fmul fast float %4963, %4950
  %4967 = fsub fast float %4947, %4964
  %4968 = fsub fast float %4946, %4965
  %4969 = fsub fast float %4945, %4966
  %4970 = call float @dx.op.binary.f32(i32 36, float %4958, float 1.000000e+00)  ; FMin(a,b)
  %4971 = fsub fast float 1.000000e+00, %4958
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = fsub fast float 1.000000e+00, %55
  %4975 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4976 = call float @dx.op.binary.f32(i32 35, float %4975, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4977 = fdiv fast float %4974, %4976
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fmul fast float %4979, 5.000000e-01
  %4981 = fadd fast float %4980, 5.000000e-01
  %4982 = fmul fast float %4981, %55
  %4983 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4985 = fmul fast float %4984, %4977
  %4986 = fadd fast float %4982, %4985
  %4987 = fsub fast float 5.000000e-01, %4980
  %4988 = fmul fast float %4987, %4954
  %4989 = fmul fast float %4987, %4955
  %4990 = fmul fast float %4987, %4956
  %4991 = fadd fast float %4986, %4988
  %4992 = fadd fast float %4986, %4989
  %4993 = fadd fast float %4986, %4990
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4967, float %4968, float %4969, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4996 = fmul fast float %4995, 5.000000e-01
  %4997 = fadd fast float %4996, 5.000000e-01
  %4998 = fmul fast float %4997, %55
  %4999 = call float @dx.op.dot3.f32(i32 55, float %4967, float %4968, float %4969, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = fmul fast float %5000, %4977
  %5002 = fadd fast float %4998, %5001
  %5003 = fsub fast float 5.000000e-01, %4996
  %5004 = fmul fast float %5003, %4954
  %5005 = fmul fast float %5003, %4955
  %5006 = fmul fast float %5003, %4956
  %5007 = fadd fast float %5002, %5004
  %5008 = fadd fast float %5002, %5005
  %5009 = fadd fast float %5002, %5006
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = call float @dx.op.binary.f32(i32 36, float %4954, float %5011)  ; FMin(a,b)
  %5013 = fsub fast float 1.000000e+00, %4970
  %5014 = fmul fast float %5012, %5013
  %5015 = fsub fast float 1.000000e+00, %5014
  %5016 = bitcast float %5015 to i32
  %5017 = sub nsw i32 2129859010, %5016
  %5018 = bitcast i32 %5017 to float
  %5019 = call float @dx.op.binary.f32(i32 36, float %4955, float %5011)  ; FMin(a,b)
  %5020 = fmul fast float %5019, %5013
  %5021 = fsub fast float 1.000000e+00, %5020
  %5022 = bitcast float %5021 to i32
  %5023 = sub nsw i32 2129859010, %5022
  %5024 = bitcast i32 %5023 to float
  %5025 = call float @dx.op.binary.f32(i32 36, float %4956, float %5011)  ; FMin(a,b)
  %5026 = fmul fast float %5025, %5013
  %5027 = fsub fast float 1.000000e+00, %5026
  %5028 = bitcast float %5027 to i32
  %5029 = sub nsw i32 2129859010, %5028
  %5030 = bitcast i32 %5029 to float
  %5031 = fmul fast float %4970, %56
  %5032 = fmul fast float %5031, %4991
  %5033 = fmul fast float %5032, %5018
  %5034 = fmul fast float %4970, %57
  %5035 = fmul fast float %5034, %4992
  %5036 = fmul fast float %5035, %5024
  %5037 = fmul fast float %4970, %58
  %5038 = fmul fast float %5037, %4993
  %5039 = fmul fast float %5038, %5030
  %5040 = call float @dx.op.binary.f32(i32 36, float %4951, float %5011)  ; FMin(a,b)
  %5041 = fmul fast float %5040, %5013
  %5042 = fsub fast float 1.000000e+00, %5041
  %5043 = bitcast float %5042 to i32
  %5044 = sub nsw i32 2129859010, %5043
  %5045 = bitcast i32 %5044 to float
  %5046 = call float @dx.op.binary.f32(i32 36, float %4952, float %5011)  ; FMin(a,b)
  %5047 = fmul fast float %5046, %5013
  %5048 = fsub fast float 1.000000e+00, %5047
  %5049 = bitcast float %5048 to i32
  %5050 = sub nsw i32 2129859010, %5049
  %5051 = bitcast i32 %5050 to float
  %5052 = call float @dx.op.binary.f32(i32 36, float %4959, float %5011)  ; FMin(a,b)
  %5053 = fmul fast float %5052, %5013
  %5054 = fsub fast float 1.000000e+00, %5053
  %5055 = bitcast float %5054 to i32
  %5056 = sub nsw i32 2129859010, %5055
  %5057 = bitcast i32 %5056 to float
  %5058 = fmul fast float %5031, %5007
  %5059 = fmul fast float %5058, %5045
  %5060 = fmul fast float %5034, %5008
  %5061 = fmul fast float %5060, %5051
  %5062 = fmul fast float %5037, %5009
  %5063 = fmul fast float %5062, %5057
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5036, float %5039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = select i1 %215, float 0.000000e+00, float %5033
  %5066 = select i1 %215, float %5064, float %5036
  %5067 = select i1 %215, float 0.000000e+00, float %5039
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5061, float %5063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = select i1 %215, float 0.000000e+00, float %5059
  %5070 = select i1 %215, float %5068, float %5061
  %5071 = select i1 %215, float 0.000000e+00, float %5063
  %5072 = fmul fast float %4961, 9.843750e-01
  %5073 = fmul fast float %4957, 9.843750e-01
  %5074 = fadd fast float %5072, 7.812500e-03
  %5075 = fadd fast float %5073, 7.812500e-03
  %5076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5074, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5077 = extractvalue %dx.types.ResRet.f32 %5076, 2
  %5078 = extractvalue %dx.types.ResRet.f32 %5076, 3
  %5079 = fmul fast float %5077, %4951
  %5080 = fmul fast float %5077, %4952
  %5081 = fmul fast float %5077, %4959
  %5082 = fadd fast float %5079, %5078
  %5083 = fadd fast float %5080, %5078
  %5084 = fadd fast float %5081, %5078
  %5085 = fcmp fast ogt float %3753, 0.000000e+00
  br i1 %5085, label %5086, label %5112

; <label>:5086                                    ; preds = %4941
  %5087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3753, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5088 = extractvalue %dx.types.ResRet.f32 %5087, 0
  %5089 = extractvalue %dx.types.ResRet.f32 %5087, 1
  %5090 = extractvalue %dx.types.ResRet.f32 %5087, 2
  %5091 = fadd fast float %5088, -5.000000e-01
  %5092 = fadd fast float %5089, -5.000000e-01
  %5093 = fadd fast float %5090, -5.000000e-01
  %5094 = fsub fast float 1.000000e+00, %4951
  %5095 = fsub fast float 1.000000e+00, %4952
  %5096 = fsub fast float 1.000000e+00, %4959
  %5097 = fmul fast float %4951, 4.000000e+00
  %5098 = fmul fast float %5097, %5094
  %5099 = fmul fast float %5098, %5091
  %5100 = fmul fast float %4952, 4.000000e+00
  %5101 = fmul fast float %5100, %5095
  %5102 = fmul fast float %5101, %5092
  %5103 = fmul fast float %4959, 4.000000e+00
  %5104 = fmul fast float %5103, %5096
  %5105 = fmul fast float %5104, %5093
  %5106 = fadd fast float %5099, %5082
  %5107 = fadd fast float %5102, %5083
  %5108 = fadd fast float %5105, %5084
  %5109 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5110 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  br label %5112

; <label>:5112                                    ; preds = %5086, %4941
  %5113 = phi float [ %5109, %5086 ], [ %5082, %4941 ]
  %5114 = phi float [ %5110, %5086 ], [ %5083, %4941 ]
  %5115 = phi float [ %5111, %5086 ], [ %5084, %4941 ]
  %5116 = call float @dx.op.binary.f32(i32 35, float %5114, float %5115)  ; FMax(a,b)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5113, float %5116)  ; FMax(a,b)
  %5118 = fsub fast float 1.000000e+00, %5117
  %5119 = fmul fast float %5118, %5065
  %5120 = fmul fast float %5118, %5066
  %5121 = fmul fast float %5118, %5067
  %5122 = call float @dx.op.dot3.f32(i32 55, float %4954, float %4955, float %4956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = fcmp fast ogt float %5122, 0x3E7FF19E20000000
  %5124 = fdiv fast float 1.000000e+00, %5122
  %5125 = select i1 %5123, float %5124, float 0.000000e+00
  %5126 = fmul fast float %5125, %4954
  %5127 = fmul fast float %5125, %4955
  %5128 = fmul fast float %5125, %4956
  %5129 = fadd fast float %5126, -1.000000e+00
  %5130 = fadd fast float %5127, -1.000000e+00
  %5131 = fadd fast float %5128, -1.000000e+00
  %5132 = fmul fast float %5129, 5.000000e-01
  %5133 = fmul fast float %5130, 5.000000e-01
  %5134 = fmul fast float %5131, 5.000000e-01
  %5135 = fadd fast float %5132, 1.000000e+00
  %5136 = fadd fast float %5133, 1.000000e+00
  %5137 = fadd fast float %5134, 1.000000e+00
  %5138 = fmul fast float %5113, %5069
  %5139 = fmul fast float %5114, %5070
  %5140 = fmul fast float %5115, %5071
  %5141 = fsub fast float 1.000000e+00, %4961
  %5142 = bitcast float %5141 to i32
  %5143 = sitofp i32 %5142 to float
  %5144 = fmul fast float %5143, 5.000000e+00
  %5145 = fadd fast float %5144, 0xC1EFBF8940000000
  %5146 = fptosi float %5145 to i32
  %5147 = bitcast i32 %5146 to float
  %5148 = fmul fast float %5147, %3754
  %5149 = fmul fast float %5065, %5148
  %5150 = fmul fast float %5149, %5118
  %5151 = fmul fast float %5150, %5135
  %5152 = fmul fast float %5066, %5148
  %5153 = fmul fast float %5152, %5118
  %5154 = fmul fast float %5153, %5136
  %5155 = fmul fast float %5067, %5148
  %5156 = fmul fast float %5155, %5118
  %5157 = fmul fast float %5156, %5137
  %5158 = fmul fast float %5119, %3750
  %5159 = fmul fast float %5120, %3750
  %5160 = fmul fast float %5121, %3750
  %5161 = fadd fast float %5138, %3746
  %5162 = fadd fast float %5161, %5151
  %5163 = fmul fast float %5162, %3750
  %5164 = fadd fast float %5139, %3747
  %5165 = fadd fast float %5164, %5154
  %5166 = fmul fast float %5165, %3750
  %5167 = fadd fast float %5140, %3748
  %5168 = fadd fast float %5167, %5157
  %5169 = fmul fast float %5168, %3750
  %5170 = bitcast i32 %4973 to float
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 3
  %5173 = fcmp fast oeq float %5172, 0.000000e+00
  br i1 %5173, label %5401, label %5174

; <label>:5174                                    ; preds = %5112
  %5175 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5176 = extractvalue %dx.types.CBufRet.f32 %5171, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5171, 2
  %5178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5178, 0
  %5180 = extractvalue %dx.types.CBufRet.f32 %5178, 1
  %5181 = extractvalue %dx.types.CBufRet.f32 %5178, 2
  %5182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.f32 %5182, 0
  %5184 = extractvalue %dx.types.CBufRet.f32 %5182, 1
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = select i1 %215, float %5183, float %5179
  %5187 = select i1 %215, float %5185, float %5180
  %5188 = select i1 %215, float %5184, float %5181
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 1
  %5191 = fcmp fast une float %5190, 0.000000e+00
  br i1 %5191, label %5192, label %5209

; <label>:5192                                    ; preds = %5174
  %5193 = fptoui float %78 to i32
  %5194 = fptoui float %79 to i32
  %5195 = lshr i32 %5193, 4
  %5196 = lshr i32 %5194, 4
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 0
  %5199 = fptoui float %5198 to i32
  %5200 = add i32 %5199, 15
  %5201 = lshr i32 %5200, 4
  %5202 = mul i32 %5201, %5196
  %5203 = add i32 %5202, %5195
  %5204 = shl i32 %5203, 3
  %5205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5204, i32 undef)  ; BufferLoad(srv,index,wot)
  %5206 = extractvalue %dx.types.ResRet.i32 %5205, 0
  %5207 = and i32 %5206, -268435456
  %5208 = icmp eq i32 %5207, -1342177280
  br i1 %5208, label %5219, label %5209

; <label>:5209                                    ; preds = %5192, %5174
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5210, 2
  %5212 = extractvalue %dx.types.CBufRet.f32 %5210, 3
  %5213 = fmul fast float %5211, %78
  %5214 = fmul fast float %5212, %79
  %5215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5213, float %5214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.ResRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.ResRet.f32 %5215, 2
  br label %5219

; <label>:5219                                    ; preds = %5209, %5192
  %5220 = phi float [ %5216, %5209 ], [ 0.000000e+00, %5192 ]
  %5221 = phi float [ %5217, %5209 ], [ 0.000000e+00, %5192 ]
  %5222 = phi float [ %5218, %5209 ], [ 0.000000e+00, %5192 ]
  %5223 = call float @dx.op.binary.f32(i32 36, float %5221, float %5222)  ; FMin(a,b)
  %5224 = call float @dx.op.binary.f32(i32 36, float %5220, float %5223)  ; FMin(a,b)
  %5225 = fcmp fast ogt float %5224, 0.000000e+00
  br i1 %5225, label %5226, label %5401, !dx.controlflow.hints !76

; <label>:5226                                    ; preds = %5219
  %5227 = fmul fast float %5220, %5186
  %5228 = fmul fast float %5221, %5187
  %5229 = fmul fast float %5222, %5188
  %5230 = fsub fast float %5175, %4947
  %5231 = fsub fast float %5176, %4946
  %5232 = fsub fast float %5177, %4945
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5230, float %5231, float %5232, float %5230, float %5231, float %5232)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = call float @dx.op.unary.f32(i32 25, float %5233)  ; Rsqrt(value)
  %5235 = fmul fast float %5234, %5230
  %5236 = fmul fast float %5234, %5231
  %5237 = fmul fast float %5234, %5232
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %4948, float %4949, float %4950)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4943, float %4942, float %5235, float %5236, float %5237)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5241 = fmul fast float %5240, %5240
  %5242 = fmul fast float %5241, %5170
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fmul fast float %5243, %5240
  %5245 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float %5235, float %5236, float %5237)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = fmul fast float %5245, %5245
  %5247 = call float @dx.op.unary.f32(i32 6, float %5238)  ; FAbs(value)
  %5248 = fsub fast float 1.000000e+00, %4957
  %5249 = call float @dx.op.binary.f32(i32 35, float %5248, float 0x3F847AE140000000)  ; FMax(a,b)
  %5250 = fmul fast float %5249, %5249
  %5251 = fmul fast float %5250, %5250
  %5252 = fsub fast float 1.000000e+00, %5251
  %5253 = fmul fast float %4961, %4961
  %5254 = fmul fast float %5253, %5252
  %5255 = fadd fast float %5254, %5251
  %5256 = bitcast float %5255 to i32
  %5257 = ashr i32 %5256, 1
  %5258 = add nsw i32 %5257, 532487669
  %5259 = bitcast i32 %5258 to float
  %5260 = fadd fast float %5259, %4961
  %5261 = fmul fast float %5251, %5246
  %5262 = fsub fast float 1.000000e+00, %5246
  %5263 = fadd fast float %5262, %5261
  %5264 = fmul fast float %5247, %5247
  %5265 = fmul fast float %5264, %5252
  %5266 = fadd fast float %5265, %5251
  %5267 = bitcast float %5266 to i32
  %5268 = ashr i32 %5267, 1
  %5269 = add nsw i32 %5268, 532487669
  %5270 = bitcast i32 %5269 to float
  %5271 = fadd fast float %5270, %5247
  %5272 = fmul fast float %5263, %5263
  %5273 = fmul fast float %5272, %5260
  %5274 = fmul fast float %5273, %5271
  %5275 = fdiv fast float 0x3FF0A00000000000, %5274
  %5276 = fmul fast float %5275, %5251
  %5277 = call float @dx.op.unary.f32(i32 6, float %5239)  ; FAbs(value)
  %5278 = fsub fast float 1.000000e+00, %5277
  %5279 = bitcast float %5278 to i32
  %5280 = sitofp i32 %5279 to float
  %5281 = fmul fast float %5280, 5.000000e+00
  %5282 = fadd fast float %5281, 0xC1EFBF8940000000
  %5283 = fptosi float %5282 to i32
  %5284 = bitcast i32 %5283 to float
  %5285 = fsub fast float 1.000000e+00, %4951
  %5286 = fsub fast float 1.000000e+00, %4952
  %5287 = fsub fast float 1.000000e+00, %4959
  %5288 = fmul fast float %5284, %5285
  %5289 = fmul fast float %5284, %5286
  %5290 = fmul fast float %5284, %5287
  %5291 = fadd fast float %5288, %4951
  %5292 = fadd fast float %5289, %4952
  %5293 = fadd fast float %5290, %4959
  br i1 %5085, label %5294, label %5317

; <label>:5294                                    ; preds = %5226
  %5295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3753, float %5277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.ResRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.ResRet.f32 %5295, 2
  %5299 = fadd fast float %5296, -5.000000e-01
  %5300 = fadd fast float %5297, -5.000000e-01
  %5301 = fadd fast float %5298, -5.000000e-01
  %5302 = fmul fast float %4951, 4.000000e+00
  %5303 = fmul fast float %5302, %5285
  %5304 = fmul fast float %5303, %5299
  %5305 = fmul fast float %4952, 4.000000e+00
  %5306 = fmul fast float %5305, %5286
  %5307 = fmul fast float %5306, %5300
  %5308 = fmul fast float %4959, 4.000000e+00
  %5309 = fmul fast float %5308, %5287
  %5310 = fmul fast float %5309, %5301
  %5311 = fadd fast float %5304, %5291
  %5312 = fadd fast float %5307, %5292
  %5313 = fadd fast float %5310, %5293
  %5314 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  br label %5317

; <label>:5317                                    ; preds = %5294, %5226
  %5318 = phi float [ %5314, %5294 ], [ %5291, %5226 ]
  %5319 = phi float [ %5315, %5294 ], [ %5292, %5226 ]
  %5320 = phi float [ %5316, %5294 ], [ %5293, %5226 ]
  %5321 = fmul fast float %5238, 9.843750e-01
  %5322 = fadd fast float %5321, 7.812500e-03
  %5323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5322, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5324 = extractvalue %dx.types.ResRet.f32 %5323, 2
  %5325 = extractvalue %dx.types.ResRet.f32 %5323, 3
  %5326 = fmul fast float %5324, %4951
  %5327 = fmul fast float %5324, %4952
  %5328 = fmul fast float %5324, %4959
  %5329 = fadd fast float %5326, %5325
  %5330 = fadd fast float %5327, %5325
  %5331 = fadd fast float %5328, %5325
  br i1 %5085, label %5332, label %5355

; <label>:5332                                    ; preds = %5317
  %5333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3753, float %5238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.ResRet.f32 %5333, 1
  %5336 = extractvalue %dx.types.ResRet.f32 %5333, 2
  %5337 = fadd fast float %5334, -5.000000e-01
  %5338 = fadd fast float %5335, -5.000000e-01
  %5339 = fadd fast float %5336, -5.000000e-01
  %5340 = fmul fast float %4951, 4.000000e+00
  %5341 = fmul fast float %5340, %5285
  %5342 = fmul fast float %5341, %5337
  %5343 = fmul fast float %4952, 4.000000e+00
  %5344 = fmul fast float %5343, %5286
  %5345 = fmul fast float %5344, %5338
  %5346 = fmul fast float %4959, 4.000000e+00
  %5347 = fmul fast float %5346, %5287
  %5348 = fmul fast float %5347, %5339
  %5349 = fadd fast float %5342, %5329
  %5350 = fadd fast float %5345, %5330
  %5351 = fadd fast float %5348, %5331
  %5352 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5353 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5354 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  br label %5355

; <label>:5355                                    ; preds = %5332, %5317
  %5356 = phi float [ %5352, %5332 ], [ %5329, %5317 ]
  %5357 = phi float [ %5353, %5332 ], [ %5330, %5317 ]
  %5358 = phi float [ %5354, %5332 ], [ %5331, %5317 ]
  %5359 = call float @dx.op.binary.f32(i32 35, float %5357, float %5358)  ; FMax(a,b)
  %5360 = call float @dx.op.binary.f32(i32 35, float %5356, float %5359)  ; FMax(a,b)
  %5361 = fsub fast float 1.000000e+00, %5360
  %5362 = fmul fast float %5318, %5276
  %5363 = fmul fast float %5319, %5276
  %5364 = fmul fast float %5320, %5276
  %5365 = fsub fast float 1.000000e+00, %5239
  %5366 = bitcast float %5365 to i32
  %5367 = sitofp i32 %5366 to float
  %5368 = fmul fast float %5367, 5.000000e+00
  %5369 = fadd fast float %5368, 0xC1EFBF8940000000
  %5370 = fptosi float %5369 to i32
  %5371 = bitcast i32 %5370 to float
  %5372 = fmul fast float %5371, %3754
  %5373 = fmul fast float %5361, %5372
  %5374 = fmul fast float %5373, %5135
  %5375 = fmul fast float %5373, %5136
  %5376 = fmul fast float %5373, %5137
  %5377 = fadd fast float %5374, %5362
  %5378 = fadd fast float %5375, %5363
  %5379 = fadd fast float %5376, %5364
  %5380 = fmul fast float %5244, %5227
  %5381 = fmul fast float %5380, %5361
  %5382 = fmul fast float %5244, %5228
  %5383 = fmul fast float %5382, %5361
  %5384 = fmul fast float %5244, %5229
  %5385 = fmul fast float %5384, %5361
  %5386 = fmul fast float %5380, %5377
  %5387 = fmul fast float %5382, %5378
  %5388 = fmul fast float %5384, %5379
  %5389 = fadd fast float %5381, %5119
  %5390 = fmul fast float %5389, %3750
  %5391 = fadd fast float %5383, %5120
  %5392 = fmul fast float %5391, %3750
  %5393 = fadd fast float %5385, %5121
  %5394 = fmul fast float %5393, %3750
  %5395 = fadd fast float %5386, %5162
  %5396 = fmul fast float %5395, %3750
  %5397 = fadd fast float %5387, %5165
  %5398 = fmul fast float %5397, %3750
  %5399 = fadd fast float %5388, %5168
  %5400 = fmul fast float %5399, %3750
  br label %5401

; <label>:5401                                    ; preds = %5355, %5219, %5112
  %5402 = phi float [ %5163, %5112 ], [ %5163, %5219 ], [ %5396, %5355 ]
  %5403 = phi float [ %5166, %5112 ], [ %5166, %5219 ], [ %5398, %5355 ]
  %5404 = phi float [ %5169, %5112 ], [ %5169, %5219 ], [ %5400, %5355 ]
  %5405 = phi float [ %5158, %5112 ], [ %5158, %5219 ], [ %5390, %5355 ]
  %5406 = phi float [ %5159, %5112 ], [ %5159, %5219 ], [ %5392, %5355 ]
  %5407 = phi float [ %5160, %5112 ], [ %5160, %5219 ], [ %5394, %5355 ]
  %5408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.i32 %5408, 0
  %5410 = icmp eq i32 %5409, 0
  br i1 %5410, label %5845, label %5411

; <label>:5411                                    ; preds = %5401
  %5412 = fptoui float %78 to i32
  %5413 = fptoui float %79 to i32
  %5414 = lshr i32 %5412, 4
  %5415 = lshr i32 %5413, 4
  %5416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.i32 %5416, 0
  %5418 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5415, i32 %5417, i32 %5414)  ; UMad(a,b,c)
  %5419 = add nsw i32 %5409, -1
  %5420 = call i32 @dx.op.binary.i32(i32 37, i32 %5419, i32 0)  ; IMax(a,b)
  %5421 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5422 = fptoui float %5421 to i32
  %5423 = lshr i32 %5422, 5
  %5424 = call i32 @dx.op.binary.i32(i32 40, i32 %5423, i32 8191)  ; UMin(a,b)
  %5425 = shl i32 %5424, 2
  %5426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.i32 %5426, 0
  %5428 = lshr i32 %5427, 16
  %5429 = and i32 %5427, 65535
  %5430 = lshr i32 %5427, 21
  %5431 = lshr i32 %5429, 5
  %5432 = call i32 @dx.op.binary.i32(i32 40, i32 %5431, i32 %5420)  ; UMin(a,b)
  %5433 = icmp ugt i32 %5430, %5432
  br i1 %5433, label %5845, label %5434

; <label>:5434                                    ; preds = %5411
  br label %5435

; <label>:5435                                    ; preds = %5835, %5434
  %5436 = phi i32 [ %5842, %5835 ], [ %5430, %5434 ]
  %5437 = phi float [ %5836, %5835 ], [ %5402, %5434 ]
  %5438 = phi float [ %5837, %5835 ], [ %5403, %5434 ]
  %5439 = phi float [ %5838, %5835 ], [ %5404, %5434 ]
  %5440 = phi float [ %5839, %5835 ], [ %5405, %5434 ]
  %5441 = phi float [ %5840, %5835 ], [ %5406, %5434 ]
  %5442 = phi float [ %5841, %5835 ], [ %5407, %5434 ]
  %5443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5444 = extractvalue %dx.types.CBufRet.i32 %5443, 0
  %5445 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5418, i32 %5444, i32 %5436)  ; UMad(a,b,c)
  %5446 = shl i32 %5445, 2
  %5447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5446, i32 undef)  ; BufferLoad(srv,index,wot)
  %5448 = extractvalue %dx.types.ResRet.i32 %5447, 0
  %5449 = shl i32 %5436, 5
  %5450 = sub nsw i32 %5428, %5449
  %5451 = call i32 @dx.op.binary.i32(i32 37, i32 %5450, i32 0)  ; IMax(a,b)
  %5452 = call i32 @dx.op.binary.i32(i32 38, i32 %5451, i32 31)  ; IMin(a,b)
  %5453 = sub nsw i32 1, %5428
  %5454 = add nsw i32 %5453, %5429
  %5455 = call i32 @dx.op.binary.i32(i32 37, i32 %5454, i32 0)  ; IMax(a,b)
  %5456 = call i32 @dx.op.binary.i32(i32 38, i32 %5455, i32 32)  ; IMin(a,b)
  %5457 = and i32 %5456, 31
  %5458 = shl i32 -1, %5457
  %5459 = xor i32 %5458, -1
  %5460 = and i32 %5452, 31
  %5461 = shl i32 %5459, %5460
  %5462 = icmp eq i32 %5456, 32
  %5463 = select i1 %5462, i32 -1, i32 %5461
  %5464 = and i32 %5463, %5448
  %5465 = icmp eq i32 %5464, 0
  br i1 %5465, label %5835, label %5466

; <label>:5466                                    ; preds = %5435
  br label %5467

; <label>:5467                                    ; preds = %5547, %5466
  %5468 = phi i32 [ %5479, %5547 ], [ %5464, %5466 ]
  %5469 = phi float [ %5548, %5547 ], [ %5437, %5466 ]
  %5470 = phi float [ %5549, %5547 ], [ %5438, %5466 ]
  %5471 = phi float [ %5550, %5547 ], [ %5439, %5466 ]
  %5472 = phi float [ %5551, %5547 ], [ %5440, %5466 ]
  %5473 = phi float [ %5552, %5547 ], [ %5441, %5466 ]
  %5474 = phi float [ %5553, %5547 ], [ %5442, %5466 ]
  %5475 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5468)  ; FirstbitLo(value)
  %5476 = add i32 %5475, %5449
  %5477 = and i32 %5475, 31
  %5478 = shl i32 1, %5477
  %5479 = xor i32 %5478, %5468
  %5480 = mul i32 %5476, 112
  %5481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5480, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5485 = or i32 %5480, 12
  %5486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5485, i32 undef)  ; BufferLoad(srv,index,wot)
  %5487 = extractvalue %dx.types.ResRet.f32 %5486, 0
  %5488 = add i32 %5480, 44
  %5489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5488, i32 undef)  ; BufferLoad(srv,index,wot)
  %5490 = extractvalue %dx.types.ResRet.f32 %5489, 0
  %5491 = add i32 %5480, 48
  %5492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5491, i32 undef)  ; BufferLoad(srv,index,wot)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 0
  %5494 = extractvalue %dx.types.ResRet.f32 %5492, 1
  %5495 = extractvalue %dx.types.ResRet.f32 %5492, 2
  %5496 = add i32 %5480, 80
  %5497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5496, i32 undef)  ; BufferLoad(srv,index,wot)
  %5498 = extractvalue %dx.types.ResRet.f32 %5497, 1
  %5499 = extractvalue %dx.types.ResRet.f32 %5497, 2
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5482, float %5483, float %5484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = select i1 %215, float %5498, float %5482
  %5502 = select i1 %215, float %5500, float %5483
  %5503 = select i1 %215, float %5499, float %5484
  %5504 = fsub fast float %5493, %165
  %5505 = fsub fast float %5494, %166
  %5506 = fsub fast float %5495, %167
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5504, float %5505, float %5506, float %5504, float %5505, float %5506)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = call float @dx.op.unary.f32(i32 24, float %5507)  ; Sqrt(value)
  %5509 = fdiv fast float 1.000000e+00, %5508
  %5510 = fmul fast float %5509, %5504
  %5511 = fmul fast float %5509, %5505
  %5512 = fmul fast float %5509, %5506
  %5513 = fadd fast float %5508, %5487
  %5514 = fdiv fast float 1.000000e+00, %5513
  %5515 = fmul float %5490, %5514
  %5516 = fmul float %5515, %5515
  %5517 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5518 = and i32 %5478, %5464
  %5519 = icmp eq i32 %5518, 0
  br i1 %5519, label %5542, label %5520, !dx.controlflow.hints !77

; <label>:5520                                    ; preds = %5467
  %5521 = lshr i32 %5412, 5
  %5522 = lshr i32 %5413, 5
  %5523 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5521, i32 %5522, i32 %5476, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5524 = extractvalue %dx.types.ResRet.i32 %5523, 0
  %5525 = and i32 %5524, 3
  %5526 = icmp eq i32 %5525, 0
  %5527 = select i1 %5526, float 1.000000e+00, float 0.000000e+00
  %5528 = icmp eq i32 %5525, 3
  br i1 %5528, label %5529, label %5542

; <label>:5529                                    ; preds = %5520
  %5530 = lshr i32 %5524, 10
  %5531 = and i32 %5530, 8160
  %5532 = and i32 %5413, 31
  %5533 = or i32 %5531, %5532
  %5534 = lshr i32 %5524, 1
  %5535 = and i32 %5534, 16352
  %5536 = and i32 %5412, 31
  %5537 = or i32 %5535, %5536
  %5538 = lshr i32 %5524, 23
  %5539 = and i32 %5538, 255
  %5540 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5537, i32 %5533, i32 %5539, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5541 = extractvalue %dx.types.ResRet.f32 %5540, 0
  br label %5542

; <label>:5542                                    ; preds = %5529, %5520, %5467
  %5543 = phi float [ %5541, %5529 ], [ %5527, %5520 ], [ 0.000000e+00, %5467 ]
  %5544 = call float @dx.op.binary.f32(i32 36, float %5543, float %5543)  ; FMin(a,b)
  %5545 = call float @dx.op.binary.f32(i32 36, float %5543, float %5544)  ; FMin(a,b)
  %5546 = fcmp fast ogt float %5545, 0.000000e+00
  br i1 %5546, label %5555, label %5547, !dx.controlflow.hints !78

; <label>:5547                                    ; preds = %5791, %5542
  %5548 = phi float [ %5469, %5542 ], [ %5831, %5791 ]
  %5549 = phi float [ %5470, %5542 ], [ %5832, %5791 ]
  %5550 = phi float [ %5471, %5542 ], [ %5833, %5791 ]
  %5551 = phi float [ %5472, %5542 ], [ %5825, %5791 ]
  %5552 = phi float [ %5473, %5542 ], [ %5826, %5791 ]
  %5553 = phi float [ %5474, %5542 ], [ %5827, %5791 ]
  %5554 = icmp eq i32 %5468, %5478
  br i1 %5554, label %5834, label %5467

; <label>:5555                                    ; preds = %5542
  %5556 = fmul fast float %5543, %5501
  %5557 = fmul fast float %5543, %5502
  %5558 = fmul fast float %5543, %5503
  %5559 = fsub fast float %5495, %4155
  %5560 = fcmp fast ogt float %5559, 0.000000e+00
  %5561 = fsub fast float %167, %4155
  %5562 = fcmp fast ogt float %5561, 0.000000e+00
  %5563 = xor i1 %5562, %5560
  %5564 = fsub fast float %4155, %5495
  %5565 = fmul fast float %5564, 2.000000e+00
  %5566 = fadd fast float %5565, %5495
  %5567 = select i1 %5563, float %5495, float %5566
  %5568 = fsub fast float %5567, %167
  %5569 = call float @dx.op.dot3.f32(i32 55, float %5504, float %5505, float %5568, float %5504, float %5505, float %5568)  ; Dot3(ax,ay,az,bx,by,bz)
  %5570 = call float @dx.op.unary.f32(i32 25, float %5569)  ; Rsqrt(value)
  %5571 = fmul fast float %5570, %5504
  %5572 = fmul fast float %5570, %5505
  %5573 = fmul fast float %5570, %5568
  %5574 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5571, float %5572, float %5573)  ; Dot3(ax,ay,az,bx,by,bz)
  %5576 = fdiv fast float 1.000000e+00, %5575
  %5577 = fmul fast float %5576, %5574
  %5578 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5561, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = fcmp fast ogt float %5578, 0.000000e+00
  %5580 = fcmp fast olt float %5578, 0.000000e+00
  %5581 = zext i1 %5579 to i32
  %5582 = zext i1 %5580 to i32
  %5583 = sub nsw i32 %5581, %5582
  %5584 = sitofp i32 %5583 to float
  %5585 = fsub fast float %5567, %4155
  %5586 = call float @dx.op.dot3.f32(i32 55, float %5504, float %5505, float %5585, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = fcmp fast ogt float %5586, 0.000000e+00
  %5588 = fcmp fast olt float %5586, 0.000000e+00
  %5589 = zext i1 %5587 to i32
  %5590 = zext i1 %5588 to i32
  %5591 = sub nsw i32 %5589, %5590
  %5592 = sitofp i32 %5591 to float
  %5593 = fcmp fast une float %5584, %5592
  br i1 %5593, label %5594, label %5604

; <label>:5594                                    ; preds = %5555
  %5595 = fmul fast float %5577, %5573
  %5596 = fmul fast float %5577, %5572
  %5597 = fmul fast float %5577, %5571
  %5598 = fmul fast float %5597, %5597
  %5599 = fmul fast float %5596, %5596
  %5600 = fadd fast float %5598, %5599
  %5601 = fmul fast float %5595, %5595
  %5602 = fadd fast float %5600, %5601
  %5603 = call float @dx.op.unary.f32(i32 24, float %5602)  ; Sqrt(value)
  br label %5616

; <label>:5604                                    ; preds = %5555
  %5605 = icmp slt i32 %5583, 0
  br i1 %5605, label %5606, label %5616

; <label>:5606                                    ; preds = %5604
  %5607 = fsub fast float %165, %5493
  %5608 = fsub fast float %166, %5494
  %5609 = fsub fast float %167, %5567
  %5610 = fmul fast float %5607, %5607
  %5611 = fmul fast float %5608, %5608
  %5612 = fadd fast float %5610, %5611
  %5613 = fmul fast float %5609, %5609
  %5614 = fadd fast float %5612, %5613
  %5615 = call float @dx.op.unary.f32(i32 24, float %5614)  ; Sqrt(value)
  br label %5616

; <label>:5616                                    ; preds = %5606, %5604, %5594
  %5617 = phi float [ %5603, %5594 ], [ %5615, %5606 ], [ 0.000000e+00, %5604 ]
  %5618 = and i1 %5562, %5560
  %5619 = fsub fast float -0.000000e+00, %5617
  %5620 = select i1 %5618, float -0.000000e+00, float %5619
  %5621 = fmul fast float %4156, 0x3FF7154760000000
  %5622 = fmul fast float %5621, %5620
  %5623 = fmul fast float %4157, 0x3FF7154760000000
  %5624 = fmul fast float %5623, %5620
  %5625 = fmul fast float %4158, 0x3FF7154760000000
  %5626 = fmul fast float %5625, %5620
  %5627 = call float @dx.op.unary.f32(i32 21, float %5622)  ; Exp(value)
  %5628 = call float @dx.op.unary.f32(i32 21, float %5624)  ; Exp(value)
  %5629 = call float @dx.op.unary.f32(i32 21, float %5626)  ; Exp(value)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5631 = call float @dx.op.unary.f32(i32 7, float %5628)  ; Saturate(value)
  %5632 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5633 = fmul fast float %5556, %5630
  %5634 = fmul fast float %5557, %5631
  %5635 = fmul fast float %5558, %5632
  %5636 = fsub fast float %5510, %4947
  %5637 = fsub fast float %5511, %4946
  %5638 = fsub fast float %5512, %4945
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5637, float %5638, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.unary.f32(i32 25, float %5639)  ; Rsqrt(value)
  %5641 = fmul fast float %5640, %5636
  %5642 = fmul fast float %5640, %5637
  %5643 = fmul fast float %5640, %5638
  %5644 = call float @dx.op.dot3.f32(i32 55, float %5510, float %5511, float %5512, float %4948, float %4949, float %4950)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4943, float %4942, float %5641, float %5642, float %5643)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5647 = fmul fast float %5646, %5517
  %5648 = fmul fast float %5646, %5646
  %5649 = fmul fast float %5648, %5170
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fmul fast float %5647, %5650
  %5652 = bitcast float %5507 to i32
  %5653 = ashr i32 %5652, 1
  %5654 = sub nsw i32 1597463007, %5653
  %5655 = bitcast i32 %5654 to float
  %5656 = fmul fast float %5655, %5504
  %5657 = fmul fast float %5655, %5505
  %5658 = fmul fast float %5655, %5506
  %5659 = fsub fast float %5656, %4947
  %5660 = fsub fast float %5657, %4946
  %5661 = fsub fast float %5658, %4945
  %5662 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = call float @dx.op.unary.f32(i32 25, float %5662)  ; Rsqrt(value)
  %5664 = fmul fast float %5659, %5663
  %5665 = fmul fast float %5660, %5663
  %5666 = fmul fast float %5661, %5663
  %5667 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = fmul fast float %5667, %5667
  %5669 = call float @dx.op.unary.f32(i32 6, float %5644)  ; FAbs(value)
  %5670 = fsub fast float 1.000000e+00, %4957
  %5671 = call float @dx.op.binary.f32(i32 35, float %5670, float 0x3F847AE140000000)  ; FMax(a,b)
  %5672 = fmul fast float %5671, %5671
  %5673 = fmul fast float %5672, %5672
  %5674 = fsub fast float 1.000000e+00, %5673
  %5675 = fmul fast float %4961, %4961
  %5676 = fmul fast float %5675, %5674
  %5677 = fadd fast float %5676, %5673
  %5678 = bitcast float %5677 to i32
  %5679 = ashr i32 %5678, 1
  %5680 = add nsw i32 %5679, 532487669
  %5681 = bitcast i32 %5680 to float
  %5682 = fadd fast float %5681, %4961
  %5683 = fmul fast float %5673, %5668
  %5684 = fsub fast float 1.000000e+00, %5668
  %5685 = fadd fast float %5684, %5683
  %5686 = fmul fast float %5669, %5669
  %5687 = fmul fast float %5686, %5674
  %5688 = fadd fast float %5687, %5673
  %5689 = bitcast float %5688 to i32
  %5690 = ashr i32 %5689, 1
  %5691 = add nsw i32 %5690, 532487669
  %5692 = bitcast i32 %5691 to float
  %5693 = fadd fast float %5692, %5669
  %5694 = fmul fast float %5685, %5685
  %5695 = fmul fast float %5694, %5682
  %5696 = fmul fast float %5695, %5693
  %5697 = fdiv fast float 1.000000e+00, %5696
  %5698 = bitcast float %5673 to i32
  %5699 = sitofp i32 %5698 to float
  %5700 = fmul fast float %5699, 0x3FE7F73180000000
  %5701 = fadd fast float %5700, 0x41AFE27C40000000
  %5702 = fptosi float %5701 to i32
  %5703 = bitcast i32 %5702 to float
  %5704 = fmul fast float %5490, 0x3FD80E9D60000000
  %5705 = fmul fast float %5704, %5655
  %5706 = fadd fast float %5703, %5705
  %5707 = bitcast float %5706 to i32
  %5708 = sub nsw i32 2129859010, %5707
  %5709 = bitcast i32 %5708 to float
  %5710 = fmul fast float %5673, %5697
  %5711 = fmul fast float %5710, %5703
  %5712 = fmul fast float %5711, %5709
  %5713 = call float @dx.op.unary.f32(i32 6, float %5645)  ; FAbs(value)
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = bitcast float %5714 to i32
  %5716 = sitofp i32 %5715 to float
  %5717 = fmul fast float %5716, 5.000000e+00
  %5718 = fadd fast float %5717, 0xC1EFBF8940000000
  %5719 = fptosi float %5718 to i32
  %5720 = bitcast i32 %5719 to float
  %5721 = fsub fast float 1.000000e+00, %4951
  %5722 = fsub fast float 1.000000e+00, %4952
  %5723 = fsub fast float 1.000000e+00, %4959
  %5724 = fmul fast float %5720, %5721
  %5725 = fmul fast float %5720, %5722
  %5726 = fmul fast float %5720, %5723
  %5727 = fadd fast float %5724, %4951
  %5728 = fadd fast float %5725, %4952
  %5729 = fadd fast float %5726, %4959
  br i1 %5085, label %5730, label %5753

; <label>:5730                                    ; preds = %5616
  %5731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3753, float %5713, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5732 = extractvalue %dx.types.ResRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.ResRet.f32 %5731, 1
  %5734 = extractvalue %dx.types.ResRet.f32 %5731, 2
  %5735 = fadd fast float %5732, -5.000000e-01
  %5736 = fadd fast float %5733, -5.000000e-01
  %5737 = fadd fast float %5734, -5.000000e-01
  %5738 = fmul fast float %4951, 4.000000e+00
  %5739 = fmul fast float %5738, %5721
  %5740 = fmul fast float %5739, %5735
  %5741 = fmul fast float %4952, 4.000000e+00
  %5742 = fmul fast float %5741, %5722
  %5743 = fmul fast float %5742, %5736
  %5744 = fmul fast float %4959, 4.000000e+00
  %5745 = fmul fast float %5744, %5723
  %5746 = fmul fast float %5745, %5737
  %5747 = fadd fast float %5740, %5727
  %5748 = fadd fast float %5743, %5728
  %5749 = fadd fast float %5746, %5729
  %5750 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5751 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5752 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  br label %5753

; <label>:5753                                    ; preds = %5730, %5616
  %5754 = phi float [ %5750, %5730 ], [ %5727, %5616 ]
  %5755 = phi float [ %5751, %5730 ], [ %5728, %5616 ]
  %5756 = phi float [ %5752, %5730 ], [ %5729, %5616 ]
  %5757 = fmul fast float %5644, 9.843750e-01
  %5758 = fadd fast float %5757, 7.812500e-03
  %5759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5758, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5760 = extractvalue %dx.types.ResRet.f32 %5759, 2
  %5761 = extractvalue %dx.types.ResRet.f32 %5759, 3
  %5762 = fmul fast float %5760, %4951
  %5763 = fmul fast float %5760, %4952
  %5764 = fmul fast float %5760, %4959
  %5765 = fadd fast float %5762, %5761
  %5766 = fadd fast float %5763, %5761
  %5767 = fadd fast float %5764, %5761
  br i1 %5085, label %5768, label %5791

; <label>:5768                                    ; preds = %5753
  %5769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3753, float %5644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5770 = extractvalue %dx.types.ResRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.ResRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.ResRet.f32 %5769, 2
  %5773 = fadd fast float %5770, -5.000000e-01
  %5774 = fadd fast float %5771, -5.000000e-01
  %5775 = fadd fast float %5772, -5.000000e-01
  %5776 = fmul fast float %4951, 4.000000e+00
  %5777 = fmul fast float %5776, %5721
  %5778 = fmul fast float %5777, %5773
  %5779 = fmul fast float %4952, 4.000000e+00
  %5780 = fmul fast float %5779, %5722
  %5781 = fmul fast float %5780, %5774
  %5782 = fmul fast float %4959, 4.000000e+00
  %5783 = fmul fast float %5782, %5723
  %5784 = fmul fast float %5783, %5775
  %5785 = fadd fast float %5778, %5765
  %5786 = fadd fast float %5781, %5766
  %5787 = fadd fast float %5784, %5767
  %5788 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  %5789 = call float @dx.op.unary.f32(i32 7, float %5786)  ; Saturate(value)
  %5790 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  br label %5791

; <label>:5791                                    ; preds = %5768, %5753
  %5792 = phi float [ %5788, %5768 ], [ %5765, %5753 ]
  %5793 = phi float [ %5789, %5768 ], [ %5766, %5753 ]
  %5794 = phi float [ %5790, %5768 ], [ %5767, %5753 ]
  %5795 = call float @dx.op.binary.f32(i32 35, float %5793, float %5794)  ; FMax(a,b)
  %5796 = call float @dx.op.binary.f32(i32 35, float %5792, float %5795)  ; FMax(a,b)
  %5797 = fsub fast float 1.000000e+00, %5796
  %5798 = fmul fast float %5754, %5712
  %5799 = fmul fast float %5755, %5712
  %5800 = fmul fast float %5756, %5712
  %5801 = fsub fast float 1.000000e+00, %5645
  %5802 = bitcast float %5801 to i32
  %5803 = sitofp i32 %5802 to float
  %5804 = fmul fast float %5803, 5.000000e+00
  %5805 = fadd fast float %5804, 0xC1EFBF8940000000
  %5806 = fptosi float %5805 to i32
  %5807 = bitcast i32 %5806 to float
  %5808 = fmul fast float %5807, %3754
  %5809 = fmul fast float %5797, %5808
  %5810 = fmul fast float %5809, %5135
  %5811 = fmul fast float %5809, %5136
  %5812 = fmul fast float %5809, %5137
  %5813 = fadd fast float %5810, %5798
  %5814 = fadd fast float %5811, %5799
  %5815 = fadd fast float %5812, %5800
  %5816 = fmul fast float %5633, %3750
  %5817 = fmul fast float %5816, %5651
  %5818 = fmul fast float %5817, %5797
  %5819 = fmul fast float %5634, %3750
  %5820 = fmul fast float %5819, %5651
  %5821 = fmul fast float %5820, %5797
  %5822 = fmul fast float %5635, %3750
  %5823 = fmul fast float %5822, %5651
  %5824 = fmul fast float %5823, %5797
  %5825 = fadd fast float %5818, %5472
  %5826 = fadd fast float %5821, %5473
  %5827 = fadd fast float %5824, %5474
  %5828 = fmul fast float %5817, %5813
  %5829 = fmul fast float %5820, %5814
  %5830 = fmul fast float %5823, %5815
  %5831 = fadd fast float %5828, %5469
  %5832 = fadd fast float %5829, %5470
  %5833 = fadd fast float %5830, %5471
  br label %5547

; <label>:5834                                    ; preds = %5547
  br label %5835

; <label>:5835                                    ; preds = %5834, %5435
  %5836 = phi float [ %5437, %5435 ], [ %5548, %5834 ]
  %5837 = phi float [ %5438, %5435 ], [ %5549, %5834 ]
  %5838 = phi float [ %5439, %5435 ], [ %5550, %5834 ]
  %5839 = phi float [ %5440, %5435 ], [ %5551, %5834 ]
  %5840 = phi float [ %5441, %5435 ], [ %5552, %5834 ]
  %5841 = phi float [ %5442, %5435 ], [ %5553, %5834 ]
  %5842 = add i32 %5436, 1
  %5843 = icmp ugt i32 %5842, %5432
  br i1 %5843, label %5844, label %5435

; <label>:5844                                    ; preds = %5835
  br label %5845

; <label>:5845                                    ; preds = %5844, %5411, %5401
  %5846 = phi float [ %5402, %5401 ], [ %5402, %5411 ], [ %5836, %5844 ]
  %5847 = phi float [ %5403, %5401 ], [ %5403, %5411 ], [ %5837, %5844 ]
  %5848 = phi float [ %5404, %5401 ], [ %5404, %5411 ], [ %5838, %5844 ]
  %5849 = phi float [ %5405, %5401 ], [ %5405, %5411 ], [ %5839, %5844 ]
  %5850 = phi float [ %5406, %5401 ], [ %5406, %5411 ], [ %5840, %5844 ]
  %5851 = phi float [ %5407, %5401 ], [ %5407, %5411 ], [ %5841, %5844 ]
  %5852 = call float @dx.op.unary.f32(i32 24, float %4954)  ; Sqrt(value)
  %5853 = call float @dx.op.unary.f32(i32 24, float %4955)  ; Sqrt(value)
  %5854 = call float @dx.op.unary.f32(i32 24, float %4956)  ; Sqrt(value)
  %5855 = fmul fast float %5852, %5849
  %5856 = fmul fast float %5853, %5850
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  br i1 %215, label %5859, label %5888

; <label>:5859                                    ; preds = %5845
  %5860 = fadd fast float %5851, %3756
  %5861 = fmul fast float %5860, %3758
  %5862 = fsub fast float 1.000000e+00, %3758
  %5863 = call float @dx.op.unary.f32(i32 7, float %5862)  ; Saturate(value)
  %5864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5864, 3
  %5866 = fmul fast float %5865, %5863
  %5867 = fadd fast float %5866, %5861
  %5868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %5870 = fmul fast float %5869, %5141
  %5871 = fsub fast float %5867, %5870
  %5872 = fadd fast float %5856, %5855
  %5873 = fmul fast float %5858, %5872
  %5874 = extractvalue %dx.types.CBufRet.f32 %5864, 1
  %5875 = fsub fast float %5871, %5874
  %5876 = extractvalue %dx.types.CBufRet.f32 %5864, 2
  %5877 = fmul fast float %5875, %5876
  %5878 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  %5879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5879, 0
  %5881 = fsub fast float %5878, %5880
  %5882 = fmul fast float %5881, 1.000000e+01
  %5883 = call float @dx.op.unary.f32(i32 7, float %5882)  ; Saturate(value)
  %5884 = fadd fast float %3757, -1.000000e+00
  %5885 = fmul fast float %5883, %5884
  %5886 = fadd fast float %5885, 1.000000e+00
  %5887 = fmul fast float %5886, %5878
  br label %5904

; <label>:5888                                    ; preds = %5845
  %5889 = fmul fast float %5854, %5851
  %5890 = fmul fast float %5858, %5855
  %5891 = fmul fast float %5858, %5856
  %5892 = fmul fast float %5889, %5858
  %5893 = add i32 %33, 356
  %5894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5893, i32 undef)  ; BufferLoad(srv,index,wot)
  %5895 = extractvalue %dx.types.ResRet.i32 %5894, 0
  %5896 = and i32 %5895, 32
  %5897 = icmp eq i32 %5896, 0
  br i1 %5897, label %5904, label %5898

; <label>:5898                                    ; preds = %5888
  %5899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5899, 0
  %5901 = fmul fast float %5900, 0x3FE99999A0000000
  %5902 = fadd fast float %5900, %5890
  %5903 = fadd fast float %5901, %5892
  br label %5904

; <label>:5904                                    ; preds = %5898, %5888, %5859
  %5905 = phi float [ %5873, %5859 ], [ %5902, %5898 ], [ %5890, %5888 ]
  %5906 = phi float [ %5887, %5859 ], [ %5891, %5898 ], [ %5891, %5888 ]
  %5907 = phi float [ %5886, %5859 ], [ %5903, %5898 ], [ %5892, %5888 ]
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = fmul fast float %5909, %5847
  %5911 = fmul fast float %5909, %5848
  %5912 = fadd fast float %5847, %5846
  %5913 = select i1 %215, float %5912, float %5846
  %5914 = fmul float %5913, %5909
  %5915 = select i1 %215, float 0.000000e+00, float %5910
  %5916 = select i1 %215, float 0.000000e+00, float %5911
  %5917 = fmul fast float %5905, %5852
  %5918 = fmul fast float %5906, %5853
  %5919 = fmul fast float %5907, %5854
  %5920 = fadd fast float %5914, %5917
  %5921 = fadd fast float %5915, %5918
  %5922 = fadd fast float %5916, %5919
  %5923 = select i1 %215, float %5906, float %5921
  %5924 = select i1 %215, float %5907, float %5922
  %5925 = call float @dx.op.binary.f32(i32 36, float %5920, float 3.225500e+04)  ; FMin(a,b)
  %5926 = call float @dx.op.binary.f32(i32 36, float %5923, float 3.225500e+04)  ; FMin(a,b)
  %5927 = call float @dx.op.binary.f32(i32 36, float %5924, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5925)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5926)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

