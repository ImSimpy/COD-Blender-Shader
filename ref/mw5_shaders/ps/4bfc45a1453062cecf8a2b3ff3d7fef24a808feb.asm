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
; ENTITY_IDS               0    yz        12     NONE    uint    yz 
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
; shader hash: 105124ab1a8b294caa5ba3ed3a2abbd1
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture     u32     2darray      T8     t11,space2     1
;                                   texture     f32     2darray      T9     t10,space2     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture    byte         r/o     T11     t18,space1     1
;                                   texture    byte         r/o     T12     t19,space1     1
;                                   texture    byte         r/o     T13     t20,space1     1
;                                   texture    byte         r/o     T14     t21,space1     1
;                                   texture     f32          2d     T15     t37,space2     1
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t59,space2     1
;                                   texture     f32          2d     T18     t60,space2     1
;                                   texture    byte         r/o     T19     t45,space1     1
;                                   texture    byte         r/o     T20     t46,space1     1
;                                   texture    byte         r/o     T21     t47,space1     1
;                                   texture    byte         r/o     T22     t48,space1     1
;                                   texture     f32          2d     T23     t57,space2     1
;                                   texture    byte         r/o     T24     t69,space1     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27     t68,space1     1
;                                   texture     f32          2d     T28      t0,space2     1
;                                   texture    byte         r/o     T29     t11,space1     1
;                                   texture    byte         r/o     T30     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %77 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = fmul fast float %79, %73
  %81 = fmul fast float %79, %74
  %82 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = bitcast float %82 to i32
  %84 = ashr i32 %83, 1
  %85 = sub nsw i32 1597250115, %84
  %86 = bitcast i32 %85 to float
  %87 = fmul fast float %86, %65
  %88 = fmul fast float %86, %66
  %89 = fmul fast float %86, %67
  %90 = fmul fast float %66, %63
  %91 = fmul fast float %67, %62
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %67, %61
  %94 = fmul fast float %65, %63
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %65, %62
  %97 = fmul fast float %66, %61
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %92, %64
  %100 = fmul fast float %95, %64
  %101 = fmul fast float %98, %64
  %102 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %103 = bitcast float %102 to i32
  %104 = ashr i32 %103, 1
  %105 = sub nsw i32 1597250115, %104
  %106 = bitcast i32 %105 to float
  %107 = fmul fast float %106, %54
  %108 = fmul fast float %106, %55
  %109 = fmul fast float %106, %56
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = fcmp fast une float %111, 0.000000e+00
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %116 = fmul fast float %80, 2.000000e+00
  %117 = fmul fast float %116, %114
  %118 = fmul fast float %81, 2.000000e+00
  %119 = fmul fast float %118, %115
  %120 = fsub fast float 1.000000e+00, %117
  %121 = fsub fast float 1.000000e+00, %119
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = select i1 %112, float %123, float %127
  %131 = select i1 %112, float %124, float %128
  %132 = select i1 %112, float %125, float %129
  %133 = fmul fast float %130, %120
  %134 = fmul fast float %131, %120
  %135 = fmul fast float %132, %120
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = select i1 %112, float %137, float %141
  %145 = select i1 %112, float %138, float %142
  %146 = select i1 %112, float %139, float %143
  %147 = fmul fast float %144, %121
  %148 = fmul fast float %145, %121
  %149 = fmul fast float %146, %121
  %150 = fadd fast float %147, %133
  %151 = fadd fast float %148, %134
  %152 = fadd fast float %149, %135
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = select i1 %112, float %154, float %158
  %162 = select i1 %112, float %155, float %159
  %163 = select i1 %112, float %156, float %160
  %164 = fadd fast float %150, %161
  %165 = fadd fast float %151, %162
  %166 = fadd fast float %152, %163
  %167 = fmul fast float %164, %75
  %168 = fmul fast float %165, %75
  %169 = fmul fast float %166, %75
  %170 = shl i32 %35, 5
  %171 = add i32 %170, 4194304
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = extractvalue %dx.types.ResRet.i32 %172, 1
  %175 = extractvalue %dx.types.ResRet.i32 %172, 2
  %176 = extractvalue %dx.types.ResRet.i32 %172, 3
  %177 = add i32 %170, 4194320
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = extractvalue %dx.types.ResRet.i32 %178, 1
  %181 = bitcast i32 %179 to float
  %182 = bitcast i32 %180 to float
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %186 = fmul fast float %184, %80
  %187 = fmul fast float %185, %81
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %189, 114688
  %191 = icmp ne i32 %190, 0
  %192 = select i1 %191, float %186, float 0.000000e+00
  %193 = select i1 %191, float %187, float 0.000000e+00
  %194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %192, float %193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = fmul fast float %195, 2.550000e+02
  %197 = fptoui float %196 to i32
  %198 = select i1 %191, i32 %197, i32 0
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 3
  %201 = and i32 %200, 3
  %202 = icmp ne i32 %201, 0
  %203 = and i32 %200, 4
  %204 = icmp ne i32 %203, 0
  %205 = and i1 %202, %204
  br i1 %205, label %206, label %215

; <label>:206                                     ; preds = %0
  %207 = fmul fast float %115, %81
  %208 = fmul fast float %114, %80
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %30, float %208, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fsub fast float 1.000000e+00, %210
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = fcmp fast olt float %211, %213
  br label %218

; <label>:215                                     ; preds = %0
  %216 = icmp eq i32 %203, 0
  %217 = and i1 %202, %216
  br label %218

; <label>:218                                     ; preds = %215, %206
  %219 = phi i1 [ %214, %206 ], [ %217, %215 ]
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = fmul fast float %221, 0x3FE3C6EF40000000
  %223 = frem fast float %80, 2.560000e+02
  %224 = frem fast float %81, 2.560000e+02
  %225 = fptoui float %223 to i32
  %226 = fptoui float %224 to i32
  %227 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %225, i32 %226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fadd fast float %228, %222
  %230 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %231 = fcmp uge float %51, 0.000000e+00
  br i1 %231, label %232, label %235

; <label>:232                                     ; preds = %218
  %233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %51, float %52, float %53, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  br label %235

; <label>:235                                     ; preds = %232, %218
  %236 = phi float [ %234, %232 ], [ 0.000000e+00, %218 ]
  %237 = add i32 %34, 156
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = shl i32 %239, 4
  %241 = and i32 %240, 32752
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %239, 7
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %239, 22
  %247 = shl nuw nsw i32 %246, 5
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = add i32 %34, 216
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = lshr i32 %251, 8
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F70101020000000
  %259 = lshr i32 %251, 16
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = add i32 %34, 36
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = add i32 %34, 288
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 65535
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %272, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = fmul fast float %274, 0x3F50624DE0000000
  %278 = fmul fast float %276, 0x3F50624DE0000000
  %279 = mul i32 %36, 100
  %280 = add i32 %279, 28
  %281 = add i32 %279, 40
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = add i32 %34, 172
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %286, 4
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %286, 7
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %286, 22
  %294 = shl nuw nsw i32 %293, 5
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %34, 232
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %298, 8
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %298, 16
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = add i32 %34, 52
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %34, 304
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = shl i32 %325, 4
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %325, 7
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %325, 22
  %333 = shl nuw nsw i32 %332, 5
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = and i32 %283, 1
  %336 = icmp ne i32 %335, 0
  %337 = select i1 %336, float %328, float %289
  %338 = select i1 %336, float %331, float %292
  %339 = select i1 %336, float %334, float %295
  %340 = add i32 %279, 44
  %341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = fmul fast float %342, %337
  %344 = fmul fast float %342, %338
  %345 = fmul fast float %342, %339
  %346 = add i32 %279, 48
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %348, 4
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %348, 7
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 22
  %356 = shl nuw nsw i32 %355, 5
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = and i32 %283, 8
  %359 = icmp ne i32 %358, 0
  %360 = select i1 %359, float %351, float %301
  %361 = select i1 %359, float %354, float %305
  %362 = select i1 %359, float %357, float %309
  %363 = add i32 %279, 52
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 65535
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %365, 16
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = and i32 %283, 2
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %371, float %367, float %314
  %373 = select i1 %371, float %369, float %316
  %374 = add i32 %279, 56
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = and i32 %283, 4
  %382 = icmp ne i32 %381, 0
  %383 = select i1 %382, float %378, float %321
  %384 = fmul float %383, 0x3F50624DE0000000
  %385 = select i1 %382, float %380, float %323
  %386 = fmul float %385, 0x3F50624DE0000000
  %387 = add i32 %279, 60
  %388 = add i32 %279, 32
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = add i32 %34, 188
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = shl i32 %393, 4
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %393, 7
  %398 = and i32 %397, 32752
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %393, 22
  %401 = shl nuw nsw i32 %400, 5
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = add i32 %34, 248
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 255
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3F70101020000000
  %409 = lshr i32 %405, 8
  %410 = and i32 %409, 255
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = lshr i32 %405, 16
  %414 = and i32 %413, 255
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, 0x3F70101020000000
  %417 = add i32 %34, 68
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 65535
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %419, 16
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = add i32 %34, 320
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 65535
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %426, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = shl i32 %432, 4
  %434 = and i32 %433, 32752
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %432, 7
  %437 = and i32 %436, 32752
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %432, 22
  %440 = shl nuw nsw i32 %439, 5
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = and i32 %390, 1
  %443 = icmp ne i32 %442, 0
  %444 = select i1 %443, float %435, float %396
  %445 = select i1 %443, float %438, float %399
  %446 = select i1 %443, float %441, float %402
  %447 = add i32 %279, 64
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = fmul fast float %449, %444
  %451 = fmul fast float %449, %445
  %452 = fmul fast float %449, %446
  %453 = add i32 %279, 68
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = shl i32 %455, 4
  %457 = and i32 %456, 32752
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = lshr i32 %455, 7
  %460 = and i32 %459, 32752
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %455, 22
  %463 = shl nuw nsw i32 %462, 5
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = and i32 %390, 8
  %466 = icmp ne i32 %465, 0
  %467 = select i1 %466, float %458, float %408
  %468 = select i1 %466, float %461, float %412
  %469 = select i1 %466, float %464, float %416
  %470 = add i32 %279, 72
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = and i32 %390, 2
  %478 = icmp ne i32 %477, 0
  %479 = select i1 %478, float %474, float %421
  %480 = select i1 %478, float %476, float %423
  %481 = add i32 %279, 76
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 65535
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %483, 16
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = and i32 %390, 4
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %489, float %485, float %428
  %491 = fmul float %490, 0x3F50624DE0000000
  %492 = select i1 %489, float %487, float %430
  %493 = fmul float %492, 0x3F50624DE0000000
  %494 = add i32 %279, 80
  %495 = add i32 %279, 36
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %34, 204
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = shl i32 %500, 4
  %502 = and i32 %501, 32752
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %500, 7
  %505 = and i32 %504, 32752
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = lshr i32 %500, 22
  %508 = shl nuw nsw i32 %507, 5
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = add i32 %34, 264
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, 255
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %514, 0x3F70101020000000
  %516 = lshr i32 %512, 8
  %517 = and i32 %516, 255
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %518, 0x3F70101020000000
  %520 = lshr i32 %512, 16
  %521 = and i32 %520, 255
  %522 = uitofp i32 %521 to float
  %523 = fmul fast float %522, 0x3F70101020000000
  %524 = add i32 %34, 84
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 65535
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %526, 16
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = add i32 %34, 336
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 65535
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %533, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = shl i32 %539, 4
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = lshr i32 %539, 7
  %544 = and i32 %543, 32752
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %539, 22
  %547 = shl nuw nsw i32 %546, 5
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = and i32 %497, 1
  %550 = icmp ne i32 %549, 0
  %551 = select i1 %550, float %542, float %503
  %552 = select i1 %550, float %545, float %506
  %553 = select i1 %550, float %548, float %509
  %554 = add i32 %279, 84
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = fmul fast float %556, %551
  %558 = fmul fast float %556, %552
  %559 = fmul fast float %556, %553
  %560 = add i32 %279, 88
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = shl i32 %562, 4
  %564 = and i32 %563, 32752
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = lshr i32 %562, 7
  %567 = and i32 %566, 32752
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = lshr i32 %562, 22
  %570 = shl nuw nsw i32 %569, 5
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = and i32 %497, 8
  %573 = icmp ne i32 %572, 0
  %574 = select i1 %573, float %565, float %515
  %575 = select i1 %573, float %568, float %519
  %576 = select i1 %573, float %571, float %523
  %577 = add i32 %279, 92
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = and i32 %497, 2
  %585 = icmp ne i32 %584, 0
  %586 = select i1 %585, float %581, float %528
  %587 = select i1 %585, float %583, float %530
  %588 = add i32 %279, 96
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 65535
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %590, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = and i32 %497, 4
  %596 = icmp ne i32 %595, 0
  %597 = select i1 %596, float %592, float %535
  %598 = fmul float %597, 0x3F50624DE0000000
  %599 = select i1 %596, float %594, float %537
  %600 = fmul float %599, 0x3F50624DE0000000
  %601 = add i32 %34, 348
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 32
  %605 = icmp eq i32 %604, 0
  %606 = and i32 %603, 64
  %607 = icmp eq i32 %606, 0
  %608 = and i32 %603, 128
  %609 = icmp eq i32 %608, 0
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 2
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %627, label %614

; <label>:614                                     ; preds = %235
  %615 = add i32 %34, 492
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %619, %dx.types.Handle %77, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = fmul fast float %621, %70
  %625 = fmul fast float %622, %71
  %626 = fmul fast float %623, %72
  br label %627

; <label>:627                                     ; preds = %614, %235
  %628 = phi float [ %72, %235 ], [ %626, %614 ]
  %629 = phi float [ %71, %235 ], [ %625, %614 ]
  %630 = phi float [ %70, %235 ], [ %624, %614 ]
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 2
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %654, label %635

; <label>:635                                     ; preds = %627
  %636 = add i32 %34, 44
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 1
  %640 = icmp ne i32 %639, 0
  %641 = select i1 %640, float %630, float 1.000000e+00
  %642 = add i32 %34, 60
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 1
  %646 = icmp ne i32 %645, 0
  %647 = select i1 %646, float %629, float 1.000000e+00
  %648 = add i32 %34, 76
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 1
  %652 = icmp ne i32 %651, 0
  %653 = select i1 %652, float %628, float 1.000000e+00
  br label %654

; <label>:654                                     ; preds = %635, %627
  %655 = phi float [ %628, %627 ], [ %653, %635 ]
  %656 = phi float [ %629, %627 ], [ %647, %635 ]
  %657 = phi float [ %630, %627 ], [ %641, %635 ]
  %658 = add i32 %34, 496
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %662, %dx.types.Handle %77, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 2
  %667 = add i32 %34, 40
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = icmp slt i32 %669, 0
  br i1 %670, label %675, label %671

; <label>:671                                     ; preds = %654
  %672 = add i32 %279, 16
  %673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  br label %675

; <label>:675                                     ; preds = %671, %654
  %676 = phi float [ %674, %671 ], [ %236, %654 ]
  %677 = and i32 %669, 536870912
  %678 = icmp ne i32 %677, 0
  %679 = add i32 %34, 116
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = shl i32 %681, 4
  %683 = and i32 %682, 32752
  %684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %683)  ; LegacyF16ToF32(value)
  %685 = lshr i32 %681, 7
  %686 = and i32 %685, 32752
  %687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %686)  ; LegacyF16ToF32(value)
  %688 = fmul fast float %684, 5.000000e-01
  %689 = select i1 %678, float 4.000000e+00, float 1.000000e+00
  %690 = select i1 %678, float 1.000000e+00, float 0.000000e+00
  %691 = fadd fast float %676, -5.000000e-01
  %692 = call float @dx.op.unary.f32(i32 6, float %691)  ; FAbs(value)
  %693 = fsub fast float 5.000000e-01, %692
  %694 = call float @dx.op.binary.f32(i32 36, float %688, float %693)  ; FMin(a,b)
  %695 = fadd fast float %664, -1.000000e+00
  %696 = fadd fast float %695, %676
  %697 = fadd fast float %696, %694
  %698 = fmul fast float %694, 2.000000e+00
  %699 = fdiv fast float %697, %698
  %700 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  %701 = fmul fast float %700, %689
  %702 = fmul fast float %700, %690
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fmul fast float %701, %703
  %705 = bitcast float %704 to i32
  %706 = sitofp i32 %705 to float
  %707 = fadd fast float %706, 0xC1CFBF8940000000
  %708 = fmul fast float %707, %687
  %709 = fadd fast float %708, 0x41CFBF8940000000
  %710 = fptosi float %709 to i32
  %711 = bitcast i32 %710 to float
  %712 = add i32 %34, 56
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = icmp slt i32 %714, 0
  br i1 %715, label %720, label %716

; <label>:716                                     ; preds = %675
  %717 = add i32 %279, 20
  %718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  br label %720

; <label>:720                                     ; preds = %716, %675
  %721 = phi float [ %719, %716 ], [ %236, %675 ]
  %722 = and i32 %714, 536870912
  %723 = icmp ne i32 %722, 0
  %724 = add i32 %34, 132
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = shl i32 %726, 4
  %728 = and i32 %727, 32752
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = lshr i32 %726, 7
  %731 = and i32 %730, 32752
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = fmul fast float %729, 5.000000e-01
  %734 = select i1 %723, float 4.000000e+00, float 1.000000e+00
  %735 = select i1 %723, float 1.000000e+00, float 0.000000e+00
  %736 = fadd fast float %721, -5.000000e-01
  %737 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %738 = fsub fast float 5.000000e-01, %737
  %739 = call float @dx.op.binary.f32(i32 36, float %733, float %738)  ; FMin(a,b)
  %740 = fadd fast float %665, -1.000000e+00
  %741 = fadd fast float %740, %721
  %742 = fadd fast float %741, %739
  %743 = fmul fast float %739, 2.000000e+00
  %744 = fdiv fast float %742, %743
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %746 = fmul fast float %745, %734
  %747 = fmul fast float %745, %735
  %748 = fsub fast float 1.000000e+00, %747
  %749 = fmul fast float %746, %748
  %750 = bitcast float %749 to i32
  %751 = sitofp i32 %750 to float
  %752 = fadd fast float %751, 0xC1CFBF8940000000
  %753 = fmul fast float %752, %732
  %754 = fadd fast float %753, 0x41CFBF8940000000
  %755 = fptosi float %754 to i32
  %756 = bitcast i32 %755 to float
  %757 = add i32 %34, 72
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = icmp slt i32 %759, 0
  br i1 %760, label %765, label %761

; <label>:761                                     ; preds = %720
  %762 = add i32 %279, 24
  %763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  br label %765

; <label>:765                                     ; preds = %761, %720
  %766 = phi float [ %764, %761 ], [ %236, %720 ]
  %767 = and i32 %759, 536870912
  %768 = icmp ne i32 %767, 0
  %769 = add i32 %34, 148
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = shl i32 %771, 4
  %773 = and i32 %772, 32752
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = lshr i32 %771, 7
  %776 = and i32 %775, 32752
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = fmul fast float %774, 5.000000e-01
  %779 = select i1 %768, float 4.000000e+00, float 1.000000e+00
  %780 = select i1 %768, float 1.000000e+00, float 0.000000e+00
  %781 = fadd fast float %766, -5.000000e-01
  %782 = call float @dx.op.unary.f32(i32 6, float %781)  ; FAbs(value)
  %783 = fsub fast float 5.000000e-01, %782
  %784 = call float @dx.op.binary.f32(i32 36, float %778, float %783)  ; FMin(a,b)
  %785 = fadd fast float %666, -1.000000e+00
  %786 = fadd fast float %785, %766
  %787 = fadd fast float %786, %784
  %788 = fmul fast float %784, 2.000000e+00
  %789 = fdiv fast float %787, %788
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %791 = fmul fast float %790, %779
  %792 = fmul fast float %790, %780
  %793 = fsub fast float 1.000000e+00, %792
  %794 = fmul fast float %791, %793
  %795 = bitcast float %794 to i32
  %796 = sitofp i32 %795 to float
  %797 = fadd fast float %796, 0xC1CFBF8940000000
  %798 = fmul fast float %797, %777
  %799 = fadd fast float %798, 0x41CFBF8940000000
  %800 = fptosi float %799 to i32
  %801 = bitcast i32 %800 to float
  %802 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %711, float %756, float %801, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %803 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %804 = and i32 %669, 268435456
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %811, label %806

; <label>:806                                     ; preds = %765
  %807 = and i32 %669, 1073741824
  %808 = icmp ne i32 %807, 0
  %809 = select i1 %808, float %803, float %711
  %810 = fmul fast float %809, %657
  br label %811

; <label>:811                                     ; preds = %806, %765
  %812 = phi float [ %657, %765 ], [ %810, %806 ]
  %813 = and i32 %714, 268435456
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %820, label %815

; <label>:815                                     ; preds = %811
  %816 = and i32 %714, 1073741824
  %817 = icmp ne i32 %816, 0
  %818 = select i1 %817, float %803, float %756
  %819 = fmul fast float %818, %656
  br label %820

; <label>:820                                     ; preds = %815, %811
  %821 = phi float [ %656, %811 ], [ %819, %815 ]
  %822 = and i32 %759, 268435456
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %829, label %824

; <label>:824                                     ; preds = %820
  %825 = and i32 %759, 1073741824
  %826 = icmp ne i32 %825, 0
  %827 = select i1 %826, float %803, float %801
  %828 = fmul fast float %827, %655
  br label %829

; <label>:829                                     ; preds = %824, %820
  %830 = phi float [ %655, %820 ], [ %828, %824 ]
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = lshr i32 %832, 20
  %834 = and i32 %833, 3
  %835 = add nuw nsw i32 %834, 1
  %836 = add i32 %34, 24
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = add i32 %34, 28
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = or i32 %841, %838
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %1348, label %844

; <label>:844                                     ; preds = %829
  %845 = and i32 %838, 262144
  %846 = icmp ne i32 %845, 0
  %847 = select i1 %846, float %41, float 1.000000e+00
  %848 = select i1 %846, float %42, float 0.000000e+00
  %849 = select i1 %846, float %43, float 0.000000e+00
  %850 = select i1 %846, float %44, float 1.000000e+00
  %851 = select i1 %846, float %45, float %68
  %852 = select i1 %846, float %46, float %69
  %853 = add i32 %34, 284
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = lshr i32 %855, 16
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = fmul fast float %857, 0x3F50624DE0000000
  %859 = add i32 %34, 88
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = lshr i32 %861, 16
  %863 = and i32 %862, 255
  %864 = lshr i32 %861, 24
  %865 = add i32 %34, 292
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = and i32 %867, 65535
  %869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %868)  ; LegacyF16ToF32(value)
  %870 = lshr i32 %867, 16
  %871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %870)  ; LegacyF16ToF32(value)
  %872 = add i32 %34, 32
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = lshr i32 %874, 22
  %876 = shl nuw nsw i32 %875, 5
  %877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %876)  ; LegacyF16ToF32(value)
  %878 = shl i32 %874, 4
  %879 = and i32 %878, 32752
  %880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %879)  ; LegacyF16ToF32(value)
  %881 = lshr i32 %874, 7
  %882 = and i32 %881, 32752
  %883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %882)  ; LegacyF16ToF32(value)
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %886 = fmul fast float %885, 1.000000e+03
  %887 = fmul fast float %277, %886
  %888 = call float @dx.op.unary.f32(i32 22, float %887)  ; Frc(value)
  %889 = fadd fast float %888, %267
  %890 = fmul fast float %278, %886
  %891 = call float @dx.op.unary.f32(i32 22, float %890)  ; Frc(value)
  %892 = fadd fast float %891, %269
  %893 = fmul fast float %858, %886
  %894 = call float @dx.op.unary.f32(i32 22, float %893)  ; Frc(value)
  %895 = fmul fast float %894, 0x401921FB60000000
  %896 = fadd fast float %895, %877
  %897 = call float @dx.op.unary.f32(i32 13, float %896)  ; Sin(value)
  %898 = call float @dx.op.unary.f32(i32 12, float %896)  ; Cos(value)
  %899 = fsub fast float -0.000000e+00, %897
  %900 = fadd fast float %851, -5.000000e-01
  %901 = fadd fast float %852, -5.000000e-01
  %902 = fmul fast float %869, %900
  %903 = fmul fast float %871, %901
  %904 = fadd fast float %902, 5.000000e-01
  %905 = fadd fast float %903, 5.000000e-01
  %906 = fmul fast float %880, %904
  %907 = fmul fast float %883, %905
  %908 = fmul fast float %898, %906
  %909 = call float @dx.op.tertiary.f32(i32 46, float %899, float %907, float %908)  ; FMad(a,b,c)
  %910 = fmul fast float %897, %906
  %911 = call float @dx.op.tertiary.f32(i32 46, float %898, float %907, float %910)  ; FMad(a,b,c)
  %912 = fadd fast float %889, %909
  %913 = fadd fast float %892, %911
  %914 = icmp ugt i32 %863, 1
  %915 = icmp ugt i32 %861, 33554431
  %916 = or i1 %915, %914
  br i1 %916, label %917, label %942

; <label>:917                                     ; preds = %844
  %918 = add i32 %34, 228
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = lshr i32 %920, 16
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = fmul fast float %885, %922
  %924 = call float @dx.op.unary.f32(i32 22, float %923)  ; Frc(value)
  %925 = mul nuw nsw i32 %863, %864
  %926 = uitofp i32 %925 to float
  %927 = fmul fast float %924, %926
  %928 = call float @dx.op.unary.f32(i32 27, float %927)  ; Round_ni(value)
  %929 = fptoui float %928 to i32
  %930 = urem i32 %929, %863
  %931 = udiv i32 %929, %864
  %932 = call float @dx.op.unary.f32(i32 22, float %912)  ; Frc(value)
  %933 = call float @dx.op.unary.f32(i32 22, float %913)  ; Frc(value)
  %934 = uitofp i32 %930 to float
  %935 = uitofp i32 %931 to float
  %936 = fadd fast float %932, %934
  %937 = fadd fast float %933, %935
  %938 = uitofp i32 %863 to float
  %939 = uitofp i32 %864 to float
  %940 = fdiv fast float %936, %938
  %941 = fdiv fast float %937, %939
  br label %942

; <label>:942                                     ; preds = %917, %844
  %943 = phi float [ %940, %917 ], [ %912, %844 ]
  %944 = phi float [ %941, %917 ], [ %913, %844 ]
  %945 = and i32 %838, 16
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1143, label %947

; <label>:947                                     ; preds = %942
  %948 = add i32 %34, 376
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = add i32 %950, 0
  %952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %952, %dx.types.Handle %76, float %943, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = extractvalue %dx.types.ResRet.f32 %953, 1
  %956 = extractvalue %dx.types.ResRet.f32 %953, 2
  %957 = extractvalue %dx.types.ResRet.f32 %953, 3
  %958 = and i32 %861, 255
  %959 = uitofp i32 %958 to float
  %960 = lshr i32 %861, 8
  %961 = and i32 %960, 255
  %962 = uitofp i32 %961 to float
  %963 = fmul fast float %957, %959
  %964 = fadd fast float %963, %962
  %965 = fmul fast float %964, 0x3F70101000000000
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 512
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %978, label %970

; <label>:970                                     ; preds = %947
  %971 = add i32 %34, 460
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = add i32 %973, 0
  %975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %975, %dx.types.Handle %77, float %943, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  br label %978

; <label>:978                                     ; preds = %970, %947
  %979 = phi float [ %977, %970 ], [ 1.000000e+00, %947 ]
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 33554432
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %1090, label %984

; <label>:984                                     ; preds = %978
  %985 = add i32 %34, 224
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = and i32 %987, 65535
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = lshr i32 %987, 16
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = add i32 %34, 228
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 65535
  %996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %995)  ; LegacyF16ToF32(value)
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = lshr i32 %998, 24
  %1000 = uitofp i32 %999 to float
  %1001 = fmul fast float %1000, 0x3F70101020000000
  %1002 = and i32 %998, 255
  %1003 = uitofp i32 %1002 to float
  %1004 = fmul fast float %1003, 0x3F70101020000000
  %1005 = lshr i32 %998, 8
  %1006 = and i32 %1005, 255
  %1007 = uitofp i32 %1006 to float
  %1008 = fmul fast float %1007, 0x3F70101020000000
  %1009 = lshr i32 %998, 16
  %1010 = and i32 %1009, 255
  %1011 = uitofp i32 %1010 to float
  %1012 = fmul fast float %1011, 0x3F70101020000000
  %1013 = add i32 %34, 220
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = lshr i32 %1015, 24
  %1017 = uitofp i32 %1016 to float
  %1018 = fmul fast float %1017, 0x3F70101020000000
  %1019 = and i32 %1015, 255
  %1020 = uitofp i32 %1019 to float
  %1021 = fmul fast float %1020, 0x3F70101020000000
  %1022 = lshr i32 %1015, 8
  %1023 = and i32 %1022, 255
  %1024 = uitofp i32 %1023 to float
  %1025 = fmul fast float %1024, 0x3F70101020000000
  %1026 = lshr i32 %1015, 16
  %1027 = and i32 %1026, 255
  %1028 = uitofp i32 %1027 to float
  %1029 = fmul fast float %1028, 0x3F70101020000000
  %1030 = bitcast float %954 to i32
  %1031 = ashr i32 %1030, 1
  %1032 = sub nsw i32 1597463174, %1031
  %1033 = bitcast i32 %1032 to float
  %1034 = fmul fast float %954, 5.000000e-01
  %1035 = fmul fast float %1033, %1033
  %1036 = fmul fast float %1035, %1034
  %1037 = fsub fast float 1.500000e+00, %1036
  %1038 = fmul fast float %1033, %954
  %1039 = fmul fast float %1038, %1037
  %1040 = bitcast float %955 to i32
  %1041 = ashr i32 %1040, 1
  %1042 = sub nsw i32 1597463174, %1041
  %1043 = bitcast i32 %1042 to float
  %1044 = fmul fast float %955, 5.000000e-01
  %1045 = fmul fast float %1043, %1043
  %1046 = fmul fast float %1045, %1044
  %1047 = fsub fast float 1.500000e+00, %1046
  %1048 = fmul fast float %1043, %955
  %1049 = fmul fast float %1048, %1047
  %1050 = bitcast float %956 to i32
  %1051 = ashr i32 %1050, 1
  %1052 = sub nsw i32 1597463174, %1051
  %1053 = bitcast i32 %1052 to float
  %1054 = fmul fast float %956, 5.000000e-01
  %1055 = fmul fast float %1053, %1053
  %1056 = fmul fast float %1055, %1054
  %1057 = fsub fast float 1.500000e+00, %1056
  %1058 = fmul fast float %1053, %956
  %1059 = fmul fast float %1058, %1057
  %1060 = fsub fast float %1039, %1021
  %1061 = fsub fast float %1049, %1025
  %1062 = fsub fast float %1059, %1029
  %1063 = fmul fast float %1060, %989
  %1064 = fmul fast float %1061, %991
  %1065 = fmul fast float %1062, %996
  %1066 = fadd fast float %1063, %1004
  %1067 = fadd fast float %1064, %1008
  %1068 = fadd fast float %1065, %1012
  %1069 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1070 = call float @dx.op.unary.f32(i32 7, float %1067)  ; Saturate(value)
  %1071 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  %1072 = fmul fast float %1069, %1069
  %1073 = fmul fast float %1070, %1070
  %1074 = fmul fast float %1071, %1071
  %1075 = fsub fast float %1072, %954
  %1076 = fsub fast float %1073, %955
  %1077 = fsub fast float %1074, %956
  %1078 = fmul fast float %1075, %979
  %1079 = fmul fast float %1076, %979
  %1080 = fmul fast float %1077, %979
  %1081 = fadd fast float %1078, %954
  %1082 = fadd fast float %1079, %955
  %1083 = fadd fast float %1080, %956
  %1084 = fadd fast float %1001, %965
  %1085 = fsub fast float %1084, %1018
  %1086 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1087 = fsub fast float %1086, %965
  %1088 = fmul fast float %1087, %979
  %1089 = fadd fast float %1088, %965
  br label %1143

; <label>:1090                                    ; preds = %978
  %1091 = and i32 %981, 134217728
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1127, label %1093

; <label>:1093                                    ; preds = %1090
  %1094 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %1095 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %1096 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %1097 = fadd fast float %1094, -5.000000e-01
  %1098 = fadd fast float %1095, -5.000000e-01
  %1099 = fadd fast float %1096, -5.000000e-01
  %1100 = fmul fast float %1097, %979
  %1101 = fmul fast float %1098, %979
  %1102 = fmul fast float %1099, %979
  %1103 = fadd fast float %1100, 5.000000e-01
  %1104 = fadd fast float %1101, 5.000000e-01
  %1105 = fadd fast float %1102, 5.000000e-01
  %1106 = call float @dx.op.unary.f32(i32 24, float %954)  ; Sqrt(value)
  %1107 = call float @dx.op.unary.f32(i32 24, float %955)  ; Sqrt(value)
  %1108 = call float @dx.op.unary.f32(i32 24, float %956)  ; Sqrt(value)
  %1109 = fmul fast float %1103, 2.000000e+00
  %1110 = fsub fast float 1.000000e+00, %1109
  %1111 = fmul fast float %1110, %1106
  %1112 = fadd fast float %1111, %1109
  %1113 = fmul fast float %1112, %1106
  %1114 = fmul fast float %1104, 2.000000e+00
  %1115 = fsub fast float 1.000000e+00, %1114
  %1116 = fmul fast float %1115, %1107
  %1117 = fadd fast float %1116, %1114
  %1118 = fmul fast float %1117, %1107
  %1119 = fmul fast float %1105, 2.000000e+00
  %1120 = fsub fast float 1.000000e+00, %1119
  %1121 = fmul fast float %1120, %1108
  %1122 = fadd fast float %1121, %1119
  %1123 = fmul fast float %1122, %1108
  %1124 = fmul fast float %1113, %1113
  %1125 = fmul fast float %1118, %1118
  %1126 = fmul fast float %1123, %1123
  br label %1143

; <label>:1127                                    ; preds = %1090
  %1128 = fmul fast float %254, %254
  %1129 = fmul fast float %258, %258
  %1130 = fmul fast float %262, %262
  %1131 = fadd fast float %1128, -1.000000e+00
  %1132 = fadd fast float %1129, -1.000000e+00
  %1133 = fadd fast float %1130, -1.000000e+00
  %1134 = fmul fast float %979, %1131
  %1135 = fmul fast float %979, %1132
  %1136 = fmul fast float %979, %1133
  %1137 = fadd fast float %1134, 1.000000e+00
  %1138 = fadd fast float %1135, 1.000000e+00
  %1139 = fadd fast float %1136, 1.000000e+00
  %1140 = fmul fast float %1137, %954
  %1141 = fmul fast float %1138, %955
  %1142 = fmul fast float %1139, %956
  br label %1143

; <label>:1143                                    ; preds = %1127, %1093, %984, %942
  %1144 = phi float [ %1089, %984 ], [ %965, %1093 ], [ %965, %1127 ], [ 0x3FA23C0BE0000000, %942 ]
  %1145 = phi float [ %1081, %984 ], [ %1124, %1093 ], [ %1140, %1127 ], [ 1.000000e+00, %942 ]
  %1146 = phi float [ %1082, %984 ], [ %1125, %1093 ], [ %1141, %1127 ], [ 1.000000e+00, %942 ]
  %1147 = phi float [ %1083, %984 ], [ %1126, %1093 ], [ %1142, %1127 ], [ 1.000000e+00, %942 ]
  %1148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.i32 %1148, 1
  %1150 = and i32 %1149, 1
  %1151 = icmp ne i32 %1150, 0
  %1152 = add i32 %34, 356
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 32
  %1156 = icmp ne i32 %1155, 0
  %1157 = and i1 %1151, %1156
  %1158 = select i1 %1157, float 1.000000e+00, float %1145
  %1159 = select i1 %1157, float 0x3FD3333340000000, float %1146
  %1160 = select i1 %1157, float 0x3FD3333340000000, float %1147
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 32
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1237, label %1165

; <label>:1165                                    ; preds = %1143
  %1166 = add i32 %34, 92
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %34, 392
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = add i32 %1171, 0
  %1173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1173, %dx.types.Handle %76, float %943, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.ResRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.ResRet.f32 %1174, 2
  %1178 = extractvalue %dx.types.ResRet.f32 %1174, 3
  %1179 = and i32 %1168, 255
  %1180 = uitofp i32 %1179 to float
  %1181 = lshr i32 %1168, 8
  %1182 = and i32 %1181, 255
  %1183 = uitofp i32 %1182 to float
  %1184 = lshr i32 %1168, 16
  %1185 = and i32 %1184, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = fmul fast float %1186, 0x3F70101000000000
  %1188 = fmul fast float %1175, %1180
  %1189 = fadd fast float %1188, %1183
  %1190 = fmul fast float %1189, 0x3F70101000000000
  %1191 = fadd fast float %1176, -5.000000e-01
  %1192 = fadd fast float %1178, -5.000000e-01
  %1193 = fmul fast float %1191, %1187
  %1194 = fmul fast float %1192, %1187
  %1195 = fadd fast float %1193, 5.000000e-01
  %1196 = fadd fast float %1194, 5.000000e-01
  %1197 = fmul fast float %1195, 2.000000e+00
  %1198 = fadd fast float %1197, -1.000000e+00
  %1199 = fmul fast float %1196, 2.000000e+00
  %1200 = fadd fast float %1199, -1.000000e+00
  %1201 = fadd fast float %1198, %1200
  %1202 = fmul fast float %1201, 5.000000e-01
  %1203 = fsub fast float %1198, %1200
  %1204 = fmul fast float %1203, 5.000000e-01
  %1205 = call float @dx.op.unary.f32(i32 6, float %1202)  ; FAbs(value)
  %1206 = fsub fast float 1.000000e+00, %1205
  %1207 = call float @dx.op.unary.f32(i32 6, float %1204)  ; FAbs(value)
  %1208 = fsub fast float %1206, %1207
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1202, float %1204, float %1208, float %1202, float %1204, float %1208)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = call float @dx.op.unary.f32(i32 25, float %1209)  ; Rsqrt(value)
  %1211 = fmul fast float %1202, %1210
  %1212 = fmul fast float %1204, %1210
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 67108864
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1233, label %1217

; <label>:1217                                    ; preds = %1165
  %1218 = add i32 %34, 280
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 65535
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = and i32 %1224, 65535
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = lshr i32 %1220, 16
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = fsub fast float %1190, %1228
  %1230 = fmul fast float %1229, %1222
  %1231 = fadd fast float %1230, %1226
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  br label %1233

; <label>:1233                                    ; preds = %1217, %1165
  %1234 = phi float [ %1232, %1217 ], [ %1190, %1165 ]
  %1235 = call float @dx.op.dot2.f32(i32 54, float %1211, float %1212, float %847, float %848)  ; Dot2(ax,ay,bx,by)
  %1236 = call float @dx.op.dot2.f32(i32 54, float %1211, float %1212, float %849, float %850)  ; Dot2(ax,ay,bx,by)
  br label %1237

; <label>:1237                                    ; preds = %1233, %1143
  %1238 = phi float [ %1234, %1233 ], [ 0x3FD6666660000000, %1143 ]
  %1239 = phi float [ %1235, %1233 ], [ 0.000000e+00, %1143 ]
  %1240 = phi float [ %1236, %1233 ], [ 0.000000e+00, %1143 ]
  %1241 = phi float [ %1177, %1233 ], [ 1.000000e+00, %1143 ]
  %1242 = add i32 %34, 160
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = lshr i32 %1244, 22
  %1246 = shl nuw nsw i32 %1245, 5
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 64
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1285, label %1252

; <label>:1252                                    ; preds = %1237
  %1253 = add i32 %34, 408
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = add i32 %1255, 0
  %1257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1256, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 131072
  %1261 = icmp eq i32 %1260, 0
  %1262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1257, %dx.types.Handle %76, float %943, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = fmul fast float %1263, %242
  %1267 = fmul fast float %1264, %245
  %1268 = fmul fast float %1265, %248
  br i1 %1261, label %1275, label %1269

; <label>:1269                                    ; preds = %1252
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = fmul fast float %1271, %1266
  %1273 = fmul fast float %1271, %1267
  %1274 = fmul fast float %1271, %1268
  br label %1275

; <label>:1275                                    ; preds = %1269, %1252
  %1276 = phi float [ %1272, %1269 ], [ %1266, %1252 ]
  %1277 = phi float [ %1273, %1269 ], [ %1267, %1252 ]
  %1278 = phi float [ %1274, %1269 ], [ %1268, %1252 ]
  %1279 = fmul fast float %1276, %1247
  %1280 = select i1 %219, float %1279, float %1276
  %1281 = call float @dx.op.dot3.f32(i32 55, float %1280, float %1277, float %1278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1282 = select i1 %219, float 0.000000e+00, float %1276
  %1283 = select i1 %219, float %1281, float %1277
  %1284 = select i1 %219, float 0.000000e+00, float %1278
  br label %1285

; <label>:1285                                    ; preds = %1275, %1237
  %1286 = phi float [ %1282, %1275 ], [ 0.000000e+00, %1237 ]
  %1287 = phi float [ %1283, %1275 ], [ 0.000000e+00, %1237 ]
  %1288 = phi float [ %1284, %1275 ], [ 0.000000e+00, %1237 ]
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 30720
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1332, label %1293

; <label>:1293                                    ; preds = %1285
  %1294 = add i32 %34, 476
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = add i32 %1296, 0
  %1298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1299 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1298, %dx.types.Handle %77, float %943, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 1048576
  %1304 = icmp ne i32 %1303, 0
  %1305 = select i1 %1304, float 1.000000e+00, float %1300
  %1306 = and i32 %1302, 16384
  %1307 = icmp eq i32 %1306, 0
  br i1 %1307, label %1318, label %1308

; <label>:1308                                    ; preds = %1293
  %1309 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1310 = add i32 %34, 96
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = lshr i32 %1312, 24
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1309, 0x3F70101020000000
  %1316 = select i1 %1304, float 0x3F70101020000000, float %1315
  %1317 = fmul fast float %1316, %1314
  br label %1318

; <label>:1318                                    ; preds = %1308, %1293
  %1319 = phi float [ %1317, %1308 ], [ 0.000000e+00, %1293 ]
  %1320 = and i32 %1302, 4096
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1332, label %1322

; <label>:1322                                    ; preds = %1318
  %1323 = add i32 %34, 164
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = and i32 %1325, 65535
  %1327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1326)  ; LegacyF16ToF32(value)
  %1328 = lshr i32 %1325, 16
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = fmul fast float %1327, %1305
  %1331 = fadd fast float %1330, %1329
  br label %1332

; <label>:1332                                    ; preds = %1322, %1318, %1285
  %1333 = phi float [ %1319, %1322 ], [ %1319, %1318 ], [ 0.000000e+00, %1285 ]
  %1334 = phi float [ %1331, %1322 ], [ 0.000000e+00, %1318 ], [ 0.000000e+00, %1285 ]
  %1335 = add i32 %34, 96
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = and i32 %1337, 255
  %1339 = uitofp i32 %1338 to float
  %1340 = lshr i32 %1337, 8
  %1341 = and i32 %1340, 255
  %1342 = uitofp i32 %1341 to float
  %1343 = call float @dx.op.dot3.f32(i32 55, float %1158, float %1159, float %1160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1344 = fmul fast float %1342, %1343
  %1345 = fadd fast float %1344, %1339
  %1346 = fmul fast float %1345, 0x3F70101020000000
  %1347 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  br label %1348

; <label>:1348                                    ; preds = %1332, %829
  %1349 = phi float [ 0.000000e+00, %829 ], [ %1239, %1332 ]
  %1350 = phi float [ 0.000000e+00, %829 ], [ %1240, %1332 ]
  %1351 = phi float [ 0.000000e+00, %829 ], [ %1158, %1332 ]
  %1352 = phi float [ 0.000000e+00, %829 ], [ %1159, %1332 ]
  %1353 = phi float [ 0.000000e+00, %829 ], [ %1160, %1332 ]
  %1354 = phi float [ 0.000000e+00, %829 ], [ %1286, %1332 ]
  %1355 = phi float [ 0.000000e+00, %829 ], [ %1287, %1332 ]
  %1356 = phi float [ 0.000000e+00, %829 ], [ %1288, %1332 ]
  %1357 = phi float [ 0.000000e+00, %829 ], [ %1144, %1332 ]
  %1358 = phi float [ 0.000000e+00, %829 ], [ 1.000000e+00, %1332 ]
  %1359 = phi float [ 0.000000e+00, %829 ], [ %1238, %1332 ]
  %1360 = phi float [ 0.000000e+00, %829 ], [ %1241, %1332 ]
  %1361 = phi float [ 0.000000e+00, %829 ], [ %1334, %1332 ]
  %1362 = phi float [ 0.000000e+00, %829 ], [ %1333, %1332 ]
  %1363 = phi float [ 0.000000e+00, %829 ], [ %1347, %1332 ]
  br i1 %605, label %2154, label %1364

; <label>:1364                                    ; preds = %1348
  %1365 = icmp ult i32 %835, 2
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %34, 44
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = or i32 %1370, %1367
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %2154, label %1373

; <label>:1373                                    ; preds = %1364
  %1374 = and i32 %1367, 262144
  %1375 = icmp ne i32 %1374, 0
  %1376 = select i1 %1375, float %41, float 1.000000e+00
  %1377 = select i1 %1375, float %42, float 0.000000e+00
  %1378 = select i1 %1375, float %43, float 0.000000e+00
  %1379 = select i1 %1375, float %44, float 1.000000e+00
  %1380 = select i1 %1375, float %45, float %68
  %1381 = select i1 %1375, float %46, float %69
  %1382 = add i32 %34, 300
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = lshr i32 %1384, 16
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = fmul fast float %1386, 0x3F50624DE0000000
  %1388 = add i32 %34, 104
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = lshr i32 %1390, 16
  %1392 = and i32 %1391, 255
  %1393 = lshr i32 %1390, 24
  %1394 = add i32 %34, 308
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = and i32 %1396, 65535
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = lshr i32 %1396, 16
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = add i32 %34, 48
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = lshr i32 %1403, 22
  %1405 = shl nuw nsw i32 %1404, 5
  %1406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1405)  ; LegacyF16ToF32(value)
  %1407 = shl i32 %1403, 4
  %1408 = and i32 %1407, 32752
  %1409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1408)  ; LegacyF16ToF32(value)
  %1410 = lshr i32 %1403, 7
  %1411 = and i32 %1410, 32752
  %1412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1411)  ; LegacyF16ToF32(value)
  %1413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.f32 %1413, 3
  %1415 = fmul fast float %1414, 1.000000e+03
  %1416 = fmul fast float %1415, %384
  %1417 = call float @dx.op.unary.f32(i32 22, float %1416)  ; Frc(value)
  %1418 = fadd fast float %1417, %372
  %1419 = fmul fast float %1415, %386
  %1420 = call float @dx.op.unary.f32(i32 22, float %1419)  ; Frc(value)
  %1421 = fadd fast float %1420, %373
  %1422 = fmul fast float %1387, %1415
  %1423 = call float @dx.op.unary.f32(i32 22, float %1422)  ; Frc(value)
  %1424 = fmul fast float %1423, 0x401921FB60000000
  %1425 = fadd fast float %1424, %1406
  %1426 = call float @dx.op.unary.f32(i32 13, float %1425)  ; Sin(value)
  %1427 = call float @dx.op.unary.f32(i32 12, float %1425)  ; Cos(value)
  %1428 = fsub fast float -0.000000e+00, %1426
  %1429 = fadd fast float %1380, -5.000000e-01
  %1430 = fadd fast float %1381, -5.000000e-01
  %1431 = fmul fast float %1398, %1429
  %1432 = fmul fast float %1400, %1430
  %1433 = fadd fast float %1431, 5.000000e-01
  %1434 = fadd fast float %1432, 5.000000e-01
  %1435 = fmul fast float %1409, %1433
  %1436 = fmul fast float %1412, %1434
  %1437 = fmul fast float %1427, %1435
  %1438 = call float @dx.op.tertiary.f32(i32 46, float %1428, float %1436, float %1437)  ; FMad(a,b,c)
  %1439 = fmul fast float %1426, %1435
  %1440 = call float @dx.op.tertiary.f32(i32 46, float %1427, float %1436, float %1439)  ; FMad(a,b,c)
  %1441 = fadd fast float %1418, %1438
  %1442 = fadd fast float %1421, %1440
  %1443 = icmp ugt i32 %1392, 1
  %1444 = icmp ugt i32 %1390, 33554431
  %1445 = or i1 %1444, %1443
  br i1 %1445, label %1446, label %1471

; <label>:1446                                    ; preds = %1373
  %1447 = add i32 %34, 244
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = lshr i32 %1449, 16
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = fmul fast float %1414, %1451
  %1453 = call float @dx.op.unary.f32(i32 22, float %1452)  ; Frc(value)
  %1454 = mul nuw nsw i32 %1392, %1393
  %1455 = uitofp i32 %1454 to float
  %1456 = fmul fast float %1453, %1455
  %1457 = call float @dx.op.unary.f32(i32 27, float %1456)  ; Round_ni(value)
  %1458 = fptoui float %1457 to i32
  %1459 = urem i32 %1458, %1392
  %1460 = udiv i32 %1458, %1393
  %1461 = call float @dx.op.unary.f32(i32 22, float %1441)  ; Frc(value)
  %1462 = call float @dx.op.unary.f32(i32 22, float %1442)  ; Frc(value)
  %1463 = uitofp i32 %1459 to float
  %1464 = uitofp i32 %1460 to float
  %1465 = fadd fast float %1461, %1463
  %1466 = fadd fast float %1462, %1464
  %1467 = uitofp i32 %1392 to float
  %1468 = uitofp i32 %1393 to float
  %1469 = fdiv fast float %1465, %1467
  %1470 = fdiv fast float %1466, %1468
  br label %1471

; <label>:1471                                    ; preds = %1446, %1373
  %1472 = phi float [ %1469, %1446 ], [ %1441, %1373 ]
  %1473 = phi float [ %1470, %1446 ], [ %1442, %1373 ]
  %1474 = and i32 %1367, 256
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1521, label %1476

; <label>:1476                                    ; preds = %1471
  %1477 = add i32 %34, 444
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %77, float %1472, float %1473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = shl i32 %1485, 4
  %1487 = and i32 %1486, 32752
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = lshr i32 %1485, 7
  %1490 = and i32 %1489, 32752
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = fsub fast float 1.000000e+00, %812
  %1493 = call float @dx.op.binary.f32(i32 35, float %1492, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1494 = bitcast float %812 to i32
  %1495 = sitofp i32 %1494 to float
  %1496 = fadd fast float %1495, 0xC1CFBF8940000000
  %1497 = fmul fast float %1491, %1496
  %1498 = fadd fast float %1497, 0x41CFBF8940000000
  %1499 = fptosi float %1498 to i32
  %1500 = bitcast i32 %1499 to float
  %1501 = bitcast float %1493 to i32
  %1502 = sitofp i32 %1501 to float
  %1503 = fadd fast float %1502, 0xC1CFBF8940000000
  %1504 = fmul fast float %1503, %1491
  %1505 = fadd fast float %1504, 0x41CFBF8940000000
  %1506 = fptosi float %1505 to i32
  %1507 = bitcast i32 %1506 to float
  %1508 = fmul fast float %1500, %1488
  %1509 = fmul fast float %1507, %1488
  %1510 = fsub fast float %1493, %1508
  %1511 = fadd fast float %1509, %1493
  %1512 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1513 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1514 = fsub fast float %1483, %1512
  %1515 = fsub fast float %1513, %1512
  %1516 = bitcast float %1515 to i32
  %1517 = sub nsw i32 2129859010, %1516
  %1518 = bitcast i32 %1517 to float
  %1519 = fmul fast float %1518, %1514
  %1520 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  br label %1521

; <label>:1521                                    ; preds = %1476, %1471
  %1522 = phi float [ %1520, %1476 ], [ %812, %1471 ]
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 128
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1543, label %1527

; <label>:1527                                    ; preds = %1521
  %1528 = add i32 %34, 428
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = add i32 %1530, 0
  %1532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1531, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1532, %dx.types.Handle %77, float %1472, float %1473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 524288
  %1538 = icmp ne i32 %1537, 0
  %1539 = fcmp fast ogt float %1534, 0x3FE0101020000000
  %1540 = select i1 %1539, float 1.000000e+00, float 0.000000e+00
  %1541 = select i1 %1538, float %1540, float %1534
  %1542 = fmul fast float %1541, %1522
  br label %1543

; <label>:1543                                    ; preds = %1527, %1521
  %1544 = phi float [ %1542, %1527 ], [ %1522, %1521 ]
  %1545 = fcmp fast ult float %1544, 0x3F70101020000000
  br i1 %1545, label %2154, label %1546

; <label>:1546                                    ; preds = %1543
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 16
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1749, label %1551

; <label>:1551                                    ; preds = %1546
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %34, 380
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %1556, 0
  %1558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1558, %dx.types.Handle %76, float %1472, float %1473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.ResRet.f32 %1559, 1
  %1562 = extractvalue %dx.types.ResRet.f32 %1559, 2
  %1563 = extractvalue %dx.types.ResRet.f32 %1559, 3
  %1564 = and i32 %1553, 255
  %1565 = uitofp i32 %1564 to float
  %1566 = lshr i32 %1553, 8
  %1567 = and i32 %1566, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = fmul fast float %1563, %1565
  %1570 = fadd fast float %1569, %1568
  %1571 = fmul fast float %1570, 0x3F70101000000000
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = and i32 %1573, 512
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1584, label %1576

; <label>:1576                                    ; preds = %1551
  %1577 = add i32 %34, 464
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = add i32 %1579, 0
  %1581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1581, %dx.types.Handle %77, float %1472, float %1473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  br label %1584

; <label>:1584                                    ; preds = %1576, %1551
  %1585 = phi float [ %1583, %1576 ], [ 1.000000e+00, %1551 ]
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 33554432
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1696, label %1590

; <label>:1590                                    ; preds = %1584
  %1591 = add i32 %34, 240
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1591, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 65535
  %1595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1594)  ; LegacyF16ToF32(value)
  %1596 = lshr i32 %1593, 16
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = add i32 %34, 244
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 65535
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = lshr i32 %1604, 24
  %1606 = uitofp i32 %1605 to float
  %1607 = fmul fast float %1606, 0x3F70101020000000
  %1608 = and i32 %1604, 255
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 0x3F70101020000000
  %1611 = lshr i32 %1604, 8
  %1612 = and i32 %1611, 255
  %1613 = uitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 0x3F70101020000000
  %1615 = lshr i32 %1604, 16
  %1616 = and i32 %1615, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = fmul fast float %1617, 0x3F70101020000000
  %1619 = add i32 %34, 236
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = lshr i32 %1621, 24
  %1623 = uitofp i32 %1622 to float
  %1624 = fmul fast float %1623, 0x3F70101020000000
  %1625 = and i32 %1621, 255
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, 0x3F70101020000000
  %1628 = lshr i32 %1621, 8
  %1629 = and i32 %1628, 255
  %1630 = uitofp i32 %1629 to float
  %1631 = fmul fast float %1630, 0x3F70101020000000
  %1632 = lshr i32 %1621, 16
  %1633 = and i32 %1632, 255
  %1634 = uitofp i32 %1633 to float
  %1635 = fmul fast float %1634, 0x3F70101020000000
  %1636 = bitcast float %1560 to i32
  %1637 = ashr i32 %1636, 1
  %1638 = sub nsw i32 1597463174, %1637
  %1639 = bitcast i32 %1638 to float
  %1640 = fmul fast float %1560, 5.000000e-01
  %1641 = fmul fast float %1639, %1639
  %1642 = fmul fast float %1641, %1640
  %1643 = fsub fast float 1.500000e+00, %1642
  %1644 = fmul fast float %1639, %1560
  %1645 = fmul fast float %1644, %1643
  %1646 = bitcast float %1561 to i32
  %1647 = ashr i32 %1646, 1
  %1648 = sub nsw i32 1597463174, %1647
  %1649 = bitcast i32 %1648 to float
  %1650 = fmul fast float %1561, 5.000000e-01
  %1651 = fmul fast float %1649, %1649
  %1652 = fmul fast float %1651, %1650
  %1653 = fsub fast float 1.500000e+00, %1652
  %1654 = fmul fast float %1649, %1561
  %1655 = fmul fast float %1654, %1653
  %1656 = bitcast float %1562 to i32
  %1657 = ashr i32 %1656, 1
  %1658 = sub nsw i32 1597463174, %1657
  %1659 = bitcast i32 %1658 to float
  %1660 = fmul fast float %1562, 5.000000e-01
  %1661 = fmul fast float %1659, %1659
  %1662 = fmul fast float %1661, %1660
  %1663 = fsub fast float 1.500000e+00, %1662
  %1664 = fmul fast float %1659, %1562
  %1665 = fmul fast float %1664, %1663
  %1666 = fsub fast float %1645, %1627
  %1667 = fsub fast float %1655, %1631
  %1668 = fsub fast float %1665, %1635
  %1669 = fmul fast float %1666, %1595
  %1670 = fmul fast float %1667, %1597
  %1671 = fmul fast float %1668, %1602
  %1672 = fadd fast float %1669, %1610
  %1673 = fadd fast float %1670, %1614
  %1674 = fadd fast float %1671, %1618
  %1675 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1676 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1677 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1678 = fmul fast float %1675, %1675
  %1679 = fmul fast float %1676, %1676
  %1680 = fmul fast float %1677, %1677
  %1681 = fsub fast float %1678, %1560
  %1682 = fsub fast float %1679, %1561
  %1683 = fsub fast float %1680, %1562
  %1684 = fmul fast float %1681, %1585
  %1685 = fmul fast float %1682, %1585
  %1686 = fmul fast float %1683, %1585
  %1687 = fadd fast float %1684, %1560
  %1688 = fadd fast float %1685, %1561
  %1689 = fadd fast float %1686, %1562
  %1690 = fadd fast float %1607, %1571
  %1691 = fsub fast float %1690, %1624
  %1692 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1693 = fsub fast float %1692, %1571
  %1694 = fmul fast float %1693, %1585
  %1695 = fadd fast float %1694, %1571
  br label %1749

; <label>:1696                                    ; preds = %1584
  %1697 = and i32 %1587, 134217728
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1733, label %1699

; <label>:1699                                    ; preds = %1696
  %1700 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %1701 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %1702 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %1703 = fadd fast float %1700, -5.000000e-01
  %1704 = fadd fast float %1701, -5.000000e-01
  %1705 = fadd fast float %1702, -5.000000e-01
  %1706 = fmul fast float %1703, %1585
  %1707 = fmul fast float %1704, %1585
  %1708 = fmul fast float %1705, %1585
  %1709 = fadd fast float %1706, 5.000000e-01
  %1710 = fadd fast float %1707, 5.000000e-01
  %1711 = fadd fast float %1708, 5.000000e-01
  %1712 = call float @dx.op.unary.f32(i32 24, float %1560)  ; Sqrt(value)
  %1713 = call float @dx.op.unary.f32(i32 24, float %1561)  ; Sqrt(value)
  %1714 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1715 = fmul fast float %1709, 2.000000e+00
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = fmul fast float %1716, %1712
  %1718 = fadd fast float %1717, %1715
  %1719 = fmul fast float %1718, %1712
  %1720 = fmul fast float %1710, 2.000000e+00
  %1721 = fsub fast float 1.000000e+00, %1720
  %1722 = fmul fast float %1721, %1713
  %1723 = fadd fast float %1722, %1720
  %1724 = fmul fast float %1723, %1713
  %1725 = fmul fast float %1711, 2.000000e+00
  %1726 = fsub fast float 1.000000e+00, %1725
  %1727 = fmul fast float %1726, %1714
  %1728 = fadd fast float %1727, %1725
  %1729 = fmul fast float %1728, %1714
  %1730 = fmul fast float %1719, %1719
  %1731 = fmul fast float %1724, %1724
  %1732 = fmul fast float %1729, %1729
  br label %1749

; <label>:1733                                    ; preds = %1696
  %1734 = fmul fast float %360, %360
  %1735 = fmul fast float %361, %361
  %1736 = fmul fast float %362, %362
  %1737 = fadd fast float %1734, -1.000000e+00
  %1738 = fadd fast float %1735, -1.000000e+00
  %1739 = fadd fast float %1736, -1.000000e+00
  %1740 = fmul fast float %1585, %1737
  %1741 = fmul fast float %1585, %1738
  %1742 = fmul fast float %1585, %1739
  %1743 = fadd fast float %1740, 1.000000e+00
  %1744 = fadd fast float %1741, 1.000000e+00
  %1745 = fadd fast float %1742, 1.000000e+00
  %1746 = fmul fast float %1743, %1560
  %1747 = fmul fast float %1744, %1561
  %1748 = fmul fast float %1745, %1562
  br label %1749

; <label>:1749                                    ; preds = %1733, %1699, %1590, %1546
  %1750 = phi float [ %1695, %1590 ], [ %1571, %1699 ], [ %1571, %1733 ], [ 0x3FA23C0BE0000000, %1546 ]
  %1751 = phi float [ %1687, %1590 ], [ %1730, %1699 ], [ %1746, %1733 ], [ 1.000000e+00, %1546 ]
  %1752 = phi float [ %1688, %1590 ], [ %1731, %1699 ], [ %1747, %1733 ], [ 1.000000e+00, %1546 ]
  %1753 = phi float [ %1689, %1590 ], [ %1732, %1699 ], [ %1748, %1733 ], [ 1.000000e+00, %1546 ]
  %1754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.i32 %1754, 1
  %1756 = and i32 %1755, 1
  %1757 = icmp ne i32 %1756, 0
  %1758 = add i32 %34, 356
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, 32
  %1762 = icmp ne i32 %1761, 0
  %1763 = and i1 %1757, %1762
  %1764 = select i1 %1763, float 1.000000e+00, float %1751
  %1765 = select i1 %1763, float 0x3FD3333340000000, float %1752
  %1766 = select i1 %1763, float 0x3FD3333340000000, float %1753
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 32
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %1843, label %1771

; <label>:1771                                    ; preds = %1749
  %1772 = add i32 %34, 108
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = add i32 %34, 396
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = add i32 %1777, 0
  %1779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1779, %dx.types.Handle %76, float %1472, float %1473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = extractvalue %dx.types.ResRet.f32 %1780, 3
  %1785 = and i32 %1774, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = lshr i32 %1774, 8
  %1788 = and i32 %1787, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = lshr i32 %1774, 16
  %1791 = and i32 %1790, 255
  %1792 = uitofp i32 %1791 to float
  %1793 = fmul fast float %1792, 0x3F70101000000000
  %1794 = fmul fast float %1781, %1786
  %1795 = fadd fast float %1794, %1789
  %1796 = fmul fast float %1795, 0x3F70101000000000
  %1797 = fadd fast float %1782, -5.000000e-01
  %1798 = fadd fast float %1784, -5.000000e-01
  %1799 = fmul fast float %1797, %1793
  %1800 = fmul fast float %1798, %1793
  %1801 = fadd fast float %1799, 5.000000e-01
  %1802 = fadd fast float %1800, 5.000000e-01
  %1803 = fmul fast float %1801, 2.000000e+00
  %1804 = fadd fast float %1803, -1.000000e+00
  %1805 = fmul fast float %1802, 2.000000e+00
  %1806 = fadd fast float %1805, -1.000000e+00
  %1807 = fadd fast float %1804, %1806
  %1808 = fmul fast float %1807, 5.000000e-01
  %1809 = fsub fast float %1804, %1806
  %1810 = fmul fast float %1809, 5.000000e-01
  %1811 = call float @dx.op.unary.f32(i32 6, float %1808)  ; FAbs(value)
  %1812 = fsub fast float 1.000000e+00, %1811
  %1813 = call float @dx.op.unary.f32(i32 6, float %1810)  ; FAbs(value)
  %1814 = fsub fast float %1812, %1813
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1808, float %1810, float %1814, float %1808, float %1810, float %1814)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = call float @dx.op.unary.f32(i32 25, float %1815)  ; Rsqrt(value)
  %1817 = fmul fast float %1808, %1816
  %1818 = fmul fast float %1810, %1816
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 67108864
  %1822 = icmp eq i32 %1821, 0
  br i1 %1822, label %1839, label %1823

; <label>:1823                                    ; preds = %1771
  %1824 = add i32 %34, 296
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = and i32 %1826, 65535
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = and i32 %1830, 65535
  %1832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1831)  ; LegacyF16ToF32(value)
  %1833 = lshr i32 %1826, 16
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = fsub fast float %1796, %1834
  %1836 = fmul fast float %1835, %1828
  %1837 = fadd fast float %1836, %1832
  %1838 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  br label %1839

; <label>:1839                                    ; preds = %1823, %1771
  %1840 = phi float [ %1838, %1823 ], [ %1796, %1771 ]
  %1841 = call float @dx.op.dot2.f32(i32 54, float %1817, float %1818, float %1376, float %1377)  ; Dot2(ax,ay,bx,by)
  %1842 = call float @dx.op.dot2.f32(i32 54, float %1817, float %1818, float %1378, float %1379)  ; Dot2(ax,ay,bx,by)
  br label %1843

; <label>:1843                                    ; preds = %1839, %1749
  %1844 = phi float [ %1840, %1839 ], [ 0x3FD6666660000000, %1749 ]
  %1845 = phi float [ %1841, %1839 ], [ 0.000000e+00, %1749 ]
  %1846 = phi float [ %1842, %1839 ], [ 0.000000e+00, %1749 ]
  %1847 = phi float [ %1783, %1839 ], [ 1.000000e+00, %1749 ]
  %1848 = add i32 %34, 176
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = lshr i32 %1850, 22
  %1852 = shl nuw nsw i32 %1851, 5
  %1853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1852)  ; LegacyF16ToF32(value)
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %1855, 64
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1891, label %1858

; <label>:1858                                    ; preds = %1843
  %1859 = add i32 %34, 412
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = add i32 %1861, 0
  %1863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1862, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 131072
  %1867 = icmp eq i32 %1866, 0
  %1868 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1863, %dx.types.Handle %76, float %1472, float %1473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1869 = extractvalue %dx.types.ResRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.ResRet.f32 %1868, 1
  %1871 = extractvalue %dx.types.ResRet.f32 %1868, 2
  %1872 = fmul fast float %343, %1869
  %1873 = fmul fast float %344, %1870
  %1874 = fmul fast float %345, %1871
  br i1 %1867, label %1881, label %1875

; <label>:1875                                    ; preds = %1858
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 0
  %1878 = fmul fast float %1877, %1872
  %1879 = fmul fast float %1877, %1873
  %1880 = fmul fast float %1877, %1874
  br label %1881

; <label>:1881                                    ; preds = %1875, %1858
  %1882 = phi float [ %1878, %1875 ], [ %1872, %1858 ]
  %1883 = phi float [ %1879, %1875 ], [ %1873, %1858 ]
  %1884 = phi float [ %1880, %1875 ], [ %1874, %1858 ]
  %1885 = fmul fast float %1882, %1853
  %1886 = select i1 %219, float %1885, float %1882
  %1887 = call float @dx.op.dot3.f32(i32 55, float %1886, float %1883, float %1884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1888 = select i1 %219, float 0.000000e+00, float %1882
  %1889 = select i1 %219, float %1887, float %1883
  %1890 = select i1 %219, float 0.000000e+00, float %1884
  br label %1891

; <label>:1891                                    ; preds = %1881, %1843
  %1892 = phi float [ %1888, %1881 ], [ 0.000000e+00, %1843 ]
  %1893 = phi float [ %1889, %1881 ], [ 0.000000e+00, %1843 ]
  %1894 = phi float [ %1890, %1881 ], [ 0.000000e+00, %1843 ]
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = and i32 %1896, 30720
  %1898 = icmp eq i32 %1897, 0
  br i1 %1898, label %1938, label %1899

; <label>:1899                                    ; preds = %1891
  %1900 = add i32 %34, 480
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = add i32 %1902, 0
  %1904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1904, %dx.types.Handle %77, float %1472, float %1473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = and i32 %1908, 1048576
  %1910 = icmp ne i32 %1909, 0
  %1911 = select i1 %1910, float 1.000000e+00, float %1906
  %1912 = and i32 %1908, 16384
  %1913 = icmp eq i32 %1912, 0
  br i1 %1913, label %1924, label %1914

; <label>:1914                                    ; preds = %1899
  %1915 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1916 = add i32 %34, 112
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = lshr i32 %1918, 24
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1915, 0x3F70101020000000
  %1922 = select i1 %1910, float 0x3F70101020000000, float %1921
  %1923 = fmul fast float %1922, %1920
  br label %1924

; <label>:1924                                    ; preds = %1914, %1899
  %1925 = phi float [ %1923, %1914 ], [ 0.000000e+00, %1899 ]
  %1926 = and i32 %1908, 4096
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %1938, label %1928

; <label>:1928                                    ; preds = %1924
  %1929 = add i32 %34, 180
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = and i32 %1931, 65535
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = lshr i32 %1931, 16
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = fmul fast float %1933, %1911
  %1937 = fadd fast float %1936, %1935
  br label %1938

; <label>:1938                                    ; preds = %1928, %1924, %1891
  %1939 = phi float [ %1925, %1928 ], [ %1925, %1924 ], [ 0.000000e+00, %1891 ]
  %1940 = phi float [ %1937, %1928 ], [ 0.000000e+00, %1924 ], [ 0.000000e+00, %1891 ]
  %1941 = add i32 %34, 112
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = and i32 %1943, 255
  %1945 = uitofp i32 %1944 to float
  %1946 = lshr i32 %1943, 8
  %1947 = and i32 %1946, 255
  %1948 = uitofp i32 %1947 to float
  %1949 = call float @dx.op.dot3.f32(i32 55, float %1764, float %1765, float %1766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1950 = fmul fast float %1948, %1949
  %1951 = fadd fast float %1950, %1945
  %1952 = fmul fast float %1951, 0x3F70101020000000
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  br i1 %1365, label %1954, label %1962

; <label>:1954                                    ; preds = %1938
  %1955 = fsub fast float 1.000000e+00, %1544
  %1956 = fmul fast float %1955, %1351
  %1957 = fmul fast float %1955, %1352
  %1958 = fmul fast float %1955, %1353
  %1959 = fmul fast float %1955, %1354
  %1960 = fmul fast float %1955, %1355
  %1961 = fmul fast float %1955, %1356
  br label %1962

; <label>:1962                                    ; preds = %1954, %1938
  %1963 = phi float [ %1956, %1954 ], [ %1351, %1938 ]
  %1964 = phi float [ %1957, %1954 ], [ %1352, %1938 ]
  %1965 = phi float [ %1958, %1954 ], [ %1353, %1938 ]
  %1966 = phi float [ %1959, %1954 ], [ %1354, %1938 ]
  %1967 = phi float [ %1960, %1954 ], [ %1355, %1938 ]
  %1968 = phi float [ %1961, %1954 ], [ %1356, %1938 ]
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 3
  %1972 = icmp eq i32 %1971, 3
  br i1 %1972, label %2051, label %1973

; <label>:1973                                    ; preds = %1962
  %1974 = and i32 %1970, 16
  %1975 = icmp ne i32 %1974, 0
  %1976 = select i1 %1975, float %1544, float 0.000000e+00
  %1977 = icmp eq i32 %1971, 0
  br i1 %1977, label %1978, label %2006

; <label>:1978                                    ; preds = %1973
  %1979 = and i32 %1970, 64
  %1980 = icmp ne i32 %1979, 0
  %1981 = select i1 %1980, float %1544, float 0.000000e+00
  %1982 = fsub fast float %1764, %1963
  %1983 = fsub fast float %1765, %1964
  %1984 = fsub fast float %1766, %1965
  %1985 = fmul fast float %1976, %1982
  %1986 = fmul fast float %1976, %1983
  %1987 = fmul fast float %1976, %1984
  %1988 = fadd fast float %1985, %1963
  %1989 = fadd fast float %1986, %1964
  %1990 = fadd fast float %1987, %1965
  %1991 = fsub fast float %1750, %1357
  %1992 = fmul fast float %1976, %1991
  %1993 = fadd fast float %1992, %1357
  %1994 = fsub fast float %1892, %1966
  %1995 = fsub fast float %1893, %1967
  %1996 = fsub fast float %1894, %1968
  %1997 = fmul fast float %1981, %1994
  %1998 = fmul fast float %1981, %1995
  %1999 = fmul fast float %1981, %1996
  %2000 = fadd fast float %1997, %1966
  %2001 = fadd fast float %1998, %1967
  %2002 = fadd fast float %1999, %1968
  %2003 = fsub fast float %1953, %1363
  %2004 = fmul fast float %1976, %2003
  %2005 = fadd fast float %2004, %1363
  br label %2051

; <label>:2006                                    ; preds = %1973
  %2007 = icmp eq i32 %1971, 1
  br i1 %2007, label %2008, label %2021

; <label>:2008                                    ; preds = %2006
  %2009 = fadd fast float %1764, -1.000000e+00
  %2010 = fadd fast float %1765, -1.000000e+00
  %2011 = fadd fast float %1766, -1.000000e+00
  %2012 = fmul fast float %1976, %2009
  %2013 = fmul fast float %1976, %2010
  %2014 = fmul fast float %1976, %2011
  %2015 = fadd fast float %2012, 1.000000e+00
  %2016 = fadd fast float %2013, 1.000000e+00
  %2017 = fadd fast float %2014, 1.000000e+00
  %2018 = fmul fast float %2015, %1963
  %2019 = fmul fast float %2016, %1964
  %2020 = fmul fast float %2017, %1965
  br label %2051

; <label>:2021                                    ; preds = %2006
  %2022 = icmp eq i32 %1971, 2
  br i1 %2022, label %2023, label %2051

; <label>:2023                                    ; preds = %2021
  %2024 = call float @dx.op.unary.f32(i32 24, float %1764)  ; Sqrt(value)
  %2025 = call float @dx.op.unary.f32(i32 24, float %1765)  ; Sqrt(value)
  %2026 = call float @dx.op.unary.f32(i32 24, float %1766)  ; Sqrt(value)
  %2027 = fadd fast float %2024, -5.000000e-01
  %2028 = fadd fast float %2025, -5.000000e-01
  %2029 = fadd fast float %2026, -5.000000e-01
  %2030 = fmul fast float %2027, %1976
  %2031 = fmul fast float %2028, %1976
  %2032 = fmul fast float %2029, %1976
  %2033 = fadd fast float %2030, 5.000000e-01
  %2034 = fadd fast float %2031, 5.000000e-01
  %2035 = fadd fast float %2032, 5.000000e-01
  %2036 = fmul fast float %2033, 2.000000e+00
  %2037 = fsub fast float 1.000000e+00, %2036
  %2038 = fmul fast float %2037, %1963
  %2039 = fadd fast float %2038, %2036
  %2040 = fmul fast float %2039, %1963
  %2041 = fmul fast float %2034, 2.000000e+00
  %2042 = fsub fast float 1.000000e+00, %2041
  %2043 = fmul fast float %2042, %1964
  %2044 = fadd fast float %2043, %2041
  %2045 = fmul fast float %2044, %1964
  %2046 = fmul fast float %2035, 2.000000e+00
  %2047 = fsub fast float 1.000000e+00, %2046
  %2048 = fmul fast float %2047, %1965
  %2049 = fadd fast float %2048, %2046
  %2050 = fmul fast float %2049, %1965
  br label %2051

; <label>:2051                                    ; preds = %2023, %2021, %2008, %1978, %1962
  %2052 = phi float [ %1963, %1962 ], [ %2040, %2023 ], [ %1963, %2021 ], [ %2018, %2008 ], [ %1988, %1978 ]
  %2053 = phi float [ %1964, %1962 ], [ %2045, %2023 ], [ %1964, %2021 ], [ %2019, %2008 ], [ %1989, %1978 ]
  %2054 = phi float [ %1965, %1962 ], [ %2050, %2023 ], [ %1965, %2021 ], [ %2020, %2008 ], [ %1990, %1978 ]
  %2055 = phi float [ %1966, %1962 ], [ %1966, %2023 ], [ %1966, %2021 ], [ %1966, %2008 ], [ %2000, %1978 ]
  %2056 = phi float [ %1967, %1962 ], [ %1967, %2023 ], [ %1967, %2021 ], [ %1967, %2008 ], [ %2001, %1978 ]
  %2057 = phi float [ %1968, %1962 ], [ %1968, %2023 ], [ %1968, %2021 ], [ %1968, %2008 ], [ %2002, %1978 ]
  %2058 = phi float [ %1357, %1962 ], [ %1357, %2023 ], [ %1357, %2021 ], [ %1357, %2008 ], [ %1993, %1978 ]
  %2059 = phi float [ %1363, %1962 ], [ %1363, %2023 ], [ %1363, %2021 ], [ %1363, %2008 ], [ %2005, %1978 ]
  %2060 = and i32 %1970, 12
  %2061 = icmp eq i32 %2060, 12
  br i1 %2061, label %2154, label %2062

; <label>:2062                                    ; preds = %2051
  %2063 = and i32 %1970, 2097184
  %2064 = icmp eq i32 %2063, 2097184
  %2065 = select i1 %2064, float %1544, float 0.000000e+00
  %2066 = and i32 %1970, 4194336
  %2067 = icmp eq i32 %2066, 4194336
  %2068 = select i1 %2067, float %1544, float 0.000000e+00
  %2069 = and i32 %1970, 8388640
  %2070 = icmp eq i32 %2069, 8388640
  %2071 = select i1 %2070, float %1544, float 0.000000e+00
  %2072 = and i32 %1970, 4096
  %2073 = icmp ne i32 %2072, 0
  %2074 = select i1 %2073, float %1544, float 0.000000e+00
  %2075 = and i32 %1970, 16384
  %2076 = icmp ne i32 %2075, 0
  %2077 = select i1 %2076, float %1544, float 0.000000e+00
  %2078 = icmp eq i32 %2060, 0
  br i1 %2078, label %2079, label %2098

; <label>:2079                                    ; preds = %2062
  %2080 = fsub fast float %1845, %1349
  %2081 = fsub fast float %1846, %1350
  %2082 = fmul fast float %2065, %2080
  %2083 = fmul fast float %2065, %2081
  %2084 = fadd fast float %2082, %1349
  %2085 = fadd fast float %2083, %1350
  %2086 = fsub fast float %1847, %1360
  %2087 = fmul fast float %2068, %2086
  %2088 = fadd fast float %2087, %1360
  %2089 = fsub fast float %1844, %1359
  %2090 = fmul fast float %2071, %2089
  %2091 = fadd fast float %2090, %1359
  %2092 = fsub fast float %1940, %1361
  %2093 = fmul fast float %2074, %2092
  %2094 = fadd fast float %2093, %1361
  %2095 = fsub fast float %1939, %1362
  %2096 = fmul fast float %2077, %2095
  %2097 = fadd fast float %2096, %1362
  br label %2154

; <label>:2098                                    ; preds = %2062
  %2099 = icmp eq i32 %2060, 4
  br i1 %2099, label %2100, label %2136

; <label>:2100                                    ; preds = %2098
  %2101 = fmul fast float %2065, %1845
  %2102 = fmul fast float %2065, %1846
  %2103 = fadd fast float %2101, %1349
  %2104 = fadd fast float %2102, %1350
  %2105 = call float @dx.op.binary.f32(i32 36, float %1360, float %1847)  ; FMin(a,b)
  %2106 = fsub fast float %2105, %1360
  %2107 = fmul fast float %2106, %2068
  %2108 = fadd fast float %2107, %1360
  %2109 = fadd fast float %1844, %1359
  %2110 = fmul fast float %2109, 0x3FF337FAE0000000
  %2111 = fmul fast float %1359, %1359
  %2112 = fmul fast float %1844, %1844
  %2113 = fadd fast float %2112, %2111
  %2114 = fmul fast float %2113, 0x3FE5152B00000000
  %2115 = fmul fast float %1359, 0xBFCC1F85E0000000
  %2116 = fmul fast float %2115, %1844
  %2117 = fadd fast float %2116, 0xBFE1363700000000
  %2118 = fadd fast float %2117, %2110
  %2119 = fsub fast float %2118, %2114
  %2120 = fmul fast float %2109, 0x3FBA6F0D00000000
  %2121 = fmul fast float %2113, 0x3FD0432880000000
  %2122 = fmul fast float %1359, 0xBFEF110800000000
  %2123 = fmul fast float %2122, %1844
  %2124 = fadd fast float %2123, 1.000000e+00
  %2125 = fsub fast float %2124, %2120
  %2126 = fadd fast float %2125, %2121
  %2127 = fdiv fast float %2119, %2126
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2129 = fsub fast float %2128, %1359
  %2130 = fmul fast float %2129, %2071
  %2131 = fadd fast float %2130, %1359
  %2132 = fmul fast float %2074, %1940
  %2133 = fadd fast float %2132, %1361
  %2134 = fmul fast float %2077, %1939
  %2135 = fadd fast float %2134, %1362
  br label %2154

; <label>:2136                                    ; preds = %2098
  %2137 = icmp eq i32 %2060, 8
  br i1 %2137, label %2138, label %2154

; <label>:2138                                    ; preds = %2136
  %2139 = fmul fast float %2065, %1845
  %2140 = fmul fast float %2065, %1846
  %2141 = fadd fast float %2139, %1349
  %2142 = fadd fast float %2140, %1350
  %2143 = call float @dx.op.binary.f32(i32 36, float %1360, float %1847)  ; FMin(a,b)
  %2144 = fsub fast float %2143, %1360
  %2145 = fmul fast float %2144, %2068
  %2146 = fadd fast float %2145, %1360
  %2147 = fsub fast float %1844, %1359
  %2148 = fmul fast float %2071, %2147
  %2149 = fadd fast float %2148, %1359
  %2150 = fmul fast float %2074, %1940
  %2151 = fadd fast float %2150, %1361
  %2152 = fmul fast float %2077, %1939
  %2153 = fadd fast float %2152, %1362
  br label %2154

; <label>:2154                                    ; preds = %2138, %2136, %2100, %2079, %2051, %1543, %1364, %1348
  %2155 = phi float [ %1349, %2051 ], [ %1349, %1543 ], [ %1349, %1348 ], [ %2141, %2138 ], [ %1349, %2136 ], [ %2103, %2100 ], [ %2084, %2079 ], [ %1349, %1364 ]
  %2156 = phi float [ %1350, %2051 ], [ %1350, %1543 ], [ %1350, %1348 ], [ %2142, %2138 ], [ %1350, %2136 ], [ %2104, %2100 ], [ %2085, %2079 ], [ %1350, %1364 ]
  %2157 = phi float [ %2052, %2051 ], [ %1351, %1543 ], [ %1351, %1348 ], [ %2052, %2138 ], [ %2052, %2136 ], [ %2052, %2100 ], [ %2052, %2079 ], [ %1351, %1364 ]
  %2158 = phi float [ %2053, %2051 ], [ %1352, %1543 ], [ %1352, %1348 ], [ %2053, %2138 ], [ %2053, %2136 ], [ %2053, %2100 ], [ %2053, %2079 ], [ %1352, %1364 ]
  %2159 = phi float [ %2054, %2051 ], [ %1353, %1543 ], [ %1353, %1348 ], [ %2054, %2138 ], [ %2054, %2136 ], [ %2054, %2100 ], [ %2054, %2079 ], [ %1353, %1364 ]
  %2160 = phi float [ %2055, %2051 ], [ %1354, %1543 ], [ %1354, %1348 ], [ %2055, %2138 ], [ %2055, %2136 ], [ %2055, %2100 ], [ %2055, %2079 ], [ %1354, %1364 ]
  %2161 = phi float [ %2056, %2051 ], [ %1355, %1543 ], [ %1355, %1348 ], [ %2056, %2138 ], [ %2056, %2136 ], [ %2056, %2100 ], [ %2056, %2079 ], [ %1355, %1364 ]
  %2162 = phi float [ %2057, %2051 ], [ %1356, %1543 ], [ %1356, %1348 ], [ %2057, %2138 ], [ %2057, %2136 ], [ %2057, %2100 ], [ %2057, %2079 ], [ %1356, %1364 ]
  %2163 = phi float [ %2058, %2051 ], [ %1357, %1543 ], [ %1357, %1348 ], [ %2058, %2138 ], [ %2058, %2136 ], [ %2058, %2100 ], [ %2058, %2079 ], [ %1357, %1364 ]
  %2164 = phi float [ %1359, %2051 ], [ %1359, %1543 ], [ %1359, %1348 ], [ %2149, %2138 ], [ %1359, %2136 ], [ %2131, %2100 ], [ %2091, %2079 ], [ %1359, %1364 ]
  %2165 = phi float [ %1360, %2051 ], [ %1360, %1543 ], [ %1360, %1348 ], [ %2146, %2138 ], [ %1360, %2136 ], [ %2108, %2100 ], [ %2088, %2079 ], [ %1360, %1364 ]
  %2166 = phi float [ %1361, %2051 ], [ %1361, %1543 ], [ %1361, %1348 ], [ %2151, %2138 ], [ %1361, %2136 ], [ %2133, %2100 ], [ %2094, %2079 ], [ %1361, %1364 ]
  %2167 = phi float [ %1362, %2051 ], [ %1362, %1543 ], [ %1362, %1348 ], [ %2153, %2138 ], [ %1362, %2136 ], [ %2135, %2100 ], [ %2097, %2079 ], [ %1362, %1364 ]
  %2168 = phi float [ %2059, %2051 ], [ %1363, %1543 ], [ %1363, %1348 ], [ %2059, %2138 ], [ %2059, %2136 ], [ %2059, %2100 ], [ %2059, %2079 ], [ %1363, %1364 ]
  br i1 %607, label %2959, label %2169

; <label>:2169                                    ; preds = %2154
  %2170 = icmp ult i32 %835, 3
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = add i32 %34, 60
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = or i32 %2175, %2172
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2959, label %2178

; <label>:2178                                    ; preds = %2169
  %2179 = and i32 %2172, 262144
  %2180 = icmp ne i32 %2179, 0
  %2181 = select i1 %2180, float %41, float 1.000000e+00
  %2182 = select i1 %2180, float %42, float 0.000000e+00
  %2183 = select i1 %2180, float %43, float 0.000000e+00
  %2184 = select i1 %2180, float %44, float 1.000000e+00
  %2185 = select i1 %2180, float %45, float %68
  %2186 = select i1 %2180, float %46, float %69
  %2187 = add i32 %34, 316
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = lshr i32 %2189, 16
  %2191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2190)  ; LegacyF16ToF32(value)
  %2192 = fmul fast float %2191, 0x3F50624DE0000000
  %2193 = add i32 %34, 120
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = lshr i32 %2195, 16
  %2197 = and i32 %2196, 255
  %2198 = lshr i32 %2195, 24
  %2199 = add i32 %34, 324
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = and i32 %2201, 65535
  %2203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2202)  ; LegacyF16ToF32(value)
  %2204 = lshr i32 %2201, 16
  %2205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2204)  ; LegacyF16ToF32(value)
  %2206 = add i32 %34, 64
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = lshr i32 %2208, 22
  %2210 = shl nuw nsw i32 %2209, 5
  %2211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2210)  ; LegacyF16ToF32(value)
  %2212 = shl i32 %2208, 4
  %2213 = and i32 %2212, 32752
  %2214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2213)  ; LegacyF16ToF32(value)
  %2215 = lshr i32 %2208, 7
  %2216 = and i32 %2215, 32752
  %2217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2216)  ; LegacyF16ToF32(value)
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 3
  %2220 = fmul fast float %2219, 1.000000e+03
  %2221 = fmul fast float %2220, %491
  %2222 = call float @dx.op.unary.f32(i32 22, float %2221)  ; Frc(value)
  %2223 = fadd fast float %2222, %479
  %2224 = fmul fast float %2220, %493
  %2225 = call float @dx.op.unary.f32(i32 22, float %2224)  ; Frc(value)
  %2226 = fadd fast float %2225, %480
  %2227 = fmul fast float %2192, %2220
  %2228 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2229 = fmul fast float %2228, 0x401921FB60000000
  %2230 = fadd fast float %2229, %2211
  %2231 = call float @dx.op.unary.f32(i32 13, float %2230)  ; Sin(value)
  %2232 = call float @dx.op.unary.f32(i32 12, float %2230)  ; Cos(value)
  %2233 = fsub fast float -0.000000e+00, %2231
  %2234 = fadd fast float %2185, -5.000000e-01
  %2235 = fadd fast float %2186, -5.000000e-01
  %2236 = fmul fast float %2203, %2234
  %2237 = fmul fast float %2205, %2235
  %2238 = fadd fast float %2236, 5.000000e-01
  %2239 = fadd fast float %2237, 5.000000e-01
  %2240 = fmul fast float %2214, %2238
  %2241 = fmul fast float %2217, %2239
  %2242 = fmul fast float %2232, %2240
  %2243 = call float @dx.op.tertiary.f32(i32 46, float %2233, float %2241, float %2242)  ; FMad(a,b,c)
  %2244 = fmul fast float %2231, %2240
  %2245 = call float @dx.op.tertiary.f32(i32 46, float %2232, float %2241, float %2244)  ; FMad(a,b,c)
  %2246 = fadd fast float %2223, %2243
  %2247 = fadd fast float %2226, %2245
  %2248 = icmp ugt i32 %2197, 1
  %2249 = icmp ugt i32 %2195, 33554431
  %2250 = or i1 %2249, %2248
  br i1 %2250, label %2251, label %2276

; <label>:2251                                    ; preds = %2178
  %2252 = add i32 %34, 260
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = lshr i32 %2254, 16
  %2256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2255)  ; LegacyF16ToF32(value)
  %2257 = fmul fast float %2219, %2256
  %2258 = call float @dx.op.unary.f32(i32 22, float %2257)  ; Frc(value)
  %2259 = mul nuw nsw i32 %2197, %2198
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2258, %2260
  %2262 = call float @dx.op.unary.f32(i32 27, float %2261)  ; Round_ni(value)
  %2263 = fptoui float %2262 to i32
  %2264 = urem i32 %2263, %2197
  %2265 = udiv i32 %2263, %2198
  %2266 = call float @dx.op.unary.f32(i32 22, float %2246)  ; Frc(value)
  %2267 = call float @dx.op.unary.f32(i32 22, float %2247)  ; Frc(value)
  %2268 = uitofp i32 %2264 to float
  %2269 = uitofp i32 %2265 to float
  %2270 = fadd fast float %2266, %2268
  %2271 = fadd fast float %2267, %2269
  %2272 = uitofp i32 %2197 to float
  %2273 = uitofp i32 %2198 to float
  %2274 = fdiv fast float %2270, %2272
  %2275 = fdiv fast float %2271, %2273
  br label %2276

; <label>:2276                                    ; preds = %2251, %2178
  %2277 = phi float [ %2274, %2251 ], [ %2246, %2178 ]
  %2278 = phi float [ %2275, %2251 ], [ %2247, %2178 ]
  %2279 = and i32 %2172, 256
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2326, label %2281

; <label>:2281                                    ; preds = %2276
  %2282 = add i32 %34, 448
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = add i32 %2284, 0
  %2286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2286, %dx.types.Handle %77, float %2277, float %2278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2288 = extractvalue %dx.types.ResRet.f32 %2287, 0
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = shl i32 %2290, 4
  %2292 = and i32 %2291, 32752
  %2293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2292)  ; LegacyF16ToF32(value)
  %2294 = lshr i32 %2290, 7
  %2295 = and i32 %2294, 32752
  %2296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2295)  ; LegacyF16ToF32(value)
  %2297 = fsub fast float 1.000000e+00, %821
  %2298 = call float @dx.op.binary.f32(i32 35, float %2297, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2299 = bitcast float %821 to i32
  %2300 = sitofp i32 %2299 to float
  %2301 = fadd fast float %2300, 0xC1CFBF8940000000
  %2302 = fmul fast float %2296, %2301
  %2303 = fadd fast float %2302, 0x41CFBF8940000000
  %2304 = fptosi float %2303 to i32
  %2305 = bitcast i32 %2304 to float
  %2306 = bitcast float %2298 to i32
  %2307 = sitofp i32 %2306 to float
  %2308 = fadd fast float %2307, 0xC1CFBF8940000000
  %2309 = fmul fast float %2308, %2296
  %2310 = fadd fast float %2309, 0x41CFBF8940000000
  %2311 = fptosi float %2310 to i32
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2305, %2293
  %2314 = fmul fast float %2312, %2293
  %2315 = fsub fast float %2298, %2313
  %2316 = fadd fast float %2314, %2298
  %2317 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2318 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2319 = fsub fast float %2288, %2317
  %2320 = fsub fast float %2318, %2317
  %2321 = bitcast float %2320 to i32
  %2322 = sub nsw i32 2129859010, %2321
  %2323 = bitcast i32 %2322 to float
  %2324 = fmul fast float %2323, %2319
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  br label %2326

; <label>:2326                                    ; preds = %2281, %2276
  %2327 = phi float [ %2325, %2281 ], [ %821, %2276 ]
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = and i32 %2329, 128
  %2331 = icmp eq i32 %2330, 0
  br i1 %2331, label %2348, label %2332

; <label>:2332                                    ; preds = %2326
  %2333 = add i32 %34, 432
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = add i32 %2335, 0
  %2337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2337, %dx.types.Handle %77, float %2277, float %2278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 524288
  %2343 = icmp ne i32 %2342, 0
  %2344 = fcmp fast ogt float %2339, 0x3FE0101020000000
  %2345 = select i1 %2344, float 1.000000e+00, float 0.000000e+00
  %2346 = select i1 %2343, float %2345, float %2339
  %2347 = fmul fast float %2346, %2327
  br label %2348

; <label>:2348                                    ; preds = %2332, %2326
  %2349 = phi float [ %2347, %2332 ], [ %2327, %2326 ]
  %2350 = fcmp fast ult float %2349, 0x3F70101020000000
  br i1 %2350, label %2959, label %2351

; <label>:2351                                    ; preds = %2348
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 16
  %2355 = icmp eq i32 %2354, 0
  br i1 %2355, label %2554, label %2356

; <label>:2356                                    ; preds = %2351
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = add i32 %34, 384
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = add i32 %2361, 0
  %2363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2363, %dx.types.Handle %76, float %2277, float %2278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.ResRet.f32 %2364, 1
  %2367 = extractvalue %dx.types.ResRet.f32 %2364, 2
  %2368 = extractvalue %dx.types.ResRet.f32 %2364, 3
  %2369 = and i32 %2358, 255
  %2370 = uitofp i32 %2369 to float
  %2371 = lshr i32 %2358, 8
  %2372 = and i32 %2371, 255
  %2373 = uitofp i32 %2372 to float
  %2374 = fmul fast float %2368, %2370
  %2375 = fadd fast float %2374, %2373
  %2376 = fmul fast float %2375, 0x3F70101000000000
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 512
  %2380 = icmp eq i32 %2379, 0
  br i1 %2380, label %2389, label %2381

; <label>:2381                                    ; preds = %2356
  %2382 = add i32 %34, 468
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = add i32 %2384, 0
  %2386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2386, %dx.types.Handle %77, float %2277, float %2278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2388 = extractvalue %dx.types.ResRet.f32 %2387, 0
  br label %2389

; <label>:2389                                    ; preds = %2381, %2356
  %2390 = phi float [ %2388, %2381 ], [ 1.000000e+00, %2356 ]
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 33554432
  %2394 = icmp eq i32 %2393, 0
  br i1 %2394, label %2501, label %2395

; <label>:2395                                    ; preds = %2389
  %2396 = add i32 %34, 256
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = and i32 %2398, 65535
  %2400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2399)  ; LegacyF16ToF32(value)
  %2401 = lshr i32 %2398, 16
  %2402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2401)  ; LegacyF16ToF32(value)
  %2403 = add i32 %34, 260
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = and i32 %2405, 65535
  %2407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2406)  ; LegacyF16ToF32(value)
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = lshr i32 %2409, 24
  %2411 = uitofp i32 %2410 to float
  %2412 = fmul fast float %2411, 0x3F70101020000000
  %2413 = and i32 %2409, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = fmul fast float %2414, 0x3F70101020000000
  %2416 = lshr i32 %2409, 8
  %2417 = and i32 %2416, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = fmul fast float %2418, 0x3F70101020000000
  %2420 = lshr i32 %2409, 16
  %2421 = and i32 %2420, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = fmul fast float %2422, 0x3F70101020000000
  %2424 = add i32 %34, 252
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = lshr i32 %2426, 24
  %2428 = uitofp i32 %2427 to float
  %2429 = fmul fast float %2428, 0x3F70101020000000
  %2430 = and i32 %2426, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2431, 0x3F70101020000000
  %2433 = lshr i32 %2426, 8
  %2434 = and i32 %2433, 255
  %2435 = uitofp i32 %2434 to float
  %2436 = fmul fast float %2435, 0x3F70101020000000
  %2437 = lshr i32 %2426, 16
  %2438 = and i32 %2437, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3F70101020000000
  %2441 = bitcast float %2365 to i32
  %2442 = ashr i32 %2441, 1
  %2443 = sub nsw i32 1597463174, %2442
  %2444 = bitcast i32 %2443 to float
  %2445 = fmul fast float %2365, 5.000000e-01
  %2446 = fmul fast float %2444, %2444
  %2447 = fmul fast float %2446, %2445
  %2448 = fsub fast float 1.500000e+00, %2447
  %2449 = fmul fast float %2444, %2365
  %2450 = fmul fast float %2449, %2448
  %2451 = bitcast float %2366 to i32
  %2452 = ashr i32 %2451, 1
  %2453 = sub nsw i32 1597463174, %2452
  %2454 = bitcast i32 %2453 to float
  %2455 = fmul fast float %2366, 5.000000e-01
  %2456 = fmul fast float %2454, %2454
  %2457 = fmul fast float %2456, %2455
  %2458 = fsub fast float 1.500000e+00, %2457
  %2459 = fmul fast float %2454, %2366
  %2460 = fmul fast float %2459, %2458
  %2461 = bitcast float %2367 to i32
  %2462 = ashr i32 %2461, 1
  %2463 = sub nsw i32 1597463174, %2462
  %2464 = bitcast i32 %2463 to float
  %2465 = fmul fast float %2367, 5.000000e-01
  %2466 = fmul fast float %2464, %2464
  %2467 = fmul fast float %2466, %2465
  %2468 = fsub fast float 1.500000e+00, %2467
  %2469 = fmul fast float %2464, %2367
  %2470 = fmul fast float %2469, %2468
  %2471 = fsub fast float %2450, %2432
  %2472 = fsub fast float %2460, %2436
  %2473 = fsub fast float %2470, %2440
  %2474 = fmul fast float %2471, %2400
  %2475 = fmul fast float %2472, %2402
  %2476 = fmul fast float %2473, %2407
  %2477 = fadd fast float %2474, %2415
  %2478 = fadd fast float %2475, %2419
  %2479 = fadd fast float %2476, %2423
  %2480 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2481 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  %2482 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2483 = fmul fast float %2480, %2480
  %2484 = fmul fast float %2481, %2481
  %2485 = fmul fast float %2482, %2482
  %2486 = fsub fast float %2483, %2365
  %2487 = fsub fast float %2484, %2366
  %2488 = fsub fast float %2485, %2367
  %2489 = fmul fast float %2486, %2390
  %2490 = fmul fast float %2487, %2390
  %2491 = fmul fast float %2488, %2390
  %2492 = fadd fast float %2489, %2365
  %2493 = fadd fast float %2490, %2366
  %2494 = fadd fast float %2491, %2367
  %2495 = fadd fast float %2412, %2376
  %2496 = fsub fast float %2495, %2429
  %2497 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  %2498 = fsub fast float %2497, %2376
  %2499 = fmul fast float %2498, %2390
  %2500 = fadd fast float %2499, %2376
  br label %2554

; <label>:2501                                    ; preds = %2389
  %2502 = and i32 %2392, 134217728
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2538, label %2504

; <label>:2504                                    ; preds = %2501
  %2505 = call float @dx.op.unary.f32(i32 24, float %467)  ; Sqrt(value)
  %2506 = call float @dx.op.unary.f32(i32 24, float %468)  ; Sqrt(value)
  %2507 = call float @dx.op.unary.f32(i32 24, float %469)  ; Sqrt(value)
  %2508 = fadd fast float %2505, -5.000000e-01
  %2509 = fadd fast float %2506, -5.000000e-01
  %2510 = fadd fast float %2507, -5.000000e-01
  %2511 = fmul fast float %2508, %2390
  %2512 = fmul fast float %2509, %2390
  %2513 = fmul fast float %2510, %2390
  %2514 = fadd fast float %2511, 5.000000e-01
  %2515 = fadd fast float %2512, 5.000000e-01
  %2516 = fadd fast float %2513, 5.000000e-01
  %2517 = call float @dx.op.unary.f32(i32 24, float %2365)  ; Sqrt(value)
  %2518 = call float @dx.op.unary.f32(i32 24, float %2366)  ; Sqrt(value)
  %2519 = call float @dx.op.unary.f32(i32 24, float %2367)  ; Sqrt(value)
  %2520 = fmul fast float %2514, 2.000000e+00
  %2521 = fsub fast float 1.000000e+00, %2520
  %2522 = fmul fast float %2521, %2517
  %2523 = fadd fast float %2522, %2520
  %2524 = fmul fast float %2523, %2517
  %2525 = fmul fast float %2515, 2.000000e+00
  %2526 = fsub fast float 1.000000e+00, %2525
  %2527 = fmul fast float %2526, %2518
  %2528 = fadd fast float %2527, %2525
  %2529 = fmul fast float %2528, %2518
  %2530 = fmul fast float %2516, 2.000000e+00
  %2531 = fsub fast float 1.000000e+00, %2530
  %2532 = fmul fast float %2531, %2519
  %2533 = fadd fast float %2532, %2530
  %2534 = fmul fast float %2533, %2519
  %2535 = fmul fast float %2524, %2524
  %2536 = fmul fast float %2529, %2529
  %2537 = fmul fast float %2534, %2534
  br label %2554

; <label>:2538                                    ; preds = %2501
  %2539 = fmul fast float %467, %467
  %2540 = fmul fast float %468, %468
  %2541 = fmul fast float %469, %469
  %2542 = fadd fast float %2539, -1.000000e+00
  %2543 = fadd fast float %2540, -1.000000e+00
  %2544 = fadd fast float %2541, -1.000000e+00
  %2545 = fmul fast float %2390, %2542
  %2546 = fmul fast float %2390, %2543
  %2547 = fmul fast float %2390, %2544
  %2548 = fadd fast float %2545, 1.000000e+00
  %2549 = fadd fast float %2546, 1.000000e+00
  %2550 = fadd fast float %2547, 1.000000e+00
  %2551 = fmul fast float %2548, %2365
  %2552 = fmul fast float %2549, %2366
  %2553 = fmul fast float %2550, %2367
  br label %2554

; <label>:2554                                    ; preds = %2538, %2504, %2395, %2351
  %2555 = phi float [ %2500, %2395 ], [ %2376, %2504 ], [ %2376, %2538 ], [ 0x3FA23C0BE0000000, %2351 ]
  %2556 = phi float [ %2492, %2395 ], [ %2535, %2504 ], [ %2551, %2538 ], [ 1.000000e+00, %2351 ]
  %2557 = phi float [ %2493, %2395 ], [ %2536, %2504 ], [ %2552, %2538 ], [ 1.000000e+00, %2351 ]
  %2558 = phi float [ %2494, %2395 ], [ %2537, %2504 ], [ %2553, %2538 ], [ 1.000000e+00, %2351 ]
  %2559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2560 = extractvalue %dx.types.CBufRet.i32 %2559, 1
  %2561 = and i32 %2560, 1
  %2562 = icmp ne i32 %2561, 0
  %2563 = add i32 %34, 356
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 32
  %2567 = icmp ne i32 %2566, 0
  %2568 = and i1 %2562, %2567
  %2569 = select i1 %2568, float 1.000000e+00, float %2556
  %2570 = select i1 %2568, float 0x3FD3333340000000, float %2557
  %2571 = select i1 %2568, float 0x3FD3333340000000, float %2558
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 32
  %2575 = icmp eq i32 %2574, 0
  br i1 %2575, label %2648, label %2576

; <label>:2576                                    ; preds = %2554
  %2577 = add i32 %34, 124
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = add i32 %34, 400
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = add i32 %2582, 0
  %2584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2584, %dx.types.Handle %76, float %2277, float %2278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.ResRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.ResRet.f32 %2585, 2
  %2589 = extractvalue %dx.types.ResRet.f32 %2585, 3
  %2590 = and i32 %2579, 255
  %2591 = uitofp i32 %2590 to float
  %2592 = lshr i32 %2579, 8
  %2593 = and i32 %2592, 255
  %2594 = uitofp i32 %2593 to float
  %2595 = lshr i32 %2579, 16
  %2596 = and i32 %2595, 255
  %2597 = uitofp i32 %2596 to float
  %2598 = fmul fast float %2597, 0x3F70101000000000
  %2599 = fmul fast float %2586, %2591
  %2600 = fadd fast float %2599, %2594
  %2601 = fmul fast float %2600, 0x3F70101000000000
  %2602 = fadd fast float %2587, -5.000000e-01
  %2603 = fadd fast float %2589, -5.000000e-01
  %2604 = fmul fast float %2602, %2598
  %2605 = fmul fast float %2603, %2598
  %2606 = fadd fast float %2604, 5.000000e-01
  %2607 = fadd fast float %2605, 5.000000e-01
  %2608 = fmul fast float %2606, 2.000000e+00
  %2609 = fadd fast float %2608, -1.000000e+00
  %2610 = fmul fast float %2607, 2.000000e+00
  %2611 = fadd fast float %2610, -1.000000e+00
  %2612 = fadd fast float %2609, %2611
  %2613 = fmul fast float %2612, 5.000000e-01
  %2614 = fsub fast float %2609, %2611
  %2615 = fmul fast float %2614, 5.000000e-01
  %2616 = call float @dx.op.unary.f32(i32 6, float %2613)  ; FAbs(value)
  %2617 = fsub fast float 1.000000e+00, %2616
  %2618 = call float @dx.op.unary.f32(i32 6, float %2615)  ; FAbs(value)
  %2619 = fsub fast float %2617, %2618
  %2620 = call float @dx.op.dot3.f32(i32 55, float %2613, float %2615, float %2619, float %2613, float %2615, float %2619)  ; Dot3(ax,ay,az,bx,by,bz)
  %2621 = call float @dx.op.unary.f32(i32 25, float %2620)  ; Rsqrt(value)
  %2622 = fmul fast float %2613, %2621
  %2623 = fmul fast float %2615, %2621
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 67108864
  %2627 = icmp eq i32 %2626, 0
  br i1 %2627, label %2644, label %2628

; <label>:2628                                    ; preds = %2576
  %2629 = add i32 %34, 312
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 65535
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = and i32 %2635, 65535
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = lshr i32 %2631, 16
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = fsub fast float %2601, %2639
  %2641 = fmul fast float %2640, %2633
  %2642 = fadd fast float %2641, %2637
  %2643 = call float @dx.op.unary.f32(i32 7, float %2642)  ; Saturate(value)
  br label %2644

; <label>:2644                                    ; preds = %2628, %2576
  %2645 = phi float [ %2643, %2628 ], [ %2601, %2576 ]
  %2646 = call float @dx.op.dot2.f32(i32 54, float %2622, float %2623, float %2181, float %2182)  ; Dot2(ax,ay,bx,by)
  %2647 = call float @dx.op.dot2.f32(i32 54, float %2622, float %2623, float %2183, float %2184)  ; Dot2(ax,ay,bx,by)
  br label %2648

; <label>:2648                                    ; preds = %2644, %2554
  %2649 = phi float [ %2645, %2644 ], [ 0x3FD6666660000000, %2554 ]
  %2650 = phi float [ %2646, %2644 ], [ 0.000000e+00, %2554 ]
  %2651 = phi float [ %2647, %2644 ], [ 0.000000e+00, %2554 ]
  %2652 = phi float [ %2588, %2644 ], [ 1.000000e+00, %2554 ]
  %2653 = add i32 %34, 192
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = lshr i32 %2655, 22
  %2657 = shl nuw nsw i32 %2656, 5
  %2658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2657)  ; LegacyF16ToF32(value)
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 64
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2696, label %2663

; <label>:2663                                    ; preds = %2648
  %2664 = add i32 %34, 416
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = add i32 %2666, 0
  %2668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = and i32 %2670, 131072
  %2672 = icmp eq i32 %2671, 0
  %2673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2668, %dx.types.Handle %76, float %2277, float %2278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2674 = extractvalue %dx.types.ResRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.ResRet.f32 %2673, 1
  %2676 = extractvalue %dx.types.ResRet.f32 %2673, 2
  %2677 = fmul fast float %450, %2674
  %2678 = fmul fast float %451, %2675
  %2679 = fmul fast float %452, %2676
  br i1 %2672, label %2686, label %2680

; <label>:2680                                    ; preds = %2663
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = fmul fast float %2682, %2677
  %2684 = fmul fast float %2682, %2678
  %2685 = fmul fast float %2682, %2679
  br label %2686

; <label>:2686                                    ; preds = %2680, %2663
  %2687 = phi float [ %2683, %2680 ], [ %2677, %2663 ]
  %2688 = phi float [ %2684, %2680 ], [ %2678, %2663 ]
  %2689 = phi float [ %2685, %2680 ], [ %2679, %2663 ]
  %2690 = fmul fast float %2687, %2658
  %2691 = select i1 %219, float %2690, float %2687
  %2692 = call float @dx.op.dot3.f32(i32 55, float %2691, float %2688, float %2689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2693 = select i1 %219, float 0.000000e+00, float %2687
  %2694 = select i1 %219, float %2692, float %2688
  %2695 = select i1 %219, float 0.000000e+00, float %2689
  br label %2696

; <label>:2696                                    ; preds = %2686, %2648
  %2697 = phi float [ %2693, %2686 ], [ 0.000000e+00, %2648 ]
  %2698 = phi float [ %2694, %2686 ], [ 0.000000e+00, %2648 ]
  %2699 = phi float [ %2695, %2686 ], [ 0.000000e+00, %2648 ]
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 30720
  %2703 = icmp eq i32 %2702, 0
  br i1 %2703, label %2743, label %2704

; <label>:2704                                    ; preds = %2696
  %2705 = add i32 %34, 484
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = add i32 %2707, 0
  %2709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2708, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2710 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2709, %dx.types.Handle %77, float %2277, float %2278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2711 = extractvalue %dx.types.ResRet.f32 %2710, 2
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 1048576
  %2715 = icmp ne i32 %2714, 0
  %2716 = select i1 %2715, float 1.000000e+00, float %2711
  %2717 = and i32 %2713, 16384
  %2718 = icmp eq i32 %2717, 0
  br i1 %2718, label %2729, label %2719

; <label>:2719                                    ; preds = %2704
  %2720 = extractvalue %dx.types.ResRet.f32 %2710, 0
  %2721 = add i32 %34, 128
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = lshr i32 %2723, 24
  %2725 = uitofp i32 %2724 to float
  %2726 = fmul fast float %2720, 0x3F70101020000000
  %2727 = select i1 %2715, float 0x3F70101020000000, float %2726
  %2728 = fmul fast float %2727, %2725
  br label %2729

; <label>:2729                                    ; preds = %2719, %2704
  %2730 = phi float [ %2728, %2719 ], [ 0.000000e+00, %2704 ]
  %2731 = and i32 %2713, 4096
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %2743, label %2733

; <label>:2733                                    ; preds = %2729
  %2734 = add i32 %34, 196
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = and i32 %2736, 65535
  %2738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2737)  ; LegacyF16ToF32(value)
  %2739 = lshr i32 %2736, 16
  %2740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2739)  ; LegacyF16ToF32(value)
  %2741 = fmul fast float %2738, %2716
  %2742 = fadd fast float %2741, %2740
  br label %2743

; <label>:2743                                    ; preds = %2733, %2729, %2696
  %2744 = phi float [ %2730, %2733 ], [ %2730, %2729 ], [ 0.000000e+00, %2696 ]
  %2745 = phi float [ %2742, %2733 ], [ 0.000000e+00, %2729 ], [ 0.000000e+00, %2696 ]
  %2746 = add i32 %34, 128
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 255
  %2750 = uitofp i32 %2749 to float
  %2751 = lshr i32 %2748, 8
  %2752 = and i32 %2751, 255
  %2753 = uitofp i32 %2752 to float
  %2754 = call float @dx.op.dot3.f32(i32 55, float %2569, float %2570, float %2571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2755 = fmul fast float %2753, %2754
  %2756 = fadd fast float %2755, %2750
  %2757 = fmul fast float %2756, 0x3F70101020000000
  %2758 = call float @dx.op.unary.f32(i32 7, float %2757)  ; Saturate(value)
  br i1 %2170, label %2759, label %2767

; <label>:2759                                    ; preds = %2743
  %2760 = fsub fast float 1.000000e+00, %2349
  %2761 = fmul fast float %2760, %2157
  %2762 = fmul fast float %2760, %2158
  %2763 = fmul fast float %2760, %2159
  %2764 = fmul fast float %2760, %2160
  %2765 = fmul fast float %2760, %2161
  %2766 = fmul fast float %2760, %2162
  br label %2767

; <label>:2767                                    ; preds = %2759, %2743
  %2768 = phi float [ %2761, %2759 ], [ %2157, %2743 ]
  %2769 = phi float [ %2762, %2759 ], [ %2158, %2743 ]
  %2770 = phi float [ %2763, %2759 ], [ %2159, %2743 ]
  %2771 = phi float [ %2764, %2759 ], [ %2160, %2743 ]
  %2772 = phi float [ %2765, %2759 ], [ %2161, %2743 ]
  %2773 = phi float [ %2766, %2759 ], [ %2162, %2743 ]
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = and i32 %2775, 3
  %2777 = icmp eq i32 %2776, 3
  br i1 %2777, label %2856, label %2778

; <label>:2778                                    ; preds = %2767
  %2779 = and i32 %2775, 16
  %2780 = icmp ne i32 %2779, 0
  %2781 = select i1 %2780, float %2349, float 0.000000e+00
  %2782 = icmp eq i32 %2776, 0
  br i1 %2782, label %2783, label %2811

; <label>:2783                                    ; preds = %2778
  %2784 = and i32 %2775, 64
  %2785 = icmp ne i32 %2784, 0
  %2786 = select i1 %2785, float %2349, float 0.000000e+00
  %2787 = fsub fast float %2569, %2768
  %2788 = fsub fast float %2570, %2769
  %2789 = fsub fast float %2571, %2770
  %2790 = fmul fast float %2781, %2787
  %2791 = fmul fast float %2781, %2788
  %2792 = fmul fast float %2781, %2789
  %2793 = fadd fast float %2790, %2768
  %2794 = fadd fast float %2791, %2769
  %2795 = fadd fast float %2792, %2770
  %2796 = fsub fast float %2555, %2163
  %2797 = fmul fast float %2781, %2796
  %2798 = fadd fast float %2797, %2163
  %2799 = fsub fast float %2697, %2771
  %2800 = fsub fast float %2698, %2772
  %2801 = fsub fast float %2699, %2773
  %2802 = fmul fast float %2786, %2799
  %2803 = fmul fast float %2786, %2800
  %2804 = fmul fast float %2786, %2801
  %2805 = fadd fast float %2802, %2771
  %2806 = fadd fast float %2803, %2772
  %2807 = fadd fast float %2804, %2773
  %2808 = fsub fast float %2758, %2168
  %2809 = fmul fast float %2781, %2808
  %2810 = fadd fast float %2809, %2168
  br label %2856

; <label>:2811                                    ; preds = %2778
  %2812 = icmp eq i32 %2776, 1
  br i1 %2812, label %2813, label %2826

; <label>:2813                                    ; preds = %2811
  %2814 = fadd fast float %2569, -1.000000e+00
  %2815 = fadd fast float %2570, -1.000000e+00
  %2816 = fadd fast float %2571, -1.000000e+00
  %2817 = fmul fast float %2781, %2814
  %2818 = fmul fast float %2781, %2815
  %2819 = fmul fast float %2781, %2816
  %2820 = fadd fast float %2817, 1.000000e+00
  %2821 = fadd fast float %2818, 1.000000e+00
  %2822 = fadd fast float %2819, 1.000000e+00
  %2823 = fmul fast float %2820, %2768
  %2824 = fmul fast float %2821, %2769
  %2825 = fmul fast float %2822, %2770
  br label %2856

; <label>:2826                                    ; preds = %2811
  %2827 = icmp eq i32 %2776, 2
  br i1 %2827, label %2828, label %2856

; <label>:2828                                    ; preds = %2826
  %2829 = call float @dx.op.unary.f32(i32 24, float %2569)  ; Sqrt(value)
  %2830 = call float @dx.op.unary.f32(i32 24, float %2570)  ; Sqrt(value)
  %2831 = call float @dx.op.unary.f32(i32 24, float %2571)  ; Sqrt(value)
  %2832 = fadd fast float %2829, -5.000000e-01
  %2833 = fadd fast float %2830, -5.000000e-01
  %2834 = fadd fast float %2831, -5.000000e-01
  %2835 = fmul fast float %2832, %2781
  %2836 = fmul fast float %2833, %2781
  %2837 = fmul fast float %2834, %2781
  %2838 = fadd fast float %2835, 5.000000e-01
  %2839 = fadd fast float %2836, 5.000000e-01
  %2840 = fadd fast float %2837, 5.000000e-01
  %2841 = fmul fast float %2838, 2.000000e+00
  %2842 = fsub fast float 1.000000e+00, %2841
  %2843 = fmul fast float %2842, %2768
  %2844 = fadd fast float %2843, %2841
  %2845 = fmul fast float %2844, %2768
  %2846 = fmul fast float %2839, 2.000000e+00
  %2847 = fsub fast float 1.000000e+00, %2846
  %2848 = fmul fast float %2847, %2769
  %2849 = fadd fast float %2848, %2846
  %2850 = fmul fast float %2849, %2769
  %2851 = fmul fast float %2840, 2.000000e+00
  %2852 = fsub fast float 1.000000e+00, %2851
  %2853 = fmul fast float %2852, %2770
  %2854 = fadd fast float %2853, %2851
  %2855 = fmul fast float %2854, %2770
  br label %2856

; <label>:2856                                    ; preds = %2828, %2826, %2813, %2783, %2767
  %2857 = phi float [ %2768, %2767 ], [ %2845, %2828 ], [ %2768, %2826 ], [ %2823, %2813 ], [ %2793, %2783 ]
  %2858 = phi float [ %2769, %2767 ], [ %2850, %2828 ], [ %2769, %2826 ], [ %2824, %2813 ], [ %2794, %2783 ]
  %2859 = phi float [ %2770, %2767 ], [ %2855, %2828 ], [ %2770, %2826 ], [ %2825, %2813 ], [ %2795, %2783 ]
  %2860 = phi float [ %2771, %2767 ], [ %2771, %2828 ], [ %2771, %2826 ], [ %2771, %2813 ], [ %2805, %2783 ]
  %2861 = phi float [ %2772, %2767 ], [ %2772, %2828 ], [ %2772, %2826 ], [ %2772, %2813 ], [ %2806, %2783 ]
  %2862 = phi float [ %2773, %2767 ], [ %2773, %2828 ], [ %2773, %2826 ], [ %2773, %2813 ], [ %2807, %2783 ]
  %2863 = phi float [ %2163, %2767 ], [ %2163, %2828 ], [ %2163, %2826 ], [ %2163, %2813 ], [ %2798, %2783 ]
  %2864 = phi float [ %2168, %2767 ], [ %2168, %2828 ], [ %2168, %2826 ], [ %2168, %2813 ], [ %2810, %2783 ]
  %2865 = and i32 %2775, 12
  %2866 = icmp eq i32 %2865, 12
  br i1 %2866, label %2959, label %2867

; <label>:2867                                    ; preds = %2856
  %2868 = and i32 %2775, 2097184
  %2869 = icmp eq i32 %2868, 2097184
  %2870 = select i1 %2869, float %2349, float 0.000000e+00
  %2871 = and i32 %2775, 4194336
  %2872 = icmp eq i32 %2871, 4194336
  %2873 = select i1 %2872, float %2349, float 0.000000e+00
  %2874 = and i32 %2775, 8388640
  %2875 = icmp eq i32 %2874, 8388640
  %2876 = select i1 %2875, float %2349, float 0.000000e+00
  %2877 = and i32 %2775, 4096
  %2878 = icmp ne i32 %2877, 0
  %2879 = select i1 %2878, float %2349, float 0.000000e+00
  %2880 = and i32 %2775, 16384
  %2881 = icmp ne i32 %2880, 0
  %2882 = select i1 %2881, float %2349, float 0.000000e+00
  %2883 = icmp eq i32 %2865, 0
  br i1 %2883, label %2884, label %2903

; <label>:2884                                    ; preds = %2867
  %2885 = fsub fast float %2650, %2155
  %2886 = fsub fast float %2651, %2156
  %2887 = fmul fast float %2870, %2885
  %2888 = fmul fast float %2870, %2886
  %2889 = fadd fast float %2887, %2155
  %2890 = fadd fast float %2888, %2156
  %2891 = fsub fast float %2652, %2165
  %2892 = fmul fast float %2873, %2891
  %2893 = fadd fast float %2892, %2165
  %2894 = fsub fast float %2649, %2164
  %2895 = fmul fast float %2876, %2894
  %2896 = fadd fast float %2895, %2164
  %2897 = fsub fast float %2745, %2166
  %2898 = fmul fast float %2879, %2897
  %2899 = fadd fast float %2898, %2166
  %2900 = fsub fast float %2744, %2167
  %2901 = fmul fast float %2882, %2900
  %2902 = fadd fast float %2901, %2167
  br label %2959

; <label>:2903                                    ; preds = %2867
  %2904 = icmp eq i32 %2865, 4
  br i1 %2904, label %2905, label %2941

; <label>:2905                                    ; preds = %2903
  %2906 = fmul fast float %2870, %2650
  %2907 = fmul fast float %2870, %2651
  %2908 = fadd fast float %2906, %2155
  %2909 = fadd fast float %2907, %2156
  %2910 = call float @dx.op.binary.f32(i32 36, float %2165, float %2652)  ; FMin(a,b)
  %2911 = fsub fast float %2910, %2165
  %2912 = fmul fast float %2911, %2873
  %2913 = fadd fast float %2912, %2165
  %2914 = fadd fast float %2649, %2164
  %2915 = fmul fast float %2914, 0x3FF337FAE0000000
  %2916 = fmul fast float %2164, %2164
  %2917 = fmul fast float %2649, %2649
  %2918 = fadd fast float %2917, %2916
  %2919 = fmul fast float %2918, 0x3FE5152B00000000
  %2920 = fmul fast float %2164, 0xBFCC1F85E0000000
  %2921 = fmul fast float %2920, %2649
  %2922 = fadd fast float %2921, 0xBFE1363700000000
  %2923 = fadd fast float %2922, %2915
  %2924 = fsub fast float %2923, %2919
  %2925 = fmul fast float %2914, 0x3FBA6F0D00000000
  %2926 = fmul fast float %2918, 0x3FD0432880000000
  %2927 = fmul fast float %2164, 0xBFEF110800000000
  %2928 = fmul fast float %2927, %2649
  %2929 = fadd fast float %2928, 1.000000e+00
  %2930 = fsub fast float %2929, %2925
  %2931 = fadd fast float %2930, %2926
  %2932 = fdiv fast float %2924, %2931
  %2933 = call float @dx.op.unary.f32(i32 7, float %2932)  ; Saturate(value)
  %2934 = fsub fast float %2933, %2164
  %2935 = fmul fast float %2934, %2876
  %2936 = fadd fast float %2935, %2164
  %2937 = fmul fast float %2879, %2745
  %2938 = fadd fast float %2937, %2166
  %2939 = fmul fast float %2882, %2744
  %2940 = fadd fast float %2939, %2167
  br label %2959

; <label>:2941                                    ; preds = %2903
  %2942 = icmp eq i32 %2865, 8
  br i1 %2942, label %2943, label %2959

; <label>:2943                                    ; preds = %2941
  %2944 = fmul fast float %2870, %2650
  %2945 = fmul fast float %2870, %2651
  %2946 = fadd fast float %2944, %2155
  %2947 = fadd fast float %2945, %2156
  %2948 = call float @dx.op.binary.f32(i32 36, float %2165, float %2652)  ; FMin(a,b)
  %2949 = fsub fast float %2948, %2165
  %2950 = fmul fast float %2949, %2873
  %2951 = fadd fast float %2950, %2165
  %2952 = fsub fast float %2649, %2164
  %2953 = fmul fast float %2876, %2952
  %2954 = fadd fast float %2953, %2164
  %2955 = fmul fast float %2879, %2745
  %2956 = fadd fast float %2955, %2166
  %2957 = fmul fast float %2882, %2744
  %2958 = fadd fast float %2957, %2167
  br label %2959

; <label>:2959                                    ; preds = %2943, %2941, %2905, %2884, %2856, %2348, %2169, %2154
  %2960 = phi float [ %2155, %2856 ], [ %2155, %2348 ], [ %2155, %2154 ], [ %2946, %2943 ], [ %2155, %2941 ], [ %2908, %2905 ], [ %2889, %2884 ], [ %2155, %2169 ]
  %2961 = phi float [ %2156, %2856 ], [ %2156, %2348 ], [ %2156, %2154 ], [ %2947, %2943 ], [ %2156, %2941 ], [ %2909, %2905 ], [ %2890, %2884 ], [ %2156, %2169 ]
  %2962 = phi float [ %2857, %2856 ], [ %2157, %2348 ], [ %2157, %2154 ], [ %2857, %2943 ], [ %2857, %2941 ], [ %2857, %2905 ], [ %2857, %2884 ], [ %2157, %2169 ]
  %2963 = phi float [ %2858, %2856 ], [ %2158, %2348 ], [ %2158, %2154 ], [ %2858, %2943 ], [ %2858, %2941 ], [ %2858, %2905 ], [ %2858, %2884 ], [ %2158, %2169 ]
  %2964 = phi float [ %2859, %2856 ], [ %2159, %2348 ], [ %2159, %2154 ], [ %2859, %2943 ], [ %2859, %2941 ], [ %2859, %2905 ], [ %2859, %2884 ], [ %2159, %2169 ]
  %2965 = phi float [ %2860, %2856 ], [ %2160, %2348 ], [ %2160, %2154 ], [ %2860, %2943 ], [ %2860, %2941 ], [ %2860, %2905 ], [ %2860, %2884 ], [ %2160, %2169 ]
  %2966 = phi float [ %2861, %2856 ], [ %2161, %2348 ], [ %2161, %2154 ], [ %2861, %2943 ], [ %2861, %2941 ], [ %2861, %2905 ], [ %2861, %2884 ], [ %2161, %2169 ]
  %2967 = phi float [ %2862, %2856 ], [ %2162, %2348 ], [ %2162, %2154 ], [ %2862, %2943 ], [ %2862, %2941 ], [ %2862, %2905 ], [ %2862, %2884 ], [ %2162, %2169 ]
  %2968 = phi float [ %2863, %2856 ], [ %2163, %2348 ], [ %2163, %2154 ], [ %2863, %2943 ], [ %2863, %2941 ], [ %2863, %2905 ], [ %2863, %2884 ], [ %2163, %2169 ]
  %2969 = phi float [ %2164, %2856 ], [ %2164, %2348 ], [ %2164, %2154 ], [ %2954, %2943 ], [ %2164, %2941 ], [ %2936, %2905 ], [ %2896, %2884 ], [ %2164, %2169 ]
  %2970 = phi float [ %2165, %2856 ], [ %2165, %2348 ], [ %2165, %2154 ], [ %2951, %2943 ], [ %2165, %2941 ], [ %2913, %2905 ], [ %2893, %2884 ], [ %2165, %2169 ]
  %2971 = phi float [ %2166, %2856 ], [ %2166, %2348 ], [ %2166, %2154 ], [ %2956, %2943 ], [ %2166, %2941 ], [ %2938, %2905 ], [ %2899, %2884 ], [ %2166, %2169 ]
  %2972 = phi float [ %2167, %2856 ], [ %2167, %2348 ], [ %2167, %2154 ], [ %2958, %2943 ], [ %2167, %2941 ], [ %2940, %2905 ], [ %2902, %2884 ], [ %2167, %2169 ]
  %2973 = phi float [ %2864, %2856 ], [ %2168, %2348 ], [ %2168, %2154 ], [ %2864, %2943 ], [ %2864, %2941 ], [ %2864, %2905 ], [ %2864, %2884 ], [ %2168, %2169 ]
  br i1 %609, label %3764, label %2974

; <label>:2974                                    ; preds = %2959
  %2975 = icmp ult i32 %835, 4
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = add i32 %34, 76
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = or i32 %2980, %2977
  %2982 = icmp eq i32 %2981, 0
  br i1 %2982, label %3764, label %2983

; <label>:2983                                    ; preds = %2974
  %2984 = and i32 %2977, 262144
  %2985 = icmp ne i32 %2984, 0
  %2986 = select i1 %2985, float %41, float 1.000000e+00
  %2987 = select i1 %2985, float %42, float 0.000000e+00
  %2988 = select i1 %2985, float %43, float 0.000000e+00
  %2989 = select i1 %2985, float %44, float 1.000000e+00
  %2990 = select i1 %2985, float %45, float %68
  %2991 = select i1 %2985, float %46, float %69
  %2992 = add i32 %34, 332
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = lshr i32 %2994, 16
  %2996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2995)  ; LegacyF16ToF32(value)
  %2997 = fmul fast float %2996, 0x3F50624DE0000000
  %2998 = add i32 %34, 136
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = lshr i32 %3000, 16
  %3002 = and i32 %3001, 255
  %3003 = lshr i32 %3000, 24
  %3004 = add i32 %34, 340
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = and i32 %3006, 65535
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = lshr i32 %3006, 16
  %3010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3009)  ; LegacyF16ToF32(value)
  %3011 = add i32 %34, 80
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = lshr i32 %3013, 22
  %3015 = shl nuw nsw i32 %3014, 5
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = shl i32 %3013, 4
  %3018 = and i32 %3017, 32752
  %3019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3018)  ; LegacyF16ToF32(value)
  %3020 = lshr i32 %3013, 7
  %3021 = and i32 %3020, 32752
  %3022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3021)  ; LegacyF16ToF32(value)
  %3023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3023, 3
  %3025 = fmul fast float %3024, 1.000000e+03
  %3026 = fmul fast float %3025, %598
  %3027 = call float @dx.op.unary.f32(i32 22, float %3026)  ; Frc(value)
  %3028 = fadd fast float %3027, %586
  %3029 = fmul fast float %3025, %600
  %3030 = call float @dx.op.unary.f32(i32 22, float %3029)  ; Frc(value)
  %3031 = fadd fast float %3030, %587
  %3032 = fmul fast float %2997, %3025
  %3033 = call float @dx.op.unary.f32(i32 22, float %3032)  ; Frc(value)
  %3034 = fmul fast float %3033, 0x401921FB60000000
  %3035 = fadd fast float %3034, %3016
  %3036 = call float @dx.op.unary.f32(i32 13, float %3035)  ; Sin(value)
  %3037 = call float @dx.op.unary.f32(i32 12, float %3035)  ; Cos(value)
  %3038 = fsub fast float -0.000000e+00, %3036
  %3039 = fadd fast float %2990, -5.000000e-01
  %3040 = fadd fast float %2991, -5.000000e-01
  %3041 = fmul fast float %3008, %3039
  %3042 = fmul fast float %3010, %3040
  %3043 = fadd fast float %3041, 5.000000e-01
  %3044 = fadd fast float %3042, 5.000000e-01
  %3045 = fmul fast float %3019, %3043
  %3046 = fmul fast float %3022, %3044
  %3047 = fmul fast float %3037, %3045
  %3048 = call float @dx.op.tertiary.f32(i32 46, float %3038, float %3046, float %3047)  ; FMad(a,b,c)
  %3049 = fmul fast float %3036, %3045
  %3050 = call float @dx.op.tertiary.f32(i32 46, float %3037, float %3046, float %3049)  ; FMad(a,b,c)
  %3051 = fadd fast float %3028, %3048
  %3052 = fadd fast float %3031, %3050
  %3053 = icmp ugt i32 %3002, 1
  %3054 = icmp ugt i32 %3000, 33554431
  %3055 = or i1 %3054, %3053
  br i1 %3055, label %3056, label %3081

; <label>:3056                                    ; preds = %2983
  %3057 = add i32 %34, 276
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = lshr i32 %3059, 16
  %3061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3060)  ; LegacyF16ToF32(value)
  %3062 = fmul fast float %3024, %3061
  %3063 = call float @dx.op.unary.f32(i32 22, float %3062)  ; Frc(value)
  %3064 = mul nuw nsw i32 %3002, %3003
  %3065 = uitofp i32 %3064 to float
  %3066 = fmul fast float %3063, %3065
  %3067 = call float @dx.op.unary.f32(i32 27, float %3066)  ; Round_ni(value)
  %3068 = fptoui float %3067 to i32
  %3069 = urem i32 %3068, %3002
  %3070 = udiv i32 %3068, %3003
  %3071 = call float @dx.op.unary.f32(i32 22, float %3051)  ; Frc(value)
  %3072 = call float @dx.op.unary.f32(i32 22, float %3052)  ; Frc(value)
  %3073 = uitofp i32 %3069 to float
  %3074 = uitofp i32 %3070 to float
  %3075 = fadd fast float %3071, %3073
  %3076 = fadd fast float %3072, %3074
  %3077 = uitofp i32 %3002 to float
  %3078 = uitofp i32 %3003 to float
  %3079 = fdiv fast float %3075, %3077
  %3080 = fdiv fast float %3076, %3078
  br label %3081

; <label>:3081                                    ; preds = %3056, %2983
  %3082 = phi float [ %3079, %3056 ], [ %3051, %2983 ]
  %3083 = phi float [ %3080, %3056 ], [ %3052, %2983 ]
  %3084 = and i32 %2977, 256
  %3085 = icmp eq i32 %3084, 0
  br i1 %3085, label %3131, label %3086

; <label>:3086                                    ; preds = %3081
  %3087 = add i32 %34, 452
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = add i32 %3089, 0
  %3091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3091, %dx.types.Handle %77, float %3082, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3093 = extractvalue %dx.types.ResRet.f32 %3092, 0
  %3094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3095 = extractvalue %dx.types.ResRet.i32 %3094, 0
  %3096 = shl i32 %3095, 4
  %3097 = and i32 %3096, 32752
  %3098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3097)  ; LegacyF16ToF32(value)
  %3099 = lshr i32 %3095, 7
  %3100 = and i32 %3099, 32752
  %3101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3100)  ; LegacyF16ToF32(value)
  %3102 = fsub fast float 1.000000e+00, %830
  %3103 = call float @dx.op.binary.f32(i32 35, float %3102, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3104 = bitcast float %830 to i32
  %3105 = sitofp i32 %3104 to float
  %3106 = fadd fast float %3105, 0xC1CFBF8940000000
  %3107 = fmul fast float %3101, %3106
  %3108 = fadd fast float %3107, 0x41CFBF8940000000
  %3109 = fptosi float %3108 to i32
  %3110 = bitcast i32 %3109 to float
  %3111 = bitcast float %3103 to i32
  %3112 = sitofp i32 %3111 to float
  %3113 = fadd fast float %3112, 0xC1CFBF8940000000
  %3114 = fmul fast float %3113, %3101
  %3115 = fadd fast float %3114, 0x41CFBF8940000000
  %3116 = fptosi float %3115 to i32
  %3117 = bitcast i32 %3116 to float
  %3118 = fmul fast float %3110, %3098
  %3119 = fmul fast float %3117, %3098
  %3120 = fsub fast float %3103, %3118
  %3121 = fadd fast float %3119, %3103
  %3122 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  %3123 = call float @dx.op.unary.f32(i32 7, float %3121)  ; Saturate(value)
  %3124 = fsub fast float %3093, %3122
  %3125 = fsub fast float %3123, %3122
  %3126 = bitcast float %3125 to i32
  %3127 = sub nsw i32 2129859010, %3126
  %3128 = bitcast i32 %3127 to float
  %3129 = fmul fast float %3128, %3124
  %3130 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  br label %3131

; <label>:3131                                    ; preds = %3086, %3081
  %3132 = phi float [ %3130, %3086 ], [ %830, %3081 ]
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = and i32 %3134, 128
  %3136 = icmp eq i32 %3135, 0
  br i1 %3136, label %3153, label %3137

; <label>:3137                                    ; preds = %3131
  %3138 = add i32 %34, 436
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %3140, 0
  %3142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3142, %dx.types.Handle %77, float %3082, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 524288
  %3148 = icmp ne i32 %3147, 0
  %3149 = fcmp fast ogt float %3144, 0x3FE0101020000000
  %3150 = select i1 %3149, float 1.000000e+00, float 0.000000e+00
  %3151 = select i1 %3148, float %3150, float %3144
  %3152 = fmul fast float %3151, %3132
  br label %3153

; <label>:3153                                    ; preds = %3137, %3131
  %3154 = phi float [ %3152, %3137 ], [ %3132, %3131 ]
  %3155 = fcmp fast ult float %3154, 0x3F70101020000000
  br i1 %3155, label %3764, label %3156

; <label>:3156                                    ; preds = %3153
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = and i32 %3158, 16
  %3160 = icmp eq i32 %3159, 0
  br i1 %3160, label %3359, label %3161

; <label>:3161                                    ; preds = %3156
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = add i32 %34, 388
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = add i32 %3166, 0
  %3168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3168, %dx.types.Handle %76, float %3082, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.ResRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.ResRet.f32 %3169, 2
  %3173 = extractvalue %dx.types.ResRet.f32 %3169, 3
  %3174 = and i32 %3163, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = lshr i32 %3163, 8
  %3177 = and i32 %3176, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3173, %3175
  %3180 = fadd fast float %3179, %3178
  %3181 = fmul fast float %3180, 0x3F70101000000000
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = and i32 %3183, 512
  %3185 = icmp eq i32 %3184, 0
  br i1 %3185, label %3194, label %3186

; <label>:3186                                    ; preds = %3161
  %3187 = add i32 %34, 472
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = add i32 %3189, 0
  %3191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3191, %dx.types.Handle %77, float %3082, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3193 = extractvalue %dx.types.ResRet.f32 %3192, 0
  br label %3194

; <label>:3194                                    ; preds = %3186, %3161
  %3195 = phi float [ %3193, %3186 ], [ 1.000000e+00, %3161 ]
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 33554432
  %3199 = icmp eq i32 %3198, 0
  br i1 %3199, label %3306, label %3200

; <label>:3200                                    ; preds = %3194
  %3201 = add i32 %34, 272
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = and i32 %3203, 65535
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = lshr i32 %3203, 16
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206)  ; LegacyF16ToF32(value)
  %3208 = add i32 %34, 276
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 65535
  %3212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3211)  ; LegacyF16ToF32(value)
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = lshr i32 %3214, 24
  %3216 = uitofp i32 %3215 to float
  %3217 = fmul fast float %3216, 0x3F70101020000000
  %3218 = and i32 %3214, 255
  %3219 = uitofp i32 %3218 to float
  %3220 = fmul fast float %3219, 0x3F70101020000000
  %3221 = lshr i32 %3214, 8
  %3222 = and i32 %3221, 255
  %3223 = uitofp i32 %3222 to float
  %3224 = fmul fast float %3223, 0x3F70101020000000
  %3225 = lshr i32 %3214, 16
  %3226 = and i32 %3225, 255
  %3227 = uitofp i32 %3226 to float
  %3228 = fmul fast float %3227, 0x3F70101020000000
  %3229 = add i32 %34, 268
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = lshr i32 %3231, 24
  %3233 = uitofp i32 %3232 to float
  %3234 = fmul fast float %3233, 0x3F70101020000000
  %3235 = and i32 %3231, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = fmul fast float %3236, 0x3F70101020000000
  %3238 = lshr i32 %3231, 8
  %3239 = and i32 %3238, 255
  %3240 = uitofp i32 %3239 to float
  %3241 = fmul fast float %3240, 0x3F70101020000000
  %3242 = lshr i32 %3231, 16
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = fmul fast float %3244, 0x3F70101020000000
  %3246 = bitcast float %3170 to i32
  %3247 = ashr i32 %3246, 1
  %3248 = sub nsw i32 1597463174, %3247
  %3249 = bitcast i32 %3248 to float
  %3250 = fmul fast float %3170, 5.000000e-01
  %3251 = fmul fast float %3249, %3249
  %3252 = fmul fast float %3251, %3250
  %3253 = fsub fast float 1.500000e+00, %3252
  %3254 = fmul fast float %3249, %3170
  %3255 = fmul fast float %3254, %3253
  %3256 = bitcast float %3171 to i32
  %3257 = ashr i32 %3256, 1
  %3258 = sub nsw i32 1597463174, %3257
  %3259 = bitcast i32 %3258 to float
  %3260 = fmul fast float %3171, 5.000000e-01
  %3261 = fmul fast float %3259, %3259
  %3262 = fmul fast float %3261, %3260
  %3263 = fsub fast float 1.500000e+00, %3262
  %3264 = fmul fast float %3259, %3171
  %3265 = fmul fast float %3264, %3263
  %3266 = bitcast float %3172 to i32
  %3267 = ashr i32 %3266, 1
  %3268 = sub nsw i32 1597463174, %3267
  %3269 = bitcast i32 %3268 to float
  %3270 = fmul fast float %3172, 5.000000e-01
  %3271 = fmul fast float %3269, %3269
  %3272 = fmul fast float %3271, %3270
  %3273 = fsub fast float 1.500000e+00, %3272
  %3274 = fmul fast float %3269, %3172
  %3275 = fmul fast float %3274, %3273
  %3276 = fsub fast float %3255, %3237
  %3277 = fsub fast float %3265, %3241
  %3278 = fsub fast float %3275, %3245
  %3279 = fmul fast float %3276, %3205
  %3280 = fmul fast float %3277, %3207
  %3281 = fmul fast float %3278, %3212
  %3282 = fadd fast float %3279, %3220
  %3283 = fadd fast float %3280, %3224
  %3284 = fadd fast float %3281, %3228
  %3285 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3286 = call float @dx.op.unary.f32(i32 7, float %3283)  ; Saturate(value)
  %3287 = call float @dx.op.unary.f32(i32 7, float %3284)  ; Saturate(value)
  %3288 = fmul fast float %3285, %3285
  %3289 = fmul fast float %3286, %3286
  %3290 = fmul fast float %3287, %3287
  %3291 = fsub fast float %3288, %3170
  %3292 = fsub fast float %3289, %3171
  %3293 = fsub fast float %3290, %3172
  %3294 = fmul fast float %3291, %3195
  %3295 = fmul fast float %3292, %3195
  %3296 = fmul fast float %3293, %3195
  %3297 = fadd fast float %3294, %3170
  %3298 = fadd fast float %3295, %3171
  %3299 = fadd fast float %3296, %3172
  %3300 = fadd fast float %3217, %3181
  %3301 = fsub fast float %3300, %3234
  %3302 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3303 = fsub fast float %3302, %3181
  %3304 = fmul fast float %3303, %3195
  %3305 = fadd fast float %3304, %3181
  br label %3359

; <label>:3306                                    ; preds = %3194
  %3307 = and i32 %3197, 134217728
  %3308 = icmp eq i32 %3307, 0
  br i1 %3308, label %3343, label %3309

; <label>:3309                                    ; preds = %3306
  %3310 = call float @dx.op.unary.f32(i32 24, float %574)  ; Sqrt(value)
  %3311 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %3312 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  %3313 = fadd fast float %3310, -5.000000e-01
  %3314 = fadd fast float %3311, -5.000000e-01
  %3315 = fadd fast float %3312, -5.000000e-01
  %3316 = fmul fast float %3313, %3195
  %3317 = fmul fast float %3314, %3195
  %3318 = fmul fast float %3315, %3195
  %3319 = fadd fast float %3316, 5.000000e-01
  %3320 = fadd fast float %3317, 5.000000e-01
  %3321 = fadd fast float %3318, 5.000000e-01
  %3322 = call float @dx.op.unary.f32(i32 24, float %3170)  ; Sqrt(value)
  %3323 = call float @dx.op.unary.f32(i32 24, float %3171)  ; Sqrt(value)
  %3324 = call float @dx.op.unary.f32(i32 24, float %3172)  ; Sqrt(value)
  %3325 = fmul fast float %3319, 2.000000e+00
  %3326 = fsub fast float 1.000000e+00, %3325
  %3327 = fmul fast float %3326, %3322
  %3328 = fadd fast float %3327, %3325
  %3329 = fmul fast float %3328, %3322
  %3330 = fmul fast float %3320, 2.000000e+00
  %3331 = fsub fast float 1.000000e+00, %3330
  %3332 = fmul fast float %3331, %3323
  %3333 = fadd fast float %3332, %3330
  %3334 = fmul fast float %3333, %3323
  %3335 = fmul fast float %3321, 2.000000e+00
  %3336 = fsub fast float 1.000000e+00, %3335
  %3337 = fmul fast float %3336, %3324
  %3338 = fadd fast float %3337, %3335
  %3339 = fmul fast float %3338, %3324
  %3340 = fmul fast float %3329, %3329
  %3341 = fmul fast float %3334, %3334
  %3342 = fmul fast float %3339, %3339
  br label %3359

; <label>:3343                                    ; preds = %3306
  %3344 = fmul fast float %574, %574
  %3345 = fmul fast float %575, %575
  %3346 = fmul fast float %576, %576
  %3347 = fadd fast float %3344, -1.000000e+00
  %3348 = fadd fast float %3345, -1.000000e+00
  %3349 = fadd fast float %3346, -1.000000e+00
  %3350 = fmul fast float %3195, %3347
  %3351 = fmul fast float %3195, %3348
  %3352 = fmul fast float %3195, %3349
  %3353 = fadd fast float %3350, 1.000000e+00
  %3354 = fadd fast float %3351, 1.000000e+00
  %3355 = fadd fast float %3352, 1.000000e+00
  %3356 = fmul fast float %3353, %3170
  %3357 = fmul fast float %3354, %3171
  %3358 = fmul fast float %3355, %3172
  br label %3359

; <label>:3359                                    ; preds = %3343, %3309, %3200, %3156
  %3360 = phi float [ %3305, %3200 ], [ %3181, %3309 ], [ %3181, %3343 ], [ 0x3FA23C0BE0000000, %3156 ]
  %3361 = phi float [ %3297, %3200 ], [ %3340, %3309 ], [ %3356, %3343 ], [ 1.000000e+00, %3156 ]
  %3362 = phi float [ %3298, %3200 ], [ %3341, %3309 ], [ %3357, %3343 ], [ 1.000000e+00, %3156 ]
  %3363 = phi float [ %3299, %3200 ], [ %3342, %3309 ], [ %3358, %3343 ], [ 1.000000e+00, %3156 ]
  %3364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3365 = extractvalue %dx.types.CBufRet.i32 %3364, 1
  %3366 = and i32 %3365, 1
  %3367 = icmp ne i32 %3366, 0
  %3368 = add i32 %34, 356
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = and i32 %3370, 32
  %3372 = icmp ne i32 %3371, 0
  %3373 = and i1 %3367, %3372
  %3374 = select i1 %3373, float 1.000000e+00, float %3361
  %3375 = select i1 %3373, float 0x3FD3333340000000, float %3362
  %3376 = select i1 %3373, float 0x3FD3333340000000, float %3363
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = and i32 %3378, 32
  %3380 = icmp eq i32 %3379, 0
  br i1 %3380, label %3453, label %3381

; <label>:3381                                    ; preds = %3359
  %3382 = add i32 %34, 140
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = add i32 %34, 404
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = add i32 %3387, 0
  %3389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3388, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3389, %dx.types.Handle %76, float %3082, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.ResRet.f32 %3390, 1
  %3393 = extractvalue %dx.types.ResRet.f32 %3390, 2
  %3394 = extractvalue %dx.types.ResRet.f32 %3390, 3
  %3395 = and i32 %3384, 255
  %3396 = uitofp i32 %3395 to float
  %3397 = lshr i32 %3384, 8
  %3398 = and i32 %3397, 255
  %3399 = uitofp i32 %3398 to float
  %3400 = lshr i32 %3384, 16
  %3401 = and i32 %3400, 255
  %3402 = uitofp i32 %3401 to float
  %3403 = fmul fast float %3402, 0x3F70101000000000
  %3404 = fmul fast float %3391, %3396
  %3405 = fadd fast float %3404, %3399
  %3406 = fmul fast float %3405, 0x3F70101000000000
  %3407 = fadd fast float %3392, -5.000000e-01
  %3408 = fadd fast float %3394, -5.000000e-01
  %3409 = fmul fast float %3407, %3403
  %3410 = fmul fast float %3408, %3403
  %3411 = fadd fast float %3409, 5.000000e-01
  %3412 = fadd fast float %3410, 5.000000e-01
  %3413 = fmul fast float %3411, 2.000000e+00
  %3414 = fadd fast float %3413, -1.000000e+00
  %3415 = fmul fast float %3412, 2.000000e+00
  %3416 = fadd fast float %3415, -1.000000e+00
  %3417 = fadd fast float %3414, %3416
  %3418 = fmul fast float %3417, 5.000000e-01
  %3419 = fsub fast float %3414, %3416
  %3420 = fmul fast float %3419, 5.000000e-01
  %3421 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = call float @dx.op.unary.f32(i32 6, float %3420)  ; FAbs(value)
  %3424 = fsub fast float %3422, %3423
  %3425 = call float @dx.op.dot3.f32(i32 55, float %3418, float %3420, float %3424, float %3418, float %3420, float %3424)  ; Dot3(ax,ay,az,bx,by,bz)
  %3426 = call float @dx.op.unary.f32(i32 25, float %3425)  ; Rsqrt(value)
  %3427 = fmul fast float %3418, %3426
  %3428 = fmul fast float %3420, %3426
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = and i32 %3430, 67108864
  %3432 = icmp eq i32 %3431, 0
  br i1 %3432, label %3449, label %3433

; <label>:3433                                    ; preds = %3381
  %3434 = add i32 %34, 328
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = and i32 %3436, 65535
  %3438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3437)  ; LegacyF16ToF32(value)
  %3439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.i32 %3439, 0
  %3441 = and i32 %3440, 65535
  %3442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3441)  ; LegacyF16ToF32(value)
  %3443 = lshr i32 %3436, 16
  %3444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3443)  ; LegacyF16ToF32(value)
  %3445 = fsub fast float %3406, %3444
  %3446 = fmul fast float %3445, %3438
  %3447 = fadd fast float %3446, %3442
  %3448 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  br label %3449

; <label>:3449                                    ; preds = %3433, %3381
  %3450 = phi float [ %3448, %3433 ], [ %3406, %3381 ]
  %3451 = call float @dx.op.dot2.f32(i32 54, float %3427, float %3428, float %2986, float %2987)  ; Dot2(ax,ay,bx,by)
  %3452 = call float @dx.op.dot2.f32(i32 54, float %3427, float %3428, float %2988, float %2989)  ; Dot2(ax,ay,bx,by)
  br label %3453

; <label>:3453                                    ; preds = %3449, %3359
  %3454 = phi float [ %3450, %3449 ], [ 0x3FD6666660000000, %3359 ]
  %3455 = phi float [ %3451, %3449 ], [ 0.000000e+00, %3359 ]
  %3456 = phi float [ %3452, %3449 ], [ 0.000000e+00, %3359 ]
  %3457 = phi float [ %3393, %3449 ], [ 1.000000e+00, %3359 ]
  %3458 = add i32 %34, 208
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = lshr i32 %3460, 22
  %3462 = shl nuw nsw i32 %3461, 5
  %3463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3462)  ; LegacyF16ToF32(value)
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = and i32 %3465, 64
  %3467 = icmp eq i32 %3466, 0
  br i1 %3467, label %3501, label %3468

; <label>:3468                                    ; preds = %3453
  %3469 = add i32 %34, 420
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = add i32 %3471, 0
  %3473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = and i32 %3475, 131072
  %3477 = icmp eq i32 %3476, 0
  %3478 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3473, %dx.types.Handle %76, float %3082, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3479 = extractvalue %dx.types.ResRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.ResRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.ResRet.f32 %3478, 2
  %3482 = fmul fast float %557, %3479
  %3483 = fmul fast float %558, %3480
  %3484 = fmul fast float %559, %3481
  br i1 %3477, label %3491, label %3485

; <label>:3485                                    ; preds = %3468
  %3486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.f32 %3486, 0
  %3488 = fmul fast float %3487, %3482
  %3489 = fmul fast float %3487, %3483
  %3490 = fmul fast float %3487, %3484
  br label %3491

; <label>:3491                                    ; preds = %3485, %3468
  %3492 = phi float [ %3488, %3485 ], [ %3482, %3468 ]
  %3493 = phi float [ %3489, %3485 ], [ %3483, %3468 ]
  %3494 = phi float [ %3490, %3485 ], [ %3484, %3468 ]
  %3495 = fmul fast float %3492, %3463
  %3496 = select i1 %219, float %3495, float %3492
  %3497 = call float @dx.op.dot3.f32(i32 55, float %3496, float %3493, float %3494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3498 = select i1 %219, float 0.000000e+00, float %3492
  %3499 = select i1 %219, float %3497, float %3493
  %3500 = select i1 %219, float 0.000000e+00, float %3494
  br label %3501

; <label>:3501                                    ; preds = %3491, %3453
  %3502 = phi float [ %3498, %3491 ], [ 0.000000e+00, %3453 ]
  %3503 = phi float [ %3499, %3491 ], [ 0.000000e+00, %3453 ]
  %3504 = phi float [ %3500, %3491 ], [ 0.000000e+00, %3453 ]
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = and i32 %3506, 30720
  %3508 = icmp eq i32 %3507, 0
  br i1 %3508, label %3548, label %3509

; <label>:3509                                    ; preds = %3501
  %3510 = add i32 %34, 488
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = add i32 %3512, 0
  %3514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3514, %dx.types.Handle %77, float %3082, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.i32 %3517, 0
  %3519 = and i32 %3518, 1048576
  %3520 = icmp ne i32 %3519, 0
  %3521 = select i1 %3520, float 1.000000e+00, float %3516
  %3522 = and i32 %3518, 16384
  %3523 = icmp eq i32 %3522, 0
  br i1 %3523, label %3534, label %3524

; <label>:3524                                    ; preds = %3509
  %3525 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3526 = add i32 %34, 144
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = lshr i32 %3528, 24
  %3530 = uitofp i32 %3529 to float
  %3531 = fmul fast float %3525, 0x3F70101020000000
  %3532 = select i1 %3520, float 0x3F70101020000000, float %3531
  %3533 = fmul fast float %3532, %3530
  br label %3534

; <label>:3534                                    ; preds = %3524, %3509
  %3535 = phi float [ %3533, %3524 ], [ 0.000000e+00, %3509 ]
  %3536 = and i32 %3518, 4096
  %3537 = icmp eq i32 %3536, 0
  br i1 %3537, label %3548, label %3538

; <label>:3538                                    ; preds = %3534
  %3539 = add i32 %34, 212
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = and i32 %3541, 65535
  %3543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3542)  ; LegacyF16ToF32(value)
  %3544 = lshr i32 %3541, 16
  %3545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3544)  ; LegacyF16ToF32(value)
  %3546 = fmul fast float %3543, %3521
  %3547 = fadd fast float %3546, %3545
  br label %3548

; <label>:3548                                    ; preds = %3538, %3534, %3501
  %3549 = phi float [ %3535, %3538 ], [ %3535, %3534 ], [ 0.000000e+00, %3501 ]
  %3550 = phi float [ %3547, %3538 ], [ 0.000000e+00, %3534 ], [ 0.000000e+00, %3501 ]
  %3551 = add i32 %34, 144
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = and i32 %3553, 255
  %3555 = uitofp i32 %3554 to float
  %3556 = lshr i32 %3553, 8
  %3557 = and i32 %3556, 255
  %3558 = uitofp i32 %3557 to float
  %3559 = call float @dx.op.dot3.f32(i32 55, float %3374, float %3375, float %3376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3560 = fmul fast float %3558, %3559
  %3561 = fadd fast float %3560, %3555
  %3562 = fmul fast float %3561, 0x3F70101020000000
  %3563 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  br i1 %2975, label %3564, label %3572

; <label>:3564                                    ; preds = %3548
  %3565 = fsub fast float 1.000000e+00, %3154
  %3566 = fmul fast float %3565, %2962
  %3567 = fmul fast float %3565, %2963
  %3568 = fmul fast float %3565, %2964
  %3569 = fmul fast float %3565, %2965
  %3570 = fmul fast float %3565, %2966
  %3571 = fmul fast float %3565, %2967
  br label %3572

; <label>:3572                                    ; preds = %3564, %3548
  %3573 = phi float [ %3566, %3564 ], [ %2962, %3548 ]
  %3574 = phi float [ %3567, %3564 ], [ %2963, %3548 ]
  %3575 = phi float [ %3568, %3564 ], [ %2964, %3548 ]
  %3576 = phi float [ %3569, %3564 ], [ %2965, %3548 ]
  %3577 = phi float [ %3570, %3564 ], [ %2966, %3548 ]
  %3578 = phi float [ %3571, %3564 ], [ %2967, %3548 ]
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = and i32 %3580, 3
  %3582 = icmp eq i32 %3581, 3
  br i1 %3582, label %3661, label %3583

; <label>:3583                                    ; preds = %3572
  %3584 = and i32 %3580, 16
  %3585 = icmp ne i32 %3584, 0
  %3586 = select i1 %3585, float %3154, float 0.000000e+00
  %3587 = icmp eq i32 %3581, 0
  br i1 %3587, label %3588, label %3616

; <label>:3588                                    ; preds = %3583
  %3589 = and i32 %3580, 64
  %3590 = icmp ne i32 %3589, 0
  %3591 = select i1 %3590, float %3154, float 0.000000e+00
  %3592 = fsub fast float %3374, %3573
  %3593 = fsub fast float %3375, %3574
  %3594 = fsub fast float %3376, %3575
  %3595 = fmul fast float %3586, %3592
  %3596 = fmul fast float %3586, %3593
  %3597 = fmul fast float %3586, %3594
  %3598 = fadd fast float %3595, %3573
  %3599 = fadd fast float %3596, %3574
  %3600 = fadd fast float %3597, %3575
  %3601 = fsub fast float %3360, %2968
  %3602 = fmul fast float %3586, %3601
  %3603 = fadd fast float %3602, %2968
  %3604 = fsub fast float %3502, %3576
  %3605 = fsub fast float %3503, %3577
  %3606 = fsub fast float %3504, %3578
  %3607 = fmul fast float %3591, %3604
  %3608 = fmul fast float %3591, %3605
  %3609 = fmul fast float %3591, %3606
  %3610 = fadd fast float %3607, %3576
  %3611 = fadd fast float %3608, %3577
  %3612 = fadd fast float %3609, %3578
  %3613 = fsub fast float %3563, %2973
  %3614 = fmul fast float %3586, %3613
  %3615 = fadd fast float %3614, %2973
  br label %3661

; <label>:3616                                    ; preds = %3583
  %3617 = icmp eq i32 %3581, 1
  br i1 %3617, label %3618, label %3631

; <label>:3618                                    ; preds = %3616
  %3619 = fadd fast float %3374, -1.000000e+00
  %3620 = fadd fast float %3375, -1.000000e+00
  %3621 = fadd fast float %3376, -1.000000e+00
  %3622 = fmul fast float %3586, %3619
  %3623 = fmul fast float %3586, %3620
  %3624 = fmul fast float %3586, %3621
  %3625 = fadd fast float %3622, 1.000000e+00
  %3626 = fadd fast float %3623, 1.000000e+00
  %3627 = fadd fast float %3624, 1.000000e+00
  %3628 = fmul fast float %3625, %3573
  %3629 = fmul fast float %3626, %3574
  %3630 = fmul fast float %3627, %3575
  br label %3661

; <label>:3631                                    ; preds = %3616
  %3632 = icmp eq i32 %3581, 2
  br i1 %3632, label %3633, label %3661

; <label>:3633                                    ; preds = %3631
  %3634 = call float @dx.op.unary.f32(i32 24, float %3374)  ; Sqrt(value)
  %3635 = call float @dx.op.unary.f32(i32 24, float %3375)  ; Sqrt(value)
  %3636 = call float @dx.op.unary.f32(i32 24, float %3376)  ; Sqrt(value)
  %3637 = fadd fast float %3634, -5.000000e-01
  %3638 = fadd fast float %3635, -5.000000e-01
  %3639 = fadd fast float %3636, -5.000000e-01
  %3640 = fmul fast float %3637, %3586
  %3641 = fmul fast float %3638, %3586
  %3642 = fmul fast float %3639, %3586
  %3643 = fadd fast float %3640, 5.000000e-01
  %3644 = fadd fast float %3641, 5.000000e-01
  %3645 = fadd fast float %3642, 5.000000e-01
  %3646 = fmul fast float %3643, 2.000000e+00
  %3647 = fsub fast float 1.000000e+00, %3646
  %3648 = fmul fast float %3647, %3573
  %3649 = fadd fast float %3648, %3646
  %3650 = fmul fast float %3649, %3573
  %3651 = fmul fast float %3644, 2.000000e+00
  %3652 = fsub fast float 1.000000e+00, %3651
  %3653 = fmul fast float %3652, %3574
  %3654 = fadd fast float %3653, %3651
  %3655 = fmul fast float %3654, %3574
  %3656 = fmul fast float %3645, 2.000000e+00
  %3657 = fsub fast float 1.000000e+00, %3656
  %3658 = fmul fast float %3657, %3575
  %3659 = fadd fast float %3658, %3656
  %3660 = fmul fast float %3659, %3575
  br label %3661

; <label>:3661                                    ; preds = %3633, %3631, %3618, %3588, %3572
  %3662 = phi float [ %3573, %3572 ], [ %3650, %3633 ], [ %3573, %3631 ], [ %3628, %3618 ], [ %3598, %3588 ]
  %3663 = phi float [ %3574, %3572 ], [ %3655, %3633 ], [ %3574, %3631 ], [ %3629, %3618 ], [ %3599, %3588 ]
  %3664 = phi float [ %3575, %3572 ], [ %3660, %3633 ], [ %3575, %3631 ], [ %3630, %3618 ], [ %3600, %3588 ]
  %3665 = phi float [ %3576, %3572 ], [ %3576, %3633 ], [ %3576, %3631 ], [ %3576, %3618 ], [ %3610, %3588 ]
  %3666 = phi float [ %3577, %3572 ], [ %3577, %3633 ], [ %3577, %3631 ], [ %3577, %3618 ], [ %3611, %3588 ]
  %3667 = phi float [ %3578, %3572 ], [ %3578, %3633 ], [ %3578, %3631 ], [ %3578, %3618 ], [ %3612, %3588 ]
  %3668 = phi float [ %2968, %3572 ], [ %2968, %3633 ], [ %2968, %3631 ], [ %2968, %3618 ], [ %3603, %3588 ]
  %3669 = phi float [ %2973, %3572 ], [ %2973, %3633 ], [ %2973, %3631 ], [ %2973, %3618 ], [ %3615, %3588 ]
  %3670 = and i32 %3580, 12
  %3671 = icmp eq i32 %3670, 12
  br i1 %3671, label %3764, label %3672

; <label>:3672                                    ; preds = %3661
  %3673 = and i32 %3580, 2097184
  %3674 = icmp eq i32 %3673, 2097184
  %3675 = select i1 %3674, float %3154, float 0.000000e+00
  %3676 = and i32 %3580, 4194336
  %3677 = icmp eq i32 %3676, 4194336
  %3678 = select i1 %3677, float %3154, float 0.000000e+00
  %3679 = and i32 %3580, 8388640
  %3680 = icmp eq i32 %3679, 8388640
  %3681 = select i1 %3680, float %3154, float 0.000000e+00
  %3682 = and i32 %3580, 4096
  %3683 = icmp ne i32 %3682, 0
  %3684 = select i1 %3683, float %3154, float 0.000000e+00
  %3685 = and i32 %3580, 16384
  %3686 = icmp ne i32 %3685, 0
  %3687 = select i1 %3686, float %3154, float 0.000000e+00
  %3688 = icmp eq i32 %3670, 0
  br i1 %3688, label %3689, label %3708

; <label>:3689                                    ; preds = %3672
  %3690 = fsub fast float %3455, %2960
  %3691 = fsub fast float %3456, %2961
  %3692 = fmul fast float %3675, %3690
  %3693 = fmul fast float %3675, %3691
  %3694 = fadd fast float %3692, %2960
  %3695 = fadd fast float %3693, %2961
  %3696 = fsub fast float %3457, %2970
  %3697 = fmul fast float %3678, %3696
  %3698 = fadd fast float %3697, %2970
  %3699 = fsub fast float %3454, %2969
  %3700 = fmul fast float %3681, %3699
  %3701 = fadd fast float %3700, %2969
  %3702 = fsub fast float %3550, %2971
  %3703 = fmul fast float %3684, %3702
  %3704 = fadd fast float %3703, %2971
  %3705 = fsub fast float %3549, %2972
  %3706 = fmul fast float %3687, %3705
  %3707 = fadd fast float %3706, %2972
  br label %3764

; <label>:3708                                    ; preds = %3672
  %3709 = icmp eq i32 %3670, 4
  br i1 %3709, label %3710, label %3746

; <label>:3710                                    ; preds = %3708
  %3711 = fmul fast float %3675, %3455
  %3712 = fmul fast float %3675, %3456
  %3713 = fadd fast float %3711, %2960
  %3714 = fadd fast float %3712, %2961
  %3715 = call float @dx.op.binary.f32(i32 36, float %2970, float %3457)  ; FMin(a,b)
  %3716 = fsub fast float %3715, %2970
  %3717 = fmul fast float %3716, %3678
  %3718 = fadd fast float %3717, %2970
  %3719 = fadd fast float %3454, %2969
  %3720 = fmul fast float %3719, 0x3FF337FAE0000000
  %3721 = fmul fast float %2969, %2969
  %3722 = fmul fast float %3454, %3454
  %3723 = fadd fast float %3722, %3721
  %3724 = fmul fast float %3723, 0x3FE5152B00000000
  %3725 = fmul fast float %2969, 0xBFCC1F85E0000000
  %3726 = fmul fast float %3725, %3454
  %3727 = fadd fast float %3726, 0xBFE1363700000000
  %3728 = fadd fast float %3727, %3720
  %3729 = fsub fast float %3728, %3724
  %3730 = fmul fast float %3719, 0x3FBA6F0D00000000
  %3731 = fmul fast float %3723, 0x3FD0432880000000
  %3732 = fmul fast float %2969, 0xBFEF110800000000
  %3733 = fmul fast float %3732, %3454
  %3734 = fadd fast float %3733, 1.000000e+00
  %3735 = fsub fast float %3734, %3730
  %3736 = fadd fast float %3735, %3731
  %3737 = fdiv fast float %3729, %3736
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = fsub fast float %3738, %2969
  %3740 = fmul fast float %3739, %3681
  %3741 = fadd fast float %3740, %2969
  %3742 = fmul fast float %3684, %3550
  %3743 = fadd fast float %3742, %2971
  %3744 = fmul fast float %3687, %3549
  %3745 = fadd fast float %3744, %2972
  br label %3764

; <label>:3746                                    ; preds = %3708
  %3747 = icmp eq i32 %3670, 8
  br i1 %3747, label %3748, label %3764

; <label>:3748                                    ; preds = %3746
  %3749 = fmul fast float %3675, %3455
  %3750 = fmul fast float %3675, %3456
  %3751 = fadd fast float %3749, %2960
  %3752 = fadd fast float %3750, %2961
  %3753 = call float @dx.op.binary.f32(i32 36, float %2970, float %3457)  ; FMin(a,b)
  %3754 = fsub fast float %3753, %2970
  %3755 = fmul fast float %3754, %3678
  %3756 = fadd fast float %3755, %2970
  %3757 = fsub fast float %3454, %2969
  %3758 = fmul fast float %3681, %3757
  %3759 = fadd fast float %3758, %2969
  %3760 = fmul fast float %3684, %3550
  %3761 = fadd fast float %3760, %2971
  %3762 = fmul fast float %3687, %3549
  %3763 = fadd fast float %3762, %2972
  br label %3764

; <label>:3764                                    ; preds = %3748, %3746, %3710, %3689, %3661, %3153, %2974, %2959
  %3765 = phi float [ %2960, %3661 ], [ %2960, %3153 ], [ %2960, %2959 ], [ %2960, %2974 ], [ %3694, %3689 ], [ %3713, %3710 ], [ %2960, %3746 ], [ %3751, %3748 ]
  %3766 = phi float [ %2961, %3661 ], [ %2961, %3153 ], [ %2961, %2959 ], [ %2961, %2974 ], [ %3695, %3689 ], [ %3714, %3710 ], [ %2961, %3746 ], [ %3752, %3748 ]
  %3767 = phi float [ %3662, %3661 ], [ %2962, %3153 ], [ %2962, %2959 ], [ %2962, %2974 ], [ %3662, %3689 ], [ %3662, %3710 ], [ %3662, %3746 ], [ %3662, %3748 ]
  %3768 = phi float [ %3663, %3661 ], [ %2963, %3153 ], [ %2963, %2959 ], [ %2963, %2974 ], [ %3663, %3689 ], [ %3663, %3710 ], [ %3663, %3746 ], [ %3663, %3748 ]
  %3769 = phi float [ %3664, %3661 ], [ %2964, %3153 ], [ %2964, %2959 ], [ %2964, %2974 ], [ %3664, %3689 ], [ %3664, %3710 ], [ %3664, %3746 ], [ %3664, %3748 ]
  %3770 = phi float [ %3665, %3661 ], [ %2965, %3153 ], [ %2965, %2959 ], [ %2965, %2974 ], [ %3665, %3689 ], [ %3665, %3710 ], [ %3665, %3746 ], [ %3665, %3748 ]
  %3771 = phi float [ %3666, %3661 ], [ %2966, %3153 ], [ %2966, %2959 ], [ %2966, %2974 ], [ %3666, %3689 ], [ %3666, %3710 ], [ %3666, %3746 ], [ %3666, %3748 ]
  %3772 = phi float [ %3667, %3661 ], [ %2967, %3153 ], [ %2967, %2959 ], [ %2967, %2974 ], [ %3667, %3689 ], [ %3667, %3710 ], [ %3667, %3746 ], [ %3667, %3748 ]
  %3773 = phi float [ %3668, %3661 ], [ %2968, %3153 ], [ %2968, %2959 ], [ %2968, %2974 ], [ %3668, %3689 ], [ %3668, %3710 ], [ %3668, %3746 ], [ %3668, %3748 ]
  %3774 = phi float [ %2969, %3661 ], [ %2969, %3153 ], [ %2969, %2959 ], [ %2969, %2974 ], [ %3701, %3689 ], [ %3741, %3710 ], [ %2969, %3746 ], [ %3759, %3748 ]
  %3775 = phi float [ %2970, %3661 ], [ %2970, %3153 ], [ %2970, %2959 ], [ %2970, %2974 ], [ %3698, %3689 ], [ %3718, %3710 ], [ %2970, %3746 ], [ %3756, %3748 ]
  %3776 = phi float [ %2971, %3661 ], [ %2971, %3153 ], [ %2971, %2959 ], [ %2971, %2974 ], [ %3704, %3689 ], [ %3743, %3710 ], [ %2971, %3746 ], [ %3761, %3748 ]
  %3777 = phi float [ %2972, %3661 ], [ %2972, %3153 ], [ %2972, %2959 ], [ %2972, %2974 ], [ %3707, %3689 ], [ %3745, %3710 ], [ %2972, %3746 ], [ %3763, %3748 ]
  %3778 = phi float [ %3669, %3661 ], [ %2973, %3153 ], [ %2973, %2959 ], [ %2973, %2974 ], [ %3669, %3689 ], [ %3669, %3710 ], [ %3669, %3746 ], [ %3669, %3748 ]
  %3779 = add i32 %34, 360
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = extractvalue %dx.types.ResRet.i32 %3780, 1
  %3783 = bitcast i32 %3781 to float
  %3784 = bitcast i32 %3782 to float
  %3785 = fcmp fast oge float %3783, 0.000000e+00
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 0
  %3788 = select i1 %3785, float %3783, float %3787
  %3789 = fadd fast float %3788, %181
  %3790 = fmul fast float %3784, %182
  %3791 = add i32 %34, 456
  %3792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.i32 %3792, 0
  %3794 = add i32 %3793, 0
  %3795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3795, %dx.types.Handle %77, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3798 = fmul fast float %3790, %3797
  %3799 = fadd fast float %3789, %3798
  %3800 = and i32 %173, 65535
  %3801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3800)  ; LegacyF16ToF32(value)
  %3802 = lshr i32 %173, 16
  %3803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3802)  ; LegacyF16ToF32(value)
  %3804 = and i32 %174, 65535
  %3805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3804)  ; LegacyF16ToF32(value)
  %3806 = fmul fast float %3801, %3767
  %3807 = fmul fast float %3803, %3768
  %3808 = fmul fast float %3805, %3769
  %3809 = shl i32 %175, 4
  %3810 = and i32 %3809, 32752
  %3811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3810)  ; LegacyF16ToF32(value)
  %3812 = lshr i32 %175, 7
  %3813 = and i32 %3812, 32752
  %3814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3813)  ; LegacyF16ToF32(value)
  %3815 = lshr i32 %175, 22
  %3816 = shl nuw nsw i32 %3815, 5
  %3817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3816)  ; LegacyF16ToF32(value)
  %3818 = and i32 %176, 65535
  %3819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3818)  ; LegacyF16ToF32(value)
  %3820 = fmul fast float %3811, %3770
  %3821 = fmul fast float %3820, %3819
  %3822 = fmul fast float %3814, %3771
  %3823 = fmul fast float %3822, %3819
  %3824 = fmul fast float %3817, %3772
  %3825 = fmul fast float %3824, %3819
  %3826 = call float @dx.op.dot2.f32(i32 54, float %3765, float %3766, float %3765, float %3766)  ; Dot2(ax,ay,bx,by)
  %3827 = fmul fast float %3826, 0x3FE3333340000000
  %3828 = fsub fast float 1.000000e+00, %3827
  %3829 = call float @dx.op.dot3.f32(i32 55, float %3765, float %3766, float %3828, float %3765, float %3766, float %3828)  ; Dot3(ax,ay,az,bx,by,bz)
  %3830 = call float @dx.op.unary.f32(i32 25, float %3829)  ; Rsqrt(value)
  %3831 = fmul fast float %3830, %3765
  %3832 = fmul fast float %3830, %3766
  %3833 = fmul fast float %3828, %3830
  %3834 = fmul fast float %3833, %87
  %3835 = fmul fast float %3833, %88
  %3836 = fmul fast float %3833, %89
  %3837 = fmul fast float %3831, %61
  %3838 = fmul fast float %3831, %62
  %3839 = fmul fast float %3831, %63
  %3840 = fadd fast float %3834, %3837
  %3841 = fadd fast float %3835, %3838
  %3842 = fadd fast float %3836, %3839
  %3843 = fmul fast float %99, %3832
  %3844 = fmul fast float %100, %3832
  %3845 = fmul fast float %101, %3832
  %3846 = fadd fast float %3840, %3843
  %3847 = fadd fast float %3841, %3844
  %3848 = fadd fast float %3842, %3845
  %3849 = call float @dx.op.dot3.f32(i32 55, float %3846, float %3847, float %3848, float %3846, float %3847, float %3848)  ; Dot3(ax,ay,az,bx,by,bz)
  %3850 = call float @dx.op.unary.f32(i32 25, float %3849)  ; Rsqrt(value)
  %3851 = fmul fast float %3846, %3850
  %3852 = fmul fast float %3847, %3850
  %3853 = fmul fast float %3848, %3850
  %3854 = icmp eq i32 %37, 65535
  br i1 %3854, label %4369, label %3855

; <label>:3855                                    ; preds = %3764
  %3856 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3857 = call float @dx.op.unary.f32(i32 83, float %39)  ; DerivCoarseX(value)
  %3858 = call float @dx.op.unary.f32(i32 83, float %40)  ; DerivCoarseX(value)
  %3859 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3860 = call float @dx.op.unary.f32(i32 84, float %39)  ; DerivCoarseY(value)
  %3861 = call float @dx.op.unary.f32(i32 84, float %40)  ; DerivCoarseY(value)
  %3862 = fadd fast float %3856, %38
  %3863 = fadd fast float %3857, %39
  %3864 = fadd fast float %3858, %40
  %3865 = fadd fast float %3859, %38
  %3866 = fadd fast float %3860, %39
  %3867 = fadd fast float %3861, %40
  %3868 = mul i32 %37, 48
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.ResRet.f32 %3869, 2
  %3873 = add i32 %3868, 16
  %3874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.f32 %3874, 0
  %3876 = extractvalue %dx.types.ResRet.f32 %3874, 1
  %3877 = extractvalue %dx.types.ResRet.f32 %3874, 2
  %3878 = add i32 %3868, 32
  %3879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.ResRet.f32 %3879, 3
  %3884 = bitcast float %3883 to i32
  %3885 = fmul fast float %3870, %38
  %3886 = fmul fast float %3871, %39
  %3887 = fmul fast float %3872, %40
  %3888 = fsub fast float %3885, %3875
  %3889 = fsub fast float %3886, %3876
  %3890 = fsub fast float %3887, %3877
  %3891 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3892 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3893 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  %3894 = fmul fast float %3891, %3880
  %3895 = fmul fast float %3892, %3881
  %3896 = fmul fast float %3893, %3882
  %3897 = fadd fast float %3880, -1.000000e+00
  %3898 = fadd fast float %3881, -1.000000e+00
  %3899 = fadd fast float %3882, -1.000000e+00
  %3900 = call float @dx.op.unary.f32(i32 27, float %3894)  ; Round_ni(value)
  %3901 = call float @dx.op.unary.f32(i32 27, float %3895)  ; Round_ni(value)
  %3902 = call float @dx.op.unary.f32(i32 27, float %3896)  ; Round_ni(value)
  %3903 = call float @dx.op.binary.f32(i32 36, float %3900, float %3897)  ; FMin(a,b)
  %3904 = call float @dx.op.binary.f32(i32 36, float %3901, float %3898)  ; FMin(a,b)
  %3905 = call float @dx.op.binary.f32(i32 36, float %3902, float %3899)  ; FMin(a,b)
  %3906 = fmul fast float %3905, %3881
  %3907 = fadd fast float %3906, %3904
  %3908 = fmul fast float %3907, %3880
  %3909 = fadd fast float %3908, %3903
  %3910 = fptosi float %3909 to i32
  %3911 = add nsw i32 %3910, %3884
  %3912 = shl nsw i32 %3911, 2
  %3913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.i32 %3913, 0
  %3915 = lshr i32 %3914, 16
  %3916 = icmp eq i32 %3915, 0
  br i1 %3916, label %4338, label %3917

; <label>:3917                                    ; preds = %3855
  br label %3918

; <label>:3918                                    ; preds = %4039, %3917
  %3919 = phi i32 [ %3941, %4039 ], [ %3915, %3917 ]
  %3920 = phi float [ %4040, %4039 ], [ 0.000000e+00, %3917 ]
  %3921 = phi float [ %4041, %4039 ], [ %3799, %3917 ]
  %3922 = phi float [ %4042, %4039 ], [ %3778, %3917 ]
  %3923 = phi float [ %4043, %4039 ], [ %3777, %3917 ]
  %3924 = phi float [ %4044, %4039 ], [ %3776, %3917 ]
  %3925 = phi float [ %4045, %4039 ], [ %3821, %3917 ]
  %3926 = phi float [ %4046, %4039 ], [ %3823, %3917 ]
  %3927 = phi float [ %4047, %4039 ], [ %3825, %3917 ]
  %3928 = phi float [ %4048, %4039 ], [ %3851, %3917 ]
  %3929 = phi float [ %4049, %4039 ], [ %3852, %3917 ]
  %3930 = phi float [ %4050, %4039 ], [ %3853, %3917 ]
  %3931 = phi float [ %4051, %4039 ], [ %3775, %3917 ]
  %3932 = phi float [ %4052, %4039 ], [ %3774, %3917 ]
  %3933 = phi float [ %4053, %4039 ], [ 0.000000e+00, %3917 ]
  %3934 = phi float [ %4054, %4039 ], [ %3773, %3917 ]
  %3935 = phi float [ %4055, %4039 ], [ %3806, %3917 ]
  %3936 = phi float [ %4056, %4039 ], [ %3807, %3917 ]
  %3937 = phi float [ %4057, %4039 ], [ %3808, %3917 ]
  %3938 = shl nuw nsw i32 %3919, 2
  %3939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.i32 %3939, 0
  %3941 = lshr i32 %3940, 16
  %3942 = shl i32 %3940, 8
  %3943 = and i32 %3942, 16776960
  %3944 = or i32 %3943, 48
  %3945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.ResRet.f32 %3945, 1
  %3948 = extractvalue %dx.types.ResRet.f32 %3945, 2
  %3949 = or i32 %3943, 64
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = extractvalue %dx.types.ResRet.i32 %3950, 1
  %3953 = or i32 %3943, 80
  %3954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 3
  %3957 = or i32 %3943, 96
  %3958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.ResRet.f32 %3958, 1
  %3961 = extractvalue %dx.types.ResRet.f32 %3958, 2
  %3962 = extractvalue %dx.types.ResRet.f32 %3958, 3
  %3963 = or i32 %3943, 112
  %3964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 2
  %3966 = or i32 %3943, 128
  %3967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3966, i32 undef)  ; BufferLoad(srv,index,wot)
  %3968 = extractvalue %dx.types.ResRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.ResRet.f32 %3967, 1
  %3970 = extractvalue %dx.types.ResRet.f32 %3967, 2
  %3971 = extractvalue %dx.types.ResRet.f32 %3967, 3
  %3972 = or i32 %3943, 144
  %3973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = extractvalue %dx.types.ResRet.f32 %3973, 1
  %3976 = extractvalue %dx.types.ResRet.f32 %3973, 2
  %3977 = extractvalue %dx.types.ResRet.f32 %3973, 3
  %3978 = or i32 %3943, 160
  %3979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3978, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.f32 %3979, 0
  %3981 = extractvalue %dx.types.ResRet.f32 %3979, 1
  %3982 = extractvalue %dx.types.ResRet.f32 %3979, 2
  %3983 = extractvalue %dx.types.ResRet.f32 %3979, 3
  %3984 = or i32 %3943, 192
  %3985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3984, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.i32 %3985, 0
  %3987 = or i32 %3943, 208
  %3988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3987, i32 undef)  ; BufferLoad(srv,index,wot)
  %3989 = extractvalue %dx.types.ResRet.f32 %3988, 0
  %3990 = or i32 %3943, 248
  %3991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3990, i32 undef)  ; BufferLoad(srv,index,wot)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.f32 %3991, 1
  %3994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.ResRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.ResRet.f32 %3994, 2
  %3998 = extractvalue %dx.types.ResRet.f32 %3994, 3
  %3999 = call float @dx.op.dot4.f32(i32 56, float %3995, float %3996, float %3997, float %3998, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4000 = or i32 %3943, 16
  %4001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4000, i32 undef)  ; BufferLoad(srv,index,wot)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = extractvalue %dx.types.ResRet.f32 %4001, 1
  %4004 = extractvalue %dx.types.ResRet.f32 %4001, 2
  %4005 = extractvalue %dx.types.ResRet.f32 %4001, 3
  %4006 = call float @dx.op.dot4.f32(i32 56, float %4002, float %4003, float %4004, float %4005, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4007 = or i32 %3943, 32
  %4008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4012 = extractvalue %dx.types.ResRet.f32 %4008, 3
  %4013 = call float @dx.op.dot4.f32(i32 56, float %4009, float %4010, float %4011, float %4012, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4014 = call float @dx.op.unary.f32(i32 27, float %3999)  ; Round_ni(value)
  %4015 = call float @dx.op.unary.f32(i32 6, float %4014)  ; FAbs(value)
  %4016 = call float @dx.op.unary.f32(i32 27, float %4006)  ; Round_ni(value)
  %4017 = call float @dx.op.unary.f32(i32 6, float %4016)  ; FAbs(value)
  %4018 = call float @dx.op.unary.f32(i32 6, float %4013)  ; FAbs(value)
  %4019 = call float @dx.op.unary.f32(i32 27, float %4018)  ; Round_ni(value)
  %4020 = fadd fast float %4017, %4015
  %4021 = fadd fast float %4020, %4019
  %4022 = fcmp fast oeq float %4021, 0.000000e+00
  %4023 = call float @dx.op.dot4.f32(i32 56, float %3995, float %3996, float %3997, float %3998, float %3862, float %3863, float %3864, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4024 = call float @dx.op.dot4.f32(i32 56, float %4002, float %4003, float %4004, float %4005, float %3862, float %3863, float %3864, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4025 = call float @dx.op.dot4.f32(i32 56, float %3995, float %3996, float %3997, float %3998, float %3865, float %3866, float %3867, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4026 = call float @dx.op.dot4.f32(i32 56, float %4002, float %4003, float %4004, float %4005, float %3865, float %3866, float %3867, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4027 = fsub fast float %4023, %3999
  %4028 = fsub fast float %4025, %3999
  %4029 = fsub fast float %4024, %4006
  %4030 = fsub fast float %4026, %4006
  %4031 = call float @dx.op.dot3.f32(i32 55, float %3946, float %3947, float %3948, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4034 = fadd fast float %4033, %4031
  %4035 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4037 = fcmp fast ogt float %4035, %4036
  %4038 = and i1 %4022, %4037
  br i1 %4038, label %4059, label %4039

; <label>:4039                                    ; preds = %4324, %4142, %4059, %3918
  %4040 = phi float [ %3920, %4059 ], [ %4145, %4142 ], [ %4145, %4324 ], [ %3920, %3918 ]
  %4041 = phi float [ %3921, %4059 ], [ %3921, %4142 ], [ %4299, %4324 ], [ %3921, %3918 ]
  %4042 = phi float [ %3922, %4059 ], [ %3922, %4142 ], [ %4297, %4324 ], [ %3922, %3918 ]
  %4043 = phi float [ %3923, %4059 ], [ %3923, %4142 ], [ %4269, %4324 ], [ %3923, %3918 ]
  %4044 = phi float [ %3924, %4059 ], [ %3924, %4142 ], [ %4267, %4324 ], [ %3924, %3918 ]
  %4045 = phi float [ %3925, %4059 ], [ %3925, %4142 ], [ %4334, %4324 ], [ %3925, %3918 ]
  %4046 = phi float [ %3926, %4059 ], [ %3926, %4142 ], [ %4335, %4324 ], [ %3926, %3918 ]
  %4047 = phi float [ %3927, %4059 ], [ %3927, %4142 ], [ %4336, %4324 ], [ %3927, %3918 ]
  %4048 = phi float [ %3928, %4059 ], [ %3928, %4142 ], [ %4248, %4324 ], [ %3928, %3918 ]
  %4049 = phi float [ %3929, %4059 ], [ %3929, %4142 ], [ %4249, %4324 ], [ %3929, %3918 ]
  %4050 = phi float [ %3930, %4059 ], [ %3930, %4142 ], [ %4250, %4324 ], [ %3930, %3918 ]
  %4051 = phi float [ %3931, %4059 ], [ %3931, %4142 ], [ %4277, %4324 ], [ %3931, %3918 ]
  %4052 = phi float [ %3932, %4059 ], [ %3932, %4142 ], [ %4274, %4324 ], [ %3932, %3918 ]
  %4053 = phi float [ %3933, %4059 ], [ %3933, %4142 ], [ %4271, %4324 ], [ %3933, %3918 ]
  %4054 = phi float [ %3934, %4059 ], [ %3934, %4142 ], [ %4265, %4324 ], [ %3934, %3918 ]
  %4055 = phi float [ %3935, %4059 ], [ %3935, %4142 ], [ %4260, %4324 ], [ %3935, %3918 ]
  %4056 = phi float [ %3936, %4059 ], [ %3936, %4142 ], [ %4261, %4324 ], [ %3936, %3918 ]
  %4057 = phi float [ %3937, %4059 ], [ %3937, %4142 ], [ %4262, %4324 ], [ %3937, %3918 ]
  %4058 = icmp eq i32 %3941, 0
  br i1 %4058, label %4337, label %3918

; <label>:4059                                    ; preds = %3918
  %4060 = extractvalue %dx.types.ResRet.f32 %3945, 3
  %4061 = extractvalue %dx.types.ResRet.f32 %3964, 3
  %4062 = extractvalue %dx.types.ResRet.f32 %3964, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %4064 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %4065 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %4066 = extractvalue %dx.types.ResRet.i32 %3950, 3
  %4067 = extractvalue %dx.types.ResRet.i32 %3950, 2
  %4068 = bitcast float %4060 to i32
  %4069 = add i32 %4066, 0
  %4070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4069, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4072 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4070, %dx.types.Handle %4071, float %3999, float %4006, float undef, float undef, i32 0, i32 0, i32 undef, float %4027, float %4029, float undef, float %4028, float %4030, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  %4074 = fmul fast float %4073, %4065
  %4075 = fadd fast float %4074, %4064
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = fmul fast float %3999, %3959
  %4078 = call float @dx.op.tertiary.f32(i32 46, float %3960, float %4006, float %4077)  ; FMad(a,b,c)
  %4079 = fadd fast float %4078, %4063
  %4080 = fmul fast float %3999, %3961
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %3962, float %4006, float %4080)  ; FMad(a,b,c)
  %4082 = fadd fast float %4081, %4062
  %4083 = fmul fast float %4027, %3959
  %4084 = call float @dx.op.tertiary.f32(i32 46, float %3960, float %4029, float %4083)  ; FMad(a,b,c)
  %4085 = fmul fast float %4027, %3961
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %3962, float %4029, float %4085)  ; FMad(a,b,c)
  %4087 = fmul fast float %4028, %3959
  %4088 = call float @dx.op.tertiary.f32(i32 46, float %3960, float %4030, float %4087)  ; FMad(a,b,c)
  %4089 = fmul fast float %4028, %3961
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %3962, float %4030, float %4089)  ; FMad(a,b,c)
  %4091 = add i32 %4067, 0
  %4092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4091, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4093 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4092, %dx.types.Handle %4071, float %4079, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4086, float undef, float %4088, float %4090, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = and i32 %4068, 1024
  %4096 = icmp ne i32 %4095, 0
  %4097 = fcmp fast ogt float %4094, 0x3FE0101020000000
  %4098 = uitofp i1 %4097 to float
  %4099 = select i1 %4096, float %4098, float %4094
  %4100 = and i32 %4068, 8192
  %4101 = icmp ne i32 %4100, 0
  %4102 = select i1 %4101, float %4061, float 1.000000e+00
  %4103 = fmul fast float %3999, 2.000000e+00
  %4104 = fadd fast float %4103, -1.000000e+00
  %4105 = call float @dx.op.unary.f32(i32 6, float %4104)  ; FAbs(value)
  %4106 = fmul fast float %4105, %3992
  %4107 = fsub fast float %4106, %3992
  %4108 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4109 = fmul fast float %4006, 2.000000e+00
  %4110 = fadd fast float %4109, -1.000000e+00
  %4111 = call float @dx.op.unary.f32(i32 6, float %4110)  ; FAbs(value)
  %4112 = fmul fast float %4111, %3993
  %4113 = fsub fast float %4112, %3993
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = fmul fast float %4018, %3955
  %4116 = fsub fast float %4115, %3955
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = fmul fast float %4076, %4102
  %4119 = fmul fast float %4118, %4073
  %4120 = fmul fast float %4119, %4108
  %4121 = fmul fast float %4120, %4099
  %4122 = fmul fast float %4121, %4114
  %4123 = fmul fast float %4122, %4117
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4127 = fsub fast float %4035, %4126
  %4128 = fmul fast float %4127, %4125
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = fmul fast float %4123, %3956
  %4131 = fadd fast float %4123, %3956
  %4132 = fmul fast float %4131, %3965
  %4133 = fsub fast float %4132, %3965
  %4134 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4135 = and i32 %4068, 128
  %4136 = icmp ne i32 %4135, 0
  %4137 = select i1 %4136, float %4134, float %4130
  %4138 = fmul fast float %4137, %4129
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = fcmp fast ugt float %4138, %4140
  br i1 %4141, label %4142, label %4039

; <label>:4142                                    ; preds = %4059
  %4143 = select i1 %4101, float %4138, float 0.000000e+00
  %4144 = fadd fast float %4143, %3920
  %4145 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  br i1 %4101, label %4039, label %4146

; <label>:4146                                    ; preds = %4142
  %4147 = and i32 %4068, 4
  %4148 = and i32 %4068, 8
  %4149 = add i32 %3951, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4152 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4150, %dx.types.Handle %4151, float %4079, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4086, float undef, float %4088, float %4090, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = extractvalue %dx.types.ResRet.f32 %4152, 3
  %4157 = bitcast float %3977 to i32
  %4158 = and i32 %4157, 255
  %4159 = uitofp i32 %4158 to float
  %4160 = lshr i32 %4157, 8
  %4161 = and i32 %4160, 255
  %4162 = uitofp i32 %4161 to float
  %4163 = fmul fast float %4156, %4159
  %4164 = fadd fast float %4163, %4162
  %4165 = fmul fast float %4164, 0x3F70101000000000
  %4166 = add i32 %3952, 0
  %4167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4166, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4168 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4167, %dx.types.Handle %4151, float %4079, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4086, float undef, float %4088, float %4090, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = extractvalue %dx.types.ResRet.f32 %4168, 1
  %4171 = extractvalue %dx.types.ResRet.f32 %4168, 2
  %4172 = extractvalue %dx.types.ResRet.f32 %4168, 3
  %4173 = bitcast float %3971 to i32
  %4174 = and i32 %4173, 255
  %4175 = uitofp i32 %4174 to float
  %4176 = lshr i32 %4173, 8
  %4177 = and i32 %4176, 255
  %4178 = uitofp i32 %4177 to float
  %4179 = lshr i32 %4173, 16
  %4180 = and i32 %4179, 255
  %4181 = uitofp i32 %4180 to float
  %4182 = fmul fast float %4181, 0x3F70101000000000
  %4183 = fmul fast float %4169, %4175
  %4184 = fadd fast float %4183, %4178
  %4185 = fmul fast float %4184, 0x3F70101000000000
  %4186 = fadd fast float %4170, -5.000000e-01
  %4187 = fadd fast float %4172, -5.000000e-01
  %4188 = fmul fast float %4186, %4182
  %4189 = fmul fast float %4187, %4182
  %4190 = fadd fast float %4188, 5.000000e-01
  %4191 = fadd fast float %4189, 5.000000e-01
  %4192 = fmul fast float %4153, %3980
  %4193 = fmul fast float %4154, %3981
  %4194 = fmul fast float %4155, %3982
  %4195 = fmul fast float %4190, 2.000000e+00
  %4196 = fadd fast float %4195, -1.000000e+00
  %4197 = fmul fast float %4191, 2.000000e+00
  %4198 = fadd fast float %4197, -1.000000e+00
  %4199 = fadd fast float %4196, %4198
  %4200 = fmul fast float %4199, 5.000000e-01
  %4201 = fsub fast float %4196, %4198
  %4202 = fmul fast float %4201, 5.000000e-01
  %4203 = call float @dx.op.unary.f32(i32 6, float %4200)  ; FAbs(value)
  %4204 = fsub fast float 1.000000e+00, %4203
  %4205 = call float @dx.op.unary.f32(i32 6, float %4202)  ; FAbs(value)
  %4206 = fsub fast float %4204, %4205
  %4207 = call float @dx.op.dot3.f32(i32 55, float %4200, float %4202, float %4206, float %4200, float %4202, float %4206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4208 = call float @dx.op.unary.f32(i32 25, float %4207)  ; Rsqrt(value)
  %4209 = fmul fast float %4200, %4208
  %4210 = fmul fast float %4202, %4208
  %4211 = fmul fast float %4208, %4206
  %4212 = fmul fast float %4211, %3946
  %4213 = fmul fast float %4211, %3947
  %4214 = fmul fast float %4211, %3948
  %4215 = fmul fast float %4209, %3968
  %4216 = fmul fast float %4209, %3969
  %4217 = fmul fast float %4209, %3970
  %4218 = fadd fast float %4215, %4212
  %4219 = fadd fast float %4216, %4213
  %4220 = fadd fast float %4217, %4214
  %4221 = fmul fast float %4210, %3974
  %4222 = fmul fast float %4210, %3975
  %4223 = fmul fast float %4210, %3976
  %4224 = fadd fast float %4218, %4221
  %4225 = fadd fast float %4219, %4222
  %4226 = fadd fast float %4220, %4223
  %4227 = call float @dx.op.dot3.f32(i32 55, float %4224, float %4225, float %4226, float %4224, float %4225, float %4226)  ; Dot3(ax,ay,az,bx,by,bz)
  %4228 = call float @dx.op.unary.f32(i32 25, float %4227)  ; Rsqrt(value)
  %4229 = fmul fast float %4224, %4228
  %4230 = fmul fast float %4225, %4228
  %4231 = fmul fast float %4226, %4228
  %4232 = icmp ne i32 %4148, 0
  %4233 = select i1 %4232, float 1.000000e+00, float 0.000000e+00
  %4234 = fmul fast float %4138, %4233
  %4235 = and i32 %4068, 1
  %4236 = icmp eq i32 %4235, 0
  br i1 %4236, label %4237, label %4241

; <label>:4237                                    ; preds = %4146
  %4238 = fsub fast float %4229, %3928
  %4239 = fsub fast float %4230, %3929
  %4240 = fsub fast float %4231, %3930
  br label %4241

; <label>:4241                                    ; preds = %4237, %4146
  %4242 = phi float [ %4238, %4237 ], [ %4229, %4146 ]
  %4243 = phi float [ %4239, %4237 ], [ %4230, %4146 ]
  %4244 = phi float [ %4240, %4237 ], [ %4231, %4146 ]
  %4245 = fmul float %4244, %4234
  %4246 = fmul float %4243, %4234
  %4247 = fmul float %4242, %4234
  %4248 = fadd fast float %4247, %3928
  %4249 = fadd fast float %4246, %3929
  %4250 = fadd fast float %4245, %3930
  %4251 = icmp ne i32 %4147, 0
  %4252 = select i1 %4251, float 1.000000e+00, float 0.000000e+00
  %4253 = fmul fast float %4138, %4252
  %4254 = fsub fast float %4192, %3935
  %4255 = fsub fast float %4193, %3936
  %4256 = fsub fast float %4194, %3937
  %4257 = fmul fast float %4254, %4253
  %4258 = fmul fast float %4255, %4253
  %4259 = fmul fast float %4256, %4253
  %4260 = fadd fast float %4257, %3935
  %4261 = fadd fast float %4258, %3936
  %4262 = fadd fast float %4259, %3937
  %4263 = fsub fast float %4165, %3934
  %4264 = fmul fast float %4263, %4253
  %4265 = fadd fast float %4264, %3934
  %4266 = fmul fast float %4253, %3924
  %4267 = fsub fast float %3924, %4266
  %4268 = fmul fast float %4253, %3923
  %4269 = fsub fast float %3923, %4268
  %4270 = fadd fast float %4138, %3933
  %4271 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4272 = fsub fast float %4185, %3932
  %4273 = fmul fast float %4272, %4234
  %4274 = fadd fast float %4273, %3932
  %4275 = fsub fast float %4171, %3931
  %4276 = fmul fast float %4275, %4234
  %4277 = fadd fast float %4276, %3931
  %4278 = call float @dx.op.dot3.f32(i32 55, float %4192, float %4193, float %4194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 0
  %4281 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4282 = fmul fast float %4281, %4278
  %4283 = fadd fast float %4282, %4280
  %4284 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4285 = bitcast float %3983 to i32
  %4286 = and i32 %4285, 65535
  %4287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4286)  ; LegacyF16ToF32(value)
  %4288 = lshr i32 %4285, 16
  %4289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4288)  ; LegacyF16ToF32(value)
  %4290 = fcmp fast oge float %4287, 0.000000e+00
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = select i1 %4290, float %4287, float %4292
  %4294 = fadd fast float %4293, %4289
  %4295 = fsub fast float %4284, %3922
  %4296 = fmul fast float %4295, %4138
  %4297 = fadd fast float %4296, %3922
  %4298 = fmul fast float %4294, %4138
  %4299 = call float @dx.op.binary.f32(i32 35, float %3921, float %4298)  ; FMax(a,b)
  %4300 = and i32 %4068, 16
  %4301 = icmp eq i32 %4300, 0
  br i1 %4301, label %4324, label %4302

; <label>:4302                                    ; preds = %4241
  %4303 = bitcast float %3989 to i32
  %4304 = add i32 %3986, 0
  %4305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4304, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4306 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4305, %dx.types.Handle %4151, float %4079, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4086, float undef, float %4088, float %4090, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = extractvalue %dx.types.ResRet.f32 %4306, 1
  %4309 = extractvalue %dx.types.ResRet.f32 %4306, 2
  %4310 = and i32 %4303, 65535
  %4311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4310)  ; LegacyF16ToF32(value)
  %4312 = fmul fast float %4307, %3980
  %4313 = fmul fast float %4308, %3981
  %4314 = fmul fast float %4309, %3982
  %4315 = and i32 %4068, 16384
  %4316 = icmp ne i32 %4315, 0
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = select i1 %4316, float %4318, float 1.000000e+00
  %4320 = fmul fast float %4319, %4311
  %4321 = fmul fast float %4312, %4320
  %4322 = fmul fast float %4313, %4320
  %4323 = fmul fast float %4314, %4320
  br label %4324

; <label>:4324                                    ; preds = %4302, %4241
  %4325 = phi float [ %4321, %4302 ], [ 0.000000e+00, %4241 ]
  %4326 = phi float [ %4322, %4302 ], [ 0.000000e+00, %4241 ]
  %4327 = phi float [ %4323, %4302 ], [ 0.000000e+00, %4241 ]
  %4328 = fsub fast float %4325, %3925
  %4329 = fsub fast float %4326, %3926
  %4330 = fsub fast float %4327, %3927
  %4331 = fmul fast float %4328, %4138
  %4332 = fmul fast float %4329, %4138
  %4333 = fmul fast float %4330, %4138
  %4334 = fadd fast float %4331, %3925
  %4335 = fadd fast float %4332, %3926
  %4336 = fadd fast float %4333, %3927
  br label %4039

; <label>:4337                                    ; preds = %4039
  br label %4338

; <label>:4338                                    ; preds = %4337, %3855
  %4339 = phi float [ 0.000000e+00, %3855 ], [ %4040, %4337 ]
  %4340 = phi float [ %3799, %3855 ], [ %4041, %4337 ]
  %4341 = phi float [ %3778, %3855 ], [ %4042, %4337 ]
  %4342 = phi float [ %3777, %3855 ], [ %4043, %4337 ]
  %4343 = phi float [ %3776, %3855 ], [ %4044, %4337 ]
  %4344 = phi float [ %3821, %3855 ], [ %4045, %4337 ]
  %4345 = phi float [ %3823, %3855 ], [ %4046, %4337 ]
  %4346 = phi float [ %3825, %3855 ], [ %4047, %4337 ]
  %4347 = phi float [ %3851, %3855 ], [ %4048, %4337 ]
  %4348 = phi float [ %3852, %3855 ], [ %4049, %4337 ]
  %4349 = phi float [ %3853, %3855 ], [ %4050, %4337 ]
  %4350 = phi float [ %3775, %3855 ], [ %4051, %4337 ]
  %4351 = phi float [ %3774, %3855 ], [ %4052, %4337 ]
  %4352 = phi float [ 0.000000e+00, %3855 ], [ %4053, %4337 ]
  %4353 = phi float [ %3773, %3855 ], [ %4054, %4337 ]
  %4354 = phi float [ %3806, %3855 ], [ %4055, %4337 ]
  %4355 = phi float [ %3807, %3855 ], [ %4056, %4337 ]
  %4356 = phi float [ %3808, %3855 ], [ %4057, %4337 ]
  %4357 = call float @dx.op.dot3.f32(i32 55, float %4347, float %4348, float %4349, float %4347, float %4348, float %4349)  ; Dot3(ax,ay,az,bx,by,bz)
  %4358 = call float @dx.op.unary.f32(i32 25, float %4357)  ; Rsqrt(value)
  %4359 = fmul fast float %4358, %4347
  %4360 = fmul fast float %4358, %4348
  %4361 = fmul fast float %4358, %4349
  %4362 = fadd fast float %4352, %1358
  %4363 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4364 = call float @dx.op.dot3.f32(i32 55, float %4359, float %4360, float %4361, float %4359, float %4360, float %4361)  ; Dot3(ax,ay,az,bx,by,bz)
  %4365 = call float @dx.op.unary.f32(i32 25, float %4364)  ; Rsqrt(value)
  %4366 = fmul fast float %4365, %4359
  %4367 = fmul fast float %4365, %4360
  %4368 = fmul fast float %4365, %4361
  br label %4369

; <label>:4369                                    ; preds = %4338, %3764
  %4370 = phi float [ %4366, %4338 ], [ %3851, %3764 ]
  %4371 = phi float [ %4367, %4338 ], [ %3852, %3764 ]
  %4372 = phi float [ %4368, %4338 ], [ %3853, %3764 ]
  %4373 = phi float [ %4354, %4338 ], [ %3806, %3764 ]
  %4374 = phi float [ %4355, %4338 ], [ %3807, %3764 ]
  %4375 = phi float [ %4356, %4338 ], [ %3808, %3764 ]
  %4376 = phi float [ %4344, %4338 ], [ %3821, %3764 ]
  %4377 = phi float [ %4345, %4338 ], [ %3823, %3764 ]
  %4378 = phi float [ %4346, %4338 ], [ %3825, %3764 ]
  %4379 = phi float [ %4353, %4338 ], [ %3773, %3764 ]
  %4380 = phi float [ %4363, %4338 ], [ %1358, %3764 ]
  %4381 = phi float [ %4351, %4338 ], [ %3774, %3764 ]
  %4382 = phi float [ %4350, %4338 ], [ %3775, %3764 ]
  %4383 = phi float [ %4343, %4338 ], [ %3776, %3764 ]
  %4384 = phi float [ %4342, %4338 ], [ %3777, %3764 ]
  %4385 = phi float [ %4339, %4338 ], [ 0.000000e+00, %3764 ]
  %4386 = phi float [ %4340, %4338 ], [ %3799, %3764 ]
  %4387 = phi float [ %4341, %4338 ], [ %3778, %3764 ]
  %4388 = fadd fast float %4379, 0xBFB99999A0000000
  %4389 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4390 = fmul fast float %4389, 0x3FF1C71C80000000
  %4391 = call float @dx.op.binary.f32(i32 36, float %4379, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4392 = fsub fast float 1.000000e+00, %4390
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = fmul fast float %4393, %4373
  %4395 = fmul fast float %4393, %4374
  %4396 = fmul fast float %4393, %4375
  %4397 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4398 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4399 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4400 = fmul fast float %4390, %4373
  %4401 = fmul fast float %4390, %4374
  %4402 = fmul fast float %4390, %4375
  %4403 = fadd fast float %4400, %4391
  %4404 = fadd fast float %4401, %4391
  %4405 = fadd fast float %4402, %4391
  %4406 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4407 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.i32 %4410, 3
  %4412 = and i32 %4411, 8
  %4413 = icmp ne i32 %4412, 0
  %4414 = call float @dx.op.binary.f32(i32 35, float %4397, float %4373)  ; FMax(a,b)
  %4415 = call float @dx.op.binary.f32(i32 35, float %4398, float %4373)  ; FMax(a,b)
  %4416 = call float @dx.op.binary.f32(i32 35, float %4399, float %4373)  ; FMax(a,b)
  %4417 = call float @dx.op.dot3.f32(i32 55, float %4397, float %4398, float %4399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4418 = select i1 %219, float %4373, float %4397
  %4419 = select i1 %219, float %4417, float %4398
  %4420 = select i1 %219, float 1.000000e+00, float %4399
  %4421 = select i1 %4413, float %4414, float %4418
  %4422 = select i1 %4413, float %4415, float %4419
  %4423 = select i1 %4413, float %4416, float %4420
  %4424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.CBufRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.CBufRet.f32 %4424, 2
  %4428 = fadd fast float %4425, %167
  %4429 = fadd fast float %4426, %168
  %4430 = fadd fast float %4427, %169
  %4431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.CBufRet.f32 %4431, 1
  %4434 = fsub fast float %4428, %4432
  %4435 = fsub fast float %4429, %4433
  %4436 = fmul fast float %4434, %4434
  %4437 = fmul fast float %4435, %4435
  %4438 = fadd fast float %4436, %4437
  %4439 = call float @dx.op.unary.f32(i32 24, float %4438)  ; Sqrt(value)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4431, 2
  %4441 = fcmp fast olt float %4439, %4440
  br i1 %4441, label %4442, label %4509

; <label>:4442                                    ; preds = %4369
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 0
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 0
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.CBufRet.f32 %4443, 1
  %4450 = extractvalue %dx.types.CBufRet.f32 %4445, 1
  %4451 = extractvalue %dx.types.CBufRet.f32 %4447, 1
  %4452 = extractvalue %dx.types.CBufRet.f32 %4443, 3
  %4453 = extractvalue %dx.types.CBufRet.f32 %4445, 3
  %4454 = extractvalue %dx.types.CBufRet.f32 %4447, 3
  %4455 = fadd fast float %4452, %4428
  %4456 = fadd fast float %4453, %4429
  %4457 = fadd fast float %4454, %4430
  %4458 = fmul fast float %4455, %4444
  %4459 = call float @dx.op.tertiary.f32(i32 46, float %4456, float %4446, float %4458)  ; FMad(a,b,c)
  %4460 = call float @dx.op.tertiary.f32(i32 46, float %4457, float %4448, float %4459)  ; FMad(a,b,c)
  %4461 = fmul fast float %4455, %4449
  %4462 = call float @dx.op.tertiary.f32(i32 46, float %4456, float %4450, float %4461)  ; FMad(a,b,c)
  %4463 = call float @dx.op.tertiary.f32(i32 46, float %4457, float %4451, float %4462)  ; FMad(a,b,c)
  %4464 = fsub fast float %4460, %4452
  %4465 = fsub fast float %4463, %4453
  %4466 = fsub fast float %4464, %4432
  %4467 = fadd fast float %4466, %4440
  %4468 = fsub fast float %4465, %4433
  %4469 = fadd fast float %4468, %4440
  %4470 = extractvalue %dx.types.CBufRet.f32 %4431, 3
  %4471 = fmul fast float %4467, %4470
  %4472 = fmul fast float %4469, %4470
  %4473 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4475 = fsub fast float 1.000000e+00, %4473
  %4476 = fsub fast float 1.000000e+00, %4474
  %4477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %30, float %4475, float %4476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = fcmp fast ugt float %4478, 0.000000e+00
  br i1 %4479, label %4480, label %4783

; <label>:4480                                    ; preds = %4442
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4483 = fmul fast float %4482, %4478
  %4484 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4485 = fadd fast float %4484, %4483
  %4486 = extractvalue %dx.types.CBufRet.f32 %4447, 2
  %4487 = fadd fast float %4485, %4454
  %4488 = fmul fast float %4460, %4448
  %4489 = call float @dx.op.tertiary.f32(i32 46, float %4463, float %4451, float %4488)  ; FMad(a,b,c)
  %4490 = call float @dx.op.tertiary.f32(i32 46, float %4487, float %4486, float %4489)  ; FMad(a,b,c)
  %4491 = fsub fast float %4490, %4454
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 2
  %4494 = fsub fast float %4491, %4493
  %4495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %30, float %4475, float %4476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = extractvalue %dx.types.ResRet.f32 %4495, 1
  %4498 = extractvalue %dx.types.ResRet.f32 %4495, 2
  %4499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %4475, float %4476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = extractvalue %dx.types.ResRet.f32 %4499, 1
  %4502 = extractvalue %dx.types.ResRet.f32 %4499, 2
  %4503 = fadd fast float %4500, %4496
  %4504 = fmul fast float %4503, 0x3F847AE140000000
  %4505 = fadd fast float %4501, %4497
  %4506 = fmul fast float %4505, 0x3F847AE140000000
  %4507 = fadd fast float %4502, %4498
  %4508 = fmul fast float %4507, 0x3F847AE140000000
  br label %4783

; <label>:4509                                    ; preds = %4369
  %4510 = and i32 %198, 1
  %4511 = icmp eq i32 %4510, 0
  br i1 %4511, label %4783, label %4512

; <label>:4512                                    ; preds = %4509
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 0
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 0
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.CBufRet.f32 %4513, 1
  %4520 = extractvalue %dx.types.CBufRet.f32 %4515, 1
  %4521 = extractvalue %dx.types.CBufRet.f32 %4517, 1
  %4522 = extractvalue %dx.types.CBufRet.f32 %4513, 3
  %4523 = extractvalue %dx.types.CBufRet.f32 %4515, 3
  %4524 = extractvalue %dx.types.CBufRet.f32 %4517, 3
  %4525 = fadd fast float %4522, %4428
  %4526 = fadd fast float %4523, %4429
  %4527 = fadd fast float %4524, %4430
  %4528 = fmul fast float %4525, %4514
  %4529 = call float @dx.op.tertiary.f32(i32 46, float %4526, float %4516, float %4528)  ; FMad(a,b,c)
  %4530 = call float @dx.op.tertiary.f32(i32 46, float %4527, float %4518, float %4529)  ; FMad(a,b,c)
  %4531 = fmul fast float %4525, %4519
  %4532 = call float @dx.op.tertiary.f32(i32 46, float %4526, float %4520, float %4531)  ; FMad(a,b,c)
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4527, float %4521, float %4532)  ; FMad(a,b,c)
  %4534 = fsub fast float %4530, %4522
  %4535 = fsub fast float %4533, %4523
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.CBufRet.f32 %4536, 1
  %4539 = extractvalue %dx.types.CBufRet.f32 %4536, 2
  %4540 = extractvalue %dx.types.CBufRet.f32 %4536, 3
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.i32 %4543, 0
  %4545 = extractvalue %dx.types.CBufRet.i32 %4543, 1
  %4546 = udiv i32 %4545, %4544
  %4547 = fsub fast float %4534, %4537
  %4548 = fsub fast float %4535, %4538
  %4549 = call float @dx.op.binary.f32(i32 35, float %4547, float 0.000000e+00)  ; FMax(a,b)
  %4550 = call float @dx.op.binary.f32(i32 35, float %4548, float 0.000000e+00)  ; FMax(a,b)
  %4551 = call float @dx.op.binary.f32(i32 36, float %4549, float %4539)  ; FMin(a,b)
  %4552 = call float @dx.op.binary.f32(i32 36, float %4550, float %4540)  ; FMin(a,b)
  %4553 = add i32 %4544, -1
  %4554 = add i32 %4546, -1
  %4555 = fmul fast float %4551, %4542
  %4556 = fmul fast float %4552, %4542
  %4557 = fptoui float %4555 to i32
  %4558 = fptoui float %4556 to i32
  %4559 = call i32 @dx.op.binary.i32(i32 40, i32 %4557, i32 %4553)  ; UMin(a,b)
  %4560 = call i32 @dx.op.binary.i32(i32 40, i32 %4558, i32 %4554)  ; UMin(a,b)
  %4561 = mul i32 %4560, %4544
  %4562 = add i32 %4561, %4559
  %4563 = shl i32 %4562, 2
  %4564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.i32 %4564, 0
  %4566 = icmp eq i32 %4565, -1
  br i1 %4566, label %4783, label %4567

; <label>:4567                                    ; preds = %4512
  %4568 = mul i32 %4565, 148
  %4569 = add i32 %4568, 4
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = add i32 %4568, 8
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = add i32 %4568, 36
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = add i32 %4568, 60
  %4579 = add i32 %4568, 92
  %4580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.i32 %4580, 0
  %4582 = add i32 %4568, 116
  %4583 = fsub fast float %4534, %4571
  %4584 = fsub fast float %4535, %4574
  %4585 = fmul fast float %4542, %4583
  %4586 = fmul fast float %4542, %4584
  %4587 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4588 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4589 = fsub fast float 1.000000e+00, %4588
  %4590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4591 = extractvalue %dx.types.CBufRet.f32 %4590, 2
  %4592 = call float @dx.op.unary.f32(i32 83, float %4587)  ; DerivCoarseX(value)
  %4593 = call float @dx.op.unary.f32(i32 83, float %4589)  ; DerivCoarseX(value)
  %4594 = call float @dx.op.unary.f32(i32 84, float %4587)  ; DerivCoarseY(value)
  %4595 = call float @dx.op.unary.f32(i32 84, float %4589)  ; DerivCoarseY(value)
  %4596 = fmul fast float %4592, %4591
  %4597 = fmul fast float %4593, %4591
  %4598 = fmul fast float %4594, %4591
  %4599 = fmul fast float %4595, %4591
  %4600 = call float @dx.op.dot2.f32(i32 54, float %4598, float %4599, float %4598, float %4599)  ; Dot2(ax,ay,bx,by)
  %4601 = call float @dx.op.dot2.f32(i32 54, float %4596, float %4597, float %4596, float %4597)  ; Dot2(ax,ay,bx,by)
  %4602 = call float @dx.op.binary.f32(i32 35, float %4601, float %4600)  ; FMax(a,b)
  %4603 = call float @dx.op.unary.f32(i32 23, float %4602)  ; Log(value)
  %4604 = fmul fast float %4603, 5.000000e-01
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 1
  %4607 = fadd fast float %4606, %4604
  %4608 = call float @dx.op.binary.f32(i32 35, float %4607, float 0.000000e+00)  ; FMax(a,b)
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 3
  %4611 = fadd fast float %4610, %4608
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4614 = fadd fast float %4611, %4613
  %4615 = add i32 %4581, 0
  %4616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4615, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4617 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4616, i32 0)  ; GetDimensions(handle,mipLevel)
  %4618 = extractvalue %dx.types.Dimensions %4617, 0
  %4619 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4618)  ; FirstbitLo(value)
  %4620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.i32 %4620, 1
  %4622 = sub nsw i32 %4621, %4619
  %4623 = sitofp i32 %4622 to float
  %4624 = fsub fast float %4614, %4623
  %4625 = call float @dx.op.binary.f32(i32 35, float %4624, float 0.000000e+00)  ; FMax(a,b)
  %4626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4616, %dx.types.Handle %29, float %4587, float %4589, float %4577, float undef, i32 0, i32 0, i32 undef, float %4625)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4627 = extractvalue %dx.types.ResRet.f32 %4626, 0
  %4628 = fcmp ule float %4627, 0x3FE0101020000000
  %4629 = extractvalue %dx.types.CBufRet.i32 %4620, 0
  %4630 = and i32 %4629, 128
  %4631 = icmp ne i32 %4630, 0
  %4632 = and i1 %4628, %4631
  br i1 %4632, label %4783, label %4633

; <label>:4633                                    ; preds = %4567
  %4634 = add i32 %4568, 20
  %4635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4634, i32 undef)  ; BufferLoad(srv,index,wot)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = add i32 %4568, 24
  %4638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.f32 %4638, 0
  %4640 = add i32 %4568, 40
  %4641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = add i32 %4568, 96
  %4644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4643, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.i32 %4644, 0
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4648 = fmul fast float %4647, %4587
  %4649 = fmul fast float %4647, %4589
  %4650 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4651 = fadd fast float %4648, %4650
  %4652 = fadd fast float %4649, %4650
  %4653 = add i32 %4645, 0
  %4654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4653, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4655 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4654, i32 0)  ; GetDimensions(handle,mipLevel)
  %4656 = extractvalue %dx.types.Dimensions %4655, 0
  %4657 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4656)  ; FirstbitLo(value)
  %4658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.i32 %4658, 1
  %4660 = sub nsw i32 %4659, %4657
  %4661 = sitofp i32 %4660 to float
  %4662 = fsub fast float %4611, %4661
  %4663 = call float @dx.op.binary.f32(i32 35, float %4662, float 0.000000e+00)  ; FMax(a,b)
  %4664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4654, %dx.types.Handle %29, float %4651, float %4652, float %4642, float undef, i32 0, i32 0, i32 undef, float %4663)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = fmul fast float %4665, %4636
  %4667 = fadd fast float %4666, %4639
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 0
  %4670 = extractvalue %dx.types.CBufRet.f32 %4668, 1
  %4671 = extractvalue %dx.types.CBufRet.f32 %4668, 2
  %4672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.f32 %4672, 3
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 3
  %4676 = extractvalue %dx.types.CBufRet.f32 %4668, 3
  %4677 = fadd fast float %4673, %4534
  %4678 = fadd fast float %4675, %4535
  %4679 = fadd fast float %4667, %4676
  %4680 = fmul fast float %4677, %4669
  %4681 = call float @dx.op.tertiary.f32(i32 46, float %4678, float %4670, float %4680)  ; FMad(a,b,c)
  %4682 = call float @dx.op.tertiary.f32(i32 46, float %4679, float %4671, float %4681)  ; FMad(a,b,c)
  %4683 = fsub fast float %4682, %4676
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 2
  %4686 = fsub fast float %4683, %4685
  %4687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.i32 %4687, 0
  %4689 = call i32 @dx.op.binary.i32(i32 40, i32 %4565, i32 %4688)  ; UMin(a,b)
  %4690 = mul i32 %4689, 36
  %4691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4690, i32 undef)  ; BufferLoad(srv,index,wot)
  %4692 = extractvalue %dx.types.ResRet.i32 %4691, 0
  %4693 = add i32 %4690, 4
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 0
  %4696 = fmul fast float %4695, %4587
  %4697 = fmul fast float %4695, %4589
  %4698 = extractvalue %dx.types.CBufRet.f32 %4694, 1
  %4699 = fadd fast float %4696, %4698
  %4700 = fadd fast float %4697, %4698
  %4701 = icmp eq i32 %4692, 0
  br i1 %4701, label %4770, label %4702

; <label>:4702                                    ; preds = %4633
  br label %4703

; <label>:4703                                    ; preds = %4760, %4702
  %4704 = phi float [ %4761, %4760 ], [ 0.000000e+00, %4702 ]
  %4705 = phi float [ %4762, %4760 ], [ 0.000000e+00, %4702 ]
  %4706 = phi float [ %4763, %4760 ], [ 0.000000e+00, %4702 ]
  %4707 = phi float [ %4764, %4760 ], [ 0.000000e+00, %4702 ]
  %4708 = phi float [ %4765, %4760 ], [ 0.000000e+00, %4702 ]
  %4709 = phi float [ %4766, %4760 ], [ 0.000000e+00, %4702 ]
  %4710 = phi i32 [ %4767, %4760 ], [ 0, %4702 ]
  %4711 = shl i32 %4710, 2
  %4712 = add i32 %4578, %4711
  %4713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4712, i32 undef)  ; BufferLoad(srv,index,wot)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = add i32 %4582, %4711
  %4716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4715, i32 undef)  ; BufferLoad(srv,index,wot)
  %4717 = extractvalue %dx.types.ResRet.i32 %4716, 0
  %4718 = add i32 %4717, 0
  %4719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4718, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4720 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4719, i32 0)  ; GetDimensions(handle,mipLevel)
  %4721 = extractvalue %dx.types.Dimensions %4720, 0
  %4722 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4721)  ; FirstbitLo(value)
  %4723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.i32 %4723, 1
  %4725 = sub nsw i32 %4724, %4722
  %4726 = sitofp i32 %4725 to float
  %4727 = fsub fast float %4611, %4726
  %4728 = call float @dx.op.binary.f32(i32 35, float %4727, float 0.000000e+00)  ; FMax(a,b)
  %4729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4719, %dx.types.Handle %29, float %4699, float %4700, float %4714, float undef, i32 0, i32 0, i32 undef, float %4728)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = fcmp fast ogt float %4730, 0.000000e+00
  br i1 %4731, label %4732, label %4760

; <label>:4732                                    ; preds = %4703
  %4733 = add i32 %4693, %4711
  %4734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4733, i32 undef)  ; BufferLoad(srv,index,wot)
  %4735 = extractvalue %dx.types.ResRet.i32 %4734, 0
  %4736 = and i32 %4735, 32767
  %4737 = mul nuw nsw i32 %4736, 928
  %4738 = add nuw nsw i32 %4737, 48
  %4739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4738, i32 undef)  ; BufferLoad(srv,index,wot)
  %4740 = extractvalue %dx.types.ResRet.f32 %4739, 0
  %4741 = extractvalue %dx.types.ResRet.f32 %4739, 1
  %4742 = extractvalue %dx.types.ResRet.f32 %4739, 2
  %4743 = add nuw nsw i32 %4737, 60
  %4744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4743, i32 undef)  ; BufferLoad(srv,index,wot)
  %4745 = extractvalue %dx.types.ResRet.f32 %4744, 0
  %4746 = extractvalue %dx.types.ResRet.f32 %4744, 1
  %4747 = extractvalue %dx.types.ResRet.f32 %4744, 2
  %4748 = fmul fast float %4740, %4730
  %4749 = fmul fast float %4741, %4730
  %4750 = fmul fast float %4742, %4730
  %4751 = fadd fast float %4748, %4704
  %4752 = fadd fast float %4749, %4705
  %4753 = fadd fast float %4750, %4706
  %4754 = fmul fast float %4745, %4730
  %4755 = fmul fast float %4746, %4730
  %4756 = fmul fast float %4747, %4730
  %4757 = fadd fast float %4754, %4707
  %4758 = fadd fast float %4755, %4708
  %4759 = fadd fast float %4756, %4709
  br label %4760

; <label>:4760                                    ; preds = %4732, %4703
  %4761 = phi float [ %4751, %4732 ], [ %4704, %4703 ]
  %4762 = phi float [ %4752, %4732 ], [ %4705, %4703 ]
  %4763 = phi float [ %4753, %4732 ], [ %4706, %4703 ]
  %4764 = phi float [ %4757, %4732 ], [ %4707, %4703 ]
  %4765 = phi float [ %4758, %4732 ], [ %4708, %4703 ]
  %4766 = phi float [ %4759, %4732 ], [ %4709, %4703 ]
  %4767 = add nuw i32 %4710, 1
  %4768 = icmp eq i32 %4767, %4692
  br i1 %4768, label %4769, label %4703

; <label>:4769                                    ; preds = %4760
  br label %4770

; <label>:4770                                    ; preds = %4769, %4633
  %4771 = phi float [ 0.000000e+00, %4633 ], [ %4761, %4769 ]
  %4772 = phi float [ 0.000000e+00, %4633 ], [ %4762, %4769 ]
  %4773 = phi float [ 0.000000e+00, %4633 ], [ %4763, %4769 ]
  %4774 = phi float [ 0.000000e+00, %4633 ], [ %4764, %4769 ]
  %4775 = phi float [ 0.000000e+00, %4633 ], [ %4765, %4769 ]
  %4776 = phi float [ 0.000000e+00, %4633 ], [ %4766, %4769 ]
  %4777 = fadd fast float %4774, %4771
  %4778 = fmul fast float %4777, 0x3F847AE140000000
  %4779 = fadd fast float %4775, %4772
  %4780 = fmul fast float %4779, 0x3F847AE140000000
  %4781 = fadd fast float %4776, %4773
  %4782 = fmul fast float %4781, 0x3F847AE140000000
  br label %4783

; <label>:4783                                    ; preds = %4770, %4567, %4512, %4509, %4480, %4442
  %4784 = phi float [ %4494, %4480 ], [ -1.310720e+05, %4442 ], [ %4686, %4770 ], [ -1.310720e+05, %4512 ], [ -1.310720e+05, %4567 ], [ -1.310720e+05, %4509 ]
  %4785 = phi float [ %4504, %4480 ], [ 0.000000e+00, %4442 ], [ %4778, %4770 ], [ 0.000000e+00, %4512 ], [ 0.000000e+00, %4567 ], [ 0.000000e+00, %4509 ]
  %4786 = phi float [ %4506, %4480 ], [ 0.000000e+00, %4442 ], [ %4780, %4770 ], [ 0.000000e+00, %4512 ], [ 0.000000e+00, %4567 ], [ 0.000000e+00, %4509 ]
  %4787 = phi float [ %4508, %4480 ], [ 0.000000e+00, %4442 ], [ %4782, %4770 ], [ 0.000000e+00, %4512 ], [ 0.000000e+00, %4567 ], [ 0.000000e+00, %4509 ]
  %4788 = phi i1 [ true, %4480 ], [ false, %4442 ], [ true, %4770 ], [ false, %4512 ], [ false, %4567 ], [ false, %4509 ]
  %4789 = and i32 %198, 3
  %4790 = icmp eq i32 %4789, 1
  %4791 = select i1 %4790, float 1.000000e+00, float 0.000000e+00
  %4792 = fsub fast float %4784, %169
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = select i1 %4788, float %4793, float 1.000000e+00
  %4795 = fmul fast float %4794, %4791
  %4796 = icmp eq i32 %4789, 3
  %4797 = select i1 %4796, float 1.000000e+00, float %4795
  %4798 = call float @dx.op.binary.f32(i32 35, float %4385, float %4797)  ; FMax(a,b)
  %4799 = fcmp fast olt float %4797, 1.000000e+00
  %4800 = and i1 %231, %4799
  br i1 %4800, label %4801, label %4811

; <label>:4801                                    ; preds = %4783
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %51, float %52, float %53, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = fadd fast float %4803, %4798
  %4807 = fcmp ule float %50, 0.000000e+00
  %4808 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = select i1 %4807, float %4808, float 1.000000e+00
  %4810 = fmul fast float %4809, %4805
  br label %4811

; <label>:4811                                    ; preds = %4801, %4783
  %4812 = phi float [ %4806, %4801 ], [ %4798, %4783 ]
  %4813 = phi float [ %4804, %4801 ], [ 0.000000e+00, %4783 ]
  %4814 = phi float [ %4810, %4801 ], [ 0.000000e+00, %4783 ]
  %4815 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4816 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4817 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4818 = fcmp fast une float %4816, 0.000000e+00
  %4819 = fcmp fast une float %4817, 0.000000e+00
  %4820 = or i1 %4818, %4819
  br i1 %4820, label %4821, label %5380

; <label>:4821                                    ; preds = %4811
  br i1 %4818, label %4822, label %5095

; <label>:4822                                    ; preds = %4821
  %4823 = call float @dx.op.unary.f32(i32 23, float %4382)  ; Log(value)
  %4824 = fmul fast float %4823, 4.000000e+00
  %4825 = call float @dx.op.unary.f32(i32 21, float %4824)  ; Exp(value)
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = fmul fast float %4827, %38
  %4829 = fmul fast float %4827, %39
  %4830 = fmul fast float %4827, %40
  %4831 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4832 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %4833 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %4834 = call float @dx.op.unary.f32(i32 23, float %4831)  ; Log(value)
  %4835 = call float @dx.op.unary.f32(i32 23, float %4832)  ; Log(value)
  %4836 = call float @dx.op.unary.f32(i32 23, float %4833)  ; Log(value)
  %4837 = fmul fast float %4834, 4.000000e+00
  %4838 = fmul fast float %4835, 4.000000e+00
  %4839 = fmul fast float %4836, 4.000000e+00
  %4840 = call float @dx.op.unary.f32(i32 21, float %4837)  ; Exp(value)
  %4841 = call float @dx.op.unary.f32(i32 21, float %4838)  ; Exp(value)
  %4842 = call float @dx.op.unary.f32(i32 21, float %4839)  ; Exp(value)
  %4843 = fadd fast float %4841, %4840
  %4844 = fadd fast float %4843, %4842
  %4845 = fdiv fast float 1.000000e+00, %4844
  %4846 = fmul fast float %4845, %4840
  %4847 = fcmp fast ogt float %47, 0.000000e+00
  %4848 = fcmp fast ogt float %48, 0.000000e+00
  %4849 = fcmp fast ogt float %49, 0.000000e+00
  %4850 = fcmp fast olt float %47, 0.000000e+00
  %4851 = fcmp fast olt float %48, 0.000000e+00
  %4852 = fcmp fast olt float %49, 0.000000e+00
  %4853 = zext i1 %4847 to i32
  %4854 = zext i1 %4848 to i32
  %4855 = zext i1 %4849 to i32
  %4856 = zext i1 %4850 to i32
  %4857 = zext i1 %4851 to i32
  %4858 = zext i1 %4852 to i32
  %4859 = sub nsw i32 %4853, %4856
  %4860 = sub nsw i32 %4854, %4857
  %4861 = sub nsw i32 %4855, %4858
  %4862 = call float @dx.op.unary.f32(i32 83, float %4828)  ; DerivCoarseX(value)
  %4863 = call float @dx.op.unary.f32(i32 83, float %4829)  ; DerivCoarseX(value)
  %4864 = call float @dx.op.unary.f32(i32 83, float %4830)  ; DerivCoarseX(value)
  %4865 = call float @dx.op.unary.f32(i32 84, float %4828)  ; DerivCoarseY(value)
  %4866 = call float @dx.op.unary.f32(i32 84, float %4829)  ; DerivCoarseY(value)
  %4867 = call float @dx.op.unary.f32(i32 84, float %4830)  ; DerivCoarseY(value)
  %4868 = fcmp fast ole float %230, %4846
  %4869 = fmul fast float %4845, %4843
  %4870 = fcmp fast ole float %230, %4869
  %4871 = select i1 %4870, float %4830, float %4828
  %4872 = select i1 %4870, float %4828, float %4829
  %4873 = select i1 %4868, float %4829, float %4871
  %4874 = select i1 %4868, float %4830, float %4872
  %4875 = select i1 %4870, float %4864, float %4862
  %4876 = select i1 %4870, float %4862, float %4863
  %4877 = select i1 %4868, float %4863, float %4875
  %4878 = select i1 %4868, float %4864, float %4876
  %4879 = select i1 %4870, float %4867, float %4865
  %4880 = select i1 %4870, float %4865, float %4866
  %4881 = select i1 %4868, float %4866, float %4879
  %4882 = select i1 %4868, float %4867, float %4880
  %4883 = call float @dx.op.unary.f32(i32 27, float %4873)  ; Round_ni(value)
  %4884 = call float @dx.op.unary.f32(i32 27, float %4874)  ; Round_ni(value)
  %4885 = fptosi float %4883 to i32
  %4886 = fptosi float %4884 to i32
  %4887 = xor i32 %4886, %4885
  %4888 = sitofp i32 %4887 to float
  %4889 = fptosi float %4888 to i32
  %4890 = sitofp i32 %4889 to float
  %4891 = fmul fast float %4890, 0x3FE3C6EF40000000
  %4892 = frem fast float %4883, 2.560000e+02
  %4893 = frem fast float %4884, 2.560000e+02
  %4894 = fptoui float %4892 to i32
  %4895 = fptoui float %4893 to i32
  %4896 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4894, i32 %4895, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = fadd fast float %4897, %4891
  %4901 = fadd fast float %4898, %4891
  %4902 = fadd fast float %4899, %4891
  %4903 = call float @dx.op.unary.f32(i32 22, float %4900)  ; Frc(value)
  %4904 = call float @dx.op.unary.f32(i32 22, float %4901)  ; Frc(value)
  %4905 = call float @dx.op.unary.f32(i32 22, float %4902)  ; Frc(value)
  %4906 = fmul fast float %4905, 0x401921FB60000000
  %4907 = call float @dx.op.unary.f32(i32 13, float %4906)  ; Sin(value)
  %4908 = call float @dx.op.unary.f32(i32 12, float %4906)  ; Cos(value)
  %4909 = fsub fast float -0.000000e+00, %4908
  %4910 = fmul fast float %4908, %4873
  %4911 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4874, float %4910)  ; FMad(a,b,c)
  %4912 = fmul fast float %4907, %4873
  %4913 = call float @dx.op.tertiary.f32(i32 46, float %4909, float %4874, float %4912)  ; FMad(a,b,c)
  %4914 = fadd fast float %4911, %4903
  %4915 = fadd fast float %4913, %4904
  %4916 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4917 = bitcast float %4916 to i32
  %4918 = icmp eq i32 %4917, 0
  br i1 %4918, label %4957, label %4919

; <label>:4919                                    ; preds = %4822
  %4920 = add i32 %4917, 0
  %4921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4922 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4921, %dx.types.Handle %77, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float %4877, float %4878, float undef, float %4881, float %4882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 0
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4926 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4927 = fsub fast float 1.000000e+00, %4816
  %4928 = call float @dx.op.binary.f32(i32 35, float %4927, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4929 = bitcast float %4816 to i32
  %4930 = sitofp i32 %4929 to float
  %4931 = fadd fast float %4930, 0xC1CFBF8940000000
  %4932 = fmul fast float %4926, %4931
  %4933 = fadd fast float %4932, 0x41CFBF8940000000
  %4934 = fptosi float %4933 to i32
  %4935 = bitcast i32 %4934 to float
  %4936 = bitcast float %4928 to i32
  %4937 = sitofp i32 %4936 to float
  %4938 = fadd fast float %4937, 0xC1CFBF8940000000
  %4939 = fmul fast float %4938, %4926
  %4940 = fadd fast float %4939, 0x41CFBF8940000000
  %4941 = fptosi float %4940 to i32
  %4942 = bitcast i32 %4941 to float
  %4943 = fmul fast float %4935, %4925
  %4944 = fmul fast float %4942, %4925
  %4945 = fsub fast float %4928, %4943
  %4946 = fadd fast float %4944, %4928
  %4947 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4949 = fsub fast float %4923, %4947
  %4950 = fsub fast float %4948, %4947
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4953, %4949
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fcmp fast olt float %4955, 0x3F70101020000000
  br i1 %4956, label %5095, label %4957

; <label>:4957                                    ; preds = %4919, %4822
  %4958 = phi float [ %4955, %4919 ], [ %4816, %4822 ]
  %4959 = fmul fast float %4958, %4825
  %4960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.i32 %4960, 1
  %4962 = extractvalue %dx.types.CBufRet.i32 %4960, 0
  %4963 = add i32 %4962, 0
  %4964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4964, %dx.types.Handle %76, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float %4877, float %4878, float undef, float %4881, float %4882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4966 = extractvalue %dx.types.ResRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.ResRet.f32 %4965, 1
  %4968 = extractvalue %dx.types.ResRet.f32 %4965, 2
  %4969 = extractvalue %dx.types.ResRet.f32 %4965, 3
  %4970 = and i32 %4961, 255
  %4971 = uitofp i32 %4970 to float
  %4972 = lshr i32 %4961, 8
  %4973 = and i32 %4972, 255
  %4974 = uitofp i32 %4973 to float
  %4975 = fmul fast float %4969, %4971
  %4976 = fadd fast float %4975, %4974
  %4977 = fmul fast float %4976, 0x3F70101000000000
  %4978 = fadd fast float %4977, 0xBFB99999A0000000
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fmul fast float %4979, 0x3FF1C71C80000000
  %4981 = call float @dx.op.binary.f32(i32 36, float %4977, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4982 = fsub fast float 1.000000e+00, %4980
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fmul fast float %4983, %4966
  %4985 = fmul fast float %4983, %4967
  %4986 = fmul fast float %4983, %4968
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4989 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4990 = fmul fast float %4980, %4966
  %4991 = fmul fast float %4980, %4967
  %4992 = fmul fast float %4980, %4968
  %4993 = fadd fast float %4990, %4981
  %4994 = fadd fast float %4991, %4981
  %4995 = fadd fast float %4992, %4981
  %4996 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4997 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.i32 %4999, 3
  %5001 = extractvalue %dx.types.CBufRet.i32 %4999, 2
  %5002 = add i32 %5001, 0
  %5003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5004 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5003, %dx.types.Handle %76, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float %4877, float %4878, float undef, float %4881, float %4882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5005 = extractvalue %dx.types.ResRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.ResRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.ResRet.f32 %5004, 2
  %5008 = extractvalue %dx.types.ResRet.f32 %5004, 3
  %5009 = and i32 %5000, 255
  %5010 = uitofp i32 %5009 to float
  %5011 = lshr i32 %5000, 8
  %5012 = and i32 %5011, 255
  %5013 = uitofp i32 %5012 to float
  %5014 = lshr i32 %5000, 16
  %5015 = and i32 %5014, 255
  %5016 = uitofp i32 %5015 to float
  %5017 = fmul fast float %5016, 0x3F70101000000000
  %5018 = fmul fast float %5005, %5010
  %5019 = fadd fast float %5018, %5013
  %5020 = fmul fast float %5019, 0x3F70101000000000
  %5021 = fadd fast float %5006, -5.000000e-01
  %5022 = fadd fast float %5008, -5.000000e-01
  %5023 = fmul fast float %5021, %5017
  %5024 = fmul fast float %5022, %5017
  %5025 = fadd fast float %5023, 5.000000e-01
  %5026 = fadd fast float %5024, 5.000000e-01
  %5027 = fmul fast float %5025, 2.000000e+00
  %5028 = fadd fast float %5027, -1.000000e+00
  %5029 = fmul fast float %5026, 2.000000e+00
  %5030 = fadd fast float %5029, -1.000000e+00
  %5031 = fadd fast float %5028, %5030
  %5032 = fmul fast float %5031, 5.000000e-01
  %5033 = fsub fast float %5028, %5030
  %5034 = fmul fast float %5033, 5.000000e-01
  %5035 = call float @dx.op.unary.f32(i32 6, float %5032)  ; FAbs(value)
  %5036 = fsub fast float 1.000000e+00, %5035
  %5037 = call float @dx.op.unary.f32(i32 6, float %5034)  ; FAbs(value)
  %5038 = fsub fast float %5036, %5037
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5034, float %5038, float %5032, float %5034, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 25, float %5039)  ; Rsqrt(value)
  %5041 = fmul fast float %5032, %5040
  %5042 = fmul fast float %5034, %5040
  %5043 = select i1 %4870, i32 %4860, i32 %4861
  %5044 = select i1 %4868, i32 %4859, i32 %5043
  %5045 = sitofp i32 %5044 to float
  %5046 = fmul fast float %5038, %5045
  %5047 = fmul fast float %5046, %5040
  %5048 = select i1 %4870, float %5047, float %5042
  %5049 = select i1 %4870, float %5042, float %5047
  %5050 = select i1 %4868, float %5047, float %5041
  %5051 = select i1 %4868, float %5042, float %5048
  %5052 = select i1 %4868, float %5041, float %5049
  %5053 = fsub fast float %4987, %4421
  %5054 = fsub fast float %4988, %4422
  %5055 = fsub fast float %4989, %4423
  %5056 = fmul fast float %5053, %4959
  %5057 = fmul fast float %5054, %4959
  %5058 = fmul fast float %5055, %4959
  %5059 = fadd fast float %5056, %4421
  %5060 = fadd fast float %5057, %4422
  %5061 = fadd fast float %5058, %4423
  %5062 = fsub fast float %4996, %4406
  %5063 = fsub fast float %4997, %4407
  %5064 = fsub fast float %4998, %4408
  %5065 = fmul fast float %5062, %4959
  %5066 = fmul fast float %5063, %4959
  %5067 = fmul fast float %5064, %4959
  %5068 = fadd fast float %5065, %4406
  %5069 = fadd fast float %5066, %4407
  %5070 = fadd fast float %5067, %4408
  %5071 = fadd fast float %5050, %4370
  %5072 = fadd fast float %5051, %4371
  %5073 = fadd fast float %5052, %4372
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %5071, float %5072, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = call float @dx.op.unary.f32(i32 25, float %5074)  ; Rsqrt(value)
  %5076 = fmul fast float %5071, %5075
  %5077 = fmul fast float %5072, %5075
  %5078 = fmul fast float %5073, %5075
  %5079 = fsub fast float %5076, %4370
  %5080 = fsub fast float %5077, %4371
  %5081 = fsub fast float %5078, %4372
  %5082 = fmul fast float %5079, %4959
  %5083 = fmul fast float %5080, %4959
  %5084 = fmul fast float %5081, %4959
  %5085 = fadd fast float %5082, %4370
  %5086 = fadd fast float %5083, %4371
  %5087 = fadd fast float %5084, %4372
  %5088 = call float @dx.op.binary.f32(i32 36, float %4382, float %5007)  ; FMin(a,b)
  %5089 = fsub fast float %5088, %4382
  %5090 = fmul fast float %5089, %4959
  %5091 = fadd fast float %5090, %4382
  %5092 = fsub fast float %5020, %4409
  %5093 = fmul fast float %5092, %4959
  %5094 = fadd fast float %5093, %4409
  br label %5095

; <label>:5095                                    ; preds = %4957, %4919, %4821
  %5096 = phi float [ %5068, %4957 ], [ %4406, %4919 ], [ %4406, %4821 ]
  %5097 = phi float [ %5069, %4957 ], [ %4407, %4919 ], [ %4407, %4821 ]
  %5098 = phi float [ %5070, %4957 ], [ %4408, %4919 ], [ %4408, %4821 ]
  %5099 = phi float [ %5059, %4957 ], [ %4421, %4919 ], [ %4421, %4821 ]
  %5100 = phi float [ %5060, %4957 ], [ %4422, %4919 ], [ %4422, %4821 ]
  %5101 = phi float [ %5061, %4957 ], [ %4423, %4919 ], [ %4423, %4821 ]
  %5102 = phi float [ %5085, %4957 ], [ %4370, %4919 ], [ %4370, %4821 ]
  %5103 = phi float [ %5086, %4957 ], [ %4371, %4919 ], [ %4371, %4821 ]
  %5104 = phi float [ %5087, %4957 ], [ %4372, %4919 ], [ %4372, %4821 ]
  %5105 = phi float [ %5094, %4957 ], [ %4409, %4919 ], [ %4409, %4821 ]
  %5106 = phi float [ %5091, %4957 ], [ %4382, %4919 ], [ %4382, %4821 ]
  br i1 %4819, label %5107, label %5380

; <label>:5107                                    ; preds = %5095
  %5108 = call float @dx.op.unary.f32(i32 23, float %5106)  ; Log(value)
  %5109 = fmul fast float %5108, 4.000000e+00
  %5110 = call float @dx.op.unary.f32(i32 21, float %5109)  ; Exp(value)
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5113 = fmul fast float %5112, %38
  %5114 = fmul fast float %5112, %39
  %5115 = fmul fast float %5112, %40
  %5116 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %5117 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %5118 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %5119 = call float @dx.op.unary.f32(i32 23, float %5116)  ; Log(value)
  %5120 = call float @dx.op.unary.f32(i32 23, float %5117)  ; Log(value)
  %5121 = call float @dx.op.unary.f32(i32 23, float %5118)  ; Log(value)
  %5122 = fmul fast float %5119, 4.000000e+00
  %5123 = fmul fast float %5120, 4.000000e+00
  %5124 = fmul fast float %5121, 4.000000e+00
  %5125 = call float @dx.op.unary.f32(i32 21, float %5122)  ; Exp(value)
  %5126 = call float @dx.op.unary.f32(i32 21, float %5123)  ; Exp(value)
  %5127 = call float @dx.op.unary.f32(i32 21, float %5124)  ; Exp(value)
  %5128 = fadd fast float %5126, %5125
  %5129 = fadd fast float %5128, %5127
  %5130 = fdiv fast float 1.000000e+00, %5129
  %5131 = fmul fast float %5130, %5125
  %5132 = fcmp fast ogt float %47, 0.000000e+00
  %5133 = fcmp fast ogt float %48, 0.000000e+00
  %5134 = fcmp fast ogt float %49, 0.000000e+00
  %5135 = fcmp fast olt float %47, 0.000000e+00
  %5136 = fcmp fast olt float %48, 0.000000e+00
  %5137 = fcmp fast olt float %49, 0.000000e+00
  %5138 = zext i1 %5132 to i32
  %5139 = zext i1 %5133 to i32
  %5140 = zext i1 %5134 to i32
  %5141 = zext i1 %5135 to i32
  %5142 = zext i1 %5136 to i32
  %5143 = zext i1 %5137 to i32
  %5144 = sub nsw i32 %5138, %5141
  %5145 = sub nsw i32 %5139, %5142
  %5146 = sub nsw i32 %5140, %5143
  %5147 = call float @dx.op.unary.f32(i32 83, float %5113)  ; DerivCoarseX(value)
  %5148 = call float @dx.op.unary.f32(i32 83, float %5114)  ; DerivCoarseX(value)
  %5149 = call float @dx.op.unary.f32(i32 83, float %5115)  ; DerivCoarseX(value)
  %5150 = call float @dx.op.unary.f32(i32 84, float %5113)  ; DerivCoarseY(value)
  %5151 = call float @dx.op.unary.f32(i32 84, float %5114)  ; DerivCoarseY(value)
  %5152 = call float @dx.op.unary.f32(i32 84, float %5115)  ; DerivCoarseY(value)
  %5153 = fcmp fast ole float %230, %5131
  %5154 = fmul fast float %5130, %5128
  %5155 = fcmp fast ole float %230, %5154
  %5156 = select i1 %5155, float %5115, float %5113
  %5157 = select i1 %5155, float %5113, float %5114
  %5158 = select i1 %5153, float %5114, float %5156
  %5159 = select i1 %5153, float %5115, float %5157
  %5160 = select i1 %5155, float %5149, float %5147
  %5161 = select i1 %5155, float %5147, float %5148
  %5162 = select i1 %5153, float %5148, float %5160
  %5163 = select i1 %5153, float %5149, float %5161
  %5164 = select i1 %5155, float %5152, float %5150
  %5165 = select i1 %5155, float %5150, float %5151
  %5166 = select i1 %5153, float %5151, float %5164
  %5167 = select i1 %5153, float %5152, float %5165
  %5168 = call float @dx.op.unary.f32(i32 27, float %5158)  ; Round_ni(value)
  %5169 = call float @dx.op.unary.f32(i32 27, float %5159)  ; Round_ni(value)
  %5170 = fptosi float %5168 to i32
  %5171 = fptosi float %5169 to i32
  %5172 = xor i32 %5171, %5170
  %5173 = sitofp i32 %5172 to float
  %5174 = fptosi float %5173 to i32
  %5175 = sitofp i32 %5174 to float
  %5176 = fmul fast float %5175, 0x3FE3C6EF40000000
  %5177 = frem fast float %5168, 2.560000e+02
  %5178 = frem fast float %5169, 2.560000e+02
  %5179 = fptoui float %5177 to i32
  %5180 = fptoui float %5178 to i32
  %5181 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %5179, i32 %5180, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5182 = extractvalue %dx.types.ResRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.ResRet.f32 %5181, 1
  %5184 = extractvalue %dx.types.ResRet.f32 %5181, 2
  %5185 = fadd fast float %5182, %5176
  %5186 = fadd fast float %5183, %5176
  %5187 = fadd fast float %5184, %5176
  %5188 = call float @dx.op.unary.f32(i32 22, float %5185)  ; Frc(value)
  %5189 = call float @dx.op.unary.f32(i32 22, float %5186)  ; Frc(value)
  %5190 = call float @dx.op.unary.f32(i32 22, float %5187)  ; Frc(value)
  %5191 = fmul fast float %5190, 0x401921FB60000000
  %5192 = call float @dx.op.unary.f32(i32 13, float %5191)  ; Sin(value)
  %5193 = call float @dx.op.unary.f32(i32 12, float %5191)  ; Cos(value)
  %5194 = fsub fast float -0.000000e+00, %5193
  %5195 = fmul fast float %5193, %5158
  %5196 = call float @dx.op.tertiary.f32(i32 46, float %5192, float %5159, float %5195)  ; FMad(a,b,c)
  %5197 = fmul fast float %5192, %5158
  %5198 = call float @dx.op.tertiary.f32(i32 46, float %5194, float %5159, float %5197)  ; FMad(a,b,c)
  %5199 = fadd fast float %5196, %5188
  %5200 = fadd fast float %5198, %5189
  %5201 = extractvalue %dx.types.CBufRet.f32 %5111, 3
  %5202 = bitcast float %5201 to i32
  %5203 = icmp eq i32 %5202, 0
  br i1 %5203, label %5242, label %5204

; <label>:5204                                    ; preds = %5107
  %5205 = add i32 %5202, 0
  %5206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5207 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5206, %dx.types.Handle %77, float %5199, float %5200, float undef, float undef, i32 0, i32 0, i32 undef, float %5162, float %5163, float undef, float %5166, float %5167, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5208 = extractvalue %dx.types.ResRet.f32 %5207, 0
  %5209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5210 = extractvalue %dx.types.CBufRet.f32 %5209, 1
  %5211 = extractvalue %dx.types.CBufRet.f32 %5209, 2
  %5212 = fsub fast float 1.000000e+00, %4817
  %5213 = call float @dx.op.binary.f32(i32 35, float %5212, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5214 = bitcast float %4817 to i32
  %5215 = sitofp i32 %5214 to float
  %5216 = fadd fast float %5215, 0xC1CFBF8940000000
  %5217 = fmul fast float %5211, %5216
  %5218 = fadd fast float %5217, 0x41CFBF8940000000
  %5219 = fptosi float %5218 to i32
  %5220 = bitcast i32 %5219 to float
  %5221 = bitcast float %5213 to i32
  %5222 = sitofp i32 %5221 to float
  %5223 = fadd fast float %5222, 0xC1CFBF8940000000
  %5224 = fmul fast float %5223, %5211
  %5225 = fadd fast float %5224, 0x41CFBF8940000000
  %5226 = fptosi float %5225 to i32
  %5227 = bitcast i32 %5226 to float
  %5228 = fmul fast float %5220, %5210
  %5229 = fmul fast float %5227, %5210
  %5230 = fsub fast float %5213, %5228
  %5231 = fadd fast float %5229, %5213
  %5232 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5233 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5234 = fsub fast float %5208, %5232
  %5235 = fsub fast float %5233, %5232
  %5236 = bitcast float %5235 to i32
  %5237 = sub nsw i32 2129859010, %5236
  %5238 = bitcast i32 %5237 to float
  %5239 = fmul fast float %5238, %5234
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = fcmp fast olt float %5240, 0x3F70101020000000
  br i1 %5241, label %5380, label %5242

; <label>:5242                                    ; preds = %5204, %5107
  %5243 = phi float [ %5240, %5204 ], [ %4817, %5107 ]
  %5244 = fmul fast float %5243, %5110
  %5245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.i32 %5245, 1
  %5247 = extractvalue %dx.types.CBufRet.i32 %5245, 0
  %5248 = add i32 %5247, 0
  %5249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5250 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5249, %dx.types.Handle %76, float %5199, float %5200, float undef, float undef, i32 0, i32 0, i32 undef, float %5162, float %5163, float undef, float %5166, float %5167, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5251 = extractvalue %dx.types.ResRet.f32 %5250, 0
  %5252 = extractvalue %dx.types.ResRet.f32 %5250, 1
  %5253 = extractvalue %dx.types.ResRet.f32 %5250, 2
  %5254 = extractvalue %dx.types.ResRet.f32 %5250, 3
  %5255 = and i32 %5246, 255
  %5256 = uitofp i32 %5255 to float
  %5257 = lshr i32 %5246, 8
  %5258 = and i32 %5257, 255
  %5259 = uitofp i32 %5258 to float
  %5260 = fmul fast float %5254, %5256
  %5261 = fadd fast float %5260, %5259
  %5262 = fmul fast float %5261, 0x3F70101000000000
  %5263 = fadd fast float %5262, 0xBFB99999A0000000
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fmul fast float %5264, 0x3FF1C71C80000000
  %5266 = call float @dx.op.binary.f32(i32 36, float %5262, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5267 = fsub fast float 1.000000e+00, %5265
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = fmul fast float %5268, %5251
  %5270 = fmul fast float %5268, %5252
  %5271 = fmul fast float %5268, %5253
  %5272 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5273 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5274 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5275 = fmul fast float %5265, %5251
  %5276 = fmul fast float %5265, %5252
  %5277 = fmul fast float %5265, %5253
  %5278 = fadd fast float %5275, %5266
  %5279 = fadd fast float %5276, %5266
  %5280 = fadd fast float %5277, %5266
  %5281 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5282 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5283 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.i32 %5284, 3
  %5286 = extractvalue %dx.types.CBufRet.i32 %5284, 2
  %5287 = add i32 %5286, 0
  %5288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5289 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5288, %dx.types.Handle %76, float %5199, float %5200, float undef, float undef, i32 0, i32 0, i32 undef, float %5162, float %5163, float undef, float %5166, float %5167, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.ResRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.ResRet.f32 %5289, 2
  %5293 = extractvalue %dx.types.ResRet.f32 %5289, 3
  %5294 = and i32 %5285, 255
  %5295 = uitofp i32 %5294 to float
  %5296 = lshr i32 %5285, 8
  %5297 = and i32 %5296, 255
  %5298 = uitofp i32 %5297 to float
  %5299 = lshr i32 %5285, 16
  %5300 = and i32 %5299, 255
  %5301 = uitofp i32 %5300 to float
  %5302 = fmul fast float %5301, 0x3F70101000000000
  %5303 = fmul fast float %5290, %5295
  %5304 = fadd fast float %5303, %5298
  %5305 = fmul fast float %5304, 0x3F70101000000000
  %5306 = fadd fast float %5291, -5.000000e-01
  %5307 = fadd fast float %5293, -5.000000e-01
  %5308 = fmul fast float %5306, %5302
  %5309 = fmul fast float %5307, %5302
  %5310 = fadd fast float %5308, 5.000000e-01
  %5311 = fadd fast float %5309, 5.000000e-01
  %5312 = fmul fast float %5310, 2.000000e+00
  %5313 = fadd fast float %5312, -1.000000e+00
  %5314 = fmul fast float %5311, 2.000000e+00
  %5315 = fadd fast float %5314, -1.000000e+00
  %5316 = fadd fast float %5313, %5315
  %5317 = fmul fast float %5316, 5.000000e-01
  %5318 = fsub fast float %5313, %5315
  %5319 = fmul fast float %5318, 5.000000e-01
  %5320 = call float @dx.op.unary.f32(i32 6, float %5317)  ; FAbs(value)
  %5321 = fsub fast float 1.000000e+00, %5320
  %5322 = call float @dx.op.unary.f32(i32 6, float %5319)  ; FAbs(value)
  %5323 = fsub fast float %5321, %5322
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5319, float %5323, float %5317, float %5319, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = call float @dx.op.unary.f32(i32 25, float %5324)  ; Rsqrt(value)
  %5326 = fmul fast float %5317, %5325
  %5327 = fmul fast float %5319, %5325
  %5328 = select i1 %5155, i32 %5145, i32 %5146
  %5329 = select i1 %5153, i32 %5144, i32 %5328
  %5330 = sitofp i32 %5329 to float
  %5331 = fmul fast float %5323, %5330
  %5332 = fmul fast float %5331, %5325
  %5333 = select i1 %5155, float %5332, float %5327
  %5334 = select i1 %5155, float %5327, float %5332
  %5335 = select i1 %5153, float %5332, float %5326
  %5336 = select i1 %5153, float %5327, float %5333
  %5337 = select i1 %5153, float %5326, float %5334
  %5338 = fsub fast float %5272, %5099
  %5339 = fsub fast float %5273, %5100
  %5340 = fsub fast float %5274, %5101
  %5341 = fmul fast float %5338, %5244
  %5342 = fmul fast float %5339, %5244
  %5343 = fmul fast float %5340, %5244
  %5344 = fadd fast float %5341, %5099
  %5345 = fadd fast float %5342, %5100
  %5346 = fadd fast float %5343, %5101
  %5347 = fsub fast float %5281, %5096
  %5348 = fsub fast float %5282, %5097
  %5349 = fsub fast float %5283, %5098
  %5350 = fmul fast float %5347, %5244
  %5351 = fmul fast float %5348, %5244
  %5352 = fmul fast float %5349, %5244
  %5353 = fadd fast float %5350, %5096
  %5354 = fadd fast float %5351, %5097
  %5355 = fadd fast float %5352, %5098
  %5356 = fadd fast float %5335, %5102
  %5357 = fadd fast float %5336, %5103
  %5358 = fadd fast float %5337, %5104
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float %5356, float %5357, float %5358)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.unary.f32(i32 25, float %5359)  ; Rsqrt(value)
  %5361 = fmul fast float %5356, %5360
  %5362 = fmul fast float %5357, %5360
  %5363 = fmul fast float %5358, %5360
  %5364 = fsub fast float %5361, %5102
  %5365 = fsub fast float %5362, %5103
  %5366 = fsub fast float %5363, %5104
  %5367 = fmul fast float %5364, %5244
  %5368 = fmul fast float %5365, %5244
  %5369 = fmul fast float %5366, %5244
  %5370 = fadd fast float %5367, %5102
  %5371 = fadd fast float %5368, %5103
  %5372 = fadd fast float %5369, %5104
  %5373 = call float @dx.op.binary.f32(i32 36, float %5106, float %5292)  ; FMin(a,b)
  %5374 = fsub fast float %5373, %5106
  %5375 = fmul fast float %5374, %5244
  %5376 = fadd fast float %5375, %5106
  %5377 = fsub fast float %5305, %5105
  %5378 = fmul fast float %5377, %5244
  %5379 = fadd fast float %5378, %5105
  br label %5380

; <label>:5380                                    ; preds = %5242, %5204, %5095, %4811
  %5381 = phi float [ %5353, %5242 ], [ %5096, %5204 ], [ %5096, %5095 ], [ %4406, %4811 ]
  %5382 = phi float [ %5354, %5242 ], [ %5097, %5204 ], [ %5097, %5095 ], [ %4407, %4811 ]
  %5383 = phi float [ %5355, %5242 ], [ %5098, %5204 ], [ %5098, %5095 ], [ %4408, %4811 ]
  %5384 = phi float [ %5344, %5242 ], [ %5099, %5204 ], [ %5099, %5095 ], [ %4421, %4811 ]
  %5385 = phi float [ %5345, %5242 ], [ %5100, %5204 ], [ %5100, %5095 ], [ %4422, %4811 ]
  %5386 = phi float [ %5346, %5242 ], [ %5101, %5204 ], [ %5101, %5095 ], [ %4423, %4811 ]
  %5387 = phi float [ %5370, %5242 ], [ %5102, %5204 ], [ %5102, %5095 ], [ %4370, %4811 ]
  %5388 = phi float [ %5371, %5242 ], [ %5103, %5204 ], [ %5103, %5095 ], [ %4371, %4811 ]
  %5389 = phi float [ %5372, %5242 ], [ %5104, %5204 ], [ %5104, %5095 ], [ %4372, %4811 ]
  %5390 = phi float [ %5379, %5242 ], [ %5105, %5204 ], [ %5105, %5095 ], [ %4409, %4811 ]
  %5391 = phi float [ %5376, %5242 ], [ %5106, %5204 ], [ %5106, %5095 ], [ %4382, %4811 ]
  %5392 = fcmp fast une float %4815, 0.000000e+00
  %5393 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 25, float %5393)  ; Rsqrt(value)
  br i1 %5392, label %5402, label %5395

; <label>:5395                                    ; preds = %5380
  %5396 = fmul fast float %5394, %167
  %5397 = fmul fast float %5394, %168
  %5398 = fmul fast float %5394, %169
  %5399 = fsub fast float -0.000000e+00, %5396
  %5400 = fsub fast float -0.000000e+00, %5397
  %5401 = fsub fast float -0.000000e+00, %5398
  br label %5569

; <label>:5402                                    ; preds = %5380
  %5403 = fmul fast float %167, %5394
  %5404 = fsub fast float -0.000000e+00, %5403
  %5405 = fmul fast float %168, %5394
  %5406 = fsub fast float -0.000000e+00, %5405
  %5407 = fmul fast float %169, %5394
  %5408 = fsub fast float -0.000000e+00, %5407
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5406, float %5408, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = fmul fast float %4815, 2.500000e+00
  %5411 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5412 = fmul fast float %4815, 0x4013FFFFE0000000
  %5413 = fadd fast float %5412, 0xBFFFFFFFE0000000
  %5414 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5415 = fmul fast float %4815, 0x4004000020000000
  %5416 = fadd fast float %5415, 0xBFF8000040000000
  %5417 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5418 = fmul fast float %4388, 1.000000e+01
  %5419 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5420 = fmul fast float %5419, 2.000000e+00
  %5421 = fsub fast float 3.000000e+00, %5420
  %5422 = fmul fast float %5419, %5419
  %5423 = fmul fast float %5422, %5421
  %5424 = fsub fast float 1.000000e+00, %5423
  %5425 = fsub fast float 0x3FE3333340000000, %5390
  %5426 = fmul fast float %5425, 0x400AAAAAA0000000
  %5427 = call float @dx.op.unary.f32(i32 7, float %5426)  ; Saturate(value)
  %5428 = fmul fast float %5424, %5427
  %5429 = fmul fast float %5384, 0x3FEA2B8620000000
  %5430 = fmul fast float %5385, 0x3FEA2B8620000000
  %5431 = fmul fast float %5386, 0x3FEA2B8620000000
  %5432 = fadd fast float %5429, 0x3FC81DFBA0000000
  %5433 = fmul fast float %5432, %5384
  %5434 = fadd fast float %5433, 0x3F910E6020000000
  %5435 = fadd fast float %5430, 0x3FC81DFBA0000000
  %5436 = fmul fast float %5435, %5385
  %5437 = fadd fast float %5436, 0x3F910E6020000000
  %5438 = fadd fast float %5431, 0x3FC81DFBA0000000
  %5439 = fmul fast float %5438, %5386
  %5440 = fadd fast float %5439, 0x3F910E6020000000
  %5441 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5442 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5443 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5444 = fsub fast float %5441, %5384
  %5445 = fsub fast float %5442, %5385
  %5446 = fsub fast float %5443, %5386
  %5447 = fmul fast float %5444, %5411
  %5448 = fmul fast float %5447, %5428
  %5449 = fmul fast float %5445, %5411
  %5450 = fmul fast float %5449, %5428
  %5451 = fmul fast float %5446, %5411
  %5452 = fmul fast float %5451, %5428
  %5453 = fadd fast float %5448, %5384
  %5454 = fadd fast float %5450, %5385
  %5455 = fadd fast float %5452, %5386
  %5456 = fmul fast float %5391, %5391
  %5457 = fmul fast float %5456, %5456
  %5458 = fadd fast float %5414, 1.000000e+00
  %5459 = fsub fast float %5458, %5428
  %5460 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5461 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = fsub fast float 1.000000e+00, %5457
  %5464 = call float @dx.op.binary.f32(i32 36, float %5460, float %5463)  ; FMin(a,b)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5466 = call float @dx.op.binary.f32(i32 35, float %5464, float %5465)  ; FMax(a,b)
  %5467 = fadd fast float %5462, 0xBFE4CCCCC0000000
  %5468 = fmul fast float %5467, 0x4006DB6DA0000000
  %5469 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5470 = fmul fast float %5469, 2.000000e+00
  %5471 = fsub fast float 3.000000e+00, %5470
  %5472 = bitcast float %5381 to i32
  %5473 = ashr i32 %5472, 1
  %5474 = add nsw i32 %5473, 532487669
  %5475 = bitcast i32 %5474 to float
  %5476 = fsub fast float 1.000000e+00, %5475
  %5477 = bitcast float %5476 to i32
  %5478 = sub nsw i32 2129859010, %5477
  %5479 = bitcast i32 %5478 to float
  %5480 = fmul fast float %5479, 2.000000e+00
  %5481 = bitcast float %5382 to i32
  %5482 = ashr i32 %5481, 1
  %5483 = add nsw i32 %5482, 532487669
  %5484 = bitcast i32 %5483 to float
  %5485 = fsub fast float 1.000000e+00, %5484
  %5486 = bitcast float %5485 to i32
  %5487 = sub nsw i32 2129859010, %5486
  %5488 = bitcast i32 %5487 to float
  %5489 = fmul fast float %5488, 2.000000e+00
  %5490 = bitcast float %5383 to i32
  %5491 = ashr i32 %5490, 1
  %5492 = add nsw i32 %5491, 532487669
  %5493 = bitcast i32 %5492 to float
  %5494 = fsub fast float 1.000000e+00, %5493
  %5495 = bitcast float %5494 to i32
  %5496 = sub nsw i32 2129859010, %5495
  %5497 = bitcast i32 %5496 to float
  %5498 = fmul fast float %5497, 2.000000e+00
  %5499 = fsub fast float 0x4002A9FBE0000000, %5480
  %5500 = fadd fast float %5480, 0x3FD54FDF00000000
  %5501 = bitcast float %5500 to i32
  %5502 = sub nsw i32 2129859010, %5501
  %5503 = bitcast i32 %5502 to float
  %5504 = fmul fast float %5503, %5499
  %5505 = fmul fast float %5504, %5504
  %5506 = fsub fast float 0x4002A9FBE0000000, %5489
  %5507 = fadd fast float %5489, 0x3FD54FDF00000000
  %5508 = bitcast float %5507 to i32
  %5509 = sub nsw i32 2129859010, %5508
  %5510 = bitcast i32 %5509 to float
  %5511 = fmul fast float %5510, %5506
  %5512 = fmul fast float %5511, %5511
  %5513 = fsub fast float 0x4002A9FBE0000000, %5498
  %5514 = fadd fast float %5498, 0x3FD54FDF00000000
  %5515 = bitcast float %5514 to i32
  %5516 = sub nsw i32 2129859010, %5515
  %5517 = bitcast i32 %5516 to float
  %5518 = fmul fast float %5517, %5513
  %5519 = fmul fast float %5518, %5518
  %5520 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5505)  ; FMax(a,b)
  %5521 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5512)  ; FMax(a,b)
  %5522 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5519)  ; FMax(a,b)
  %5523 = fsub fast float 1.000000e+00, %5409
  %5524 = fadd fast float %5523, %5424
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = fsub fast float 1.000000e+00, %4797
  %5527 = fmul fast float %5466, %5526
  %5528 = fmul fast float %5469, %5469
  %5529 = fmul fast float %5528, %5527
  %5530 = fmul fast float %5529, %5471
  %5531 = fmul fast float %5526, 0xBFE99999A0000000
  %5532 = fmul fast float %5531, %5411
  %5533 = fmul fast float %5532, %5428
  %5534 = fadd fast float %5533, 1.000000e+00
  %5535 = fadd fast float %5390, -1.000000e+00
  %5536 = fmul fast float %5534, %5535
  %5537 = fadd fast float %5536, 1.000000e+00
  %5538 = fsub fast float %5520, %5381
  %5539 = fsub fast float %5521, %5382
  %5540 = fsub fast float %5522, %5383
  %5541 = fmul fast float %5530, %5538
  %5542 = fmul fast float %5530, %5539
  %5543 = fmul fast float %5530, %5540
  %5544 = fadd fast float %5541, %5381
  %5545 = fadd fast float %5542, %5382
  %5546 = fadd fast float %5543, %5383
  %5547 = fsub fast float %87, %5387
  %5548 = fsub fast float %88, %5388
  %5549 = fsub fast float %89, %5389
  %5550 = fmul fast float %5530, %5547
  %5551 = fmul fast float %5530, %5548
  %5552 = fmul fast float %5530, %5549
  %5553 = fadd fast float %5550, %5387
  %5554 = fadd fast float %5551, %5388
  %5555 = fadd fast float %5552, %5389
  %5556 = fmul fast float %5530, %5525
  %5557 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5558 = fsub fast float 1.000000e+00, %5557
  %5559 = fmul fast float %5556, %5558
  %5560 = fadd fast float %5559, %5557
  %5561 = fsub fast float 1.000000e+00, %5391
  %5562 = fmul fast float %5530, %5561
  %5563 = fadd fast float %5562, %5391
  %5564 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5553, float %5554, float %5555)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = call float @dx.op.unary.f32(i32 25, float %5564)  ; Rsqrt(value)
  %5566 = fmul fast float %5553, %5565
  %5567 = fmul fast float %5554, %5565
  %5568 = fmul fast float %5555, %5565
  br label %5569

; <label>:5569                                    ; preds = %5402, %5395
  %5570 = phi float [ %5401, %5395 ], [ %5408, %5402 ]
  %5571 = phi float [ %5400, %5395 ], [ %5406, %5402 ]
  %5572 = phi float [ %5399, %5395 ], [ %5404, %5402 ]
  %5573 = phi float [ %5398, %5395 ], [ %5407, %5402 ]
  %5574 = phi float [ %5397, %5395 ], [ %5405, %5402 ]
  %5575 = phi float [ %5396, %5395 ], [ %5403, %5402 ]
  %5576 = phi float [ %5381, %5395 ], [ %5544, %5402 ]
  %5577 = phi float [ %5382, %5395 ], [ %5545, %5402 ]
  %5578 = phi float [ %5383, %5395 ], [ %5546, %5402 ]
  %5579 = phi float [ %5384, %5395 ], [ %5453, %5402 ]
  %5580 = phi float [ %5385, %5395 ], [ %5454, %5402 ]
  %5581 = phi float [ %5386, %5395 ], [ %5455, %5402 ]
  %5582 = phi float [ %5387, %5395 ], [ %5566, %5402 ]
  %5583 = phi float [ %5388, %5395 ], [ %5567, %5402 ]
  %5584 = phi float [ %5389, %5395 ], [ %5568, %5402 ]
  %5585 = phi float [ %5390, %5395 ], [ %5560, %5402 ]
  %5586 = phi float [ %5391, %5395 ], [ %5563, %5402 ]
  %5587 = select i1 %219, float 0.000000e+00, float %5578
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %5572, float %5571, float %5570)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5574, float %5573, float %5582, float %5583, float %5584)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fmul fast float %5590, 2.000000e+00
  %5592 = fmul fast float %5591, %5582
  %5593 = fmul fast float %5591, %5583
  %5594 = fmul fast float %5591, %5584
  %5595 = fsub fast float %5575, %5592
  %5596 = fsub fast float %5574, %5593
  %5597 = fsub fast float %5573, %5594
  %5598 = call float @dx.op.binary.f32(i32 36, float %5586, float 1.000000e+00)  ; FMin(a,b)
  %5599 = fsub fast float 1.000000e+00, %5586
  %5600 = bitcast float %5599 to i32
  %5601 = sub nsw i32 2129859010, %5600
  %5602 = fsub fast float 1.000000e+00, %57
  %5603 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5603, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5605 = fdiv fast float %5602, %5604
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5608 = fmul fast float %5607, 5.000000e-01
  %5609 = fadd fast float %5608, 5.000000e-01
  %5610 = fmul fast float %5609, %57
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fmul fast float %5612, %5605
  %5614 = fadd fast float %5610, %5613
  %5615 = fsub fast float 5.000000e-01, %5608
  %5616 = fmul fast float %5615, %5579
  %5617 = fmul fast float %5615, %5580
  %5618 = fmul fast float %5615, %5581
  %5619 = fadd fast float %5614, %5616
  %5620 = fadd fast float %5614, %5617
  %5621 = fadd fast float %5614, %5618
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5624 = fmul fast float %5623, 5.000000e-01
  %5625 = fadd fast float %5624, 5.000000e-01
  %5626 = fmul fast float %5625, %57
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5629 = fmul fast float %5628, %5605
  %5630 = fadd fast float %5626, %5629
  %5631 = fsub fast float 5.000000e-01, %5624
  %5632 = fmul fast float %5631, %5579
  %5633 = fmul fast float %5631, %5580
  %5634 = fmul fast float %5631, %5581
  %5635 = fadd fast float %5630, %5632
  %5636 = fadd fast float %5630, %5633
  %5637 = fadd fast float %5630, %5634
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5640 = call float @dx.op.binary.f32(i32 36, float %5579, float %5639)  ; FMin(a,b)
  %5641 = fsub fast float 1.000000e+00, %5598
  %5642 = fmul fast float %5640, %5641
  %5643 = fsub fast float 1.000000e+00, %5642
  %5644 = bitcast float %5643 to i32
  %5645 = sub nsw i32 2129859010, %5644
  %5646 = bitcast i32 %5645 to float
  %5647 = call float @dx.op.binary.f32(i32 36, float %5580, float %5639)  ; FMin(a,b)
  %5648 = fmul fast float %5647, %5641
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = bitcast float %5649 to i32
  %5651 = sub nsw i32 2129859010, %5650
  %5652 = bitcast i32 %5651 to float
  %5653 = call float @dx.op.binary.f32(i32 36, float %5581, float %5639)  ; FMin(a,b)
  %5654 = fmul fast float %5653, %5641
  %5655 = fsub fast float 1.000000e+00, %5654
  %5656 = bitcast float %5655 to i32
  %5657 = sub nsw i32 2129859010, %5656
  %5658 = bitcast i32 %5657 to float
  %5659 = fmul fast float %5598, %58
  %5660 = fmul fast float %5659, %5619
  %5661 = fmul fast float %5660, %5646
  %5662 = fmul fast float %5598, %59
  %5663 = fmul fast float %5662, %5620
  %5664 = fmul fast float %5663, %5652
  %5665 = fmul fast float %5598, %60
  %5666 = fmul fast float %5665, %5621
  %5667 = fmul fast float %5666, %5658
  %5668 = call float @dx.op.binary.f32(i32 36, float %5576, float %5639)  ; FMin(a,b)
  %5669 = fmul fast float %5668, %5641
  %5670 = fsub fast float 1.000000e+00, %5669
  %5671 = bitcast float %5670 to i32
  %5672 = sub nsw i32 2129859010, %5671
  %5673 = bitcast i32 %5672 to float
  %5674 = call float @dx.op.binary.f32(i32 36, float %5577, float %5639)  ; FMin(a,b)
  %5675 = fmul fast float %5674, %5641
  %5676 = fsub fast float 1.000000e+00, %5675
  %5677 = bitcast float %5676 to i32
  %5678 = sub nsw i32 2129859010, %5677
  %5679 = bitcast i32 %5678 to float
  %5680 = call float @dx.op.binary.f32(i32 36, float %5587, float %5639)  ; FMin(a,b)
  %5681 = fmul fast float %5680, %5641
  %5682 = fsub fast float 1.000000e+00, %5681
  %5683 = bitcast float %5682 to i32
  %5684 = sub nsw i32 2129859010, %5683
  %5685 = bitcast i32 %5684 to float
  %5686 = fmul fast float %5659, %5635
  %5687 = fmul fast float %5686, %5673
  %5688 = fmul fast float %5662, %5636
  %5689 = fmul fast float %5688, %5679
  %5690 = fmul fast float %5665, %5637
  %5691 = fmul fast float %5690, %5685
  %5692 = call float @dx.op.dot3.f32(i32 55, float %5661, float %5664, float %5667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5693 = select i1 %219, float 0.000000e+00, float %5661
  %5694 = select i1 %219, float %5692, float %5664
  %5695 = select i1 %219, float 0.000000e+00, float %5667
  %5696 = call float @dx.op.dot3.f32(i32 55, float %5687, float %5689, float %5691, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = select i1 %219, float 0.000000e+00, float %5687
  %5698 = select i1 %219, float %5696, float %5689
  %5699 = select i1 %219, float 0.000000e+00, float %5691
  %5700 = fmul fast float %5589, 9.843750e-01
  %5701 = fmul fast float %5585, 9.843750e-01
  %5702 = fadd fast float %5700, 7.812500e-03
  %5703 = fadd fast float %5701, 7.812500e-03
  %5704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %30, float %5702, float %5703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5705 = extractvalue %dx.types.ResRet.f32 %5704, 2
  %5706 = extractvalue %dx.types.ResRet.f32 %5704, 3
  %5707 = fmul fast float %5705, %5576
  %5708 = fmul fast float %5705, %5577
  %5709 = fmul fast float %5705, %5587
  %5710 = fadd fast float %5707, %5706
  %5711 = fadd fast float %5708, %5706
  %5712 = fadd fast float %5709, %5706
  %5713 = fcmp fast ogt float %4383, 0.000000e+00
  br i1 %5713, label %5714, label %5740

; <label>:5714                                    ; preds = %5569
  %5715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %4383, float %5589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5716 = extractvalue %dx.types.ResRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.ResRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.ResRet.f32 %5715, 2
  %5719 = fadd fast float %5716, -5.000000e-01
  %5720 = fadd fast float %5717, -5.000000e-01
  %5721 = fadd fast float %5718, -5.000000e-01
  %5722 = fsub fast float 1.000000e+00, %5576
  %5723 = fsub fast float 1.000000e+00, %5577
  %5724 = fsub fast float 1.000000e+00, %5587
  %5725 = fmul fast float %5576, 4.000000e+00
  %5726 = fmul fast float %5725, %5722
  %5727 = fmul fast float %5726, %5719
  %5728 = fmul fast float %5577, 4.000000e+00
  %5729 = fmul fast float %5728, %5723
  %5730 = fmul fast float %5729, %5720
  %5731 = fmul fast float %5587, 4.000000e+00
  %5732 = fmul fast float %5731, %5724
  %5733 = fmul fast float %5732, %5721
  %5734 = fadd fast float %5727, %5710
  %5735 = fadd fast float %5730, %5711
  %5736 = fadd fast float %5733, %5712
  %5737 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5738 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5739 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  br label %5740

; <label>:5740                                    ; preds = %5714, %5569
  %5741 = phi float [ %5737, %5714 ], [ %5710, %5569 ]
  %5742 = phi float [ %5738, %5714 ], [ %5711, %5569 ]
  %5743 = phi float [ %5739, %5714 ], [ %5712, %5569 ]
  %5744 = call float @dx.op.binary.f32(i32 35, float %5742, float %5743)  ; FMax(a,b)
  %5745 = call float @dx.op.binary.f32(i32 35, float %5741, float %5744)  ; FMax(a,b)
  %5746 = fsub fast float 1.000000e+00, %5745
  %5747 = fmul fast float %5746, %5693
  %5748 = fmul fast float %5746, %5694
  %5749 = fmul fast float %5746, %5695
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5579, float %5580, float %5581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = fcmp fast ogt float %5750, 0x3E7FF19E20000000
  %5752 = fdiv fast float 1.000000e+00, %5750
  %5753 = select i1 %5751, float %5752, float 0.000000e+00
  %5754 = fmul fast float %5753, %5579
  %5755 = fmul fast float %5753, %5580
  %5756 = fmul fast float %5753, %5581
  %5757 = fadd fast float %5754, -1.000000e+00
  %5758 = fadd fast float %5755, -1.000000e+00
  %5759 = fadd fast float %5756, -1.000000e+00
  %5760 = fmul fast float %5757, 5.000000e-01
  %5761 = fmul fast float %5758, 5.000000e-01
  %5762 = fmul fast float %5759, 5.000000e-01
  %5763 = fadd fast float %5760, 1.000000e+00
  %5764 = fadd fast float %5761, 1.000000e+00
  %5765 = fadd fast float %5762, 1.000000e+00
  %5766 = fmul fast float %5741, %5697
  %5767 = fmul fast float %5742, %5698
  %5768 = fmul fast float %5743, %5699
  %5769 = fsub fast float 1.000000e+00, %5589
  %5770 = bitcast float %5769 to i32
  %5771 = sitofp i32 %5770 to float
  %5772 = fmul fast float %5771, 5.000000e+00
  %5773 = fadd fast float %5772, 0xC1EFBF8940000000
  %5774 = fptosi float %5773 to i32
  %5775 = bitcast i32 %5774 to float
  %5776 = fmul fast float %5775, %4384
  %5777 = fmul fast float %5693, %5776
  %5778 = fmul fast float %5777, %5746
  %5779 = fmul fast float %5778, %5763
  %5780 = fmul fast float %5694, %5776
  %5781 = fmul fast float %5780, %5746
  %5782 = fmul fast float %5781, %5764
  %5783 = fmul fast float %5695, %5776
  %5784 = fmul fast float %5783, %5746
  %5785 = fmul fast float %5784, %5765
  %5786 = fmul fast float %5747, %4380
  %5787 = fmul fast float %5748, %4380
  %5788 = fmul fast float %5749, %4380
  %5789 = fadd fast float %5766, %4376
  %5790 = fadd fast float %5789, %5779
  %5791 = fmul fast float %5790, %4380
  %5792 = fadd fast float %5767, %4377
  %5793 = fadd fast float %5792, %5782
  %5794 = fmul fast float %5793, %4380
  %5795 = fadd fast float %5768, %4378
  %5796 = fadd fast float %5795, %5785
  %5797 = fmul fast float %5796, %4380
  %5798 = bitcast i32 %5601 to float
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 3
  %5801 = fcmp fast oeq float %5800, 0.000000e+00
  br i1 %5801, label %6029, label %5802

; <label>:5802                                    ; preds = %5740
  %5803 = extractvalue %dx.types.CBufRet.f32 %5799, 0
  %5804 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5805 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.CBufRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5813 = call float @dx.op.dot3.f32(i32 55, float %5807, float %5808, float %5809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5814 = select i1 %219, float %5811, float %5807
  %5815 = select i1 %219, float %5813, float %5808
  %5816 = select i1 %219, float %5812, float %5809
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5819 = fcmp fast une float %5818, 0.000000e+00
  br i1 %5819, label %5820, label %5837

; <label>:5820                                    ; preds = %5802
  %5821 = fptoui float %80 to i32
  %5822 = fptoui float %81 to i32
  %5823 = lshr i32 %5821, 4
  %5824 = lshr i32 %5822, 4
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5827 = fptoui float %5826 to i32
  %5828 = add i32 %5827, 15
  %5829 = lshr i32 %5828, 4
  %5830 = mul i32 %5829, %5824
  %5831 = add i32 %5830, %5823
  %5832 = shl i32 %5831, 3
  %5833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5832, i32 undef)  ; BufferLoad(srv,index,wot)
  %5834 = extractvalue %dx.types.ResRet.i32 %5833, 0
  %5835 = and i32 %5834, -268435456
  %5836 = icmp eq i32 %5835, -1342177280
  br i1 %5836, label %5847, label %5837

; <label>:5837                                    ; preds = %5820, %5802
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 2
  %5840 = extractvalue %dx.types.CBufRet.f32 %5838, 3
  %5841 = fmul fast float %5839, %80
  %5842 = fmul fast float %5840, %81
  %5843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %5841, float %5842, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.ResRet.f32 %5843, 1
  %5846 = extractvalue %dx.types.ResRet.f32 %5843, 2
  br label %5847

; <label>:5847                                    ; preds = %5837, %5820
  %5848 = phi float [ %5844, %5837 ], [ 0.000000e+00, %5820 ]
  %5849 = phi float [ %5845, %5837 ], [ 0.000000e+00, %5820 ]
  %5850 = phi float [ %5846, %5837 ], [ 0.000000e+00, %5820 ]
  %5851 = call float @dx.op.binary.f32(i32 36, float %5849, float %5850)  ; FMin(a,b)
  %5852 = call float @dx.op.binary.f32(i32 36, float %5848, float %5851)  ; FMin(a,b)
  %5853 = fcmp fast ogt float %5852, 0.000000e+00
  br i1 %5853, label %5854, label %6029, !dx.controlflow.hints !77

; <label>:5854                                    ; preds = %5847
  %5855 = fmul fast float %5848, %5814
  %5856 = fmul fast float %5849, %5815
  %5857 = fmul fast float %5850, %5816
  %5858 = fsub fast float %5803, %5575
  %5859 = fsub fast float %5804, %5574
  %5860 = fsub fast float %5805, %5573
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5858, float %5859, float %5860, float %5858, float %5859, float %5860)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = call float @dx.op.unary.f32(i32 25, float %5861)  ; Rsqrt(value)
  %5863 = fmul fast float %5862, %5858
  %5864 = fmul fast float %5862, %5859
  %5865 = fmul fast float %5862, %5860
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5582, float %5583, float %5584)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = call float @dx.op.dot3.f32(i32 55, float %5572, float %5571, float %5570, float %5863, float %5864, float %5865)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5869 = fmul fast float %5868, %5868
  %5870 = fmul fast float %5869, %5798
  %5871 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5872 = fmul fast float %5871, %5868
  %5873 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %5863, float %5864, float %5865)  ; Dot3(ax,ay,az,bx,by,bz)
  %5874 = fmul fast float %5873, %5873
  %5875 = call float @dx.op.unary.f32(i32 6, float %5866)  ; FAbs(value)
  %5876 = fsub fast float 1.000000e+00, %5585
  %5877 = call float @dx.op.binary.f32(i32 35, float %5876, float 0x3F847AE140000000)  ; FMax(a,b)
  %5878 = fmul fast float %5877, %5877
  %5879 = fmul fast float %5878, %5878
  %5880 = fsub fast float 1.000000e+00, %5879
  %5881 = fmul fast float %5589, %5589
  %5882 = fmul fast float %5881, %5880
  %5883 = fadd fast float %5882, %5879
  %5884 = bitcast float %5883 to i32
  %5885 = ashr i32 %5884, 1
  %5886 = add nsw i32 %5885, 532487669
  %5887 = bitcast i32 %5886 to float
  %5888 = fadd fast float %5887, %5589
  %5889 = fmul fast float %5879, %5874
  %5890 = fsub fast float 1.000000e+00, %5874
  %5891 = fadd fast float %5890, %5889
  %5892 = fmul fast float %5875, %5875
  %5893 = fmul fast float %5892, %5880
  %5894 = fadd fast float %5893, %5879
  %5895 = bitcast float %5894 to i32
  %5896 = ashr i32 %5895, 1
  %5897 = add nsw i32 %5896, 532487669
  %5898 = bitcast i32 %5897 to float
  %5899 = fadd fast float %5898, %5875
  %5900 = fmul fast float %5891, %5891
  %5901 = fmul fast float %5900, %5888
  %5902 = fmul fast float %5901, %5899
  %5903 = fdiv fast float 0x3FF0A00000000000, %5902
  %5904 = fmul fast float %5903, %5879
  %5905 = call float @dx.op.unary.f32(i32 6, float %5867)  ; FAbs(value)
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = bitcast float %5906 to i32
  %5908 = sitofp i32 %5907 to float
  %5909 = fmul fast float %5908, 5.000000e+00
  %5910 = fadd fast float %5909, 0xC1EFBF8940000000
  %5911 = fptosi float %5910 to i32
  %5912 = bitcast i32 %5911 to float
  %5913 = fsub fast float 1.000000e+00, %5576
  %5914 = fsub fast float 1.000000e+00, %5577
  %5915 = fsub fast float 1.000000e+00, %5587
  %5916 = fmul fast float %5912, %5913
  %5917 = fmul fast float %5912, %5914
  %5918 = fmul fast float %5912, %5915
  %5919 = fadd fast float %5916, %5576
  %5920 = fadd fast float %5917, %5577
  %5921 = fadd fast float %5918, %5587
  br i1 %5713, label %5922, label %5945

; <label>:5922                                    ; preds = %5854
  %5923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %4383, float %5905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.ResRet.f32 %5923, 1
  %5926 = extractvalue %dx.types.ResRet.f32 %5923, 2
  %5927 = fadd fast float %5924, -5.000000e-01
  %5928 = fadd fast float %5925, -5.000000e-01
  %5929 = fadd fast float %5926, -5.000000e-01
  %5930 = fmul fast float %5576, 4.000000e+00
  %5931 = fmul fast float %5930, %5913
  %5932 = fmul fast float %5931, %5927
  %5933 = fmul fast float %5577, 4.000000e+00
  %5934 = fmul fast float %5933, %5914
  %5935 = fmul fast float %5934, %5928
  %5936 = fmul fast float %5587, 4.000000e+00
  %5937 = fmul fast float %5936, %5915
  %5938 = fmul fast float %5937, %5929
  %5939 = fadd fast float %5932, %5919
  %5940 = fadd fast float %5935, %5920
  %5941 = fadd fast float %5938, %5921
  %5942 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5943 = call float @dx.op.unary.f32(i32 7, float %5940)  ; Saturate(value)
  %5944 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  br label %5945

; <label>:5945                                    ; preds = %5922, %5854
  %5946 = phi float [ %5942, %5922 ], [ %5919, %5854 ]
  %5947 = phi float [ %5943, %5922 ], [ %5920, %5854 ]
  %5948 = phi float [ %5944, %5922 ], [ %5921, %5854 ]
  %5949 = fmul fast float %5866, 9.843750e-01
  %5950 = fadd fast float %5949, 7.812500e-03
  %5951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %30, float %5950, float %5703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5952 = extractvalue %dx.types.ResRet.f32 %5951, 2
  %5953 = extractvalue %dx.types.ResRet.f32 %5951, 3
  %5954 = fmul fast float %5952, %5576
  %5955 = fmul fast float %5952, %5577
  %5956 = fmul fast float %5952, %5587
  %5957 = fadd fast float %5954, %5953
  %5958 = fadd fast float %5955, %5953
  %5959 = fadd fast float %5956, %5953
  br i1 %5713, label %5960, label %5983

; <label>:5960                                    ; preds = %5945
  %5961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %4383, float %5866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.ResRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.ResRet.f32 %5961, 2
  %5965 = fadd fast float %5962, -5.000000e-01
  %5966 = fadd fast float %5963, -5.000000e-01
  %5967 = fadd fast float %5964, -5.000000e-01
  %5968 = fmul fast float %5576, 4.000000e+00
  %5969 = fmul fast float %5968, %5913
  %5970 = fmul fast float %5969, %5965
  %5971 = fmul fast float %5577, 4.000000e+00
  %5972 = fmul fast float %5971, %5914
  %5973 = fmul fast float %5972, %5966
  %5974 = fmul fast float %5587, 4.000000e+00
  %5975 = fmul fast float %5974, %5915
  %5976 = fmul fast float %5975, %5967
  %5977 = fadd fast float %5970, %5957
  %5978 = fadd fast float %5973, %5958
  %5979 = fadd fast float %5976, %5959
  %5980 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  %5981 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5982 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  br label %5983

; <label>:5983                                    ; preds = %5960, %5945
  %5984 = phi float [ %5980, %5960 ], [ %5957, %5945 ]
  %5985 = phi float [ %5981, %5960 ], [ %5958, %5945 ]
  %5986 = phi float [ %5982, %5960 ], [ %5959, %5945 ]
  %5987 = call float @dx.op.binary.f32(i32 35, float %5985, float %5986)  ; FMax(a,b)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5984, float %5987)  ; FMax(a,b)
  %5989 = fsub fast float 1.000000e+00, %5988
  %5990 = fmul fast float %5946, %5904
  %5991 = fmul fast float %5947, %5904
  %5992 = fmul fast float %5948, %5904
  %5993 = fsub fast float 1.000000e+00, %5867
  %5994 = bitcast float %5993 to i32
  %5995 = sitofp i32 %5994 to float
  %5996 = fmul fast float %5995, 5.000000e+00
  %5997 = fadd fast float %5996, 0xC1EFBF8940000000
  %5998 = fptosi float %5997 to i32
  %5999 = bitcast i32 %5998 to float
  %6000 = fmul fast float %5999, %4384
  %6001 = fmul fast float %5989, %6000
  %6002 = fmul fast float %6001, %5763
  %6003 = fmul fast float %6001, %5764
  %6004 = fmul fast float %6001, %5765
  %6005 = fadd fast float %6002, %5990
  %6006 = fadd fast float %6003, %5991
  %6007 = fadd fast float %6004, %5992
  %6008 = fmul fast float %5872, %5855
  %6009 = fmul fast float %6008, %5989
  %6010 = fmul fast float %5872, %5856
  %6011 = fmul fast float %6010, %5989
  %6012 = fmul fast float %5872, %5857
  %6013 = fmul fast float %6012, %5989
  %6014 = fmul fast float %6008, %6005
  %6015 = fmul fast float %6010, %6006
  %6016 = fmul fast float %6012, %6007
  %6017 = fadd fast float %6009, %5747
  %6018 = fmul fast float %6017, %4380
  %6019 = fadd fast float %6011, %5748
  %6020 = fmul fast float %6019, %4380
  %6021 = fadd fast float %6013, %5749
  %6022 = fmul fast float %6021, %4380
  %6023 = fadd fast float %6014, %5790
  %6024 = fmul fast float %6023, %4380
  %6025 = fadd fast float %6015, %5793
  %6026 = fmul fast float %6025, %4380
  %6027 = fadd fast float %6016, %5796
  %6028 = fmul fast float %6027, %4380
  br label %6029

; <label>:6029                                    ; preds = %5983, %5847, %5740
  %6030 = phi float [ %5791, %5740 ], [ %5791, %5847 ], [ %6024, %5983 ]
  %6031 = phi float [ %5794, %5740 ], [ %5794, %5847 ], [ %6026, %5983 ]
  %6032 = phi float [ %5797, %5740 ], [ %5797, %5847 ], [ %6028, %5983 ]
  %6033 = phi float [ %5786, %5740 ], [ %5786, %5847 ], [ %6018, %5983 ]
  %6034 = phi float [ %5787, %5740 ], [ %5787, %5847 ], [ %6020, %5983 ]
  %6035 = phi float [ %5788, %5740 ], [ %5788, %5847 ], [ %6022, %5983 ]
  %6036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.i32 %6036, 0
  %6038 = icmp eq i32 %6037, 0
  br i1 %6038, label %6473, label %6039

; <label>:6039                                    ; preds = %6029
  %6040 = fptoui float %80 to i32
  %6041 = fptoui float %81 to i32
  %6042 = lshr i32 %6040, 4
  %6043 = lshr i32 %6041, 4
  %6044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.i32 %6044, 0
  %6046 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6043, i32 %6045, i32 %6042)  ; UMad(a,b,c)
  %6047 = add nsw i32 %6037, -1
  %6048 = call i32 @dx.op.binary.i32(i32 37, i32 %6047, i32 0)  ; IMax(a,b)
  %6049 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %6050 = fptoui float %6049 to i32
  %6051 = lshr i32 %6050, 5
  %6052 = call i32 @dx.op.binary.i32(i32 40, i32 %6051, i32 8191)  ; UMin(a,b)
  %6053 = shl i32 %6052, 2
  %6054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6053, i32 undef)  ; BufferLoad(srv,index,wot)
  %6055 = extractvalue %dx.types.ResRet.i32 %6054, 0
  %6056 = lshr i32 %6055, 16
  %6057 = and i32 %6055, 65535
  %6058 = lshr i32 %6055, 21
  %6059 = lshr i32 %6057, 5
  %6060 = call i32 @dx.op.binary.i32(i32 40, i32 %6059, i32 %6048)  ; UMin(a,b)
  %6061 = icmp ugt i32 %6058, %6060
  br i1 %6061, label %6473, label %6062

; <label>:6062                                    ; preds = %6039
  br label %6063

; <label>:6063                                    ; preds = %6463, %6062
  %6064 = phi i32 [ %6470, %6463 ], [ %6058, %6062 ]
  %6065 = phi float [ %6464, %6463 ], [ %6030, %6062 ]
  %6066 = phi float [ %6465, %6463 ], [ %6031, %6062 ]
  %6067 = phi float [ %6466, %6463 ], [ %6032, %6062 ]
  %6068 = phi float [ %6467, %6463 ], [ %6033, %6062 ]
  %6069 = phi float [ %6468, %6463 ], [ %6034, %6062 ]
  %6070 = phi float [ %6469, %6463 ], [ %6035, %6062 ]
  %6071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.i32 %6071, 0
  %6073 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6046, i32 %6072, i32 %6064)  ; UMad(a,b,c)
  %6074 = shl i32 %6073, 2
  %6075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6074, i32 undef)  ; BufferLoad(srv,index,wot)
  %6076 = extractvalue %dx.types.ResRet.i32 %6075, 0
  %6077 = shl i32 %6064, 5
  %6078 = sub nsw i32 %6056, %6077
  %6079 = call i32 @dx.op.binary.i32(i32 37, i32 %6078, i32 0)  ; IMax(a,b)
  %6080 = call i32 @dx.op.binary.i32(i32 38, i32 %6079, i32 31)  ; IMin(a,b)
  %6081 = sub nsw i32 1, %6056
  %6082 = add nsw i32 %6081, %6057
  %6083 = call i32 @dx.op.binary.i32(i32 37, i32 %6082, i32 0)  ; IMax(a,b)
  %6084 = call i32 @dx.op.binary.i32(i32 38, i32 %6083, i32 32)  ; IMin(a,b)
  %6085 = and i32 %6084, 31
  %6086 = shl i32 -1, %6085
  %6087 = xor i32 %6086, -1
  %6088 = and i32 %6080, 31
  %6089 = shl i32 %6087, %6088
  %6090 = icmp eq i32 %6084, 32
  %6091 = select i1 %6090, i32 -1, i32 %6089
  %6092 = and i32 %6091, %6076
  %6093 = icmp eq i32 %6092, 0
  br i1 %6093, label %6463, label %6094

; <label>:6094                                    ; preds = %6063
  br label %6095

; <label>:6095                                    ; preds = %6175, %6094
  %6096 = phi i32 [ %6107, %6175 ], [ %6092, %6094 ]
  %6097 = phi float [ %6176, %6175 ], [ %6065, %6094 ]
  %6098 = phi float [ %6177, %6175 ], [ %6066, %6094 ]
  %6099 = phi float [ %6178, %6175 ], [ %6067, %6094 ]
  %6100 = phi float [ %6179, %6175 ], [ %6068, %6094 ]
  %6101 = phi float [ %6180, %6175 ], [ %6069, %6094 ]
  %6102 = phi float [ %6181, %6175 ], [ %6070, %6094 ]
  %6103 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6096)  ; FirstbitLo(value)
  %6104 = add i32 %6103, %6077
  %6105 = and i32 %6103, 31
  %6106 = shl i32 1, %6105
  %6107 = xor i32 %6106, %6096
  %6108 = mul i32 %6104, 112
  %6109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6108, i32 undef)  ; BufferLoad(srv,index,wot)
  %6110 = extractvalue %dx.types.ResRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.ResRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.ResRet.f32 %6109, 2
  %6113 = or i32 %6108, 12
  %6114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6113, i32 undef)  ; BufferLoad(srv,index,wot)
  %6115 = extractvalue %dx.types.ResRet.f32 %6114, 0
  %6116 = add i32 %6108, 44
  %6117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6118 = extractvalue %dx.types.ResRet.f32 %6117, 0
  %6119 = add i32 %6108, 48
  %6120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6119, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6124 = add i32 %6108, 80
  %6125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6124, i32 undef)  ; BufferLoad(srv,index,wot)
  %6126 = extractvalue %dx.types.ResRet.f32 %6125, 1
  %6127 = extractvalue %dx.types.ResRet.f32 %6125, 2
  %6128 = call float @dx.op.dot3.f32(i32 55, float %6110, float %6111, float %6112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6129 = select i1 %219, float %6126, float %6110
  %6130 = select i1 %219, float %6128, float %6111
  %6131 = select i1 %219, float %6127, float %6112
  %6132 = fsub fast float %6121, %167
  %6133 = fsub fast float %6122, %168
  %6134 = fsub fast float %6123, %169
  %6135 = call float @dx.op.dot3.f32(i32 55, float %6132, float %6133, float %6134, float %6132, float %6133, float %6134)  ; Dot3(ax,ay,az,bx,by,bz)
  %6136 = call float @dx.op.unary.f32(i32 24, float %6135)  ; Sqrt(value)
  %6137 = fdiv fast float 1.000000e+00, %6136
  %6138 = fmul fast float %6137, %6132
  %6139 = fmul fast float %6137, %6133
  %6140 = fmul fast float %6137, %6134
  %6141 = fadd fast float %6136, %6115
  %6142 = fdiv fast float 1.000000e+00, %6141
  %6143 = fmul float %6118, %6142
  %6144 = fmul float %6143, %6143
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = and i32 %6106, %6092
  %6147 = icmp eq i32 %6146, 0
  br i1 %6147, label %6170, label %6148, !dx.controlflow.hints !78

; <label>:6148                                    ; preds = %6095
  %6149 = lshr i32 %6040, 5
  %6150 = lshr i32 %6041, 5
  %6151 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %6149, i32 %6150, i32 %6104, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6152 = extractvalue %dx.types.ResRet.i32 %6151, 0
  %6153 = and i32 %6152, 3
  %6154 = icmp eq i32 %6153, 0
  %6155 = select i1 %6154, float 1.000000e+00, float 0.000000e+00
  %6156 = icmp eq i32 %6153, 3
  br i1 %6156, label %6157, label %6170

; <label>:6157                                    ; preds = %6148
  %6158 = lshr i32 %6152, 10
  %6159 = and i32 %6158, 8160
  %6160 = and i32 %6041, 31
  %6161 = or i32 %6159, %6160
  %6162 = lshr i32 %6152, 1
  %6163 = and i32 %6162, 16352
  %6164 = and i32 %6040, 31
  %6165 = or i32 %6163, %6164
  %6166 = lshr i32 %6152, 23
  %6167 = and i32 %6166, 255
  %6168 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %6165, i32 %6161, i32 %6167, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6169 = extractvalue %dx.types.ResRet.f32 %6168, 0
  br label %6170

; <label>:6170                                    ; preds = %6157, %6148, %6095
  %6171 = phi float [ %6169, %6157 ], [ %6155, %6148 ], [ 0.000000e+00, %6095 ]
  %6172 = call float @dx.op.binary.f32(i32 36, float %6171, float %6171)  ; FMin(a,b)
  %6173 = call float @dx.op.binary.f32(i32 36, float %6171, float %6172)  ; FMin(a,b)
  %6174 = fcmp fast ogt float %6173, 0.000000e+00
  br i1 %6174, label %6183, label %6175, !dx.controlflow.hints !79

; <label>:6175                                    ; preds = %6419, %6170
  %6176 = phi float [ %6097, %6170 ], [ %6459, %6419 ]
  %6177 = phi float [ %6098, %6170 ], [ %6460, %6419 ]
  %6178 = phi float [ %6099, %6170 ], [ %6461, %6419 ]
  %6179 = phi float [ %6100, %6170 ], [ %6453, %6419 ]
  %6180 = phi float [ %6101, %6170 ], [ %6454, %6419 ]
  %6181 = phi float [ %6102, %6170 ], [ %6455, %6419 ]
  %6182 = icmp eq i32 %6096, %6106
  br i1 %6182, label %6462, label %6095

; <label>:6183                                    ; preds = %6170
  %6184 = fmul fast float %6171, %6129
  %6185 = fmul fast float %6171, %6130
  %6186 = fmul fast float %6171, %6131
  %6187 = fsub fast float %6123, %4784
  %6188 = fcmp fast ogt float %6187, 0.000000e+00
  %6189 = fsub fast float %169, %4784
  %6190 = fcmp fast ogt float %6189, 0.000000e+00
  %6191 = xor i1 %6190, %6188
  %6192 = fsub fast float %4784, %6123
  %6193 = fmul fast float %6192, 2.000000e+00
  %6194 = fadd fast float %6193, %6123
  %6195 = select i1 %6191, float %6123, float %6194
  %6196 = fsub fast float %6195, %169
  %6197 = call float @dx.op.dot3.f32(i32 55, float %6132, float %6133, float %6196, float %6132, float %6133, float %6196)  ; Dot3(ax,ay,az,bx,by,bz)
  %6198 = call float @dx.op.unary.f32(i32 25, float %6197)  ; Rsqrt(value)
  %6199 = fmul fast float %6198, %6132
  %6200 = fmul fast float %6198, %6133
  %6201 = fmul fast float %6198, %6196
  %6202 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %6203 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6199, float %6200, float %6201)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = fdiv fast float 1.000000e+00, %6203
  %6205 = fmul fast float %6204, %6202
  %6206 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6189, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6207 = fcmp fast ogt float %6206, 0.000000e+00
  %6208 = fcmp fast olt float %6206, 0.000000e+00
  %6209 = zext i1 %6207 to i32
  %6210 = zext i1 %6208 to i32
  %6211 = sub nsw i32 %6209, %6210
  %6212 = sitofp i32 %6211 to float
  %6213 = fsub fast float %6195, %4784
  %6214 = call float @dx.op.dot3.f32(i32 55, float %6132, float %6133, float %6213, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = fcmp fast ogt float %6214, 0.000000e+00
  %6216 = fcmp fast olt float %6214, 0.000000e+00
  %6217 = zext i1 %6215 to i32
  %6218 = zext i1 %6216 to i32
  %6219 = sub nsw i32 %6217, %6218
  %6220 = sitofp i32 %6219 to float
  %6221 = fcmp fast une float %6212, %6220
  br i1 %6221, label %6222, label %6232

; <label>:6222                                    ; preds = %6183
  %6223 = fmul fast float %6205, %6201
  %6224 = fmul fast float %6205, %6200
  %6225 = fmul fast float %6205, %6199
  %6226 = fmul fast float %6225, %6225
  %6227 = fmul fast float %6224, %6224
  %6228 = fadd fast float %6226, %6227
  %6229 = fmul fast float %6223, %6223
  %6230 = fadd fast float %6228, %6229
  %6231 = call float @dx.op.unary.f32(i32 24, float %6230)  ; Sqrt(value)
  br label %6244

; <label>:6232                                    ; preds = %6183
  %6233 = icmp slt i32 %6211, 0
  br i1 %6233, label %6234, label %6244

; <label>:6234                                    ; preds = %6232
  %6235 = fsub fast float %167, %6121
  %6236 = fsub fast float %168, %6122
  %6237 = fsub fast float %169, %6195
  %6238 = fmul fast float %6235, %6235
  %6239 = fmul fast float %6236, %6236
  %6240 = fadd fast float %6238, %6239
  %6241 = fmul fast float %6237, %6237
  %6242 = fadd fast float %6240, %6241
  %6243 = call float @dx.op.unary.f32(i32 24, float %6242)  ; Sqrt(value)
  br label %6244

; <label>:6244                                    ; preds = %6234, %6232, %6222
  %6245 = phi float [ %6231, %6222 ], [ %6243, %6234 ], [ 0.000000e+00, %6232 ]
  %6246 = and i1 %6190, %6188
  %6247 = fsub fast float -0.000000e+00, %6245
  %6248 = select i1 %6246, float -0.000000e+00, float %6247
  %6249 = fmul fast float %4785, 0x3FF7154760000000
  %6250 = fmul fast float %6249, %6248
  %6251 = fmul fast float %4786, 0x3FF7154760000000
  %6252 = fmul fast float %6251, %6248
  %6253 = fmul fast float %4787, 0x3FF7154760000000
  %6254 = fmul fast float %6253, %6248
  %6255 = call float @dx.op.unary.f32(i32 21, float %6250)  ; Exp(value)
  %6256 = call float @dx.op.unary.f32(i32 21, float %6252)  ; Exp(value)
  %6257 = call float @dx.op.unary.f32(i32 21, float %6254)  ; Exp(value)
  %6258 = call float @dx.op.unary.f32(i32 7, float %6255)  ; Saturate(value)
  %6259 = call float @dx.op.unary.f32(i32 7, float %6256)  ; Saturate(value)
  %6260 = call float @dx.op.unary.f32(i32 7, float %6257)  ; Saturate(value)
  %6261 = fmul fast float %6184, %6258
  %6262 = fmul fast float %6185, %6259
  %6263 = fmul fast float %6186, %6260
  %6264 = fsub fast float %6138, %5575
  %6265 = fsub fast float %6139, %5574
  %6266 = fsub fast float %6140, %5573
  %6267 = call float @dx.op.dot3.f32(i32 55, float %6264, float %6265, float %6266, float %6264, float %6265, float %6266)  ; Dot3(ax,ay,az,bx,by,bz)
  %6268 = call float @dx.op.unary.f32(i32 25, float %6267)  ; Rsqrt(value)
  %6269 = fmul fast float %6268, %6264
  %6270 = fmul fast float %6268, %6265
  %6271 = fmul fast float %6268, %6266
  %6272 = call float @dx.op.dot3.f32(i32 55, float %6138, float %6139, float %6140, float %5582, float %5583, float %5584)  ; Dot3(ax,ay,az,bx,by,bz)
  %6273 = call float @dx.op.dot3.f32(i32 55, float %5572, float %5571, float %5570, float %6269, float %6270, float %6271)  ; Dot3(ax,ay,az,bx,by,bz)
  %6274 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6275 = fmul fast float %6274, %6145
  %6276 = fmul fast float %6274, %6274
  %6277 = fmul fast float %6276, %5798
  %6278 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6279 = fmul fast float %6275, %6278
  %6280 = bitcast float %6135 to i32
  %6281 = ashr i32 %6280, 1
  %6282 = sub nsw i32 1597463007, %6281
  %6283 = bitcast i32 %6282 to float
  %6284 = fmul fast float %6283, %6132
  %6285 = fmul fast float %6283, %6133
  %6286 = fmul fast float %6283, %6134
  %6287 = fsub fast float %6284, %5575
  %6288 = fsub fast float %6285, %5574
  %6289 = fsub fast float %6286, %5573
  %6290 = call float @dx.op.dot3.f32(i32 55, float %6287, float %6288, float %6289, float %6287, float %6288, float %6289)  ; Dot3(ax,ay,az,bx,by,bz)
  %6291 = call float @dx.op.unary.f32(i32 25, float %6290)  ; Rsqrt(value)
  %6292 = fmul fast float %6287, %6291
  %6293 = fmul fast float %6288, %6291
  %6294 = fmul fast float %6289, %6291
  %6295 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %6292, float %6293, float %6294)  ; Dot3(ax,ay,az,bx,by,bz)
  %6296 = fmul fast float %6295, %6295
  %6297 = call float @dx.op.unary.f32(i32 6, float %6272)  ; FAbs(value)
  %6298 = fsub fast float 1.000000e+00, %5585
  %6299 = call float @dx.op.binary.f32(i32 35, float %6298, float 0x3F847AE140000000)  ; FMax(a,b)
  %6300 = fmul fast float %6299, %6299
  %6301 = fmul fast float %6300, %6300
  %6302 = fsub fast float 1.000000e+00, %6301
  %6303 = fmul fast float %5589, %5589
  %6304 = fmul fast float %6303, %6302
  %6305 = fadd fast float %6304, %6301
  %6306 = bitcast float %6305 to i32
  %6307 = ashr i32 %6306, 1
  %6308 = add nsw i32 %6307, 532487669
  %6309 = bitcast i32 %6308 to float
  %6310 = fadd fast float %6309, %5589
  %6311 = fmul fast float %6301, %6296
  %6312 = fsub fast float 1.000000e+00, %6296
  %6313 = fadd fast float %6312, %6311
  %6314 = fmul fast float %6297, %6297
  %6315 = fmul fast float %6314, %6302
  %6316 = fadd fast float %6315, %6301
  %6317 = bitcast float %6316 to i32
  %6318 = ashr i32 %6317, 1
  %6319 = add nsw i32 %6318, 532487669
  %6320 = bitcast i32 %6319 to float
  %6321 = fadd fast float %6320, %6297
  %6322 = fmul fast float %6313, %6313
  %6323 = fmul fast float %6322, %6310
  %6324 = fmul fast float %6323, %6321
  %6325 = fdiv fast float 1.000000e+00, %6324
  %6326 = bitcast float %6301 to i32
  %6327 = sitofp i32 %6326 to float
  %6328 = fmul fast float %6327, 0x3FE7F73180000000
  %6329 = fadd fast float %6328, 0x41AFE27C40000000
  %6330 = fptosi float %6329 to i32
  %6331 = bitcast i32 %6330 to float
  %6332 = fmul fast float %6118, 0x3FD80E9D60000000
  %6333 = fmul fast float %6332, %6283
  %6334 = fadd fast float %6331, %6333
  %6335 = bitcast float %6334 to i32
  %6336 = sub nsw i32 2129859010, %6335
  %6337 = bitcast i32 %6336 to float
  %6338 = fmul fast float %6301, %6325
  %6339 = fmul fast float %6338, %6331
  %6340 = fmul fast float %6339, %6337
  %6341 = call float @dx.op.unary.f32(i32 6, float %6273)  ; FAbs(value)
  %6342 = fsub fast float 1.000000e+00, %6341
  %6343 = bitcast float %6342 to i32
  %6344 = sitofp i32 %6343 to float
  %6345 = fmul fast float %6344, 5.000000e+00
  %6346 = fadd fast float %6345, 0xC1EFBF8940000000
  %6347 = fptosi float %6346 to i32
  %6348 = bitcast i32 %6347 to float
  %6349 = fsub fast float 1.000000e+00, %5576
  %6350 = fsub fast float 1.000000e+00, %5577
  %6351 = fsub fast float 1.000000e+00, %5587
  %6352 = fmul fast float %6348, %6349
  %6353 = fmul fast float %6348, %6350
  %6354 = fmul fast float %6348, %6351
  %6355 = fadd fast float %6352, %5576
  %6356 = fadd fast float %6353, %5577
  %6357 = fadd fast float %6354, %5587
  br i1 %5713, label %6358, label %6381

; <label>:6358                                    ; preds = %6244
  %6359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %4383, float %6341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6360 = extractvalue %dx.types.ResRet.f32 %6359, 0
  %6361 = extractvalue %dx.types.ResRet.f32 %6359, 1
  %6362 = extractvalue %dx.types.ResRet.f32 %6359, 2
  %6363 = fadd fast float %6360, -5.000000e-01
  %6364 = fadd fast float %6361, -5.000000e-01
  %6365 = fadd fast float %6362, -5.000000e-01
  %6366 = fmul fast float %5576, 4.000000e+00
  %6367 = fmul fast float %6366, %6349
  %6368 = fmul fast float %6367, %6363
  %6369 = fmul fast float %5577, 4.000000e+00
  %6370 = fmul fast float %6369, %6350
  %6371 = fmul fast float %6370, %6364
  %6372 = fmul fast float %5587, 4.000000e+00
  %6373 = fmul fast float %6372, %6351
  %6374 = fmul fast float %6373, %6365
  %6375 = fadd fast float %6368, %6355
  %6376 = fadd fast float %6371, %6356
  %6377 = fadd fast float %6374, %6357
  %6378 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6379 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6380 = call float @dx.op.unary.f32(i32 7, float %6377)  ; Saturate(value)
  br label %6381

; <label>:6381                                    ; preds = %6358, %6244
  %6382 = phi float [ %6378, %6358 ], [ %6355, %6244 ]
  %6383 = phi float [ %6379, %6358 ], [ %6356, %6244 ]
  %6384 = phi float [ %6380, %6358 ], [ %6357, %6244 ]
  %6385 = fmul fast float %6272, 9.843750e-01
  %6386 = fadd fast float %6385, 7.812500e-03
  %6387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %30, float %6386, float %5703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6388 = extractvalue %dx.types.ResRet.f32 %6387, 2
  %6389 = extractvalue %dx.types.ResRet.f32 %6387, 3
  %6390 = fmul fast float %6388, %5576
  %6391 = fmul fast float %6388, %5577
  %6392 = fmul fast float %6388, %5587
  %6393 = fadd fast float %6390, %6389
  %6394 = fadd fast float %6391, %6389
  %6395 = fadd fast float %6392, %6389
  br i1 %5713, label %6396, label %6419

; <label>:6396                                    ; preds = %6381
  %6397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %4383, float %6272, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6398 = extractvalue %dx.types.ResRet.f32 %6397, 0
  %6399 = extractvalue %dx.types.ResRet.f32 %6397, 1
  %6400 = extractvalue %dx.types.ResRet.f32 %6397, 2
  %6401 = fadd fast float %6398, -5.000000e-01
  %6402 = fadd fast float %6399, -5.000000e-01
  %6403 = fadd fast float %6400, -5.000000e-01
  %6404 = fmul fast float %5576, 4.000000e+00
  %6405 = fmul fast float %6404, %6349
  %6406 = fmul fast float %6405, %6401
  %6407 = fmul fast float %5577, 4.000000e+00
  %6408 = fmul fast float %6407, %6350
  %6409 = fmul fast float %6408, %6402
  %6410 = fmul fast float %5587, 4.000000e+00
  %6411 = fmul fast float %6410, %6351
  %6412 = fmul fast float %6411, %6403
  %6413 = fadd fast float %6406, %6393
  %6414 = fadd fast float %6409, %6394
  %6415 = fadd fast float %6412, %6395
  %6416 = call float @dx.op.unary.f32(i32 7, float %6413)  ; Saturate(value)
  %6417 = call float @dx.op.unary.f32(i32 7, float %6414)  ; Saturate(value)
  %6418 = call float @dx.op.unary.f32(i32 7, float %6415)  ; Saturate(value)
  br label %6419

; <label>:6419                                    ; preds = %6396, %6381
  %6420 = phi float [ %6416, %6396 ], [ %6393, %6381 ]
  %6421 = phi float [ %6417, %6396 ], [ %6394, %6381 ]
  %6422 = phi float [ %6418, %6396 ], [ %6395, %6381 ]
  %6423 = call float @dx.op.binary.f32(i32 35, float %6421, float %6422)  ; FMax(a,b)
  %6424 = call float @dx.op.binary.f32(i32 35, float %6420, float %6423)  ; FMax(a,b)
  %6425 = fsub fast float 1.000000e+00, %6424
  %6426 = fmul fast float %6382, %6340
  %6427 = fmul fast float %6383, %6340
  %6428 = fmul fast float %6384, %6340
  %6429 = fsub fast float 1.000000e+00, %6273
  %6430 = bitcast float %6429 to i32
  %6431 = sitofp i32 %6430 to float
  %6432 = fmul fast float %6431, 5.000000e+00
  %6433 = fadd fast float %6432, 0xC1EFBF8940000000
  %6434 = fptosi float %6433 to i32
  %6435 = bitcast i32 %6434 to float
  %6436 = fmul fast float %6435, %4384
  %6437 = fmul fast float %6425, %6436
  %6438 = fmul fast float %6437, %5763
  %6439 = fmul fast float %6437, %5764
  %6440 = fmul fast float %6437, %5765
  %6441 = fadd fast float %6438, %6426
  %6442 = fadd fast float %6439, %6427
  %6443 = fadd fast float %6440, %6428
  %6444 = fmul fast float %6261, %4380
  %6445 = fmul fast float %6444, %6279
  %6446 = fmul fast float %6445, %6425
  %6447 = fmul fast float %6262, %4380
  %6448 = fmul fast float %6447, %6279
  %6449 = fmul fast float %6448, %6425
  %6450 = fmul fast float %6263, %4380
  %6451 = fmul fast float %6450, %6279
  %6452 = fmul fast float %6451, %6425
  %6453 = fadd fast float %6446, %6100
  %6454 = fadd fast float %6449, %6101
  %6455 = fadd fast float %6452, %6102
  %6456 = fmul fast float %6445, %6441
  %6457 = fmul fast float %6448, %6442
  %6458 = fmul fast float %6451, %6443
  %6459 = fadd fast float %6456, %6097
  %6460 = fadd fast float %6457, %6098
  %6461 = fadd fast float %6458, %6099
  br label %6175

; <label>:6462                                    ; preds = %6175
  br label %6463

; <label>:6463                                    ; preds = %6462, %6063
  %6464 = phi float [ %6065, %6063 ], [ %6176, %6462 ]
  %6465 = phi float [ %6066, %6063 ], [ %6177, %6462 ]
  %6466 = phi float [ %6067, %6063 ], [ %6178, %6462 ]
  %6467 = phi float [ %6068, %6063 ], [ %6179, %6462 ]
  %6468 = phi float [ %6069, %6063 ], [ %6180, %6462 ]
  %6469 = phi float [ %6070, %6063 ], [ %6181, %6462 ]
  %6470 = add i32 %6064, 1
  %6471 = icmp ugt i32 %6470, %6060
  br i1 %6471, label %6472, label %6063

; <label>:6472                                    ; preds = %6463
  br label %6473

; <label>:6473                                    ; preds = %6472, %6039, %6029
  %6474 = phi float [ %6030, %6029 ], [ %6030, %6039 ], [ %6464, %6472 ]
  %6475 = phi float [ %6031, %6029 ], [ %6031, %6039 ], [ %6465, %6472 ]
  %6476 = phi float [ %6032, %6029 ], [ %6032, %6039 ], [ %6466, %6472 ]
  %6477 = phi float [ %6033, %6029 ], [ %6033, %6039 ], [ %6467, %6472 ]
  %6478 = phi float [ %6034, %6029 ], [ %6034, %6039 ], [ %6468, %6472 ]
  %6479 = phi float [ %6035, %6029 ], [ %6035, %6039 ], [ %6469, %6472 ]
  %6480 = call float @dx.op.unary.f32(i32 24, float %5579)  ; Sqrt(value)
  %6481 = call float @dx.op.unary.f32(i32 24, float %5580)  ; Sqrt(value)
  %6482 = call float @dx.op.unary.f32(i32 24, float %5581)  ; Sqrt(value)
  %6483 = fmul fast float %6480, %6477
  %6484 = fmul fast float %6481, %6478
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 0
  br i1 %219, label %6487, label %6507

; <label>:6487                                    ; preds = %6473
  %6488 = fadd fast float %6479, %4386
  %6489 = fmul fast float %6488, %4387
  %6490 = fsub fast float 1.000000e+00, %4387
  %6491 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6494 = fmul fast float %6493, %6491
  %6495 = fadd fast float %6494, %6489
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = fmul fast float %6497, %5769
  %6499 = fsub fast float %6495, %6498
  %6500 = fadd fast float %6484, %6483
  %6501 = fmul fast float %6486, %6500
  %6502 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6503 = fsub fast float %6499, %6502
  %6504 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %6505 = fmul fast float %6503, %6504
  %6506 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  br label %6523

; <label>:6507                                    ; preds = %6473
  %6508 = fmul fast float %6482, %6479
  %6509 = fmul fast float %6486, %6483
  %6510 = fmul fast float %6486, %6484
  %6511 = fmul fast float %6508, %6486
  %6512 = add i32 %34, 356
  %6513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6512, i32 undef)  ; BufferLoad(srv,index,wot)
  %6514 = extractvalue %dx.types.ResRet.i32 %6513, 0
  %6515 = and i32 %6514, 32
  %6516 = icmp eq i32 %6515, 0
  br i1 %6516, label %6523, label %6517

; <label>:6517                                    ; preds = %6507
  %6518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6518, 0
  %6520 = fmul fast float %6519, 0x3FE99999A0000000
  %6521 = fadd fast float %6519, %6509
  %6522 = fadd fast float %6520, %6511
  br label %6523

; <label>:6523                                    ; preds = %6517, %6507, %6487
  %6524 = phi float [ %6501, %6487 ], [ %6521, %6517 ], [ %6509, %6507 ]
  %6525 = phi float [ %6506, %6487 ], [ %6510, %6517 ], [ %6510, %6507 ]
  %6526 = phi float [ 1.000000e+00, %6487 ], [ %6522, %6517 ], [ %6511, %6507 ]
  %6527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6528 = extractvalue %dx.types.CBufRet.f32 %6527, 0
  %6529 = fmul fast float %6528, %6475
  %6530 = fmul fast float %6528, %6476
  %6531 = fadd fast float %6475, %6474
  %6532 = select i1 %219, float %6531, float %6474
  %6533 = fmul float %6532, %6528
  %6534 = select i1 %219, float 0.000000e+00, float %6529
  %6535 = select i1 %219, float 0.000000e+00, float %6530
  %6536 = fmul fast float %6524, %6480
  %6537 = fmul fast float %6525, %6481
  %6538 = fmul fast float %6526, %6482
  %6539 = fadd fast float %6533, %6536
  %6540 = fadd fast float %6534, %6537
  %6541 = fadd fast float %6535, %6538
  %6542 = select i1 %219, float %6525, float %6540
  %6543 = select i1 %219, float %6526, float %6541
  %6544 = call float @dx.op.binary.f32(i32 36, float %6539, float 3.225500e+04)  ; FMin(a,b)
  %6545 = call float @dx.op.binary.f32(i32 36, float %6542, float 3.225500e+04)  ; FMin(a,b)
  %6546 = call float @dx.op.binary.f32(i32 36, float %6543, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6544)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6545)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.viewIdState = !{!47}
!dx.entryPoints = !{!48}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !39, !42}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!39 = !{!40, !41}
!40 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!41 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!42 = !{!43, !44, !45, !46}
!43 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!44 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!47 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !76}
!49 = !{!50, !74, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73}
!51 = !{i32 0, !"SV_Position", i8 9, i8 3, !52, i8 4, i32 1, i8 4, i32 0, i8 0, !53}
!52 = !{i32 0}
!53 = !{i32 3, i32 11}
!54 = !{i32 1, !"COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 1, i8 0, !55}
!55 = !{i32 3, i32 14}
!56 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 2, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 3, !"NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 3, i8 0, !59}
!59 = !{i32 3, i32 7}
!60 = !{i32 4, !"TANGENT", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 4, i8 0, !61}
!61 = !{i32 3, i32 15}
!62 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 5, i8 0, !59}
!63 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!64 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 7, i8 0, !59}
!65 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 8, i8 0, !61}
!66 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 9, i8 0, !57}
!67 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 10, i8 0, !61}
!68 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 11, i8 0, !59}
!69 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !52, i8 1, i32 1, i8 1, i32 12, i8 0, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !52, i8 1, i32 1, i8 2, i32 12, i8 1, !57}
!72 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 13, i8 0, !70}
!73 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!74 = !{!75}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!76 = !{i32 0, i64 24}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}

