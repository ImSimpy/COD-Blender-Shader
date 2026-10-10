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
; shader hash: 380eaae6e047658f148d7cac7ec1c8ad
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
  %411 = add i32 %33, 508
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
  br i1 %464, label %952, label %465

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
  %912 = and i32 %911, 26624
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %937, label %914

; <label>:914                                     ; preds = %906
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = and i32 %916, 16384
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %937, label %919

; <label>:919                                     ; preds = %914
  %920 = and i32 %916, 1048576
  %921 = icmp ne i32 %920, 0
  %922 = add i32 %33, 492
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = add i32 %924, 0
  %926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %926, %dx.types.Handle %75, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = add i32 %33, 96
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = lshr i32 %931, 24
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %928, 0x3F70101020000000
  %935 = select i1 %921, float 0x3F70101020000000, float %934
  %936 = fmul fast float %935, %933
  br label %937

; <label>:937                                     ; preds = %919, %914, %906
  %938 = phi float [ %936, %919 ], [ 0.000000e+00, %914 ], [ 0.000000e+00, %906 ]
  %939 = add i32 %33, 96
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 255
  %943 = uitofp i32 %942 to float
  %944 = lshr i32 %941, 8
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %948 = fmul fast float %946, %947
  %949 = fadd fast float %948, %943
  %950 = fmul fast float %949, 0x3F70101020000000
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  br label %952

; <label>:952                                     ; preds = %937, %450
  %953 = phi float [ 0.000000e+00, %450 ], [ %860, %937 ]
  %954 = phi float [ 0.000000e+00, %450 ], [ %861, %937 ]
  %955 = phi float [ 0.000000e+00, %450 ], [ %779, %937 ]
  %956 = phi float [ 0.000000e+00, %450 ], [ %780, %937 ]
  %957 = phi float [ 0.000000e+00, %450 ], [ %781, %937 ]
  %958 = phi float [ 0.000000e+00, %450 ], [ %907, %937 ]
  %959 = phi float [ 0.000000e+00, %450 ], [ %908, %937 ]
  %960 = phi float [ 0.000000e+00, %450 ], [ %909, %937 ]
  %961 = phi float [ 0.000000e+00, %450 ], [ %765, %937 ]
  %962 = phi float [ 0.000000e+00, %450 ], [ 1.000000e+00, %937 ]
  %963 = phi float [ 0.000000e+00, %450 ], [ %859, %937 ]
  %964 = phi float [ 0.000000e+00, %450 ], [ %862, %937 ]
  %965 = phi float [ 0.000000e+00, %450 ], [ %938, %937 ]
  %966 = phi float [ 0.000000e+00, %450 ], [ %951, %937 ]
  br i1 %401, label %1831, label %967

; <label>:967                                     ; preds = %952
  %968 = icmp ult i32 %456, 2
  %969 = add i32 %33, 40
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = add i32 %33, 44
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = or i32 %974, %971
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %1831, label %977

; <label>:977                                     ; preds = %967
  %978 = and i32 %971, 262144
  %979 = icmp ne i32 %978, 0
  %980 = select i1 %979, float %39, float 1.000000e+00
  %981 = select i1 %979, float %40, float 0.000000e+00
  %982 = select i1 %979, float %41, float 0.000000e+00
  %983 = select i1 %979, float %42, float 1.000000e+00
  %984 = select i1 %979, float %43, float %66
  %985 = select i1 %979, float %44, float %67
  %986 = add i32 %33, 300
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = lshr i32 %988, 16
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = fmul fast float %990, 0x3F50624DE0000000
  %992 = add i32 %33, 104
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = lshr i32 %994, 16
  %996 = and i32 %995, 255
  %997 = lshr i32 %994, 24
  %998 = add i32 %33, 308
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = and i32 %1000, 65535
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = lshr i32 %1000, 16
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = add i32 %33, 48
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = lshr i32 %1007, 22
  %1009 = shl nuw nsw i32 %1008, 5
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = shl i32 %1007, 4
  %1012 = and i32 %1011, 32752
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = lshr i32 %1007, 7
  %1015 = and i32 %1014, 32752
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 3
  %1019 = fmul fast float %1018, 1.000000e+03
  %1020 = fmul fast float %311, %1019
  %1021 = call float @dx.op.unary.f32(i32 22, float %1020)  ; Frc(value)
  %1022 = fadd fast float %1021, %301
  %1023 = fmul fast float %312, %1019
  %1024 = call float @dx.op.unary.f32(i32 22, float %1023)  ; Frc(value)
  %1025 = fadd fast float %1024, %303
  %1026 = fmul fast float %991, %1019
  %1027 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1028 = fmul fast float %1027, 0x401921FB60000000
  %1029 = fadd fast float %1028, %1010
  %1030 = call float @dx.op.unary.f32(i32 13, float %1029)  ; Sin(value)
  %1031 = call float @dx.op.unary.f32(i32 12, float %1029)  ; Cos(value)
  %1032 = fsub fast float -0.000000e+00, %1030
  %1033 = fadd fast float %984, -5.000000e-01
  %1034 = fadd fast float %985, -5.000000e-01
  %1035 = fmul fast float %1002, %1033
  %1036 = fmul fast float %1004, %1034
  %1037 = fadd fast float %1035, 5.000000e-01
  %1038 = fadd fast float %1036, 5.000000e-01
  %1039 = fmul fast float %1013, %1037
  %1040 = fmul fast float %1016, %1038
  %1041 = fmul fast float %1031, %1039
  %1042 = call float @dx.op.tertiary.f32(i32 46, float %1032, float %1040, float %1041)  ; FMad(a,b,c)
  %1043 = fmul fast float %1030, %1039
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1031, float %1040, float %1043)  ; FMad(a,b,c)
  %1045 = fadd fast float %1022, %1042
  %1046 = fadd fast float %1025, %1044
  %1047 = icmp ugt i32 %996, 1
  %1048 = icmp ugt i32 %994, 33554431
  %1049 = or i1 %1048, %1047
  br i1 %1049, label %1050, label %1075

; <label>:1050                                    ; preds = %977
  %1051 = add i32 %33, 244
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = lshr i32 %1053, 16
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = fmul fast float %1018, %1055
  %1057 = call float @dx.op.unary.f32(i32 22, float %1056)  ; Frc(value)
  %1058 = mul nuw nsw i32 %996, %997
  %1059 = uitofp i32 %1058 to float
  %1060 = fmul fast float %1057, %1059
  %1061 = call float @dx.op.unary.f32(i32 27, float %1060)  ; Round_ni(value)
  %1062 = fptoui float %1061 to i32
  %1063 = urem i32 %1062, %996
  %1064 = udiv i32 %1062, %997
  %1065 = call float @dx.op.unary.f32(i32 22, float %1045)  ; Frc(value)
  %1066 = call float @dx.op.unary.f32(i32 22, float %1046)  ; Frc(value)
  %1067 = uitofp i32 %1063 to float
  %1068 = uitofp i32 %1064 to float
  %1069 = fadd fast float %1065, %1067
  %1070 = fadd fast float %1066, %1068
  %1071 = uitofp i32 %996 to float
  %1072 = uitofp i32 %997 to float
  %1073 = fdiv fast float %1069, %1071
  %1074 = fdiv fast float %1070, %1072
  br label %1075

; <label>:1075                                    ; preds = %1050, %977
  %1076 = phi float [ %1073, %1050 ], [ %1045, %977 ]
  %1077 = phi float [ %1074, %1050 ], [ %1046, %977 ]
  %1078 = and i32 %971, 256
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1126, label %1080

; <label>:1080                                    ; preds = %1075
  %1081 = add i32 %33, 444
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = add i32 %1083, 0
  %1085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1085, %dx.types.Handle %75, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = add i32 %33, 116
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = shl i32 %1090, 4
  %1092 = and i32 %1091, 32752
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = lshr i32 %1090, 7
  %1095 = and i32 %1094, 32752
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = fsub fast float 1.000000e+00, %453
  %1098 = call float @dx.op.binary.f32(i32 35, float %1097, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1099 = bitcast float %453 to i32
  %1100 = sitofp i32 %1099 to float
  %1101 = fadd fast float %1100, 0xC1CFBF8940000000
  %1102 = fmul fast float %1096, %1101
  %1103 = fadd fast float %1102, 0x41CFBF8940000000
  %1104 = fptosi float %1103 to i32
  %1105 = bitcast i32 %1104 to float
  %1106 = bitcast float %1098 to i32
  %1107 = sitofp i32 %1106 to float
  %1108 = fadd fast float %1107, 0xC1CFBF8940000000
  %1109 = fmul fast float %1108, %1096
  %1110 = fadd fast float %1109, 0x41CFBF8940000000
  %1111 = fptosi float %1110 to i32
  %1112 = bitcast i32 %1111 to float
  %1113 = fmul fast float %1105, %1093
  %1114 = fmul fast float %1112, %1093
  %1115 = fsub fast float %1098, %1113
  %1116 = fadd fast float %1114, %1098
  %1117 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1118 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1119 = fsub fast float %1087, %1117
  %1120 = fsub fast float %1118, %1117
  %1121 = bitcast float %1120 to i32
  %1122 = sub nsw i32 2129859010, %1121
  %1123 = bitcast i32 %1122 to float
  %1124 = fmul fast float %1123, %1119
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  br label %1126

; <label>:1126                                    ; preds = %1080, %1075
  %1127 = phi float [ %1125, %1080 ], [ %453, %1075 ]
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = and i32 %1129, 128
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1148, label %1132

; <label>:1132                                    ; preds = %1126
  %1133 = add i32 %33, 428
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = add i32 %1135, 0
  %1137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1137, %dx.types.Handle %75, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %1141, 524288
  %1143 = icmp ne i32 %1142, 0
  %1144 = fcmp fast ogt float %1139, 0x3FE0101020000000
  %1145 = select i1 %1144, float 1.000000e+00, float 0.000000e+00
  %1146 = select i1 %1143, float %1145, float %1139
  %1147 = fmul fast float %1146, %1127
  br label %1148

; <label>:1148                                    ; preds = %1132, %1126
  %1149 = phi float [ %1147, %1132 ], [ %1127, %1126 ]
  %1150 = fcmp fast ult float %1149, 0x3F70101020000000
  br i1 %1150, label %1831, label %1151

; <label>:1151                                    ; preds = %1148
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 16
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1354, label %1156

; <label>:1156                                    ; preds = %1151
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = add i32 %33, 380
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = add i32 %1161, 0
  %1163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1163, %dx.types.Handle %74, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = extractvalue %dx.types.ResRet.f32 %1164, 3
  %1169 = and i32 %1158, 255
  %1170 = uitofp i32 %1169 to float
  %1171 = lshr i32 %1158, 8
  %1172 = and i32 %1171, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1168, %1170
  %1175 = fadd fast float %1174, %1173
  %1176 = fmul fast float %1175, 0x3F70101000000000
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 512
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1189, label %1181

; <label>:1181                                    ; preds = %1156
  %1182 = add i32 %33, 464
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %1184, 0
  %1186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1187 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1186, %dx.types.Handle %75, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  br label %1189

; <label>:1189                                    ; preds = %1181, %1156
  %1190 = phi float [ %1188, %1181 ], [ 1.000000e+00, %1156 ]
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 33554432
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1301, label %1195

; <label>:1195                                    ; preds = %1189
  %1196 = add i32 %33, 240
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 65535
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = lshr i32 %1198, 16
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = add i32 %33, 244
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 65535
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = lshr i32 %1209, 24
  %1211 = uitofp i32 %1210 to float
  %1212 = fmul fast float %1211, 0x3F70101020000000
  %1213 = and i32 %1209, 255
  %1214 = uitofp i32 %1213 to float
  %1215 = fmul fast float %1214, 0x3F70101020000000
  %1216 = lshr i32 %1209, 8
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = fmul fast float %1218, 0x3F70101020000000
  %1220 = lshr i32 %1209, 16
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = fmul fast float %1222, 0x3F70101020000000
  %1224 = add i32 %33, 236
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = lshr i32 %1226, 24
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1228, 0x3F70101020000000
  %1230 = and i32 %1226, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = lshr i32 %1226, 8
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = lshr i32 %1226, 16
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = bitcast float %1165 to i32
  %1242 = ashr i32 %1241, 1
  %1243 = sub nsw i32 1597463174, %1242
  %1244 = bitcast i32 %1243 to float
  %1245 = fmul fast float %1165, 5.000000e-01
  %1246 = fmul fast float %1244, %1244
  %1247 = fmul fast float %1246, %1245
  %1248 = fsub fast float 1.500000e+00, %1247
  %1249 = fmul fast float %1244, %1165
  %1250 = fmul fast float %1249, %1248
  %1251 = bitcast float %1166 to i32
  %1252 = ashr i32 %1251, 1
  %1253 = sub nsw i32 1597463174, %1252
  %1254 = bitcast i32 %1253 to float
  %1255 = fmul fast float %1166, 5.000000e-01
  %1256 = fmul fast float %1254, %1254
  %1257 = fmul fast float %1256, %1255
  %1258 = fsub fast float 1.500000e+00, %1257
  %1259 = fmul fast float %1254, %1166
  %1260 = fmul fast float %1259, %1258
  %1261 = bitcast float %1167 to i32
  %1262 = ashr i32 %1261, 1
  %1263 = sub nsw i32 1597463174, %1262
  %1264 = bitcast i32 %1263 to float
  %1265 = fmul fast float %1167, 5.000000e-01
  %1266 = fmul fast float %1264, %1264
  %1267 = fmul fast float %1266, %1265
  %1268 = fsub fast float 1.500000e+00, %1267
  %1269 = fmul fast float %1264, %1167
  %1270 = fmul fast float %1269, %1268
  %1271 = fsub fast float %1250, %1232
  %1272 = fsub fast float %1260, %1236
  %1273 = fsub fast float %1270, %1240
  %1274 = fmul fast float %1271, %1200
  %1275 = fmul fast float %1272, %1202
  %1276 = fmul fast float %1273, %1207
  %1277 = fadd fast float %1274, %1215
  %1278 = fadd fast float %1275, %1219
  %1279 = fadd fast float %1276, %1223
  %1280 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1281 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1282 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1283 = fmul fast float %1280, %1280
  %1284 = fmul fast float %1281, %1281
  %1285 = fmul fast float %1282, %1282
  %1286 = fsub fast float %1283, %1165
  %1287 = fsub fast float %1284, %1166
  %1288 = fsub fast float %1285, %1167
  %1289 = fmul fast float %1286, %1190
  %1290 = fmul fast float %1287, %1190
  %1291 = fmul fast float %1288, %1190
  %1292 = fadd fast float %1289, %1165
  %1293 = fadd fast float %1290, %1166
  %1294 = fadd fast float %1291, %1167
  %1295 = fadd fast float %1212, %1176
  %1296 = fsub fast float %1295, %1229
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1298 = fsub fast float %1297, %1176
  %1299 = fmul fast float %1298, %1190
  %1300 = fadd fast float %1299, %1176
  br label %1354

; <label>:1301                                    ; preds = %1189
  %1302 = and i32 %1192, 134217728
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1338, label %1304

; <label>:1304                                    ; preds = %1301
  %1305 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1306 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1307 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1308 = fadd fast float %1305, -5.000000e-01
  %1309 = fadd fast float %1306, -5.000000e-01
  %1310 = fadd fast float %1307, -5.000000e-01
  %1311 = fmul fast float %1308, %1190
  %1312 = fmul fast float %1309, %1190
  %1313 = fmul fast float %1310, %1190
  %1314 = fadd fast float %1311, 5.000000e-01
  %1315 = fadd fast float %1312, 5.000000e-01
  %1316 = fadd fast float %1313, 5.000000e-01
  %1317 = call float @dx.op.unary.f32(i32 24, float %1165)  ; Sqrt(value)
  %1318 = call float @dx.op.unary.f32(i32 24, float %1166)  ; Sqrt(value)
  %1319 = call float @dx.op.unary.f32(i32 24, float %1167)  ; Sqrt(value)
  %1320 = fmul fast float %1314, 2.000000e+00
  %1321 = fsub fast float 1.000000e+00, %1320
  %1322 = fmul fast float %1321, %1317
  %1323 = fadd fast float %1322, %1320
  %1324 = fmul fast float %1323, %1317
  %1325 = fmul fast float %1315, 2.000000e+00
  %1326 = fsub fast float 1.000000e+00, %1325
  %1327 = fmul fast float %1326, %1318
  %1328 = fadd fast float %1327, %1325
  %1329 = fmul fast float %1328, %1318
  %1330 = fmul fast float %1316, 2.000000e+00
  %1331 = fsub fast float 1.000000e+00, %1330
  %1332 = fmul fast float %1331, %1319
  %1333 = fadd fast float %1332, %1330
  %1334 = fmul fast float %1333, %1319
  %1335 = fmul fast float %1324, %1324
  %1336 = fmul fast float %1329, %1329
  %1337 = fmul fast float %1334, %1334
  br label %1354

; <label>:1338                                    ; preds = %1301
  %1339 = fmul fast float %288, %288
  %1340 = fmul fast float %292, %292
  %1341 = fmul fast float %296, %296
  %1342 = fadd fast float %1339, -1.000000e+00
  %1343 = fadd fast float %1340, -1.000000e+00
  %1344 = fadd fast float %1341, -1.000000e+00
  %1345 = fmul fast float %1190, %1342
  %1346 = fmul fast float %1190, %1343
  %1347 = fmul fast float %1190, %1344
  %1348 = fadd fast float %1345, 1.000000e+00
  %1349 = fadd fast float %1346, 1.000000e+00
  %1350 = fadd fast float %1347, 1.000000e+00
  %1351 = fmul fast float %1348, %1165
  %1352 = fmul fast float %1349, %1166
  %1353 = fmul fast float %1350, %1167
  br label %1354

; <label>:1354                                    ; preds = %1338, %1304, %1195, %1151
  %1355 = phi float [ %1300, %1195 ], [ %1176, %1304 ], [ %1176, %1338 ], [ 0x3FA23C0BE0000000, %1151 ]
  %1356 = phi float [ %1292, %1195 ], [ %1335, %1304 ], [ %1351, %1338 ], [ 1.000000e+00, %1151 ]
  %1357 = phi float [ %1293, %1195 ], [ %1336, %1304 ], [ %1352, %1338 ], [ 1.000000e+00, %1151 ]
  %1358 = phi float [ %1294, %1195 ], [ %1337, %1304 ], [ %1353, %1338 ], [ 1.000000e+00, %1151 ]
  %1359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.i32 %1359, 1
  %1361 = and i32 %1360, 1
  %1362 = icmp ne i32 %1361, 0
  %1363 = add i32 %33, 356
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 32
  %1367 = icmp ne i32 %1366, 0
  %1368 = and i1 %1362, %1367
  %1369 = select i1 %1368, float 1.000000e+00, float %1356
  %1370 = select i1 %1368, float 0x3FD3333340000000, float %1357
  %1371 = select i1 %1368, float 0x3FD3333340000000, float %1358
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = and i32 %1373, 32
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1448, label %1376

; <label>:1376                                    ; preds = %1354
  %1377 = add i32 %33, 108
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = add i32 %33, 396
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = add i32 %1382, 0
  %1384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1384, %dx.types.Handle %74, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = extractvalue %dx.types.ResRet.f32 %1385, 1
  %1388 = extractvalue %dx.types.ResRet.f32 %1385, 2
  %1389 = extractvalue %dx.types.ResRet.f32 %1385, 3
  %1390 = and i32 %1379, 255
  %1391 = uitofp i32 %1390 to float
  %1392 = lshr i32 %1379, 8
  %1393 = and i32 %1392, 255
  %1394 = uitofp i32 %1393 to float
  %1395 = lshr i32 %1379, 16
  %1396 = and i32 %1395, 255
  %1397 = uitofp i32 %1396 to float
  %1398 = fmul fast float %1397, 0x3F70101000000000
  %1399 = fmul fast float %1386, %1391
  %1400 = fadd fast float %1399, %1394
  %1401 = fmul fast float %1400, 0x3F70101000000000
  %1402 = fadd fast float %1387, -5.000000e-01
  %1403 = fadd fast float %1389, -5.000000e-01
  %1404 = fmul fast float %1402, %1398
  %1405 = fmul fast float %1403, %1398
  %1406 = fadd fast float %1404, 5.000000e-01
  %1407 = fadd fast float %1405, 5.000000e-01
  %1408 = fmul fast float %1406, 2.000000e+00
  %1409 = fadd fast float %1408, -1.000000e+00
  %1410 = fmul fast float %1407, 2.000000e+00
  %1411 = fadd fast float %1410, -1.000000e+00
  %1412 = fadd fast float %1409, %1411
  %1413 = fmul fast float %1412, 5.000000e-01
  %1414 = fsub fast float %1409, %1411
  %1415 = fmul fast float %1414, 5.000000e-01
  %1416 = call float @dx.op.unary.f32(i32 6, float %1413)  ; FAbs(value)
  %1417 = fsub fast float 1.000000e+00, %1416
  %1418 = call float @dx.op.unary.f32(i32 6, float %1415)  ; FAbs(value)
  %1419 = fsub fast float %1417, %1418
  %1420 = call float @dx.op.dot3.f32(i32 55, float %1413, float %1415, float %1419, float %1413, float %1415, float %1419)  ; Dot3(ax,ay,az,bx,by,bz)
  %1421 = call float @dx.op.unary.f32(i32 25, float %1420)  ; Rsqrt(value)
  %1422 = fmul fast float %1413, %1421
  %1423 = fmul fast float %1415, %1421
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 67108864
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1444, label %1428

; <label>:1428                                    ; preds = %1376
  %1429 = add i32 %33, 296
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 65535
  %1433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1432)  ; LegacyF16ToF32(value)
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 65535
  %1437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1436)  ; LegacyF16ToF32(value)
  %1438 = lshr i32 %1431, 16
  %1439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1438)  ; LegacyF16ToF32(value)
  %1440 = fsub fast float %1401, %1439
  %1441 = fmul fast float %1440, %1433
  %1442 = fadd fast float %1441, %1437
  %1443 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  br label %1444

; <label>:1444                                    ; preds = %1428, %1376
  %1445 = phi float [ %1443, %1428 ], [ %1401, %1376 ]
  %1446 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %980, float %981)  ; Dot2(ax,ay,bx,by)
  %1447 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %982, float %983)  ; Dot2(ax,ay,bx,by)
  br label %1448

; <label>:1448                                    ; preds = %1444, %1354
  %1449 = phi float [ %1445, %1444 ], [ 0x3FD6666660000000, %1354 ]
  %1450 = phi float [ %1446, %1444 ], [ 0.000000e+00, %1354 ]
  %1451 = phi float [ %1447, %1444 ], [ 0.000000e+00, %1354 ]
  %1452 = phi float [ %1388, %1444 ], [ 1.000000e+00, %1354 ]
  %1453 = add i32 %33, 176
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = lshr i32 %1455, 22
  %1457 = shl nuw nsw i32 %1456, 5
  %1458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1457)  ; LegacyF16ToF32(value)
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 64
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1496, label %1463

; <label>:1463                                    ; preds = %1448
  %1464 = add i32 %33, 412
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 131072
  %1472 = icmp eq i32 %1471, 0
  %1473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %74, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.ResRet.f32 %1473, 2
  %1477 = fmul fast float %1474, %276
  %1478 = fmul fast float %1475, %279
  %1479 = fmul fast float %1476, %282
  br i1 %1472, label %1486, label %1480

; <label>:1480                                    ; preds = %1463
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 0
  %1483 = fmul fast float %1482, %1477
  %1484 = fmul fast float %1482, %1478
  %1485 = fmul fast float %1482, %1479
  br label %1486

; <label>:1486                                    ; preds = %1480, %1463
  %1487 = phi float [ %1483, %1480 ], [ %1477, %1463 ]
  %1488 = phi float [ %1484, %1480 ], [ %1478, %1463 ]
  %1489 = phi float [ %1485, %1480 ], [ %1479, %1463 ]
  %1490 = fmul fast float %1487, %1458
  %1491 = select i1 %217, float %1490, float %1487
  %1492 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1488, float %1489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1493 = select i1 %217, float 0.000000e+00, float %1487
  %1494 = select i1 %217, float %1492, float %1488
  %1495 = select i1 %217, float 0.000000e+00, float %1489
  br label %1496

; <label>:1496                                    ; preds = %1486, %1448
  %1497 = phi float [ %1493, %1486 ], [ 0.000000e+00, %1448 ]
  %1498 = phi float [ %1494, %1486 ], [ 0.000000e+00, %1448 ]
  %1499 = phi float [ %1495, %1486 ], [ 0.000000e+00, %1448 ]
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 1024
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1534, label %1504

; <label>:1504                                    ; preds = %1496
  %1505 = add i32 %33, 168
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1509, 0x3F70101020000000
  %1511 = lshr i32 %1507, 8
  %1512 = and i32 %1511, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1507, 16
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = fmul fast float %1510, %1510
  %1520 = fmul fast float %1514, %1514
  %1521 = fmul fast float %1518, %1518
  %1522 = add i32 %33, 480
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = add i32 %1524, 0
  %1526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1526, %dx.types.Handle %75, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = extractvalue %dx.types.ResRet.f32 %1527, 1
  %1530 = extractvalue %dx.types.ResRet.f32 %1527, 2
  %1531 = fmul fast float %1519, %1528
  %1532 = fmul fast float %1520, %1529
  %1533 = fmul fast float %1521, %1530
  br label %1534

; <label>:1534                                    ; preds = %1504, %1496
  %1535 = phi float [ %1531, %1504 ], [ 0.000000e+00, %1496 ]
  %1536 = phi float [ %1532, %1504 ], [ 0.000000e+00, %1496 ]
  %1537 = phi float [ %1533, %1504 ], [ 0.000000e+00, %1496 ]
  %1538 = fcmp fast ogt float %1535, 0.000000e+00
  %1539 = fcmp fast ogt float %1536, 0.000000e+00
  %1540 = fcmp fast ogt float %1537, 0.000000e+00
  %1541 = call float @dx.op.unary.f32(i32 23, float %1535)  ; Log(value)
  %1542 = call float @dx.op.unary.f32(i32 23, float %1536)  ; Log(value)
  %1543 = call float @dx.op.unary.f32(i32 23, float %1537)  ; Log(value)
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = lshr i32 %1545, 7
  %1547 = and i32 %1546, 32752
  %1548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1547)  ; LegacyF16ToF32(value)
  %1549 = fmul fast float %1541, 0xBFE62E4300000000
  %1550 = fmul fast float %1549, %1548
  %1551 = fmul fast float %1542, 0xBFE62E4300000000
  %1552 = fmul fast float %1551, %1548
  %1553 = fmul fast float %1543, 0xBFE62E4300000000
  %1554 = fmul fast float %1553, %1548
  %1555 = select i1 %1538, float %1550, float 1.270000e+02
  %1556 = select i1 %1539, float %1552, float 1.270000e+02
  %1557 = select i1 %1540, float %1554, float 1.270000e+02
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 26624
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1598, label %1562

; <label>:1562                                    ; preds = %1534
  %1563 = add i32 %33, 496
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = add i32 %1565, 0
  %1567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1567, %dx.types.Handle %75, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 1048576
  %1573 = icmp ne i32 %1572, 0
  %1574 = and i32 %1571, 2048
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1585, label %1576

; <label>:1576                                    ; preds = %1562
  %1577 = extractvalue %dx.types.ResRet.f32 %1568, 3
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = shl i32 %1579, 4
  %1581 = and i32 %1580, 32752
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = fmul fast float %1582, %1577
  %1584 = call float @dx.op.binary.f32(i32 35, float %1583, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1585

; <label>:1585                                    ; preds = %1576, %1562
  %1586 = phi float [ %1584, %1576 ], [ 0x3F70101020000000, %1562 ]
  %1587 = and i32 %1571, 16384
  %1588 = icmp eq i32 %1587, 0
  br i1 %1588, label %1598, label %1589

; <label>:1589                                    ; preds = %1585
  %1590 = add i32 %33, 112
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = lshr i32 %1592, 24
  %1594 = uitofp i32 %1593 to float
  %1595 = fmul fast float %1569, 0x3F70101020000000
  %1596 = select i1 %1573, float 0x3F70101020000000, float %1595
  %1597 = fmul fast float %1596, %1594
  br label %1598

; <label>:1598                                    ; preds = %1589, %1585, %1534
  %1599 = phi float [ %1586, %1589 ], [ %1586, %1585 ], [ 0x3F70101020000000, %1534 ]
  %1600 = phi float [ %1597, %1589 ], [ 0.000000e+00, %1585 ], [ 0.000000e+00, %1534 ]
  %1601 = add i32 %33, 112
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = lshr i32 %1603, 8
  %1607 = and i32 %1606, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = fmul fast float %1608, %1609
  %1611 = fadd fast float %1610, %1605
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  br i1 %968, label %1614, label %1649

; <label>:1614                                    ; preds = %1598
  %1615 = fmul fast float %1599, 2.000000e+00
  %1616 = fcmp fast olt float %1555, 1.270000e+02
  %1617 = fcmp fast olt float %1556, 1.270000e+02
  %1618 = fcmp fast olt float %1557, 1.270000e+02
  %1619 = fmul fast float %1555, 0xBFF7154760000000
  %1620 = fmul fast float %1619, %1615
  %1621 = fmul fast float %1556, 0xBFF7154760000000
  %1622 = fmul fast float %1621, %1615
  %1623 = fmul fast float %1557, 0xBFF7154760000000
  %1624 = fmul fast float %1623, %1615
  %1625 = call float @dx.op.unary.f32(i32 21, float %1620)  ; Exp(value)
  %1626 = call float @dx.op.unary.f32(i32 21, float %1622)  ; Exp(value)
  %1627 = call float @dx.op.unary.f32(i32 21, float %1624)  ; Exp(value)
  %1628 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1629 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1630 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1631 = fadd fast float %1628, -1.000000e+00
  %1632 = select i1 %1616, float %1631, float -1.000000e+00
  %1633 = fadd fast float %1629, -1.000000e+00
  %1634 = select i1 %1617, float %1633, float -1.000000e+00
  %1635 = fadd fast float %1630, -1.000000e+00
  %1636 = select i1 %1618, float %1635, float -1.000000e+00
  %1637 = fmul fast float %1632, %1149
  %1638 = fmul fast float %1634, %1149
  %1639 = fmul fast float %1636, %1149
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fadd fast float %1639, 1.000000e+00
  %1643 = fmul fast float %1640, %955
  %1644 = fmul fast float %1641, %956
  %1645 = fmul fast float %1642, %957
  %1646 = fmul fast float %1640, %958
  %1647 = fmul fast float %1641, %959
  %1648 = fmul fast float %1642, %960
  br label %1649

; <label>:1649                                    ; preds = %1614, %1598
  %1650 = phi float [ %1643, %1614 ], [ %955, %1598 ]
  %1651 = phi float [ %1644, %1614 ], [ %956, %1598 ]
  %1652 = phi float [ %1645, %1614 ], [ %957, %1598 ]
  %1653 = phi float [ %1646, %1614 ], [ %958, %1598 ]
  %1654 = phi float [ %1647, %1614 ], [ %959, %1598 ]
  %1655 = phi float [ %1648, %1614 ], [ %960, %1598 ]
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 3
  %1659 = icmp eq i32 %1658, 3
  br i1 %1659, label %1738, label %1660

; <label>:1660                                    ; preds = %1649
  %1661 = and i32 %1657, 16
  %1662 = icmp ne i32 %1661, 0
  %1663 = select i1 %1662, float %1149, float 0.000000e+00
  %1664 = icmp eq i32 %1658, 0
  br i1 %1664, label %1665, label %1693

; <label>:1665                                    ; preds = %1660
  %1666 = and i32 %1657, 64
  %1667 = icmp ne i32 %1666, 0
  %1668 = select i1 %1667, float %1149, float 0.000000e+00
  %1669 = fsub fast float %1369, %1650
  %1670 = fsub fast float %1370, %1651
  %1671 = fsub fast float %1371, %1652
  %1672 = fmul fast float %1663, %1669
  %1673 = fmul fast float %1663, %1670
  %1674 = fmul fast float %1663, %1671
  %1675 = fadd fast float %1672, %1650
  %1676 = fadd fast float %1673, %1651
  %1677 = fadd fast float %1674, %1652
  %1678 = fsub fast float %1355, %961
  %1679 = fmul fast float %1663, %1678
  %1680 = fadd fast float %1679, %961
  %1681 = fsub fast float %1497, %1653
  %1682 = fsub fast float %1498, %1654
  %1683 = fsub fast float %1499, %1655
  %1684 = fmul fast float %1668, %1681
  %1685 = fmul fast float %1668, %1682
  %1686 = fmul fast float %1668, %1683
  %1687 = fadd fast float %1684, %1653
  %1688 = fadd fast float %1685, %1654
  %1689 = fadd fast float %1686, %1655
  %1690 = fsub fast float %1613, %966
  %1691 = fmul fast float %1663, %1690
  %1692 = fadd fast float %1691, %966
  br label %1738

; <label>:1693                                    ; preds = %1660
  %1694 = icmp eq i32 %1658, 1
  br i1 %1694, label %1695, label %1708

; <label>:1695                                    ; preds = %1693
  %1696 = fadd fast float %1369, -1.000000e+00
  %1697 = fadd fast float %1370, -1.000000e+00
  %1698 = fadd fast float %1371, -1.000000e+00
  %1699 = fmul fast float %1663, %1696
  %1700 = fmul fast float %1663, %1697
  %1701 = fmul fast float %1663, %1698
  %1702 = fadd fast float %1699, 1.000000e+00
  %1703 = fadd fast float %1700, 1.000000e+00
  %1704 = fadd fast float %1701, 1.000000e+00
  %1705 = fmul fast float %1702, %1650
  %1706 = fmul fast float %1703, %1651
  %1707 = fmul fast float %1704, %1652
  br label %1738

; <label>:1708                                    ; preds = %1693
  %1709 = icmp eq i32 %1658, 2
  br i1 %1709, label %1710, label %1738

; <label>:1710                                    ; preds = %1708
  %1711 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1712 = call float @dx.op.unary.f32(i32 24, float %1370)  ; Sqrt(value)
  %1713 = call float @dx.op.unary.f32(i32 24, float %1371)  ; Sqrt(value)
  %1714 = fadd fast float %1711, -5.000000e-01
  %1715 = fadd fast float %1712, -5.000000e-01
  %1716 = fadd fast float %1713, -5.000000e-01
  %1717 = fmul fast float %1714, %1663
  %1718 = fmul fast float %1715, %1663
  %1719 = fmul fast float %1716, %1663
  %1720 = fadd fast float %1717, 5.000000e-01
  %1721 = fadd fast float %1718, 5.000000e-01
  %1722 = fadd fast float %1719, 5.000000e-01
  %1723 = fmul fast float %1720, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1650
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1650
  %1728 = fmul fast float %1721, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1651
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1651
  %1733 = fmul fast float %1722, 2.000000e+00
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1734, %1652
  %1736 = fadd fast float %1735, %1733
  %1737 = fmul fast float %1736, %1652
  br label %1738

; <label>:1738                                    ; preds = %1710, %1708, %1695, %1665, %1649
  %1739 = phi float [ %1650, %1649 ], [ %1727, %1710 ], [ %1650, %1708 ], [ %1705, %1695 ], [ %1675, %1665 ]
  %1740 = phi float [ %1651, %1649 ], [ %1732, %1710 ], [ %1651, %1708 ], [ %1706, %1695 ], [ %1676, %1665 ]
  %1741 = phi float [ %1652, %1649 ], [ %1737, %1710 ], [ %1652, %1708 ], [ %1707, %1695 ], [ %1677, %1665 ]
  %1742 = phi float [ %1653, %1649 ], [ %1653, %1710 ], [ %1653, %1708 ], [ %1653, %1695 ], [ %1687, %1665 ]
  %1743 = phi float [ %1654, %1649 ], [ %1654, %1710 ], [ %1654, %1708 ], [ %1654, %1695 ], [ %1688, %1665 ]
  %1744 = phi float [ %1655, %1649 ], [ %1655, %1710 ], [ %1655, %1708 ], [ %1655, %1695 ], [ %1689, %1665 ]
  %1745 = phi float [ %961, %1649 ], [ %961, %1710 ], [ %961, %1708 ], [ %961, %1695 ], [ %1680, %1665 ]
  %1746 = phi float [ %966, %1649 ], [ %966, %1710 ], [ %966, %1708 ], [ %966, %1695 ], [ %1692, %1665 ]
  %1747 = and i32 %1657, 12
  %1748 = icmp eq i32 %1747, 12
  br i1 %1748, label %1831, label %1749

; <label>:1749                                    ; preds = %1738
  %1750 = and i32 %1657, 2097184
  %1751 = icmp eq i32 %1750, 2097184
  %1752 = select i1 %1751, float %1149, float 0.000000e+00
  %1753 = and i32 %1657, 4194336
  %1754 = icmp eq i32 %1753, 4194336
  %1755 = select i1 %1754, float %1149, float 0.000000e+00
  %1756 = and i32 %1657, 8388640
  %1757 = icmp eq i32 %1756, 8388640
  %1758 = select i1 %1757, float %1149, float 0.000000e+00
  %1759 = and i32 %1657, 16384
  %1760 = icmp ne i32 %1759, 0
  %1761 = select i1 %1760, float %1149, float 0.000000e+00
  %1762 = icmp eq i32 %1747, 0
  br i1 %1762, label %1763, label %1779

; <label>:1763                                    ; preds = %1749
  %1764 = fsub fast float %1450, %953
  %1765 = fsub fast float %1451, %954
  %1766 = fmul fast float %1752, %1764
  %1767 = fmul fast float %1752, %1765
  %1768 = fadd fast float %1766, %953
  %1769 = fadd fast float %1767, %954
  %1770 = fsub fast float %1452, %964
  %1771 = fmul fast float %1755, %1770
  %1772 = fadd fast float %1771, %964
  %1773 = fsub fast float %1449, %963
  %1774 = fmul fast float %1758, %1773
  %1775 = fadd fast float %1774, %963
  %1776 = fsub fast float %1600, %965
  %1777 = fmul fast float %1761, %1776
  %1778 = fadd fast float %1777, %965
  br label %1831

; <label>:1779                                    ; preds = %1749
  %1780 = icmp eq i32 %1747, 4
  br i1 %1780, label %1781, label %1815

; <label>:1781                                    ; preds = %1779
  %1782 = fmul fast float %1752, %1450
  %1783 = fmul fast float %1752, %1451
  %1784 = fadd fast float %1782, %953
  %1785 = fadd fast float %1783, %954
  %1786 = call float @dx.op.binary.f32(i32 36, float %964, float %1452)  ; FMin(a,b)
  %1787 = fsub fast float %1786, %964
  %1788 = fmul fast float %1787, %1755
  %1789 = fadd fast float %1788, %964
  %1790 = fadd fast float %1449, %963
  %1791 = fmul fast float %1790, 0x3FF337FAE0000000
  %1792 = fmul fast float %963, %963
  %1793 = fmul fast float %1449, %1449
  %1794 = fadd fast float %1793, %1792
  %1795 = fmul fast float %1794, 0x3FE5152B00000000
  %1796 = fmul fast float %963, 0xBFCC1F85E0000000
  %1797 = fmul fast float %1796, %1449
  %1798 = fadd fast float %1797, 0xBFE1363700000000
  %1799 = fadd fast float %1798, %1791
  %1800 = fsub fast float %1799, %1795
  %1801 = fmul fast float %1790, 0x3FBA6F0D00000000
  %1802 = fmul fast float %1794, 0x3FD0432880000000
  %1803 = fmul fast float %963, 0xBFEF110800000000
  %1804 = fmul fast float %1803, %1449
  %1805 = fadd fast float %1804, 1.000000e+00
  %1806 = fsub fast float %1805, %1801
  %1807 = fadd fast float %1806, %1802
  %1808 = fdiv fast float %1800, %1807
  %1809 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1810 = fsub fast float %1809, %963
  %1811 = fmul fast float %1810, %1758
  %1812 = fadd fast float %1811, %963
  %1813 = fmul fast float %1761, %1600
  %1814 = fadd fast float %1813, %965
  br label %1831

; <label>:1815                                    ; preds = %1779
  %1816 = icmp eq i32 %1747, 8
  br i1 %1816, label %1817, label %1831

; <label>:1817                                    ; preds = %1815
  %1818 = fmul fast float %1752, %1450
  %1819 = fmul fast float %1752, %1451
  %1820 = fadd fast float %1818, %953
  %1821 = fadd fast float %1819, %954
  %1822 = call float @dx.op.binary.f32(i32 36, float %964, float %1452)  ; FMin(a,b)
  %1823 = fsub fast float %1822, %964
  %1824 = fmul fast float %1823, %1755
  %1825 = fadd fast float %1824, %964
  %1826 = fsub fast float %1449, %963
  %1827 = fmul fast float %1758, %1826
  %1828 = fadd fast float %1827, %963
  %1829 = fmul fast float %1761, %1600
  %1830 = fadd fast float %1829, %965
  br label %1831

; <label>:1831                                    ; preds = %1817, %1815, %1781, %1763, %1738, %1148, %967, %952
  %1832 = phi float [ %953, %1738 ], [ %953, %1148 ], [ %953, %952 ], [ %1820, %1817 ], [ %953, %1815 ], [ %1784, %1781 ], [ %1768, %1763 ], [ %953, %967 ]
  %1833 = phi float [ %954, %1738 ], [ %954, %1148 ], [ %954, %952 ], [ %1821, %1817 ], [ %954, %1815 ], [ %1785, %1781 ], [ %1769, %1763 ], [ %954, %967 ]
  %1834 = phi float [ %1739, %1738 ], [ %955, %1148 ], [ %955, %952 ], [ %1739, %1817 ], [ %1739, %1815 ], [ %1739, %1781 ], [ %1739, %1763 ], [ %955, %967 ]
  %1835 = phi float [ %1740, %1738 ], [ %956, %1148 ], [ %956, %952 ], [ %1740, %1817 ], [ %1740, %1815 ], [ %1740, %1781 ], [ %1740, %1763 ], [ %956, %967 ]
  %1836 = phi float [ %1741, %1738 ], [ %957, %1148 ], [ %957, %952 ], [ %1741, %1817 ], [ %1741, %1815 ], [ %1741, %1781 ], [ %1741, %1763 ], [ %957, %967 ]
  %1837 = phi float [ %1742, %1738 ], [ %958, %1148 ], [ %958, %952 ], [ %1742, %1817 ], [ %1742, %1815 ], [ %1742, %1781 ], [ %1742, %1763 ], [ %958, %967 ]
  %1838 = phi float [ %1743, %1738 ], [ %959, %1148 ], [ %959, %952 ], [ %1743, %1817 ], [ %1743, %1815 ], [ %1743, %1781 ], [ %1743, %1763 ], [ %959, %967 ]
  %1839 = phi float [ %1744, %1738 ], [ %960, %1148 ], [ %960, %952 ], [ %1744, %1817 ], [ %1744, %1815 ], [ %1744, %1781 ], [ %1744, %1763 ], [ %960, %967 ]
  %1840 = phi float [ %1745, %1738 ], [ %961, %1148 ], [ %961, %952 ], [ %1745, %1817 ], [ %1745, %1815 ], [ %1745, %1781 ], [ %1745, %1763 ], [ %961, %967 ]
  %1841 = phi float [ %963, %1738 ], [ %963, %1148 ], [ %963, %952 ], [ %1828, %1817 ], [ %963, %1815 ], [ %1812, %1781 ], [ %1775, %1763 ], [ %963, %967 ]
  %1842 = phi float [ %964, %1738 ], [ %964, %1148 ], [ %964, %952 ], [ %1825, %1817 ], [ %964, %1815 ], [ %1789, %1781 ], [ %1772, %1763 ], [ %964, %967 ]
  %1843 = phi float [ %965, %1738 ], [ %965, %1148 ], [ %965, %952 ], [ %1830, %1817 ], [ %965, %1815 ], [ %1814, %1781 ], [ %1778, %1763 ], [ %965, %967 ]
  %1844 = phi float [ %1746, %1738 ], [ %966, %1148 ], [ %966, %952 ], [ %1746, %1817 ], [ %1746, %1815 ], [ %1746, %1781 ], [ %1746, %1763 ], [ %966, %967 ]
  br i1 %403, label %2709, label %1845

; <label>:1845                                    ; preds = %1831
  %1846 = icmp ult i32 %456, 3
  %1847 = add i32 %33, 56
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = add i32 %33, 60
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = or i32 %1852, %1849
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %2709, label %1855

; <label>:1855                                    ; preds = %1845
  %1856 = and i32 %1849, 262144
  %1857 = icmp ne i32 %1856, 0
  %1858 = select i1 %1857, float %39, float 1.000000e+00
  %1859 = select i1 %1857, float %40, float 0.000000e+00
  %1860 = select i1 %1857, float %41, float 0.000000e+00
  %1861 = select i1 %1857, float %42, float 1.000000e+00
  %1862 = select i1 %1857, float %43, float %66
  %1863 = select i1 %1857, float %44, float %67
  %1864 = add i32 %33, 316
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = lshr i32 %1866, 16
  %1868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1867)  ; LegacyF16ToF32(value)
  %1869 = fmul fast float %1868, 0x3F50624DE0000000
  %1870 = add i32 %33, 120
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = lshr i32 %1872, 16
  %1874 = and i32 %1873, 255
  %1875 = lshr i32 %1872, 24
  %1876 = add i32 %33, 324
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = and i32 %1878, 65535
  %1880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1879)  ; LegacyF16ToF32(value)
  %1881 = lshr i32 %1878, 16
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = add i32 %33, 64
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = lshr i32 %1885, 22
  %1887 = shl nuw nsw i32 %1886, 5
  %1888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1887)  ; LegacyF16ToF32(value)
  %1889 = shl i32 %1885, 4
  %1890 = and i32 %1889, 32752
  %1891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1890)  ; LegacyF16ToF32(value)
  %1892 = lshr i32 %1885, 7
  %1893 = and i32 %1892, 32752
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1897 = fmul fast float %1896, 1.000000e+03
  %1898 = fmul fast float %353, %1897
  %1899 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1900 = fadd fast float %1899, %343
  %1901 = fmul fast float %354, %1897
  %1902 = call float @dx.op.unary.f32(i32 22, float %1901)  ; Frc(value)
  %1903 = fadd fast float %1902, %345
  %1904 = fmul fast float %1869, %1897
  %1905 = call float @dx.op.unary.f32(i32 22, float %1904)  ; Frc(value)
  %1906 = fmul fast float %1905, 0x401921FB60000000
  %1907 = fadd fast float %1906, %1888
  %1908 = call float @dx.op.unary.f32(i32 13, float %1907)  ; Sin(value)
  %1909 = call float @dx.op.unary.f32(i32 12, float %1907)  ; Cos(value)
  %1910 = fsub fast float -0.000000e+00, %1908
  %1911 = fadd fast float %1862, -5.000000e-01
  %1912 = fadd fast float %1863, -5.000000e-01
  %1913 = fmul fast float %1880, %1911
  %1914 = fmul fast float %1882, %1912
  %1915 = fadd fast float %1913, 5.000000e-01
  %1916 = fadd fast float %1914, 5.000000e-01
  %1917 = fmul fast float %1891, %1915
  %1918 = fmul fast float %1894, %1916
  %1919 = fmul fast float %1909, %1917
  %1920 = call float @dx.op.tertiary.f32(i32 46, float %1910, float %1918, float %1919)  ; FMad(a,b,c)
  %1921 = fmul fast float %1908, %1917
  %1922 = call float @dx.op.tertiary.f32(i32 46, float %1909, float %1918, float %1921)  ; FMad(a,b,c)
  %1923 = fadd fast float %1900, %1920
  %1924 = fadd fast float %1903, %1922
  %1925 = icmp ugt i32 %1874, 1
  %1926 = icmp ugt i32 %1872, 33554431
  %1927 = or i1 %1926, %1925
  br i1 %1927, label %1928, label %1953

; <label>:1928                                    ; preds = %1855
  %1929 = add i32 %33, 260
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = lshr i32 %1931, 16
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = fmul fast float %1896, %1933
  %1935 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1936 = mul nuw nsw i32 %1874, %1875
  %1937 = uitofp i32 %1936 to float
  %1938 = fmul fast float %1935, %1937
  %1939 = call float @dx.op.unary.f32(i32 27, float %1938)  ; Round_ni(value)
  %1940 = fptoui float %1939 to i32
  %1941 = urem i32 %1940, %1874
  %1942 = udiv i32 %1940, %1875
  %1943 = call float @dx.op.unary.f32(i32 22, float %1923)  ; Frc(value)
  %1944 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1945 = uitofp i32 %1941 to float
  %1946 = uitofp i32 %1942 to float
  %1947 = fadd fast float %1943, %1945
  %1948 = fadd fast float %1944, %1946
  %1949 = uitofp i32 %1874 to float
  %1950 = uitofp i32 %1875 to float
  %1951 = fdiv fast float %1947, %1949
  %1952 = fdiv fast float %1948, %1950
  br label %1953

; <label>:1953                                    ; preds = %1928, %1855
  %1954 = phi float [ %1951, %1928 ], [ %1923, %1855 ]
  %1955 = phi float [ %1952, %1928 ], [ %1924, %1855 ]
  %1956 = and i32 %1849, 256
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2004, label %1958

; <label>:1958                                    ; preds = %1953
  %1959 = add i32 %33, 448
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1963, %dx.types.Handle %75, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1966 = add i32 %33, 132
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = shl i32 %1968, 4
  %1970 = and i32 %1969, 32752
  %1971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1970)  ; LegacyF16ToF32(value)
  %1972 = lshr i32 %1968, 7
  %1973 = and i32 %1972, 32752
  %1974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1973)  ; LegacyF16ToF32(value)
  %1975 = fsub fast float 1.000000e+00, %452
  %1976 = call float @dx.op.binary.f32(i32 35, float %1975, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1977 = bitcast float %452 to i32
  %1978 = sitofp i32 %1977 to float
  %1979 = fadd fast float %1978, 0xC1CFBF8940000000
  %1980 = fmul fast float %1974, %1979
  %1981 = fadd fast float %1980, 0x41CFBF8940000000
  %1982 = fptosi float %1981 to i32
  %1983 = bitcast i32 %1982 to float
  %1984 = bitcast float %1976 to i32
  %1985 = sitofp i32 %1984 to float
  %1986 = fadd fast float %1985, 0xC1CFBF8940000000
  %1987 = fmul fast float %1986, %1974
  %1988 = fadd fast float %1987, 0x41CFBF8940000000
  %1989 = fptosi float %1988 to i32
  %1990 = bitcast i32 %1989 to float
  %1991 = fmul fast float %1983, %1971
  %1992 = fmul fast float %1990, %1971
  %1993 = fsub fast float %1976, %1991
  %1994 = fadd fast float %1992, %1976
  %1995 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1997 = fsub fast float %1965, %1995
  %1998 = fsub fast float %1996, %1995
  %1999 = bitcast float %1998 to i32
  %2000 = sub nsw i32 2129859010, %1999
  %2001 = bitcast i32 %2000 to float
  %2002 = fmul fast float %2001, %1997
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  br label %2004

; <label>:2004                                    ; preds = %1958, %1953
  %2005 = phi float [ %2003, %1958 ], [ %452, %1953 ]
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 128
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2026, label %2010

; <label>:2010                                    ; preds = %2004
  %2011 = add i32 %33, 432
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = add i32 %2013, 0
  %2015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2016 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2015, %dx.types.Handle %75, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 524288
  %2021 = icmp ne i32 %2020, 0
  %2022 = fcmp fast ogt float %2017, 0x3FE0101020000000
  %2023 = select i1 %2022, float 1.000000e+00, float 0.000000e+00
  %2024 = select i1 %2021, float %2023, float %2017
  %2025 = fmul fast float %2024, %2005
  br label %2026

; <label>:2026                                    ; preds = %2010, %2004
  %2027 = phi float [ %2025, %2010 ], [ %2005, %2004 ]
  %2028 = fcmp fast ult float %2027, 0x3F70101020000000
  br i1 %2028, label %2709, label %2029

; <label>:2029                                    ; preds = %2026
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 16
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2232, label %2034

; <label>:2034                                    ; preds = %2029
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = add i32 %33, 384
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = add i32 %2039, 0
  %2041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2041, %dx.types.Handle %74, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2043 = extractvalue %dx.types.ResRet.f32 %2042, 0
  %2044 = extractvalue %dx.types.ResRet.f32 %2042, 1
  %2045 = extractvalue %dx.types.ResRet.f32 %2042, 2
  %2046 = extractvalue %dx.types.ResRet.f32 %2042, 3
  %2047 = and i32 %2036, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = lshr i32 %2036, 8
  %2050 = and i32 %2049, 255
  %2051 = uitofp i32 %2050 to float
  %2052 = fmul fast float %2046, %2048
  %2053 = fadd fast float %2052, %2051
  %2054 = fmul fast float %2053, 0x3F70101000000000
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %2056, 512
  %2058 = icmp eq i32 %2057, 0
  br i1 %2058, label %2067, label %2059

; <label>:2059                                    ; preds = %2034
  %2060 = add i32 %33, 468
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = add i32 %2062, 0
  %2064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2064, %dx.types.Handle %75, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  br label %2067

; <label>:2067                                    ; preds = %2059, %2034
  %2068 = phi float [ %2066, %2059 ], [ 1.000000e+00, %2034 ]
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 33554432
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2179, label %2073

; <label>:2073                                    ; preds = %2067
  %2074 = add i32 %33, 256
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 65535
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = lshr i32 %2076, 16
  %2080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2079)  ; LegacyF16ToF32(value)
  %2081 = add i32 %33, 260
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 65535
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = lshr i32 %2087, 24
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3F70101020000000
  %2091 = and i32 %2087, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = fmul fast float %2092, 0x3F70101020000000
  %2094 = lshr i32 %2087, 8
  %2095 = and i32 %2094, 255
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2096, 0x3F70101020000000
  %2098 = lshr i32 %2087, 16
  %2099 = and i32 %2098, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101020000000
  %2102 = add i32 %33, 252
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = lshr i32 %2104, 24
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = and i32 %2104, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101020000000
  %2111 = lshr i32 %2104, 8
  %2112 = and i32 %2111, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = lshr i32 %2104, 16
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = bitcast float %2043 to i32
  %2120 = ashr i32 %2119, 1
  %2121 = sub nsw i32 1597463174, %2120
  %2122 = bitcast i32 %2121 to float
  %2123 = fmul fast float %2043, 5.000000e-01
  %2124 = fmul fast float %2122, %2122
  %2125 = fmul fast float %2124, %2123
  %2126 = fsub fast float 1.500000e+00, %2125
  %2127 = fmul fast float %2122, %2043
  %2128 = fmul fast float %2127, %2126
  %2129 = bitcast float %2044 to i32
  %2130 = ashr i32 %2129, 1
  %2131 = sub nsw i32 1597463174, %2130
  %2132 = bitcast i32 %2131 to float
  %2133 = fmul fast float %2044, 5.000000e-01
  %2134 = fmul fast float %2132, %2132
  %2135 = fmul fast float %2134, %2133
  %2136 = fsub fast float 1.500000e+00, %2135
  %2137 = fmul fast float %2132, %2044
  %2138 = fmul fast float %2137, %2136
  %2139 = bitcast float %2045 to i32
  %2140 = ashr i32 %2139, 1
  %2141 = sub nsw i32 1597463174, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2045, 5.000000e-01
  %2144 = fmul fast float %2142, %2142
  %2145 = fmul fast float %2144, %2143
  %2146 = fsub fast float 1.500000e+00, %2145
  %2147 = fmul fast float %2142, %2045
  %2148 = fmul fast float %2147, %2146
  %2149 = fsub fast float %2128, %2110
  %2150 = fsub fast float %2138, %2114
  %2151 = fsub fast float %2148, %2118
  %2152 = fmul fast float %2149, %2078
  %2153 = fmul fast float %2150, %2080
  %2154 = fmul fast float %2151, %2085
  %2155 = fadd fast float %2152, %2093
  %2156 = fadd fast float %2153, %2097
  %2157 = fadd fast float %2154, %2101
  %2158 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2159 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2160 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2161 = fmul fast float %2158, %2158
  %2162 = fmul fast float %2159, %2159
  %2163 = fmul fast float %2160, %2160
  %2164 = fsub fast float %2161, %2043
  %2165 = fsub fast float %2162, %2044
  %2166 = fsub fast float %2163, %2045
  %2167 = fmul fast float %2164, %2068
  %2168 = fmul fast float %2165, %2068
  %2169 = fmul fast float %2166, %2068
  %2170 = fadd fast float %2167, %2043
  %2171 = fadd fast float %2168, %2044
  %2172 = fadd fast float %2169, %2045
  %2173 = fadd fast float %2090, %2054
  %2174 = fsub fast float %2173, %2107
  %2175 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2176 = fsub fast float %2175, %2054
  %2177 = fmul fast float %2176, %2068
  %2178 = fadd fast float %2177, %2054
  br label %2232

; <label>:2179                                    ; preds = %2067
  %2180 = and i32 %2070, 134217728
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2216, label %2182

; <label>:2182                                    ; preds = %2179
  %2183 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2184 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2185 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2186 = fadd fast float %2183, -5.000000e-01
  %2187 = fadd fast float %2184, -5.000000e-01
  %2188 = fadd fast float %2185, -5.000000e-01
  %2189 = fmul fast float %2186, %2068
  %2190 = fmul fast float %2187, %2068
  %2191 = fmul fast float %2188, %2068
  %2192 = fadd fast float %2189, 5.000000e-01
  %2193 = fadd fast float %2190, 5.000000e-01
  %2194 = fadd fast float %2191, 5.000000e-01
  %2195 = call float @dx.op.unary.f32(i32 24, float %2043)  ; Sqrt(value)
  %2196 = call float @dx.op.unary.f32(i32 24, float %2044)  ; Sqrt(value)
  %2197 = call float @dx.op.unary.f32(i32 24, float %2045)  ; Sqrt(value)
  %2198 = fmul fast float %2192, 2.000000e+00
  %2199 = fsub fast float 1.000000e+00, %2198
  %2200 = fmul fast float %2199, %2195
  %2201 = fadd fast float %2200, %2198
  %2202 = fmul fast float %2201, %2195
  %2203 = fmul fast float %2193, 2.000000e+00
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = fmul fast float %2204, %2196
  %2206 = fadd fast float %2205, %2203
  %2207 = fmul fast float %2206, %2196
  %2208 = fmul fast float %2194, 2.000000e+00
  %2209 = fsub fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2209, %2197
  %2211 = fadd fast float %2210, %2208
  %2212 = fmul fast float %2211, %2197
  %2213 = fmul fast float %2202, %2202
  %2214 = fmul fast float %2207, %2207
  %2215 = fmul fast float %2212, %2212
  br label %2232

; <label>:2216                                    ; preds = %2179
  %2217 = fmul fast float %330, %330
  %2218 = fmul fast float %334, %334
  %2219 = fmul fast float %338, %338
  %2220 = fadd fast float %2217, -1.000000e+00
  %2221 = fadd fast float %2218, -1.000000e+00
  %2222 = fadd fast float %2219, -1.000000e+00
  %2223 = fmul fast float %2068, %2220
  %2224 = fmul fast float %2068, %2221
  %2225 = fmul fast float %2068, %2222
  %2226 = fadd fast float %2223, 1.000000e+00
  %2227 = fadd fast float %2224, 1.000000e+00
  %2228 = fadd fast float %2225, 1.000000e+00
  %2229 = fmul fast float %2226, %2043
  %2230 = fmul fast float %2227, %2044
  %2231 = fmul fast float %2228, %2045
  br label %2232

; <label>:2232                                    ; preds = %2216, %2182, %2073, %2029
  %2233 = phi float [ %2178, %2073 ], [ %2054, %2182 ], [ %2054, %2216 ], [ 0x3FA23C0BE0000000, %2029 ]
  %2234 = phi float [ %2170, %2073 ], [ %2213, %2182 ], [ %2229, %2216 ], [ 1.000000e+00, %2029 ]
  %2235 = phi float [ %2171, %2073 ], [ %2214, %2182 ], [ %2230, %2216 ], [ 1.000000e+00, %2029 ]
  %2236 = phi float [ %2172, %2073 ], [ %2215, %2182 ], [ %2231, %2216 ], [ 1.000000e+00, %2029 ]
  %2237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.i32 %2237, 1
  %2239 = and i32 %2238, 1
  %2240 = icmp ne i32 %2239, 0
  %2241 = add i32 %33, 356
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 32
  %2245 = icmp ne i32 %2244, 0
  %2246 = and i1 %2240, %2245
  %2247 = select i1 %2246, float 1.000000e+00, float %2234
  %2248 = select i1 %2246, float 0x3FD3333340000000, float %2235
  %2249 = select i1 %2246, float 0x3FD3333340000000, float %2236
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 32
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2326, label %2254

; <label>:2254                                    ; preds = %2232
  %2255 = add i32 %33, 124
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %33, 400
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %74, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.ResRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.ResRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.ResRet.f32 %2263, 3
  %2268 = and i32 %2257, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = lshr i32 %2257, 8
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = lshr i32 %2257, 16
  %2274 = and i32 %2273, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101000000000
  %2277 = fmul fast float %2264, %2269
  %2278 = fadd fast float %2277, %2272
  %2279 = fmul fast float %2278, 0x3F70101000000000
  %2280 = fadd fast float %2265, -5.000000e-01
  %2281 = fadd fast float %2267, -5.000000e-01
  %2282 = fmul fast float %2280, %2276
  %2283 = fmul fast float %2281, %2276
  %2284 = fadd fast float %2282, 5.000000e-01
  %2285 = fadd fast float %2283, 5.000000e-01
  %2286 = fmul fast float %2284, 2.000000e+00
  %2287 = fadd fast float %2286, -1.000000e+00
  %2288 = fmul fast float %2285, 2.000000e+00
  %2289 = fadd fast float %2288, -1.000000e+00
  %2290 = fadd fast float %2287, %2289
  %2291 = fmul fast float %2290, 5.000000e-01
  %2292 = fsub fast float %2287, %2289
  %2293 = fmul fast float %2292, 5.000000e-01
  %2294 = call float @dx.op.unary.f32(i32 6, float %2291)  ; FAbs(value)
  %2295 = fsub fast float 1.000000e+00, %2294
  %2296 = call float @dx.op.unary.f32(i32 6, float %2293)  ; FAbs(value)
  %2297 = fsub fast float %2295, %2296
  %2298 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2293, float %2297, float %2291, float %2293, float %2297)  ; Dot3(ax,ay,az,bx,by,bz)
  %2299 = call float @dx.op.unary.f32(i32 25, float %2298)  ; Rsqrt(value)
  %2300 = fmul fast float %2291, %2299
  %2301 = fmul fast float %2293, %2299
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 67108864
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2322, label %2306

; <label>:2306                                    ; preds = %2254
  %2307 = add i32 %33, 312
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 65535
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 65535
  %2315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2314)  ; LegacyF16ToF32(value)
  %2316 = lshr i32 %2309, 16
  %2317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2316)  ; LegacyF16ToF32(value)
  %2318 = fsub fast float %2279, %2317
  %2319 = fmul fast float %2318, %2311
  %2320 = fadd fast float %2319, %2315
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  br label %2322

; <label>:2322                                    ; preds = %2306, %2254
  %2323 = phi float [ %2321, %2306 ], [ %2279, %2254 ]
  %2324 = call float @dx.op.dot2.f32(i32 54, float %2300, float %2301, float %1858, float %1859)  ; Dot2(ax,ay,bx,by)
  %2325 = call float @dx.op.dot2.f32(i32 54, float %2300, float %2301, float %1860, float %1861)  ; Dot2(ax,ay,bx,by)
  br label %2326

; <label>:2326                                    ; preds = %2322, %2232
  %2327 = phi float [ %2323, %2322 ], [ 0x3FD6666660000000, %2232 ]
  %2328 = phi float [ %2324, %2322 ], [ 0.000000e+00, %2232 ]
  %2329 = phi float [ %2325, %2322 ], [ 0.000000e+00, %2232 ]
  %2330 = phi float [ %2266, %2322 ], [ 1.000000e+00, %2232 ]
  %2331 = add i32 %33, 192
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = lshr i32 %2333, 22
  %2335 = shl nuw nsw i32 %2334, 5
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 64
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2374, label %2341

; <label>:2341                                    ; preds = %2326
  %2342 = add i32 %33, 416
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = add i32 %2344, 0
  %2346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 131072
  %2350 = icmp eq i32 %2349, 0
  %2351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2346, %dx.types.Handle %74, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2352 = extractvalue %dx.types.ResRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.ResRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.ResRet.f32 %2351, 2
  %2355 = fmul fast float %2352, %318
  %2356 = fmul fast float %2353, %321
  %2357 = fmul fast float %2354, %324
  br i1 %2350, label %2364, label %2358

; <label>:2358                                    ; preds = %2341
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = fmul fast float %2360, %2355
  %2362 = fmul fast float %2360, %2356
  %2363 = fmul fast float %2360, %2357
  br label %2364

; <label>:2364                                    ; preds = %2358, %2341
  %2365 = phi float [ %2361, %2358 ], [ %2355, %2341 ]
  %2366 = phi float [ %2362, %2358 ], [ %2356, %2341 ]
  %2367 = phi float [ %2363, %2358 ], [ %2357, %2341 ]
  %2368 = fmul fast float %2365, %2336
  %2369 = select i1 %217, float %2368, float %2365
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2369, float %2366, float %2367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = select i1 %217, float 0.000000e+00, float %2365
  %2372 = select i1 %217, float %2370, float %2366
  %2373 = select i1 %217, float 0.000000e+00, float %2367
  br label %2374

; <label>:2374                                    ; preds = %2364, %2326
  %2375 = phi float [ %2371, %2364 ], [ 0.000000e+00, %2326 ]
  %2376 = phi float [ %2372, %2364 ], [ 0.000000e+00, %2326 ]
  %2377 = phi float [ %2373, %2364 ], [ 0.000000e+00, %2326 ]
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 1024
  %2381 = icmp eq i32 %2380, 0
  br i1 %2381, label %2412, label %2382

; <label>:2382                                    ; preds = %2374
  %2383 = add i32 %33, 184
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 255
  %2387 = uitofp i32 %2386 to float
  %2388 = fmul fast float %2387, 0x3F70101020000000
  %2389 = lshr i32 %2385, 8
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = fmul fast float %2391, 0x3F70101020000000
  %2393 = lshr i32 %2385, 16
  %2394 = and i32 %2393, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = fmul fast float %2388, %2388
  %2398 = fmul fast float %2392, %2392
  %2399 = fmul fast float %2396, %2396
  %2400 = add i32 %33, 484
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = add i32 %2402, 0
  %2404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2404, %dx.types.Handle %75, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2406 = extractvalue %dx.types.ResRet.f32 %2405, 0
  %2407 = extractvalue %dx.types.ResRet.f32 %2405, 1
  %2408 = extractvalue %dx.types.ResRet.f32 %2405, 2
  %2409 = fmul fast float %2397, %2406
  %2410 = fmul fast float %2398, %2407
  %2411 = fmul fast float %2399, %2408
  br label %2412

; <label>:2412                                    ; preds = %2382, %2374
  %2413 = phi float [ %2409, %2382 ], [ 0.000000e+00, %2374 ]
  %2414 = phi float [ %2410, %2382 ], [ 0.000000e+00, %2374 ]
  %2415 = phi float [ %2411, %2382 ], [ 0.000000e+00, %2374 ]
  %2416 = fcmp fast ogt float %2413, 0.000000e+00
  %2417 = fcmp fast ogt float %2414, 0.000000e+00
  %2418 = fcmp fast ogt float %2415, 0.000000e+00
  %2419 = call float @dx.op.unary.f32(i32 23, float %2413)  ; Log(value)
  %2420 = call float @dx.op.unary.f32(i32 23, float %2414)  ; Log(value)
  %2421 = call float @dx.op.unary.f32(i32 23, float %2415)  ; Log(value)
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = lshr i32 %2423, 7
  %2425 = and i32 %2424, 32752
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = fmul fast float %2419, 0xBFE62E4300000000
  %2428 = fmul fast float %2427, %2426
  %2429 = fmul fast float %2420, 0xBFE62E4300000000
  %2430 = fmul fast float %2429, %2426
  %2431 = fmul fast float %2421, 0xBFE62E4300000000
  %2432 = fmul fast float %2431, %2426
  %2433 = select i1 %2416, float %2428, float 1.270000e+02
  %2434 = select i1 %2417, float %2430, float 1.270000e+02
  %2435 = select i1 %2418, float %2432, float 1.270000e+02
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, 26624
  %2439 = icmp eq i32 %2438, 0
  br i1 %2439, label %2476, label %2440

; <label>:2440                                    ; preds = %2412
  %2441 = add i32 %33, 500
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = add i32 %2443, 0
  %2445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2445, %dx.types.Handle %75, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2447 = extractvalue %dx.types.ResRet.f32 %2446, 0
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %2449, 1048576
  %2451 = icmp ne i32 %2450, 0
  %2452 = and i32 %2449, 2048
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2463, label %2454

; <label>:2454                                    ; preds = %2440
  %2455 = extractvalue %dx.types.ResRet.f32 %2446, 3
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = shl i32 %2457, 4
  %2459 = and i32 %2458, 32752
  %2460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2459)  ; LegacyF16ToF32(value)
  %2461 = fmul fast float %2460, %2455
  %2462 = call float @dx.op.binary.f32(i32 35, float %2461, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2463

; <label>:2463                                    ; preds = %2454, %2440
  %2464 = phi float [ %2462, %2454 ], [ 0x3F70101020000000, %2440 ]
  %2465 = and i32 %2449, 16384
  %2466 = icmp eq i32 %2465, 0
  br i1 %2466, label %2476, label %2467

; <label>:2467                                    ; preds = %2463
  %2468 = add i32 %33, 128
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = lshr i32 %2470, 24
  %2472 = uitofp i32 %2471 to float
  %2473 = fmul fast float %2447, 0x3F70101020000000
  %2474 = select i1 %2451, float 0x3F70101020000000, float %2473
  %2475 = fmul fast float %2474, %2472
  br label %2476

; <label>:2476                                    ; preds = %2467, %2463, %2412
  %2477 = phi float [ %2464, %2467 ], [ %2464, %2463 ], [ 0x3F70101020000000, %2412 ]
  %2478 = phi float [ %2475, %2467 ], [ 0.000000e+00, %2463 ], [ 0.000000e+00, %2412 ]
  %2479 = add i32 %33, 128
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 255
  %2483 = uitofp i32 %2482 to float
  %2484 = lshr i32 %2481, 8
  %2485 = and i32 %2484, 255
  %2486 = uitofp i32 %2485 to float
  %2487 = call float @dx.op.dot3.f32(i32 55, float %2247, float %2248, float %2249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2488 = fmul fast float %2486, %2487
  %2489 = fadd fast float %2488, %2483
  %2490 = fmul fast float %2489, 0x3F70101020000000
  %2491 = call float @dx.op.unary.f32(i32 7, float %2490)  ; Saturate(value)
  br i1 %1846, label %2492, label %2527

; <label>:2492                                    ; preds = %2476
  %2493 = fmul fast float %2477, 2.000000e+00
  %2494 = fcmp fast olt float %2433, 1.270000e+02
  %2495 = fcmp fast olt float %2434, 1.270000e+02
  %2496 = fcmp fast olt float %2435, 1.270000e+02
  %2497 = fmul fast float %2433, 0xBFF7154760000000
  %2498 = fmul fast float %2497, %2493
  %2499 = fmul fast float %2434, 0xBFF7154760000000
  %2500 = fmul fast float %2499, %2493
  %2501 = fmul fast float %2435, 0xBFF7154760000000
  %2502 = fmul fast float %2501, %2493
  %2503 = call float @dx.op.unary.f32(i32 21, float %2498)  ; Exp(value)
  %2504 = call float @dx.op.unary.f32(i32 21, float %2500)  ; Exp(value)
  %2505 = call float @dx.op.unary.f32(i32 21, float %2502)  ; Exp(value)
  %2506 = call float @dx.op.unary.f32(i32 7, float %2503)  ; Saturate(value)
  %2507 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2508 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2509 = fadd fast float %2506, -1.000000e+00
  %2510 = select i1 %2494, float %2509, float -1.000000e+00
  %2511 = fadd fast float %2507, -1.000000e+00
  %2512 = select i1 %2495, float %2511, float -1.000000e+00
  %2513 = fadd fast float %2508, -1.000000e+00
  %2514 = select i1 %2496, float %2513, float -1.000000e+00
  %2515 = fmul fast float %2510, %2027
  %2516 = fmul fast float %2512, %2027
  %2517 = fmul fast float %2514, %2027
  %2518 = fadd fast float %2515, 1.000000e+00
  %2519 = fadd fast float %2516, 1.000000e+00
  %2520 = fadd fast float %2517, 1.000000e+00
  %2521 = fmul fast float %2518, %1834
  %2522 = fmul fast float %2519, %1835
  %2523 = fmul fast float %2520, %1836
  %2524 = fmul fast float %2518, %1837
  %2525 = fmul fast float %2519, %1838
  %2526 = fmul fast float %2520, %1839
  br label %2527

; <label>:2527                                    ; preds = %2492, %2476
  %2528 = phi float [ %2521, %2492 ], [ %1834, %2476 ]
  %2529 = phi float [ %2522, %2492 ], [ %1835, %2476 ]
  %2530 = phi float [ %2523, %2492 ], [ %1836, %2476 ]
  %2531 = phi float [ %2524, %2492 ], [ %1837, %2476 ]
  %2532 = phi float [ %2525, %2492 ], [ %1838, %2476 ]
  %2533 = phi float [ %2526, %2492 ], [ %1839, %2476 ]
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = and i32 %2535, 3
  %2537 = icmp eq i32 %2536, 3
  br i1 %2537, label %2616, label %2538

; <label>:2538                                    ; preds = %2527
  %2539 = and i32 %2535, 16
  %2540 = icmp ne i32 %2539, 0
  %2541 = select i1 %2540, float %2027, float 0.000000e+00
  %2542 = icmp eq i32 %2536, 0
  br i1 %2542, label %2543, label %2571

; <label>:2543                                    ; preds = %2538
  %2544 = and i32 %2535, 64
  %2545 = icmp ne i32 %2544, 0
  %2546 = select i1 %2545, float %2027, float 0.000000e+00
  %2547 = fsub fast float %2247, %2528
  %2548 = fsub fast float %2248, %2529
  %2549 = fsub fast float %2249, %2530
  %2550 = fmul fast float %2541, %2547
  %2551 = fmul fast float %2541, %2548
  %2552 = fmul fast float %2541, %2549
  %2553 = fadd fast float %2550, %2528
  %2554 = fadd fast float %2551, %2529
  %2555 = fadd fast float %2552, %2530
  %2556 = fsub fast float %2233, %1840
  %2557 = fmul fast float %2541, %2556
  %2558 = fadd fast float %2557, %1840
  %2559 = fsub fast float %2375, %2531
  %2560 = fsub fast float %2376, %2532
  %2561 = fsub fast float %2377, %2533
  %2562 = fmul fast float %2546, %2559
  %2563 = fmul fast float %2546, %2560
  %2564 = fmul fast float %2546, %2561
  %2565 = fadd fast float %2562, %2531
  %2566 = fadd fast float %2563, %2532
  %2567 = fadd fast float %2564, %2533
  %2568 = fsub fast float %2491, %1844
  %2569 = fmul fast float %2541, %2568
  %2570 = fadd fast float %2569, %1844
  br label %2616

; <label>:2571                                    ; preds = %2538
  %2572 = icmp eq i32 %2536, 1
  br i1 %2572, label %2573, label %2586

; <label>:2573                                    ; preds = %2571
  %2574 = fadd fast float %2247, -1.000000e+00
  %2575 = fadd fast float %2248, -1.000000e+00
  %2576 = fadd fast float %2249, -1.000000e+00
  %2577 = fmul fast float %2541, %2574
  %2578 = fmul fast float %2541, %2575
  %2579 = fmul fast float %2541, %2576
  %2580 = fadd fast float %2577, 1.000000e+00
  %2581 = fadd fast float %2578, 1.000000e+00
  %2582 = fadd fast float %2579, 1.000000e+00
  %2583 = fmul fast float %2580, %2528
  %2584 = fmul fast float %2581, %2529
  %2585 = fmul fast float %2582, %2530
  br label %2616

; <label>:2586                                    ; preds = %2571
  %2587 = icmp eq i32 %2536, 2
  br i1 %2587, label %2588, label %2616

; <label>:2588                                    ; preds = %2586
  %2589 = call float @dx.op.unary.f32(i32 24, float %2247)  ; Sqrt(value)
  %2590 = call float @dx.op.unary.f32(i32 24, float %2248)  ; Sqrt(value)
  %2591 = call float @dx.op.unary.f32(i32 24, float %2249)  ; Sqrt(value)
  %2592 = fadd fast float %2589, -5.000000e-01
  %2593 = fadd fast float %2590, -5.000000e-01
  %2594 = fadd fast float %2591, -5.000000e-01
  %2595 = fmul fast float %2592, %2541
  %2596 = fmul fast float %2593, %2541
  %2597 = fmul fast float %2594, %2541
  %2598 = fadd fast float %2595, 5.000000e-01
  %2599 = fadd fast float %2596, 5.000000e-01
  %2600 = fadd fast float %2597, 5.000000e-01
  %2601 = fmul fast float %2598, 2.000000e+00
  %2602 = fsub fast float 1.000000e+00, %2601
  %2603 = fmul fast float %2602, %2528
  %2604 = fadd fast float %2603, %2601
  %2605 = fmul fast float %2604, %2528
  %2606 = fmul fast float %2599, 2.000000e+00
  %2607 = fsub fast float 1.000000e+00, %2606
  %2608 = fmul fast float %2607, %2529
  %2609 = fadd fast float %2608, %2606
  %2610 = fmul fast float %2609, %2529
  %2611 = fmul fast float %2600, 2.000000e+00
  %2612 = fsub fast float 1.000000e+00, %2611
  %2613 = fmul fast float %2612, %2530
  %2614 = fadd fast float %2613, %2611
  %2615 = fmul fast float %2614, %2530
  br label %2616

; <label>:2616                                    ; preds = %2588, %2586, %2573, %2543, %2527
  %2617 = phi float [ %2528, %2527 ], [ %2605, %2588 ], [ %2528, %2586 ], [ %2583, %2573 ], [ %2553, %2543 ]
  %2618 = phi float [ %2529, %2527 ], [ %2610, %2588 ], [ %2529, %2586 ], [ %2584, %2573 ], [ %2554, %2543 ]
  %2619 = phi float [ %2530, %2527 ], [ %2615, %2588 ], [ %2530, %2586 ], [ %2585, %2573 ], [ %2555, %2543 ]
  %2620 = phi float [ %2531, %2527 ], [ %2531, %2588 ], [ %2531, %2586 ], [ %2531, %2573 ], [ %2565, %2543 ]
  %2621 = phi float [ %2532, %2527 ], [ %2532, %2588 ], [ %2532, %2586 ], [ %2532, %2573 ], [ %2566, %2543 ]
  %2622 = phi float [ %2533, %2527 ], [ %2533, %2588 ], [ %2533, %2586 ], [ %2533, %2573 ], [ %2567, %2543 ]
  %2623 = phi float [ %1840, %2527 ], [ %1840, %2588 ], [ %1840, %2586 ], [ %1840, %2573 ], [ %2558, %2543 ]
  %2624 = phi float [ %1844, %2527 ], [ %1844, %2588 ], [ %1844, %2586 ], [ %1844, %2573 ], [ %2570, %2543 ]
  %2625 = and i32 %2535, 12
  %2626 = icmp eq i32 %2625, 12
  br i1 %2626, label %2709, label %2627

; <label>:2627                                    ; preds = %2616
  %2628 = and i32 %2535, 2097184
  %2629 = icmp eq i32 %2628, 2097184
  %2630 = select i1 %2629, float %2027, float 0.000000e+00
  %2631 = and i32 %2535, 4194336
  %2632 = icmp eq i32 %2631, 4194336
  %2633 = select i1 %2632, float %2027, float 0.000000e+00
  %2634 = and i32 %2535, 8388640
  %2635 = icmp eq i32 %2634, 8388640
  %2636 = select i1 %2635, float %2027, float 0.000000e+00
  %2637 = and i32 %2535, 16384
  %2638 = icmp ne i32 %2637, 0
  %2639 = select i1 %2638, float %2027, float 0.000000e+00
  %2640 = icmp eq i32 %2625, 0
  br i1 %2640, label %2641, label %2657

; <label>:2641                                    ; preds = %2627
  %2642 = fsub fast float %2328, %1832
  %2643 = fsub fast float %2329, %1833
  %2644 = fmul fast float %2630, %2642
  %2645 = fmul fast float %2630, %2643
  %2646 = fadd fast float %2644, %1832
  %2647 = fadd fast float %2645, %1833
  %2648 = fsub fast float %2330, %1842
  %2649 = fmul fast float %2633, %2648
  %2650 = fadd fast float %2649, %1842
  %2651 = fsub fast float %2327, %1841
  %2652 = fmul fast float %2636, %2651
  %2653 = fadd fast float %2652, %1841
  %2654 = fsub fast float %2478, %1843
  %2655 = fmul fast float %2639, %2654
  %2656 = fadd fast float %2655, %1843
  br label %2709

; <label>:2657                                    ; preds = %2627
  %2658 = icmp eq i32 %2625, 4
  br i1 %2658, label %2659, label %2693

; <label>:2659                                    ; preds = %2657
  %2660 = fmul fast float %2630, %2328
  %2661 = fmul fast float %2630, %2329
  %2662 = fadd fast float %2660, %1832
  %2663 = fadd fast float %2661, %1833
  %2664 = call float @dx.op.binary.f32(i32 36, float %1842, float %2330)  ; FMin(a,b)
  %2665 = fsub fast float %2664, %1842
  %2666 = fmul fast float %2665, %2633
  %2667 = fadd fast float %2666, %1842
  %2668 = fadd fast float %2327, %1841
  %2669 = fmul fast float %2668, 0x3FF337FAE0000000
  %2670 = fmul fast float %1841, %1841
  %2671 = fmul fast float %2327, %2327
  %2672 = fadd fast float %2671, %2670
  %2673 = fmul fast float %2672, 0x3FE5152B00000000
  %2674 = fmul fast float %1841, 0xBFCC1F85E0000000
  %2675 = fmul fast float %2674, %2327
  %2676 = fadd fast float %2675, 0xBFE1363700000000
  %2677 = fadd fast float %2676, %2669
  %2678 = fsub fast float %2677, %2673
  %2679 = fmul fast float %2668, 0x3FBA6F0D00000000
  %2680 = fmul fast float %2672, 0x3FD0432880000000
  %2681 = fmul fast float %1841, 0xBFEF110800000000
  %2682 = fmul fast float %2681, %2327
  %2683 = fadd fast float %2682, 1.000000e+00
  %2684 = fsub fast float %2683, %2679
  %2685 = fadd fast float %2684, %2680
  %2686 = fdiv fast float %2678, %2685
  %2687 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2688 = fsub fast float %2687, %1841
  %2689 = fmul fast float %2688, %2636
  %2690 = fadd fast float %2689, %1841
  %2691 = fmul fast float %2639, %2478
  %2692 = fadd fast float %2691, %1843
  br label %2709

; <label>:2693                                    ; preds = %2657
  %2694 = icmp eq i32 %2625, 8
  br i1 %2694, label %2695, label %2709

; <label>:2695                                    ; preds = %2693
  %2696 = fmul fast float %2630, %2328
  %2697 = fmul fast float %2630, %2329
  %2698 = fadd fast float %2696, %1832
  %2699 = fadd fast float %2697, %1833
  %2700 = call float @dx.op.binary.f32(i32 36, float %1842, float %2330)  ; FMin(a,b)
  %2701 = fsub fast float %2700, %1842
  %2702 = fmul fast float %2701, %2633
  %2703 = fadd fast float %2702, %1842
  %2704 = fsub fast float %2327, %1841
  %2705 = fmul fast float %2636, %2704
  %2706 = fadd fast float %2705, %1841
  %2707 = fmul fast float %2639, %2478
  %2708 = fadd fast float %2707, %1843
  br label %2709

; <label>:2709                                    ; preds = %2695, %2693, %2659, %2641, %2616, %2026, %1845, %1831
  %2710 = phi float [ %1832, %2616 ], [ %1832, %2026 ], [ %1832, %1831 ], [ %2698, %2695 ], [ %1832, %2693 ], [ %2662, %2659 ], [ %2646, %2641 ], [ %1832, %1845 ]
  %2711 = phi float [ %1833, %2616 ], [ %1833, %2026 ], [ %1833, %1831 ], [ %2699, %2695 ], [ %1833, %2693 ], [ %2663, %2659 ], [ %2647, %2641 ], [ %1833, %1845 ]
  %2712 = phi float [ %2617, %2616 ], [ %1834, %2026 ], [ %1834, %1831 ], [ %2617, %2695 ], [ %2617, %2693 ], [ %2617, %2659 ], [ %2617, %2641 ], [ %1834, %1845 ]
  %2713 = phi float [ %2618, %2616 ], [ %1835, %2026 ], [ %1835, %1831 ], [ %2618, %2695 ], [ %2618, %2693 ], [ %2618, %2659 ], [ %2618, %2641 ], [ %1835, %1845 ]
  %2714 = phi float [ %2619, %2616 ], [ %1836, %2026 ], [ %1836, %1831 ], [ %2619, %2695 ], [ %2619, %2693 ], [ %2619, %2659 ], [ %2619, %2641 ], [ %1836, %1845 ]
  %2715 = phi float [ %2620, %2616 ], [ %1837, %2026 ], [ %1837, %1831 ], [ %2620, %2695 ], [ %2620, %2693 ], [ %2620, %2659 ], [ %2620, %2641 ], [ %1837, %1845 ]
  %2716 = phi float [ %2621, %2616 ], [ %1838, %2026 ], [ %1838, %1831 ], [ %2621, %2695 ], [ %2621, %2693 ], [ %2621, %2659 ], [ %2621, %2641 ], [ %1838, %1845 ]
  %2717 = phi float [ %2622, %2616 ], [ %1839, %2026 ], [ %1839, %1831 ], [ %2622, %2695 ], [ %2622, %2693 ], [ %2622, %2659 ], [ %2622, %2641 ], [ %1839, %1845 ]
  %2718 = phi float [ %2623, %2616 ], [ %1840, %2026 ], [ %1840, %1831 ], [ %2623, %2695 ], [ %2623, %2693 ], [ %2623, %2659 ], [ %2623, %2641 ], [ %1840, %1845 ]
  %2719 = phi float [ %1841, %2616 ], [ %1841, %2026 ], [ %1841, %1831 ], [ %2706, %2695 ], [ %1841, %2693 ], [ %2690, %2659 ], [ %2653, %2641 ], [ %1841, %1845 ]
  %2720 = phi float [ %1842, %2616 ], [ %1842, %2026 ], [ %1842, %1831 ], [ %2703, %2695 ], [ %1842, %2693 ], [ %2667, %2659 ], [ %2650, %2641 ], [ %1842, %1845 ]
  %2721 = phi float [ %1843, %2616 ], [ %1843, %2026 ], [ %1843, %1831 ], [ %2708, %2695 ], [ %1843, %2693 ], [ %2692, %2659 ], [ %2656, %2641 ], [ %1843, %1845 ]
  %2722 = phi float [ %2624, %2616 ], [ %1844, %2026 ], [ %1844, %1831 ], [ %2624, %2695 ], [ %2624, %2693 ], [ %2624, %2659 ], [ %2624, %2641 ], [ %1844, %1845 ]
  br i1 %405, label %3587, label %2723

; <label>:2723                                    ; preds = %2709
  %2724 = icmp ult i32 %456, 4
  %2725 = add i32 %33, 72
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %33, 76
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = or i32 %2730, %2727
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %3587, label %2733

; <label>:2733                                    ; preds = %2723
  %2734 = and i32 %2727, 262144
  %2735 = icmp ne i32 %2734, 0
  %2736 = select i1 %2735, float %39, float 1.000000e+00
  %2737 = select i1 %2735, float %40, float 0.000000e+00
  %2738 = select i1 %2735, float %41, float 0.000000e+00
  %2739 = select i1 %2735, float %42, float 1.000000e+00
  %2740 = select i1 %2735, float %43, float %66
  %2741 = select i1 %2735, float %44, float %67
  %2742 = add i32 %33, 332
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = lshr i32 %2744, 16
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = fmul fast float %2746, 0x3F50624DE0000000
  %2748 = add i32 %33, 136
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = lshr i32 %2750, 16
  %2752 = and i32 %2751, 255
  %2753 = lshr i32 %2750, 24
  %2754 = add i32 %33, 340
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 65535
  %2758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2757)  ; LegacyF16ToF32(value)
  %2759 = lshr i32 %2756, 16
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = add i32 %33, 80
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = lshr i32 %2763, 22
  %2765 = shl nuw nsw i32 %2764, 5
  %2766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2765)  ; LegacyF16ToF32(value)
  %2767 = shl i32 %2763, 4
  %2768 = and i32 %2767, 32752
  %2769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2768)  ; LegacyF16ToF32(value)
  %2770 = lshr i32 %2763, 7
  %2771 = and i32 %2770, 32752
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 3
  %2775 = fmul fast float %2774, 1.000000e+03
  %2776 = fmul fast float %395, %2775
  %2777 = call float @dx.op.unary.f32(i32 22, float %2776)  ; Frc(value)
  %2778 = fadd fast float %2777, %385
  %2779 = fmul fast float %396, %2775
  %2780 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2781 = fadd fast float %2780, %387
  %2782 = fmul fast float %2747, %2775
  %2783 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2784 = fmul fast float %2783, 0x401921FB60000000
  %2785 = fadd fast float %2784, %2766
  %2786 = call float @dx.op.unary.f32(i32 13, float %2785)  ; Sin(value)
  %2787 = call float @dx.op.unary.f32(i32 12, float %2785)  ; Cos(value)
  %2788 = fsub fast float -0.000000e+00, %2786
  %2789 = fadd fast float %2740, -5.000000e-01
  %2790 = fadd fast float %2741, -5.000000e-01
  %2791 = fmul fast float %2758, %2789
  %2792 = fmul fast float %2760, %2790
  %2793 = fadd fast float %2791, 5.000000e-01
  %2794 = fadd fast float %2792, 5.000000e-01
  %2795 = fmul fast float %2769, %2793
  %2796 = fmul fast float %2772, %2794
  %2797 = fmul fast float %2787, %2795
  %2798 = call float @dx.op.tertiary.f32(i32 46, float %2788, float %2796, float %2797)  ; FMad(a,b,c)
  %2799 = fmul fast float %2786, %2795
  %2800 = call float @dx.op.tertiary.f32(i32 46, float %2787, float %2796, float %2799)  ; FMad(a,b,c)
  %2801 = fadd fast float %2778, %2798
  %2802 = fadd fast float %2781, %2800
  %2803 = icmp ugt i32 %2752, 1
  %2804 = icmp ugt i32 %2750, 33554431
  %2805 = or i1 %2804, %2803
  br i1 %2805, label %2806, label %2831

; <label>:2806                                    ; preds = %2733
  %2807 = add i32 %33, 276
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = lshr i32 %2809, 16
  %2811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2810)  ; LegacyF16ToF32(value)
  %2812 = fmul fast float %2774, %2811
  %2813 = call float @dx.op.unary.f32(i32 22, float %2812)  ; Frc(value)
  %2814 = mul nuw nsw i32 %2752, %2753
  %2815 = uitofp i32 %2814 to float
  %2816 = fmul fast float %2813, %2815
  %2817 = call float @dx.op.unary.f32(i32 27, float %2816)  ; Round_ni(value)
  %2818 = fptoui float %2817 to i32
  %2819 = urem i32 %2818, %2752
  %2820 = udiv i32 %2818, %2753
  %2821 = call float @dx.op.unary.f32(i32 22, float %2801)  ; Frc(value)
  %2822 = call float @dx.op.unary.f32(i32 22, float %2802)  ; Frc(value)
  %2823 = uitofp i32 %2819 to float
  %2824 = uitofp i32 %2820 to float
  %2825 = fadd fast float %2821, %2823
  %2826 = fadd fast float %2822, %2824
  %2827 = uitofp i32 %2752 to float
  %2828 = uitofp i32 %2753 to float
  %2829 = fdiv fast float %2825, %2827
  %2830 = fdiv fast float %2826, %2828
  br label %2831

; <label>:2831                                    ; preds = %2806, %2733
  %2832 = phi float [ %2829, %2806 ], [ %2801, %2733 ]
  %2833 = phi float [ %2830, %2806 ], [ %2802, %2733 ]
  %2834 = and i32 %2727, 256
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2882, label %2836

; <label>:2836                                    ; preds = %2831
  %2837 = add i32 %33, 452
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %2839, 0
  %2841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2842 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2841, %dx.types.Handle %75, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = add i32 %33, 148
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = shl i32 %2846, 4
  %2848 = and i32 %2847, 32752
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = lshr i32 %2846, 7
  %2851 = and i32 %2850, 32752
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = fsub fast float 1.000000e+00, %451
  %2854 = call float @dx.op.binary.f32(i32 35, float %2853, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2855 = bitcast float %451 to i32
  %2856 = sitofp i32 %2855 to float
  %2857 = fadd fast float %2856, 0xC1CFBF8940000000
  %2858 = fmul fast float %2852, %2857
  %2859 = fadd fast float %2858, 0x41CFBF8940000000
  %2860 = fptosi float %2859 to i32
  %2861 = bitcast i32 %2860 to float
  %2862 = bitcast float %2854 to i32
  %2863 = sitofp i32 %2862 to float
  %2864 = fadd fast float %2863, 0xC1CFBF8940000000
  %2865 = fmul fast float %2864, %2852
  %2866 = fadd fast float %2865, 0x41CFBF8940000000
  %2867 = fptosi float %2866 to i32
  %2868 = bitcast i32 %2867 to float
  %2869 = fmul fast float %2861, %2849
  %2870 = fmul fast float %2868, %2849
  %2871 = fsub fast float %2854, %2869
  %2872 = fadd fast float %2870, %2854
  %2873 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2874 = call float @dx.op.unary.f32(i32 7, float %2872)  ; Saturate(value)
  %2875 = fsub fast float %2843, %2873
  %2876 = fsub fast float %2874, %2873
  %2877 = bitcast float %2876 to i32
  %2878 = sub nsw i32 2129859010, %2877
  %2879 = bitcast i32 %2878 to float
  %2880 = fmul fast float %2879, %2875
  %2881 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  br label %2882

; <label>:2882                                    ; preds = %2836, %2831
  %2883 = phi float [ %2881, %2836 ], [ %451, %2831 ]
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 128
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %2904, label %2888

; <label>:2888                                    ; preds = %2882
  %2889 = add i32 %33, 436
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = add i32 %2891, 0
  %2893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2893, %dx.types.Handle %75, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2895 = extractvalue %dx.types.ResRet.f32 %2894, 0
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 524288
  %2899 = icmp ne i32 %2898, 0
  %2900 = fcmp fast ogt float %2895, 0x3FE0101020000000
  %2901 = select i1 %2900, float 1.000000e+00, float 0.000000e+00
  %2902 = select i1 %2899, float %2901, float %2895
  %2903 = fmul fast float %2902, %2883
  br label %2904

; <label>:2904                                    ; preds = %2888, %2882
  %2905 = phi float [ %2903, %2888 ], [ %2883, %2882 ]
  %2906 = fcmp fast ult float %2905, 0x3F70101020000000
  br i1 %2906, label %3587, label %2907

; <label>:2907                                    ; preds = %2904
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = and i32 %2909, 16
  %2911 = icmp eq i32 %2910, 0
  br i1 %2911, label %3110, label %2912

; <label>:2912                                    ; preds = %2907
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %33, 388
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = add i32 %2917, 0
  %2919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2919, %dx.types.Handle %74, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2921 = extractvalue %dx.types.ResRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.ResRet.f32 %2920, 1
  %2923 = extractvalue %dx.types.ResRet.f32 %2920, 2
  %2924 = extractvalue %dx.types.ResRet.f32 %2920, 3
  %2925 = and i32 %2914, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = lshr i32 %2914, 8
  %2928 = and i32 %2927, 255
  %2929 = uitofp i32 %2928 to float
  %2930 = fmul fast float %2924, %2926
  %2931 = fadd fast float %2930, %2929
  %2932 = fmul fast float %2931, 0x3F70101000000000
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 512
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %2945, label %2937

; <label>:2937                                    ; preds = %2912
  %2938 = add i32 %33, 472
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = add i32 %2940, 0
  %2942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2942, %dx.types.Handle %75, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2944 = extractvalue %dx.types.ResRet.f32 %2943, 0
  br label %2945

; <label>:2945                                    ; preds = %2937, %2912
  %2946 = phi float [ %2944, %2937 ], [ 1.000000e+00, %2912 ]
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 33554432
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %3057, label %2951

; <label>:2951                                    ; preds = %2945
  %2952 = add i32 %33, 272
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 65535
  %2956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2955)  ; LegacyF16ToF32(value)
  %2957 = lshr i32 %2954, 16
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = add i32 %33, 276
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 65535
  %2963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2962)  ; LegacyF16ToF32(value)
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = lshr i32 %2965, 24
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = and i32 %2965, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = lshr i32 %2965, 8
  %2973 = and i32 %2972, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101020000000
  %2976 = lshr i32 %2965, 16
  %2977 = and i32 %2976, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = add i32 %33, 268
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = lshr i32 %2982, 24
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = and i32 %2982, 255
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = lshr i32 %2982, 8
  %2990 = and i32 %2989, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2982, 16
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = bitcast float %2921 to i32
  %2998 = ashr i32 %2997, 1
  %2999 = sub nsw i32 1597463174, %2998
  %3000 = bitcast i32 %2999 to float
  %3001 = fmul fast float %2921, 5.000000e-01
  %3002 = fmul fast float %3000, %3000
  %3003 = fmul fast float %3002, %3001
  %3004 = fsub fast float 1.500000e+00, %3003
  %3005 = fmul fast float %3000, %2921
  %3006 = fmul fast float %3005, %3004
  %3007 = bitcast float %2922 to i32
  %3008 = ashr i32 %3007, 1
  %3009 = sub nsw i32 1597463174, %3008
  %3010 = bitcast i32 %3009 to float
  %3011 = fmul fast float %2922, 5.000000e-01
  %3012 = fmul fast float %3010, %3010
  %3013 = fmul fast float %3012, %3011
  %3014 = fsub fast float 1.500000e+00, %3013
  %3015 = fmul fast float %3010, %2922
  %3016 = fmul fast float %3015, %3014
  %3017 = bitcast float %2923 to i32
  %3018 = ashr i32 %3017, 1
  %3019 = sub nsw i32 1597463174, %3018
  %3020 = bitcast i32 %3019 to float
  %3021 = fmul fast float %2923, 5.000000e-01
  %3022 = fmul fast float %3020, %3020
  %3023 = fmul fast float %3022, %3021
  %3024 = fsub fast float 1.500000e+00, %3023
  %3025 = fmul fast float %3020, %2923
  %3026 = fmul fast float %3025, %3024
  %3027 = fsub fast float %3006, %2988
  %3028 = fsub fast float %3016, %2992
  %3029 = fsub fast float %3026, %2996
  %3030 = fmul fast float %3027, %2956
  %3031 = fmul fast float %3028, %2958
  %3032 = fmul fast float %3029, %2963
  %3033 = fadd fast float %3030, %2971
  %3034 = fadd fast float %3031, %2975
  %3035 = fadd fast float %3032, %2979
  %3036 = call float @dx.op.unary.f32(i32 7, float %3033)  ; Saturate(value)
  %3037 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3038 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3039 = fmul fast float %3036, %3036
  %3040 = fmul fast float %3037, %3037
  %3041 = fmul fast float %3038, %3038
  %3042 = fsub fast float %3039, %2921
  %3043 = fsub fast float %3040, %2922
  %3044 = fsub fast float %3041, %2923
  %3045 = fmul fast float %3042, %2946
  %3046 = fmul fast float %3043, %2946
  %3047 = fmul fast float %3044, %2946
  %3048 = fadd fast float %3045, %2921
  %3049 = fadd fast float %3046, %2922
  %3050 = fadd fast float %3047, %2923
  %3051 = fadd fast float %2968, %2932
  %3052 = fsub fast float %3051, %2985
  %3053 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3054 = fsub fast float %3053, %2932
  %3055 = fmul fast float %3054, %2946
  %3056 = fadd fast float %3055, %2932
  br label %3110

; <label>:3057                                    ; preds = %2945
  %3058 = and i32 %2948, 134217728
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3094, label %3060

; <label>:3060                                    ; preds = %3057
  %3061 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3062 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3063 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3064 = fadd fast float %3061, -5.000000e-01
  %3065 = fadd fast float %3062, -5.000000e-01
  %3066 = fadd fast float %3063, -5.000000e-01
  %3067 = fmul fast float %3064, %2946
  %3068 = fmul fast float %3065, %2946
  %3069 = fmul fast float %3066, %2946
  %3070 = fadd fast float %3067, 5.000000e-01
  %3071 = fadd fast float %3068, 5.000000e-01
  %3072 = fadd fast float %3069, 5.000000e-01
  %3073 = call float @dx.op.unary.f32(i32 24, float %2921)  ; Sqrt(value)
  %3074 = call float @dx.op.unary.f32(i32 24, float %2922)  ; Sqrt(value)
  %3075 = call float @dx.op.unary.f32(i32 24, float %2923)  ; Sqrt(value)
  %3076 = fmul fast float %3070, 2.000000e+00
  %3077 = fsub fast float 1.000000e+00, %3076
  %3078 = fmul fast float %3077, %3073
  %3079 = fadd fast float %3078, %3076
  %3080 = fmul fast float %3079, %3073
  %3081 = fmul fast float %3071, 2.000000e+00
  %3082 = fsub fast float 1.000000e+00, %3081
  %3083 = fmul fast float %3082, %3074
  %3084 = fadd fast float %3083, %3081
  %3085 = fmul fast float %3084, %3074
  %3086 = fmul fast float %3072, 2.000000e+00
  %3087 = fsub fast float 1.000000e+00, %3086
  %3088 = fmul fast float %3087, %3075
  %3089 = fadd fast float %3088, %3086
  %3090 = fmul fast float %3089, %3075
  %3091 = fmul fast float %3080, %3080
  %3092 = fmul fast float %3085, %3085
  %3093 = fmul fast float %3090, %3090
  br label %3110

; <label>:3094                                    ; preds = %3057
  %3095 = fmul fast float %372, %372
  %3096 = fmul fast float %376, %376
  %3097 = fmul fast float %380, %380
  %3098 = fadd fast float %3095, -1.000000e+00
  %3099 = fadd fast float %3096, -1.000000e+00
  %3100 = fadd fast float %3097, -1.000000e+00
  %3101 = fmul fast float %2946, %3098
  %3102 = fmul fast float %2946, %3099
  %3103 = fmul fast float %2946, %3100
  %3104 = fadd fast float %3101, 1.000000e+00
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fmul fast float %3104, %2921
  %3108 = fmul fast float %3105, %2922
  %3109 = fmul fast float %3106, %2923
  br label %3110

; <label>:3110                                    ; preds = %3094, %3060, %2951, %2907
  %3111 = phi float [ %3056, %2951 ], [ %2932, %3060 ], [ %2932, %3094 ], [ 0x3FA23C0BE0000000, %2907 ]
  %3112 = phi float [ %3048, %2951 ], [ %3091, %3060 ], [ %3107, %3094 ], [ 1.000000e+00, %2907 ]
  %3113 = phi float [ %3049, %2951 ], [ %3092, %3060 ], [ %3108, %3094 ], [ 1.000000e+00, %2907 ]
  %3114 = phi float [ %3050, %2951 ], [ %3093, %3060 ], [ %3109, %3094 ], [ 1.000000e+00, %2907 ]
  %3115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.i32 %3115, 1
  %3117 = and i32 %3116, 1
  %3118 = icmp ne i32 %3117, 0
  %3119 = add i32 %33, 356
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 32
  %3123 = icmp ne i32 %3122, 0
  %3124 = and i1 %3118, %3123
  %3125 = select i1 %3124, float 1.000000e+00, float %3112
  %3126 = select i1 %3124, float 0x3FD3333340000000, float %3113
  %3127 = select i1 %3124, float 0x3FD3333340000000, float %3114
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 32
  %3131 = icmp eq i32 %3130, 0
  br i1 %3131, label %3204, label %3132

; <label>:3132                                    ; preds = %3110
  %3133 = add i32 %33, 140
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %33, 404
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = add i32 %3138, 0
  %3140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3140, %dx.types.Handle %74, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.ResRet.f32 %3141, 1
  %3144 = extractvalue %dx.types.ResRet.f32 %3141, 2
  %3145 = extractvalue %dx.types.ResRet.f32 %3141, 3
  %3146 = and i32 %3135, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = lshr i32 %3135, 8
  %3149 = and i32 %3148, 255
  %3150 = uitofp i32 %3149 to float
  %3151 = lshr i32 %3135, 16
  %3152 = and i32 %3151, 255
  %3153 = uitofp i32 %3152 to float
  %3154 = fmul fast float %3153, 0x3F70101000000000
  %3155 = fmul fast float %3142, %3147
  %3156 = fadd fast float %3155, %3150
  %3157 = fmul fast float %3156, 0x3F70101000000000
  %3158 = fadd fast float %3143, -5.000000e-01
  %3159 = fadd fast float %3145, -5.000000e-01
  %3160 = fmul fast float %3158, %3154
  %3161 = fmul fast float %3159, %3154
  %3162 = fadd fast float %3160, 5.000000e-01
  %3163 = fadd fast float %3161, 5.000000e-01
  %3164 = fmul fast float %3162, 2.000000e+00
  %3165 = fadd fast float %3164, -1.000000e+00
  %3166 = fmul fast float %3163, 2.000000e+00
  %3167 = fadd fast float %3166, -1.000000e+00
  %3168 = fadd fast float %3165, %3167
  %3169 = fmul fast float %3168, 5.000000e-01
  %3170 = fsub fast float %3165, %3167
  %3171 = fmul fast float %3170, 5.000000e-01
  %3172 = call float @dx.op.unary.f32(i32 6, float %3169)  ; FAbs(value)
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = call float @dx.op.unary.f32(i32 6, float %3171)  ; FAbs(value)
  %3175 = fsub fast float %3173, %3174
  %3176 = call float @dx.op.dot3.f32(i32 55, float %3169, float %3171, float %3175, float %3169, float %3171, float %3175)  ; Dot3(ax,ay,az,bx,by,bz)
  %3177 = call float @dx.op.unary.f32(i32 25, float %3176)  ; Rsqrt(value)
  %3178 = fmul fast float %3169, %3177
  %3179 = fmul fast float %3171, %3177
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 67108864
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %3200, label %3184

; <label>:3184                                    ; preds = %3132
  %3185 = add i32 %33, 328
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 65535
  %3189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3188)  ; LegacyF16ToF32(value)
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = lshr i32 %3187, 16
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = fsub fast float %3157, %3195
  %3197 = fmul fast float %3196, %3189
  %3198 = fadd fast float %3197, %3193
  %3199 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  br label %3200

; <label>:3200                                    ; preds = %3184, %3132
  %3201 = phi float [ %3199, %3184 ], [ %3157, %3132 ]
  %3202 = call float @dx.op.dot2.f32(i32 54, float %3178, float %3179, float %2736, float %2737)  ; Dot2(ax,ay,bx,by)
  %3203 = call float @dx.op.dot2.f32(i32 54, float %3178, float %3179, float %2738, float %2739)  ; Dot2(ax,ay,bx,by)
  br label %3204

; <label>:3204                                    ; preds = %3200, %3110
  %3205 = phi float [ %3201, %3200 ], [ 0x3FD6666660000000, %3110 ]
  %3206 = phi float [ %3202, %3200 ], [ 0.000000e+00, %3110 ]
  %3207 = phi float [ %3203, %3200 ], [ 0.000000e+00, %3110 ]
  %3208 = phi float [ %3144, %3200 ], [ 1.000000e+00, %3110 ]
  %3209 = add i32 %33, 208
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = lshr i32 %3211, 22
  %3213 = shl nuw nsw i32 %3212, 5
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 64
  %3218 = icmp eq i32 %3217, 0
  br i1 %3218, label %3252, label %3219

; <label>:3219                                    ; preds = %3204
  %3220 = add i32 %33, 420
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = add i32 %3222, 0
  %3224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 131072
  %3228 = icmp eq i32 %3227, 0
  %3229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3224, %dx.types.Handle %74, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3230 = extractvalue %dx.types.ResRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.ResRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.ResRet.f32 %3229, 2
  %3233 = fmul fast float %3230, %360
  %3234 = fmul fast float %3231, %363
  %3235 = fmul fast float %3232, %366
  br i1 %3228, label %3242, label %3236

; <label>:3236                                    ; preds = %3219
  %3237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.f32 %3237, 0
  %3239 = fmul fast float %3238, %3233
  %3240 = fmul fast float %3238, %3234
  %3241 = fmul fast float %3238, %3235
  br label %3242

; <label>:3242                                    ; preds = %3236, %3219
  %3243 = phi float [ %3239, %3236 ], [ %3233, %3219 ]
  %3244 = phi float [ %3240, %3236 ], [ %3234, %3219 ]
  %3245 = phi float [ %3241, %3236 ], [ %3235, %3219 ]
  %3246 = fmul fast float %3243, %3214
  %3247 = select i1 %217, float %3246, float %3243
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3247, float %3244, float %3245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = select i1 %217, float 0.000000e+00, float %3243
  %3250 = select i1 %217, float %3248, float %3244
  %3251 = select i1 %217, float 0.000000e+00, float %3245
  br label %3252

; <label>:3252                                    ; preds = %3242, %3204
  %3253 = phi float [ %3249, %3242 ], [ 0.000000e+00, %3204 ]
  %3254 = phi float [ %3250, %3242 ], [ 0.000000e+00, %3204 ]
  %3255 = phi float [ %3251, %3242 ], [ 0.000000e+00, %3204 ]
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = and i32 %3257, 1024
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3290, label %3260

; <label>:3260                                    ; preds = %3252
  %3261 = add i32 %33, 200
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = and i32 %3263, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = fmul fast float %3265, 0x3F70101020000000
  %3267 = lshr i32 %3263, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = fmul fast float %3269, 0x3F70101020000000
  %3271 = lshr i32 %3263, 16
  %3272 = and i32 %3271, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = fmul fast float %3273, 0x3F70101020000000
  %3275 = fmul fast float %3266, %3266
  %3276 = fmul fast float %3270, %3270
  %3277 = fmul fast float %3274, %3274
  %3278 = add i32 %33, 488
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = add i32 %3280, 0
  %3282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3282, %dx.types.Handle %75, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.ResRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.ResRet.f32 %3283, 2
  %3287 = fmul fast float %3275, %3284
  %3288 = fmul fast float %3276, %3285
  %3289 = fmul fast float %3277, %3286
  br label %3290

; <label>:3290                                    ; preds = %3260, %3252
  %3291 = phi float [ %3287, %3260 ], [ 0.000000e+00, %3252 ]
  %3292 = phi float [ %3288, %3260 ], [ 0.000000e+00, %3252 ]
  %3293 = phi float [ %3289, %3260 ], [ 0.000000e+00, %3252 ]
  %3294 = fcmp fast ogt float %3291, 0.000000e+00
  %3295 = fcmp fast ogt float %3292, 0.000000e+00
  %3296 = fcmp fast ogt float %3293, 0.000000e+00
  %3297 = call float @dx.op.unary.f32(i32 23, float %3291)  ; Log(value)
  %3298 = call float @dx.op.unary.f32(i32 23, float %3292)  ; Log(value)
  %3299 = call float @dx.op.unary.f32(i32 23, float %3293)  ; Log(value)
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = lshr i32 %3301, 7
  %3303 = and i32 %3302, 32752
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = fmul fast float %3297, 0xBFE62E4300000000
  %3306 = fmul fast float %3305, %3304
  %3307 = fmul fast float %3298, 0xBFE62E4300000000
  %3308 = fmul fast float %3307, %3304
  %3309 = fmul fast float %3299, 0xBFE62E4300000000
  %3310 = fmul fast float %3309, %3304
  %3311 = select i1 %3294, float %3306, float 1.270000e+02
  %3312 = select i1 %3295, float %3308, float 1.270000e+02
  %3313 = select i1 %3296, float %3310, float 1.270000e+02
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 26624
  %3317 = icmp eq i32 %3316, 0
  br i1 %3317, label %3354, label %3318

; <label>:3318                                    ; preds = %3290
  %3319 = add i32 %33, 504
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = add i32 %3321, 0
  %3323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3323, %dx.types.Handle %75, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = and i32 %3327, 1048576
  %3329 = icmp ne i32 %3328, 0
  %3330 = and i32 %3327, 2048
  %3331 = icmp eq i32 %3330, 0
  br i1 %3331, label %3341, label %3332

; <label>:3332                                    ; preds = %3318
  %3333 = extractvalue %dx.types.ResRet.f32 %3324, 3
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = shl i32 %3335, 4
  %3337 = and i32 %3336, 32752
  %3338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3337)  ; LegacyF16ToF32(value)
  %3339 = fmul fast float %3338, %3333
  %3340 = call float @dx.op.binary.f32(i32 35, float %3339, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3341

; <label>:3341                                    ; preds = %3332, %3318
  %3342 = phi float [ %3340, %3332 ], [ 0x3F70101020000000, %3318 ]
  %3343 = and i32 %3327, 16384
  %3344 = icmp eq i32 %3343, 0
  br i1 %3344, label %3354, label %3345

; <label>:3345                                    ; preds = %3341
  %3346 = add i32 %33, 144
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = lshr i32 %3348, 24
  %3350 = uitofp i32 %3349 to float
  %3351 = fmul fast float %3325, 0x3F70101020000000
  %3352 = select i1 %3329, float 0x3F70101020000000, float %3351
  %3353 = fmul fast float %3352, %3350
  br label %3354

; <label>:3354                                    ; preds = %3345, %3341, %3290
  %3355 = phi float [ %3342, %3345 ], [ %3342, %3341 ], [ 0x3F70101020000000, %3290 ]
  %3356 = phi float [ %3353, %3345 ], [ 0.000000e+00, %3341 ], [ 0.000000e+00, %3290 ]
  %3357 = add i32 %33, 144
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 255
  %3361 = uitofp i32 %3360 to float
  %3362 = lshr i32 %3359, 8
  %3363 = and i32 %3362, 255
  %3364 = uitofp i32 %3363 to float
  %3365 = call float @dx.op.dot3.f32(i32 55, float %3125, float %3126, float %3127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3366 = fmul fast float %3364, %3365
  %3367 = fadd fast float %3366, %3361
  %3368 = fmul fast float %3367, 0x3F70101020000000
  %3369 = call float @dx.op.unary.f32(i32 7, float %3368)  ; Saturate(value)
  br i1 %2724, label %3370, label %3405

; <label>:3370                                    ; preds = %3354
  %3371 = fmul fast float %3355, 2.000000e+00
  %3372 = fcmp fast olt float %3311, 1.270000e+02
  %3373 = fcmp fast olt float %3312, 1.270000e+02
  %3374 = fcmp fast olt float %3313, 1.270000e+02
  %3375 = fmul fast float %3311, 0xBFF7154760000000
  %3376 = fmul fast float %3375, %3371
  %3377 = fmul fast float %3312, 0xBFF7154760000000
  %3378 = fmul fast float %3377, %3371
  %3379 = fmul fast float %3313, 0xBFF7154760000000
  %3380 = fmul fast float %3379, %3371
  %3381 = call float @dx.op.unary.f32(i32 21, float %3376)  ; Exp(value)
  %3382 = call float @dx.op.unary.f32(i32 21, float %3378)  ; Exp(value)
  %3383 = call float @dx.op.unary.f32(i32 21, float %3380)  ; Exp(value)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3381)  ; Saturate(value)
  %3385 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3386 = call float @dx.op.unary.f32(i32 7, float %3383)  ; Saturate(value)
  %3387 = fadd fast float %3384, -1.000000e+00
  %3388 = select i1 %3372, float %3387, float -1.000000e+00
  %3389 = fadd fast float %3385, -1.000000e+00
  %3390 = select i1 %3373, float %3389, float -1.000000e+00
  %3391 = fadd fast float %3386, -1.000000e+00
  %3392 = select i1 %3374, float %3391, float -1.000000e+00
  %3393 = fmul fast float %3388, %2905
  %3394 = fmul fast float %3390, %2905
  %3395 = fmul fast float %3392, %2905
  %3396 = fadd fast float %3393, 1.000000e+00
  %3397 = fadd fast float %3394, 1.000000e+00
  %3398 = fadd fast float %3395, 1.000000e+00
  %3399 = fmul fast float %3396, %2712
  %3400 = fmul fast float %3397, %2713
  %3401 = fmul fast float %3398, %2714
  %3402 = fmul fast float %3396, %2715
  %3403 = fmul fast float %3397, %2716
  %3404 = fmul fast float %3398, %2717
  br label %3405

; <label>:3405                                    ; preds = %3370, %3354
  %3406 = phi float [ %3399, %3370 ], [ %2712, %3354 ]
  %3407 = phi float [ %3400, %3370 ], [ %2713, %3354 ]
  %3408 = phi float [ %3401, %3370 ], [ %2714, %3354 ]
  %3409 = phi float [ %3402, %3370 ], [ %2715, %3354 ]
  %3410 = phi float [ %3403, %3370 ], [ %2716, %3354 ]
  %3411 = phi float [ %3404, %3370 ], [ %2717, %3354 ]
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = and i32 %3413, 3
  %3415 = icmp eq i32 %3414, 3
  br i1 %3415, label %3494, label %3416

; <label>:3416                                    ; preds = %3405
  %3417 = and i32 %3413, 16
  %3418 = icmp ne i32 %3417, 0
  %3419 = select i1 %3418, float %2905, float 0.000000e+00
  %3420 = icmp eq i32 %3414, 0
  br i1 %3420, label %3421, label %3449

; <label>:3421                                    ; preds = %3416
  %3422 = and i32 %3413, 64
  %3423 = icmp ne i32 %3422, 0
  %3424 = select i1 %3423, float %2905, float 0.000000e+00
  %3425 = fsub fast float %3125, %3406
  %3426 = fsub fast float %3126, %3407
  %3427 = fsub fast float %3127, %3408
  %3428 = fmul fast float %3419, %3425
  %3429 = fmul fast float %3419, %3426
  %3430 = fmul fast float %3419, %3427
  %3431 = fadd fast float %3428, %3406
  %3432 = fadd fast float %3429, %3407
  %3433 = fadd fast float %3430, %3408
  %3434 = fsub fast float %3111, %2718
  %3435 = fmul fast float %3419, %3434
  %3436 = fadd fast float %3435, %2718
  %3437 = fsub fast float %3253, %3409
  %3438 = fsub fast float %3254, %3410
  %3439 = fsub fast float %3255, %3411
  %3440 = fmul fast float %3424, %3437
  %3441 = fmul fast float %3424, %3438
  %3442 = fmul fast float %3424, %3439
  %3443 = fadd fast float %3440, %3409
  %3444 = fadd fast float %3441, %3410
  %3445 = fadd fast float %3442, %3411
  %3446 = fsub fast float %3369, %2722
  %3447 = fmul fast float %3419, %3446
  %3448 = fadd fast float %3447, %2722
  br label %3494

; <label>:3449                                    ; preds = %3416
  %3450 = icmp eq i32 %3414, 1
  br i1 %3450, label %3451, label %3464

; <label>:3451                                    ; preds = %3449
  %3452 = fadd fast float %3125, -1.000000e+00
  %3453 = fadd fast float %3126, -1.000000e+00
  %3454 = fadd fast float %3127, -1.000000e+00
  %3455 = fmul fast float %3419, %3452
  %3456 = fmul fast float %3419, %3453
  %3457 = fmul fast float %3419, %3454
  %3458 = fadd fast float %3455, 1.000000e+00
  %3459 = fadd fast float %3456, 1.000000e+00
  %3460 = fadd fast float %3457, 1.000000e+00
  %3461 = fmul fast float %3458, %3406
  %3462 = fmul fast float %3459, %3407
  %3463 = fmul fast float %3460, %3408
  br label %3494

; <label>:3464                                    ; preds = %3449
  %3465 = icmp eq i32 %3414, 2
  br i1 %3465, label %3466, label %3494

; <label>:3466                                    ; preds = %3464
  %3467 = call float @dx.op.unary.f32(i32 24, float %3125)  ; Sqrt(value)
  %3468 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3469 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3470 = fadd fast float %3467, -5.000000e-01
  %3471 = fadd fast float %3468, -5.000000e-01
  %3472 = fadd fast float %3469, -5.000000e-01
  %3473 = fmul fast float %3470, %3419
  %3474 = fmul fast float %3471, %3419
  %3475 = fmul fast float %3472, %3419
  %3476 = fadd fast float %3473, 5.000000e-01
  %3477 = fadd fast float %3474, 5.000000e-01
  %3478 = fadd fast float %3475, 5.000000e-01
  %3479 = fmul fast float %3476, 2.000000e+00
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = fmul fast float %3480, %3406
  %3482 = fadd fast float %3481, %3479
  %3483 = fmul fast float %3482, %3406
  %3484 = fmul fast float %3477, 2.000000e+00
  %3485 = fsub fast float 1.000000e+00, %3484
  %3486 = fmul fast float %3485, %3407
  %3487 = fadd fast float %3486, %3484
  %3488 = fmul fast float %3487, %3407
  %3489 = fmul fast float %3478, 2.000000e+00
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = fmul fast float %3490, %3408
  %3492 = fadd fast float %3491, %3489
  %3493 = fmul fast float %3492, %3408
  br label %3494

; <label>:3494                                    ; preds = %3466, %3464, %3451, %3421, %3405
  %3495 = phi float [ %3406, %3405 ], [ %3483, %3466 ], [ %3406, %3464 ], [ %3461, %3451 ], [ %3431, %3421 ]
  %3496 = phi float [ %3407, %3405 ], [ %3488, %3466 ], [ %3407, %3464 ], [ %3462, %3451 ], [ %3432, %3421 ]
  %3497 = phi float [ %3408, %3405 ], [ %3493, %3466 ], [ %3408, %3464 ], [ %3463, %3451 ], [ %3433, %3421 ]
  %3498 = phi float [ %3409, %3405 ], [ %3409, %3466 ], [ %3409, %3464 ], [ %3409, %3451 ], [ %3443, %3421 ]
  %3499 = phi float [ %3410, %3405 ], [ %3410, %3466 ], [ %3410, %3464 ], [ %3410, %3451 ], [ %3444, %3421 ]
  %3500 = phi float [ %3411, %3405 ], [ %3411, %3466 ], [ %3411, %3464 ], [ %3411, %3451 ], [ %3445, %3421 ]
  %3501 = phi float [ %2718, %3405 ], [ %2718, %3466 ], [ %2718, %3464 ], [ %2718, %3451 ], [ %3436, %3421 ]
  %3502 = phi float [ %2722, %3405 ], [ %2722, %3466 ], [ %2722, %3464 ], [ %2722, %3451 ], [ %3448, %3421 ]
  %3503 = and i32 %3413, 12
  %3504 = icmp eq i32 %3503, 12
  br i1 %3504, label %3587, label %3505

; <label>:3505                                    ; preds = %3494
  %3506 = and i32 %3413, 2097184
  %3507 = icmp eq i32 %3506, 2097184
  %3508 = select i1 %3507, float %2905, float 0.000000e+00
  %3509 = and i32 %3413, 4194336
  %3510 = icmp eq i32 %3509, 4194336
  %3511 = select i1 %3510, float %2905, float 0.000000e+00
  %3512 = and i32 %3413, 8388640
  %3513 = icmp eq i32 %3512, 8388640
  %3514 = select i1 %3513, float %2905, float 0.000000e+00
  %3515 = and i32 %3413, 16384
  %3516 = icmp ne i32 %3515, 0
  %3517 = select i1 %3516, float %2905, float 0.000000e+00
  %3518 = icmp eq i32 %3503, 0
  br i1 %3518, label %3519, label %3535

; <label>:3519                                    ; preds = %3505
  %3520 = fsub fast float %3206, %2710
  %3521 = fsub fast float %3207, %2711
  %3522 = fmul fast float %3508, %3520
  %3523 = fmul fast float %3508, %3521
  %3524 = fadd fast float %3522, %2710
  %3525 = fadd fast float %3523, %2711
  %3526 = fsub fast float %3208, %2720
  %3527 = fmul fast float %3511, %3526
  %3528 = fadd fast float %3527, %2720
  %3529 = fsub fast float %3205, %2719
  %3530 = fmul fast float %3514, %3529
  %3531 = fadd fast float %3530, %2719
  %3532 = fsub fast float %3356, %2721
  %3533 = fmul fast float %3517, %3532
  %3534 = fadd fast float %3533, %2721
  br label %3587

; <label>:3535                                    ; preds = %3505
  %3536 = icmp eq i32 %3503, 4
  br i1 %3536, label %3537, label %3571

; <label>:3537                                    ; preds = %3535
  %3538 = fmul fast float %3508, %3206
  %3539 = fmul fast float %3508, %3207
  %3540 = fadd fast float %3538, %2710
  %3541 = fadd fast float %3539, %2711
  %3542 = call float @dx.op.binary.f32(i32 36, float %2720, float %3208)  ; FMin(a,b)
  %3543 = fsub fast float %3542, %2720
  %3544 = fmul fast float %3543, %3511
  %3545 = fadd fast float %3544, %2720
  %3546 = fadd fast float %3205, %2719
  %3547 = fmul fast float %3546, 0x3FF337FAE0000000
  %3548 = fmul fast float %2719, %2719
  %3549 = fmul fast float %3205, %3205
  %3550 = fadd fast float %3549, %3548
  %3551 = fmul fast float %3550, 0x3FE5152B00000000
  %3552 = fmul fast float %2719, 0xBFCC1F85E0000000
  %3553 = fmul fast float %3552, %3205
  %3554 = fadd fast float %3553, 0xBFE1363700000000
  %3555 = fadd fast float %3554, %3547
  %3556 = fsub fast float %3555, %3551
  %3557 = fmul fast float %3546, 0x3FBA6F0D00000000
  %3558 = fmul fast float %3550, 0x3FD0432880000000
  %3559 = fmul fast float %2719, 0xBFEF110800000000
  %3560 = fmul fast float %3559, %3205
  %3561 = fadd fast float %3560, 1.000000e+00
  %3562 = fsub fast float %3561, %3557
  %3563 = fadd fast float %3562, %3558
  %3564 = fdiv fast float %3556, %3563
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fsub fast float %3565, %2719
  %3567 = fmul fast float %3566, %3514
  %3568 = fadd fast float %3567, %2719
  %3569 = fmul fast float %3517, %3356
  %3570 = fadd fast float %3569, %2721
  br label %3587

; <label>:3571                                    ; preds = %3535
  %3572 = icmp eq i32 %3503, 8
  br i1 %3572, label %3573, label %3587

; <label>:3573                                    ; preds = %3571
  %3574 = fmul fast float %3508, %3206
  %3575 = fmul fast float %3508, %3207
  %3576 = fadd fast float %3574, %2710
  %3577 = fadd fast float %3575, %2711
  %3578 = call float @dx.op.binary.f32(i32 36, float %2720, float %3208)  ; FMin(a,b)
  %3579 = fsub fast float %3578, %2720
  %3580 = fmul fast float %3579, %3511
  %3581 = fadd fast float %3580, %2720
  %3582 = fsub fast float %3205, %2719
  %3583 = fmul fast float %3514, %3582
  %3584 = fadd fast float %3583, %2719
  %3585 = fmul fast float %3517, %3356
  %3586 = fadd fast float %3585, %2721
  br label %3587

; <label>:3587                                    ; preds = %3573, %3571, %3537, %3519, %3494, %2904, %2723, %2709
  %3588 = phi float [ %2710, %3494 ], [ %2710, %2904 ], [ %2710, %2709 ], [ %2710, %2723 ], [ %3524, %3519 ], [ %3540, %3537 ], [ %2710, %3571 ], [ %3576, %3573 ]
  %3589 = phi float [ %2711, %3494 ], [ %2711, %2904 ], [ %2711, %2709 ], [ %2711, %2723 ], [ %3525, %3519 ], [ %3541, %3537 ], [ %2711, %3571 ], [ %3577, %3573 ]
  %3590 = phi float [ %3495, %3494 ], [ %2712, %2904 ], [ %2712, %2709 ], [ %2712, %2723 ], [ %3495, %3519 ], [ %3495, %3537 ], [ %3495, %3571 ], [ %3495, %3573 ]
  %3591 = phi float [ %3496, %3494 ], [ %2713, %2904 ], [ %2713, %2709 ], [ %2713, %2723 ], [ %3496, %3519 ], [ %3496, %3537 ], [ %3496, %3571 ], [ %3496, %3573 ]
  %3592 = phi float [ %3497, %3494 ], [ %2714, %2904 ], [ %2714, %2709 ], [ %2714, %2723 ], [ %3497, %3519 ], [ %3497, %3537 ], [ %3497, %3571 ], [ %3497, %3573 ]
  %3593 = phi float [ %3498, %3494 ], [ %2715, %2904 ], [ %2715, %2709 ], [ %2715, %2723 ], [ %3498, %3519 ], [ %3498, %3537 ], [ %3498, %3571 ], [ %3498, %3573 ]
  %3594 = phi float [ %3499, %3494 ], [ %2716, %2904 ], [ %2716, %2709 ], [ %2716, %2723 ], [ %3499, %3519 ], [ %3499, %3537 ], [ %3499, %3571 ], [ %3499, %3573 ]
  %3595 = phi float [ %3500, %3494 ], [ %2717, %2904 ], [ %2717, %2709 ], [ %2717, %2723 ], [ %3500, %3519 ], [ %3500, %3537 ], [ %3500, %3571 ], [ %3500, %3573 ]
  %3596 = phi float [ %3501, %3494 ], [ %2718, %2904 ], [ %2718, %2709 ], [ %2718, %2723 ], [ %3501, %3519 ], [ %3501, %3537 ], [ %3501, %3571 ], [ %3501, %3573 ]
  %3597 = phi float [ %2719, %3494 ], [ %2719, %2904 ], [ %2719, %2709 ], [ %2719, %2723 ], [ %3531, %3519 ], [ %3568, %3537 ], [ %2719, %3571 ], [ %3584, %3573 ]
  %3598 = phi float [ %2720, %3494 ], [ %2720, %2904 ], [ %2720, %2709 ], [ %2720, %2723 ], [ %3528, %3519 ], [ %3545, %3537 ], [ %2720, %3571 ], [ %3581, %3573 ]
  %3599 = phi float [ %2721, %3494 ], [ %2721, %2904 ], [ %2721, %2709 ], [ %2721, %2723 ], [ %3534, %3519 ], [ %3570, %3537 ], [ %2721, %3571 ], [ %3586, %3573 ]
  %3600 = phi float [ %3502, %3494 ], [ %2722, %2904 ], [ %2722, %2709 ], [ %2722, %2723 ], [ %3502, %3519 ], [ %3502, %3537 ], [ %3502, %3571 ], [ %3502, %3573 ]
  %3601 = add i32 %33, 360
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.i32 %3602, 1
  %3605 = bitcast i32 %3603 to float
  %3606 = bitcast i32 %3604 to float
  %3607 = fcmp fast oge float %3605, 0.000000e+00
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = select i1 %3607, float %3605, float %3609
  %3611 = fadd fast float %3610, %179
  %3612 = fmul fast float %3606, %180
  %3613 = add i32 %33, 456
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = add i32 %3615, 0
  %3617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3617, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = fmul fast float %3612, %3619
  %3621 = fadd fast float %3611, %3620
  %3622 = and i32 %171, 65535
  %3623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3622)  ; LegacyF16ToF32(value)
  %3624 = lshr i32 %171, 16
  %3625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3624)  ; LegacyF16ToF32(value)
  %3626 = and i32 %172, 65535
  %3627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3626)  ; LegacyF16ToF32(value)
  %3628 = fmul fast float %3623, %3590
  %3629 = fmul fast float %3625, %3591
  %3630 = fmul fast float %3627, %3592
  %3631 = shl i32 %173, 4
  %3632 = and i32 %3631, 32752
  %3633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3632)  ; LegacyF16ToF32(value)
  %3634 = lshr i32 %173, 7
  %3635 = and i32 %3634, 32752
  %3636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3635)  ; LegacyF16ToF32(value)
  %3637 = lshr i32 %173, 22
  %3638 = shl nuw nsw i32 %3637, 5
  %3639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3638)  ; LegacyF16ToF32(value)
  %3640 = and i32 %174, 65535
  %3641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3640)  ; LegacyF16ToF32(value)
  %3642 = fmul fast float %3633, %3593
  %3643 = fmul fast float %3642, %3641
  %3644 = fmul fast float %3636, %3594
  %3645 = fmul fast float %3644, %3641
  %3646 = fmul fast float %3639, %3595
  %3647 = fmul fast float %3646, %3641
  %3648 = call float @dx.op.dot2.f32(i32 54, float %3588, float %3589, float %3588, float %3589)  ; Dot2(ax,ay,bx,by)
  %3649 = fmul fast float %3648, 0x3FE3333340000000
  %3650 = fsub fast float 1.000000e+00, %3649
  %3651 = call float @dx.op.dot3.f32(i32 55, float %3588, float %3589, float %3650, float %3588, float %3589, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = call float @dx.op.unary.f32(i32 25, float %3651)  ; Rsqrt(value)
  %3653 = fmul fast float %3652, %3588
  %3654 = fmul fast float %3652, %3589
  %3655 = fmul fast float %3650, %3652
  %3656 = fmul fast float %3655, %85
  %3657 = fmul fast float %3655, %86
  %3658 = fmul fast float %3655, %87
  %3659 = fmul fast float %3653, %59
  %3660 = fmul fast float %3653, %60
  %3661 = fmul fast float %3653, %61
  %3662 = fadd fast float %3656, %3659
  %3663 = fadd fast float %3657, %3660
  %3664 = fadd fast float %3658, %3661
  %3665 = fmul fast float %97, %3654
  %3666 = fmul fast float %98, %3654
  %3667 = fmul fast float %99, %3654
  %3668 = fadd fast float %3662, %3665
  %3669 = fadd fast float %3663, %3666
  %3670 = fadd fast float %3664, %3667
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3668, float %3669, float %3670, float %3668, float %3669, float %3670)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = call float @dx.op.unary.f32(i32 25, float %3671)  ; Rsqrt(value)
  %3673 = fmul fast float %3668, %3672
  %3674 = fmul fast float %3669, %3672
  %3675 = fmul fast float %3670, %3672
  %3676 = icmp eq i32 %35, 65535
  br i1 %3676, label %4191, label %3677

; <label>:3677                                    ; preds = %3587
  %3678 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3679 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3680 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3681 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3682 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3683 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3684 = fadd fast float %3678, %36
  %3685 = fadd fast float %3679, %37
  %3686 = fadd fast float %3680, %38
  %3687 = fadd fast float %3681, %36
  %3688 = fadd fast float %3682, %37
  %3689 = fadd fast float %3683, %38
  %3690 = mul i32 %35, 48
  %3691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.f32 %3691, 1
  %3694 = extractvalue %dx.types.ResRet.f32 %3691, 2
  %3695 = add i32 %3690, 16
  %3696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3695, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.ResRet.f32 %3696, 1
  %3699 = extractvalue %dx.types.ResRet.f32 %3696, 2
  %3700 = add i32 %3690, 32
  %3701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.f32 %3701, 0
  %3703 = extractvalue %dx.types.ResRet.f32 %3701, 1
  %3704 = extractvalue %dx.types.ResRet.f32 %3701, 2
  %3705 = extractvalue %dx.types.ResRet.f32 %3701, 3
  %3706 = bitcast float %3705 to i32
  %3707 = fmul fast float %3692, %36
  %3708 = fmul fast float %3693, %37
  %3709 = fmul fast float %3694, %38
  %3710 = fsub fast float %3707, %3697
  %3711 = fsub fast float %3708, %3698
  %3712 = fsub fast float %3709, %3699
  %3713 = call float @dx.op.unary.f32(i32 7, float %3710)  ; Saturate(value)
  %3714 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3715 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3716 = fmul fast float %3713, %3702
  %3717 = fmul fast float %3714, %3703
  %3718 = fmul fast float %3715, %3704
  %3719 = fadd fast float %3702, -1.000000e+00
  %3720 = fadd fast float %3703, -1.000000e+00
  %3721 = fadd fast float %3704, -1.000000e+00
  %3722 = call float @dx.op.unary.f32(i32 27, float %3716)  ; Round_ni(value)
  %3723 = call float @dx.op.unary.f32(i32 27, float %3717)  ; Round_ni(value)
  %3724 = call float @dx.op.unary.f32(i32 27, float %3718)  ; Round_ni(value)
  %3725 = call float @dx.op.binary.f32(i32 36, float %3722, float %3719)  ; FMin(a,b)
  %3726 = call float @dx.op.binary.f32(i32 36, float %3723, float %3720)  ; FMin(a,b)
  %3727 = call float @dx.op.binary.f32(i32 36, float %3724, float %3721)  ; FMin(a,b)
  %3728 = fmul fast float %3727, %3703
  %3729 = fadd fast float %3728, %3726
  %3730 = fmul fast float %3729, %3702
  %3731 = fadd fast float %3730, %3725
  %3732 = fptosi float %3731 to i32
  %3733 = add nsw i32 %3732, %3706
  %3734 = shl nsw i32 %3733, 2
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = lshr i32 %3736, 16
  %3738 = icmp eq i32 %3737, 0
  br i1 %3738, label %4160, label %3739

; <label>:3739                                    ; preds = %3677
  br label %3740

; <label>:3740                                    ; preds = %3861, %3739
  %3741 = phi i32 [ %3763, %3861 ], [ %3737, %3739 ]
  %3742 = phi float [ %3862, %3861 ], [ 0.000000e+00, %3739 ]
  %3743 = phi float [ %3863, %3861 ], [ %3621, %3739 ]
  %3744 = phi float [ %3864, %3861 ], [ %3600, %3739 ]
  %3745 = phi float [ %3865, %3861 ], [ %3599, %3739 ]
  %3746 = phi float [ %3866, %3861 ], [ 0.000000e+00, %3739 ]
  %3747 = phi float [ %3867, %3861 ], [ %3643, %3739 ]
  %3748 = phi float [ %3868, %3861 ], [ %3645, %3739 ]
  %3749 = phi float [ %3869, %3861 ], [ %3647, %3739 ]
  %3750 = phi float [ %3870, %3861 ], [ %3673, %3739 ]
  %3751 = phi float [ %3871, %3861 ], [ %3674, %3739 ]
  %3752 = phi float [ %3872, %3861 ], [ %3675, %3739 ]
  %3753 = phi float [ %3873, %3861 ], [ %3598, %3739 ]
  %3754 = phi float [ %3874, %3861 ], [ %3597, %3739 ]
  %3755 = phi float [ %3875, %3861 ], [ 0.000000e+00, %3739 ]
  %3756 = phi float [ %3876, %3861 ], [ %3596, %3739 ]
  %3757 = phi float [ %3877, %3861 ], [ %3628, %3739 ]
  %3758 = phi float [ %3878, %3861 ], [ %3629, %3739 ]
  %3759 = phi float [ %3879, %3861 ], [ %3630, %3739 ]
  %3760 = shl nuw nsw i32 %3741, 2
  %3761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3760, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.i32 %3761, 0
  %3763 = lshr i32 %3762, 16
  %3764 = shl i32 %3762, 8
  %3765 = and i32 %3764, 16776960
  %3766 = or i32 %3765, 48
  %3767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.ResRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3767, 2
  %3771 = or i32 %3765, 64
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = extractvalue %dx.types.ResRet.i32 %3772, 1
  %3775 = or i32 %3765, 80
  %3776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 2
  %3778 = extractvalue %dx.types.ResRet.f32 %3776, 3
  %3779 = or i32 %3765, 96
  %3780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.ResRet.f32 %3780, 1
  %3783 = extractvalue %dx.types.ResRet.f32 %3780, 2
  %3784 = extractvalue %dx.types.ResRet.f32 %3780, 3
  %3785 = or i32 %3765, 112
  %3786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3788 = or i32 %3765, 128
  %3789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.ResRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.ResRet.f32 %3789, 2
  %3793 = extractvalue %dx.types.ResRet.f32 %3789, 3
  %3794 = or i32 %3765, 144
  %3795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3800 = or i32 %3765, 160
  %3801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.ResRet.f32 %3801, 1
  %3804 = extractvalue %dx.types.ResRet.f32 %3801, 2
  %3805 = extractvalue %dx.types.ResRet.f32 %3801, 3
  %3806 = or i32 %3765, 192
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = or i32 %3765, 208
  %3810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = or i32 %3765, 248
  %3813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3819 = extractvalue %dx.types.ResRet.f32 %3816, 2
  %3820 = extractvalue %dx.types.ResRet.f32 %3816, 3
  %3821 = call float @dx.op.dot4.f32(i32 56, float %3817, float %3818, float %3819, float %3820, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3822 = or i32 %3765, 16
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3827 = extractvalue %dx.types.ResRet.f32 %3823, 3
  %3828 = call float @dx.op.dot4.f32(i32 56, float %3824, float %3825, float %3826, float %3827, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3829 = or i32 %3765, 32
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3830, 2
  %3834 = extractvalue %dx.types.ResRet.f32 %3830, 3
  %3835 = call float @dx.op.dot4.f32(i32 56, float %3831, float %3832, float %3833, float %3834, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3836 = call float @dx.op.unary.f32(i32 27, float %3821)  ; Round_ni(value)
  %3837 = call float @dx.op.unary.f32(i32 6, float %3836)  ; FAbs(value)
  %3838 = call float @dx.op.unary.f32(i32 27, float %3828)  ; Round_ni(value)
  %3839 = call float @dx.op.unary.f32(i32 6, float %3838)  ; FAbs(value)
  %3840 = call float @dx.op.unary.f32(i32 6, float %3835)  ; FAbs(value)
  %3841 = call float @dx.op.unary.f32(i32 27, float %3840)  ; Round_ni(value)
  %3842 = fadd fast float %3839, %3837
  %3843 = fadd fast float %3842, %3841
  %3844 = fcmp fast oeq float %3843, 0.000000e+00
  %3845 = call float @dx.op.dot4.f32(i32 56, float %3817, float %3818, float %3819, float %3820, float %3684, float %3685, float %3686, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3846 = call float @dx.op.dot4.f32(i32 56, float %3824, float %3825, float %3826, float %3827, float %3684, float %3685, float %3686, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3847 = call float @dx.op.dot4.f32(i32 56, float %3817, float %3818, float %3819, float %3820, float %3687, float %3688, float %3689, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3848 = call float @dx.op.dot4.f32(i32 56, float %3824, float %3825, float %3826, float %3827, float %3687, float %3688, float %3689, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3849 = fsub fast float %3845, %3821
  %3850 = fsub fast float %3847, %3821
  %3851 = fsub fast float %3846, %3828
  %3852 = fsub fast float %3848, %3828
  %3853 = call float @dx.op.dot3.f32(i32 55, float %3768, float %3769, float %3770, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 2
  %3856 = fadd fast float %3855, %3853
  %3857 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3859 = fcmp fast ogt float %3857, %3858
  %3860 = and i1 %3844, %3859
  br i1 %3860, label %3881, label %3861

; <label>:3861                                    ; preds = %4146, %3964, %3881, %3740
  %3862 = phi float [ %3742, %3881 ], [ %3967, %3964 ], [ %3967, %4146 ], [ %3742, %3740 ]
  %3863 = phi float [ %3743, %3881 ], [ %3743, %3964 ], [ %4121, %4146 ], [ %3743, %3740 ]
  %3864 = phi float [ %3744, %3881 ], [ %3744, %3964 ], [ %4119, %4146 ], [ %3744, %3740 ]
  %3865 = phi float [ %3745, %3881 ], [ %3745, %3964 ], [ %4091, %4146 ], [ %3745, %3740 ]
  %3866 = phi float [ %3746, %3881 ], [ %3746, %3964 ], [ %4089, %4146 ], [ %3746, %3740 ]
  %3867 = phi float [ %3747, %3881 ], [ %3747, %3964 ], [ %4156, %4146 ], [ %3747, %3740 ]
  %3868 = phi float [ %3748, %3881 ], [ %3748, %3964 ], [ %4157, %4146 ], [ %3748, %3740 ]
  %3869 = phi float [ %3749, %3881 ], [ %3749, %3964 ], [ %4158, %4146 ], [ %3749, %3740 ]
  %3870 = phi float [ %3750, %3881 ], [ %3750, %3964 ], [ %4070, %4146 ], [ %3750, %3740 ]
  %3871 = phi float [ %3751, %3881 ], [ %3751, %3964 ], [ %4071, %4146 ], [ %3751, %3740 ]
  %3872 = phi float [ %3752, %3881 ], [ %3752, %3964 ], [ %4072, %4146 ], [ %3752, %3740 ]
  %3873 = phi float [ %3753, %3881 ], [ %3753, %3964 ], [ %4099, %4146 ], [ %3753, %3740 ]
  %3874 = phi float [ %3754, %3881 ], [ %3754, %3964 ], [ %4096, %4146 ], [ %3754, %3740 ]
  %3875 = phi float [ %3755, %3881 ], [ %3755, %3964 ], [ %4093, %4146 ], [ %3755, %3740 ]
  %3876 = phi float [ %3756, %3881 ], [ %3756, %3964 ], [ %4087, %4146 ], [ %3756, %3740 ]
  %3877 = phi float [ %3757, %3881 ], [ %3757, %3964 ], [ %4082, %4146 ], [ %3757, %3740 ]
  %3878 = phi float [ %3758, %3881 ], [ %3758, %3964 ], [ %4083, %4146 ], [ %3758, %3740 ]
  %3879 = phi float [ %3759, %3881 ], [ %3759, %3964 ], [ %4084, %4146 ], [ %3759, %3740 ]
  %3880 = icmp eq i32 %3763, 0
  br i1 %3880, label %4159, label %3740

; <label>:3881                                    ; preds = %3740
  %3882 = extractvalue %dx.types.ResRet.f32 %3767, 3
  %3883 = extractvalue %dx.types.ResRet.f32 %3786, 3
  %3884 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3885 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3886 = extractvalue %dx.types.ResRet.f32 %3776, 1
  %3887 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3888 = extractvalue %dx.types.ResRet.i32 %3772, 3
  %3889 = extractvalue %dx.types.ResRet.i32 %3772, 2
  %3890 = bitcast float %3882 to i32
  %3891 = add i32 %3888, 0
  %3892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3891, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3894 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3892, %dx.types.Handle %3893, float %3821, float %3828, float undef, float undef, i32 0, i32 0, i32 undef, float %3849, float %3851, float undef, float %3850, float %3852, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = fmul fast float %3895, %3887
  %3897 = fadd fast float %3896, %3886
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = fmul fast float %3821, %3781
  %3900 = call float @dx.op.tertiary.f32(i32 46, float %3782, float %3828, float %3899)  ; FMad(a,b,c)
  %3901 = fadd fast float %3900, %3885
  %3902 = fmul fast float %3821, %3783
  %3903 = call float @dx.op.tertiary.f32(i32 46, float %3784, float %3828, float %3902)  ; FMad(a,b,c)
  %3904 = fadd fast float %3903, %3884
  %3905 = fmul fast float %3849, %3781
  %3906 = call float @dx.op.tertiary.f32(i32 46, float %3782, float %3851, float %3905)  ; FMad(a,b,c)
  %3907 = fmul fast float %3849, %3783
  %3908 = call float @dx.op.tertiary.f32(i32 46, float %3784, float %3851, float %3907)  ; FMad(a,b,c)
  %3909 = fmul fast float %3850, %3781
  %3910 = call float @dx.op.tertiary.f32(i32 46, float %3782, float %3852, float %3909)  ; FMad(a,b,c)
  %3911 = fmul fast float %3850, %3783
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3784, float %3852, float %3911)  ; FMad(a,b,c)
  %3913 = add i32 %3889, 0
  %3914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3913, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3915 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3914, %dx.types.Handle %3893, float %3901, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float %3906, float %3908, float undef, float %3910, float %3912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = and i32 %3890, 1024
  %3918 = icmp ne i32 %3917, 0
  %3919 = fcmp fast ogt float %3916, 0x3FE0101020000000
  %3920 = uitofp i1 %3919 to float
  %3921 = select i1 %3918, float %3920, float %3916
  %3922 = and i32 %3890, 8192
  %3923 = icmp ne i32 %3922, 0
  %3924 = select i1 %3923, float %3883, float 1.000000e+00
  %3925 = fmul fast float %3821, 2.000000e+00
  %3926 = fadd fast float %3925, -1.000000e+00
  %3927 = call float @dx.op.unary.f32(i32 6, float %3926)  ; FAbs(value)
  %3928 = fmul fast float %3927, %3814
  %3929 = fsub fast float %3928, %3814
  %3930 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3931 = fmul fast float %3828, 2.000000e+00
  %3932 = fadd fast float %3931, -1.000000e+00
  %3933 = call float @dx.op.unary.f32(i32 6, float %3932)  ; FAbs(value)
  %3934 = fmul fast float %3933, %3815
  %3935 = fsub fast float %3934, %3815
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3937 = fmul fast float %3840, %3777
  %3938 = fsub fast float %3937, %3777
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3940 = fmul fast float %3898, %3924
  %3941 = fmul fast float %3940, %3895
  %3942 = fmul fast float %3941, %3930
  %3943 = fmul fast float %3942, %3921
  %3944 = fmul fast float %3943, %3936
  %3945 = fmul fast float %3944, %3939
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3948 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3949 = fsub fast float %3857, %3948
  %3950 = fmul fast float %3949, %3947
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3952 = fmul fast float %3945, %3778
  %3953 = fadd fast float %3945, %3778
  %3954 = fmul fast float %3953, %3787
  %3955 = fsub fast float %3954, %3787
  %3956 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3957 = and i32 %3890, 128
  %3958 = icmp ne i32 %3957, 0
  %3959 = select i1 %3958, float %3956, float %3952
  %3960 = fmul fast float %3959, %3951
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 0
  %3963 = fcmp fast ugt float %3960, %3962
  br i1 %3963, label %3964, label %3861

; <label>:3964                                    ; preds = %3881
  %3965 = select i1 %3923, float %3960, float 0.000000e+00
  %3966 = fadd fast float %3965, %3742
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  br i1 %3923, label %3861, label %3968

; <label>:3968                                    ; preds = %3964
  %3969 = and i32 %3890, 4
  %3970 = and i32 %3890, 8
  %3971 = add i32 %3773, 0
  %3972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3971, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3974 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3972, %dx.types.Handle %3973, float %3901, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float %3906, float %3908, float undef, float %3910, float %3912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3975 = extractvalue %dx.types.ResRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.ResRet.f32 %3974, 1
  %3977 = extractvalue %dx.types.ResRet.f32 %3974, 2
  %3978 = extractvalue %dx.types.ResRet.f32 %3974, 3
  %3979 = bitcast float %3799 to i32
  %3980 = and i32 %3979, 255
  %3981 = uitofp i32 %3980 to float
  %3982 = lshr i32 %3979, 8
  %3983 = and i32 %3982, 255
  %3984 = uitofp i32 %3983 to float
  %3985 = fmul fast float %3978, %3981
  %3986 = fadd fast float %3985, %3984
  %3987 = fmul fast float %3986, 0x3F70101000000000
  %3988 = add i32 %3774, 0
  %3989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3988, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3989, %dx.types.Handle %3973, float %3901, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float %3906, float %3908, float undef, float %3910, float %3912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3995 = bitcast float %3793 to i32
  %3996 = and i32 %3995, 255
  %3997 = uitofp i32 %3996 to float
  %3998 = lshr i32 %3995, 8
  %3999 = and i32 %3998, 255
  %4000 = uitofp i32 %3999 to float
  %4001 = lshr i32 %3995, 16
  %4002 = and i32 %4001, 255
  %4003 = uitofp i32 %4002 to float
  %4004 = fmul fast float %4003, 0x3F70101000000000
  %4005 = fmul fast float %3991, %3997
  %4006 = fadd fast float %4005, %4000
  %4007 = fmul fast float %4006, 0x3F70101000000000
  %4008 = fadd fast float %3992, -5.000000e-01
  %4009 = fadd fast float %3994, -5.000000e-01
  %4010 = fmul fast float %4008, %4004
  %4011 = fmul fast float %4009, %4004
  %4012 = fadd fast float %4010, 5.000000e-01
  %4013 = fadd fast float %4011, 5.000000e-01
  %4014 = fmul fast float %3975, %3802
  %4015 = fmul fast float %3976, %3803
  %4016 = fmul fast float %3977, %3804
  %4017 = fmul fast float %4012, 2.000000e+00
  %4018 = fadd fast float %4017, -1.000000e+00
  %4019 = fmul fast float %4013, 2.000000e+00
  %4020 = fadd fast float %4019, -1.000000e+00
  %4021 = fadd fast float %4018, %4020
  %4022 = fmul fast float %4021, 5.000000e-01
  %4023 = fsub fast float %4018, %4020
  %4024 = fmul fast float %4023, 5.000000e-01
  %4025 = call float @dx.op.unary.f32(i32 6, float %4022)  ; FAbs(value)
  %4026 = fsub fast float 1.000000e+00, %4025
  %4027 = call float @dx.op.unary.f32(i32 6, float %4024)  ; FAbs(value)
  %4028 = fsub fast float %4026, %4027
  %4029 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4024, float %4028, float %4022, float %4024, float %4028)  ; Dot3(ax,ay,az,bx,by,bz)
  %4030 = call float @dx.op.unary.f32(i32 25, float %4029)  ; Rsqrt(value)
  %4031 = fmul fast float %4022, %4030
  %4032 = fmul fast float %4024, %4030
  %4033 = fmul fast float %4030, %4028
  %4034 = fmul fast float %4033, %3768
  %4035 = fmul fast float %4033, %3769
  %4036 = fmul fast float %4033, %3770
  %4037 = fmul fast float %4031, %3790
  %4038 = fmul fast float %4031, %3791
  %4039 = fmul fast float %4031, %3792
  %4040 = fadd fast float %4037, %4034
  %4041 = fadd fast float %4038, %4035
  %4042 = fadd fast float %4039, %4036
  %4043 = fmul fast float %4032, %3796
  %4044 = fmul fast float %4032, %3797
  %4045 = fmul fast float %4032, %3798
  %4046 = fadd fast float %4040, %4043
  %4047 = fadd fast float %4041, %4044
  %4048 = fadd fast float %4042, %4045
  %4049 = call float @dx.op.dot3.f32(i32 55, float %4046, float %4047, float %4048, float %4046, float %4047, float %4048)  ; Dot3(ax,ay,az,bx,by,bz)
  %4050 = call float @dx.op.unary.f32(i32 25, float %4049)  ; Rsqrt(value)
  %4051 = fmul fast float %4046, %4050
  %4052 = fmul fast float %4047, %4050
  %4053 = fmul fast float %4048, %4050
  %4054 = icmp ne i32 %3970, 0
  %4055 = select i1 %4054, float 1.000000e+00, float 0.000000e+00
  %4056 = fmul fast float %3960, %4055
  %4057 = and i32 %3890, 1
  %4058 = icmp eq i32 %4057, 0
  br i1 %4058, label %4059, label %4063

; <label>:4059                                    ; preds = %3968
  %4060 = fsub fast float %4051, %3750
  %4061 = fsub fast float %4052, %3751
  %4062 = fsub fast float %4053, %3752
  br label %4063

; <label>:4063                                    ; preds = %4059, %3968
  %4064 = phi float [ %4060, %4059 ], [ %4051, %3968 ]
  %4065 = phi float [ %4061, %4059 ], [ %4052, %3968 ]
  %4066 = phi float [ %4062, %4059 ], [ %4053, %3968 ]
  %4067 = fmul float %4066, %4056
  %4068 = fmul float %4065, %4056
  %4069 = fmul float %4064, %4056
  %4070 = fadd fast float %4069, %3750
  %4071 = fadd fast float %4068, %3751
  %4072 = fadd fast float %4067, %3752
  %4073 = icmp ne i32 %3969, 0
  %4074 = select i1 %4073, float 1.000000e+00, float 0.000000e+00
  %4075 = fmul fast float %3960, %4074
  %4076 = fsub fast float %4014, %3757
  %4077 = fsub fast float %4015, %3758
  %4078 = fsub fast float %4016, %3759
  %4079 = fmul fast float %4076, %4075
  %4080 = fmul fast float %4077, %4075
  %4081 = fmul fast float %4078, %4075
  %4082 = fadd fast float %4079, %3757
  %4083 = fadd fast float %4080, %3758
  %4084 = fadd fast float %4081, %3759
  %4085 = fsub fast float %3987, %3756
  %4086 = fmul fast float %4085, %4075
  %4087 = fadd fast float %4086, %3756
  %4088 = fmul fast float %4075, %3746
  %4089 = fsub fast float %3746, %4088
  %4090 = fmul fast float %4075, %3745
  %4091 = fsub fast float %3745, %4090
  %4092 = fadd fast float %3960, %3755
  %4093 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4094 = fsub fast float %4007, %3754
  %4095 = fmul fast float %4094, %4056
  %4096 = fadd fast float %4095, %3754
  %4097 = fsub fast float %3993, %3753
  %4098 = fmul fast float %4097, %4056
  %4099 = fadd fast float %4098, %3753
  %4100 = call float @dx.op.dot3.f32(i32 55, float %4014, float %4015, float %4016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4104 = fmul fast float %4103, %4100
  %4105 = fadd fast float %4104, %4102
  %4106 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4107 = bitcast float %3805 to i32
  %4108 = and i32 %4107, 65535
  %4109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4108)  ; LegacyF16ToF32(value)
  %4110 = lshr i32 %4107, 16
  %4111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4110)  ; LegacyF16ToF32(value)
  %4112 = fcmp fast oge float %4109, 0.000000e+00
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 0
  %4115 = select i1 %4112, float %4109, float %4114
  %4116 = fadd fast float %4115, %4111
  %4117 = fsub fast float %4106, %3744
  %4118 = fmul fast float %4117, %3960
  %4119 = fadd fast float %4118, %3744
  %4120 = fmul fast float %4116, %3960
  %4121 = call float @dx.op.binary.f32(i32 35, float %3743, float %4120)  ; FMax(a,b)
  %4122 = and i32 %3890, 16
  %4123 = icmp eq i32 %4122, 0
  br i1 %4123, label %4146, label %4124

; <label>:4124                                    ; preds = %4063
  %4125 = bitcast float %3811 to i32
  %4126 = add i32 %3808, 0
  %4127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4126, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4128 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4127, %dx.types.Handle %3973, float %3901, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float %3906, float %3908, float undef, float %3910, float %3912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4132 = and i32 %4125, 65535
  %4133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4132)  ; LegacyF16ToF32(value)
  %4134 = fmul fast float %4129, %3802
  %4135 = fmul fast float %4130, %3803
  %4136 = fmul fast float %4131, %3804
  %4137 = and i32 %3890, 16384
  %4138 = icmp ne i32 %4137, 0
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = select i1 %4138, float %4140, float 1.000000e+00
  %4142 = fmul fast float %4141, %4133
  %4143 = fmul fast float %4134, %4142
  %4144 = fmul fast float %4135, %4142
  %4145 = fmul fast float %4136, %4142
  br label %4146

; <label>:4146                                    ; preds = %4124, %4063
  %4147 = phi float [ %4143, %4124 ], [ 0.000000e+00, %4063 ]
  %4148 = phi float [ %4144, %4124 ], [ 0.000000e+00, %4063 ]
  %4149 = phi float [ %4145, %4124 ], [ 0.000000e+00, %4063 ]
  %4150 = fsub fast float %4147, %3747
  %4151 = fsub fast float %4148, %3748
  %4152 = fsub fast float %4149, %3749
  %4153 = fmul fast float %4150, %3960
  %4154 = fmul fast float %4151, %3960
  %4155 = fmul fast float %4152, %3960
  %4156 = fadd fast float %4153, %3747
  %4157 = fadd fast float %4154, %3748
  %4158 = fadd fast float %4155, %3749
  br label %3861

; <label>:4159                                    ; preds = %3861
  br label %4160

; <label>:4160                                    ; preds = %4159, %3677
  %4161 = phi float [ 0.000000e+00, %3677 ], [ %3862, %4159 ]
  %4162 = phi float [ %3621, %3677 ], [ %3863, %4159 ]
  %4163 = phi float [ %3600, %3677 ], [ %3864, %4159 ]
  %4164 = phi float [ %3599, %3677 ], [ %3865, %4159 ]
  %4165 = phi float [ 0.000000e+00, %3677 ], [ %3866, %4159 ]
  %4166 = phi float [ %3643, %3677 ], [ %3867, %4159 ]
  %4167 = phi float [ %3645, %3677 ], [ %3868, %4159 ]
  %4168 = phi float [ %3647, %3677 ], [ %3869, %4159 ]
  %4169 = phi float [ %3673, %3677 ], [ %3870, %4159 ]
  %4170 = phi float [ %3674, %3677 ], [ %3871, %4159 ]
  %4171 = phi float [ %3675, %3677 ], [ %3872, %4159 ]
  %4172 = phi float [ %3598, %3677 ], [ %3873, %4159 ]
  %4173 = phi float [ %3597, %3677 ], [ %3874, %4159 ]
  %4174 = phi float [ 0.000000e+00, %3677 ], [ %3875, %4159 ]
  %4175 = phi float [ %3596, %3677 ], [ %3876, %4159 ]
  %4176 = phi float [ %3628, %3677 ], [ %3877, %4159 ]
  %4177 = phi float [ %3629, %3677 ], [ %3878, %4159 ]
  %4178 = phi float [ %3630, %3677 ], [ %3879, %4159 ]
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4169, float %4170, float %4171, float %4169, float %4170, float %4171)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = call float @dx.op.unary.f32(i32 25, float %4179)  ; Rsqrt(value)
  %4181 = fmul fast float %4180, %4169
  %4182 = fmul fast float %4180, %4170
  %4183 = fmul fast float %4180, %4171
  %4184 = fadd fast float %4174, %962
  %4185 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4186 = call float @dx.op.dot3.f32(i32 55, float %4181, float %4182, float %4183, float %4181, float %4182, float %4183)  ; Dot3(ax,ay,az,bx,by,bz)
  %4187 = call float @dx.op.unary.f32(i32 25, float %4186)  ; Rsqrt(value)
  %4188 = fmul fast float %4187, %4181
  %4189 = fmul fast float %4187, %4182
  %4190 = fmul fast float %4187, %4183
  br label %4191

; <label>:4191                                    ; preds = %4160, %3587
  %4192 = phi float [ %4188, %4160 ], [ %3673, %3587 ]
  %4193 = phi float [ %4189, %4160 ], [ %3674, %3587 ]
  %4194 = phi float [ %4190, %4160 ], [ %3675, %3587 ]
  %4195 = phi float [ %4176, %4160 ], [ %3628, %3587 ]
  %4196 = phi float [ %4177, %4160 ], [ %3629, %3587 ]
  %4197 = phi float [ %4178, %4160 ], [ %3630, %3587 ]
  %4198 = phi float [ %4166, %4160 ], [ %3643, %3587 ]
  %4199 = phi float [ %4167, %4160 ], [ %3645, %3587 ]
  %4200 = phi float [ %4168, %4160 ], [ %3647, %3587 ]
  %4201 = phi float [ %4175, %4160 ], [ %3596, %3587 ]
  %4202 = phi float [ %4185, %4160 ], [ %962, %3587 ]
  %4203 = phi float [ %4173, %4160 ], [ %3597, %3587 ]
  %4204 = phi float [ %4172, %4160 ], [ %3598, %3587 ]
  %4205 = phi float [ %4165, %4160 ], [ 0.000000e+00, %3587 ]
  %4206 = phi float [ %4164, %4160 ], [ %3599, %3587 ]
  %4207 = phi float [ %4161, %4160 ], [ 0.000000e+00, %3587 ]
  %4208 = phi float [ %4162, %4160 ], [ %3621, %3587 ]
  %4209 = phi float [ %4163, %4160 ], [ %3600, %3587 ]
  %4210 = fadd fast float %4201, 0xBFB99999A0000000
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = fmul fast float %4211, 0x3FF1C71C80000000
  %4213 = call float @dx.op.binary.f32(i32 36, float %4201, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4214 = fsub fast float 1.000000e+00, %4212
  %4215 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4216 = fmul fast float %4215, %4195
  %4217 = fmul fast float %4215, %4196
  %4218 = fmul fast float %4215, %4197
  %4219 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4220 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4221 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4222 = fmul fast float %4212, %4195
  %4223 = fmul fast float %4212, %4196
  %4224 = fmul fast float %4212, %4197
  %4225 = fadd fast float %4222, %4213
  %4226 = fadd fast float %4223, %4213
  %4227 = fadd fast float %4224, %4213
  %4228 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4229 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4230 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4231 = call float @dx.op.unary.f32(i32 7, float %4203)  ; Saturate(value)
  %4232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.i32 %4232, 3
  %4234 = and i32 %4233, 8
  %4235 = icmp ne i32 %4234, 0
  %4236 = call float @dx.op.binary.f32(i32 35, float %4219, float %4195)  ; FMax(a,b)
  %4237 = call float @dx.op.binary.f32(i32 35, float %4220, float %4195)  ; FMax(a,b)
  %4238 = call float @dx.op.binary.f32(i32 35, float %4221, float %4195)  ; FMax(a,b)
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4219, float %4220, float %4221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = select i1 %217, float %4195, float %4219
  %4241 = select i1 %217, float %4239, float %4220
  %4242 = select i1 %217, float 1.000000e+00, float %4221
  %4243 = select i1 %4235, float %4236, float %4240
  %4244 = select i1 %4235, float %4237, float %4241
  %4245 = select i1 %4235, float %4238, float %4242
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 0
  %4248 = extractvalue %dx.types.CBufRet.f32 %4246, 1
  %4249 = extractvalue %dx.types.CBufRet.f32 %4246, 2
  %4250 = fadd fast float %4247, %165
  %4251 = fadd fast float %4248, %166
  %4252 = fadd fast float %4249, %167
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 0
  %4255 = extractvalue %dx.types.CBufRet.f32 %4253, 1
  %4256 = fsub fast float %4250, %4254
  %4257 = fsub fast float %4251, %4255
  %4258 = fmul fast float %4256, %4256
  %4259 = fmul fast float %4257, %4257
  %4260 = fadd fast float %4258, %4259
  %4261 = call float @dx.op.unary.f32(i32 24, float %4260)  ; Sqrt(value)
  %4262 = extractvalue %dx.types.CBufRet.f32 %4253, 2
  %4263 = fcmp fast olt float %4261, %4262
  br i1 %4263, label %4264, label %4331

; <label>:4264                                    ; preds = %4191
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 0
  %4267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4267, 0
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.CBufRet.f32 %4265, 1
  %4272 = extractvalue %dx.types.CBufRet.f32 %4267, 1
  %4273 = extractvalue %dx.types.CBufRet.f32 %4269, 1
  %4274 = extractvalue %dx.types.CBufRet.f32 %4265, 3
  %4275 = extractvalue %dx.types.CBufRet.f32 %4267, 3
  %4276 = extractvalue %dx.types.CBufRet.f32 %4269, 3
  %4277 = fadd fast float %4274, %4250
  %4278 = fadd fast float %4275, %4251
  %4279 = fadd fast float %4276, %4252
  %4280 = fmul fast float %4277, %4266
  %4281 = call float @dx.op.tertiary.f32(i32 46, float %4278, float %4268, float %4280)  ; FMad(a,b,c)
  %4282 = call float @dx.op.tertiary.f32(i32 46, float %4279, float %4270, float %4281)  ; FMad(a,b,c)
  %4283 = fmul fast float %4277, %4271
  %4284 = call float @dx.op.tertiary.f32(i32 46, float %4278, float %4272, float %4283)  ; FMad(a,b,c)
  %4285 = call float @dx.op.tertiary.f32(i32 46, float %4279, float %4273, float %4284)  ; FMad(a,b,c)
  %4286 = fsub fast float %4282, %4274
  %4287 = fsub fast float %4285, %4275
  %4288 = fsub fast float %4286, %4254
  %4289 = fadd fast float %4288, %4262
  %4290 = fsub fast float %4287, %4255
  %4291 = fadd fast float %4290, %4262
  %4292 = extractvalue %dx.types.CBufRet.f32 %4253, 3
  %4293 = fmul fast float %4289, %4292
  %4294 = fmul fast float %4291, %4292
  %4295 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4296 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4297 = fsub fast float 1.000000e+00, %4295
  %4298 = fsub fast float 1.000000e+00, %4296
  %4299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4297, float %4298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = fcmp fast ugt float %4300, 0.000000e+00
  br i1 %4301, label %4302, label %4605

; <label>:4302                                    ; preds = %4264
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 2
  %4305 = fmul fast float %4304, %4300
  %4306 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4307 = fadd fast float %4306, %4305
  %4308 = extractvalue %dx.types.CBufRet.f32 %4269, 2
  %4309 = fadd fast float %4307, %4276
  %4310 = fmul fast float %4282, %4270
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4273, float %4310)  ; FMad(a,b,c)
  %4312 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4308, float %4311)  ; FMad(a,b,c)
  %4313 = fsub fast float %4312, %4276
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 2
  %4316 = fsub fast float %4313, %4315
  %4317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4297, float %4298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4318 = extractvalue %dx.types.ResRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.ResRet.f32 %4317, 1
  %4320 = extractvalue %dx.types.ResRet.f32 %4317, 2
  %4321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4297, float %4298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.f32 %4321, 2
  %4325 = fadd fast float %4322, %4318
  %4326 = fmul fast float %4325, 0x3F847AE140000000
  %4327 = fadd fast float %4323, %4319
  %4328 = fmul fast float %4327, 0x3F847AE140000000
  %4329 = fadd fast float %4324, %4320
  %4330 = fmul fast float %4329, 0x3F847AE140000000
  br label %4605

; <label>:4331                                    ; preds = %4191
  %4332 = and i32 %196, 1
  %4333 = icmp eq i32 %4332, 0
  br i1 %4333, label %4605, label %4334

; <label>:4334                                    ; preds = %4331
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 0
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  %4341 = extractvalue %dx.types.CBufRet.f32 %4335, 1
  %4342 = extractvalue %dx.types.CBufRet.f32 %4337, 1
  %4343 = extractvalue %dx.types.CBufRet.f32 %4339, 1
  %4344 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4345 = extractvalue %dx.types.CBufRet.f32 %4337, 3
  %4346 = extractvalue %dx.types.CBufRet.f32 %4339, 3
  %4347 = fadd fast float %4344, %4250
  %4348 = fadd fast float %4345, %4251
  %4349 = fadd fast float %4346, %4252
  %4350 = fmul fast float %4347, %4336
  %4351 = call float @dx.op.tertiary.f32(i32 46, float %4348, float %4338, float %4350)  ; FMad(a,b,c)
  %4352 = call float @dx.op.tertiary.f32(i32 46, float %4349, float %4340, float %4351)  ; FMad(a,b,c)
  %4353 = fmul fast float %4347, %4341
  %4354 = call float @dx.op.tertiary.f32(i32 46, float %4348, float %4342, float %4353)  ; FMad(a,b,c)
  %4355 = call float @dx.op.tertiary.f32(i32 46, float %4349, float %4343, float %4354)  ; FMad(a,b,c)
  %4356 = fsub fast float %4352, %4344
  %4357 = fsub fast float %4355, %4345
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 0
  %4360 = extractvalue %dx.types.CBufRet.f32 %4358, 1
  %4361 = extractvalue %dx.types.CBufRet.f32 %4358, 2
  %4362 = extractvalue %dx.types.CBufRet.f32 %4358, 3
  %4363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.f32 %4363, 3
  %4365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.i32 %4365, 0
  %4367 = extractvalue %dx.types.CBufRet.i32 %4365, 1
  %4368 = udiv i32 %4367, %4366
  %4369 = fsub fast float %4356, %4359
  %4370 = fsub fast float %4357, %4360
  %4371 = call float @dx.op.binary.f32(i32 35, float %4369, float 0.000000e+00)  ; FMax(a,b)
  %4372 = call float @dx.op.binary.f32(i32 35, float %4370, float 0.000000e+00)  ; FMax(a,b)
  %4373 = call float @dx.op.binary.f32(i32 36, float %4371, float %4361)  ; FMin(a,b)
  %4374 = call float @dx.op.binary.f32(i32 36, float %4372, float %4362)  ; FMin(a,b)
  %4375 = add i32 %4366, -1
  %4376 = add i32 %4368, -1
  %4377 = fmul fast float %4373, %4364
  %4378 = fmul fast float %4374, %4364
  %4379 = fptoui float %4377 to i32
  %4380 = fptoui float %4378 to i32
  %4381 = call i32 @dx.op.binary.i32(i32 40, i32 %4379, i32 %4375)  ; UMin(a,b)
  %4382 = call i32 @dx.op.binary.i32(i32 40, i32 %4380, i32 %4376)  ; UMin(a,b)
  %4383 = mul i32 %4382, %4366
  %4384 = add i32 %4383, %4381
  %4385 = shl i32 %4384, 2
  %4386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.i32 %4386, 0
  %4388 = icmp eq i32 %4387, -1
  br i1 %4388, label %4605, label %4389

; <label>:4389                                    ; preds = %4334
  %4390 = mul i32 %4387, 148
  %4391 = add i32 %4390, 4
  %4392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = add i32 %4390, 8
  %4395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4394, i32 undef)  ; BufferLoad(srv,index,wot)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = add i32 %4390, 36
  %4398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4400 = add i32 %4390, 60
  %4401 = add i32 %4390, 92
  %4402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.i32 %4402, 0
  %4404 = add i32 %4390, 116
  %4405 = fsub fast float %4356, %4393
  %4406 = fsub fast float %4357, %4396
  %4407 = fmul fast float %4364, %4405
  %4408 = fmul fast float %4364, %4406
  %4409 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4410 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4411 = fsub fast float 1.000000e+00, %4410
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4414 = call float @dx.op.unary.f32(i32 83, float %4409)  ; DerivCoarseX(value)
  %4415 = call float @dx.op.unary.f32(i32 83, float %4411)  ; DerivCoarseX(value)
  %4416 = call float @dx.op.unary.f32(i32 84, float %4409)  ; DerivCoarseY(value)
  %4417 = call float @dx.op.unary.f32(i32 84, float %4411)  ; DerivCoarseY(value)
  %4418 = fmul fast float %4414, %4413
  %4419 = fmul fast float %4415, %4413
  %4420 = fmul fast float %4416, %4413
  %4421 = fmul fast float %4417, %4413
  %4422 = call float @dx.op.dot2.f32(i32 54, float %4420, float %4421, float %4420, float %4421)  ; Dot2(ax,ay,bx,by)
  %4423 = call float @dx.op.dot2.f32(i32 54, float %4418, float %4419, float %4418, float %4419)  ; Dot2(ax,ay,bx,by)
  %4424 = call float @dx.op.binary.f32(i32 35, float %4423, float %4422)  ; FMax(a,b)
  %4425 = call float @dx.op.unary.f32(i32 23, float %4424)  ; Log(value)
  %4426 = fmul fast float %4425, 5.000000e-01
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 1
  %4429 = fadd fast float %4428, %4426
  %4430 = call float @dx.op.binary.f32(i32 35, float %4429, float 0.000000e+00)  ; FMax(a,b)
  %4431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.f32 %4431, 3
  %4433 = fadd fast float %4432, %4430
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 3
  %4436 = fadd fast float %4433, %4435
  %4437 = add i32 %4403, 0
  %4438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4437, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4439 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4438, i32 0)  ; GetDimensions(handle,mipLevel)
  %4440 = extractvalue %dx.types.Dimensions %4439, 0
  %4441 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4440)  ; FirstbitLo(value)
  %4442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.i32 %4442, 1
  %4444 = sub nsw i32 %4443, %4441
  %4445 = sitofp i32 %4444 to float
  %4446 = fsub fast float %4436, %4445
  %4447 = call float @dx.op.binary.f32(i32 35, float %4446, float 0.000000e+00)  ; FMax(a,b)
  %4448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4438, %dx.types.Handle %28, float %4409, float %4411, float %4399, float undef, i32 0, i32 0, i32 undef, float %4447)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = fcmp ule float %4449, 0x3FE0101020000000
  %4451 = extractvalue %dx.types.CBufRet.i32 %4442, 0
  %4452 = and i32 %4451, 128
  %4453 = icmp ne i32 %4452, 0
  %4454 = and i1 %4450, %4453
  br i1 %4454, label %4605, label %4455

; <label>:4455                                    ; preds = %4389
  %4456 = add i32 %4390, 20
  %4457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4456, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = add i32 %4390, 24
  %4460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4459, i32 undef)  ; BufferLoad(srv,index,wot)
  %4461 = extractvalue %dx.types.ResRet.f32 %4460, 0
  %4462 = add i32 %4390, 40
  %4463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = add i32 %4390, 96
  %4466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4465, i32 undef)  ; BufferLoad(srv,index,wot)
  %4467 = extractvalue %dx.types.ResRet.i32 %4466, 0
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 2
  %4470 = fmul fast float %4469, %4409
  %4471 = fmul fast float %4469, %4411
  %4472 = extractvalue %dx.types.CBufRet.f32 %4468, 3
  %4473 = fadd fast float %4470, %4472
  %4474 = fadd fast float %4471, %4472
  %4475 = add i32 %4467, 0
  %4476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4475, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4477 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4476, i32 0)  ; GetDimensions(handle,mipLevel)
  %4478 = extractvalue %dx.types.Dimensions %4477, 0
  %4479 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4478)  ; FirstbitLo(value)
  %4480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.i32 %4480, 1
  %4482 = sub nsw i32 %4481, %4479
  %4483 = sitofp i32 %4482 to float
  %4484 = fsub fast float %4433, %4483
  %4485 = call float @dx.op.binary.f32(i32 35, float %4484, float 0.000000e+00)  ; FMax(a,b)
  %4486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4476, %dx.types.Handle %28, float %4473, float %4474, float %4464, float undef, i32 0, i32 0, i32 undef, float %4485)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = fmul fast float %4487, %4458
  %4489 = fadd fast float %4488, %4461
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 0
  %4492 = extractvalue %dx.types.CBufRet.f32 %4490, 1
  %4493 = extractvalue %dx.types.CBufRet.f32 %4490, 2
  %4494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.f32 %4494, 3
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 3
  %4498 = extractvalue %dx.types.CBufRet.f32 %4490, 3
  %4499 = fadd fast float %4495, %4356
  %4500 = fadd fast float %4497, %4357
  %4501 = fadd fast float %4489, %4498
  %4502 = fmul fast float %4499, %4491
  %4503 = call float @dx.op.tertiary.f32(i32 46, float %4500, float %4492, float %4502)  ; FMad(a,b,c)
  %4504 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4493, float %4503)  ; FMad(a,b,c)
  %4505 = fsub fast float %4504, %4498
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4508 = fsub fast float %4505, %4507
  %4509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.i32 %4509, 0
  %4511 = call i32 @dx.op.binary.i32(i32 40, i32 %4387, i32 %4510)  ; UMin(a,b)
  %4512 = mul i32 %4511, 36
  %4513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.i32 %4513, 0
  %4515 = add i32 %4512, 4
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 0
  %4518 = fmul fast float %4517, %4409
  %4519 = fmul fast float %4517, %4411
  %4520 = extractvalue %dx.types.CBufRet.f32 %4516, 1
  %4521 = fadd fast float %4518, %4520
  %4522 = fadd fast float %4519, %4520
  %4523 = icmp eq i32 %4514, 0
  br i1 %4523, label %4592, label %4524

; <label>:4524                                    ; preds = %4455
  br label %4525

; <label>:4525                                    ; preds = %4582, %4524
  %4526 = phi float [ %4583, %4582 ], [ 0.000000e+00, %4524 ]
  %4527 = phi float [ %4584, %4582 ], [ 0.000000e+00, %4524 ]
  %4528 = phi float [ %4585, %4582 ], [ 0.000000e+00, %4524 ]
  %4529 = phi float [ %4586, %4582 ], [ 0.000000e+00, %4524 ]
  %4530 = phi float [ %4587, %4582 ], [ 0.000000e+00, %4524 ]
  %4531 = phi float [ %4588, %4582 ], [ 0.000000e+00, %4524 ]
  %4532 = phi i32 [ %4589, %4582 ], [ 0, %4524 ]
  %4533 = shl i32 %4532, 2
  %4534 = add i32 %4400, %4533
  %4535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = add i32 %4404, %4533
  %4538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4539 = extractvalue %dx.types.ResRet.i32 %4538, 0
  %4540 = add i32 %4539, 0
  %4541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4540, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4542 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4541, i32 0)  ; GetDimensions(handle,mipLevel)
  %4543 = extractvalue %dx.types.Dimensions %4542, 0
  %4544 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4543)  ; FirstbitLo(value)
  %4545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.i32 %4545, 1
  %4547 = sub nsw i32 %4546, %4544
  %4548 = sitofp i32 %4547 to float
  %4549 = fsub fast float %4433, %4548
  %4550 = call float @dx.op.binary.f32(i32 35, float %4549, float 0.000000e+00)  ; FMax(a,b)
  %4551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4541, %dx.types.Handle %28, float %4521, float %4522, float %4536, float undef, i32 0, i32 0, i32 undef, float %4550)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = fcmp fast ogt float %4552, 0.000000e+00
  br i1 %4553, label %4554, label %4582

; <label>:4554                                    ; preds = %4525
  %4555 = add i32 %4515, %4533
  %4556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4555, i32 undef)  ; BufferLoad(srv,index,wot)
  %4557 = extractvalue %dx.types.ResRet.i32 %4556, 0
  %4558 = and i32 %4557, 32767
  %4559 = mul nuw nsw i32 %4558, 928
  %4560 = add nuw nsw i32 %4559, 48
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.ResRet.f32 %4561, 2
  %4565 = add nuw nsw i32 %4559, 60
  %4566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.ResRet.f32 %4566, 2
  %4570 = fmul fast float %4562, %4552
  %4571 = fmul fast float %4563, %4552
  %4572 = fmul fast float %4564, %4552
  %4573 = fadd fast float %4570, %4526
  %4574 = fadd fast float %4571, %4527
  %4575 = fadd fast float %4572, %4528
  %4576 = fmul fast float %4567, %4552
  %4577 = fmul fast float %4568, %4552
  %4578 = fmul fast float %4569, %4552
  %4579 = fadd fast float %4576, %4529
  %4580 = fadd fast float %4577, %4530
  %4581 = fadd fast float %4578, %4531
  br label %4582

; <label>:4582                                    ; preds = %4554, %4525
  %4583 = phi float [ %4573, %4554 ], [ %4526, %4525 ]
  %4584 = phi float [ %4574, %4554 ], [ %4527, %4525 ]
  %4585 = phi float [ %4575, %4554 ], [ %4528, %4525 ]
  %4586 = phi float [ %4579, %4554 ], [ %4529, %4525 ]
  %4587 = phi float [ %4580, %4554 ], [ %4530, %4525 ]
  %4588 = phi float [ %4581, %4554 ], [ %4531, %4525 ]
  %4589 = add nuw i32 %4532, 1
  %4590 = icmp eq i32 %4589, %4514
  br i1 %4590, label %4591, label %4525

; <label>:4591                                    ; preds = %4582
  br label %4592

; <label>:4592                                    ; preds = %4591, %4455
  %4593 = phi float [ 0.000000e+00, %4455 ], [ %4583, %4591 ]
  %4594 = phi float [ 0.000000e+00, %4455 ], [ %4584, %4591 ]
  %4595 = phi float [ 0.000000e+00, %4455 ], [ %4585, %4591 ]
  %4596 = phi float [ 0.000000e+00, %4455 ], [ %4586, %4591 ]
  %4597 = phi float [ 0.000000e+00, %4455 ], [ %4587, %4591 ]
  %4598 = phi float [ 0.000000e+00, %4455 ], [ %4588, %4591 ]
  %4599 = fadd fast float %4596, %4593
  %4600 = fmul fast float %4599, 0x3F847AE140000000
  %4601 = fadd fast float %4597, %4594
  %4602 = fmul fast float %4601, 0x3F847AE140000000
  %4603 = fadd fast float %4598, %4595
  %4604 = fmul fast float %4603, 0x3F847AE140000000
  br label %4605

; <label>:4605                                    ; preds = %4592, %4389, %4334, %4331, %4302, %4264
  %4606 = phi float [ %4316, %4302 ], [ -1.310720e+05, %4264 ], [ %4508, %4592 ], [ -1.310720e+05, %4334 ], [ -1.310720e+05, %4389 ], [ -1.310720e+05, %4331 ]
  %4607 = phi float [ %4326, %4302 ], [ 0.000000e+00, %4264 ], [ %4600, %4592 ], [ 0.000000e+00, %4334 ], [ 0.000000e+00, %4389 ], [ 0.000000e+00, %4331 ]
  %4608 = phi float [ %4328, %4302 ], [ 0.000000e+00, %4264 ], [ %4602, %4592 ], [ 0.000000e+00, %4334 ], [ 0.000000e+00, %4389 ], [ 0.000000e+00, %4331 ]
  %4609 = phi float [ %4330, %4302 ], [ 0.000000e+00, %4264 ], [ %4604, %4592 ], [ 0.000000e+00, %4334 ], [ 0.000000e+00, %4389 ], [ 0.000000e+00, %4331 ]
  %4610 = phi i1 [ true, %4302 ], [ false, %4264 ], [ true, %4592 ], [ false, %4334 ], [ false, %4389 ], [ false, %4331 ]
  %4611 = and i32 %196, 3
  %4612 = icmp eq i32 %4611, 1
  %4613 = select i1 %4612, float 1.000000e+00, float 0.000000e+00
  %4614 = fsub fast float %4606, %167
  %4615 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4616 = select i1 %4610, float %4615, float 1.000000e+00
  %4617 = fmul fast float %4616, %4613
  %4618 = icmp eq i32 %4611, 3
  %4619 = select i1 %4618, float 1.000000e+00, float %4617
  %4620 = call float @dx.op.binary.f32(i32 35, float %4207, float %4619)  ; FMax(a,b)
  %4621 = fcmp fast olt float %4619, 1.000000e+00
  %4622 = fcmp uge float %49, 0.000000e+00
  %4623 = and i1 %4622, %4621
  br i1 %4623, label %4624, label %4634

; <label>:4624                                    ; preds = %4605
  %4625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.ResRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.ResRet.f32 %4625, 2
  %4629 = fadd fast float %4626, %4620
  %4630 = fcmp ule float %48, 0.000000e+00
  %4631 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = select i1 %4630, float %4631, float 1.000000e+00
  %4633 = fmul fast float %4632, %4628
  br label %4634

; <label>:4634                                    ; preds = %4624, %4605
  %4635 = phi float [ %4629, %4624 ], [ %4620, %4605 ]
  %4636 = phi float [ %4627, %4624 ], [ 0.000000e+00, %4605 ]
  %4637 = phi float [ %4633, %4624 ], [ 0.000000e+00, %4605 ]
  %4638 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4639 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4640 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4641 = fcmp fast une float %4639, 0.000000e+00
  %4642 = fcmp fast une float %4640, 0.000000e+00
  %4643 = or i1 %4641, %4642
  br i1 %4643, label %4644, label %5203

; <label>:4644                                    ; preds = %4634
  br i1 %4641, label %4645, label %4918

; <label>:4645                                    ; preds = %4644
  %4646 = call float @dx.op.unary.f32(i32 23, float %4204)  ; Log(value)
  %4647 = fmul fast float %4646, 4.000000e+00
  %4648 = call float @dx.op.unary.f32(i32 21, float %4647)  ; Exp(value)
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 0
  %4651 = fmul fast float %4650, %36
  %4652 = fmul fast float %4650, %37
  %4653 = fmul fast float %4650, %38
  %4654 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4655 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4656 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4657 = call float @dx.op.unary.f32(i32 23, float %4654)  ; Log(value)
  %4658 = call float @dx.op.unary.f32(i32 23, float %4655)  ; Log(value)
  %4659 = call float @dx.op.unary.f32(i32 23, float %4656)  ; Log(value)
  %4660 = fmul fast float %4657, 4.000000e+00
  %4661 = fmul fast float %4658, 4.000000e+00
  %4662 = fmul fast float %4659, 4.000000e+00
  %4663 = call float @dx.op.unary.f32(i32 21, float %4660)  ; Exp(value)
  %4664 = call float @dx.op.unary.f32(i32 21, float %4661)  ; Exp(value)
  %4665 = call float @dx.op.unary.f32(i32 21, float %4662)  ; Exp(value)
  %4666 = fadd fast float %4664, %4663
  %4667 = fadd fast float %4666, %4665
  %4668 = fdiv fast float 1.000000e+00, %4667
  %4669 = fmul fast float %4668, %4663
  %4670 = fcmp fast ogt float %45, 0.000000e+00
  %4671 = fcmp fast ogt float %46, 0.000000e+00
  %4672 = fcmp fast ogt float %47, 0.000000e+00
  %4673 = fcmp fast olt float %45, 0.000000e+00
  %4674 = fcmp fast olt float %46, 0.000000e+00
  %4675 = fcmp fast olt float %47, 0.000000e+00
  %4676 = zext i1 %4670 to i32
  %4677 = zext i1 %4671 to i32
  %4678 = zext i1 %4672 to i32
  %4679 = zext i1 %4673 to i32
  %4680 = zext i1 %4674 to i32
  %4681 = zext i1 %4675 to i32
  %4682 = sub nsw i32 %4676, %4679
  %4683 = sub nsw i32 %4677, %4680
  %4684 = sub nsw i32 %4678, %4681
  %4685 = call float @dx.op.unary.f32(i32 83, float %4651)  ; DerivCoarseX(value)
  %4686 = call float @dx.op.unary.f32(i32 83, float %4652)  ; DerivCoarseX(value)
  %4687 = call float @dx.op.unary.f32(i32 83, float %4653)  ; DerivCoarseX(value)
  %4688 = call float @dx.op.unary.f32(i32 84, float %4651)  ; DerivCoarseY(value)
  %4689 = call float @dx.op.unary.f32(i32 84, float %4652)  ; DerivCoarseY(value)
  %4690 = call float @dx.op.unary.f32(i32 84, float %4653)  ; DerivCoarseY(value)
  %4691 = fcmp fast ole float %228, %4669
  %4692 = fmul fast float %4668, %4666
  %4693 = fcmp fast ole float %228, %4692
  %4694 = select i1 %4693, float %4653, float %4651
  %4695 = select i1 %4693, float %4651, float %4652
  %4696 = select i1 %4691, float %4652, float %4694
  %4697 = select i1 %4691, float %4653, float %4695
  %4698 = select i1 %4693, float %4687, float %4685
  %4699 = select i1 %4693, float %4685, float %4686
  %4700 = select i1 %4691, float %4686, float %4698
  %4701 = select i1 %4691, float %4687, float %4699
  %4702 = select i1 %4693, float %4690, float %4688
  %4703 = select i1 %4693, float %4688, float %4689
  %4704 = select i1 %4691, float %4689, float %4702
  %4705 = select i1 %4691, float %4690, float %4703
  %4706 = call float @dx.op.unary.f32(i32 27, float %4696)  ; Round_ni(value)
  %4707 = call float @dx.op.unary.f32(i32 27, float %4697)  ; Round_ni(value)
  %4708 = fptosi float %4706 to i32
  %4709 = fptosi float %4707 to i32
  %4710 = xor i32 %4709, %4708
  %4711 = sitofp i32 %4710 to float
  %4712 = fptosi float %4711 to i32
  %4713 = sitofp i32 %4712 to float
  %4714 = fmul fast float %4713, 0x3FE3C6EF40000000
  %4715 = frem fast float %4706, 2.560000e+02
  %4716 = frem fast float %4707, 2.560000e+02
  %4717 = fptoui float %4715 to i32
  %4718 = fptoui float %4716 to i32
  %4719 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4717, i32 %4718, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = extractvalue %dx.types.ResRet.f32 %4719, 1
  %4722 = extractvalue %dx.types.ResRet.f32 %4719, 2
  %4723 = fadd fast float %4720, %4714
  %4724 = fadd fast float %4721, %4714
  %4725 = fadd fast float %4722, %4714
  %4726 = call float @dx.op.unary.f32(i32 22, float %4723)  ; Frc(value)
  %4727 = call float @dx.op.unary.f32(i32 22, float %4724)  ; Frc(value)
  %4728 = call float @dx.op.unary.f32(i32 22, float %4725)  ; Frc(value)
  %4729 = fmul fast float %4728, 0x401921FB60000000
  %4730 = call float @dx.op.unary.f32(i32 13, float %4729)  ; Sin(value)
  %4731 = call float @dx.op.unary.f32(i32 12, float %4729)  ; Cos(value)
  %4732 = fsub fast float -0.000000e+00, %4731
  %4733 = fmul fast float %4731, %4696
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4730, float %4697, float %4733)  ; FMad(a,b,c)
  %4735 = fmul fast float %4730, %4696
  %4736 = call float @dx.op.tertiary.f32(i32 46, float %4732, float %4697, float %4735)  ; FMad(a,b,c)
  %4737 = fadd fast float %4734, %4726
  %4738 = fadd fast float %4736, %4727
  %4739 = extractvalue %dx.types.CBufRet.f32 %4649, 3
  %4740 = bitcast float %4739 to i32
  %4741 = icmp eq i32 %4740, 0
  br i1 %4741, label %4780, label %4742

; <label>:4742                                    ; preds = %4645
  %4743 = add i32 %4740, 0
  %4744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4745 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4744, %dx.types.Handle %75, float %4737, float %4738, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4701, float undef, float %4704, float %4705, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4746 = extractvalue %dx.types.ResRet.f32 %4745, 0
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 1
  %4749 = extractvalue %dx.types.CBufRet.f32 %4747, 2
  %4750 = fsub fast float 1.000000e+00, %4639
  %4751 = call float @dx.op.binary.f32(i32 35, float %4750, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4752 = bitcast float %4639 to i32
  %4753 = sitofp i32 %4752 to float
  %4754 = fadd fast float %4753, 0xC1CFBF8940000000
  %4755 = fmul fast float %4749, %4754
  %4756 = fadd fast float %4755, 0x41CFBF8940000000
  %4757 = fptosi float %4756 to i32
  %4758 = bitcast i32 %4757 to float
  %4759 = bitcast float %4751 to i32
  %4760 = sitofp i32 %4759 to float
  %4761 = fadd fast float %4760, 0xC1CFBF8940000000
  %4762 = fmul fast float %4761, %4749
  %4763 = fadd fast float %4762, 0x41CFBF8940000000
  %4764 = fptosi float %4763 to i32
  %4765 = bitcast i32 %4764 to float
  %4766 = fmul fast float %4758, %4748
  %4767 = fmul fast float %4765, %4748
  %4768 = fsub fast float %4751, %4766
  %4769 = fadd fast float %4767, %4751
  %4770 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4771 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4772 = fsub fast float %4746, %4770
  %4773 = fsub fast float %4771, %4770
  %4774 = bitcast float %4773 to i32
  %4775 = sub nsw i32 2129859010, %4774
  %4776 = bitcast i32 %4775 to float
  %4777 = fmul fast float %4776, %4772
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = fcmp fast olt float %4778, 0x3F70101020000000
  br i1 %4779, label %4918, label %4780

; <label>:4780                                    ; preds = %4742, %4645
  %4781 = phi float [ %4778, %4742 ], [ %4639, %4645 ]
  %4782 = fmul fast float %4781, %4648
  %4783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.i32 %4783, 1
  %4785 = extractvalue %dx.types.CBufRet.i32 %4783, 0
  %4786 = add i32 %4785, 0
  %4787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4788 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4787, %dx.types.Handle %74, float %4737, float %4738, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4701, float undef, float %4704, float %4705, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.ResRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.ResRet.f32 %4788, 2
  %4792 = extractvalue %dx.types.ResRet.f32 %4788, 3
  %4793 = and i32 %4784, 255
  %4794 = uitofp i32 %4793 to float
  %4795 = lshr i32 %4784, 8
  %4796 = and i32 %4795, 255
  %4797 = uitofp i32 %4796 to float
  %4798 = fmul fast float %4792, %4794
  %4799 = fadd fast float %4798, %4797
  %4800 = fmul fast float %4799, 0x3F70101000000000
  %4801 = fadd fast float %4800, 0xBFB99999A0000000
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = fmul fast float %4802, 0x3FF1C71C80000000
  %4804 = call float @dx.op.binary.f32(i32 36, float %4800, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4805 = fsub fast float 1.000000e+00, %4803
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = fmul fast float %4806, %4789
  %4808 = fmul fast float %4806, %4790
  %4809 = fmul fast float %4806, %4791
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4811 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4812 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4813 = fmul fast float %4803, %4789
  %4814 = fmul fast float %4803, %4790
  %4815 = fmul fast float %4803, %4791
  %4816 = fadd fast float %4813, %4804
  %4817 = fadd fast float %4814, %4804
  %4818 = fadd fast float %4815, %4804
  %4819 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4821 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.i32 %4822, 3
  %4824 = extractvalue %dx.types.CBufRet.i32 %4822, 2
  %4825 = add i32 %4824, 0
  %4826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4827 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4826, %dx.types.Handle %74, float %4737, float %4738, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4701, float undef, float %4704, float %4705, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.ResRet.f32 %4827, 1
  %4830 = extractvalue %dx.types.ResRet.f32 %4827, 2
  %4831 = extractvalue %dx.types.ResRet.f32 %4827, 3
  %4832 = and i32 %4823, 255
  %4833 = uitofp i32 %4832 to float
  %4834 = lshr i32 %4823, 8
  %4835 = and i32 %4834, 255
  %4836 = uitofp i32 %4835 to float
  %4837 = lshr i32 %4823, 16
  %4838 = and i32 %4837, 255
  %4839 = uitofp i32 %4838 to float
  %4840 = fmul fast float %4839, 0x3F70101000000000
  %4841 = fmul fast float %4828, %4833
  %4842 = fadd fast float %4841, %4836
  %4843 = fmul fast float %4842, 0x3F70101000000000
  %4844 = fadd fast float %4829, -5.000000e-01
  %4845 = fadd fast float %4831, -5.000000e-01
  %4846 = fmul fast float %4844, %4840
  %4847 = fmul fast float %4845, %4840
  %4848 = fadd fast float %4846, 5.000000e-01
  %4849 = fadd fast float %4847, 5.000000e-01
  %4850 = fmul fast float %4848, 2.000000e+00
  %4851 = fadd fast float %4850, -1.000000e+00
  %4852 = fmul fast float %4849, 2.000000e+00
  %4853 = fadd fast float %4852, -1.000000e+00
  %4854 = fadd fast float %4851, %4853
  %4855 = fmul fast float %4854, 5.000000e-01
  %4856 = fsub fast float %4851, %4853
  %4857 = fmul fast float %4856, 5.000000e-01
  %4858 = call float @dx.op.unary.f32(i32 6, float %4855)  ; FAbs(value)
  %4859 = fsub fast float 1.000000e+00, %4858
  %4860 = call float @dx.op.unary.f32(i32 6, float %4857)  ; FAbs(value)
  %4861 = fsub fast float %4859, %4860
  %4862 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4857, float %4861, float %4855, float %4857, float %4861)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = call float @dx.op.unary.f32(i32 25, float %4862)  ; Rsqrt(value)
  %4864 = fmul fast float %4855, %4863
  %4865 = fmul fast float %4857, %4863
  %4866 = select i1 %4693, i32 %4683, i32 %4684
  %4867 = select i1 %4691, i32 %4682, i32 %4866
  %4868 = sitofp i32 %4867 to float
  %4869 = fmul fast float %4861, %4868
  %4870 = fmul fast float %4869, %4863
  %4871 = select i1 %4693, float %4870, float %4865
  %4872 = select i1 %4693, float %4865, float %4870
  %4873 = select i1 %4691, float %4870, float %4864
  %4874 = select i1 %4691, float %4865, float %4871
  %4875 = select i1 %4691, float %4864, float %4872
  %4876 = fsub fast float %4810, %4243
  %4877 = fsub fast float %4811, %4244
  %4878 = fsub fast float %4812, %4245
  %4879 = fmul fast float %4876, %4782
  %4880 = fmul fast float %4877, %4782
  %4881 = fmul fast float %4878, %4782
  %4882 = fadd fast float %4879, %4243
  %4883 = fadd fast float %4880, %4244
  %4884 = fadd fast float %4881, %4245
  %4885 = fsub fast float %4819, %4228
  %4886 = fsub fast float %4820, %4229
  %4887 = fsub fast float %4821, %4230
  %4888 = fmul fast float %4885, %4782
  %4889 = fmul fast float %4886, %4782
  %4890 = fmul fast float %4887, %4782
  %4891 = fadd fast float %4888, %4228
  %4892 = fadd fast float %4889, %4229
  %4893 = fadd fast float %4890, %4230
  %4894 = fadd fast float %4873, %4192
  %4895 = fadd fast float %4874, %4193
  %4896 = fadd fast float %4875, %4194
  %4897 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %4894, float %4895, float %4896)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = call float @dx.op.unary.f32(i32 25, float %4897)  ; Rsqrt(value)
  %4899 = fmul fast float %4894, %4898
  %4900 = fmul fast float %4895, %4898
  %4901 = fmul fast float %4896, %4898
  %4902 = fsub fast float %4899, %4192
  %4903 = fsub fast float %4900, %4193
  %4904 = fsub fast float %4901, %4194
  %4905 = fmul fast float %4902, %4782
  %4906 = fmul fast float %4903, %4782
  %4907 = fmul fast float %4904, %4782
  %4908 = fadd fast float %4905, %4192
  %4909 = fadd fast float %4906, %4193
  %4910 = fadd fast float %4907, %4194
  %4911 = call float @dx.op.binary.f32(i32 36, float %4204, float %4830)  ; FMin(a,b)
  %4912 = fsub fast float %4911, %4204
  %4913 = fmul fast float %4912, %4782
  %4914 = fadd fast float %4913, %4204
  %4915 = fsub fast float %4843, %4231
  %4916 = fmul fast float %4915, %4782
  %4917 = fadd fast float %4916, %4231
  br label %4918

; <label>:4918                                    ; preds = %4780, %4742, %4644
  %4919 = phi float [ %4882, %4780 ], [ %4243, %4742 ], [ %4243, %4644 ]
  %4920 = phi float [ %4883, %4780 ], [ %4244, %4742 ], [ %4244, %4644 ]
  %4921 = phi float [ %4884, %4780 ], [ %4245, %4742 ], [ %4245, %4644 ]
  %4922 = phi float [ %4891, %4780 ], [ %4228, %4742 ], [ %4228, %4644 ]
  %4923 = phi float [ %4892, %4780 ], [ %4229, %4742 ], [ %4229, %4644 ]
  %4924 = phi float [ %4893, %4780 ], [ %4230, %4742 ], [ %4230, %4644 ]
  %4925 = phi float [ %4908, %4780 ], [ %4192, %4742 ], [ %4192, %4644 ]
  %4926 = phi float [ %4909, %4780 ], [ %4193, %4742 ], [ %4193, %4644 ]
  %4927 = phi float [ %4910, %4780 ], [ %4194, %4742 ], [ %4194, %4644 ]
  %4928 = phi float [ %4917, %4780 ], [ %4231, %4742 ], [ %4231, %4644 ]
  %4929 = phi float [ %4914, %4780 ], [ %4204, %4742 ], [ %4204, %4644 ]
  br i1 %4642, label %4930, label %5203

; <label>:4930                                    ; preds = %4918
  %4931 = call float @dx.op.unary.f32(i32 23, float %4929)  ; Log(value)
  %4932 = fmul fast float %4931, 4.000000e+00
  %4933 = call float @dx.op.unary.f32(i32 21, float %4932)  ; Exp(value)
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 0
  %4936 = fmul fast float %4935, %36
  %4937 = fmul fast float %4935, %37
  %4938 = fmul fast float %4935, %38
  %4939 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4940 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4941 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4942 = call float @dx.op.unary.f32(i32 23, float %4939)  ; Log(value)
  %4943 = call float @dx.op.unary.f32(i32 23, float %4940)  ; Log(value)
  %4944 = call float @dx.op.unary.f32(i32 23, float %4941)  ; Log(value)
  %4945 = fmul fast float %4942, 4.000000e+00
  %4946 = fmul fast float %4943, 4.000000e+00
  %4947 = fmul fast float %4944, 4.000000e+00
  %4948 = call float @dx.op.unary.f32(i32 21, float %4945)  ; Exp(value)
  %4949 = call float @dx.op.unary.f32(i32 21, float %4946)  ; Exp(value)
  %4950 = call float @dx.op.unary.f32(i32 21, float %4947)  ; Exp(value)
  %4951 = fadd fast float %4949, %4948
  %4952 = fadd fast float %4951, %4950
  %4953 = fdiv fast float 1.000000e+00, %4952
  %4954 = fmul fast float %4953, %4948
  %4955 = fcmp fast ogt float %45, 0.000000e+00
  %4956 = fcmp fast ogt float %46, 0.000000e+00
  %4957 = fcmp fast ogt float %47, 0.000000e+00
  %4958 = fcmp fast olt float %45, 0.000000e+00
  %4959 = fcmp fast olt float %46, 0.000000e+00
  %4960 = fcmp fast olt float %47, 0.000000e+00
  %4961 = zext i1 %4955 to i32
  %4962 = zext i1 %4956 to i32
  %4963 = zext i1 %4957 to i32
  %4964 = zext i1 %4958 to i32
  %4965 = zext i1 %4959 to i32
  %4966 = zext i1 %4960 to i32
  %4967 = sub nsw i32 %4961, %4964
  %4968 = sub nsw i32 %4962, %4965
  %4969 = sub nsw i32 %4963, %4966
  %4970 = call float @dx.op.unary.f32(i32 83, float %4936)  ; DerivCoarseX(value)
  %4971 = call float @dx.op.unary.f32(i32 83, float %4937)  ; DerivCoarseX(value)
  %4972 = call float @dx.op.unary.f32(i32 83, float %4938)  ; DerivCoarseX(value)
  %4973 = call float @dx.op.unary.f32(i32 84, float %4936)  ; DerivCoarseY(value)
  %4974 = call float @dx.op.unary.f32(i32 84, float %4937)  ; DerivCoarseY(value)
  %4975 = call float @dx.op.unary.f32(i32 84, float %4938)  ; DerivCoarseY(value)
  %4976 = fcmp fast ole float %228, %4954
  %4977 = fmul fast float %4953, %4951
  %4978 = fcmp fast ole float %228, %4977
  %4979 = select i1 %4978, float %4938, float %4936
  %4980 = select i1 %4978, float %4936, float %4937
  %4981 = select i1 %4976, float %4937, float %4979
  %4982 = select i1 %4976, float %4938, float %4980
  %4983 = select i1 %4978, float %4972, float %4970
  %4984 = select i1 %4978, float %4970, float %4971
  %4985 = select i1 %4976, float %4971, float %4983
  %4986 = select i1 %4976, float %4972, float %4984
  %4987 = select i1 %4978, float %4975, float %4973
  %4988 = select i1 %4978, float %4973, float %4974
  %4989 = select i1 %4976, float %4974, float %4987
  %4990 = select i1 %4976, float %4975, float %4988
  %4991 = call float @dx.op.unary.f32(i32 27, float %4981)  ; Round_ni(value)
  %4992 = call float @dx.op.unary.f32(i32 27, float %4982)  ; Round_ni(value)
  %4993 = fptosi float %4991 to i32
  %4994 = fptosi float %4992 to i32
  %4995 = xor i32 %4994, %4993
  %4996 = sitofp i32 %4995 to float
  %4997 = fptosi float %4996 to i32
  %4998 = sitofp i32 %4997 to float
  %4999 = fmul fast float %4998, 0x3FE3C6EF40000000
  %5000 = frem fast float %4991, 2.560000e+02
  %5001 = frem fast float %4992, 2.560000e+02
  %5002 = fptoui float %5000 to i32
  %5003 = fptoui float %5001 to i32
  %5004 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %5002, i32 %5003, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5005 = extractvalue %dx.types.ResRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.ResRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.ResRet.f32 %5004, 2
  %5008 = fadd fast float %5005, %4999
  %5009 = fadd fast float %5006, %4999
  %5010 = fadd fast float %5007, %4999
  %5011 = call float @dx.op.unary.f32(i32 22, float %5008)  ; Frc(value)
  %5012 = call float @dx.op.unary.f32(i32 22, float %5009)  ; Frc(value)
  %5013 = call float @dx.op.unary.f32(i32 22, float %5010)  ; Frc(value)
  %5014 = fmul fast float %5013, 0x401921FB60000000
  %5015 = call float @dx.op.unary.f32(i32 13, float %5014)  ; Sin(value)
  %5016 = call float @dx.op.unary.f32(i32 12, float %5014)  ; Cos(value)
  %5017 = fsub fast float -0.000000e+00, %5016
  %5018 = fmul fast float %5016, %4981
  %5019 = call float @dx.op.tertiary.f32(i32 46, float %5015, float %4982, float %5018)  ; FMad(a,b,c)
  %5020 = fmul fast float %5015, %4981
  %5021 = call float @dx.op.tertiary.f32(i32 46, float %5017, float %4982, float %5020)  ; FMad(a,b,c)
  %5022 = fadd fast float %5019, %5011
  %5023 = fadd fast float %5021, %5012
  %5024 = extractvalue %dx.types.CBufRet.f32 %4934, 3
  %5025 = bitcast float %5024 to i32
  %5026 = icmp eq i32 %5025, 0
  br i1 %5026, label %5065, label %5027

; <label>:5027                                    ; preds = %4930
  %5028 = add i32 %5025, 0
  %5029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5030 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5029, %dx.types.Handle %75, float %5022, float %5023, float undef, float undef, i32 0, i32 0, i32 undef, float %4985, float %4986, float undef, float %4989, float %4990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5031 = extractvalue %dx.types.ResRet.f32 %5030, 0
  %5032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5033 = extractvalue %dx.types.CBufRet.f32 %5032, 1
  %5034 = extractvalue %dx.types.CBufRet.f32 %5032, 2
  %5035 = fsub fast float 1.000000e+00, %4640
  %5036 = call float @dx.op.binary.f32(i32 35, float %5035, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5037 = bitcast float %4640 to i32
  %5038 = sitofp i32 %5037 to float
  %5039 = fadd fast float %5038, 0xC1CFBF8940000000
  %5040 = fmul fast float %5034, %5039
  %5041 = fadd fast float %5040, 0x41CFBF8940000000
  %5042 = fptosi float %5041 to i32
  %5043 = bitcast i32 %5042 to float
  %5044 = bitcast float %5036 to i32
  %5045 = sitofp i32 %5044 to float
  %5046 = fadd fast float %5045, 0xC1CFBF8940000000
  %5047 = fmul fast float %5046, %5034
  %5048 = fadd fast float %5047, 0x41CFBF8940000000
  %5049 = fptosi float %5048 to i32
  %5050 = bitcast i32 %5049 to float
  %5051 = fmul fast float %5043, %5033
  %5052 = fmul fast float %5050, %5033
  %5053 = fsub fast float %5036, %5051
  %5054 = fadd fast float %5052, %5036
  %5055 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5056 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5057 = fsub fast float %5031, %5055
  %5058 = fsub fast float %5056, %5055
  %5059 = bitcast float %5058 to i32
  %5060 = sub nsw i32 2129859010, %5059
  %5061 = bitcast i32 %5060 to float
  %5062 = fmul fast float %5061, %5057
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fcmp fast olt float %5063, 0x3F70101020000000
  br i1 %5064, label %5203, label %5065

; <label>:5065                                    ; preds = %5027, %4930
  %5066 = phi float [ %5063, %5027 ], [ %4640, %4930 ]
  %5067 = fmul fast float %5066, %4933
  %5068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.i32 %5068, 1
  %5070 = extractvalue %dx.types.CBufRet.i32 %5068, 0
  %5071 = add i32 %5070, 0
  %5072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5073 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5072, %dx.types.Handle %74, float %5022, float %5023, float undef, float undef, i32 0, i32 0, i32 undef, float %4985, float %4986, float undef, float %4989, float %4990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5074 = extractvalue %dx.types.ResRet.f32 %5073, 0
  %5075 = extractvalue %dx.types.ResRet.f32 %5073, 1
  %5076 = extractvalue %dx.types.ResRet.f32 %5073, 2
  %5077 = extractvalue %dx.types.ResRet.f32 %5073, 3
  %5078 = and i32 %5069, 255
  %5079 = uitofp i32 %5078 to float
  %5080 = lshr i32 %5069, 8
  %5081 = and i32 %5080, 255
  %5082 = uitofp i32 %5081 to float
  %5083 = fmul fast float %5077, %5079
  %5084 = fadd fast float %5083, %5082
  %5085 = fmul fast float %5084, 0x3F70101000000000
  %5086 = fadd fast float %5085, 0xBFB99999A0000000
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fmul fast float %5087, 0x3FF1C71C80000000
  %5089 = call float @dx.op.binary.f32(i32 36, float %5085, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5090 = fsub fast float 1.000000e+00, %5088
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = fmul fast float %5091, %5074
  %5093 = fmul fast float %5091, %5075
  %5094 = fmul fast float %5091, %5076
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = fmul fast float %5088, %5074
  %5099 = fmul fast float %5088, %5075
  %5100 = fmul fast float %5088, %5076
  %5101 = fadd fast float %5098, %5089
  %5102 = fadd fast float %5099, %5089
  %5103 = fadd fast float %5100, %5089
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.i32 %5107, 3
  %5109 = extractvalue %dx.types.CBufRet.i32 %5107, 2
  %5110 = add i32 %5109, 0
  %5111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5112 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5111, %dx.types.Handle %74, float %5022, float %5023, float undef, float undef, i32 0, i32 0, i32 undef, float %4985, float %4986, float undef, float %4989, float %4990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5113 = extractvalue %dx.types.ResRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.ResRet.f32 %5112, 1
  %5115 = extractvalue %dx.types.ResRet.f32 %5112, 2
  %5116 = extractvalue %dx.types.ResRet.f32 %5112, 3
  %5117 = and i32 %5108, 255
  %5118 = uitofp i32 %5117 to float
  %5119 = lshr i32 %5108, 8
  %5120 = and i32 %5119, 255
  %5121 = uitofp i32 %5120 to float
  %5122 = lshr i32 %5108, 16
  %5123 = and i32 %5122, 255
  %5124 = uitofp i32 %5123 to float
  %5125 = fmul fast float %5124, 0x3F70101000000000
  %5126 = fmul fast float %5113, %5118
  %5127 = fadd fast float %5126, %5121
  %5128 = fmul fast float %5127, 0x3F70101000000000
  %5129 = fadd fast float %5114, -5.000000e-01
  %5130 = fadd fast float %5116, -5.000000e-01
  %5131 = fmul fast float %5129, %5125
  %5132 = fmul fast float %5130, %5125
  %5133 = fadd fast float %5131, 5.000000e-01
  %5134 = fadd fast float %5132, 5.000000e-01
  %5135 = fmul fast float %5133, 2.000000e+00
  %5136 = fadd fast float %5135, -1.000000e+00
  %5137 = fmul fast float %5134, 2.000000e+00
  %5138 = fadd fast float %5137, -1.000000e+00
  %5139 = fadd fast float %5136, %5138
  %5140 = fmul fast float %5139, 5.000000e-01
  %5141 = fsub fast float %5136, %5138
  %5142 = fmul fast float %5141, 5.000000e-01
  %5143 = call float @dx.op.unary.f32(i32 6, float %5140)  ; FAbs(value)
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = call float @dx.op.unary.f32(i32 6, float %5142)  ; FAbs(value)
  %5146 = fsub fast float %5144, %5145
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5142, float %5146, float %5140, float %5142, float %5146)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = call float @dx.op.unary.f32(i32 25, float %5147)  ; Rsqrt(value)
  %5149 = fmul fast float %5140, %5148
  %5150 = fmul fast float %5142, %5148
  %5151 = select i1 %4978, i32 %4968, i32 %4969
  %5152 = select i1 %4976, i32 %4967, i32 %5151
  %5153 = sitofp i32 %5152 to float
  %5154 = fmul fast float %5146, %5153
  %5155 = fmul fast float %5154, %5148
  %5156 = select i1 %4978, float %5155, float %5150
  %5157 = select i1 %4978, float %5150, float %5155
  %5158 = select i1 %4976, float %5155, float %5149
  %5159 = select i1 %4976, float %5150, float %5156
  %5160 = select i1 %4976, float %5149, float %5157
  %5161 = fsub fast float %5095, %4919
  %5162 = fsub fast float %5096, %4920
  %5163 = fsub fast float %5097, %4921
  %5164 = fmul fast float %5161, %5067
  %5165 = fmul fast float %5162, %5067
  %5166 = fmul fast float %5163, %5067
  %5167 = fadd fast float %5164, %4919
  %5168 = fadd fast float %5165, %4920
  %5169 = fadd fast float %5166, %4921
  %5170 = fsub fast float %5104, %4922
  %5171 = fsub fast float %5105, %4923
  %5172 = fsub fast float %5106, %4924
  %5173 = fmul fast float %5170, %5067
  %5174 = fmul fast float %5171, %5067
  %5175 = fmul fast float %5172, %5067
  %5176 = fadd fast float %5173, %4922
  %5177 = fadd fast float %5174, %4923
  %5178 = fadd fast float %5175, %4924
  %5179 = fadd fast float %5158, %4925
  %5180 = fadd fast float %5159, %4926
  %5181 = fadd fast float %5160, %4927
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float %5179, float %5180, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = call float @dx.op.unary.f32(i32 25, float %5182)  ; Rsqrt(value)
  %5184 = fmul fast float %5179, %5183
  %5185 = fmul fast float %5180, %5183
  %5186 = fmul fast float %5181, %5183
  %5187 = fsub fast float %5184, %4925
  %5188 = fsub fast float %5185, %4926
  %5189 = fsub fast float %5186, %4927
  %5190 = fmul fast float %5187, %5067
  %5191 = fmul fast float %5188, %5067
  %5192 = fmul fast float %5189, %5067
  %5193 = fadd fast float %5190, %4925
  %5194 = fadd fast float %5191, %4926
  %5195 = fadd fast float %5192, %4927
  %5196 = call float @dx.op.binary.f32(i32 36, float %4929, float %5115)  ; FMin(a,b)
  %5197 = fsub fast float %5196, %4929
  %5198 = fmul fast float %5197, %5067
  %5199 = fadd fast float %5198, %4929
  %5200 = fsub fast float %5128, %4928
  %5201 = fmul fast float %5200, %5067
  %5202 = fadd fast float %5201, %4928
  br label %5203

; <label>:5203                                    ; preds = %5065, %5027, %4918, %4634
  %5204 = phi float [ %5167, %5065 ], [ %4919, %5027 ], [ %4919, %4918 ], [ %4243, %4634 ]
  %5205 = phi float [ %5168, %5065 ], [ %4920, %5027 ], [ %4920, %4918 ], [ %4244, %4634 ]
  %5206 = phi float [ %5169, %5065 ], [ %4921, %5027 ], [ %4921, %4918 ], [ %4245, %4634 ]
  %5207 = phi float [ %5176, %5065 ], [ %4922, %5027 ], [ %4922, %4918 ], [ %4228, %4634 ]
  %5208 = phi float [ %5177, %5065 ], [ %4923, %5027 ], [ %4923, %4918 ], [ %4229, %4634 ]
  %5209 = phi float [ %5178, %5065 ], [ %4924, %5027 ], [ %4924, %4918 ], [ %4230, %4634 ]
  %5210 = phi float [ %5193, %5065 ], [ %4925, %5027 ], [ %4925, %4918 ], [ %4192, %4634 ]
  %5211 = phi float [ %5194, %5065 ], [ %4926, %5027 ], [ %4926, %4918 ], [ %4193, %4634 ]
  %5212 = phi float [ %5195, %5065 ], [ %4927, %5027 ], [ %4927, %4918 ], [ %4194, %4634 ]
  %5213 = phi float [ %5202, %5065 ], [ %4928, %5027 ], [ %4928, %4918 ], [ %4231, %4634 ]
  %5214 = phi float [ %5199, %5065 ], [ %4929, %5027 ], [ %4929, %4918 ], [ %4204, %4634 ]
  %5215 = fcmp fast une float %4638, 0.000000e+00
  %5216 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.unary.f32(i32 25, float %5216)  ; Rsqrt(value)
  br i1 %5215, label %5225, label %5218

; <label>:5218                                    ; preds = %5203
  %5219 = fmul fast float %5217, %165
  %5220 = fmul fast float %5217, %166
  %5221 = fmul fast float %5217, %167
  %5222 = fsub fast float -0.000000e+00, %5219
  %5223 = fsub fast float -0.000000e+00, %5220
  %5224 = fsub fast float -0.000000e+00, %5221
  br label %5392

; <label>:5225                                    ; preds = %5203
  %5226 = fmul fast float %165, %5217
  %5227 = fsub fast float -0.000000e+00, %5226
  %5228 = fmul fast float %166, %5217
  %5229 = fsub fast float -0.000000e+00, %5228
  %5230 = fmul fast float %167, %5217
  %5231 = fsub fast float -0.000000e+00, %5230
  %5232 = call float @dx.op.dot3.f32(i32 55, float %5227, float %5229, float %5231, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = fmul fast float %4638, 2.500000e+00
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = fmul fast float %4638, 0x4013FFFFE0000000
  %5236 = fadd fast float %5235, 0xBFFFFFFFE0000000
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fmul fast float %4638, 0x4004000020000000
  %5239 = fadd fast float %5238, 0xBFF8000040000000
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = fmul fast float %4210, 1.000000e+01
  %5242 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5243 = fmul fast float %5242, 2.000000e+00
  %5244 = fsub fast float 3.000000e+00, %5243
  %5245 = fmul fast float %5242, %5242
  %5246 = fmul fast float %5245, %5244
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = fsub fast float 0x3FE3333340000000, %5213
  %5249 = fmul fast float %5248, 0x400AAAAAA0000000
  %5250 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5251 = fmul fast float %5247, %5250
  %5252 = fmul fast float %5204, 0x3FEA2B8620000000
  %5253 = fmul fast float %5205, 0x3FEA2B8620000000
  %5254 = fmul fast float %5206, 0x3FEA2B8620000000
  %5255 = fadd fast float %5252, 0x3FC81DFBA0000000
  %5256 = fmul fast float %5255, %5204
  %5257 = fadd fast float %5256, 0x3F910E6020000000
  %5258 = fadd fast float %5253, 0x3FC81DFBA0000000
  %5259 = fmul fast float %5258, %5205
  %5260 = fadd fast float %5259, 0x3F910E6020000000
  %5261 = fadd fast float %5254, 0x3FC81DFBA0000000
  %5262 = fmul fast float %5261, %5206
  %5263 = fadd fast float %5262, 0x3F910E6020000000
  %5264 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5266 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5267 = fsub fast float %5264, %5204
  %5268 = fsub fast float %5265, %5205
  %5269 = fsub fast float %5266, %5206
  %5270 = fmul fast float %5267, %5234
  %5271 = fmul fast float %5270, %5251
  %5272 = fmul fast float %5268, %5234
  %5273 = fmul fast float %5272, %5251
  %5274 = fmul fast float %5269, %5234
  %5275 = fmul fast float %5274, %5251
  %5276 = fadd fast float %5271, %5204
  %5277 = fadd fast float %5273, %5205
  %5278 = fadd fast float %5275, %5206
  %5279 = fmul fast float %5214, %5214
  %5280 = fmul fast float %5279, %5279
  %5281 = fadd fast float %5237, 1.000000e+00
  %5282 = fsub fast float %5281, %5251
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fsub fast float 1.000000e+00, %5280
  %5287 = call float @dx.op.binary.f32(i32 36, float %5283, float %5286)  ; FMin(a,b)
  %5288 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5289 = call float @dx.op.binary.f32(i32 35, float %5287, float %5288)  ; FMax(a,b)
  %5290 = fadd fast float %5285, 0xBFE4CCCCC0000000
  %5291 = fmul fast float %5290, 0x4006DB6DA0000000
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fmul fast float %5292, 2.000000e+00
  %5294 = fsub fast float 3.000000e+00, %5293
  %5295 = bitcast float %5207 to i32
  %5296 = ashr i32 %5295, 1
  %5297 = add nsw i32 %5296, 532487669
  %5298 = bitcast i32 %5297 to float
  %5299 = fsub fast float 1.000000e+00, %5298
  %5300 = bitcast float %5299 to i32
  %5301 = sub nsw i32 2129859010, %5300
  %5302 = bitcast i32 %5301 to float
  %5303 = fmul fast float %5302, 2.000000e+00
  %5304 = bitcast float %5208 to i32
  %5305 = ashr i32 %5304, 1
  %5306 = add nsw i32 %5305, 532487669
  %5307 = bitcast i32 %5306 to float
  %5308 = fsub fast float 1.000000e+00, %5307
  %5309 = bitcast float %5308 to i32
  %5310 = sub nsw i32 2129859010, %5309
  %5311 = bitcast i32 %5310 to float
  %5312 = fmul fast float %5311, 2.000000e+00
  %5313 = bitcast float %5209 to i32
  %5314 = ashr i32 %5313, 1
  %5315 = add nsw i32 %5314, 532487669
  %5316 = bitcast i32 %5315 to float
  %5317 = fsub fast float 1.000000e+00, %5316
  %5318 = bitcast float %5317 to i32
  %5319 = sub nsw i32 2129859010, %5318
  %5320 = bitcast i32 %5319 to float
  %5321 = fmul fast float %5320, 2.000000e+00
  %5322 = fsub fast float 0x4002A9FBE0000000, %5303
  %5323 = fadd fast float %5303, 0x3FD54FDF00000000
  %5324 = bitcast float %5323 to i32
  %5325 = sub nsw i32 2129859010, %5324
  %5326 = bitcast i32 %5325 to float
  %5327 = fmul fast float %5326, %5322
  %5328 = fmul fast float %5327, %5327
  %5329 = fsub fast float 0x4002A9FBE0000000, %5312
  %5330 = fadd fast float %5312, 0x3FD54FDF00000000
  %5331 = bitcast float %5330 to i32
  %5332 = sub nsw i32 2129859010, %5331
  %5333 = bitcast i32 %5332 to float
  %5334 = fmul fast float %5333, %5329
  %5335 = fmul fast float %5334, %5334
  %5336 = fsub fast float 0x4002A9FBE0000000, %5321
  %5337 = fadd fast float %5321, 0x3FD54FDF00000000
  %5338 = bitcast float %5337 to i32
  %5339 = sub nsw i32 2129859010, %5338
  %5340 = bitcast i32 %5339 to float
  %5341 = fmul fast float %5340, %5336
  %5342 = fmul fast float %5341, %5341
  %5343 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5328)  ; FMax(a,b)
  %5344 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5335)  ; FMax(a,b)
  %5345 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5342)  ; FMax(a,b)
  %5346 = fsub fast float 1.000000e+00, %5232
  %5347 = fadd fast float %5346, %5247
  %5348 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5349 = fsub fast float 1.000000e+00, %4619
  %5350 = fmul fast float %5289, %5349
  %5351 = fmul fast float %5292, %5292
  %5352 = fmul fast float %5351, %5350
  %5353 = fmul fast float %5352, %5294
  %5354 = fmul fast float %5349, 0xBFE99999A0000000
  %5355 = fmul fast float %5354, %5234
  %5356 = fmul fast float %5355, %5251
  %5357 = fadd fast float %5356, 1.000000e+00
  %5358 = fadd fast float %5213, -1.000000e+00
  %5359 = fmul fast float %5357, %5358
  %5360 = fadd fast float %5359, 1.000000e+00
  %5361 = fsub fast float %5343, %5207
  %5362 = fsub fast float %5344, %5208
  %5363 = fsub fast float %5345, %5209
  %5364 = fmul fast float %5353, %5361
  %5365 = fmul fast float %5353, %5362
  %5366 = fmul fast float %5353, %5363
  %5367 = fadd fast float %5364, %5207
  %5368 = fadd fast float %5365, %5208
  %5369 = fadd fast float %5366, %5209
  %5370 = fsub fast float %85, %5210
  %5371 = fsub fast float %86, %5211
  %5372 = fsub fast float %87, %5212
  %5373 = fmul fast float %5353, %5370
  %5374 = fmul fast float %5353, %5371
  %5375 = fmul fast float %5353, %5372
  %5376 = fadd fast float %5373, %5210
  %5377 = fadd fast float %5374, %5211
  %5378 = fadd fast float %5375, %5212
  %5379 = fmul fast float %5353, %5348
  %5380 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5381 = fsub fast float 1.000000e+00, %5380
  %5382 = fmul fast float %5379, %5381
  %5383 = fadd fast float %5382, %5380
  %5384 = fsub fast float 1.000000e+00, %5214
  %5385 = fmul fast float %5353, %5384
  %5386 = fadd fast float %5385, %5214
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5376, float %5377, float %5378, float %5376, float %5377, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = call float @dx.op.unary.f32(i32 25, float %5387)  ; Rsqrt(value)
  %5389 = fmul fast float %5376, %5388
  %5390 = fmul fast float %5377, %5388
  %5391 = fmul fast float %5378, %5388
  br label %5392

; <label>:5392                                    ; preds = %5225, %5218
  %5393 = phi float [ %5224, %5218 ], [ %5231, %5225 ]
  %5394 = phi float [ %5223, %5218 ], [ %5229, %5225 ]
  %5395 = phi float [ %5222, %5218 ], [ %5227, %5225 ]
  %5396 = phi float [ %5221, %5218 ], [ %5230, %5225 ]
  %5397 = phi float [ %5220, %5218 ], [ %5228, %5225 ]
  %5398 = phi float [ %5219, %5218 ], [ %5226, %5225 ]
  %5399 = phi float [ %5204, %5218 ], [ %5276, %5225 ]
  %5400 = phi float [ %5205, %5218 ], [ %5277, %5225 ]
  %5401 = phi float [ %5206, %5218 ], [ %5278, %5225 ]
  %5402 = phi float [ %5207, %5218 ], [ %5367, %5225 ]
  %5403 = phi float [ %5208, %5218 ], [ %5368, %5225 ]
  %5404 = phi float [ %5209, %5218 ], [ %5369, %5225 ]
  %5405 = phi float [ %5210, %5218 ], [ %5389, %5225 ]
  %5406 = phi float [ %5211, %5218 ], [ %5390, %5225 ]
  %5407 = phi float [ %5212, %5218 ], [ %5391, %5225 ]
  %5408 = phi float [ %5213, %5218 ], [ %5383, %5225 ]
  %5409 = phi float [ %5214, %5218 ], [ %5386, %5225 ]
  %5410 = select i1 %217, float 0.000000e+00, float %5404
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %5395, float %5394, float %5393)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5397, float %5396, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = fmul fast float %5413, 2.000000e+00
  %5415 = fmul fast float %5414, %5405
  %5416 = fmul fast float %5414, %5406
  %5417 = fmul fast float %5414, %5407
  %5418 = fsub fast float %5398, %5415
  %5419 = fsub fast float %5397, %5416
  %5420 = fsub fast float %5396, %5417
  %5421 = call float @dx.op.binary.f32(i32 36, float %5409, float 1.000000e+00)  ; FMin(a,b)
  %5422 = fsub fast float 1.000000e+00, %5409
  %5423 = bitcast float %5422 to i32
  %5424 = sub nsw i32 2129859010, %5423
  %5425 = fsub fast float 1.000000e+00, %55
  %5426 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.binary.f32(i32 35, float %5426, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5428 = fdiv fast float %5425, %5427
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5431 = fmul fast float %5430, 5.000000e-01
  %5432 = fadd fast float %5431, 5.000000e-01
  %5433 = fmul fast float %5432, %55
  %5434 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5436 = fmul fast float %5435, %5428
  %5437 = fadd fast float %5433, %5436
  %5438 = fsub fast float 5.000000e-01, %5431
  %5439 = fmul fast float %5438, %5399
  %5440 = fmul fast float %5438, %5400
  %5441 = fmul fast float %5438, %5401
  %5442 = fadd fast float %5437, %5439
  %5443 = fadd fast float %5437, %5440
  %5444 = fadd fast float %5437, %5441
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5418, float %5419, float %5420, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fmul fast float %5446, 5.000000e-01
  %5448 = fadd fast float %5447, 5.000000e-01
  %5449 = fmul fast float %5448, %55
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5418, float %5419, float %5420, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5452 = fmul fast float %5451, %5428
  %5453 = fadd fast float %5449, %5452
  %5454 = fsub fast float 5.000000e-01, %5447
  %5455 = fmul fast float %5454, %5399
  %5456 = fmul fast float %5454, %5400
  %5457 = fmul fast float %5454, %5401
  %5458 = fadd fast float %5453, %5455
  %5459 = fadd fast float %5453, %5456
  %5460 = fadd fast float %5453, %5457
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 0
  %5463 = call float @dx.op.binary.f32(i32 36, float %5399, float %5462)  ; FMin(a,b)
  %5464 = fsub fast float 1.000000e+00, %5421
  %5465 = fmul fast float %5463, %5464
  %5466 = fsub fast float 1.000000e+00, %5465
  %5467 = bitcast float %5466 to i32
  %5468 = sub nsw i32 2129859010, %5467
  %5469 = bitcast i32 %5468 to float
  %5470 = call float @dx.op.binary.f32(i32 36, float %5400, float %5462)  ; FMin(a,b)
  %5471 = fmul fast float %5470, %5464
  %5472 = fsub fast float 1.000000e+00, %5471
  %5473 = bitcast float %5472 to i32
  %5474 = sub nsw i32 2129859010, %5473
  %5475 = bitcast i32 %5474 to float
  %5476 = call float @dx.op.binary.f32(i32 36, float %5401, float %5462)  ; FMin(a,b)
  %5477 = fmul fast float %5476, %5464
  %5478 = fsub fast float 1.000000e+00, %5477
  %5479 = bitcast float %5478 to i32
  %5480 = sub nsw i32 2129859010, %5479
  %5481 = bitcast i32 %5480 to float
  %5482 = fmul fast float %5421, %56
  %5483 = fmul fast float %5482, %5442
  %5484 = fmul fast float %5483, %5469
  %5485 = fmul fast float %5421, %57
  %5486 = fmul fast float %5485, %5443
  %5487 = fmul fast float %5486, %5475
  %5488 = fmul fast float %5421, %58
  %5489 = fmul fast float %5488, %5444
  %5490 = fmul fast float %5489, %5481
  %5491 = call float @dx.op.binary.f32(i32 36, float %5402, float %5462)  ; FMin(a,b)
  %5492 = fmul fast float %5491, %5464
  %5493 = fsub fast float 1.000000e+00, %5492
  %5494 = bitcast float %5493 to i32
  %5495 = sub nsw i32 2129859010, %5494
  %5496 = bitcast i32 %5495 to float
  %5497 = call float @dx.op.binary.f32(i32 36, float %5403, float %5462)  ; FMin(a,b)
  %5498 = fmul fast float %5497, %5464
  %5499 = fsub fast float 1.000000e+00, %5498
  %5500 = bitcast float %5499 to i32
  %5501 = sub nsw i32 2129859010, %5500
  %5502 = bitcast i32 %5501 to float
  %5503 = call float @dx.op.binary.f32(i32 36, float %5410, float %5462)  ; FMin(a,b)
  %5504 = fmul fast float %5503, %5464
  %5505 = fsub fast float 1.000000e+00, %5504
  %5506 = bitcast float %5505 to i32
  %5507 = sub nsw i32 2129859010, %5506
  %5508 = bitcast i32 %5507 to float
  %5509 = fmul fast float %5482, %5458
  %5510 = fmul fast float %5509, %5496
  %5511 = fmul fast float %5485, %5459
  %5512 = fmul fast float %5511, %5502
  %5513 = fmul fast float %5488, %5460
  %5514 = fmul fast float %5513, %5508
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5487, float %5490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = select i1 %217, float 0.000000e+00, float %5484
  %5517 = select i1 %217, float %5515, float %5487
  %5518 = select i1 %217, float 0.000000e+00, float %5490
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5510, float %5512, float %5514, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = select i1 %217, float 0.000000e+00, float %5510
  %5521 = select i1 %217, float %5519, float %5512
  %5522 = select i1 %217, float 0.000000e+00, float %5514
  %5523 = fmul fast float %5412, 9.843750e-01
  %5524 = fmul fast float %5408, 9.843750e-01
  %5525 = fadd fast float %5523, 7.812500e-03
  %5526 = fadd fast float %5524, 7.812500e-03
  %5527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5525, float %5526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5528 = extractvalue %dx.types.ResRet.f32 %5527, 2
  %5529 = extractvalue %dx.types.ResRet.f32 %5527, 3
  %5530 = fmul fast float %5528, %5402
  %5531 = fmul fast float %5528, %5403
  %5532 = fmul fast float %5528, %5410
  %5533 = fadd fast float %5530, %5529
  %5534 = fadd fast float %5531, %5529
  %5535 = fadd fast float %5532, %5529
  %5536 = fcmp fast ogt float %4205, 0.000000e+00
  br i1 %5536, label %5537, label %5563

; <label>:5537                                    ; preds = %5392
  %5538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4205, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5542 = fadd fast float %5539, -5.000000e-01
  %5543 = fadd fast float %5540, -5.000000e-01
  %5544 = fadd fast float %5541, -5.000000e-01
  %5545 = fsub fast float 1.000000e+00, %5402
  %5546 = fsub fast float 1.000000e+00, %5403
  %5547 = fsub fast float 1.000000e+00, %5410
  %5548 = fmul fast float %5402, 4.000000e+00
  %5549 = fmul fast float %5548, %5545
  %5550 = fmul fast float %5549, %5542
  %5551 = fmul fast float %5403, 4.000000e+00
  %5552 = fmul fast float %5551, %5546
  %5553 = fmul fast float %5552, %5543
  %5554 = fmul fast float %5410, 4.000000e+00
  %5555 = fmul fast float %5554, %5547
  %5556 = fmul fast float %5555, %5544
  %5557 = fadd fast float %5550, %5533
  %5558 = fadd fast float %5553, %5534
  %5559 = fadd fast float %5556, %5535
  %5560 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5561 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5562 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  br label %5563

; <label>:5563                                    ; preds = %5537, %5392
  %5564 = phi float [ %5560, %5537 ], [ %5533, %5392 ]
  %5565 = phi float [ %5561, %5537 ], [ %5534, %5392 ]
  %5566 = phi float [ %5562, %5537 ], [ %5535, %5392 ]
  %5567 = call float @dx.op.binary.f32(i32 35, float %5565, float %5566)  ; FMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5564, float %5567)  ; FMax(a,b)
  %5569 = fsub fast float 1.000000e+00, %5568
  %5570 = fmul fast float %5569, %5516
  %5571 = fmul fast float %5569, %5517
  %5572 = fmul fast float %5569, %5518
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5399, float %5400, float %5401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = fcmp fast ogt float %5573, 0x3E7FF19E20000000
  %5575 = fdiv fast float 1.000000e+00, %5573
  %5576 = select i1 %5574, float %5575, float 0.000000e+00
  %5577 = fmul fast float %5576, %5399
  %5578 = fmul fast float %5576, %5400
  %5579 = fmul fast float %5576, %5401
  %5580 = fadd fast float %5577, -1.000000e+00
  %5581 = fadd fast float %5578, -1.000000e+00
  %5582 = fadd fast float %5579, -1.000000e+00
  %5583 = fmul fast float %5580, 5.000000e-01
  %5584 = fmul fast float %5581, 5.000000e-01
  %5585 = fmul fast float %5582, 5.000000e-01
  %5586 = fadd fast float %5583, 1.000000e+00
  %5587 = fadd fast float %5584, 1.000000e+00
  %5588 = fadd fast float %5585, 1.000000e+00
  %5589 = fmul fast float %5564, %5520
  %5590 = fmul fast float %5565, %5521
  %5591 = fmul fast float %5566, %5522
  %5592 = fsub fast float 1.000000e+00, %5412
  %5593 = bitcast float %5592 to i32
  %5594 = sitofp i32 %5593 to float
  %5595 = fmul fast float %5594, 5.000000e+00
  %5596 = fadd fast float %5595, 0xC1EFBF8940000000
  %5597 = fptosi float %5596 to i32
  %5598 = bitcast i32 %5597 to float
  %5599 = fmul fast float %5598, %4206
  %5600 = fmul fast float %5516, %5599
  %5601 = fmul fast float %5600, %5569
  %5602 = fmul fast float %5601, %5586
  %5603 = fmul fast float %5517, %5599
  %5604 = fmul fast float %5603, %5569
  %5605 = fmul fast float %5604, %5587
  %5606 = fmul fast float %5518, %5599
  %5607 = fmul fast float %5606, %5569
  %5608 = fmul fast float %5607, %5588
  %5609 = fmul fast float %5570, %4202
  %5610 = fmul fast float %5571, %4202
  %5611 = fmul fast float %5572, %4202
  %5612 = fadd fast float %5589, %4198
  %5613 = fadd fast float %5612, %5602
  %5614 = fmul fast float %5613, %4202
  %5615 = fadd fast float %5590, %4199
  %5616 = fadd fast float %5615, %5605
  %5617 = fmul fast float %5616, %4202
  %5618 = fadd fast float %5591, %4200
  %5619 = fadd fast float %5618, %5608
  %5620 = fmul fast float %5619, %4202
  %5621 = bitcast i32 %5424 to float
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5624 = fcmp fast oeq float %5623, 0.000000e+00
  br i1 %5624, label %5852, label %5625

; <label>:5625                                    ; preds = %5563
  %5626 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5627 = extractvalue %dx.types.CBufRet.f32 %5622, 1
  %5628 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5632 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5636 = call float @dx.op.dot3.f32(i32 55, float %5630, float %5631, float %5632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = select i1 %217, float %5634, float %5630
  %5638 = select i1 %217, float %5636, float %5631
  %5639 = select i1 %217, float %5635, float %5632
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 1
  %5642 = fcmp fast une float %5641, 0.000000e+00
  br i1 %5642, label %5643, label %5660

; <label>:5643                                    ; preds = %5625
  %5644 = fptoui float %78 to i32
  %5645 = fptoui float %79 to i32
  %5646 = lshr i32 %5644, 4
  %5647 = lshr i32 %5645, 4
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  %5650 = fptoui float %5649 to i32
  %5651 = add i32 %5650, 15
  %5652 = lshr i32 %5651, 4
  %5653 = mul i32 %5652, %5647
  %5654 = add i32 %5653, %5646
  %5655 = shl i32 %5654, 3
  %5656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5655, i32 undef)  ; BufferLoad(srv,index,wot)
  %5657 = extractvalue %dx.types.ResRet.i32 %5656, 0
  %5658 = and i32 %5657, -268435456
  %5659 = icmp eq i32 %5658, -1342177280
  br i1 %5659, label %5670, label %5660

; <label>:5660                                    ; preds = %5643, %5625
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 2
  %5663 = extractvalue %dx.types.CBufRet.f32 %5661, 3
  %5664 = fmul fast float %5662, %78
  %5665 = fmul fast float %5663, %79
  %5666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5664, float %5665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5667 = extractvalue %dx.types.ResRet.f32 %5666, 0
  %5668 = extractvalue %dx.types.ResRet.f32 %5666, 1
  %5669 = extractvalue %dx.types.ResRet.f32 %5666, 2
  br label %5670

; <label>:5670                                    ; preds = %5660, %5643
  %5671 = phi float [ %5667, %5660 ], [ 0.000000e+00, %5643 ]
  %5672 = phi float [ %5668, %5660 ], [ 0.000000e+00, %5643 ]
  %5673 = phi float [ %5669, %5660 ], [ 0.000000e+00, %5643 ]
  %5674 = call float @dx.op.binary.f32(i32 36, float %5672, float %5673)  ; FMin(a,b)
  %5675 = call float @dx.op.binary.f32(i32 36, float %5671, float %5674)  ; FMin(a,b)
  %5676 = fcmp fast ogt float %5675, 0.000000e+00
  br i1 %5676, label %5677, label %5852, !dx.controlflow.hints !76

; <label>:5677                                    ; preds = %5670
  %5678 = fmul fast float %5671, %5637
  %5679 = fmul fast float %5672, %5638
  %5680 = fmul fast float %5673, %5639
  %5681 = fsub fast float %5626, %5398
  %5682 = fsub fast float %5627, %5397
  %5683 = fsub fast float %5628, %5396
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %5681, float %5682, float %5683)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = call float @dx.op.unary.f32(i32 25, float %5684)  ; Rsqrt(value)
  %5686 = fmul fast float %5685, %5681
  %5687 = fmul fast float %5685, %5682
  %5688 = fmul fast float %5685, %5683
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5394, float %5393, float %5686, float %5687, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5692 = fmul fast float %5691, %5691
  %5693 = fmul fast float %5692, %5621
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fmul fast float %5694, %5691
  %5696 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %5686, float %5687, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = fmul fast float %5696, %5696
  %5698 = call float @dx.op.unary.f32(i32 6, float %5689)  ; FAbs(value)
  %5699 = fsub fast float 1.000000e+00, %5408
  %5700 = call float @dx.op.binary.f32(i32 35, float %5699, float 0x3F847AE140000000)  ; FMax(a,b)
  %5701 = fmul fast float %5700, %5700
  %5702 = fmul fast float %5701, %5701
  %5703 = fsub fast float 1.000000e+00, %5702
  %5704 = fmul fast float %5412, %5412
  %5705 = fmul fast float %5704, %5703
  %5706 = fadd fast float %5705, %5702
  %5707 = bitcast float %5706 to i32
  %5708 = ashr i32 %5707, 1
  %5709 = add nsw i32 %5708, 532487669
  %5710 = bitcast i32 %5709 to float
  %5711 = fadd fast float %5710, %5412
  %5712 = fmul fast float %5702, %5697
  %5713 = fsub fast float 1.000000e+00, %5697
  %5714 = fadd fast float %5713, %5712
  %5715 = fmul fast float %5698, %5698
  %5716 = fmul fast float %5715, %5703
  %5717 = fadd fast float %5716, %5702
  %5718 = bitcast float %5717 to i32
  %5719 = ashr i32 %5718, 1
  %5720 = add nsw i32 %5719, 532487669
  %5721 = bitcast i32 %5720 to float
  %5722 = fadd fast float %5721, %5698
  %5723 = fmul fast float %5714, %5714
  %5724 = fmul fast float %5723, %5711
  %5725 = fmul fast float %5724, %5722
  %5726 = fdiv fast float 0x3FF0A00000000000, %5725
  %5727 = fmul fast float %5726, %5702
  %5728 = call float @dx.op.unary.f32(i32 6, float %5690)  ; FAbs(value)
  %5729 = fsub fast float 1.000000e+00, %5728
  %5730 = bitcast float %5729 to i32
  %5731 = sitofp i32 %5730 to float
  %5732 = fmul fast float %5731, 5.000000e+00
  %5733 = fadd fast float %5732, 0xC1EFBF8940000000
  %5734 = fptosi float %5733 to i32
  %5735 = bitcast i32 %5734 to float
  %5736 = fsub fast float 1.000000e+00, %5402
  %5737 = fsub fast float 1.000000e+00, %5403
  %5738 = fsub fast float 1.000000e+00, %5410
  %5739 = fmul fast float %5735, %5736
  %5740 = fmul fast float %5735, %5737
  %5741 = fmul fast float %5735, %5738
  %5742 = fadd fast float %5739, %5402
  %5743 = fadd fast float %5740, %5403
  %5744 = fadd fast float %5741, %5410
  br i1 %5536, label %5745, label %5768

; <label>:5745                                    ; preds = %5677
  %5746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4205, float %5728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5747 = extractvalue %dx.types.ResRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.ResRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.ResRet.f32 %5746, 2
  %5750 = fadd fast float %5747, -5.000000e-01
  %5751 = fadd fast float %5748, -5.000000e-01
  %5752 = fadd fast float %5749, -5.000000e-01
  %5753 = fmul fast float %5402, 4.000000e+00
  %5754 = fmul fast float %5753, %5736
  %5755 = fmul fast float %5754, %5750
  %5756 = fmul fast float %5403, 4.000000e+00
  %5757 = fmul fast float %5756, %5737
  %5758 = fmul fast float %5757, %5751
  %5759 = fmul fast float %5410, 4.000000e+00
  %5760 = fmul fast float %5759, %5738
  %5761 = fmul fast float %5760, %5752
  %5762 = fadd fast float %5755, %5742
  %5763 = fadd fast float %5758, %5743
  %5764 = fadd fast float %5761, %5744
  %5765 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  %5766 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5767 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  br label %5768

; <label>:5768                                    ; preds = %5745, %5677
  %5769 = phi float [ %5765, %5745 ], [ %5742, %5677 ]
  %5770 = phi float [ %5766, %5745 ], [ %5743, %5677 ]
  %5771 = phi float [ %5767, %5745 ], [ %5744, %5677 ]
  %5772 = fmul fast float %5689, 9.843750e-01
  %5773 = fadd fast float %5772, 7.812500e-03
  %5774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5773, float %5526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5775 = extractvalue %dx.types.ResRet.f32 %5774, 2
  %5776 = extractvalue %dx.types.ResRet.f32 %5774, 3
  %5777 = fmul fast float %5775, %5402
  %5778 = fmul fast float %5775, %5403
  %5779 = fmul fast float %5775, %5410
  %5780 = fadd fast float %5777, %5776
  %5781 = fadd fast float %5778, %5776
  %5782 = fadd fast float %5779, %5776
  br i1 %5536, label %5783, label %5806

; <label>:5783                                    ; preds = %5768
  %5784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4205, float %5689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5785 = extractvalue %dx.types.ResRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.ResRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.ResRet.f32 %5784, 2
  %5788 = fadd fast float %5785, -5.000000e-01
  %5789 = fadd fast float %5786, -5.000000e-01
  %5790 = fadd fast float %5787, -5.000000e-01
  %5791 = fmul fast float %5402, 4.000000e+00
  %5792 = fmul fast float %5791, %5736
  %5793 = fmul fast float %5792, %5788
  %5794 = fmul fast float %5403, 4.000000e+00
  %5795 = fmul fast float %5794, %5737
  %5796 = fmul fast float %5795, %5789
  %5797 = fmul fast float %5410, 4.000000e+00
  %5798 = fmul fast float %5797, %5738
  %5799 = fmul fast float %5798, %5790
  %5800 = fadd fast float %5793, %5780
  %5801 = fadd fast float %5796, %5781
  %5802 = fadd fast float %5799, %5782
  %5803 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5804 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5805 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  br label %5806

; <label>:5806                                    ; preds = %5783, %5768
  %5807 = phi float [ %5803, %5783 ], [ %5780, %5768 ]
  %5808 = phi float [ %5804, %5783 ], [ %5781, %5768 ]
  %5809 = phi float [ %5805, %5783 ], [ %5782, %5768 ]
  %5810 = call float @dx.op.binary.f32(i32 35, float %5808, float %5809)  ; FMax(a,b)
  %5811 = call float @dx.op.binary.f32(i32 35, float %5807, float %5810)  ; FMax(a,b)
  %5812 = fsub fast float 1.000000e+00, %5811
  %5813 = fmul fast float %5769, %5727
  %5814 = fmul fast float %5770, %5727
  %5815 = fmul fast float %5771, %5727
  %5816 = fsub fast float 1.000000e+00, %5690
  %5817 = bitcast float %5816 to i32
  %5818 = sitofp i32 %5817 to float
  %5819 = fmul fast float %5818, 5.000000e+00
  %5820 = fadd fast float %5819, 0xC1EFBF8940000000
  %5821 = fptosi float %5820 to i32
  %5822 = bitcast i32 %5821 to float
  %5823 = fmul fast float %5822, %4206
  %5824 = fmul fast float %5812, %5823
  %5825 = fmul fast float %5824, %5586
  %5826 = fmul fast float %5824, %5587
  %5827 = fmul fast float %5824, %5588
  %5828 = fadd fast float %5825, %5813
  %5829 = fadd fast float %5826, %5814
  %5830 = fadd fast float %5827, %5815
  %5831 = fmul fast float %5695, %5678
  %5832 = fmul fast float %5831, %5812
  %5833 = fmul fast float %5695, %5679
  %5834 = fmul fast float %5833, %5812
  %5835 = fmul fast float %5695, %5680
  %5836 = fmul fast float %5835, %5812
  %5837 = fmul fast float %5831, %5828
  %5838 = fmul fast float %5833, %5829
  %5839 = fmul fast float %5835, %5830
  %5840 = fadd fast float %5832, %5570
  %5841 = fmul fast float %5840, %4202
  %5842 = fadd fast float %5834, %5571
  %5843 = fmul fast float %5842, %4202
  %5844 = fadd fast float %5836, %5572
  %5845 = fmul fast float %5844, %4202
  %5846 = fadd fast float %5837, %5613
  %5847 = fmul fast float %5846, %4202
  %5848 = fadd fast float %5838, %5616
  %5849 = fmul fast float %5848, %4202
  %5850 = fadd fast float %5839, %5619
  %5851 = fmul fast float %5850, %4202
  br label %5852

; <label>:5852                                    ; preds = %5806, %5670, %5563
  %5853 = phi float [ %5614, %5563 ], [ %5614, %5670 ], [ %5847, %5806 ]
  %5854 = phi float [ %5617, %5563 ], [ %5617, %5670 ], [ %5849, %5806 ]
  %5855 = phi float [ %5620, %5563 ], [ %5620, %5670 ], [ %5851, %5806 ]
  %5856 = phi float [ %5609, %5563 ], [ %5609, %5670 ], [ %5841, %5806 ]
  %5857 = phi float [ %5610, %5563 ], [ %5610, %5670 ], [ %5843, %5806 ]
  %5858 = phi float [ %5611, %5563 ], [ %5611, %5670 ], [ %5845, %5806 ]
  %5859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.i32 %5859, 0
  %5861 = icmp eq i32 %5860, 0
  br i1 %5861, label %6296, label %5862

; <label>:5862                                    ; preds = %5852
  %5863 = fptoui float %78 to i32
  %5864 = fptoui float %79 to i32
  %5865 = lshr i32 %5863, 4
  %5866 = lshr i32 %5864, 4
  %5867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.i32 %5867, 0
  %5869 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5866, i32 %5868, i32 %5865)  ; UMad(a,b,c)
  %5870 = add nsw i32 %5860, -1
  %5871 = call i32 @dx.op.binary.i32(i32 37, i32 %5870, i32 0)  ; IMax(a,b)
  %5872 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5873 = fptoui float %5872 to i32
  %5874 = lshr i32 %5873, 5
  %5875 = call i32 @dx.op.binary.i32(i32 40, i32 %5874, i32 8191)  ; UMin(a,b)
  %5876 = shl i32 %5875, 2
  %5877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5876, i32 undef)  ; BufferLoad(srv,index,wot)
  %5878 = extractvalue %dx.types.ResRet.i32 %5877, 0
  %5879 = lshr i32 %5878, 16
  %5880 = and i32 %5878, 65535
  %5881 = lshr i32 %5878, 21
  %5882 = lshr i32 %5880, 5
  %5883 = call i32 @dx.op.binary.i32(i32 40, i32 %5882, i32 %5871)  ; UMin(a,b)
  %5884 = icmp ugt i32 %5881, %5883
  br i1 %5884, label %6296, label %5885

; <label>:5885                                    ; preds = %5862
  br label %5886

; <label>:5886                                    ; preds = %6286, %5885
  %5887 = phi i32 [ %6293, %6286 ], [ %5881, %5885 ]
  %5888 = phi float [ %6287, %6286 ], [ %5853, %5885 ]
  %5889 = phi float [ %6288, %6286 ], [ %5854, %5885 ]
  %5890 = phi float [ %6289, %6286 ], [ %5855, %5885 ]
  %5891 = phi float [ %6290, %6286 ], [ %5856, %5885 ]
  %5892 = phi float [ %6291, %6286 ], [ %5857, %5885 ]
  %5893 = phi float [ %6292, %6286 ], [ %5858, %5885 ]
  %5894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5895 = extractvalue %dx.types.CBufRet.i32 %5894, 0
  %5896 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5869, i32 %5895, i32 %5887)  ; UMad(a,b,c)
  %5897 = shl i32 %5896, 2
  %5898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5897, i32 undef)  ; BufferLoad(srv,index,wot)
  %5899 = extractvalue %dx.types.ResRet.i32 %5898, 0
  %5900 = shl i32 %5887, 5
  %5901 = sub nsw i32 %5879, %5900
  %5902 = call i32 @dx.op.binary.i32(i32 37, i32 %5901, i32 0)  ; IMax(a,b)
  %5903 = call i32 @dx.op.binary.i32(i32 38, i32 %5902, i32 31)  ; IMin(a,b)
  %5904 = sub nsw i32 1, %5879
  %5905 = add nsw i32 %5904, %5880
  %5906 = call i32 @dx.op.binary.i32(i32 37, i32 %5905, i32 0)  ; IMax(a,b)
  %5907 = call i32 @dx.op.binary.i32(i32 38, i32 %5906, i32 32)  ; IMin(a,b)
  %5908 = and i32 %5907, 31
  %5909 = shl i32 -1, %5908
  %5910 = xor i32 %5909, -1
  %5911 = and i32 %5903, 31
  %5912 = shl i32 %5910, %5911
  %5913 = icmp eq i32 %5907, 32
  %5914 = select i1 %5913, i32 -1, i32 %5912
  %5915 = and i32 %5914, %5899
  %5916 = icmp eq i32 %5915, 0
  br i1 %5916, label %6286, label %5917

; <label>:5917                                    ; preds = %5886
  br label %5918

; <label>:5918                                    ; preds = %5998, %5917
  %5919 = phi i32 [ %5930, %5998 ], [ %5915, %5917 ]
  %5920 = phi float [ %5999, %5998 ], [ %5888, %5917 ]
  %5921 = phi float [ %6000, %5998 ], [ %5889, %5917 ]
  %5922 = phi float [ %6001, %5998 ], [ %5890, %5917 ]
  %5923 = phi float [ %6002, %5998 ], [ %5891, %5917 ]
  %5924 = phi float [ %6003, %5998 ], [ %5892, %5917 ]
  %5925 = phi float [ %6004, %5998 ], [ %5893, %5917 ]
  %5926 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5919)  ; FirstbitLo(value)
  %5927 = add i32 %5926, %5900
  %5928 = and i32 %5926, 31
  %5929 = shl i32 1, %5928
  %5930 = xor i32 %5929, %5919
  %5931 = mul i32 %5927, 112
  %5932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5931, i32 undef)  ; BufferLoad(srv,index,wot)
  %5933 = extractvalue %dx.types.ResRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.ResRet.f32 %5932, 1
  %5935 = extractvalue %dx.types.ResRet.f32 %5932, 2
  %5936 = or i32 %5931, 12
  %5937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5936, i32 undef)  ; BufferLoad(srv,index,wot)
  %5938 = extractvalue %dx.types.ResRet.f32 %5937, 0
  %5939 = add i32 %5931, 44
  %5940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5939, i32 undef)  ; BufferLoad(srv,index,wot)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 0
  %5942 = add i32 %5931, 48
  %5943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5942, i32 undef)  ; BufferLoad(srv,index,wot)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.ResRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.ResRet.f32 %5943, 2
  %5947 = add i32 %5931, 80
  %5948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5947, i32 undef)  ; BufferLoad(srv,index,wot)
  %5949 = extractvalue %dx.types.ResRet.f32 %5948, 1
  %5950 = extractvalue %dx.types.ResRet.f32 %5948, 2
  %5951 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5934, float %5935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = select i1 %217, float %5949, float %5933
  %5953 = select i1 %217, float %5951, float %5934
  %5954 = select i1 %217, float %5950, float %5935
  %5955 = fsub fast float %5944, %165
  %5956 = fsub fast float %5945, %166
  %5957 = fsub fast float %5946, %167
  %5958 = call float @dx.op.dot3.f32(i32 55, float %5955, float %5956, float %5957, float %5955, float %5956, float %5957)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = call float @dx.op.unary.f32(i32 24, float %5958)  ; Sqrt(value)
  %5960 = fdiv fast float 1.000000e+00, %5959
  %5961 = fmul fast float %5960, %5955
  %5962 = fmul fast float %5960, %5956
  %5963 = fmul fast float %5960, %5957
  %5964 = fadd fast float %5959, %5938
  %5965 = fdiv fast float 1.000000e+00, %5964
  %5966 = fmul float %5941, %5965
  %5967 = fmul float %5966, %5966
  %5968 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5969 = and i32 %5929, %5915
  %5970 = icmp eq i32 %5969, 0
  br i1 %5970, label %5993, label %5971, !dx.controlflow.hints !77

; <label>:5971                                    ; preds = %5918
  %5972 = lshr i32 %5863, 5
  %5973 = lshr i32 %5864, 5
  %5974 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5972, i32 %5973, i32 %5927, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5975 = extractvalue %dx.types.ResRet.i32 %5974, 0
  %5976 = and i32 %5975, 3
  %5977 = icmp eq i32 %5976, 0
  %5978 = select i1 %5977, float 1.000000e+00, float 0.000000e+00
  %5979 = icmp eq i32 %5976, 3
  br i1 %5979, label %5980, label %5993

; <label>:5980                                    ; preds = %5971
  %5981 = lshr i32 %5975, 10
  %5982 = and i32 %5981, 8160
  %5983 = and i32 %5864, 31
  %5984 = or i32 %5982, %5983
  %5985 = lshr i32 %5975, 1
  %5986 = and i32 %5985, 16352
  %5987 = and i32 %5863, 31
  %5988 = or i32 %5986, %5987
  %5989 = lshr i32 %5975, 23
  %5990 = and i32 %5989, 255
  %5991 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5988, i32 %5984, i32 %5990, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5992 = extractvalue %dx.types.ResRet.f32 %5991, 0
  br label %5993

; <label>:5993                                    ; preds = %5980, %5971, %5918
  %5994 = phi float [ %5992, %5980 ], [ %5978, %5971 ], [ 0.000000e+00, %5918 ]
  %5995 = call float @dx.op.binary.f32(i32 36, float %5994, float %5994)  ; FMin(a,b)
  %5996 = call float @dx.op.binary.f32(i32 36, float %5994, float %5995)  ; FMin(a,b)
  %5997 = fcmp fast ogt float %5996, 0.000000e+00
  br i1 %5997, label %6006, label %5998, !dx.controlflow.hints !78

; <label>:5998                                    ; preds = %6242, %5993
  %5999 = phi float [ %5920, %5993 ], [ %6282, %6242 ]
  %6000 = phi float [ %5921, %5993 ], [ %6283, %6242 ]
  %6001 = phi float [ %5922, %5993 ], [ %6284, %6242 ]
  %6002 = phi float [ %5923, %5993 ], [ %6276, %6242 ]
  %6003 = phi float [ %5924, %5993 ], [ %6277, %6242 ]
  %6004 = phi float [ %5925, %5993 ], [ %6278, %6242 ]
  %6005 = icmp eq i32 %5919, %5929
  br i1 %6005, label %6285, label %5918

; <label>:6006                                    ; preds = %5993
  %6007 = fmul fast float %5994, %5952
  %6008 = fmul fast float %5994, %5953
  %6009 = fmul fast float %5994, %5954
  %6010 = fsub fast float %5946, %4606
  %6011 = fcmp fast ogt float %6010, 0.000000e+00
  %6012 = fsub fast float %167, %4606
  %6013 = fcmp fast ogt float %6012, 0.000000e+00
  %6014 = xor i1 %6013, %6011
  %6015 = fsub fast float %4606, %5946
  %6016 = fmul fast float %6015, 2.000000e+00
  %6017 = fadd fast float %6016, %5946
  %6018 = select i1 %6014, float %5946, float %6017
  %6019 = fsub fast float %6018, %167
  %6020 = call float @dx.op.dot3.f32(i32 55, float %5955, float %5956, float %6019, float %5955, float %5956, float %6019)  ; Dot3(ax,ay,az,bx,by,bz)
  %6021 = call float @dx.op.unary.f32(i32 25, float %6020)  ; Rsqrt(value)
  %6022 = fmul fast float %6021, %5955
  %6023 = fmul fast float %6021, %5956
  %6024 = fmul fast float %6021, %6019
  %6025 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %6026 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6022, float %6023, float %6024)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = fdiv fast float 1.000000e+00, %6026
  %6028 = fmul fast float %6027, %6025
  %6029 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6012, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = fcmp fast ogt float %6029, 0.000000e+00
  %6031 = fcmp fast olt float %6029, 0.000000e+00
  %6032 = zext i1 %6030 to i32
  %6033 = zext i1 %6031 to i32
  %6034 = sub nsw i32 %6032, %6033
  %6035 = sitofp i32 %6034 to float
  %6036 = fsub fast float %6018, %4606
  %6037 = call float @dx.op.dot3.f32(i32 55, float %5955, float %5956, float %6036, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6038 = fcmp fast ogt float %6037, 0.000000e+00
  %6039 = fcmp fast olt float %6037, 0.000000e+00
  %6040 = zext i1 %6038 to i32
  %6041 = zext i1 %6039 to i32
  %6042 = sub nsw i32 %6040, %6041
  %6043 = sitofp i32 %6042 to float
  %6044 = fcmp fast une float %6035, %6043
  br i1 %6044, label %6045, label %6055

; <label>:6045                                    ; preds = %6006
  %6046 = fmul fast float %6028, %6024
  %6047 = fmul fast float %6028, %6023
  %6048 = fmul fast float %6028, %6022
  %6049 = fmul fast float %6048, %6048
  %6050 = fmul fast float %6047, %6047
  %6051 = fadd fast float %6049, %6050
  %6052 = fmul fast float %6046, %6046
  %6053 = fadd fast float %6051, %6052
  %6054 = call float @dx.op.unary.f32(i32 24, float %6053)  ; Sqrt(value)
  br label %6067

; <label>:6055                                    ; preds = %6006
  %6056 = icmp slt i32 %6034, 0
  br i1 %6056, label %6057, label %6067

; <label>:6057                                    ; preds = %6055
  %6058 = fsub fast float %165, %5944
  %6059 = fsub fast float %166, %5945
  %6060 = fsub fast float %167, %6018
  %6061 = fmul fast float %6058, %6058
  %6062 = fmul fast float %6059, %6059
  %6063 = fadd fast float %6061, %6062
  %6064 = fmul fast float %6060, %6060
  %6065 = fadd fast float %6063, %6064
  %6066 = call float @dx.op.unary.f32(i32 24, float %6065)  ; Sqrt(value)
  br label %6067

; <label>:6067                                    ; preds = %6057, %6055, %6045
  %6068 = phi float [ %6054, %6045 ], [ %6066, %6057 ], [ 0.000000e+00, %6055 ]
  %6069 = and i1 %6013, %6011
  %6070 = fsub fast float -0.000000e+00, %6068
  %6071 = select i1 %6069, float -0.000000e+00, float %6070
  %6072 = fmul fast float %4607, 0x3FF7154760000000
  %6073 = fmul fast float %6072, %6071
  %6074 = fmul fast float %4608, 0x3FF7154760000000
  %6075 = fmul fast float %6074, %6071
  %6076 = fmul fast float %4609, 0x3FF7154760000000
  %6077 = fmul fast float %6076, %6071
  %6078 = call float @dx.op.unary.f32(i32 21, float %6073)  ; Exp(value)
  %6079 = call float @dx.op.unary.f32(i32 21, float %6075)  ; Exp(value)
  %6080 = call float @dx.op.unary.f32(i32 21, float %6077)  ; Exp(value)
  %6081 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6082 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6083 = call float @dx.op.unary.f32(i32 7, float %6080)  ; Saturate(value)
  %6084 = fmul fast float %6007, %6081
  %6085 = fmul fast float %6008, %6082
  %6086 = fmul fast float %6009, %6083
  %6087 = fsub fast float %5961, %5398
  %6088 = fsub fast float %5962, %5397
  %6089 = fsub fast float %5963, %5396
  %6090 = call float @dx.op.dot3.f32(i32 55, float %6087, float %6088, float %6089, float %6087, float %6088, float %6089)  ; Dot3(ax,ay,az,bx,by,bz)
  %6091 = call float @dx.op.unary.f32(i32 25, float %6090)  ; Rsqrt(value)
  %6092 = fmul fast float %6091, %6087
  %6093 = fmul fast float %6091, %6088
  %6094 = fmul fast float %6091, %6089
  %6095 = call float @dx.op.dot3.f32(i32 55, float %5961, float %5962, float %5963, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %6096 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5394, float %5393, float %6092, float %6093, float %6094)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6098 = fmul fast float %6097, %5968
  %6099 = fmul fast float %6097, %6097
  %6100 = fmul fast float %6099, %5621
  %6101 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6102 = fmul fast float %6098, %6101
  %6103 = bitcast float %5958 to i32
  %6104 = ashr i32 %6103, 1
  %6105 = sub nsw i32 1597463007, %6104
  %6106 = bitcast i32 %6105 to float
  %6107 = fmul fast float %6106, %5955
  %6108 = fmul fast float %6106, %5956
  %6109 = fmul fast float %6106, %5957
  %6110 = fsub fast float %6107, %5398
  %6111 = fsub fast float %6108, %5397
  %6112 = fsub fast float %6109, %5396
  %6113 = call float @dx.op.dot3.f32(i32 55, float %6110, float %6111, float %6112, float %6110, float %6111, float %6112)  ; Dot3(ax,ay,az,bx,by,bz)
  %6114 = call float @dx.op.unary.f32(i32 25, float %6113)  ; Rsqrt(value)
  %6115 = fmul fast float %6110, %6114
  %6116 = fmul fast float %6111, %6114
  %6117 = fmul fast float %6112, %6114
  %6118 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %6115, float %6116, float %6117)  ; Dot3(ax,ay,az,bx,by,bz)
  %6119 = fmul fast float %6118, %6118
  %6120 = call float @dx.op.unary.f32(i32 6, float %6095)  ; FAbs(value)
  %6121 = fsub fast float 1.000000e+00, %5408
  %6122 = call float @dx.op.binary.f32(i32 35, float %6121, float 0x3F847AE140000000)  ; FMax(a,b)
  %6123 = fmul fast float %6122, %6122
  %6124 = fmul fast float %6123, %6123
  %6125 = fsub fast float 1.000000e+00, %6124
  %6126 = fmul fast float %5412, %5412
  %6127 = fmul fast float %6126, %6125
  %6128 = fadd fast float %6127, %6124
  %6129 = bitcast float %6128 to i32
  %6130 = ashr i32 %6129, 1
  %6131 = add nsw i32 %6130, 532487669
  %6132 = bitcast i32 %6131 to float
  %6133 = fadd fast float %6132, %5412
  %6134 = fmul fast float %6124, %6119
  %6135 = fsub fast float 1.000000e+00, %6119
  %6136 = fadd fast float %6135, %6134
  %6137 = fmul fast float %6120, %6120
  %6138 = fmul fast float %6137, %6125
  %6139 = fadd fast float %6138, %6124
  %6140 = bitcast float %6139 to i32
  %6141 = ashr i32 %6140, 1
  %6142 = add nsw i32 %6141, 532487669
  %6143 = bitcast i32 %6142 to float
  %6144 = fadd fast float %6143, %6120
  %6145 = fmul fast float %6136, %6136
  %6146 = fmul fast float %6145, %6133
  %6147 = fmul fast float %6146, %6144
  %6148 = fdiv fast float 1.000000e+00, %6147
  %6149 = bitcast float %6124 to i32
  %6150 = sitofp i32 %6149 to float
  %6151 = fmul fast float %6150, 0x3FE7F73180000000
  %6152 = fadd fast float %6151, 0x41AFE27C40000000
  %6153 = fptosi float %6152 to i32
  %6154 = bitcast i32 %6153 to float
  %6155 = fmul fast float %5941, 0x3FD80E9D60000000
  %6156 = fmul fast float %6155, %6106
  %6157 = fadd fast float %6154, %6156
  %6158 = bitcast float %6157 to i32
  %6159 = sub nsw i32 2129859010, %6158
  %6160 = bitcast i32 %6159 to float
  %6161 = fmul fast float %6124, %6148
  %6162 = fmul fast float %6161, %6154
  %6163 = fmul fast float %6162, %6160
  %6164 = call float @dx.op.unary.f32(i32 6, float %6096)  ; FAbs(value)
  %6165 = fsub fast float 1.000000e+00, %6164
  %6166 = bitcast float %6165 to i32
  %6167 = sitofp i32 %6166 to float
  %6168 = fmul fast float %6167, 5.000000e+00
  %6169 = fadd fast float %6168, 0xC1EFBF8940000000
  %6170 = fptosi float %6169 to i32
  %6171 = bitcast i32 %6170 to float
  %6172 = fsub fast float 1.000000e+00, %5402
  %6173 = fsub fast float 1.000000e+00, %5403
  %6174 = fsub fast float 1.000000e+00, %5410
  %6175 = fmul fast float %6171, %6172
  %6176 = fmul fast float %6171, %6173
  %6177 = fmul fast float %6171, %6174
  %6178 = fadd fast float %6175, %5402
  %6179 = fadd fast float %6176, %5403
  %6180 = fadd fast float %6177, %5410
  br i1 %5536, label %6181, label %6204

; <label>:6181                                    ; preds = %6067
  %6182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4205, float %6164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6183 = extractvalue %dx.types.ResRet.f32 %6182, 0
  %6184 = extractvalue %dx.types.ResRet.f32 %6182, 1
  %6185 = extractvalue %dx.types.ResRet.f32 %6182, 2
  %6186 = fadd fast float %6183, -5.000000e-01
  %6187 = fadd fast float %6184, -5.000000e-01
  %6188 = fadd fast float %6185, -5.000000e-01
  %6189 = fmul fast float %5402, 4.000000e+00
  %6190 = fmul fast float %6189, %6172
  %6191 = fmul fast float %6190, %6186
  %6192 = fmul fast float %5403, 4.000000e+00
  %6193 = fmul fast float %6192, %6173
  %6194 = fmul fast float %6193, %6187
  %6195 = fmul fast float %5410, 4.000000e+00
  %6196 = fmul fast float %6195, %6174
  %6197 = fmul fast float %6196, %6188
  %6198 = fadd fast float %6191, %6178
  %6199 = fadd fast float %6194, %6179
  %6200 = fadd fast float %6197, %6180
  %6201 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  %6202 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6203 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  br label %6204

; <label>:6204                                    ; preds = %6181, %6067
  %6205 = phi float [ %6201, %6181 ], [ %6178, %6067 ]
  %6206 = phi float [ %6202, %6181 ], [ %6179, %6067 ]
  %6207 = phi float [ %6203, %6181 ], [ %6180, %6067 ]
  %6208 = fmul fast float %6095, 9.843750e-01
  %6209 = fadd fast float %6208, 7.812500e-03
  %6210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %6209, float %5526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6211 = extractvalue %dx.types.ResRet.f32 %6210, 2
  %6212 = extractvalue %dx.types.ResRet.f32 %6210, 3
  %6213 = fmul fast float %6211, %5402
  %6214 = fmul fast float %6211, %5403
  %6215 = fmul fast float %6211, %5410
  %6216 = fadd fast float %6213, %6212
  %6217 = fadd fast float %6214, %6212
  %6218 = fadd fast float %6215, %6212
  br i1 %5536, label %6219, label %6242

; <label>:6219                                    ; preds = %6204
  %6220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4205, float %6095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6221 = extractvalue %dx.types.ResRet.f32 %6220, 0
  %6222 = extractvalue %dx.types.ResRet.f32 %6220, 1
  %6223 = extractvalue %dx.types.ResRet.f32 %6220, 2
  %6224 = fadd fast float %6221, -5.000000e-01
  %6225 = fadd fast float %6222, -5.000000e-01
  %6226 = fadd fast float %6223, -5.000000e-01
  %6227 = fmul fast float %5402, 4.000000e+00
  %6228 = fmul fast float %6227, %6172
  %6229 = fmul fast float %6228, %6224
  %6230 = fmul fast float %5403, 4.000000e+00
  %6231 = fmul fast float %6230, %6173
  %6232 = fmul fast float %6231, %6225
  %6233 = fmul fast float %5410, 4.000000e+00
  %6234 = fmul fast float %6233, %6174
  %6235 = fmul fast float %6234, %6226
  %6236 = fadd fast float %6229, %6216
  %6237 = fadd fast float %6232, %6217
  %6238 = fadd fast float %6235, %6218
  %6239 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6240 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6241 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  br label %6242

; <label>:6242                                    ; preds = %6219, %6204
  %6243 = phi float [ %6239, %6219 ], [ %6216, %6204 ]
  %6244 = phi float [ %6240, %6219 ], [ %6217, %6204 ]
  %6245 = phi float [ %6241, %6219 ], [ %6218, %6204 ]
  %6246 = call float @dx.op.binary.f32(i32 35, float %6244, float %6245)  ; FMax(a,b)
  %6247 = call float @dx.op.binary.f32(i32 35, float %6243, float %6246)  ; FMax(a,b)
  %6248 = fsub fast float 1.000000e+00, %6247
  %6249 = fmul fast float %6205, %6163
  %6250 = fmul fast float %6206, %6163
  %6251 = fmul fast float %6207, %6163
  %6252 = fsub fast float 1.000000e+00, %6096
  %6253 = bitcast float %6252 to i32
  %6254 = sitofp i32 %6253 to float
  %6255 = fmul fast float %6254, 5.000000e+00
  %6256 = fadd fast float %6255, 0xC1EFBF8940000000
  %6257 = fptosi float %6256 to i32
  %6258 = bitcast i32 %6257 to float
  %6259 = fmul fast float %6258, %4206
  %6260 = fmul fast float %6248, %6259
  %6261 = fmul fast float %6260, %5586
  %6262 = fmul fast float %6260, %5587
  %6263 = fmul fast float %6260, %5588
  %6264 = fadd fast float %6261, %6249
  %6265 = fadd fast float %6262, %6250
  %6266 = fadd fast float %6263, %6251
  %6267 = fmul fast float %6084, %4202
  %6268 = fmul fast float %6267, %6102
  %6269 = fmul fast float %6268, %6248
  %6270 = fmul fast float %6085, %4202
  %6271 = fmul fast float %6270, %6102
  %6272 = fmul fast float %6271, %6248
  %6273 = fmul fast float %6086, %4202
  %6274 = fmul fast float %6273, %6102
  %6275 = fmul fast float %6274, %6248
  %6276 = fadd fast float %6269, %5923
  %6277 = fadd fast float %6272, %5924
  %6278 = fadd fast float %6275, %5925
  %6279 = fmul fast float %6268, %6264
  %6280 = fmul fast float %6271, %6265
  %6281 = fmul fast float %6274, %6266
  %6282 = fadd fast float %6279, %5920
  %6283 = fadd fast float %6280, %5921
  %6284 = fadd fast float %6281, %5922
  br label %5998

; <label>:6285                                    ; preds = %5998
  br label %6286

; <label>:6286                                    ; preds = %6285, %5886
  %6287 = phi float [ %5888, %5886 ], [ %5999, %6285 ]
  %6288 = phi float [ %5889, %5886 ], [ %6000, %6285 ]
  %6289 = phi float [ %5890, %5886 ], [ %6001, %6285 ]
  %6290 = phi float [ %5891, %5886 ], [ %6002, %6285 ]
  %6291 = phi float [ %5892, %5886 ], [ %6003, %6285 ]
  %6292 = phi float [ %5893, %5886 ], [ %6004, %6285 ]
  %6293 = add i32 %5887, 1
  %6294 = icmp ugt i32 %6293, %5883
  br i1 %6294, label %6295, label %5886

; <label>:6295                                    ; preds = %6286
  br label %6296

; <label>:6296                                    ; preds = %6295, %5862, %5852
  %6297 = phi float [ %5853, %5852 ], [ %5853, %5862 ], [ %6287, %6295 ]
  %6298 = phi float [ %5854, %5852 ], [ %5854, %5862 ], [ %6288, %6295 ]
  %6299 = phi float [ %5855, %5852 ], [ %5855, %5862 ], [ %6289, %6295 ]
  %6300 = phi float [ %5856, %5852 ], [ %5856, %5862 ], [ %6290, %6295 ]
  %6301 = phi float [ %5857, %5852 ], [ %5857, %5862 ], [ %6291, %6295 ]
  %6302 = phi float [ %5858, %5852 ], [ %5858, %5862 ], [ %6292, %6295 ]
  %6303 = call float @dx.op.unary.f32(i32 24, float %5399)  ; Sqrt(value)
  %6304 = call float @dx.op.unary.f32(i32 24, float %5400)  ; Sqrt(value)
  %6305 = call float @dx.op.unary.f32(i32 24, float %5401)  ; Sqrt(value)
  %6306 = fmul fast float %6303, %6300
  %6307 = fmul fast float %6304, %6301
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  br i1 %217, label %6310, label %6330

; <label>:6310                                    ; preds = %6296
  %6311 = fadd fast float %6302, %4208
  %6312 = fmul fast float %6311, %4209
  %6313 = fsub fast float 1.000000e+00, %4209
  %6314 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  %6315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6316 = extractvalue %dx.types.CBufRet.f32 %6315, 3
  %6317 = fmul fast float %6316, %6314
  %6318 = fadd fast float %6317, %6312
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6321 = fmul fast float %6320, %5592
  %6322 = fsub fast float %6318, %6321
  %6323 = fadd fast float %6307, %6306
  %6324 = fmul fast float %6309, %6323
  %6325 = extractvalue %dx.types.CBufRet.f32 %6315, 1
  %6326 = fsub fast float %6322, %6325
  %6327 = extractvalue %dx.types.CBufRet.f32 %6315, 2
  %6328 = fmul fast float %6326, %6327
  %6329 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  br label %6346

; <label>:6330                                    ; preds = %6296
  %6331 = fmul fast float %6305, %6302
  %6332 = fmul fast float %6309, %6306
  %6333 = fmul fast float %6309, %6307
  %6334 = fmul fast float %6331, %6309
  %6335 = add i32 %33, 356
  %6336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6335, i32 undef)  ; BufferLoad(srv,index,wot)
  %6337 = extractvalue %dx.types.ResRet.i32 %6336, 0
  %6338 = and i32 %6337, 32
  %6339 = icmp eq i32 %6338, 0
  br i1 %6339, label %6346, label %6340

; <label>:6340                                    ; preds = %6330
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = fmul fast float %6342, 0x3FE99999A0000000
  %6344 = fadd fast float %6342, %6332
  %6345 = fadd fast float %6343, %6334
  br label %6346

; <label>:6346                                    ; preds = %6340, %6330, %6310
  %6347 = phi float [ %6324, %6310 ], [ %6344, %6340 ], [ %6332, %6330 ]
  %6348 = phi float [ %6329, %6310 ], [ %6333, %6340 ], [ %6333, %6330 ]
  %6349 = phi float [ 1.000000e+00, %6310 ], [ %6345, %6340 ], [ %6334, %6330 ]
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = fmul fast float %6351, %6298
  %6353 = fmul fast float %6351, %6299
  %6354 = fadd fast float %6298, %6297
  %6355 = select i1 %217, float %6354, float %6297
  %6356 = fmul float %6355, %6351
  %6357 = select i1 %217, float 0.000000e+00, float %6352
  %6358 = select i1 %217, float 0.000000e+00, float %6353
  %6359 = fmul fast float %6347, %6303
  %6360 = fmul fast float %6348, %6304
  %6361 = fmul fast float %6349, %6305
  %6362 = fadd fast float %6356, %6359
  %6363 = fadd fast float %6357, %6360
  %6364 = fadd fast float %6358, %6361
  %6365 = select i1 %217, float %6348, float %6363
  %6366 = select i1 %217, float %6349, float %6364
  %6367 = call float @dx.op.binary.f32(i32 36, float %6362, float 3.225500e+04)  ; FMin(a,b)
  %6368 = call float @dx.op.binary.f32(i32 36, float %6365, float 3.225500e+04)  ; FMin(a,b)
  %6369 = call float @dx.op.binary.f32(i32 36, float %6366, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6367)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

