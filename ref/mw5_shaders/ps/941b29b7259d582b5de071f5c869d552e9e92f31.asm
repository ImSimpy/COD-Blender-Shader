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
; shader hash: ed8236844b25523d1cd47281f968ffec
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
  %3161 = and i32 %171, 65535
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = lshr i32 %171, 16
  %3164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3163)  ; LegacyF16ToF32(value)
  %3165 = and i32 %172, 65535
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = fmul fast float %3162, %3142
  %3168 = fmul fast float %3164, %3143
  %3169 = fmul fast float %3166, %3144
  %3170 = shl i32 %173, 4
  %3171 = and i32 %3170, 32752
  %3172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3171)  ; LegacyF16ToF32(value)
  %3173 = lshr i32 %173, 7
  %3174 = and i32 %3173, 32752
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = lshr i32 %173, 22
  %3177 = shl nuw nsw i32 %3176, 5
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = and i32 %174, 65535
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = fmul fast float %3172, %3145
  %3182 = fmul fast float %3181, %3180
  %3183 = fmul fast float %3175, %3146
  %3184 = fmul fast float %3183, %3180
  %3185 = fmul fast float %3178, %3147
  %3186 = fmul fast float %3185, %3180
  %3187 = call float @dx.op.dot2.f32(i32 54, float %3140, float %3141, float %3140, float %3141)  ; Dot2(ax,ay,bx,by)
  %3188 = fmul fast float %3187, 0x3FE3333340000000
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = call float @dx.op.dot3.f32(i32 55, float %3140, float %3141, float %3189, float %3140, float %3141, float %3189)  ; Dot3(ax,ay,az,bx,by,bz)
  %3191 = call float @dx.op.unary.f32(i32 25, float %3190)  ; Rsqrt(value)
  %3192 = fmul fast float %3191, %3140
  %3193 = fmul fast float %3191, %3141
  %3194 = fmul fast float %3189, %3191
  %3195 = fmul fast float %3194, %85
  %3196 = fmul fast float %3194, %86
  %3197 = fmul fast float %3194, %87
  %3198 = fmul fast float %3192, %59
  %3199 = fmul fast float %3192, %60
  %3200 = fmul fast float %3192, %61
  %3201 = fadd fast float %3195, %3198
  %3202 = fadd fast float %3196, %3199
  %3203 = fadd fast float %3197, %3200
  %3204 = fmul fast float %97, %3193
  %3205 = fmul fast float %98, %3193
  %3206 = fmul fast float %99, %3193
  %3207 = fadd fast float %3201, %3204
  %3208 = fadd fast float %3202, %3205
  %3209 = fadd fast float %3203, %3206
  %3210 = call float @dx.op.dot3.f32(i32 55, float %3207, float %3208, float %3209, float %3207, float %3208, float %3209)  ; Dot3(ax,ay,az,bx,by,bz)
  %3211 = call float @dx.op.unary.f32(i32 25, float %3210)  ; Rsqrt(value)
  %3212 = fmul fast float %3207, %3211
  %3213 = fmul fast float %3208, %3211
  %3214 = fmul fast float %3209, %3211
  %3215 = icmp eq i32 %35, 65535
  br i1 %3215, label %3734, label %3216

; <label>:3216                                    ; preds = %3139
  %3217 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3218 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3219 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3220 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3221 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3222 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3223 = fadd fast float %3217, %36
  %3224 = fadd fast float %3218, %37
  %3225 = fadd fast float %3219, %38
  %3226 = fadd fast float %3220, %36
  %3227 = fadd fast float %3221, %37
  %3228 = fadd fast float %3222, %38
  %3229 = mul i32 %35, 48
  %3230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = extractvalue %dx.types.ResRet.f32 %3230, 1
  %3233 = extractvalue %dx.types.ResRet.f32 %3230, 2
  %3234 = add i32 %3229, 16
  %3235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.ResRet.f32 %3235, 2
  %3239 = add i32 %3229, 32
  %3240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = extractvalue %dx.types.ResRet.f32 %3240, 1
  %3243 = extractvalue %dx.types.ResRet.f32 %3240, 2
  %3244 = extractvalue %dx.types.ResRet.f32 %3240, 3
  %3245 = bitcast float %3244 to i32
  %3246 = fmul fast float %3231, %36
  %3247 = fmul fast float %3232, %37
  %3248 = fmul fast float %3233, %38
  %3249 = fsub fast float %3246, %3236
  %3250 = fsub fast float %3247, %3237
  %3251 = fsub fast float %3248, %3238
  %3252 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3253 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3254 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3255 = fmul fast float %3252, %3241
  %3256 = fmul fast float %3253, %3242
  %3257 = fmul fast float %3254, %3243
  %3258 = fadd fast float %3241, -1.000000e+00
  %3259 = fadd fast float %3242, -1.000000e+00
  %3260 = fadd fast float %3243, -1.000000e+00
  %3261 = call float @dx.op.unary.f32(i32 27, float %3255)  ; Round_ni(value)
  %3262 = call float @dx.op.unary.f32(i32 27, float %3256)  ; Round_ni(value)
  %3263 = call float @dx.op.unary.f32(i32 27, float %3257)  ; Round_ni(value)
  %3264 = call float @dx.op.binary.f32(i32 36, float %3261, float %3258)  ; FMin(a,b)
  %3265 = call float @dx.op.binary.f32(i32 36, float %3262, float %3259)  ; FMin(a,b)
  %3266 = call float @dx.op.binary.f32(i32 36, float %3263, float %3260)  ; FMin(a,b)
  %3267 = fmul fast float %3266, %3242
  %3268 = fadd fast float %3267, %3265
  %3269 = fmul fast float %3268, %3241
  %3270 = fadd fast float %3269, %3264
  %3271 = fptosi float %3270 to i32
  %3272 = add nsw i32 %3271, %3245
  %3273 = shl nsw i32 %3272, 2
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = lshr i32 %3275, 16
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3702, label %3278

; <label>:3278                                    ; preds = %3216
  br label %3279

; <label>:3279                                    ; preds = %3401, %3278
  %3280 = phi i32 [ %3303, %3401 ], [ %3276, %3278 ]
  %3281 = phi float [ %3402, %3401 ], [ 0.000000e+00, %3278 ]
  %3282 = phi float [ %3403, %3401 ], [ %931, %3278 ]
  %3283 = phi float [ %3404, %3401 ], [ %3160, %3278 ]
  %3284 = phi float [ %3405, %3401 ], [ %3151, %3278 ]
  %3285 = phi float [ %3406, %3401 ], [ 0.000000e+00, %3278 ]
  %3286 = phi float [ %3407, %3401 ], [ 0.000000e+00, %3278 ]
  %3287 = phi float [ %3408, %3401 ], [ %3182, %3278 ]
  %3288 = phi float [ %3409, %3401 ], [ %3184, %3278 ]
  %3289 = phi float [ %3410, %3401 ], [ %3186, %3278 ]
  %3290 = phi float [ %3411, %3401 ], [ %3212, %3278 ]
  %3291 = phi float [ %3412, %3401 ], [ %3213, %3278 ]
  %3292 = phi float [ %3413, %3401 ], [ %3214, %3278 ]
  %3293 = phi float [ %3414, %3401 ], [ %3150, %3278 ]
  %3294 = phi float [ %3415, %3401 ], [ %3149, %3278 ]
  %3295 = phi float [ %3416, %3401 ], [ 0.000000e+00, %3278 ]
  %3296 = phi float [ %3417, %3401 ], [ %3148, %3278 ]
  %3297 = phi float [ %3418, %3401 ], [ %3167, %3278 ]
  %3298 = phi float [ %3419, %3401 ], [ %3168, %3278 ]
  %3299 = phi float [ %3420, %3401 ], [ %3169, %3278 ]
  %3300 = shl nuw nsw i32 %3280, 2
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = lshr i32 %3302, 16
  %3304 = shl i32 %3302, 8
  %3305 = and i32 %3304, 16776960
  %3306 = or i32 %3305, 48
  %3307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.f32 %3307, 0
  %3309 = extractvalue %dx.types.ResRet.f32 %3307, 1
  %3310 = extractvalue %dx.types.ResRet.f32 %3307, 2
  %3311 = or i32 %3305, 64
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.i32 %3312, 1
  %3315 = or i32 %3305, 80
  %3316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 3
  %3319 = or i32 %3305, 96
  %3320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.ResRet.f32 %3320, 1
  %3323 = extractvalue %dx.types.ResRet.f32 %3320, 2
  %3324 = extractvalue %dx.types.ResRet.f32 %3320, 3
  %3325 = or i32 %3305, 112
  %3326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.f32 %3326, 2
  %3328 = or i32 %3305, 128
  %3329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.f32 %3329, 0
  %3331 = extractvalue %dx.types.ResRet.f32 %3329, 1
  %3332 = extractvalue %dx.types.ResRet.f32 %3329, 2
  %3333 = extractvalue %dx.types.ResRet.f32 %3329, 3
  %3334 = or i32 %3305, 144
  %3335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.f32 %3335, 0
  %3337 = extractvalue %dx.types.ResRet.f32 %3335, 1
  %3338 = extractvalue %dx.types.ResRet.f32 %3335, 2
  %3339 = extractvalue %dx.types.ResRet.f32 %3335, 3
  %3340 = or i32 %3305, 160
  %3341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.ResRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.ResRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.ResRet.f32 %3341, 3
  %3346 = or i32 %3305, 192
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = or i32 %3305, 208
  %3350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.f32 %3350, 0
  %3352 = or i32 %3305, 248
  %3353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = extractvalue %dx.types.ResRet.f32 %3356, 3
  %3361 = call float @dx.op.dot4.f32(i32 56, float %3357, float %3358, float %3359, float %3360, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3362 = or i32 %3305, 16
  %3363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.ResRet.f32 %3363, 1
  %3366 = extractvalue %dx.types.ResRet.f32 %3363, 2
  %3367 = extractvalue %dx.types.ResRet.f32 %3363, 3
  %3368 = call float @dx.op.dot4.f32(i32 56, float %3364, float %3365, float %3366, float %3367, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3369 = or i32 %3305, 32
  %3370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.f32 %3370, 0
  %3372 = extractvalue %dx.types.ResRet.f32 %3370, 1
  %3373 = extractvalue %dx.types.ResRet.f32 %3370, 2
  %3374 = extractvalue %dx.types.ResRet.f32 %3370, 3
  %3375 = call float @dx.op.dot4.f32(i32 56, float %3371, float %3372, float %3373, float %3374, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3376 = call float @dx.op.unary.f32(i32 27, float %3361)  ; Round_ni(value)
  %3377 = call float @dx.op.unary.f32(i32 6, float %3376)  ; FAbs(value)
  %3378 = call float @dx.op.unary.f32(i32 27, float %3368)  ; Round_ni(value)
  %3379 = call float @dx.op.unary.f32(i32 6, float %3378)  ; FAbs(value)
  %3380 = call float @dx.op.unary.f32(i32 6, float %3375)  ; FAbs(value)
  %3381 = call float @dx.op.unary.f32(i32 27, float %3380)  ; Round_ni(value)
  %3382 = fadd fast float %3379, %3377
  %3383 = fadd fast float %3382, %3381
  %3384 = fcmp fast oeq float %3383, 0.000000e+00
  %3385 = call float @dx.op.dot4.f32(i32 56, float %3357, float %3358, float %3359, float %3360, float %3223, float %3224, float %3225, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3386 = call float @dx.op.dot4.f32(i32 56, float %3364, float %3365, float %3366, float %3367, float %3223, float %3224, float %3225, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3387 = call float @dx.op.dot4.f32(i32 56, float %3357, float %3358, float %3359, float %3360, float %3226, float %3227, float %3228, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3388 = call float @dx.op.dot4.f32(i32 56, float %3364, float %3365, float %3366, float %3367, float %3226, float %3227, float %3228, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3389 = fsub fast float %3385, %3361
  %3390 = fsub fast float %3387, %3361
  %3391 = fsub fast float %3386, %3368
  %3392 = fsub fast float %3388, %3368
  %3393 = call float @dx.op.dot3.f32(i32 55, float %3308, float %3309, float %3310, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3395 = extractvalue %dx.types.CBufRet.f32 %3394, 2
  %3396 = fadd fast float %3395, %3393
  %3397 = call float @dx.op.unary.f32(i32 7, float %3396)  ; Saturate(value)
  %3398 = extractvalue %dx.types.CBufRet.f32 %3394, 0
  %3399 = fcmp fast ogt float %3397, %3398
  %3400 = and i1 %3384, %3399
  br i1 %3400, label %3422, label %3401

; <label>:3401                                    ; preds = %3688, %3505, %3422, %3279
  %3402 = phi float [ %3281, %3422 ], [ %3508, %3505 ], [ %3508, %3688 ], [ %3281, %3279 ]
  %3403 = phi float [ %3282, %3422 ], [ %3282, %3505 ], [ %3663, %3688 ], [ %3282, %3279 ]
  %3404 = phi float [ %3283, %3422 ], [ %3283, %3505 ], [ %3662, %3688 ], [ %3283, %3279 ]
  %3405 = phi float [ %3284, %3422 ], [ %3284, %3505 ], [ %3660, %3688 ], [ %3284, %3279 ]
  %3406 = phi float [ %3285, %3422 ], [ %3285, %3505 ], [ %3632, %3688 ], [ %3285, %3279 ]
  %3407 = phi float [ %3286, %3422 ], [ %3286, %3505 ], [ %3630, %3688 ], [ %3286, %3279 ]
  %3408 = phi float [ %3287, %3422 ], [ %3287, %3505 ], [ %3698, %3688 ], [ %3287, %3279 ]
  %3409 = phi float [ %3288, %3422 ], [ %3288, %3505 ], [ %3699, %3688 ], [ %3288, %3279 ]
  %3410 = phi float [ %3289, %3422 ], [ %3289, %3505 ], [ %3700, %3688 ], [ %3289, %3279 ]
  %3411 = phi float [ %3290, %3422 ], [ %3290, %3505 ], [ %3611, %3688 ], [ %3290, %3279 ]
  %3412 = phi float [ %3291, %3422 ], [ %3291, %3505 ], [ %3612, %3688 ], [ %3291, %3279 ]
  %3413 = phi float [ %3292, %3422 ], [ %3292, %3505 ], [ %3613, %3688 ], [ %3292, %3279 ]
  %3414 = phi float [ %3293, %3422 ], [ %3293, %3505 ], [ %3640, %3688 ], [ %3293, %3279 ]
  %3415 = phi float [ %3294, %3422 ], [ %3294, %3505 ], [ %3637, %3688 ], [ %3294, %3279 ]
  %3416 = phi float [ %3295, %3422 ], [ %3295, %3505 ], [ %3634, %3688 ], [ %3295, %3279 ]
  %3417 = phi float [ %3296, %3422 ], [ %3296, %3505 ], [ %3628, %3688 ], [ %3296, %3279 ]
  %3418 = phi float [ %3297, %3422 ], [ %3297, %3505 ], [ %3623, %3688 ], [ %3297, %3279 ]
  %3419 = phi float [ %3298, %3422 ], [ %3298, %3505 ], [ %3624, %3688 ], [ %3298, %3279 ]
  %3420 = phi float [ %3299, %3422 ], [ %3299, %3505 ], [ %3625, %3688 ], [ %3299, %3279 ]
  %3421 = icmp eq i32 %3303, 0
  br i1 %3421, label %3701, label %3279

; <label>:3422                                    ; preds = %3279
  %3423 = extractvalue %dx.types.ResRet.f32 %3307, 3
  %3424 = extractvalue %dx.types.ResRet.f32 %3326, 3
  %3425 = extractvalue %dx.types.ResRet.f32 %3326, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3326, 0
  %3427 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3428 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3429 = extractvalue %dx.types.ResRet.i32 %3312, 3
  %3430 = extractvalue %dx.types.ResRet.i32 %3312, 2
  %3431 = bitcast float %3423 to i32
  %3432 = add i32 %3429, 0
  %3433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3432, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3435 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3433, %dx.types.Handle %3434, float %3361, float %3368, float undef, float undef, i32 0, i32 0, i32 undef, float %3389, float %3391, float undef, float %3390, float %3392, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = fmul fast float %3436, %3428
  %3438 = fadd fast float %3437, %3427
  %3439 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3440 = fmul fast float %3361, %3321
  %3441 = call float @dx.op.tertiary.f32(i32 46, float %3322, float %3368, float %3440)  ; FMad(a,b,c)
  %3442 = fadd fast float %3441, %3426
  %3443 = fmul fast float %3361, %3323
  %3444 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3368, float %3443)  ; FMad(a,b,c)
  %3445 = fadd fast float %3444, %3425
  %3446 = fmul fast float %3389, %3321
  %3447 = call float @dx.op.tertiary.f32(i32 46, float %3322, float %3391, float %3446)  ; FMad(a,b,c)
  %3448 = fmul fast float %3389, %3323
  %3449 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3391, float %3448)  ; FMad(a,b,c)
  %3450 = fmul fast float %3390, %3321
  %3451 = call float @dx.op.tertiary.f32(i32 46, float %3322, float %3392, float %3450)  ; FMad(a,b,c)
  %3452 = fmul fast float %3390, %3323
  %3453 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3392, float %3452)  ; FMad(a,b,c)
  %3454 = add i32 %3430, 0
  %3455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3454, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3456 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3455, %dx.types.Handle %3434, float %3442, float %3445, float undef, float undef, i32 0, i32 0, i32 undef, float %3447, float %3449, float undef, float %3451, float %3453, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3457 = extractvalue %dx.types.ResRet.f32 %3456, 0
  %3458 = and i32 %3431, 1024
  %3459 = icmp ne i32 %3458, 0
  %3460 = fcmp fast ogt float %3457, 0x3FE0101020000000
  %3461 = uitofp i1 %3460 to float
  %3462 = select i1 %3459, float %3461, float %3457
  %3463 = and i32 %3431, 8192
  %3464 = icmp ne i32 %3463, 0
  %3465 = select i1 %3464, float %3424, float 1.000000e+00
  %3466 = fmul fast float %3361, 2.000000e+00
  %3467 = fadd fast float %3466, -1.000000e+00
  %3468 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3469 = fmul fast float %3468, %3354
  %3470 = fsub fast float %3469, %3354
  %3471 = call float @dx.op.unary.f32(i32 7, float %3470)  ; Saturate(value)
  %3472 = fmul fast float %3368, 2.000000e+00
  %3473 = fadd fast float %3472, -1.000000e+00
  %3474 = call float @dx.op.unary.f32(i32 6, float %3473)  ; FAbs(value)
  %3475 = fmul fast float %3474, %3355
  %3476 = fsub fast float %3475, %3355
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3478 = fmul fast float %3380, %3317
  %3479 = fsub fast float %3478, %3317
  %3480 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3481 = fmul fast float %3439, %3465
  %3482 = fmul fast float %3481, %3436
  %3483 = fmul fast float %3482, %3471
  %3484 = fmul fast float %3483, %3462
  %3485 = fmul fast float %3484, %3477
  %3486 = fmul fast float %3485, %3480
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 1
  %3489 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3490 = fsub fast float %3397, %3489
  %3491 = fmul fast float %3490, %3488
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3493 = fmul fast float %3486, %3318
  %3494 = fadd fast float %3486, %3318
  %3495 = fmul fast float %3494, %3327
  %3496 = fsub fast float %3495, %3327
  %3497 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3498 = and i32 %3431, 128
  %3499 = icmp ne i32 %3498, 0
  %3500 = select i1 %3499, float %3497, float %3493
  %3501 = fmul fast float %3500, %3492
  %3502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.f32 %3502, 0
  %3504 = fcmp fast ugt float %3501, %3503
  br i1 %3504, label %3505, label %3401

; <label>:3505                                    ; preds = %3422
  %3506 = select i1 %3464, float %3501, float 0.000000e+00
  %3507 = fadd fast float %3506, %3281
  %3508 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  br i1 %3464, label %3401, label %3509

; <label>:3509                                    ; preds = %3505
  %3510 = and i32 %3431, 4
  %3511 = and i32 %3431, 8
  %3512 = add i32 %3313, 0
  %3513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3512, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3515 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3513, %dx.types.Handle %3514, float %3442, float %3445, float undef, float undef, i32 0, i32 0, i32 undef, float %3447, float %3449, float undef, float %3451, float %3453, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = extractvalue %dx.types.ResRet.f32 %3515, 3
  %3520 = bitcast float %3339 to i32
  %3521 = and i32 %3520, 255
  %3522 = uitofp i32 %3521 to float
  %3523 = lshr i32 %3520, 8
  %3524 = and i32 %3523, 255
  %3525 = uitofp i32 %3524 to float
  %3526 = fmul fast float %3519, %3522
  %3527 = fadd fast float %3526, %3525
  %3528 = fmul fast float %3527, 0x3F70101000000000
  %3529 = add i32 %3314, 0
  %3530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3529, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3531 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3530, %dx.types.Handle %3514, float %3442, float %3445, float undef, float undef, i32 0, i32 0, i32 undef, float %3447, float %3449, float undef, float %3451, float %3453, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 0
  %3533 = extractvalue %dx.types.ResRet.f32 %3531, 1
  %3534 = extractvalue %dx.types.ResRet.f32 %3531, 2
  %3535 = extractvalue %dx.types.ResRet.f32 %3531, 3
  %3536 = bitcast float %3333 to i32
  %3537 = and i32 %3536, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = lshr i32 %3536, 8
  %3540 = and i32 %3539, 255
  %3541 = uitofp i32 %3540 to float
  %3542 = lshr i32 %3536, 16
  %3543 = and i32 %3542, 255
  %3544 = uitofp i32 %3543 to float
  %3545 = fmul fast float %3544, 0x3F70101000000000
  %3546 = fmul fast float %3532, %3538
  %3547 = fadd fast float %3546, %3541
  %3548 = fmul fast float %3547, 0x3F70101000000000
  %3549 = fadd fast float %3533, -5.000000e-01
  %3550 = fadd fast float %3535, -5.000000e-01
  %3551 = fmul fast float %3549, %3545
  %3552 = fmul fast float %3550, %3545
  %3553 = fadd fast float %3551, 5.000000e-01
  %3554 = fadd fast float %3552, 5.000000e-01
  %3555 = fmul fast float %3516, %3342
  %3556 = fmul fast float %3517, %3343
  %3557 = fmul fast float %3518, %3344
  %3558 = fmul fast float %3553, 2.000000e+00
  %3559 = fadd fast float %3558, -1.000000e+00
  %3560 = fmul fast float %3554, 2.000000e+00
  %3561 = fadd fast float %3560, -1.000000e+00
  %3562 = fadd fast float %3559, %3561
  %3563 = fmul fast float %3562, 5.000000e-01
  %3564 = fsub fast float %3559, %3561
  %3565 = fmul fast float %3564, 5.000000e-01
  %3566 = call float @dx.op.unary.f32(i32 6, float %3563)  ; FAbs(value)
  %3567 = fsub fast float 1.000000e+00, %3566
  %3568 = call float @dx.op.unary.f32(i32 6, float %3565)  ; FAbs(value)
  %3569 = fsub fast float %3567, %3568
  %3570 = call float @dx.op.dot3.f32(i32 55, float %3563, float %3565, float %3569, float %3563, float %3565, float %3569)  ; Dot3(ax,ay,az,bx,by,bz)
  %3571 = call float @dx.op.unary.f32(i32 25, float %3570)  ; Rsqrt(value)
  %3572 = fmul fast float %3563, %3571
  %3573 = fmul fast float %3565, %3571
  %3574 = fmul fast float %3571, %3569
  %3575 = fmul fast float %3574, %3308
  %3576 = fmul fast float %3574, %3309
  %3577 = fmul fast float %3574, %3310
  %3578 = fmul fast float %3572, %3330
  %3579 = fmul fast float %3572, %3331
  %3580 = fmul fast float %3572, %3332
  %3581 = fadd fast float %3578, %3575
  %3582 = fadd fast float %3579, %3576
  %3583 = fadd fast float %3580, %3577
  %3584 = fmul fast float %3573, %3336
  %3585 = fmul fast float %3573, %3337
  %3586 = fmul fast float %3573, %3338
  %3587 = fadd fast float %3581, %3584
  %3588 = fadd fast float %3582, %3585
  %3589 = fadd fast float %3583, %3586
  %3590 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3588, float %3589, float %3587, float %3588, float %3589)  ; Dot3(ax,ay,az,bx,by,bz)
  %3591 = call float @dx.op.unary.f32(i32 25, float %3590)  ; Rsqrt(value)
  %3592 = fmul fast float %3587, %3591
  %3593 = fmul fast float %3588, %3591
  %3594 = fmul fast float %3589, %3591
  %3595 = icmp ne i32 %3511, 0
  %3596 = select i1 %3595, float 1.000000e+00, float 0.000000e+00
  %3597 = fmul fast float %3501, %3596
  %3598 = and i32 %3431, 1
  %3599 = icmp eq i32 %3598, 0
  br i1 %3599, label %3600, label %3604

; <label>:3600                                    ; preds = %3509
  %3601 = fsub fast float %3592, %3290
  %3602 = fsub fast float %3593, %3291
  %3603 = fsub fast float %3594, %3292
  br label %3604

; <label>:3604                                    ; preds = %3600, %3509
  %3605 = phi float [ %3601, %3600 ], [ %3592, %3509 ]
  %3606 = phi float [ %3602, %3600 ], [ %3593, %3509 ]
  %3607 = phi float [ %3603, %3600 ], [ %3594, %3509 ]
  %3608 = fmul float %3607, %3597
  %3609 = fmul float %3606, %3597
  %3610 = fmul float %3605, %3597
  %3611 = fadd fast float %3610, %3290
  %3612 = fadd fast float %3609, %3291
  %3613 = fadd fast float %3608, %3292
  %3614 = icmp ne i32 %3510, 0
  %3615 = select i1 %3614, float 1.000000e+00, float 0.000000e+00
  %3616 = fmul fast float %3501, %3615
  %3617 = fsub fast float %3555, %3297
  %3618 = fsub fast float %3556, %3298
  %3619 = fsub fast float %3557, %3299
  %3620 = fmul fast float %3617, %3616
  %3621 = fmul fast float %3618, %3616
  %3622 = fmul fast float %3619, %3616
  %3623 = fadd fast float %3620, %3297
  %3624 = fadd fast float %3621, %3298
  %3625 = fadd fast float %3622, %3299
  %3626 = fsub fast float %3528, %3296
  %3627 = fmul fast float %3626, %3616
  %3628 = fadd fast float %3627, %3296
  %3629 = fmul fast float %3616, %3286
  %3630 = fsub fast float %3286, %3629
  %3631 = fmul fast float %3616, %3285
  %3632 = fsub fast float %3285, %3631
  %3633 = fadd fast float %3501, %3295
  %3634 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3635 = fsub fast float %3548, %3294
  %3636 = fmul fast float %3635, %3597
  %3637 = fadd fast float %3636, %3294
  %3638 = fsub fast float %3534, %3293
  %3639 = fmul fast float %3638, %3597
  %3640 = fadd fast float %3639, %3293
  %3641 = call float @dx.op.dot3.f32(i32 55, float %3555, float %3556, float %3557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.CBufRet.f32 %3642, 1
  %3645 = fmul fast float %3644, %3641
  %3646 = fadd fast float %3645, %3643
  %3647 = call float @dx.op.unary.f32(i32 7, float %3646)  ; Saturate(value)
  %3648 = bitcast float %3345 to i32
  %3649 = and i32 %3648, 65535
  %3650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3649)  ; LegacyF16ToF32(value)
  %3651 = lshr i32 %3648, 16
  %3652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3651)  ; LegacyF16ToF32(value)
  %3653 = fcmp fast oge float %3650, 0.000000e+00
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 0
  %3656 = select i1 %3653, float %3650, float %3655
  %3657 = fadd fast float %3656, %3652
  %3658 = fsub fast float %3647, %3284
  %3659 = fmul fast float %3658, %3501
  %3660 = fadd fast float %3659, %3284
  %3661 = fmul fast float %3657, %3501
  %3662 = call float @dx.op.binary.f32(i32 35, float %3283, float %3661)  ; FMax(a,b)
  %3663 = call float @dx.op.binary.f32(i32 35, float %3282, float %3501)  ; FMax(a,b)
  %3664 = and i32 %3431, 16
  %3665 = icmp eq i32 %3664, 0
  br i1 %3665, label %3688, label %3666

; <label>:3666                                    ; preds = %3604
  %3667 = bitcast float %3351 to i32
  %3668 = add i32 %3348, 0
  %3669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3668, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3670 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3669, %dx.types.Handle %3514, float %3442, float %3445, float undef, float undef, i32 0, i32 0, i32 undef, float %3447, float %3449, float undef, float %3451, float %3453, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3671 = extractvalue %dx.types.ResRet.f32 %3670, 0
  %3672 = extractvalue %dx.types.ResRet.f32 %3670, 1
  %3673 = extractvalue %dx.types.ResRet.f32 %3670, 2
  %3674 = and i32 %3667, 65535
  %3675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3674)  ; LegacyF16ToF32(value)
  %3676 = fmul fast float %3671, %3342
  %3677 = fmul fast float %3672, %3343
  %3678 = fmul fast float %3673, %3344
  %3679 = and i32 %3431, 16384
  %3680 = icmp ne i32 %3679, 0
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3683 = select i1 %3680, float %3682, float 1.000000e+00
  %3684 = fmul fast float %3683, %3675
  %3685 = fmul fast float %3676, %3684
  %3686 = fmul fast float %3677, %3684
  %3687 = fmul fast float %3678, %3684
  br label %3688

; <label>:3688                                    ; preds = %3666, %3604
  %3689 = phi float [ %3685, %3666 ], [ 0.000000e+00, %3604 ]
  %3690 = phi float [ %3686, %3666 ], [ 0.000000e+00, %3604 ]
  %3691 = phi float [ %3687, %3666 ], [ 0.000000e+00, %3604 ]
  %3692 = fsub fast float %3689, %3287
  %3693 = fsub fast float %3690, %3288
  %3694 = fsub fast float %3691, %3289
  %3695 = fmul fast float %3692, %3501
  %3696 = fmul fast float %3693, %3501
  %3697 = fmul fast float %3694, %3501
  %3698 = fadd fast float %3695, %3287
  %3699 = fadd fast float %3696, %3288
  %3700 = fadd fast float %3697, %3289
  br label %3401

; <label>:3701                                    ; preds = %3401
  br label %3702

; <label>:3702                                    ; preds = %3701, %3216
  %3703 = phi float [ 0.000000e+00, %3216 ], [ %3402, %3701 ]
  %3704 = phi float [ %931, %3216 ], [ %3403, %3701 ]
  %3705 = phi float [ %3160, %3216 ], [ %3404, %3701 ]
  %3706 = phi float [ %3151, %3216 ], [ %3405, %3701 ]
  %3707 = phi float [ 0.000000e+00, %3216 ], [ %3406, %3701 ]
  %3708 = phi float [ 0.000000e+00, %3216 ], [ %3407, %3701 ]
  %3709 = phi float [ %3182, %3216 ], [ %3408, %3701 ]
  %3710 = phi float [ %3184, %3216 ], [ %3409, %3701 ]
  %3711 = phi float [ %3186, %3216 ], [ %3410, %3701 ]
  %3712 = phi float [ %3212, %3216 ], [ %3411, %3701 ]
  %3713 = phi float [ %3213, %3216 ], [ %3412, %3701 ]
  %3714 = phi float [ %3214, %3216 ], [ %3413, %3701 ]
  %3715 = phi float [ %3150, %3216 ], [ %3414, %3701 ]
  %3716 = phi float [ %3149, %3216 ], [ %3415, %3701 ]
  %3717 = phi float [ 0.000000e+00, %3216 ], [ %3416, %3701 ]
  %3718 = phi float [ %3148, %3216 ], [ %3417, %3701 ]
  %3719 = phi float [ %3167, %3216 ], [ %3418, %3701 ]
  %3720 = phi float [ %3168, %3216 ], [ %3419, %3701 ]
  %3721 = phi float [ %3169, %3216 ], [ %3420, %3701 ]
  %3722 = call float @dx.op.dot3.f32(i32 55, float %3712, float %3713, float %3714, float %3712, float %3713, float %3714)  ; Dot3(ax,ay,az,bx,by,bz)
  %3723 = call float @dx.op.unary.f32(i32 25, float %3722)  ; Rsqrt(value)
  %3724 = fmul fast float %3723, %3712
  %3725 = fmul fast float %3723, %3713
  %3726 = fmul fast float %3723, %3714
  %3727 = fadd fast float %3717, %931
  %3728 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3729 = call float @dx.op.dot3.f32(i32 55, float %3724, float %3725, float %3726, float %3724, float %3725, float %3726)  ; Dot3(ax,ay,az,bx,by,bz)
  %3730 = call float @dx.op.unary.f32(i32 25, float %3729)  ; Rsqrt(value)
  %3731 = fmul fast float %3730, %3724
  %3732 = fmul fast float %3730, %3725
  %3733 = fmul fast float %3730, %3726
  br label %3734

; <label>:3734                                    ; preds = %3702, %3139
  %3735 = phi float [ %3719, %3702 ], [ %3167, %3139 ]
  %3736 = phi float [ %3720, %3702 ], [ %3168, %3139 ]
  %3737 = phi float [ %3721, %3702 ], [ %3169, %3139 ]
  %3738 = phi float [ %3731, %3702 ], [ %3212, %3139 ]
  %3739 = phi float [ %3732, %3702 ], [ %3213, %3139 ]
  %3740 = phi float [ %3733, %3702 ], [ %3214, %3139 ]
  %3741 = phi float [ %3709, %3702 ], [ %3182, %3139 ]
  %3742 = phi float [ %3710, %3702 ], [ %3184, %3139 ]
  %3743 = phi float [ %3711, %3702 ], [ %3186, %3139 ]
  %3744 = phi float [ %3718, %3702 ], [ %3148, %3139 ]
  %3745 = phi float [ %3728, %3702 ], [ %931, %3139 ]
  %3746 = phi float [ %3716, %3702 ], [ %3149, %3139 ]
  %3747 = phi float [ %3715, %3702 ], [ %3150, %3139 ]
  %3748 = phi float [ %3708, %3702 ], [ 0.000000e+00, %3139 ]
  %3749 = phi float [ %3707, %3702 ], [ 0.000000e+00, %3139 ]
  %3750 = phi float [ %3703, %3702 ], [ 0.000000e+00, %3139 ]
  %3751 = phi float [ %3705, %3702 ], [ %3160, %3139 ]
  %3752 = phi float [ %3704, %3702 ], [ %931, %3139 ]
  %3753 = phi float [ %3706, %3702 ], [ %3151, %3139 ]
  %3754 = fadd fast float %3744, 0xBFB99999A0000000
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fmul fast float %3755, 0x3FF1C71C80000000
  %3757 = call float @dx.op.binary.f32(i32 36, float %3744, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3758 = fsub fast float 1.000000e+00, %3756
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3759, %3735
  %3761 = fmul fast float %3759, %3736
  %3762 = fmul fast float %3759, %3737
  %3763 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3764 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3765 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3766 = fmul fast float %3756, %3735
  %3767 = fmul fast float %3756, %3736
  %3768 = fmul fast float %3756, %3737
  %3769 = fadd fast float %3766, %3757
  %3770 = fadd fast float %3767, %3757
  %3771 = fadd fast float %3768, %3757
  %3772 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3773 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3774 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3775 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.i32 %3776, 3
  %3778 = and i32 %3777, 8
  %3779 = icmp ne i32 %3778, 0
  %3780 = call float @dx.op.binary.f32(i32 35, float %3763, float %3735)  ; FMax(a,b)
  %3781 = call float @dx.op.binary.f32(i32 35, float %3764, float %3735)  ; FMax(a,b)
  %3782 = call float @dx.op.binary.f32(i32 35, float %3765, float %3735)  ; FMax(a,b)
  %3783 = call float @dx.op.dot3.f32(i32 55, float %3763, float %3764, float %3765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3784 = select i1 %215, float %3735, float %3763
  %3785 = select i1 %215, float %3783, float %3764
  %3786 = select i1 %215, float 1.000000e+00, float %3765
  %3787 = select i1 %3779, float %3780, float %3784
  %3788 = select i1 %3779, float %3781, float %3785
  %3789 = select i1 %3779, float %3782, float %3786
  %3790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3791 = extractvalue %dx.types.CBufRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.CBufRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.CBufRet.f32 %3790, 2
  %3794 = fadd fast float %3791, %165
  %3795 = fadd fast float %3792, %166
  %3796 = fadd fast float %3793, %167
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.CBufRet.f32 %3797, 1
  %3800 = fsub fast float %3794, %3798
  %3801 = fsub fast float %3795, %3799
  %3802 = fmul fast float %3800, %3800
  %3803 = fmul fast float %3801, %3801
  %3804 = fadd fast float %3802, %3803
  %3805 = call float @dx.op.unary.f32(i32 24, float %3804)  ; Sqrt(value)
  %3806 = extractvalue %dx.types.CBufRet.f32 %3797, 2
  %3807 = fcmp fast olt float %3805, %3806
  br i1 %3807, label %3808, label %3875

; <label>:3808                                    ; preds = %3734
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 0
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.CBufRet.f32 %3809, 1
  %3816 = extractvalue %dx.types.CBufRet.f32 %3811, 1
  %3817 = extractvalue %dx.types.CBufRet.f32 %3813, 1
  %3818 = extractvalue %dx.types.CBufRet.f32 %3809, 3
  %3819 = extractvalue %dx.types.CBufRet.f32 %3811, 3
  %3820 = extractvalue %dx.types.CBufRet.f32 %3813, 3
  %3821 = fadd fast float %3818, %3794
  %3822 = fadd fast float %3819, %3795
  %3823 = fadd fast float %3820, %3796
  %3824 = fmul fast float %3821, %3810
  %3825 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3812, float %3824)  ; FMad(a,b,c)
  %3826 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3814, float %3825)  ; FMad(a,b,c)
  %3827 = fmul fast float %3821, %3815
  %3828 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3816, float %3827)  ; FMad(a,b,c)
  %3829 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3817, float %3828)  ; FMad(a,b,c)
  %3830 = fsub fast float %3826, %3818
  %3831 = fsub fast float %3829, %3819
  %3832 = fsub fast float %3830, %3798
  %3833 = fadd fast float %3832, %3806
  %3834 = fsub fast float %3831, %3799
  %3835 = fadd fast float %3834, %3806
  %3836 = extractvalue %dx.types.CBufRet.f32 %3797, 3
  %3837 = fmul fast float %3833, %3836
  %3838 = fmul fast float %3835, %3836
  %3839 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3840 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3841 = fsub fast float 1.000000e+00, %3839
  %3842 = fsub fast float 1.000000e+00, %3840
  %3843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3841, float %3842, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = fcmp fast ugt float %3844, 0.000000e+00
  br i1 %3845, label %3846, label %4149

; <label>:3846                                    ; preds = %3808
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3849 = fmul fast float %3848, %3844
  %3850 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3851 = fadd fast float %3850, %3849
  %3852 = extractvalue %dx.types.CBufRet.f32 %3813, 2
  %3853 = fadd fast float %3851, %3820
  %3854 = fmul fast float %3826, %3814
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3829, float %3817, float %3854)  ; FMad(a,b,c)
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3853, float %3852, float %3855)  ; FMad(a,b,c)
  %3857 = fsub fast float %3856, %3820
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3860 = fsub fast float %3857, %3859
  %3861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3841, float %3842, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %3841, float %3842, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.ResRet.f32 %3865, 1
  %3868 = extractvalue %dx.types.ResRet.f32 %3865, 2
  %3869 = fadd fast float %3866, %3862
  %3870 = fmul fast float %3869, 0x3F847AE140000000
  %3871 = fadd fast float %3867, %3863
  %3872 = fmul fast float %3871, 0x3F847AE140000000
  %3873 = fadd fast float %3868, %3864
  %3874 = fmul fast float %3873, 0x3F847AE140000000
  br label %4149

; <label>:3875                                    ; preds = %3734
  %3876 = and i32 %194, 1
  %3877 = icmp eq i32 %3876, 0
  br i1 %3877, label %4149, label %3878

; <label>:3878                                    ; preds = %3875
  %3879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3880 = extractvalue %dx.types.CBufRet.f32 %3879, 0
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3884 = extractvalue %dx.types.CBufRet.f32 %3883, 0
  %3885 = extractvalue %dx.types.CBufRet.f32 %3879, 1
  %3886 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3887 = extractvalue %dx.types.CBufRet.f32 %3883, 1
  %3888 = extractvalue %dx.types.CBufRet.f32 %3879, 3
  %3889 = extractvalue %dx.types.CBufRet.f32 %3881, 3
  %3890 = extractvalue %dx.types.CBufRet.f32 %3883, 3
  %3891 = fadd fast float %3888, %3794
  %3892 = fadd fast float %3889, %3795
  %3893 = fadd fast float %3890, %3796
  %3894 = fmul fast float %3891, %3880
  %3895 = call float @dx.op.tertiary.f32(i32 46, float %3892, float %3882, float %3894)  ; FMad(a,b,c)
  %3896 = call float @dx.op.tertiary.f32(i32 46, float %3893, float %3884, float %3895)  ; FMad(a,b,c)
  %3897 = fmul fast float %3891, %3885
  %3898 = call float @dx.op.tertiary.f32(i32 46, float %3892, float %3886, float %3897)  ; FMad(a,b,c)
  %3899 = call float @dx.op.tertiary.f32(i32 46, float %3893, float %3887, float %3898)  ; FMad(a,b,c)
  %3900 = fsub fast float %3896, %3888
  %3901 = fsub fast float %3899, %3889
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.CBufRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.CBufRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.CBufRet.f32 %3902, 3
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 3
  %3909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.i32 %3909, 0
  %3911 = extractvalue %dx.types.CBufRet.i32 %3909, 1
  %3912 = udiv i32 %3911, %3910
  %3913 = fsub fast float %3900, %3903
  %3914 = fsub fast float %3901, %3904
  %3915 = call float @dx.op.binary.f32(i32 35, float %3913, float 0.000000e+00)  ; FMax(a,b)
  %3916 = call float @dx.op.binary.f32(i32 35, float %3914, float 0.000000e+00)  ; FMax(a,b)
  %3917 = call float @dx.op.binary.f32(i32 36, float %3915, float %3905)  ; FMin(a,b)
  %3918 = call float @dx.op.binary.f32(i32 36, float %3916, float %3906)  ; FMin(a,b)
  %3919 = add i32 %3910, -1
  %3920 = add i32 %3912, -1
  %3921 = fmul fast float %3917, %3908
  %3922 = fmul fast float %3918, %3908
  %3923 = fptoui float %3921 to i32
  %3924 = fptoui float %3922 to i32
  %3925 = call i32 @dx.op.binary.i32(i32 40, i32 %3923, i32 %3919)  ; UMin(a,b)
  %3926 = call i32 @dx.op.binary.i32(i32 40, i32 %3924, i32 %3920)  ; UMin(a,b)
  %3927 = mul i32 %3926, %3910
  %3928 = add i32 %3927, %3925
  %3929 = shl i32 %3928, 2
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = icmp eq i32 %3931, -1
  br i1 %3932, label %4149, label %3933

; <label>:3933                                    ; preds = %3878
  %3934 = mul i32 %3931, 148
  %3935 = add i32 %3934, 4
  %3936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = add i32 %3934, 8
  %3939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = add i32 %3934, 36
  %3942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = add i32 %3934, 60
  %3945 = add i32 %3934, 92
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = add i32 %3934, 116
  %3949 = fsub fast float %3900, %3937
  %3950 = fsub fast float %3901, %3940
  %3951 = fmul fast float %3908, %3949
  %3952 = fmul fast float %3908, %3950
  %3953 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3954 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3955 = fsub fast float 1.000000e+00, %3954
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 2
  %3958 = call float @dx.op.unary.f32(i32 83, float %3953)  ; DerivCoarseX(value)
  %3959 = call float @dx.op.unary.f32(i32 83, float %3955)  ; DerivCoarseX(value)
  %3960 = call float @dx.op.unary.f32(i32 84, float %3953)  ; DerivCoarseY(value)
  %3961 = call float @dx.op.unary.f32(i32 84, float %3955)  ; DerivCoarseY(value)
  %3962 = fmul fast float %3958, %3957
  %3963 = fmul fast float %3959, %3957
  %3964 = fmul fast float %3960, %3957
  %3965 = fmul fast float %3961, %3957
  %3966 = call float @dx.op.dot2.f32(i32 54, float %3964, float %3965, float %3964, float %3965)  ; Dot2(ax,ay,bx,by)
  %3967 = call float @dx.op.dot2.f32(i32 54, float %3962, float %3963, float %3962, float %3963)  ; Dot2(ax,ay,bx,by)
  %3968 = call float @dx.op.binary.f32(i32 35, float %3967, float %3966)  ; FMax(a,b)
  %3969 = call float @dx.op.unary.f32(i32 23, float %3968)  ; Log(value)
  %3970 = fmul fast float %3969, 5.000000e-01
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 1
  %3973 = fadd fast float %3972, %3970
  %3974 = call float @dx.op.binary.f32(i32 35, float %3973, float 0.000000e+00)  ; FMax(a,b)
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 3
  %3977 = fadd fast float %3976, %3974
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 3
  %3980 = fadd fast float %3977, %3979
  %3981 = add i32 %3947, 0
  %3982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3981, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3983 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3982, i32 0)  ; GetDimensions(handle,mipLevel)
  %3984 = extractvalue %dx.types.Dimensions %3983, 0
  %3985 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3984)  ; FirstbitLo(value)
  %3986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.i32 %3986, 1
  %3988 = sub nsw i32 %3987, %3985
  %3989 = sitofp i32 %3988 to float
  %3990 = fsub fast float %3980, %3989
  %3991 = call float @dx.op.binary.f32(i32 35, float %3990, float 0.000000e+00)  ; FMax(a,b)
  %3992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3982, %dx.types.Handle %28, float %3953, float %3955, float %3943, float undef, i32 0, i32 0, i32 undef, float %3991)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3993 = extractvalue %dx.types.ResRet.f32 %3992, 0
  %3994 = fcmp ule float %3993, 0x3FE0101020000000
  %3995 = extractvalue %dx.types.CBufRet.i32 %3986, 0
  %3996 = and i32 %3995, 128
  %3997 = icmp ne i32 %3996, 0
  %3998 = and i1 %3994, %3997
  br i1 %3998, label %4149, label %3999

; <label>:3999                                    ; preds = %3933
  %4000 = add i32 %3934, 20
  %4001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4000, i32 undef)  ; BufferLoad(srv,index,wot)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = add i32 %3934, 24
  %4004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4006 = add i32 %3934, 40
  %4007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = add i32 %3934, 96
  %4010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4009, i32 undef)  ; BufferLoad(srv,index,wot)
  %4011 = extractvalue %dx.types.ResRet.i32 %4010, 0
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 2
  %4014 = fmul fast float %4013, %3953
  %4015 = fmul fast float %4013, %3955
  %4016 = extractvalue %dx.types.CBufRet.f32 %4012, 3
  %4017 = fadd fast float %4014, %4016
  %4018 = fadd fast float %4015, %4016
  %4019 = add i32 %4011, 0
  %4020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4019, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4021 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4020, i32 0)  ; GetDimensions(handle,mipLevel)
  %4022 = extractvalue %dx.types.Dimensions %4021, 0
  %4023 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4022)  ; FirstbitLo(value)
  %4024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.i32 %4024, 1
  %4026 = sub nsw i32 %4025, %4023
  %4027 = sitofp i32 %4026 to float
  %4028 = fsub fast float %3977, %4027
  %4029 = call float @dx.op.binary.f32(i32 35, float %4028, float 0.000000e+00)  ; FMax(a,b)
  %4030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4020, %dx.types.Handle %28, float %4017, float %4018, float %4008, float undef, i32 0, i32 0, i32 undef, float %4029)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = fmul fast float %4031, %4002
  %4033 = fadd fast float %4032, %4005
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.CBufRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.CBufRet.f32 %4034, 2
  %4038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.f32 %4038, 3
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 3
  %4042 = extractvalue %dx.types.CBufRet.f32 %4034, 3
  %4043 = fadd fast float %4039, %3900
  %4044 = fadd fast float %4041, %3901
  %4045 = fadd fast float %4033, %4042
  %4046 = fmul fast float %4043, %4035
  %4047 = call float @dx.op.tertiary.f32(i32 46, float %4044, float %4036, float %4046)  ; FMad(a,b,c)
  %4048 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4037, float %4047)  ; FMad(a,b,c)
  %4049 = fsub fast float %4048, %4042
  %4050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.f32 %4050, 2
  %4052 = fsub fast float %4049, %4051
  %4053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.i32 %4053, 0
  %4055 = call i32 @dx.op.binary.i32(i32 40, i32 %3931, i32 %4054)  ; UMin(a,b)
  %4056 = mul i32 %4055, 36
  %4057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4056, i32 undef)  ; BufferLoad(srv,index,wot)
  %4058 = extractvalue %dx.types.ResRet.i32 %4057, 0
  %4059 = add i32 %4056, 4
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = fmul fast float %4061, %3953
  %4063 = fmul fast float %4061, %3955
  %4064 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4065 = fadd fast float %4062, %4064
  %4066 = fadd fast float %4063, %4064
  %4067 = icmp eq i32 %4058, 0
  br i1 %4067, label %4136, label %4068

; <label>:4068                                    ; preds = %3999
  br label %4069

; <label>:4069                                    ; preds = %4126, %4068
  %4070 = phi float [ %4127, %4126 ], [ 0.000000e+00, %4068 ]
  %4071 = phi float [ %4128, %4126 ], [ 0.000000e+00, %4068 ]
  %4072 = phi float [ %4129, %4126 ], [ 0.000000e+00, %4068 ]
  %4073 = phi float [ %4130, %4126 ], [ 0.000000e+00, %4068 ]
  %4074 = phi float [ %4131, %4126 ], [ 0.000000e+00, %4068 ]
  %4075 = phi float [ %4132, %4126 ], [ 0.000000e+00, %4068 ]
  %4076 = phi i32 [ %4133, %4126 ], [ 0, %4068 ]
  %4077 = shl i32 %4076, 2
  %4078 = add i32 %3944, %4077
  %4079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = add i32 %3948, %4077
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = add i32 %4083, 0
  %4085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4084, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4086 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4085, i32 0)  ; GetDimensions(handle,mipLevel)
  %4087 = extractvalue %dx.types.Dimensions %4086, 0
  %4088 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4087)  ; FirstbitLo(value)
  %4089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.i32 %4089, 1
  %4091 = sub nsw i32 %4090, %4088
  %4092 = sitofp i32 %4091 to float
  %4093 = fsub fast float %3977, %4092
  %4094 = call float @dx.op.binary.f32(i32 35, float %4093, float 0.000000e+00)  ; FMax(a,b)
  %4095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4085, %dx.types.Handle %28, float %4065, float %4066, float %4080, float undef, i32 0, i32 0, i32 undef, float %4094)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = fcmp fast ogt float %4096, 0.000000e+00
  br i1 %4097, label %4098, label %4126

; <label>:4098                                    ; preds = %4069
  %4099 = add i32 %4059, %4077
  %4100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.i32 %4100, 0
  %4102 = and i32 %4101, 32767
  %4103 = mul nuw nsw i32 %4102, 928
  %4104 = add nuw nsw i32 %4103, 48
  %4105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4105, 2
  %4109 = add nuw nsw i32 %4103, 60
  %4110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4110, 2
  %4114 = fmul fast float %4106, %4096
  %4115 = fmul fast float %4107, %4096
  %4116 = fmul fast float %4108, %4096
  %4117 = fadd fast float %4114, %4070
  %4118 = fadd fast float %4115, %4071
  %4119 = fadd fast float %4116, %4072
  %4120 = fmul fast float %4111, %4096
  %4121 = fmul fast float %4112, %4096
  %4122 = fmul fast float %4113, %4096
  %4123 = fadd fast float %4120, %4073
  %4124 = fadd fast float %4121, %4074
  %4125 = fadd fast float %4122, %4075
  br label %4126

; <label>:4126                                    ; preds = %4098, %4069
  %4127 = phi float [ %4117, %4098 ], [ %4070, %4069 ]
  %4128 = phi float [ %4118, %4098 ], [ %4071, %4069 ]
  %4129 = phi float [ %4119, %4098 ], [ %4072, %4069 ]
  %4130 = phi float [ %4123, %4098 ], [ %4073, %4069 ]
  %4131 = phi float [ %4124, %4098 ], [ %4074, %4069 ]
  %4132 = phi float [ %4125, %4098 ], [ %4075, %4069 ]
  %4133 = add nuw i32 %4076, 1
  %4134 = icmp eq i32 %4133, %4058
  br i1 %4134, label %4135, label %4069

; <label>:4135                                    ; preds = %4126
  br label %4136

; <label>:4136                                    ; preds = %4135, %3999
  %4137 = phi float [ 0.000000e+00, %3999 ], [ %4127, %4135 ]
  %4138 = phi float [ 0.000000e+00, %3999 ], [ %4128, %4135 ]
  %4139 = phi float [ 0.000000e+00, %3999 ], [ %4129, %4135 ]
  %4140 = phi float [ 0.000000e+00, %3999 ], [ %4130, %4135 ]
  %4141 = phi float [ 0.000000e+00, %3999 ], [ %4131, %4135 ]
  %4142 = phi float [ 0.000000e+00, %3999 ], [ %4132, %4135 ]
  %4143 = fadd fast float %4140, %4137
  %4144 = fmul fast float %4143, 0x3F847AE140000000
  %4145 = fadd fast float %4141, %4138
  %4146 = fmul fast float %4145, 0x3F847AE140000000
  %4147 = fadd fast float %4142, %4139
  %4148 = fmul fast float %4147, 0x3F847AE140000000
  br label %4149

; <label>:4149                                    ; preds = %4136, %3933, %3878, %3875, %3846, %3808
  %4150 = phi float [ %3860, %3846 ], [ -1.310720e+05, %3808 ], [ %4052, %4136 ], [ -1.310720e+05, %3878 ], [ -1.310720e+05, %3933 ], [ -1.310720e+05, %3875 ]
  %4151 = phi float [ %3870, %3846 ], [ 0.000000e+00, %3808 ], [ %4144, %4136 ], [ 0.000000e+00, %3878 ], [ 0.000000e+00, %3933 ], [ 0.000000e+00, %3875 ]
  %4152 = phi float [ %3872, %3846 ], [ 0.000000e+00, %3808 ], [ %4146, %4136 ], [ 0.000000e+00, %3878 ], [ 0.000000e+00, %3933 ], [ 0.000000e+00, %3875 ]
  %4153 = phi float [ %3874, %3846 ], [ 0.000000e+00, %3808 ], [ %4148, %4136 ], [ 0.000000e+00, %3878 ], [ 0.000000e+00, %3933 ], [ 0.000000e+00, %3875 ]
  %4154 = phi i1 [ true, %3846 ], [ false, %3808 ], [ true, %4136 ], [ false, %3878 ], [ false, %3933 ], [ false, %3875 ]
  %4155 = and i32 %194, 3
  %4156 = icmp eq i32 %4155, 1
  %4157 = select i1 %4156, float 1.000000e+00, float 0.000000e+00
  %4158 = fsub fast float %4150, %167
  %4159 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4160 = select i1 %4154, float %4159, float 1.000000e+00
  %4161 = fmul fast float %4160, %4157
  %4162 = icmp eq i32 %4155, 3
  %4163 = select i1 %4162, float 1.000000e+00, float %4161
  %4164 = call float @dx.op.binary.f32(i32 35, float %3750, float %4163)  ; FMax(a,b)
  %4165 = fcmp fast olt float %4163, 1.000000e+00
  %4166 = fcmp uge float %49, 0.000000e+00
  %4167 = and i1 %4166, %4165
  br i1 %4167, label %4168, label %4178

; <label>:4168                                    ; preds = %4149
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = fadd fast float %4170, %4164
  %4174 = fcmp ule float %48, 0.000000e+00
  %4175 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4176 = select i1 %4174, float %4175, float 1.000000e+00
  %4177 = fmul fast float %4176, %4172
  br label %4178

; <label>:4178                                    ; preds = %4168, %4149
  %4179 = phi float [ %4173, %4168 ], [ %4164, %4149 ]
  %4180 = phi float [ %4171, %4168 ], [ 0.000000e+00, %4149 ]
  %4181 = phi float [ %4177, %4168 ], [ 0.000000e+00, %4149 ]
  %4182 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4183 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4184 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4185 = fcmp fast une float %4183, 0.000000e+00
  %4186 = fcmp fast une float %4184, 0.000000e+00
  %4187 = or i1 %4185, %4186
  br i1 %4187, label %4188, label %4747

; <label>:4188                                    ; preds = %4178
  br i1 %4185, label %4189, label %4462

; <label>:4189                                    ; preds = %4188
  %4190 = call float @dx.op.unary.f32(i32 23, float %3747)  ; Log(value)
  %4191 = fmul fast float %4190, 4.000000e+00
  %4192 = call float @dx.op.unary.f32(i32 21, float %4191)  ; Exp(value)
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = fmul fast float %4194, %36
  %4196 = fmul fast float %4194, %37
  %4197 = fmul fast float %4194, %38
  %4198 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4199 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4200 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4201 = call float @dx.op.unary.f32(i32 23, float %4198)  ; Log(value)
  %4202 = call float @dx.op.unary.f32(i32 23, float %4199)  ; Log(value)
  %4203 = call float @dx.op.unary.f32(i32 23, float %4200)  ; Log(value)
  %4204 = fmul fast float %4201, 4.000000e+00
  %4205 = fmul fast float %4202, 4.000000e+00
  %4206 = fmul fast float %4203, 4.000000e+00
  %4207 = call float @dx.op.unary.f32(i32 21, float %4204)  ; Exp(value)
  %4208 = call float @dx.op.unary.f32(i32 21, float %4205)  ; Exp(value)
  %4209 = call float @dx.op.unary.f32(i32 21, float %4206)  ; Exp(value)
  %4210 = fadd fast float %4208, %4207
  %4211 = fadd fast float %4210, %4209
  %4212 = fdiv fast float 1.000000e+00, %4211
  %4213 = fmul fast float %4212, %4207
  %4214 = fcmp fast ogt float %45, 0.000000e+00
  %4215 = fcmp fast ogt float %46, 0.000000e+00
  %4216 = fcmp fast ogt float %47, 0.000000e+00
  %4217 = fcmp fast olt float %45, 0.000000e+00
  %4218 = fcmp fast olt float %46, 0.000000e+00
  %4219 = fcmp fast olt float %47, 0.000000e+00
  %4220 = zext i1 %4214 to i32
  %4221 = zext i1 %4215 to i32
  %4222 = zext i1 %4216 to i32
  %4223 = zext i1 %4217 to i32
  %4224 = zext i1 %4218 to i32
  %4225 = zext i1 %4219 to i32
  %4226 = sub nsw i32 %4220, %4223
  %4227 = sub nsw i32 %4221, %4224
  %4228 = sub nsw i32 %4222, %4225
  %4229 = call float @dx.op.unary.f32(i32 83, float %4195)  ; DerivCoarseX(value)
  %4230 = call float @dx.op.unary.f32(i32 83, float %4196)  ; DerivCoarseX(value)
  %4231 = call float @dx.op.unary.f32(i32 83, float %4197)  ; DerivCoarseX(value)
  %4232 = call float @dx.op.unary.f32(i32 84, float %4195)  ; DerivCoarseY(value)
  %4233 = call float @dx.op.unary.f32(i32 84, float %4196)  ; DerivCoarseY(value)
  %4234 = call float @dx.op.unary.f32(i32 84, float %4197)  ; DerivCoarseY(value)
  %4235 = fcmp fast ole float %226, %4213
  %4236 = fmul fast float %4212, %4210
  %4237 = fcmp fast ole float %226, %4236
  %4238 = select i1 %4237, float %4197, float %4195
  %4239 = select i1 %4237, float %4195, float %4196
  %4240 = select i1 %4235, float %4196, float %4238
  %4241 = select i1 %4235, float %4197, float %4239
  %4242 = select i1 %4237, float %4231, float %4229
  %4243 = select i1 %4237, float %4229, float %4230
  %4244 = select i1 %4235, float %4230, float %4242
  %4245 = select i1 %4235, float %4231, float %4243
  %4246 = select i1 %4237, float %4234, float %4232
  %4247 = select i1 %4237, float %4232, float %4233
  %4248 = select i1 %4235, float %4233, float %4246
  %4249 = select i1 %4235, float %4234, float %4247
  %4250 = call float @dx.op.unary.f32(i32 27, float %4240)  ; Round_ni(value)
  %4251 = call float @dx.op.unary.f32(i32 27, float %4241)  ; Round_ni(value)
  %4252 = fptosi float %4250 to i32
  %4253 = fptosi float %4251 to i32
  %4254 = xor i32 %4253, %4252
  %4255 = sitofp i32 %4254 to float
  %4256 = fptosi float %4255 to i32
  %4257 = sitofp i32 %4256 to float
  %4258 = fmul fast float %4257, 0x3FE3C6EF40000000
  %4259 = frem fast float %4250, 2.560000e+02
  %4260 = frem fast float %4251, 2.560000e+02
  %4261 = fptoui float %4259 to i32
  %4262 = fptoui float %4260 to i32
  %4263 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4261, i32 %4262, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = extractvalue %dx.types.ResRet.f32 %4263, 1
  %4266 = extractvalue %dx.types.ResRet.f32 %4263, 2
  %4267 = fadd fast float %4264, %4258
  %4268 = fadd fast float %4265, %4258
  %4269 = fadd fast float %4266, %4258
  %4270 = call float @dx.op.unary.f32(i32 22, float %4267)  ; Frc(value)
  %4271 = call float @dx.op.unary.f32(i32 22, float %4268)  ; Frc(value)
  %4272 = call float @dx.op.unary.f32(i32 22, float %4269)  ; Frc(value)
  %4273 = fmul fast float %4272, 0x401921FB60000000
  %4274 = call float @dx.op.unary.f32(i32 13, float %4273)  ; Sin(value)
  %4275 = call float @dx.op.unary.f32(i32 12, float %4273)  ; Cos(value)
  %4276 = fsub fast float -0.000000e+00, %4275
  %4277 = fmul fast float %4275, %4240
  %4278 = call float @dx.op.tertiary.f32(i32 46, float %4274, float %4241, float %4277)  ; FMad(a,b,c)
  %4279 = fmul fast float %4274, %4240
  %4280 = call float @dx.op.tertiary.f32(i32 46, float %4276, float %4241, float %4279)  ; FMad(a,b,c)
  %4281 = fadd fast float %4278, %4270
  %4282 = fadd fast float %4280, %4271
  %4283 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4284 = bitcast float %4283 to i32
  %4285 = icmp eq i32 %4284, 0
  br i1 %4285, label %4324, label %4286

; <label>:4286                                    ; preds = %4189
  %4287 = add i32 %4284, 0
  %4288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4288, %dx.types.Handle %75, float %4281, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4244, float %4245, float undef, float %4248, float %4249, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4294 = fsub fast float 1.000000e+00, %4183
  %4295 = call float @dx.op.binary.f32(i32 35, float %4294, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4296 = bitcast float %4183 to i32
  %4297 = sitofp i32 %4296 to float
  %4298 = fadd fast float %4297, 0xC1CFBF8940000000
  %4299 = fmul fast float %4293, %4298
  %4300 = fadd fast float %4299, 0x41CFBF8940000000
  %4301 = fptosi float %4300 to i32
  %4302 = bitcast i32 %4301 to float
  %4303 = bitcast float %4295 to i32
  %4304 = sitofp i32 %4303 to float
  %4305 = fadd fast float %4304, 0xC1CFBF8940000000
  %4306 = fmul fast float %4305, %4293
  %4307 = fadd fast float %4306, 0x41CFBF8940000000
  %4308 = fptosi float %4307 to i32
  %4309 = bitcast i32 %4308 to float
  %4310 = fmul fast float %4302, %4292
  %4311 = fmul fast float %4309, %4292
  %4312 = fsub fast float %4295, %4310
  %4313 = fadd fast float %4311, %4295
  %4314 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4315 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4316 = fsub fast float %4290, %4314
  %4317 = fsub fast float %4315, %4314
  %4318 = bitcast float %4317 to i32
  %4319 = sub nsw i32 2129859010, %4318
  %4320 = bitcast i32 %4319 to float
  %4321 = fmul fast float %4320, %4316
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = fcmp fast olt float %4322, 0x3F70101020000000
  br i1 %4323, label %4462, label %4324

; <label>:4324                                    ; preds = %4286, %4189
  %4325 = phi float [ %4322, %4286 ], [ %4183, %4189 ]
  %4326 = fmul fast float %4325, %4192
  %4327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.i32 %4327, 1
  %4329 = extractvalue %dx.types.CBufRet.i32 %4327, 0
  %4330 = add i32 %4329, 0
  %4331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4332 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4331, %dx.types.Handle %74, float %4281, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4244, float %4245, float undef, float %4248, float %4249, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4333 = extractvalue %dx.types.ResRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.ResRet.f32 %4332, 1
  %4335 = extractvalue %dx.types.ResRet.f32 %4332, 2
  %4336 = extractvalue %dx.types.ResRet.f32 %4332, 3
  %4337 = and i32 %4328, 255
  %4338 = uitofp i32 %4337 to float
  %4339 = lshr i32 %4328, 8
  %4340 = and i32 %4339, 255
  %4341 = uitofp i32 %4340 to float
  %4342 = fmul fast float %4336, %4338
  %4343 = fadd fast float %4342, %4341
  %4344 = fmul fast float %4343, 0x3F70101000000000
  %4345 = fadd fast float %4344, 0xBFB99999A0000000
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4346, 0x3FF1C71C80000000
  %4348 = call float @dx.op.binary.f32(i32 36, float %4344, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4349 = fsub fast float 1.000000e+00, %4347
  %4350 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4351 = fmul fast float %4350, %4333
  %4352 = fmul fast float %4350, %4334
  %4353 = fmul fast float %4350, %4335
  %4354 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4355 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4356 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4357 = fmul fast float %4347, %4333
  %4358 = fmul fast float %4347, %4334
  %4359 = fmul fast float %4347, %4335
  %4360 = fadd fast float %4357, %4348
  %4361 = fadd fast float %4358, %4348
  %4362 = fadd fast float %4359, %4348
  %4363 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4364 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4365 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.i32 %4366, 3
  %4368 = extractvalue %dx.types.CBufRet.i32 %4366, 2
  %4369 = add i32 %4368, 0
  %4370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4370, %dx.types.Handle %74, float %4281, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4244, float %4245, float undef, float %4248, float %4249, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = extractvalue %dx.types.ResRet.f32 %4371, 3
  %4376 = and i32 %4367, 255
  %4377 = uitofp i32 %4376 to float
  %4378 = lshr i32 %4367, 8
  %4379 = and i32 %4378, 255
  %4380 = uitofp i32 %4379 to float
  %4381 = lshr i32 %4367, 16
  %4382 = and i32 %4381, 255
  %4383 = uitofp i32 %4382 to float
  %4384 = fmul fast float %4383, 0x3F70101000000000
  %4385 = fmul fast float %4372, %4377
  %4386 = fadd fast float %4385, %4380
  %4387 = fmul fast float %4386, 0x3F70101000000000
  %4388 = fadd fast float %4373, -5.000000e-01
  %4389 = fadd fast float %4375, -5.000000e-01
  %4390 = fmul fast float %4388, %4384
  %4391 = fmul fast float %4389, %4384
  %4392 = fadd fast float %4390, 5.000000e-01
  %4393 = fadd fast float %4391, 5.000000e-01
  %4394 = fmul fast float %4392, 2.000000e+00
  %4395 = fadd fast float %4394, -1.000000e+00
  %4396 = fmul fast float %4393, 2.000000e+00
  %4397 = fadd fast float %4396, -1.000000e+00
  %4398 = fadd fast float %4395, %4397
  %4399 = fmul fast float %4398, 5.000000e-01
  %4400 = fsub fast float %4395, %4397
  %4401 = fmul fast float %4400, 5.000000e-01
  %4402 = call float @dx.op.unary.f32(i32 6, float %4399)  ; FAbs(value)
  %4403 = fsub fast float 1.000000e+00, %4402
  %4404 = call float @dx.op.unary.f32(i32 6, float %4401)  ; FAbs(value)
  %4405 = fsub fast float %4403, %4404
  %4406 = call float @dx.op.dot3.f32(i32 55, float %4399, float %4401, float %4405, float %4399, float %4401, float %4405)  ; Dot3(ax,ay,az,bx,by,bz)
  %4407 = call float @dx.op.unary.f32(i32 25, float %4406)  ; Rsqrt(value)
  %4408 = fmul fast float %4399, %4407
  %4409 = fmul fast float %4401, %4407
  %4410 = select i1 %4237, i32 %4227, i32 %4228
  %4411 = select i1 %4235, i32 %4226, i32 %4410
  %4412 = sitofp i32 %4411 to float
  %4413 = fmul fast float %4405, %4412
  %4414 = fmul fast float %4413, %4407
  %4415 = select i1 %4237, float %4414, float %4409
  %4416 = select i1 %4237, float %4409, float %4414
  %4417 = select i1 %4235, float %4414, float %4408
  %4418 = select i1 %4235, float %4409, float %4415
  %4419 = select i1 %4235, float %4408, float %4416
  %4420 = fsub fast float %4354, %3787
  %4421 = fsub fast float %4355, %3788
  %4422 = fsub fast float %4356, %3789
  %4423 = fmul fast float %4420, %4326
  %4424 = fmul fast float %4421, %4326
  %4425 = fmul fast float %4422, %4326
  %4426 = fadd fast float %4423, %3787
  %4427 = fadd fast float %4424, %3788
  %4428 = fadd fast float %4425, %3789
  %4429 = fsub fast float %4363, %3772
  %4430 = fsub fast float %4364, %3773
  %4431 = fsub fast float %4365, %3774
  %4432 = fmul fast float %4429, %4326
  %4433 = fmul fast float %4430, %4326
  %4434 = fmul fast float %4431, %4326
  %4435 = fadd fast float %4432, %3772
  %4436 = fadd fast float %4433, %3773
  %4437 = fadd fast float %4434, %3774
  %4438 = fadd fast float %4417, %3738
  %4439 = fadd fast float %4418, %3739
  %4440 = fadd fast float %4419, %3740
  %4441 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float %4438, float %4439, float %4440)  ; Dot3(ax,ay,az,bx,by,bz)
  %4442 = call float @dx.op.unary.f32(i32 25, float %4441)  ; Rsqrt(value)
  %4443 = fmul fast float %4438, %4442
  %4444 = fmul fast float %4439, %4442
  %4445 = fmul fast float %4440, %4442
  %4446 = fsub fast float %4443, %3738
  %4447 = fsub fast float %4444, %3739
  %4448 = fsub fast float %4445, %3740
  %4449 = fmul fast float %4446, %4326
  %4450 = fmul fast float %4447, %4326
  %4451 = fmul fast float %4448, %4326
  %4452 = fadd fast float %4449, %3738
  %4453 = fadd fast float %4450, %3739
  %4454 = fadd fast float %4451, %3740
  %4455 = call float @dx.op.binary.f32(i32 36, float %3747, float %4374)  ; FMin(a,b)
  %4456 = fsub fast float %4455, %3747
  %4457 = fmul fast float %4456, %4326
  %4458 = fadd fast float %4457, %3747
  %4459 = fsub fast float %4387, %3775
  %4460 = fmul fast float %4459, %4326
  %4461 = fadd fast float %4460, %3775
  br label %4462

; <label>:4462                                    ; preds = %4324, %4286, %4188
  %4463 = phi float [ %4452, %4324 ], [ %3738, %4286 ], [ %3738, %4188 ]
  %4464 = phi float [ %4453, %4324 ], [ %3739, %4286 ], [ %3739, %4188 ]
  %4465 = phi float [ %4454, %4324 ], [ %3740, %4286 ], [ %3740, %4188 ]
  %4466 = phi float [ %4435, %4324 ], [ %3772, %4286 ], [ %3772, %4188 ]
  %4467 = phi float [ %4436, %4324 ], [ %3773, %4286 ], [ %3773, %4188 ]
  %4468 = phi float [ %4437, %4324 ], [ %3774, %4286 ], [ %3774, %4188 ]
  %4469 = phi float [ %4426, %4324 ], [ %3787, %4286 ], [ %3787, %4188 ]
  %4470 = phi float [ %4427, %4324 ], [ %3788, %4286 ], [ %3788, %4188 ]
  %4471 = phi float [ %4428, %4324 ], [ %3789, %4286 ], [ %3789, %4188 ]
  %4472 = phi float [ %4461, %4324 ], [ %3775, %4286 ], [ %3775, %4188 ]
  %4473 = phi float [ %4458, %4324 ], [ %3747, %4286 ], [ %3747, %4188 ]
  br i1 %4186, label %4474, label %4747

; <label>:4474                                    ; preds = %4462
  %4475 = call float @dx.op.unary.f32(i32 23, float %4473)  ; Log(value)
  %4476 = fmul fast float %4475, 4.000000e+00
  %4477 = call float @dx.op.unary.f32(i32 21, float %4476)  ; Exp(value)
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 0
  %4480 = fmul fast float %4479, %36
  %4481 = fmul fast float %4479, %37
  %4482 = fmul fast float %4479, %38
  %4483 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4484 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4485 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4486 = call float @dx.op.unary.f32(i32 23, float %4483)  ; Log(value)
  %4487 = call float @dx.op.unary.f32(i32 23, float %4484)  ; Log(value)
  %4488 = call float @dx.op.unary.f32(i32 23, float %4485)  ; Log(value)
  %4489 = fmul fast float %4486, 4.000000e+00
  %4490 = fmul fast float %4487, 4.000000e+00
  %4491 = fmul fast float %4488, 4.000000e+00
  %4492 = call float @dx.op.unary.f32(i32 21, float %4489)  ; Exp(value)
  %4493 = call float @dx.op.unary.f32(i32 21, float %4490)  ; Exp(value)
  %4494 = call float @dx.op.unary.f32(i32 21, float %4491)  ; Exp(value)
  %4495 = fadd fast float %4493, %4492
  %4496 = fadd fast float %4495, %4494
  %4497 = fdiv fast float 1.000000e+00, %4496
  %4498 = fmul fast float %4497, %4492
  %4499 = fcmp fast ogt float %45, 0.000000e+00
  %4500 = fcmp fast ogt float %46, 0.000000e+00
  %4501 = fcmp fast ogt float %47, 0.000000e+00
  %4502 = fcmp fast olt float %45, 0.000000e+00
  %4503 = fcmp fast olt float %46, 0.000000e+00
  %4504 = fcmp fast olt float %47, 0.000000e+00
  %4505 = zext i1 %4499 to i32
  %4506 = zext i1 %4500 to i32
  %4507 = zext i1 %4501 to i32
  %4508 = zext i1 %4502 to i32
  %4509 = zext i1 %4503 to i32
  %4510 = zext i1 %4504 to i32
  %4511 = sub nsw i32 %4505, %4508
  %4512 = sub nsw i32 %4506, %4509
  %4513 = sub nsw i32 %4507, %4510
  %4514 = call float @dx.op.unary.f32(i32 83, float %4480)  ; DerivCoarseX(value)
  %4515 = call float @dx.op.unary.f32(i32 83, float %4481)  ; DerivCoarseX(value)
  %4516 = call float @dx.op.unary.f32(i32 83, float %4482)  ; DerivCoarseX(value)
  %4517 = call float @dx.op.unary.f32(i32 84, float %4480)  ; DerivCoarseY(value)
  %4518 = call float @dx.op.unary.f32(i32 84, float %4481)  ; DerivCoarseY(value)
  %4519 = call float @dx.op.unary.f32(i32 84, float %4482)  ; DerivCoarseY(value)
  %4520 = fcmp fast ole float %226, %4498
  %4521 = fmul fast float %4497, %4495
  %4522 = fcmp fast ole float %226, %4521
  %4523 = select i1 %4522, float %4482, float %4480
  %4524 = select i1 %4522, float %4480, float %4481
  %4525 = select i1 %4520, float %4481, float %4523
  %4526 = select i1 %4520, float %4482, float %4524
  %4527 = select i1 %4522, float %4516, float %4514
  %4528 = select i1 %4522, float %4514, float %4515
  %4529 = select i1 %4520, float %4515, float %4527
  %4530 = select i1 %4520, float %4516, float %4528
  %4531 = select i1 %4522, float %4519, float %4517
  %4532 = select i1 %4522, float %4517, float %4518
  %4533 = select i1 %4520, float %4518, float %4531
  %4534 = select i1 %4520, float %4519, float %4532
  %4535 = call float @dx.op.unary.f32(i32 27, float %4525)  ; Round_ni(value)
  %4536 = call float @dx.op.unary.f32(i32 27, float %4526)  ; Round_ni(value)
  %4537 = fptosi float %4535 to i32
  %4538 = fptosi float %4536 to i32
  %4539 = xor i32 %4538, %4537
  %4540 = sitofp i32 %4539 to float
  %4541 = fptosi float %4540 to i32
  %4542 = sitofp i32 %4541 to float
  %4543 = fmul fast float %4542, 0x3FE3C6EF40000000
  %4544 = frem fast float %4535, 2.560000e+02
  %4545 = frem fast float %4536, 2.560000e+02
  %4546 = fptoui float %4544 to i32
  %4547 = fptoui float %4545 to i32
  %4548 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4546, i32 %4547, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = extractvalue %dx.types.ResRet.f32 %4548, 1
  %4551 = extractvalue %dx.types.ResRet.f32 %4548, 2
  %4552 = fadd fast float %4549, %4543
  %4553 = fadd fast float %4550, %4543
  %4554 = fadd fast float %4551, %4543
  %4555 = call float @dx.op.unary.f32(i32 22, float %4552)  ; Frc(value)
  %4556 = call float @dx.op.unary.f32(i32 22, float %4553)  ; Frc(value)
  %4557 = call float @dx.op.unary.f32(i32 22, float %4554)  ; Frc(value)
  %4558 = fmul fast float %4557, 0x401921FB60000000
  %4559 = call float @dx.op.unary.f32(i32 13, float %4558)  ; Sin(value)
  %4560 = call float @dx.op.unary.f32(i32 12, float %4558)  ; Cos(value)
  %4561 = fsub fast float -0.000000e+00, %4560
  %4562 = fmul fast float %4560, %4525
  %4563 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4526, float %4562)  ; FMad(a,b,c)
  %4564 = fmul fast float %4559, %4525
  %4565 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4526, float %4564)  ; FMad(a,b,c)
  %4566 = fadd fast float %4563, %4555
  %4567 = fadd fast float %4565, %4556
  %4568 = extractvalue %dx.types.CBufRet.f32 %4478, 3
  %4569 = bitcast float %4568 to i32
  %4570 = icmp eq i32 %4569, 0
  br i1 %4570, label %4609, label %4571

; <label>:4571                                    ; preds = %4474
  %4572 = add i32 %4569, 0
  %4573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4574 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4573, %dx.types.Handle %75, float %4566, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float %4529, float %4530, float undef, float %4533, float %4534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 1
  %4578 = extractvalue %dx.types.CBufRet.f32 %4576, 2
  %4579 = fsub fast float 1.000000e+00, %4184
  %4580 = call float @dx.op.binary.f32(i32 35, float %4579, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4581 = bitcast float %4184 to i32
  %4582 = sitofp i32 %4581 to float
  %4583 = fadd fast float %4582, 0xC1CFBF8940000000
  %4584 = fmul fast float %4578, %4583
  %4585 = fadd fast float %4584, 0x41CFBF8940000000
  %4586 = fptosi float %4585 to i32
  %4587 = bitcast i32 %4586 to float
  %4588 = bitcast float %4580 to i32
  %4589 = sitofp i32 %4588 to float
  %4590 = fadd fast float %4589, 0xC1CFBF8940000000
  %4591 = fmul fast float %4590, %4578
  %4592 = fadd fast float %4591, 0x41CFBF8940000000
  %4593 = fptosi float %4592 to i32
  %4594 = bitcast i32 %4593 to float
  %4595 = fmul fast float %4587, %4577
  %4596 = fmul fast float %4594, %4577
  %4597 = fsub fast float %4580, %4595
  %4598 = fadd fast float %4596, %4580
  %4599 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4600 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4601 = fsub fast float %4575, %4599
  %4602 = fsub fast float %4600, %4599
  %4603 = bitcast float %4602 to i32
  %4604 = sub nsw i32 2129859010, %4603
  %4605 = bitcast i32 %4604 to float
  %4606 = fmul fast float %4605, %4601
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = fcmp fast olt float %4607, 0x3F70101020000000
  br i1 %4608, label %4747, label %4609

; <label>:4609                                    ; preds = %4571, %4474
  %4610 = phi float [ %4607, %4571 ], [ %4184, %4474 ]
  %4611 = fmul fast float %4610, %4477
  %4612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.i32 %4612, 1
  %4614 = extractvalue %dx.types.CBufRet.i32 %4612, 0
  %4615 = add i32 %4614, 0
  %4616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4617 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4616, %dx.types.Handle %74, float %4566, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float %4529, float %4530, float undef, float %4533, float %4534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = extractvalue %dx.types.ResRet.f32 %4617, 3
  %4622 = and i32 %4613, 255
  %4623 = uitofp i32 %4622 to float
  %4624 = lshr i32 %4613, 8
  %4625 = and i32 %4624, 255
  %4626 = uitofp i32 %4625 to float
  %4627 = fmul fast float %4621, %4623
  %4628 = fadd fast float %4627, %4626
  %4629 = fmul fast float %4628, 0x3F70101000000000
  %4630 = fadd fast float %4629, 0xBFB99999A0000000
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = fmul fast float %4631, 0x3FF1C71C80000000
  %4633 = call float @dx.op.binary.f32(i32 36, float %4629, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4634 = fsub fast float 1.000000e+00, %4632
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fmul fast float %4635, %4618
  %4637 = fmul fast float %4635, %4619
  %4638 = fmul fast float %4635, %4620
  %4639 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4640 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4641 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4642 = fmul fast float %4632, %4618
  %4643 = fmul fast float %4632, %4619
  %4644 = fmul fast float %4632, %4620
  %4645 = fadd fast float %4642, %4633
  %4646 = fadd fast float %4643, %4633
  %4647 = fadd fast float %4644, %4633
  %4648 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.i32 %4651, 3
  %4653 = extractvalue %dx.types.CBufRet.i32 %4651, 2
  %4654 = add i32 %4653, 0
  %4655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4656 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4655, %dx.types.Handle %74, float %4566, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float %4529, float %4530, float undef, float %4533, float %4534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.ResRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4656, 2
  %4660 = extractvalue %dx.types.ResRet.f32 %4656, 3
  %4661 = and i32 %4652, 255
  %4662 = uitofp i32 %4661 to float
  %4663 = lshr i32 %4652, 8
  %4664 = and i32 %4663, 255
  %4665 = uitofp i32 %4664 to float
  %4666 = lshr i32 %4652, 16
  %4667 = and i32 %4666, 255
  %4668 = uitofp i32 %4667 to float
  %4669 = fmul fast float %4668, 0x3F70101000000000
  %4670 = fmul fast float %4657, %4662
  %4671 = fadd fast float %4670, %4665
  %4672 = fmul fast float %4671, 0x3F70101000000000
  %4673 = fadd fast float %4658, -5.000000e-01
  %4674 = fadd fast float %4660, -5.000000e-01
  %4675 = fmul fast float %4673, %4669
  %4676 = fmul fast float %4674, %4669
  %4677 = fadd fast float %4675, 5.000000e-01
  %4678 = fadd fast float %4676, 5.000000e-01
  %4679 = fmul fast float %4677, 2.000000e+00
  %4680 = fadd fast float %4679, -1.000000e+00
  %4681 = fmul fast float %4678, 2.000000e+00
  %4682 = fadd fast float %4681, -1.000000e+00
  %4683 = fadd fast float %4680, %4682
  %4684 = fmul fast float %4683, 5.000000e-01
  %4685 = fsub fast float %4680, %4682
  %4686 = fmul fast float %4685, 5.000000e-01
  %4687 = call float @dx.op.unary.f32(i32 6, float %4684)  ; FAbs(value)
  %4688 = fsub fast float 1.000000e+00, %4687
  %4689 = call float @dx.op.unary.f32(i32 6, float %4686)  ; FAbs(value)
  %4690 = fsub fast float %4688, %4689
  %4691 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4686, float %4690, float %4684, float %4686, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %4692 = call float @dx.op.unary.f32(i32 25, float %4691)  ; Rsqrt(value)
  %4693 = fmul fast float %4684, %4692
  %4694 = fmul fast float %4686, %4692
  %4695 = select i1 %4522, i32 %4512, i32 %4513
  %4696 = select i1 %4520, i32 %4511, i32 %4695
  %4697 = sitofp i32 %4696 to float
  %4698 = fmul fast float %4690, %4697
  %4699 = fmul fast float %4698, %4692
  %4700 = select i1 %4522, float %4699, float %4694
  %4701 = select i1 %4522, float %4694, float %4699
  %4702 = select i1 %4520, float %4699, float %4693
  %4703 = select i1 %4520, float %4694, float %4700
  %4704 = select i1 %4520, float %4693, float %4701
  %4705 = fsub fast float %4639, %4469
  %4706 = fsub fast float %4640, %4470
  %4707 = fsub fast float %4641, %4471
  %4708 = fmul fast float %4705, %4611
  %4709 = fmul fast float %4706, %4611
  %4710 = fmul fast float %4707, %4611
  %4711 = fadd fast float %4708, %4469
  %4712 = fadd fast float %4709, %4470
  %4713 = fadd fast float %4710, %4471
  %4714 = fsub fast float %4648, %4466
  %4715 = fsub fast float %4649, %4467
  %4716 = fsub fast float %4650, %4468
  %4717 = fmul fast float %4714, %4611
  %4718 = fmul fast float %4715, %4611
  %4719 = fmul fast float %4716, %4611
  %4720 = fadd fast float %4717, %4466
  %4721 = fadd fast float %4718, %4467
  %4722 = fadd fast float %4719, %4468
  %4723 = fadd fast float %4702, %4463
  %4724 = fadd fast float %4703, %4464
  %4725 = fadd fast float %4704, %4465
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4724, float %4725, float %4723, float %4724, float %4725)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = call float @dx.op.unary.f32(i32 25, float %4726)  ; Rsqrt(value)
  %4728 = fmul fast float %4723, %4727
  %4729 = fmul fast float %4724, %4727
  %4730 = fmul fast float %4725, %4727
  %4731 = fsub fast float %4728, %4463
  %4732 = fsub fast float %4729, %4464
  %4733 = fsub fast float %4730, %4465
  %4734 = fmul fast float %4731, %4611
  %4735 = fmul fast float %4732, %4611
  %4736 = fmul fast float %4733, %4611
  %4737 = fadd fast float %4734, %4463
  %4738 = fadd fast float %4735, %4464
  %4739 = fadd fast float %4736, %4465
  %4740 = call float @dx.op.binary.f32(i32 36, float %4473, float %4659)  ; FMin(a,b)
  %4741 = fsub fast float %4740, %4473
  %4742 = fmul fast float %4741, %4611
  %4743 = fadd fast float %4742, %4473
  %4744 = fsub fast float %4672, %4472
  %4745 = fmul fast float %4744, %4611
  %4746 = fadd fast float %4745, %4472
  br label %4747

; <label>:4747                                    ; preds = %4609, %4571, %4462, %4178
  %4748 = phi float [ %4737, %4609 ], [ %4463, %4571 ], [ %4463, %4462 ], [ %3738, %4178 ]
  %4749 = phi float [ %4738, %4609 ], [ %4464, %4571 ], [ %4464, %4462 ], [ %3739, %4178 ]
  %4750 = phi float [ %4739, %4609 ], [ %4465, %4571 ], [ %4465, %4462 ], [ %3740, %4178 ]
  %4751 = phi float [ %4720, %4609 ], [ %4466, %4571 ], [ %4466, %4462 ], [ %3772, %4178 ]
  %4752 = phi float [ %4721, %4609 ], [ %4467, %4571 ], [ %4467, %4462 ], [ %3773, %4178 ]
  %4753 = phi float [ %4722, %4609 ], [ %4468, %4571 ], [ %4468, %4462 ], [ %3774, %4178 ]
  %4754 = phi float [ %4711, %4609 ], [ %4469, %4571 ], [ %4469, %4462 ], [ %3787, %4178 ]
  %4755 = phi float [ %4712, %4609 ], [ %4470, %4571 ], [ %4470, %4462 ], [ %3788, %4178 ]
  %4756 = phi float [ %4713, %4609 ], [ %4471, %4571 ], [ %4471, %4462 ], [ %3789, %4178 ]
  %4757 = phi float [ %4746, %4609 ], [ %4472, %4571 ], [ %4472, %4462 ], [ %3775, %4178 ]
  %4758 = phi float [ %4743, %4609 ], [ %4473, %4571 ], [ %4473, %4462 ], [ %3747, %4178 ]
  %4759 = fcmp fast une float %4182, 0.000000e+00
  %4760 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4761 = call float @dx.op.unary.f32(i32 25, float %4760)  ; Rsqrt(value)
  br i1 %4759, label %4769, label %4762

; <label>:4762                                    ; preds = %4747
  %4763 = fmul fast float %4761, %165
  %4764 = fmul fast float %4761, %166
  %4765 = fmul fast float %4761, %167
  %4766 = fsub fast float -0.000000e+00, %4763
  %4767 = fsub fast float -0.000000e+00, %4764
  %4768 = fsub fast float -0.000000e+00, %4765
  br label %4936

; <label>:4769                                    ; preds = %4747
  %4770 = fmul fast float %165, %4761
  %4771 = fsub fast float -0.000000e+00, %4770
  %4772 = fmul fast float %166, %4761
  %4773 = fsub fast float -0.000000e+00, %4772
  %4774 = fmul fast float %167, %4761
  %4775 = fsub fast float -0.000000e+00, %4774
  %4776 = call float @dx.op.dot3.f32(i32 55, float %4771, float %4773, float %4775, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4777 = fmul fast float %4182, 2.500000e+00
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = fmul fast float %4182, 0x4013FFFFE0000000
  %4780 = fadd fast float %4779, 0xBFFFFFFFE0000000
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = fmul fast float %4182, 0x4004000020000000
  %4783 = fadd fast float %4782, 0xBFF8000040000000
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = fmul fast float %3754, 1.000000e+01
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = fmul fast float %4786, 2.000000e+00
  %4788 = fsub fast float 3.000000e+00, %4787
  %4789 = fmul fast float %4786, %4786
  %4790 = fmul fast float %4789, %4788
  %4791 = fsub fast float 1.000000e+00, %4790
  %4792 = fsub fast float 0x3FE3333340000000, %4757
  %4793 = fmul fast float %4792, 0x400AAAAAA0000000
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = fmul fast float %4791, %4794
  %4796 = fmul fast float %4754, 0x3FEA2B8620000000
  %4797 = fmul fast float %4755, 0x3FEA2B8620000000
  %4798 = fmul fast float %4756, 0x3FEA2B8620000000
  %4799 = fadd fast float %4796, 0x3FC81DFBA0000000
  %4800 = fmul fast float %4799, %4754
  %4801 = fadd fast float %4800, 0x3F910E6020000000
  %4802 = fadd fast float %4797, 0x3FC81DFBA0000000
  %4803 = fmul fast float %4802, %4755
  %4804 = fadd fast float %4803, 0x3F910E6020000000
  %4805 = fadd fast float %4798, 0x3FC81DFBA0000000
  %4806 = fmul fast float %4805, %4756
  %4807 = fadd fast float %4806, 0x3F910E6020000000
  %4808 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4811 = fsub fast float %4808, %4754
  %4812 = fsub fast float %4809, %4755
  %4813 = fsub fast float %4810, %4756
  %4814 = fmul fast float %4811, %4778
  %4815 = fmul fast float %4814, %4795
  %4816 = fmul fast float %4812, %4778
  %4817 = fmul fast float %4816, %4795
  %4818 = fmul fast float %4813, %4778
  %4819 = fmul fast float %4818, %4795
  %4820 = fadd fast float %4815, %4754
  %4821 = fadd fast float %4817, %4755
  %4822 = fadd fast float %4819, %4756
  %4823 = fmul fast float %4758, %4758
  %4824 = fmul fast float %4823, %4823
  %4825 = fadd fast float %4781, 1.000000e+00
  %4826 = fsub fast float %4825, %4795
  %4827 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4828 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = fsub fast float 1.000000e+00, %4824
  %4831 = call float @dx.op.binary.f32(i32 36, float %4827, float %4830)  ; FMin(a,b)
  %4832 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4833 = call float @dx.op.binary.f32(i32 35, float %4831, float %4832)  ; FMax(a,b)
  %4834 = fadd fast float %4829, 0xBFE4CCCCC0000000
  %4835 = fmul fast float %4834, 0x4006DB6DA0000000
  %4836 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4837 = fmul fast float %4836, 2.000000e+00
  %4838 = fsub fast float 3.000000e+00, %4837
  %4839 = bitcast float %4751 to i32
  %4840 = ashr i32 %4839, 1
  %4841 = add nsw i32 %4840, 532487669
  %4842 = bitcast i32 %4841 to float
  %4843 = fsub fast float 1.000000e+00, %4842
  %4844 = bitcast float %4843 to i32
  %4845 = sub nsw i32 2129859010, %4844
  %4846 = bitcast i32 %4845 to float
  %4847 = fmul fast float %4846, 2.000000e+00
  %4848 = bitcast float %4752 to i32
  %4849 = ashr i32 %4848, 1
  %4850 = add nsw i32 %4849, 532487669
  %4851 = bitcast i32 %4850 to float
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = bitcast float %4852 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = fmul fast float %4855, 2.000000e+00
  %4857 = bitcast float %4753 to i32
  %4858 = ashr i32 %4857, 1
  %4859 = add nsw i32 %4858, 532487669
  %4860 = bitcast i32 %4859 to float
  %4861 = fsub fast float 1.000000e+00, %4860
  %4862 = bitcast float %4861 to i32
  %4863 = sub nsw i32 2129859010, %4862
  %4864 = bitcast i32 %4863 to float
  %4865 = fmul fast float %4864, 2.000000e+00
  %4866 = fsub fast float 0x4002A9FBE0000000, %4847
  %4867 = fadd fast float %4847, 0x3FD54FDF00000000
  %4868 = bitcast float %4867 to i32
  %4869 = sub nsw i32 2129859010, %4868
  %4870 = bitcast i32 %4869 to float
  %4871 = fmul fast float %4870, %4866
  %4872 = fmul fast float %4871, %4871
  %4873 = fsub fast float 0x4002A9FBE0000000, %4856
  %4874 = fadd fast float %4856, 0x3FD54FDF00000000
  %4875 = bitcast float %4874 to i32
  %4876 = sub nsw i32 2129859010, %4875
  %4877 = bitcast i32 %4876 to float
  %4878 = fmul fast float %4877, %4873
  %4879 = fmul fast float %4878, %4878
  %4880 = fsub fast float 0x4002A9FBE0000000, %4865
  %4881 = fadd fast float %4865, 0x3FD54FDF00000000
  %4882 = bitcast float %4881 to i32
  %4883 = sub nsw i32 2129859010, %4882
  %4884 = bitcast i32 %4883 to float
  %4885 = fmul fast float %4884, %4880
  %4886 = fmul fast float %4885, %4885
  %4887 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4872)  ; FMax(a,b)
  %4888 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4879)  ; FMax(a,b)
  %4889 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4886)  ; FMax(a,b)
  %4890 = fsub fast float 1.000000e+00, %4776
  %4891 = fadd fast float %4890, %4791
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fsub fast float 1.000000e+00, %4163
  %4894 = fmul fast float %4833, %4893
  %4895 = fmul fast float %4836, %4836
  %4896 = fmul fast float %4895, %4894
  %4897 = fmul fast float %4896, %4838
  %4898 = fmul fast float %4893, 0xBFE99999A0000000
  %4899 = fmul fast float %4898, %4778
  %4900 = fmul fast float %4899, %4795
  %4901 = fadd fast float %4900, 1.000000e+00
  %4902 = fadd fast float %4757, -1.000000e+00
  %4903 = fmul fast float %4901, %4902
  %4904 = fadd fast float %4903, 1.000000e+00
  %4905 = fsub fast float %4887, %4751
  %4906 = fsub fast float %4888, %4752
  %4907 = fsub fast float %4889, %4753
  %4908 = fmul fast float %4897, %4905
  %4909 = fmul fast float %4897, %4906
  %4910 = fmul fast float %4897, %4907
  %4911 = fadd fast float %4908, %4751
  %4912 = fadd fast float %4909, %4752
  %4913 = fadd fast float %4910, %4753
  %4914 = fsub fast float %85, %4748
  %4915 = fsub fast float %86, %4749
  %4916 = fsub fast float %87, %4750
  %4917 = fmul fast float %4897, %4914
  %4918 = fmul fast float %4897, %4915
  %4919 = fmul fast float %4897, %4916
  %4920 = fadd fast float %4917, %4748
  %4921 = fadd fast float %4918, %4749
  %4922 = fadd fast float %4919, %4750
  %4923 = fmul fast float %4897, %4892
  %4924 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4925 = fsub fast float 1.000000e+00, %4924
  %4926 = fmul fast float %4923, %4925
  %4927 = fadd fast float %4926, %4924
  %4928 = fsub fast float 1.000000e+00, %4758
  %4929 = fmul fast float %4897, %4928
  %4930 = fadd fast float %4929, %4758
  %4931 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = call float @dx.op.unary.f32(i32 25, float %4931)  ; Rsqrt(value)
  %4933 = fmul fast float %4920, %4932
  %4934 = fmul fast float %4921, %4932
  %4935 = fmul fast float %4922, %4932
  br label %4936

; <label>:4936                                    ; preds = %4769, %4762
  %4937 = phi float [ %4768, %4762 ], [ %4775, %4769 ]
  %4938 = phi float [ %4767, %4762 ], [ %4773, %4769 ]
  %4939 = phi float [ %4766, %4762 ], [ %4771, %4769 ]
  %4940 = phi float [ %4765, %4762 ], [ %4774, %4769 ]
  %4941 = phi float [ %4764, %4762 ], [ %4772, %4769 ]
  %4942 = phi float [ %4763, %4762 ], [ %4770, %4769 ]
  %4943 = phi float [ %4748, %4762 ], [ %4933, %4769 ]
  %4944 = phi float [ %4749, %4762 ], [ %4934, %4769 ]
  %4945 = phi float [ %4750, %4762 ], [ %4935, %4769 ]
  %4946 = phi float [ %4751, %4762 ], [ %4911, %4769 ]
  %4947 = phi float [ %4752, %4762 ], [ %4912, %4769 ]
  %4948 = phi float [ %4753, %4762 ], [ %4913, %4769 ]
  %4949 = phi float [ %4754, %4762 ], [ %4820, %4769 ]
  %4950 = phi float [ %4755, %4762 ], [ %4821, %4769 ]
  %4951 = phi float [ %4756, %4762 ], [ %4822, %4769 ]
  %4952 = phi float [ %4757, %4762 ], [ %4927, %4769 ]
  %4953 = phi float [ %4758, %4762 ], [ %4930, %4769 ]
  %4954 = select i1 %215, float 0.000000e+00, float %4948
  %4955 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float %4939, float %4938, float %4937)  ; Dot3(ax,ay,az,bx,by,bz)
  %4956 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4957 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4941, float %4940, float %4943, float %4944, float %4945)  ; Dot3(ax,ay,az,bx,by,bz)
  %4958 = fmul fast float %4957, 2.000000e+00
  %4959 = fmul fast float %4958, %4943
  %4960 = fmul fast float %4958, %4944
  %4961 = fmul fast float %4958, %4945
  %4962 = fsub fast float %4942, %4959
  %4963 = fsub fast float %4941, %4960
  %4964 = fsub fast float %4940, %4961
  %4965 = call float @dx.op.binary.f32(i32 36, float %4953, float 1.000000e+00)  ; FMin(a,b)
  %4966 = fsub fast float 1.000000e+00, %4953
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = fsub fast float 1.000000e+00, %55
  %4970 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = call float @dx.op.binary.f32(i32 35, float %4970, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4972 = fdiv fast float %4969, %4971
  %4973 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4974, 5.000000e-01
  %4976 = fadd fast float %4975, 5.000000e-01
  %4977 = fmul fast float %4976, %55
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fmul fast float %4979, %4972
  %4981 = fadd fast float %4977, %4980
  %4982 = fsub fast float 5.000000e-01, %4975
  %4983 = fmul fast float %4982, %4949
  %4984 = fmul fast float %4982, %4950
  %4985 = fmul fast float %4982, %4951
  %4986 = fadd fast float %4981, %4983
  %4987 = fadd fast float %4981, %4984
  %4988 = fadd fast float %4981, %4985
  %4989 = call float @dx.op.dot3.f32(i32 55, float %4962, float %4963, float %4964, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = fmul fast float %4990, 5.000000e-01
  %4992 = fadd fast float %4991, 5.000000e-01
  %4993 = fmul fast float %4992, %55
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4962, float %4963, float %4964, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4996 = fmul fast float %4995, %4972
  %4997 = fadd fast float %4993, %4996
  %4998 = fsub fast float 5.000000e-01, %4991
  %4999 = fmul fast float %4998, %4949
  %5000 = fmul fast float %4998, %4950
  %5001 = fmul fast float %4998, %4951
  %5002 = fadd fast float %4997, %4999
  %5003 = fadd fast float %4997, %5000
  %5004 = fadd fast float %4997, %5001
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5007 = call float @dx.op.binary.f32(i32 36, float %4949, float %5006)  ; FMin(a,b)
  %5008 = fsub fast float 1.000000e+00, %4965
  %5009 = fmul fast float %5007, %5008
  %5010 = fsub fast float 1.000000e+00, %5009
  %5011 = bitcast float %5010 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = call float @dx.op.binary.f32(i32 36, float %4950, float %5006)  ; FMin(a,b)
  %5015 = fmul fast float %5014, %5008
  %5016 = fsub fast float 1.000000e+00, %5015
  %5017 = bitcast float %5016 to i32
  %5018 = sub nsw i32 2129859010, %5017
  %5019 = bitcast i32 %5018 to float
  %5020 = call float @dx.op.binary.f32(i32 36, float %4951, float %5006)  ; FMin(a,b)
  %5021 = fmul fast float %5020, %5008
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = bitcast float %5022 to i32
  %5024 = sub nsw i32 2129859010, %5023
  %5025 = bitcast i32 %5024 to float
  %5026 = fmul fast float %4965, %56
  %5027 = fmul fast float %5026, %4986
  %5028 = fmul fast float %5027, %5013
  %5029 = fmul fast float %4965, %57
  %5030 = fmul fast float %5029, %4987
  %5031 = fmul fast float %5030, %5019
  %5032 = fmul fast float %4965, %58
  %5033 = fmul fast float %5032, %4988
  %5034 = fmul fast float %5033, %5025
  %5035 = call float @dx.op.binary.f32(i32 36, float %4946, float %5006)  ; FMin(a,b)
  %5036 = fmul fast float %5035, %5008
  %5037 = fsub fast float 1.000000e+00, %5036
  %5038 = bitcast float %5037 to i32
  %5039 = sub nsw i32 2129859010, %5038
  %5040 = bitcast i32 %5039 to float
  %5041 = call float @dx.op.binary.f32(i32 36, float %4947, float %5006)  ; FMin(a,b)
  %5042 = fmul fast float %5041, %5008
  %5043 = fsub fast float 1.000000e+00, %5042
  %5044 = bitcast float %5043 to i32
  %5045 = sub nsw i32 2129859010, %5044
  %5046 = bitcast i32 %5045 to float
  %5047 = call float @dx.op.binary.f32(i32 36, float %4954, float %5006)  ; FMin(a,b)
  %5048 = fmul fast float %5047, %5008
  %5049 = fsub fast float 1.000000e+00, %5048
  %5050 = bitcast float %5049 to i32
  %5051 = sub nsw i32 2129859010, %5050
  %5052 = bitcast i32 %5051 to float
  %5053 = fmul fast float %5026, %5002
  %5054 = fmul fast float %5053, %5040
  %5055 = fmul fast float %5029, %5003
  %5056 = fmul fast float %5055, %5046
  %5057 = fmul fast float %5032, %5004
  %5058 = fmul fast float %5057, %5052
  %5059 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5031, float %5034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = select i1 %215, float 0.000000e+00, float %5028
  %5061 = select i1 %215, float %5059, float %5031
  %5062 = select i1 %215, float 0.000000e+00, float %5034
  %5063 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5056, float %5058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = select i1 %215, float 0.000000e+00, float %5054
  %5065 = select i1 %215, float %5063, float %5056
  %5066 = select i1 %215, float 0.000000e+00, float %5058
  %5067 = fmul fast float %4956, 9.843750e-01
  %5068 = fmul fast float %4952, 9.843750e-01
  %5069 = fadd fast float %5067, 7.812500e-03
  %5070 = fadd fast float %5068, 7.812500e-03
  %5071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5069, float %5070, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 2
  %5073 = extractvalue %dx.types.ResRet.f32 %5071, 3
  %5074 = fmul fast float %5072, %4946
  %5075 = fmul fast float %5072, %4947
  %5076 = fmul fast float %5072, %4954
  %5077 = fadd fast float %5074, %5073
  %5078 = fadd fast float %5075, %5073
  %5079 = fadd fast float %5076, %5073
  %5080 = fcmp fast ogt float %3748, 0.000000e+00
  br i1 %5080, label %5081, label %5107

; <label>:5081                                    ; preds = %4936
  %5082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3748, float %4956, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = extractvalue %dx.types.ResRet.f32 %5082, 1
  %5085 = extractvalue %dx.types.ResRet.f32 %5082, 2
  %5086 = fadd fast float %5083, -5.000000e-01
  %5087 = fadd fast float %5084, -5.000000e-01
  %5088 = fadd fast float %5085, -5.000000e-01
  %5089 = fsub fast float 1.000000e+00, %4946
  %5090 = fsub fast float 1.000000e+00, %4947
  %5091 = fsub fast float 1.000000e+00, %4954
  %5092 = fmul fast float %4946, 4.000000e+00
  %5093 = fmul fast float %5092, %5089
  %5094 = fmul fast float %5093, %5086
  %5095 = fmul fast float %4947, 4.000000e+00
  %5096 = fmul fast float %5095, %5090
  %5097 = fmul fast float %5096, %5087
  %5098 = fmul fast float %4954, 4.000000e+00
  %5099 = fmul fast float %5098, %5091
  %5100 = fmul fast float %5099, %5088
  %5101 = fadd fast float %5094, %5077
  %5102 = fadd fast float %5097, %5078
  %5103 = fadd fast float %5100, %5079
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  br label %5107

; <label>:5107                                    ; preds = %5081, %4936
  %5108 = phi float [ %5104, %5081 ], [ %5077, %4936 ]
  %5109 = phi float [ %5105, %5081 ], [ %5078, %4936 ]
  %5110 = phi float [ %5106, %5081 ], [ %5079, %4936 ]
  %5111 = call float @dx.op.binary.f32(i32 35, float %5109, float %5110)  ; FMax(a,b)
  %5112 = call float @dx.op.binary.f32(i32 35, float %5108, float %5111)  ; FMax(a,b)
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = fmul fast float %5113, %5060
  %5115 = fmul fast float %5113, %5061
  %5116 = fmul fast float %5113, %5062
  %5117 = call float @dx.op.dot3.f32(i32 55, float %4949, float %4950, float %4951, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = fcmp fast ogt float %5117, 0x3E7FF19E20000000
  %5119 = fdiv fast float 1.000000e+00, %5117
  %5120 = select i1 %5118, float %5119, float 0.000000e+00
  %5121 = fmul fast float %5120, %4949
  %5122 = fmul fast float %5120, %4950
  %5123 = fmul fast float %5120, %4951
  %5124 = fadd fast float %5121, -1.000000e+00
  %5125 = fadd fast float %5122, -1.000000e+00
  %5126 = fadd fast float %5123, -1.000000e+00
  %5127 = fmul fast float %5124, 5.000000e-01
  %5128 = fmul fast float %5125, 5.000000e-01
  %5129 = fmul fast float %5126, 5.000000e-01
  %5130 = fadd fast float %5127, 1.000000e+00
  %5131 = fadd fast float %5128, 1.000000e+00
  %5132 = fadd fast float %5129, 1.000000e+00
  %5133 = fmul fast float %5108, %5064
  %5134 = fmul fast float %5109, %5065
  %5135 = fmul fast float %5110, %5066
  %5136 = fsub fast float 1.000000e+00, %4956
  %5137 = bitcast float %5136 to i32
  %5138 = sitofp i32 %5137 to float
  %5139 = fmul fast float %5138, 5.000000e+00
  %5140 = fadd fast float %5139, 0xC1EFBF8940000000
  %5141 = fptosi float %5140 to i32
  %5142 = bitcast i32 %5141 to float
  %5143 = fmul fast float %5142, %3749
  %5144 = fmul fast float %5060, %5143
  %5145 = fmul fast float %5144, %5113
  %5146 = fmul fast float %5145, %5130
  %5147 = fmul fast float %5061, %5143
  %5148 = fmul fast float %5147, %5113
  %5149 = fmul fast float %5148, %5131
  %5150 = fmul fast float %5062, %5143
  %5151 = fmul fast float %5150, %5113
  %5152 = fmul fast float %5151, %5132
  %5153 = fmul fast float %5114, %3745
  %5154 = fmul fast float %5115, %3745
  %5155 = fmul fast float %5116, %3745
  %5156 = fadd fast float %5133, %3741
  %5157 = fadd fast float %5156, %5146
  %5158 = fmul fast float %5157, %3745
  %5159 = fadd fast float %5134, %3742
  %5160 = fadd fast float %5159, %5149
  %5161 = fmul fast float %5160, %3745
  %5162 = fadd fast float %5135, %3743
  %5163 = fadd fast float %5162, %5152
  %5164 = fmul fast float %5163, %3745
  %5165 = bitcast i32 %4968 to float
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 3
  %5168 = fcmp fast oeq float %5167, 0.000000e+00
  br i1 %5168, label %5396, label %5169

; <label>:5169                                    ; preds = %5107
  %5170 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5171 = extractvalue %dx.types.CBufRet.f32 %5166, 1
  %5172 = extractvalue %dx.types.CBufRet.f32 %5166, 2
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 0
  %5175 = extractvalue %dx.types.CBufRet.f32 %5173, 1
  %5176 = extractvalue %dx.types.CBufRet.f32 %5173, 2
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 0
  %5179 = extractvalue %dx.types.CBufRet.f32 %5177, 1
  %5180 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = select i1 %215, float %5178, float %5174
  %5182 = select i1 %215, float %5180, float %5175
  %5183 = select i1 %215, float %5179, float %5176
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 1
  %5186 = fcmp fast une float %5185, 0.000000e+00
  br i1 %5186, label %5187, label %5204

; <label>:5187                                    ; preds = %5169
  %5188 = fptoui float %78 to i32
  %5189 = fptoui float %79 to i32
  %5190 = lshr i32 %5188, 4
  %5191 = lshr i32 %5189, 4
  %5192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.f32 %5192, 0
  %5194 = fptoui float %5193 to i32
  %5195 = add i32 %5194, 15
  %5196 = lshr i32 %5195, 4
  %5197 = mul i32 %5196, %5191
  %5198 = add i32 %5197, %5190
  %5199 = shl i32 %5198, 3
  %5200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5199, i32 undef)  ; BufferLoad(srv,index,wot)
  %5201 = extractvalue %dx.types.ResRet.i32 %5200, 0
  %5202 = and i32 %5201, -268435456
  %5203 = icmp eq i32 %5202, -1342177280
  br i1 %5203, label %5214, label %5204

; <label>:5204                                    ; preds = %5187, %5169
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 2
  %5207 = extractvalue %dx.types.CBufRet.f32 %5205, 3
  %5208 = fmul fast float %5206, %78
  %5209 = fmul fast float %5207, %79
  %5210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5208, float %5209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5211 = extractvalue %dx.types.ResRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.ResRet.f32 %5210, 1
  %5213 = extractvalue %dx.types.ResRet.f32 %5210, 2
  br label %5214

; <label>:5214                                    ; preds = %5204, %5187
  %5215 = phi float [ %5211, %5204 ], [ 0.000000e+00, %5187 ]
  %5216 = phi float [ %5212, %5204 ], [ 0.000000e+00, %5187 ]
  %5217 = phi float [ %5213, %5204 ], [ 0.000000e+00, %5187 ]
  %5218 = call float @dx.op.binary.f32(i32 36, float %5216, float %5217)  ; FMin(a,b)
  %5219 = call float @dx.op.binary.f32(i32 36, float %5215, float %5218)  ; FMin(a,b)
  %5220 = fcmp fast ogt float %5219, 0.000000e+00
  br i1 %5220, label %5221, label %5396, !dx.controlflow.hints !76

; <label>:5221                                    ; preds = %5214
  %5222 = fmul fast float %5215, %5181
  %5223 = fmul fast float %5216, %5182
  %5224 = fmul fast float %5217, %5183
  %5225 = fsub fast float %5170, %4942
  %5226 = fsub fast float %5171, %4941
  %5227 = fsub fast float %5172, %4940
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5227, float %5225, float %5226, float %5227)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = call float @dx.op.unary.f32(i32 25, float %5228)  ; Rsqrt(value)
  %5230 = fmul fast float %5229, %5225
  %5231 = fmul fast float %5229, %5226
  %5232 = fmul fast float %5229, %5227
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %4943, float %4944, float %4945)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4938, float %4937, float %5230, float %5231, float %5232)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5236 = fmul fast float %5235, %5235
  %5237 = fmul fast float %5236, %5165
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = fmul fast float %5238, %5235
  %5240 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float %5230, float %5231, float %5232)  ; Dot3(ax,ay,az,bx,by,bz)
  %5241 = fmul fast float %5240, %5240
  %5242 = call float @dx.op.unary.f32(i32 6, float %5233)  ; FAbs(value)
  %5243 = fsub fast float 1.000000e+00, %4952
  %5244 = call float @dx.op.binary.f32(i32 35, float %5243, float 0x3F847AE140000000)  ; FMax(a,b)
  %5245 = fmul fast float %5244, %5244
  %5246 = fmul fast float %5245, %5245
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = fmul fast float %4956, %4956
  %5249 = fmul fast float %5248, %5247
  %5250 = fadd fast float %5249, %5246
  %5251 = bitcast float %5250 to i32
  %5252 = ashr i32 %5251, 1
  %5253 = add nsw i32 %5252, 532487669
  %5254 = bitcast i32 %5253 to float
  %5255 = fadd fast float %5254, %4956
  %5256 = fmul fast float %5246, %5241
  %5257 = fsub fast float 1.000000e+00, %5241
  %5258 = fadd fast float %5257, %5256
  %5259 = fmul fast float %5242, %5242
  %5260 = fmul fast float %5259, %5247
  %5261 = fadd fast float %5260, %5246
  %5262 = bitcast float %5261 to i32
  %5263 = ashr i32 %5262, 1
  %5264 = add nsw i32 %5263, 532487669
  %5265 = bitcast i32 %5264 to float
  %5266 = fadd fast float %5265, %5242
  %5267 = fmul fast float %5258, %5258
  %5268 = fmul fast float %5267, %5255
  %5269 = fmul fast float %5268, %5266
  %5270 = fdiv fast float 0x3FF0A00000000000, %5269
  %5271 = fmul fast float %5270, %5246
  %5272 = call float @dx.op.unary.f32(i32 6, float %5234)  ; FAbs(value)
  %5273 = fsub fast float 1.000000e+00, %5272
  %5274 = bitcast float %5273 to i32
  %5275 = sitofp i32 %5274 to float
  %5276 = fmul fast float %5275, 5.000000e+00
  %5277 = fadd fast float %5276, 0xC1EFBF8940000000
  %5278 = fptosi float %5277 to i32
  %5279 = bitcast i32 %5278 to float
  %5280 = fsub fast float 1.000000e+00, %4946
  %5281 = fsub fast float 1.000000e+00, %4947
  %5282 = fsub fast float 1.000000e+00, %4954
  %5283 = fmul fast float %5279, %5280
  %5284 = fmul fast float %5279, %5281
  %5285 = fmul fast float %5279, %5282
  %5286 = fadd fast float %5283, %4946
  %5287 = fadd fast float %5284, %4947
  %5288 = fadd fast float %5285, %4954
  br i1 %5080, label %5289, label %5312

; <label>:5289                                    ; preds = %5221
  %5290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3748, float %5272, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.ResRet.f32 %5290, 1
  %5293 = extractvalue %dx.types.ResRet.f32 %5290, 2
  %5294 = fadd fast float %5291, -5.000000e-01
  %5295 = fadd fast float %5292, -5.000000e-01
  %5296 = fadd fast float %5293, -5.000000e-01
  %5297 = fmul fast float %4946, 4.000000e+00
  %5298 = fmul fast float %5297, %5280
  %5299 = fmul fast float %5298, %5294
  %5300 = fmul fast float %4947, 4.000000e+00
  %5301 = fmul fast float %5300, %5281
  %5302 = fmul fast float %5301, %5295
  %5303 = fmul fast float %4954, 4.000000e+00
  %5304 = fmul fast float %5303, %5282
  %5305 = fmul fast float %5304, %5296
  %5306 = fadd fast float %5299, %5286
  %5307 = fadd fast float %5302, %5287
  %5308 = fadd fast float %5305, %5288
  %5309 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5310 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5311 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  br label %5312

; <label>:5312                                    ; preds = %5289, %5221
  %5313 = phi float [ %5309, %5289 ], [ %5286, %5221 ]
  %5314 = phi float [ %5310, %5289 ], [ %5287, %5221 ]
  %5315 = phi float [ %5311, %5289 ], [ %5288, %5221 ]
  %5316 = fmul fast float %5233, 9.843750e-01
  %5317 = fadd fast float %5316, 7.812500e-03
  %5318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5317, float %5070, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5319 = extractvalue %dx.types.ResRet.f32 %5318, 2
  %5320 = extractvalue %dx.types.ResRet.f32 %5318, 3
  %5321 = fmul fast float %5319, %4946
  %5322 = fmul fast float %5319, %4947
  %5323 = fmul fast float %5319, %4954
  %5324 = fadd fast float %5321, %5320
  %5325 = fadd fast float %5322, %5320
  %5326 = fadd fast float %5323, %5320
  br i1 %5080, label %5327, label %5350

; <label>:5327                                    ; preds = %5312
  %5328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3748, float %5233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.ResRet.f32 %5328, 1
  %5331 = extractvalue %dx.types.ResRet.f32 %5328, 2
  %5332 = fadd fast float %5329, -5.000000e-01
  %5333 = fadd fast float %5330, -5.000000e-01
  %5334 = fadd fast float %5331, -5.000000e-01
  %5335 = fmul fast float %4946, 4.000000e+00
  %5336 = fmul fast float %5335, %5280
  %5337 = fmul fast float %5336, %5332
  %5338 = fmul fast float %4947, 4.000000e+00
  %5339 = fmul fast float %5338, %5281
  %5340 = fmul fast float %5339, %5333
  %5341 = fmul fast float %4954, 4.000000e+00
  %5342 = fmul fast float %5341, %5282
  %5343 = fmul fast float %5342, %5334
  %5344 = fadd fast float %5337, %5324
  %5345 = fadd fast float %5340, %5325
  %5346 = fadd fast float %5343, %5326
  %5347 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5348 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5349 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  br label %5350

; <label>:5350                                    ; preds = %5327, %5312
  %5351 = phi float [ %5347, %5327 ], [ %5324, %5312 ]
  %5352 = phi float [ %5348, %5327 ], [ %5325, %5312 ]
  %5353 = phi float [ %5349, %5327 ], [ %5326, %5312 ]
  %5354 = call float @dx.op.binary.f32(i32 35, float %5352, float %5353)  ; FMax(a,b)
  %5355 = call float @dx.op.binary.f32(i32 35, float %5351, float %5354)  ; FMax(a,b)
  %5356 = fsub fast float 1.000000e+00, %5355
  %5357 = fmul fast float %5313, %5271
  %5358 = fmul fast float %5314, %5271
  %5359 = fmul fast float %5315, %5271
  %5360 = fsub fast float 1.000000e+00, %5234
  %5361 = bitcast float %5360 to i32
  %5362 = sitofp i32 %5361 to float
  %5363 = fmul fast float %5362, 5.000000e+00
  %5364 = fadd fast float %5363, 0xC1EFBF8940000000
  %5365 = fptosi float %5364 to i32
  %5366 = bitcast i32 %5365 to float
  %5367 = fmul fast float %5366, %3749
  %5368 = fmul fast float %5356, %5367
  %5369 = fmul fast float %5368, %5130
  %5370 = fmul fast float %5368, %5131
  %5371 = fmul fast float %5368, %5132
  %5372 = fadd fast float %5369, %5357
  %5373 = fadd fast float %5370, %5358
  %5374 = fadd fast float %5371, %5359
  %5375 = fmul fast float %5239, %5222
  %5376 = fmul fast float %5375, %5356
  %5377 = fmul fast float %5239, %5223
  %5378 = fmul fast float %5377, %5356
  %5379 = fmul fast float %5239, %5224
  %5380 = fmul fast float %5379, %5356
  %5381 = fmul fast float %5375, %5372
  %5382 = fmul fast float %5377, %5373
  %5383 = fmul fast float %5379, %5374
  %5384 = fadd fast float %5376, %5114
  %5385 = fmul fast float %5384, %3745
  %5386 = fadd fast float %5378, %5115
  %5387 = fmul fast float %5386, %3745
  %5388 = fadd fast float %5380, %5116
  %5389 = fmul fast float %5388, %3745
  %5390 = fadd fast float %5381, %5157
  %5391 = fmul fast float %5390, %3745
  %5392 = fadd fast float %5382, %5160
  %5393 = fmul fast float %5392, %3745
  %5394 = fadd fast float %5383, %5163
  %5395 = fmul fast float %5394, %3745
  br label %5396

; <label>:5396                                    ; preds = %5350, %5214, %5107
  %5397 = phi float [ %5158, %5107 ], [ %5158, %5214 ], [ %5391, %5350 ]
  %5398 = phi float [ %5161, %5107 ], [ %5161, %5214 ], [ %5393, %5350 ]
  %5399 = phi float [ %5164, %5107 ], [ %5164, %5214 ], [ %5395, %5350 ]
  %5400 = phi float [ %5153, %5107 ], [ %5153, %5214 ], [ %5385, %5350 ]
  %5401 = phi float [ %5154, %5107 ], [ %5154, %5214 ], [ %5387, %5350 ]
  %5402 = phi float [ %5155, %5107 ], [ %5155, %5214 ], [ %5389, %5350 ]
  %5403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.i32 %5403, 0
  %5405 = icmp eq i32 %5404, 0
  br i1 %5405, label %5840, label %5406

; <label>:5406                                    ; preds = %5396
  %5407 = fptoui float %78 to i32
  %5408 = fptoui float %79 to i32
  %5409 = lshr i32 %5407, 4
  %5410 = lshr i32 %5408, 4
  %5411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.i32 %5411, 0
  %5413 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5410, i32 %5412, i32 %5409)  ; UMad(a,b,c)
  %5414 = add nsw i32 %5404, -1
  %5415 = call i32 @dx.op.binary.i32(i32 37, i32 %5414, i32 0)  ; IMax(a,b)
  %5416 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5417 = fptoui float %5416 to i32
  %5418 = lshr i32 %5417, 5
  %5419 = call i32 @dx.op.binary.i32(i32 40, i32 %5418, i32 8191)  ; UMin(a,b)
  %5420 = shl i32 %5419, 2
  %5421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.i32 %5421, 0
  %5423 = lshr i32 %5422, 16
  %5424 = and i32 %5422, 65535
  %5425 = lshr i32 %5422, 21
  %5426 = lshr i32 %5424, 5
  %5427 = call i32 @dx.op.binary.i32(i32 40, i32 %5426, i32 %5415)  ; UMin(a,b)
  %5428 = icmp ugt i32 %5425, %5427
  br i1 %5428, label %5840, label %5429

; <label>:5429                                    ; preds = %5406
  br label %5430

; <label>:5430                                    ; preds = %5830, %5429
  %5431 = phi i32 [ %5837, %5830 ], [ %5425, %5429 ]
  %5432 = phi float [ %5831, %5830 ], [ %5397, %5429 ]
  %5433 = phi float [ %5832, %5830 ], [ %5398, %5429 ]
  %5434 = phi float [ %5833, %5830 ], [ %5399, %5429 ]
  %5435 = phi float [ %5834, %5830 ], [ %5400, %5429 ]
  %5436 = phi float [ %5835, %5830 ], [ %5401, %5429 ]
  %5437 = phi float [ %5836, %5830 ], [ %5402, %5429 ]
  %5438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.i32 %5438, 0
  %5440 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5413, i32 %5439, i32 %5431)  ; UMad(a,b,c)
  %5441 = shl i32 %5440, 2
  %5442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5441, i32 undef)  ; BufferLoad(srv,index,wot)
  %5443 = extractvalue %dx.types.ResRet.i32 %5442, 0
  %5444 = shl i32 %5431, 5
  %5445 = sub nsw i32 %5423, %5444
  %5446 = call i32 @dx.op.binary.i32(i32 37, i32 %5445, i32 0)  ; IMax(a,b)
  %5447 = call i32 @dx.op.binary.i32(i32 38, i32 %5446, i32 31)  ; IMin(a,b)
  %5448 = sub nsw i32 1, %5423
  %5449 = add nsw i32 %5448, %5424
  %5450 = call i32 @dx.op.binary.i32(i32 37, i32 %5449, i32 0)  ; IMax(a,b)
  %5451 = call i32 @dx.op.binary.i32(i32 38, i32 %5450, i32 32)  ; IMin(a,b)
  %5452 = and i32 %5451, 31
  %5453 = shl i32 -1, %5452
  %5454 = xor i32 %5453, -1
  %5455 = and i32 %5447, 31
  %5456 = shl i32 %5454, %5455
  %5457 = icmp eq i32 %5451, 32
  %5458 = select i1 %5457, i32 -1, i32 %5456
  %5459 = and i32 %5458, %5443
  %5460 = icmp eq i32 %5459, 0
  br i1 %5460, label %5830, label %5461

; <label>:5461                                    ; preds = %5430
  br label %5462

; <label>:5462                                    ; preds = %5542, %5461
  %5463 = phi i32 [ %5474, %5542 ], [ %5459, %5461 ]
  %5464 = phi float [ %5543, %5542 ], [ %5432, %5461 ]
  %5465 = phi float [ %5544, %5542 ], [ %5433, %5461 ]
  %5466 = phi float [ %5545, %5542 ], [ %5434, %5461 ]
  %5467 = phi float [ %5546, %5542 ], [ %5435, %5461 ]
  %5468 = phi float [ %5547, %5542 ], [ %5436, %5461 ]
  %5469 = phi float [ %5548, %5542 ], [ %5437, %5461 ]
  %5470 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5463)  ; FirstbitLo(value)
  %5471 = add i32 %5470, %5444
  %5472 = and i32 %5470, 31
  %5473 = shl i32 1, %5472
  %5474 = xor i32 %5473, %5463
  %5475 = mul i32 %5471, 112
  %5476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5475, i32 undef)  ; BufferLoad(srv,index,wot)
  %5477 = extractvalue %dx.types.ResRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.ResRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.ResRet.f32 %5476, 2
  %5480 = or i32 %5475, 12
  %5481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5480, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = add i32 %5475, 44
  %5484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5483, i32 undef)  ; BufferLoad(srv,index,wot)
  %5485 = extractvalue %dx.types.ResRet.f32 %5484, 0
  %5486 = add i32 %5475, 48
  %5487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5486, i32 undef)  ; BufferLoad(srv,index,wot)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5490 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5491 = add i32 %5475, 80
  %5492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5491, i32 undef)  ; BufferLoad(srv,index,wot)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 1
  %5494 = extractvalue %dx.types.ResRet.f32 %5492, 2
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = select i1 %215, float %5493, float %5477
  %5497 = select i1 %215, float %5495, float %5478
  %5498 = select i1 %215, float %5494, float %5479
  %5499 = fsub fast float %5488, %165
  %5500 = fsub fast float %5489, %166
  %5501 = fsub fast float %5490, %167
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5501, float %5499, float %5500, float %5501)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = call float @dx.op.unary.f32(i32 24, float %5502)  ; Sqrt(value)
  %5504 = fdiv fast float 1.000000e+00, %5503
  %5505 = fmul fast float %5504, %5499
  %5506 = fmul fast float %5504, %5500
  %5507 = fmul fast float %5504, %5501
  %5508 = fadd fast float %5503, %5482
  %5509 = fdiv fast float 1.000000e+00, %5508
  %5510 = fmul float %5485, %5509
  %5511 = fmul float %5510, %5510
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = and i32 %5473, %5459
  %5514 = icmp eq i32 %5513, 0
  br i1 %5514, label %5537, label %5515, !dx.controlflow.hints !77

; <label>:5515                                    ; preds = %5462
  %5516 = lshr i32 %5407, 5
  %5517 = lshr i32 %5408, 5
  %5518 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5516, i32 %5517, i32 %5471, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5519 = extractvalue %dx.types.ResRet.i32 %5518, 0
  %5520 = and i32 %5519, 3
  %5521 = icmp eq i32 %5520, 0
  %5522 = select i1 %5521, float 1.000000e+00, float 0.000000e+00
  %5523 = icmp eq i32 %5520, 3
  br i1 %5523, label %5524, label %5537

; <label>:5524                                    ; preds = %5515
  %5525 = lshr i32 %5519, 10
  %5526 = and i32 %5525, 8160
  %5527 = and i32 %5408, 31
  %5528 = or i32 %5526, %5527
  %5529 = lshr i32 %5519, 1
  %5530 = and i32 %5529, 16352
  %5531 = and i32 %5407, 31
  %5532 = or i32 %5530, %5531
  %5533 = lshr i32 %5519, 23
  %5534 = and i32 %5533, 255
  %5535 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5532, i32 %5528, i32 %5534, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5536 = extractvalue %dx.types.ResRet.f32 %5535, 0
  br label %5537

; <label>:5537                                    ; preds = %5524, %5515, %5462
  %5538 = phi float [ %5536, %5524 ], [ %5522, %5515 ], [ 0.000000e+00, %5462 ]
  %5539 = call float @dx.op.binary.f32(i32 36, float %5538, float %5538)  ; FMin(a,b)
  %5540 = call float @dx.op.binary.f32(i32 36, float %5538, float %5539)  ; FMin(a,b)
  %5541 = fcmp fast ogt float %5540, 0.000000e+00
  br i1 %5541, label %5550, label %5542, !dx.controlflow.hints !78

; <label>:5542                                    ; preds = %5786, %5537
  %5543 = phi float [ %5464, %5537 ], [ %5826, %5786 ]
  %5544 = phi float [ %5465, %5537 ], [ %5827, %5786 ]
  %5545 = phi float [ %5466, %5537 ], [ %5828, %5786 ]
  %5546 = phi float [ %5467, %5537 ], [ %5820, %5786 ]
  %5547 = phi float [ %5468, %5537 ], [ %5821, %5786 ]
  %5548 = phi float [ %5469, %5537 ], [ %5822, %5786 ]
  %5549 = icmp eq i32 %5463, %5473
  br i1 %5549, label %5829, label %5462

; <label>:5550                                    ; preds = %5537
  %5551 = fmul fast float %5538, %5496
  %5552 = fmul fast float %5538, %5497
  %5553 = fmul fast float %5538, %5498
  %5554 = fsub fast float %5490, %4150
  %5555 = fcmp fast ogt float %5554, 0.000000e+00
  %5556 = fsub fast float %167, %4150
  %5557 = fcmp fast ogt float %5556, 0.000000e+00
  %5558 = xor i1 %5557, %5555
  %5559 = fsub fast float %4150, %5490
  %5560 = fmul fast float %5559, 2.000000e+00
  %5561 = fadd fast float %5560, %5490
  %5562 = select i1 %5558, float %5490, float %5561
  %5563 = fsub fast float %5562, %167
  %5564 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5563, float %5499, float %5500, float %5563)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = call float @dx.op.unary.f32(i32 25, float %5564)  ; Rsqrt(value)
  %5566 = fmul fast float %5565, %5499
  %5567 = fmul fast float %5565, %5500
  %5568 = fmul fast float %5565, %5563
  %5569 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4158)  ; Dot3(ax,ay,az,bx,by,bz)
  %5570 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5566, float %5567, float %5568)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = fdiv fast float 1.000000e+00, %5570
  %5572 = fmul fast float %5571, %5569
  %5573 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5556, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = fcmp fast ogt float %5573, 0.000000e+00
  %5575 = fcmp fast olt float %5573, 0.000000e+00
  %5576 = zext i1 %5574 to i32
  %5577 = zext i1 %5575 to i32
  %5578 = sub nsw i32 %5576, %5577
  %5579 = sitofp i32 %5578 to float
  %5580 = fsub fast float %5562, %4150
  %5581 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5580, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5582 = fcmp fast ogt float %5581, 0.000000e+00
  %5583 = fcmp fast olt float %5581, 0.000000e+00
  %5584 = zext i1 %5582 to i32
  %5585 = zext i1 %5583 to i32
  %5586 = sub nsw i32 %5584, %5585
  %5587 = sitofp i32 %5586 to float
  %5588 = fcmp fast une float %5579, %5587
  br i1 %5588, label %5589, label %5599

; <label>:5589                                    ; preds = %5550
  %5590 = fmul fast float %5572, %5568
  %5591 = fmul fast float %5572, %5567
  %5592 = fmul fast float %5572, %5566
  %5593 = fmul fast float %5592, %5592
  %5594 = fmul fast float %5591, %5591
  %5595 = fadd fast float %5593, %5594
  %5596 = fmul fast float %5590, %5590
  %5597 = fadd fast float %5595, %5596
  %5598 = call float @dx.op.unary.f32(i32 24, float %5597)  ; Sqrt(value)
  br label %5611

; <label>:5599                                    ; preds = %5550
  %5600 = icmp slt i32 %5578, 0
  br i1 %5600, label %5601, label %5611

; <label>:5601                                    ; preds = %5599
  %5602 = fsub fast float %165, %5488
  %5603 = fsub fast float %166, %5489
  %5604 = fsub fast float %167, %5562
  %5605 = fmul fast float %5602, %5602
  %5606 = fmul fast float %5603, %5603
  %5607 = fadd fast float %5605, %5606
  %5608 = fmul fast float %5604, %5604
  %5609 = fadd fast float %5607, %5608
  %5610 = call float @dx.op.unary.f32(i32 24, float %5609)  ; Sqrt(value)
  br label %5611

; <label>:5611                                    ; preds = %5601, %5599, %5589
  %5612 = phi float [ %5598, %5589 ], [ %5610, %5601 ], [ 0.000000e+00, %5599 ]
  %5613 = and i1 %5557, %5555
  %5614 = fsub fast float -0.000000e+00, %5612
  %5615 = select i1 %5613, float -0.000000e+00, float %5614
  %5616 = fmul fast float %4151, 0x3FF7154760000000
  %5617 = fmul fast float %5616, %5615
  %5618 = fmul fast float %4152, 0x3FF7154760000000
  %5619 = fmul fast float %5618, %5615
  %5620 = fmul fast float %4153, 0x3FF7154760000000
  %5621 = fmul fast float %5620, %5615
  %5622 = call float @dx.op.unary.f32(i32 21, float %5617)  ; Exp(value)
  %5623 = call float @dx.op.unary.f32(i32 21, float %5619)  ; Exp(value)
  %5624 = call float @dx.op.unary.f32(i32 21, float %5621)  ; Exp(value)
  %5625 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5626 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5627 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5628 = fmul fast float %5551, %5625
  %5629 = fmul fast float %5552, %5626
  %5630 = fmul fast float %5553, %5627
  %5631 = fsub fast float %5505, %4942
  %5632 = fsub fast float %5506, %4941
  %5633 = fsub fast float %5507, %4940
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5631, float %5632, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = call float @dx.op.unary.f32(i32 25, float %5634)  ; Rsqrt(value)
  %5636 = fmul fast float %5635, %5631
  %5637 = fmul fast float %5635, %5632
  %5638 = fmul fast float %5635, %5633
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5506, float %5507, float %4943, float %4944, float %4945)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4938, float %4937, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5642 = fmul fast float %5641, %5512
  %5643 = fmul fast float %5641, %5641
  %5644 = fmul fast float %5643, %5165
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fmul fast float %5642, %5645
  %5647 = bitcast float %5502 to i32
  %5648 = ashr i32 %5647, 1
  %5649 = sub nsw i32 1597463007, %5648
  %5650 = bitcast i32 %5649 to float
  %5651 = fmul fast float %5650, %5499
  %5652 = fmul fast float %5650, %5500
  %5653 = fmul fast float %5650, %5501
  %5654 = fsub fast float %5651, %4942
  %5655 = fsub fast float %5652, %4941
  %5656 = fsub fast float %5653, %4940
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5655, float %5656, float %5654, float %5655, float %5656)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = call float @dx.op.unary.f32(i32 25, float %5657)  ; Rsqrt(value)
  %5659 = fmul fast float %5654, %5658
  %5660 = fmul fast float %5655, %5658
  %5661 = fmul fast float %5656, %5658
  %5662 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = fmul fast float %5662, %5662
  %5664 = call float @dx.op.unary.f32(i32 6, float %5639)  ; FAbs(value)
  %5665 = fsub fast float 1.000000e+00, %4952
  %5666 = call float @dx.op.binary.f32(i32 35, float %5665, float 0x3F847AE140000000)  ; FMax(a,b)
  %5667 = fmul fast float %5666, %5666
  %5668 = fmul fast float %5667, %5667
  %5669 = fsub fast float 1.000000e+00, %5668
  %5670 = fmul fast float %4956, %4956
  %5671 = fmul fast float %5670, %5669
  %5672 = fadd fast float %5671, %5668
  %5673 = bitcast float %5672 to i32
  %5674 = ashr i32 %5673, 1
  %5675 = add nsw i32 %5674, 532487669
  %5676 = bitcast i32 %5675 to float
  %5677 = fadd fast float %5676, %4956
  %5678 = fmul fast float %5668, %5663
  %5679 = fsub fast float 1.000000e+00, %5663
  %5680 = fadd fast float %5679, %5678
  %5681 = fmul fast float %5664, %5664
  %5682 = fmul fast float %5681, %5669
  %5683 = fadd fast float %5682, %5668
  %5684 = bitcast float %5683 to i32
  %5685 = ashr i32 %5684, 1
  %5686 = add nsw i32 %5685, 532487669
  %5687 = bitcast i32 %5686 to float
  %5688 = fadd fast float %5687, %5664
  %5689 = fmul fast float %5680, %5680
  %5690 = fmul fast float %5689, %5677
  %5691 = fmul fast float %5690, %5688
  %5692 = fdiv fast float 1.000000e+00, %5691
  %5693 = bitcast float %5668 to i32
  %5694 = sitofp i32 %5693 to float
  %5695 = fmul fast float %5694, 0x3FE7F73180000000
  %5696 = fadd fast float %5695, 0x41AFE27C40000000
  %5697 = fptosi float %5696 to i32
  %5698 = bitcast i32 %5697 to float
  %5699 = fmul fast float %5485, 0x3FD80E9D60000000
  %5700 = fmul fast float %5699, %5650
  %5701 = fadd fast float %5698, %5700
  %5702 = bitcast float %5701 to i32
  %5703 = sub nsw i32 2129859010, %5702
  %5704 = bitcast i32 %5703 to float
  %5705 = fmul fast float %5668, %5692
  %5706 = fmul fast float %5705, %5698
  %5707 = fmul fast float %5706, %5704
  %5708 = call float @dx.op.unary.f32(i32 6, float %5640)  ; FAbs(value)
  %5709 = fsub fast float 1.000000e+00, %5708
  %5710 = bitcast float %5709 to i32
  %5711 = sitofp i32 %5710 to float
  %5712 = fmul fast float %5711, 5.000000e+00
  %5713 = fadd fast float %5712, 0xC1EFBF8940000000
  %5714 = fptosi float %5713 to i32
  %5715 = bitcast i32 %5714 to float
  %5716 = fsub fast float 1.000000e+00, %4946
  %5717 = fsub fast float 1.000000e+00, %4947
  %5718 = fsub fast float 1.000000e+00, %4954
  %5719 = fmul fast float %5715, %5716
  %5720 = fmul fast float %5715, %5717
  %5721 = fmul fast float %5715, %5718
  %5722 = fadd fast float %5719, %4946
  %5723 = fadd fast float %5720, %4947
  %5724 = fadd fast float %5721, %4954
  br i1 %5080, label %5725, label %5748

; <label>:5725                                    ; preds = %5611
  %5726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3748, float %5708, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5727 = extractvalue %dx.types.ResRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.ResRet.f32 %5726, 1
  %5729 = extractvalue %dx.types.ResRet.f32 %5726, 2
  %5730 = fadd fast float %5727, -5.000000e-01
  %5731 = fadd fast float %5728, -5.000000e-01
  %5732 = fadd fast float %5729, -5.000000e-01
  %5733 = fmul fast float %4946, 4.000000e+00
  %5734 = fmul fast float %5733, %5716
  %5735 = fmul fast float %5734, %5730
  %5736 = fmul fast float %4947, 4.000000e+00
  %5737 = fmul fast float %5736, %5717
  %5738 = fmul fast float %5737, %5731
  %5739 = fmul fast float %4954, 4.000000e+00
  %5740 = fmul fast float %5739, %5718
  %5741 = fmul fast float %5740, %5732
  %5742 = fadd fast float %5735, %5722
  %5743 = fadd fast float %5738, %5723
  %5744 = fadd fast float %5741, %5724
  %5745 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  %5746 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5747 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  br label %5748

; <label>:5748                                    ; preds = %5725, %5611
  %5749 = phi float [ %5745, %5725 ], [ %5722, %5611 ]
  %5750 = phi float [ %5746, %5725 ], [ %5723, %5611 ]
  %5751 = phi float [ %5747, %5725 ], [ %5724, %5611 ]
  %5752 = fmul fast float %5639, 9.843750e-01
  %5753 = fadd fast float %5752, 7.812500e-03
  %5754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5753, float %5070, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 2
  %5756 = extractvalue %dx.types.ResRet.f32 %5754, 3
  %5757 = fmul fast float %5755, %4946
  %5758 = fmul fast float %5755, %4947
  %5759 = fmul fast float %5755, %4954
  %5760 = fadd fast float %5757, %5756
  %5761 = fadd fast float %5758, %5756
  %5762 = fadd fast float %5759, %5756
  br i1 %5080, label %5763, label %5786

; <label>:5763                                    ; preds = %5748
  %5764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3748, float %5639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5765 = extractvalue %dx.types.ResRet.f32 %5764, 0
  %5766 = extractvalue %dx.types.ResRet.f32 %5764, 1
  %5767 = extractvalue %dx.types.ResRet.f32 %5764, 2
  %5768 = fadd fast float %5765, -5.000000e-01
  %5769 = fadd fast float %5766, -5.000000e-01
  %5770 = fadd fast float %5767, -5.000000e-01
  %5771 = fmul fast float %4946, 4.000000e+00
  %5772 = fmul fast float %5771, %5716
  %5773 = fmul fast float %5772, %5768
  %5774 = fmul fast float %4947, 4.000000e+00
  %5775 = fmul fast float %5774, %5717
  %5776 = fmul fast float %5775, %5769
  %5777 = fmul fast float %4954, 4.000000e+00
  %5778 = fmul fast float %5777, %5718
  %5779 = fmul fast float %5778, %5770
  %5780 = fadd fast float %5773, %5760
  %5781 = fadd fast float %5776, %5761
  %5782 = fadd fast float %5779, %5762
  %5783 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5784 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5785 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  br label %5786

; <label>:5786                                    ; preds = %5763, %5748
  %5787 = phi float [ %5783, %5763 ], [ %5760, %5748 ]
  %5788 = phi float [ %5784, %5763 ], [ %5761, %5748 ]
  %5789 = phi float [ %5785, %5763 ], [ %5762, %5748 ]
  %5790 = call float @dx.op.binary.f32(i32 35, float %5788, float %5789)  ; FMax(a,b)
  %5791 = call float @dx.op.binary.f32(i32 35, float %5787, float %5790)  ; FMax(a,b)
  %5792 = fsub fast float 1.000000e+00, %5791
  %5793 = fmul fast float %5749, %5707
  %5794 = fmul fast float %5750, %5707
  %5795 = fmul fast float %5751, %5707
  %5796 = fsub fast float 1.000000e+00, %5640
  %5797 = bitcast float %5796 to i32
  %5798 = sitofp i32 %5797 to float
  %5799 = fmul fast float %5798, 5.000000e+00
  %5800 = fadd fast float %5799, 0xC1EFBF8940000000
  %5801 = fptosi float %5800 to i32
  %5802 = bitcast i32 %5801 to float
  %5803 = fmul fast float %5802, %3749
  %5804 = fmul fast float %5792, %5803
  %5805 = fmul fast float %5804, %5130
  %5806 = fmul fast float %5804, %5131
  %5807 = fmul fast float %5804, %5132
  %5808 = fadd fast float %5805, %5793
  %5809 = fadd fast float %5806, %5794
  %5810 = fadd fast float %5807, %5795
  %5811 = fmul fast float %5628, %3745
  %5812 = fmul fast float %5811, %5646
  %5813 = fmul fast float %5812, %5792
  %5814 = fmul fast float %5629, %3745
  %5815 = fmul fast float %5814, %5646
  %5816 = fmul fast float %5815, %5792
  %5817 = fmul fast float %5630, %3745
  %5818 = fmul fast float %5817, %5646
  %5819 = fmul fast float %5818, %5792
  %5820 = fadd fast float %5813, %5467
  %5821 = fadd fast float %5816, %5468
  %5822 = fadd fast float %5819, %5469
  %5823 = fmul fast float %5812, %5808
  %5824 = fmul fast float %5815, %5809
  %5825 = fmul fast float %5818, %5810
  %5826 = fadd fast float %5823, %5464
  %5827 = fadd fast float %5824, %5465
  %5828 = fadd fast float %5825, %5466
  br label %5542

; <label>:5829                                    ; preds = %5542
  br label %5830

; <label>:5830                                    ; preds = %5829, %5430
  %5831 = phi float [ %5432, %5430 ], [ %5543, %5829 ]
  %5832 = phi float [ %5433, %5430 ], [ %5544, %5829 ]
  %5833 = phi float [ %5434, %5430 ], [ %5545, %5829 ]
  %5834 = phi float [ %5435, %5430 ], [ %5546, %5829 ]
  %5835 = phi float [ %5436, %5430 ], [ %5547, %5829 ]
  %5836 = phi float [ %5437, %5430 ], [ %5548, %5829 ]
  %5837 = add i32 %5431, 1
  %5838 = icmp ugt i32 %5837, %5427
  br i1 %5838, label %5839, label %5430

; <label>:5839                                    ; preds = %5830
  br label %5840

; <label>:5840                                    ; preds = %5839, %5406, %5396
  %5841 = phi float [ %5397, %5396 ], [ %5397, %5406 ], [ %5831, %5839 ]
  %5842 = phi float [ %5398, %5396 ], [ %5398, %5406 ], [ %5832, %5839 ]
  %5843 = phi float [ %5399, %5396 ], [ %5399, %5406 ], [ %5833, %5839 ]
  %5844 = phi float [ %5400, %5396 ], [ %5400, %5406 ], [ %5834, %5839 ]
  %5845 = phi float [ %5401, %5396 ], [ %5401, %5406 ], [ %5835, %5839 ]
  %5846 = phi float [ %5402, %5396 ], [ %5402, %5406 ], [ %5836, %5839 ]
  %5847 = call float @dx.op.unary.f32(i32 24, float %4949)  ; Sqrt(value)
  %5848 = call float @dx.op.unary.f32(i32 24, float %4950)  ; Sqrt(value)
  %5849 = call float @dx.op.unary.f32(i32 24, float %4951)  ; Sqrt(value)
  %5850 = fmul fast float %5847, %5844
  %5851 = fmul fast float %5848, %5845
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  br i1 %215, label %5854, label %5883

; <label>:5854                                    ; preds = %5840
  %5855 = fadd fast float %5846, %3751
  %5856 = fmul fast float %5855, %3753
  %5857 = fsub fast float 1.000000e+00, %3753
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5861 = fmul fast float %5860, %5858
  %5862 = fadd fast float %5861, %5856
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = fmul fast float %5864, %5136
  %5866 = fsub fast float %5862, %5865
  %5867 = fadd fast float %5851, %5850
  %5868 = fmul fast float %5853, %5867
  %5869 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5870 = fsub fast float %5866, %5869
  %5871 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5872 = fmul fast float %5870, %5871
  %5873 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 0
  %5876 = fsub fast float %5873, %5875
  %5877 = fmul fast float %5876, 1.000000e+01
  %5878 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  %5879 = fadd fast float %3752, -1.000000e+00
  %5880 = fmul fast float %5878, %5879
  %5881 = fadd fast float %5880, 1.000000e+00
  %5882 = fmul fast float %5881, %5873
  br label %5899

; <label>:5883                                    ; preds = %5840
  %5884 = fmul fast float %5849, %5846
  %5885 = fmul fast float %5853, %5850
  %5886 = fmul fast float %5853, %5851
  %5887 = fmul fast float %5884, %5853
  %5888 = add i32 %33, 356
  %5889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5888, i32 undef)  ; BufferLoad(srv,index,wot)
  %5890 = extractvalue %dx.types.ResRet.i32 %5889, 0
  %5891 = and i32 %5890, 32
  %5892 = icmp eq i32 %5891, 0
  br i1 %5892, label %5899, label %5893

; <label>:5893                                    ; preds = %5883
  %5894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5895 = extractvalue %dx.types.CBufRet.f32 %5894, 0
  %5896 = fmul fast float %5895, 0x3FE99999A0000000
  %5897 = fadd fast float %5895, %5885
  %5898 = fadd fast float %5896, %5887
  br label %5899

; <label>:5899                                    ; preds = %5893, %5883, %5854
  %5900 = phi float [ %5868, %5854 ], [ %5897, %5893 ], [ %5885, %5883 ]
  %5901 = phi float [ %5882, %5854 ], [ %5886, %5893 ], [ %5886, %5883 ]
  %5902 = phi float [ %5881, %5854 ], [ %5898, %5893 ], [ %5887, %5883 ]
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = fmul fast float %5904, %5842
  %5906 = fmul fast float %5904, %5843
  %5907 = fadd fast float %5842, %5841
  %5908 = select i1 %215, float %5907, float %5841
  %5909 = fmul float %5908, %5904
  %5910 = select i1 %215, float 0.000000e+00, float %5905
  %5911 = select i1 %215, float 0.000000e+00, float %5906
  %5912 = fmul fast float %5900, %5847
  %5913 = fmul fast float %5901, %5848
  %5914 = fmul fast float %5902, %5849
  %5915 = fadd fast float %5909, %5912
  %5916 = fadd fast float %5910, %5913
  %5917 = fadd fast float %5911, %5914
  %5918 = select i1 %215, float %5901, float %5916
  %5919 = select i1 %215, float %5902, float %5917
  %5920 = call float @dx.op.binary.f32(i32 36, float %5915, float 3.225500e+04)  ; FMin(a,b)
  %5921 = call float @dx.op.binary.f32(i32 36, float %5918, float 3.225500e+04)  ; FMin(a,b)
  %5922 = call float @dx.op.binary.f32(i32 36, float %5919, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5920)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5921)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

