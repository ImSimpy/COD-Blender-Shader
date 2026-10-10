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
; shader hash: c31f351aac7faab56979446ea50e243e
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
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %178 = fmul fast float %176, %78
  %179 = fmul fast float %177, %79
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = and i32 %181, 114688
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %183, float %178, float 0.000000e+00
  %185 = select i1 %183, float %179, float 0.000000e+00
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %184, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fmul fast float %187, 2.550000e+02
  %189 = fptoui float %188 to i32
  %190 = select i1 %183, i32 %189, i32 0
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 3
  %193 = and i32 %192, 3
  %194 = icmp ne i32 %193, 0
  %195 = and i32 %192, 4
  %196 = icmp ne i32 %195, 0
  %197 = and i1 %194, %196
  br i1 %197, label %198, label %207

; <label>:198                                     ; preds = %0
  %199 = fmul fast float %113, %79
  %200 = fmul fast float %112, %78
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %200, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fsub fast float 1.000000e+00, %202
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = fcmp fast olt float %203, %205
  br label %210

; <label>:207                                     ; preds = %0
  %208 = icmp eq i32 %195, 0
  %209 = and i1 %194, %208
  br label %210

; <label>:210                                     ; preds = %207, %198
  %211 = phi i1 [ %206, %198 ], [ %209, %207 ]
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = fmul fast float %213, 0x3FE3C6EF40000000
  %215 = frem fast float %78, 2.560000e+02
  %216 = frem fast float %79, 2.560000e+02
  %217 = fptoui float %215 to i32
  %218 = fptoui float %216 to i32
  %219 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fadd fast float %220, %214
  %222 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %223 = add i32 %33, 156
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = shl i32 %225, 4
  %227 = and i32 %226, 32752
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %225, 7
  %230 = and i32 %229, 32752
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %225, 22
  %233 = shl nuw nsw i32 %232, 5
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = add i32 %33, 216
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = lshr i32 %237, 8
  %242 = and i32 %241, 255
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F70101020000000
  %245 = lshr i32 %237, 16
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = add i32 %33, 36
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = add i32 %33, 288
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %258, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = fmul fast float %260, 0x3F50624DE0000000
  %264 = fmul fast float %262, 0x3F50624DE0000000
  %265 = add i32 %33, 172
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = shl i32 %267, 4
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %267, 7
  %272 = and i32 %271, 32752
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %267, 22
  %275 = shl nuw nsw i32 %274, 5
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = add i32 %33, 232
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = lshr i32 %279, 8
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %279, 16
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = add i32 %33, 52
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = add i32 %33, 304
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = fmul fast float %302, 0x3F50624DE0000000
  %306 = fmul fast float %304, 0x3F50624DE0000000
  %307 = add i32 %33, 188
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = shl i32 %309, 4
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %309, 7
  %314 = and i32 %313, 32752
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %309, 22
  %317 = shl nuw nsw i32 %316, 5
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = add i32 %33, 248
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %321, 8
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %321, 16
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = add i32 %33, 68
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %335, 16
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %33, 320
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = fmul fast float %344, 0x3F50624DE0000000
  %348 = fmul fast float %346, 0x3F50624DE0000000
  %349 = add i32 %33, 204
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = shl i32 %351, 4
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %351, 7
  %356 = and i32 %355, 32752
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %351, 22
  %359 = shl nuw nsw i32 %358, 5
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %33, 264
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = lshr i32 %363, 8
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %363, 16
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = add i32 %33, 84
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 65535
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %377, 16
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = add i32 %33, 336
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = fmul fast float %386, 0x3F50624DE0000000
  %390 = fmul fast float %388, 0x3F50624DE0000000
  %391 = add i32 %33, 348
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 32
  %395 = icmp eq i32 %394, 0
  %396 = and i32 %393, 64
  %397 = icmp eq i32 %396, 0
  %398 = and i32 %393, 128
  %399 = icmp eq i32 %398, 0
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 2
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %417, label %404

; <label>:404                                     ; preds = %210
  %405 = add i32 %33, 472
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = add i32 %407, 0
  %409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %410 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %409, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = extractvalue %dx.types.ResRet.f32 %410, 2
  %414 = fmul fast float %411, %68
  %415 = fmul fast float %412, %69
  %416 = fmul fast float %413, %70
  br label %417

; <label>:417                                     ; preds = %404, %210
  %418 = phi float [ %70, %210 ], [ %416, %404 ]
  %419 = phi float [ %69, %210 ], [ %415, %404 ]
  %420 = phi float [ %68, %210 ], [ %414, %404 ]
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 2
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %444, label %425

; <label>:425                                     ; preds = %417
  %426 = add i32 %33, 44
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 1
  %430 = icmp ne i32 %429, 0
  %431 = select i1 %430, float %420, float 1.000000e+00
  %432 = add i32 %33, 60
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 1
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %419, float 1.000000e+00
  %438 = add i32 %33, 76
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %418, float 1.000000e+00
  br label %444

; <label>:444                                     ; preds = %425, %417
  %445 = phi float [ %418, %417 ], [ %443, %425 ]
  %446 = phi float [ %419, %417 ], [ %437, %425 ]
  %447 = phi float [ %420, %417 ], [ %431, %425 ]
  %448 = lshr i32 %422, 20
  %449 = and i32 %448, 3
  %450 = add nuw nsw i32 %449, 1
  %451 = add i32 %33, 24
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = add i32 %33, 28
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = or i32 %456, %453
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %917, label %459

; <label>:459                                     ; preds = %444
  %460 = and i32 %453, 262144
  %461 = icmp ne i32 %460, 0
  %462 = select i1 %461, float %39, float 1.000000e+00
  %463 = select i1 %461, float %40, float 0.000000e+00
  %464 = select i1 %461, float %41, float 0.000000e+00
  %465 = select i1 %461, float %42, float 1.000000e+00
  %466 = select i1 %461, float %43, float %66
  %467 = select i1 %461, float %44, float %67
  %468 = add i32 %33, 284
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = lshr i32 %470, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = fmul fast float %472, 0x3F50624DE0000000
  %474 = add i32 %33, 88
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = and i32 %477, 255
  %479 = lshr i32 %476, 24
  %480 = add i32 %33, 292
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 65535
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %482, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = add i32 %33, 32
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = lshr i32 %489, 22
  %491 = shl nuw nsw i32 %490, 5
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = shl i32 %489, 4
  %494 = and i32 %493, 32752
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = lshr i32 %489, 7
  %497 = and i32 %496, 32752
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 3
  %501 = fmul fast float %500, 1.000000e+03
  %502 = fmul fast float %263, %501
  %503 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %504 = fadd fast float %503, %253
  %505 = fmul fast float %264, %501
  %506 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %507 = fadd fast float %506, %255
  %508 = fmul fast float %473, %501
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = fmul fast float %509, 0x401921FB60000000
  %511 = fadd fast float %510, %492
  %512 = call float @dx.op.unary.f32(i32 13, float %511)  ; Sin(value)
  %513 = call float @dx.op.unary.f32(i32 12, float %511)  ; Cos(value)
  %514 = fsub fast float -0.000000e+00, %512
  %515 = fadd fast float %466, -5.000000e-01
  %516 = fadd fast float %467, -5.000000e-01
  %517 = fmul fast float %484, %515
  %518 = fmul fast float %486, %516
  %519 = fadd fast float %517, 5.000000e-01
  %520 = fadd fast float %518, 5.000000e-01
  %521 = fmul fast float %495, %519
  %522 = fmul fast float %498, %520
  %523 = fmul fast float %513, %521
  %524 = call float @dx.op.tertiary.f32(i32 46, float %514, float %522, float %523)  ; FMad(a,b,c)
  %525 = fmul fast float %512, %521
  %526 = call float @dx.op.tertiary.f32(i32 46, float %513, float %522, float %525)  ; FMad(a,b,c)
  %527 = fadd fast float %504, %524
  %528 = fadd fast float %507, %526
  %529 = icmp ugt i32 %478, 1
  %530 = icmp ugt i32 %476, 33554431
  %531 = or i1 %530, %529
  br i1 %531, label %532, label %557

; <label>:532                                     ; preds = %459
  %533 = add i32 %33, 228
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = lshr i32 %535, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = fmul fast float %500, %537
  %539 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %540 = mul nuw nsw i32 %478, %479
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %539, %541
  %543 = call float @dx.op.unary.f32(i32 27, float %542)  ; Round_ni(value)
  %544 = fptoui float %543 to i32
  %545 = urem i32 %544, %478
  %546 = udiv i32 %544, %479
  %547 = call float @dx.op.unary.f32(i32 22, float %527)  ; Frc(value)
  %548 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %549 = uitofp i32 %545 to float
  %550 = uitofp i32 %546 to float
  %551 = fadd fast float %547, %549
  %552 = fadd fast float %548, %550
  %553 = uitofp i32 %478 to float
  %554 = uitofp i32 %479 to float
  %555 = fdiv fast float %551, %553
  %556 = fdiv fast float %552, %554
  br label %557

; <label>:557                                     ; preds = %532, %459
  %558 = phi float [ %555, %532 ], [ %527, %459 ]
  %559 = phi float [ %556, %532 ], [ %528, %459 ]
  %560 = and i32 %453, 16
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %758, label %562

; <label>:562                                     ; preds = %557
  %563 = add i32 %33, 360
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = add i32 %565, 0
  %567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %567, %dx.types.Handle %74, float %558, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = extractvalue %dx.types.ResRet.f32 %568, 3
  %573 = and i32 %476, 255
  %574 = uitofp i32 %573 to float
  %575 = lshr i32 %476, 8
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %572, %574
  %579 = fadd fast float %578, %577
  %580 = fmul fast float %579, 0x3F70101000000000
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 512
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %593, label %585

; <label>:585                                     ; preds = %562
  %586 = add i32 %33, 440
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = add i32 %588, 0
  %590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %590, %dx.types.Handle %75, float %558, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  br label %593

; <label>:593                                     ; preds = %585, %562
  %594 = phi float [ %592, %585 ], [ 1.000000e+00, %562 ]
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 33554432
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %705, label %599

; <label>:599                                     ; preds = %593
  %600 = add i32 %33, 224
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 65535
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %602, 16
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = add i32 %33, 228
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = lshr i32 %613, 24
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = and i32 %613, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = lshr i32 %613, 8
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = lshr i32 %613, 16
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = add i32 %33, 220
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = lshr i32 %630, 24
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = and i32 %630, 255
  %635 = uitofp i32 %634 to float
  %636 = fmul fast float %635, 0x3F70101020000000
  %637 = lshr i32 %630, 8
  %638 = and i32 %637, 255
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = lshr i32 %630, 16
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101020000000
  %645 = bitcast float %569 to i32
  %646 = ashr i32 %645, 1
  %647 = sub nsw i32 1597463174, %646
  %648 = bitcast i32 %647 to float
  %649 = fmul fast float %569, 5.000000e-01
  %650 = fmul fast float %648, %648
  %651 = fmul fast float %650, %649
  %652 = fsub fast float 1.500000e+00, %651
  %653 = fmul fast float %648, %569
  %654 = fmul fast float %653, %652
  %655 = bitcast float %570 to i32
  %656 = ashr i32 %655, 1
  %657 = sub nsw i32 1597463174, %656
  %658 = bitcast i32 %657 to float
  %659 = fmul fast float %570, 5.000000e-01
  %660 = fmul fast float %658, %658
  %661 = fmul fast float %660, %659
  %662 = fsub fast float 1.500000e+00, %661
  %663 = fmul fast float %658, %570
  %664 = fmul fast float %663, %662
  %665 = bitcast float %571 to i32
  %666 = ashr i32 %665, 1
  %667 = sub nsw i32 1597463174, %666
  %668 = bitcast i32 %667 to float
  %669 = fmul fast float %571, 5.000000e-01
  %670 = fmul fast float %668, %668
  %671 = fmul fast float %670, %669
  %672 = fsub fast float 1.500000e+00, %671
  %673 = fmul fast float %668, %571
  %674 = fmul fast float %673, %672
  %675 = fsub fast float %654, %636
  %676 = fsub fast float %664, %640
  %677 = fsub fast float %674, %644
  %678 = fmul fast float %675, %604
  %679 = fmul fast float %676, %606
  %680 = fmul fast float %677, %611
  %681 = fadd fast float %678, %619
  %682 = fadd fast float %679, %623
  %683 = fadd fast float %680, %627
  %684 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  %685 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %686 = call float @dx.op.unary.f32(i32 7, float %683)  ; Saturate(value)
  %687 = fmul fast float %684, %684
  %688 = fmul fast float %685, %685
  %689 = fmul fast float %686, %686
  %690 = fsub fast float %687, %569
  %691 = fsub fast float %688, %570
  %692 = fsub fast float %689, %571
  %693 = fmul fast float %690, %594
  %694 = fmul fast float %691, %594
  %695 = fmul fast float %692, %594
  %696 = fadd fast float %693, %569
  %697 = fadd fast float %694, %570
  %698 = fadd fast float %695, %571
  %699 = fadd fast float %616, %580
  %700 = fsub fast float %699, %633
  %701 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %702 = fsub fast float %701, %580
  %703 = fmul fast float %702, %594
  %704 = fadd fast float %703, %580
  br label %758

; <label>:705                                     ; preds = %593
  %706 = and i32 %596, 134217728
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %742, label %708

; <label>:708                                     ; preds = %705
  %709 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %710 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %711 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %712 = fadd fast float %709, -5.000000e-01
  %713 = fadd fast float %710, -5.000000e-01
  %714 = fadd fast float %711, -5.000000e-01
  %715 = fmul fast float %712, %594
  %716 = fmul fast float %713, %594
  %717 = fmul fast float %714, %594
  %718 = fadd fast float %715, 5.000000e-01
  %719 = fadd fast float %716, 5.000000e-01
  %720 = fadd fast float %717, 5.000000e-01
  %721 = call float @dx.op.unary.f32(i32 24, float %569)  ; Sqrt(value)
  %722 = call float @dx.op.unary.f32(i32 24, float %570)  ; Sqrt(value)
  %723 = call float @dx.op.unary.f32(i32 24, float %571)  ; Sqrt(value)
  %724 = fmul fast float %718, 2.000000e+00
  %725 = fsub fast float 1.000000e+00, %724
  %726 = fmul fast float %725, %721
  %727 = fadd fast float %726, %724
  %728 = fmul fast float %727, %721
  %729 = fmul fast float %719, 2.000000e+00
  %730 = fsub fast float 1.000000e+00, %729
  %731 = fmul fast float %730, %722
  %732 = fadd fast float %731, %729
  %733 = fmul fast float %732, %722
  %734 = fmul fast float %720, 2.000000e+00
  %735 = fsub fast float 1.000000e+00, %734
  %736 = fmul fast float %735, %723
  %737 = fadd fast float %736, %734
  %738 = fmul fast float %737, %723
  %739 = fmul fast float %728, %728
  %740 = fmul fast float %733, %733
  %741 = fmul fast float %738, %738
  br label %758

; <label>:742                                     ; preds = %705
  %743 = fmul fast float %240, %240
  %744 = fmul fast float %244, %244
  %745 = fmul fast float %248, %248
  %746 = fadd fast float %743, -1.000000e+00
  %747 = fadd fast float %744, -1.000000e+00
  %748 = fadd fast float %745, -1.000000e+00
  %749 = fmul fast float %594, %746
  %750 = fmul fast float %594, %747
  %751 = fmul fast float %594, %748
  %752 = fadd fast float %749, 1.000000e+00
  %753 = fadd fast float %750, 1.000000e+00
  %754 = fadd fast float %751, 1.000000e+00
  %755 = fmul fast float %752, %569
  %756 = fmul fast float %753, %570
  %757 = fmul fast float %754, %571
  br label %758

; <label>:758                                     ; preds = %742, %708, %599, %557
  %759 = phi float [ %704, %599 ], [ %580, %708 ], [ %580, %742 ], [ 0x3FA23C0BE0000000, %557 ]
  %760 = phi float [ %696, %599 ], [ %739, %708 ], [ %755, %742 ], [ 1.000000e+00, %557 ]
  %761 = phi float [ %697, %599 ], [ %740, %708 ], [ %756, %742 ], [ 1.000000e+00, %557 ]
  %762 = phi float [ %698, %599 ], [ %741, %708 ], [ %757, %742 ], [ 1.000000e+00, %557 ]
  %763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.i32 %763, 1
  %765 = and i32 %764, 1
  %766 = icmp ne i32 %765, 0
  %767 = add i32 %33, 356
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 32
  %771 = icmp ne i32 %770, 0
  %772 = and i1 %766, %771
  %773 = select i1 %772, float 1.000000e+00, float %760
  %774 = select i1 %772, float 0x3FD3333340000000, float %761
  %775 = select i1 %772, float 0x3FD3333340000000, float %762
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 32
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %852, label %780

; <label>:780                                     ; preds = %758
  %781 = add i32 %33, 92
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = add i32 %33, 376
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = add i32 %786, 0
  %788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %789 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %788, %dx.types.Handle %74, float %558, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = extractvalue %dx.types.ResRet.f32 %789, 3
  %794 = and i32 %783, 255
  %795 = uitofp i32 %794 to float
  %796 = lshr i32 %783, 8
  %797 = and i32 %796, 255
  %798 = uitofp i32 %797 to float
  %799 = lshr i32 %783, 16
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101000000000
  %803 = fmul fast float %790, %795
  %804 = fadd fast float %803, %798
  %805 = fmul fast float %804, 0x3F70101000000000
  %806 = fadd fast float %791, -5.000000e-01
  %807 = fadd fast float %793, -5.000000e-01
  %808 = fmul fast float %806, %802
  %809 = fmul fast float %807, %802
  %810 = fadd fast float %808, 5.000000e-01
  %811 = fadd fast float %809, 5.000000e-01
  %812 = fmul fast float %810, 2.000000e+00
  %813 = fadd fast float %812, -1.000000e+00
  %814 = fmul fast float %811, 2.000000e+00
  %815 = fadd fast float %814, -1.000000e+00
  %816 = fadd fast float %813, %815
  %817 = fmul fast float %816, 5.000000e-01
  %818 = fsub fast float %813, %815
  %819 = fmul fast float %818, 5.000000e-01
  %820 = call float @dx.op.unary.f32(i32 6, float %817)  ; FAbs(value)
  %821 = fsub fast float 1.000000e+00, %820
  %822 = call float @dx.op.unary.f32(i32 6, float %819)  ; FAbs(value)
  %823 = fsub fast float %821, %822
  %824 = call float @dx.op.dot3.f32(i32 55, float %817, float %819, float %823, float %817, float %819, float %823)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = call float @dx.op.unary.f32(i32 25, float %824)  ; Rsqrt(value)
  %826 = fmul fast float %817, %825
  %827 = fmul fast float %819, %825
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 67108864
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %848, label %832

; <label>:832                                     ; preds = %780
  %833 = add i32 %33, 280
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = and i32 %835, 65535
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 65535
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = lshr i32 %835, 16
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = fsub fast float %805, %843
  %845 = fmul fast float %844, %837
  %846 = fadd fast float %845, %841
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  br label %848

; <label>:848                                     ; preds = %832, %780
  %849 = phi float [ %847, %832 ], [ %805, %780 ]
  %850 = call float @dx.op.dot2.f32(i32 54, float %826, float %827, float %462, float %463)  ; Dot2(ax,ay,bx,by)
  %851 = call float @dx.op.dot2.f32(i32 54, float %826, float %827, float %464, float %465)  ; Dot2(ax,ay,bx,by)
  br label %852

; <label>:852                                     ; preds = %848, %758
  %853 = phi float [ %849, %848 ], [ 0x3FD6666660000000, %758 ]
  %854 = phi float [ %850, %848 ], [ 0.000000e+00, %758 ]
  %855 = phi float [ %851, %848 ], [ 0.000000e+00, %758 ]
  %856 = phi float [ %792, %848 ], [ 1.000000e+00, %758 ]
  %857 = add i32 %33, 160
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = lshr i32 %859, 22
  %861 = shl nuw nsw i32 %860, 5
  %862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %861)  ; LegacyF16ToF32(value)
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = and i32 %864, 64
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %900, label %867

; <label>:867                                     ; preds = %852
  %868 = add i32 %33, 392
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = add i32 %870, 0
  %872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %871, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 131072
  %876 = icmp eq i32 %875, 0
  %877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %872, %dx.types.Handle %74, float %558, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = extractvalue %dx.types.ResRet.f32 %877, 1
  %880 = extractvalue %dx.types.ResRet.f32 %877, 2
  %881 = fmul fast float %878, %228
  %882 = fmul fast float %879, %231
  %883 = fmul fast float %880, %234
  br i1 %876, label %890, label %884

; <label>:884                                     ; preds = %867
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = fmul fast float %886, %881
  %888 = fmul fast float %886, %882
  %889 = fmul fast float %886, %883
  br label %890

; <label>:890                                     ; preds = %884, %867
  %891 = phi float [ %887, %884 ], [ %881, %867 ]
  %892 = phi float [ %888, %884 ], [ %882, %867 ]
  %893 = phi float [ %889, %884 ], [ %883, %867 ]
  %894 = fmul fast float %891, %862
  %895 = select i1 %211, float %894, float %891
  %896 = call float @dx.op.dot3.f32(i32 55, float %895, float %892, float %893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %897 = select i1 %211, float 0.000000e+00, float %891
  %898 = select i1 %211, float %896, float %892
  %899 = select i1 %211, float 0.000000e+00, float %893
  br label %900

; <label>:900                                     ; preds = %890, %852
  %901 = phi float [ %897, %890 ], [ 0.000000e+00, %852 ]
  %902 = phi float [ %898, %890 ], [ 0.000000e+00, %852 ]
  %903 = phi float [ %899, %890 ], [ 0.000000e+00, %852 ]
  %904 = add i32 %33, 96
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = and i32 %906, 255
  %908 = uitofp i32 %907 to float
  %909 = lshr i32 %906, 8
  %910 = and i32 %909, 255
  %911 = uitofp i32 %910 to float
  %912 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = fmul fast float %911, %912
  %914 = fadd fast float %913, %908
  %915 = fmul fast float %914, 0x3F70101020000000
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  br label %917

; <label>:917                                     ; preds = %900, %444
  %918 = phi float [ 0.000000e+00, %444 ], [ %854, %900 ]
  %919 = phi float [ 0.000000e+00, %444 ], [ %855, %900 ]
  %920 = phi float [ 0.000000e+00, %444 ], [ %773, %900 ]
  %921 = phi float [ 0.000000e+00, %444 ], [ %774, %900 ]
  %922 = phi float [ 0.000000e+00, %444 ], [ %775, %900 ]
  %923 = phi float [ 0.000000e+00, %444 ], [ %901, %900 ]
  %924 = phi float [ 0.000000e+00, %444 ], [ %902, %900 ]
  %925 = phi float [ 0.000000e+00, %444 ], [ %903, %900 ]
  %926 = phi float [ 0.000000e+00, %444 ], [ %759, %900 ]
  %927 = phi float [ 0.000000e+00, %444 ], [ 1.000000e+00, %900 ]
  %928 = phi float [ 0.000000e+00, %444 ], [ %853, %900 ]
  %929 = phi float [ 0.000000e+00, %444 ], [ %856, %900 ]
  %930 = phi float [ 0.000000e+00, %444 ], [ %916, %900 ]
  br i1 %395, label %1657, label %931

; <label>:931                                     ; preds = %917
  %932 = icmp ult i32 %450, 2
  %933 = add i32 %33, 40
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = add i32 %33, 44
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = or i32 %938, %935
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %1657, label %941

; <label>:941                                     ; preds = %931
  %942 = and i32 %935, 262144
  %943 = icmp ne i32 %942, 0
  %944 = select i1 %943, float %39, float 1.000000e+00
  %945 = select i1 %943, float %40, float 0.000000e+00
  %946 = select i1 %943, float %41, float 0.000000e+00
  %947 = select i1 %943, float %42, float 1.000000e+00
  %948 = select i1 %943, float %43, float %66
  %949 = select i1 %943, float %44, float %67
  %950 = add i32 %33, 300
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = lshr i32 %952, 16
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = fmul fast float %954, 0x3F50624DE0000000
  %956 = add i32 %33, 104
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 16
  %960 = and i32 %959, 255
  %961 = lshr i32 %958, 24
  %962 = add i32 %33, 308
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = and i32 %964, 65535
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = lshr i32 %964, 16
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = add i32 %33, 48
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = lshr i32 %971, 22
  %973 = shl nuw nsw i32 %972, 5
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = shl i32 %971, 4
  %976 = and i32 %975, 32752
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = lshr i32 %971, 7
  %979 = and i32 %978, 32752
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %983 = fmul fast float %982, 1.000000e+03
  %984 = fmul fast float %305, %983
  %985 = call float @dx.op.unary.f32(i32 22, float %984)  ; Frc(value)
  %986 = fadd fast float %985, %295
  %987 = fmul fast float %306, %983
  %988 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %989 = fadd fast float %988, %297
  %990 = fmul fast float %955, %983
  %991 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %992 = fmul fast float %991, 0x401921FB60000000
  %993 = fadd fast float %992, %974
  %994 = call float @dx.op.unary.f32(i32 13, float %993)  ; Sin(value)
  %995 = call float @dx.op.unary.f32(i32 12, float %993)  ; Cos(value)
  %996 = fsub fast float -0.000000e+00, %994
  %997 = fadd fast float %948, -5.000000e-01
  %998 = fadd fast float %949, -5.000000e-01
  %999 = fmul fast float %966, %997
  %1000 = fmul fast float %968, %998
  %1001 = fadd fast float %999, 5.000000e-01
  %1002 = fadd fast float %1000, 5.000000e-01
  %1003 = fmul fast float %977, %1001
  %1004 = fmul fast float %980, %1002
  %1005 = fmul fast float %995, %1003
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %996, float %1004, float %1005)  ; FMad(a,b,c)
  %1007 = fmul fast float %994, %1003
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %995, float %1004, float %1007)  ; FMad(a,b,c)
  %1009 = fadd fast float %986, %1006
  %1010 = fadd fast float %989, %1008
  %1011 = icmp ugt i32 %960, 1
  %1012 = icmp ugt i32 %958, 33554431
  %1013 = or i1 %1012, %1011
  br i1 %1013, label %1014, label %1039

; <label>:1014                                    ; preds = %941
  %1015 = add i32 %33, 244
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = lshr i32 %1017, 16
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = fmul fast float %982, %1019
  %1021 = call float @dx.op.unary.f32(i32 22, float %1020)  ; Frc(value)
  %1022 = mul nuw nsw i32 %960, %961
  %1023 = uitofp i32 %1022 to float
  %1024 = fmul fast float %1021, %1023
  %1025 = call float @dx.op.unary.f32(i32 27, float %1024)  ; Round_ni(value)
  %1026 = fptoui float %1025 to i32
  %1027 = urem i32 %1026, %960
  %1028 = udiv i32 %1026, %961
  %1029 = call float @dx.op.unary.f32(i32 22, float %1009)  ; Frc(value)
  %1030 = call float @dx.op.unary.f32(i32 22, float %1010)  ; Frc(value)
  %1031 = uitofp i32 %1027 to float
  %1032 = uitofp i32 %1028 to float
  %1033 = fadd fast float %1029, %1031
  %1034 = fadd fast float %1030, %1032
  %1035 = uitofp i32 %960 to float
  %1036 = uitofp i32 %961 to float
  %1037 = fdiv fast float %1033, %1035
  %1038 = fdiv fast float %1034, %1036
  br label %1039

; <label>:1039                                    ; preds = %1014, %941
  %1040 = phi float [ %1037, %1014 ], [ %1009, %941 ]
  %1041 = phi float [ %1038, %1014 ], [ %1010, %941 ]
  %1042 = and i32 %935, 256
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1090, label %1044

; <label>:1044                                    ; preds = %1039
  %1045 = add i32 %33, 428
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = add i32 %1047, 0
  %1049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1050 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1049, %dx.types.Handle %75, float %1040, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = add i32 %33, 116
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = shl i32 %1054, 4
  %1056 = and i32 %1055, 32752
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = lshr i32 %1054, 7
  %1059 = and i32 %1058, 32752
  %1060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1059)  ; LegacyF16ToF32(value)
  %1061 = fsub fast float 1.000000e+00, %447
  %1062 = call float @dx.op.binary.f32(i32 35, float %1061, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1063 = bitcast float %447 to i32
  %1064 = sitofp i32 %1063 to float
  %1065 = fadd fast float %1064, 0xC1CFBF8940000000
  %1066 = fmul fast float %1060, %1065
  %1067 = fadd fast float %1066, 0x41CFBF8940000000
  %1068 = fptosi float %1067 to i32
  %1069 = bitcast i32 %1068 to float
  %1070 = bitcast float %1062 to i32
  %1071 = sitofp i32 %1070 to float
  %1072 = fadd fast float %1071, 0xC1CFBF8940000000
  %1073 = fmul fast float %1072, %1060
  %1074 = fadd fast float %1073, 0x41CFBF8940000000
  %1075 = fptosi float %1074 to i32
  %1076 = bitcast i32 %1075 to float
  %1077 = fmul fast float %1069, %1057
  %1078 = fmul fast float %1076, %1057
  %1079 = fsub fast float %1062, %1077
  %1080 = fadd fast float %1078, %1062
  %1081 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1082 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1083 = fsub fast float %1051, %1081
  %1084 = fsub fast float %1082, %1081
  %1085 = bitcast float %1084 to i32
  %1086 = sub nsw i32 2129859010, %1085
  %1087 = bitcast i32 %1086 to float
  %1088 = fmul fast float %1087, %1083
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  br label %1090

; <label>:1090                                    ; preds = %1044, %1039
  %1091 = phi float [ %1089, %1044 ], [ %447, %1039 ]
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 128
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1112, label %1096

; <label>:1096                                    ; preds = %1090
  %1097 = add i32 %33, 412
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %1099, 0
  %1101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1101, %dx.types.Handle %75, float %1040, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 524288
  %1107 = icmp ne i32 %1106, 0
  %1108 = fcmp fast ogt float %1103, 0x3FE0101020000000
  %1109 = select i1 %1108, float 1.000000e+00, float 0.000000e+00
  %1110 = select i1 %1107, float %1109, float %1103
  %1111 = fmul fast float %1110, %1091
  br label %1112

; <label>:1112                                    ; preds = %1096, %1090
  %1113 = phi float [ %1111, %1096 ], [ %1091, %1090 ]
  %1114 = fcmp fast ult float %1113, 0x3F70101020000000
  br i1 %1114, label %1657, label %1115

; <label>:1115                                    ; preds = %1112
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 16
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1318, label %1120

; <label>:1120                                    ; preds = %1115
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %33, 364
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = add i32 %1125, 0
  %1127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1127, %dx.types.Handle %74, float %1040, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.ResRet.f32 %1128, 3
  %1133 = and i32 %1122, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = lshr i32 %1122, 8
  %1136 = and i32 %1135, 255
  %1137 = uitofp i32 %1136 to float
  %1138 = fmul fast float %1132, %1134
  %1139 = fadd fast float %1138, %1137
  %1140 = fmul fast float %1139, 0x3F70101000000000
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 512
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1153, label %1145

; <label>:1145                                    ; preds = %1120
  %1146 = add i32 %33, 444
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = add i32 %1148, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1150, %dx.types.Handle %75, float %1040, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  br label %1153

; <label>:1153                                    ; preds = %1145, %1120
  %1154 = phi float [ %1152, %1145 ], [ 1.000000e+00, %1120 ]
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 33554432
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1265, label %1159

; <label>:1159                                    ; preds = %1153
  %1160 = add i32 %33, 240
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 65535
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = lshr i32 %1162, 16
  %1166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1165)  ; LegacyF16ToF32(value)
  %1167 = add i32 %33, 244
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 65535
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = lshr i32 %1173, 24
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F70101020000000
  %1177 = and i32 %1173, 255
  %1178 = uitofp i32 %1177 to float
  %1179 = fmul fast float %1178, 0x3F70101020000000
  %1180 = lshr i32 %1173, 8
  %1181 = and i32 %1180, 255
  %1182 = uitofp i32 %1181 to float
  %1183 = fmul fast float %1182, 0x3F70101020000000
  %1184 = lshr i32 %1173, 16
  %1185 = and i32 %1184, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = fmul fast float %1186, 0x3F70101020000000
  %1188 = add i32 %33, 236
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = lshr i32 %1190, 24
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F70101020000000
  %1194 = and i32 %1190, 255
  %1195 = uitofp i32 %1194 to float
  %1196 = fmul fast float %1195, 0x3F70101020000000
  %1197 = lshr i32 %1190, 8
  %1198 = and i32 %1197, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1199, 0x3F70101020000000
  %1201 = lshr i32 %1190, 16
  %1202 = and i32 %1201, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1203, 0x3F70101020000000
  %1205 = bitcast float %1129 to i32
  %1206 = ashr i32 %1205, 1
  %1207 = sub nsw i32 1597463174, %1206
  %1208 = bitcast i32 %1207 to float
  %1209 = fmul fast float %1129, 5.000000e-01
  %1210 = fmul fast float %1208, %1208
  %1211 = fmul fast float %1210, %1209
  %1212 = fsub fast float 1.500000e+00, %1211
  %1213 = fmul fast float %1208, %1129
  %1214 = fmul fast float %1213, %1212
  %1215 = bitcast float %1130 to i32
  %1216 = ashr i32 %1215, 1
  %1217 = sub nsw i32 1597463174, %1216
  %1218 = bitcast i32 %1217 to float
  %1219 = fmul fast float %1130, 5.000000e-01
  %1220 = fmul fast float %1218, %1218
  %1221 = fmul fast float %1220, %1219
  %1222 = fsub fast float 1.500000e+00, %1221
  %1223 = fmul fast float %1218, %1130
  %1224 = fmul fast float %1223, %1222
  %1225 = bitcast float %1131 to i32
  %1226 = ashr i32 %1225, 1
  %1227 = sub nsw i32 1597463174, %1226
  %1228 = bitcast i32 %1227 to float
  %1229 = fmul fast float %1131, 5.000000e-01
  %1230 = fmul fast float %1228, %1228
  %1231 = fmul fast float %1230, %1229
  %1232 = fsub fast float 1.500000e+00, %1231
  %1233 = fmul fast float %1228, %1131
  %1234 = fmul fast float %1233, %1232
  %1235 = fsub fast float %1214, %1196
  %1236 = fsub fast float %1224, %1200
  %1237 = fsub fast float %1234, %1204
  %1238 = fmul fast float %1235, %1164
  %1239 = fmul fast float %1236, %1166
  %1240 = fmul fast float %1237, %1171
  %1241 = fadd fast float %1238, %1179
  %1242 = fadd fast float %1239, %1183
  %1243 = fadd fast float %1240, %1187
  %1244 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  %1245 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1246 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  %1247 = fmul fast float %1244, %1244
  %1248 = fmul fast float %1245, %1245
  %1249 = fmul fast float %1246, %1246
  %1250 = fsub fast float %1247, %1129
  %1251 = fsub fast float %1248, %1130
  %1252 = fsub fast float %1249, %1131
  %1253 = fmul fast float %1250, %1154
  %1254 = fmul fast float %1251, %1154
  %1255 = fmul fast float %1252, %1154
  %1256 = fadd fast float %1253, %1129
  %1257 = fadd fast float %1254, %1130
  %1258 = fadd fast float %1255, %1131
  %1259 = fadd fast float %1176, %1140
  %1260 = fsub fast float %1259, %1193
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = fsub fast float %1261, %1140
  %1263 = fmul fast float %1262, %1154
  %1264 = fadd fast float %1263, %1140
  br label %1318

; <label>:1265                                    ; preds = %1153
  %1266 = and i32 %1156, 134217728
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1302, label %1268

; <label>:1268                                    ; preds = %1265
  %1269 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %1270 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %1271 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %1272 = fadd fast float %1269, -5.000000e-01
  %1273 = fadd fast float %1270, -5.000000e-01
  %1274 = fadd fast float %1271, -5.000000e-01
  %1275 = fmul fast float %1272, %1154
  %1276 = fmul fast float %1273, %1154
  %1277 = fmul fast float %1274, %1154
  %1278 = fadd fast float %1275, 5.000000e-01
  %1279 = fadd fast float %1276, 5.000000e-01
  %1280 = fadd fast float %1277, 5.000000e-01
  %1281 = call float @dx.op.unary.f32(i32 24, float %1129)  ; Sqrt(value)
  %1282 = call float @dx.op.unary.f32(i32 24, float %1130)  ; Sqrt(value)
  %1283 = call float @dx.op.unary.f32(i32 24, float %1131)  ; Sqrt(value)
  %1284 = fmul fast float %1278, 2.000000e+00
  %1285 = fsub fast float 1.000000e+00, %1284
  %1286 = fmul fast float %1285, %1281
  %1287 = fadd fast float %1286, %1284
  %1288 = fmul fast float %1287, %1281
  %1289 = fmul fast float %1279, 2.000000e+00
  %1290 = fsub fast float 1.000000e+00, %1289
  %1291 = fmul fast float %1290, %1282
  %1292 = fadd fast float %1291, %1289
  %1293 = fmul fast float %1292, %1282
  %1294 = fmul fast float %1280, 2.000000e+00
  %1295 = fsub fast float 1.000000e+00, %1294
  %1296 = fmul fast float %1295, %1283
  %1297 = fadd fast float %1296, %1294
  %1298 = fmul fast float %1297, %1283
  %1299 = fmul fast float %1288, %1288
  %1300 = fmul fast float %1293, %1293
  %1301 = fmul fast float %1298, %1298
  br label %1318

; <label>:1302                                    ; preds = %1265
  %1303 = fmul fast float %282, %282
  %1304 = fmul fast float %286, %286
  %1305 = fmul fast float %290, %290
  %1306 = fadd fast float %1303, -1.000000e+00
  %1307 = fadd fast float %1304, -1.000000e+00
  %1308 = fadd fast float %1305, -1.000000e+00
  %1309 = fmul fast float %1154, %1306
  %1310 = fmul fast float %1154, %1307
  %1311 = fmul fast float %1154, %1308
  %1312 = fadd fast float %1309, 1.000000e+00
  %1313 = fadd fast float %1310, 1.000000e+00
  %1314 = fadd fast float %1311, 1.000000e+00
  %1315 = fmul fast float %1312, %1129
  %1316 = fmul fast float %1313, %1130
  %1317 = fmul fast float %1314, %1131
  br label %1318

; <label>:1318                                    ; preds = %1302, %1268, %1159, %1115
  %1319 = phi float [ %1264, %1159 ], [ %1140, %1268 ], [ %1140, %1302 ], [ 0x3FA23C0BE0000000, %1115 ]
  %1320 = phi float [ %1256, %1159 ], [ %1299, %1268 ], [ %1315, %1302 ], [ 1.000000e+00, %1115 ]
  %1321 = phi float [ %1257, %1159 ], [ %1300, %1268 ], [ %1316, %1302 ], [ 1.000000e+00, %1115 ]
  %1322 = phi float [ %1258, %1159 ], [ %1301, %1268 ], [ %1317, %1302 ], [ 1.000000e+00, %1115 ]
  %1323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.i32 %1323, 1
  %1325 = and i32 %1324, 1
  %1326 = icmp ne i32 %1325, 0
  %1327 = add i32 %33, 356
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 32
  %1331 = icmp ne i32 %1330, 0
  %1332 = and i1 %1326, %1331
  %1333 = select i1 %1332, float 1.000000e+00, float %1320
  %1334 = select i1 %1332, float 0x3FD3333340000000, float %1321
  %1335 = select i1 %1332, float 0x3FD3333340000000, float %1322
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = and i32 %1337, 32
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1412, label %1340

; <label>:1340                                    ; preds = %1318
  %1341 = add i32 %33, 108
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = add i32 %33, 380
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %1346, 0
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1348, %dx.types.Handle %74, float %1040, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = extractvalue %dx.types.ResRet.f32 %1349, 3
  %1354 = and i32 %1343, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = lshr i32 %1343, 8
  %1357 = and i32 %1356, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = lshr i32 %1343, 16
  %1360 = and i32 %1359, 255
  %1361 = uitofp i32 %1360 to float
  %1362 = fmul fast float %1361, 0x3F70101000000000
  %1363 = fmul fast float %1350, %1355
  %1364 = fadd fast float %1363, %1358
  %1365 = fmul fast float %1364, 0x3F70101000000000
  %1366 = fadd fast float %1351, -5.000000e-01
  %1367 = fadd fast float %1353, -5.000000e-01
  %1368 = fmul fast float %1366, %1362
  %1369 = fmul fast float %1367, %1362
  %1370 = fadd fast float %1368, 5.000000e-01
  %1371 = fadd fast float %1369, 5.000000e-01
  %1372 = fmul fast float %1370, 2.000000e+00
  %1373 = fadd fast float %1372, -1.000000e+00
  %1374 = fmul fast float %1371, 2.000000e+00
  %1375 = fadd fast float %1374, -1.000000e+00
  %1376 = fadd fast float %1373, %1375
  %1377 = fmul fast float %1376, 5.000000e-01
  %1378 = fsub fast float %1373, %1375
  %1379 = fmul fast float %1378, 5.000000e-01
  %1380 = call float @dx.op.unary.f32(i32 6, float %1377)  ; FAbs(value)
  %1381 = fsub fast float 1.000000e+00, %1380
  %1382 = call float @dx.op.unary.f32(i32 6, float %1379)  ; FAbs(value)
  %1383 = fsub fast float %1381, %1382
  %1384 = call float @dx.op.dot3.f32(i32 55, float %1377, float %1379, float %1383, float %1377, float %1379, float %1383)  ; Dot3(ax,ay,az,bx,by,bz)
  %1385 = call float @dx.op.unary.f32(i32 25, float %1384)  ; Rsqrt(value)
  %1386 = fmul fast float %1377, %1385
  %1387 = fmul fast float %1379, %1385
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 67108864
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1408, label %1392

; <label>:1392                                    ; preds = %1340
  %1393 = add i32 %33, 296
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 65535
  %1397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1396)  ; LegacyF16ToF32(value)
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %1399, 65535
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = lshr i32 %1395, 16
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = fsub fast float %1365, %1403
  %1405 = fmul fast float %1404, %1397
  %1406 = fadd fast float %1405, %1401
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  br label %1408

; <label>:1408                                    ; preds = %1392, %1340
  %1409 = phi float [ %1407, %1392 ], [ %1365, %1340 ]
  %1410 = call float @dx.op.dot2.f32(i32 54, float %1386, float %1387, float %944, float %945)  ; Dot2(ax,ay,bx,by)
  %1411 = call float @dx.op.dot2.f32(i32 54, float %1386, float %1387, float %946, float %947)  ; Dot2(ax,ay,bx,by)
  br label %1412

; <label>:1412                                    ; preds = %1408, %1318
  %1413 = phi float [ %1409, %1408 ], [ 0x3FD6666660000000, %1318 ]
  %1414 = phi float [ %1410, %1408 ], [ 0.000000e+00, %1318 ]
  %1415 = phi float [ %1411, %1408 ], [ 0.000000e+00, %1318 ]
  %1416 = phi float [ %1352, %1408 ], [ 1.000000e+00, %1318 ]
  %1417 = add i32 %33, 176
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = lshr i32 %1419, 22
  %1421 = shl nuw nsw i32 %1420, 5
  %1422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1421)  ; LegacyF16ToF32(value)
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 64
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1460, label %1427

; <label>:1427                                    ; preds = %1412
  %1428 = add i32 %33, 396
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = add i32 %1430, 0
  %1432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 131072
  %1436 = icmp eq i32 %1435, 0
  %1437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1432, %dx.types.Handle %74, float %1040, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = fmul fast float %1438, %270
  %1442 = fmul fast float %1439, %273
  %1443 = fmul fast float %1440, %276
  br i1 %1436, label %1450, label %1444

; <label>:1444                                    ; preds = %1427
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = fmul fast float %1446, %1441
  %1448 = fmul fast float %1446, %1442
  %1449 = fmul fast float %1446, %1443
  br label %1450

; <label>:1450                                    ; preds = %1444, %1427
  %1451 = phi float [ %1447, %1444 ], [ %1441, %1427 ]
  %1452 = phi float [ %1448, %1444 ], [ %1442, %1427 ]
  %1453 = phi float [ %1449, %1444 ], [ %1443, %1427 ]
  %1454 = fmul fast float %1451, %1422
  %1455 = select i1 %211, float %1454, float %1451
  %1456 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1452, float %1453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = select i1 %211, float 0.000000e+00, float %1451
  %1458 = select i1 %211, float %1456, float %1452
  %1459 = select i1 %211, float 0.000000e+00, float %1453
  br label %1460

; <label>:1460                                    ; preds = %1450, %1412
  %1461 = phi float [ %1457, %1450 ], [ 0.000000e+00, %1412 ]
  %1462 = phi float [ %1458, %1450 ], [ 0.000000e+00, %1412 ]
  %1463 = phi float [ %1459, %1450 ], [ 0.000000e+00, %1412 ]
  %1464 = add i32 %33, 112
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = lshr i32 %1466, 8
  %1470 = and i32 %1469, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1333, float %1334, float %1335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = fmul fast float %1471, %1472
  %1474 = fadd fast float %1473, %1468
  %1475 = fmul fast float %1474, 0x3F70101020000000
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  br i1 %932, label %1477, label %1485

; <label>:1477                                    ; preds = %1460
  %1478 = fsub fast float 1.000000e+00, %1113
  %1479 = fmul fast float %1478, %920
  %1480 = fmul fast float %1478, %921
  %1481 = fmul fast float %1478, %922
  %1482 = fmul fast float %1478, %923
  %1483 = fmul fast float %1478, %924
  %1484 = fmul fast float %1478, %925
  br label %1485

; <label>:1485                                    ; preds = %1477, %1460
  %1486 = phi float [ %1479, %1477 ], [ %920, %1460 ]
  %1487 = phi float [ %1480, %1477 ], [ %921, %1460 ]
  %1488 = phi float [ %1481, %1477 ], [ %922, %1460 ]
  %1489 = phi float [ %1482, %1477 ], [ %923, %1460 ]
  %1490 = phi float [ %1483, %1477 ], [ %924, %1460 ]
  %1491 = phi float [ %1484, %1477 ], [ %925, %1460 ]
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 3
  %1495 = icmp eq i32 %1494, 3
  br i1 %1495, label %1574, label %1496

; <label>:1496                                    ; preds = %1485
  %1497 = and i32 %1493, 16
  %1498 = icmp ne i32 %1497, 0
  %1499 = select i1 %1498, float %1113, float 0.000000e+00
  %1500 = icmp eq i32 %1494, 0
  br i1 %1500, label %1501, label %1529

; <label>:1501                                    ; preds = %1496
  %1502 = and i32 %1493, 64
  %1503 = icmp ne i32 %1502, 0
  %1504 = select i1 %1503, float %1113, float 0.000000e+00
  %1505 = fsub fast float %1333, %1486
  %1506 = fsub fast float %1334, %1487
  %1507 = fsub fast float %1335, %1488
  %1508 = fmul fast float %1499, %1505
  %1509 = fmul fast float %1499, %1506
  %1510 = fmul fast float %1499, %1507
  %1511 = fadd fast float %1508, %1486
  %1512 = fadd fast float %1509, %1487
  %1513 = fadd fast float %1510, %1488
  %1514 = fsub fast float %1319, %926
  %1515 = fmul fast float %1499, %1514
  %1516 = fadd fast float %1515, %926
  %1517 = fsub fast float %1461, %1489
  %1518 = fsub fast float %1462, %1490
  %1519 = fsub fast float %1463, %1491
  %1520 = fmul fast float %1504, %1517
  %1521 = fmul fast float %1504, %1518
  %1522 = fmul fast float %1504, %1519
  %1523 = fadd fast float %1520, %1489
  %1524 = fadd fast float %1521, %1490
  %1525 = fadd fast float %1522, %1491
  %1526 = fsub fast float %1476, %930
  %1527 = fmul fast float %1499, %1526
  %1528 = fadd fast float %1527, %930
  br label %1574

; <label>:1529                                    ; preds = %1496
  %1530 = icmp eq i32 %1494, 1
  br i1 %1530, label %1531, label %1544

; <label>:1531                                    ; preds = %1529
  %1532 = fadd fast float %1333, -1.000000e+00
  %1533 = fadd fast float %1334, -1.000000e+00
  %1534 = fadd fast float %1335, -1.000000e+00
  %1535 = fmul fast float %1499, %1532
  %1536 = fmul fast float %1499, %1533
  %1537 = fmul fast float %1499, %1534
  %1538 = fadd fast float %1535, 1.000000e+00
  %1539 = fadd fast float %1536, 1.000000e+00
  %1540 = fadd fast float %1537, 1.000000e+00
  %1541 = fmul fast float %1538, %1486
  %1542 = fmul fast float %1539, %1487
  %1543 = fmul fast float %1540, %1488
  br label %1574

; <label>:1544                                    ; preds = %1529
  %1545 = icmp eq i32 %1494, 2
  br i1 %1545, label %1546, label %1574

; <label>:1546                                    ; preds = %1544
  %1547 = call float @dx.op.unary.f32(i32 24, float %1333)  ; Sqrt(value)
  %1548 = call float @dx.op.unary.f32(i32 24, float %1334)  ; Sqrt(value)
  %1549 = call float @dx.op.unary.f32(i32 24, float %1335)  ; Sqrt(value)
  %1550 = fadd fast float %1547, -5.000000e-01
  %1551 = fadd fast float %1548, -5.000000e-01
  %1552 = fadd fast float %1549, -5.000000e-01
  %1553 = fmul fast float %1550, %1499
  %1554 = fmul fast float %1551, %1499
  %1555 = fmul fast float %1552, %1499
  %1556 = fadd fast float %1553, 5.000000e-01
  %1557 = fadd fast float %1554, 5.000000e-01
  %1558 = fadd fast float %1555, 5.000000e-01
  %1559 = fmul fast float %1556, 2.000000e+00
  %1560 = fsub fast float 1.000000e+00, %1559
  %1561 = fmul fast float %1560, %1486
  %1562 = fadd fast float %1561, %1559
  %1563 = fmul fast float %1562, %1486
  %1564 = fmul fast float %1557, 2.000000e+00
  %1565 = fsub fast float 1.000000e+00, %1564
  %1566 = fmul fast float %1565, %1487
  %1567 = fadd fast float %1566, %1564
  %1568 = fmul fast float %1567, %1487
  %1569 = fmul fast float %1558, 2.000000e+00
  %1570 = fsub fast float 1.000000e+00, %1569
  %1571 = fmul fast float %1570, %1488
  %1572 = fadd fast float %1571, %1569
  %1573 = fmul fast float %1572, %1488
  br label %1574

; <label>:1574                                    ; preds = %1546, %1544, %1531, %1501, %1485
  %1575 = phi float [ %1486, %1485 ], [ %1563, %1546 ], [ %1486, %1544 ], [ %1541, %1531 ], [ %1511, %1501 ]
  %1576 = phi float [ %1487, %1485 ], [ %1568, %1546 ], [ %1487, %1544 ], [ %1542, %1531 ], [ %1512, %1501 ]
  %1577 = phi float [ %1488, %1485 ], [ %1573, %1546 ], [ %1488, %1544 ], [ %1543, %1531 ], [ %1513, %1501 ]
  %1578 = phi float [ %1489, %1485 ], [ %1489, %1546 ], [ %1489, %1544 ], [ %1489, %1531 ], [ %1523, %1501 ]
  %1579 = phi float [ %1490, %1485 ], [ %1490, %1546 ], [ %1490, %1544 ], [ %1490, %1531 ], [ %1524, %1501 ]
  %1580 = phi float [ %1491, %1485 ], [ %1491, %1546 ], [ %1491, %1544 ], [ %1491, %1531 ], [ %1525, %1501 ]
  %1581 = phi float [ %926, %1485 ], [ %926, %1546 ], [ %926, %1544 ], [ %926, %1531 ], [ %1516, %1501 ]
  %1582 = phi float [ %930, %1485 ], [ %930, %1546 ], [ %930, %1544 ], [ %930, %1531 ], [ %1528, %1501 ]
  %1583 = and i32 %1493, 12
  %1584 = icmp eq i32 %1583, 12
  br i1 %1584, label %1657, label %1585

; <label>:1585                                    ; preds = %1574
  %1586 = and i32 %1493, 2097184
  %1587 = icmp eq i32 %1586, 2097184
  %1588 = select i1 %1587, float %1113, float 0.000000e+00
  %1589 = and i32 %1493, 4194336
  %1590 = icmp eq i32 %1589, 4194336
  %1591 = select i1 %1590, float %1113, float 0.000000e+00
  %1592 = and i32 %1493, 8388640
  %1593 = icmp eq i32 %1592, 8388640
  %1594 = select i1 %1593, float %1113, float 0.000000e+00
  %1595 = icmp eq i32 %1583, 0
  br i1 %1595, label %1596, label %1609

; <label>:1596                                    ; preds = %1585
  %1597 = fsub fast float %1414, %918
  %1598 = fsub fast float %1415, %919
  %1599 = fmul fast float %1588, %1597
  %1600 = fmul fast float %1588, %1598
  %1601 = fadd fast float %1599, %918
  %1602 = fadd fast float %1600, %919
  %1603 = fsub fast float %1416, %929
  %1604 = fmul fast float %1591, %1603
  %1605 = fadd fast float %1604, %929
  %1606 = fsub fast float %1413, %928
  %1607 = fmul fast float %1594, %1606
  %1608 = fadd fast float %1607, %928
  br label %1657

; <label>:1609                                    ; preds = %1585
  %1610 = icmp eq i32 %1583, 4
  br i1 %1610, label %1611, label %1643

; <label>:1611                                    ; preds = %1609
  %1612 = fmul fast float %1588, %1414
  %1613 = fmul fast float %1588, %1415
  %1614 = fadd fast float %1612, %918
  %1615 = fadd fast float %1613, %919
  %1616 = call float @dx.op.binary.f32(i32 36, float %929, float %1416)  ; FMin(a,b)
  %1617 = fsub fast float %1616, %929
  %1618 = fmul fast float %1617, %1591
  %1619 = fadd fast float %1618, %929
  %1620 = fadd fast float %1413, %928
  %1621 = fmul fast float %1620, 0x3FF337FAE0000000
  %1622 = fmul fast float %928, %928
  %1623 = fmul fast float %1413, %1413
  %1624 = fadd fast float %1623, %1622
  %1625 = fmul fast float %1624, 0x3FE5152B00000000
  %1626 = fmul fast float %928, 0xBFCC1F85E0000000
  %1627 = fmul fast float %1626, %1413
  %1628 = fadd fast float %1627, 0xBFE1363700000000
  %1629 = fadd fast float %1628, %1621
  %1630 = fsub fast float %1629, %1625
  %1631 = fmul fast float %1620, 0x3FBA6F0D00000000
  %1632 = fmul fast float %1624, 0x3FD0432880000000
  %1633 = fmul fast float %928, 0xBFEF110800000000
  %1634 = fmul fast float %1633, %1413
  %1635 = fadd fast float %1634, 1.000000e+00
  %1636 = fsub fast float %1635, %1631
  %1637 = fadd fast float %1636, %1632
  %1638 = fdiv fast float %1630, %1637
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = fsub fast float %1639, %928
  %1641 = fmul fast float %1640, %1594
  %1642 = fadd fast float %1641, %928
  br label %1657

; <label>:1643                                    ; preds = %1609
  %1644 = icmp eq i32 %1583, 8
  br i1 %1644, label %1645, label %1657

; <label>:1645                                    ; preds = %1643
  %1646 = fmul fast float %1588, %1414
  %1647 = fmul fast float %1588, %1415
  %1648 = fadd fast float %1646, %918
  %1649 = fadd fast float %1647, %919
  %1650 = call float @dx.op.binary.f32(i32 36, float %929, float %1416)  ; FMin(a,b)
  %1651 = fsub fast float %1650, %929
  %1652 = fmul fast float %1651, %1591
  %1653 = fadd fast float %1652, %929
  %1654 = fsub fast float %1413, %928
  %1655 = fmul fast float %1594, %1654
  %1656 = fadd fast float %1655, %928
  br label %1657

; <label>:1657                                    ; preds = %1645, %1643, %1611, %1596, %1574, %1112, %931, %917
  %1658 = phi float [ %918, %1574 ], [ %918, %1112 ], [ %918, %917 ], [ %1648, %1645 ], [ %918, %1643 ], [ %1614, %1611 ], [ %1601, %1596 ], [ %918, %931 ]
  %1659 = phi float [ %919, %1574 ], [ %919, %1112 ], [ %919, %917 ], [ %1649, %1645 ], [ %919, %1643 ], [ %1615, %1611 ], [ %1602, %1596 ], [ %919, %931 ]
  %1660 = phi float [ %1575, %1574 ], [ %920, %1112 ], [ %920, %917 ], [ %1575, %1645 ], [ %1575, %1643 ], [ %1575, %1611 ], [ %1575, %1596 ], [ %920, %931 ]
  %1661 = phi float [ %1576, %1574 ], [ %921, %1112 ], [ %921, %917 ], [ %1576, %1645 ], [ %1576, %1643 ], [ %1576, %1611 ], [ %1576, %1596 ], [ %921, %931 ]
  %1662 = phi float [ %1577, %1574 ], [ %922, %1112 ], [ %922, %917 ], [ %1577, %1645 ], [ %1577, %1643 ], [ %1577, %1611 ], [ %1577, %1596 ], [ %922, %931 ]
  %1663 = phi float [ %1578, %1574 ], [ %923, %1112 ], [ %923, %917 ], [ %1578, %1645 ], [ %1578, %1643 ], [ %1578, %1611 ], [ %1578, %1596 ], [ %923, %931 ]
  %1664 = phi float [ %1579, %1574 ], [ %924, %1112 ], [ %924, %917 ], [ %1579, %1645 ], [ %1579, %1643 ], [ %1579, %1611 ], [ %1579, %1596 ], [ %924, %931 ]
  %1665 = phi float [ %1580, %1574 ], [ %925, %1112 ], [ %925, %917 ], [ %1580, %1645 ], [ %1580, %1643 ], [ %1580, %1611 ], [ %1580, %1596 ], [ %925, %931 ]
  %1666 = phi float [ %1581, %1574 ], [ %926, %1112 ], [ %926, %917 ], [ %1581, %1645 ], [ %1581, %1643 ], [ %1581, %1611 ], [ %1581, %1596 ], [ %926, %931 ]
  %1667 = phi float [ %928, %1574 ], [ %928, %1112 ], [ %928, %917 ], [ %1656, %1645 ], [ %928, %1643 ], [ %1642, %1611 ], [ %1608, %1596 ], [ %928, %931 ]
  %1668 = phi float [ %929, %1574 ], [ %929, %1112 ], [ %929, %917 ], [ %1653, %1645 ], [ %929, %1643 ], [ %1619, %1611 ], [ %1605, %1596 ], [ %929, %931 ]
  %1669 = phi float [ %1582, %1574 ], [ %930, %1112 ], [ %930, %917 ], [ %1582, %1645 ], [ %1582, %1643 ], [ %1582, %1611 ], [ %1582, %1596 ], [ %930, %931 ]
  br i1 %397, label %2396, label %1670

; <label>:1670                                    ; preds = %1657
  %1671 = icmp ult i32 %450, 3
  %1672 = add i32 %33, 56
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = add i32 %33, 60
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = or i32 %1677, %1674
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %2396, label %1680

; <label>:1680                                    ; preds = %1670
  %1681 = and i32 %1674, 262144
  %1682 = icmp ne i32 %1681, 0
  %1683 = select i1 %1682, float %39, float 1.000000e+00
  %1684 = select i1 %1682, float %40, float 0.000000e+00
  %1685 = select i1 %1682, float %41, float 0.000000e+00
  %1686 = select i1 %1682, float %42, float 1.000000e+00
  %1687 = select i1 %1682, float %43, float %66
  %1688 = select i1 %1682, float %44, float %67
  %1689 = add i32 %33, 316
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = lshr i32 %1691, 16
  %1693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1692)  ; LegacyF16ToF32(value)
  %1694 = fmul fast float %1693, 0x3F50624DE0000000
  %1695 = add i32 %33, 120
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = lshr i32 %1697, 16
  %1699 = and i32 %1698, 255
  %1700 = lshr i32 %1697, 24
  %1701 = add i32 %33, 324
  %1702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.i32 %1702, 0
  %1704 = and i32 %1703, 65535
  %1705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1704)  ; LegacyF16ToF32(value)
  %1706 = lshr i32 %1703, 16
  %1707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1706)  ; LegacyF16ToF32(value)
  %1708 = add i32 %33, 64
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = lshr i32 %1710, 22
  %1712 = shl nuw nsw i32 %1711, 5
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = shl i32 %1710, 4
  %1715 = and i32 %1714, 32752
  %1716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1715)  ; LegacyF16ToF32(value)
  %1717 = lshr i32 %1710, 7
  %1718 = and i32 %1717, 32752
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 3
  %1722 = fmul fast float %1721, 1.000000e+03
  %1723 = fmul fast float %347, %1722
  %1724 = call float @dx.op.unary.f32(i32 22, float %1723)  ; Frc(value)
  %1725 = fadd fast float %1724, %337
  %1726 = fmul fast float %348, %1722
  %1727 = call float @dx.op.unary.f32(i32 22, float %1726)  ; Frc(value)
  %1728 = fadd fast float %1727, %339
  %1729 = fmul fast float %1694, %1722
  %1730 = call float @dx.op.unary.f32(i32 22, float %1729)  ; Frc(value)
  %1731 = fmul fast float %1730, 0x401921FB60000000
  %1732 = fadd fast float %1731, %1713
  %1733 = call float @dx.op.unary.f32(i32 13, float %1732)  ; Sin(value)
  %1734 = call float @dx.op.unary.f32(i32 12, float %1732)  ; Cos(value)
  %1735 = fsub fast float -0.000000e+00, %1733
  %1736 = fadd fast float %1687, -5.000000e-01
  %1737 = fadd fast float %1688, -5.000000e-01
  %1738 = fmul fast float %1705, %1736
  %1739 = fmul fast float %1707, %1737
  %1740 = fadd fast float %1738, 5.000000e-01
  %1741 = fadd fast float %1739, 5.000000e-01
  %1742 = fmul fast float %1716, %1740
  %1743 = fmul fast float %1719, %1741
  %1744 = fmul fast float %1734, %1742
  %1745 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1743, float %1744)  ; FMad(a,b,c)
  %1746 = fmul fast float %1733, %1742
  %1747 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %1743, float %1746)  ; FMad(a,b,c)
  %1748 = fadd fast float %1725, %1745
  %1749 = fadd fast float %1728, %1747
  %1750 = icmp ugt i32 %1699, 1
  %1751 = icmp ugt i32 %1697, 33554431
  %1752 = or i1 %1751, %1750
  br i1 %1752, label %1753, label %1778

; <label>:1753                                    ; preds = %1680
  %1754 = add i32 %33, 260
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = lshr i32 %1756, 16
  %1758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1757)  ; LegacyF16ToF32(value)
  %1759 = fmul fast float %1721, %1758
  %1760 = call float @dx.op.unary.f32(i32 22, float %1759)  ; Frc(value)
  %1761 = mul nuw nsw i32 %1699, %1700
  %1762 = uitofp i32 %1761 to float
  %1763 = fmul fast float %1760, %1762
  %1764 = call float @dx.op.unary.f32(i32 27, float %1763)  ; Round_ni(value)
  %1765 = fptoui float %1764 to i32
  %1766 = urem i32 %1765, %1699
  %1767 = udiv i32 %1765, %1700
  %1768 = call float @dx.op.unary.f32(i32 22, float %1748)  ; Frc(value)
  %1769 = call float @dx.op.unary.f32(i32 22, float %1749)  ; Frc(value)
  %1770 = uitofp i32 %1766 to float
  %1771 = uitofp i32 %1767 to float
  %1772 = fadd fast float %1768, %1770
  %1773 = fadd fast float %1769, %1771
  %1774 = uitofp i32 %1699 to float
  %1775 = uitofp i32 %1700 to float
  %1776 = fdiv fast float %1772, %1774
  %1777 = fdiv fast float %1773, %1775
  br label %1778

; <label>:1778                                    ; preds = %1753, %1680
  %1779 = phi float [ %1776, %1753 ], [ %1748, %1680 ]
  %1780 = phi float [ %1777, %1753 ], [ %1749, %1680 ]
  %1781 = and i32 %1674, 256
  %1782 = icmp eq i32 %1781, 0
  br i1 %1782, label %1829, label %1783

; <label>:1783                                    ; preds = %1778
  %1784 = add i32 %33, 432
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = add i32 %1786, 0
  %1788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1789 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1788, %dx.types.Handle %75, float %1779, float %1780, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1790 = extractvalue %dx.types.ResRet.f32 %1789, 0
  %1791 = add i32 %33, 132
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = shl i32 %1793, 4
  %1795 = and i32 %1794, 32752
  %1796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1795)  ; LegacyF16ToF32(value)
  %1797 = lshr i32 %1793, 7
  %1798 = and i32 %1797, 32752
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = fsub fast float 1.000000e+00, %446
  %1801 = call float @dx.op.binary.f32(i32 35, float %1800, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1802 = bitcast float %446 to i32
  %1803 = sitofp i32 %1802 to float
  %1804 = fadd fast float %1803, 0xC1CFBF8940000000
  %1805 = fmul fast float %1799, %1804
  %1806 = fadd fast float %1805, 0x41CFBF8940000000
  %1807 = fptosi float %1806 to i32
  %1808 = bitcast i32 %1807 to float
  %1809 = bitcast float %1801 to i32
  %1810 = sitofp i32 %1809 to float
  %1811 = fadd fast float %1810, 0xC1CFBF8940000000
  %1812 = fmul fast float %1811, %1799
  %1813 = fadd fast float %1812, 0x41CFBF8940000000
  %1814 = fptosi float %1813 to i32
  %1815 = bitcast i32 %1814 to float
  %1816 = fmul fast float %1808, %1796
  %1817 = fmul fast float %1815, %1796
  %1818 = fsub fast float %1801, %1816
  %1819 = fadd fast float %1817, %1801
  %1820 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  %1821 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  %1822 = fsub fast float %1790, %1820
  %1823 = fsub fast float %1821, %1820
  %1824 = bitcast float %1823 to i32
  %1825 = sub nsw i32 2129859010, %1824
  %1826 = bitcast i32 %1825 to float
  %1827 = fmul fast float %1826, %1822
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  br label %1829

; <label>:1829                                    ; preds = %1783, %1778
  %1830 = phi float [ %1828, %1783 ], [ %446, %1778 ]
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 128
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1851, label %1835

; <label>:1835                                    ; preds = %1829
  %1836 = add i32 %33, 416
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = add i32 %1838, 0
  %1840 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1839, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1841 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1840, %dx.types.Handle %75, float %1779, float %1780, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = and i32 %1844, 524288
  %1846 = icmp ne i32 %1845, 0
  %1847 = fcmp fast ogt float %1842, 0x3FE0101020000000
  %1848 = select i1 %1847, float 1.000000e+00, float 0.000000e+00
  %1849 = select i1 %1846, float %1848, float %1842
  %1850 = fmul fast float %1849, %1830
  br label %1851

; <label>:1851                                    ; preds = %1835, %1829
  %1852 = phi float [ %1850, %1835 ], [ %1830, %1829 ]
  %1853 = fcmp fast ult float %1852, 0x3F70101020000000
  br i1 %1853, label %2396, label %1854

; <label>:1854                                    ; preds = %1851
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = and i32 %1856, 16
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %2057, label %1859

; <label>:1859                                    ; preds = %1854
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = add i32 %33, 368
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = add i32 %1864, 0
  %1866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1866, %dx.types.Handle %74, float %1779, float %1780, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1868 = extractvalue %dx.types.ResRet.f32 %1867, 0
  %1869 = extractvalue %dx.types.ResRet.f32 %1867, 1
  %1870 = extractvalue %dx.types.ResRet.f32 %1867, 2
  %1871 = extractvalue %dx.types.ResRet.f32 %1867, 3
  %1872 = and i32 %1861, 255
  %1873 = uitofp i32 %1872 to float
  %1874 = lshr i32 %1861, 8
  %1875 = and i32 %1874, 255
  %1876 = uitofp i32 %1875 to float
  %1877 = fmul fast float %1871, %1873
  %1878 = fadd fast float %1877, %1876
  %1879 = fmul fast float %1878, 0x3F70101000000000
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = and i32 %1881, 512
  %1883 = icmp eq i32 %1882, 0
  br i1 %1883, label %1892, label %1884

; <label>:1884                                    ; preds = %1859
  %1885 = add i32 %33, 448
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = add i32 %1887, 0
  %1889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1888, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1890 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1889, %dx.types.Handle %75, float %1779, float %1780, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  br label %1892

; <label>:1892                                    ; preds = %1884, %1859
  %1893 = phi float [ %1891, %1884 ], [ 1.000000e+00, %1859 ]
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = and i32 %1895, 33554432
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %2004, label %1898

; <label>:1898                                    ; preds = %1892
  %1899 = add i32 %33, 256
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = and i32 %1901, 65535
  %1903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1902)  ; LegacyF16ToF32(value)
  %1904 = lshr i32 %1901, 16
  %1905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1904)  ; LegacyF16ToF32(value)
  %1906 = add i32 %33, 260
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = and i32 %1908, 65535
  %1910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1909)  ; LegacyF16ToF32(value)
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = lshr i32 %1912, 24
  %1914 = uitofp i32 %1913 to float
  %1915 = fmul fast float %1914, 0x3F70101020000000
  %1916 = and i32 %1912, 255
  %1917 = uitofp i32 %1916 to float
  %1918 = fmul fast float %1917, 0x3F70101020000000
  %1919 = lshr i32 %1912, 8
  %1920 = and i32 %1919, 255
  %1921 = uitofp i32 %1920 to float
  %1922 = fmul fast float %1921, 0x3F70101020000000
  %1923 = lshr i32 %1912, 16
  %1924 = and i32 %1923, 255
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1925, 0x3F70101020000000
  %1927 = add i32 %33, 252
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = lshr i32 %1929, 24
  %1931 = uitofp i32 %1930 to float
  %1932 = fmul fast float %1931, 0x3F70101020000000
  %1933 = and i32 %1929, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = fmul fast float %1934, 0x3F70101020000000
  %1936 = lshr i32 %1929, 8
  %1937 = and i32 %1936, 255
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1938, 0x3F70101020000000
  %1940 = lshr i32 %1929, 16
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1942, 0x3F70101020000000
  %1944 = bitcast float %1868 to i32
  %1945 = ashr i32 %1944, 1
  %1946 = sub nsw i32 1597463174, %1945
  %1947 = bitcast i32 %1946 to float
  %1948 = fmul fast float %1868, 5.000000e-01
  %1949 = fmul fast float %1947, %1947
  %1950 = fmul fast float %1949, %1948
  %1951 = fsub fast float 1.500000e+00, %1950
  %1952 = fmul fast float %1947, %1868
  %1953 = fmul fast float %1952, %1951
  %1954 = bitcast float %1869 to i32
  %1955 = ashr i32 %1954, 1
  %1956 = sub nsw i32 1597463174, %1955
  %1957 = bitcast i32 %1956 to float
  %1958 = fmul fast float %1869, 5.000000e-01
  %1959 = fmul fast float %1957, %1957
  %1960 = fmul fast float %1959, %1958
  %1961 = fsub fast float 1.500000e+00, %1960
  %1962 = fmul fast float %1957, %1869
  %1963 = fmul fast float %1962, %1961
  %1964 = bitcast float %1870 to i32
  %1965 = ashr i32 %1964, 1
  %1966 = sub nsw i32 1597463174, %1965
  %1967 = bitcast i32 %1966 to float
  %1968 = fmul fast float %1870, 5.000000e-01
  %1969 = fmul fast float %1967, %1967
  %1970 = fmul fast float %1969, %1968
  %1971 = fsub fast float 1.500000e+00, %1970
  %1972 = fmul fast float %1967, %1870
  %1973 = fmul fast float %1972, %1971
  %1974 = fsub fast float %1953, %1935
  %1975 = fsub fast float %1963, %1939
  %1976 = fsub fast float %1973, %1943
  %1977 = fmul fast float %1974, %1903
  %1978 = fmul fast float %1975, %1905
  %1979 = fmul fast float %1976, %1910
  %1980 = fadd fast float %1977, %1918
  %1981 = fadd fast float %1978, %1922
  %1982 = fadd fast float %1979, %1926
  %1983 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1984 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1985 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1986 = fmul fast float %1983, %1983
  %1987 = fmul fast float %1984, %1984
  %1988 = fmul fast float %1985, %1985
  %1989 = fsub fast float %1986, %1868
  %1990 = fsub fast float %1987, %1869
  %1991 = fsub fast float %1988, %1870
  %1992 = fmul fast float %1989, %1893
  %1993 = fmul fast float %1990, %1893
  %1994 = fmul fast float %1991, %1893
  %1995 = fadd fast float %1992, %1868
  %1996 = fadd fast float %1993, %1869
  %1997 = fadd fast float %1994, %1870
  %1998 = fadd fast float %1915, %1879
  %1999 = fsub fast float %1998, %1932
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = fsub fast float %2000, %1879
  %2002 = fmul fast float %2001, %1893
  %2003 = fadd fast float %2002, %1879
  br label %2057

; <label>:2004                                    ; preds = %1892
  %2005 = and i32 %1895, 134217728
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2041, label %2007

; <label>:2007                                    ; preds = %2004
  %2008 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %2009 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %2010 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %2011 = fadd fast float %2008, -5.000000e-01
  %2012 = fadd fast float %2009, -5.000000e-01
  %2013 = fadd fast float %2010, -5.000000e-01
  %2014 = fmul fast float %2011, %1893
  %2015 = fmul fast float %2012, %1893
  %2016 = fmul fast float %2013, %1893
  %2017 = fadd fast float %2014, 5.000000e-01
  %2018 = fadd fast float %2015, 5.000000e-01
  %2019 = fadd fast float %2016, 5.000000e-01
  %2020 = call float @dx.op.unary.f32(i32 24, float %1868)  ; Sqrt(value)
  %2021 = call float @dx.op.unary.f32(i32 24, float %1869)  ; Sqrt(value)
  %2022 = call float @dx.op.unary.f32(i32 24, float %1870)  ; Sqrt(value)
  %2023 = fmul fast float %2017, 2.000000e+00
  %2024 = fsub fast float 1.000000e+00, %2023
  %2025 = fmul fast float %2024, %2020
  %2026 = fadd fast float %2025, %2023
  %2027 = fmul fast float %2026, %2020
  %2028 = fmul fast float %2018, 2.000000e+00
  %2029 = fsub fast float 1.000000e+00, %2028
  %2030 = fmul fast float %2029, %2021
  %2031 = fadd fast float %2030, %2028
  %2032 = fmul fast float %2031, %2021
  %2033 = fmul fast float %2019, 2.000000e+00
  %2034 = fsub fast float 1.000000e+00, %2033
  %2035 = fmul fast float %2034, %2022
  %2036 = fadd fast float %2035, %2033
  %2037 = fmul fast float %2036, %2022
  %2038 = fmul fast float %2027, %2027
  %2039 = fmul fast float %2032, %2032
  %2040 = fmul fast float %2037, %2037
  br label %2057

; <label>:2041                                    ; preds = %2004
  %2042 = fmul fast float %324, %324
  %2043 = fmul fast float %328, %328
  %2044 = fmul fast float %332, %332
  %2045 = fadd fast float %2042, -1.000000e+00
  %2046 = fadd fast float %2043, -1.000000e+00
  %2047 = fadd fast float %2044, -1.000000e+00
  %2048 = fmul fast float %1893, %2045
  %2049 = fmul fast float %1893, %2046
  %2050 = fmul fast float %1893, %2047
  %2051 = fadd fast float %2048, 1.000000e+00
  %2052 = fadd fast float %2049, 1.000000e+00
  %2053 = fadd fast float %2050, 1.000000e+00
  %2054 = fmul fast float %2051, %1868
  %2055 = fmul fast float %2052, %1869
  %2056 = fmul fast float %2053, %1870
  br label %2057

; <label>:2057                                    ; preds = %2041, %2007, %1898, %1854
  %2058 = phi float [ %2003, %1898 ], [ %1879, %2007 ], [ %1879, %2041 ], [ 0x3FA23C0BE0000000, %1854 ]
  %2059 = phi float [ %1995, %1898 ], [ %2038, %2007 ], [ %2054, %2041 ], [ 1.000000e+00, %1854 ]
  %2060 = phi float [ %1996, %1898 ], [ %2039, %2007 ], [ %2055, %2041 ], [ 1.000000e+00, %1854 ]
  %2061 = phi float [ %1997, %1898 ], [ %2040, %2007 ], [ %2056, %2041 ], [ 1.000000e+00, %1854 ]
  %2062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.i32 %2062, 1
  %2064 = and i32 %2063, 1
  %2065 = icmp ne i32 %2064, 0
  %2066 = add i32 %33, 356
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = and i32 %2068, 32
  %2070 = icmp ne i32 %2069, 0
  %2071 = and i1 %2065, %2070
  %2072 = select i1 %2071, float 1.000000e+00, float %2059
  %2073 = select i1 %2071, float 0x3FD3333340000000, float %2060
  %2074 = select i1 %2071, float 0x3FD3333340000000, float %2061
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 32
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2151, label %2079

; <label>:2079                                    ; preds = %2057
  %2080 = add i32 %33, 124
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = add i32 %33, 384
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = add i32 %2085, 0
  %2087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2087, %dx.types.Handle %74, float %1779, float %1780, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2089 = extractvalue %dx.types.ResRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.ResRet.f32 %2088, 1
  %2091 = extractvalue %dx.types.ResRet.f32 %2088, 2
  %2092 = extractvalue %dx.types.ResRet.f32 %2088, 3
  %2093 = and i32 %2082, 255
  %2094 = uitofp i32 %2093 to float
  %2095 = lshr i32 %2082, 8
  %2096 = and i32 %2095, 255
  %2097 = uitofp i32 %2096 to float
  %2098 = lshr i32 %2082, 16
  %2099 = and i32 %2098, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101000000000
  %2102 = fmul fast float %2089, %2094
  %2103 = fadd fast float %2102, %2097
  %2104 = fmul fast float %2103, 0x3F70101000000000
  %2105 = fadd fast float %2090, -5.000000e-01
  %2106 = fadd fast float %2092, -5.000000e-01
  %2107 = fmul fast float %2105, %2101
  %2108 = fmul fast float %2106, %2101
  %2109 = fadd fast float %2107, 5.000000e-01
  %2110 = fadd fast float %2108, 5.000000e-01
  %2111 = fmul fast float %2109, 2.000000e+00
  %2112 = fadd fast float %2111, -1.000000e+00
  %2113 = fmul fast float %2110, 2.000000e+00
  %2114 = fadd fast float %2113, -1.000000e+00
  %2115 = fadd fast float %2112, %2114
  %2116 = fmul fast float %2115, 5.000000e-01
  %2117 = fsub fast float %2112, %2114
  %2118 = fmul fast float %2117, 5.000000e-01
  %2119 = call float @dx.op.unary.f32(i32 6, float %2116)  ; FAbs(value)
  %2120 = fsub fast float 1.000000e+00, %2119
  %2121 = call float @dx.op.unary.f32(i32 6, float %2118)  ; FAbs(value)
  %2122 = fsub fast float %2120, %2121
  %2123 = call float @dx.op.dot3.f32(i32 55, float %2116, float %2118, float %2122, float %2116, float %2118, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2124 = call float @dx.op.unary.f32(i32 25, float %2123)  ; Rsqrt(value)
  %2125 = fmul fast float %2116, %2124
  %2126 = fmul fast float %2118, %2124
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = and i32 %2128, 67108864
  %2130 = icmp eq i32 %2129, 0
  br i1 %2130, label %2147, label %2131

; <label>:2131                                    ; preds = %2079
  %2132 = add i32 %33, 312
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = and i32 %2134, 65535
  %2136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2135)  ; LegacyF16ToF32(value)
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = and i32 %2138, 65535
  %2140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2139)  ; LegacyF16ToF32(value)
  %2141 = lshr i32 %2134, 16
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = fsub fast float %2104, %2142
  %2144 = fmul fast float %2143, %2136
  %2145 = fadd fast float %2144, %2140
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  br label %2147

; <label>:2147                                    ; preds = %2131, %2079
  %2148 = phi float [ %2146, %2131 ], [ %2104, %2079 ]
  %2149 = call float @dx.op.dot2.f32(i32 54, float %2125, float %2126, float %1683, float %1684)  ; Dot2(ax,ay,bx,by)
  %2150 = call float @dx.op.dot2.f32(i32 54, float %2125, float %2126, float %1685, float %1686)  ; Dot2(ax,ay,bx,by)
  br label %2151

; <label>:2151                                    ; preds = %2147, %2057
  %2152 = phi float [ %2148, %2147 ], [ 0x3FD6666660000000, %2057 ]
  %2153 = phi float [ %2149, %2147 ], [ 0.000000e+00, %2057 ]
  %2154 = phi float [ %2150, %2147 ], [ 0.000000e+00, %2057 ]
  %2155 = phi float [ %2091, %2147 ], [ 1.000000e+00, %2057 ]
  %2156 = add i32 %33, 192
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = lshr i32 %2158, 22
  %2160 = shl nuw nsw i32 %2159, 5
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, 64
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2199, label %2166

; <label>:2166                                    ; preds = %2151
  %2167 = add i32 %33, 400
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = add i32 %2169, 0
  %2171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = and i32 %2173, 131072
  %2175 = icmp eq i32 %2174, 0
  %2176 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2171, %dx.types.Handle %74, float %1779, float %1780, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.ResRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.ResRet.f32 %2176, 2
  %2180 = fmul fast float %2177, %312
  %2181 = fmul fast float %2178, %315
  %2182 = fmul fast float %2179, %318
  br i1 %2175, label %2189, label %2183

; <label>:2183                                    ; preds = %2166
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2186 = fmul fast float %2185, %2180
  %2187 = fmul fast float %2185, %2181
  %2188 = fmul fast float %2185, %2182
  br label %2189

; <label>:2189                                    ; preds = %2183, %2166
  %2190 = phi float [ %2186, %2183 ], [ %2180, %2166 ]
  %2191 = phi float [ %2187, %2183 ], [ %2181, %2166 ]
  %2192 = phi float [ %2188, %2183 ], [ %2182, %2166 ]
  %2193 = fmul fast float %2190, %2161
  %2194 = select i1 %211, float %2193, float %2190
  %2195 = call float @dx.op.dot3.f32(i32 55, float %2194, float %2191, float %2192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2196 = select i1 %211, float 0.000000e+00, float %2190
  %2197 = select i1 %211, float %2195, float %2191
  %2198 = select i1 %211, float 0.000000e+00, float %2192
  br label %2199

; <label>:2199                                    ; preds = %2189, %2151
  %2200 = phi float [ %2196, %2189 ], [ 0.000000e+00, %2151 ]
  %2201 = phi float [ %2197, %2189 ], [ 0.000000e+00, %2151 ]
  %2202 = phi float [ %2198, %2189 ], [ 0.000000e+00, %2151 ]
  %2203 = add i32 %33, 128
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = lshr i32 %2205, 8
  %2209 = and i32 %2208, 255
  %2210 = uitofp i32 %2209 to float
  %2211 = call float @dx.op.dot3.f32(i32 55, float %2072, float %2073, float %2074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2212 = fmul fast float %2210, %2211
  %2213 = fadd fast float %2212, %2207
  %2214 = fmul fast float %2213, 0x3F70101020000000
  %2215 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  br i1 %1671, label %2216, label %2224

; <label>:2216                                    ; preds = %2199
  %2217 = fsub fast float 1.000000e+00, %1852
  %2218 = fmul fast float %2217, %1660
  %2219 = fmul fast float %2217, %1661
  %2220 = fmul fast float %2217, %1662
  %2221 = fmul fast float %2217, %1663
  %2222 = fmul fast float %2217, %1664
  %2223 = fmul fast float %2217, %1665
  br label %2224

; <label>:2224                                    ; preds = %2216, %2199
  %2225 = phi float [ %2218, %2216 ], [ %1660, %2199 ]
  %2226 = phi float [ %2219, %2216 ], [ %1661, %2199 ]
  %2227 = phi float [ %2220, %2216 ], [ %1662, %2199 ]
  %2228 = phi float [ %2221, %2216 ], [ %1663, %2199 ]
  %2229 = phi float [ %2222, %2216 ], [ %1664, %2199 ]
  %2230 = phi float [ %2223, %2216 ], [ %1665, %2199 ]
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 3
  %2234 = icmp eq i32 %2233, 3
  br i1 %2234, label %2313, label %2235

; <label>:2235                                    ; preds = %2224
  %2236 = and i32 %2232, 16
  %2237 = icmp ne i32 %2236, 0
  %2238 = select i1 %2237, float %1852, float 0.000000e+00
  %2239 = icmp eq i32 %2233, 0
  br i1 %2239, label %2240, label %2268

; <label>:2240                                    ; preds = %2235
  %2241 = and i32 %2232, 64
  %2242 = icmp ne i32 %2241, 0
  %2243 = select i1 %2242, float %1852, float 0.000000e+00
  %2244 = fsub fast float %2072, %2225
  %2245 = fsub fast float %2073, %2226
  %2246 = fsub fast float %2074, %2227
  %2247 = fmul fast float %2238, %2244
  %2248 = fmul fast float %2238, %2245
  %2249 = fmul fast float %2238, %2246
  %2250 = fadd fast float %2247, %2225
  %2251 = fadd fast float %2248, %2226
  %2252 = fadd fast float %2249, %2227
  %2253 = fsub fast float %2058, %1666
  %2254 = fmul fast float %2238, %2253
  %2255 = fadd fast float %2254, %1666
  %2256 = fsub fast float %2200, %2228
  %2257 = fsub fast float %2201, %2229
  %2258 = fsub fast float %2202, %2230
  %2259 = fmul fast float %2243, %2256
  %2260 = fmul fast float %2243, %2257
  %2261 = fmul fast float %2243, %2258
  %2262 = fadd fast float %2259, %2228
  %2263 = fadd fast float %2260, %2229
  %2264 = fadd fast float %2261, %2230
  %2265 = fsub fast float %2215, %1669
  %2266 = fmul fast float %2238, %2265
  %2267 = fadd fast float %2266, %1669
  br label %2313

; <label>:2268                                    ; preds = %2235
  %2269 = icmp eq i32 %2233, 1
  br i1 %2269, label %2270, label %2283

; <label>:2270                                    ; preds = %2268
  %2271 = fadd fast float %2072, -1.000000e+00
  %2272 = fadd fast float %2073, -1.000000e+00
  %2273 = fadd fast float %2074, -1.000000e+00
  %2274 = fmul fast float %2238, %2271
  %2275 = fmul fast float %2238, %2272
  %2276 = fmul fast float %2238, %2273
  %2277 = fadd fast float %2274, 1.000000e+00
  %2278 = fadd fast float %2275, 1.000000e+00
  %2279 = fadd fast float %2276, 1.000000e+00
  %2280 = fmul fast float %2277, %2225
  %2281 = fmul fast float %2278, %2226
  %2282 = fmul fast float %2279, %2227
  br label %2313

; <label>:2283                                    ; preds = %2268
  %2284 = icmp eq i32 %2233, 2
  br i1 %2284, label %2285, label %2313

; <label>:2285                                    ; preds = %2283
  %2286 = call float @dx.op.unary.f32(i32 24, float %2072)  ; Sqrt(value)
  %2287 = call float @dx.op.unary.f32(i32 24, float %2073)  ; Sqrt(value)
  %2288 = call float @dx.op.unary.f32(i32 24, float %2074)  ; Sqrt(value)
  %2289 = fadd fast float %2286, -5.000000e-01
  %2290 = fadd fast float %2287, -5.000000e-01
  %2291 = fadd fast float %2288, -5.000000e-01
  %2292 = fmul fast float %2289, %2238
  %2293 = fmul fast float %2290, %2238
  %2294 = fmul fast float %2291, %2238
  %2295 = fadd fast float %2292, 5.000000e-01
  %2296 = fadd fast float %2293, 5.000000e-01
  %2297 = fadd fast float %2294, 5.000000e-01
  %2298 = fmul fast float %2295, 2.000000e+00
  %2299 = fsub fast float 1.000000e+00, %2298
  %2300 = fmul fast float %2299, %2225
  %2301 = fadd fast float %2300, %2298
  %2302 = fmul fast float %2301, %2225
  %2303 = fmul fast float %2296, 2.000000e+00
  %2304 = fsub fast float 1.000000e+00, %2303
  %2305 = fmul fast float %2304, %2226
  %2306 = fadd fast float %2305, %2303
  %2307 = fmul fast float %2306, %2226
  %2308 = fmul fast float %2297, 2.000000e+00
  %2309 = fsub fast float 1.000000e+00, %2308
  %2310 = fmul fast float %2309, %2227
  %2311 = fadd fast float %2310, %2308
  %2312 = fmul fast float %2311, %2227
  br label %2313

; <label>:2313                                    ; preds = %2285, %2283, %2270, %2240, %2224
  %2314 = phi float [ %2225, %2224 ], [ %2302, %2285 ], [ %2225, %2283 ], [ %2280, %2270 ], [ %2250, %2240 ]
  %2315 = phi float [ %2226, %2224 ], [ %2307, %2285 ], [ %2226, %2283 ], [ %2281, %2270 ], [ %2251, %2240 ]
  %2316 = phi float [ %2227, %2224 ], [ %2312, %2285 ], [ %2227, %2283 ], [ %2282, %2270 ], [ %2252, %2240 ]
  %2317 = phi float [ %2228, %2224 ], [ %2228, %2285 ], [ %2228, %2283 ], [ %2228, %2270 ], [ %2262, %2240 ]
  %2318 = phi float [ %2229, %2224 ], [ %2229, %2285 ], [ %2229, %2283 ], [ %2229, %2270 ], [ %2263, %2240 ]
  %2319 = phi float [ %2230, %2224 ], [ %2230, %2285 ], [ %2230, %2283 ], [ %2230, %2270 ], [ %2264, %2240 ]
  %2320 = phi float [ %1666, %2224 ], [ %1666, %2285 ], [ %1666, %2283 ], [ %1666, %2270 ], [ %2255, %2240 ]
  %2321 = phi float [ %1669, %2224 ], [ %1669, %2285 ], [ %1669, %2283 ], [ %1669, %2270 ], [ %2267, %2240 ]
  %2322 = and i32 %2232, 12
  %2323 = icmp eq i32 %2322, 12
  br i1 %2323, label %2396, label %2324

; <label>:2324                                    ; preds = %2313
  %2325 = and i32 %2232, 2097184
  %2326 = icmp eq i32 %2325, 2097184
  %2327 = select i1 %2326, float %1852, float 0.000000e+00
  %2328 = and i32 %2232, 4194336
  %2329 = icmp eq i32 %2328, 4194336
  %2330 = select i1 %2329, float %1852, float 0.000000e+00
  %2331 = and i32 %2232, 8388640
  %2332 = icmp eq i32 %2331, 8388640
  %2333 = select i1 %2332, float %1852, float 0.000000e+00
  %2334 = icmp eq i32 %2322, 0
  br i1 %2334, label %2335, label %2348

; <label>:2335                                    ; preds = %2324
  %2336 = fsub fast float %2153, %1658
  %2337 = fsub fast float %2154, %1659
  %2338 = fmul fast float %2327, %2336
  %2339 = fmul fast float %2327, %2337
  %2340 = fadd fast float %2338, %1658
  %2341 = fadd fast float %2339, %1659
  %2342 = fsub fast float %2155, %1668
  %2343 = fmul fast float %2330, %2342
  %2344 = fadd fast float %2343, %1668
  %2345 = fsub fast float %2152, %1667
  %2346 = fmul fast float %2333, %2345
  %2347 = fadd fast float %2346, %1667
  br label %2396

; <label>:2348                                    ; preds = %2324
  %2349 = icmp eq i32 %2322, 4
  br i1 %2349, label %2350, label %2382

; <label>:2350                                    ; preds = %2348
  %2351 = fmul fast float %2327, %2153
  %2352 = fmul fast float %2327, %2154
  %2353 = fadd fast float %2351, %1658
  %2354 = fadd fast float %2352, %1659
  %2355 = call float @dx.op.binary.f32(i32 36, float %1668, float %2155)  ; FMin(a,b)
  %2356 = fsub fast float %2355, %1668
  %2357 = fmul fast float %2356, %2330
  %2358 = fadd fast float %2357, %1668
  %2359 = fadd fast float %2152, %1667
  %2360 = fmul fast float %2359, 0x3FF337FAE0000000
  %2361 = fmul fast float %1667, %1667
  %2362 = fmul fast float %2152, %2152
  %2363 = fadd fast float %2362, %2361
  %2364 = fmul fast float %2363, 0x3FE5152B00000000
  %2365 = fmul fast float %1667, 0xBFCC1F85E0000000
  %2366 = fmul fast float %2365, %2152
  %2367 = fadd fast float %2366, 0xBFE1363700000000
  %2368 = fadd fast float %2367, %2360
  %2369 = fsub fast float %2368, %2364
  %2370 = fmul fast float %2359, 0x3FBA6F0D00000000
  %2371 = fmul fast float %2363, 0x3FD0432880000000
  %2372 = fmul fast float %1667, 0xBFEF110800000000
  %2373 = fmul fast float %2372, %2152
  %2374 = fadd fast float %2373, 1.000000e+00
  %2375 = fsub fast float %2374, %2370
  %2376 = fadd fast float %2375, %2371
  %2377 = fdiv fast float %2369, %2376
  %2378 = call float @dx.op.unary.f32(i32 7, float %2377)  ; Saturate(value)
  %2379 = fsub fast float %2378, %1667
  %2380 = fmul fast float %2379, %2333
  %2381 = fadd fast float %2380, %1667
  br label %2396

; <label>:2382                                    ; preds = %2348
  %2383 = icmp eq i32 %2322, 8
  br i1 %2383, label %2384, label %2396

; <label>:2384                                    ; preds = %2382
  %2385 = fmul fast float %2327, %2153
  %2386 = fmul fast float %2327, %2154
  %2387 = fadd fast float %2385, %1658
  %2388 = fadd fast float %2386, %1659
  %2389 = call float @dx.op.binary.f32(i32 36, float %1668, float %2155)  ; FMin(a,b)
  %2390 = fsub fast float %2389, %1668
  %2391 = fmul fast float %2390, %2330
  %2392 = fadd fast float %2391, %1668
  %2393 = fsub fast float %2152, %1667
  %2394 = fmul fast float %2333, %2393
  %2395 = fadd fast float %2394, %1667
  br label %2396

; <label>:2396                                    ; preds = %2384, %2382, %2350, %2335, %2313, %1851, %1670, %1657
  %2397 = phi float [ %1658, %2313 ], [ %1658, %1851 ], [ %1658, %1657 ], [ %2387, %2384 ], [ %1658, %2382 ], [ %2353, %2350 ], [ %2340, %2335 ], [ %1658, %1670 ]
  %2398 = phi float [ %1659, %2313 ], [ %1659, %1851 ], [ %1659, %1657 ], [ %2388, %2384 ], [ %1659, %2382 ], [ %2354, %2350 ], [ %2341, %2335 ], [ %1659, %1670 ]
  %2399 = phi float [ %2314, %2313 ], [ %1660, %1851 ], [ %1660, %1657 ], [ %2314, %2384 ], [ %2314, %2382 ], [ %2314, %2350 ], [ %2314, %2335 ], [ %1660, %1670 ]
  %2400 = phi float [ %2315, %2313 ], [ %1661, %1851 ], [ %1661, %1657 ], [ %2315, %2384 ], [ %2315, %2382 ], [ %2315, %2350 ], [ %2315, %2335 ], [ %1661, %1670 ]
  %2401 = phi float [ %2316, %2313 ], [ %1662, %1851 ], [ %1662, %1657 ], [ %2316, %2384 ], [ %2316, %2382 ], [ %2316, %2350 ], [ %2316, %2335 ], [ %1662, %1670 ]
  %2402 = phi float [ %2317, %2313 ], [ %1663, %1851 ], [ %1663, %1657 ], [ %2317, %2384 ], [ %2317, %2382 ], [ %2317, %2350 ], [ %2317, %2335 ], [ %1663, %1670 ]
  %2403 = phi float [ %2318, %2313 ], [ %1664, %1851 ], [ %1664, %1657 ], [ %2318, %2384 ], [ %2318, %2382 ], [ %2318, %2350 ], [ %2318, %2335 ], [ %1664, %1670 ]
  %2404 = phi float [ %2319, %2313 ], [ %1665, %1851 ], [ %1665, %1657 ], [ %2319, %2384 ], [ %2319, %2382 ], [ %2319, %2350 ], [ %2319, %2335 ], [ %1665, %1670 ]
  %2405 = phi float [ %2320, %2313 ], [ %1666, %1851 ], [ %1666, %1657 ], [ %2320, %2384 ], [ %2320, %2382 ], [ %2320, %2350 ], [ %2320, %2335 ], [ %1666, %1670 ]
  %2406 = phi float [ %1667, %2313 ], [ %1667, %1851 ], [ %1667, %1657 ], [ %2395, %2384 ], [ %1667, %2382 ], [ %2381, %2350 ], [ %2347, %2335 ], [ %1667, %1670 ]
  %2407 = phi float [ %1668, %2313 ], [ %1668, %1851 ], [ %1668, %1657 ], [ %2392, %2384 ], [ %1668, %2382 ], [ %2358, %2350 ], [ %2344, %2335 ], [ %1668, %1670 ]
  %2408 = phi float [ %2321, %2313 ], [ %1669, %1851 ], [ %1669, %1657 ], [ %2321, %2384 ], [ %2321, %2382 ], [ %2321, %2350 ], [ %2321, %2335 ], [ %1669, %1670 ]
  br i1 %399, label %3135, label %2409

; <label>:2409                                    ; preds = %2396
  %2410 = icmp ult i32 %450, 4
  %2411 = add i32 %33, 72
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = add i32 %33, 76
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = or i32 %2416, %2413
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %3135, label %2419

; <label>:2419                                    ; preds = %2409
  %2420 = and i32 %2413, 262144
  %2421 = icmp ne i32 %2420, 0
  %2422 = select i1 %2421, float %39, float 1.000000e+00
  %2423 = select i1 %2421, float %40, float 0.000000e+00
  %2424 = select i1 %2421, float %41, float 0.000000e+00
  %2425 = select i1 %2421, float %42, float 1.000000e+00
  %2426 = select i1 %2421, float %43, float %66
  %2427 = select i1 %2421, float %44, float %67
  %2428 = add i32 %33, 332
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = lshr i32 %2430, 16
  %2432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2431)  ; LegacyF16ToF32(value)
  %2433 = fmul fast float %2432, 0x3F50624DE0000000
  %2434 = add i32 %33, 136
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = lshr i32 %2436, 16
  %2438 = and i32 %2437, 255
  %2439 = lshr i32 %2436, 24
  %2440 = add i32 %33, 340
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 65535
  %2444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2443)  ; LegacyF16ToF32(value)
  %2445 = lshr i32 %2442, 16
  %2446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2445)  ; LegacyF16ToF32(value)
  %2447 = add i32 %33, 80
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = lshr i32 %2449, 22
  %2451 = shl nuw nsw i32 %2450, 5
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = shl i32 %2449, 4
  %2454 = and i32 %2453, 32752
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = lshr i32 %2449, 7
  %2457 = and i32 %2456, 32752
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 3
  %2461 = fmul fast float %2460, 1.000000e+03
  %2462 = fmul fast float %389, %2461
  %2463 = call float @dx.op.unary.f32(i32 22, float %2462)  ; Frc(value)
  %2464 = fadd fast float %2463, %379
  %2465 = fmul fast float %390, %2461
  %2466 = call float @dx.op.unary.f32(i32 22, float %2465)  ; Frc(value)
  %2467 = fadd fast float %2466, %381
  %2468 = fmul fast float %2433, %2461
  %2469 = call float @dx.op.unary.f32(i32 22, float %2468)  ; Frc(value)
  %2470 = fmul fast float %2469, 0x401921FB60000000
  %2471 = fadd fast float %2470, %2452
  %2472 = call float @dx.op.unary.f32(i32 13, float %2471)  ; Sin(value)
  %2473 = call float @dx.op.unary.f32(i32 12, float %2471)  ; Cos(value)
  %2474 = fsub fast float -0.000000e+00, %2472
  %2475 = fadd fast float %2426, -5.000000e-01
  %2476 = fadd fast float %2427, -5.000000e-01
  %2477 = fmul fast float %2444, %2475
  %2478 = fmul fast float %2446, %2476
  %2479 = fadd fast float %2477, 5.000000e-01
  %2480 = fadd fast float %2478, 5.000000e-01
  %2481 = fmul fast float %2455, %2479
  %2482 = fmul fast float %2458, %2480
  %2483 = fmul fast float %2473, %2481
  %2484 = call float @dx.op.tertiary.f32(i32 46, float %2474, float %2482, float %2483)  ; FMad(a,b,c)
  %2485 = fmul fast float %2472, %2481
  %2486 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %2482, float %2485)  ; FMad(a,b,c)
  %2487 = fadd fast float %2464, %2484
  %2488 = fadd fast float %2467, %2486
  %2489 = icmp ugt i32 %2438, 1
  %2490 = icmp ugt i32 %2436, 33554431
  %2491 = or i1 %2490, %2489
  br i1 %2491, label %2492, label %2517

; <label>:2492                                    ; preds = %2419
  %2493 = add i32 %33, 276
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = lshr i32 %2495, 16
  %2497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2496)  ; LegacyF16ToF32(value)
  %2498 = fmul fast float %2460, %2497
  %2499 = call float @dx.op.unary.f32(i32 22, float %2498)  ; Frc(value)
  %2500 = mul nuw nsw i32 %2438, %2439
  %2501 = uitofp i32 %2500 to float
  %2502 = fmul fast float %2499, %2501
  %2503 = call float @dx.op.unary.f32(i32 27, float %2502)  ; Round_ni(value)
  %2504 = fptoui float %2503 to i32
  %2505 = urem i32 %2504, %2438
  %2506 = udiv i32 %2504, %2439
  %2507 = call float @dx.op.unary.f32(i32 22, float %2487)  ; Frc(value)
  %2508 = call float @dx.op.unary.f32(i32 22, float %2488)  ; Frc(value)
  %2509 = uitofp i32 %2505 to float
  %2510 = uitofp i32 %2506 to float
  %2511 = fadd fast float %2507, %2509
  %2512 = fadd fast float %2508, %2510
  %2513 = uitofp i32 %2438 to float
  %2514 = uitofp i32 %2439 to float
  %2515 = fdiv fast float %2511, %2513
  %2516 = fdiv fast float %2512, %2514
  br label %2517

; <label>:2517                                    ; preds = %2492, %2419
  %2518 = phi float [ %2515, %2492 ], [ %2487, %2419 ]
  %2519 = phi float [ %2516, %2492 ], [ %2488, %2419 ]
  %2520 = and i32 %2413, 256
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2568, label %2522

; <label>:2522                                    ; preds = %2517
  %2523 = add i32 %33, 436
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = add i32 %2525, 0
  %2527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2527, %dx.types.Handle %75, float %2518, float %2519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2529 = extractvalue %dx.types.ResRet.f32 %2528, 0
  %2530 = add i32 %33, 148
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = shl i32 %2532, 4
  %2534 = and i32 %2533, 32752
  %2535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2534)  ; LegacyF16ToF32(value)
  %2536 = lshr i32 %2532, 7
  %2537 = and i32 %2536, 32752
  %2538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2537)  ; LegacyF16ToF32(value)
  %2539 = fsub fast float 1.000000e+00, %445
  %2540 = call float @dx.op.binary.f32(i32 35, float %2539, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2541 = bitcast float %445 to i32
  %2542 = sitofp i32 %2541 to float
  %2543 = fadd fast float %2542, 0xC1CFBF8940000000
  %2544 = fmul fast float %2538, %2543
  %2545 = fadd fast float %2544, 0x41CFBF8940000000
  %2546 = fptosi float %2545 to i32
  %2547 = bitcast i32 %2546 to float
  %2548 = bitcast float %2540 to i32
  %2549 = sitofp i32 %2548 to float
  %2550 = fadd fast float %2549, 0xC1CFBF8940000000
  %2551 = fmul fast float %2550, %2538
  %2552 = fadd fast float %2551, 0x41CFBF8940000000
  %2553 = fptosi float %2552 to i32
  %2554 = bitcast i32 %2553 to float
  %2555 = fmul fast float %2547, %2535
  %2556 = fmul fast float %2554, %2535
  %2557 = fsub fast float %2540, %2555
  %2558 = fadd fast float %2556, %2540
  %2559 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  %2560 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2561 = fsub fast float %2529, %2559
  %2562 = fsub fast float %2560, %2559
  %2563 = bitcast float %2562 to i32
  %2564 = sub nsw i32 2129859010, %2563
  %2565 = bitcast i32 %2564 to float
  %2566 = fmul fast float %2565, %2561
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  br label %2568

; <label>:2568                                    ; preds = %2522, %2517
  %2569 = phi float [ %2567, %2522 ], [ %445, %2517 ]
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 128
  %2573 = icmp eq i32 %2572, 0
  br i1 %2573, label %2590, label %2574

; <label>:2574                                    ; preds = %2568
  %2575 = add i32 %33, 420
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = add i32 %2577, 0
  %2579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2579, %dx.types.Handle %75, float %2518, float %2519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 524288
  %2585 = icmp ne i32 %2584, 0
  %2586 = fcmp fast ogt float %2581, 0x3FE0101020000000
  %2587 = select i1 %2586, float 1.000000e+00, float 0.000000e+00
  %2588 = select i1 %2585, float %2587, float %2581
  %2589 = fmul fast float %2588, %2569
  br label %2590

; <label>:2590                                    ; preds = %2574, %2568
  %2591 = phi float [ %2589, %2574 ], [ %2569, %2568 ]
  %2592 = fcmp fast ult float %2591, 0x3F70101020000000
  br i1 %2592, label %3135, label %2593

; <label>:2593                                    ; preds = %2590
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = and i32 %2595, 16
  %2597 = icmp eq i32 %2596, 0
  br i1 %2597, label %2796, label %2598

; <label>:2598                                    ; preds = %2593
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = add i32 %33, 372
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = add i32 %2603, 0
  %2605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2605, %dx.types.Handle %74, float %2518, float %2519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2607 = extractvalue %dx.types.ResRet.f32 %2606, 0
  %2608 = extractvalue %dx.types.ResRet.f32 %2606, 1
  %2609 = extractvalue %dx.types.ResRet.f32 %2606, 2
  %2610 = extractvalue %dx.types.ResRet.f32 %2606, 3
  %2611 = and i32 %2600, 255
  %2612 = uitofp i32 %2611 to float
  %2613 = lshr i32 %2600, 8
  %2614 = and i32 %2613, 255
  %2615 = uitofp i32 %2614 to float
  %2616 = fmul fast float %2610, %2612
  %2617 = fadd fast float %2616, %2615
  %2618 = fmul fast float %2617, 0x3F70101000000000
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = and i32 %2620, 512
  %2622 = icmp eq i32 %2621, 0
  br i1 %2622, label %2631, label %2623

; <label>:2623                                    ; preds = %2598
  %2624 = add i32 %33, 452
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = add i32 %2626, 0
  %2628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2628, %dx.types.Handle %75, float %2518, float %2519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  br label %2631

; <label>:2631                                    ; preds = %2623, %2598
  %2632 = phi float [ %2630, %2623 ], [ 1.000000e+00, %2598 ]
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 33554432
  %2636 = icmp eq i32 %2635, 0
  br i1 %2636, label %2743, label %2637

; <label>:2637                                    ; preds = %2631
  %2638 = add i32 %33, 272
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 65535
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = lshr i32 %2640, 16
  %2644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2643)  ; LegacyF16ToF32(value)
  %2645 = add i32 %33, 276
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 65535
  %2649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2648)  ; LegacyF16ToF32(value)
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = lshr i32 %2651, 24
  %2653 = uitofp i32 %2652 to float
  %2654 = fmul fast float %2653, 0x3F70101020000000
  %2655 = and i32 %2651, 255
  %2656 = uitofp i32 %2655 to float
  %2657 = fmul fast float %2656, 0x3F70101020000000
  %2658 = lshr i32 %2651, 8
  %2659 = and i32 %2658, 255
  %2660 = uitofp i32 %2659 to float
  %2661 = fmul fast float %2660, 0x3F70101020000000
  %2662 = lshr i32 %2651, 16
  %2663 = and i32 %2662, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = add i32 %33, 268
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = lshr i32 %2668, 24
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = and i32 %2668, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = lshr i32 %2668, 8
  %2676 = and i32 %2675, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = lshr i32 %2668, 16
  %2680 = and i32 %2679, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = bitcast float %2607 to i32
  %2684 = ashr i32 %2683, 1
  %2685 = sub nsw i32 1597463174, %2684
  %2686 = bitcast i32 %2685 to float
  %2687 = fmul fast float %2607, 5.000000e-01
  %2688 = fmul fast float %2686, %2686
  %2689 = fmul fast float %2688, %2687
  %2690 = fsub fast float 1.500000e+00, %2689
  %2691 = fmul fast float %2686, %2607
  %2692 = fmul fast float %2691, %2690
  %2693 = bitcast float %2608 to i32
  %2694 = ashr i32 %2693, 1
  %2695 = sub nsw i32 1597463174, %2694
  %2696 = bitcast i32 %2695 to float
  %2697 = fmul fast float %2608, 5.000000e-01
  %2698 = fmul fast float %2696, %2696
  %2699 = fmul fast float %2698, %2697
  %2700 = fsub fast float 1.500000e+00, %2699
  %2701 = fmul fast float %2696, %2608
  %2702 = fmul fast float %2701, %2700
  %2703 = bitcast float %2609 to i32
  %2704 = ashr i32 %2703, 1
  %2705 = sub nsw i32 1597463174, %2704
  %2706 = bitcast i32 %2705 to float
  %2707 = fmul fast float %2609, 5.000000e-01
  %2708 = fmul fast float %2706, %2706
  %2709 = fmul fast float %2708, %2707
  %2710 = fsub fast float 1.500000e+00, %2709
  %2711 = fmul fast float %2706, %2609
  %2712 = fmul fast float %2711, %2710
  %2713 = fsub fast float %2692, %2674
  %2714 = fsub fast float %2702, %2678
  %2715 = fsub fast float %2712, %2682
  %2716 = fmul fast float %2713, %2642
  %2717 = fmul fast float %2714, %2644
  %2718 = fmul fast float %2715, %2649
  %2719 = fadd fast float %2716, %2657
  %2720 = fadd fast float %2717, %2661
  %2721 = fadd fast float %2718, %2665
  %2722 = call float @dx.op.unary.f32(i32 7, float %2719)  ; Saturate(value)
  %2723 = call float @dx.op.unary.f32(i32 7, float %2720)  ; Saturate(value)
  %2724 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2725 = fmul fast float %2722, %2722
  %2726 = fmul fast float %2723, %2723
  %2727 = fmul fast float %2724, %2724
  %2728 = fsub fast float %2725, %2607
  %2729 = fsub fast float %2726, %2608
  %2730 = fsub fast float %2727, %2609
  %2731 = fmul fast float %2728, %2632
  %2732 = fmul fast float %2729, %2632
  %2733 = fmul fast float %2730, %2632
  %2734 = fadd fast float %2731, %2607
  %2735 = fadd fast float %2732, %2608
  %2736 = fadd fast float %2733, %2609
  %2737 = fadd fast float %2654, %2618
  %2738 = fsub fast float %2737, %2671
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = fsub fast float %2739, %2618
  %2741 = fmul fast float %2740, %2632
  %2742 = fadd fast float %2741, %2618
  br label %2796

; <label>:2743                                    ; preds = %2631
  %2744 = and i32 %2634, 134217728
  %2745 = icmp eq i32 %2744, 0
  br i1 %2745, label %2780, label %2746

; <label>:2746                                    ; preds = %2743
  %2747 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2748 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2749 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2750 = fadd fast float %2747, -5.000000e-01
  %2751 = fadd fast float %2748, -5.000000e-01
  %2752 = fadd fast float %2749, -5.000000e-01
  %2753 = fmul fast float %2750, %2632
  %2754 = fmul fast float %2751, %2632
  %2755 = fmul fast float %2752, %2632
  %2756 = fadd fast float %2753, 5.000000e-01
  %2757 = fadd fast float %2754, 5.000000e-01
  %2758 = fadd fast float %2755, 5.000000e-01
  %2759 = call float @dx.op.unary.f32(i32 24, float %2607)  ; Sqrt(value)
  %2760 = call float @dx.op.unary.f32(i32 24, float %2608)  ; Sqrt(value)
  %2761 = call float @dx.op.unary.f32(i32 24, float %2609)  ; Sqrt(value)
  %2762 = fmul fast float %2756, 2.000000e+00
  %2763 = fsub fast float 1.000000e+00, %2762
  %2764 = fmul fast float %2763, %2759
  %2765 = fadd fast float %2764, %2762
  %2766 = fmul fast float %2765, %2759
  %2767 = fmul fast float %2757, 2.000000e+00
  %2768 = fsub fast float 1.000000e+00, %2767
  %2769 = fmul fast float %2768, %2760
  %2770 = fadd fast float %2769, %2767
  %2771 = fmul fast float %2770, %2760
  %2772 = fmul fast float %2758, 2.000000e+00
  %2773 = fsub fast float 1.000000e+00, %2772
  %2774 = fmul fast float %2773, %2761
  %2775 = fadd fast float %2774, %2772
  %2776 = fmul fast float %2775, %2761
  %2777 = fmul fast float %2766, %2766
  %2778 = fmul fast float %2771, %2771
  %2779 = fmul fast float %2776, %2776
  br label %2796

; <label>:2780                                    ; preds = %2743
  %2781 = fmul fast float %366, %366
  %2782 = fmul fast float %370, %370
  %2783 = fmul fast float %374, %374
  %2784 = fadd fast float %2781, -1.000000e+00
  %2785 = fadd fast float %2782, -1.000000e+00
  %2786 = fadd fast float %2783, -1.000000e+00
  %2787 = fmul fast float %2632, %2784
  %2788 = fmul fast float %2632, %2785
  %2789 = fmul fast float %2632, %2786
  %2790 = fadd fast float %2787, 1.000000e+00
  %2791 = fadd fast float %2788, 1.000000e+00
  %2792 = fadd fast float %2789, 1.000000e+00
  %2793 = fmul fast float %2790, %2607
  %2794 = fmul fast float %2791, %2608
  %2795 = fmul fast float %2792, %2609
  br label %2796

; <label>:2796                                    ; preds = %2780, %2746, %2637, %2593
  %2797 = phi float [ %2742, %2637 ], [ %2618, %2746 ], [ %2618, %2780 ], [ 0x3FA23C0BE0000000, %2593 ]
  %2798 = phi float [ %2734, %2637 ], [ %2777, %2746 ], [ %2793, %2780 ], [ 1.000000e+00, %2593 ]
  %2799 = phi float [ %2735, %2637 ], [ %2778, %2746 ], [ %2794, %2780 ], [ 1.000000e+00, %2593 ]
  %2800 = phi float [ %2736, %2637 ], [ %2779, %2746 ], [ %2795, %2780 ], [ 1.000000e+00, %2593 ]
  %2801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.i32 %2801, 1
  %2803 = and i32 %2802, 1
  %2804 = icmp ne i32 %2803, 0
  %2805 = add i32 %33, 356
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = and i32 %2807, 32
  %2809 = icmp ne i32 %2808, 0
  %2810 = and i1 %2804, %2809
  %2811 = select i1 %2810, float 1.000000e+00, float %2798
  %2812 = select i1 %2810, float 0x3FD3333340000000, float %2799
  %2813 = select i1 %2810, float 0x3FD3333340000000, float %2800
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 32
  %2817 = icmp eq i32 %2816, 0
  br i1 %2817, label %2890, label %2818

; <label>:2818                                    ; preds = %2796
  %2819 = add i32 %33, 140
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = add i32 %33, 388
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = add i32 %2824, 0
  %2826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2826, %dx.types.Handle %74, float %2518, float %2519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2828 = extractvalue %dx.types.ResRet.f32 %2827, 0
  %2829 = extractvalue %dx.types.ResRet.f32 %2827, 1
  %2830 = extractvalue %dx.types.ResRet.f32 %2827, 2
  %2831 = extractvalue %dx.types.ResRet.f32 %2827, 3
  %2832 = and i32 %2821, 255
  %2833 = uitofp i32 %2832 to float
  %2834 = lshr i32 %2821, 8
  %2835 = and i32 %2834, 255
  %2836 = uitofp i32 %2835 to float
  %2837 = lshr i32 %2821, 16
  %2838 = and i32 %2837, 255
  %2839 = uitofp i32 %2838 to float
  %2840 = fmul fast float %2839, 0x3F70101000000000
  %2841 = fmul fast float %2828, %2833
  %2842 = fadd fast float %2841, %2836
  %2843 = fmul fast float %2842, 0x3F70101000000000
  %2844 = fadd fast float %2829, -5.000000e-01
  %2845 = fadd fast float %2831, -5.000000e-01
  %2846 = fmul fast float %2844, %2840
  %2847 = fmul fast float %2845, %2840
  %2848 = fadd fast float %2846, 5.000000e-01
  %2849 = fadd fast float %2847, 5.000000e-01
  %2850 = fmul fast float %2848, 2.000000e+00
  %2851 = fadd fast float %2850, -1.000000e+00
  %2852 = fmul fast float %2849, 2.000000e+00
  %2853 = fadd fast float %2852, -1.000000e+00
  %2854 = fadd fast float %2851, %2853
  %2855 = fmul fast float %2854, 5.000000e-01
  %2856 = fsub fast float %2851, %2853
  %2857 = fmul fast float %2856, 5.000000e-01
  %2858 = call float @dx.op.unary.f32(i32 6, float %2855)  ; FAbs(value)
  %2859 = fsub fast float 1.000000e+00, %2858
  %2860 = call float @dx.op.unary.f32(i32 6, float %2857)  ; FAbs(value)
  %2861 = fsub fast float %2859, %2860
  %2862 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2857, float %2861, float %2855, float %2857, float %2861)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = call float @dx.op.unary.f32(i32 25, float %2862)  ; Rsqrt(value)
  %2864 = fmul fast float %2855, %2863
  %2865 = fmul fast float %2857, %2863
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = and i32 %2867, 67108864
  %2869 = icmp eq i32 %2868, 0
  br i1 %2869, label %2886, label %2870

; <label>:2870                                    ; preds = %2818
  %2871 = add i32 %33, 328
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 65535
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 65535
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = lshr i32 %2873, 16
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = fsub fast float %2843, %2881
  %2883 = fmul fast float %2882, %2875
  %2884 = fadd fast float %2883, %2879
  %2885 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  br label %2886

; <label>:2886                                    ; preds = %2870, %2818
  %2887 = phi float [ %2885, %2870 ], [ %2843, %2818 ]
  %2888 = call float @dx.op.dot2.f32(i32 54, float %2864, float %2865, float %2422, float %2423)  ; Dot2(ax,ay,bx,by)
  %2889 = call float @dx.op.dot2.f32(i32 54, float %2864, float %2865, float %2424, float %2425)  ; Dot2(ax,ay,bx,by)
  br label %2890

; <label>:2890                                    ; preds = %2886, %2796
  %2891 = phi float [ %2887, %2886 ], [ 0x3FD6666660000000, %2796 ]
  %2892 = phi float [ %2888, %2886 ], [ 0.000000e+00, %2796 ]
  %2893 = phi float [ %2889, %2886 ], [ 0.000000e+00, %2796 ]
  %2894 = phi float [ %2830, %2886 ], [ 1.000000e+00, %2796 ]
  %2895 = add i32 %33, 208
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = lshr i32 %2897, 22
  %2899 = shl nuw nsw i32 %2898, 5
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = and i32 %2902, 64
  %2904 = icmp eq i32 %2903, 0
  br i1 %2904, label %2938, label %2905

; <label>:2905                                    ; preds = %2890
  %2906 = add i32 %33, 404
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = add i32 %2908, 0
  %2910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = and i32 %2912, 131072
  %2914 = icmp eq i32 %2913, 0
  %2915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2910, %dx.types.Handle %74, float %2518, float %2519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2916 = extractvalue %dx.types.ResRet.f32 %2915, 0
  %2917 = extractvalue %dx.types.ResRet.f32 %2915, 1
  %2918 = extractvalue %dx.types.ResRet.f32 %2915, 2
  %2919 = fmul fast float %2916, %354
  %2920 = fmul fast float %2917, %357
  %2921 = fmul fast float %2918, %360
  br i1 %2914, label %2928, label %2922

; <label>:2922                                    ; preds = %2905
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = fmul fast float %2924, %2919
  %2926 = fmul fast float %2924, %2920
  %2927 = fmul fast float %2924, %2921
  br label %2928

; <label>:2928                                    ; preds = %2922, %2905
  %2929 = phi float [ %2925, %2922 ], [ %2919, %2905 ]
  %2930 = phi float [ %2926, %2922 ], [ %2920, %2905 ]
  %2931 = phi float [ %2927, %2922 ], [ %2921, %2905 ]
  %2932 = fmul fast float %2929, %2900
  %2933 = select i1 %211, float %2932, float %2929
  %2934 = call float @dx.op.dot3.f32(i32 55, float %2933, float %2930, float %2931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2935 = select i1 %211, float 0.000000e+00, float %2929
  %2936 = select i1 %211, float %2934, float %2930
  %2937 = select i1 %211, float 0.000000e+00, float %2931
  br label %2938

; <label>:2938                                    ; preds = %2928, %2890
  %2939 = phi float [ %2935, %2928 ], [ 0.000000e+00, %2890 ]
  %2940 = phi float [ %2936, %2928 ], [ 0.000000e+00, %2890 ]
  %2941 = phi float [ %2937, %2928 ], [ 0.000000e+00, %2890 ]
  %2942 = add i32 %33, 144
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %2944, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = lshr i32 %2944, 8
  %2948 = and i32 %2947, 255
  %2949 = uitofp i32 %2948 to float
  %2950 = call float @dx.op.dot3.f32(i32 55, float %2811, float %2812, float %2813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = fmul fast float %2949, %2950
  %2952 = fadd fast float %2951, %2946
  %2953 = fmul fast float %2952, 0x3F70101020000000
  %2954 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  br i1 %2410, label %2955, label %2963

; <label>:2955                                    ; preds = %2938
  %2956 = fsub fast float 1.000000e+00, %2591
  %2957 = fmul fast float %2956, %2399
  %2958 = fmul fast float %2956, %2400
  %2959 = fmul fast float %2956, %2401
  %2960 = fmul fast float %2956, %2402
  %2961 = fmul fast float %2956, %2403
  %2962 = fmul fast float %2956, %2404
  br label %2963

; <label>:2963                                    ; preds = %2955, %2938
  %2964 = phi float [ %2957, %2955 ], [ %2399, %2938 ]
  %2965 = phi float [ %2958, %2955 ], [ %2400, %2938 ]
  %2966 = phi float [ %2959, %2955 ], [ %2401, %2938 ]
  %2967 = phi float [ %2960, %2955 ], [ %2402, %2938 ]
  %2968 = phi float [ %2961, %2955 ], [ %2403, %2938 ]
  %2969 = phi float [ %2962, %2955 ], [ %2404, %2938 ]
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 3
  %2973 = icmp eq i32 %2972, 3
  br i1 %2973, label %3052, label %2974

; <label>:2974                                    ; preds = %2963
  %2975 = and i32 %2971, 16
  %2976 = icmp ne i32 %2975, 0
  %2977 = select i1 %2976, float %2591, float 0.000000e+00
  %2978 = icmp eq i32 %2972, 0
  br i1 %2978, label %2979, label %3007

; <label>:2979                                    ; preds = %2974
  %2980 = and i32 %2971, 64
  %2981 = icmp ne i32 %2980, 0
  %2982 = select i1 %2981, float %2591, float 0.000000e+00
  %2983 = fsub fast float %2811, %2964
  %2984 = fsub fast float %2812, %2965
  %2985 = fsub fast float %2813, %2966
  %2986 = fmul fast float %2977, %2983
  %2987 = fmul fast float %2977, %2984
  %2988 = fmul fast float %2977, %2985
  %2989 = fadd fast float %2986, %2964
  %2990 = fadd fast float %2987, %2965
  %2991 = fadd fast float %2988, %2966
  %2992 = fsub fast float %2797, %2405
  %2993 = fmul fast float %2977, %2992
  %2994 = fadd fast float %2993, %2405
  %2995 = fsub fast float %2939, %2967
  %2996 = fsub fast float %2940, %2968
  %2997 = fsub fast float %2941, %2969
  %2998 = fmul fast float %2982, %2995
  %2999 = fmul fast float %2982, %2996
  %3000 = fmul fast float %2982, %2997
  %3001 = fadd fast float %2998, %2967
  %3002 = fadd fast float %2999, %2968
  %3003 = fadd fast float %3000, %2969
  %3004 = fsub fast float %2954, %2408
  %3005 = fmul fast float %2977, %3004
  %3006 = fadd fast float %3005, %2408
  br label %3052

; <label>:3007                                    ; preds = %2974
  %3008 = icmp eq i32 %2972, 1
  br i1 %3008, label %3009, label %3022

; <label>:3009                                    ; preds = %3007
  %3010 = fadd fast float %2811, -1.000000e+00
  %3011 = fadd fast float %2812, -1.000000e+00
  %3012 = fadd fast float %2813, -1.000000e+00
  %3013 = fmul fast float %2977, %3010
  %3014 = fmul fast float %2977, %3011
  %3015 = fmul fast float %2977, %3012
  %3016 = fadd fast float %3013, 1.000000e+00
  %3017 = fadd fast float %3014, 1.000000e+00
  %3018 = fadd fast float %3015, 1.000000e+00
  %3019 = fmul fast float %3016, %2964
  %3020 = fmul fast float %3017, %2965
  %3021 = fmul fast float %3018, %2966
  br label %3052

; <label>:3022                                    ; preds = %3007
  %3023 = icmp eq i32 %2972, 2
  br i1 %3023, label %3024, label %3052

; <label>:3024                                    ; preds = %3022
  %3025 = call float @dx.op.unary.f32(i32 24, float %2811)  ; Sqrt(value)
  %3026 = call float @dx.op.unary.f32(i32 24, float %2812)  ; Sqrt(value)
  %3027 = call float @dx.op.unary.f32(i32 24, float %2813)  ; Sqrt(value)
  %3028 = fadd fast float %3025, -5.000000e-01
  %3029 = fadd fast float %3026, -5.000000e-01
  %3030 = fadd fast float %3027, -5.000000e-01
  %3031 = fmul fast float %3028, %2977
  %3032 = fmul fast float %3029, %2977
  %3033 = fmul fast float %3030, %2977
  %3034 = fadd fast float %3031, 5.000000e-01
  %3035 = fadd fast float %3032, 5.000000e-01
  %3036 = fadd fast float %3033, 5.000000e-01
  %3037 = fmul fast float %3034, 2.000000e+00
  %3038 = fsub fast float 1.000000e+00, %3037
  %3039 = fmul fast float %3038, %2964
  %3040 = fadd fast float %3039, %3037
  %3041 = fmul fast float %3040, %2964
  %3042 = fmul fast float %3035, 2.000000e+00
  %3043 = fsub fast float 1.000000e+00, %3042
  %3044 = fmul fast float %3043, %2965
  %3045 = fadd fast float %3044, %3042
  %3046 = fmul fast float %3045, %2965
  %3047 = fmul fast float %3036, 2.000000e+00
  %3048 = fsub fast float 1.000000e+00, %3047
  %3049 = fmul fast float %3048, %2966
  %3050 = fadd fast float %3049, %3047
  %3051 = fmul fast float %3050, %2966
  br label %3052

; <label>:3052                                    ; preds = %3024, %3022, %3009, %2979, %2963
  %3053 = phi float [ %2964, %2963 ], [ %3041, %3024 ], [ %2964, %3022 ], [ %3019, %3009 ], [ %2989, %2979 ]
  %3054 = phi float [ %2965, %2963 ], [ %3046, %3024 ], [ %2965, %3022 ], [ %3020, %3009 ], [ %2990, %2979 ]
  %3055 = phi float [ %2966, %2963 ], [ %3051, %3024 ], [ %2966, %3022 ], [ %3021, %3009 ], [ %2991, %2979 ]
  %3056 = phi float [ %2967, %2963 ], [ %2967, %3024 ], [ %2967, %3022 ], [ %2967, %3009 ], [ %3001, %2979 ]
  %3057 = phi float [ %2968, %2963 ], [ %2968, %3024 ], [ %2968, %3022 ], [ %2968, %3009 ], [ %3002, %2979 ]
  %3058 = phi float [ %2969, %2963 ], [ %2969, %3024 ], [ %2969, %3022 ], [ %2969, %3009 ], [ %3003, %2979 ]
  %3059 = phi float [ %2405, %2963 ], [ %2405, %3024 ], [ %2405, %3022 ], [ %2405, %3009 ], [ %2994, %2979 ]
  %3060 = phi float [ %2408, %2963 ], [ %2408, %3024 ], [ %2408, %3022 ], [ %2408, %3009 ], [ %3006, %2979 ]
  %3061 = and i32 %2971, 12
  %3062 = icmp eq i32 %3061, 12
  br i1 %3062, label %3135, label %3063

; <label>:3063                                    ; preds = %3052
  %3064 = and i32 %2971, 2097184
  %3065 = icmp eq i32 %3064, 2097184
  %3066 = select i1 %3065, float %2591, float 0.000000e+00
  %3067 = and i32 %2971, 4194336
  %3068 = icmp eq i32 %3067, 4194336
  %3069 = select i1 %3068, float %2591, float 0.000000e+00
  %3070 = and i32 %2971, 8388640
  %3071 = icmp eq i32 %3070, 8388640
  %3072 = select i1 %3071, float %2591, float 0.000000e+00
  %3073 = icmp eq i32 %3061, 0
  br i1 %3073, label %3074, label %3087

; <label>:3074                                    ; preds = %3063
  %3075 = fsub fast float %2892, %2397
  %3076 = fsub fast float %2893, %2398
  %3077 = fmul fast float %3066, %3075
  %3078 = fmul fast float %3066, %3076
  %3079 = fadd fast float %3077, %2397
  %3080 = fadd fast float %3078, %2398
  %3081 = fsub fast float %2894, %2407
  %3082 = fmul fast float %3069, %3081
  %3083 = fadd fast float %3082, %2407
  %3084 = fsub fast float %2891, %2406
  %3085 = fmul fast float %3072, %3084
  %3086 = fadd fast float %3085, %2406
  br label %3135

; <label>:3087                                    ; preds = %3063
  %3088 = icmp eq i32 %3061, 4
  br i1 %3088, label %3089, label %3121

; <label>:3089                                    ; preds = %3087
  %3090 = fmul fast float %3066, %2892
  %3091 = fmul fast float %3066, %2893
  %3092 = fadd fast float %3090, %2397
  %3093 = fadd fast float %3091, %2398
  %3094 = call float @dx.op.binary.f32(i32 36, float %2407, float %2894)  ; FMin(a,b)
  %3095 = fsub fast float %3094, %2407
  %3096 = fmul fast float %3095, %3069
  %3097 = fadd fast float %3096, %2407
  %3098 = fadd fast float %2891, %2406
  %3099 = fmul fast float %3098, 0x3FF337FAE0000000
  %3100 = fmul fast float %2406, %2406
  %3101 = fmul fast float %2891, %2891
  %3102 = fadd fast float %3101, %3100
  %3103 = fmul fast float %3102, 0x3FE5152B00000000
  %3104 = fmul fast float %2406, 0xBFCC1F85E0000000
  %3105 = fmul fast float %3104, %2891
  %3106 = fadd fast float %3105, 0xBFE1363700000000
  %3107 = fadd fast float %3106, %3099
  %3108 = fsub fast float %3107, %3103
  %3109 = fmul fast float %3098, 0x3FBA6F0D00000000
  %3110 = fmul fast float %3102, 0x3FD0432880000000
  %3111 = fmul fast float %2406, 0xBFEF110800000000
  %3112 = fmul fast float %3111, %2891
  %3113 = fadd fast float %3112, 1.000000e+00
  %3114 = fsub fast float %3113, %3109
  %3115 = fadd fast float %3114, %3110
  %3116 = fdiv fast float %3108, %3115
  %3117 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3118 = fsub fast float %3117, %2406
  %3119 = fmul fast float %3118, %3072
  %3120 = fadd fast float %3119, %2406
  br label %3135

; <label>:3121                                    ; preds = %3087
  %3122 = icmp eq i32 %3061, 8
  br i1 %3122, label %3123, label %3135

; <label>:3123                                    ; preds = %3121
  %3124 = fmul fast float %3066, %2892
  %3125 = fmul fast float %3066, %2893
  %3126 = fadd fast float %3124, %2397
  %3127 = fadd fast float %3125, %2398
  %3128 = call float @dx.op.binary.f32(i32 36, float %2407, float %2894)  ; FMin(a,b)
  %3129 = fsub fast float %3128, %2407
  %3130 = fmul fast float %3129, %3069
  %3131 = fadd fast float %3130, %2407
  %3132 = fsub fast float %2891, %2406
  %3133 = fmul fast float %3072, %3132
  %3134 = fadd fast float %3133, %2406
  br label %3135

; <label>:3135                                    ; preds = %3123, %3121, %3089, %3074, %3052, %2590, %2409, %2396
  %3136 = phi float [ %2397, %3052 ], [ %2397, %2590 ], [ %2397, %2396 ], [ %2397, %2409 ], [ %3079, %3074 ], [ %3092, %3089 ], [ %2397, %3121 ], [ %3126, %3123 ]
  %3137 = phi float [ %2398, %3052 ], [ %2398, %2590 ], [ %2398, %2396 ], [ %2398, %2409 ], [ %3080, %3074 ], [ %3093, %3089 ], [ %2398, %3121 ], [ %3127, %3123 ]
  %3138 = phi float [ %3053, %3052 ], [ %2399, %2590 ], [ %2399, %2396 ], [ %2399, %2409 ], [ %3053, %3074 ], [ %3053, %3089 ], [ %3053, %3121 ], [ %3053, %3123 ]
  %3139 = phi float [ %3054, %3052 ], [ %2400, %2590 ], [ %2400, %2396 ], [ %2400, %2409 ], [ %3054, %3074 ], [ %3054, %3089 ], [ %3054, %3121 ], [ %3054, %3123 ]
  %3140 = phi float [ %3055, %3052 ], [ %2401, %2590 ], [ %2401, %2396 ], [ %2401, %2409 ], [ %3055, %3074 ], [ %3055, %3089 ], [ %3055, %3121 ], [ %3055, %3123 ]
  %3141 = phi float [ %3056, %3052 ], [ %2402, %2590 ], [ %2402, %2396 ], [ %2402, %2409 ], [ %3056, %3074 ], [ %3056, %3089 ], [ %3056, %3121 ], [ %3056, %3123 ]
  %3142 = phi float [ %3057, %3052 ], [ %2403, %2590 ], [ %2403, %2396 ], [ %2403, %2409 ], [ %3057, %3074 ], [ %3057, %3089 ], [ %3057, %3121 ], [ %3057, %3123 ]
  %3143 = phi float [ %3058, %3052 ], [ %2404, %2590 ], [ %2404, %2396 ], [ %2404, %2409 ], [ %3058, %3074 ], [ %3058, %3089 ], [ %3058, %3121 ], [ %3058, %3123 ]
  %3144 = phi float [ %3059, %3052 ], [ %2405, %2590 ], [ %2405, %2396 ], [ %2405, %2409 ], [ %3059, %3074 ], [ %3059, %3089 ], [ %3059, %3121 ], [ %3059, %3123 ]
  %3145 = phi float [ %2406, %3052 ], [ %2406, %2590 ], [ %2406, %2396 ], [ %2406, %2409 ], [ %3086, %3074 ], [ %3120, %3089 ], [ %2406, %3121 ], [ %3134, %3123 ]
  %3146 = phi float [ %2407, %3052 ], [ %2407, %2590 ], [ %2407, %2396 ], [ %2407, %2409 ], [ %3083, %3074 ], [ %3097, %3089 ], [ %2407, %3121 ], [ %3131, %3123 ]
  %3147 = phi float [ %3060, %3052 ], [ %2408, %2590 ], [ %2408, %2396 ], [ %2408, %2409 ], [ %3060, %3074 ], [ %3060, %3089 ], [ %3060, %3121 ], [ %3060, %3123 ]
  %3148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3149 = extractvalue %dx.types.CBufRet.f32 %3148, 0
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 0
  %3152 = and i32 %171, 65535
  %3153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3152)  ; LegacyF16ToF32(value)
  %3154 = lshr i32 %171, 16
  %3155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3154)  ; LegacyF16ToF32(value)
  %3156 = and i32 %172, 65535
  %3157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3156)  ; LegacyF16ToF32(value)
  %3158 = fmul fast float %3153, %3138
  %3159 = fmul fast float %3155, %3139
  %3160 = fmul fast float %3157, %3140
  %3161 = shl i32 %173, 4
  %3162 = and i32 %3161, 32752
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = lshr i32 %173, 7
  %3165 = and i32 %3164, 32752
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = lshr i32 %173, 22
  %3168 = shl nuw nsw i32 %3167, 5
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = and i32 %174, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = fmul fast float %3151, %3141
  %3173 = fmul fast float %3172, %3163
  %3174 = fmul fast float %3173, %3171
  %3175 = fmul fast float %3151, %3142
  %3176 = fmul fast float %3175, %3166
  %3177 = fmul fast float %3176, %3171
  %3178 = fmul fast float %3151, %3143
  %3179 = fmul fast float %3178, %3169
  %3180 = fmul fast float %3179, %3171
  %3181 = call float @dx.op.dot2.f32(i32 54, float %3136, float %3137, float %3136, float %3137)  ; Dot2(ax,ay,bx,by)
  %3182 = fmul fast float %3181, 0x3FE3333340000000
  %3183 = fsub fast float 1.000000e+00, %3182
  %3184 = call float @dx.op.dot3.f32(i32 55, float %3136, float %3137, float %3183, float %3136, float %3137, float %3183)  ; Dot3(ax,ay,az,bx,by,bz)
  %3185 = call float @dx.op.unary.f32(i32 25, float %3184)  ; Rsqrt(value)
  %3186 = fmul fast float %3185, %3136
  %3187 = fmul fast float %3185, %3137
  %3188 = fmul fast float %3183, %3185
  %3189 = fmul fast float %3188, %85
  %3190 = fmul fast float %3188, %86
  %3191 = fmul fast float %3188, %87
  %3192 = fmul fast float %3186, %59
  %3193 = fmul fast float %3186, %60
  %3194 = fmul fast float %3186, %61
  %3195 = fadd fast float %3189, %3192
  %3196 = fadd fast float %3190, %3193
  %3197 = fadd fast float %3191, %3194
  %3198 = fmul fast float %97, %3187
  %3199 = fmul fast float %98, %3187
  %3200 = fmul fast float %99, %3187
  %3201 = fadd fast float %3195, %3198
  %3202 = fadd fast float %3196, %3199
  %3203 = fadd fast float %3197, %3200
  %3204 = call float @dx.op.dot3.f32(i32 55, float %3201, float %3202, float %3203, float %3201, float %3202, float %3203)  ; Dot3(ax,ay,az,bx,by,bz)
  %3205 = call float @dx.op.unary.f32(i32 25, float %3204)  ; Rsqrt(value)
  %3206 = fmul fast float %3201, %3205
  %3207 = fmul fast float %3202, %3205
  %3208 = fmul fast float %3203, %3205
  %3209 = icmp eq i32 %35, 65535
  br i1 %3209, label %3724, label %3210

; <label>:3210                                    ; preds = %3135
  %3211 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3212 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3213 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3214 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3215 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3216 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3217 = fadd fast float %3211, %36
  %3218 = fadd fast float %3212, %37
  %3219 = fadd fast float %3213, %38
  %3220 = fadd fast float %3214, %36
  %3221 = fadd fast float %3215, %37
  %3222 = fadd fast float %3216, %38
  %3223 = mul i32 %35, 48
  %3224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.ResRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.ResRet.f32 %3224, 2
  %3228 = add i32 %3223, 16
  %3229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.ResRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.ResRet.f32 %3229, 2
  %3233 = add i32 %3223, 32
  %3234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.ResRet.f32 %3234, 1
  %3237 = extractvalue %dx.types.ResRet.f32 %3234, 2
  %3238 = extractvalue %dx.types.ResRet.f32 %3234, 3
  %3239 = bitcast float %3238 to i32
  %3240 = fmul fast float %3225, %36
  %3241 = fmul fast float %3226, %37
  %3242 = fmul fast float %3227, %38
  %3243 = fsub fast float %3240, %3230
  %3244 = fsub fast float %3241, %3231
  %3245 = fsub fast float %3242, %3232
  %3246 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3247 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3248 = call float @dx.op.unary.f32(i32 7, float %3245)  ; Saturate(value)
  %3249 = fmul fast float %3246, %3235
  %3250 = fmul fast float %3247, %3236
  %3251 = fmul fast float %3248, %3237
  %3252 = fadd fast float %3235, -1.000000e+00
  %3253 = fadd fast float %3236, -1.000000e+00
  %3254 = fadd fast float %3237, -1.000000e+00
  %3255 = call float @dx.op.unary.f32(i32 27, float %3249)  ; Round_ni(value)
  %3256 = call float @dx.op.unary.f32(i32 27, float %3250)  ; Round_ni(value)
  %3257 = call float @dx.op.unary.f32(i32 27, float %3251)  ; Round_ni(value)
  %3258 = call float @dx.op.binary.f32(i32 36, float %3255, float %3252)  ; FMin(a,b)
  %3259 = call float @dx.op.binary.f32(i32 36, float %3256, float %3253)  ; FMin(a,b)
  %3260 = call float @dx.op.binary.f32(i32 36, float %3257, float %3254)  ; FMin(a,b)
  %3261 = fmul fast float %3260, %3236
  %3262 = fadd fast float %3261, %3259
  %3263 = fmul fast float %3262, %3235
  %3264 = fadd fast float %3263, %3258
  %3265 = fptosi float %3264 to i32
  %3266 = add nsw i32 %3265, %3239
  %3267 = shl nsw i32 %3266, 2
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = lshr i32 %3269, 16
  %3271 = icmp eq i32 %3270, 0
  br i1 %3271, label %3693, label %3272

; <label>:3272                                    ; preds = %3210
  br label %3273

; <label>:3273                                    ; preds = %3394, %3272
  %3274 = phi i32 [ %3296, %3394 ], [ %3270, %3272 ]
  %3275 = phi float [ %3395, %3394 ], [ 0.000000e+00, %3272 ]
  %3276 = phi float [ %3396, %3394 ], [ %3149, %3272 ]
  %3277 = phi float [ %3397, %3394 ], [ %3147, %3272 ]
  %3278 = phi float [ %3398, %3394 ], [ 0.000000e+00, %3272 ]
  %3279 = phi float [ %3399, %3394 ], [ 0.000000e+00, %3272 ]
  %3280 = phi float [ %3400, %3394 ], [ %3174, %3272 ]
  %3281 = phi float [ %3401, %3394 ], [ %3177, %3272 ]
  %3282 = phi float [ %3402, %3394 ], [ %3180, %3272 ]
  %3283 = phi float [ %3403, %3394 ], [ %3206, %3272 ]
  %3284 = phi float [ %3404, %3394 ], [ %3207, %3272 ]
  %3285 = phi float [ %3405, %3394 ], [ %3208, %3272 ]
  %3286 = phi float [ %3406, %3394 ], [ %3146, %3272 ]
  %3287 = phi float [ %3407, %3394 ], [ %3145, %3272 ]
  %3288 = phi float [ %3408, %3394 ], [ 0.000000e+00, %3272 ]
  %3289 = phi float [ %3409, %3394 ], [ %3144, %3272 ]
  %3290 = phi float [ %3410, %3394 ], [ %3158, %3272 ]
  %3291 = phi float [ %3411, %3394 ], [ %3159, %3272 ]
  %3292 = phi float [ %3412, %3394 ], [ %3160, %3272 ]
  %3293 = shl nuw nsw i32 %3274, 2
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = lshr i32 %3295, 16
  %3297 = shl i32 %3295, 8
  %3298 = and i32 %3297, 16776960
  %3299 = or i32 %3298, 48
  %3300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.ResRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.ResRet.f32 %3300, 2
  %3304 = or i32 %3298, 64
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = extractvalue %dx.types.ResRet.i32 %3305, 1
  %3308 = or i32 %3298, 80
  %3309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.f32 %3309, 2
  %3311 = extractvalue %dx.types.ResRet.f32 %3309, 3
  %3312 = or i32 %3298, 96
  %3313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = extractvalue %dx.types.ResRet.f32 %3313, 1
  %3316 = extractvalue %dx.types.ResRet.f32 %3313, 2
  %3317 = extractvalue %dx.types.ResRet.f32 %3313, 3
  %3318 = or i32 %3298, 112
  %3319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.f32 %3319, 2
  %3321 = or i32 %3298, 128
  %3322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.f32 %3322, 0
  %3324 = extractvalue %dx.types.ResRet.f32 %3322, 1
  %3325 = extractvalue %dx.types.ResRet.f32 %3322, 2
  %3326 = extractvalue %dx.types.ResRet.f32 %3322, 3
  %3327 = or i32 %3298, 144
  %3328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  %3330 = extractvalue %dx.types.ResRet.f32 %3328, 1
  %3331 = extractvalue %dx.types.ResRet.f32 %3328, 2
  %3332 = extractvalue %dx.types.ResRet.f32 %3328, 3
  %3333 = or i32 %3298, 160
  %3334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.ResRet.f32 %3334, 1
  %3337 = extractvalue %dx.types.ResRet.f32 %3334, 2
  %3338 = extractvalue %dx.types.ResRet.f32 %3334, 3
  %3339 = or i32 %3298, 192
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = or i32 %3298, 208
  %3343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = or i32 %3298, 248
  %3346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.ResRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.ResRet.f32 %3349, 2
  %3353 = extractvalue %dx.types.ResRet.f32 %3349, 3
  %3354 = call float @dx.op.dot4.f32(i32 56, float %3350, float %3351, float %3352, float %3353, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3355 = or i32 %3298, 16
  %3356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = extractvalue %dx.types.ResRet.f32 %3356, 3
  %3361 = call float @dx.op.dot4.f32(i32 56, float %3357, float %3358, float %3359, float %3360, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3362 = or i32 %3298, 32
  %3363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.ResRet.f32 %3363, 1
  %3366 = extractvalue %dx.types.ResRet.f32 %3363, 2
  %3367 = extractvalue %dx.types.ResRet.f32 %3363, 3
  %3368 = call float @dx.op.dot4.f32(i32 56, float %3364, float %3365, float %3366, float %3367, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3369 = call float @dx.op.unary.f32(i32 27, float %3354)  ; Round_ni(value)
  %3370 = call float @dx.op.unary.f32(i32 6, float %3369)  ; FAbs(value)
  %3371 = call float @dx.op.unary.f32(i32 27, float %3361)  ; Round_ni(value)
  %3372 = call float @dx.op.unary.f32(i32 6, float %3371)  ; FAbs(value)
  %3373 = call float @dx.op.unary.f32(i32 6, float %3368)  ; FAbs(value)
  %3374 = call float @dx.op.unary.f32(i32 27, float %3373)  ; Round_ni(value)
  %3375 = fadd fast float %3372, %3370
  %3376 = fadd fast float %3375, %3374
  %3377 = fcmp fast oeq float %3376, 0.000000e+00
  %3378 = call float @dx.op.dot4.f32(i32 56, float %3350, float %3351, float %3352, float %3353, float %3217, float %3218, float %3219, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3379 = call float @dx.op.dot4.f32(i32 56, float %3357, float %3358, float %3359, float %3360, float %3217, float %3218, float %3219, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3380 = call float @dx.op.dot4.f32(i32 56, float %3350, float %3351, float %3352, float %3353, float %3220, float %3221, float %3222, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3381 = call float @dx.op.dot4.f32(i32 56, float %3357, float %3358, float %3359, float %3360, float %3220, float %3221, float %3222, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3382 = fsub fast float %3378, %3354
  %3383 = fsub fast float %3380, %3354
  %3384 = fsub fast float %3379, %3361
  %3385 = fsub fast float %3381, %3361
  %3386 = call float @dx.op.dot3.f32(i32 55, float %3301, float %3302, float %3303, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3388 = extractvalue %dx.types.CBufRet.f32 %3387, 2
  %3389 = fadd fast float %3388, %3386
  %3390 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  %3391 = extractvalue %dx.types.CBufRet.f32 %3387, 0
  %3392 = fcmp fast ogt float %3390, %3391
  %3393 = and i1 %3377, %3392
  br i1 %3393, label %3414, label %3394

; <label>:3394                                    ; preds = %3679, %3497, %3414, %3273
  %3395 = phi float [ %3275, %3414 ], [ %3500, %3497 ], [ %3500, %3679 ], [ %3275, %3273 ]
  %3396 = phi float [ %3276, %3414 ], [ %3276, %3497 ], [ %3654, %3679 ], [ %3276, %3273 ]
  %3397 = phi float [ %3277, %3414 ], [ %3277, %3497 ], [ %3652, %3679 ], [ %3277, %3273 ]
  %3398 = phi float [ %3278, %3414 ], [ %3278, %3497 ], [ %3624, %3679 ], [ %3278, %3273 ]
  %3399 = phi float [ %3279, %3414 ], [ %3279, %3497 ], [ %3622, %3679 ], [ %3279, %3273 ]
  %3400 = phi float [ %3280, %3414 ], [ %3280, %3497 ], [ %3689, %3679 ], [ %3280, %3273 ]
  %3401 = phi float [ %3281, %3414 ], [ %3281, %3497 ], [ %3690, %3679 ], [ %3281, %3273 ]
  %3402 = phi float [ %3282, %3414 ], [ %3282, %3497 ], [ %3691, %3679 ], [ %3282, %3273 ]
  %3403 = phi float [ %3283, %3414 ], [ %3283, %3497 ], [ %3603, %3679 ], [ %3283, %3273 ]
  %3404 = phi float [ %3284, %3414 ], [ %3284, %3497 ], [ %3604, %3679 ], [ %3284, %3273 ]
  %3405 = phi float [ %3285, %3414 ], [ %3285, %3497 ], [ %3605, %3679 ], [ %3285, %3273 ]
  %3406 = phi float [ %3286, %3414 ], [ %3286, %3497 ], [ %3632, %3679 ], [ %3286, %3273 ]
  %3407 = phi float [ %3287, %3414 ], [ %3287, %3497 ], [ %3629, %3679 ], [ %3287, %3273 ]
  %3408 = phi float [ %3288, %3414 ], [ %3288, %3497 ], [ %3626, %3679 ], [ %3288, %3273 ]
  %3409 = phi float [ %3289, %3414 ], [ %3289, %3497 ], [ %3620, %3679 ], [ %3289, %3273 ]
  %3410 = phi float [ %3290, %3414 ], [ %3290, %3497 ], [ %3615, %3679 ], [ %3290, %3273 ]
  %3411 = phi float [ %3291, %3414 ], [ %3291, %3497 ], [ %3616, %3679 ], [ %3291, %3273 ]
  %3412 = phi float [ %3292, %3414 ], [ %3292, %3497 ], [ %3617, %3679 ], [ %3292, %3273 ]
  %3413 = icmp eq i32 %3296, 0
  br i1 %3413, label %3692, label %3273

; <label>:3414                                    ; preds = %3273
  %3415 = extractvalue %dx.types.ResRet.f32 %3300, 3
  %3416 = extractvalue %dx.types.ResRet.f32 %3319, 3
  %3417 = extractvalue %dx.types.ResRet.f32 %3319, 1
  %3418 = extractvalue %dx.types.ResRet.f32 %3319, 0
  %3419 = extractvalue %dx.types.ResRet.f32 %3309, 1
  %3420 = extractvalue %dx.types.ResRet.f32 %3309, 0
  %3421 = extractvalue %dx.types.ResRet.i32 %3305, 3
  %3422 = extractvalue %dx.types.ResRet.i32 %3305, 2
  %3423 = bitcast float %3415 to i32
  %3424 = add i32 %3421, 0
  %3425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3424, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3427 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3425, %dx.types.Handle %3426, float %3354, float %3361, float undef, float undef, i32 0, i32 0, i32 undef, float %3382, float %3384, float undef, float %3383, float %3385, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3428 = extractvalue %dx.types.ResRet.f32 %3427, 0
  %3429 = fmul fast float %3428, %3420
  %3430 = fadd fast float %3429, %3419
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3432 = fmul fast float %3354, %3314
  %3433 = call float @dx.op.tertiary.f32(i32 46, float %3315, float %3361, float %3432)  ; FMad(a,b,c)
  %3434 = fadd fast float %3433, %3418
  %3435 = fmul fast float %3354, %3316
  %3436 = call float @dx.op.tertiary.f32(i32 46, float %3317, float %3361, float %3435)  ; FMad(a,b,c)
  %3437 = fadd fast float %3436, %3417
  %3438 = fmul fast float %3382, %3314
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3315, float %3384, float %3438)  ; FMad(a,b,c)
  %3440 = fmul fast float %3382, %3316
  %3441 = call float @dx.op.tertiary.f32(i32 46, float %3317, float %3384, float %3440)  ; FMad(a,b,c)
  %3442 = fmul fast float %3383, %3314
  %3443 = call float @dx.op.tertiary.f32(i32 46, float %3315, float %3385, float %3442)  ; FMad(a,b,c)
  %3444 = fmul fast float %3383, %3316
  %3445 = call float @dx.op.tertiary.f32(i32 46, float %3317, float %3385, float %3444)  ; FMad(a,b,c)
  %3446 = add i32 %3422, 0
  %3447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3446, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3448 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3447, %dx.types.Handle %3426, float %3434, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float %3439, float %3441, float undef, float %3443, float %3445, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3450 = and i32 %3423, 1024
  %3451 = icmp ne i32 %3450, 0
  %3452 = fcmp fast ogt float %3449, 0x3FE0101020000000
  %3453 = uitofp i1 %3452 to float
  %3454 = select i1 %3451, float %3453, float %3449
  %3455 = and i32 %3423, 8192
  %3456 = icmp ne i32 %3455, 0
  %3457 = select i1 %3456, float %3416, float 1.000000e+00
  %3458 = fmul fast float %3354, 2.000000e+00
  %3459 = fadd fast float %3458, -1.000000e+00
  %3460 = call float @dx.op.unary.f32(i32 6, float %3459)  ; FAbs(value)
  %3461 = fmul fast float %3460, %3347
  %3462 = fsub fast float %3461, %3347
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  %3464 = fmul fast float %3361, 2.000000e+00
  %3465 = fadd fast float %3464, -1.000000e+00
  %3466 = call float @dx.op.unary.f32(i32 6, float %3465)  ; FAbs(value)
  %3467 = fmul fast float %3466, %3348
  %3468 = fsub fast float %3467, %3348
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fmul fast float %3373, %3310
  %3471 = fsub fast float %3470, %3310
  %3472 = call float @dx.op.unary.f32(i32 7, float %3471)  ; Saturate(value)
  %3473 = fmul fast float %3431, %3457
  %3474 = fmul fast float %3473, %3428
  %3475 = fmul fast float %3474, %3463
  %3476 = fmul fast float %3475, %3454
  %3477 = fmul fast float %3476, %3469
  %3478 = fmul fast float %3477, %3472
  %3479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.f32 %3479, 1
  %3481 = extractvalue %dx.types.CBufRet.f32 %3479, 0
  %3482 = fsub fast float %3390, %3481
  %3483 = fmul fast float %3482, %3480
  %3484 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3485 = fmul fast float %3478, %3311
  %3486 = fadd fast float %3478, %3311
  %3487 = fmul fast float %3486, %3320
  %3488 = fsub fast float %3487, %3320
  %3489 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  %3490 = and i32 %3423, 128
  %3491 = icmp ne i32 %3490, 0
  %3492 = select i1 %3491, float %3489, float %3485
  %3493 = fmul fast float %3492, %3484
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = fcmp fast ugt float %3493, %3495
  br i1 %3496, label %3497, label %3394

; <label>:3497                                    ; preds = %3414
  %3498 = select i1 %3456, float %3493, float 0.000000e+00
  %3499 = fadd fast float %3498, %3275
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  br i1 %3456, label %3394, label %3501

; <label>:3501                                    ; preds = %3497
  %3502 = and i32 %3423, 4
  %3503 = and i32 %3423, 8
  %3504 = add i32 %3306, 0
  %3505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3504, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3507 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3505, %dx.types.Handle %3506, float %3434, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float %3439, float %3441, float undef, float %3443, float %3445, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = extractvalue %dx.types.ResRet.f32 %3507, 3
  %3512 = bitcast float %3332 to i32
  %3513 = and i32 %3512, 255
  %3514 = uitofp i32 %3513 to float
  %3515 = lshr i32 %3512, 8
  %3516 = and i32 %3515, 255
  %3517 = uitofp i32 %3516 to float
  %3518 = fmul fast float %3511, %3514
  %3519 = fadd fast float %3518, %3517
  %3520 = fmul fast float %3519, 0x3F70101000000000
  %3521 = add i32 %3307, 0
  %3522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3521, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3523 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3522, %dx.types.Handle %3506, float %3434, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float %3439, float %3441, float undef, float %3443, float %3445, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = extractvalue %dx.types.ResRet.f32 %3523, 1
  %3526 = extractvalue %dx.types.ResRet.f32 %3523, 2
  %3527 = extractvalue %dx.types.ResRet.f32 %3523, 3
  %3528 = bitcast float %3326 to i32
  %3529 = and i32 %3528, 255
  %3530 = uitofp i32 %3529 to float
  %3531 = lshr i32 %3528, 8
  %3532 = and i32 %3531, 255
  %3533 = uitofp i32 %3532 to float
  %3534 = lshr i32 %3528, 16
  %3535 = and i32 %3534, 255
  %3536 = uitofp i32 %3535 to float
  %3537 = fmul fast float %3536, 0x3F70101000000000
  %3538 = fmul fast float %3524, %3530
  %3539 = fadd fast float %3538, %3533
  %3540 = fmul fast float %3539, 0x3F70101000000000
  %3541 = fadd fast float %3525, -5.000000e-01
  %3542 = fadd fast float %3527, -5.000000e-01
  %3543 = fmul fast float %3541, %3537
  %3544 = fmul fast float %3542, %3537
  %3545 = fadd fast float %3543, 5.000000e-01
  %3546 = fadd fast float %3544, 5.000000e-01
  %3547 = fmul fast float %3508, %3335
  %3548 = fmul fast float %3509, %3336
  %3549 = fmul fast float %3510, %3337
  %3550 = fmul fast float %3545, 2.000000e+00
  %3551 = fadd fast float %3550, -1.000000e+00
  %3552 = fmul fast float %3546, 2.000000e+00
  %3553 = fadd fast float %3552, -1.000000e+00
  %3554 = fadd fast float %3551, %3553
  %3555 = fmul fast float %3554, 5.000000e-01
  %3556 = fsub fast float %3551, %3553
  %3557 = fmul fast float %3556, 5.000000e-01
  %3558 = call float @dx.op.unary.f32(i32 6, float %3555)  ; FAbs(value)
  %3559 = fsub fast float 1.000000e+00, %3558
  %3560 = call float @dx.op.unary.f32(i32 6, float %3557)  ; FAbs(value)
  %3561 = fsub fast float %3559, %3560
  %3562 = call float @dx.op.dot3.f32(i32 55, float %3555, float %3557, float %3561, float %3555, float %3557, float %3561)  ; Dot3(ax,ay,az,bx,by,bz)
  %3563 = call float @dx.op.unary.f32(i32 25, float %3562)  ; Rsqrt(value)
  %3564 = fmul fast float %3555, %3563
  %3565 = fmul fast float %3557, %3563
  %3566 = fmul fast float %3563, %3561
  %3567 = fmul fast float %3566, %3301
  %3568 = fmul fast float %3566, %3302
  %3569 = fmul fast float %3566, %3303
  %3570 = fmul fast float %3564, %3323
  %3571 = fmul fast float %3564, %3324
  %3572 = fmul fast float %3564, %3325
  %3573 = fadd fast float %3570, %3567
  %3574 = fadd fast float %3571, %3568
  %3575 = fadd fast float %3572, %3569
  %3576 = fmul fast float %3565, %3329
  %3577 = fmul fast float %3565, %3330
  %3578 = fmul fast float %3565, %3331
  %3579 = fadd fast float %3573, %3576
  %3580 = fadd fast float %3574, %3577
  %3581 = fadd fast float %3575, %3578
  %3582 = call float @dx.op.dot3.f32(i32 55, float %3579, float %3580, float %3581, float %3579, float %3580, float %3581)  ; Dot3(ax,ay,az,bx,by,bz)
  %3583 = call float @dx.op.unary.f32(i32 25, float %3582)  ; Rsqrt(value)
  %3584 = fmul fast float %3579, %3583
  %3585 = fmul fast float %3580, %3583
  %3586 = fmul fast float %3581, %3583
  %3587 = icmp ne i32 %3503, 0
  %3588 = select i1 %3587, float 1.000000e+00, float 0.000000e+00
  %3589 = fmul fast float %3493, %3588
  %3590 = and i32 %3423, 1
  %3591 = icmp eq i32 %3590, 0
  br i1 %3591, label %3592, label %3596

; <label>:3592                                    ; preds = %3501
  %3593 = fsub fast float %3584, %3283
  %3594 = fsub fast float %3585, %3284
  %3595 = fsub fast float %3586, %3285
  br label %3596

; <label>:3596                                    ; preds = %3592, %3501
  %3597 = phi float [ %3593, %3592 ], [ %3584, %3501 ]
  %3598 = phi float [ %3594, %3592 ], [ %3585, %3501 ]
  %3599 = phi float [ %3595, %3592 ], [ %3586, %3501 ]
  %3600 = fmul float %3599, %3589
  %3601 = fmul float %3598, %3589
  %3602 = fmul float %3597, %3589
  %3603 = fadd fast float %3602, %3283
  %3604 = fadd fast float %3601, %3284
  %3605 = fadd fast float %3600, %3285
  %3606 = icmp ne i32 %3502, 0
  %3607 = select i1 %3606, float 1.000000e+00, float 0.000000e+00
  %3608 = fmul fast float %3493, %3607
  %3609 = fsub fast float %3547, %3290
  %3610 = fsub fast float %3548, %3291
  %3611 = fsub fast float %3549, %3292
  %3612 = fmul fast float %3609, %3608
  %3613 = fmul fast float %3610, %3608
  %3614 = fmul fast float %3611, %3608
  %3615 = fadd fast float %3612, %3290
  %3616 = fadd fast float %3613, %3291
  %3617 = fadd fast float %3614, %3292
  %3618 = fsub fast float %3520, %3289
  %3619 = fmul fast float %3618, %3608
  %3620 = fadd fast float %3619, %3289
  %3621 = fmul fast float %3608, %3279
  %3622 = fsub fast float %3279, %3621
  %3623 = fmul fast float %3608, %3278
  %3624 = fsub fast float %3278, %3623
  %3625 = fadd fast float %3493, %3288
  %3626 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3627 = fsub fast float %3540, %3287
  %3628 = fmul fast float %3627, %3589
  %3629 = fadd fast float %3628, %3287
  %3630 = fsub fast float %3526, %3286
  %3631 = fmul fast float %3630, %3589
  %3632 = fadd fast float %3631, %3286
  %3633 = call float @dx.op.dot3.f32(i32 55, float %3547, float %3548, float %3549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3635 = extractvalue %dx.types.CBufRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.CBufRet.f32 %3634, 1
  %3637 = fmul fast float %3636, %3633
  %3638 = fadd fast float %3637, %3635
  %3639 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3640 = bitcast float %3338 to i32
  %3641 = and i32 %3640, 65535
  %3642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3641)  ; LegacyF16ToF32(value)
  %3643 = lshr i32 %3640, 16
  %3644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3643)  ; LegacyF16ToF32(value)
  %3645 = fcmp fast oge float %3642, 0.000000e+00
  %3646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3647 = extractvalue %dx.types.CBufRet.f32 %3646, 0
  %3648 = select i1 %3645, float %3642, float %3647
  %3649 = fadd fast float %3648, %3644
  %3650 = fsub fast float %3639, %3277
  %3651 = fmul fast float %3650, %3493
  %3652 = fadd fast float %3651, %3277
  %3653 = fmul fast float %3649, %3493
  %3654 = call float @dx.op.binary.f32(i32 35, float %3276, float %3653)  ; FMax(a,b)
  %3655 = and i32 %3423, 16
  %3656 = icmp eq i32 %3655, 0
  br i1 %3656, label %3679, label %3657

; <label>:3657                                    ; preds = %3596
  %3658 = bitcast float %3344 to i32
  %3659 = add i32 %3341, 0
  %3660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3659, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3661 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3660, %dx.types.Handle %3506, float %3434, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float %3439, float %3441, float undef, float %3443, float %3445, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3662 = extractvalue %dx.types.ResRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.ResRet.f32 %3661, 2
  %3665 = and i32 %3658, 65535
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = fmul fast float %3662, %3335
  %3668 = fmul fast float %3663, %3336
  %3669 = fmul fast float %3664, %3337
  %3670 = and i32 %3423, 16384
  %3671 = icmp ne i32 %3670, 0
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3674 = select i1 %3671, float %3673, float 1.000000e+00
  %3675 = fmul fast float %3674, %3666
  %3676 = fmul fast float %3667, %3675
  %3677 = fmul fast float %3668, %3675
  %3678 = fmul fast float %3669, %3675
  br label %3679

; <label>:3679                                    ; preds = %3657, %3596
  %3680 = phi float [ %3676, %3657 ], [ 0.000000e+00, %3596 ]
  %3681 = phi float [ %3677, %3657 ], [ 0.000000e+00, %3596 ]
  %3682 = phi float [ %3678, %3657 ], [ 0.000000e+00, %3596 ]
  %3683 = fsub fast float %3680, %3280
  %3684 = fsub fast float %3681, %3281
  %3685 = fsub fast float %3682, %3282
  %3686 = fmul fast float %3683, %3493
  %3687 = fmul fast float %3684, %3493
  %3688 = fmul fast float %3685, %3493
  %3689 = fadd fast float %3686, %3280
  %3690 = fadd fast float %3687, %3281
  %3691 = fadd fast float %3688, %3282
  br label %3394

; <label>:3692                                    ; preds = %3394
  br label %3693

; <label>:3693                                    ; preds = %3692, %3210
  %3694 = phi float [ 0.000000e+00, %3210 ], [ %3395, %3692 ]
  %3695 = phi float [ %3149, %3210 ], [ %3396, %3692 ]
  %3696 = phi float [ %3147, %3210 ], [ %3397, %3692 ]
  %3697 = phi float [ 0.000000e+00, %3210 ], [ %3398, %3692 ]
  %3698 = phi float [ 0.000000e+00, %3210 ], [ %3399, %3692 ]
  %3699 = phi float [ %3174, %3210 ], [ %3400, %3692 ]
  %3700 = phi float [ %3177, %3210 ], [ %3401, %3692 ]
  %3701 = phi float [ %3180, %3210 ], [ %3402, %3692 ]
  %3702 = phi float [ %3206, %3210 ], [ %3403, %3692 ]
  %3703 = phi float [ %3207, %3210 ], [ %3404, %3692 ]
  %3704 = phi float [ %3208, %3210 ], [ %3405, %3692 ]
  %3705 = phi float [ %3146, %3210 ], [ %3406, %3692 ]
  %3706 = phi float [ %3145, %3210 ], [ %3407, %3692 ]
  %3707 = phi float [ 0.000000e+00, %3210 ], [ %3408, %3692 ]
  %3708 = phi float [ %3144, %3210 ], [ %3409, %3692 ]
  %3709 = phi float [ %3158, %3210 ], [ %3410, %3692 ]
  %3710 = phi float [ %3159, %3210 ], [ %3411, %3692 ]
  %3711 = phi float [ %3160, %3210 ], [ %3412, %3692 ]
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3702, float %3703, float %3704, float %3702, float %3703, float %3704)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = call float @dx.op.unary.f32(i32 25, float %3712)  ; Rsqrt(value)
  %3714 = fmul fast float %3713, %3702
  %3715 = fmul fast float %3713, %3703
  %3716 = fmul fast float %3713, %3704
  %3717 = fadd fast float %3707, %927
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = call float @dx.op.dot3.f32(i32 55, float %3714, float %3715, float %3716, float %3714, float %3715, float %3716)  ; Dot3(ax,ay,az,bx,by,bz)
  %3720 = call float @dx.op.unary.f32(i32 25, float %3719)  ; Rsqrt(value)
  %3721 = fmul fast float %3720, %3714
  %3722 = fmul fast float %3720, %3715
  %3723 = fmul fast float %3720, %3716
  br label %3724

; <label>:3724                                    ; preds = %3693, %3135
  %3725 = phi float [ %3721, %3693 ], [ %3206, %3135 ]
  %3726 = phi float [ %3722, %3693 ], [ %3207, %3135 ]
  %3727 = phi float [ %3723, %3693 ], [ %3208, %3135 ]
  %3728 = phi float [ %3709, %3693 ], [ %3158, %3135 ]
  %3729 = phi float [ %3710, %3693 ], [ %3159, %3135 ]
  %3730 = phi float [ %3711, %3693 ], [ %3160, %3135 ]
  %3731 = phi float [ %3699, %3693 ], [ %3174, %3135 ]
  %3732 = phi float [ %3700, %3693 ], [ %3177, %3135 ]
  %3733 = phi float [ %3701, %3693 ], [ %3180, %3135 ]
  %3734 = phi float [ %3708, %3693 ], [ %3144, %3135 ]
  %3735 = phi float [ %3718, %3693 ], [ %927, %3135 ]
  %3736 = phi float [ %3706, %3693 ], [ %3145, %3135 ]
  %3737 = phi float [ %3705, %3693 ], [ %3146, %3135 ]
  %3738 = phi float [ %3698, %3693 ], [ 0.000000e+00, %3135 ]
  %3739 = phi float [ %3697, %3693 ], [ 0.000000e+00, %3135 ]
  %3740 = phi float [ %3694, %3693 ], [ 0.000000e+00, %3135 ]
  %3741 = phi float [ %3695, %3693 ], [ %3149, %3135 ]
  %3742 = phi float [ %3696, %3693 ], [ %3147, %3135 ]
  %3743 = fadd fast float %3734, 0xBFB99999A0000000
  %3744 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3745 = fmul fast float %3744, 0x3FF1C71C80000000
  %3746 = call float @dx.op.binary.f32(i32 36, float %3734, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3747 = fsub fast float 1.000000e+00, %3745
  %3748 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3749 = fmul fast float %3748, %3728
  %3750 = fmul fast float %3748, %3729
  %3751 = fmul fast float %3748, %3730
  %3752 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3753 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3754 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3755 = fmul fast float %3745, %3728
  %3756 = fmul fast float %3745, %3729
  %3757 = fmul fast float %3745, %3730
  %3758 = fadd fast float %3755, %3746
  %3759 = fadd fast float %3756, %3746
  %3760 = fadd fast float %3757, %3746
  %3761 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3762 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3763 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3764 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  %3765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.i32 %3765, 3
  %3767 = and i32 %3766, 8
  %3768 = icmp ne i32 %3767, 0
  %3769 = call float @dx.op.binary.f32(i32 35, float %3752, float %3728)  ; FMax(a,b)
  %3770 = call float @dx.op.binary.f32(i32 35, float %3753, float %3728)  ; FMax(a,b)
  %3771 = call float @dx.op.binary.f32(i32 35, float %3754, float %3728)  ; FMax(a,b)
  %3772 = call float @dx.op.dot3.f32(i32 55, float %3752, float %3753, float %3754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3773 = select i1 %211, float %3728, float %3752
  %3774 = select i1 %211, float %3772, float %3753
  %3775 = select i1 %211, float 1.000000e+00, float %3754
  %3776 = select i1 %3768, float %3769, float %3773
  %3777 = select i1 %3768, float %3770, float %3774
  %3778 = select i1 %3768, float %3771, float %3775
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.CBufRet.f32 %3779, 2
  %3783 = fadd fast float %3780, %165
  %3784 = fadd fast float %3781, %166
  %3785 = fadd fast float %3782, %167
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.CBufRet.f32 %3786, 1
  %3789 = fsub fast float %3783, %3787
  %3790 = fsub fast float %3784, %3788
  %3791 = fmul fast float %3789, %3789
  %3792 = fmul fast float %3790, %3790
  %3793 = fadd fast float %3791, %3792
  %3794 = call float @dx.op.unary.f32(i32 24, float %3793)  ; Sqrt(value)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3786, 2
  %3796 = fcmp fast olt float %3794, %3795
  br i1 %3796, label %3797, label %3864

; <label>:3797                                    ; preds = %3724
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 0
  %3800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3800, 0
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.CBufRet.f32 %3798, 1
  %3805 = extractvalue %dx.types.CBufRet.f32 %3800, 1
  %3806 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3807 = extractvalue %dx.types.CBufRet.f32 %3798, 3
  %3808 = extractvalue %dx.types.CBufRet.f32 %3800, 3
  %3809 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %3810 = fadd fast float %3807, %3783
  %3811 = fadd fast float %3808, %3784
  %3812 = fadd fast float %3809, %3785
  %3813 = fmul fast float %3810, %3799
  %3814 = call float @dx.op.tertiary.f32(i32 46, float %3811, float %3801, float %3813)  ; FMad(a,b,c)
  %3815 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3803, float %3814)  ; FMad(a,b,c)
  %3816 = fmul fast float %3810, %3804
  %3817 = call float @dx.op.tertiary.f32(i32 46, float %3811, float %3805, float %3816)  ; FMad(a,b,c)
  %3818 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3806, float %3817)  ; FMad(a,b,c)
  %3819 = fsub fast float %3815, %3807
  %3820 = fsub fast float %3818, %3808
  %3821 = fsub fast float %3819, %3787
  %3822 = fadd fast float %3821, %3795
  %3823 = fsub fast float %3820, %3788
  %3824 = fadd fast float %3823, %3795
  %3825 = extractvalue %dx.types.CBufRet.f32 %3786, 3
  %3826 = fmul fast float %3822, %3825
  %3827 = fmul fast float %3824, %3825
  %3828 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3829 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3830 = fsub fast float 1.000000e+00, %3828
  %3831 = fsub fast float 1.000000e+00, %3829
  %3832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3830, float %3831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = fcmp fast ugt float %3833, 0.000000e+00
  br i1 %3834, label %3835, label %4138

; <label>:3835                                    ; preds = %3797
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 2
  %3838 = fmul fast float %3837, %3833
  %3839 = extractvalue %dx.types.CBufRet.f32 %3836, 3
  %3840 = fadd fast float %3839, %3838
  %3841 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3842 = fadd fast float %3840, %3809
  %3843 = fmul fast float %3815, %3803
  %3844 = call float @dx.op.tertiary.f32(i32 46, float %3818, float %3806, float %3843)  ; FMad(a,b,c)
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3842, float %3841, float %3844)  ; FMad(a,b,c)
  %3846 = fsub fast float %3845, %3809
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3849 = fsub fast float %3846, %3848
  %3850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3830, float %3831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3851 = extractvalue %dx.types.ResRet.f32 %3850, 0
  %3852 = extractvalue %dx.types.ResRet.f32 %3850, 1
  %3853 = extractvalue %dx.types.ResRet.f32 %3850, 2
  %3854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %3830, float %3831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = fadd fast float %3855, %3851
  %3859 = fmul fast float %3858, 0x3F847AE140000000
  %3860 = fadd fast float %3856, %3852
  %3861 = fmul fast float %3860, 0x3F847AE140000000
  %3862 = fadd fast float %3857, %3853
  %3863 = fmul fast float %3862, 0x3F847AE140000000
  br label %4138

; <label>:3864                                    ; preds = %3724
  %3865 = and i32 %190, 1
  %3866 = icmp eq i32 %3865, 0
  br i1 %3866, label %4138, label %3867

; <label>:3867                                    ; preds = %3864
  %3868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.f32 %3868, 0
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3873 = extractvalue %dx.types.CBufRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.CBufRet.f32 %3868, 1
  %3875 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3876 = extractvalue %dx.types.CBufRet.f32 %3872, 1
  %3877 = extractvalue %dx.types.CBufRet.f32 %3868, 3
  %3878 = extractvalue %dx.types.CBufRet.f32 %3870, 3
  %3879 = extractvalue %dx.types.CBufRet.f32 %3872, 3
  %3880 = fadd fast float %3877, %3783
  %3881 = fadd fast float %3878, %3784
  %3882 = fadd fast float %3879, %3785
  %3883 = fmul fast float %3880, %3869
  %3884 = call float @dx.op.tertiary.f32(i32 46, float %3881, float %3871, float %3883)  ; FMad(a,b,c)
  %3885 = call float @dx.op.tertiary.f32(i32 46, float %3882, float %3873, float %3884)  ; FMad(a,b,c)
  %3886 = fmul fast float %3880, %3874
  %3887 = call float @dx.op.tertiary.f32(i32 46, float %3881, float %3875, float %3886)  ; FMad(a,b,c)
  %3888 = call float @dx.op.tertiary.f32(i32 46, float %3882, float %3876, float %3887)  ; FMad(a,b,c)
  %3889 = fsub fast float %3885, %3877
  %3890 = fsub fast float %3888, %3878
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 0
  %3893 = extractvalue %dx.types.CBufRet.f32 %3891, 1
  %3894 = extractvalue %dx.types.CBufRet.f32 %3891, 2
  %3895 = extractvalue %dx.types.CBufRet.f32 %3891, 3
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 3
  %3898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.i32 %3898, 0
  %3900 = extractvalue %dx.types.CBufRet.i32 %3898, 1
  %3901 = udiv i32 %3900, %3899
  %3902 = fsub fast float %3889, %3892
  %3903 = fsub fast float %3890, %3893
  %3904 = call float @dx.op.binary.f32(i32 35, float %3902, float 0.000000e+00)  ; FMax(a,b)
  %3905 = call float @dx.op.binary.f32(i32 35, float %3903, float 0.000000e+00)  ; FMax(a,b)
  %3906 = call float @dx.op.binary.f32(i32 36, float %3904, float %3894)  ; FMin(a,b)
  %3907 = call float @dx.op.binary.f32(i32 36, float %3905, float %3895)  ; FMin(a,b)
  %3908 = add i32 %3899, -1
  %3909 = add i32 %3901, -1
  %3910 = fmul fast float %3906, %3897
  %3911 = fmul fast float %3907, %3897
  %3912 = fptoui float %3910 to i32
  %3913 = fptoui float %3911 to i32
  %3914 = call i32 @dx.op.binary.i32(i32 40, i32 %3912, i32 %3908)  ; UMin(a,b)
  %3915 = call i32 @dx.op.binary.i32(i32 40, i32 %3913, i32 %3909)  ; UMin(a,b)
  %3916 = mul i32 %3915, %3899
  %3917 = add i32 %3916, %3914
  %3918 = shl i32 %3917, 2
  %3919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.i32 %3919, 0
  %3921 = icmp eq i32 %3920, -1
  br i1 %3921, label %4138, label %3922

; <label>:3922                                    ; preds = %3867
  %3923 = mul i32 %3920, 148
  %3924 = add i32 %3923, 4
  %3925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %3927 = add i32 %3923, 8
  %3928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.f32 %3928, 0
  %3930 = add i32 %3923, 36
  %3931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3932 = extractvalue %dx.types.ResRet.f32 %3931, 0
  %3933 = add i32 %3923, 60
  %3934 = add i32 %3923, 92
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = add i32 %3923, 116
  %3938 = fsub fast float %3889, %3926
  %3939 = fsub fast float %3890, %3929
  %3940 = fmul fast float %3897, %3938
  %3941 = fmul fast float %3897, %3939
  %3942 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3943 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3944 = fsub fast float 1.000000e+00, %3943
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3947 = call float @dx.op.unary.f32(i32 83, float %3942)  ; DerivCoarseX(value)
  %3948 = call float @dx.op.unary.f32(i32 83, float %3944)  ; DerivCoarseX(value)
  %3949 = call float @dx.op.unary.f32(i32 84, float %3942)  ; DerivCoarseY(value)
  %3950 = call float @dx.op.unary.f32(i32 84, float %3944)  ; DerivCoarseY(value)
  %3951 = fmul fast float %3947, %3946
  %3952 = fmul fast float %3948, %3946
  %3953 = fmul fast float %3949, %3946
  %3954 = fmul fast float %3950, %3946
  %3955 = call float @dx.op.dot2.f32(i32 54, float %3953, float %3954, float %3953, float %3954)  ; Dot2(ax,ay,bx,by)
  %3956 = call float @dx.op.dot2.f32(i32 54, float %3951, float %3952, float %3951, float %3952)  ; Dot2(ax,ay,bx,by)
  %3957 = call float @dx.op.binary.f32(i32 35, float %3956, float %3955)  ; FMax(a,b)
  %3958 = call float @dx.op.unary.f32(i32 23, float %3957)  ; Log(value)
  %3959 = fmul fast float %3958, 5.000000e-01
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3962 = fadd fast float %3961, %3959
  %3963 = call float @dx.op.binary.f32(i32 35, float %3962, float 0.000000e+00)  ; FMax(a,b)
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 3
  %3966 = fadd fast float %3965, %3963
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3969 = fadd fast float %3966, %3968
  %3970 = add i32 %3936, 0
  %3971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3970, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3972 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3971, i32 0)  ; GetDimensions(handle,mipLevel)
  %3973 = extractvalue %dx.types.Dimensions %3972, 0
  %3974 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3973)  ; FirstbitLo(value)
  %3975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.i32 %3975, 1
  %3977 = sub nsw i32 %3976, %3974
  %3978 = sitofp i32 %3977 to float
  %3979 = fsub fast float %3969, %3978
  %3980 = call float @dx.op.binary.f32(i32 35, float %3979, float 0.000000e+00)  ; FMax(a,b)
  %3981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3971, %dx.types.Handle %28, float %3942, float %3944, float %3932, float undef, i32 0, i32 0, i32 undef, float %3980)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = fcmp ule float %3982, 0x3FE0101020000000
  %3984 = extractvalue %dx.types.CBufRet.i32 %3975, 0
  %3985 = and i32 %3984, 128
  %3986 = icmp ne i32 %3985, 0
  %3987 = and i1 %3983, %3986
  br i1 %3987, label %4138, label %3988

; <label>:3988                                    ; preds = %3922
  %3989 = add i32 %3923, 20
  %3990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = add i32 %3923, 24
  %3993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3992, i32 undef)  ; BufferLoad(srv,index,wot)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = add i32 %3923, 40
  %3996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = add i32 %3923, 96
  %3999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3998, i32 undef)  ; BufferLoad(srv,index,wot)
  %4000 = extractvalue %dx.types.ResRet.i32 %3999, 0
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 2
  %4003 = fmul fast float %4002, %3942
  %4004 = fmul fast float %4002, %3944
  %4005 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4006 = fadd fast float %4003, %4005
  %4007 = fadd fast float %4004, %4005
  %4008 = add i32 %4000, 0
  %4009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4008, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4010 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4009, i32 0)  ; GetDimensions(handle,mipLevel)
  %4011 = extractvalue %dx.types.Dimensions %4010, 0
  %4012 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4011)  ; FirstbitLo(value)
  %4013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.i32 %4013, 1
  %4015 = sub nsw i32 %4014, %4012
  %4016 = sitofp i32 %4015 to float
  %4017 = fsub fast float %3966, %4016
  %4018 = call float @dx.op.binary.f32(i32 35, float %4017, float 0.000000e+00)  ; FMax(a,b)
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4009, %dx.types.Handle %28, float %4006, float %4007, float %3997, float undef, i32 0, i32 0, i32 undef, float %4018)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = fmul fast float %4020, %3991
  %4022 = fadd fast float %4021, %3994
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.CBufRet.f32 %4023, 2
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 3
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 3
  %4031 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4032 = fadd fast float %4028, %3889
  %4033 = fadd fast float %4030, %3890
  %4034 = fadd fast float %4022, %4031
  %4035 = fmul fast float %4032, %4024
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %4033, float %4025, float %4035)  ; FMad(a,b,c)
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %4034, float %4026, float %4036)  ; FMad(a,b,c)
  %4038 = fsub fast float %4037, %4031
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 2
  %4041 = fsub fast float %4038, %4040
  %4042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.i32 %4042, 0
  %4044 = call i32 @dx.op.binary.i32(i32 40, i32 %3920, i32 %4043)  ; UMin(a,b)
  %4045 = mul i32 %4044, 36
  %4046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.i32 %4046, 0
  %4048 = add i32 %4045, 4
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4051 = fmul fast float %4050, %3942
  %4052 = fmul fast float %4050, %3944
  %4053 = extractvalue %dx.types.CBufRet.f32 %4049, 1
  %4054 = fadd fast float %4051, %4053
  %4055 = fadd fast float %4052, %4053
  %4056 = icmp eq i32 %4047, 0
  br i1 %4056, label %4125, label %4057

; <label>:4057                                    ; preds = %3988
  br label %4058

; <label>:4058                                    ; preds = %4115, %4057
  %4059 = phi float [ %4116, %4115 ], [ 0.000000e+00, %4057 ]
  %4060 = phi float [ %4117, %4115 ], [ 0.000000e+00, %4057 ]
  %4061 = phi float [ %4118, %4115 ], [ 0.000000e+00, %4057 ]
  %4062 = phi float [ %4119, %4115 ], [ 0.000000e+00, %4057 ]
  %4063 = phi float [ %4120, %4115 ], [ 0.000000e+00, %4057 ]
  %4064 = phi float [ %4121, %4115 ], [ 0.000000e+00, %4057 ]
  %4065 = phi i32 [ %4122, %4115 ], [ 0, %4057 ]
  %4066 = shl i32 %4065, 2
  %4067 = add i32 %3933, %4066
  %4068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = add i32 %3937, %4066
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = add i32 %4072, 0
  %4074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4073, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4075 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4074, i32 0)  ; GetDimensions(handle,mipLevel)
  %4076 = extractvalue %dx.types.Dimensions %4075, 0
  %4077 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4076)  ; FirstbitLo(value)
  %4078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.i32 %4078, 1
  %4080 = sub nsw i32 %4079, %4077
  %4081 = sitofp i32 %4080 to float
  %4082 = fsub fast float %3966, %4081
  %4083 = call float @dx.op.binary.f32(i32 35, float %4082, float 0.000000e+00)  ; FMax(a,b)
  %4084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4074, %dx.types.Handle %28, float %4054, float %4055, float %4069, float undef, i32 0, i32 0, i32 undef, float %4083)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = fcmp fast ogt float %4085, 0.000000e+00
  br i1 %4086, label %4087, label %4115

; <label>:4087                                    ; preds = %4058
  %4088 = add i32 %4048, %4066
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = and i32 %4090, 32767
  %4092 = mul nuw nsw i32 %4091, 928
  %4093 = add nuw nsw i32 %4092, 48
  %4094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.f32 %4094, 0
  %4096 = extractvalue %dx.types.ResRet.f32 %4094, 1
  %4097 = extractvalue %dx.types.ResRet.f32 %4094, 2
  %4098 = add nuw nsw i32 %4092, 60
  %4099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.ResRet.f32 %4099, 1
  %4102 = extractvalue %dx.types.ResRet.f32 %4099, 2
  %4103 = fmul fast float %4095, %4085
  %4104 = fmul fast float %4096, %4085
  %4105 = fmul fast float %4097, %4085
  %4106 = fadd fast float %4103, %4059
  %4107 = fadd fast float %4104, %4060
  %4108 = fadd fast float %4105, %4061
  %4109 = fmul fast float %4100, %4085
  %4110 = fmul fast float %4101, %4085
  %4111 = fmul fast float %4102, %4085
  %4112 = fadd fast float %4109, %4062
  %4113 = fadd fast float %4110, %4063
  %4114 = fadd fast float %4111, %4064
  br label %4115

; <label>:4115                                    ; preds = %4087, %4058
  %4116 = phi float [ %4106, %4087 ], [ %4059, %4058 ]
  %4117 = phi float [ %4107, %4087 ], [ %4060, %4058 ]
  %4118 = phi float [ %4108, %4087 ], [ %4061, %4058 ]
  %4119 = phi float [ %4112, %4087 ], [ %4062, %4058 ]
  %4120 = phi float [ %4113, %4087 ], [ %4063, %4058 ]
  %4121 = phi float [ %4114, %4087 ], [ %4064, %4058 ]
  %4122 = add nuw i32 %4065, 1
  %4123 = icmp eq i32 %4122, %4047
  br i1 %4123, label %4124, label %4058

; <label>:4124                                    ; preds = %4115
  br label %4125

; <label>:4125                                    ; preds = %4124, %3988
  %4126 = phi float [ 0.000000e+00, %3988 ], [ %4116, %4124 ]
  %4127 = phi float [ 0.000000e+00, %3988 ], [ %4117, %4124 ]
  %4128 = phi float [ 0.000000e+00, %3988 ], [ %4118, %4124 ]
  %4129 = phi float [ 0.000000e+00, %3988 ], [ %4119, %4124 ]
  %4130 = phi float [ 0.000000e+00, %3988 ], [ %4120, %4124 ]
  %4131 = phi float [ 0.000000e+00, %3988 ], [ %4121, %4124 ]
  %4132 = fadd fast float %4129, %4126
  %4133 = fmul fast float %4132, 0x3F847AE140000000
  %4134 = fadd fast float %4130, %4127
  %4135 = fmul fast float %4134, 0x3F847AE140000000
  %4136 = fadd fast float %4131, %4128
  %4137 = fmul fast float %4136, 0x3F847AE140000000
  br label %4138

; <label>:4138                                    ; preds = %4125, %3922, %3867, %3864, %3835, %3797
  %4139 = phi float [ %3849, %3835 ], [ -1.310720e+05, %3797 ], [ %4041, %4125 ], [ -1.310720e+05, %3867 ], [ -1.310720e+05, %3922 ], [ -1.310720e+05, %3864 ]
  %4140 = phi float [ %3859, %3835 ], [ 0.000000e+00, %3797 ], [ %4133, %4125 ], [ 0.000000e+00, %3867 ], [ 0.000000e+00, %3922 ], [ 0.000000e+00, %3864 ]
  %4141 = phi float [ %3861, %3835 ], [ 0.000000e+00, %3797 ], [ %4135, %4125 ], [ 0.000000e+00, %3867 ], [ 0.000000e+00, %3922 ], [ 0.000000e+00, %3864 ]
  %4142 = phi float [ %3863, %3835 ], [ 0.000000e+00, %3797 ], [ %4137, %4125 ], [ 0.000000e+00, %3867 ], [ 0.000000e+00, %3922 ], [ 0.000000e+00, %3864 ]
  %4143 = phi i1 [ true, %3835 ], [ false, %3797 ], [ true, %4125 ], [ false, %3867 ], [ false, %3922 ], [ false, %3864 ]
  %4144 = and i32 %190, 3
  %4145 = icmp eq i32 %4144, 1
  %4146 = select i1 %4145, float 1.000000e+00, float 0.000000e+00
  %4147 = fsub fast float %4139, %167
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = select i1 %4143, float %4148, float 1.000000e+00
  %4150 = fmul fast float %4149, %4146
  %4151 = icmp eq i32 %4144, 3
  %4152 = select i1 %4151, float 1.000000e+00, float %4150
  %4153 = call float @dx.op.binary.f32(i32 35, float %3740, float %4152)  ; FMax(a,b)
  %4154 = fcmp fast olt float %4152, 1.000000e+00
  %4155 = fcmp uge float %49, 0.000000e+00
  %4156 = and i1 %4155, %4154
  br i1 %4156, label %4157, label %4167

; <label>:4157                                    ; preds = %4138
  %4158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = extractvalue %dx.types.ResRet.f32 %4158, 1
  %4161 = extractvalue %dx.types.ResRet.f32 %4158, 2
  %4162 = fadd fast float %4159, %4153
  %4163 = fcmp ule float %48, 0.000000e+00
  %4164 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4165 = select i1 %4163, float %4164, float 1.000000e+00
  %4166 = fmul fast float %4165, %4161
  br label %4167

; <label>:4167                                    ; preds = %4157, %4138
  %4168 = phi float [ %4162, %4157 ], [ %4153, %4138 ]
  %4169 = phi float [ %4160, %4157 ], [ 0.000000e+00, %4138 ]
  %4170 = phi float [ %4166, %4157 ], [ 0.000000e+00, %4138 ]
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4173 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4174 = fcmp fast une float %4172, 0.000000e+00
  %4175 = fcmp fast une float %4173, 0.000000e+00
  %4176 = or i1 %4174, %4175
  br i1 %4176, label %4177, label %4736

; <label>:4177                                    ; preds = %4167
  br i1 %4174, label %4178, label %4451

; <label>:4178                                    ; preds = %4177
  %4179 = call float @dx.op.unary.f32(i32 23, float %3737)  ; Log(value)
  %4180 = fmul fast float %4179, 4.000000e+00
  %4181 = call float @dx.op.unary.f32(i32 21, float %4180)  ; Exp(value)
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 0
  %4184 = fmul fast float %4183, %36
  %4185 = fmul fast float %4183, %37
  %4186 = fmul fast float %4183, %38
  %4187 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4188 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4189 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4190 = call float @dx.op.unary.f32(i32 23, float %4187)  ; Log(value)
  %4191 = call float @dx.op.unary.f32(i32 23, float %4188)  ; Log(value)
  %4192 = call float @dx.op.unary.f32(i32 23, float %4189)  ; Log(value)
  %4193 = fmul fast float %4190, 4.000000e+00
  %4194 = fmul fast float %4191, 4.000000e+00
  %4195 = fmul fast float %4192, 4.000000e+00
  %4196 = call float @dx.op.unary.f32(i32 21, float %4193)  ; Exp(value)
  %4197 = call float @dx.op.unary.f32(i32 21, float %4194)  ; Exp(value)
  %4198 = call float @dx.op.unary.f32(i32 21, float %4195)  ; Exp(value)
  %4199 = fadd fast float %4197, %4196
  %4200 = fadd fast float %4199, %4198
  %4201 = fdiv fast float 1.000000e+00, %4200
  %4202 = fmul fast float %4201, %4196
  %4203 = fcmp fast ogt float %45, 0.000000e+00
  %4204 = fcmp fast ogt float %46, 0.000000e+00
  %4205 = fcmp fast ogt float %47, 0.000000e+00
  %4206 = fcmp fast olt float %45, 0.000000e+00
  %4207 = fcmp fast olt float %46, 0.000000e+00
  %4208 = fcmp fast olt float %47, 0.000000e+00
  %4209 = zext i1 %4203 to i32
  %4210 = zext i1 %4204 to i32
  %4211 = zext i1 %4205 to i32
  %4212 = zext i1 %4206 to i32
  %4213 = zext i1 %4207 to i32
  %4214 = zext i1 %4208 to i32
  %4215 = sub nsw i32 %4209, %4212
  %4216 = sub nsw i32 %4210, %4213
  %4217 = sub nsw i32 %4211, %4214
  %4218 = call float @dx.op.unary.f32(i32 83, float %4184)  ; DerivCoarseX(value)
  %4219 = call float @dx.op.unary.f32(i32 83, float %4185)  ; DerivCoarseX(value)
  %4220 = call float @dx.op.unary.f32(i32 83, float %4186)  ; DerivCoarseX(value)
  %4221 = call float @dx.op.unary.f32(i32 84, float %4184)  ; DerivCoarseY(value)
  %4222 = call float @dx.op.unary.f32(i32 84, float %4185)  ; DerivCoarseY(value)
  %4223 = call float @dx.op.unary.f32(i32 84, float %4186)  ; DerivCoarseY(value)
  %4224 = fcmp fast ole float %222, %4202
  %4225 = fmul fast float %4201, %4199
  %4226 = fcmp fast ole float %222, %4225
  %4227 = select i1 %4226, float %4186, float %4184
  %4228 = select i1 %4226, float %4184, float %4185
  %4229 = select i1 %4224, float %4185, float %4227
  %4230 = select i1 %4224, float %4186, float %4228
  %4231 = select i1 %4226, float %4220, float %4218
  %4232 = select i1 %4226, float %4218, float %4219
  %4233 = select i1 %4224, float %4219, float %4231
  %4234 = select i1 %4224, float %4220, float %4232
  %4235 = select i1 %4226, float %4223, float %4221
  %4236 = select i1 %4226, float %4221, float %4222
  %4237 = select i1 %4224, float %4222, float %4235
  %4238 = select i1 %4224, float %4223, float %4236
  %4239 = call float @dx.op.unary.f32(i32 27, float %4229)  ; Round_ni(value)
  %4240 = call float @dx.op.unary.f32(i32 27, float %4230)  ; Round_ni(value)
  %4241 = fptosi float %4239 to i32
  %4242 = fptosi float %4240 to i32
  %4243 = xor i32 %4242, %4241
  %4244 = sitofp i32 %4243 to float
  %4245 = fptosi float %4244 to i32
  %4246 = sitofp i32 %4245 to float
  %4247 = fmul fast float %4246, 0x3FE3C6EF40000000
  %4248 = frem fast float %4239, 2.560000e+02
  %4249 = frem fast float %4240, 2.560000e+02
  %4250 = fptoui float %4248 to i32
  %4251 = fptoui float %4249 to i32
  %4252 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4250, i32 %4251, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4253 = extractvalue %dx.types.ResRet.f32 %4252, 0
  %4254 = extractvalue %dx.types.ResRet.f32 %4252, 1
  %4255 = extractvalue %dx.types.ResRet.f32 %4252, 2
  %4256 = fadd fast float %4253, %4247
  %4257 = fadd fast float %4254, %4247
  %4258 = fadd fast float %4255, %4247
  %4259 = call float @dx.op.unary.f32(i32 22, float %4256)  ; Frc(value)
  %4260 = call float @dx.op.unary.f32(i32 22, float %4257)  ; Frc(value)
  %4261 = call float @dx.op.unary.f32(i32 22, float %4258)  ; Frc(value)
  %4262 = fmul fast float %4261, 0x401921FB60000000
  %4263 = call float @dx.op.unary.f32(i32 13, float %4262)  ; Sin(value)
  %4264 = call float @dx.op.unary.f32(i32 12, float %4262)  ; Cos(value)
  %4265 = fsub fast float -0.000000e+00, %4264
  %4266 = fmul fast float %4264, %4229
  %4267 = call float @dx.op.tertiary.f32(i32 46, float %4263, float %4230, float %4266)  ; FMad(a,b,c)
  %4268 = fmul fast float %4263, %4229
  %4269 = call float @dx.op.tertiary.f32(i32 46, float %4265, float %4230, float %4268)  ; FMad(a,b,c)
  %4270 = fadd fast float %4267, %4259
  %4271 = fadd fast float %4269, %4260
  %4272 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4273 = bitcast float %4272 to i32
  %4274 = icmp eq i32 %4273, 0
  br i1 %4274, label %4313, label %4275

; <label>:4275                                    ; preds = %4178
  %4276 = add i32 %4273, 0
  %4277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4278 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4277, %dx.types.Handle %75, float %4270, float %4271, float undef, float undef, i32 0, i32 0, i32 undef, float %4233, float %4234, float undef, float %4237, float %4238, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 1
  %4282 = extractvalue %dx.types.CBufRet.f32 %4280, 2
  %4283 = fsub fast float 1.000000e+00, %4172
  %4284 = call float @dx.op.binary.f32(i32 35, float %4283, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4285 = bitcast float %4172 to i32
  %4286 = sitofp i32 %4285 to float
  %4287 = fadd fast float %4286, 0xC1CFBF8940000000
  %4288 = fmul fast float %4282, %4287
  %4289 = fadd fast float %4288, 0x41CFBF8940000000
  %4290 = fptosi float %4289 to i32
  %4291 = bitcast i32 %4290 to float
  %4292 = bitcast float %4284 to i32
  %4293 = sitofp i32 %4292 to float
  %4294 = fadd fast float %4293, 0xC1CFBF8940000000
  %4295 = fmul fast float %4294, %4282
  %4296 = fadd fast float %4295, 0x41CFBF8940000000
  %4297 = fptosi float %4296 to i32
  %4298 = bitcast i32 %4297 to float
  %4299 = fmul fast float %4291, %4281
  %4300 = fmul fast float %4298, %4281
  %4301 = fsub fast float %4284, %4299
  %4302 = fadd fast float %4300, %4284
  %4303 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4304 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4305 = fsub fast float %4279, %4303
  %4306 = fsub fast float %4304, %4303
  %4307 = bitcast float %4306 to i32
  %4308 = sub nsw i32 2129859010, %4307
  %4309 = bitcast i32 %4308 to float
  %4310 = fmul fast float %4309, %4305
  %4311 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4312 = fcmp fast olt float %4311, 0x3F70101020000000
  br i1 %4312, label %4451, label %4313

; <label>:4313                                    ; preds = %4275, %4178
  %4314 = phi float [ %4311, %4275 ], [ %4172, %4178 ]
  %4315 = fmul fast float %4314, %4181
  %4316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.i32 %4316, 1
  %4318 = extractvalue %dx.types.CBufRet.i32 %4316, 0
  %4319 = add i32 %4318, 0
  %4320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4321 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4320, %dx.types.Handle %74, float %4270, float %4271, float undef, float undef, i32 0, i32 0, i32 undef, float %4233, float %4234, float undef, float %4237, float %4238, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.f32 %4321, 2
  %4325 = extractvalue %dx.types.ResRet.f32 %4321, 3
  %4326 = and i32 %4317, 255
  %4327 = uitofp i32 %4326 to float
  %4328 = lshr i32 %4317, 8
  %4329 = and i32 %4328, 255
  %4330 = uitofp i32 %4329 to float
  %4331 = fmul fast float %4325, %4327
  %4332 = fadd fast float %4331, %4330
  %4333 = fmul fast float %4332, 0x3F70101000000000
  %4334 = fadd fast float %4333, 0xBFB99999A0000000
  %4335 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4336 = fmul fast float %4335, 0x3FF1C71C80000000
  %4337 = call float @dx.op.binary.f32(i32 36, float %4333, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4338 = fsub fast float 1.000000e+00, %4336
  %4339 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4340 = fmul fast float %4339, %4322
  %4341 = fmul fast float %4339, %4323
  %4342 = fmul fast float %4339, %4324
  %4343 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4344 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4345 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4346 = fmul fast float %4336, %4322
  %4347 = fmul fast float %4336, %4323
  %4348 = fmul fast float %4336, %4324
  %4349 = fadd fast float %4346, %4337
  %4350 = fadd fast float %4347, %4337
  %4351 = fadd fast float %4348, %4337
  %4352 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4354 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.i32 %4355, 3
  %4357 = extractvalue %dx.types.CBufRet.i32 %4355, 2
  %4358 = add i32 %4357, 0
  %4359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4360 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4359, %dx.types.Handle %74, float %4270, float %4271, float undef, float undef, i32 0, i32 0, i32 undef, float %4233, float %4234, float undef, float %4237, float %4238, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.ResRet.f32 %4360, 1
  %4363 = extractvalue %dx.types.ResRet.f32 %4360, 2
  %4364 = extractvalue %dx.types.ResRet.f32 %4360, 3
  %4365 = and i32 %4356, 255
  %4366 = uitofp i32 %4365 to float
  %4367 = lshr i32 %4356, 8
  %4368 = and i32 %4367, 255
  %4369 = uitofp i32 %4368 to float
  %4370 = lshr i32 %4356, 16
  %4371 = and i32 %4370, 255
  %4372 = uitofp i32 %4371 to float
  %4373 = fmul fast float %4372, 0x3F70101000000000
  %4374 = fmul fast float %4361, %4366
  %4375 = fadd fast float %4374, %4369
  %4376 = fmul fast float %4375, 0x3F70101000000000
  %4377 = fadd fast float %4362, -5.000000e-01
  %4378 = fadd fast float %4364, -5.000000e-01
  %4379 = fmul fast float %4377, %4373
  %4380 = fmul fast float %4378, %4373
  %4381 = fadd fast float %4379, 5.000000e-01
  %4382 = fadd fast float %4380, 5.000000e-01
  %4383 = fmul fast float %4381, 2.000000e+00
  %4384 = fadd fast float %4383, -1.000000e+00
  %4385 = fmul fast float %4382, 2.000000e+00
  %4386 = fadd fast float %4385, -1.000000e+00
  %4387 = fadd fast float %4384, %4386
  %4388 = fmul fast float %4387, 5.000000e-01
  %4389 = fsub fast float %4384, %4386
  %4390 = fmul fast float %4389, 5.000000e-01
  %4391 = call float @dx.op.unary.f32(i32 6, float %4388)  ; FAbs(value)
  %4392 = fsub fast float 1.000000e+00, %4391
  %4393 = call float @dx.op.unary.f32(i32 6, float %4390)  ; FAbs(value)
  %4394 = fsub fast float %4392, %4393
  %4395 = call float @dx.op.dot3.f32(i32 55, float %4388, float %4390, float %4394, float %4388, float %4390, float %4394)  ; Dot3(ax,ay,az,bx,by,bz)
  %4396 = call float @dx.op.unary.f32(i32 25, float %4395)  ; Rsqrt(value)
  %4397 = fmul fast float %4388, %4396
  %4398 = fmul fast float %4390, %4396
  %4399 = select i1 %4226, i32 %4216, i32 %4217
  %4400 = select i1 %4224, i32 %4215, i32 %4399
  %4401 = sitofp i32 %4400 to float
  %4402 = fmul fast float %4394, %4401
  %4403 = fmul fast float %4402, %4396
  %4404 = select i1 %4226, float %4403, float %4398
  %4405 = select i1 %4226, float %4398, float %4403
  %4406 = select i1 %4224, float %4403, float %4397
  %4407 = select i1 %4224, float %4398, float %4404
  %4408 = select i1 %4224, float %4397, float %4405
  %4409 = fsub fast float %4343, %3776
  %4410 = fsub fast float %4344, %3777
  %4411 = fsub fast float %4345, %3778
  %4412 = fmul fast float %4409, %4315
  %4413 = fmul fast float %4410, %4315
  %4414 = fmul fast float %4411, %4315
  %4415 = fadd fast float %4412, %3776
  %4416 = fadd fast float %4413, %3777
  %4417 = fadd fast float %4414, %3778
  %4418 = fsub fast float %4352, %3761
  %4419 = fsub fast float %4353, %3762
  %4420 = fsub fast float %4354, %3763
  %4421 = fmul fast float %4418, %4315
  %4422 = fmul fast float %4419, %4315
  %4423 = fmul fast float %4420, %4315
  %4424 = fadd fast float %4421, %3761
  %4425 = fadd fast float %4422, %3762
  %4426 = fadd fast float %4423, %3763
  %4427 = fadd fast float %4406, %3725
  %4428 = fadd fast float %4407, %3726
  %4429 = fadd fast float %4408, %3727
  %4430 = call float @dx.op.dot3.f32(i32 55, float %4427, float %4428, float %4429, float %4427, float %4428, float %4429)  ; Dot3(ax,ay,az,bx,by,bz)
  %4431 = call float @dx.op.unary.f32(i32 25, float %4430)  ; Rsqrt(value)
  %4432 = fmul fast float %4427, %4431
  %4433 = fmul fast float %4428, %4431
  %4434 = fmul fast float %4429, %4431
  %4435 = fsub fast float %4432, %3725
  %4436 = fsub fast float %4433, %3726
  %4437 = fsub fast float %4434, %3727
  %4438 = fmul fast float %4435, %4315
  %4439 = fmul fast float %4436, %4315
  %4440 = fmul fast float %4437, %4315
  %4441 = fadd fast float %4438, %3725
  %4442 = fadd fast float %4439, %3726
  %4443 = fadd fast float %4440, %3727
  %4444 = call float @dx.op.binary.f32(i32 36, float %3737, float %4363)  ; FMin(a,b)
  %4445 = fsub fast float %4444, %3737
  %4446 = fmul fast float %4445, %4315
  %4447 = fadd fast float %4446, %3737
  %4448 = fsub fast float %4376, %3764
  %4449 = fmul fast float %4448, %4315
  %4450 = fadd fast float %4449, %3764
  br label %4451

; <label>:4451                                    ; preds = %4313, %4275, %4177
  %4452 = phi float [ %4424, %4313 ], [ %3761, %4275 ], [ %3761, %4177 ]
  %4453 = phi float [ %4425, %4313 ], [ %3762, %4275 ], [ %3762, %4177 ]
  %4454 = phi float [ %4426, %4313 ], [ %3763, %4275 ], [ %3763, %4177 ]
  %4455 = phi float [ %4415, %4313 ], [ %3776, %4275 ], [ %3776, %4177 ]
  %4456 = phi float [ %4416, %4313 ], [ %3777, %4275 ], [ %3777, %4177 ]
  %4457 = phi float [ %4417, %4313 ], [ %3778, %4275 ], [ %3778, %4177 ]
  %4458 = phi float [ %4441, %4313 ], [ %3725, %4275 ], [ %3725, %4177 ]
  %4459 = phi float [ %4442, %4313 ], [ %3726, %4275 ], [ %3726, %4177 ]
  %4460 = phi float [ %4443, %4313 ], [ %3727, %4275 ], [ %3727, %4177 ]
  %4461 = phi float [ %4450, %4313 ], [ %3764, %4275 ], [ %3764, %4177 ]
  %4462 = phi float [ %4447, %4313 ], [ %3737, %4275 ], [ %3737, %4177 ]
  br i1 %4175, label %4463, label %4736

; <label>:4463                                    ; preds = %4451
  %4464 = call float @dx.op.unary.f32(i32 23, float %4462)  ; Log(value)
  %4465 = fmul fast float %4464, 4.000000e+00
  %4466 = call float @dx.op.unary.f32(i32 21, float %4465)  ; Exp(value)
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = fmul fast float %4468, %36
  %4470 = fmul fast float %4468, %37
  %4471 = fmul fast float %4468, %38
  %4472 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4473 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4474 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4475 = call float @dx.op.unary.f32(i32 23, float %4472)  ; Log(value)
  %4476 = call float @dx.op.unary.f32(i32 23, float %4473)  ; Log(value)
  %4477 = call float @dx.op.unary.f32(i32 23, float %4474)  ; Log(value)
  %4478 = fmul fast float %4475, 4.000000e+00
  %4479 = fmul fast float %4476, 4.000000e+00
  %4480 = fmul fast float %4477, 4.000000e+00
  %4481 = call float @dx.op.unary.f32(i32 21, float %4478)  ; Exp(value)
  %4482 = call float @dx.op.unary.f32(i32 21, float %4479)  ; Exp(value)
  %4483 = call float @dx.op.unary.f32(i32 21, float %4480)  ; Exp(value)
  %4484 = fadd fast float %4482, %4481
  %4485 = fadd fast float %4484, %4483
  %4486 = fdiv fast float 1.000000e+00, %4485
  %4487 = fmul fast float %4486, %4481
  %4488 = fcmp fast ogt float %45, 0.000000e+00
  %4489 = fcmp fast ogt float %46, 0.000000e+00
  %4490 = fcmp fast ogt float %47, 0.000000e+00
  %4491 = fcmp fast olt float %45, 0.000000e+00
  %4492 = fcmp fast olt float %46, 0.000000e+00
  %4493 = fcmp fast olt float %47, 0.000000e+00
  %4494 = zext i1 %4488 to i32
  %4495 = zext i1 %4489 to i32
  %4496 = zext i1 %4490 to i32
  %4497 = zext i1 %4491 to i32
  %4498 = zext i1 %4492 to i32
  %4499 = zext i1 %4493 to i32
  %4500 = sub nsw i32 %4494, %4497
  %4501 = sub nsw i32 %4495, %4498
  %4502 = sub nsw i32 %4496, %4499
  %4503 = call float @dx.op.unary.f32(i32 83, float %4469)  ; DerivCoarseX(value)
  %4504 = call float @dx.op.unary.f32(i32 83, float %4470)  ; DerivCoarseX(value)
  %4505 = call float @dx.op.unary.f32(i32 83, float %4471)  ; DerivCoarseX(value)
  %4506 = call float @dx.op.unary.f32(i32 84, float %4469)  ; DerivCoarseY(value)
  %4507 = call float @dx.op.unary.f32(i32 84, float %4470)  ; DerivCoarseY(value)
  %4508 = call float @dx.op.unary.f32(i32 84, float %4471)  ; DerivCoarseY(value)
  %4509 = fcmp fast ole float %222, %4487
  %4510 = fmul fast float %4486, %4484
  %4511 = fcmp fast ole float %222, %4510
  %4512 = select i1 %4511, float %4471, float %4469
  %4513 = select i1 %4511, float %4469, float %4470
  %4514 = select i1 %4509, float %4470, float %4512
  %4515 = select i1 %4509, float %4471, float %4513
  %4516 = select i1 %4511, float %4505, float %4503
  %4517 = select i1 %4511, float %4503, float %4504
  %4518 = select i1 %4509, float %4504, float %4516
  %4519 = select i1 %4509, float %4505, float %4517
  %4520 = select i1 %4511, float %4508, float %4506
  %4521 = select i1 %4511, float %4506, float %4507
  %4522 = select i1 %4509, float %4507, float %4520
  %4523 = select i1 %4509, float %4508, float %4521
  %4524 = call float @dx.op.unary.f32(i32 27, float %4514)  ; Round_ni(value)
  %4525 = call float @dx.op.unary.f32(i32 27, float %4515)  ; Round_ni(value)
  %4526 = fptosi float %4524 to i32
  %4527 = fptosi float %4525 to i32
  %4528 = xor i32 %4527, %4526
  %4529 = sitofp i32 %4528 to float
  %4530 = fptosi float %4529 to i32
  %4531 = sitofp i32 %4530 to float
  %4532 = fmul fast float %4531, 0x3FE3C6EF40000000
  %4533 = frem fast float %4524, 2.560000e+02
  %4534 = frem fast float %4525, 2.560000e+02
  %4535 = fptoui float %4533 to i32
  %4536 = fptoui float %4534 to i32
  %4537 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4535, i32 %4536, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.ResRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.ResRet.f32 %4537, 2
  %4541 = fadd fast float %4538, %4532
  %4542 = fadd fast float %4539, %4532
  %4543 = fadd fast float %4540, %4532
  %4544 = call float @dx.op.unary.f32(i32 22, float %4541)  ; Frc(value)
  %4545 = call float @dx.op.unary.f32(i32 22, float %4542)  ; Frc(value)
  %4546 = call float @dx.op.unary.f32(i32 22, float %4543)  ; Frc(value)
  %4547 = fmul fast float %4546, 0x401921FB60000000
  %4548 = call float @dx.op.unary.f32(i32 13, float %4547)  ; Sin(value)
  %4549 = call float @dx.op.unary.f32(i32 12, float %4547)  ; Cos(value)
  %4550 = fsub fast float -0.000000e+00, %4549
  %4551 = fmul fast float %4549, %4514
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4515, float %4551)  ; FMad(a,b,c)
  %4553 = fmul fast float %4548, %4514
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4515, float %4553)  ; FMad(a,b,c)
  %4555 = fadd fast float %4552, %4544
  %4556 = fadd fast float %4554, %4545
  %4557 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4558 = bitcast float %4557 to i32
  %4559 = icmp eq i32 %4558, 0
  br i1 %4559, label %4598, label %4560

; <label>:4560                                    ; preds = %4463
  %4561 = add i32 %4558, 0
  %4562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4563 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4562, %dx.types.Handle %75, float %4555, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4518, float %4519, float undef, float %4522, float %4523, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4568 = fsub fast float 1.000000e+00, %4173
  %4569 = call float @dx.op.binary.f32(i32 35, float %4568, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4570 = bitcast float %4173 to i32
  %4571 = sitofp i32 %4570 to float
  %4572 = fadd fast float %4571, 0xC1CFBF8940000000
  %4573 = fmul fast float %4567, %4572
  %4574 = fadd fast float %4573, 0x41CFBF8940000000
  %4575 = fptosi float %4574 to i32
  %4576 = bitcast i32 %4575 to float
  %4577 = bitcast float %4569 to i32
  %4578 = sitofp i32 %4577 to float
  %4579 = fadd fast float %4578, 0xC1CFBF8940000000
  %4580 = fmul fast float %4579, %4567
  %4581 = fadd fast float %4580, 0x41CFBF8940000000
  %4582 = fptosi float %4581 to i32
  %4583 = bitcast i32 %4582 to float
  %4584 = fmul fast float %4576, %4566
  %4585 = fmul fast float %4583, %4566
  %4586 = fsub fast float %4569, %4584
  %4587 = fadd fast float %4585, %4569
  %4588 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4590 = fsub fast float %4564, %4588
  %4591 = fsub fast float %4589, %4588
  %4592 = bitcast float %4591 to i32
  %4593 = sub nsw i32 2129859010, %4592
  %4594 = bitcast i32 %4593 to float
  %4595 = fmul fast float %4594, %4590
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = fcmp fast olt float %4596, 0x3F70101020000000
  br i1 %4597, label %4736, label %4598

; <label>:4598                                    ; preds = %4560, %4463
  %4599 = phi float [ %4596, %4560 ], [ %4173, %4463 ]
  %4600 = fmul fast float %4599, %4466
  %4601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.i32 %4601, 1
  %4603 = extractvalue %dx.types.CBufRet.i32 %4601, 0
  %4604 = add i32 %4603, 0
  %4605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4606 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4605, %dx.types.Handle %74, float %4555, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4518, float %4519, float undef, float %4522, float %4523, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4611 = and i32 %4602, 255
  %4612 = uitofp i32 %4611 to float
  %4613 = lshr i32 %4602, 8
  %4614 = and i32 %4613, 255
  %4615 = uitofp i32 %4614 to float
  %4616 = fmul fast float %4610, %4612
  %4617 = fadd fast float %4616, %4615
  %4618 = fmul fast float %4617, 0x3F70101000000000
  %4619 = fadd fast float %4618, 0xBFB99999A0000000
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = fmul fast float %4620, 0x3FF1C71C80000000
  %4622 = call float @dx.op.binary.f32(i32 36, float %4618, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4623 = fsub fast float 1.000000e+00, %4621
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fmul fast float %4624, %4607
  %4626 = fmul fast float %4624, %4608
  %4627 = fmul fast float %4624, %4609
  %4628 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4631 = fmul fast float %4621, %4607
  %4632 = fmul fast float %4621, %4608
  %4633 = fmul fast float %4621, %4609
  %4634 = fadd fast float %4631, %4622
  %4635 = fadd fast float %4632, %4622
  %4636 = fadd fast float %4633, %4622
  %4637 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4639 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.i32 %4640, 3
  %4642 = extractvalue %dx.types.CBufRet.i32 %4640, 2
  %4643 = add i32 %4642, 0
  %4644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4645 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4644, %dx.types.Handle %74, float %4555, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4518, float %4519, float undef, float %4522, float %4523, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = extractvalue %dx.types.ResRet.f32 %4645, 1
  %4648 = extractvalue %dx.types.ResRet.f32 %4645, 2
  %4649 = extractvalue %dx.types.ResRet.f32 %4645, 3
  %4650 = and i32 %4641, 255
  %4651 = uitofp i32 %4650 to float
  %4652 = lshr i32 %4641, 8
  %4653 = and i32 %4652, 255
  %4654 = uitofp i32 %4653 to float
  %4655 = lshr i32 %4641, 16
  %4656 = and i32 %4655, 255
  %4657 = uitofp i32 %4656 to float
  %4658 = fmul fast float %4657, 0x3F70101000000000
  %4659 = fmul fast float %4646, %4651
  %4660 = fadd fast float %4659, %4654
  %4661 = fmul fast float %4660, 0x3F70101000000000
  %4662 = fadd fast float %4647, -5.000000e-01
  %4663 = fadd fast float %4649, -5.000000e-01
  %4664 = fmul fast float %4662, %4658
  %4665 = fmul fast float %4663, %4658
  %4666 = fadd fast float %4664, 5.000000e-01
  %4667 = fadd fast float %4665, 5.000000e-01
  %4668 = fmul fast float %4666, 2.000000e+00
  %4669 = fadd fast float %4668, -1.000000e+00
  %4670 = fmul fast float %4667, 2.000000e+00
  %4671 = fadd fast float %4670, -1.000000e+00
  %4672 = fadd fast float %4669, %4671
  %4673 = fmul fast float %4672, 5.000000e-01
  %4674 = fsub fast float %4669, %4671
  %4675 = fmul fast float %4674, 5.000000e-01
  %4676 = call float @dx.op.unary.f32(i32 6, float %4673)  ; FAbs(value)
  %4677 = fsub fast float 1.000000e+00, %4676
  %4678 = call float @dx.op.unary.f32(i32 6, float %4675)  ; FAbs(value)
  %4679 = fsub fast float %4677, %4678
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4675, float %4679, float %4673, float %4675, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 25, float %4680)  ; Rsqrt(value)
  %4682 = fmul fast float %4673, %4681
  %4683 = fmul fast float %4675, %4681
  %4684 = select i1 %4511, i32 %4501, i32 %4502
  %4685 = select i1 %4509, i32 %4500, i32 %4684
  %4686 = sitofp i32 %4685 to float
  %4687 = fmul fast float %4679, %4686
  %4688 = fmul fast float %4687, %4681
  %4689 = select i1 %4511, float %4688, float %4683
  %4690 = select i1 %4511, float %4683, float %4688
  %4691 = select i1 %4509, float %4688, float %4682
  %4692 = select i1 %4509, float %4683, float %4689
  %4693 = select i1 %4509, float %4682, float %4690
  %4694 = fsub fast float %4628, %4455
  %4695 = fsub fast float %4629, %4456
  %4696 = fsub fast float %4630, %4457
  %4697 = fmul fast float %4694, %4600
  %4698 = fmul fast float %4695, %4600
  %4699 = fmul fast float %4696, %4600
  %4700 = fadd fast float %4697, %4455
  %4701 = fadd fast float %4698, %4456
  %4702 = fadd fast float %4699, %4457
  %4703 = fsub fast float %4637, %4452
  %4704 = fsub fast float %4638, %4453
  %4705 = fsub fast float %4639, %4454
  %4706 = fmul fast float %4703, %4600
  %4707 = fmul fast float %4704, %4600
  %4708 = fmul fast float %4705, %4600
  %4709 = fadd fast float %4706, %4452
  %4710 = fadd fast float %4707, %4453
  %4711 = fadd fast float %4708, %4454
  %4712 = fadd fast float %4691, %4458
  %4713 = fadd fast float %4692, %4459
  %4714 = fadd fast float %4693, %4460
  %4715 = call float @dx.op.dot3.f32(i32 55, float %4712, float %4713, float %4714, float %4712, float %4713, float %4714)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = call float @dx.op.unary.f32(i32 25, float %4715)  ; Rsqrt(value)
  %4717 = fmul fast float %4712, %4716
  %4718 = fmul fast float %4713, %4716
  %4719 = fmul fast float %4714, %4716
  %4720 = fsub fast float %4717, %4458
  %4721 = fsub fast float %4718, %4459
  %4722 = fsub fast float %4719, %4460
  %4723 = fmul fast float %4720, %4600
  %4724 = fmul fast float %4721, %4600
  %4725 = fmul fast float %4722, %4600
  %4726 = fadd fast float %4723, %4458
  %4727 = fadd fast float %4724, %4459
  %4728 = fadd fast float %4725, %4460
  %4729 = call float @dx.op.binary.f32(i32 36, float %4462, float %4648)  ; FMin(a,b)
  %4730 = fsub fast float %4729, %4462
  %4731 = fmul fast float %4730, %4600
  %4732 = fadd fast float %4731, %4462
  %4733 = fsub fast float %4661, %4461
  %4734 = fmul fast float %4733, %4600
  %4735 = fadd fast float %4734, %4461
  br label %4736

; <label>:4736                                    ; preds = %4598, %4560, %4451, %4167
  %4737 = phi float [ %4709, %4598 ], [ %4452, %4560 ], [ %4452, %4451 ], [ %3761, %4167 ]
  %4738 = phi float [ %4710, %4598 ], [ %4453, %4560 ], [ %4453, %4451 ], [ %3762, %4167 ]
  %4739 = phi float [ %4711, %4598 ], [ %4454, %4560 ], [ %4454, %4451 ], [ %3763, %4167 ]
  %4740 = phi float [ %4700, %4598 ], [ %4455, %4560 ], [ %4455, %4451 ], [ %3776, %4167 ]
  %4741 = phi float [ %4701, %4598 ], [ %4456, %4560 ], [ %4456, %4451 ], [ %3777, %4167 ]
  %4742 = phi float [ %4702, %4598 ], [ %4457, %4560 ], [ %4457, %4451 ], [ %3778, %4167 ]
  %4743 = phi float [ %4726, %4598 ], [ %4458, %4560 ], [ %4458, %4451 ], [ %3725, %4167 ]
  %4744 = phi float [ %4727, %4598 ], [ %4459, %4560 ], [ %4459, %4451 ], [ %3726, %4167 ]
  %4745 = phi float [ %4728, %4598 ], [ %4460, %4560 ], [ %4460, %4451 ], [ %3727, %4167 ]
  %4746 = phi float [ %4735, %4598 ], [ %4461, %4560 ], [ %4461, %4451 ], [ %3764, %4167 ]
  %4747 = phi float [ %4732, %4598 ], [ %4462, %4560 ], [ %4462, %4451 ], [ %3737, %4167 ]
  %4748 = fcmp fast une float %4171, 0.000000e+00
  %4749 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = call float @dx.op.unary.f32(i32 25, float %4749)  ; Rsqrt(value)
  br i1 %4748, label %4758, label %4751

; <label>:4751                                    ; preds = %4736
  %4752 = fmul fast float %4750, %165
  %4753 = fmul fast float %4750, %166
  %4754 = fmul fast float %4750, %167
  %4755 = fsub fast float -0.000000e+00, %4752
  %4756 = fsub fast float -0.000000e+00, %4753
  %4757 = fsub fast float -0.000000e+00, %4754
  br label %4925

; <label>:4758                                    ; preds = %4736
  %4759 = fmul fast float %165, %4750
  %4760 = fsub fast float -0.000000e+00, %4759
  %4761 = fmul fast float %166, %4750
  %4762 = fsub fast float -0.000000e+00, %4761
  %4763 = fmul fast float %167, %4750
  %4764 = fsub fast float -0.000000e+00, %4763
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4760, float %4762, float %4764, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = fmul fast float %4171, 2.500000e+00
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = fmul fast float %4171, 0x4013FFFFE0000000
  %4769 = fadd fast float %4768, 0xBFFFFFFFE0000000
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4771 = fmul fast float %4171, 0x4004000020000000
  %4772 = fadd fast float %4771, 0xBFF8000040000000
  %4773 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4774 = fmul fast float %3743, 1.000000e+01
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fmul fast float %4775, 2.000000e+00
  %4777 = fsub fast float 3.000000e+00, %4776
  %4778 = fmul fast float %4775, %4775
  %4779 = fmul fast float %4778, %4777
  %4780 = fsub fast float 1.000000e+00, %4779
  %4781 = fsub fast float 0x3FE3333340000000, %4746
  %4782 = fmul fast float %4781, 0x400AAAAAA0000000
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = fmul fast float %4780, %4783
  %4785 = fmul fast float %4740, 0x3FEA2B8620000000
  %4786 = fmul fast float %4741, 0x3FEA2B8620000000
  %4787 = fmul fast float %4742, 0x3FEA2B8620000000
  %4788 = fadd fast float %4785, 0x3FC81DFBA0000000
  %4789 = fmul fast float %4788, %4740
  %4790 = fadd fast float %4789, 0x3F910E6020000000
  %4791 = fadd fast float %4786, 0x3FC81DFBA0000000
  %4792 = fmul fast float %4791, %4741
  %4793 = fadd fast float %4792, 0x3F910E6020000000
  %4794 = fadd fast float %4787, 0x3FC81DFBA0000000
  %4795 = fmul fast float %4794, %4742
  %4796 = fadd fast float %4795, 0x3F910E6020000000
  %4797 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = fsub fast float %4797, %4740
  %4801 = fsub fast float %4798, %4741
  %4802 = fsub fast float %4799, %4742
  %4803 = fmul fast float %4800, %4767
  %4804 = fmul fast float %4803, %4784
  %4805 = fmul fast float %4801, %4767
  %4806 = fmul fast float %4805, %4784
  %4807 = fmul fast float %4802, %4767
  %4808 = fmul fast float %4807, %4784
  %4809 = fadd fast float %4804, %4740
  %4810 = fadd fast float %4806, %4741
  %4811 = fadd fast float %4808, %4742
  %4812 = fmul fast float %4747, %4747
  %4813 = fmul fast float %4812, %4812
  %4814 = fadd fast float %4770, 1.000000e+00
  %4815 = fsub fast float %4814, %4784
  %4816 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4817 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fsub fast float 1.000000e+00, %4813
  %4820 = call float @dx.op.binary.f32(i32 36, float %4816, float %4819)  ; FMin(a,b)
  %4821 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4822 = call float @dx.op.binary.f32(i32 35, float %4820, float %4821)  ; FMax(a,b)
  %4823 = fadd fast float %4818, 0xBFE4CCCCC0000000
  %4824 = fmul fast float %4823, 0x4006DB6DA0000000
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = fmul fast float %4825, 2.000000e+00
  %4827 = fsub fast float 3.000000e+00, %4826
  %4828 = bitcast float %4737 to i32
  %4829 = ashr i32 %4828, 1
  %4830 = add nsw i32 %4829, 532487669
  %4831 = bitcast i32 %4830 to float
  %4832 = fsub fast float 1.000000e+00, %4831
  %4833 = bitcast float %4832 to i32
  %4834 = sub nsw i32 2129859010, %4833
  %4835 = bitcast i32 %4834 to float
  %4836 = fmul fast float %4835, 2.000000e+00
  %4837 = bitcast float %4738 to i32
  %4838 = ashr i32 %4837, 1
  %4839 = add nsw i32 %4838, 532487669
  %4840 = bitcast i32 %4839 to float
  %4841 = fsub fast float 1.000000e+00, %4840
  %4842 = bitcast float %4841 to i32
  %4843 = sub nsw i32 2129859010, %4842
  %4844 = bitcast i32 %4843 to float
  %4845 = fmul fast float %4844, 2.000000e+00
  %4846 = bitcast float %4739 to i32
  %4847 = ashr i32 %4846, 1
  %4848 = add nsw i32 %4847, 532487669
  %4849 = bitcast i32 %4848 to float
  %4850 = fsub fast float 1.000000e+00, %4849
  %4851 = bitcast float %4850 to i32
  %4852 = sub nsw i32 2129859010, %4851
  %4853 = bitcast i32 %4852 to float
  %4854 = fmul fast float %4853, 2.000000e+00
  %4855 = fsub fast float 0x4002A9FBE0000000, %4836
  %4856 = fadd fast float %4836, 0x3FD54FDF00000000
  %4857 = bitcast float %4856 to i32
  %4858 = sub nsw i32 2129859010, %4857
  %4859 = bitcast i32 %4858 to float
  %4860 = fmul fast float %4859, %4855
  %4861 = fmul fast float %4860, %4860
  %4862 = fsub fast float 0x4002A9FBE0000000, %4845
  %4863 = fadd fast float %4845, 0x3FD54FDF00000000
  %4864 = bitcast float %4863 to i32
  %4865 = sub nsw i32 2129859010, %4864
  %4866 = bitcast i32 %4865 to float
  %4867 = fmul fast float %4866, %4862
  %4868 = fmul fast float %4867, %4867
  %4869 = fsub fast float 0x4002A9FBE0000000, %4854
  %4870 = fadd fast float %4854, 0x3FD54FDF00000000
  %4871 = bitcast float %4870 to i32
  %4872 = sub nsw i32 2129859010, %4871
  %4873 = bitcast i32 %4872 to float
  %4874 = fmul fast float %4873, %4869
  %4875 = fmul fast float %4874, %4874
  %4876 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4861)  ; FMax(a,b)
  %4877 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4868)  ; FMax(a,b)
  %4878 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4875)  ; FMax(a,b)
  %4879 = fsub fast float 1.000000e+00, %4765
  %4880 = fadd fast float %4879, %4780
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fsub fast float 1.000000e+00, %4152
  %4883 = fmul fast float %4822, %4882
  %4884 = fmul fast float %4825, %4825
  %4885 = fmul fast float %4884, %4883
  %4886 = fmul fast float %4885, %4827
  %4887 = fmul fast float %4882, 0xBFE99999A0000000
  %4888 = fmul fast float %4887, %4767
  %4889 = fmul fast float %4888, %4784
  %4890 = fadd fast float %4889, 1.000000e+00
  %4891 = fadd fast float %4746, -1.000000e+00
  %4892 = fmul fast float %4890, %4891
  %4893 = fadd fast float %4892, 1.000000e+00
  %4894 = fsub fast float %4876, %4737
  %4895 = fsub fast float %4877, %4738
  %4896 = fsub fast float %4878, %4739
  %4897 = fmul fast float %4886, %4894
  %4898 = fmul fast float %4886, %4895
  %4899 = fmul fast float %4886, %4896
  %4900 = fadd fast float %4897, %4737
  %4901 = fadd fast float %4898, %4738
  %4902 = fadd fast float %4899, %4739
  %4903 = fsub fast float %85, %4743
  %4904 = fsub fast float %86, %4744
  %4905 = fsub fast float %87, %4745
  %4906 = fmul fast float %4886, %4903
  %4907 = fmul fast float %4886, %4904
  %4908 = fmul fast float %4886, %4905
  %4909 = fadd fast float %4906, %4743
  %4910 = fadd fast float %4907, %4744
  %4911 = fadd fast float %4908, %4745
  %4912 = fmul fast float %4886, %4881
  %4913 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = fmul fast float %4912, %4914
  %4916 = fadd fast float %4915, %4913
  %4917 = fsub fast float 1.000000e+00, %4747
  %4918 = fmul fast float %4886, %4917
  %4919 = fadd fast float %4918, %4747
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4909, float %4910, float %4911, float %4909, float %4910, float %4911)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = call float @dx.op.unary.f32(i32 25, float %4920)  ; Rsqrt(value)
  %4922 = fmul fast float %4909, %4921
  %4923 = fmul fast float %4910, %4921
  %4924 = fmul fast float %4911, %4921
  br label %4925

; <label>:4925                                    ; preds = %4758, %4751
  %4926 = phi float [ %4757, %4751 ], [ %4764, %4758 ]
  %4927 = phi float [ %4756, %4751 ], [ %4762, %4758 ]
  %4928 = phi float [ %4755, %4751 ], [ %4760, %4758 ]
  %4929 = phi float [ %4754, %4751 ], [ %4763, %4758 ]
  %4930 = phi float [ %4753, %4751 ], [ %4761, %4758 ]
  %4931 = phi float [ %4752, %4751 ], [ %4759, %4758 ]
  %4932 = phi float [ %4737, %4751 ], [ %4900, %4758 ]
  %4933 = phi float [ %4738, %4751 ], [ %4901, %4758 ]
  %4934 = phi float [ %4739, %4751 ], [ %4902, %4758 ]
  %4935 = phi float [ %4740, %4751 ], [ %4809, %4758 ]
  %4936 = phi float [ %4741, %4751 ], [ %4810, %4758 ]
  %4937 = phi float [ %4742, %4751 ], [ %4811, %4758 ]
  %4938 = phi float [ %4743, %4751 ], [ %4922, %4758 ]
  %4939 = phi float [ %4744, %4751 ], [ %4923, %4758 ]
  %4940 = phi float [ %4745, %4751 ], [ %4924, %4758 ]
  %4941 = phi float [ %4746, %4751 ], [ %4916, %4758 ]
  %4942 = phi float [ %4747, %4751 ], [ %4919, %4758 ]
  %4943 = select i1 %211, float 0.000000e+00, float %4934
  %4944 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %4928, float %4927, float %4926)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4931, float %4930, float %4929, float %4938, float %4939, float %4940)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = fmul fast float %4946, 2.000000e+00
  %4948 = fmul fast float %4947, %4938
  %4949 = fmul fast float %4947, %4939
  %4950 = fmul fast float %4947, %4940
  %4951 = fsub fast float %4931, %4948
  %4952 = fsub fast float %4930, %4949
  %4953 = fsub fast float %4929, %4950
  %4954 = call float @dx.op.binary.f32(i32 36, float %4942, float 1.000000e+00)  ; FMin(a,b)
  %4955 = fsub fast float 1.000000e+00, %4942
  %4956 = bitcast float %4955 to i32
  %4957 = sub nsw i32 2129859010, %4956
  %4958 = fsub fast float 1.000000e+00, %55
  %4959 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = call float @dx.op.binary.f32(i32 35, float %4959, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4961 = fdiv fast float %4958, %4960
  %4962 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = fmul fast float %4963, 5.000000e-01
  %4965 = fadd fast float %4964, 5.000000e-01
  %4966 = fmul fast float %4965, %55
  %4967 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4969 = fmul fast float %4968, %4961
  %4970 = fadd fast float %4966, %4969
  %4971 = fsub fast float 5.000000e-01, %4964
  %4972 = fmul fast float %4971, %4935
  %4973 = fmul fast float %4971, %4936
  %4974 = fmul fast float %4971, %4937
  %4975 = fadd fast float %4970, %4972
  %4976 = fadd fast float %4970, %4973
  %4977 = fadd fast float %4970, %4974
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fmul fast float %4979, 5.000000e-01
  %4981 = fadd fast float %4980, 5.000000e-01
  %4982 = fmul fast float %4981, %55
  %4983 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4985 = fmul fast float %4984, %4961
  %4986 = fadd fast float %4982, %4985
  %4987 = fsub fast float 5.000000e-01, %4980
  %4988 = fmul fast float %4987, %4935
  %4989 = fmul fast float %4987, %4936
  %4990 = fmul fast float %4987, %4937
  %4991 = fadd fast float %4986, %4988
  %4992 = fadd fast float %4986, %4989
  %4993 = fadd fast float %4986, %4990
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 0
  %4996 = call float @dx.op.binary.f32(i32 36, float %4935, float %4995)  ; FMin(a,b)
  %4997 = fsub fast float 1.000000e+00, %4954
  %4998 = fmul fast float %4996, %4997
  %4999 = fsub fast float 1.000000e+00, %4998
  %5000 = bitcast float %4999 to i32
  %5001 = sub nsw i32 2129859010, %5000
  %5002 = bitcast i32 %5001 to float
  %5003 = call float @dx.op.binary.f32(i32 36, float %4936, float %4995)  ; FMin(a,b)
  %5004 = fmul fast float %5003, %4997
  %5005 = fsub fast float 1.000000e+00, %5004
  %5006 = bitcast float %5005 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = call float @dx.op.binary.f32(i32 36, float %4937, float %4995)  ; FMin(a,b)
  %5010 = fmul fast float %5009, %4997
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %4954, %56
  %5016 = fmul fast float %5015, %4975
  %5017 = fmul fast float %5016, %5002
  %5018 = fmul fast float %4954, %57
  %5019 = fmul fast float %5018, %4976
  %5020 = fmul fast float %5019, %5008
  %5021 = fmul fast float %4954, %58
  %5022 = fmul fast float %5021, %4977
  %5023 = fmul fast float %5022, %5014
  %5024 = call float @dx.op.binary.f32(i32 36, float %4932, float %4995)  ; FMin(a,b)
  %5025 = fmul fast float %5024, %4997
  %5026 = fsub fast float 1.000000e+00, %5025
  %5027 = bitcast float %5026 to i32
  %5028 = sub nsw i32 2129859010, %5027
  %5029 = bitcast i32 %5028 to float
  %5030 = call float @dx.op.binary.f32(i32 36, float %4933, float %4995)  ; FMin(a,b)
  %5031 = fmul fast float %5030, %4997
  %5032 = fsub fast float 1.000000e+00, %5031
  %5033 = bitcast float %5032 to i32
  %5034 = sub nsw i32 2129859010, %5033
  %5035 = bitcast i32 %5034 to float
  %5036 = call float @dx.op.binary.f32(i32 36, float %4943, float %4995)  ; FMin(a,b)
  %5037 = fmul fast float %5036, %4997
  %5038 = fsub fast float 1.000000e+00, %5037
  %5039 = bitcast float %5038 to i32
  %5040 = sub nsw i32 2129859010, %5039
  %5041 = bitcast i32 %5040 to float
  %5042 = fmul fast float %5015, %4991
  %5043 = fmul fast float %5042, %5029
  %5044 = fmul fast float %5018, %4992
  %5045 = fmul fast float %5044, %5035
  %5046 = fmul fast float %5021, %4993
  %5047 = fmul fast float %5046, %5041
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5017, float %5020, float %5023, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = select i1 %211, float 0.000000e+00, float %5017
  %5050 = select i1 %211, float %5048, float %5020
  %5051 = select i1 %211, float 0.000000e+00, float %5023
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5045, float %5047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = select i1 %211, float 0.000000e+00, float %5043
  %5054 = select i1 %211, float %5052, float %5045
  %5055 = select i1 %211, float 0.000000e+00, float %5047
  %5056 = fmul fast float %4945, 9.843750e-01
  %5057 = fmul fast float %4941, 9.843750e-01
  %5058 = fadd fast float %5056, 7.812500e-03
  %5059 = fadd fast float %5057, 7.812500e-03
  %5060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5058, float %5059, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 2
  %5062 = extractvalue %dx.types.ResRet.f32 %5060, 3
  %5063 = fmul fast float %5061, %4932
  %5064 = fmul fast float %5061, %4933
  %5065 = fmul fast float %5061, %4943
  %5066 = fadd fast float %5063, %5062
  %5067 = fadd fast float %5064, %5062
  %5068 = fadd fast float %5065, %5062
  %5069 = fcmp fast ogt float %3738, 0.000000e+00
  br i1 %5069, label %5070, label %5096

; <label>:5070                                    ; preds = %4925
  %5071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3738, float %4945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.ResRet.f32 %5071, 1
  %5074 = extractvalue %dx.types.ResRet.f32 %5071, 2
  %5075 = fadd fast float %5072, -5.000000e-01
  %5076 = fadd fast float %5073, -5.000000e-01
  %5077 = fadd fast float %5074, -5.000000e-01
  %5078 = fsub fast float 1.000000e+00, %4932
  %5079 = fsub fast float 1.000000e+00, %4933
  %5080 = fsub fast float 1.000000e+00, %4943
  %5081 = fmul fast float %4932, 4.000000e+00
  %5082 = fmul fast float %5081, %5078
  %5083 = fmul fast float %5082, %5075
  %5084 = fmul fast float %4933, 4.000000e+00
  %5085 = fmul fast float %5084, %5079
  %5086 = fmul fast float %5085, %5076
  %5087 = fmul fast float %4943, 4.000000e+00
  %5088 = fmul fast float %5087, %5080
  %5089 = fmul fast float %5088, %5077
  %5090 = fadd fast float %5083, %5066
  %5091 = fadd fast float %5086, %5067
  %5092 = fadd fast float %5089, %5068
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  br label %5096

; <label>:5096                                    ; preds = %5070, %4925
  %5097 = phi float [ %5093, %5070 ], [ %5066, %4925 ]
  %5098 = phi float [ %5094, %5070 ], [ %5067, %4925 ]
  %5099 = phi float [ %5095, %5070 ], [ %5068, %4925 ]
  %5100 = call float @dx.op.binary.f32(i32 35, float %5098, float %5099)  ; FMax(a,b)
  %5101 = call float @dx.op.binary.f32(i32 35, float %5097, float %5100)  ; FMax(a,b)
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = fmul fast float %5102, %5049
  %5104 = fmul fast float %5102, %5050
  %5105 = fmul fast float %5102, %5051
  %5106 = call float @dx.op.dot3.f32(i32 55, float %4935, float %4936, float %4937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5107 = fcmp fast ogt float %5106, 0x3E7FF19E20000000
  %5108 = fdiv fast float 1.000000e+00, %5106
  %5109 = select i1 %5107, float %5108, float 0.000000e+00
  %5110 = fmul fast float %5109, %4935
  %5111 = fmul fast float %5109, %4936
  %5112 = fmul fast float %5109, %4937
  %5113 = fadd fast float %5110, -1.000000e+00
  %5114 = fadd fast float %5111, -1.000000e+00
  %5115 = fadd fast float %5112, -1.000000e+00
  %5116 = fmul fast float %5113, 5.000000e-01
  %5117 = fmul fast float %5114, 5.000000e-01
  %5118 = fmul fast float %5115, 5.000000e-01
  %5119 = fadd fast float %5116, 1.000000e+00
  %5120 = fadd fast float %5117, 1.000000e+00
  %5121 = fadd fast float %5118, 1.000000e+00
  %5122 = fmul fast float %5097, %5053
  %5123 = fmul fast float %5098, %5054
  %5124 = fmul fast float %5099, %5055
  %5125 = fsub fast float 1.000000e+00, %4945
  %5126 = bitcast float %5125 to i32
  %5127 = sitofp i32 %5126 to float
  %5128 = fmul fast float %5127, 5.000000e+00
  %5129 = fadd fast float %5128, 0xC1EFBF8940000000
  %5130 = fptosi float %5129 to i32
  %5131 = bitcast i32 %5130 to float
  %5132 = fmul fast float %5131, %3739
  %5133 = fmul fast float %5049, %5132
  %5134 = fmul fast float %5133, %5102
  %5135 = fmul fast float %5134, %5119
  %5136 = fmul fast float %5050, %5132
  %5137 = fmul fast float %5136, %5102
  %5138 = fmul fast float %5137, %5120
  %5139 = fmul fast float %5051, %5132
  %5140 = fmul fast float %5139, %5102
  %5141 = fmul fast float %5140, %5121
  %5142 = fmul fast float %5103, %3735
  %5143 = fmul fast float %5104, %3735
  %5144 = fmul fast float %5105, %3735
  %5145 = fadd fast float %5122, %3731
  %5146 = fadd fast float %5145, %5135
  %5147 = fmul fast float %5146, %3735
  %5148 = fadd fast float %5123, %3732
  %5149 = fadd fast float %5148, %5138
  %5150 = fmul fast float %5149, %3735
  %5151 = fadd fast float %5124, %3733
  %5152 = fadd fast float %5151, %5141
  %5153 = fmul fast float %5152, %3735
  %5154 = bitcast i32 %4957 to float
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5157 = fcmp fast oeq float %5156, 0.000000e+00
  br i1 %5157, label %5385, label %5158

; <label>:5158                                    ; preds = %5096
  %5159 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5160 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5161 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.CBufRet.f32 %5162, 1
  %5165 = extractvalue %dx.types.CBufRet.f32 %5162, 2
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5168 = extractvalue %dx.types.CBufRet.f32 %5166, 1
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5163, float %5164, float %5165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = select i1 %211, float %5167, float %5163
  %5171 = select i1 %211, float %5169, float %5164
  %5172 = select i1 %211, float %5168, float %5165
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 1
  %5175 = fcmp fast une float %5174, 0.000000e+00
  br i1 %5175, label %5176, label %5193

; <label>:5176                                    ; preds = %5158
  %5177 = fptoui float %78 to i32
  %5178 = fptoui float %79 to i32
  %5179 = lshr i32 %5177, 4
  %5180 = lshr i32 %5178, 4
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 0
  %5183 = fptoui float %5182 to i32
  %5184 = add i32 %5183, 15
  %5185 = lshr i32 %5184, 4
  %5186 = mul i32 %5185, %5180
  %5187 = add i32 %5186, %5179
  %5188 = shl i32 %5187, 3
  %5189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5188, i32 undef)  ; BufferLoad(srv,index,wot)
  %5190 = extractvalue %dx.types.ResRet.i32 %5189, 0
  %5191 = and i32 %5190, -268435456
  %5192 = icmp eq i32 %5191, -1342177280
  br i1 %5192, label %5203, label %5193

; <label>:5193                                    ; preds = %5176, %5158
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5196 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5197 = fmul fast float %5195, %78
  %5198 = fmul fast float %5196, %79
  %5199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5197, float %5198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5200 = extractvalue %dx.types.ResRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.ResRet.f32 %5199, 1
  %5202 = extractvalue %dx.types.ResRet.f32 %5199, 2
  br label %5203

; <label>:5203                                    ; preds = %5193, %5176
  %5204 = phi float [ %5200, %5193 ], [ 0.000000e+00, %5176 ]
  %5205 = phi float [ %5201, %5193 ], [ 0.000000e+00, %5176 ]
  %5206 = phi float [ %5202, %5193 ], [ 0.000000e+00, %5176 ]
  %5207 = call float @dx.op.binary.f32(i32 36, float %5205, float %5206)  ; FMin(a,b)
  %5208 = call float @dx.op.binary.f32(i32 36, float %5204, float %5207)  ; FMin(a,b)
  %5209 = fcmp fast ogt float %5208, 0.000000e+00
  br i1 %5209, label %5210, label %5385, !dx.controlflow.hints !76

; <label>:5210                                    ; preds = %5203
  %5211 = fmul fast float %5204, %5170
  %5212 = fmul fast float %5205, %5171
  %5213 = fmul fast float %5206, %5172
  %5214 = fsub fast float %5159, %4931
  %5215 = fsub fast float %5160, %4930
  %5216 = fsub fast float %5161, %4929
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5214, float %5215, float %5216, float %5214, float %5215, float %5216)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = call float @dx.op.unary.f32(i32 25, float %5217)  ; Rsqrt(value)
  %5219 = fmul fast float %5218, %5214
  %5220 = fmul fast float %5218, %5215
  %5221 = fmul fast float %5218, %5216
  %5222 = call float @dx.op.dot3.f32(i32 55, float %5159, float %5160, float %5161, float %4938, float %4939, float %4940)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = call float @dx.op.dot3.f32(i32 55, float %4928, float %4927, float %4926, float %5219, float %5220, float %5221)  ; Dot3(ax,ay,az,bx,by,bz)
  %5224 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5225 = fmul fast float %5224, %5224
  %5226 = fmul fast float %5225, %5154
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = fmul fast float %5227, %5224
  %5229 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %5219, float %5220, float %5221)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = fmul fast float %5229, %5229
  %5231 = call float @dx.op.unary.f32(i32 6, float %5222)  ; FAbs(value)
  %5232 = fsub fast float 1.000000e+00, %4941
  %5233 = call float @dx.op.binary.f32(i32 35, float %5232, float 0x3F847AE140000000)  ; FMax(a,b)
  %5234 = fmul fast float %5233, %5233
  %5235 = fmul fast float %5234, %5234
  %5236 = fsub fast float 1.000000e+00, %5235
  %5237 = fmul fast float %4945, %4945
  %5238 = fmul fast float %5237, %5236
  %5239 = fadd fast float %5238, %5235
  %5240 = bitcast float %5239 to i32
  %5241 = ashr i32 %5240, 1
  %5242 = add nsw i32 %5241, 532487669
  %5243 = bitcast i32 %5242 to float
  %5244 = fadd fast float %5243, %4945
  %5245 = fmul fast float %5235, %5230
  %5246 = fsub fast float 1.000000e+00, %5230
  %5247 = fadd fast float %5246, %5245
  %5248 = fmul fast float %5231, %5231
  %5249 = fmul fast float %5248, %5236
  %5250 = fadd fast float %5249, %5235
  %5251 = bitcast float %5250 to i32
  %5252 = ashr i32 %5251, 1
  %5253 = add nsw i32 %5252, 532487669
  %5254 = bitcast i32 %5253 to float
  %5255 = fadd fast float %5254, %5231
  %5256 = fmul fast float %5247, %5247
  %5257 = fmul fast float %5256, %5244
  %5258 = fmul fast float %5257, %5255
  %5259 = fdiv fast float 0x3FF0A00000000000, %5258
  %5260 = fmul fast float %5259, %5235
  %5261 = call float @dx.op.unary.f32(i32 6, float %5223)  ; FAbs(value)
  %5262 = fsub fast float 1.000000e+00, %5261
  %5263 = bitcast float %5262 to i32
  %5264 = sitofp i32 %5263 to float
  %5265 = fmul fast float %5264, 5.000000e+00
  %5266 = fadd fast float %5265, 0xC1EFBF8940000000
  %5267 = fptosi float %5266 to i32
  %5268 = bitcast i32 %5267 to float
  %5269 = fsub fast float 1.000000e+00, %4932
  %5270 = fsub fast float 1.000000e+00, %4933
  %5271 = fsub fast float 1.000000e+00, %4943
  %5272 = fmul fast float %5268, %5269
  %5273 = fmul fast float %5268, %5270
  %5274 = fmul fast float %5268, %5271
  %5275 = fadd fast float %5272, %4932
  %5276 = fadd fast float %5273, %4933
  %5277 = fadd fast float %5274, %4943
  br i1 %5069, label %5278, label %5301

; <label>:5278                                    ; preds = %5210
  %5279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3738, float %5261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.ResRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.ResRet.f32 %5279, 2
  %5283 = fadd fast float %5280, -5.000000e-01
  %5284 = fadd fast float %5281, -5.000000e-01
  %5285 = fadd fast float %5282, -5.000000e-01
  %5286 = fmul fast float %4932, 4.000000e+00
  %5287 = fmul fast float %5286, %5269
  %5288 = fmul fast float %5287, %5283
  %5289 = fmul fast float %4933, 4.000000e+00
  %5290 = fmul fast float %5289, %5270
  %5291 = fmul fast float %5290, %5284
  %5292 = fmul fast float %4943, 4.000000e+00
  %5293 = fmul fast float %5292, %5271
  %5294 = fmul fast float %5293, %5285
  %5295 = fadd fast float %5288, %5275
  %5296 = fadd fast float %5291, %5276
  %5297 = fadd fast float %5294, %5277
  %5298 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  br label %5301

; <label>:5301                                    ; preds = %5278, %5210
  %5302 = phi float [ %5298, %5278 ], [ %5275, %5210 ]
  %5303 = phi float [ %5299, %5278 ], [ %5276, %5210 ]
  %5304 = phi float [ %5300, %5278 ], [ %5277, %5210 ]
  %5305 = fmul fast float %5222, 9.843750e-01
  %5306 = fadd fast float %5305, 7.812500e-03
  %5307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5306, float %5059, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5308 = extractvalue %dx.types.ResRet.f32 %5307, 2
  %5309 = extractvalue %dx.types.ResRet.f32 %5307, 3
  %5310 = fmul fast float %5308, %4932
  %5311 = fmul fast float %5308, %4933
  %5312 = fmul fast float %5308, %4943
  %5313 = fadd fast float %5310, %5309
  %5314 = fadd fast float %5311, %5309
  %5315 = fadd fast float %5312, %5309
  br i1 %5069, label %5316, label %5339

; <label>:5316                                    ; preds = %5301
  %5317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3738, float %5222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5318 = extractvalue %dx.types.ResRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.ResRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.ResRet.f32 %5317, 2
  %5321 = fadd fast float %5318, -5.000000e-01
  %5322 = fadd fast float %5319, -5.000000e-01
  %5323 = fadd fast float %5320, -5.000000e-01
  %5324 = fmul fast float %4932, 4.000000e+00
  %5325 = fmul fast float %5324, %5269
  %5326 = fmul fast float %5325, %5321
  %5327 = fmul fast float %4933, 4.000000e+00
  %5328 = fmul fast float %5327, %5270
  %5329 = fmul fast float %5328, %5322
  %5330 = fmul fast float %4943, 4.000000e+00
  %5331 = fmul fast float %5330, %5271
  %5332 = fmul fast float %5331, %5323
  %5333 = fadd fast float %5326, %5313
  %5334 = fadd fast float %5329, %5314
  %5335 = fadd fast float %5332, %5315
  %5336 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5337 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  br label %5339

; <label>:5339                                    ; preds = %5316, %5301
  %5340 = phi float [ %5336, %5316 ], [ %5313, %5301 ]
  %5341 = phi float [ %5337, %5316 ], [ %5314, %5301 ]
  %5342 = phi float [ %5338, %5316 ], [ %5315, %5301 ]
  %5343 = call float @dx.op.binary.f32(i32 35, float %5341, float %5342)  ; FMax(a,b)
  %5344 = call float @dx.op.binary.f32(i32 35, float %5340, float %5343)  ; FMax(a,b)
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = fmul fast float %5302, %5260
  %5347 = fmul fast float %5303, %5260
  %5348 = fmul fast float %5304, %5260
  %5349 = fsub fast float 1.000000e+00, %5223
  %5350 = bitcast float %5349 to i32
  %5351 = sitofp i32 %5350 to float
  %5352 = fmul fast float %5351, 5.000000e+00
  %5353 = fadd fast float %5352, 0xC1EFBF8940000000
  %5354 = fptosi float %5353 to i32
  %5355 = bitcast i32 %5354 to float
  %5356 = fmul fast float %5355, %3739
  %5357 = fmul fast float %5345, %5356
  %5358 = fmul fast float %5357, %5119
  %5359 = fmul fast float %5357, %5120
  %5360 = fmul fast float %5357, %5121
  %5361 = fadd fast float %5358, %5346
  %5362 = fadd fast float %5359, %5347
  %5363 = fadd fast float %5360, %5348
  %5364 = fmul fast float %5228, %5211
  %5365 = fmul fast float %5364, %5345
  %5366 = fmul fast float %5228, %5212
  %5367 = fmul fast float %5366, %5345
  %5368 = fmul fast float %5228, %5213
  %5369 = fmul fast float %5368, %5345
  %5370 = fmul fast float %5364, %5361
  %5371 = fmul fast float %5366, %5362
  %5372 = fmul fast float %5368, %5363
  %5373 = fadd fast float %5365, %5103
  %5374 = fmul fast float %5373, %3735
  %5375 = fadd fast float %5367, %5104
  %5376 = fmul fast float %5375, %3735
  %5377 = fadd fast float %5369, %5105
  %5378 = fmul fast float %5377, %3735
  %5379 = fadd fast float %5370, %5146
  %5380 = fmul fast float %5379, %3735
  %5381 = fadd fast float %5371, %5149
  %5382 = fmul fast float %5381, %3735
  %5383 = fadd fast float %5372, %5152
  %5384 = fmul fast float %5383, %3735
  br label %5385

; <label>:5385                                    ; preds = %5339, %5203, %5096
  %5386 = phi float [ %5147, %5096 ], [ %5147, %5203 ], [ %5380, %5339 ]
  %5387 = phi float [ %5150, %5096 ], [ %5150, %5203 ], [ %5382, %5339 ]
  %5388 = phi float [ %5153, %5096 ], [ %5153, %5203 ], [ %5384, %5339 ]
  %5389 = phi float [ %5142, %5096 ], [ %5142, %5203 ], [ %5374, %5339 ]
  %5390 = phi float [ %5143, %5096 ], [ %5143, %5203 ], [ %5376, %5339 ]
  %5391 = phi float [ %5144, %5096 ], [ %5144, %5203 ], [ %5378, %5339 ]
  %5392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.i32 %5392, 0
  %5394 = icmp eq i32 %5393, 0
  br i1 %5394, label %5829, label %5395

; <label>:5395                                    ; preds = %5385
  %5396 = fptoui float %78 to i32
  %5397 = fptoui float %79 to i32
  %5398 = lshr i32 %5396, 4
  %5399 = lshr i32 %5397, 4
  %5400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.i32 %5400, 0
  %5402 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5399, i32 %5401, i32 %5398)  ; UMad(a,b,c)
  %5403 = add nsw i32 %5393, -1
  %5404 = call i32 @dx.op.binary.i32(i32 37, i32 %5403, i32 0)  ; IMax(a,b)
  %5405 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5406 = fptoui float %5405 to i32
  %5407 = lshr i32 %5406, 5
  %5408 = call i32 @dx.op.binary.i32(i32 40, i32 %5407, i32 8191)  ; UMin(a,b)
  %5409 = shl i32 %5408, 2
  %5410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5409, i32 undef)  ; BufferLoad(srv,index,wot)
  %5411 = extractvalue %dx.types.ResRet.i32 %5410, 0
  %5412 = lshr i32 %5411, 16
  %5413 = and i32 %5411, 65535
  %5414 = lshr i32 %5411, 21
  %5415 = lshr i32 %5413, 5
  %5416 = call i32 @dx.op.binary.i32(i32 40, i32 %5415, i32 %5404)  ; UMin(a,b)
  %5417 = icmp ugt i32 %5414, %5416
  br i1 %5417, label %5829, label %5418

; <label>:5418                                    ; preds = %5395
  br label %5419

; <label>:5419                                    ; preds = %5819, %5418
  %5420 = phi i32 [ %5826, %5819 ], [ %5414, %5418 ]
  %5421 = phi float [ %5820, %5819 ], [ %5386, %5418 ]
  %5422 = phi float [ %5821, %5819 ], [ %5387, %5418 ]
  %5423 = phi float [ %5822, %5819 ], [ %5388, %5418 ]
  %5424 = phi float [ %5823, %5819 ], [ %5389, %5418 ]
  %5425 = phi float [ %5824, %5819 ], [ %5390, %5418 ]
  %5426 = phi float [ %5825, %5819 ], [ %5391, %5418 ]
  %5427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.i32 %5427, 0
  %5429 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5402, i32 %5428, i32 %5420)  ; UMad(a,b,c)
  %5430 = shl i32 %5429, 2
  %5431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.i32 %5431, 0
  %5433 = shl i32 %5420, 5
  %5434 = sub nsw i32 %5412, %5433
  %5435 = call i32 @dx.op.binary.i32(i32 37, i32 %5434, i32 0)  ; IMax(a,b)
  %5436 = call i32 @dx.op.binary.i32(i32 38, i32 %5435, i32 31)  ; IMin(a,b)
  %5437 = sub nsw i32 1, %5412
  %5438 = add nsw i32 %5437, %5413
  %5439 = call i32 @dx.op.binary.i32(i32 37, i32 %5438, i32 0)  ; IMax(a,b)
  %5440 = call i32 @dx.op.binary.i32(i32 38, i32 %5439, i32 32)  ; IMin(a,b)
  %5441 = and i32 %5440, 31
  %5442 = shl i32 -1, %5441
  %5443 = xor i32 %5442, -1
  %5444 = and i32 %5436, 31
  %5445 = shl i32 %5443, %5444
  %5446 = icmp eq i32 %5440, 32
  %5447 = select i1 %5446, i32 -1, i32 %5445
  %5448 = and i32 %5447, %5432
  %5449 = icmp eq i32 %5448, 0
  br i1 %5449, label %5819, label %5450

; <label>:5450                                    ; preds = %5419
  br label %5451

; <label>:5451                                    ; preds = %5531, %5450
  %5452 = phi i32 [ %5463, %5531 ], [ %5448, %5450 ]
  %5453 = phi float [ %5532, %5531 ], [ %5421, %5450 ]
  %5454 = phi float [ %5533, %5531 ], [ %5422, %5450 ]
  %5455 = phi float [ %5534, %5531 ], [ %5423, %5450 ]
  %5456 = phi float [ %5535, %5531 ], [ %5424, %5450 ]
  %5457 = phi float [ %5536, %5531 ], [ %5425, %5450 ]
  %5458 = phi float [ %5537, %5531 ], [ %5426, %5450 ]
  %5459 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5452)  ; FirstbitLo(value)
  %5460 = add i32 %5459, %5433
  %5461 = and i32 %5459, 31
  %5462 = shl i32 1, %5461
  %5463 = xor i32 %5462, %5452
  %5464 = mul i32 %5460, 112
  %5465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5464, i32 undef)  ; BufferLoad(srv,index,wot)
  %5466 = extractvalue %dx.types.ResRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.ResRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.ResRet.f32 %5465, 2
  %5469 = or i32 %5464, 12
  %5470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5469, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 0
  %5472 = add i32 %5464, 44
  %5473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5472, i32 undef)  ; BufferLoad(srv,index,wot)
  %5474 = extractvalue %dx.types.ResRet.f32 %5473, 0
  %5475 = add i32 %5464, 48
  %5476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5475, i32 undef)  ; BufferLoad(srv,index,wot)
  %5477 = extractvalue %dx.types.ResRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.ResRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.ResRet.f32 %5476, 2
  %5480 = add i32 %5464, 80
  %5481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5480, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5484 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = select i1 %211, float %5482, float %5466
  %5486 = select i1 %211, float %5484, float %5467
  %5487 = select i1 %211, float %5483, float %5468
  %5488 = fsub fast float %5477, %165
  %5489 = fsub fast float %5478, %166
  %5490 = fsub fast float %5479, %167
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5489, float %5490, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = call float @dx.op.unary.f32(i32 24, float %5491)  ; Sqrt(value)
  %5493 = fdiv fast float 1.000000e+00, %5492
  %5494 = fmul fast float %5493, %5488
  %5495 = fmul fast float %5493, %5489
  %5496 = fmul fast float %5493, %5490
  %5497 = fadd fast float %5492, %5471
  %5498 = fdiv fast float 1.000000e+00, %5497
  %5499 = fmul float %5474, %5498
  %5500 = fmul float %5499, %5499
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5502 = and i32 %5462, %5448
  %5503 = icmp eq i32 %5502, 0
  br i1 %5503, label %5526, label %5504, !dx.controlflow.hints !77

; <label>:5504                                    ; preds = %5451
  %5505 = lshr i32 %5396, 5
  %5506 = lshr i32 %5397, 5
  %5507 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5505, i32 %5506, i32 %5460, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5508 = extractvalue %dx.types.ResRet.i32 %5507, 0
  %5509 = and i32 %5508, 3
  %5510 = icmp eq i32 %5509, 0
  %5511 = select i1 %5510, float 1.000000e+00, float 0.000000e+00
  %5512 = icmp eq i32 %5509, 3
  br i1 %5512, label %5513, label %5526

; <label>:5513                                    ; preds = %5504
  %5514 = lshr i32 %5508, 10
  %5515 = and i32 %5514, 8160
  %5516 = and i32 %5397, 31
  %5517 = or i32 %5515, %5516
  %5518 = lshr i32 %5508, 1
  %5519 = and i32 %5518, 16352
  %5520 = and i32 %5396, 31
  %5521 = or i32 %5519, %5520
  %5522 = lshr i32 %5508, 23
  %5523 = and i32 %5522, 255
  %5524 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5521, i32 %5517, i32 %5523, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  br label %5526

; <label>:5526                                    ; preds = %5513, %5504, %5451
  %5527 = phi float [ %5525, %5513 ], [ %5511, %5504 ], [ 0.000000e+00, %5451 ]
  %5528 = call float @dx.op.binary.f32(i32 36, float %5527, float %5527)  ; FMin(a,b)
  %5529 = call float @dx.op.binary.f32(i32 36, float %5527, float %5528)  ; FMin(a,b)
  %5530 = fcmp fast ogt float %5529, 0.000000e+00
  br i1 %5530, label %5539, label %5531, !dx.controlflow.hints !78

; <label>:5531                                    ; preds = %5775, %5526
  %5532 = phi float [ %5453, %5526 ], [ %5815, %5775 ]
  %5533 = phi float [ %5454, %5526 ], [ %5816, %5775 ]
  %5534 = phi float [ %5455, %5526 ], [ %5817, %5775 ]
  %5535 = phi float [ %5456, %5526 ], [ %5809, %5775 ]
  %5536 = phi float [ %5457, %5526 ], [ %5810, %5775 ]
  %5537 = phi float [ %5458, %5526 ], [ %5811, %5775 ]
  %5538 = icmp eq i32 %5452, %5462
  br i1 %5538, label %5818, label %5451

; <label>:5539                                    ; preds = %5526
  %5540 = fmul fast float %5527, %5485
  %5541 = fmul fast float %5527, %5486
  %5542 = fmul fast float %5527, %5487
  %5543 = fsub fast float %5479, %4139
  %5544 = fcmp fast ogt float %5543, 0.000000e+00
  %5545 = fsub fast float %167, %4139
  %5546 = fcmp fast ogt float %5545, 0.000000e+00
  %5547 = xor i1 %5546, %5544
  %5548 = fsub fast float %4139, %5479
  %5549 = fmul fast float %5548, 2.000000e+00
  %5550 = fadd fast float %5549, %5479
  %5551 = select i1 %5547, float %5479, float %5550
  %5552 = fsub fast float %5551, %167
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5489, float %5552, float %5488, float %5489, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = call float @dx.op.unary.f32(i32 25, float %5553)  ; Rsqrt(value)
  %5555 = fmul fast float %5554, %5488
  %5556 = fmul fast float %5554, %5489
  %5557 = fmul fast float %5554, %5552
  %5558 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5559 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5555, float %5556, float %5557)  ; Dot3(ax,ay,az,bx,by,bz)
  %5560 = fdiv fast float 1.000000e+00, %5559
  %5561 = fmul fast float %5560, %5558
  %5562 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5545, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = fcmp fast ogt float %5562, 0.000000e+00
  %5564 = fcmp fast olt float %5562, 0.000000e+00
  %5565 = zext i1 %5563 to i32
  %5566 = zext i1 %5564 to i32
  %5567 = sub nsw i32 %5565, %5566
  %5568 = sitofp i32 %5567 to float
  %5569 = fsub fast float %5551, %4139
  %5570 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5489, float %5569, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = fcmp fast ogt float %5570, 0.000000e+00
  %5572 = fcmp fast olt float %5570, 0.000000e+00
  %5573 = zext i1 %5571 to i32
  %5574 = zext i1 %5572 to i32
  %5575 = sub nsw i32 %5573, %5574
  %5576 = sitofp i32 %5575 to float
  %5577 = fcmp fast une float %5568, %5576
  br i1 %5577, label %5578, label %5588

; <label>:5578                                    ; preds = %5539
  %5579 = fmul fast float %5561, %5557
  %5580 = fmul fast float %5561, %5556
  %5581 = fmul fast float %5561, %5555
  %5582 = fmul fast float %5581, %5581
  %5583 = fmul fast float %5580, %5580
  %5584 = fadd fast float %5582, %5583
  %5585 = fmul fast float %5579, %5579
  %5586 = fadd fast float %5584, %5585
  %5587 = call float @dx.op.unary.f32(i32 24, float %5586)  ; Sqrt(value)
  br label %5600

; <label>:5588                                    ; preds = %5539
  %5589 = icmp slt i32 %5567, 0
  br i1 %5589, label %5590, label %5600

; <label>:5590                                    ; preds = %5588
  %5591 = fsub fast float %165, %5477
  %5592 = fsub fast float %166, %5478
  %5593 = fsub fast float %167, %5551
  %5594 = fmul fast float %5591, %5591
  %5595 = fmul fast float %5592, %5592
  %5596 = fadd fast float %5594, %5595
  %5597 = fmul fast float %5593, %5593
  %5598 = fadd fast float %5596, %5597
  %5599 = call float @dx.op.unary.f32(i32 24, float %5598)  ; Sqrt(value)
  br label %5600

; <label>:5600                                    ; preds = %5590, %5588, %5578
  %5601 = phi float [ %5587, %5578 ], [ %5599, %5590 ], [ 0.000000e+00, %5588 ]
  %5602 = and i1 %5546, %5544
  %5603 = fsub fast float -0.000000e+00, %5601
  %5604 = select i1 %5602, float -0.000000e+00, float %5603
  %5605 = fmul fast float %4140, 0x3FF7154760000000
  %5606 = fmul fast float %5605, %5604
  %5607 = fmul fast float %4141, 0x3FF7154760000000
  %5608 = fmul fast float %5607, %5604
  %5609 = fmul fast float %4142, 0x3FF7154760000000
  %5610 = fmul fast float %5609, %5604
  %5611 = call float @dx.op.unary.f32(i32 21, float %5606)  ; Exp(value)
  %5612 = call float @dx.op.unary.f32(i32 21, float %5608)  ; Exp(value)
  %5613 = call float @dx.op.unary.f32(i32 21, float %5610)  ; Exp(value)
  %5614 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5615 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5616 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5617 = fmul fast float %5540, %5614
  %5618 = fmul fast float %5541, %5615
  %5619 = fmul fast float %5542, %5616
  %5620 = fsub fast float %5494, %4931
  %5621 = fsub fast float %5495, %4930
  %5622 = fsub fast float %5496, %4929
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5620, float %5621, float %5622, float %5620, float %5621, float %5622)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = call float @dx.op.unary.f32(i32 25, float %5623)  ; Rsqrt(value)
  %5625 = fmul fast float %5624, %5620
  %5626 = fmul fast float %5624, %5621
  %5627 = fmul fast float %5624, %5622
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5496, float %4938, float %4939, float %4940)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.dot3.f32(i32 55, float %4928, float %4927, float %4926, float %5625, float %5626, float %5627)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5628)  ; Saturate(value)
  %5631 = fmul fast float %5630, %5501
  %5632 = fmul fast float %5630, %5630
  %5633 = fmul fast float %5632, %5154
  %5634 = call float @dx.op.unary.f32(i32 7, float %5633)  ; Saturate(value)
  %5635 = fmul fast float %5631, %5634
  %5636 = bitcast float %5491 to i32
  %5637 = ashr i32 %5636, 1
  %5638 = sub nsw i32 1597463007, %5637
  %5639 = bitcast i32 %5638 to float
  %5640 = fmul fast float %5639, %5488
  %5641 = fmul fast float %5639, %5489
  %5642 = fmul fast float %5639, %5490
  %5643 = fsub fast float %5640, %4931
  %5644 = fsub fast float %5641, %4930
  %5645 = fsub fast float %5642, %4929
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5644, float %5645, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.unary.f32(i32 25, float %5646)  ; Rsqrt(value)
  %5648 = fmul fast float %5643, %5647
  %5649 = fmul fast float %5644, %5647
  %5650 = fmul fast float %5645, %5647
  %5651 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %5648, float %5649, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = fmul fast float %5651, %5651
  %5653 = call float @dx.op.unary.f32(i32 6, float %5628)  ; FAbs(value)
  %5654 = fsub fast float 1.000000e+00, %4941
  %5655 = call float @dx.op.binary.f32(i32 35, float %5654, float 0x3F847AE140000000)  ; FMax(a,b)
  %5656 = fmul fast float %5655, %5655
  %5657 = fmul fast float %5656, %5656
  %5658 = fsub fast float 1.000000e+00, %5657
  %5659 = fmul fast float %4945, %4945
  %5660 = fmul fast float %5659, %5658
  %5661 = fadd fast float %5660, %5657
  %5662 = bitcast float %5661 to i32
  %5663 = ashr i32 %5662, 1
  %5664 = add nsw i32 %5663, 532487669
  %5665 = bitcast i32 %5664 to float
  %5666 = fadd fast float %5665, %4945
  %5667 = fmul fast float %5657, %5652
  %5668 = fsub fast float 1.000000e+00, %5652
  %5669 = fadd fast float %5668, %5667
  %5670 = fmul fast float %5653, %5653
  %5671 = fmul fast float %5670, %5658
  %5672 = fadd fast float %5671, %5657
  %5673 = bitcast float %5672 to i32
  %5674 = ashr i32 %5673, 1
  %5675 = add nsw i32 %5674, 532487669
  %5676 = bitcast i32 %5675 to float
  %5677 = fadd fast float %5676, %5653
  %5678 = fmul fast float %5669, %5669
  %5679 = fmul fast float %5678, %5666
  %5680 = fmul fast float %5679, %5677
  %5681 = fdiv fast float 1.000000e+00, %5680
  %5682 = bitcast float %5657 to i32
  %5683 = sitofp i32 %5682 to float
  %5684 = fmul fast float %5683, 0x3FE7F73180000000
  %5685 = fadd fast float %5684, 0x41AFE27C40000000
  %5686 = fptosi float %5685 to i32
  %5687 = bitcast i32 %5686 to float
  %5688 = fmul fast float %5474, 0x3FD80E9D60000000
  %5689 = fmul fast float %5688, %5639
  %5690 = fadd fast float %5687, %5689
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = fmul fast float %5657, %5681
  %5695 = fmul fast float %5694, %5687
  %5696 = fmul fast float %5695, %5693
  %5697 = call float @dx.op.unary.f32(i32 6, float %5629)  ; FAbs(value)
  %5698 = fsub fast float 1.000000e+00, %5697
  %5699 = bitcast float %5698 to i32
  %5700 = sitofp i32 %5699 to float
  %5701 = fmul fast float %5700, 5.000000e+00
  %5702 = fadd fast float %5701, 0xC1EFBF8940000000
  %5703 = fptosi float %5702 to i32
  %5704 = bitcast i32 %5703 to float
  %5705 = fsub fast float 1.000000e+00, %4932
  %5706 = fsub fast float 1.000000e+00, %4933
  %5707 = fsub fast float 1.000000e+00, %4943
  %5708 = fmul fast float %5704, %5705
  %5709 = fmul fast float %5704, %5706
  %5710 = fmul fast float %5704, %5707
  %5711 = fadd fast float %5708, %4932
  %5712 = fadd fast float %5709, %4933
  %5713 = fadd fast float %5710, %4943
  br i1 %5069, label %5714, label %5737

; <label>:5714                                    ; preds = %5600
  %5715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3738, float %5697, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5716 = extractvalue %dx.types.ResRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.ResRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.ResRet.f32 %5715, 2
  %5719 = fadd fast float %5716, -5.000000e-01
  %5720 = fadd fast float %5717, -5.000000e-01
  %5721 = fadd fast float %5718, -5.000000e-01
  %5722 = fmul fast float %4932, 4.000000e+00
  %5723 = fmul fast float %5722, %5705
  %5724 = fmul fast float %5723, %5719
  %5725 = fmul fast float %4933, 4.000000e+00
  %5726 = fmul fast float %5725, %5706
  %5727 = fmul fast float %5726, %5720
  %5728 = fmul fast float %4943, 4.000000e+00
  %5729 = fmul fast float %5728, %5707
  %5730 = fmul fast float %5729, %5721
  %5731 = fadd fast float %5724, %5711
  %5732 = fadd fast float %5727, %5712
  %5733 = fadd fast float %5730, %5713
  %5734 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  %5735 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5736 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  br label %5737

; <label>:5737                                    ; preds = %5714, %5600
  %5738 = phi float [ %5734, %5714 ], [ %5711, %5600 ]
  %5739 = phi float [ %5735, %5714 ], [ %5712, %5600 ]
  %5740 = phi float [ %5736, %5714 ], [ %5713, %5600 ]
  %5741 = fmul fast float %5628, 9.843750e-01
  %5742 = fadd fast float %5741, 7.812500e-03
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5742, float %5059, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 3
  %5746 = fmul fast float %5744, %4932
  %5747 = fmul fast float %5744, %4933
  %5748 = fmul fast float %5744, %4943
  %5749 = fadd fast float %5746, %5745
  %5750 = fadd fast float %5747, %5745
  %5751 = fadd fast float %5748, %5745
  br i1 %5069, label %5752, label %5775

; <label>:5752                                    ; preds = %5737
  %5753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3738, float %5628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5754 = extractvalue %dx.types.ResRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.ResRet.f32 %5753, 1
  %5756 = extractvalue %dx.types.ResRet.f32 %5753, 2
  %5757 = fadd fast float %5754, -5.000000e-01
  %5758 = fadd fast float %5755, -5.000000e-01
  %5759 = fadd fast float %5756, -5.000000e-01
  %5760 = fmul fast float %4932, 4.000000e+00
  %5761 = fmul fast float %5760, %5705
  %5762 = fmul fast float %5761, %5757
  %5763 = fmul fast float %4933, 4.000000e+00
  %5764 = fmul fast float %5763, %5706
  %5765 = fmul fast float %5764, %5758
  %5766 = fmul fast float %4943, 4.000000e+00
  %5767 = fmul fast float %5766, %5707
  %5768 = fmul fast float %5767, %5759
  %5769 = fadd fast float %5762, %5749
  %5770 = fadd fast float %5765, %5750
  %5771 = fadd fast float %5768, %5751
  %5772 = call float @dx.op.unary.f32(i32 7, float %5769)  ; Saturate(value)
  %5773 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  %5774 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  br label %5775

; <label>:5775                                    ; preds = %5752, %5737
  %5776 = phi float [ %5772, %5752 ], [ %5749, %5737 ]
  %5777 = phi float [ %5773, %5752 ], [ %5750, %5737 ]
  %5778 = phi float [ %5774, %5752 ], [ %5751, %5737 ]
  %5779 = call float @dx.op.binary.f32(i32 35, float %5777, float %5778)  ; FMax(a,b)
  %5780 = call float @dx.op.binary.f32(i32 35, float %5776, float %5779)  ; FMax(a,b)
  %5781 = fsub fast float 1.000000e+00, %5780
  %5782 = fmul fast float %5738, %5696
  %5783 = fmul fast float %5739, %5696
  %5784 = fmul fast float %5740, %5696
  %5785 = fsub fast float 1.000000e+00, %5629
  %5786 = bitcast float %5785 to i32
  %5787 = sitofp i32 %5786 to float
  %5788 = fmul fast float %5787, 5.000000e+00
  %5789 = fadd fast float %5788, 0xC1EFBF8940000000
  %5790 = fptosi float %5789 to i32
  %5791 = bitcast i32 %5790 to float
  %5792 = fmul fast float %5791, %3739
  %5793 = fmul fast float %5781, %5792
  %5794 = fmul fast float %5793, %5119
  %5795 = fmul fast float %5793, %5120
  %5796 = fmul fast float %5793, %5121
  %5797 = fadd fast float %5794, %5782
  %5798 = fadd fast float %5795, %5783
  %5799 = fadd fast float %5796, %5784
  %5800 = fmul fast float %5617, %3735
  %5801 = fmul fast float %5800, %5635
  %5802 = fmul fast float %5801, %5781
  %5803 = fmul fast float %5618, %3735
  %5804 = fmul fast float %5803, %5635
  %5805 = fmul fast float %5804, %5781
  %5806 = fmul fast float %5619, %3735
  %5807 = fmul fast float %5806, %5635
  %5808 = fmul fast float %5807, %5781
  %5809 = fadd fast float %5802, %5456
  %5810 = fadd fast float %5805, %5457
  %5811 = fadd fast float %5808, %5458
  %5812 = fmul fast float %5801, %5797
  %5813 = fmul fast float %5804, %5798
  %5814 = fmul fast float %5807, %5799
  %5815 = fadd fast float %5812, %5453
  %5816 = fadd fast float %5813, %5454
  %5817 = fadd fast float %5814, %5455
  br label %5531

; <label>:5818                                    ; preds = %5531
  br label %5819

; <label>:5819                                    ; preds = %5818, %5419
  %5820 = phi float [ %5421, %5419 ], [ %5532, %5818 ]
  %5821 = phi float [ %5422, %5419 ], [ %5533, %5818 ]
  %5822 = phi float [ %5423, %5419 ], [ %5534, %5818 ]
  %5823 = phi float [ %5424, %5419 ], [ %5535, %5818 ]
  %5824 = phi float [ %5425, %5419 ], [ %5536, %5818 ]
  %5825 = phi float [ %5426, %5419 ], [ %5537, %5818 ]
  %5826 = add i32 %5420, 1
  %5827 = icmp ugt i32 %5826, %5416
  br i1 %5827, label %5828, label %5419

; <label>:5828                                    ; preds = %5819
  br label %5829

; <label>:5829                                    ; preds = %5828, %5395, %5385
  %5830 = phi float [ %5386, %5385 ], [ %5386, %5395 ], [ %5820, %5828 ]
  %5831 = phi float [ %5387, %5385 ], [ %5387, %5395 ], [ %5821, %5828 ]
  %5832 = phi float [ %5388, %5385 ], [ %5388, %5395 ], [ %5822, %5828 ]
  %5833 = phi float [ %5389, %5385 ], [ %5389, %5395 ], [ %5823, %5828 ]
  %5834 = phi float [ %5390, %5385 ], [ %5390, %5395 ], [ %5824, %5828 ]
  %5835 = phi float [ %5391, %5385 ], [ %5391, %5395 ], [ %5825, %5828 ]
  %5836 = call float @dx.op.unary.f32(i32 24, float %4935)  ; Sqrt(value)
  %5837 = call float @dx.op.unary.f32(i32 24, float %4936)  ; Sqrt(value)
  %5838 = call float @dx.op.unary.f32(i32 24, float %4937)  ; Sqrt(value)
  %5839 = fmul fast float %5836, %5833
  %5840 = fmul fast float %5837, %5834
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 0
  br i1 %211, label %5843, label %5863

; <label>:5843                                    ; preds = %5829
  %5844 = fadd fast float %5835, %3741
  %5845 = fmul fast float %5844, %3742
  %5846 = fsub fast float 1.000000e+00, %3742
  %5847 = call float @dx.op.unary.f32(i32 7, float %5846)  ; Saturate(value)
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 3
  %5850 = fmul fast float %5849, %5847
  %5851 = fadd fast float %5850, %5845
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = fmul fast float %5853, %5125
  %5855 = fsub fast float %5851, %5854
  %5856 = fadd fast float %5840, %5839
  %5857 = fmul fast float %5842, %5856
  %5858 = extractvalue %dx.types.CBufRet.f32 %5848, 1
  %5859 = fsub fast float %5855, %5858
  %5860 = extractvalue %dx.types.CBufRet.f32 %5848, 2
  %5861 = fmul fast float %5859, %5860
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  br label %5879

; <label>:5863                                    ; preds = %5829
  %5864 = fmul fast float %5838, %5835
  %5865 = fmul fast float %5842, %5839
  %5866 = fmul fast float %5842, %5840
  %5867 = fmul fast float %5864, %5842
  %5868 = add i32 %33, 356
  %5869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5868, i32 undef)  ; BufferLoad(srv,index,wot)
  %5870 = extractvalue %dx.types.ResRet.i32 %5869, 0
  %5871 = and i32 %5870, 32
  %5872 = icmp eq i32 %5871, 0
  br i1 %5872, label %5879, label %5873

; <label>:5873                                    ; preds = %5863
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 0
  %5876 = fmul fast float %5875, 0x3FE99999A0000000
  %5877 = fadd fast float %5875, %5865
  %5878 = fadd fast float %5876, %5867
  br label %5879

; <label>:5879                                    ; preds = %5873, %5863, %5843
  %5880 = phi float [ %5857, %5843 ], [ %5877, %5873 ], [ %5865, %5863 ]
  %5881 = phi float [ %5862, %5843 ], [ %5866, %5873 ], [ %5866, %5863 ]
  %5882 = phi float [ 1.000000e+00, %5843 ], [ %5878, %5873 ], [ %5867, %5863 ]
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = fmul fast float %5884, %5831
  %5886 = fmul fast float %5884, %5832
  %5887 = fadd fast float %5831, %5830
  %5888 = select i1 %211, float %5887, float %5830
  %5889 = fmul float %5888, %5884
  %5890 = select i1 %211, float 0.000000e+00, float %5885
  %5891 = select i1 %211, float 0.000000e+00, float %5886
  %5892 = fmul fast float %5880, %5836
  %5893 = fmul fast float %5881, %5837
  %5894 = fmul fast float %5882, %5838
  %5895 = fadd fast float %5889, %5892
  %5896 = fadd fast float %5890, %5893
  %5897 = fadd fast float %5891, %5894
  %5898 = select i1 %211, float %5881, float %5896
  %5899 = select i1 %211, float %5882, float %5897
  %5900 = call float @dx.op.binary.f32(i32 36, float %5895, float 3.225500e+04)  ; FMin(a,b)
  %5901 = call float @dx.op.binary.f32(i32 36, float %5898, float 3.225500e+04)  ; FMin(a,b)
  %5902 = call float @dx.op.binary.f32(i32 36, float %5899, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5900)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5901)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5902)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

