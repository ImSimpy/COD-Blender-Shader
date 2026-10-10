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
; shader hash: a6b4cd7e11418fb1e252085680693c9e
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
  br i1 %464, label %954, label %465

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
  %912 = and i32 %911, 14336
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %939, label %914

; <label>:914                                     ; preds = %906
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = and i32 %916, 4096
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %939, label %919

; <label>:919                                     ; preds = %914
  %920 = and i32 %916, 1048576
  %921 = icmp ne i32 %920, 0
  %922 = add i32 %33, 476
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = add i32 %924, 0
  %926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %926, %dx.types.Handle %75, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 2
  %929 = select i1 %921, float 1.000000e+00, float %928
  %930 = add i32 %33, 164
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = and i32 %932, 65535
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = lshr i32 %932, 16
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = fmul fast float %934, %929
  %938 = fadd fast float %937, %936
  br label %939

; <label>:939                                     ; preds = %919, %914, %906
  %940 = phi float [ %938, %919 ], [ 0.000000e+00, %914 ], [ 0.000000e+00, %906 ]
  %941 = add i32 %33, 96
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = and i32 %943, 255
  %945 = uitofp i32 %944 to float
  %946 = lshr i32 %943, 8
  %947 = and i32 %946, 255
  %948 = uitofp i32 %947 to float
  %949 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = fmul fast float %948, %949
  %951 = fadd fast float %950, %945
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  br label %954

; <label>:954                                     ; preds = %939, %450
  %955 = phi float [ 0.000000e+00, %450 ], [ %860, %939 ]
  %956 = phi float [ 0.000000e+00, %450 ], [ %861, %939 ]
  %957 = phi float [ 0.000000e+00, %450 ], [ %907, %939 ]
  %958 = phi float [ 0.000000e+00, %450 ], [ %908, %939 ]
  %959 = phi float [ 0.000000e+00, %450 ], [ %909, %939 ]
  %960 = phi float [ 0.000000e+00, %450 ], [ %779, %939 ]
  %961 = phi float [ 0.000000e+00, %450 ], [ %780, %939 ]
  %962 = phi float [ 0.000000e+00, %450 ], [ %781, %939 ]
  %963 = phi float [ 0.000000e+00, %450 ], [ %765, %939 ]
  %964 = phi float [ 0.000000e+00, %450 ], [ 1.000000e+00, %939 ]
  %965 = phi float [ 0.000000e+00, %450 ], [ %859, %939 ]
  %966 = phi float [ 0.000000e+00, %450 ], [ %862, %939 ]
  %967 = phi float [ 0.000000e+00, %450 ], [ %940, %939 ]
  %968 = phi float [ 0.000000e+00, %450 ], [ %953, %939 ]
  br i1 %401, label %1736, label %969

; <label>:969                                     ; preds = %954
  %970 = icmp ult i32 %456, 2
  %971 = add i32 %33, 40
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = add i32 %33, 44
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = or i32 %976, %973
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %1736, label %979

; <label>:979                                     ; preds = %969
  %980 = and i32 %973, 262144
  %981 = icmp ne i32 %980, 0
  %982 = select i1 %981, float %39, float 1.000000e+00
  %983 = select i1 %981, float %40, float 0.000000e+00
  %984 = select i1 %981, float %41, float 0.000000e+00
  %985 = select i1 %981, float %42, float 1.000000e+00
  %986 = select i1 %981, float %43, float %66
  %987 = select i1 %981, float %44, float %67
  %988 = add i32 %33, 300
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = lshr i32 %990, 16
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = fmul fast float %992, 0x3F50624DE0000000
  %994 = add i32 %33, 104
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = lshr i32 %996, 16
  %998 = and i32 %997, 255
  %999 = lshr i32 %996, 24
  %1000 = add i32 %33, 308
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %1002, 65535
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = lshr i32 %1002, 16
  %1006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1005)  ; LegacyF16ToF32(value)
  %1007 = add i32 %33, 48
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = lshr i32 %1009, 22
  %1011 = shl nuw nsw i32 %1010, 5
  %1012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1011)  ; LegacyF16ToF32(value)
  %1013 = shl i32 %1009, 4
  %1014 = and i32 %1013, 32752
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = lshr i32 %1009, 7
  %1017 = and i32 %1016, 32752
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 3
  %1021 = fmul fast float %1020, 1.000000e+03
  %1022 = fmul fast float %311, %1021
  %1023 = call float @dx.op.unary.f32(i32 22, float %1022)  ; Frc(value)
  %1024 = fadd fast float %1023, %301
  %1025 = fmul fast float %312, %1021
  %1026 = call float @dx.op.unary.f32(i32 22, float %1025)  ; Frc(value)
  %1027 = fadd fast float %1026, %303
  %1028 = fmul fast float %993, %1021
  %1029 = call float @dx.op.unary.f32(i32 22, float %1028)  ; Frc(value)
  %1030 = fmul fast float %1029, 0x401921FB60000000
  %1031 = fadd fast float %1030, %1012
  %1032 = call float @dx.op.unary.f32(i32 13, float %1031)  ; Sin(value)
  %1033 = call float @dx.op.unary.f32(i32 12, float %1031)  ; Cos(value)
  %1034 = fsub fast float -0.000000e+00, %1032
  %1035 = fadd fast float %986, -5.000000e-01
  %1036 = fadd fast float %987, -5.000000e-01
  %1037 = fmul fast float %1004, %1035
  %1038 = fmul fast float %1006, %1036
  %1039 = fadd fast float %1037, 5.000000e-01
  %1040 = fadd fast float %1038, 5.000000e-01
  %1041 = fmul fast float %1015, %1039
  %1042 = fmul fast float %1018, %1040
  %1043 = fmul fast float %1033, %1041
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %1042, float %1043)  ; FMad(a,b,c)
  %1045 = fmul fast float %1032, %1041
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1042, float %1045)  ; FMad(a,b,c)
  %1047 = fadd fast float %1024, %1044
  %1048 = fadd fast float %1027, %1046
  %1049 = icmp ugt i32 %998, 1
  %1050 = icmp ugt i32 %996, 33554431
  %1051 = or i1 %1050, %1049
  br i1 %1051, label %1052, label %1077

; <label>:1052                                    ; preds = %979
  %1053 = add i32 %33, 244
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = lshr i32 %1055, 16
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = fmul fast float %1020, %1057
  %1059 = call float @dx.op.unary.f32(i32 22, float %1058)  ; Frc(value)
  %1060 = mul nuw nsw i32 %998, %999
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1059, %1061
  %1063 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1064 = fptoui float %1063 to i32
  %1065 = urem i32 %1064, %998
  %1066 = udiv i32 %1064, %999
  %1067 = call float @dx.op.unary.f32(i32 22, float %1047)  ; Frc(value)
  %1068 = call float @dx.op.unary.f32(i32 22, float %1048)  ; Frc(value)
  %1069 = uitofp i32 %1065 to float
  %1070 = uitofp i32 %1066 to float
  %1071 = fadd fast float %1067, %1069
  %1072 = fadd fast float %1068, %1070
  %1073 = uitofp i32 %998 to float
  %1074 = uitofp i32 %999 to float
  %1075 = fdiv fast float %1071, %1073
  %1076 = fdiv fast float %1072, %1074
  br label %1077

; <label>:1077                                    ; preds = %1052, %979
  %1078 = phi float [ %1075, %1052 ], [ %1047, %979 ]
  %1079 = phi float [ %1076, %1052 ], [ %1048, %979 ]
  %1080 = and i32 %973, 256
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1128, label %1082

; <label>:1082                                    ; preds = %1077
  %1083 = add i32 %33, 444
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %1085, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1087, %dx.types.Handle %75, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = add i32 %33, 116
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = shl i32 %1092, 4
  %1094 = and i32 %1093, 32752
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = lshr i32 %1092, 7
  %1097 = and i32 %1096, 32752
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = fsub fast float 1.000000e+00, %453
  %1100 = call float @dx.op.binary.f32(i32 35, float %1099, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1101 = bitcast float %453 to i32
  %1102 = sitofp i32 %1101 to float
  %1103 = fadd fast float %1102, 0xC1CFBF8940000000
  %1104 = fmul fast float %1098, %1103
  %1105 = fadd fast float %1104, 0x41CFBF8940000000
  %1106 = fptosi float %1105 to i32
  %1107 = bitcast i32 %1106 to float
  %1108 = bitcast float %1100 to i32
  %1109 = sitofp i32 %1108 to float
  %1110 = fadd fast float %1109, 0xC1CFBF8940000000
  %1111 = fmul fast float %1110, %1098
  %1112 = fadd fast float %1111, 0x41CFBF8940000000
  %1113 = fptosi float %1112 to i32
  %1114 = bitcast i32 %1113 to float
  %1115 = fmul fast float %1107, %1095
  %1116 = fmul fast float %1114, %1095
  %1117 = fsub fast float %1100, %1115
  %1118 = fadd fast float %1116, %1100
  %1119 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1120 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1121 = fsub fast float %1089, %1119
  %1122 = fsub fast float %1120, %1119
  %1123 = bitcast float %1122 to i32
  %1124 = sub nsw i32 2129859010, %1123
  %1125 = bitcast i32 %1124 to float
  %1126 = fmul fast float %1125, %1121
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  br label %1128

; <label>:1128                                    ; preds = %1082, %1077
  %1129 = phi float [ %1127, %1082 ], [ %453, %1077 ]
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = and i32 %1131, 128
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1150, label %1134

; <label>:1134                                    ; preds = %1128
  %1135 = add i32 %33, 428
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %1137, 0
  %1139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1139, %dx.types.Handle %75, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = and i32 %1143, 524288
  %1145 = icmp ne i32 %1144, 0
  %1146 = fcmp fast ogt float %1141, 0x3FE0101020000000
  %1147 = select i1 %1146, float 1.000000e+00, float 0.000000e+00
  %1148 = select i1 %1145, float %1147, float %1141
  %1149 = fmul fast float %1148, %1129
  br label %1150

; <label>:1150                                    ; preds = %1134, %1128
  %1151 = phi float [ %1149, %1134 ], [ %1129, %1128 ]
  %1152 = fcmp fast ult float %1151, 0x3F70101020000000
  br i1 %1152, label %1736, label %1153

; <label>:1153                                    ; preds = %1150
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 16
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1356, label %1158

; <label>:1158                                    ; preds = %1153
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = add i32 %33, 380
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = add i32 %1163, 0
  %1165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1165, %dx.types.Handle %74, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = extractvalue %dx.types.ResRet.f32 %1166, 3
  %1171 = and i32 %1160, 255
  %1172 = uitofp i32 %1171 to float
  %1173 = lshr i32 %1160, 8
  %1174 = and i32 %1173, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1170, %1172
  %1177 = fadd fast float %1176, %1175
  %1178 = fmul fast float %1177, 0x3F70101000000000
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 512
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1191, label %1183

; <label>:1183                                    ; preds = %1158
  %1184 = add i32 %33, 464
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = add i32 %1186, 0
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1188, %dx.types.Handle %75, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  br label %1191

; <label>:1191                                    ; preds = %1183, %1158
  %1192 = phi float [ %1190, %1183 ], [ 1.000000e+00, %1158 ]
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 33554432
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1303, label %1197

; <label>:1197                                    ; preds = %1191
  %1198 = add i32 %33, 240
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 65535
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = lshr i32 %1200, 16
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = add i32 %33, 244
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 65535
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = lshr i32 %1211, 24
  %1213 = uitofp i32 %1212 to float
  %1214 = fmul fast float %1213, 0x3F70101020000000
  %1215 = and i32 %1211, 255
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1216, 0x3F70101020000000
  %1218 = lshr i32 %1211, 8
  %1219 = and i32 %1218, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = fmul fast float %1220, 0x3F70101020000000
  %1222 = lshr i32 %1211, 16
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = fmul fast float %1224, 0x3F70101020000000
  %1226 = add i32 %33, 236
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = lshr i32 %1228, 24
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1230, 0x3F70101020000000
  %1232 = and i32 %1228, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = lshr i32 %1228, 8
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101020000000
  %1239 = lshr i32 %1228, 16
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101020000000
  %1243 = bitcast float %1167 to i32
  %1244 = ashr i32 %1243, 1
  %1245 = sub nsw i32 1597463174, %1244
  %1246 = bitcast i32 %1245 to float
  %1247 = fmul fast float %1167, 5.000000e-01
  %1248 = fmul fast float %1246, %1246
  %1249 = fmul fast float %1248, %1247
  %1250 = fsub fast float 1.500000e+00, %1249
  %1251 = fmul fast float %1246, %1167
  %1252 = fmul fast float %1251, %1250
  %1253 = bitcast float %1168 to i32
  %1254 = ashr i32 %1253, 1
  %1255 = sub nsw i32 1597463174, %1254
  %1256 = bitcast i32 %1255 to float
  %1257 = fmul fast float %1168, 5.000000e-01
  %1258 = fmul fast float %1256, %1256
  %1259 = fmul fast float %1258, %1257
  %1260 = fsub fast float 1.500000e+00, %1259
  %1261 = fmul fast float %1256, %1168
  %1262 = fmul fast float %1261, %1260
  %1263 = bitcast float %1169 to i32
  %1264 = ashr i32 %1263, 1
  %1265 = sub nsw i32 1597463174, %1264
  %1266 = bitcast i32 %1265 to float
  %1267 = fmul fast float %1169, 5.000000e-01
  %1268 = fmul fast float %1266, %1266
  %1269 = fmul fast float %1268, %1267
  %1270 = fsub fast float 1.500000e+00, %1269
  %1271 = fmul fast float %1266, %1169
  %1272 = fmul fast float %1271, %1270
  %1273 = fsub fast float %1252, %1234
  %1274 = fsub fast float %1262, %1238
  %1275 = fsub fast float %1272, %1242
  %1276 = fmul fast float %1273, %1202
  %1277 = fmul fast float %1274, %1204
  %1278 = fmul fast float %1275, %1209
  %1279 = fadd fast float %1276, %1217
  %1280 = fadd fast float %1277, %1221
  %1281 = fadd fast float %1278, %1225
  %1282 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1283 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1284 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1285 = fmul fast float %1282, %1282
  %1286 = fmul fast float %1283, %1283
  %1287 = fmul fast float %1284, %1284
  %1288 = fsub fast float %1285, %1167
  %1289 = fsub fast float %1286, %1168
  %1290 = fsub fast float %1287, %1169
  %1291 = fmul fast float %1288, %1192
  %1292 = fmul fast float %1289, %1192
  %1293 = fmul fast float %1290, %1192
  %1294 = fadd fast float %1291, %1167
  %1295 = fadd fast float %1292, %1168
  %1296 = fadd fast float %1293, %1169
  %1297 = fadd fast float %1214, %1178
  %1298 = fsub fast float %1297, %1231
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = fsub fast float %1299, %1178
  %1301 = fmul fast float %1300, %1192
  %1302 = fadd fast float %1301, %1178
  br label %1356

; <label>:1303                                    ; preds = %1191
  %1304 = and i32 %1194, 134217728
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1340, label %1306

; <label>:1306                                    ; preds = %1303
  %1307 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1308 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1309 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1310 = fadd fast float %1307, -5.000000e-01
  %1311 = fadd fast float %1308, -5.000000e-01
  %1312 = fadd fast float %1309, -5.000000e-01
  %1313 = fmul fast float %1310, %1192
  %1314 = fmul fast float %1311, %1192
  %1315 = fmul fast float %1312, %1192
  %1316 = fadd fast float %1313, 5.000000e-01
  %1317 = fadd fast float %1314, 5.000000e-01
  %1318 = fadd fast float %1315, 5.000000e-01
  %1319 = call float @dx.op.unary.f32(i32 24, float %1167)  ; Sqrt(value)
  %1320 = call float @dx.op.unary.f32(i32 24, float %1168)  ; Sqrt(value)
  %1321 = call float @dx.op.unary.f32(i32 24, float %1169)  ; Sqrt(value)
  %1322 = fmul fast float %1316, 2.000000e+00
  %1323 = fsub fast float 1.000000e+00, %1322
  %1324 = fmul fast float %1323, %1319
  %1325 = fadd fast float %1324, %1322
  %1326 = fmul fast float %1325, %1319
  %1327 = fmul fast float %1317, 2.000000e+00
  %1328 = fsub fast float 1.000000e+00, %1327
  %1329 = fmul fast float %1328, %1320
  %1330 = fadd fast float %1329, %1327
  %1331 = fmul fast float %1330, %1320
  %1332 = fmul fast float %1318, 2.000000e+00
  %1333 = fsub fast float 1.000000e+00, %1332
  %1334 = fmul fast float %1333, %1321
  %1335 = fadd fast float %1334, %1332
  %1336 = fmul fast float %1335, %1321
  %1337 = fmul fast float %1326, %1326
  %1338 = fmul fast float %1331, %1331
  %1339 = fmul fast float %1336, %1336
  br label %1356

; <label>:1340                                    ; preds = %1303
  %1341 = fmul fast float %288, %288
  %1342 = fmul fast float %292, %292
  %1343 = fmul fast float %296, %296
  %1344 = fadd fast float %1341, -1.000000e+00
  %1345 = fadd fast float %1342, -1.000000e+00
  %1346 = fadd fast float %1343, -1.000000e+00
  %1347 = fmul fast float %1192, %1344
  %1348 = fmul fast float %1192, %1345
  %1349 = fmul fast float %1192, %1346
  %1350 = fadd fast float %1347, 1.000000e+00
  %1351 = fadd fast float %1348, 1.000000e+00
  %1352 = fadd fast float %1349, 1.000000e+00
  %1353 = fmul fast float %1350, %1167
  %1354 = fmul fast float %1351, %1168
  %1355 = fmul fast float %1352, %1169
  br label %1356

; <label>:1356                                    ; preds = %1340, %1306, %1197, %1153
  %1357 = phi float [ %1302, %1197 ], [ %1178, %1306 ], [ %1178, %1340 ], [ 0x3FA23C0BE0000000, %1153 ]
  %1358 = phi float [ %1294, %1197 ], [ %1337, %1306 ], [ %1353, %1340 ], [ 1.000000e+00, %1153 ]
  %1359 = phi float [ %1295, %1197 ], [ %1338, %1306 ], [ %1354, %1340 ], [ 1.000000e+00, %1153 ]
  %1360 = phi float [ %1296, %1197 ], [ %1339, %1306 ], [ %1355, %1340 ], [ 1.000000e+00, %1153 ]
  %1361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.i32 %1361, 1
  %1363 = and i32 %1362, 1
  %1364 = icmp ne i32 %1363, 0
  %1365 = add i32 %33, 356
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = and i32 %1367, 32
  %1369 = icmp ne i32 %1368, 0
  %1370 = and i1 %1364, %1369
  %1371 = select i1 %1370, float 1.000000e+00, float %1358
  %1372 = select i1 %1370, float 0x3FD3333340000000, float %1359
  %1373 = select i1 %1370, float 0x3FD3333340000000, float %1360
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 32
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1450, label %1378

; <label>:1378                                    ; preds = %1356
  %1379 = add i32 %33, 108
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = add i32 %33, 396
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %1384, 0
  %1386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1386, %dx.types.Handle %74, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = extractvalue %dx.types.ResRet.f32 %1387, 3
  %1392 = and i32 %1381, 255
  %1393 = uitofp i32 %1392 to float
  %1394 = lshr i32 %1381, 8
  %1395 = and i32 %1394, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = lshr i32 %1381, 16
  %1398 = and i32 %1397, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101000000000
  %1401 = fmul fast float %1388, %1393
  %1402 = fadd fast float %1401, %1396
  %1403 = fmul fast float %1402, 0x3F70101000000000
  %1404 = fadd fast float %1389, -5.000000e-01
  %1405 = fadd fast float %1391, -5.000000e-01
  %1406 = fmul fast float %1404, %1400
  %1407 = fmul fast float %1405, %1400
  %1408 = fadd fast float %1406, 5.000000e-01
  %1409 = fadd fast float %1407, 5.000000e-01
  %1410 = fmul fast float %1408, 2.000000e+00
  %1411 = fadd fast float %1410, -1.000000e+00
  %1412 = fmul fast float %1409, 2.000000e+00
  %1413 = fadd fast float %1412, -1.000000e+00
  %1414 = fadd fast float %1411, %1413
  %1415 = fmul fast float %1414, 5.000000e-01
  %1416 = fsub fast float %1411, %1413
  %1417 = fmul fast float %1416, 5.000000e-01
  %1418 = call float @dx.op.unary.f32(i32 6, float %1415)  ; FAbs(value)
  %1419 = fsub fast float 1.000000e+00, %1418
  %1420 = call float @dx.op.unary.f32(i32 6, float %1417)  ; FAbs(value)
  %1421 = fsub fast float %1419, %1420
  %1422 = call float @dx.op.dot3.f32(i32 55, float %1415, float %1417, float %1421, float %1415, float %1417, float %1421)  ; Dot3(ax,ay,az,bx,by,bz)
  %1423 = call float @dx.op.unary.f32(i32 25, float %1422)  ; Rsqrt(value)
  %1424 = fmul fast float %1415, %1423
  %1425 = fmul fast float %1417, %1423
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 67108864
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1446, label %1430

; <label>:1430                                    ; preds = %1378
  %1431 = add i32 %33, 296
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 65535
  %1435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1434)  ; LegacyF16ToF32(value)
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 65535
  %1439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1438)  ; LegacyF16ToF32(value)
  %1440 = lshr i32 %1433, 16
  %1441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1440)  ; LegacyF16ToF32(value)
  %1442 = fsub fast float %1403, %1441
  %1443 = fmul fast float %1442, %1435
  %1444 = fadd fast float %1443, %1439
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  br label %1446

; <label>:1446                                    ; preds = %1430, %1378
  %1447 = phi float [ %1445, %1430 ], [ %1403, %1378 ]
  %1448 = call float @dx.op.dot2.f32(i32 54, float %1424, float %1425, float %982, float %983)  ; Dot2(ax,ay,bx,by)
  %1449 = call float @dx.op.dot2.f32(i32 54, float %1424, float %1425, float %984, float %985)  ; Dot2(ax,ay,bx,by)
  br label %1450

; <label>:1450                                    ; preds = %1446, %1356
  %1451 = phi float [ %1447, %1446 ], [ 0x3FD6666660000000, %1356 ]
  %1452 = phi float [ %1448, %1446 ], [ 0.000000e+00, %1356 ]
  %1453 = phi float [ %1449, %1446 ], [ 0.000000e+00, %1356 ]
  %1454 = phi float [ %1390, %1446 ], [ 1.000000e+00, %1356 ]
  %1455 = add i32 %33, 176
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = lshr i32 %1457, 22
  %1459 = shl nuw nsw i32 %1458, 5
  %1460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1459)  ; LegacyF16ToF32(value)
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 64
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1498, label %1465

; <label>:1465                                    ; preds = %1450
  %1466 = add i32 %33, 412
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 131072
  %1474 = icmp eq i32 %1473, 0
  %1475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %74, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.ResRet.f32 %1475, 1
  %1478 = extractvalue %dx.types.ResRet.f32 %1475, 2
  %1479 = fmul fast float %1476, %276
  %1480 = fmul fast float %1477, %279
  %1481 = fmul fast float %1478, %282
  br i1 %1474, label %1488, label %1482

; <label>:1482                                    ; preds = %1465
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1485 = fmul fast float %1484, %1479
  %1486 = fmul fast float %1484, %1480
  %1487 = fmul fast float %1484, %1481
  br label %1488

; <label>:1488                                    ; preds = %1482, %1465
  %1489 = phi float [ %1485, %1482 ], [ %1479, %1465 ]
  %1490 = phi float [ %1486, %1482 ], [ %1480, %1465 ]
  %1491 = phi float [ %1487, %1482 ], [ %1481, %1465 ]
  %1492 = fmul fast float %1489, %1460
  %1493 = select i1 %217, float %1492, float %1489
  %1494 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1490, float %1491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1495 = select i1 %217, float 0.000000e+00, float %1489
  %1496 = select i1 %217, float %1494, float %1490
  %1497 = select i1 %217, float 0.000000e+00, float %1491
  br label %1498

; <label>:1498                                    ; preds = %1488, %1450
  %1499 = phi float [ %1495, %1488 ], [ 0.000000e+00, %1450 ]
  %1500 = phi float [ %1496, %1488 ], [ 0.000000e+00, %1450 ]
  %1501 = phi float [ %1497, %1488 ], [ 0.000000e+00, %1450 ]
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 14336
  %1505 = icmp eq i32 %1504, 0
  br i1 %1505, label %1531, label %1506

; <label>:1506                                    ; preds = %1498
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = and i32 %1508, 4096
  %1510 = icmp eq i32 %1509, 0
  br i1 %1510, label %1531, label %1511

; <label>:1511                                    ; preds = %1506
  %1512 = and i32 %1508, 1048576
  %1513 = icmp ne i32 %1512, 0
  %1514 = add i32 %33, 480
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = add i32 %1516, 0
  %1518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1518, %dx.types.Handle %75, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 2
  %1521 = select i1 %1513, float 1.000000e+00, float %1520
  %1522 = add i32 %33, 180
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 65535
  %1526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1525)  ; LegacyF16ToF32(value)
  %1527 = lshr i32 %1524, 16
  %1528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1527)  ; LegacyF16ToF32(value)
  %1529 = fmul fast float %1526, %1521
  %1530 = fadd fast float %1529, %1528
  br label %1531

; <label>:1531                                    ; preds = %1511, %1506, %1498
  %1532 = phi float [ %1530, %1511 ], [ 0.000000e+00, %1506 ], [ 0.000000e+00, %1498 ]
  %1533 = add i32 %33, 112
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = lshr i32 %1535, 8
  %1539 = and i32 %1538, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = call float @dx.op.dot3.f32(i32 55, float %1371, float %1372, float %1373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = fmul fast float %1540, %1541
  %1543 = fadd fast float %1542, %1537
  %1544 = fmul fast float %1543, 0x3F70101020000000
  %1545 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  br i1 %970, label %1546, label %1554

; <label>:1546                                    ; preds = %1531
  %1547 = fsub fast float 1.000000e+00, %1151
  %1548 = fmul fast float %1547, %960
  %1549 = fmul fast float %1547, %961
  %1550 = fmul fast float %1547, %962
  %1551 = fmul fast float %1547, %957
  %1552 = fmul fast float %1547, %958
  %1553 = fmul fast float %1547, %959
  br label %1554

; <label>:1554                                    ; preds = %1546, %1531
  %1555 = phi float [ %1551, %1546 ], [ %957, %1531 ]
  %1556 = phi float [ %1552, %1546 ], [ %958, %1531 ]
  %1557 = phi float [ %1553, %1546 ], [ %959, %1531 ]
  %1558 = phi float [ %1548, %1546 ], [ %960, %1531 ]
  %1559 = phi float [ %1549, %1546 ], [ %961, %1531 ]
  %1560 = phi float [ %1550, %1546 ], [ %962, %1531 ]
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 3
  %1564 = icmp eq i32 %1563, 3
  br i1 %1564, label %1643, label %1565

; <label>:1565                                    ; preds = %1554
  %1566 = and i32 %1562, 16
  %1567 = icmp ne i32 %1566, 0
  %1568 = select i1 %1567, float %1151, float 0.000000e+00
  %1569 = icmp eq i32 %1563, 0
  br i1 %1569, label %1570, label %1598

; <label>:1570                                    ; preds = %1565
  %1571 = and i32 %1562, 64
  %1572 = icmp ne i32 %1571, 0
  %1573 = select i1 %1572, float %1151, float 0.000000e+00
  %1574 = fsub fast float %1371, %1558
  %1575 = fsub fast float %1372, %1559
  %1576 = fsub fast float %1373, %1560
  %1577 = fmul fast float %1568, %1574
  %1578 = fmul fast float %1568, %1575
  %1579 = fmul fast float %1568, %1576
  %1580 = fadd fast float %1577, %1558
  %1581 = fadd fast float %1578, %1559
  %1582 = fadd fast float %1579, %1560
  %1583 = fsub fast float %1357, %963
  %1584 = fmul fast float %1568, %1583
  %1585 = fadd fast float %1584, %963
  %1586 = fsub fast float %1499, %1555
  %1587 = fsub fast float %1500, %1556
  %1588 = fsub fast float %1501, %1557
  %1589 = fmul fast float %1573, %1586
  %1590 = fmul fast float %1573, %1587
  %1591 = fmul fast float %1573, %1588
  %1592 = fadd fast float %1589, %1555
  %1593 = fadd fast float %1590, %1556
  %1594 = fadd fast float %1591, %1557
  %1595 = fsub fast float %1545, %968
  %1596 = fmul fast float %1568, %1595
  %1597 = fadd fast float %1596, %968
  br label %1643

; <label>:1598                                    ; preds = %1565
  %1599 = icmp eq i32 %1563, 1
  br i1 %1599, label %1600, label %1613

; <label>:1600                                    ; preds = %1598
  %1601 = fadd fast float %1371, -1.000000e+00
  %1602 = fadd fast float %1372, -1.000000e+00
  %1603 = fadd fast float %1373, -1.000000e+00
  %1604 = fmul fast float %1568, %1601
  %1605 = fmul fast float %1568, %1602
  %1606 = fmul fast float %1568, %1603
  %1607 = fadd fast float %1604, 1.000000e+00
  %1608 = fadd fast float %1605, 1.000000e+00
  %1609 = fadd fast float %1606, 1.000000e+00
  %1610 = fmul fast float %1607, %1558
  %1611 = fmul fast float %1608, %1559
  %1612 = fmul fast float %1609, %1560
  br label %1643

; <label>:1613                                    ; preds = %1598
  %1614 = icmp eq i32 %1563, 2
  br i1 %1614, label %1615, label %1643

; <label>:1615                                    ; preds = %1613
  %1616 = call float @dx.op.unary.f32(i32 24, float %1371)  ; Sqrt(value)
  %1617 = call float @dx.op.unary.f32(i32 24, float %1372)  ; Sqrt(value)
  %1618 = call float @dx.op.unary.f32(i32 24, float %1373)  ; Sqrt(value)
  %1619 = fadd fast float %1616, -5.000000e-01
  %1620 = fadd fast float %1617, -5.000000e-01
  %1621 = fadd fast float %1618, -5.000000e-01
  %1622 = fmul fast float %1619, %1568
  %1623 = fmul fast float %1620, %1568
  %1624 = fmul fast float %1621, %1568
  %1625 = fadd fast float %1622, 5.000000e-01
  %1626 = fadd fast float %1623, 5.000000e-01
  %1627 = fadd fast float %1624, 5.000000e-01
  %1628 = fmul fast float %1625, 2.000000e+00
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1629, %1558
  %1631 = fadd fast float %1630, %1628
  %1632 = fmul fast float %1631, %1558
  %1633 = fmul fast float %1626, 2.000000e+00
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = fmul fast float %1634, %1559
  %1636 = fadd fast float %1635, %1633
  %1637 = fmul fast float %1636, %1559
  %1638 = fmul fast float %1627, 2.000000e+00
  %1639 = fsub fast float 1.000000e+00, %1638
  %1640 = fmul fast float %1639, %1560
  %1641 = fadd fast float %1640, %1638
  %1642 = fmul fast float %1641, %1560
  br label %1643

; <label>:1643                                    ; preds = %1615, %1613, %1600, %1570, %1554
  %1644 = phi float [ %1555, %1554 ], [ %1555, %1615 ], [ %1555, %1613 ], [ %1555, %1600 ], [ %1592, %1570 ]
  %1645 = phi float [ %1556, %1554 ], [ %1556, %1615 ], [ %1556, %1613 ], [ %1556, %1600 ], [ %1593, %1570 ]
  %1646 = phi float [ %1557, %1554 ], [ %1557, %1615 ], [ %1557, %1613 ], [ %1557, %1600 ], [ %1594, %1570 ]
  %1647 = phi float [ %1558, %1554 ], [ %1632, %1615 ], [ %1558, %1613 ], [ %1610, %1600 ], [ %1580, %1570 ]
  %1648 = phi float [ %1559, %1554 ], [ %1637, %1615 ], [ %1559, %1613 ], [ %1611, %1600 ], [ %1581, %1570 ]
  %1649 = phi float [ %1560, %1554 ], [ %1642, %1615 ], [ %1560, %1613 ], [ %1612, %1600 ], [ %1582, %1570 ]
  %1650 = phi float [ %963, %1554 ], [ %963, %1615 ], [ %963, %1613 ], [ %963, %1600 ], [ %1585, %1570 ]
  %1651 = phi float [ %968, %1554 ], [ %968, %1615 ], [ %968, %1613 ], [ %968, %1600 ], [ %1597, %1570 ]
  %1652 = and i32 %1562, 12
  %1653 = icmp eq i32 %1652, 12
  br i1 %1653, label %1736, label %1654

; <label>:1654                                    ; preds = %1643
  %1655 = and i32 %1562, 2097184
  %1656 = icmp eq i32 %1655, 2097184
  %1657 = select i1 %1656, float %1151, float 0.000000e+00
  %1658 = and i32 %1562, 4194336
  %1659 = icmp eq i32 %1658, 4194336
  %1660 = select i1 %1659, float %1151, float 0.000000e+00
  %1661 = and i32 %1562, 8388640
  %1662 = icmp eq i32 %1661, 8388640
  %1663 = select i1 %1662, float %1151, float 0.000000e+00
  %1664 = and i32 %1562, 4096
  %1665 = icmp ne i32 %1664, 0
  %1666 = select i1 %1665, float %1151, float 0.000000e+00
  %1667 = icmp eq i32 %1652, 0
  br i1 %1667, label %1668, label %1684

; <label>:1668                                    ; preds = %1654
  %1669 = fsub fast float %1452, %955
  %1670 = fsub fast float %1453, %956
  %1671 = fmul fast float %1657, %1669
  %1672 = fmul fast float %1657, %1670
  %1673 = fadd fast float %1671, %955
  %1674 = fadd fast float %1672, %956
  %1675 = fsub fast float %1454, %966
  %1676 = fmul fast float %1660, %1675
  %1677 = fadd fast float %1676, %966
  %1678 = fsub fast float %1451, %965
  %1679 = fmul fast float %1663, %1678
  %1680 = fadd fast float %1679, %965
  %1681 = fsub fast float %1532, %967
  %1682 = fmul fast float %1666, %1681
  %1683 = fadd fast float %1682, %967
  br label %1736

; <label>:1684                                    ; preds = %1654
  %1685 = icmp eq i32 %1652, 4
  br i1 %1685, label %1686, label %1720

; <label>:1686                                    ; preds = %1684
  %1687 = fmul fast float %1657, %1452
  %1688 = fmul fast float %1657, %1453
  %1689 = fadd fast float %1687, %955
  %1690 = fadd fast float %1688, %956
  %1691 = call float @dx.op.binary.f32(i32 36, float %966, float %1454)  ; FMin(a,b)
  %1692 = fsub fast float %1691, %966
  %1693 = fmul fast float %1692, %1660
  %1694 = fadd fast float %1693, %966
  %1695 = fadd fast float %1451, %965
  %1696 = fmul fast float %1695, 0x3FF337FAE0000000
  %1697 = fmul fast float %965, %965
  %1698 = fmul fast float %1451, %1451
  %1699 = fadd fast float %1698, %1697
  %1700 = fmul fast float %1699, 0x3FE5152B00000000
  %1701 = fmul fast float %965, 0xBFCC1F85E0000000
  %1702 = fmul fast float %1701, %1451
  %1703 = fadd fast float %1702, 0xBFE1363700000000
  %1704 = fadd fast float %1703, %1696
  %1705 = fsub fast float %1704, %1700
  %1706 = fmul fast float %1695, 0x3FBA6F0D00000000
  %1707 = fmul fast float %1699, 0x3FD0432880000000
  %1708 = fmul fast float %965, 0xBFEF110800000000
  %1709 = fmul fast float %1708, %1451
  %1710 = fadd fast float %1709, 1.000000e+00
  %1711 = fsub fast float %1710, %1706
  %1712 = fadd fast float %1711, %1707
  %1713 = fdiv fast float %1705, %1712
  %1714 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1715 = fsub fast float %1714, %965
  %1716 = fmul fast float %1715, %1663
  %1717 = fadd fast float %1716, %965
  %1718 = fmul fast float %1666, %1532
  %1719 = fadd fast float %1718, %967
  br label %1736

; <label>:1720                                    ; preds = %1684
  %1721 = icmp eq i32 %1652, 8
  br i1 %1721, label %1722, label %1736

; <label>:1722                                    ; preds = %1720
  %1723 = fmul fast float %1657, %1452
  %1724 = fmul fast float %1657, %1453
  %1725 = fadd fast float %1723, %955
  %1726 = fadd fast float %1724, %956
  %1727 = call float @dx.op.binary.f32(i32 36, float %966, float %1454)  ; FMin(a,b)
  %1728 = fsub fast float %1727, %966
  %1729 = fmul fast float %1728, %1660
  %1730 = fadd fast float %1729, %966
  %1731 = fsub fast float %1451, %965
  %1732 = fmul fast float %1663, %1731
  %1733 = fadd fast float %1732, %965
  %1734 = fmul fast float %1666, %1532
  %1735 = fadd fast float %1734, %967
  br label %1736

; <label>:1736                                    ; preds = %1722, %1720, %1686, %1668, %1643, %1150, %969, %954
  %1737 = phi float [ %955, %1643 ], [ %955, %1150 ], [ %955, %954 ], [ %1725, %1722 ], [ %955, %1720 ], [ %1689, %1686 ], [ %1673, %1668 ], [ %955, %969 ]
  %1738 = phi float [ %956, %1643 ], [ %956, %1150 ], [ %956, %954 ], [ %1726, %1722 ], [ %956, %1720 ], [ %1690, %1686 ], [ %1674, %1668 ], [ %956, %969 ]
  %1739 = phi float [ %1644, %1643 ], [ %957, %1150 ], [ %957, %954 ], [ %1644, %1722 ], [ %1644, %1720 ], [ %1644, %1686 ], [ %1644, %1668 ], [ %957, %969 ]
  %1740 = phi float [ %1645, %1643 ], [ %958, %1150 ], [ %958, %954 ], [ %1645, %1722 ], [ %1645, %1720 ], [ %1645, %1686 ], [ %1645, %1668 ], [ %958, %969 ]
  %1741 = phi float [ %1646, %1643 ], [ %959, %1150 ], [ %959, %954 ], [ %1646, %1722 ], [ %1646, %1720 ], [ %1646, %1686 ], [ %1646, %1668 ], [ %959, %969 ]
  %1742 = phi float [ %1647, %1643 ], [ %960, %1150 ], [ %960, %954 ], [ %1647, %1722 ], [ %1647, %1720 ], [ %1647, %1686 ], [ %1647, %1668 ], [ %960, %969 ]
  %1743 = phi float [ %1648, %1643 ], [ %961, %1150 ], [ %961, %954 ], [ %1648, %1722 ], [ %1648, %1720 ], [ %1648, %1686 ], [ %1648, %1668 ], [ %961, %969 ]
  %1744 = phi float [ %1649, %1643 ], [ %962, %1150 ], [ %962, %954 ], [ %1649, %1722 ], [ %1649, %1720 ], [ %1649, %1686 ], [ %1649, %1668 ], [ %962, %969 ]
  %1745 = phi float [ %1650, %1643 ], [ %963, %1150 ], [ %963, %954 ], [ %1650, %1722 ], [ %1650, %1720 ], [ %1650, %1686 ], [ %1650, %1668 ], [ %963, %969 ]
  %1746 = phi float [ %965, %1643 ], [ %965, %1150 ], [ %965, %954 ], [ %1733, %1722 ], [ %965, %1720 ], [ %1717, %1686 ], [ %1680, %1668 ], [ %965, %969 ]
  %1747 = phi float [ %966, %1643 ], [ %966, %1150 ], [ %966, %954 ], [ %1730, %1722 ], [ %966, %1720 ], [ %1694, %1686 ], [ %1677, %1668 ], [ %966, %969 ]
  %1748 = phi float [ %967, %1643 ], [ %967, %1150 ], [ %967, %954 ], [ %1735, %1722 ], [ %967, %1720 ], [ %1719, %1686 ], [ %1683, %1668 ], [ %967, %969 ]
  %1749 = phi float [ %1651, %1643 ], [ %968, %1150 ], [ %968, %954 ], [ %1651, %1722 ], [ %1651, %1720 ], [ %1651, %1686 ], [ %1651, %1668 ], [ %968, %969 ]
  br i1 %403, label %2517, label %1750

; <label>:1750                                    ; preds = %1736
  %1751 = icmp ult i32 %456, 3
  %1752 = add i32 %33, 56
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = add i32 %33, 60
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = or i32 %1757, %1754
  %1759 = icmp eq i32 %1758, 0
  br i1 %1759, label %2517, label %1760

; <label>:1760                                    ; preds = %1750
  %1761 = and i32 %1754, 262144
  %1762 = icmp ne i32 %1761, 0
  %1763 = select i1 %1762, float %39, float 1.000000e+00
  %1764 = select i1 %1762, float %40, float 0.000000e+00
  %1765 = select i1 %1762, float %41, float 0.000000e+00
  %1766 = select i1 %1762, float %42, float 1.000000e+00
  %1767 = select i1 %1762, float %43, float %66
  %1768 = select i1 %1762, float %44, float %67
  %1769 = add i32 %33, 316
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = lshr i32 %1771, 16
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = fmul fast float %1773, 0x3F50624DE0000000
  %1775 = add i32 %33, 120
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = lshr i32 %1777, 16
  %1779 = and i32 %1778, 255
  %1780 = lshr i32 %1777, 24
  %1781 = add i32 %33, 324
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = and i32 %1783, 65535
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = lshr i32 %1783, 16
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = add i32 %33, 64
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = lshr i32 %1790, 22
  %1792 = shl nuw nsw i32 %1791, 5
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = shl i32 %1790, 4
  %1795 = and i32 %1794, 32752
  %1796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1795)  ; LegacyF16ToF32(value)
  %1797 = lshr i32 %1790, 7
  %1798 = and i32 %1797, 32752
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 3
  %1802 = fmul fast float %1801, 1.000000e+03
  %1803 = fmul fast float %353, %1802
  %1804 = call float @dx.op.unary.f32(i32 22, float %1803)  ; Frc(value)
  %1805 = fadd fast float %1804, %343
  %1806 = fmul fast float %354, %1802
  %1807 = call float @dx.op.unary.f32(i32 22, float %1806)  ; Frc(value)
  %1808 = fadd fast float %1807, %345
  %1809 = fmul fast float %1774, %1802
  %1810 = call float @dx.op.unary.f32(i32 22, float %1809)  ; Frc(value)
  %1811 = fmul fast float %1810, 0x401921FB60000000
  %1812 = fadd fast float %1811, %1793
  %1813 = call float @dx.op.unary.f32(i32 13, float %1812)  ; Sin(value)
  %1814 = call float @dx.op.unary.f32(i32 12, float %1812)  ; Cos(value)
  %1815 = fsub fast float -0.000000e+00, %1813
  %1816 = fadd fast float %1767, -5.000000e-01
  %1817 = fadd fast float %1768, -5.000000e-01
  %1818 = fmul fast float %1785, %1816
  %1819 = fmul fast float %1787, %1817
  %1820 = fadd fast float %1818, 5.000000e-01
  %1821 = fadd fast float %1819, 5.000000e-01
  %1822 = fmul fast float %1796, %1820
  %1823 = fmul fast float %1799, %1821
  %1824 = fmul fast float %1814, %1822
  %1825 = call float @dx.op.tertiary.f32(i32 46, float %1815, float %1823, float %1824)  ; FMad(a,b,c)
  %1826 = fmul fast float %1813, %1822
  %1827 = call float @dx.op.tertiary.f32(i32 46, float %1814, float %1823, float %1826)  ; FMad(a,b,c)
  %1828 = fadd fast float %1805, %1825
  %1829 = fadd fast float %1808, %1827
  %1830 = icmp ugt i32 %1779, 1
  %1831 = icmp ugt i32 %1777, 33554431
  %1832 = or i1 %1831, %1830
  br i1 %1832, label %1833, label %1858

; <label>:1833                                    ; preds = %1760
  %1834 = add i32 %33, 260
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = lshr i32 %1836, 16
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = fmul fast float %1801, %1838
  %1840 = call float @dx.op.unary.f32(i32 22, float %1839)  ; Frc(value)
  %1841 = mul nuw nsw i32 %1779, %1780
  %1842 = uitofp i32 %1841 to float
  %1843 = fmul fast float %1840, %1842
  %1844 = call float @dx.op.unary.f32(i32 27, float %1843)  ; Round_ni(value)
  %1845 = fptoui float %1844 to i32
  %1846 = urem i32 %1845, %1779
  %1847 = udiv i32 %1845, %1780
  %1848 = call float @dx.op.unary.f32(i32 22, float %1828)  ; Frc(value)
  %1849 = call float @dx.op.unary.f32(i32 22, float %1829)  ; Frc(value)
  %1850 = uitofp i32 %1846 to float
  %1851 = uitofp i32 %1847 to float
  %1852 = fadd fast float %1848, %1850
  %1853 = fadd fast float %1849, %1851
  %1854 = uitofp i32 %1779 to float
  %1855 = uitofp i32 %1780 to float
  %1856 = fdiv fast float %1852, %1854
  %1857 = fdiv fast float %1853, %1855
  br label %1858

; <label>:1858                                    ; preds = %1833, %1760
  %1859 = phi float [ %1856, %1833 ], [ %1828, %1760 ]
  %1860 = phi float [ %1857, %1833 ], [ %1829, %1760 ]
  %1861 = and i32 %1754, 256
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %1909, label %1863

; <label>:1863                                    ; preds = %1858
  %1864 = add i32 %33, 448
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = add i32 %1866, 0
  %1868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1867, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1868, %dx.types.Handle %75, float %1859, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = add i32 %33, 132
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = shl i32 %1873, 4
  %1875 = and i32 %1874, 32752
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = lshr i32 %1873, 7
  %1878 = and i32 %1877, 32752
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = fsub fast float 1.000000e+00, %452
  %1881 = call float @dx.op.binary.f32(i32 35, float %1880, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1882 = bitcast float %452 to i32
  %1883 = sitofp i32 %1882 to float
  %1884 = fadd fast float %1883, 0xC1CFBF8940000000
  %1885 = fmul fast float %1879, %1884
  %1886 = fadd fast float %1885, 0x41CFBF8940000000
  %1887 = fptosi float %1886 to i32
  %1888 = bitcast i32 %1887 to float
  %1889 = bitcast float %1881 to i32
  %1890 = sitofp i32 %1889 to float
  %1891 = fadd fast float %1890, 0xC1CFBF8940000000
  %1892 = fmul fast float %1891, %1879
  %1893 = fadd fast float %1892, 0x41CFBF8940000000
  %1894 = fptosi float %1893 to i32
  %1895 = bitcast i32 %1894 to float
  %1896 = fmul fast float %1888, %1876
  %1897 = fmul fast float %1895, %1876
  %1898 = fsub fast float %1881, %1896
  %1899 = fadd fast float %1897, %1881
  %1900 = call float @dx.op.unary.f32(i32 7, float %1898)  ; Saturate(value)
  %1901 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1902 = fsub fast float %1870, %1900
  %1903 = fsub fast float %1901, %1900
  %1904 = bitcast float %1903 to i32
  %1905 = sub nsw i32 2129859010, %1904
  %1906 = bitcast i32 %1905 to float
  %1907 = fmul fast float %1906, %1902
  %1908 = call float @dx.op.unary.f32(i32 7, float %1907)  ; Saturate(value)
  br label %1909

; <label>:1909                                    ; preds = %1863, %1858
  %1910 = phi float [ %1908, %1863 ], [ %452, %1858 ]
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = and i32 %1912, 128
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %1931, label %1915

; <label>:1915                                    ; preds = %1909
  %1916 = add i32 %33, 432
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = add i32 %1918, 0
  %1920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1920, %dx.types.Handle %75, float %1859, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = and i32 %1924, 524288
  %1926 = icmp ne i32 %1925, 0
  %1927 = fcmp fast ogt float %1922, 0x3FE0101020000000
  %1928 = select i1 %1927, float 1.000000e+00, float 0.000000e+00
  %1929 = select i1 %1926, float %1928, float %1922
  %1930 = fmul fast float %1929, %1910
  br label %1931

; <label>:1931                                    ; preds = %1915, %1909
  %1932 = phi float [ %1930, %1915 ], [ %1910, %1909 ]
  %1933 = fcmp fast ult float %1932, 0x3F70101020000000
  br i1 %1933, label %2517, label %1934

; <label>:1934                                    ; preds = %1931
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = and i32 %1936, 16
  %1938 = icmp eq i32 %1937, 0
  br i1 %1938, label %2137, label %1939

; <label>:1939                                    ; preds = %1934
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = add i32 %33, 384
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = add i32 %1944, 0
  %1946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1946, %dx.types.Handle %74, float %1859, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.ResRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.ResRet.f32 %1947, 2
  %1951 = extractvalue %dx.types.ResRet.f32 %1947, 3
  %1952 = and i32 %1941, 255
  %1953 = uitofp i32 %1952 to float
  %1954 = lshr i32 %1941, 8
  %1955 = and i32 %1954, 255
  %1956 = uitofp i32 %1955 to float
  %1957 = fmul fast float %1951, %1953
  %1958 = fadd fast float %1957, %1956
  %1959 = fmul fast float %1958, 0x3F70101000000000
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 512
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %1972, label %1964

; <label>:1964                                    ; preds = %1939
  %1965 = add i32 %33, 468
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = add i32 %1967, 0
  %1969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1969, %dx.types.Handle %75, float %1859, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  br label %1972

; <label>:1972                                    ; preds = %1964, %1939
  %1973 = phi float [ %1971, %1964 ], [ 1.000000e+00, %1939 ]
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = and i32 %1975, 33554432
  %1977 = icmp eq i32 %1976, 0
  br i1 %1977, label %2084, label %1978

; <label>:1978                                    ; preds = %1972
  %1979 = add i32 %33, 256
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = and i32 %1981, 65535
  %1983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1982)  ; LegacyF16ToF32(value)
  %1984 = lshr i32 %1981, 16
  %1985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1984)  ; LegacyF16ToF32(value)
  %1986 = add i32 %33, 260
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, 65535
  %1990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1989)  ; LegacyF16ToF32(value)
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = lshr i32 %1992, 24
  %1994 = uitofp i32 %1993 to float
  %1995 = fmul fast float %1994, 0x3F70101020000000
  %1996 = and i32 %1992, 255
  %1997 = uitofp i32 %1996 to float
  %1998 = fmul fast float %1997, 0x3F70101020000000
  %1999 = lshr i32 %1992, 8
  %2000 = and i32 %1999, 255
  %2001 = uitofp i32 %2000 to float
  %2002 = fmul fast float %2001, 0x3F70101020000000
  %2003 = lshr i32 %1992, 16
  %2004 = and i32 %2003, 255
  %2005 = uitofp i32 %2004 to float
  %2006 = fmul fast float %2005, 0x3F70101020000000
  %2007 = add i32 %33, 252
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = lshr i32 %2009, 24
  %2011 = uitofp i32 %2010 to float
  %2012 = fmul fast float %2011, 0x3F70101020000000
  %2013 = and i32 %2009, 255
  %2014 = uitofp i32 %2013 to float
  %2015 = fmul fast float %2014, 0x3F70101020000000
  %2016 = lshr i32 %2009, 8
  %2017 = and i32 %2016, 255
  %2018 = uitofp i32 %2017 to float
  %2019 = fmul fast float %2018, 0x3F70101020000000
  %2020 = lshr i32 %2009, 16
  %2021 = and i32 %2020, 255
  %2022 = uitofp i32 %2021 to float
  %2023 = fmul fast float %2022, 0x3F70101020000000
  %2024 = bitcast float %1948 to i32
  %2025 = ashr i32 %2024, 1
  %2026 = sub nsw i32 1597463174, %2025
  %2027 = bitcast i32 %2026 to float
  %2028 = fmul fast float %1948, 5.000000e-01
  %2029 = fmul fast float %2027, %2027
  %2030 = fmul fast float %2029, %2028
  %2031 = fsub fast float 1.500000e+00, %2030
  %2032 = fmul fast float %2027, %1948
  %2033 = fmul fast float %2032, %2031
  %2034 = bitcast float %1949 to i32
  %2035 = ashr i32 %2034, 1
  %2036 = sub nsw i32 1597463174, %2035
  %2037 = bitcast i32 %2036 to float
  %2038 = fmul fast float %1949, 5.000000e-01
  %2039 = fmul fast float %2037, %2037
  %2040 = fmul fast float %2039, %2038
  %2041 = fsub fast float 1.500000e+00, %2040
  %2042 = fmul fast float %2037, %1949
  %2043 = fmul fast float %2042, %2041
  %2044 = bitcast float %1950 to i32
  %2045 = ashr i32 %2044, 1
  %2046 = sub nsw i32 1597463174, %2045
  %2047 = bitcast i32 %2046 to float
  %2048 = fmul fast float %1950, 5.000000e-01
  %2049 = fmul fast float %2047, %2047
  %2050 = fmul fast float %2049, %2048
  %2051 = fsub fast float 1.500000e+00, %2050
  %2052 = fmul fast float %2047, %1950
  %2053 = fmul fast float %2052, %2051
  %2054 = fsub fast float %2033, %2015
  %2055 = fsub fast float %2043, %2019
  %2056 = fsub fast float %2053, %2023
  %2057 = fmul fast float %2054, %1983
  %2058 = fmul fast float %2055, %1985
  %2059 = fmul fast float %2056, %1990
  %2060 = fadd fast float %2057, %1998
  %2061 = fadd fast float %2058, %2002
  %2062 = fadd fast float %2059, %2006
  %2063 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2064 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2065 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2066 = fmul fast float %2063, %2063
  %2067 = fmul fast float %2064, %2064
  %2068 = fmul fast float %2065, %2065
  %2069 = fsub fast float %2066, %1948
  %2070 = fsub fast float %2067, %1949
  %2071 = fsub fast float %2068, %1950
  %2072 = fmul fast float %2069, %1973
  %2073 = fmul fast float %2070, %1973
  %2074 = fmul fast float %2071, %1973
  %2075 = fadd fast float %2072, %1948
  %2076 = fadd fast float %2073, %1949
  %2077 = fadd fast float %2074, %1950
  %2078 = fadd fast float %1995, %1959
  %2079 = fsub fast float %2078, %2012
  %2080 = call float @dx.op.unary.f32(i32 7, float %2079)  ; Saturate(value)
  %2081 = fsub fast float %2080, %1959
  %2082 = fmul fast float %2081, %1973
  %2083 = fadd fast float %2082, %1959
  br label %2137

; <label>:2084                                    ; preds = %1972
  %2085 = and i32 %1975, 134217728
  %2086 = icmp eq i32 %2085, 0
  br i1 %2086, label %2121, label %2087

; <label>:2087                                    ; preds = %2084
  %2088 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2089 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2090 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2091 = fadd fast float %2088, -5.000000e-01
  %2092 = fadd fast float %2089, -5.000000e-01
  %2093 = fadd fast float %2090, -5.000000e-01
  %2094 = fmul fast float %2091, %1973
  %2095 = fmul fast float %2092, %1973
  %2096 = fmul fast float %2093, %1973
  %2097 = fadd fast float %2094, 5.000000e-01
  %2098 = fadd fast float %2095, 5.000000e-01
  %2099 = fadd fast float %2096, 5.000000e-01
  %2100 = call float @dx.op.unary.f32(i32 24, float %1948)  ; Sqrt(value)
  %2101 = call float @dx.op.unary.f32(i32 24, float %1949)  ; Sqrt(value)
  %2102 = call float @dx.op.unary.f32(i32 24, float %1950)  ; Sqrt(value)
  %2103 = fmul fast float %2097, 2.000000e+00
  %2104 = fsub fast float 1.000000e+00, %2103
  %2105 = fmul fast float %2104, %2100
  %2106 = fadd fast float %2105, %2103
  %2107 = fmul fast float %2106, %2100
  %2108 = fmul fast float %2098, 2.000000e+00
  %2109 = fsub fast float 1.000000e+00, %2108
  %2110 = fmul fast float %2109, %2101
  %2111 = fadd fast float %2110, %2108
  %2112 = fmul fast float %2111, %2101
  %2113 = fmul fast float %2099, 2.000000e+00
  %2114 = fsub fast float 1.000000e+00, %2113
  %2115 = fmul fast float %2114, %2102
  %2116 = fadd fast float %2115, %2113
  %2117 = fmul fast float %2116, %2102
  %2118 = fmul fast float %2107, %2107
  %2119 = fmul fast float %2112, %2112
  %2120 = fmul fast float %2117, %2117
  br label %2137

; <label>:2121                                    ; preds = %2084
  %2122 = fmul fast float %330, %330
  %2123 = fmul fast float %334, %334
  %2124 = fmul fast float %338, %338
  %2125 = fadd fast float %2122, -1.000000e+00
  %2126 = fadd fast float %2123, -1.000000e+00
  %2127 = fadd fast float %2124, -1.000000e+00
  %2128 = fmul fast float %1973, %2125
  %2129 = fmul fast float %1973, %2126
  %2130 = fmul fast float %1973, %2127
  %2131 = fadd fast float %2128, 1.000000e+00
  %2132 = fadd fast float %2129, 1.000000e+00
  %2133 = fadd fast float %2130, 1.000000e+00
  %2134 = fmul fast float %2131, %1948
  %2135 = fmul fast float %2132, %1949
  %2136 = fmul fast float %2133, %1950
  br label %2137

; <label>:2137                                    ; preds = %2121, %2087, %1978, %1934
  %2138 = phi float [ %2083, %1978 ], [ %1959, %2087 ], [ %1959, %2121 ], [ 0x3FA23C0BE0000000, %1934 ]
  %2139 = phi float [ %2075, %1978 ], [ %2118, %2087 ], [ %2134, %2121 ], [ 1.000000e+00, %1934 ]
  %2140 = phi float [ %2076, %1978 ], [ %2119, %2087 ], [ %2135, %2121 ], [ 1.000000e+00, %1934 ]
  %2141 = phi float [ %2077, %1978 ], [ %2120, %2087 ], [ %2136, %2121 ], [ 1.000000e+00, %1934 ]
  %2142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.i32 %2142, 1
  %2144 = and i32 %2143, 1
  %2145 = icmp ne i32 %2144, 0
  %2146 = add i32 %33, 356
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 32
  %2150 = icmp ne i32 %2149, 0
  %2151 = and i1 %2145, %2150
  %2152 = select i1 %2151, float 1.000000e+00, float %2139
  %2153 = select i1 %2151, float 0x3FD3333340000000, float %2140
  %2154 = select i1 %2151, float 0x3FD3333340000000, float %2141
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, 32
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2231, label %2159

; <label>:2159                                    ; preds = %2137
  %2160 = add i32 %33, 124
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %33, 400
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = add i32 %2165, 0
  %2167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2167, %dx.types.Handle %74, float %1859, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.ResRet.f32 %2168, 2
  %2172 = extractvalue %dx.types.ResRet.f32 %2168, 3
  %2173 = and i32 %2162, 255
  %2174 = uitofp i32 %2173 to float
  %2175 = lshr i32 %2162, 8
  %2176 = and i32 %2175, 255
  %2177 = uitofp i32 %2176 to float
  %2178 = lshr i32 %2162, 16
  %2179 = and i32 %2178, 255
  %2180 = uitofp i32 %2179 to float
  %2181 = fmul fast float %2180, 0x3F70101000000000
  %2182 = fmul fast float %2169, %2174
  %2183 = fadd fast float %2182, %2177
  %2184 = fmul fast float %2183, 0x3F70101000000000
  %2185 = fadd fast float %2170, -5.000000e-01
  %2186 = fadd fast float %2172, -5.000000e-01
  %2187 = fmul fast float %2185, %2181
  %2188 = fmul fast float %2186, %2181
  %2189 = fadd fast float %2187, 5.000000e-01
  %2190 = fadd fast float %2188, 5.000000e-01
  %2191 = fmul fast float %2189, 2.000000e+00
  %2192 = fadd fast float %2191, -1.000000e+00
  %2193 = fmul fast float %2190, 2.000000e+00
  %2194 = fadd fast float %2193, -1.000000e+00
  %2195 = fadd fast float %2192, %2194
  %2196 = fmul fast float %2195, 5.000000e-01
  %2197 = fsub fast float %2192, %2194
  %2198 = fmul fast float %2197, 5.000000e-01
  %2199 = call float @dx.op.unary.f32(i32 6, float %2196)  ; FAbs(value)
  %2200 = fsub fast float 1.000000e+00, %2199
  %2201 = call float @dx.op.unary.f32(i32 6, float %2198)  ; FAbs(value)
  %2202 = fsub fast float %2200, %2201
  %2203 = call float @dx.op.dot3.f32(i32 55, float %2196, float %2198, float %2202, float %2196, float %2198, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %2204 = call float @dx.op.unary.f32(i32 25, float %2203)  ; Rsqrt(value)
  %2205 = fmul fast float %2196, %2204
  %2206 = fmul fast float %2198, %2204
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = and i32 %2208, 67108864
  %2210 = icmp eq i32 %2209, 0
  br i1 %2210, label %2227, label %2211

; <label>:2211                                    ; preds = %2159
  %2212 = add i32 %33, 312
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 65535
  %2216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2215)  ; LegacyF16ToF32(value)
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 65535
  %2220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2219)  ; LegacyF16ToF32(value)
  %2221 = lshr i32 %2214, 16
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = fsub fast float %2184, %2222
  %2224 = fmul fast float %2223, %2216
  %2225 = fadd fast float %2224, %2220
  %2226 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  br label %2227

; <label>:2227                                    ; preds = %2211, %2159
  %2228 = phi float [ %2226, %2211 ], [ %2184, %2159 ]
  %2229 = call float @dx.op.dot2.f32(i32 54, float %2205, float %2206, float %1763, float %1764)  ; Dot2(ax,ay,bx,by)
  %2230 = call float @dx.op.dot2.f32(i32 54, float %2205, float %2206, float %1765, float %1766)  ; Dot2(ax,ay,bx,by)
  br label %2231

; <label>:2231                                    ; preds = %2227, %2137
  %2232 = phi float [ %2228, %2227 ], [ 0x3FD6666660000000, %2137 ]
  %2233 = phi float [ %2229, %2227 ], [ 0.000000e+00, %2137 ]
  %2234 = phi float [ %2230, %2227 ], [ 0.000000e+00, %2137 ]
  %2235 = phi float [ %2171, %2227 ], [ 1.000000e+00, %2137 ]
  %2236 = add i32 %33, 192
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = lshr i32 %2238, 22
  %2240 = shl nuw nsw i32 %2239, 5
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 64
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %2279, label %2246

; <label>:2246                                    ; preds = %2231
  %2247 = add i32 %33, 416
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = add i32 %2249, 0
  %2251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = and i32 %2253, 131072
  %2255 = icmp eq i32 %2254, 0
  %2256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2251, %dx.types.Handle %74, float %1859, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2257 = extractvalue %dx.types.ResRet.f32 %2256, 0
  %2258 = extractvalue %dx.types.ResRet.f32 %2256, 1
  %2259 = extractvalue %dx.types.ResRet.f32 %2256, 2
  %2260 = fmul fast float %2257, %318
  %2261 = fmul fast float %2258, %321
  %2262 = fmul fast float %2259, %324
  br i1 %2255, label %2269, label %2263

; <label>:2263                                    ; preds = %2246
  %2264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2265 = extractvalue %dx.types.CBufRet.f32 %2264, 0
  %2266 = fmul fast float %2265, %2260
  %2267 = fmul fast float %2265, %2261
  %2268 = fmul fast float %2265, %2262
  br label %2269

; <label>:2269                                    ; preds = %2263, %2246
  %2270 = phi float [ %2266, %2263 ], [ %2260, %2246 ]
  %2271 = phi float [ %2267, %2263 ], [ %2261, %2246 ]
  %2272 = phi float [ %2268, %2263 ], [ %2262, %2246 ]
  %2273 = fmul fast float %2270, %2241
  %2274 = select i1 %217, float %2273, float %2270
  %2275 = call float @dx.op.dot3.f32(i32 55, float %2274, float %2271, float %2272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2276 = select i1 %217, float 0.000000e+00, float %2270
  %2277 = select i1 %217, float %2275, float %2271
  %2278 = select i1 %217, float 0.000000e+00, float %2272
  br label %2279

; <label>:2279                                    ; preds = %2269, %2231
  %2280 = phi float [ %2276, %2269 ], [ 0.000000e+00, %2231 ]
  %2281 = phi float [ %2277, %2269 ], [ 0.000000e+00, %2231 ]
  %2282 = phi float [ %2278, %2269 ], [ 0.000000e+00, %2231 ]
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 14336
  %2286 = icmp eq i32 %2285, 0
  br i1 %2286, label %2312, label %2287

; <label>:2287                                    ; preds = %2279
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = and i32 %2289, 4096
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2312, label %2292

; <label>:2292                                    ; preds = %2287
  %2293 = and i32 %2289, 1048576
  %2294 = icmp ne i32 %2293, 0
  %2295 = add i32 %33, 484
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %2297, 0
  %2299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2299, %dx.types.Handle %75, float %1859, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 2
  %2302 = select i1 %2294, float 1.000000e+00, float %2301
  %2303 = add i32 %33, 196
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = and i32 %2305, 65535
  %2307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2306)  ; LegacyF16ToF32(value)
  %2308 = lshr i32 %2305, 16
  %2309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2308)  ; LegacyF16ToF32(value)
  %2310 = fmul fast float %2307, %2302
  %2311 = fadd fast float %2310, %2309
  br label %2312

; <label>:2312                                    ; preds = %2292, %2287, %2279
  %2313 = phi float [ %2311, %2292 ], [ 0.000000e+00, %2287 ], [ 0.000000e+00, %2279 ]
  %2314 = add i32 %33, 128
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = and i32 %2316, 255
  %2318 = uitofp i32 %2317 to float
  %2319 = lshr i32 %2316, 8
  %2320 = and i32 %2319, 255
  %2321 = uitofp i32 %2320 to float
  %2322 = call float @dx.op.dot3.f32(i32 55, float %2152, float %2153, float %2154, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2323 = fmul fast float %2321, %2322
  %2324 = fadd fast float %2323, %2318
  %2325 = fmul fast float %2324, 0x3F70101020000000
  %2326 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  br i1 %1751, label %2327, label %2335

; <label>:2327                                    ; preds = %2312
  %2328 = fsub fast float 1.000000e+00, %1932
  %2329 = fmul fast float %2328, %1742
  %2330 = fmul fast float %2328, %1743
  %2331 = fmul fast float %2328, %1744
  %2332 = fmul fast float %2328, %1739
  %2333 = fmul fast float %2328, %1740
  %2334 = fmul fast float %2328, %1741
  br label %2335

; <label>:2335                                    ; preds = %2327, %2312
  %2336 = phi float [ %2332, %2327 ], [ %1739, %2312 ]
  %2337 = phi float [ %2333, %2327 ], [ %1740, %2312 ]
  %2338 = phi float [ %2334, %2327 ], [ %1741, %2312 ]
  %2339 = phi float [ %2329, %2327 ], [ %1742, %2312 ]
  %2340 = phi float [ %2330, %2327 ], [ %1743, %2312 ]
  %2341 = phi float [ %2331, %2327 ], [ %1744, %2312 ]
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 3
  %2345 = icmp eq i32 %2344, 3
  br i1 %2345, label %2424, label %2346

; <label>:2346                                    ; preds = %2335
  %2347 = and i32 %2343, 16
  %2348 = icmp ne i32 %2347, 0
  %2349 = select i1 %2348, float %1932, float 0.000000e+00
  %2350 = icmp eq i32 %2344, 0
  br i1 %2350, label %2351, label %2379

; <label>:2351                                    ; preds = %2346
  %2352 = and i32 %2343, 64
  %2353 = icmp ne i32 %2352, 0
  %2354 = select i1 %2353, float %1932, float 0.000000e+00
  %2355 = fsub fast float %2152, %2339
  %2356 = fsub fast float %2153, %2340
  %2357 = fsub fast float %2154, %2341
  %2358 = fmul fast float %2349, %2355
  %2359 = fmul fast float %2349, %2356
  %2360 = fmul fast float %2349, %2357
  %2361 = fadd fast float %2358, %2339
  %2362 = fadd fast float %2359, %2340
  %2363 = fadd fast float %2360, %2341
  %2364 = fsub fast float %2138, %1745
  %2365 = fmul fast float %2349, %2364
  %2366 = fadd fast float %2365, %1745
  %2367 = fsub fast float %2280, %2336
  %2368 = fsub fast float %2281, %2337
  %2369 = fsub fast float %2282, %2338
  %2370 = fmul fast float %2354, %2367
  %2371 = fmul fast float %2354, %2368
  %2372 = fmul fast float %2354, %2369
  %2373 = fadd fast float %2370, %2336
  %2374 = fadd fast float %2371, %2337
  %2375 = fadd fast float %2372, %2338
  %2376 = fsub fast float %2326, %1749
  %2377 = fmul fast float %2349, %2376
  %2378 = fadd fast float %2377, %1749
  br label %2424

; <label>:2379                                    ; preds = %2346
  %2380 = icmp eq i32 %2344, 1
  br i1 %2380, label %2381, label %2394

; <label>:2381                                    ; preds = %2379
  %2382 = fadd fast float %2152, -1.000000e+00
  %2383 = fadd fast float %2153, -1.000000e+00
  %2384 = fadd fast float %2154, -1.000000e+00
  %2385 = fmul fast float %2349, %2382
  %2386 = fmul fast float %2349, %2383
  %2387 = fmul fast float %2349, %2384
  %2388 = fadd fast float %2385, 1.000000e+00
  %2389 = fadd fast float %2386, 1.000000e+00
  %2390 = fadd fast float %2387, 1.000000e+00
  %2391 = fmul fast float %2388, %2339
  %2392 = fmul fast float %2389, %2340
  %2393 = fmul fast float %2390, %2341
  br label %2424

; <label>:2394                                    ; preds = %2379
  %2395 = icmp eq i32 %2344, 2
  br i1 %2395, label %2396, label %2424

; <label>:2396                                    ; preds = %2394
  %2397 = call float @dx.op.unary.f32(i32 24, float %2152)  ; Sqrt(value)
  %2398 = call float @dx.op.unary.f32(i32 24, float %2153)  ; Sqrt(value)
  %2399 = call float @dx.op.unary.f32(i32 24, float %2154)  ; Sqrt(value)
  %2400 = fadd fast float %2397, -5.000000e-01
  %2401 = fadd fast float %2398, -5.000000e-01
  %2402 = fadd fast float %2399, -5.000000e-01
  %2403 = fmul fast float %2400, %2349
  %2404 = fmul fast float %2401, %2349
  %2405 = fmul fast float %2402, %2349
  %2406 = fadd fast float %2403, 5.000000e-01
  %2407 = fadd fast float %2404, 5.000000e-01
  %2408 = fadd fast float %2405, 5.000000e-01
  %2409 = fmul fast float %2406, 2.000000e+00
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = fmul fast float %2410, %2339
  %2412 = fadd fast float %2411, %2409
  %2413 = fmul fast float %2412, %2339
  %2414 = fmul fast float %2407, 2.000000e+00
  %2415 = fsub fast float 1.000000e+00, %2414
  %2416 = fmul fast float %2415, %2340
  %2417 = fadd fast float %2416, %2414
  %2418 = fmul fast float %2417, %2340
  %2419 = fmul fast float %2408, 2.000000e+00
  %2420 = fsub fast float 1.000000e+00, %2419
  %2421 = fmul fast float %2420, %2341
  %2422 = fadd fast float %2421, %2419
  %2423 = fmul fast float %2422, %2341
  br label %2424

; <label>:2424                                    ; preds = %2396, %2394, %2381, %2351, %2335
  %2425 = phi float [ %2336, %2335 ], [ %2336, %2396 ], [ %2336, %2394 ], [ %2336, %2381 ], [ %2373, %2351 ]
  %2426 = phi float [ %2337, %2335 ], [ %2337, %2396 ], [ %2337, %2394 ], [ %2337, %2381 ], [ %2374, %2351 ]
  %2427 = phi float [ %2338, %2335 ], [ %2338, %2396 ], [ %2338, %2394 ], [ %2338, %2381 ], [ %2375, %2351 ]
  %2428 = phi float [ %2339, %2335 ], [ %2413, %2396 ], [ %2339, %2394 ], [ %2391, %2381 ], [ %2361, %2351 ]
  %2429 = phi float [ %2340, %2335 ], [ %2418, %2396 ], [ %2340, %2394 ], [ %2392, %2381 ], [ %2362, %2351 ]
  %2430 = phi float [ %2341, %2335 ], [ %2423, %2396 ], [ %2341, %2394 ], [ %2393, %2381 ], [ %2363, %2351 ]
  %2431 = phi float [ %1745, %2335 ], [ %1745, %2396 ], [ %1745, %2394 ], [ %1745, %2381 ], [ %2366, %2351 ]
  %2432 = phi float [ %1749, %2335 ], [ %1749, %2396 ], [ %1749, %2394 ], [ %1749, %2381 ], [ %2378, %2351 ]
  %2433 = and i32 %2343, 12
  %2434 = icmp eq i32 %2433, 12
  br i1 %2434, label %2517, label %2435

; <label>:2435                                    ; preds = %2424
  %2436 = and i32 %2343, 2097184
  %2437 = icmp eq i32 %2436, 2097184
  %2438 = select i1 %2437, float %1932, float 0.000000e+00
  %2439 = and i32 %2343, 4194336
  %2440 = icmp eq i32 %2439, 4194336
  %2441 = select i1 %2440, float %1932, float 0.000000e+00
  %2442 = and i32 %2343, 8388640
  %2443 = icmp eq i32 %2442, 8388640
  %2444 = select i1 %2443, float %1932, float 0.000000e+00
  %2445 = and i32 %2343, 4096
  %2446 = icmp ne i32 %2445, 0
  %2447 = select i1 %2446, float %1932, float 0.000000e+00
  %2448 = icmp eq i32 %2433, 0
  br i1 %2448, label %2449, label %2465

; <label>:2449                                    ; preds = %2435
  %2450 = fsub fast float %2233, %1737
  %2451 = fsub fast float %2234, %1738
  %2452 = fmul fast float %2438, %2450
  %2453 = fmul fast float %2438, %2451
  %2454 = fadd fast float %2452, %1737
  %2455 = fadd fast float %2453, %1738
  %2456 = fsub fast float %2235, %1747
  %2457 = fmul fast float %2441, %2456
  %2458 = fadd fast float %2457, %1747
  %2459 = fsub fast float %2232, %1746
  %2460 = fmul fast float %2444, %2459
  %2461 = fadd fast float %2460, %1746
  %2462 = fsub fast float %2313, %1748
  %2463 = fmul fast float %2447, %2462
  %2464 = fadd fast float %2463, %1748
  br label %2517

; <label>:2465                                    ; preds = %2435
  %2466 = icmp eq i32 %2433, 4
  br i1 %2466, label %2467, label %2501

; <label>:2467                                    ; preds = %2465
  %2468 = fmul fast float %2438, %2233
  %2469 = fmul fast float %2438, %2234
  %2470 = fadd fast float %2468, %1737
  %2471 = fadd fast float %2469, %1738
  %2472 = call float @dx.op.binary.f32(i32 36, float %1747, float %2235)  ; FMin(a,b)
  %2473 = fsub fast float %2472, %1747
  %2474 = fmul fast float %2473, %2441
  %2475 = fadd fast float %2474, %1747
  %2476 = fadd fast float %2232, %1746
  %2477 = fmul fast float %2476, 0x3FF337FAE0000000
  %2478 = fmul fast float %1746, %1746
  %2479 = fmul fast float %2232, %2232
  %2480 = fadd fast float %2479, %2478
  %2481 = fmul fast float %2480, 0x3FE5152B00000000
  %2482 = fmul fast float %1746, 0xBFCC1F85E0000000
  %2483 = fmul fast float %2482, %2232
  %2484 = fadd fast float %2483, 0xBFE1363700000000
  %2485 = fadd fast float %2484, %2477
  %2486 = fsub fast float %2485, %2481
  %2487 = fmul fast float %2476, 0x3FBA6F0D00000000
  %2488 = fmul fast float %2480, 0x3FD0432880000000
  %2489 = fmul fast float %1746, 0xBFEF110800000000
  %2490 = fmul fast float %2489, %2232
  %2491 = fadd fast float %2490, 1.000000e+00
  %2492 = fsub fast float %2491, %2487
  %2493 = fadd fast float %2492, %2488
  %2494 = fdiv fast float %2486, %2493
  %2495 = call float @dx.op.unary.f32(i32 7, float %2494)  ; Saturate(value)
  %2496 = fsub fast float %2495, %1746
  %2497 = fmul fast float %2496, %2444
  %2498 = fadd fast float %2497, %1746
  %2499 = fmul fast float %2447, %2313
  %2500 = fadd fast float %2499, %1748
  br label %2517

; <label>:2501                                    ; preds = %2465
  %2502 = icmp eq i32 %2433, 8
  br i1 %2502, label %2503, label %2517

; <label>:2503                                    ; preds = %2501
  %2504 = fmul fast float %2438, %2233
  %2505 = fmul fast float %2438, %2234
  %2506 = fadd fast float %2504, %1737
  %2507 = fadd fast float %2505, %1738
  %2508 = call float @dx.op.binary.f32(i32 36, float %1747, float %2235)  ; FMin(a,b)
  %2509 = fsub fast float %2508, %1747
  %2510 = fmul fast float %2509, %2441
  %2511 = fadd fast float %2510, %1747
  %2512 = fsub fast float %2232, %1746
  %2513 = fmul fast float %2444, %2512
  %2514 = fadd fast float %2513, %1746
  %2515 = fmul fast float %2447, %2313
  %2516 = fadd fast float %2515, %1748
  br label %2517

; <label>:2517                                    ; preds = %2503, %2501, %2467, %2449, %2424, %1931, %1750, %1736
  %2518 = phi float [ %1737, %2424 ], [ %1737, %1931 ], [ %1737, %1736 ], [ %2506, %2503 ], [ %1737, %2501 ], [ %2470, %2467 ], [ %2454, %2449 ], [ %1737, %1750 ]
  %2519 = phi float [ %1738, %2424 ], [ %1738, %1931 ], [ %1738, %1736 ], [ %2507, %2503 ], [ %1738, %2501 ], [ %2471, %2467 ], [ %2455, %2449 ], [ %1738, %1750 ]
  %2520 = phi float [ %2425, %2424 ], [ %1739, %1931 ], [ %1739, %1736 ], [ %2425, %2503 ], [ %2425, %2501 ], [ %2425, %2467 ], [ %2425, %2449 ], [ %1739, %1750 ]
  %2521 = phi float [ %2426, %2424 ], [ %1740, %1931 ], [ %1740, %1736 ], [ %2426, %2503 ], [ %2426, %2501 ], [ %2426, %2467 ], [ %2426, %2449 ], [ %1740, %1750 ]
  %2522 = phi float [ %2427, %2424 ], [ %1741, %1931 ], [ %1741, %1736 ], [ %2427, %2503 ], [ %2427, %2501 ], [ %2427, %2467 ], [ %2427, %2449 ], [ %1741, %1750 ]
  %2523 = phi float [ %2428, %2424 ], [ %1742, %1931 ], [ %1742, %1736 ], [ %2428, %2503 ], [ %2428, %2501 ], [ %2428, %2467 ], [ %2428, %2449 ], [ %1742, %1750 ]
  %2524 = phi float [ %2429, %2424 ], [ %1743, %1931 ], [ %1743, %1736 ], [ %2429, %2503 ], [ %2429, %2501 ], [ %2429, %2467 ], [ %2429, %2449 ], [ %1743, %1750 ]
  %2525 = phi float [ %2430, %2424 ], [ %1744, %1931 ], [ %1744, %1736 ], [ %2430, %2503 ], [ %2430, %2501 ], [ %2430, %2467 ], [ %2430, %2449 ], [ %1744, %1750 ]
  %2526 = phi float [ %2431, %2424 ], [ %1745, %1931 ], [ %1745, %1736 ], [ %2431, %2503 ], [ %2431, %2501 ], [ %2431, %2467 ], [ %2431, %2449 ], [ %1745, %1750 ]
  %2527 = phi float [ %1746, %2424 ], [ %1746, %1931 ], [ %1746, %1736 ], [ %2514, %2503 ], [ %1746, %2501 ], [ %2498, %2467 ], [ %2461, %2449 ], [ %1746, %1750 ]
  %2528 = phi float [ %1747, %2424 ], [ %1747, %1931 ], [ %1747, %1736 ], [ %2511, %2503 ], [ %1747, %2501 ], [ %2475, %2467 ], [ %2458, %2449 ], [ %1747, %1750 ]
  %2529 = phi float [ %1748, %2424 ], [ %1748, %1931 ], [ %1748, %1736 ], [ %2516, %2503 ], [ %1748, %2501 ], [ %2500, %2467 ], [ %2464, %2449 ], [ %1748, %1750 ]
  %2530 = phi float [ %2432, %2424 ], [ %1749, %1931 ], [ %1749, %1736 ], [ %2432, %2503 ], [ %2432, %2501 ], [ %2432, %2467 ], [ %2432, %2449 ], [ %1749, %1750 ]
  br i1 %405, label %3298, label %2531

; <label>:2531                                    ; preds = %2517
  %2532 = icmp ult i32 %456, 4
  %2533 = add i32 %33, 72
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = add i32 %33, 76
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = or i32 %2538, %2535
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %3298, label %2541

; <label>:2541                                    ; preds = %2531
  %2542 = and i32 %2535, 262144
  %2543 = icmp ne i32 %2542, 0
  %2544 = select i1 %2543, float %39, float 1.000000e+00
  %2545 = select i1 %2543, float %40, float 0.000000e+00
  %2546 = select i1 %2543, float %41, float 0.000000e+00
  %2547 = select i1 %2543, float %42, float 1.000000e+00
  %2548 = select i1 %2543, float %43, float %66
  %2549 = select i1 %2543, float %44, float %67
  %2550 = add i32 %33, 332
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = lshr i32 %2552, 16
  %2554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2553)  ; LegacyF16ToF32(value)
  %2555 = fmul fast float %2554, 0x3F50624DE0000000
  %2556 = add i32 %33, 136
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = lshr i32 %2558, 16
  %2560 = and i32 %2559, 255
  %2561 = lshr i32 %2558, 24
  %2562 = add i32 %33, 340
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = and i32 %2564, 65535
  %2566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2565)  ; LegacyF16ToF32(value)
  %2567 = lshr i32 %2564, 16
  %2568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2567)  ; LegacyF16ToF32(value)
  %2569 = add i32 %33, 80
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = lshr i32 %2571, 22
  %2573 = shl nuw nsw i32 %2572, 5
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = shl i32 %2571, 4
  %2576 = and i32 %2575, 32752
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = lshr i32 %2571, 7
  %2579 = and i32 %2578, 32752
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2582 = extractvalue %dx.types.CBufRet.f32 %2581, 3
  %2583 = fmul fast float %2582, 1.000000e+03
  %2584 = fmul fast float %395, %2583
  %2585 = call float @dx.op.unary.f32(i32 22, float %2584)  ; Frc(value)
  %2586 = fadd fast float %2585, %385
  %2587 = fmul fast float %396, %2583
  %2588 = call float @dx.op.unary.f32(i32 22, float %2587)  ; Frc(value)
  %2589 = fadd fast float %2588, %387
  %2590 = fmul fast float %2555, %2583
  %2591 = call float @dx.op.unary.f32(i32 22, float %2590)  ; Frc(value)
  %2592 = fmul fast float %2591, 0x401921FB60000000
  %2593 = fadd fast float %2592, %2574
  %2594 = call float @dx.op.unary.f32(i32 13, float %2593)  ; Sin(value)
  %2595 = call float @dx.op.unary.f32(i32 12, float %2593)  ; Cos(value)
  %2596 = fsub fast float -0.000000e+00, %2594
  %2597 = fadd fast float %2548, -5.000000e-01
  %2598 = fadd fast float %2549, -5.000000e-01
  %2599 = fmul fast float %2566, %2597
  %2600 = fmul fast float %2568, %2598
  %2601 = fadd fast float %2599, 5.000000e-01
  %2602 = fadd fast float %2600, 5.000000e-01
  %2603 = fmul fast float %2577, %2601
  %2604 = fmul fast float %2580, %2602
  %2605 = fmul fast float %2595, %2603
  %2606 = call float @dx.op.tertiary.f32(i32 46, float %2596, float %2604, float %2605)  ; FMad(a,b,c)
  %2607 = fmul fast float %2594, %2603
  %2608 = call float @dx.op.tertiary.f32(i32 46, float %2595, float %2604, float %2607)  ; FMad(a,b,c)
  %2609 = fadd fast float %2586, %2606
  %2610 = fadd fast float %2589, %2608
  %2611 = icmp ugt i32 %2560, 1
  %2612 = icmp ugt i32 %2558, 33554431
  %2613 = or i1 %2612, %2611
  br i1 %2613, label %2614, label %2639

; <label>:2614                                    ; preds = %2541
  %2615 = add i32 %33, 276
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = lshr i32 %2617, 16
  %2619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2618)  ; LegacyF16ToF32(value)
  %2620 = fmul fast float %2582, %2619
  %2621 = call float @dx.op.unary.f32(i32 22, float %2620)  ; Frc(value)
  %2622 = mul nuw nsw i32 %2560, %2561
  %2623 = uitofp i32 %2622 to float
  %2624 = fmul fast float %2621, %2623
  %2625 = call float @dx.op.unary.f32(i32 27, float %2624)  ; Round_ni(value)
  %2626 = fptoui float %2625 to i32
  %2627 = urem i32 %2626, %2560
  %2628 = udiv i32 %2626, %2561
  %2629 = call float @dx.op.unary.f32(i32 22, float %2609)  ; Frc(value)
  %2630 = call float @dx.op.unary.f32(i32 22, float %2610)  ; Frc(value)
  %2631 = uitofp i32 %2627 to float
  %2632 = uitofp i32 %2628 to float
  %2633 = fadd fast float %2629, %2631
  %2634 = fadd fast float %2630, %2632
  %2635 = uitofp i32 %2560 to float
  %2636 = uitofp i32 %2561 to float
  %2637 = fdiv fast float %2633, %2635
  %2638 = fdiv fast float %2634, %2636
  br label %2639

; <label>:2639                                    ; preds = %2614, %2541
  %2640 = phi float [ %2637, %2614 ], [ %2609, %2541 ]
  %2641 = phi float [ %2638, %2614 ], [ %2610, %2541 ]
  %2642 = and i32 %2535, 256
  %2643 = icmp eq i32 %2642, 0
  br i1 %2643, label %2690, label %2644

; <label>:2644                                    ; preds = %2639
  %2645 = add i32 %33, 452
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = add i32 %2647, 0
  %2649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2649, %dx.types.Handle %75, float %2640, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 0
  %2652 = add i32 %33, 148
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = shl i32 %2654, 4
  %2656 = and i32 %2655, 32752
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = lshr i32 %2654, 7
  %2659 = and i32 %2658, 32752
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = fsub fast float 1.000000e+00, %451
  %2662 = call float @dx.op.binary.f32(i32 35, float %2661, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2663 = bitcast float %451 to i32
  %2664 = sitofp i32 %2663 to float
  %2665 = fadd fast float %2664, 0xC1CFBF8940000000
  %2666 = fmul fast float %2660, %2665
  %2667 = fadd fast float %2666, 0x41CFBF8940000000
  %2668 = fptosi float %2667 to i32
  %2669 = bitcast i32 %2668 to float
  %2670 = bitcast float %2662 to i32
  %2671 = sitofp i32 %2670 to float
  %2672 = fadd fast float %2671, 0xC1CFBF8940000000
  %2673 = fmul fast float %2672, %2660
  %2674 = fadd fast float %2673, 0x41CFBF8940000000
  %2675 = fptosi float %2674 to i32
  %2676 = bitcast i32 %2675 to float
  %2677 = fmul fast float %2669, %2657
  %2678 = fmul fast float %2676, %2657
  %2679 = fsub fast float %2662, %2677
  %2680 = fadd fast float %2678, %2662
  %2681 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2682 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2683 = fsub fast float %2651, %2681
  %2684 = fsub fast float %2682, %2681
  %2685 = bitcast float %2684 to i32
  %2686 = sub nsw i32 2129859010, %2685
  %2687 = bitcast i32 %2686 to float
  %2688 = fmul fast float %2687, %2683
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  br label %2690

; <label>:2690                                    ; preds = %2644, %2639
  %2691 = phi float [ %2689, %2644 ], [ %451, %2639 ]
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = and i32 %2693, 128
  %2695 = icmp eq i32 %2694, 0
  br i1 %2695, label %2712, label %2696

; <label>:2696                                    ; preds = %2690
  %2697 = add i32 %33, 436
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = add i32 %2699, 0
  %2701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2700, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2702 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2701, %dx.types.Handle %75, float %2640, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2703 = extractvalue %dx.types.ResRet.f32 %2702, 0
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = and i32 %2705, 524288
  %2707 = icmp ne i32 %2706, 0
  %2708 = fcmp fast ogt float %2703, 0x3FE0101020000000
  %2709 = select i1 %2708, float 1.000000e+00, float 0.000000e+00
  %2710 = select i1 %2707, float %2709, float %2703
  %2711 = fmul fast float %2710, %2691
  br label %2712

; <label>:2712                                    ; preds = %2696, %2690
  %2713 = phi float [ %2711, %2696 ], [ %2691, %2690 ]
  %2714 = fcmp fast ult float %2713, 0x3F70101020000000
  br i1 %2714, label %3298, label %2715

; <label>:2715                                    ; preds = %2712
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = and i32 %2717, 16
  %2719 = icmp eq i32 %2718, 0
  br i1 %2719, label %2918, label %2720

; <label>:2720                                    ; preds = %2715
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = add i32 %33, 388
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = add i32 %2725, 0
  %2727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2727, %dx.types.Handle %74, float %2640, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.ResRet.f32 %2728, 1
  %2731 = extractvalue %dx.types.ResRet.f32 %2728, 2
  %2732 = extractvalue %dx.types.ResRet.f32 %2728, 3
  %2733 = and i32 %2722, 255
  %2734 = uitofp i32 %2733 to float
  %2735 = lshr i32 %2722, 8
  %2736 = and i32 %2735, 255
  %2737 = uitofp i32 %2736 to float
  %2738 = fmul fast float %2732, %2734
  %2739 = fadd fast float %2738, %2737
  %2740 = fmul fast float %2739, 0x3F70101000000000
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = and i32 %2742, 512
  %2744 = icmp eq i32 %2743, 0
  br i1 %2744, label %2753, label %2745

; <label>:2745                                    ; preds = %2720
  %2746 = add i32 %33, 472
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = add i32 %2748, 0
  %2750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2750, %dx.types.Handle %75, float %2640, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  br label %2753

; <label>:2753                                    ; preds = %2745, %2720
  %2754 = phi float [ %2752, %2745 ], [ 1.000000e+00, %2720 ]
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 33554432
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2865, label %2759

; <label>:2759                                    ; preds = %2753
  %2760 = add i32 %33, 272
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = and i32 %2762, 65535
  %2764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2763)  ; LegacyF16ToF32(value)
  %2765 = lshr i32 %2762, 16
  %2766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2765)  ; LegacyF16ToF32(value)
  %2767 = add i32 %33, 276
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = and i32 %2769, 65535
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = lshr i32 %2773, 24
  %2775 = uitofp i32 %2774 to float
  %2776 = fmul fast float %2775, 0x3F70101020000000
  %2777 = and i32 %2773, 255
  %2778 = uitofp i32 %2777 to float
  %2779 = fmul fast float %2778, 0x3F70101020000000
  %2780 = lshr i32 %2773, 8
  %2781 = and i32 %2780, 255
  %2782 = uitofp i32 %2781 to float
  %2783 = fmul fast float %2782, 0x3F70101020000000
  %2784 = lshr i32 %2773, 16
  %2785 = and i32 %2784, 255
  %2786 = uitofp i32 %2785 to float
  %2787 = fmul fast float %2786, 0x3F70101020000000
  %2788 = add i32 %33, 268
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = lshr i32 %2790, 24
  %2792 = uitofp i32 %2791 to float
  %2793 = fmul fast float %2792, 0x3F70101020000000
  %2794 = and i32 %2790, 255
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2795, 0x3F70101020000000
  %2797 = lshr i32 %2790, 8
  %2798 = and i32 %2797, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2799, 0x3F70101020000000
  %2801 = lshr i32 %2790, 16
  %2802 = and i32 %2801, 255
  %2803 = uitofp i32 %2802 to float
  %2804 = fmul fast float %2803, 0x3F70101020000000
  %2805 = bitcast float %2729 to i32
  %2806 = ashr i32 %2805, 1
  %2807 = sub nsw i32 1597463174, %2806
  %2808 = bitcast i32 %2807 to float
  %2809 = fmul fast float %2729, 5.000000e-01
  %2810 = fmul fast float %2808, %2808
  %2811 = fmul fast float %2810, %2809
  %2812 = fsub fast float 1.500000e+00, %2811
  %2813 = fmul fast float %2808, %2729
  %2814 = fmul fast float %2813, %2812
  %2815 = bitcast float %2730 to i32
  %2816 = ashr i32 %2815, 1
  %2817 = sub nsw i32 1597463174, %2816
  %2818 = bitcast i32 %2817 to float
  %2819 = fmul fast float %2730, 5.000000e-01
  %2820 = fmul fast float %2818, %2818
  %2821 = fmul fast float %2820, %2819
  %2822 = fsub fast float 1.500000e+00, %2821
  %2823 = fmul fast float %2818, %2730
  %2824 = fmul fast float %2823, %2822
  %2825 = bitcast float %2731 to i32
  %2826 = ashr i32 %2825, 1
  %2827 = sub nsw i32 1597463174, %2826
  %2828 = bitcast i32 %2827 to float
  %2829 = fmul fast float %2731, 5.000000e-01
  %2830 = fmul fast float %2828, %2828
  %2831 = fmul fast float %2830, %2829
  %2832 = fsub fast float 1.500000e+00, %2831
  %2833 = fmul fast float %2828, %2731
  %2834 = fmul fast float %2833, %2832
  %2835 = fsub fast float %2814, %2796
  %2836 = fsub fast float %2824, %2800
  %2837 = fsub fast float %2834, %2804
  %2838 = fmul fast float %2835, %2764
  %2839 = fmul fast float %2836, %2766
  %2840 = fmul fast float %2837, %2771
  %2841 = fadd fast float %2838, %2779
  %2842 = fadd fast float %2839, %2783
  %2843 = fadd fast float %2840, %2787
  %2844 = call float @dx.op.unary.f32(i32 7, float %2841)  ; Saturate(value)
  %2845 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2846 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2847 = fmul fast float %2844, %2844
  %2848 = fmul fast float %2845, %2845
  %2849 = fmul fast float %2846, %2846
  %2850 = fsub fast float %2847, %2729
  %2851 = fsub fast float %2848, %2730
  %2852 = fsub fast float %2849, %2731
  %2853 = fmul fast float %2850, %2754
  %2854 = fmul fast float %2851, %2754
  %2855 = fmul fast float %2852, %2754
  %2856 = fadd fast float %2853, %2729
  %2857 = fadd fast float %2854, %2730
  %2858 = fadd fast float %2855, %2731
  %2859 = fadd fast float %2776, %2740
  %2860 = fsub fast float %2859, %2793
  %2861 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2862 = fsub fast float %2861, %2740
  %2863 = fmul fast float %2862, %2754
  %2864 = fadd fast float %2863, %2740
  br label %2918

; <label>:2865                                    ; preds = %2753
  %2866 = and i32 %2756, 134217728
  %2867 = icmp eq i32 %2866, 0
  br i1 %2867, label %2902, label %2868

; <label>:2868                                    ; preds = %2865
  %2869 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2870 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2871 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2872 = fadd fast float %2869, -5.000000e-01
  %2873 = fadd fast float %2870, -5.000000e-01
  %2874 = fadd fast float %2871, -5.000000e-01
  %2875 = fmul fast float %2872, %2754
  %2876 = fmul fast float %2873, %2754
  %2877 = fmul fast float %2874, %2754
  %2878 = fadd fast float %2875, 5.000000e-01
  %2879 = fadd fast float %2876, 5.000000e-01
  %2880 = fadd fast float %2877, 5.000000e-01
  %2881 = call float @dx.op.unary.f32(i32 24, float %2729)  ; Sqrt(value)
  %2882 = call float @dx.op.unary.f32(i32 24, float %2730)  ; Sqrt(value)
  %2883 = call float @dx.op.unary.f32(i32 24, float %2731)  ; Sqrt(value)
  %2884 = fmul fast float %2878, 2.000000e+00
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2885, %2881
  %2887 = fadd fast float %2886, %2884
  %2888 = fmul fast float %2887, %2881
  %2889 = fmul fast float %2879, 2.000000e+00
  %2890 = fsub fast float 1.000000e+00, %2889
  %2891 = fmul fast float %2890, %2882
  %2892 = fadd fast float %2891, %2889
  %2893 = fmul fast float %2892, %2882
  %2894 = fmul fast float %2880, 2.000000e+00
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = fmul fast float %2895, %2883
  %2897 = fadd fast float %2896, %2894
  %2898 = fmul fast float %2897, %2883
  %2899 = fmul fast float %2888, %2888
  %2900 = fmul fast float %2893, %2893
  %2901 = fmul fast float %2898, %2898
  br label %2918

; <label>:2902                                    ; preds = %2865
  %2903 = fmul fast float %372, %372
  %2904 = fmul fast float %376, %376
  %2905 = fmul fast float %380, %380
  %2906 = fadd fast float %2903, -1.000000e+00
  %2907 = fadd fast float %2904, -1.000000e+00
  %2908 = fadd fast float %2905, -1.000000e+00
  %2909 = fmul fast float %2754, %2906
  %2910 = fmul fast float %2754, %2907
  %2911 = fmul fast float %2754, %2908
  %2912 = fadd fast float %2909, 1.000000e+00
  %2913 = fadd fast float %2910, 1.000000e+00
  %2914 = fadd fast float %2911, 1.000000e+00
  %2915 = fmul fast float %2912, %2729
  %2916 = fmul fast float %2913, %2730
  %2917 = fmul fast float %2914, %2731
  br label %2918

; <label>:2918                                    ; preds = %2902, %2868, %2759, %2715
  %2919 = phi float [ %2864, %2759 ], [ %2740, %2868 ], [ %2740, %2902 ], [ 0x3FA23C0BE0000000, %2715 ]
  %2920 = phi float [ %2856, %2759 ], [ %2899, %2868 ], [ %2915, %2902 ], [ 1.000000e+00, %2715 ]
  %2921 = phi float [ %2857, %2759 ], [ %2900, %2868 ], [ %2916, %2902 ], [ 1.000000e+00, %2715 ]
  %2922 = phi float [ %2858, %2759 ], [ %2901, %2868 ], [ %2917, %2902 ], [ 1.000000e+00, %2715 ]
  %2923 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.i32 %2923, 1
  %2925 = and i32 %2924, 1
  %2926 = icmp ne i32 %2925, 0
  %2927 = add i32 %33, 356
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = and i32 %2929, 32
  %2931 = icmp ne i32 %2930, 0
  %2932 = and i1 %2926, %2931
  %2933 = select i1 %2932, float 1.000000e+00, float %2920
  %2934 = select i1 %2932, float 0x3FD3333340000000, float %2921
  %2935 = select i1 %2932, float 0x3FD3333340000000, float %2922
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = and i32 %2937, 32
  %2939 = icmp eq i32 %2938, 0
  br i1 %2939, label %3012, label %2940

; <label>:2940                                    ; preds = %2918
  %2941 = add i32 %33, 140
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = add i32 %33, 404
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = add i32 %2946, 0
  %2948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2948, %dx.types.Handle %74, float %2640, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2950 = extractvalue %dx.types.ResRet.f32 %2949, 0
  %2951 = extractvalue %dx.types.ResRet.f32 %2949, 1
  %2952 = extractvalue %dx.types.ResRet.f32 %2949, 2
  %2953 = extractvalue %dx.types.ResRet.f32 %2949, 3
  %2954 = and i32 %2943, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = lshr i32 %2943, 8
  %2957 = and i32 %2956, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = lshr i32 %2943, 16
  %2960 = and i32 %2959, 255
  %2961 = uitofp i32 %2960 to float
  %2962 = fmul fast float %2961, 0x3F70101000000000
  %2963 = fmul fast float %2950, %2955
  %2964 = fadd fast float %2963, %2958
  %2965 = fmul fast float %2964, 0x3F70101000000000
  %2966 = fadd fast float %2951, -5.000000e-01
  %2967 = fadd fast float %2953, -5.000000e-01
  %2968 = fmul fast float %2966, %2962
  %2969 = fmul fast float %2967, %2962
  %2970 = fadd fast float %2968, 5.000000e-01
  %2971 = fadd fast float %2969, 5.000000e-01
  %2972 = fmul fast float %2970, 2.000000e+00
  %2973 = fadd fast float %2972, -1.000000e+00
  %2974 = fmul fast float %2971, 2.000000e+00
  %2975 = fadd fast float %2974, -1.000000e+00
  %2976 = fadd fast float %2973, %2975
  %2977 = fmul fast float %2976, 5.000000e-01
  %2978 = fsub fast float %2973, %2975
  %2979 = fmul fast float %2978, 5.000000e-01
  %2980 = call float @dx.op.unary.f32(i32 6, float %2977)  ; FAbs(value)
  %2981 = fsub fast float 1.000000e+00, %2980
  %2982 = call float @dx.op.unary.f32(i32 6, float %2979)  ; FAbs(value)
  %2983 = fsub fast float %2981, %2982
  %2984 = call float @dx.op.dot3.f32(i32 55, float %2977, float %2979, float %2983, float %2977, float %2979, float %2983)  ; Dot3(ax,ay,az,bx,by,bz)
  %2985 = call float @dx.op.unary.f32(i32 25, float %2984)  ; Rsqrt(value)
  %2986 = fmul fast float %2977, %2985
  %2987 = fmul fast float %2979, %2985
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = and i32 %2989, 67108864
  %2991 = icmp eq i32 %2990, 0
  br i1 %2991, label %3008, label %2992

; <label>:2992                                    ; preds = %2940
  %2993 = add i32 %33, 328
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = and i32 %2995, 65535
  %2997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2996)  ; LegacyF16ToF32(value)
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = and i32 %2999, 65535
  %3001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3000)  ; LegacyF16ToF32(value)
  %3002 = lshr i32 %2995, 16
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = fsub fast float %2965, %3003
  %3005 = fmul fast float %3004, %2997
  %3006 = fadd fast float %3005, %3001
  %3007 = call float @dx.op.unary.f32(i32 7, float %3006)  ; Saturate(value)
  br label %3008

; <label>:3008                                    ; preds = %2992, %2940
  %3009 = phi float [ %3007, %2992 ], [ %2965, %2940 ]
  %3010 = call float @dx.op.dot2.f32(i32 54, float %2986, float %2987, float %2544, float %2545)  ; Dot2(ax,ay,bx,by)
  %3011 = call float @dx.op.dot2.f32(i32 54, float %2986, float %2987, float %2546, float %2547)  ; Dot2(ax,ay,bx,by)
  br label %3012

; <label>:3012                                    ; preds = %3008, %2918
  %3013 = phi float [ %3009, %3008 ], [ 0x3FD6666660000000, %2918 ]
  %3014 = phi float [ %3010, %3008 ], [ 0.000000e+00, %2918 ]
  %3015 = phi float [ %3011, %3008 ], [ 0.000000e+00, %2918 ]
  %3016 = phi float [ %2952, %3008 ], [ 1.000000e+00, %2918 ]
  %3017 = add i32 %33, 208
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = lshr i32 %3019, 22
  %3021 = shl nuw nsw i32 %3020, 5
  %3022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3021)  ; LegacyF16ToF32(value)
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = and i32 %3024, 64
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3060, label %3027

; <label>:3027                                    ; preds = %3012
  %3028 = add i32 %33, 420
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = add i32 %3030, 0
  %3032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = and i32 %3034, 131072
  %3036 = icmp eq i32 %3035, 0
  %3037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3032, %dx.types.Handle %74, float %2640, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3038 = extractvalue %dx.types.ResRet.f32 %3037, 0
  %3039 = extractvalue %dx.types.ResRet.f32 %3037, 1
  %3040 = extractvalue %dx.types.ResRet.f32 %3037, 2
  %3041 = fmul fast float %3038, %360
  %3042 = fmul fast float %3039, %363
  %3043 = fmul fast float %3040, %366
  br i1 %3036, label %3050, label %3044

; <label>:3044                                    ; preds = %3027
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 0
  %3047 = fmul fast float %3046, %3041
  %3048 = fmul fast float %3046, %3042
  %3049 = fmul fast float %3046, %3043
  br label %3050

; <label>:3050                                    ; preds = %3044, %3027
  %3051 = phi float [ %3047, %3044 ], [ %3041, %3027 ]
  %3052 = phi float [ %3048, %3044 ], [ %3042, %3027 ]
  %3053 = phi float [ %3049, %3044 ], [ %3043, %3027 ]
  %3054 = fmul fast float %3051, %3022
  %3055 = select i1 %217, float %3054, float %3051
  %3056 = call float @dx.op.dot3.f32(i32 55, float %3055, float %3052, float %3053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3057 = select i1 %217, float 0.000000e+00, float %3051
  %3058 = select i1 %217, float %3056, float %3052
  %3059 = select i1 %217, float 0.000000e+00, float %3053
  br label %3060

; <label>:3060                                    ; preds = %3050, %3012
  %3061 = phi float [ %3057, %3050 ], [ 0.000000e+00, %3012 ]
  %3062 = phi float [ %3058, %3050 ], [ 0.000000e+00, %3012 ]
  %3063 = phi float [ %3059, %3050 ], [ 0.000000e+00, %3012 ]
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = and i32 %3065, 14336
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3093, label %3068

; <label>:3068                                    ; preds = %3060
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = and i32 %3070, 4096
  %3072 = icmp eq i32 %3071, 0
  br i1 %3072, label %3093, label %3073

; <label>:3073                                    ; preds = %3068
  %3074 = and i32 %3070, 1048576
  %3075 = icmp ne i32 %3074, 0
  %3076 = add i32 %33, 488
  %3077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3078 = extractvalue %dx.types.ResRet.i32 %3077, 0
  %3079 = add i32 %3078, 0
  %3080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3081 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3080, %dx.types.Handle %75, float %2640, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3082 = extractvalue %dx.types.ResRet.f32 %3081, 2
  %3083 = select i1 %3075, float 1.000000e+00, float %3082
  %3084 = add i32 %33, 212
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = and i32 %3086, 65535
  %3088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3087)  ; LegacyF16ToF32(value)
  %3089 = lshr i32 %3086, 16
  %3090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3089)  ; LegacyF16ToF32(value)
  %3091 = fmul fast float %3088, %3083
  %3092 = fadd fast float %3091, %3090
  br label %3093

; <label>:3093                                    ; preds = %3073, %3068, %3060
  %3094 = phi float [ %3092, %3073 ], [ 0.000000e+00, %3068 ], [ 0.000000e+00, %3060 ]
  %3095 = add i32 %33, 144
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = and i32 %3097, 255
  %3099 = uitofp i32 %3098 to float
  %3100 = lshr i32 %3097, 8
  %3101 = and i32 %3100, 255
  %3102 = uitofp i32 %3101 to float
  %3103 = call float @dx.op.dot3.f32(i32 55, float %2933, float %2934, float %2935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3104 = fmul fast float %3102, %3103
  %3105 = fadd fast float %3104, %3099
  %3106 = fmul fast float %3105, 0x3F70101020000000
  %3107 = call float @dx.op.unary.f32(i32 7, float %3106)  ; Saturate(value)
  br i1 %2532, label %3108, label %3116

; <label>:3108                                    ; preds = %3093
  %3109 = fsub fast float 1.000000e+00, %2713
  %3110 = fmul fast float %3109, %2523
  %3111 = fmul fast float %3109, %2524
  %3112 = fmul fast float %3109, %2525
  %3113 = fmul fast float %3109, %2520
  %3114 = fmul fast float %3109, %2521
  %3115 = fmul fast float %3109, %2522
  br label %3116

; <label>:3116                                    ; preds = %3108, %3093
  %3117 = phi float [ %3113, %3108 ], [ %2520, %3093 ]
  %3118 = phi float [ %3114, %3108 ], [ %2521, %3093 ]
  %3119 = phi float [ %3115, %3108 ], [ %2522, %3093 ]
  %3120 = phi float [ %3110, %3108 ], [ %2523, %3093 ]
  %3121 = phi float [ %3111, %3108 ], [ %2524, %3093 ]
  %3122 = phi float [ %3112, %3108 ], [ %2525, %3093 ]
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = and i32 %3124, 3
  %3126 = icmp eq i32 %3125, 3
  br i1 %3126, label %3205, label %3127

; <label>:3127                                    ; preds = %3116
  %3128 = and i32 %3124, 16
  %3129 = icmp ne i32 %3128, 0
  %3130 = select i1 %3129, float %2713, float 0.000000e+00
  %3131 = icmp eq i32 %3125, 0
  br i1 %3131, label %3132, label %3160

; <label>:3132                                    ; preds = %3127
  %3133 = and i32 %3124, 64
  %3134 = icmp ne i32 %3133, 0
  %3135 = select i1 %3134, float %2713, float 0.000000e+00
  %3136 = fsub fast float %2933, %3120
  %3137 = fsub fast float %2934, %3121
  %3138 = fsub fast float %2935, %3122
  %3139 = fmul fast float %3130, %3136
  %3140 = fmul fast float %3130, %3137
  %3141 = fmul fast float %3130, %3138
  %3142 = fadd fast float %3139, %3120
  %3143 = fadd fast float %3140, %3121
  %3144 = fadd fast float %3141, %3122
  %3145 = fsub fast float %2919, %2526
  %3146 = fmul fast float %3130, %3145
  %3147 = fadd fast float %3146, %2526
  %3148 = fsub fast float %3061, %3117
  %3149 = fsub fast float %3062, %3118
  %3150 = fsub fast float %3063, %3119
  %3151 = fmul fast float %3135, %3148
  %3152 = fmul fast float %3135, %3149
  %3153 = fmul fast float %3135, %3150
  %3154 = fadd fast float %3151, %3117
  %3155 = fadd fast float %3152, %3118
  %3156 = fadd fast float %3153, %3119
  %3157 = fsub fast float %3107, %2530
  %3158 = fmul fast float %3130, %3157
  %3159 = fadd fast float %3158, %2530
  br label %3205

; <label>:3160                                    ; preds = %3127
  %3161 = icmp eq i32 %3125, 1
  br i1 %3161, label %3162, label %3175

; <label>:3162                                    ; preds = %3160
  %3163 = fadd fast float %2933, -1.000000e+00
  %3164 = fadd fast float %2934, -1.000000e+00
  %3165 = fadd fast float %2935, -1.000000e+00
  %3166 = fmul fast float %3130, %3163
  %3167 = fmul fast float %3130, %3164
  %3168 = fmul fast float %3130, %3165
  %3169 = fadd fast float %3166, 1.000000e+00
  %3170 = fadd fast float %3167, 1.000000e+00
  %3171 = fadd fast float %3168, 1.000000e+00
  %3172 = fmul fast float %3169, %3120
  %3173 = fmul fast float %3170, %3121
  %3174 = fmul fast float %3171, %3122
  br label %3205

; <label>:3175                                    ; preds = %3160
  %3176 = icmp eq i32 %3125, 2
  br i1 %3176, label %3177, label %3205

; <label>:3177                                    ; preds = %3175
  %3178 = call float @dx.op.unary.f32(i32 24, float %2933)  ; Sqrt(value)
  %3179 = call float @dx.op.unary.f32(i32 24, float %2934)  ; Sqrt(value)
  %3180 = call float @dx.op.unary.f32(i32 24, float %2935)  ; Sqrt(value)
  %3181 = fadd fast float %3178, -5.000000e-01
  %3182 = fadd fast float %3179, -5.000000e-01
  %3183 = fadd fast float %3180, -5.000000e-01
  %3184 = fmul fast float %3181, %3130
  %3185 = fmul fast float %3182, %3130
  %3186 = fmul fast float %3183, %3130
  %3187 = fadd fast float %3184, 5.000000e-01
  %3188 = fadd fast float %3185, 5.000000e-01
  %3189 = fadd fast float %3186, 5.000000e-01
  %3190 = fmul fast float %3187, 2.000000e+00
  %3191 = fsub fast float 1.000000e+00, %3190
  %3192 = fmul fast float %3191, %3120
  %3193 = fadd fast float %3192, %3190
  %3194 = fmul fast float %3193, %3120
  %3195 = fmul fast float %3188, 2.000000e+00
  %3196 = fsub fast float 1.000000e+00, %3195
  %3197 = fmul fast float %3196, %3121
  %3198 = fadd fast float %3197, %3195
  %3199 = fmul fast float %3198, %3121
  %3200 = fmul fast float %3189, 2.000000e+00
  %3201 = fsub fast float 1.000000e+00, %3200
  %3202 = fmul fast float %3201, %3122
  %3203 = fadd fast float %3202, %3200
  %3204 = fmul fast float %3203, %3122
  br label %3205

; <label>:3205                                    ; preds = %3177, %3175, %3162, %3132, %3116
  %3206 = phi float [ %3117, %3116 ], [ %3117, %3177 ], [ %3117, %3175 ], [ %3117, %3162 ], [ %3154, %3132 ]
  %3207 = phi float [ %3118, %3116 ], [ %3118, %3177 ], [ %3118, %3175 ], [ %3118, %3162 ], [ %3155, %3132 ]
  %3208 = phi float [ %3119, %3116 ], [ %3119, %3177 ], [ %3119, %3175 ], [ %3119, %3162 ], [ %3156, %3132 ]
  %3209 = phi float [ %3120, %3116 ], [ %3194, %3177 ], [ %3120, %3175 ], [ %3172, %3162 ], [ %3142, %3132 ]
  %3210 = phi float [ %3121, %3116 ], [ %3199, %3177 ], [ %3121, %3175 ], [ %3173, %3162 ], [ %3143, %3132 ]
  %3211 = phi float [ %3122, %3116 ], [ %3204, %3177 ], [ %3122, %3175 ], [ %3174, %3162 ], [ %3144, %3132 ]
  %3212 = phi float [ %2526, %3116 ], [ %2526, %3177 ], [ %2526, %3175 ], [ %2526, %3162 ], [ %3147, %3132 ]
  %3213 = phi float [ %2530, %3116 ], [ %2530, %3177 ], [ %2530, %3175 ], [ %2530, %3162 ], [ %3159, %3132 ]
  %3214 = and i32 %3124, 12
  %3215 = icmp eq i32 %3214, 12
  br i1 %3215, label %3298, label %3216

; <label>:3216                                    ; preds = %3205
  %3217 = and i32 %3124, 2097184
  %3218 = icmp eq i32 %3217, 2097184
  %3219 = select i1 %3218, float %2713, float 0.000000e+00
  %3220 = and i32 %3124, 4194336
  %3221 = icmp eq i32 %3220, 4194336
  %3222 = select i1 %3221, float %2713, float 0.000000e+00
  %3223 = and i32 %3124, 8388640
  %3224 = icmp eq i32 %3223, 8388640
  %3225 = select i1 %3224, float %2713, float 0.000000e+00
  %3226 = and i32 %3124, 4096
  %3227 = icmp ne i32 %3226, 0
  %3228 = select i1 %3227, float %2713, float 0.000000e+00
  %3229 = icmp eq i32 %3214, 0
  br i1 %3229, label %3230, label %3246

; <label>:3230                                    ; preds = %3216
  %3231 = fsub fast float %3014, %2518
  %3232 = fsub fast float %3015, %2519
  %3233 = fmul fast float %3219, %3231
  %3234 = fmul fast float %3219, %3232
  %3235 = fadd fast float %3233, %2518
  %3236 = fadd fast float %3234, %2519
  %3237 = fsub fast float %3016, %2528
  %3238 = fmul fast float %3222, %3237
  %3239 = fadd fast float %3238, %2528
  %3240 = fsub fast float %3013, %2527
  %3241 = fmul fast float %3225, %3240
  %3242 = fadd fast float %3241, %2527
  %3243 = fsub fast float %3094, %2529
  %3244 = fmul fast float %3228, %3243
  %3245 = fadd fast float %3244, %2529
  br label %3298

; <label>:3246                                    ; preds = %3216
  %3247 = icmp eq i32 %3214, 4
  br i1 %3247, label %3248, label %3282

; <label>:3248                                    ; preds = %3246
  %3249 = fmul fast float %3219, %3014
  %3250 = fmul fast float %3219, %3015
  %3251 = fadd fast float %3249, %2518
  %3252 = fadd fast float %3250, %2519
  %3253 = call float @dx.op.binary.f32(i32 36, float %2528, float %3016)  ; FMin(a,b)
  %3254 = fsub fast float %3253, %2528
  %3255 = fmul fast float %3254, %3222
  %3256 = fadd fast float %3255, %2528
  %3257 = fadd fast float %3013, %2527
  %3258 = fmul fast float %3257, 0x3FF337FAE0000000
  %3259 = fmul fast float %2527, %2527
  %3260 = fmul fast float %3013, %3013
  %3261 = fadd fast float %3260, %3259
  %3262 = fmul fast float %3261, 0x3FE5152B00000000
  %3263 = fmul fast float %2527, 0xBFCC1F85E0000000
  %3264 = fmul fast float %3263, %3013
  %3265 = fadd fast float %3264, 0xBFE1363700000000
  %3266 = fadd fast float %3265, %3258
  %3267 = fsub fast float %3266, %3262
  %3268 = fmul fast float %3257, 0x3FBA6F0D00000000
  %3269 = fmul fast float %3261, 0x3FD0432880000000
  %3270 = fmul fast float %2527, 0xBFEF110800000000
  %3271 = fmul fast float %3270, %3013
  %3272 = fadd fast float %3271, 1.000000e+00
  %3273 = fsub fast float %3272, %3268
  %3274 = fadd fast float %3273, %3269
  %3275 = fdiv fast float %3267, %3274
  %3276 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3277 = fsub fast float %3276, %2527
  %3278 = fmul fast float %3277, %3225
  %3279 = fadd fast float %3278, %2527
  %3280 = fmul fast float %3228, %3094
  %3281 = fadd fast float %3280, %2529
  br label %3298

; <label>:3282                                    ; preds = %3246
  %3283 = icmp eq i32 %3214, 8
  br i1 %3283, label %3284, label %3298

; <label>:3284                                    ; preds = %3282
  %3285 = fmul fast float %3219, %3014
  %3286 = fmul fast float %3219, %3015
  %3287 = fadd fast float %3285, %2518
  %3288 = fadd fast float %3286, %2519
  %3289 = call float @dx.op.binary.f32(i32 36, float %2528, float %3016)  ; FMin(a,b)
  %3290 = fsub fast float %3289, %2528
  %3291 = fmul fast float %3290, %3222
  %3292 = fadd fast float %3291, %2528
  %3293 = fsub fast float %3013, %2527
  %3294 = fmul fast float %3225, %3293
  %3295 = fadd fast float %3294, %2527
  %3296 = fmul fast float %3228, %3094
  %3297 = fadd fast float %3296, %2529
  br label %3298

; <label>:3298                                    ; preds = %3284, %3282, %3248, %3230, %3205, %2712, %2531, %2517
  %3299 = phi float [ %2518, %3205 ], [ %2518, %2712 ], [ %2518, %2517 ], [ %2518, %2531 ], [ %3235, %3230 ], [ %3251, %3248 ], [ %2518, %3282 ], [ %3287, %3284 ]
  %3300 = phi float [ %2519, %3205 ], [ %2519, %2712 ], [ %2519, %2517 ], [ %2519, %2531 ], [ %3236, %3230 ], [ %3252, %3248 ], [ %2519, %3282 ], [ %3288, %3284 ]
  %3301 = phi float [ %3206, %3205 ], [ %2520, %2712 ], [ %2520, %2517 ], [ %2520, %2531 ], [ %3206, %3230 ], [ %3206, %3248 ], [ %3206, %3282 ], [ %3206, %3284 ]
  %3302 = phi float [ %3207, %3205 ], [ %2521, %2712 ], [ %2521, %2517 ], [ %2521, %2531 ], [ %3207, %3230 ], [ %3207, %3248 ], [ %3207, %3282 ], [ %3207, %3284 ]
  %3303 = phi float [ %3208, %3205 ], [ %2522, %2712 ], [ %2522, %2517 ], [ %2522, %2531 ], [ %3208, %3230 ], [ %3208, %3248 ], [ %3208, %3282 ], [ %3208, %3284 ]
  %3304 = phi float [ %3209, %3205 ], [ %2523, %2712 ], [ %2523, %2517 ], [ %2523, %2531 ], [ %3209, %3230 ], [ %3209, %3248 ], [ %3209, %3282 ], [ %3209, %3284 ]
  %3305 = phi float [ %3210, %3205 ], [ %2524, %2712 ], [ %2524, %2517 ], [ %2524, %2531 ], [ %3210, %3230 ], [ %3210, %3248 ], [ %3210, %3282 ], [ %3210, %3284 ]
  %3306 = phi float [ %3211, %3205 ], [ %2525, %2712 ], [ %2525, %2517 ], [ %2525, %2531 ], [ %3211, %3230 ], [ %3211, %3248 ], [ %3211, %3282 ], [ %3211, %3284 ]
  %3307 = phi float [ %3212, %3205 ], [ %2526, %2712 ], [ %2526, %2517 ], [ %2526, %2531 ], [ %3212, %3230 ], [ %3212, %3248 ], [ %3212, %3282 ], [ %3212, %3284 ]
  %3308 = phi float [ %2527, %3205 ], [ %2527, %2712 ], [ %2527, %2517 ], [ %2527, %2531 ], [ %3242, %3230 ], [ %3279, %3248 ], [ %2527, %3282 ], [ %3295, %3284 ]
  %3309 = phi float [ %2528, %3205 ], [ %2528, %2712 ], [ %2528, %2517 ], [ %2528, %2531 ], [ %3239, %3230 ], [ %3256, %3248 ], [ %2528, %3282 ], [ %3292, %3284 ]
  %3310 = phi float [ %2529, %3205 ], [ %2529, %2712 ], [ %2529, %2517 ], [ %2529, %2531 ], [ %3245, %3230 ], [ %3281, %3248 ], [ %2529, %3282 ], [ %3297, %3284 ]
  %3311 = phi float [ %3213, %3205 ], [ %2530, %2712 ], [ %2530, %2517 ], [ %2530, %2531 ], [ %3213, %3230 ], [ %3213, %3248 ], [ %3213, %3282 ], [ %3213, %3284 ]
  %3312 = add i32 %33, 360
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = extractvalue %dx.types.ResRet.i32 %3313, 1
  %3316 = bitcast i32 %3314 to float
  %3317 = bitcast i32 %3315 to float
  %3318 = fcmp fast oge float %3316, 0.000000e+00
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = select i1 %3318, float %3316, float %3320
  %3322 = fadd fast float %3321, %179
  %3323 = fmul fast float %3317, %180
  %3324 = add i32 %33, 456
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = add i32 %3326, 0
  %3328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3327, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3329 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3328, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3330 = extractvalue %dx.types.ResRet.f32 %3329, 0
  %3331 = fmul fast float %3323, %3330
  %3332 = fadd fast float %3322, %3331
  %3333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3334 = extractvalue %dx.types.CBufRet.f32 %3333, 0
  %3335 = and i32 %171, 65535
  %3336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3335)  ; LegacyF16ToF32(value)
  %3337 = lshr i32 %171, 16
  %3338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3337)  ; LegacyF16ToF32(value)
  %3339 = and i32 %172, 65535
  %3340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3339)  ; LegacyF16ToF32(value)
  %3341 = fmul fast float %3336, %3304
  %3342 = fmul fast float %3338, %3305
  %3343 = fmul fast float %3340, %3306
  %3344 = shl i32 %173, 4
  %3345 = and i32 %3344, 32752
  %3346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3345)  ; LegacyF16ToF32(value)
  %3347 = lshr i32 %173, 7
  %3348 = and i32 %3347, 32752
  %3349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3348)  ; LegacyF16ToF32(value)
  %3350 = lshr i32 %173, 22
  %3351 = shl nuw nsw i32 %3350, 5
  %3352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3351)  ; LegacyF16ToF32(value)
  %3353 = and i32 %174, 65535
  %3354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3353)  ; LegacyF16ToF32(value)
  %3355 = fmul fast float %3334, %3301
  %3356 = fmul fast float %3355, %3346
  %3357 = fmul fast float %3356, %3354
  %3358 = fmul fast float %3334, %3302
  %3359 = fmul fast float %3358, %3349
  %3360 = fmul fast float %3359, %3354
  %3361 = fmul fast float %3334, %3303
  %3362 = fmul fast float %3361, %3352
  %3363 = fmul fast float %3362, %3354
  %3364 = call float @dx.op.dot2.f32(i32 54, float %3299, float %3300, float %3299, float %3300)  ; Dot2(ax,ay,bx,by)
  %3365 = fmul fast float %3364, 0x3FE3333340000000
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = call float @dx.op.dot3.f32(i32 55, float %3299, float %3300, float %3366, float %3299, float %3300, float %3366)  ; Dot3(ax,ay,az,bx,by,bz)
  %3368 = call float @dx.op.unary.f32(i32 25, float %3367)  ; Rsqrt(value)
  %3369 = fmul fast float %3368, %3299
  %3370 = fmul fast float %3368, %3300
  %3371 = fmul fast float %3366, %3368
  %3372 = fmul fast float %3371, %85
  %3373 = fmul fast float %3371, %86
  %3374 = fmul fast float %3371, %87
  %3375 = fmul fast float %3369, %59
  %3376 = fmul fast float %3369, %60
  %3377 = fmul fast float %3369, %61
  %3378 = fadd fast float %3372, %3375
  %3379 = fadd fast float %3373, %3376
  %3380 = fadd fast float %3374, %3377
  %3381 = fmul fast float %97, %3370
  %3382 = fmul fast float %98, %3370
  %3383 = fmul fast float %99, %3370
  %3384 = fadd fast float %3378, %3381
  %3385 = fadd fast float %3379, %3382
  %3386 = fadd fast float %3380, %3383
  %3387 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3385, float %3386, float %3384, float %3385, float %3386)  ; Dot3(ax,ay,az,bx,by,bz)
  %3388 = call float @dx.op.unary.f32(i32 25, float %3387)  ; Rsqrt(value)
  %3389 = fmul fast float %3384, %3388
  %3390 = fmul fast float %3385, %3388
  %3391 = fmul fast float %3386, %3388
  %3392 = icmp eq i32 %35, 65535
  br i1 %3392, label %3907, label %3393

; <label>:3393                                    ; preds = %3298
  %3394 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3395 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3396 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3397 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3398 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3399 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3400 = fadd fast float %3394, %36
  %3401 = fadd fast float %3395, %37
  %3402 = fadd fast float %3396, %38
  %3403 = fadd fast float %3397, %36
  %3404 = fadd fast float %3398, %37
  %3405 = fadd fast float %3399, %38
  %3406 = mul i32 %35, 48
  %3407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.f32 %3407, 0
  %3409 = extractvalue %dx.types.ResRet.f32 %3407, 1
  %3410 = extractvalue %dx.types.ResRet.f32 %3407, 2
  %3411 = add i32 %3406, 16
  %3412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = extractvalue %dx.types.ResRet.f32 %3412, 1
  %3415 = extractvalue %dx.types.ResRet.f32 %3412, 2
  %3416 = add i32 %3406, 32
  %3417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.f32 %3417, 0
  %3419 = extractvalue %dx.types.ResRet.f32 %3417, 1
  %3420 = extractvalue %dx.types.ResRet.f32 %3417, 2
  %3421 = extractvalue %dx.types.ResRet.f32 %3417, 3
  %3422 = bitcast float %3421 to i32
  %3423 = fmul fast float %3408, %36
  %3424 = fmul fast float %3409, %37
  %3425 = fmul fast float %3410, %38
  %3426 = fsub fast float %3423, %3413
  %3427 = fsub fast float %3424, %3414
  %3428 = fsub fast float %3425, %3415
  %3429 = call float @dx.op.unary.f32(i32 7, float %3426)  ; Saturate(value)
  %3430 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  %3431 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  %3432 = fmul fast float %3429, %3418
  %3433 = fmul fast float %3430, %3419
  %3434 = fmul fast float %3431, %3420
  %3435 = fadd fast float %3418, -1.000000e+00
  %3436 = fadd fast float %3419, -1.000000e+00
  %3437 = fadd fast float %3420, -1.000000e+00
  %3438 = call float @dx.op.unary.f32(i32 27, float %3432)  ; Round_ni(value)
  %3439 = call float @dx.op.unary.f32(i32 27, float %3433)  ; Round_ni(value)
  %3440 = call float @dx.op.unary.f32(i32 27, float %3434)  ; Round_ni(value)
  %3441 = call float @dx.op.binary.f32(i32 36, float %3438, float %3435)  ; FMin(a,b)
  %3442 = call float @dx.op.binary.f32(i32 36, float %3439, float %3436)  ; FMin(a,b)
  %3443 = call float @dx.op.binary.f32(i32 36, float %3440, float %3437)  ; FMin(a,b)
  %3444 = fmul fast float %3443, %3419
  %3445 = fadd fast float %3444, %3442
  %3446 = fmul fast float %3445, %3418
  %3447 = fadd fast float %3446, %3441
  %3448 = fptosi float %3447 to i32
  %3449 = add nsw i32 %3448, %3422
  %3450 = shl nsw i32 %3449, 2
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = lshr i32 %3452, 16
  %3454 = icmp eq i32 %3453, 0
  br i1 %3454, label %3876, label %3455

; <label>:3455                                    ; preds = %3393
  br label %3456

; <label>:3456                                    ; preds = %3577, %3455
  %3457 = phi i32 [ %3479, %3577 ], [ %3453, %3455 ]
  %3458 = phi float [ %3578, %3577 ], [ 0.000000e+00, %3455 ]
  %3459 = phi float [ %3579, %3577 ], [ %3332, %3455 ]
  %3460 = phi float [ %3580, %3577 ], [ %3311, %3455 ]
  %3461 = phi float [ %3581, %3577 ], [ 0.000000e+00, %3455 ]
  %3462 = phi float [ %3582, %3577 ], [ %3310, %3455 ]
  %3463 = phi float [ %3583, %3577 ], [ %3357, %3455 ]
  %3464 = phi float [ %3584, %3577 ], [ %3360, %3455 ]
  %3465 = phi float [ %3585, %3577 ], [ %3363, %3455 ]
  %3466 = phi float [ %3586, %3577 ], [ %3389, %3455 ]
  %3467 = phi float [ %3587, %3577 ], [ %3390, %3455 ]
  %3468 = phi float [ %3588, %3577 ], [ %3391, %3455 ]
  %3469 = phi float [ %3589, %3577 ], [ %3309, %3455 ]
  %3470 = phi float [ %3590, %3577 ], [ %3308, %3455 ]
  %3471 = phi float [ %3591, %3577 ], [ 0.000000e+00, %3455 ]
  %3472 = phi float [ %3592, %3577 ], [ %3307, %3455 ]
  %3473 = phi float [ %3593, %3577 ], [ %3341, %3455 ]
  %3474 = phi float [ %3594, %3577 ], [ %3342, %3455 ]
  %3475 = phi float [ %3595, %3577 ], [ %3343, %3455 ]
  %3476 = shl nuw nsw i32 %3457, 2
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = lshr i32 %3478, 16
  %3480 = shl i32 %3478, 8
  %3481 = and i32 %3480, 16776960
  %3482 = or i32 %3481, 48
  %3483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = or i32 %3481, 64
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.i32 %3488, 1
  %3491 = or i32 %3481, 80
  %3492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.f32 %3492, 2
  %3494 = extractvalue %dx.types.ResRet.f32 %3492, 3
  %3495 = or i32 %3481, 96
  %3496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = extractvalue %dx.types.ResRet.f32 %3496, 1
  %3499 = extractvalue %dx.types.ResRet.f32 %3496, 2
  %3500 = extractvalue %dx.types.ResRet.f32 %3496, 3
  %3501 = or i32 %3481, 112
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3504 = or i32 %3481, 128
  %3505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = extractvalue %dx.types.ResRet.f32 %3505, 3
  %3510 = or i32 %3481, 144
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = extractvalue %dx.types.ResRet.f32 %3511, 3
  %3516 = or i32 %3481, 160
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3517, 2
  %3521 = extractvalue %dx.types.ResRet.f32 %3517, 3
  %3522 = or i32 %3481, 192
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = or i32 %3481, 208
  %3526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = or i32 %3481, 248
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.f32 %3532, 0
  %3534 = extractvalue %dx.types.ResRet.f32 %3532, 1
  %3535 = extractvalue %dx.types.ResRet.f32 %3532, 2
  %3536 = extractvalue %dx.types.ResRet.f32 %3532, 3
  %3537 = call float @dx.op.dot4.f32(i32 56, float %3533, float %3534, float %3535, float %3536, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3538 = or i32 %3481, 16
  %3539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.ResRet.f32 %3539, 1
  %3542 = extractvalue %dx.types.ResRet.f32 %3539, 2
  %3543 = extractvalue %dx.types.ResRet.f32 %3539, 3
  %3544 = call float @dx.op.dot4.f32(i32 56, float %3540, float %3541, float %3542, float %3543, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3545 = or i32 %3481, 32
  %3546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.ResRet.f32 %3546, 1
  %3549 = extractvalue %dx.types.ResRet.f32 %3546, 2
  %3550 = extractvalue %dx.types.ResRet.f32 %3546, 3
  %3551 = call float @dx.op.dot4.f32(i32 56, float %3547, float %3548, float %3549, float %3550, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3552 = call float @dx.op.unary.f32(i32 27, float %3537)  ; Round_ni(value)
  %3553 = call float @dx.op.unary.f32(i32 6, float %3552)  ; FAbs(value)
  %3554 = call float @dx.op.unary.f32(i32 27, float %3544)  ; Round_ni(value)
  %3555 = call float @dx.op.unary.f32(i32 6, float %3554)  ; FAbs(value)
  %3556 = call float @dx.op.unary.f32(i32 6, float %3551)  ; FAbs(value)
  %3557 = call float @dx.op.unary.f32(i32 27, float %3556)  ; Round_ni(value)
  %3558 = fadd fast float %3555, %3553
  %3559 = fadd fast float %3558, %3557
  %3560 = fcmp fast oeq float %3559, 0.000000e+00
  %3561 = call float @dx.op.dot4.f32(i32 56, float %3533, float %3534, float %3535, float %3536, float %3400, float %3401, float %3402, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3562 = call float @dx.op.dot4.f32(i32 56, float %3540, float %3541, float %3542, float %3543, float %3400, float %3401, float %3402, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3563 = call float @dx.op.dot4.f32(i32 56, float %3533, float %3534, float %3535, float %3536, float %3403, float %3404, float %3405, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3564 = call float @dx.op.dot4.f32(i32 56, float %3540, float %3541, float %3542, float %3543, float %3403, float %3404, float %3405, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3565 = fsub fast float %3561, %3537
  %3566 = fsub fast float %3563, %3537
  %3567 = fsub fast float %3562, %3544
  %3568 = fsub fast float %3564, %3544
  %3569 = call float @dx.op.dot3.f32(i32 55, float %3484, float %3485, float %3486, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 2
  %3572 = fadd fast float %3571, %3569
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3574 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3575 = fcmp fast ogt float %3573, %3574
  %3576 = and i1 %3560, %3575
  br i1 %3576, label %3597, label %3577

; <label>:3577                                    ; preds = %3862, %3680, %3597, %3456
  %3578 = phi float [ %3458, %3597 ], [ %3683, %3680 ], [ %3683, %3862 ], [ %3458, %3456 ]
  %3579 = phi float [ %3459, %3597 ], [ %3459, %3680 ], [ %3837, %3862 ], [ %3459, %3456 ]
  %3580 = phi float [ %3460, %3597 ], [ %3460, %3680 ], [ %3835, %3862 ], [ %3460, %3456 ]
  %3581 = phi float [ %3461, %3597 ], [ %3461, %3680 ], [ %3807, %3862 ], [ %3461, %3456 ]
  %3582 = phi float [ %3462, %3597 ], [ %3462, %3680 ], [ %3805, %3862 ], [ %3462, %3456 ]
  %3583 = phi float [ %3463, %3597 ], [ %3463, %3680 ], [ %3872, %3862 ], [ %3463, %3456 ]
  %3584 = phi float [ %3464, %3597 ], [ %3464, %3680 ], [ %3873, %3862 ], [ %3464, %3456 ]
  %3585 = phi float [ %3465, %3597 ], [ %3465, %3680 ], [ %3874, %3862 ], [ %3465, %3456 ]
  %3586 = phi float [ %3466, %3597 ], [ %3466, %3680 ], [ %3786, %3862 ], [ %3466, %3456 ]
  %3587 = phi float [ %3467, %3597 ], [ %3467, %3680 ], [ %3787, %3862 ], [ %3467, %3456 ]
  %3588 = phi float [ %3468, %3597 ], [ %3468, %3680 ], [ %3788, %3862 ], [ %3468, %3456 ]
  %3589 = phi float [ %3469, %3597 ], [ %3469, %3680 ], [ %3815, %3862 ], [ %3469, %3456 ]
  %3590 = phi float [ %3470, %3597 ], [ %3470, %3680 ], [ %3812, %3862 ], [ %3470, %3456 ]
  %3591 = phi float [ %3471, %3597 ], [ %3471, %3680 ], [ %3809, %3862 ], [ %3471, %3456 ]
  %3592 = phi float [ %3472, %3597 ], [ %3472, %3680 ], [ %3803, %3862 ], [ %3472, %3456 ]
  %3593 = phi float [ %3473, %3597 ], [ %3473, %3680 ], [ %3798, %3862 ], [ %3473, %3456 ]
  %3594 = phi float [ %3474, %3597 ], [ %3474, %3680 ], [ %3799, %3862 ], [ %3474, %3456 ]
  %3595 = phi float [ %3475, %3597 ], [ %3475, %3680 ], [ %3800, %3862 ], [ %3475, %3456 ]
  %3596 = icmp eq i32 %3479, 0
  br i1 %3596, label %3875, label %3456

; <label>:3597                                    ; preds = %3456
  %3598 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3599 = extractvalue %dx.types.ResRet.f32 %3502, 3
  %3600 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3492, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3492, 0
  %3604 = extractvalue %dx.types.ResRet.i32 %3488, 3
  %3605 = extractvalue %dx.types.ResRet.i32 %3488, 2
  %3606 = bitcast float %3598 to i32
  %3607 = add i32 %3604, 0
  %3608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3607, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3610 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3608, %dx.types.Handle %3609, float %3537, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float %3565, float %3567, float undef, float %3566, float %3568, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3612 = fmul fast float %3611, %3603
  %3613 = fadd fast float %3612, %3602
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = fmul fast float %3537, %3497
  %3616 = call float @dx.op.tertiary.f32(i32 46, float %3498, float %3544, float %3615)  ; FMad(a,b,c)
  %3617 = fadd fast float %3616, %3601
  %3618 = fmul fast float %3537, %3499
  %3619 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3544, float %3618)  ; FMad(a,b,c)
  %3620 = fadd fast float %3619, %3600
  %3621 = fmul fast float %3565, %3497
  %3622 = call float @dx.op.tertiary.f32(i32 46, float %3498, float %3567, float %3621)  ; FMad(a,b,c)
  %3623 = fmul fast float %3565, %3499
  %3624 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3567, float %3623)  ; FMad(a,b,c)
  %3625 = fmul fast float %3566, %3497
  %3626 = call float @dx.op.tertiary.f32(i32 46, float %3498, float %3568, float %3625)  ; FMad(a,b,c)
  %3627 = fmul fast float %3566, %3499
  %3628 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3568, float %3627)  ; FMad(a,b,c)
  %3629 = add i32 %3605, 0
  %3630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3629, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3631 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3630, %dx.types.Handle %3609, float %3617, float %3620, float undef, float undef, i32 0, i32 0, i32 undef, float %3622, float %3624, float undef, float %3626, float %3628, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = and i32 %3606, 1024
  %3634 = icmp ne i32 %3633, 0
  %3635 = fcmp fast ogt float %3632, 0x3FE0101020000000
  %3636 = uitofp i1 %3635 to float
  %3637 = select i1 %3634, float %3636, float %3632
  %3638 = and i32 %3606, 8192
  %3639 = icmp ne i32 %3638, 0
  %3640 = select i1 %3639, float %3599, float 1.000000e+00
  %3641 = fmul fast float %3537, 2.000000e+00
  %3642 = fadd fast float %3641, -1.000000e+00
  %3643 = call float @dx.op.unary.f32(i32 6, float %3642)  ; FAbs(value)
  %3644 = fmul fast float %3643, %3530
  %3645 = fsub fast float %3644, %3530
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3647 = fmul fast float %3544, 2.000000e+00
  %3648 = fadd fast float %3647, -1.000000e+00
  %3649 = call float @dx.op.unary.f32(i32 6, float %3648)  ; FAbs(value)
  %3650 = fmul fast float %3649, %3531
  %3651 = fsub fast float %3650, %3531
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3653 = fmul fast float %3556, %3493
  %3654 = fsub fast float %3653, %3493
  %3655 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3656 = fmul fast float %3614, %3640
  %3657 = fmul fast float %3656, %3611
  %3658 = fmul fast float %3657, %3646
  %3659 = fmul fast float %3658, %3637
  %3660 = fmul fast float %3659, %3652
  %3661 = fmul fast float %3660, %3655
  %3662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.f32 %3662, 1
  %3664 = extractvalue %dx.types.CBufRet.f32 %3662, 0
  %3665 = fsub fast float %3573, %3664
  %3666 = fmul fast float %3665, %3663
  %3667 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3668 = fmul fast float %3661, %3494
  %3669 = fadd fast float %3661, %3494
  %3670 = fmul fast float %3669, %3503
  %3671 = fsub fast float %3670, %3503
  %3672 = call float @dx.op.unary.f32(i32 7, float %3671)  ; Saturate(value)
  %3673 = and i32 %3606, 128
  %3674 = icmp ne i32 %3673, 0
  %3675 = select i1 %3674, float %3672, float %3668
  %3676 = fmul fast float %3675, %3667
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 0
  %3679 = fcmp fast ugt float %3676, %3678
  br i1 %3679, label %3680, label %3577

; <label>:3680                                    ; preds = %3597
  %3681 = select i1 %3639, float %3676, float 0.000000e+00
  %3682 = fadd fast float %3681, %3458
  %3683 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  br i1 %3639, label %3577, label %3684

; <label>:3684                                    ; preds = %3680
  %3685 = and i32 %3606, 4
  %3686 = and i32 %3606, 8
  %3687 = add i32 %3489, 0
  %3688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3690 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3688, %dx.types.Handle %3689, float %3617, float %3620, float undef, float undef, i32 0, i32 0, i32 undef, float %3622, float %3624, float undef, float %3626, float %3628, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.ResRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.ResRet.f32 %3690, 2
  %3694 = extractvalue %dx.types.ResRet.f32 %3690, 3
  %3695 = bitcast float %3515 to i32
  %3696 = and i32 %3695, 255
  %3697 = uitofp i32 %3696 to float
  %3698 = lshr i32 %3695, 8
  %3699 = and i32 %3698, 255
  %3700 = uitofp i32 %3699 to float
  %3701 = fmul fast float %3694, %3697
  %3702 = fadd fast float %3701, %3700
  %3703 = fmul fast float %3702, 0x3F70101000000000
  %3704 = add i32 %3490, 0
  %3705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3704, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3706 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3705, %dx.types.Handle %3689, float %3617, float %3620, float undef, float undef, i32 0, i32 0, i32 undef, float %3622, float %3624, float undef, float %3626, float %3628, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3710 = extractvalue %dx.types.ResRet.f32 %3706, 3
  %3711 = bitcast float %3509 to i32
  %3712 = and i32 %3711, 255
  %3713 = uitofp i32 %3712 to float
  %3714 = lshr i32 %3711, 8
  %3715 = and i32 %3714, 255
  %3716 = uitofp i32 %3715 to float
  %3717 = lshr i32 %3711, 16
  %3718 = and i32 %3717, 255
  %3719 = uitofp i32 %3718 to float
  %3720 = fmul fast float %3719, 0x3F70101000000000
  %3721 = fmul fast float %3707, %3713
  %3722 = fadd fast float %3721, %3716
  %3723 = fmul fast float %3722, 0x3F70101000000000
  %3724 = fadd fast float %3708, -5.000000e-01
  %3725 = fadd fast float %3710, -5.000000e-01
  %3726 = fmul fast float %3724, %3720
  %3727 = fmul fast float %3725, %3720
  %3728 = fadd fast float %3726, 5.000000e-01
  %3729 = fadd fast float %3727, 5.000000e-01
  %3730 = fmul fast float %3691, %3518
  %3731 = fmul fast float %3692, %3519
  %3732 = fmul fast float %3693, %3520
  %3733 = fmul fast float %3728, 2.000000e+00
  %3734 = fadd fast float %3733, -1.000000e+00
  %3735 = fmul fast float %3729, 2.000000e+00
  %3736 = fadd fast float %3735, -1.000000e+00
  %3737 = fadd fast float %3734, %3736
  %3738 = fmul fast float %3737, 5.000000e-01
  %3739 = fsub fast float %3734, %3736
  %3740 = fmul fast float %3739, 5.000000e-01
  %3741 = call float @dx.op.unary.f32(i32 6, float %3738)  ; FAbs(value)
  %3742 = fsub fast float 1.000000e+00, %3741
  %3743 = call float @dx.op.unary.f32(i32 6, float %3740)  ; FAbs(value)
  %3744 = fsub fast float %3742, %3743
  %3745 = call float @dx.op.dot3.f32(i32 55, float %3738, float %3740, float %3744, float %3738, float %3740, float %3744)  ; Dot3(ax,ay,az,bx,by,bz)
  %3746 = call float @dx.op.unary.f32(i32 25, float %3745)  ; Rsqrt(value)
  %3747 = fmul fast float %3738, %3746
  %3748 = fmul fast float %3740, %3746
  %3749 = fmul fast float %3746, %3744
  %3750 = fmul fast float %3749, %3484
  %3751 = fmul fast float %3749, %3485
  %3752 = fmul fast float %3749, %3486
  %3753 = fmul fast float %3747, %3506
  %3754 = fmul fast float %3747, %3507
  %3755 = fmul fast float %3747, %3508
  %3756 = fadd fast float %3753, %3750
  %3757 = fadd fast float %3754, %3751
  %3758 = fadd fast float %3755, %3752
  %3759 = fmul fast float %3748, %3512
  %3760 = fmul fast float %3748, %3513
  %3761 = fmul fast float %3748, %3514
  %3762 = fadd fast float %3756, %3759
  %3763 = fadd fast float %3757, %3760
  %3764 = fadd fast float %3758, %3761
  %3765 = call float @dx.op.dot3.f32(i32 55, float %3762, float %3763, float %3764, float %3762, float %3763, float %3764)  ; Dot3(ax,ay,az,bx,by,bz)
  %3766 = call float @dx.op.unary.f32(i32 25, float %3765)  ; Rsqrt(value)
  %3767 = fmul fast float %3762, %3766
  %3768 = fmul fast float %3763, %3766
  %3769 = fmul fast float %3764, %3766
  %3770 = icmp ne i32 %3686, 0
  %3771 = select i1 %3770, float 1.000000e+00, float 0.000000e+00
  %3772 = fmul fast float %3676, %3771
  %3773 = and i32 %3606, 1
  %3774 = icmp eq i32 %3773, 0
  br i1 %3774, label %3775, label %3779

; <label>:3775                                    ; preds = %3684
  %3776 = fsub fast float %3767, %3466
  %3777 = fsub fast float %3768, %3467
  %3778 = fsub fast float %3769, %3468
  br label %3779

; <label>:3779                                    ; preds = %3775, %3684
  %3780 = phi float [ %3776, %3775 ], [ %3767, %3684 ]
  %3781 = phi float [ %3777, %3775 ], [ %3768, %3684 ]
  %3782 = phi float [ %3778, %3775 ], [ %3769, %3684 ]
  %3783 = fmul float %3782, %3772
  %3784 = fmul float %3781, %3772
  %3785 = fmul float %3780, %3772
  %3786 = fadd fast float %3785, %3466
  %3787 = fadd fast float %3784, %3467
  %3788 = fadd fast float %3783, %3468
  %3789 = icmp ne i32 %3685, 0
  %3790 = select i1 %3789, float 1.000000e+00, float 0.000000e+00
  %3791 = fmul fast float %3676, %3790
  %3792 = fsub fast float %3730, %3473
  %3793 = fsub fast float %3731, %3474
  %3794 = fsub fast float %3732, %3475
  %3795 = fmul fast float %3792, %3791
  %3796 = fmul fast float %3793, %3791
  %3797 = fmul fast float %3794, %3791
  %3798 = fadd fast float %3795, %3473
  %3799 = fadd fast float %3796, %3474
  %3800 = fadd fast float %3797, %3475
  %3801 = fsub fast float %3703, %3472
  %3802 = fmul fast float %3801, %3791
  %3803 = fadd fast float %3802, %3472
  %3804 = fmul fast float %3791, %3462
  %3805 = fsub fast float %3462, %3804
  %3806 = fmul fast float %3791, %3461
  %3807 = fsub fast float %3461, %3806
  %3808 = fadd fast float %3676, %3471
  %3809 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3810 = fsub fast float %3723, %3470
  %3811 = fmul fast float %3810, %3772
  %3812 = fadd fast float %3811, %3470
  %3813 = fsub fast float %3709, %3469
  %3814 = fmul fast float %3813, %3772
  %3815 = fadd fast float %3814, %3469
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3730, float %3731, float %3732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3818 = extractvalue %dx.types.CBufRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.CBufRet.f32 %3817, 1
  %3820 = fmul fast float %3819, %3816
  %3821 = fadd fast float %3820, %3818
  %3822 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3823 = bitcast float %3521 to i32
  %3824 = and i32 %3823, 65535
  %3825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3824)  ; LegacyF16ToF32(value)
  %3826 = lshr i32 %3823, 16
  %3827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3826)  ; LegacyF16ToF32(value)
  %3828 = fcmp fast oge float %3825, 0.000000e+00
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 0
  %3831 = select i1 %3828, float %3825, float %3830
  %3832 = fadd fast float %3831, %3827
  %3833 = fsub fast float %3822, %3460
  %3834 = fmul fast float %3833, %3676
  %3835 = fadd fast float %3834, %3460
  %3836 = fmul fast float %3832, %3676
  %3837 = call float @dx.op.binary.f32(i32 35, float %3459, float %3836)  ; FMax(a,b)
  %3838 = and i32 %3606, 16
  %3839 = icmp eq i32 %3838, 0
  br i1 %3839, label %3862, label %3840

; <label>:3840                                    ; preds = %3779
  %3841 = bitcast float %3527 to i32
  %3842 = add i32 %3524, 0
  %3843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3842, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3844 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3843, %dx.types.Handle %3689, float %3617, float %3620, float undef, float undef, i32 0, i32 0, i32 undef, float %3622, float %3624, float undef, float %3626, float %3628, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.ResRet.f32 %3844, 2
  %3848 = and i32 %3841, 65535
  %3849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3848)  ; LegacyF16ToF32(value)
  %3850 = fmul fast float %3845, %3518
  %3851 = fmul fast float %3846, %3519
  %3852 = fmul fast float %3847, %3520
  %3853 = and i32 %3606, 16384
  %3854 = icmp ne i32 %3853, 0
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 0
  %3857 = select i1 %3854, float %3856, float 1.000000e+00
  %3858 = fmul fast float %3857, %3849
  %3859 = fmul fast float %3850, %3858
  %3860 = fmul fast float %3851, %3858
  %3861 = fmul fast float %3852, %3858
  br label %3862

; <label>:3862                                    ; preds = %3840, %3779
  %3863 = phi float [ %3859, %3840 ], [ 0.000000e+00, %3779 ]
  %3864 = phi float [ %3860, %3840 ], [ 0.000000e+00, %3779 ]
  %3865 = phi float [ %3861, %3840 ], [ 0.000000e+00, %3779 ]
  %3866 = fsub fast float %3863, %3463
  %3867 = fsub fast float %3864, %3464
  %3868 = fsub fast float %3865, %3465
  %3869 = fmul fast float %3866, %3676
  %3870 = fmul fast float %3867, %3676
  %3871 = fmul fast float %3868, %3676
  %3872 = fadd fast float %3869, %3463
  %3873 = fadd fast float %3870, %3464
  %3874 = fadd fast float %3871, %3465
  br label %3577

; <label>:3875                                    ; preds = %3577
  br label %3876

; <label>:3876                                    ; preds = %3875, %3393
  %3877 = phi float [ 0.000000e+00, %3393 ], [ %3578, %3875 ]
  %3878 = phi float [ %3332, %3393 ], [ %3579, %3875 ]
  %3879 = phi float [ %3311, %3393 ], [ %3580, %3875 ]
  %3880 = phi float [ 0.000000e+00, %3393 ], [ %3581, %3875 ]
  %3881 = phi float [ %3310, %3393 ], [ %3582, %3875 ]
  %3882 = phi float [ %3357, %3393 ], [ %3583, %3875 ]
  %3883 = phi float [ %3360, %3393 ], [ %3584, %3875 ]
  %3884 = phi float [ %3363, %3393 ], [ %3585, %3875 ]
  %3885 = phi float [ %3389, %3393 ], [ %3586, %3875 ]
  %3886 = phi float [ %3390, %3393 ], [ %3587, %3875 ]
  %3887 = phi float [ %3391, %3393 ], [ %3588, %3875 ]
  %3888 = phi float [ %3309, %3393 ], [ %3589, %3875 ]
  %3889 = phi float [ %3308, %3393 ], [ %3590, %3875 ]
  %3890 = phi float [ 0.000000e+00, %3393 ], [ %3591, %3875 ]
  %3891 = phi float [ %3307, %3393 ], [ %3592, %3875 ]
  %3892 = phi float [ %3341, %3393 ], [ %3593, %3875 ]
  %3893 = phi float [ %3342, %3393 ], [ %3594, %3875 ]
  %3894 = phi float [ %3343, %3393 ], [ %3595, %3875 ]
  %3895 = call float @dx.op.dot3.f32(i32 55, float %3885, float %3886, float %3887, float %3885, float %3886, float %3887)  ; Dot3(ax,ay,az,bx,by,bz)
  %3896 = call float @dx.op.unary.f32(i32 25, float %3895)  ; Rsqrt(value)
  %3897 = fmul fast float %3896, %3885
  %3898 = fmul fast float %3896, %3886
  %3899 = fmul fast float %3896, %3887
  %3900 = fadd fast float %3890, %964
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3897, float %3898, float %3899)  ; Dot3(ax,ay,az,bx,by,bz)
  %3903 = call float @dx.op.unary.f32(i32 25, float %3902)  ; Rsqrt(value)
  %3904 = fmul fast float %3903, %3897
  %3905 = fmul fast float %3903, %3898
  %3906 = fmul fast float %3903, %3899
  br label %3907

; <label>:3907                                    ; preds = %3876, %3298
  %3908 = phi float [ %3904, %3876 ], [ %3389, %3298 ]
  %3909 = phi float [ %3905, %3876 ], [ %3390, %3298 ]
  %3910 = phi float [ %3906, %3876 ], [ %3391, %3298 ]
  %3911 = phi float [ %3882, %3876 ], [ %3357, %3298 ]
  %3912 = phi float [ %3883, %3876 ], [ %3360, %3298 ]
  %3913 = phi float [ %3884, %3876 ], [ %3363, %3298 ]
  %3914 = phi float [ %3892, %3876 ], [ %3341, %3298 ]
  %3915 = phi float [ %3893, %3876 ], [ %3342, %3298 ]
  %3916 = phi float [ %3894, %3876 ], [ %3343, %3298 ]
  %3917 = phi float [ %3891, %3876 ], [ %3307, %3298 ]
  %3918 = phi float [ %3901, %3876 ], [ %964, %3298 ]
  %3919 = phi float [ %3889, %3876 ], [ %3308, %3298 ]
  %3920 = phi float [ %3888, %3876 ], [ %3309, %3298 ]
  %3921 = phi float [ %3881, %3876 ], [ %3310, %3298 ]
  %3922 = phi float [ %3880, %3876 ], [ 0.000000e+00, %3298 ]
  %3923 = phi float [ %3877, %3876 ], [ 0.000000e+00, %3298 ]
  %3924 = phi float [ %3878, %3876 ], [ %3332, %3298 ]
  %3925 = phi float [ %3879, %3876 ], [ %3311, %3298 ]
  %3926 = fadd fast float %3917, 0xBFB99999A0000000
  %3927 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3928 = fmul fast float %3927, 0x3FF1C71C80000000
  %3929 = call float @dx.op.binary.f32(i32 36, float %3917, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3930 = fsub fast float 1.000000e+00, %3928
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = fmul fast float %3931, %3914
  %3933 = fmul fast float %3931, %3915
  %3934 = fmul fast float %3931, %3916
  %3935 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3936 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3937 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3938 = fmul fast float %3928, %3914
  %3939 = fmul fast float %3928, %3915
  %3940 = fmul fast float %3928, %3916
  %3941 = fadd fast float %3938, %3929
  %3942 = fadd fast float %3939, %3929
  %3943 = fadd fast float %3940, %3929
  %3944 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3945 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3946 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3947 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.i32 %3948, 3
  %3950 = and i32 %3949, 8
  %3951 = icmp ne i32 %3950, 0
  %3952 = call float @dx.op.binary.f32(i32 35, float %3935, float %3914)  ; FMax(a,b)
  %3953 = call float @dx.op.binary.f32(i32 35, float %3936, float %3914)  ; FMax(a,b)
  %3954 = call float @dx.op.binary.f32(i32 35, float %3937, float %3914)  ; FMax(a,b)
  %3955 = call float @dx.op.dot3.f32(i32 55, float %3935, float %3936, float %3937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3956 = select i1 %217, float %3914, float %3935
  %3957 = select i1 %217, float %3955, float %3936
  %3958 = select i1 %217, float 1.000000e+00, float %3937
  %3959 = select i1 %3951, float %3952, float %3956
  %3960 = select i1 %3951, float %3953, float %3957
  %3961 = select i1 %3951, float %3954, float %3958
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3965 = extractvalue %dx.types.CBufRet.f32 %3962, 2
  %3966 = fadd fast float %3963, %165
  %3967 = fadd fast float %3964, %166
  %3968 = fadd fast float %3965, %167
  %3969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.CBufRet.f32 %3969, 1
  %3972 = fsub fast float %3966, %3970
  %3973 = fsub fast float %3967, %3971
  %3974 = fmul fast float %3972, %3972
  %3975 = fmul fast float %3973, %3973
  %3976 = fadd fast float %3974, %3975
  %3977 = call float @dx.op.unary.f32(i32 24, float %3976)  ; Sqrt(value)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3969, 2
  %3979 = fcmp fast olt float %3977, %3978
  br i1 %3979, label %3980, label %4047

; <label>:3980                                    ; preds = %3907
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3988 = extractvalue %dx.types.CBufRet.f32 %3983, 1
  %3989 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3990 = extractvalue %dx.types.CBufRet.f32 %3981, 3
  %3991 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3992 = extractvalue %dx.types.CBufRet.f32 %3985, 3
  %3993 = fadd fast float %3990, %3966
  %3994 = fadd fast float %3991, %3967
  %3995 = fadd fast float %3992, %3968
  %3996 = fmul fast float %3993, %3982
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3984, float %3996)  ; FMad(a,b,c)
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3995, float %3986, float %3997)  ; FMad(a,b,c)
  %3999 = fmul fast float %3993, %3987
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3988, float %3999)  ; FMad(a,b,c)
  %4001 = call float @dx.op.tertiary.f32(i32 46, float %3995, float %3989, float %4000)  ; FMad(a,b,c)
  %4002 = fsub fast float %3998, %3990
  %4003 = fsub fast float %4001, %3991
  %4004 = fsub fast float %4002, %3970
  %4005 = fadd fast float %4004, %3978
  %4006 = fsub fast float %4003, %3971
  %4007 = fadd fast float %4006, %3978
  %4008 = extractvalue %dx.types.CBufRet.f32 %3969, 3
  %4009 = fmul fast float %4005, %4008
  %4010 = fmul fast float %4007, %4008
  %4011 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4012 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4013 = fsub fast float 1.000000e+00, %4011
  %4014 = fsub fast float 1.000000e+00, %4012
  %4015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4013, float %4014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = fcmp fast ugt float %4016, 0.000000e+00
  br i1 %4017, label %4018, label %4321

; <label>:4018                                    ; preds = %3980
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 2
  %4021 = fmul fast float %4020, %4016
  %4022 = extractvalue %dx.types.CBufRet.f32 %4019, 3
  %4023 = fadd fast float %4022, %4021
  %4024 = extractvalue %dx.types.CBufRet.f32 %3985, 2
  %4025 = fadd fast float %4023, %3992
  %4026 = fmul fast float %3998, %3986
  %4027 = call float @dx.op.tertiary.f32(i32 46, float %4001, float %3989, float %4026)  ; FMad(a,b,c)
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %4025, float %4024, float %4027)  ; FMad(a,b,c)
  %4029 = fsub fast float %4028, %3992
  %4030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.f32 %4030, 2
  %4032 = fsub fast float %4029, %4031
  %4033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4013, float %4014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4034 = extractvalue %dx.types.ResRet.f32 %4033, 0
  %4035 = extractvalue %dx.types.ResRet.f32 %4033, 1
  %4036 = extractvalue %dx.types.ResRet.f32 %4033, 2
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4013, float %4014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = fadd fast float %4038, %4034
  %4042 = fmul fast float %4041, 0x3F847AE140000000
  %4043 = fadd fast float %4039, %4035
  %4044 = fmul fast float %4043, 0x3F847AE140000000
  %4045 = fadd fast float %4040, %4036
  %4046 = fmul fast float %4045, 0x3F847AE140000000
  br label %4321

; <label>:4047                                    ; preds = %3907
  %4048 = and i32 %196, 1
  %4049 = icmp eq i32 %4048, 0
  br i1 %4049, label %4321, label %4050

; <label>:4050                                    ; preds = %4047
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 0
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4058 = extractvalue %dx.types.CBufRet.f32 %4053, 1
  %4059 = extractvalue %dx.types.CBufRet.f32 %4055, 1
  %4060 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4061 = extractvalue %dx.types.CBufRet.f32 %4053, 3
  %4062 = extractvalue %dx.types.CBufRet.f32 %4055, 3
  %4063 = fadd fast float %4060, %3966
  %4064 = fadd fast float %4061, %3967
  %4065 = fadd fast float %4062, %3968
  %4066 = fmul fast float %4063, %4052
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %4064, float %4054, float %4066)  ; FMad(a,b,c)
  %4068 = call float @dx.op.tertiary.f32(i32 46, float %4065, float %4056, float %4067)  ; FMad(a,b,c)
  %4069 = fmul fast float %4063, %4057
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %4064, float %4058, float %4069)  ; FMad(a,b,c)
  %4071 = call float @dx.op.tertiary.f32(i32 46, float %4065, float %4059, float %4070)  ; FMad(a,b,c)
  %4072 = fsub fast float %4068, %4060
  %4073 = fsub fast float %4071, %4061
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4078 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.i32 %4081, 0
  %4083 = extractvalue %dx.types.CBufRet.i32 %4081, 1
  %4084 = udiv i32 %4083, %4082
  %4085 = fsub fast float %4072, %4075
  %4086 = fsub fast float %4073, %4076
  %4087 = call float @dx.op.binary.f32(i32 35, float %4085, float 0.000000e+00)  ; FMax(a,b)
  %4088 = call float @dx.op.binary.f32(i32 35, float %4086, float 0.000000e+00)  ; FMax(a,b)
  %4089 = call float @dx.op.binary.f32(i32 36, float %4087, float %4077)  ; FMin(a,b)
  %4090 = call float @dx.op.binary.f32(i32 36, float %4088, float %4078)  ; FMin(a,b)
  %4091 = add i32 %4082, -1
  %4092 = add i32 %4084, -1
  %4093 = fmul fast float %4089, %4080
  %4094 = fmul fast float %4090, %4080
  %4095 = fptoui float %4093 to i32
  %4096 = fptoui float %4094 to i32
  %4097 = call i32 @dx.op.binary.i32(i32 40, i32 %4095, i32 %4091)  ; UMin(a,b)
  %4098 = call i32 @dx.op.binary.i32(i32 40, i32 %4096, i32 %4092)  ; UMin(a,b)
  %4099 = mul i32 %4098, %4082
  %4100 = add i32 %4099, %4097
  %4101 = shl i32 %4100, 2
  %4102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4101, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.i32 %4102, 0
  %4104 = icmp eq i32 %4103, -1
  br i1 %4104, label %4321, label %4105

; <label>:4105                                    ; preds = %4050
  %4106 = mul i32 %4103, 148
  %4107 = add i32 %4106, 4
  %4108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4107, i32 undef)  ; BufferLoad(srv,index,wot)
  %4109 = extractvalue %dx.types.ResRet.f32 %4108, 0
  %4110 = add i32 %4106, 8
  %4111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4110, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4113 = add i32 %4106, 36
  %4114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4113, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 0
  %4116 = add i32 %4106, 60
  %4117 = add i32 %4106, 92
  %4118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.i32 %4118, 0
  %4120 = add i32 %4106, 116
  %4121 = fsub fast float %4072, %4109
  %4122 = fsub fast float %4073, %4112
  %4123 = fmul fast float %4080, %4121
  %4124 = fmul fast float %4080, %4122
  %4125 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4126 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4127 = fsub fast float 1.000000e+00, %4126
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4130 = call float @dx.op.unary.f32(i32 83, float %4125)  ; DerivCoarseX(value)
  %4131 = call float @dx.op.unary.f32(i32 83, float %4127)  ; DerivCoarseX(value)
  %4132 = call float @dx.op.unary.f32(i32 84, float %4125)  ; DerivCoarseY(value)
  %4133 = call float @dx.op.unary.f32(i32 84, float %4127)  ; DerivCoarseY(value)
  %4134 = fmul fast float %4130, %4129
  %4135 = fmul fast float %4131, %4129
  %4136 = fmul fast float %4132, %4129
  %4137 = fmul fast float %4133, %4129
  %4138 = call float @dx.op.dot2.f32(i32 54, float %4136, float %4137, float %4136, float %4137)  ; Dot2(ax,ay,bx,by)
  %4139 = call float @dx.op.dot2.f32(i32 54, float %4134, float %4135, float %4134, float %4135)  ; Dot2(ax,ay,bx,by)
  %4140 = call float @dx.op.binary.f32(i32 35, float %4139, float %4138)  ; FMax(a,b)
  %4141 = call float @dx.op.unary.f32(i32 23, float %4140)  ; Log(value)
  %4142 = fmul fast float %4141, 5.000000e-01
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4145 = fadd fast float %4144, %4142
  %4146 = call float @dx.op.binary.f32(i32 35, float %4145, float 0.000000e+00)  ; FMax(a,b)
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4149 = fadd fast float %4148, %4146
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4152 = fadd fast float %4149, %4151
  %4153 = add i32 %4119, 0
  %4154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4153, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4155 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4154, i32 0)  ; GetDimensions(handle,mipLevel)
  %4156 = extractvalue %dx.types.Dimensions %4155, 0
  %4157 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4156)  ; FirstbitLo(value)
  %4158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.i32 %4158, 1
  %4160 = sub nsw i32 %4159, %4157
  %4161 = sitofp i32 %4160 to float
  %4162 = fsub fast float %4152, %4161
  %4163 = call float @dx.op.binary.f32(i32 35, float %4162, float 0.000000e+00)  ; FMax(a,b)
  %4164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4154, %dx.types.Handle %28, float %4125, float %4127, float %4115, float undef, i32 0, i32 0, i32 undef, float %4163)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4166 = fcmp ule float %4165, 0x3FE0101020000000
  %4167 = extractvalue %dx.types.CBufRet.i32 %4158, 0
  %4168 = and i32 %4167, 128
  %4169 = icmp ne i32 %4168, 0
  %4170 = and i1 %4166, %4169
  br i1 %4170, label %4321, label %4171

; <label>:4171                                    ; preds = %4105
  %4172 = add i32 %4106, 20
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = add i32 %4106, 24
  %4176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = add i32 %4106, 40
  %4179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = add i32 %4106, 96
  %4182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.i32 %4182, 0
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 2
  %4186 = fmul fast float %4185, %4125
  %4187 = fmul fast float %4185, %4127
  %4188 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4189 = fadd fast float %4186, %4188
  %4190 = fadd fast float %4187, %4188
  %4191 = add i32 %4183, 0
  %4192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4191, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4193 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4192, i32 0)  ; GetDimensions(handle,mipLevel)
  %4194 = extractvalue %dx.types.Dimensions %4193, 0
  %4195 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4194)  ; FirstbitLo(value)
  %4196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.i32 %4196, 1
  %4198 = sub nsw i32 %4197, %4195
  %4199 = sitofp i32 %4198 to float
  %4200 = fsub fast float %4149, %4199
  %4201 = call float @dx.op.binary.f32(i32 35, float %4200, float 0.000000e+00)  ; FMax(a,b)
  %4202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4192, %dx.types.Handle %28, float %4189, float %4190, float %4180, float undef, i32 0, i32 0, i32 undef, float %4201)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = fmul fast float %4203, %4174
  %4205 = fadd fast float %4204, %4177
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.CBufRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.CBufRet.f32 %4206, 2
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4214 = extractvalue %dx.types.CBufRet.f32 %4206, 3
  %4215 = fadd fast float %4211, %4072
  %4216 = fadd fast float %4213, %4073
  %4217 = fadd fast float %4205, %4214
  %4218 = fmul fast float %4215, %4207
  %4219 = call float @dx.op.tertiary.f32(i32 46, float %4216, float %4208, float %4218)  ; FMad(a,b,c)
  %4220 = call float @dx.op.tertiary.f32(i32 46, float %4217, float %4209, float %4219)  ; FMad(a,b,c)
  %4221 = fsub fast float %4220, %4214
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 2
  %4224 = fsub fast float %4221, %4223
  %4225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.i32 %4225, 0
  %4227 = call i32 @dx.op.binary.i32(i32 40, i32 %4103, i32 %4226)  ; UMin(a,b)
  %4228 = mul i32 %4227, 36
  %4229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.i32 %4229, 0
  %4231 = add i32 %4228, 4
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 0
  %4234 = fmul fast float %4233, %4125
  %4235 = fmul fast float %4233, %4127
  %4236 = extractvalue %dx.types.CBufRet.f32 %4232, 1
  %4237 = fadd fast float %4234, %4236
  %4238 = fadd fast float %4235, %4236
  %4239 = icmp eq i32 %4230, 0
  br i1 %4239, label %4308, label %4240

; <label>:4240                                    ; preds = %4171
  br label %4241

; <label>:4241                                    ; preds = %4298, %4240
  %4242 = phi float [ %4299, %4298 ], [ 0.000000e+00, %4240 ]
  %4243 = phi float [ %4300, %4298 ], [ 0.000000e+00, %4240 ]
  %4244 = phi float [ %4301, %4298 ], [ 0.000000e+00, %4240 ]
  %4245 = phi float [ %4302, %4298 ], [ 0.000000e+00, %4240 ]
  %4246 = phi float [ %4303, %4298 ], [ 0.000000e+00, %4240 ]
  %4247 = phi float [ %4304, %4298 ], [ 0.000000e+00, %4240 ]
  %4248 = phi i32 [ %4305, %4298 ], [ 0, %4240 ]
  %4249 = shl i32 %4248, 2
  %4250 = add i32 %4116, %4249
  %4251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = add i32 %4120, %4249
  %4254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.i32 %4254, 0
  %4256 = add i32 %4255, 0
  %4257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4258 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4257, i32 0)  ; GetDimensions(handle,mipLevel)
  %4259 = extractvalue %dx.types.Dimensions %4258, 0
  %4260 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4259)  ; FirstbitLo(value)
  %4261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.i32 %4261, 1
  %4263 = sub nsw i32 %4262, %4260
  %4264 = sitofp i32 %4263 to float
  %4265 = fsub fast float %4149, %4264
  %4266 = call float @dx.op.binary.f32(i32 35, float %4265, float 0.000000e+00)  ; FMax(a,b)
  %4267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4257, %dx.types.Handle %28, float %4237, float %4238, float %4252, float undef, i32 0, i32 0, i32 undef, float %4266)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = fcmp fast ogt float %4268, 0.000000e+00
  br i1 %4269, label %4270, label %4298

; <label>:4270                                    ; preds = %4241
  %4271 = add i32 %4231, %4249
  %4272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4271, i32 undef)  ; BufferLoad(srv,index,wot)
  %4273 = extractvalue %dx.types.ResRet.i32 %4272, 0
  %4274 = and i32 %4273, 32767
  %4275 = mul nuw nsw i32 %4274, 928
  %4276 = add nuw nsw i32 %4275, 48
  %4277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = extractvalue %dx.types.ResRet.f32 %4277, 1
  %4280 = extractvalue %dx.types.ResRet.f32 %4277, 2
  %4281 = add nuw nsw i32 %4275, 60
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = extractvalue %dx.types.ResRet.f32 %4282, 1
  %4285 = extractvalue %dx.types.ResRet.f32 %4282, 2
  %4286 = fmul fast float %4278, %4268
  %4287 = fmul fast float %4279, %4268
  %4288 = fmul fast float %4280, %4268
  %4289 = fadd fast float %4286, %4242
  %4290 = fadd fast float %4287, %4243
  %4291 = fadd fast float %4288, %4244
  %4292 = fmul fast float %4283, %4268
  %4293 = fmul fast float %4284, %4268
  %4294 = fmul fast float %4285, %4268
  %4295 = fadd fast float %4292, %4245
  %4296 = fadd fast float %4293, %4246
  %4297 = fadd fast float %4294, %4247
  br label %4298

; <label>:4298                                    ; preds = %4270, %4241
  %4299 = phi float [ %4289, %4270 ], [ %4242, %4241 ]
  %4300 = phi float [ %4290, %4270 ], [ %4243, %4241 ]
  %4301 = phi float [ %4291, %4270 ], [ %4244, %4241 ]
  %4302 = phi float [ %4295, %4270 ], [ %4245, %4241 ]
  %4303 = phi float [ %4296, %4270 ], [ %4246, %4241 ]
  %4304 = phi float [ %4297, %4270 ], [ %4247, %4241 ]
  %4305 = add nuw i32 %4248, 1
  %4306 = icmp eq i32 %4305, %4230
  br i1 %4306, label %4307, label %4241

; <label>:4307                                    ; preds = %4298
  br label %4308

; <label>:4308                                    ; preds = %4307, %4171
  %4309 = phi float [ 0.000000e+00, %4171 ], [ %4299, %4307 ]
  %4310 = phi float [ 0.000000e+00, %4171 ], [ %4300, %4307 ]
  %4311 = phi float [ 0.000000e+00, %4171 ], [ %4301, %4307 ]
  %4312 = phi float [ 0.000000e+00, %4171 ], [ %4302, %4307 ]
  %4313 = phi float [ 0.000000e+00, %4171 ], [ %4303, %4307 ]
  %4314 = phi float [ 0.000000e+00, %4171 ], [ %4304, %4307 ]
  %4315 = fadd fast float %4312, %4309
  %4316 = fmul fast float %4315, 0x3F847AE140000000
  %4317 = fadd fast float %4313, %4310
  %4318 = fmul fast float %4317, 0x3F847AE140000000
  %4319 = fadd fast float %4314, %4311
  %4320 = fmul fast float %4319, 0x3F847AE140000000
  br label %4321

; <label>:4321                                    ; preds = %4308, %4105, %4050, %4047, %4018, %3980
  %4322 = phi float [ %4032, %4018 ], [ -1.310720e+05, %3980 ], [ %4224, %4308 ], [ -1.310720e+05, %4050 ], [ -1.310720e+05, %4105 ], [ -1.310720e+05, %4047 ]
  %4323 = phi float [ %4042, %4018 ], [ 0.000000e+00, %3980 ], [ %4316, %4308 ], [ 0.000000e+00, %4050 ], [ 0.000000e+00, %4105 ], [ 0.000000e+00, %4047 ]
  %4324 = phi float [ %4044, %4018 ], [ 0.000000e+00, %3980 ], [ %4318, %4308 ], [ 0.000000e+00, %4050 ], [ 0.000000e+00, %4105 ], [ 0.000000e+00, %4047 ]
  %4325 = phi float [ %4046, %4018 ], [ 0.000000e+00, %3980 ], [ %4320, %4308 ], [ 0.000000e+00, %4050 ], [ 0.000000e+00, %4105 ], [ 0.000000e+00, %4047 ]
  %4326 = phi i1 [ true, %4018 ], [ false, %3980 ], [ true, %4308 ], [ false, %4050 ], [ false, %4105 ], [ false, %4047 ]
  %4327 = and i32 %196, 3
  %4328 = icmp eq i32 %4327, 1
  %4329 = select i1 %4328, float 1.000000e+00, float 0.000000e+00
  %4330 = fsub fast float %4322, %167
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = select i1 %4326, float %4331, float 1.000000e+00
  %4333 = fmul fast float %4332, %4329
  %4334 = icmp eq i32 %4327, 3
  %4335 = select i1 %4334, float 1.000000e+00, float %4333
  %4336 = call float @dx.op.binary.f32(i32 35, float %3923, float %4335)  ; FMax(a,b)
  %4337 = fcmp fast olt float %4335, 1.000000e+00
  %4338 = fcmp uge float %49, 0.000000e+00
  %4339 = and i1 %4338, %4337
  br i1 %4339, label %4340, label %4350

; <label>:4340                                    ; preds = %4321
  %4341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = extractvalue %dx.types.ResRet.f32 %4341, 1
  %4344 = extractvalue %dx.types.ResRet.f32 %4341, 2
  %4345 = fadd fast float %4342, %4336
  %4346 = fcmp ule float %48, 0.000000e+00
  %4347 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4348 = select i1 %4346, float %4347, float 1.000000e+00
  %4349 = fmul fast float %4348, %4344
  br label %4350

; <label>:4350                                    ; preds = %4340, %4321
  %4351 = phi float [ %4345, %4340 ], [ %4336, %4321 ]
  %4352 = phi float [ %4343, %4340 ], [ 0.000000e+00, %4321 ]
  %4353 = phi float [ %4349, %4340 ], [ 0.000000e+00, %4321 ]
  %4354 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4355 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4356 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4357 = fcmp fast une float %4355, 0.000000e+00
  %4358 = fcmp fast une float %4356, 0.000000e+00
  %4359 = or i1 %4357, %4358
  br i1 %4359, label %4360, label %4919

; <label>:4360                                    ; preds = %4350
  br i1 %4357, label %4361, label %4634

; <label>:4361                                    ; preds = %4360
  %4362 = call float @dx.op.unary.f32(i32 23, float %3920)  ; Log(value)
  %4363 = fmul fast float %4362, 4.000000e+00
  %4364 = call float @dx.op.unary.f32(i32 21, float %4363)  ; Exp(value)
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 0
  %4367 = fmul fast float %4366, %36
  %4368 = fmul fast float %4366, %37
  %4369 = fmul fast float %4366, %38
  %4370 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4371 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4372 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4373 = call float @dx.op.unary.f32(i32 23, float %4370)  ; Log(value)
  %4374 = call float @dx.op.unary.f32(i32 23, float %4371)  ; Log(value)
  %4375 = call float @dx.op.unary.f32(i32 23, float %4372)  ; Log(value)
  %4376 = fmul fast float %4373, 4.000000e+00
  %4377 = fmul fast float %4374, 4.000000e+00
  %4378 = fmul fast float %4375, 4.000000e+00
  %4379 = call float @dx.op.unary.f32(i32 21, float %4376)  ; Exp(value)
  %4380 = call float @dx.op.unary.f32(i32 21, float %4377)  ; Exp(value)
  %4381 = call float @dx.op.unary.f32(i32 21, float %4378)  ; Exp(value)
  %4382 = fadd fast float %4380, %4379
  %4383 = fadd fast float %4382, %4381
  %4384 = fdiv fast float 1.000000e+00, %4383
  %4385 = fmul fast float %4384, %4379
  %4386 = fcmp fast ogt float %45, 0.000000e+00
  %4387 = fcmp fast ogt float %46, 0.000000e+00
  %4388 = fcmp fast ogt float %47, 0.000000e+00
  %4389 = fcmp fast olt float %45, 0.000000e+00
  %4390 = fcmp fast olt float %46, 0.000000e+00
  %4391 = fcmp fast olt float %47, 0.000000e+00
  %4392 = zext i1 %4386 to i32
  %4393 = zext i1 %4387 to i32
  %4394 = zext i1 %4388 to i32
  %4395 = zext i1 %4389 to i32
  %4396 = zext i1 %4390 to i32
  %4397 = zext i1 %4391 to i32
  %4398 = sub nsw i32 %4392, %4395
  %4399 = sub nsw i32 %4393, %4396
  %4400 = sub nsw i32 %4394, %4397
  %4401 = call float @dx.op.unary.f32(i32 83, float %4367)  ; DerivCoarseX(value)
  %4402 = call float @dx.op.unary.f32(i32 83, float %4368)  ; DerivCoarseX(value)
  %4403 = call float @dx.op.unary.f32(i32 83, float %4369)  ; DerivCoarseX(value)
  %4404 = call float @dx.op.unary.f32(i32 84, float %4367)  ; DerivCoarseY(value)
  %4405 = call float @dx.op.unary.f32(i32 84, float %4368)  ; DerivCoarseY(value)
  %4406 = call float @dx.op.unary.f32(i32 84, float %4369)  ; DerivCoarseY(value)
  %4407 = fcmp fast ole float %228, %4385
  %4408 = fmul fast float %4384, %4382
  %4409 = fcmp fast ole float %228, %4408
  %4410 = select i1 %4409, float %4369, float %4367
  %4411 = select i1 %4409, float %4367, float %4368
  %4412 = select i1 %4407, float %4368, float %4410
  %4413 = select i1 %4407, float %4369, float %4411
  %4414 = select i1 %4409, float %4403, float %4401
  %4415 = select i1 %4409, float %4401, float %4402
  %4416 = select i1 %4407, float %4402, float %4414
  %4417 = select i1 %4407, float %4403, float %4415
  %4418 = select i1 %4409, float %4406, float %4404
  %4419 = select i1 %4409, float %4404, float %4405
  %4420 = select i1 %4407, float %4405, float %4418
  %4421 = select i1 %4407, float %4406, float %4419
  %4422 = call float @dx.op.unary.f32(i32 27, float %4412)  ; Round_ni(value)
  %4423 = call float @dx.op.unary.f32(i32 27, float %4413)  ; Round_ni(value)
  %4424 = fptosi float %4422 to i32
  %4425 = fptosi float %4423 to i32
  %4426 = xor i32 %4425, %4424
  %4427 = sitofp i32 %4426 to float
  %4428 = fptosi float %4427 to i32
  %4429 = sitofp i32 %4428 to float
  %4430 = fmul fast float %4429, 0x3FE3C6EF40000000
  %4431 = frem fast float %4422, 2.560000e+02
  %4432 = frem fast float %4423, 2.560000e+02
  %4433 = fptoui float %4431 to i32
  %4434 = fptoui float %4432 to i32
  %4435 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4433, i32 %4434, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = extractvalue %dx.types.ResRet.f32 %4435, 1
  %4438 = extractvalue %dx.types.ResRet.f32 %4435, 2
  %4439 = fadd fast float %4436, %4430
  %4440 = fadd fast float %4437, %4430
  %4441 = fadd fast float %4438, %4430
  %4442 = call float @dx.op.unary.f32(i32 22, float %4439)  ; Frc(value)
  %4443 = call float @dx.op.unary.f32(i32 22, float %4440)  ; Frc(value)
  %4444 = call float @dx.op.unary.f32(i32 22, float %4441)  ; Frc(value)
  %4445 = fmul fast float %4444, 0x401921FB60000000
  %4446 = call float @dx.op.unary.f32(i32 13, float %4445)  ; Sin(value)
  %4447 = call float @dx.op.unary.f32(i32 12, float %4445)  ; Cos(value)
  %4448 = fsub fast float -0.000000e+00, %4447
  %4449 = fmul fast float %4447, %4412
  %4450 = call float @dx.op.tertiary.f32(i32 46, float %4446, float %4413, float %4449)  ; FMad(a,b,c)
  %4451 = fmul fast float %4446, %4412
  %4452 = call float @dx.op.tertiary.f32(i32 46, float %4448, float %4413, float %4451)  ; FMad(a,b,c)
  %4453 = fadd fast float %4450, %4442
  %4454 = fadd fast float %4452, %4443
  %4455 = extractvalue %dx.types.CBufRet.f32 %4365, 3
  %4456 = bitcast float %4455 to i32
  %4457 = icmp eq i32 %4456, 0
  br i1 %4457, label %4496, label %4458

; <label>:4458                                    ; preds = %4361
  %4459 = add i32 %4456, 0
  %4460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4461 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4460, %dx.types.Handle %75, float %4453, float %4454, float undef, float undef, i32 0, i32 0, i32 undef, float %4416, float %4417, float undef, float %4420, float %4421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4462 = extractvalue %dx.types.ResRet.f32 %4461, 0
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 1
  %4465 = extractvalue %dx.types.CBufRet.f32 %4463, 2
  %4466 = fsub fast float 1.000000e+00, %4355
  %4467 = call float @dx.op.binary.f32(i32 35, float %4466, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4468 = bitcast float %4355 to i32
  %4469 = sitofp i32 %4468 to float
  %4470 = fadd fast float %4469, 0xC1CFBF8940000000
  %4471 = fmul fast float %4465, %4470
  %4472 = fadd fast float %4471, 0x41CFBF8940000000
  %4473 = fptosi float %4472 to i32
  %4474 = bitcast i32 %4473 to float
  %4475 = bitcast float %4467 to i32
  %4476 = sitofp i32 %4475 to float
  %4477 = fadd fast float %4476, 0xC1CFBF8940000000
  %4478 = fmul fast float %4477, %4465
  %4479 = fadd fast float %4478, 0x41CFBF8940000000
  %4480 = fptosi float %4479 to i32
  %4481 = bitcast i32 %4480 to float
  %4482 = fmul fast float %4474, %4464
  %4483 = fmul fast float %4481, %4464
  %4484 = fsub fast float %4467, %4482
  %4485 = fadd fast float %4483, %4467
  %4486 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4488 = fsub fast float %4462, %4486
  %4489 = fsub fast float %4487, %4486
  %4490 = bitcast float %4489 to i32
  %4491 = sub nsw i32 2129859010, %4490
  %4492 = bitcast i32 %4491 to float
  %4493 = fmul fast float %4492, %4488
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fcmp fast olt float %4494, 0x3F70101020000000
  br i1 %4495, label %4634, label %4496

; <label>:4496                                    ; preds = %4458, %4361
  %4497 = phi float [ %4494, %4458 ], [ %4355, %4361 ]
  %4498 = fmul fast float %4497, %4364
  %4499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.i32 %4499, 1
  %4501 = extractvalue %dx.types.CBufRet.i32 %4499, 0
  %4502 = add i32 %4501, 0
  %4503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4504 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4503, %dx.types.Handle %74, float %4453, float %4454, float undef, float undef, i32 0, i32 0, i32 undef, float %4416, float %4417, float undef, float %4420, float %4421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4505 = extractvalue %dx.types.ResRet.f32 %4504, 0
  %4506 = extractvalue %dx.types.ResRet.f32 %4504, 1
  %4507 = extractvalue %dx.types.ResRet.f32 %4504, 2
  %4508 = extractvalue %dx.types.ResRet.f32 %4504, 3
  %4509 = and i32 %4500, 255
  %4510 = uitofp i32 %4509 to float
  %4511 = lshr i32 %4500, 8
  %4512 = and i32 %4511, 255
  %4513 = uitofp i32 %4512 to float
  %4514 = fmul fast float %4508, %4510
  %4515 = fadd fast float %4514, %4513
  %4516 = fmul fast float %4515, 0x3F70101000000000
  %4517 = fadd fast float %4516, 0xBFB99999A0000000
  %4518 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4519 = fmul fast float %4518, 0x3FF1C71C80000000
  %4520 = call float @dx.op.binary.f32(i32 36, float %4516, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4521 = fsub fast float 1.000000e+00, %4519
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %4522, %4505
  %4524 = fmul fast float %4522, %4506
  %4525 = fmul fast float %4522, %4507
  %4526 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4529 = fmul fast float %4519, %4505
  %4530 = fmul fast float %4519, %4506
  %4531 = fmul fast float %4519, %4507
  %4532 = fadd fast float %4529, %4520
  %4533 = fadd fast float %4530, %4520
  %4534 = fadd fast float %4531, %4520
  %4535 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4536 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4537 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.i32 %4538, 3
  %4540 = extractvalue %dx.types.CBufRet.i32 %4538, 2
  %4541 = add i32 %4540, 0
  %4542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4543 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4542, %dx.types.Handle %74, float %4453, float %4454, float undef, float undef, i32 0, i32 0, i32 undef, float %4416, float %4417, float undef, float %4420, float %4421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.ResRet.f32 %4543, 3
  %4548 = and i32 %4539, 255
  %4549 = uitofp i32 %4548 to float
  %4550 = lshr i32 %4539, 8
  %4551 = and i32 %4550, 255
  %4552 = uitofp i32 %4551 to float
  %4553 = lshr i32 %4539, 16
  %4554 = and i32 %4553, 255
  %4555 = uitofp i32 %4554 to float
  %4556 = fmul fast float %4555, 0x3F70101000000000
  %4557 = fmul fast float %4544, %4549
  %4558 = fadd fast float %4557, %4552
  %4559 = fmul fast float %4558, 0x3F70101000000000
  %4560 = fadd fast float %4545, -5.000000e-01
  %4561 = fadd fast float %4547, -5.000000e-01
  %4562 = fmul fast float %4560, %4556
  %4563 = fmul fast float %4561, %4556
  %4564 = fadd fast float %4562, 5.000000e-01
  %4565 = fadd fast float %4563, 5.000000e-01
  %4566 = fmul fast float %4564, 2.000000e+00
  %4567 = fadd fast float %4566, -1.000000e+00
  %4568 = fmul fast float %4565, 2.000000e+00
  %4569 = fadd fast float %4568, -1.000000e+00
  %4570 = fadd fast float %4567, %4569
  %4571 = fmul fast float %4570, 5.000000e-01
  %4572 = fsub fast float %4567, %4569
  %4573 = fmul fast float %4572, 5.000000e-01
  %4574 = call float @dx.op.unary.f32(i32 6, float %4571)  ; FAbs(value)
  %4575 = fsub fast float 1.000000e+00, %4574
  %4576 = call float @dx.op.unary.f32(i32 6, float %4573)  ; FAbs(value)
  %4577 = fsub fast float %4575, %4576
  %4578 = call float @dx.op.dot3.f32(i32 55, float %4571, float %4573, float %4577, float %4571, float %4573, float %4577)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call float @dx.op.unary.f32(i32 25, float %4578)  ; Rsqrt(value)
  %4580 = fmul fast float %4571, %4579
  %4581 = fmul fast float %4573, %4579
  %4582 = select i1 %4409, i32 %4399, i32 %4400
  %4583 = select i1 %4407, i32 %4398, i32 %4582
  %4584 = sitofp i32 %4583 to float
  %4585 = fmul fast float %4577, %4584
  %4586 = fmul fast float %4585, %4579
  %4587 = select i1 %4409, float %4586, float %4581
  %4588 = select i1 %4409, float %4581, float %4586
  %4589 = select i1 %4407, float %4586, float %4580
  %4590 = select i1 %4407, float %4581, float %4587
  %4591 = select i1 %4407, float %4580, float %4588
  %4592 = fsub fast float %4526, %3959
  %4593 = fsub fast float %4527, %3960
  %4594 = fsub fast float %4528, %3961
  %4595 = fmul fast float %4592, %4498
  %4596 = fmul fast float %4593, %4498
  %4597 = fmul fast float %4594, %4498
  %4598 = fadd fast float %4595, %3959
  %4599 = fadd fast float %4596, %3960
  %4600 = fadd fast float %4597, %3961
  %4601 = fsub fast float %4535, %3944
  %4602 = fsub fast float %4536, %3945
  %4603 = fsub fast float %4537, %3946
  %4604 = fmul fast float %4601, %4498
  %4605 = fmul fast float %4602, %4498
  %4606 = fmul fast float %4603, %4498
  %4607 = fadd fast float %4604, %3944
  %4608 = fadd fast float %4605, %3945
  %4609 = fadd fast float %4606, %3946
  %4610 = fadd fast float %4589, %3908
  %4611 = fadd fast float %4590, %3909
  %4612 = fadd fast float %4591, %3910
  %4613 = call float @dx.op.dot3.f32(i32 55, float %4610, float %4611, float %4612, float %4610, float %4611, float %4612)  ; Dot3(ax,ay,az,bx,by,bz)
  %4614 = call float @dx.op.unary.f32(i32 25, float %4613)  ; Rsqrt(value)
  %4615 = fmul fast float %4610, %4614
  %4616 = fmul fast float %4611, %4614
  %4617 = fmul fast float %4612, %4614
  %4618 = fsub fast float %4615, %3908
  %4619 = fsub fast float %4616, %3909
  %4620 = fsub fast float %4617, %3910
  %4621 = fmul fast float %4618, %4498
  %4622 = fmul fast float %4619, %4498
  %4623 = fmul fast float %4620, %4498
  %4624 = fadd fast float %4621, %3908
  %4625 = fadd fast float %4622, %3909
  %4626 = fadd fast float %4623, %3910
  %4627 = call float @dx.op.binary.f32(i32 36, float %3920, float %4546)  ; FMin(a,b)
  %4628 = fsub fast float %4627, %3920
  %4629 = fmul fast float %4628, %4498
  %4630 = fadd fast float %4629, %3920
  %4631 = fsub fast float %4559, %3947
  %4632 = fmul fast float %4631, %4498
  %4633 = fadd fast float %4632, %3947
  br label %4634

; <label>:4634                                    ; preds = %4496, %4458, %4360
  %4635 = phi float [ %4607, %4496 ], [ %3944, %4458 ], [ %3944, %4360 ]
  %4636 = phi float [ %4608, %4496 ], [ %3945, %4458 ], [ %3945, %4360 ]
  %4637 = phi float [ %4609, %4496 ], [ %3946, %4458 ], [ %3946, %4360 ]
  %4638 = phi float [ %4624, %4496 ], [ %3908, %4458 ], [ %3908, %4360 ]
  %4639 = phi float [ %4625, %4496 ], [ %3909, %4458 ], [ %3909, %4360 ]
  %4640 = phi float [ %4626, %4496 ], [ %3910, %4458 ], [ %3910, %4360 ]
  %4641 = phi float [ %4598, %4496 ], [ %3959, %4458 ], [ %3959, %4360 ]
  %4642 = phi float [ %4599, %4496 ], [ %3960, %4458 ], [ %3960, %4360 ]
  %4643 = phi float [ %4600, %4496 ], [ %3961, %4458 ], [ %3961, %4360 ]
  %4644 = phi float [ %4633, %4496 ], [ %3947, %4458 ], [ %3947, %4360 ]
  %4645 = phi float [ %4630, %4496 ], [ %3920, %4458 ], [ %3920, %4360 ]
  br i1 %4358, label %4646, label %4919

; <label>:4646                                    ; preds = %4634
  %4647 = call float @dx.op.unary.f32(i32 23, float %4645)  ; Log(value)
  %4648 = fmul fast float %4647, 4.000000e+00
  %4649 = call float @dx.op.unary.f32(i32 21, float %4648)  ; Exp(value)
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 0
  %4652 = fmul fast float %4651, %36
  %4653 = fmul fast float %4651, %37
  %4654 = fmul fast float %4651, %38
  %4655 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4656 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4657 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4658 = call float @dx.op.unary.f32(i32 23, float %4655)  ; Log(value)
  %4659 = call float @dx.op.unary.f32(i32 23, float %4656)  ; Log(value)
  %4660 = call float @dx.op.unary.f32(i32 23, float %4657)  ; Log(value)
  %4661 = fmul fast float %4658, 4.000000e+00
  %4662 = fmul fast float %4659, 4.000000e+00
  %4663 = fmul fast float %4660, 4.000000e+00
  %4664 = call float @dx.op.unary.f32(i32 21, float %4661)  ; Exp(value)
  %4665 = call float @dx.op.unary.f32(i32 21, float %4662)  ; Exp(value)
  %4666 = call float @dx.op.unary.f32(i32 21, float %4663)  ; Exp(value)
  %4667 = fadd fast float %4665, %4664
  %4668 = fadd fast float %4667, %4666
  %4669 = fdiv fast float 1.000000e+00, %4668
  %4670 = fmul fast float %4669, %4664
  %4671 = fcmp fast ogt float %45, 0.000000e+00
  %4672 = fcmp fast ogt float %46, 0.000000e+00
  %4673 = fcmp fast ogt float %47, 0.000000e+00
  %4674 = fcmp fast olt float %45, 0.000000e+00
  %4675 = fcmp fast olt float %46, 0.000000e+00
  %4676 = fcmp fast olt float %47, 0.000000e+00
  %4677 = zext i1 %4671 to i32
  %4678 = zext i1 %4672 to i32
  %4679 = zext i1 %4673 to i32
  %4680 = zext i1 %4674 to i32
  %4681 = zext i1 %4675 to i32
  %4682 = zext i1 %4676 to i32
  %4683 = sub nsw i32 %4677, %4680
  %4684 = sub nsw i32 %4678, %4681
  %4685 = sub nsw i32 %4679, %4682
  %4686 = call float @dx.op.unary.f32(i32 83, float %4652)  ; DerivCoarseX(value)
  %4687 = call float @dx.op.unary.f32(i32 83, float %4653)  ; DerivCoarseX(value)
  %4688 = call float @dx.op.unary.f32(i32 83, float %4654)  ; DerivCoarseX(value)
  %4689 = call float @dx.op.unary.f32(i32 84, float %4652)  ; DerivCoarseY(value)
  %4690 = call float @dx.op.unary.f32(i32 84, float %4653)  ; DerivCoarseY(value)
  %4691 = call float @dx.op.unary.f32(i32 84, float %4654)  ; DerivCoarseY(value)
  %4692 = fcmp fast ole float %228, %4670
  %4693 = fmul fast float %4669, %4667
  %4694 = fcmp fast ole float %228, %4693
  %4695 = select i1 %4694, float %4654, float %4652
  %4696 = select i1 %4694, float %4652, float %4653
  %4697 = select i1 %4692, float %4653, float %4695
  %4698 = select i1 %4692, float %4654, float %4696
  %4699 = select i1 %4694, float %4688, float %4686
  %4700 = select i1 %4694, float %4686, float %4687
  %4701 = select i1 %4692, float %4687, float %4699
  %4702 = select i1 %4692, float %4688, float %4700
  %4703 = select i1 %4694, float %4691, float %4689
  %4704 = select i1 %4694, float %4689, float %4690
  %4705 = select i1 %4692, float %4690, float %4703
  %4706 = select i1 %4692, float %4691, float %4704
  %4707 = call float @dx.op.unary.f32(i32 27, float %4697)  ; Round_ni(value)
  %4708 = call float @dx.op.unary.f32(i32 27, float %4698)  ; Round_ni(value)
  %4709 = fptosi float %4707 to i32
  %4710 = fptosi float %4708 to i32
  %4711 = xor i32 %4710, %4709
  %4712 = sitofp i32 %4711 to float
  %4713 = fptosi float %4712 to i32
  %4714 = sitofp i32 %4713 to float
  %4715 = fmul fast float %4714, 0x3FE3C6EF40000000
  %4716 = frem fast float %4707, 2.560000e+02
  %4717 = frem fast float %4708, 2.560000e+02
  %4718 = fptoui float %4716 to i32
  %4719 = fptoui float %4717 to i32
  %4720 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4718, i32 %4719, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4721 = extractvalue %dx.types.ResRet.f32 %4720, 0
  %4722 = extractvalue %dx.types.ResRet.f32 %4720, 1
  %4723 = extractvalue %dx.types.ResRet.f32 %4720, 2
  %4724 = fadd fast float %4721, %4715
  %4725 = fadd fast float %4722, %4715
  %4726 = fadd fast float %4723, %4715
  %4727 = call float @dx.op.unary.f32(i32 22, float %4724)  ; Frc(value)
  %4728 = call float @dx.op.unary.f32(i32 22, float %4725)  ; Frc(value)
  %4729 = call float @dx.op.unary.f32(i32 22, float %4726)  ; Frc(value)
  %4730 = fmul fast float %4729, 0x401921FB60000000
  %4731 = call float @dx.op.unary.f32(i32 13, float %4730)  ; Sin(value)
  %4732 = call float @dx.op.unary.f32(i32 12, float %4730)  ; Cos(value)
  %4733 = fsub fast float -0.000000e+00, %4732
  %4734 = fmul fast float %4732, %4697
  %4735 = call float @dx.op.tertiary.f32(i32 46, float %4731, float %4698, float %4734)  ; FMad(a,b,c)
  %4736 = fmul fast float %4731, %4697
  %4737 = call float @dx.op.tertiary.f32(i32 46, float %4733, float %4698, float %4736)  ; FMad(a,b,c)
  %4738 = fadd fast float %4735, %4727
  %4739 = fadd fast float %4737, %4728
  %4740 = extractvalue %dx.types.CBufRet.f32 %4650, 3
  %4741 = bitcast float %4740 to i32
  %4742 = icmp eq i32 %4741, 0
  br i1 %4742, label %4781, label %4743

; <label>:4743                                    ; preds = %4646
  %4744 = add i32 %4741, 0
  %4745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4744, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4746 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4745, %dx.types.Handle %75, float %4738, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float %4701, float %4702, float undef, float %4705, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 0
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 1
  %4750 = extractvalue %dx.types.CBufRet.f32 %4748, 2
  %4751 = fsub fast float 1.000000e+00, %4356
  %4752 = call float @dx.op.binary.f32(i32 35, float %4751, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4753 = bitcast float %4356 to i32
  %4754 = sitofp i32 %4753 to float
  %4755 = fadd fast float %4754, 0xC1CFBF8940000000
  %4756 = fmul fast float %4750, %4755
  %4757 = fadd fast float %4756, 0x41CFBF8940000000
  %4758 = fptosi float %4757 to i32
  %4759 = bitcast i32 %4758 to float
  %4760 = bitcast float %4752 to i32
  %4761 = sitofp i32 %4760 to float
  %4762 = fadd fast float %4761, 0xC1CFBF8940000000
  %4763 = fmul fast float %4762, %4750
  %4764 = fadd fast float %4763, 0x41CFBF8940000000
  %4765 = fptosi float %4764 to i32
  %4766 = bitcast i32 %4765 to float
  %4767 = fmul fast float %4759, %4749
  %4768 = fmul fast float %4766, %4749
  %4769 = fsub fast float %4752, %4767
  %4770 = fadd fast float %4768, %4752
  %4771 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4773 = fsub fast float %4747, %4771
  %4774 = fsub fast float %4772, %4771
  %4775 = bitcast float %4774 to i32
  %4776 = sub nsw i32 2129859010, %4775
  %4777 = bitcast i32 %4776 to float
  %4778 = fmul fast float %4777, %4773
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fcmp fast olt float %4779, 0x3F70101020000000
  br i1 %4780, label %4919, label %4781

; <label>:4781                                    ; preds = %4743, %4646
  %4782 = phi float [ %4779, %4743 ], [ %4356, %4646 ]
  %4783 = fmul fast float %4782, %4649
  %4784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.i32 %4784, 1
  %4786 = extractvalue %dx.types.CBufRet.i32 %4784, 0
  %4787 = add i32 %4786, 0
  %4788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4789 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4788, %dx.types.Handle %74, float %4738, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float %4701, float %4702, float undef, float %4705, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4790 = extractvalue %dx.types.ResRet.f32 %4789, 0
  %4791 = extractvalue %dx.types.ResRet.f32 %4789, 1
  %4792 = extractvalue %dx.types.ResRet.f32 %4789, 2
  %4793 = extractvalue %dx.types.ResRet.f32 %4789, 3
  %4794 = and i32 %4785, 255
  %4795 = uitofp i32 %4794 to float
  %4796 = lshr i32 %4785, 8
  %4797 = and i32 %4796, 255
  %4798 = uitofp i32 %4797 to float
  %4799 = fmul fast float %4793, %4795
  %4800 = fadd fast float %4799, %4798
  %4801 = fmul fast float %4800, 0x3F70101000000000
  %4802 = fadd fast float %4801, 0xBFB99999A0000000
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fmul fast float %4803, 0x3FF1C71C80000000
  %4805 = call float @dx.op.binary.f32(i32 36, float %4801, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4806 = fsub fast float 1.000000e+00, %4804
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = fmul fast float %4807, %4790
  %4809 = fmul fast float %4807, %4791
  %4810 = fmul fast float %4807, %4792
  %4811 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4812 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4813 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4814 = fmul fast float %4804, %4790
  %4815 = fmul fast float %4804, %4791
  %4816 = fmul fast float %4804, %4792
  %4817 = fadd fast float %4814, %4805
  %4818 = fadd fast float %4815, %4805
  %4819 = fadd fast float %4816, %4805
  %4820 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4821 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4822 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.i32 %4823, 3
  %4825 = extractvalue %dx.types.CBufRet.i32 %4823, 2
  %4826 = add i32 %4825, 0
  %4827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4828 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4827, %dx.types.Handle %74, float %4738, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float %4701, float %4702, float undef, float %4705, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.ResRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.ResRet.f32 %4828, 2
  %4832 = extractvalue %dx.types.ResRet.f32 %4828, 3
  %4833 = and i32 %4824, 255
  %4834 = uitofp i32 %4833 to float
  %4835 = lshr i32 %4824, 8
  %4836 = and i32 %4835, 255
  %4837 = uitofp i32 %4836 to float
  %4838 = lshr i32 %4824, 16
  %4839 = and i32 %4838, 255
  %4840 = uitofp i32 %4839 to float
  %4841 = fmul fast float %4840, 0x3F70101000000000
  %4842 = fmul fast float %4829, %4834
  %4843 = fadd fast float %4842, %4837
  %4844 = fmul fast float %4843, 0x3F70101000000000
  %4845 = fadd fast float %4830, -5.000000e-01
  %4846 = fadd fast float %4832, -5.000000e-01
  %4847 = fmul fast float %4845, %4841
  %4848 = fmul fast float %4846, %4841
  %4849 = fadd fast float %4847, 5.000000e-01
  %4850 = fadd fast float %4848, 5.000000e-01
  %4851 = fmul fast float %4849, 2.000000e+00
  %4852 = fadd fast float %4851, -1.000000e+00
  %4853 = fmul fast float %4850, 2.000000e+00
  %4854 = fadd fast float %4853, -1.000000e+00
  %4855 = fadd fast float %4852, %4854
  %4856 = fmul fast float %4855, 5.000000e-01
  %4857 = fsub fast float %4852, %4854
  %4858 = fmul fast float %4857, 5.000000e-01
  %4859 = call float @dx.op.unary.f32(i32 6, float %4856)  ; FAbs(value)
  %4860 = fsub fast float 1.000000e+00, %4859
  %4861 = call float @dx.op.unary.f32(i32 6, float %4858)  ; FAbs(value)
  %4862 = fsub fast float %4860, %4861
  %4863 = call float @dx.op.dot3.f32(i32 55, float %4856, float %4858, float %4862, float %4856, float %4858, float %4862)  ; Dot3(ax,ay,az,bx,by,bz)
  %4864 = call float @dx.op.unary.f32(i32 25, float %4863)  ; Rsqrt(value)
  %4865 = fmul fast float %4856, %4864
  %4866 = fmul fast float %4858, %4864
  %4867 = select i1 %4694, i32 %4684, i32 %4685
  %4868 = select i1 %4692, i32 %4683, i32 %4867
  %4869 = sitofp i32 %4868 to float
  %4870 = fmul fast float %4862, %4869
  %4871 = fmul fast float %4870, %4864
  %4872 = select i1 %4694, float %4871, float %4866
  %4873 = select i1 %4694, float %4866, float %4871
  %4874 = select i1 %4692, float %4871, float %4865
  %4875 = select i1 %4692, float %4866, float %4872
  %4876 = select i1 %4692, float %4865, float %4873
  %4877 = fsub fast float %4811, %4641
  %4878 = fsub fast float %4812, %4642
  %4879 = fsub fast float %4813, %4643
  %4880 = fmul fast float %4877, %4783
  %4881 = fmul fast float %4878, %4783
  %4882 = fmul fast float %4879, %4783
  %4883 = fadd fast float %4880, %4641
  %4884 = fadd fast float %4881, %4642
  %4885 = fadd fast float %4882, %4643
  %4886 = fsub fast float %4820, %4635
  %4887 = fsub fast float %4821, %4636
  %4888 = fsub fast float %4822, %4637
  %4889 = fmul fast float %4886, %4783
  %4890 = fmul fast float %4887, %4783
  %4891 = fmul fast float %4888, %4783
  %4892 = fadd fast float %4889, %4635
  %4893 = fadd fast float %4890, %4636
  %4894 = fadd fast float %4891, %4637
  %4895 = fadd fast float %4874, %4638
  %4896 = fadd fast float %4875, %4639
  %4897 = fadd fast float %4876, %4640
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4896, float %4897, float %4895, float %4896, float %4897)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = call float @dx.op.unary.f32(i32 25, float %4898)  ; Rsqrt(value)
  %4900 = fmul fast float %4895, %4899
  %4901 = fmul fast float %4896, %4899
  %4902 = fmul fast float %4897, %4899
  %4903 = fsub fast float %4900, %4638
  %4904 = fsub fast float %4901, %4639
  %4905 = fsub fast float %4902, %4640
  %4906 = fmul fast float %4903, %4783
  %4907 = fmul fast float %4904, %4783
  %4908 = fmul fast float %4905, %4783
  %4909 = fadd fast float %4906, %4638
  %4910 = fadd fast float %4907, %4639
  %4911 = fadd fast float %4908, %4640
  %4912 = call float @dx.op.binary.f32(i32 36, float %4645, float %4831)  ; FMin(a,b)
  %4913 = fsub fast float %4912, %4645
  %4914 = fmul fast float %4913, %4783
  %4915 = fadd fast float %4914, %4645
  %4916 = fsub fast float %4844, %4644
  %4917 = fmul fast float %4916, %4783
  %4918 = fadd fast float %4917, %4644
  br label %4919

; <label>:4919                                    ; preds = %4781, %4743, %4634, %4350
  %4920 = phi float [ %4892, %4781 ], [ %4635, %4743 ], [ %4635, %4634 ], [ %3944, %4350 ]
  %4921 = phi float [ %4893, %4781 ], [ %4636, %4743 ], [ %4636, %4634 ], [ %3945, %4350 ]
  %4922 = phi float [ %4894, %4781 ], [ %4637, %4743 ], [ %4637, %4634 ], [ %3946, %4350 ]
  %4923 = phi float [ %4909, %4781 ], [ %4638, %4743 ], [ %4638, %4634 ], [ %3908, %4350 ]
  %4924 = phi float [ %4910, %4781 ], [ %4639, %4743 ], [ %4639, %4634 ], [ %3909, %4350 ]
  %4925 = phi float [ %4911, %4781 ], [ %4640, %4743 ], [ %4640, %4634 ], [ %3910, %4350 ]
  %4926 = phi float [ %4883, %4781 ], [ %4641, %4743 ], [ %4641, %4634 ], [ %3959, %4350 ]
  %4927 = phi float [ %4884, %4781 ], [ %4642, %4743 ], [ %4642, %4634 ], [ %3960, %4350 ]
  %4928 = phi float [ %4885, %4781 ], [ %4643, %4743 ], [ %4643, %4634 ], [ %3961, %4350 ]
  %4929 = phi float [ %4918, %4781 ], [ %4644, %4743 ], [ %4644, %4634 ], [ %3947, %4350 ]
  %4930 = phi float [ %4915, %4781 ], [ %4645, %4743 ], [ %4645, %4634 ], [ %3920, %4350 ]
  %4931 = fcmp fast une float %4354, 0.000000e+00
  %4932 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = call float @dx.op.unary.f32(i32 25, float %4932)  ; Rsqrt(value)
  br i1 %4931, label %4941, label %4934

; <label>:4934                                    ; preds = %4919
  %4935 = fmul fast float %4933, %165
  %4936 = fmul fast float %4933, %166
  %4937 = fmul fast float %4933, %167
  %4938 = fsub fast float -0.000000e+00, %4935
  %4939 = fsub fast float -0.000000e+00, %4936
  %4940 = fsub fast float -0.000000e+00, %4937
  br label %5108

; <label>:4941                                    ; preds = %4919
  %4942 = fmul fast float %165, %4933
  %4943 = fsub fast float -0.000000e+00, %4942
  %4944 = fmul fast float %166, %4933
  %4945 = fsub fast float -0.000000e+00, %4944
  %4946 = fmul fast float %167, %4933
  %4947 = fsub fast float -0.000000e+00, %4946
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4945, float %4947, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = fmul fast float %4354, 2.500000e+00
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = fmul fast float %4354, 0x4013FFFFE0000000
  %4952 = fadd fast float %4951, 0xBFFFFFFFE0000000
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = fmul fast float %4354, 0x4004000020000000
  %4955 = fadd fast float %4954, 0xBFF8000040000000
  %4956 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4957 = fmul fast float %3926, 1.000000e+01
  %4958 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4959 = fmul fast float %4958, 2.000000e+00
  %4960 = fsub fast float 3.000000e+00, %4959
  %4961 = fmul fast float %4958, %4958
  %4962 = fmul fast float %4961, %4960
  %4963 = fsub fast float 1.000000e+00, %4962
  %4964 = fsub fast float 0x3FE3333340000000, %4929
  %4965 = fmul fast float %4964, 0x400AAAAAA0000000
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = fmul fast float %4963, %4966
  %4968 = fmul fast float %4926, 0x3FEA2B8620000000
  %4969 = fmul fast float %4927, 0x3FEA2B8620000000
  %4970 = fmul fast float %4928, 0x3FEA2B8620000000
  %4971 = fadd fast float %4968, 0x3FC81DFBA0000000
  %4972 = fmul fast float %4971, %4926
  %4973 = fadd fast float %4972, 0x3F910E6020000000
  %4974 = fadd fast float %4969, 0x3FC81DFBA0000000
  %4975 = fmul fast float %4974, %4927
  %4976 = fadd fast float %4975, 0x3F910E6020000000
  %4977 = fadd fast float %4970, 0x3FC81DFBA0000000
  %4978 = fmul fast float %4977, %4928
  %4979 = fadd fast float %4978, 0x3F910E6020000000
  %4980 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4981 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = fsub fast float %4980, %4926
  %4984 = fsub fast float %4981, %4927
  %4985 = fsub fast float %4982, %4928
  %4986 = fmul fast float %4983, %4950
  %4987 = fmul fast float %4986, %4967
  %4988 = fmul fast float %4984, %4950
  %4989 = fmul fast float %4988, %4967
  %4990 = fmul fast float %4985, %4950
  %4991 = fmul fast float %4990, %4967
  %4992 = fadd fast float %4987, %4926
  %4993 = fadd fast float %4989, %4927
  %4994 = fadd fast float %4991, %4928
  %4995 = fmul fast float %4930, %4930
  %4996 = fmul fast float %4995, %4995
  %4997 = fadd fast float %4953, 1.000000e+00
  %4998 = fsub fast float %4997, %4967
  %4999 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  %5000 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5001 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5002 = fsub fast float 1.000000e+00, %4996
  %5003 = call float @dx.op.binary.f32(i32 36, float %4999, float %5002)  ; FMin(a,b)
  %5004 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %5005 = call float @dx.op.binary.f32(i32 35, float %5003, float %5004)  ; FMax(a,b)
  %5006 = fadd fast float %5001, 0xBFE4CCCCC0000000
  %5007 = fmul fast float %5006, 0x4006DB6DA0000000
  %5008 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5009 = fmul fast float %5008, 2.000000e+00
  %5010 = fsub fast float 3.000000e+00, %5009
  %5011 = bitcast float %4920 to i32
  %5012 = ashr i32 %5011, 1
  %5013 = add nsw i32 %5012, 532487669
  %5014 = bitcast i32 %5013 to float
  %5015 = fsub fast float 1.000000e+00, %5014
  %5016 = bitcast float %5015 to i32
  %5017 = sub nsw i32 2129859010, %5016
  %5018 = bitcast i32 %5017 to float
  %5019 = fmul fast float %5018, 2.000000e+00
  %5020 = bitcast float %4921 to i32
  %5021 = ashr i32 %5020, 1
  %5022 = add nsw i32 %5021, 532487669
  %5023 = bitcast i32 %5022 to float
  %5024 = fsub fast float 1.000000e+00, %5023
  %5025 = bitcast float %5024 to i32
  %5026 = sub nsw i32 2129859010, %5025
  %5027 = bitcast i32 %5026 to float
  %5028 = fmul fast float %5027, 2.000000e+00
  %5029 = bitcast float %4922 to i32
  %5030 = ashr i32 %5029, 1
  %5031 = add nsw i32 %5030, 532487669
  %5032 = bitcast i32 %5031 to float
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = fmul fast float %5036, 2.000000e+00
  %5038 = fsub fast float 0x4002A9FBE0000000, %5019
  %5039 = fadd fast float %5019, 0x3FD54FDF00000000
  %5040 = bitcast float %5039 to i32
  %5041 = sub nsw i32 2129859010, %5040
  %5042 = bitcast i32 %5041 to float
  %5043 = fmul fast float %5042, %5038
  %5044 = fmul fast float %5043, %5043
  %5045 = fsub fast float 0x4002A9FBE0000000, %5028
  %5046 = fadd fast float %5028, 0x3FD54FDF00000000
  %5047 = bitcast float %5046 to i32
  %5048 = sub nsw i32 2129859010, %5047
  %5049 = bitcast i32 %5048 to float
  %5050 = fmul fast float %5049, %5045
  %5051 = fmul fast float %5050, %5050
  %5052 = fsub fast float 0x4002A9FBE0000000, %5037
  %5053 = fadd fast float %5037, 0x3FD54FDF00000000
  %5054 = bitcast float %5053 to i32
  %5055 = sub nsw i32 2129859010, %5054
  %5056 = bitcast i32 %5055 to float
  %5057 = fmul fast float %5056, %5052
  %5058 = fmul fast float %5057, %5057
  %5059 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5044)  ; FMax(a,b)
  %5060 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5051)  ; FMax(a,b)
  %5061 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5058)  ; FMax(a,b)
  %5062 = fsub fast float 1.000000e+00, %4948
  %5063 = fadd fast float %5062, %4963
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fsub fast float 1.000000e+00, %4335
  %5066 = fmul fast float %5005, %5065
  %5067 = fmul fast float %5008, %5008
  %5068 = fmul fast float %5067, %5066
  %5069 = fmul fast float %5068, %5010
  %5070 = fmul fast float %5065, 0xBFE99999A0000000
  %5071 = fmul fast float %5070, %4950
  %5072 = fmul fast float %5071, %4967
  %5073 = fadd fast float %5072, 1.000000e+00
  %5074 = fadd fast float %4929, -1.000000e+00
  %5075 = fmul fast float %5073, %5074
  %5076 = fadd fast float %5075, 1.000000e+00
  %5077 = fsub fast float %5059, %4920
  %5078 = fsub fast float %5060, %4921
  %5079 = fsub fast float %5061, %4922
  %5080 = fmul fast float %5069, %5077
  %5081 = fmul fast float %5069, %5078
  %5082 = fmul fast float %5069, %5079
  %5083 = fadd fast float %5080, %4920
  %5084 = fadd fast float %5081, %4921
  %5085 = fadd fast float %5082, %4922
  %5086 = fsub fast float %85, %4923
  %5087 = fsub fast float %86, %4924
  %5088 = fsub fast float %87, %4925
  %5089 = fmul fast float %5069, %5086
  %5090 = fmul fast float %5069, %5087
  %5091 = fmul fast float %5069, %5088
  %5092 = fadd fast float %5089, %4923
  %5093 = fadd fast float %5090, %4924
  %5094 = fadd fast float %5091, %4925
  %5095 = fmul fast float %5069, %5064
  %5096 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5097 = fsub fast float 1.000000e+00, %5096
  %5098 = fmul fast float %5095, %5097
  %5099 = fadd fast float %5098, %5096
  %5100 = fsub fast float 1.000000e+00, %4930
  %5101 = fmul fast float %5069, %5100
  %5102 = fadd fast float %5101, %4930
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float %5092, float %5093, float %5094)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = call float @dx.op.unary.f32(i32 25, float %5103)  ; Rsqrt(value)
  %5105 = fmul fast float %5092, %5104
  %5106 = fmul fast float %5093, %5104
  %5107 = fmul fast float %5094, %5104
  br label %5108

; <label>:5108                                    ; preds = %4941, %4934
  %5109 = phi float [ %4940, %4934 ], [ %4947, %4941 ]
  %5110 = phi float [ %4939, %4934 ], [ %4945, %4941 ]
  %5111 = phi float [ %4938, %4934 ], [ %4943, %4941 ]
  %5112 = phi float [ %4937, %4934 ], [ %4946, %4941 ]
  %5113 = phi float [ %4936, %4934 ], [ %4944, %4941 ]
  %5114 = phi float [ %4935, %4934 ], [ %4942, %4941 ]
  %5115 = phi float [ %4920, %4934 ], [ %5083, %4941 ]
  %5116 = phi float [ %4921, %4934 ], [ %5084, %4941 ]
  %5117 = phi float [ %4922, %4934 ], [ %5085, %4941 ]
  %5118 = phi float [ %4923, %4934 ], [ %5105, %4941 ]
  %5119 = phi float [ %4924, %4934 ], [ %5106, %4941 ]
  %5120 = phi float [ %4925, %4934 ], [ %5107, %4941 ]
  %5121 = phi float [ %4926, %4934 ], [ %4992, %4941 ]
  %5122 = phi float [ %4927, %4934 ], [ %4993, %4941 ]
  %5123 = phi float [ %4928, %4934 ], [ %4994, %4941 ]
  %5124 = phi float [ %4929, %4934 ], [ %5099, %4941 ]
  %5125 = phi float [ %4930, %4934 ], [ %5102, %4941 ]
  %5126 = select i1 %217, float 0.000000e+00, float %5117
  %5127 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5119, float %5120, float %5111, float %5110, float %5109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5113, float %5112, float %5118, float %5119, float %5120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = fmul fast float %5129, 2.000000e+00
  %5131 = fmul fast float %5130, %5118
  %5132 = fmul fast float %5130, %5119
  %5133 = fmul fast float %5130, %5120
  %5134 = fsub fast float %5114, %5131
  %5135 = fsub fast float %5113, %5132
  %5136 = fsub fast float %5112, %5133
  %5137 = call float @dx.op.binary.f32(i32 36, float %5125, float 1.000000e+00)  ; FMin(a,b)
  %5138 = fsub fast float 1.000000e+00, %5125
  %5139 = bitcast float %5138 to i32
  %5140 = sub nsw i32 2129859010, %5139
  %5141 = fsub fast float 1.000000e+00, %55
  %5142 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = call float @dx.op.binary.f32(i32 35, float %5142, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5144 = fdiv fast float %5141, %5143
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5119, float %5120, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5147 = fmul fast float %5146, 5.000000e-01
  %5148 = fadd fast float %5147, 5.000000e-01
  %5149 = fmul fast float %5148, %55
  %5150 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5119, float %5120, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fmul fast float %5151, %5144
  %5153 = fadd fast float %5149, %5152
  %5154 = fsub fast float 5.000000e-01, %5147
  %5155 = fmul fast float %5154, %5121
  %5156 = fmul fast float %5154, %5122
  %5157 = fmul fast float %5154, %5123
  %5158 = fadd fast float %5153, %5155
  %5159 = fadd fast float %5153, %5156
  %5160 = fadd fast float %5153, %5157
  %5161 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5163 = fmul fast float %5162, 5.000000e-01
  %5164 = fadd fast float %5163, 5.000000e-01
  %5165 = fmul fast float %5164, %55
  %5166 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5167 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5168 = fmul fast float %5167, %5144
  %5169 = fadd fast float %5165, %5168
  %5170 = fsub fast float 5.000000e-01, %5163
  %5171 = fmul fast float %5170, %5121
  %5172 = fmul fast float %5170, %5122
  %5173 = fmul fast float %5170, %5123
  %5174 = fadd fast float %5169, %5171
  %5175 = fadd fast float %5169, %5172
  %5176 = fadd fast float %5169, %5173
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 0
  %5179 = call float @dx.op.binary.f32(i32 36, float %5121, float %5178)  ; FMin(a,b)
  %5180 = fsub fast float 1.000000e+00, %5137
  %5181 = fmul fast float %5179, %5180
  %5182 = fsub fast float 1.000000e+00, %5181
  %5183 = bitcast float %5182 to i32
  %5184 = sub nsw i32 2129859010, %5183
  %5185 = bitcast i32 %5184 to float
  %5186 = call float @dx.op.binary.f32(i32 36, float %5122, float %5178)  ; FMin(a,b)
  %5187 = fmul fast float %5186, %5180
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = bitcast float %5188 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = call float @dx.op.binary.f32(i32 36, float %5123, float %5178)  ; FMin(a,b)
  %5193 = fmul fast float %5192, %5180
  %5194 = fsub fast float 1.000000e+00, %5193
  %5195 = bitcast float %5194 to i32
  %5196 = sub nsw i32 2129859010, %5195
  %5197 = bitcast i32 %5196 to float
  %5198 = fmul fast float %5137, %56
  %5199 = fmul fast float %5198, %5158
  %5200 = fmul fast float %5199, %5185
  %5201 = fmul fast float %5137, %57
  %5202 = fmul fast float %5201, %5159
  %5203 = fmul fast float %5202, %5191
  %5204 = fmul fast float %5137, %58
  %5205 = fmul fast float %5204, %5160
  %5206 = fmul fast float %5205, %5197
  %5207 = call float @dx.op.binary.f32(i32 36, float %5115, float %5178)  ; FMin(a,b)
  %5208 = fmul fast float %5207, %5180
  %5209 = fsub fast float 1.000000e+00, %5208
  %5210 = bitcast float %5209 to i32
  %5211 = sub nsw i32 2129859010, %5210
  %5212 = bitcast i32 %5211 to float
  %5213 = call float @dx.op.binary.f32(i32 36, float %5116, float %5178)  ; FMin(a,b)
  %5214 = fmul fast float %5213, %5180
  %5215 = fsub fast float 1.000000e+00, %5214
  %5216 = bitcast float %5215 to i32
  %5217 = sub nsw i32 2129859010, %5216
  %5218 = bitcast i32 %5217 to float
  %5219 = call float @dx.op.binary.f32(i32 36, float %5126, float %5178)  ; FMin(a,b)
  %5220 = fmul fast float %5219, %5180
  %5221 = fsub fast float 1.000000e+00, %5220
  %5222 = bitcast float %5221 to i32
  %5223 = sub nsw i32 2129859010, %5222
  %5224 = bitcast i32 %5223 to float
  %5225 = fmul fast float %5198, %5174
  %5226 = fmul fast float %5225, %5212
  %5227 = fmul fast float %5201, %5175
  %5228 = fmul fast float %5227, %5218
  %5229 = fmul fast float %5204, %5176
  %5230 = fmul fast float %5229, %5224
  %5231 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5203, float %5206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = select i1 %217, float 0.000000e+00, float %5200
  %5233 = select i1 %217, float %5231, float %5203
  %5234 = select i1 %217, float 0.000000e+00, float %5206
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5226, float %5228, float %5230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = select i1 %217, float 0.000000e+00, float %5226
  %5237 = select i1 %217, float %5235, float %5228
  %5238 = select i1 %217, float 0.000000e+00, float %5230
  %5239 = fmul fast float %5128, 9.843750e-01
  %5240 = fmul fast float %5124, 9.843750e-01
  %5241 = fadd fast float %5239, 7.812500e-03
  %5242 = fadd fast float %5240, 7.812500e-03
  %5243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5241, float %5242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5244 = extractvalue %dx.types.ResRet.f32 %5243, 2
  %5245 = extractvalue %dx.types.ResRet.f32 %5243, 3
  %5246 = fmul fast float %5244, %5115
  %5247 = fmul fast float %5244, %5116
  %5248 = fmul fast float %5244, %5126
  %5249 = fadd fast float %5246, %5245
  %5250 = fadd fast float %5247, %5245
  %5251 = fadd fast float %5248, %5245
  %5252 = fcmp fast ogt float %3921, 0.000000e+00
  br i1 %5252, label %5253, label %5279

; <label>:5253                                    ; preds = %5108
  %5254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3921, float %5128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5255 = extractvalue %dx.types.ResRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.ResRet.f32 %5254, 1
  %5257 = extractvalue %dx.types.ResRet.f32 %5254, 2
  %5258 = fadd fast float %5255, -5.000000e-01
  %5259 = fadd fast float %5256, -5.000000e-01
  %5260 = fadd fast float %5257, -5.000000e-01
  %5261 = fsub fast float 1.000000e+00, %5115
  %5262 = fsub fast float 1.000000e+00, %5116
  %5263 = fsub fast float 1.000000e+00, %5126
  %5264 = fmul fast float %5115, 4.000000e+00
  %5265 = fmul fast float %5264, %5261
  %5266 = fmul fast float %5265, %5258
  %5267 = fmul fast float %5116, 4.000000e+00
  %5268 = fmul fast float %5267, %5262
  %5269 = fmul fast float %5268, %5259
  %5270 = fmul fast float %5126, 4.000000e+00
  %5271 = fmul fast float %5270, %5263
  %5272 = fmul fast float %5271, %5260
  %5273 = fadd fast float %5266, %5249
  %5274 = fadd fast float %5269, %5250
  %5275 = fadd fast float %5272, %5251
  %5276 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5278 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  br label %5279

; <label>:5279                                    ; preds = %5253, %5108
  %5280 = phi float [ %5276, %5253 ], [ %5249, %5108 ]
  %5281 = phi float [ %5277, %5253 ], [ %5250, %5108 ]
  %5282 = phi float [ %5278, %5253 ], [ %5251, %5108 ]
  %5283 = call float @dx.op.binary.f32(i32 35, float %5281, float %5282)  ; FMax(a,b)
  %5284 = call float @dx.op.binary.f32(i32 35, float %5280, float %5283)  ; FMax(a,b)
  %5285 = fsub fast float 1.000000e+00, %5284
  %5286 = fmul fast float %5285, %5232
  %5287 = fmul fast float %5285, %5233
  %5288 = fmul fast float %5285, %5234
  %5289 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5122, float %5123, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5290 = fcmp fast ogt float %5289, 0x3E7FF19E20000000
  %5291 = fdiv fast float 1.000000e+00, %5289
  %5292 = select i1 %5290, float %5291, float 0.000000e+00
  %5293 = fmul fast float %5292, %5121
  %5294 = fmul fast float %5292, %5122
  %5295 = fmul fast float %5292, %5123
  %5296 = fadd fast float %5293, -1.000000e+00
  %5297 = fadd fast float %5294, -1.000000e+00
  %5298 = fadd fast float %5295, -1.000000e+00
  %5299 = fmul fast float %5296, 5.000000e-01
  %5300 = fmul fast float %5297, 5.000000e-01
  %5301 = fmul fast float %5298, 5.000000e-01
  %5302 = fadd fast float %5299, 1.000000e+00
  %5303 = fadd fast float %5300, 1.000000e+00
  %5304 = fadd fast float %5301, 1.000000e+00
  %5305 = fmul fast float %5280, %5236
  %5306 = fmul fast float %5281, %5237
  %5307 = fmul fast float %5282, %5238
  %5308 = fsub fast float 1.000000e+00, %5128
  %5309 = bitcast float %5308 to i32
  %5310 = sitofp i32 %5309 to float
  %5311 = fmul fast float %5310, 5.000000e+00
  %5312 = fadd fast float %5311, 0xC1EFBF8940000000
  %5313 = fptosi float %5312 to i32
  %5314 = bitcast i32 %5313 to float
  %5315 = fmul fast float %5314, %3922
  %5316 = fmul fast float %5232, %5315
  %5317 = fmul fast float %5316, %5285
  %5318 = fmul fast float %5317, %5302
  %5319 = fmul fast float %5233, %5315
  %5320 = fmul fast float %5319, %5285
  %5321 = fmul fast float %5320, %5303
  %5322 = fmul fast float %5234, %5315
  %5323 = fmul fast float %5322, %5285
  %5324 = fmul fast float %5323, %5304
  %5325 = fmul fast float %5286, %3918
  %5326 = fmul fast float %5287, %3918
  %5327 = fmul fast float %5288, %3918
  %5328 = fadd fast float %5305, %3911
  %5329 = fadd fast float %5328, %5318
  %5330 = fmul fast float %5329, %3918
  %5331 = fadd fast float %5306, %3912
  %5332 = fadd fast float %5331, %5321
  %5333 = fmul fast float %5332, %3918
  %5334 = fadd fast float %5307, %3913
  %5335 = fadd fast float %5334, %5324
  %5336 = fmul fast float %5335, %3918
  %5337 = bitcast i32 %5140 to float
  %5338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5338, 3
  %5340 = fcmp fast oeq float %5339, 0.000000e+00
  br i1 %5340, label %5568, label %5341

; <label>:5341                                    ; preds = %5279
  %5342 = extractvalue %dx.types.CBufRet.f32 %5338, 0
  %5343 = extractvalue %dx.types.CBufRet.f32 %5338, 1
  %5344 = extractvalue %dx.types.CBufRet.f32 %5338, 2
  %5345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.CBufRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.CBufRet.f32 %5345, 2
  %5349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.CBufRet.f32 %5349, 1
  %5352 = call float @dx.op.dot3.f32(i32 55, float %5346, float %5347, float %5348, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5353 = select i1 %217, float %5350, float %5346
  %5354 = select i1 %217, float %5352, float %5347
  %5355 = select i1 %217, float %5351, float %5348
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 1
  %5358 = fcmp fast une float %5357, 0.000000e+00
  br i1 %5358, label %5359, label %5376

; <label>:5359                                    ; preds = %5341
  %5360 = fptoui float %78 to i32
  %5361 = fptoui float %79 to i32
  %5362 = lshr i32 %5360, 4
  %5363 = lshr i32 %5361, 4
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 0
  %5366 = fptoui float %5365 to i32
  %5367 = add i32 %5366, 15
  %5368 = lshr i32 %5367, 4
  %5369 = mul i32 %5368, %5363
  %5370 = add i32 %5369, %5362
  %5371 = shl i32 %5370, 3
  %5372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5371, i32 undef)  ; BufferLoad(srv,index,wot)
  %5373 = extractvalue %dx.types.ResRet.i32 %5372, 0
  %5374 = and i32 %5373, -268435456
  %5375 = icmp eq i32 %5374, -1342177280
  br i1 %5375, label %5386, label %5376

; <label>:5376                                    ; preds = %5359, %5341
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 2
  %5379 = extractvalue %dx.types.CBufRet.f32 %5377, 3
  %5380 = fmul fast float %5378, %78
  %5381 = fmul fast float %5379, %79
  %5382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5380, float %5381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5383 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5384 = extractvalue %dx.types.ResRet.f32 %5382, 1
  %5385 = extractvalue %dx.types.ResRet.f32 %5382, 2
  br label %5386

; <label>:5386                                    ; preds = %5376, %5359
  %5387 = phi float [ %5383, %5376 ], [ 0.000000e+00, %5359 ]
  %5388 = phi float [ %5384, %5376 ], [ 0.000000e+00, %5359 ]
  %5389 = phi float [ %5385, %5376 ], [ 0.000000e+00, %5359 ]
  %5390 = call float @dx.op.binary.f32(i32 36, float %5388, float %5389)  ; FMin(a,b)
  %5391 = call float @dx.op.binary.f32(i32 36, float %5387, float %5390)  ; FMin(a,b)
  %5392 = fcmp fast ogt float %5391, 0.000000e+00
  br i1 %5392, label %5393, label %5568, !dx.controlflow.hints !76

; <label>:5393                                    ; preds = %5386
  %5394 = fmul fast float %5387, %5353
  %5395 = fmul fast float %5388, %5354
  %5396 = fmul fast float %5389, %5355
  %5397 = fsub fast float %5342, %5114
  %5398 = fsub fast float %5343, %5113
  %5399 = fsub fast float %5344, %5112
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5399, float %5397, float %5398, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = call float @dx.op.unary.f32(i32 25, float %5400)  ; Rsqrt(value)
  %5402 = fmul fast float %5401, %5397
  %5403 = fmul fast float %5401, %5398
  %5404 = fmul fast float %5401, %5399
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5342, float %5343, float %5344, float %5118, float %5119, float %5120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5110, float %5109, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5407 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5408 = fmul fast float %5407, %5407
  %5409 = fmul fast float %5408, %5337
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = fmul fast float %5410, %5407
  %5412 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5119, float %5120, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = fmul fast float %5412, %5412
  %5414 = call float @dx.op.unary.f32(i32 6, float %5405)  ; FAbs(value)
  %5415 = fsub fast float 1.000000e+00, %5124
  %5416 = call float @dx.op.binary.f32(i32 35, float %5415, float 0x3F847AE140000000)  ; FMax(a,b)
  %5417 = fmul fast float %5416, %5416
  %5418 = fmul fast float %5417, %5417
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = fmul fast float %5128, %5128
  %5421 = fmul fast float %5420, %5419
  %5422 = fadd fast float %5421, %5418
  %5423 = bitcast float %5422 to i32
  %5424 = ashr i32 %5423, 1
  %5425 = add nsw i32 %5424, 532487669
  %5426 = bitcast i32 %5425 to float
  %5427 = fadd fast float %5426, %5128
  %5428 = fmul fast float %5418, %5413
  %5429 = fsub fast float 1.000000e+00, %5413
  %5430 = fadd fast float %5429, %5428
  %5431 = fmul fast float %5414, %5414
  %5432 = fmul fast float %5431, %5419
  %5433 = fadd fast float %5432, %5418
  %5434 = bitcast float %5433 to i32
  %5435 = ashr i32 %5434, 1
  %5436 = add nsw i32 %5435, 532487669
  %5437 = bitcast i32 %5436 to float
  %5438 = fadd fast float %5437, %5414
  %5439 = fmul fast float %5430, %5430
  %5440 = fmul fast float %5439, %5427
  %5441 = fmul fast float %5440, %5438
  %5442 = fdiv fast float 0x3FF0A00000000000, %5441
  %5443 = fmul fast float %5442, %5418
  %5444 = call float @dx.op.unary.f32(i32 6, float %5406)  ; FAbs(value)
  %5445 = fsub fast float 1.000000e+00, %5444
  %5446 = bitcast float %5445 to i32
  %5447 = sitofp i32 %5446 to float
  %5448 = fmul fast float %5447, 5.000000e+00
  %5449 = fadd fast float %5448, 0xC1EFBF8940000000
  %5450 = fptosi float %5449 to i32
  %5451 = bitcast i32 %5450 to float
  %5452 = fsub fast float 1.000000e+00, %5115
  %5453 = fsub fast float 1.000000e+00, %5116
  %5454 = fsub fast float 1.000000e+00, %5126
  %5455 = fmul fast float %5451, %5452
  %5456 = fmul fast float %5451, %5453
  %5457 = fmul fast float %5451, %5454
  %5458 = fadd fast float %5455, %5115
  %5459 = fadd fast float %5456, %5116
  %5460 = fadd fast float %5457, %5126
  br i1 %5252, label %5461, label %5484

; <label>:5461                                    ; preds = %5393
  %5462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3921, float %5444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.ResRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.ResRet.f32 %5462, 2
  %5466 = fadd fast float %5463, -5.000000e-01
  %5467 = fadd fast float %5464, -5.000000e-01
  %5468 = fadd fast float %5465, -5.000000e-01
  %5469 = fmul fast float %5115, 4.000000e+00
  %5470 = fmul fast float %5469, %5452
  %5471 = fmul fast float %5470, %5466
  %5472 = fmul fast float %5116, 4.000000e+00
  %5473 = fmul fast float %5472, %5453
  %5474 = fmul fast float %5473, %5467
  %5475 = fmul fast float %5126, 4.000000e+00
  %5476 = fmul fast float %5475, %5454
  %5477 = fmul fast float %5476, %5468
  %5478 = fadd fast float %5471, %5458
  %5479 = fadd fast float %5474, %5459
  %5480 = fadd fast float %5477, %5460
  %5481 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  br label %5484

; <label>:5484                                    ; preds = %5461, %5393
  %5485 = phi float [ %5481, %5461 ], [ %5458, %5393 ]
  %5486 = phi float [ %5482, %5461 ], [ %5459, %5393 ]
  %5487 = phi float [ %5483, %5461 ], [ %5460, %5393 ]
  %5488 = fmul fast float %5405, 9.843750e-01
  %5489 = fadd fast float %5488, 7.812500e-03
  %5490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5489, float %5242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5491 = extractvalue %dx.types.ResRet.f32 %5490, 2
  %5492 = extractvalue %dx.types.ResRet.f32 %5490, 3
  %5493 = fmul fast float %5491, %5115
  %5494 = fmul fast float %5491, %5116
  %5495 = fmul fast float %5491, %5126
  %5496 = fadd fast float %5493, %5492
  %5497 = fadd fast float %5494, %5492
  %5498 = fadd fast float %5495, %5492
  br i1 %5252, label %5499, label %5522

; <label>:5499                                    ; preds = %5484
  %5500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3921, float %5405, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5501 = extractvalue %dx.types.ResRet.f32 %5500, 0
  %5502 = extractvalue %dx.types.ResRet.f32 %5500, 1
  %5503 = extractvalue %dx.types.ResRet.f32 %5500, 2
  %5504 = fadd fast float %5501, -5.000000e-01
  %5505 = fadd fast float %5502, -5.000000e-01
  %5506 = fadd fast float %5503, -5.000000e-01
  %5507 = fmul fast float %5115, 4.000000e+00
  %5508 = fmul fast float %5507, %5452
  %5509 = fmul fast float %5508, %5504
  %5510 = fmul fast float %5116, 4.000000e+00
  %5511 = fmul fast float %5510, %5453
  %5512 = fmul fast float %5511, %5505
  %5513 = fmul fast float %5126, 4.000000e+00
  %5514 = fmul fast float %5513, %5454
  %5515 = fmul fast float %5514, %5506
  %5516 = fadd fast float %5509, %5496
  %5517 = fadd fast float %5512, %5497
  %5518 = fadd fast float %5515, %5498
  %5519 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5520 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5521 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  br label %5522

; <label>:5522                                    ; preds = %5499, %5484
  %5523 = phi float [ %5519, %5499 ], [ %5496, %5484 ]
  %5524 = phi float [ %5520, %5499 ], [ %5497, %5484 ]
  %5525 = phi float [ %5521, %5499 ], [ %5498, %5484 ]
  %5526 = call float @dx.op.binary.f32(i32 35, float %5524, float %5525)  ; FMax(a,b)
  %5527 = call float @dx.op.binary.f32(i32 35, float %5523, float %5526)  ; FMax(a,b)
  %5528 = fsub fast float 1.000000e+00, %5527
  %5529 = fmul fast float %5485, %5443
  %5530 = fmul fast float %5486, %5443
  %5531 = fmul fast float %5487, %5443
  %5532 = fsub fast float 1.000000e+00, %5406
  %5533 = bitcast float %5532 to i32
  %5534 = sitofp i32 %5533 to float
  %5535 = fmul fast float %5534, 5.000000e+00
  %5536 = fadd fast float %5535, 0xC1EFBF8940000000
  %5537 = fptosi float %5536 to i32
  %5538 = bitcast i32 %5537 to float
  %5539 = fmul fast float %5538, %3922
  %5540 = fmul fast float %5528, %5539
  %5541 = fmul fast float %5540, %5302
  %5542 = fmul fast float %5540, %5303
  %5543 = fmul fast float %5540, %5304
  %5544 = fadd fast float %5541, %5529
  %5545 = fadd fast float %5542, %5530
  %5546 = fadd fast float %5543, %5531
  %5547 = fmul fast float %5411, %5394
  %5548 = fmul fast float %5547, %5528
  %5549 = fmul fast float %5411, %5395
  %5550 = fmul fast float %5549, %5528
  %5551 = fmul fast float %5411, %5396
  %5552 = fmul fast float %5551, %5528
  %5553 = fmul fast float %5547, %5544
  %5554 = fmul fast float %5549, %5545
  %5555 = fmul fast float %5551, %5546
  %5556 = fadd fast float %5548, %5286
  %5557 = fmul fast float %5556, %3918
  %5558 = fadd fast float %5550, %5287
  %5559 = fmul fast float %5558, %3918
  %5560 = fadd fast float %5552, %5288
  %5561 = fmul fast float %5560, %3918
  %5562 = fadd fast float %5553, %5329
  %5563 = fmul fast float %5562, %3918
  %5564 = fadd fast float %5554, %5332
  %5565 = fmul fast float %5564, %3918
  %5566 = fadd fast float %5555, %5335
  %5567 = fmul fast float %5566, %3918
  br label %5568

; <label>:5568                                    ; preds = %5522, %5386, %5279
  %5569 = phi float [ %5330, %5279 ], [ %5330, %5386 ], [ %5563, %5522 ]
  %5570 = phi float [ %5333, %5279 ], [ %5333, %5386 ], [ %5565, %5522 ]
  %5571 = phi float [ %5336, %5279 ], [ %5336, %5386 ], [ %5567, %5522 ]
  %5572 = phi float [ %5325, %5279 ], [ %5325, %5386 ], [ %5557, %5522 ]
  %5573 = phi float [ %5326, %5279 ], [ %5326, %5386 ], [ %5559, %5522 ]
  %5574 = phi float [ %5327, %5279 ], [ %5327, %5386 ], [ %5561, %5522 ]
  %5575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.i32 %5575, 0
  %5577 = icmp eq i32 %5576, 0
  br i1 %5577, label %6012, label %5578

; <label>:5578                                    ; preds = %5568
  %5579 = fptoui float %78 to i32
  %5580 = fptoui float %79 to i32
  %5581 = lshr i32 %5579, 4
  %5582 = lshr i32 %5580, 4
  %5583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.i32 %5583, 0
  %5585 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5582, i32 %5584, i32 %5581)  ; UMad(a,b,c)
  %5586 = add nsw i32 %5576, -1
  %5587 = call i32 @dx.op.binary.i32(i32 37, i32 %5586, i32 0)  ; IMax(a,b)
  %5588 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5589 = fptoui float %5588 to i32
  %5590 = lshr i32 %5589, 5
  %5591 = call i32 @dx.op.binary.i32(i32 40, i32 %5590, i32 8191)  ; UMin(a,b)
  %5592 = shl i32 %5591, 2
  %5593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5592, i32 undef)  ; BufferLoad(srv,index,wot)
  %5594 = extractvalue %dx.types.ResRet.i32 %5593, 0
  %5595 = lshr i32 %5594, 16
  %5596 = and i32 %5594, 65535
  %5597 = lshr i32 %5594, 21
  %5598 = lshr i32 %5596, 5
  %5599 = call i32 @dx.op.binary.i32(i32 40, i32 %5598, i32 %5587)  ; UMin(a,b)
  %5600 = icmp ugt i32 %5597, %5599
  br i1 %5600, label %6012, label %5601

; <label>:5601                                    ; preds = %5578
  br label %5602

; <label>:5602                                    ; preds = %6002, %5601
  %5603 = phi i32 [ %6009, %6002 ], [ %5597, %5601 ]
  %5604 = phi float [ %6003, %6002 ], [ %5569, %5601 ]
  %5605 = phi float [ %6004, %6002 ], [ %5570, %5601 ]
  %5606 = phi float [ %6005, %6002 ], [ %5571, %5601 ]
  %5607 = phi float [ %6006, %6002 ], [ %5572, %5601 ]
  %5608 = phi float [ %6007, %6002 ], [ %5573, %5601 ]
  %5609 = phi float [ %6008, %6002 ], [ %5574, %5601 ]
  %5610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.i32 %5610, 0
  %5612 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5585, i32 %5611, i32 %5603)  ; UMad(a,b,c)
  %5613 = shl i32 %5612, 2
  %5614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5613, i32 undef)  ; BufferLoad(srv,index,wot)
  %5615 = extractvalue %dx.types.ResRet.i32 %5614, 0
  %5616 = shl i32 %5603, 5
  %5617 = sub nsw i32 %5595, %5616
  %5618 = call i32 @dx.op.binary.i32(i32 37, i32 %5617, i32 0)  ; IMax(a,b)
  %5619 = call i32 @dx.op.binary.i32(i32 38, i32 %5618, i32 31)  ; IMin(a,b)
  %5620 = sub nsw i32 1, %5595
  %5621 = add nsw i32 %5620, %5596
  %5622 = call i32 @dx.op.binary.i32(i32 37, i32 %5621, i32 0)  ; IMax(a,b)
  %5623 = call i32 @dx.op.binary.i32(i32 38, i32 %5622, i32 32)  ; IMin(a,b)
  %5624 = and i32 %5623, 31
  %5625 = shl i32 -1, %5624
  %5626 = xor i32 %5625, -1
  %5627 = and i32 %5619, 31
  %5628 = shl i32 %5626, %5627
  %5629 = icmp eq i32 %5623, 32
  %5630 = select i1 %5629, i32 -1, i32 %5628
  %5631 = and i32 %5630, %5615
  %5632 = icmp eq i32 %5631, 0
  br i1 %5632, label %6002, label %5633

; <label>:5633                                    ; preds = %5602
  br label %5634

; <label>:5634                                    ; preds = %5714, %5633
  %5635 = phi i32 [ %5646, %5714 ], [ %5631, %5633 ]
  %5636 = phi float [ %5715, %5714 ], [ %5604, %5633 ]
  %5637 = phi float [ %5716, %5714 ], [ %5605, %5633 ]
  %5638 = phi float [ %5717, %5714 ], [ %5606, %5633 ]
  %5639 = phi float [ %5718, %5714 ], [ %5607, %5633 ]
  %5640 = phi float [ %5719, %5714 ], [ %5608, %5633 ]
  %5641 = phi float [ %5720, %5714 ], [ %5609, %5633 ]
  %5642 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5635)  ; FirstbitLo(value)
  %5643 = add i32 %5642, %5616
  %5644 = and i32 %5642, 31
  %5645 = shl i32 1, %5644
  %5646 = xor i32 %5645, %5635
  %5647 = mul i32 %5643, 112
  %5648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5647, i32 undef)  ; BufferLoad(srv,index,wot)
  %5649 = extractvalue %dx.types.ResRet.f32 %5648, 0
  %5650 = extractvalue %dx.types.ResRet.f32 %5648, 1
  %5651 = extractvalue %dx.types.ResRet.f32 %5648, 2
  %5652 = or i32 %5647, 12
  %5653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5652, i32 undef)  ; BufferLoad(srv,index,wot)
  %5654 = extractvalue %dx.types.ResRet.f32 %5653, 0
  %5655 = add i32 %5647, 44
  %5656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5655, i32 undef)  ; BufferLoad(srv,index,wot)
  %5657 = extractvalue %dx.types.ResRet.f32 %5656, 0
  %5658 = add i32 %5647, 48
  %5659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5658, i32 undef)  ; BufferLoad(srv,index,wot)
  %5660 = extractvalue %dx.types.ResRet.f32 %5659, 0
  %5661 = extractvalue %dx.types.ResRet.f32 %5659, 1
  %5662 = extractvalue %dx.types.ResRet.f32 %5659, 2
  %5663 = add i32 %5647, 80
  %5664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5663, i32 undef)  ; BufferLoad(srv,index,wot)
  %5665 = extractvalue %dx.types.ResRet.f32 %5664, 1
  %5666 = extractvalue %dx.types.ResRet.f32 %5664, 2
  %5667 = call float @dx.op.dot3.f32(i32 55, float %5649, float %5650, float %5651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = select i1 %217, float %5665, float %5649
  %5669 = select i1 %217, float %5667, float %5650
  %5670 = select i1 %217, float %5666, float %5651
  %5671 = fsub fast float %5660, %165
  %5672 = fsub fast float %5661, %166
  %5673 = fsub fast float %5662, %167
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5672, float %5673, float %5671, float %5672, float %5673)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = call float @dx.op.unary.f32(i32 24, float %5674)  ; Sqrt(value)
  %5676 = fdiv fast float 1.000000e+00, %5675
  %5677 = fmul fast float %5676, %5671
  %5678 = fmul fast float %5676, %5672
  %5679 = fmul fast float %5676, %5673
  %5680 = fadd fast float %5675, %5654
  %5681 = fdiv fast float 1.000000e+00, %5680
  %5682 = fmul float %5657, %5681
  %5683 = fmul float %5682, %5682
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = and i32 %5645, %5631
  %5686 = icmp eq i32 %5685, 0
  br i1 %5686, label %5709, label %5687, !dx.controlflow.hints !77

; <label>:5687                                    ; preds = %5634
  %5688 = lshr i32 %5579, 5
  %5689 = lshr i32 %5580, 5
  %5690 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5688, i32 %5689, i32 %5643, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5691 = extractvalue %dx.types.ResRet.i32 %5690, 0
  %5692 = and i32 %5691, 3
  %5693 = icmp eq i32 %5692, 0
  %5694 = select i1 %5693, float 1.000000e+00, float 0.000000e+00
  %5695 = icmp eq i32 %5692, 3
  br i1 %5695, label %5696, label %5709

; <label>:5696                                    ; preds = %5687
  %5697 = lshr i32 %5691, 10
  %5698 = and i32 %5697, 8160
  %5699 = and i32 %5580, 31
  %5700 = or i32 %5698, %5699
  %5701 = lshr i32 %5691, 1
  %5702 = and i32 %5701, 16352
  %5703 = and i32 %5579, 31
  %5704 = or i32 %5702, %5703
  %5705 = lshr i32 %5691, 23
  %5706 = and i32 %5705, 255
  %5707 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5704, i32 %5700, i32 %5706, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5708 = extractvalue %dx.types.ResRet.f32 %5707, 0
  br label %5709

; <label>:5709                                    ; preds = %5696, %5687, %5634
  %5710 = phi float [ %5708, %5696 ], [ %5694, %5687 ], [ 0.000000e+00, %5634 ]
  %5711 = call float @dx.op.binary.f32(i32 36, float %5710, float %5710)  ; FMin(a,b)
  %5712 = call float @dx.op.binary.f32(i32 36, float %5710, float %5711)  ; FMin(a,b)
  %5713 = fcmp fast ogt float %5712, 0.000000e+00
  br i1 %5713, label %5722, label %5714, !dx.controlflow.hints !78

; <label>:5714                                    ; preds = %5958, %5709
  %5715 = phi float [ %5636, %5709 ], [ %5998, %5958 ]
  %5716 = phi float [ %5637, %5709 ], [ %5999, %5958 ]
  %5717 = phi float [ %5638, %5709 ], [ %6000, %5958 ]
  %5718 = phi float [ %5639, %5709 ], [ %5992, %5958 ]
  %5719 = phi float [ %5640, %5709 ], [ %5993, %5958 ]
  %5720 = phi float [ %5641, %5709 ], [ %5994, %5958 ]
  %5721 = icmp eq i32 %5635, %5645
  br i1 %5721, label %6001, label %5634

; <label>:5722                                    ; preds = %5709
  %5723 = fmul fast float %5710, %5668
  %5724 = fmul fast float %5710, %5669
  %5725 = fmul fast float %5710, %5670
  %5726 = fsub fast float %5662, %4322
  %5727 = fcmp fast ogt float %5726, 0.000000e+00
  %5728 = fsub fast float %167, %4322
  %5729 = fcmp fast ogt float %5728, 0.000000e+00
  %5730 = xor i1 %5729, %5727
  %5731 = fsub fast float %4322, %5662
  %5732 = fmul fast float %5731, 2.000000e+00
  %5733 = fadd fast float %5732, %5662
  %5734 = select i1 %5730, float %5662, float %5733
  %5735 = fsub fast float %5734, %167
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5672, float %5735, float %5671, float %5672, float %5735)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = call float @dx.op.unary.f32(i32 25, float %5736)  ; Rsqrt(value)
  %5738 = fmul fast float %5737, %5671
  %5739 = fmul fast float %5737, %5672
  %5740 = fmul fast float %5737, %5735
  %5741 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4330)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = fdiv fast float 1.000000e+00, %5742
  %5744 = fmul fast float %5743, %5741
  %5745 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5728, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = fcmp fast ogt float %5745, 0.000000e+00
  %5747 = fcmp fast olt float %5745, 0.000000e+00
  %5748 = zext i1 %5746 to i32
  %5749 = zext i1 %5747 to i32
  %5750 = sub nsw i32 %5748, %5749
  %5751 = sitofp i32 %5750 to float
  %5752 = fsub fast float %5734, %4322
  %5753 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5672, float %5752, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = fcmp fast ogt float %5753, 0.000000e+00
  %5755 = fcmp fast olt float %5753, 0.000000e+00
  %5756 = zext i1 %5754 to i32
  %5757 = zext i1 %5755 to i32
  %5758 = sub nsw i32 %5756, %5757
  %5759 = sitofp i32 %5758 to float
  %5760 = fcmp fast une float %5751, %5759
  br i1 %5760, label %5761, label %5771

; <label>:5761                                    ; preds = %5722
  %5762 = fmul fast float %5744, %5740
  %5763 = fmul fast float %5744, %5739
  %5764 = fmul fast float %5744, %5738
  %5765 = fmul fast float %5764, %5764
  %5766 = fmul fast float %5763, %5763
  %5767 = fadd fast float %5765, %5766
  %5768 = fmul fast float %5762, %5762
  %5769 = fadd fast float %5767, %5768
  %5770 = call float @dx.op.unary.f32(i32 24, float %5769)  ; Sqrt(value)
  br label %5783

; <label>:5771                                    ; preds = %5722
  %5772 = icmp slt i32 %5750, 0
  br i1 %5772, label %5773, label %5783

; <label>:5773                                    ; preds = %5771
  %5774 = fsub fast float %165, %5660
  %5775 = fsub fast float %166, %5661
  %5776 = fsub fast float %167, %5734
  %5777 = fmul fast float %5774, %5774
  %5778 = fmul fast float %5775, %5775
  %5779 = fadd fast float %5777, %5778
  %5780 = fmul fast float %5776, %5776
  %5781 = fadd fast float %5779, %5780
  %5782 = call float @dx.op.unary.f32(i32 24, float %5781)  ; Sqrt(value)
  br label %5783

; <label>:5783                                    ; preds = %5773, %5771, %5761
  %5784 = phi float [ %5770, %5761 ], [ %5782, %5773 ], [ 0.000000e+00, %5771 ]
  %5785 = and i1 %5729, %5727
  %5786 = fsub fast float -0.000000e+00, %5784
  %5787 = select i1 %5785, float -0.000000e+00, float %5786
  %5788 = fmul fast float %4323, 0x3FF7154760000000
  %5789 = fmul fast float %5788, %5787
  %5790 = fmul fast float %4324, 0x3FF7154760000000
  %5791 = fmul fast float %5790, %5787
  %5792 = fmul fast float %4325, 0x3FF7154760000000
  %5793 = fmul fast float %5792, %5787
  %5794 = call float @dx.op.unary.f32(i32 21, float %5789)  ; Exp(value)
  %5795 = call float @dx.op.unary.f32(i32 21, float %5791)  ; Exp(value)
  %5796 = call float @dx.op.unary.f32(i32 21, float %5793)  ; Exp(value)
  %5797 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5798 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5799 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  %5800 = fmul fast float %5723, %5797
  %5801 = fmul fast float %5724, %5798
  %5802 = fmul fast float %5725, %5799
  %5803 = fsub fast float %5677, %5114
  %5804 = fsub fast float %5678, %5113
  %5805 = fsub fast float %5679, %5112
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5803, float %5804, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.unary.f32(i32 25, float %5806)  ; Rsqrt(value)
  %5808 = fmul fast float %5807, %5803
  %5809 = fmul fast float %5807, %5804
  %5810 = fmul fast float %5807, %5805
  %5811 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5678, float %5679, float %5118, float %5119, float %5120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5110, float %5109, float %5808, float %5809, float %5810)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5814 = fmul fast float %5813, %5684
  %5815 = fmul fast float %5813, %5813
  %5816 = fmul fast float %5815, %5337
  %5817 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5818 = fmul fast float %5814, %5817
  %5819 = bitcast float %5674 to i32
  %5820 = ashr i32 %5819, 1
  %5821 = sub nsw i32 1597463007, %5820
  %5822 = bitcast i32 %5821 to float
  %5823 = fmul fast float %5822, %5671
  %5824 = fmul fast float %5822, %5672
  %5825 = fmul fast float %5822, %5673
  %5826 = fsub fast float %5823, %5114
  %5827 = fsub fast float %5824, %5113
  %5828 = fsub fast float %5825, %5112
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %5828, float %5826, float %5827, float %5828)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = call float @dx.op.unary.f32(i32 25, float %5829)  ; Rsqrt(value)
  %5831 = fmul fast float %5826, %5830
  %5832 = fmul fast float %5827, %5830
  %5833 = fmul fast float %5828, %5830
  %5834 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5119, float %5120, float %5831, float %5832, float %5833)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = fmul fast float %5834, %5834
  %5836 = call float @dx.op.unary.f32(i32 6, float %5811)  ; FAbs(value)
  %5837 = fsub fast float 1.000000e+00, %5124
  %5838 = call float @dx.op.binary.f32(i32 35, float %5837, float 0x3F847AE140000000)  ; FMax(a,b)
  %5839 = fmul fast float %5838, %5838
  %5840 = fmul fast float %5839, %5839
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = fmul fast float %5128, %5128
  %5843 = fmul fast float %5842, %5841
  %5844 = fadd fast float %5843, %5840
  %5845 = bitcast float %5844 to i32
  %5846 = ashr i32 %5845, 1
  %5847 = add nsw i32 %5846, 532487669
  %5848 = bitcast i32 %5847 to float
  %5849 = fadd fast float %5848, %5128
  %5850 = fmul fast float %5840, %5835
  %5851 = fsub fast float 1.000000e+00, %5835
  %5852 = fadd fast float %5851, %5850
  %5853 = fmul fast float %5836, %5836
  %5854 = fmul fast float %5853, %5841
  %5855 = fadd fast float %5854, %5840
  %5856 = bitcast float %5855 to i32
  %5857 = ashr i32 %5856, 1
  %5858 = add nsw i32 %5857, 532487669
  %5859 = bitcast i32 %5858 to float
  %5860 = fadd fast float %5859, %5836
  %5861 = fmul fast float %5852, %5852
  %5862 = fmul fast float %5861, %5849
  %5863 = fmul fast float %5862, %5860
  %5864 = fdiv fast float 1.000000e+00, %5863
  %5865 = bitcast float %5840 to i32
  %5866 = sitofp i32 %5865 to float
  %5867 = fmul fast float %5866, 0x3FE7F73180000000
  %5868 = fadd fast float %5867, 0x41AFE27C40000000
  %5869 = fptosi float %5868 to i32
  %5870 = bitcast i32 %5869 to float
  %5871 = fmul fast float %5657, 0x3FD80E9D60000000
  %5872 = fmul fast float %5871, %5822
  %5873 = fadd fast float %5870, %5872
  %5874 = bitcast float %5873 to i32
  %5875 = sub nsw i32 2129859010, %5874
  %5876 = bitcast i32 %5875 to float
  %5877 = fmul fast float %5840, %5864
  %5878 = fmul fast float %5877, %5870
  %5879 = fmul fast float %5878, %5876
  %5880 = call float @dx.op.unary.f32(i32 6, float %5812)  ; FAbs(value)
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = bitcast float %5881 to i32
  %5883 = sitofp i32 %5882 to float
  %5884 = fmul fast float %5883, 5.000000e+00
  %5885 = fadd fast float %5884, 0xC1EFBF8940000000
  %5886 = fptosi float %5885 to i32
  %5887 = bitcast i32 %5886 to float
  %5888 = fsub fast float 1.000000e+00, %5115
  %5889 = fsub fast float 1.000000e+00, %5116
  %5890 = fsub fast float 1.000000e+00, %5126
  %5891 = fmul fast float %5887, %5888
  %5892 = fmul fast float %5887, %5889
  %5893 = fmul fast float %5887, %5890
  %5894 = fadd fast float %5891, %5115
  %5895 = fadd fast float %5892, %5116
  %5896 = fadd fast float %5893, %5126
  br i1 %5252, label %5897, label %5920

; <label>:5897                                    ; preds = %5783
  %5898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3921, float %5880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5899 = extractvalue %dx.types.ResRet.f32 %5898, 0
  %5900 = extractvalue %dx.types.ResRet.f32 %5898, 1
  %5901 = extractvalue %dx.types.ResRet.f32 %5898, 2
  %5902 = fadd fast float %5899, -5.000000e-01
  %5903 = fadd fast float %5900, -5.000000e-01
  %5904 = fadd fast float %5901, -5.000000e-01
  %5905 = fmul fast float %5115, 4.000000e+00
  %5906 = fmul fast float %5905, %5888
  %5907 = fmul fast float %5906, %5902
  %5908 = fmul fast float %5116, 4.000000e+00
  %5909 = fmul fast float %5908, %5889
  %5910 = fmul fast float %5909, %5903
  %5911 = fmul fast float %5126, 4.000000e+00
  %5912 = fmul fast float %5911, %5890
  %5913 = fmul fast float %5912, %5904
  %5914 = fadd fast float %5907, %5894
  %5915 = fadd fast float %5910, %5895
  %5916 = fadd fast float %5913, %5896
  %5917 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5918 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5919 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  br label %5920

; <label>:5920                                    ; preds = %5897, %5783
  %5921 = phi float [ %5917, %5897 ], [ %5894, %5783 ]
  %5922 = phi float [ %5918, %5897 ], [ %5895, %5783 ]
  %5923 = phi float [ %5919, %5897 ], [ %5896, %5783 ]
  %5924 = fmul fast float %5811, 9.843750e-01
  %5925 = fadd fast float %5924, 7.812500e-03
  %5926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5925, float %5242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5927 = extractvalue %dx.types.ResRet.f32 %5926, 2
  %5928 = extractvalue %dx.types.ResRet.f32 %5926, 3
  %5929 = fmul fast float %5927, %5115
  %5930 = fmul fast float %5927, %5116
  %5931 = fmul fast float %5927, %5126
  %5932 = fadd fast float %5929, %5928
  %5933 = fadd fast float %5930, %5928
  %5934 = fadd fast float %5931, %5928
  br i1 %5252, label %5935, label %5958

; <label>:5935                                    ; preds = %5920
  %5936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3921, float %5811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5937 = extractvalue %dx.types.ResRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.ResRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.ResRet.f32 %5936, 2
  %5940 = fadd fast float %5937, -5.000000e-01
  %5941 = fadd fast float %5938, -5.000000e-01
  %5942 = fadd fast float %5939, -5.000000e-01
  %5943 = fmul fast float %5115, 4.000000e+00
  %5944 = fmul fast float %5943, %5888
  %5945 = fmul fast float %5944, %5940
  %5946 = fmul fast float %5116, 4.000000e+00
  %5947 = fmul fast float %5946, %5889
  %5948 = fmul fast float %5947, %5941
  %5949 = fmul fast float %5126, 4.000000e+00
  %5950 = fmul fast float %5949, %5890
  %5951 = fmul fast float %5950, %5942
  %5952 = fadd fast float %5945, %5932
  %5953 = fadd fast float %5948, %5933
  %5954 = fadd fast float %5951, %5934
  %5955 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5956 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5957 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  br label %5958

; <label>:5958                                    ; preds = %5935, %5920
  %5959 = phi float [ %5955, %5935 ], [ %5932, %5920 ]
  %5960 = phi float [ %5956, %5935 ], [ %5933, %5920 ]
  %5961 = phi float [ %5957, %5935 ], [ %5934, %5920 ]
  %5962 = call float @dx.op.binary.f32(i32 35, float %5960, float %5961)  ; FMax(a,b)
  %5963 = call float @dx.op.binary.f32(i32 35, float %5959, float %5962)  ; FMax(a,b)
  %5964 = fsub fast float 1.000000e+00, %5963
  %5965 = fmul fast float %5921, %5879
  %5966 = fmul fast float %5922, %5879
  %5967 = fmul fast float %5923, %5879
  %5968 = fsub fast float 1.000000e+00, %5812
  %5969 = bitcast float %5968 to i32
  %5970 = sitofp i32 %5969 to float
  %5971 = fmul fast float %5970, 5.000000e+00
  %5972 = fadd fast float %5971, 0xC1EFBF8940000000
  %5973 = fptosi float %5972 to i32
  %5974 = bitcast i32 %5973 to float
  %5975 = fmul fast float %5974, %3922
  %5976 = fmul fast float %5964, %5975
  %5977 = fmul fast float %5976, %5302
  %5978 = fmul fast float %5976, %5303
  %5979 = fmul fast float %5976, %5304
  %5980 = fadd fast float %5977, %5965
  %5981 = fadd fast float %5978, %5966
  %5982 = fadd fast float %5979, %5967
  %5983 = fmul fast float %5800, %3918
  %5984 = fmul fast float %5983, %5818
  %5985 = fmul fast float %5984, %5964
  %5986 = fmul fast float %5801, %3918
  %5987 = fmul fast float %5986, %5818
  %5988 = fmul fast float %5987, %5964
  %5989 = fmul fast float %5802, %3918
  %5990 = fmul fast float %5989, %5818
  %5991 = fmul fast float %5990, %5964
  %5992 = fadd fast float %5985, %5639
  %5993 = fadd fast float %5988, %5640
  %5994 = fadd fast float %5991, %5641
  %5995 = fmul fast float %5984, %5980
  %5996 = fmul fast float %5987, %5981
  %5997 = fmul fast float %5990, %5982
  %5998 = fadd fast float %5995, %5636
  %5999 = fadd fast float %5996, %5637
  %6000 = fadd fast float %5997, %5638
  br label %5714

; <label>:6001                                    ; preds = %5714
  br label %6002

; <label>:6002                                    ; preds = %6001, %5602
  %6003 = phi float [ %5604, %5602 ], [ %5715, %6001 ]
  %6004 = phi float [ %5605, %5602 ], [ %5716, %6001 ]
  %6005 = phi float [ %5606, %5602 ], [ %5717, %6001 ]
  %6006 = phi float [ %5607, %5602 ], [ %5718, %6001 ]
  %6007 = phi float [ %5608, %5602 ], [ %5719, %6001 ]
  %6008 = phi float [ %5609, %5602 ], [ %5720, %6001 ]
  %6009 = add i32 %5603, 1
  %6010 = icmp ugt i32 %6009, %5599
  br i1 %6010, label %6011, label %5602

; <label>:6011                                    ; preds = %6002
  br label %6012

; <label>:6012                                    ; preds = %6011, %5578, %5568
  %6013 = phi float [ %5569, %5568 ], [ %5569, %5578 ], [ %6003, %6011 ]
  %6014 = phi float [ %5570, %5568 ], [ %5570, %5578 ], [ %6004, %6011 ]
  %6015 = phi float [ %5571, %5568 ], [ %5571, %5578 ], [ %6005, %6011 ]
  %6016 = phi float [ %5572, %5568 ], [ %5572, %5578 ], [ %6006, %6011 ]
  %6017 = phi float [ %5573, %5568 ], [ %5573, %5578 ], [ %6007, %6011 ]
  %6018 = phi float [ %5574, %5568 ], [ %5574, %5578 ], [ %6008, %6011 ]
  %6019 = call float @dx.op.unary.f32(i32 24, float %5121)  ; Sqrt(value)
  %6020 = call float @dx.op.unary.f32(i32 24, float %5122)  ; Sqrt(value)
  %6021 = call float @dx.op.unary.f32(i32 24, float %5123)  ; Sqrt(value)
  %6022 = fmul fast float %6019, %6016
  %6023 = fmul fast float %6020, %6017
  %6024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.f32 %6024, 0
  br i1 %217, label %6026, label %6046

; <label>:6026                                    ; preds = %6012
  %6027 = fadd fast float %6018, %3924
  %6028 = fmul fast float %6027, %3925
  %6029 = fsub fast float 1.000000e+00, %3925
  %6030 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 3
  %6033 = fmul fast float %6032, %6030
  %6034 = fadd fast float %6033, %6028
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6037 = fmul fast float %6036, %5308
  %6038 = fsub fast float %6034, %6037
  %6039 = fadd fast float %6023, %6022
  %6040 = fmul fast float %6025, %6039
  %6041 = extractvalue %dx.types.CBufRet.f32 %6031, 1
  %6042 = fsub fast float %6038, %6041
  %6043 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6044 = fmul fast float %6042, %6043
  %6045 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  br label %6062

; <label>:6046                                    ; preds = %6012
  %6047 = fmul fast float %6021, %6018
  %6048 = fmul fast float %6025, %6022
  %6049 = fmul fast float %6025, %6023
  %6050 = fmul fast float %6047, %6025
  %6051 = add i32 %33, 356
  %6052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6051, i32 undef)  ; BufferLoad(srv,index,wot)
  %6053 = extractvalue %dx.types.ResRet.i32 %6052, 0
  %6054 = and i32 %6053, 32
  %6055 = icmp eq i32 %6054, 0
  br i1 %6055, label %6062, label %6056

; <label>:6056                                    ; preds = %6046
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 0
  %6059 = fmul fast float %6058, 0x3FE99999A0000000
  %6060 = fadd fast float %6058, %6048
  %6061 = fadd fast float %6059, %6050
  br label %6062

; <label>:6062                                    ; preds = %6056, %6046, %6026
  %6063 = phi float [ %6040, %6026 ], [ %6060, %6056 ], [ %6048, %6046 ]
  %6064 = phi float [ %6045, %6026 ], [ %6049, %6056 ], [ %6049, %6046 ]
  %6065 = phi float [ 1.000000e+00, %6026 ], [ %6061, %6056 ], [ %6050, %6046 ]
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6068 = fmul fast float %6067, %6014
  %6069 = fmul fast float %6067, %6015
  %6070 = fadd fast float %6014, %6013
  %6071 = select i1 %217, float %6070, float %6013
  %6072 = fmul float %6071, %6067
  %6073 = select i1 %217, float 0.000000e+00, float %6068
  %6074 = select i1 %217, float 0.000000e+00, float %6069
  %6075 = fmul fast float %6063, %6019
  %6076 = fmul fast float %6064, %6020
  %6077 = fmul fast float %6065, %6021
  %6078 = fadd fast float %6072, %6075
  %6079 = fadd fast float %6073, %6076
  %6080 = fadd fast float %6074, %6077
  %6081 = select i1 %217, float %6064, float %6079
  %6082 = select i1 %217, float %6065, float %6080
  %6083 = call float @dx.op.binary.f32(i32 36, float %6078, float 3.225500e+04)  ; FMin(a,b)
  %6084 = call float @dx.op.binary.f32(i32 36, float %6081, float 3.225500e+04)  ; FMin(a,b)
  %6085 = call float @dx.op.binary.f32(i32 36, float %6082, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6083)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6084)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6085)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

