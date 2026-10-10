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
; shader hash: cbe7b0d78bc52f5461fbce98677a65de
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
  %922 = add i32 %33, 476
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
  br i1 %401, label %1732, label %967

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
  br i1 %976, label %1732, label %977

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
  br i1 %1150, label %1732, label %1151

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
  %1502 = and i32 %1501, 26624
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1527, label %1504

; <label>:1504                                    ; preds = %1496
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 16384
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1527, label %1509

; <label>:1509                                    ; preds = %1504
  %1510 = and i32 %1506, 1048576
  %1511 = icmp ne i32 %1510, 0
  %1512 = add i32 %33, 480
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = add i32 %1514, 0
  %1516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1516, %dx.types.Handle %75, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1518 = extractvalue %dx.types.ResRet.f32 %1517, 0
  %1519 = add i32 %33, 112
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = lshr i32 %1521, 24
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1518, 0x3F70101020000000
  %1525 = select i1 %1511, float 0x3F70101020000000, float %1524
  %1526 = fmul fast float %1525, %1523
  br label %1527

; <label>:1527                                    ; preds = %1509, %1504, %1496
  %1528 = phi float [ %1526, %1509 ], [ 0.000000e+00, %1504 ], [ 0.000000e+00, %1496 ]
  %1529 = add i32 %33, 112
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 255
  %1533 = uitofp i32 %1532 to float
  %1534 = lshr i32 %1531, 8
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1538 = fmul fast float %1536, %1537
  %1539 = fadd fast float %1538, %1533
  %1540 = fmul fast float %1539, 0x3F70101020000000
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  br i1 %968, label %1542, label %1550

; <label>:1542                                    ; preds = %1527
  %1543 = fsub fast float 1.000000e+00, %1149
  %1544 = fmul fast float %1543, %955
  %1545 = fmul fast float %1543, %956
  %1546 = fmul fast float %1543, %957
  %1547 = fmul fast float %1543, %958
  %1548 = fmul fast float %1543, %959
  %1549 = fmul fast float %1543, %960
  br label %1550

; <label>:1550                                    ; preds = %1542, %1527
  %1551 = phi float [ %1544, %1542 ], [ %955, %1527 ]
  %1552 = phi float [ %1545, %1542 ], [ %956, %1527 ]
  %1553 = phi float [ %1546, %1542 ], [ %957, %1527 ]
  %1554 = phi float [ %1547, %1542 ], [ %958, %1527 ]
  %1555 = phi float [ %1548, %1542 ], [ %959, %1527 ]
  %1556 = phi float [ %1549, %1542 ], [ %960, %1527 ]
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 3
  %1560 = icmp eq i32 %1559, 3
  br i1 %1560, label %1639, label %1561

; <label>:1561                                    ; preds = %1550
  %1562 = and i32 %1558, 16
  %1563 = icmp ne i32 %1562, 0
  %1564 = select i1 %1563, float %1149, float 0.000000e+00
  %1565 = icmp eq i32 %1559, 0
  br i1 %1565, label %1566, label %1594

; <label>:1566                                    ; preds = %1561
  %1567 = and i32 %1558, 64
  %1568 = icmp ne i32 %1567, 0
  %1569 = select i1 %1568, float %1149, float 0.000000e+00
  %1570 = fsub fast float %1369, %1551
  %1571 = fsub fast float %1370, %1552
  %1572 = fsub fast float %1371, %1553
  %1573 = fmul fast float %1564, %1570
  %1574 = fmul fast float %1564, %1571
  %1575 = fmul fast float %1564, %1572
  %1576 = fadd fast float %1573, %1551
  %1577 = fadd fast float %1574, %1552
  %1578 = fadd fast float %1575, %1553
  %1579 = fsub fast float %1355, %961
  %1580 = fmul fast float %1564, %1579
  %1581 = fadd fast float %1580, %961
  %1582 = fsub fast float %1497, %1554
  %1583 = fsub fast float %1498, %1555
  %1584 = fsub fast float %1499, %1556
  %1585 = fmul fast float %1569, %1582
  %1586 = fmul fast float %1569, %1583
  %1587 = fmul fast float %1569, %1584
  %1588 = fadd fast float %1585, %1554
  %1589 = fadd fast float %1586, %1555
  %1590 = fadd fast float %1587, %1556
  %1591 = fsub fast float %1541, %966
  %1592 = fmul fast float %1564, %1591
  %1593 = fadd fast float %1592, %966
  br label %1639

; <label>:1594                                    ; preds = %1561
  %1595 = icmp eq i32 %1559, 1
  br i1 %1595, label %1596, label %1609

; <label>:1596                                    ; preds = %1594
  %1597 = fadd fast float %1369, -1.000000e+00
  %1598 = fadd fast float %1370, -1.000000e+00
  %1599 = fadd fast float %1371, -1.000000e+00
  %1600 = fmul fast float %1564, %1597
  %1601 = fmul fast float %1564, %1598
  %1602 = fmul fast float %1564, %1599
  %1603 = fadd fast float %1600, 1.000000e+00
  %1604 = fadd fast float %1601, 1.000000e+00
  %1605 = fadd fast float %1602, 1.000000e+00
  %1606 = fmul fast float %1603, %1551
  %1607 = fmul fast float %1604, %1552
  %1608 = fmul fast float %1605, %1553
  br label %1639

; <label>:1609                                    ; preds = %1594
  %1610 = icmp eq i32 %1559, 2
  br i1 %1610, label %1611, label %1639

; <label>:1611                                    ; preds = %1609
  %1612 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1613 = call float @dx.op.unary.f32(i32 24, float %1370)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %1371)  ; Sqrt(value)
  %1615 = fadd fast float %1612, -5.000000e-01
  %1616 = fadd fast float %1613, -5.000000e-01
  %1617 = fadd fast float %1614, -5.000000e-01
  %1618 = fmul fast float %1615, %1564
  %1619 = fmul fast float %1616, %1564
  %1620 = fmul fast float %1617, %1564
  %1621 = fadd fast float %1618, 5.000000e-01
  %1622 = fadd fast float %1619, 5.000000e-01
  %1623 = fadd fast float %1620, 5.000000e-01
  %1624 = fmul fast float %1621, 2.000000e+00
  %1625 = fsub fast float 1.000000e+00, %1624
  %1626 = fmul fast float %1625, %1551
  %1627 = fadd fast float %1626, %1624
  %1628 = fmul fast float %1627, %1551
  %1629 = fmul fast float %1622, 2.000000e+00
  %1630 = fsub fast float 1.000000e+00, %1629
  %1631 = fmul fast float %1630, %1552
  %1632 = fadd fast float %1631, %1629
  %1633 = fmul fast float %1632, %1552
  %1634 = fmul fast float %1623, 2.000000e+00
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1635, %1553
  %1637 = fadd fast float %1636, %1634
  %1638 = fmul fast float %1637, %1553
  br label %1639

; <label>:1639                                    ; preds = %1611, %1609, %1596, %1566, %1550
  %1640 = phi float [ %1551, %1550 ], [ %1628, %1611 ], [ %1551, %1609 ], [ %1606, %1596 ], [ %1576, %1566 ]
  %1641 = phi float [ %1552, %1550 ], [ %1633, %1611 ], [ %1552, %1609 ], [ %1607, %1596 ], [ %1577, %1566 ]
  %1642 = phi float [ %1553, %1550 ], [ %1638, %1611 ], [ %1553, %1609 ], [ %1608, %1596 ], [ %1578, %1566 ]
  %1643 = phi float [ %1554, %1550 ], [ %1554, %1611 ], [ %1554, %1609 ], [ %1554, %1596 ], [ %1588, %1566 ]
  %1644 = phi float [ %1555, %1550 ], [ %1555, %1611 ], [ %1555, %1609 ], [ %1555, %1596 ], [ %1589, %1566 ]
  %1645 = phi float [ %1556, %1550 ], [ %1556, %1611 ], [ %1556, %1609 ], [ %1556, %1596 ], [ %1590, %1566 ]
  %1646 = phi float [ %961, %1550 ], [ %961, %1611 ], [ %961, %1609 ], [ %961, %1596 ], [ %1581, %1566 ]
  %1647 = phi float [ %966, %1550 ], [ %966, %1611 ], [ %966, %1609 ], [ %966, %1596 ], [ %1593, %1566 ]
  %1648 = and i32 %1558, 12
  %1649 = icmp eq i32 %1648, 12
  br i1 %1649, label %1732, label %1650

; <label>:1650                                    ; preds = %1639
  %1651 = and i32 %1558, 2097184
  %1652 = icmp eq i32 %1651, 2097184
  %1653 = select i1 %1652, float %1149, float 0.000000e+00
  %1654 = and i32 %1558, 4194336
  %1655 = icmp eq i32 %1654, 4194336
  %1656 = select i1 %1655, float %1149, float 0.000000e+00
  %1657 = and i32 %1558, 8388640
  %1658 = icmp eq i32 %1657, 8388640
  %1659 = select i1 %1658, float %1149, float 0.000000e+00
  %1660 = and i32 %1558, 16384
  %1661 = icmp ne i32 %1660, 0
  %1662 = select i1 %1661, float %1149, float 0.000000e+00
  %1663 = icmp eq i32 %1648, 0
  br i1 %1663, label %1664, label %1680

; <label>:1664                                    ; preds = %1650
  %1665 = fsub fast float %1450, %953
  %1666 = fsub fast float %1451, %954
  %1667 = fmul fast float %1653, %1665
  %1668 = fmul fast float %1653, %1666
  %1669 = fadd fast float %1667, %953
  %1670 = fadd fast float %1668, %954
  %1671 = fsub fast float %1452, %964
  %1672 = fmul fast float %1656, %1671
  %1673 = fadd fast float %1672, %964
  %1674 = fsub fast float %1449, %963
  %1675 = fmul fast float %1659, %1674
  %1676 = fadd fast float %1675, %963
  %1677 = fsub fast float %1528, %965
  %1678 = fmul fast float %1662, %1677
  %1679 = fadd fast float %1678, %965
  br label %1732

; <label>:1680                                    ; preds = %1650
  %1681 = icmp eq i32 %1648, 4
  br i1 %1681, label %1682, label %1716

; <label>:1682                                    ; preds = %1680
  %1683 = fmul fast float %1653, %1450
  %1684 = fmul fast float %1653, %1451
  %1685 = fadd fast float %1683, %953
  %1686 = fadd fast float %1684, %954
  %1687 = call float @dx.op.binary.f32(i32 36, float %964, float %1452)  ; FMin(a,b)
  %1688 = fsub fast float %1687, %964
  %1689 = fmul fast float %1688, %1656
  %1690 = fadd fast float %1689, %964
  %1691 = fadd fast float %1449, %963
  %1692 = fmul fast float %1691, 0x3FF337FAE0000000
  %1693 = fmul fast float %963, %963
  %1694 = fmul fast float %1449, %1449
  %1695 = fadd fast float %1694, %1693
  %1696 = fmul fast float %1695, 0x3FE5152B00000000
  %1697 = fmul fast float %963, 0xBFCC1F85E0000000
  %1698 = fmul fast float %1697, %1449
  %1699 = fadd fast float %1698, 0xBFE1363700000000
  %1700 = fadd fast float %1699, %1692
  %1701 = fsub fast float %1700, %1696
  %1702 = fmul fast float %1691, 0x3FBA6F0D00000000
  %1703 = fmul fast float %1695, 0x3FD0432880000000
  %1704 = fmul fast float %963, 0xBFEF110800000000
  %1705 = fmul fast float %1704, %1449
  %1706 = fadd fast float %1705, 1.000000e+00
  %1707 = fsub fast float %1706, %1702
  %1708 = fadd fast float %1707, %1703
  %1709 = fdiv fast float %1701, %1708
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fsub fast float %1710, %963
  %1712 = fmul fast float %1711, %1659
  %1713 = fadd fast float %1712, %963
  %1714 = fmul fast float %1662, %1528
  %1715 = fadd fast float %1714, %965
  br label %1732

; <label>:1716                                    ; preds = %1680
  %1717 = icmp eq i32 %1648, 8
  br i1 %1717, label %1718, label %1732

; <label>:1718                                    ; preds = %1716
  %1719 = fmul fast float %1653, %1450
  %1720 = fmul fast float %1653, %1451
  %1721 = fadd fast float %1719, %953
  %1722 = fadd fast float %1720, %954
  %1723 = call float @dx.op.binary.f32(i32 36, float %964, float %1452)  ; FMin(a,b)
  %1724 = fsub fast float %1723, %964
  %1725 = fmul fast float %1724, %1656
  %1726 = fadd fast float %1725, %964
  %1727 = fsub fast float %1449, %963
  %1728 = fmul fast float %1659, %1727
  %1729 = fadd fast float %1728, %963
  %1730 = fmul fast float %1662, %1528
  %1731 = fadd fast float %1730, %965
  br label %1732

; <label>:1732                                    ; preds = %1718, %1716, %1682, %1664, %1639, %1148, %967, %952
  %1733 = phi float [ %953, %1639 ], [ %953, %1148 ], [ %953, %952 ], [ %1721, %1718 ], [ %953, %1716 ], [ %1685, %1682 ], [ %1669, %1664 ], [ %953, %967 ]
  %1734 = phi float [ %954, %1639 ], [ %954, %1148 ], [ %954, %952 ], [ %1722, %1718 ], [ %954, %1716 ], [ %1686, %1682 ], [ %1670, %1664 ], [ %954, %967 ]
  %1735 = phi float [ %1640, %1639 ], [ %955, %1148 ], [ %955, %952 ], [ %1640, %1718 ], [ %1640, %1716 ], [ %1640, %1682 ], [ %1640, %1664 ], [ %955, %967 ]
  %1736 = phi float [ %1641, %1639 ], [ %956, %1148 ], [ %956, %952 ], [ %1641, %1718 ], [ %1641, %1716 ], [ %1641, %1682 ], [ %1641, %1664 ], [ %956, %967 ]
  %1737 = phi float [ %1642, %1639 ], [ %957, %1148 ], [ %957, %952 ], [ %1642, %1718 ], [ %1642, %1716 ], [ %1642, %1682 ], [ %1642, %1664 ], [ %957, %967 ]
  %1738 = phi float [ %1643, %1639 ], [ %958, %1148 ], [ %958, %952 ], [ %1643, %1718 ], [ %1643, %1716 ], [ %1643, %1682 ], [ %1643, %1664 ], [ %958, %967 ]
  %1739 = phi float [ %1644, %1639 ], [ %959, %1148 ], [ %959, %952 ], [ %1644, %1718 ], [ %1644, %1716 ], [ %1644, %1682 ], [ %1644, %1664 ], [ %959, %967 ]
  %1740 = phi float [ %1645, %1639 ], [ %960, %1148 ], [ %960, %952 ], [ %1645, %1718 ], [ %1645, %1716 ], [ %1645, %1682 ], [ %1645, %1664 ], [ %960, %967 ]
  %1741 = phi float [ %1646, %1639 ], [ %961, %1148 ], [ %961, %952 ], [ %1646, %1718 ], [ %1646, %1716 ], [ %1646, %1682 ], [ %1646, %1664 ], [ %961, %967 ]
  %1742 = phi float [ %963, %1639 ], [ %963, %1148 ], [ %963, %952 ], [ %1729, %1718 ], [ %963, %1716 ], [ %1713, %1682 ], [ %1676, %1664 ], [ %963, %967 ]
  %1743 = phi float [ %964, %1639 ], [ %964, %1148 ], [ %964, %952 ], [ %1726, %1718 ], [ %964, %1716 ], [ %1690, %1682 ], [ %1673, %1664 ], [ %964, %967 ]
  %1744 = phi float [ %965, %1639 ], [ %965, %1148 ], [ %965, %952 ], [ %1731, %1718 ], [ %965, %1716 ], [ %1715, %1682 ], [ %1679, %1664 ], [ %965, %967 ]
  %1745 = phi float [ %1647, %1639 ], [ %966, %1148 ], [ %966, %952 ], [ %1647, %1718 ], [ %1647, %1716 ], [ %1647, %1682 ], [ %1647, %1664 ], [ %966, %967 ]
  br i1 %403, label %2511, label %1746

; <label>:1746                                    ; preds = %1732
  %1747 = icmp ult i32 %456, 3
  %1748 = add i32 %33, 56
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %33, 60
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = or i32 %1753, %1750
  %1755 = icmp eq i32 %1754, 0
  br i1 %1755, label %2511, label %1756

; <label>:1756                                    ; preds = %1746
  %1757 = and i32 %1750, 262144
  %1758 = icmp ne i32 %1757, 0
  %1759 = select i1 %1758, float %39, float 1.000000e+00
  %1760 = select i1 %1758, float %40, float 0.000000e+00
  %1761 = select i1 %1758, float %41, float 0.000000e+00
  %1762 = select i1 %1758, float %42, float 1.000000e+00
  %1763 = select i1 %1758, float %43, float %66
  %1764 = select i1 %1758, float %44, float %67
  %1765 = add i32 %33, 316
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = lshr i32 %1767, 16
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = fmul fast float %1769, 0x3F50624DE0000000
  %1771 = add i32 %33, 120
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = lshr i32 %1773, 16
  %1775 = and i32 %1774, 255
  %1776 = lshr i32 %1773, 24
  %1777 = add i32 %33, 324
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = and i32 %1779, 65535
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = lshr i32 %1779, 16
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = add i32 %33, 64
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = lshr i32 %1786, 22
  %1788 = shl nuw nsw i32 %1787, 5
  %1789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1788)  ; LegacyF16ToF32(value)
  %1790 = shl i32 %1786, 4
  %1791 = and i32 %1790, 32752
  %1792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1791)  ; LegacyF16ToF32(value)
  %1793 = lshr i32 %1786, 7
  %1794 = and i32 %1793, 32752
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 3
  %1798 = fmul fast float %1797, 1.000000e+03
  %1799 = fmul fast float %353, %1798
  %1800 = call float @dx.op.unary.f32(i32 22, float %1799)  ; Frc(value)
  %1801 = fadd fast float %1800, %343
  %1802 = fmul fast float %354, %1798
  %1803 = call float @dx.op.unary.f32(i32 22, float %1802)  ; Frc(value)
  %1804 = fadd fast float %1803, %345
  %1805 = fmul fast float %1770, %1798
  %1806 = call float @dx.op.unary.f32(i32 22, float %1805)  ; Frc(value)
  %1807 = fmul fast float %1806, 0x401921FB60000000
  %1808 = fadd fast float %1807, %1789
  %1809 = call float @dx.op.unary.f32(i32 13, float %1808)  ; Sin(value)
  %1810 = call float @dx.op.unary.f32(i32 12, float %1808)  ; Cos(value)
  %1811 = fsub fast float -0.000000e+00, %1809
  %1812 = fadd fast float %1763, -5.000000e-01
  %1813 = fadd fast float %1764, -5.000000e-01
  %1814 = fmul fast float %1781, %1812
  %1815 = fmul fast float %1783, %1813
  %1816 = fadd fast float %1814, 5.000000e-01
  %1817 = fadd fast float %1815, 5.000000e-01
  %1818 = fmul fast float %1792, %1816
  %1819 = fmul fast float %1795, %1817
  %1820 = fmul fast float %1810, %1818
  %1821 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1819, float %1820)  ; FMad(a,b,c)
  %1822 = fmul fast float %1809, %1818
  %1823 = call float @dx.op.tertiary.f32(i32 46, float %1810, float %1819, float %1822)  ; FMad(a,b,c)
  %1824 = fadd fast float %1801, %1821
  %1825 = fadd fast float %1804, %1823
  %1826 = icmp ugt i32 %1775, 1
  %1827 = icmp ugt i32 %1773, 33554431
  %1828 = or i1 %1827, %1826
  br i1 %1828, label %1829, label %1854

; <label>:1829                                    ; preds = %1756
  %1830 = add i32 %33, 260
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = lshr i32 %1832, 16
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = fmul fast float %1797, %1834
  %1836 = call float @dx.op.unary.f32(i32 22, float %1835)  ; Frc(value)
  %1837 = mul nuw nsw i32 %1775, %1776
  %1838 = uitofp i32 %1837 to float
  %1839 = fmul fast float %1836, %1838
  %1840 = call float @dx.op.unary.f32(i32 27, float %1839)  ; Round_ni(value)
  %1841 = fptoui float %1840 to i32
  %1842 = urem i32 %1841, %1775
  %1843 = udiv i32 %1841, %1776
  %1844 = call float @dx.op.unary.f32(i32 22, float %1824)  ; Frc(value)
  %1845 = call float @dx.op.unary.f32(i32 22, float %1825)  ; Frc(value)
  %1846 = uitofp i32 %1842 to float
  %1847 = uitofp i32 %1843 to float
  %1848 = fadd fast float %1844, %1846
  %1849 = fadd fast float %1845, %1847
  %1850 = uitofp i32 %1775 to float
  %1851 = uitofp i32 %1776 to float
  %1852 = fdiv fast float %1848, %1850
  %1853 = fdiv fast float %1849, %1851
  br label %1854

; <label>:1854                                    ; preds = %1829, %1756
  %1855 = phi float [ %1852, %1829 ], [ %1824, %1756 ]
  %1856 = phi float [ %1853, %1829 ], [ %1825, %1756 ]
  %1857 = and i32 %1750, 256
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %1905, label %1859

; <label>:1859                                    ; preds = %1854
  %1860 = add i32 %33, 448
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = add i32 %1862, 0
  %1864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1865 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1864, %dx.types.Handle %75, float %1855, float %1856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = add i32 %33, 132
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = shl i32 %1869, 4
  %1871 = and i32 %1870, 32752
  %1872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1871)  ; LegacyF16ToF32(value)
  %1873 = lshr i32 %1869, 7
  %1874 = and i32 %1873, 32752
  %1875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1874)  ; LegacyF16ToF32(value)
  %1876 = fsub fast float 1.000000e+00, %452
  %1877 = call float @dx.op.binary.f32(i32 35, float %1876, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1878 = bitcast float %452 to i32
  %1879 = sitofp i32 %1878 to float
  %1880 = fadd fast float %1879, 0xC1CFBF8940000000
  %1881 = fmul fast float %1875, %1880
  %1882 = fadd fast float %1881, 0x41CFBF8940000000
  %1883 = fptosi float %1882 to i32
  %1884 = bitcast i32 %1883 to float
  %1885 = bitcast float %1877 to i32
  %1886 = sitofp i32 %1885 to float
  %1887 = fadd fast float %1886, 0xC1CFBF8940000000
  %1888 = fmul fast float %1887, %1875
  %1889 = fadd fast float %1888, 0x41CFBF8940000000
  %1890 = fptosi float %1889 to i32
  %1891 = bitcast i32 %1890 to float
  %1892 = fmul fast float %1884, %1872
  %1893 = fmul fast float %1891, %1872
  %1894 = fsub fast float %1877, %1892
  %1895 = fadd fast float %1893, %1877
  %1896 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1897 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1898 = fsub fast float %1866, %1896
  %1899 = fsub fast float %1897, %1896
  %1900 = bitcast float %1899 to i32
  %1901 = sub nsw i32 2129859010, %1900
  %1902 = bitcast i32 %1901 to float
  %1903 = fmul fast float %1902, %1898
  %1904 = call float @dx.op.unary.f32(i32 7, float %1903)  ; Saturate(value)
  br label %1905

; <label>:1905                                    ; preds = %1859, %1854
  %1906 = phi float [ %1904, %1859 ], [ %452, %1854 ]
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = and i32 %1908, 128
  %1910 = icmp eq i32 %1909, 0
  br i1 %1910, label %1927, label %1911

; <label>:1911                                    ; preds = %1905
  %1912 = add i32 %33, 432
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = add i32 %1914, 0
  %1916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1916, %dx.types.Handle %75, float %1855, float %1856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = and i32 %1920, 524288
  %1922 = icmp ne i32 %1921, 0
  %1923 = fcmp fast ogt float %1918, 0x3FE0101020000000
  %1924 = select i1 %1923, float 1.000000e+00, float 0.000000e+00
  %1925 = select i1 %1922, float %1924, float %1918
  %1926 = fmul fast float %1925, %1906
  br label %1927

; <label>:1927                                    ; preds = %1911, %1905
  %1928 = phi float [ %1926, %1911 ], [ %1906, %1905 ]
  %1929 = fcmp fast ult float %1928, 0x3F70101020000000
  br i1 %1929, label %2511, label %1930

; <label>:1930                                    ; preds = %1927
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = and i32 %1932, 16
  %1934 = icmp eq i32 %1933, 0
  br i1 %1934, label %2133, label %1935

; <label>:1935                                    ; preds = %1930
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = add i32 %33, 384
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = add i32 %1940, 0
  %1942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1942, %dx.types.Handle %74, float %1855, float %1856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.ResRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.ResRet.f32 %1943, 2
  %1947 = extractvalue %dx.types.ResRet.f32 %1943, 3
  %1948 = and i32 %1937, 255
  %1949 = uitofp i32 %1948 to float
  %1950 = lshr i32 %1937, 8
  %1951 = and i32 %1950, 255
  %1952 = uitofp i32 %1951 to float
  %1953 = fmul fast float %1947, %1949
  %1954 = fadd fast float %1953, %1952
  %1955 = fmul fast float %1954, 0x3F70101000000000
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = and i32 %1957, 512
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %1968, label %1960

; <label>:1960                                    ; preds = %1935
  %1961 = add i32 %33, 468
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = add i32 %1963, 0
  %1965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1965, %dx.types.Handle %75, float %1855, float %1856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  br label %1968

; <label>:1968                                    ; preds = %1960, %1935
  %1969 = phi float [ %1967, %1960 ], [ 1.000000e+00, %1935 ]
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = and i32 %1971, 33554432
  %1973 = icmp eq i32 %1972, 0
  br i1 %1973, label %2080, label %1974

; <label>:1974                                    ; preds = %1968
  %1975 = add i32 %33, 256
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 65535
  %1979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1978)  ; LegacyF16ToF32(value)
  %1980 = lshr i32 %1977, 16
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = add i32 %33, 260
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = and i32 %1984, 65535
  %1986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1985)  ; LegacyF16ToF32(value)
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = lshr i32 %1988, 24
  %1990 = uitofp i32 %1989 to float
  %1991 = fmul fast float %1990, 0x3F70101020000000
  %1992 = and i32 %1988, 255
  %1993 = uitofp i32 %1992 to float
  %1994 = fmul fast float %1993, 0x3F70101020000000
  %1995 = lshr i32 %1988, 8
  %1996 = and i32 %1995, 255
  %1997 = uitofp i32 %1996 to float
  %1998 = fmul fast float %1997, 0x3F70101020000000
  %1999 = lshr i32 %1988, 16
  %2000 = and i32 %1999, 255
  %2001 = uitofp i32 %2000 to float
  %2002 = fmul fast float %2001, 0x3F70101020000000
  %2003 = add i32 %33, 252
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = lshr i32 %2005, 24
  %2007 = uitofp i32 %2006 to float
  %2008 = fmul fast float %2007, 0x3F70101020000000
  %2009 = and i32 %2005, 255
  %2010 = uitofp i32 %2009 to float
  %2011 = fmul fast float %2010, 0x3F70101020000000
  %2012 = lshr i32 %2005, 8
  %2013 = and i32 %2012, 255
  %2014 = uitofp i32 %2013 to float
  %2015 = fmul fast float %2014, 0x3F70101020000000
  %2016 = lshr i32 %2005, 16
  %2017 = and i32 %2016, 255
  %2018 = uitofp i32 %2017 to float
  %2019 = fmul fast float %2018, 0x3F70101020000000
  %2020 = bitcast float %1944 to i32
  %2021 = ashr i32 %2020, 1
  %2022 = sub nsw i32 1597463174, %2021
  %2023 = bitcast i32 %2022 to float
  %2024 = fmul fast float %1944, 5.000000e-01
  %2025 = fmul fast float %2023, %2023
  %2026 = fmul fast float %2025, %2024
  %2027 = fsub fast float 1.500000e+00, %2026
  %2028 = fmul fast float %2023, %1944
  %2029 = fmul fast float %2028, %2027
  %2030 = bitcast float %1945 to i32
  %2031 = ashr i32 %2030, 1
  %2032 = sub nsw i32 1597463174, %2031
  %2033 = bitcast i32 %2032 to float
  %2034 = fmul fast float %1945, 5.000000e-01
  %2035 = fmul fast float %2033, %2033
  %2036 = fmul fast float %2035, %2034
  %2037 = fsub fast float 1.500000e+00, %2036
  %2038 = fmul fast float %2033, %1945
  %2039 = fmul fast float %2038, %2037
  %2040 = bitcast float %1946 to i32
  %2041 = ashr i32 %2040, 1
  %2042 = sub nsw i32 1597463174, %2041
  %2043 = bitcast i32 %2042 to float
  %2044 = fmul fast float %1946, 5.000000e-01
  %2045 = fmul fast float %2043, %2043
  %2046 = fmul fast float %2045, %2044
  %2047 = fsub fast float 1.500000e+00, %2046
  %2048 = fmul fast float %2043, %1946
  %2049 = fmul fast float %2048, %2047
  %2050 = fsub fast float %2029, %2011
  %2051 = fsub fast float %2039, %2015
  %2052 = fsub fast float %2049, %2019
  %2053 = fmul fast float %2050, %1979
  %2054 = fmul fast float %2051, %1981
  %2055 = fmul fast float %2052, %1986
  %2056 = fadd fast float %2053, %1994
  %2057 = fadd fast float %2054, %1998
  %2058 = fadd fast float %2055, %2002
  %2059 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2060 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2061 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2062 = fmul fast float %2059, %2059
  %2063 = fmul fast float %2060, %2060
  %2064 = fmul fast float %2061, %2061
  %2065 = fsub fast float %2062, %1944
  %2066 = fsub fast float %2063, %1945
  %2067 = fsub fast float %2064, %1946
  %2068 = fmul fast float %2065, %1969
  %2069 = fmul fast float %2066, %1969
  %2070 = fmul fast float %2067, %1969
  %2071 = fadd fast float %2068, %1944
  %2072 = fadd fast float %2069, %1945
  %2073 = fadd fast float %2070, %1946
  %2074 = fadd fast float %1991, %1955
  %2075 = fsub fast float %2074, %2008
  %2076 = call float @dx.op.unary.f32(i32 7, float %2075)  ; Saturate(value)
  %2077 = fsub fast float %2076, %1955
  %2078 = fmul fast float %2077, %1969
  %2079 = fadd fast float %2078, %1955
  br label %2133

; <label>:2080                                    ; preds = %1968
  %2081 = and i32 %1971, 134217728
  %2082 = icmp eq i32 %2081, 0
  br i1 %2082, label %2117, label %2083

; <label>:2083                                    ; preds = %2080
  %2084 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2085 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2086 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2087 = fadd fast float %2084, -5.000000e-01
  %2088 = fadd fast float %2085, -5.000000e-01
  %2089 = fadd fast float %2086, -5.000000e-01
  %2090 = fmul fast float %2087, %1969
  %2091 = fmul fast float %2088, %1969
  %2092 = fmul fast float %2089, %1969
  %2093 = fadd fast float %2090, 5.000000e-01
  %2094 = fadd fast float %2091, 5.000000e-01
  %2095 = fadd fast float %2092, 5.000000e-01
  %2096 = call float @dx.op.unary.f32(i32 24, float %1944)  ; Sqrt(value)
  %2097 = call float @dx.op.unary.f32(i32 24, float %1945)  ; Sqrt(value)
  %2098 = call float @dx.op.unary.f32(i32 24, float %1946)  ; Sqrt(value)
  %2099 = fmul fast float %2093, 2.000000e+00
  %2100 = fsub fast float 1.000000e+00, %2099
  %2101 = fmul fast float %2100, %2096
  %2102 = fadd fast float %2101, %2099
  %2103 = fmul fast float %2102, %2096
  %2104 = fmul fast float %2094, 2.000000e+00
  %2105 = fsub fast float 1.000000e+00, %2104
  %2106 = fmul fast float %2105, %2097
  %2107 = fadd fast float %2106, %2104
  %2108 = fmul fast float %2107, %2097
  %2109 = fmul fast float %2095, 2.000000e+00
  %2110 = fsub fast float 1.000000e+00, %2109
  %2111 = fmul fast float %2110, %2098
  %2112 = fadd fast float %2111, %2109
  %2113 = fmul fast float %2112, %2098
  %2114 = fmul fast float %2103, %2103
  %2115 = fmul fast float %2108, %2108
  %2116 = fmul fast float %2113, %2113
  br label %2133

; <label>:2117                                    ; preds = %2080
  %2118 = fmul fast float %330, %330
  %2119 = fmul fast float %334, %334
  %2120 = fmul fast float %338, %338
  %2121 = fadd fast float %2118, -1.000000e+00
  %2122 = fadd fast float %2119, -1.000000e+00
  %2123 = fadd fast float %2120, -1.000000e+00
  %2124 = fmul fast float %1969, %2121
  %2125 = fmul fast float %1969, %2122
  %2126 = fmul fast float %1969, %2123
  %2127 = fadd fast float %2124, 1.000000e+00
  %2128 = fadd fast float %2125, 1.000000e+00
  %2129 = fadd fast float %2126, 1.000000e+00
  %2130 = fmul fast float %2127, %1944
  %2131 = fmul fast float %2128, %1945
  %2132 = fmul fast float %2129, %1946
  br label %2133

; <label>:2133                                    ; preds = %2117, %2083, %1974, %1930
  %2134 = phi float [ %2079, %1974 ], [ %1955, %2083 ], [ %1955, %2117 ], [ 0x3FA23C0BE0000000, %1930 ]
  %2135 = phi float [ %2071, %1974 ], [ %2114, %2083 ], [ %2130, %2117 ], [ 1.000000e+00, %1930 ]
  %2136 = phi float [ %2072, %1974 ], [ %2115, %2083 ], [ %2131, %2117 ], [ 1.000000e+00, %1930 ]
  %2137 = phi float [ %2073, %1974 ], [ %2116, %2083 ], [ %2132, %2117 ], [ 1.000000e+00, %1930 ]
  %2138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.i32 %2138, 1
  %2140 = and i32 %2139, 1
  %2141 = icmp ne i32 %2140, 0
  %2142 = add i32 %33, 356
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 32
  %2146 = icmp ne i32 %2145, 0
  %2147 = and i1 %2141, %2146
  %2148 = select i1 %2147, float 1.000000e+00, float %2135
  %2149 = select i1 %2147, float 0x3FD3333340000000, float %2136
  %2150 = select i1 %2147, float 0x3FD3333340000000, float %2137
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = and i32 %2152, 32
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2227, label %2155

; <label>:2155                                    ; preds = %2133
  %2156 = add i32 %33, 124
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = add i32 %33, 400
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = add i32 %2161, 0
  %2163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2163, %dx.types.Handle %74, float %1855, float %1856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.ResRet.f32 %2164, 1
  %2167 = extractvalue %dx.types.ResRet.f32 %2164, 2
  %2168 = extractvalue %dx.types.ResRet.f32 %2164, 3
  %2169 = and i32 %2158, 255
  %2170 = uitofp i32 %2169 to float
  %2171 = lshr i32 %2158, 8
  %2172 = and i32 %2171, 255
  %2173 = uitofp i32 %2172 to float
  %2174 = lshr i32 %2158, 16
  %2175 = and i32 %2174, 255
  %2176 = uitofp i32 %2175 to float
  %2177 = fmul fast float %2176, 0x3F70101000000000
  %2178 = fmul fast float %2165, %2170
  %2179 = fadd fast float %2178, %2173
  %2180 = fmul fast float %2179, 0x3F70101000000000
  %2181 = fadd fast float %2166, -5.000000e-01
  %2182 = fadd fast float %2168, -5.000000e-01
  %2183 = fmul fast float %2181, %2177
  %2184 = fmul fast float %2182, %2177
  %2185 = fadd fast float %2183, 5.000000e-01
  %2186 = fadd fast float %2184, 5.000000e-01
  %2187 = fmul fast float %2185, 2.000000e+00
  %2188 = fadd fast float %2187, -1.000000e+00
  %2189 = fmul fast float %2186, 2.000000e+00
  %2190 = fadd fast float %2189, -1.000000e+00
  %2191 = fadd fast float %2188, %2190
  %2192 = fmul fast float %2191, 5.000000e-01
  %2193 = fsub fast float %2188, %2190
  %2194 = fmul fast float %2193, 5.000000e-01
  %2195 = call float @dx.op.unary.f32(i32 6, float %2192)  ; FAbs(value)
  %2196 = fsub fast float 1.000000e+00, %2195
  %2197 = call float @dx.op.unary.f32(i32 6, float %2194)  ; FAbs(value)
  %2198 = fsub fast float %2196, %2197
  %2199 = call float @dx.op.dot3.f32(i32 55, float %2192, float %2194, float %2198, float %2192, float %2194, float %2198)  ; Dot3(ax,ay,az,bx,by,bz)
  %2200 = call float @dx.op.unary.f32(i32 25, float %2199)  ; Rsqrt(value)
  %2201 = fmul fast float %2192, %2200
  %2202 = fmul fast float %2194, %2200
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 67108864
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2223, label %2207

; <label>:2207                                    ; preds = %2155
  %2208 = add i32 %33, 312
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %2210, 65535
  %2212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2211)  ; LegacyF16ToF32(value)
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 65535
  %2216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2215)  ; LegacyF16ToF32(value)
  %2217 = lshr i32 %2210, 16
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = fsub fast float %2180, %2218
  %2220 = fmul fast float %2219, %2212
  %2221 = fadd fast float %2220, %2216
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  br label %2223

; <label>:2223                                    ; preds = %2207, %2155
  %2224 = phi float [ %2222, %2207 ], [ %2180, %2155 ]
  %2225 = call float @dx.op.dot2.f32(i32 54, float %2201, float %2202, float %1759, float %1760)  ; Dot2(ax,ay,bx,by)
  %2226 = call float @dx.op.dot2.f32(i32 54, float %2201, float %2202, float %1761, float %1762)  ; Dot2(ax,ay,bx,by)
  br label %2227

; <label>:2227                                    ; preds = %2223, %2133
  %2228 = phi float [ %2224, %2223 ], [ 0x3FD6666660000000, %2133 ]
  %2229 = phi float [ %2225, %2223 ], [ 0.000000e+00, %2133 ]
  %2230 = phi float [ %2226, %2223 ], [ 0.000000e+00, %2133 ]
  %2231 = phi float [ %2167, %2223 ], [ 1.000000e+00, %2133 ]
  %2232 = add i32 %33, 192
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = lshr i32 %2234, 22
  %2236 = shl nuw nsw i32 %2235, 5
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 64
  %2241 = icmp eq i32 %2240, 0
  br i1 %2241, label %2275, label %2242

; <label>:2242                                    ; preds = %2227
  %2243 = add i32 %33, 416
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2243, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = add i32 %2245, 0
  %2247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 131072
  %2251 = icmp eq i32 %2250, 0
  %2252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2247, %dx.types.Handle %74, float %1855, float %1856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2253 = extractvalue %dx.types.ResRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.ResRet.f32 %2252, 1
  %2255 = extractvalue %dx.types.ResRet.f32 %2252, 2
  %2256 = fmul fast float %2253, %318
  %2257 = fmul fast float %2254, %321
  %2258 = fmul fast float %2255, %324
  br i1 %2251, label %2265, label %2259

; <label>:2259                                    ; preds = %2242
  %2260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2261 = extractvalue %dx.types.CBufRet.f32 %2260, 0
  %2262 = fmul fast float %2261, %2256
  %2263 = fmul fast float %2261, %2257
  %2264 = fmul fast float %2261, %2258
  br label %2265

; <label>:2265                                    ; preds = %2259, %2242
  %2266 = phi float [ %2262, %2259 ], [ %2256, %2242 ]
  %2267 = phi float [ %2263, %2259 ], [ %2257, %2242 ]
  %2268 = phi float [ %2264, %2259 ], [ %2258, %2242 ]
  %2269 = fmul fast float %2266, %2237
  %2270 = select i1 %217, float %2269, float %2266
  %2271 = call float @dx.op.dot3.f32(i32 55, float %2270, float %2267, float %2268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2272 = select i1 %217, float 0.000000e+00, float %2266
  %2273 = select i1 %217, float %2271, float %2267
  %2274 = select i1 %217, float 0.000000e+00, float %2268
  br label %2275

; <label>:2275                                    ; preds = %2265, %2227
  %2276 = phi float [ %2272, %2265 ], [ 0.000000e+00, %2227 ]
  %2277 = phi float [ %2273, %2265 ], [ 0.000000e+00, %2227 ]
  %2278 = phi float [ %2274, %2265 ], [ 0.000000e+00, %2227 ]
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 26624
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2306, label %2283

; <label>:2283                                    ; preds = %2275
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 16384
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2306, label %2288

; <label>:2288                                    ; preds = %2283
  %2289 = and i32 %2285, 1048576
  %2290 = icmp ne i32 %2289, 0
  %2291 = add i32 %33, 484
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = add i32 %2293, 0
  %2295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2296 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2295, %dx.types.Handle %75, float %1855, float %1856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = add i32 %33, 128
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = lshr i32 %2300, 24
  %2302 = uitofp i32 %2301 to float
  %2303 = fmul fast float %2297, 0x3F70101020000000
  %2304 = select i1 %2290, float 0x3F70101020000000, float %2303
  %2305 = fmul fast float %2304, %2302
  br label %2306

; <label>:2306                                    ; preds = %2288, %2283, %2275
  %2307 = phi float [ %2305, %2288 ], [ 0.000000e+00, %2283 ], [ 0.000000e+00, %2275 ]
  %2308 = add i32 %33, 128
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 255
  %2312 = uitofp i32 %2311 to float
  %2313 = lshr i32 %2310, 8
  %2314 = and i32 %2313, 255
  %2315 = uitofp i32 %2314 to float
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2148, float %2149, float %2150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = fmul fast float %2315, %2316
  %2318 = fadd fast float %2317, %2312
  %2319 = fmul fast float %2318, 0x3F70101020000000
  %2320 = call float @dx.op.unary.f32(i32 7, float %2319)  ; Saturate(value)
  br i1 %1747, label %2321, label %2329

; <label>:2321                                    ; preds = %2306
  %2322 = fsub fast float 1.000000e+00, %1928
  %2323 = fmul fast float %2322, %1735
  %2324 = fmul fast float %2322, %1736
  %2325 = fmul fast float %2322, %1737
  %2326 = fmul fast float %2322, %1738
  %2327 = fmul fast float %2322, %1739
  %2328 = fmul fast float %2322, %1740
  br label %2329

; <label>:2329                                    ; preds = %2321, %2306
  %2330 = phi float [ %2323, %2321 ], [ %1735, %2306 ]
  %2331 = phi float [ %2324, %2321 ], [ %1736, %2306 ]
  %2332 = phi float [ %2325, %2321 ], [ %1737, %2306 ]
  %2333 = phi float [ %2326, %2321 ], [ %1738, %2306 ]
  %2334 = phi float [ %2327, %2321 ], [ %1739, %2306 ]
  %2335 = phi float [ %2328, %2321 ], [ %1740, %2306 ]
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 3
  %2339 = icmp eq i32 %2338, 3
  br i1 %2339, label %2418, label %2340

; <label>:2340                                    ; preds = %2329
  %2341 = and i32 %2337, 16
  %2342 = icmp ne i32 %2341, 0
  %2343 = select i1 %2342, float %1928, float 0.000000e+00
  %2344 = icmp eq i32 %2338, 0
  br i1 %2344, label %2345, label %2373

; <label>:2345                                    ; preds = %2340
  %2346 = and i32 %2337, 64
  %2347 = icmp ne i32 %2346, 0
  %2348 = select i1 %2347, float %1928, float 0.000000e+00
  %2349 = fsub fast float %2148, %2330
  %2350 = fsub fast float %2149, %2331
  %2351 = fsub fast float %2150, %2332
  %2352 = fmul fast float %2343, %2349
  %2353 = fmul fast float %2343, %2350
  %2354 = fmul fast float %2343, %2351
  %2355 = fadd fast float %2352, %2330
  %2356 = fadd fast float %2353, %2331
  %2357 = fadd fast float %2354, %2332
  %2358 = fsub fast float %2134, %1741
  %2359 = fmul fast float %2343, %2358
  %2360 = fadd fast float %2359, %1741
  %2361 = fsub fast float %2276, %2333
  %2362 = fsub fast float %2277, %2334
  %2363 = fsub fast float %2278, %2335
  %2364 = fmul fast float %2348, %2361
  %2365 = fmul fast float %2348, %2362
  %2366 = fmul fast float %2348, %2363
  %2367 = fadd fast float %2364, %2333
  %2368 = fadd fast float %2365, %2334
  %2369 = fadd fast float %2366, %2335
  %2370 = fsub fast float %2320, %1745
  %2371 = fmul fast float %2343, %2370
  %2372 = fadd fast float %2371, %1745
  br label %2418

; <label>:2373                                    ; preds = %2340
  %2374 = icmp eq i32 %2338, 1
  br i1 %2374, label %2375, label %2388

; <label>:2375                                    ; preds = %2373
  %2376 = fadd fast float %2148, -1.000000e+00
  %2377 = fadd fast float %2149, -1.000000e+00
  %2378 = fadd fast float %2150, -1.000000e+00
  %2379 = fmul fast float %2343, %2376
  %2380 = fmul fast float %2343, %2377
  %2381 = fmul fast float %2343, %2378
  %2382 = fadd fast float %2379, 1.000000e+00
  %2383 = fadd fast float %2380, 1.000000e+00
  %2384 = fadd fast float %2381, 1.000000e+00
  %2385 = fmul fast float %2382, %2330
  %2386 = fmul fast float %2383, %2331
  %2387 = fmul fast float %2384, %2332
  br label %2418

; <label>:2388                                    ; preds = %2373
  %2389 = icmp eq i32 %2338, 2
  br i1 %2389, label %2390, label %2418

; <label>:2390                                    ; preds = %2388
  %2391 = call float @dx.op.unary.f32(i32 24, float %2148)  ; Sqrt(value)
  %2392 = call float @dx.op.unary.f32(i32 24, float %2149)  ; Sqrt(value)
  %2393 = call float @dx.op.unary.f32(i32 24, float %2150)  ; Sqrt(value)
  %2394 = fadd fast float %2391, -5.000000e-01
  %2395 = fadd fast float %2392, -5.000000e-01
  %2396 = fadd fast float %2393, -5.000000e-01
  %2397 = fmul fast float %2394, %2343
  %2398 = fmul fast float %2395, %2343
  %2399 = fmul fast float %2396, %2343
  %2400 = fadd fast float %2397, 5.000000e-01
  %2401 = fadd fast float %2398, 5.000000e-01
  %2402 = fadd fast float %2399, 5.000000e-01
  %2403 = fmul fast float %2400, 2.000000e+00
  %2404 = fsub fast float 1.000000e+00, %2403
  %2405 = fmul fast float %2404, %2330
  %2406 = fadd fast float %2405, %2403
  %2407 = fmul fast float %2406, %2330
  %2408 = fmul fast float %2401, 2.000000e+00
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2409, %2331
  %2411 = fadd fast float %2410, %2408
  %2412 = fmul fast float %2411, %2331
  %2413 = fmul fast float %2402, 2.000000e+00
  %2414 = fsub fast float 1.000000e+00, %2413
  %2415 = fmul fast float %2414, %2332
  %2416 = fadd fast float %2415, %2413
  %2417 = fmul fast float %2416, %2332
  br label %2418

; <label>:2418                                    ; preds = %2390, %2388, %2375, %2345, %2329
  %2419 = phi float [ %2330, %2329 ], [ %2407, %2390 ], [ %2330, %2388 ], [ %2385, %2375 ], [ %2355, %2345 ]
  %2420 = phi float [ %2331, %2329 ], [ %2412, %2390 ], [ %2331, %2388 ], [ %2386, %2375 ], [ %2356, %2345 ]
  %2421 = phi float [ %2332, %2329 ], [ %2417, %2390 ], [ %2332, %2388 ], [ %2387, %2375 ], [ %2357, %2345 ]
  %2422 = phi float [ %2333, %2329 ], [ %2333, %2390 ], [ %2333, %2388 ], [ %2333, %2375 ], [ %2367, %2345 ]
  %2423 = phi float [ %2334, %2329 ], [ %2334, %2390 ], [ %2334, %2388 ], [ %2334, %2375 ], [ %2368, %2345 ]
  %2424 = phi float [ %2335, %2329 ], [ %2335, %2390 ], [ %2335, %2388 ], [ %2335, %2375 ], [ %2369, %2345 ]
  %2425 = phi float [ %1741, %2329 ], [ %1741, %2390 ], [ %1741, %2388 ], [ %1741, %2375 ], [ %2360, %2345 ]
  %2426 = phi float [ %1745, %2329 ], [ %1745, %2390 ], [ %1745, %2388 ], [ %1745, %2375 ], [ %2372, %2345 ]
  %2427 = and i32 %2337, 12
  %2428 = icmp eq i32 %2427, 12
  br i1 %2428, label %2511, label %2429

; <label>:2429                                    ; preds = %2418
  %2430 = and i32 %2337, 2097184
  %2431 = icmp eq i32 %2430, 2097184
  %2432 = select i1 %2431, float %1928, float 0.000000e+00
  %2433 = and i32 %2337, 4194336
  %2434 = icmp eq i32 %2433, 4194336
  %2435 = select i1 %2434, float %1928, float 0.000000e+00
  %2436 = and i32 %2337, 8388640
  %2437 = icmp eq i32 %2436, 8388640
  %2438 = select i1 %2437, float %1928, float 0.000000e+00
  %2439 = and i32 %2337, 16384
  %2440 = icmp ne i32 %2439, 0
  %2441 = select i1 %2440, float %1928, float 0.000000e+00
  %2442 = icmp eq i32 %2427, 0
  br i1 %2442, label %2443, label %2459

; <label>:2443                                    ; preds = %2429
  %2444 = fsub fast float %2229, %1733
  %2445 = fsub fast float %2230, %1734
  %2446 = fmul fast float %2432, %2444
  %2447 = fmul fast float %2432, %2445
  %2448 = fadd fast float %2446, %1733
  %2449 = fadd fast float %2447, %1734
  %2450 = fsub fast float %2231, %1743
  %2451 = fmul fast float %2435, %2450
  %2452 = fadd fast float %2451, %1743
  %2453 = fsub fast float %2228, %1742
  %2454 = fmul fast float %2438, %2453
  %2455 = fadd fast float %2454, %1742
  %2456 = fsub fast float %2307, %1744
  %2457 = fmul fast float %2441, %2456
  %2458 = fadd fast float %2457, %1744
  br label %2511

; <label>:2459                                    ; preds = %2429
  %2460 = icmp eq i32 %2427, 4
  br i1 %2460, label %2461, label %2495

; <label>:2461                                    ; preds = %2459
  %2462 = fmul fast float %2432, %2229
  %2463 = fmul fast float %2432, %2230
  %2464 = fadd fast float %2462, %1733
  %2465 = fadd fast float %2463, %1734
  %2466 = call float @dx.op.binary.f32(i32 36, float %1743, float %2231)  ; FMin(a,b)
  %2467 = fsub fast float %2466, %1743
  %2468 = fmul fast float %2467, %2435
  %2469 = fadd fast float %2468, %1743
  %2470 = fadd fast float %2228, %1742
  %2471 = fmul fast float %2470, 0x3FF337FAE0000000
  %2472 = fmul fast float %1742, %1742
  %2473 = fmul fast float %2228, %2228
  %2474 = fadd fast float %2473, %2472
  %2475 = fmul fast float %2474, 0x3FE5152B00000000
  %2476 = fmul fast float %1742, 0xBFCC1F85E0000000
  %2477 = fmul fast float %2476, %2228
  %2478 = fadd fast float %2477, 0xBFE1363700000000
  %2479 = fadd fast float %2478, %2471
  %2480 = fsub fast float %2479, %2475
  %2481 = fmul fast float %2470, 0x3FBA6F0D00000000
  %2482 = fmul fast float %2474, 0x3FD0432880000000
  %2483 = fmul fast float %1742, 0xBFEF110800000000
  %2484 = fmul fast float %2483, %2228
  %2485 = fadd fast float %2484, 1.000000e+00
  %2486 = fsub fast float %2485, %2481
  %2487 = fadd fast float %2486, %2482
  %2488 = fdiv fast float %2480, %2487
  %2489 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  %2490 = fsub fast float %2489, %1742
  %2491 = fmul fast float %2490, %2438
  %2492 = fadd fast float %2491, %1742
  %2493 = fmul fast float %2441, %2307
  %2494 = fadd fast float %2493, %1744
  br label %2511

; <label>:2495                                    ; preds = %2459
  %2496 = icmp eq i32 %2427, 8
  br i1 %2496, label %2497, label %2511

; <label>:2497                                    ; preds = %2495
  %2498 = fmul fast float %2432, %2229
  %2499 = fmul fast float %2432, %2230
  %2500 = fadd fast float %2498, %1733
  %2501 = fadd fast float %2499, %1734
  %2502 = call float @dx.op.binary.f32(i32 36, float %1743, float %2231)  ; FMin(a,b)
  %2503 = fsub fast float %2502, %1743
  %2504 = fmul fast float %2503, %2435
  %2505 = fadd fast float %2504, %1743
  %2506 = fsub fast float %2228, %1742
  %2507 = fmul fast float %2438, %2506
  %2508 = fadd fast float %2507, %1742
  %2509 = fmul fast float %2441, %2307
  %2510 = fadd fast float %2509, %1744
  br label %2511

; <label>:2511                                    ; preds = %2497, %2495, %2461, %2443, %2418, %1927, %1746, %1732
  %2512 = phi float [ %1733, %2418 ], [ %1733, %1927 ], [ %1733, %1732 ], [ %2500, %2497 ], [ %1733, %2495 ], [ %2464, %2461 ], [ %2448, %2443 ], [ %1733, %1746 ]
  %2513 = phi float [ %1734, %2418 ], [ %1734, %1927 ], [ %1734, %1732 ], [ %2501, %2497 ], [ %1734, %2495 ], [ %2465, %2461 ], [ %2449, %2443 ], [ %1734, %1746 ]
  %2514 = phi float [ %2419, %2418 ], [ %1735, %1927 ], [ %1735, %1732 ], [ %2419, %2497 ], [ %2419, %2495 ], [ %2419, %2461 ], [ %2419, %2443 ], [ %1735, %1746 ]
  %2515 = phi float [ %2420, %2418 ], [ %1736, %1927 ], [ %1736, %1732 ], [ %2420, %2497 ], [ %2420, %2495 ], [ %2420, %2461 ], [ %2420, %2443 ], [ %1736, %1746 ]
  %2516 = phi float [ %2421, %2418 ], [ %1737, %1927 ], [ %1737, %1732 ], [ %2421, %2497 ], [ %2421, %2495 ], [ %2421, %2461 ], [ %2421, %2443 ], [ %1737, %1746 ]
  %2517 = phi float [ %2422, %2418 ], [ %1738, %1927 ], [ %1738, %1732 ], [ %2422, %2497 ], [ %2422, %2495 ], [ %2422, %2461 ], [ %2422, %2443 ], [ %1738, %1746 ]
  %2518 = phi float [ %2423, %2418 ], [ %1739, %1927 ], [ %1739, %1732 ], [ %2423, %2497 ], [ %2423, %2495 ], [ %2423, %2461 ], [ %2423, %2443 ], [ %1739, %1746 ]
  %2519 = phi float [ %2424, %2418 ], [ %1740, %1927 ], [ %1740, %1732 ], [ %2424, %2497 ], [ %2424, %2495 ], [ %2424, %2461 ], [ %2424, %2443 ], [ %1740, %1746 ]
  %2520 = phi float [ %2425, %2418 ], [ %1741, %1927 ], [ %1741, %1732 ], [ %2425, %2497 ], [ %2425, %2495 ], [ %2425, %2461 ], [ %2425, %2443 ], [ %1741, %1746 ]
  %2521 = phi float [ %1742, %2418 ], [ %1742, %1927 ], [ %1742, %1732 ], [ %2508, %2497 ], [ %1742, %2495 ], [ %2492, %2461 ], [ %2455, %2443 ], [ %1742, %1746 ]
  %2522 = phi float [ %1743, %2418 ], [ %1743, %1927 ], [ %1743, %1732 ], [ %2505, %2497 ], [ %1743, %2495 ], [ %2469, %2461 ], [ %2452, %2443 ], [ %1743, %1746 ]
  %2523 = phi float [ %1744, %2418 ], [ %1744, %1927 ], [ %1744, %1732 ], [ %2510, %2497 ], [ %1744, %2495 ], [ %2494, %2461 ], [ %2458, %2443 ], [ %1744, %1746 ]
  %2524 = phi float [ %2426, %2418 ], [ %1745, %1927 ], [ %1745, %1732 ], [ %2426, %2497 ], [ %2426, %2495 ], [ %2426, %2461 ], [ %2426, %2443 ], [ %1745, %1746 ]
  br i1 %405, label %3290, label %2525

; <label>:2525                                    ; preds = %2511
  %2526 = icmp ult i32 %456, 4
  %2527 = add i32 %33, 72
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = add i32 %33, 76
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = or i32 %2532, %2529
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %3290, label %2535

; <label>:2535                                    ; preds = %2525
  %2536 = and i32 %2529, 262144
  %2537 = icmp ne i32 %2536, 0
  %2538 = select i1 %2537, float %39, float 1.000000e+00
  %2539 = select i1 %2537, float %40, float 0.000000e+00
  %2540 = select i1 %2537, float %41, float 0.000000e+00
  %2541 = select i1 %2537, float %42, float 1.000000e+00
  %2542 = select i1 %2537, float %43, float %66
  %2543 = select i1 %2537, float %44, float %67
  %2544 = add i32 %33, 332
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = lshr i32 %2546, 16
  %2548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2547)  ; LegacyF16ToF32(value)
  %2549 = fmul fast float %2548, 0x3F50624DE0000000
  %2550 = add i32 %33, 136
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = lshr i32 %2552, 16
  %2554 = and i32 %2553, 255
  %2555 = lshr i32 %2552, 24
  %2556 = add i32 %33, 340
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 65535
  %2560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2559)  ; LegacyF16ToF32(value)
  %2561 = lshr i32 %2558, 16
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = add i32 %33, 80
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = lshr i32 %2565, 22
  %2567 = shl nuw nsw i32 %2566, 5
  %2568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2567)  ; LegacyF16ToF32(value)
  %2569 = shl i32 %2565, 4
  %2570 = and i32 %2569, 32752
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = lshr i32 %2565, 7
  %2573 = and i32 %2572, 32752
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 3
  %2577 = fmul fast float %2576, 1.000000e+03
  %2578 = fmul fast float %395, %2577
  %2579 = call float @dx.op.unary.f32(i32 22, float %2578)  ; Frc(value)
  %2580 = fadd fast float %2579, %385
  %2581 = fmul fast float %396, %2577
  %2582 = call float @dx.op.unary.f32(i32 22, float %2581)  ; Frc(value)
  %2583 = fadd fast float %2582, %387
  %2584 = fmul fast float %2549, %2577
  %2585 = call float @dx.op.unary.f32(i32 22, float %2584)  ; Frc(value)
  %2586 = fmul fast float %2585, 0x401921FB60000000
  %2587 = fadd fast float %2586, %2568
  %2588 = call float @dx.op.unary.f32(i32 13, float %2587)  ; Sin(value)
  %2589 = call float @dx.op.unary.f32(i32 12, float %2587)  ; Cos(value)
  %2590 = fsub fast float -0.000000e+00, %2588
  %2591 = fadd fast float %2542, -5.000000e-01
  %2592 = fadd fast float %2543, -5.000000e-01
  %2593 = fmul fast float %2560, %2591
  %2594 = fmul fast float %2562, %2592
  %2595 = fadd fast float %2593, 5.000000e-01
  %2596 = fadd fast float %2594, 5.000000e-01
  %2597 = fmul fast float %2571, %2595
  %2598 = fmul fast float %2574, %2596
  %2599 = fmul fast float %2589, %2597
  %2600 = call float @dx.op.tertiary.f32(i32 46, float %2590, float %2598, float %2599)  ; FMad(a,b,c)
  %2601 = fmul fast float %2588, %2597
  %2602 = call float @dx.op.tertiary.f32(i32 46, float %2589, float %2598, float %2601)  ; FMad(a,b,c)
  %2603 = fadd fast float %2580, %2600
  %2604 = fadd fast float %2583, %2602
  %2605 = icmp ugt i32 %2554, 1
  %2606 = icmp ugt i32 %2552, 33554431
  %2607 = or i1 %2606, %2605
  br i1 %2607, label %2608, label %2633

; <label>:2608                                    ; preds = %2535
  %2609 = add i32 %33, 276
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = lshr i32 %2611, 16
  %2613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2612)  ; LegacyF16ToF32(value)
  %2614 = fmul fast float %2576, %2613
  %2615 = call float @dx.op.unary.f32(i32 22, float %2614)  ; Frc(value)
  %2616 = mul nuw nsw i32 %2554, %2555
  %2617 = uitofp i32 %2616 to float
  %2618 = fmul fast float %2615, %2617
  %2619 = call float @dx.op.unary.f32(i32 27, float %2618)  ; Round_ni(value)
  %2620 = fptoui float %2619 to i32
  %2621 = urem i32 %2620, %2554
  %2622 = udiv i32 %2620, %2555
  %2623 = call float @dx.op.unary.f32(i32 22, float %2603)  ; Frc(value)
  %2624 = call float @dx.op.unary.f32(i32 22, float %2604)  ; Frc(value)
  %2625 = uitofp i32 %2621 to float
  %2626 = uitofp i32 %2622 to float
  %2627 = fadd fast float %2623, %2625
  %2628 = fadd fast float %2624, %2626
  %2629 = uitofp i32 %2554 to float
  %2630 = uitofp i32 %2555 to float
  %2631 = fdiv fast float %2627, %2629
  %2632 = fdiv fast float %2628, %2630
  br label %2633

; <label>:2633                                    ; preds = %2608, %2535
  %2634 = phi float [ %2631, %2608 ], [ %2603, %2535 ]
  %2635 = phi float [ %2632, %2608 ], [ %2604, %2535 ]
  %2636 = and i32 %2529, 256
  %2637 = icmp eq i32 %2636, 0
  br i1 %2637, label %2684, label %2638

; <label>:2638                                    ; preds = %2633
  %2639 = add i32 %33, 452
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = add i32 %2641, 0
  %2643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2643, %dx.types.Handle %75, float %2634, float %2635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = add i32 %33, 148
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = shl i32 %2648, 4
  %2650 = and i32 %2649, 32752
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = lshr i32 %2648, 7
  %2653 = and i32 %2652, 32752
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = fsub fast float 1.000000e+00, %451
  %2656 = call float @dx.op.binary.f32(i32 35, float %2655, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2657 = bitcast float %451 to i32
  %2658 = sitofp i32 %2657 to float
  %2659 = fadd fast float %2658, 0xC1CFBF8940000000
  %2660 = fmul fast float %2654, %2659
  %2661 = fadd fast float %2660, 0x41CFBF8940000000
  %2662 = fptosi float %2661 to i32
  %2663 = bitcast i32 %2662 to float
  %2664 = bitcast float %2656 to i32
  %2665 = sitofp i32 %2664 to float
  %2666 = fadd fast float %2665, 0xC1CFBF8940000000
  %2667 = fmul fast float %2666, %2654
  %2668 = fadd fast float %2667, 0x41CFBF8940000000
  %2669 = fptosi float %2668 to i32
  %2670 = bitcast i32 %2669 to float
  %2671 = fmul fast float %2663, %2651
  %2672 = fmul fast float %2670, %2651
  %2673 = fsub fast float %2656, %2671
  %2674 = fadd fast float %2672, %2656
  %2675 = call float @dx.op.unary.f32(i32 7, float %2673)  ; Saturate(value)
  %2676 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  %2677 = fsub fast float %2645, %2675
  %2678 = fsub fast float %2676, %2675
  %2679 = bitcast float %2678 to i32
  %2680 = sub nsw i32 2129859010, %2679
  %2681 = bitcast i32 %2680 to float
  %2682 = fmul fast float %2681, %2677
  %2683 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  br label %2684

; <label>:2684                                    ; preds = %2638, %2633
  %2685 = phi float [ %2683, %2638 ], [ %451, %2633 ]
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 128
  %2689 = icmp eq i32 %2688, 0
  br i1 %2689, label %2706, label %2690

; <label>:2690                                    ; preds = %2684
  %2691 = add i32 %33, 436
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2691, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = add i32 %2693, 0
  %2695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2695, %dx.types.Handle %75, float %2634, float %2635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2697 = extractvalue %dx.types.ResRet.f32 %2696, 0
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = and i32 %2699, 524288
  %2701 = icmp ne i32 %2700, 0
  %2702 = fcmp fast ogt float %2697, 0x3FE0101020000000
  %2703 = select i1 %2702, float 1.000000e+00, float 0.000000e+00
  %2704 = select i1 %2701, float %2703, float %2697
  %2705 = fmul fast float %2704, %2685
  br label %2706

; <label>:2706                                    ; preds = %2690, %2684
  %2707 = phi float [ %2705, %2690 ], [ %2685, %2684 ]
  %2708 = fcmp fast ult float %2707, 0x3F70101020000000
  br i1 %2708, label %3290, label %2709

; <label>:2709                                    ; preds = %2706
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = and i32 %2711, 16
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %2912, label %2714

; <label>:2714                                    ; preds = %2709
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = add i32 %33, 388
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = add i32 %2719, 0
  %2721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2721, %dx.types.Handle %74, float %2634, float %2635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2723 = extractvalue %dx.types.ResRet.f32 %2722, 0
  %2724 = extractvalue %dx.types.ResRet.f32 %2722, 1
  %2725 = extractvalue %dx.types.ResRet.f32 %2722, 2
  %2726 = extractvalue %dx.types.ResRet.f32 %2722, 3
  %2727 = and i32 %2716, 255
  %2728 = uitofp i32 %2727 to float
  %2729 = lshr i32 %2716, 8
  %2730 = and i32 %2729, 255
  %2731 = uitofp i32 %2730 to float
  %2732 = fmul fast float %2726, %2728
  %2733 = fadd fast float %2732, %2731
  %2734 = fmul fast float %2733, 0x3F70101000000000
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = and i32 %2736, 512
  %2738 = icmp eq i32 %2737, 0
  br i1 %2738, label %2747, label %2739

; <label>:2739                                    ; preds = %2714
  %2740 = add i32 %33, 472
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = add i32 %2742, 0
  %2744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2744, %dx.types.Handle %75, float %2634, float %2635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2746 = extractvalue %dx.types.ResRet.f32 %2745, 0
  br label %2747

; <label>:2747                                    ; preds = %2739, %2714
  %2748 = phi float [ %2746, %2739 ], [ 1.000000e+00, %2714 ]
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = and i32 %2750, 33554432
  %2752 = icmp eq i32 %2751, 0
  br i1 %2752, label %2859, label %2753

; <label>:2753                                    ; preds = %2747
  %2754 = add i32 %33, 272
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 65535
  %2758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2757)  ; LegacyF16ToF32(value)
  %2759 = lshr i32 %2756, 16
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = add i32 %33, 276
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = and i32 %2763, 65535
  %2765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2764)  ; LegacyF16ToF32(value)
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = lshr i32 %2767, 24
  %2769 = uitofp i32 %2768 to float
  %2770 = fmul fast float %2769, 0x3F70101020000000
  %2771 = and i32 %2767, 255
  %2772 = uitofp i32 %2771 to float
  %2773 = fmul fast float %2772, 0x3F70101020000000
  %2774 = lshr i32 %2767, 8
  %2775 = and i32 %2774, 255
  %2776 = uitofp i32 %2775 to float
  %2777 = fmul fast float %2776, 0x3F70101020000000
  %2778 = lshr i32 %2767, 16
  %2779 = and i32 %2778, 255
  %2780 = uitofp i32 %2779 to float
  %2781 = fmul fast float %2780, 0x3F70101020000000
  %2782 = add i32 %33, 268
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = lshr i32 %2784, 24
  %2786 = uitofp i32 %2785 to float
  %2787 = fmul fast float %2786, 0x3F70101020000000
  %2788 = and i32 %2784, 255
  %2789 = uitofp i32 %2788 to float
  %2790 = fmul fast float %2789, 0x3F70101020000000
  %2791 = lshr i32 %2784, 8
  %2792 = and i32 %2791, 255
  %2793 = uitofp i32 %2792 to float
  %2794 = fmul fast float %2793, 0x3F70101020000000
  %2795 = lshr i32 %2784, 16
  %2796 = and i32 %2795, 255
  %2797 = uitofp i32 %2796 to float
  %2798 = fmul fast float %2797, 0x3F70101020000000
  %2799 = bitcast float %2723 to i32
  %2800 = ashr i32 %2799, 1
  %2801 = sub nsw i32 1597463174, %2800
  %2802 = bitcast i32 %2801 to float
  %2803 = fmul fast float %2723, 5.000000e-01
  %2804 = fmul fast float %2802, %2802
  %2805 = fmul fast float %2804, %2803
  %2806 = fsub fast float 1.500000e+00, %2805
  %2807 = fmul fast float %2802, %2723
  %2808 = fmul fast float %2807, %2806
  %2809 = bitcast float %2724 to i32
  %2810 = ashr i32 %2809, 1
  %2811 = sub nsw i32 1597463174, %2810
  %2812 = bitcast i32 %2811 to float
  %2813 = fmul fast float %2724, 5.000000e-01
  %2814 = fmul fast float %2812, %2812
  %2815 = fmul fast float %2814, %2813
  %2816 = fsub fast float 1.500000e+00, %2815
  %2817 = fmul fast float %2812, %2724
  %2818 = fmul fast float %2817, %2816
  %2819 = bitcast float %2725 to i32
  %2820 = ashr i32 %2819, 1
  %2821 = sub nsw i32 1597463174, %2820
  %2822 = bitcast i32 %2821 to float
  %2823 = fmul fast float %2725, 5.000000e-01
  %2824 = fmul fast float %2822, %2822
  %2825 = fmul fast float %2824, %2823
  %2826 = fsub fast float 1.500000e+00, %2825
  %2827 = fmul fast float %2822, %2725
  %2828 = fmul fast float %2827, %2826
  %2829 = fsub fast float %2808, %2790
  %2830 = fsub fast float %2818, %2794
  %2831 = fsub fast float %2828, %2798
  %2832 = fmul fast float %2829, %2758
  %2833 = fmul fast float %2830, %2760
  %2834 = fmul fast float %2831, %2765
  %2835 = fadd fast float %2832, %2773
  %2836 = fadd fast float %2833, %2777
  %2837 = fadd fast float %2834, %2781
  %2838 = call float @dx.op.unary.f32(i32 7, float %2835)  ; Saturate(value)
  %2839 = call float @dx.op.unary.f32(i32 7, float %2836)  ; Saturate(value)
  %2840 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2841 = fmul fast float %2838, %2838
  %2842 = fmul fast float %2839, %2839
  %2843 = fmul fast float %2840, %2840
  %2844 = fsub fast float %2841, %2723
  %2845 = fsub fast float %2842, %2724
  %2846 = fsub fast float %2843, %2725
  %2847 = fmul fast float %2844, %2748
  %2848 = fmul fast float %2845, %2748
  %2849 = fmul fast float %2846, %2748
  %2850 = fadd fast float %2847, %2723
  %2851 = fadd fast float %2848, %2724
  %2852 = fadd fast float %2849, %2725
  %2853 = fadd fast float %2770, %2734
  %2854 = fsub fast float %2853, %2787
  %2855 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2856 = fsub fast float %2855, %2734
  %2857 = fmul fast float %2856, %2748
  %2858 = fadd fast float %2857, %2734
  br label %2912

; <label>:2859                                    ; preds = %2747
  %2860 = and i32 %2750, 134217728
  %2861 = icmp eq i32 %2860, 0
  br i1 %2861, label %2896, label %2862

; <label>:2862                                    ; preds = %2859
  %2863 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2864 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2865 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2866 = fadd fast float %2863, -5.000000e-01
  %2867 = fadd fast float %2864, -5.000000e-01
  %2868 = fadd fast float %2865, -5.000000e-01
  %2869 = fmul fast float %2866, %2748
  %2870 = fmul fast float %2867, %2748
  %2871 = fmul fast float %2868, %2748
  %2872 = fadd fast float %2869, 5.000000e-01
  %2873 = fadd fast float %2870, 5.000000e-01
  %2874 = fadd fast float %2871, 5.000000e-01
  %2875 = call float @dx.op.unary.f32(i32 24, float %2723)  ; Sqrt(value)
  %2876 = call float @dx.op.unary.f32(i32 24, float %2724)  ; Sqrt(value)
  %2877 = call float @dx.op.unary.f32(i32 24, float %2725)  ; Sqrt(value)
  %2878 = fmul fast float %2872, 2.000000e+00
  %2879 = fsub fast float 1.000000e+00, %2878
  %2880 = fmul fast float %2879, %2875
  %2881 = fadd fast float %2880, %2878
  %2882 = fmul fast float %2881, %2875
  %2883 = fmul fast float %2873, 2.000000e+00
  %2884 = fsub fast float 1.000000e+00, %2883
  %2885 = fmul fast float %2884, %2876
  %2886 = fadd fast float %2885, %2883
  %2887 = fmul fast float %2886, %2876
  %2888 = fmul fast float %2874, 2.000000e+00
  %2889 = fsub fast float 1.000000e+00, %2888
  %2890 = fmul fast float %2889, %2877
  %2891 = fadd fast float %2890, %2888
  %2892 = fmul fast float %2891, %2877
  %2893 = fmul fast float %2882, %2882
  %2894 = fmul fast float %2887, %2887
  %2895 = fmul fast float %2892, %2892
  br label %2912

; <label>:2896                                    ; preds = %2859
  %2897 = fmul fast float %372, %372
  %2898 = fmul fast float %376, %376
  %2899 = fmul fast float %380, %380
  %2900 = fadd fast float %2897, -1.000000e+00
  %2901 = fadd fast float %2898, -1.000000e+00
  %2902 = fadd fast float %2899, -1.000000e+00
  %2903 = fmul fast float %2748, %2900
  %2904 = fmul fast float %2748, %2901
  %2905 = fmul fast float %2748, %2902
  %2906 = fadd fast float %2903, 1.000000e+00
  %2907 = fadd fast float %2904, 1.000000e+00
  %2908 = fadd fast float %2905, 1.000000e+00
  %2909 = fmul fast float %2906, %2723
  %2910 = fmul fast float %2907, %2724
  %2911 = fmul fast float %2908, %2725
  br label %2912

; <label>:2912                                    ; preds = %2896, %2862, %2753, %2709
  %2913 = phi float [ %2858, %2753 ], [ %2734, %2862 ], [ %2734, %2896 ], [ 0x3FA23C0BE0000000, %2709 ]
  %2914 = phi float [ %2850, %2753 ], [ %2893, %2862 ], [ %2909, %2896 ], [ 1.000000e+00, %2709 ]
  %2915 = phi float [ %2851, %2753 ], [ %2894, %2862 ], [ %2910, %2896 ], [ 1.000000e+00, %2709 ]
  %2916 = phi float [ %2852, %2753 ], [ %2895, %2862 ], [ %2911, %2896 ], [ 1.000000e+00, %2709 ]
  %2917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.i32 %2917, 1
  %2919 = and i32 %2918, 1
  %2920 = icmp ne i32 %2919, 0
  %2921 = add i32 %33, 356
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 32
  %2925 = icmp ne i32 %2924, 0
  %2926 = and i1 %2920, %2925
  %2927 = select i1 %2926, float 1.000000e+00, float %2914
  %2928 = select i1 %2926, float 0x3FD3333340000000, float %2915
  %2929 = select i1 %2926, float 0x3FD3333340000000, float %2916
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 32
  %2933 = icmp eq i32 %2932, 0
  br i1 %2933, label %3006, label %2934

; <label>:2934                                    ; preds = %2912
  %2935 = add i32 %33, 140
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = add i32 %33, 404
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = add i32 %2940, 0
  %2942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2942, %dx.types.Handle %74, float %2634, float %2635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2944 = extractvalue %dx.types.ResRet.f32 %2943, 0
  %2945 = extractvalue %dx.types.ResRet.f32 %2943, 1
  %2946 = extractvalue %dx.types.ResRet.f32 %2943, 2
  %2947 = extractvalue %dx.types.ResRet.f32 %2943, 3
  %2948 = and i32 %2937, 255
  %2949 = uitofp i32 %2948 to float
  %2950 = lshr i32 %2937, 8
  %2951 = and i32 %2950, 255
  %2952 = uitofp i32 %2951 to float
  %2953 = lshr i32 %2937, 16
  %2954 = and i32 %2953, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = fmul fast float %2955, 0x3F70101000000000
  %2957 = fmul fast float %2944, %2949
  %2958 = fadd fast float %2957, %2952
  %2959 = fmul fast float %2958, 0x3F70101000000000
  %2960 = fadd fast float %2945, -5.000000e-01
  %2961 = fadd fast float %2947, -5.000000e-01
  %2962 = fmul fast float %2960, %2956
  %2963 = fmul fast float %2961, %2956
  %2964 = fadd fast float %2962, 5.000000e-01
  %2965 = fadd fast float %2963, 5.000000e-01
  %2966 = fmul fast float %2964, 2.000000e+00
  %2967 = fadd fast float %2966, -1.000000e+00
  %2968 = fmul fast float %2965, 2.000000e+00
  %2969 = fadd fast float %2968, -1.000000e+00
  %2970 = fadd fast float %2967, %2969
  %2971 = fmul fast float %2970, 5.000000e-01
  %2972 = fsub fast float %2967, %2969
  %2973 = fmul fast float %2972, 5.000000e-01
  %2974 = call float @dx.op.unary.f32(i32 6, float %2971)  ; FAbs(value)
  %2975 = fsub fast float 1.000000e+00, %2974
  %2976 = call float @dx.op.unary.f32(i32 6, float %2973)  ; FAbs(value)
  %2977 = fsub fast float %2975, %2976
  %2978 = call float @dx.op.dot3.f32(i32 55, float %2971, float %2973, float %2977, float %2971, float %2973, float %2977)  ; Dot3(ax,ay,az,bx,by,bz)
  %2979 = call float @dx.op.unary.f32(i32 25, float %2978)  ; Rsqrt(value)
  %2980 = fmul fast float %2971, %2979
  %2981 = fmul fast float %2973, %2979
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = and i32 %2983, 67108864
  %2985 = icmp eq i32 %2984, 0
  br i1 %2985, label %3002, label %2986

; <label>:2986                                    ; preds = %2934
  %2987 = add i32 %33, 328
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = and i32 %2989, 65535
  %2991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2990)  ; LegacyF16ToF32(value)
  %2992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.i32 %2992, 0
  %2994 = and i32 %2993, 65535
  %2995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2994)  ; LegacyF16ToF32(value)
  %2996 = lshr i32 %2989, 16
  %2997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2996)  ; LegacyF16ToF32(value)
  %2998 = fsub fast float %2959, %2997
  %2999 = fmul fast float %2998, %2991
  %3000 = fadd fast float %2999, %2995
  %3001 = call float @dx.op.unary.f32(i32 7, float %3000)  ; Saturate(value)
  br label %3002

; <label>:3002                                    ; preds = %2986, %2934
  %3003 = phi float [ %3001, %2986 ], [ %2959, %2934 ]
  %3004 = call float @dx.op.dot2.f32(i32 54, float %2980, float %2981, float %2538, float %2539)  ; Dot2(ax,ay,bx,by)
  %3005 = call float @dx.op.dot2.f32(i32 54, float %2980, float %2981, float %2540, float %2541)  ; Dot2(ax,ay,bx,by)
  br label %3006

; <label>:3006                                    ; preds = %3002, %2912
  %3007 = phi float [ %3003, %3002 ], [ 0x3FD6666660000000, %2912 ]
  %3008 = phi float [ %3004, %3002 ], [ 0.000000e+00, %2912 ]
  %3009 = phi float [ %3005, %3002 ], [ 0.000000e+00, %2912 ]
  %3010 = phi float [ %2946, %3002 ], [ 1.000000e+00, %2912 ]
  %3011 = add i32 %33, 208
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = lshr i32 %3013, 22
  %3015 = shl nuw nsw i32 %3014, 5
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = and i32 %3018, 64
  %3020 = icmp eq i32 %3019, 0
  br i1 %3020, label %3054, label %3021

; <label>:3021                                    ; preds = %3006
  %3022 = add i32 %33, 420
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = add i32 %3024, 0
  %3026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = and i32 %3028, 131072
  %3030 = icmp eq i32 %3029, 0
  %3031 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3026, %dx.types.Handle %74, float %2634, float %2635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3035 = fmul fast float %3032, %360
  %3036 = fmul fast float %3033, %363
  %3037 = fmul fast float %3034, %366
  br i1 %3030, label %3044, label %3038

; <label>:3038                                    ; preds = %3021
  %3039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3040 = extractvalue %dx.types.CBufRet.f32 %3039, 0
  %3041 = fmul fast float %3040, %3035
  %3042 = fmul fast float %3040, %3036
  %3043 = fmul fast float %3040, %3037
  br label %3044

; <label>:3044                                    ; preds = %3038, %3021
  %3045 = phi float [ %3041, %3038 ], [ %3035, %3021 ]
  %3046 = phi float [ %3042, %3038 ], [ %3036, %3021 ]
  %3047 = phi float [ %3043, %3038 ], [ %3037, %3021 ]
  %3048 = fmul fast float %3045, %3016
  %3049 = select i1 %217, float %3048, float %3045
  %3050 = call float @dx.op.dot3.f32(i32 55, float %3049, float %3046, float %3047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3051 = select i1 %217, float 0.000000e+00, float %3045
  %3052 = select i1 %217, float %3050, float %3046
  %3053 = select i1 %217, float 0.000000e+00, float %3047
  br label %3054

; <label>:3054                                    ; preds = %3044, %3006
  %3055 = phi float [ %3051, %3044 ], [ 0.000000e+00, %3006 ]
  %3056 = phi float [ %3052, %3044 ], [ 0.000000e+00, %3006 ]
  %3057 = phi float [ %3053, %3044 ], [ 0.000000e+00, %3006 ]
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 26624
  %3061 = icmp eq i32 %3060, 0
  br i1 %3061, label %3085, label %3062

; <label>:3062                                    ; preds = %3054
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = and i32 %3064, 16384
  %3066 = icmp eq i32 %3065, 0
  br i1 %3066, label %3085, label %3067

; <label>:3067                                    ; preds = %3062
  %3068 = and i32 %3064, 1048576
  %3069 = icmp ne i32 %3068, 0
  %3070 = add i32 %33, 488
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = add i32 %3072, 0
  %3074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3075 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3074, %dx.types.Handle %75, float %2634, float %2635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3076 = extractvalue %dx.types.ResRet.f32 %3075, 0
  %3077 = add i32 %33, 144
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = lshr i32 %3079, 24
  %3081 = uitofp i32 %3080 to float
  %3082 = fmul fast float %3076, 0x3F70101020000000
  %3083 = select i1 %3069, float 0x3F70101020000000, float %3082
  %3084 = fmul fast float %3083, %3081
  br label %3085

; <label>:3085                                    ; preds = %3067, %3062, %3054
  %3086 = phi float [ %3084, %3067 ], [ 0.000000e+00, %3062 ], [ 0.000000e+00, %3054 ]
  %3087 = add i32 %33, 144
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, 255
  %3091 = uitofp i32 %3090 to float
  %3092 = lshr i32 %3089, 8
  %3093 = and i32 %3092, 255
  %3094 = uitofp i32 %3093 to float
  %3095 = call float @dx.op.dot3.f32(i32 55, float %2927, float %2928, float %2929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3096 = fmul fast float %3094, %3095
  %3097 = fadd fast float %3096, %3091
  %3098 = fmul fast float %3097, 0x3F70101020000000
  %3099 = call float @dx.op.unary.f32(i32 7, float %3098)  ; Saturate(value)
  br i1 %2526, label %3100, label %3108

; <label>:3100                                    ; preds = %3085
  %3101 = fsub fast float 1.000000e+00, %2707
  %3102 = fmul fast float %3101, %2514
  %3103 = fmul fast float %3101, %2515
  %3104 = fmul fast float %3101, %2516
  %3105 = fmul fast float %3101, %2517
  %3106 = fmul fast float %3101, %2518
  %3107 = fmul fast float %3101, %2519
  br label %3108

; <label>:3108                                    ; preds = %3100, %3085
  %3109 = phi float [ %3102, %3100 ], [ %2514, %3085 ]
  %3110 = phi float [ %3103, %3100 ], [ %2515, %3085 ]
  %3111 = phi float [ %3104, %3100 ], [ %2516, %3085 ]
  %3112 = phi float [ %3105, %3100 ], [ %2517, %3085 ]
  %3113 = phi float [ %3106, %3100 ], [ %2518, %3085 ]
  %3114 = phi float [ %3107, %3100 ], [ %2519, %3085 ]
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = and i32 %3116, 3
  %3118 = icmp eq i32 %3117, 3
  br i1 %3118, label %3197, label %3119

; <label>:3119                                    ; preds = %3108
  %3120 = and i32 %3116, 16
  %3121 = icmp ne i32 %3120, 0
  %3122 = select i1 %3121, float %2707, float 0.000000e+00
  %3123 = icmp eq i32 %3117, 0
  br i1 %3123, label %3124, label %3152

; <label>:3124                                    ; preds = %3119
  %3125 = and i32 %3116, 64
  %3126 = icmp ne i32 %3125, 0
  %3127 = select i1 %3126, float %2707, float 0.000000e+00
  %3128 = fsub fast float %2927, %3109
  %3129 = fsub fast float %2928, %3110
  %3130 = fsub fast float %2929, %3111
  %3131 = fmul fast float %3122, %3128
  %3132 = fmul fast float %3122, %3129
  %3133 = fmul fast float %3122, %3130
  %3134 = fadd fast float %3131, %3109
  %3135 = fadd fast float %3132, %3110
  %3136 = fadd fast float %3133, %3111
  %3137 = fsub fast float %2913, %2520
  %3138 = fmul fast float %3122, %3137
  %3139 = fadd fast float %3138, %2520
  %3140 = fsub fast float %3055, %3112
  %3141 = fsub fast float %3056, %3113
  %3142 = fsub fast float %3057, %3114
  %3143 = fmul fast float %3127, %3140
  %3144 = fmul fast float %3127, %3141
  %3145 = fmul fast float %3127, %3142
  %3146 = fadd fast float %3143, %3112
  %3147 = fadd fast float %3144, %3113
  %3148 = fadd fast float %3145, %3114
  %3149 = fsub fast float %3099, %2524
  %3150 = fmul fast float %3122, %3149
  %3151 = fadd fast float %3150, %2524
  br label %3197

; <label>:3152                                    ; preds = %3119
  %3153 = icmp eq i32 %3117, 1
  br i1 %3153, label %3154, label %3167

; <label>:3154                                    ; preds = %3152
  %3155 = fadd fast float %2927, -1.000000e+00
  %3156 = fadd fast float %2928, -1.000000e+00
  %3157 = fadd fast float %2929, -1.000000e+00
  %3158 = fmul fast float %3122, %3155
  %3159 = fmul fast float %3122, %3156
  %3160 = fmul fast float %3122, %3157
  %3161 = fadd fast float %3158, 1.000000e+00
  %3162 = fadd fast float %3159, 1.000000e+00
  %3163 = fadd fast float %3160, 1.000000e+00
  %3164 = fmul fast float %3161, %3109
  %3165 = fmul fast float %3162, %3110
  %3166 = fmul fast float %3163, %3111
  br label %3197

; <label>:3167                                    ; preds = %3152
  %3168 = icmp eq i32 %3117, 2
  br i1 %3168, label %3169, label %3197

; <label>:3169                                    ; preds = %3167
  %3170 = call float @dx.op.unary.f32(i32 24, float %2927)  ; Sqrt(value)
  %3171 = call float @dx.op.unary.f32(i32 24, float %2928)  ; Sqrt(value)
  %3172 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %3173 = fadd fast float %3170, -5.000000e-01
  %3174 = fadd fast float %3171, -5.000000e-01
  %3175 = fadd fast float %3172, -5.000000e-01
  %3176 = fmul fast float %3173, %3122
  %3177 = fmul fast float %3174, %3122
  %3178 = fmul fast float %3175, %3122
  %3179 = fadd fast float %3176, 5.000000e-01
  %3180 = fadd fast float %3177, 5.000000e-01
  %3181 = fadd fast float %3178, 5.000000e-01
  %3182 = fmul fast float %3179, 2.000000e+00
  %3183 = fsub fast float 1.000000e+00, %3182
  %3184 = fmul fast float %3183, %3109
  %3185 = fadd fast float %3184, %3182
  %3186 = fmul fast float %3185, %3109
  %3187 = fmul fast float %3180, 2.000000e+00
  %3188 = fsub fast float 1.000000e+00, %3187
  %3189 = fmul fast float %3188, %3110
  %3190 = fadd fast float %3189, %3187
  %3191 = fmul fast float %3190, %3110
  %3192 = fmul fast float %3181, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3193, %3111
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3111
  br label %3197

; <label>:3197                                    ; preds = %3169, %3167, %3154, %3124, %3108
  %3198 = phi float [ %3109, %3108 ], [ %3186, %3169 ], [ %3109, %3167 ], [ %3164, %3154 ], [ %3134, %3124 ]
  %3199 = phi float [ %3110, %3108 ], [ %3191, %3169 ], [ %3110, %3167 ], [ %3165, %3154 ], [ %3135, %3124 ]
  %3200 = phi float [ %3111, %3108 ], [ %3196, %3169 ], [ %3111, %3167 ], [ %3166, %3154 ], [ %3136, %3124 ]
  %3201 = phi float [ %3112, %3108 ], [ %3112, %3169 ], [ %3112, %3167 ], [ %3112, %3154 ], [ %3146, %3124 ]
  %3202 = phi float [ %3113, %3108 ], [ %3113, %3169 ], [ %3113, %3167 ], [ %3113, %3154 ], [ %3147, %3124 ]
  %3203 = phi float [ %3114, %3108 ], [ %3114, %3169 ], [ %3114, %3167 ], [ %3114, %3154 ], [ %3148, %3124 ]
  %3204 = phi float [ %2520, %3108 ], [ %2520, %3169 ], [ %2520, %3167 ], [ %2520, %3154 ], [ %3139, %3124 ]
  %3205 = phi float [ %2524, %3108 ], [ %2524, %3169 ], [ %2524, %3167 ], [ %2524, %3154 ], [ %3151, %3124 ]
  %3206 = and i32 %3116, 12
  %3207 = icmp eq i32 %3206, 12
  br i1 %3207, label %3290, label %3208

; <label>:3208                                    ; preds = %3197
  %3209 = and i32 %3116, 2097184
  %3210 = icmp eq i32 %3209, 2097184
  %3211 = select i1 %3210, float %2707, float 0.000000e+00
  %3212 = and i32 %3116, 4194336
  %3213 = icmp eq i32 %3212, 4194336
  %3214 = select i1 %3213, float %2707, float 0.000000e+00
  %3215 = and i32 %3116, 8388640
  %3216 = icmp eq i32 %3215, 8388640
  %3217 = select i1 %3216, float %2707, float 0.000000e+00
  %3218 = and i32 %3116, 16384
  %3219 = icmp ne i32 %3218, 0
  %3220 = select i1 %3219, float %2707, float 0.000000e+00
  %3221 = icmp eq i32 %3206, 0
  br i1 %3221, label %3222, label %3238

; <label>:3222                                    ; preds = %3208
  %3223 = fsub fast float %3008, %2512
  %3224 = fsub fast float %3009, %2513
  %3225 = fmul fast float %3211, %3223
  %3226 = fmul fast float %3211, %3224
  %3227 = fadd fast float %3225, %2512
  %3228 = fadd fast float %3226, %2513
  %3229 = fsub fast float %3010, %2522
  %3230 = fmul fast float %3214, %3229
  %3231 = fadd fast float %3230, %2522
  %3232 = fsub fast float %3007, %2521
  %3233 = fmul fast float %3217, %3232
  %3234 = fadd fast float %3233, %2521
  %3235 = fsub fast float %3086, %2523
  %3236 = fmul fast float %3220, %3235
  %3237 = fadd fast float %3236, %2523
  br label %3290

; <label>:3238                                    ; preds = %3208
  %3239 = icmp eq i32 %3206, 4
  br i1 %3239, label %3240, label %3274

; <label>:3240                                    ; preds = %3238
  %3241 = fmul fast float %3211, %3008
  %3242 = fmul fast float %3211, %3009
  %3243 = fadd fast float %3241, %2512
  %3244 = fadd fast float %3242, %2513
  %3245 = call float @dx.op.binary.f32(i32 36, float %2522, float %3010)  ; FMin(a,b)
  %3246 = fsub fast float %3245, %2522
  %3247 = fmul fast float %3246, %3214
  %3248 = fadd fast float %3247, %2522
  %3249 = fadd fast float %3007, %2521
  %3250 = fmul fast float %3249, 0x3FF337FAE0000000
  %3251 = fmul fast float %2521, %2521
  %3252 = fmul fast float %3007, %3007
  %3253 = fadd fast float %3252, %3251
  %3254 = fmul fast float %3253, 0x3FE5152B00000000
  %3255 = fmul fast float %2521, 0xBFCC1F85E0000000
  %3256 = fmul fast float %3255, %3007
  %3257 = fadd fast float %3256, 0xBFE1363700000000
  %3258 = fadd fast float %3257, %3250
  %3259 = fsub fast float %3258, %3254
  %3260 = fmul fast float %3249, 0x3FBA6F0D00000000
  %3261 = fmul fast float %3253, 0x3FD0432880000000
  %3262 = fmul fast float %2521, 0xBFEF110800000000
  %3263 = fmul fast float %3262, %3007
  %3264 = fadd fast float %3263, 1.000000e+00
  %3265 = fsub fast float %3264, %3260
  %3266 = fadd fast float %3265, %3261
  %3267 = fdiv fast float %3259, %3266
  %3268 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3269 = fsub fast float %3268, %2521
  %3270 = fmul fast float %3269, %3217
  %3271 = fadd fast float %3270, %2521
  %3272 = fmul fast float %3220, %3086
  %3273 = fadd fast float %3272, %2523
  br label %3290

; <label>:3274                                    ; preds = %3238
  %3275 = icmp eq i32 %3206, 8
  br i1 %3275, label %3276, label %3290

; <label>:3276                                    ; preds = %3274
  %3277 = fmul fast float %3211, %3008
  %3278 = fmul fast float %3211, %3009
  %3279 = fadd fast float %3277, %2512
  %3280 = fadd fast float %3278, %2513
  %3281 = call float @dx.op.binary.f32(i32 36, float %2522, float %3010)  ; FMin(a,b)
  %3282 = fsub fast float %3281, %2522
  %3283 = fmul fast float %3282, %3214
  %3284 = fadd fast float %3283, %2522
  %3285 = fsub fast float %3007, %2521
  %3286 = fmul fast float %3217, %3285
  %3287 = fadd fast float %3286, %2521
  %3288 = fmul fast float %3220, %3086
  %3289 = fadd fast float %3288, %2523
  br label %3290

; <label>:3290                                    ; preds = %3276, %3274, %3240, %3222, %3197, %2706, %2525, %2511
  %3291 = phi float [ %2512, %3197 ], [ %2512, %2706 ], [ %2512, %2511 ], [ %2512, %2525 ], [ %3227, %3222 ], [ %3243, %3240 ], [ %2512, %3274 ], [ %3279, %3276 ]
  %3292 = phi float [ %2513, %3197 ], [ %2513, %2706 ], [ %2513, %2511 ], [ %2513, %2525 ], [ %3228, %3222 ], [ %3244, %3240 ], [ %2513, %3274 ], [ %3280, %3276 ]
  %3293 = phi float [ %3198, %3197 ], [ %2514, %2706 ], [ %2514, %2511 ], [ %2514, %2525 ], [ %3198, %3222 ], [ %3198, %3240 ], [ %3198, %3274 ], [ %3198, %3276 ]
  %3294 = phi float [ %3199, %3197 ], [ %2515, %2706 ], [ %2515, %2511 ], [ %2515, %2525 ], [ %3199, %3222 ], [ %3199, %3240 ], [ %3199, %3274 ], [ %3199, %3276 ]
  %3295 = phi float [ %3200, %3197 ], [ %2516, %2706 ], [ %2516, %2511 ], [ %2516, %2525 ], [ %3200, %3222 ], [ %3200, %3240 ], [ %3200, %3274 ], [ %3200, %3276 ]
  %3296 = phi float [ %3201, %3197 ], [ %2517, %2706 ], [ %2517, %2511 ], [ %2517, %2525 ], [ %3201, %3222 ], [ %3201, %3240 ], [ %3201, %3274 ], [ %3201, %3276 ]
  %3297 = phi float [ %3202, %3197 ], [ %2518, %2706 ], [ %2518, %2511 ], [ %2518, %2525 ], [ %3202, %3222 ], [ %3202, %3240 ], [ %3202, %3274 ], [ %3202, %3276 ]
  %3298 = phi float [ %3203, %3197 ], [ %2519, %2706 ], [ %2519, %2511 ], [ %2519, %2525 ], [ %3203, %3222 ], [ %3203, %3240 ], [ %3203, %3274 ], [ %3203, %3276 ]
  %3299 = phi float [ %3204, %3197 ], [ %2520, %2706 ], [ %2520, %2511 ], [ %2520, %2525 ], [ %3204, %3222 ], [ %3204, %3240 ], [ %3204, %3274 ], [ %3204, %3276 ]
  %3300 = phi float [ %2521, %3197 ], [ %2521, %2706 ], [ %2521, %2511 ], [ %2521, %2525 ], [ %3234, %3222 ], [ %3271, %3240 ], [ %2521, %3274 ], [ %3287, %3276 ]
  %3301 = phi float [ %2522, %3197 ], [ %2522, %2706 ], [ %2522, %2511 ], [ %2522, %2525 ], [ %3231, %3222 ], [ %3248, %3240 ], [ %2522, %3274 ], [ %3284, %3276 ]
  %3302 = phi float [ %2523, %3197 ], [ %2523, %2706 ], [ %2523, %2511 ], [ %2523, %2525 ], [ %3237, %3222 ], [ %3273, %3240 ], [ %2523, %3274 ], [ %3289, %3276 ]
  %3303 = phi float [ %3205, %3197 ], [ %2524, %2706 ], [ %2524, %2511 ], [ %2524, %2525 ], [ %3205, %3222 ], [ %3205, %3240 ], [ %3205, %3274 ], [ %3205, %3276 ]
  %3304 = add i32 %33, 360
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = extractvalue %dx.types.ResRet.i32 %3305, 1
  %3308 = bitcast i32 %3306 to float
  %3309 = bitcast i32 %3307 to float
  %3310 = fcmp fast oge float %3308, 0.000000e+00
  %3311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3312 = extractvalue %dx.types.CBufRet.f32 %3311, 0
  %3313 = select i1 %3310, float %3308, float %3312
  %3314 = fadd fast float %3313, %179
  %3315 = fmul fast float %3309, %180
  %3316 = add i32 %33, 456
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = add i32 %3318, 0
  %3320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3320, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = fmul fast float %3315, %3322
  %3324 = fadd fast float %3314, %3323
  %3325 = and i32 %171, 65535
  %3326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3325)  ; LegacyF16ToF32(value)
  %3327 = lshr i32 %171, 16
  %3328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3327)  ; LegacyF16ToF32(value)
  %3329 = and i32 %172, 65535
  %3330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3329)  ; LegacyF16ToF32(value)
  %3331 = fmul fast float %3326, %3293
  %3332 = fmul fast float %3328, %3294
  %3333 = fmul fast float %3330, %3295
  %3334 = shl i32 %173, 4
  %3335 = and i32 %3334, 32752
  %3336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3335)  ; LegacyF16ToF32(value)
  %3337 = lshr i32 %173, 7
  %3338 = and i32 %3337, 32752
  %3339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3338)  ; LegacyF16ToF32(value)
  %3340 = lshr i32 %173, 22
  %3341 = shl nuw nsw i32 %3340, 5
  %3342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3341)  ; LegacyF16ToF32(value)
  %3343 = and i32 %174, 65535
  %3344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3343)  ; LegacyF16ToF32(value)
  %3345 = fmul fast float %3336, %3296
  %3346 = fmul fast float %3345, %3344
  %3347 = fmul fast float %3339, %3297
  %3348 = fmul fast float %3347, %3344
  %3349 = fmul fast float %3342, %3298
  %3350 = fmul fast float %3349, %3344
  %3351 = call float @dx.op.dot2.f32(i32 54, float %3291, float %3292, float %3291, float %3292)  ; Dot2(ax,ay,bx,by)
  %3352 = fmul fast float %3351, 0x3FE3333340000000
  %3353 = fsub fast float 1.000000e+00, %3352
  %3354 = call float @dx.op.dot3.f32(i32 55, float %3291, float %3292, float %3353, float %3291, float %3292, float %3353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3355 = call float @dx.op.unary.f32(i32 25, float %3354)  ; Rsqrt(value)
  %3356 = fmul fast float %3355, %3291
  %3357 = fmul fast float %3355, %3292
  %3358 = fmul fast float %3353, %3355
  %3359 = fmul fast float %3358, %85
  %3360 = fmul fast float %3358, %86
  %3361 = fmul fast float %3358, %87
  %3362 = fmul fast float %3356, %59
  %3363 = fmul fast float %3356, %60
  %3364 = fmul fast float %3356, %61
  %3365 = fadd fast float %3359, %3362
  %3366 = fadd fast float %3360, %3363
  %3367 = fadd fast float %3361, %3364
  %3368 = fmul fast float %97, %3357
  %3369 = fmul fast float %98, %3357
  %3370 = fmul fast float %99, %3357
  %3371 = fadd fast float %3365, %3368
  %3372 = fadd fast float %3366, %3369
  %3373 = fadd fast float %3367, %3370
  %3374 = call float @dx.op.dot3.f32(i32 55, float %3371, float %3372, float %3373, float %3371, float %3372, float %3373)  ; Dot3(ax,ay,az,bx,by,bz)
  %3375 = call float @dx.op.unary.f32(i32 25, float %3374)  ; Rsqrt(value)
  %3376 = fmul fast float %3371, %3375
  %3377 = fmul fast float %3372, %3375
  %3378 = fmul fast float %3373, %3375
  %3379 = icmp eq i32 %35, 65535
  br i1 %3379, label %3894, label %3380

; <label>:3380                                    ; preds = %3290
  %3381 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3382 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3383 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3384 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3385 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3386 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3387 = fadd fast float %3381, %36
  %3388 = fadd fast float %3382, %37
  %3389 = fadd fast float %3383, %38
  %3390 = fadd fast float %3384, %36
  %3391 = fadd fast float %3385, %37
  %3392 = fadd fast float %3386, %38
  %3393 = mul i32 %35, 48
  %3394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.f32 %3394, 0
  %3396 = extractvalue %dx.types.ResRet.f32 %3394, 1
  %3397 = extractvalue %dx.types.ResRet.f32 %3394, 2
  %3398 = add i32 %3393, 16
  %3399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = add i32 %3393, 32
  %3404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.ResRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.ResRet.f32 %3404, 2
  %3408 = extractvalue %dx.types.ResRet.f32 %3404, 3
  %3409 = bitcast float %3408 to i32
  %3410 = fmul fast float %3395, %36
  %3411 = fmul fast float %3396, %37
  %3412 = fmul fast float %3397, %38
  %3413 = fsub fast float %3410, %3400
  %3414 = fsub fast float %3411, %3401
  %3415 = fsub fast float %3412, %3402
  %3416 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3417 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3418 = call float @dx.op.unary.f32(i32 7, float %3415)  ; Saturate(value)
  %3419 = fmul fast float %3416, %3405
  %3420 = fmul fast float %3417, %3406
  %3421 = fmul fast float %3418, %3407
  %3422 = fadd fast float %3405, -1.000000e+00
  %3423 = fadd fast float %3406, -1.000000e+00
  %3424 = fadd fast float %3407, -1.000000e+00
  %3425 = call float @dx.op.unary.f32(i32 27, float %3419)  ; Round_ni(value)
  %3426 = call float @dx.op.unary.f32(i32 27, float %3420)  ; Round_ni(value)
  %3427 = call float @dx.op.unary.f32(i32 27, float %3421)  ; Round_ni(value)
  %3428 = call float @dx.op.binary.f32(i32 36, float %3425, float %3422)  ; FMin(a,b)
  %3429 = call float @dx.op.binary.f32(i32 36, float %3426, float %3423)  ; FMin(a,b)
  %3430 = call float @dx.op.binary.f32(i32 36, float %3427, float %3424)  ; FMin(a,b)
  %3431 = fmul fast float %3430, %3406
  %3432 = fadd fast float %3431, %3429
  %3433 = fmul fast float %3432, %3405
  %3434 = fadd fast float %3433, %3428
  %3435 = fptosi float %3434 to i32
  %3436 = add nsw i32 %3435, %3409
  %3437 = shl nsw i32 %3436, 2
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = lshr i32 %3439, 16
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %3863, label %3442

; <label>:3442                                    ; preds = %3380
  br label %3443

; <label>:3443                                    ; preds = %3564, %3442
  %3444 = phi i32 [ %3466, %3564 ], [ %3440, %3442 ]
  %3445 = phi float [ %3565, %3564 ], [ 0.000000e+00, %3442 ]
  %3446 = phi float [ %3566, %3564 ], [ %3324, %3442 ]
  %3447 = phi float [ %3567, %3564 ], [ %3303, %3442 ]
  %3448 = phi float [ %3568, %3564 ], [ %3302, %3442 ]
  %3449 = phi float [ %3569, %3564 ], [ 0.000000e+00, %3442 ]
  %3450 = phi float [ %3570, %3564 ], [ %3346, %3442 ]
  %3451 = phi float [ %3571, %3564 ], [ %3348, %3442 ]
  %3452 = phi float [ %3572, %3564 ], [ %3350, %3442 ]
  %3453 = phi float [ %3573, %3564 ], [ %3376, %3442 ]
  %3454 = phi float [ %3574, %3564 ], [ %3377, %3442 ]
  %3455 = phi float [ %3575, %3564 ], [ %3378, %3442 ]
  %3456 = phi float [ %3576, %3564 ], [ %3301, %3442 ]
  %3457 = phi float [ %3577, %3564 ], [ %3300, %3442 ]
  %3458 = phi float [ %3578, %3564 ], [ 0.000000e+00, %3442 ]
  %3459 = phi float [ %3579, %3564 ], [ %3299, %3442 ]
  %3460 = phi float [ %3580, %3564 ], [ %3331, %3442 ]
  %3461 = phi float [ %3581, %3564 ], [ %3332, %3442 ]
  %3462 = phi float [ %3582, %3564 ], [ %3333, %3442 ]
  %3463 = shl nuw nsw i32 %3444, 2
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = lshr i32 %3465, 16
  %3467 = shl i32 %3465, 8
  %3468 = and i32 %3467, 16776960
  %3469 = or i32 %3468, 48
  %3470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3474 = or i32 %3468, 64
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = extractvalue %dx.types.ResRet.i32 %3475, 1
  %3478 = or i32 %3468, 80
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 2
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 3
  %3482 = or i32 %3468, 96
  %3483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3488 = or i32 %3468, 112
  %3489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3491 = or i32 %3468, 128
  %3492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.f32 %3492, 0
  %3494 = extractvalue %dx.types.ResRet.f32 %3492, 1
  %3495 = extractvalue %dx.types.ResRet.f32 %3492, 2
  %3496 = extractvalue %dx.types.ResRet.f32 %3492, 3
  %3497 = or i32 %3468, 144
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = extractvalue %dx.types.ResRet.f32 %3498, 3
  %3503 = or i32 %3468, 160
  %3504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3504, 2
  %3508 = extractvalue %dx.types.ResRet.f32 %3504, 3
  %3509 = or i32 %3468, 192
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = or i32 %3468, 208
  %3513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = or i32 %3468, 248
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.ResRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3519, 2
  %3523 = extractvalue %dx.types.ResRet.f32 %3519, 3
  %3524 = call float @dx.op.dot4.f32(i32 56, float %3520, float %3521, float %3522, float %3523, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3525 = or i32 %3468, 16
  %3526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.ResRet.f32 %3526, 1
  %3529 = extractvalue %dx.types.ResRet.f32 %3526, 2
  %3530 = extractvalue %dx.types.ResRet.f32 %3526, 3
  %3531 = call float @dx.op.dot4.f32(i32 56, float %3527, float %3528, float %3529, float %3530, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3532 = or i32 %3468, 32
  %3533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 0
  %3535 = extractvalue %dx.types.ResRet.f32 %3533, 1
  %3536 = extractvalue %dx.types.ResRet.f32 %3533, 2
  %3537 = extractvalue %dx.types.ResRet.f32 %3533, 3
  %3538 = call float @dx.op.dot4.f32(i32 56, float %3534, float %3535, float %3536, float %3537, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3539 = call float @dx.op.unary.f32(i32 27, float %3524)  ; Round_ni(value)
  %3540 = call float @dx.op.unary.f32(i32 6, float %3539)  ; FAbs(value)
  %3541 = call float @dx.op.unary.f32(i32 27, float %3531)  ; Round_ni(value)
  %3542 = call float @dx.op.unary.f32(i32 6, float %3541)  ; FAbs(value)
  %3543 = call float @dx.op.unary.f32(i32 6, float %3538)  ; FAbs(value)
  %3544 = call float @dx.op.unary.f32(i32 27, float %3543)  ; Round_ni(value)
  %3545 = fadd fast float %3542, %3540
  %3546 = fadd fast float %3545, %3544
  %3547 = fcmp fast oeq float %3546, 0.000000e+00
  %3548 = call float @dx.op.dot4.f32(i32 56, float %3520, float %3521, float %3522, float %3523, float %3387, float %3388, float %3389, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3549 = call float @dx.op.dot4.f32(i32 56, float %3527, float %3528, float %3529, float %3530, float %3387, float %3388, float %3389, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3550 = call float @dx.op.dot4.f32(i32 56, float %3520, float %3521, float %3522, float %3523, float %3390, float %3391, float %3392, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3551 = call float @dx.op.dot4.f32(i32 56, float %3527, float %3528, float %3529, float %3530, float %3390, float %3391, float %3392, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3552 = fsub fast float %3548, %3524
  %3553 = fsub fast float %3550, %3524
  %3554 = fsub fast float %3549, %3531
  %3555 = fsub fast float %3551, %3531
  %3556 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3472, float %3473, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 2
  %3559 = fadd fast float %3558, %3556
  %3560 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3557, 0
  %3562 = fcmp fast ogt float %3560, %3561
  %3563 = and i1 %3547, %3562
  br i1 %3563, label %3584, label %3564

; <label>:3564                                    ; preds = %3849, %3667, %3584, %3443
  %3565 = phi float [ %3445, %3584 ], [ %3670, %3667 ], [ %3670, %3849 ], [ %3445, %3443 ]
  %3566 = phi float [ %3446, %3584 ], [ %3446, %3667 ], [ %3824, %3849 ], [ %3446, %3443 ]
  %3567 = phi float [ %3447, %3584 ], [ %3447, %3667 ], [ %3822, %3849 ], [ %3447, %3443 ]
  %3568 = phi float [ %3448, %3584 ], [ %3448, %3667 ], [ %3794, %3849 ], [ %3448, %3443 ]
  %3569 = phi float [ %3449, %3584 ], [ %3449, %3667 ], [ %3792, %3849 ], [ %3449, %3443 ]
  %3570 = phi float [ %3450, %3584 ], [ %3450, %3667 ], [ %3859, %3849 ], [ %3450, %3443 ]
  %3571 = phi float [ %3451, %3584 ], [ %3451, %3667 ], [ %3860, %3849 ], [ %3451, %3443 ]
  %3572 = phi float [ %3452, %3584 ], [ %3452, %3667 ], [ %3861, %3849 ], [ %3452, %3443 ]
  %3573 = phi float [ %3453, %3584 ], [ %3453, %3667 ], [ %3773, %3849 ], [ %3453, %3443 ]
  %3574 = phi float [ %3454, %3584 ], [ %3454, %3667 ], [ %3774, %3849 ], [ %3454, %3443 ]
  %3575 = phi float [ %3455, %3584 ], [ %3455, %3667 ], [ %3775, %3849 ], [ %3455, %3443 ]
  %3576 = phi float [ %3456, %3584 ], [ %3456, %3667 ], [ %3802, %3849 ], [ %3456, %3443 ]
  %3577 = phi float [ %3457, %3584 ], [ %3457, %3667 ], [ %3799, %3849 ], [ %3457, %3443 ]
  %3578 = phi float [ %3458, %3584 ], [ %3458, %3667 ], [ %3796, %3849 ], [ %3458, %3443 ]
  %3579 = phi float [ %3459, %3584 ], [ %3459, %3667 ], [ %3790, %3849 ], [ %3459, %3443 ]
  %3580 = phi float [ %3460, %3584 ], [ %3460, %3667 ], [ %3785, %3849 ], [ %3460, %3443 ]
  %3581 = phi float [ %3461, %3584 ], [ %3461, %3667 ], [ %3786, %3849 ], [ %3461, %3443 ]
  %3582 = phi float [ %3462, %3584 ], [ %3462, %3667 ], [ %3787, %3849 ], [ %3462, %3443 ]
  %3583 = icmp eq i32 %3466, 0
  br i1 %3583, label %3862, label %3443

; <label>:3584                                    ; preds = %3443
  %3585 = extractvalue %dx.types.ResRet.f32 %3470, 3
  %3586 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3587 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3591 = extractvalue %dx.types.ResRet.i32 %3475, 3
  %3592 = extractvalue %dx.types.ResRet.i32 %3475, 2
  %3593 = bitcast float %3585 to i32
  %3594 = add i32 %3591, 0
  %3595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3594, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3595, %dx.types.Handle %3596, float %3524, float %3531, float undef, float undef, i32 0, i32 0, i32 undef, float %3552, float %3554, float undef, float %3553, float %3555, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = fmul fast float %3598, %3590
  %3600 = fadd fast float %3599, %3589
  %3601 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3602 = fmul fast float %3524, %3484
  %3603 = call float @dx.op.tertiary.f32(i32 46, float %3485, float %3531, float %3602)  ; FMad(a,b,c)
  %3604 = fadd fast float %3603, %3588
  %3605 = fmul fast float %3524, %3486
  %3606 = call float @dx.op.tertiary.f32(i32 46, float %3487, float %3531, float %3605)  ; FMad(a,b,c)
  %3607 = fadd fast float %3606, %3587
  %3608 = fmul fast float %3552, %3484
  %3609 = call float @dx.op.tertiary.f32(i32 46, float %3485, float %3554, float %3608)  ; FMad(a,b,c)
  %3610 = fmul fast float %3552, %3486
  %3611 = call float @dx.op.tertiary.f32(i32 46, float %3487, float %3554, float %3610)  ; FMad(a,b,c)
  %3612 = fmul fast float %3553, %3484
  %3613 = call float @dx.op.tertiary.f32(i32 46, float %3485, float %3555, float %3612)  ; FMad(a,b,c)
  %3614 = fmul fast float %3553, %3486
  %3615 = call float @dx.op.tertiary.f32(i32 46, float %3487, float %3555, float %3614)  ; FMad(a,b,c)
  %3616 = add i32 %3592, 0
  %3617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3616, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3618 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3617, %dx.types.Handle %3596, float %3604, float %3607, float undef, float undef, i32 0, i32 0, i32 undef, float %3609, float %3611, float undef, float %3613, float %3615, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = and i32 %3593, 1024
  %3621 = icmp ne i32 %3620, 0
  %3622 = fcmp fast ogt float %3619, 0x3FE0101020000000
  %3623 = uitofp i1 %3622 to float
  %3624 = select i1 %3621, float %3623, float %3619
  %3625 = and i32 %3593, 8192
  %3626 = icmp ne i32 %3625, 0
  %3627 = select i1 %3626, float %3586, float 1.000000e+00
  %3628 = fmul fast float %3524, 2.000000e+00
  %3629 = fadd fast float %3628, -1.000000e+00
  %3630 = call float @dx.op.unary.f32(i32 6, float %3629)  ; FAbs(value)
  %3631 = fmul fast float %3630, %3517
  %3632 = fsub fast float %3631, %3517
  %3633 = call float @dx.op.unary.f32(i32 7, float %3632)  ; Saturate(value)
  %3634 = fmul fast float %3531, 2.000000e+00
  %3635 = fadd fast float %3634, -1.000000e+00
  %3636 = call float @dx.op.unary.f32(i32 6, float %3635)  ; FAbs(value)
  %3637 = fmul fast float %3636, %3518
  %3638 = fsub fast float %3637, %3518
  %3639 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3640 = fmul fast float %3543, %3480
  %3641 = fsub fast float %3640, %3480
  %3642 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  %3643 = fmul fast float %3601, %3627
  %3644 = fmul fast float %3643, %3598
  %3645 = fmul fast float %3644, %3633
  %3646 = fmul fast float %3645, %3624
  %3647 = fmul fast float %3646, %3639
  %3648 = fmul fast float %3647, %3642
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 1
  %3651 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3652 = fsub fast float %3560, %3651
  %3653 = fmul fast float %3652, %3650
  %3654 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3655 = fmul fast float %3648, %3481
  %3656 = fadd fast float %3648, %3481
  %3657 = fmul fast float %3656, %3490
  %3658 = fsub fast float %3657, %3490
  %3659 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  %3660 = and i32 %3593, 128
  %3661 = icmp ne i32 %3660, 0
  %3662 = select i1 %3661, float %3659, float %3655
  %3663 = fmul fast float %3662, %3654
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 0
  %3666 = fcmp fast ugt float %3663, %3665
  br i1 %3666, label %3667, label %3564

; <label>:3667                                    ; preds = %3584
  %3668 = select i1 %3626, float %3663, float 0.000000e+00
  %3669 = fadd fast float %3668, %3445
  %3670 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  br i1 %3626, label %3564, label %3671

; <label>:3671                                    ; preds = %3667
  %3672 = and i32 %3593, 4
  %3673 = and i32 %3593, 8
  %3674 = add i32 %3476, 0
  %3675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3674, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3677 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3675, %dx.types.Handle %3676, float %3604, float %3607, float undef, float undef, i32 0, i32 0, i32 undef, float %3609, float %3611, float undef, float %3613, float %3615, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = extractvalue %dx.types.ResRet.f32 %3677, 3
  %3682 = bitcast float %3502 to i32
  %3683 = and i32 %3682, 255
  %3684 = uitofp i32 %3683 to float
  %3685 = lshr i32 %3682, 8
  %3686 = and i32 %3685, 255
  %3687 = uitofp i32 %3686 to float
  %3688 = fmul fast float %3681, %3684
  %3689 = fadd fast float %3688, %3687
  %3690 = fmul fast float %3689, 0x3F70101000000000
  %3691 = add i32 %3477, 0
  %3692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3691, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3693 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3692, %dx.types.Handle %3676, float %3604, float %3607, float undef, float undef, i32 0, i32 0, i32 undef, float %3609, float %3611, float undef, float %3613, float %3615, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = extractvalue %dx.types.ResRet.f32 %3693, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3693, 2
  %3697 = extractvalue %dx.types.ResRet.f32 %3693, 3
  %3698 = bitcast float %3496 to i32
  %3699 = and i32 %3698, 255
  %3700 = uitofp i32 %3699 to float
  %3701 = lshr i32 %3698, 8
  %3702 = and i32 %3701, 255
  %3703 = uitofp i32 %3702 to float
  %3704 = lshr i32 %3698, 16
  %3705 = and i32 %3704, 255
  %3706 = uitofp i32 %3705 to float
  %3707 = fmul fast float %3706, 0x3F70101000000000
  %3708 = fmul fast float %3694, %3700
  %3709 = fadd fast float %3708, %3703
  %3710 = fmul fast float %3709, 0x3F70101000000000
  %3711 = fadd fast float %3695, -5.000000e-01
  %3712 = fadd fast float %3697, -5.000000e-01
  %3713 = fmul fast float %3711, %3707
  %3714 = fmul fast float %3712, %3707
  %3715 = fadd fast float %3713, 5.000000e-01
  %3716 = fadd fast float %3714, 5.000000e-01
  %3717 = fmul fast float %3678, %3505
  %3718 = fmul fast float %3679, %3506
  %3719 = fmul fast float %3680, %3507
  %3720 = fmul fast float %3715, 2.000000e+00
  %3721 = fadd fast float %3720, -1.000000e+00
  %3722 = fmul fast float %3716, 2.000000e+00
  %3723 = fadd fast float %3722, -1.000000e+00
  %3724 = fadd fast float %3721, %3723
  %3725 = fmul fast float %3724, 5.000000e-01
  %3726 = fsub fast float %3721, %3723
  %3727 = fmul fast float %3726, 5.000000e-01
  %3728 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3729 = fsub fast float 1.000000e+00, %3728
  %3730 = call float @dx.op.unary.f32(i32 6, float %3727)  ; FAbs(value)
  %3731 = fsub fast float %3729, %3730
  %3732 = call float @dx.op.dot3.f32(i32 55, float %3725, float %3727, float %3731, float %3725, float %3727, float %3731)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = call float @dx.op.unary.f32(i32 25, float %3732)  ; Rsqrt(value)
  %3734 = fmul fast float %3725, %3733
  %3735 = fmul fast float %3727, %3733
  %3736 = fmul fast float %3733, %3731
  %3737 = fmul fast float %3736, %3471
  %3738 = fmul fast float %3736, %3472
  %3739 = fmul fast float %3736, %3473
  %3740 = fmul fast float %3734, %3493
  %3741 = fmul fast float %3734, %3494
  %3742 = fmul fast float %3734, %3495
  %3743 = fadd fast float %3740, %3737
  %3744 = fadd fast float %3741, %3738
  %3745 = fadd fast float %3742, %3739
  %3746 = fmul fast float %3735, %3499
  %3747 = fmul fast float %3735, %3500
  %3748 = fmul fast float %3735, %3501
  %3749 = fadd fast float %3743, %3746
  %3750 = fadd fast float %3744, %3747
  %3751 = fadd fast float %3745, %3748
  %3752 = call float @dx.op.dot3.f32(i32 55, float %3749, float %3750, float %3751, float %3749, float %3750, float %3751)  ; Dot3(ax,ay,az,bx,by,bz)
  %3753 = call float @dx.op.unary.f32(i32 25, float %3752)  ; Rsqrt(value)
  %3754 = fmul fast float %3749, %3753
  %3755 = fmul fast float %3750, %3753
  %3756 = fmul fast float %3751, %3753
  %3757 = icmp ne i32 %3673, 0
  %3758 = select i1 %3757, float 1.000000e+00, float 0.000000e+00
  %3759 = fmul fast float %3663, %3758
  %3760 = and i32 %3593, 1
  %3761 = icmp eq i32 %3760, 0
  br i1 %3761, label %3762, label %3766

; <label>:3762                                    ; preds = %3671
  %3763 = fsub fast float %3754, %3453
  %3764 = fsub fast float %3755, %3454
  %3765 = fsub fast float %3756, %3455
  br label %3766

; <label>:3766                                    ; preds = %3762, %3671
  %3767 = phi float [ %3763, %3762 ], [ %3754, %3671 ]
  %3768 = phi float [ %3764, %3762 ], [ %3755, %3671 ]
  %3769 = phi float [ %3765, %3762 ], [ %3756, %3671 ]
  %3770 = fmul float %3769, %3759
  %3771 = fmul float %3768, %3759
  %3772 = fmul float %3767, %3759
  %3773 = fadd fast float %3772, %3453
  %3774 = fadd fast float %3771, %3454
  %3775 = fadd fast float %3770, %3455
  %3776 = icmp ne i32 %3672, 0
  %3777 = select i1 %3776, float 1.000000e+00, float 0.000000e+00
  %3778 = fmul fast float %3663, %3777
  %3779 = fsub fast float %3717, %3460
  %3780 = fsub fast float %3718, %3461
  %3781 = fsub fast float %3719, %3462
  %3782 = fmul fast float %3779, %3778
  %3783 = fmul fast float %3780, %3778
  %3784 = fmul fast float %3781, %3778
  %3785 = fadd fast float %3782, %3460
  %3786 = fadd fast float %3783, %3461
  %3787 = fadd fast float %3784, %3462
  %3788 = fsub fast float %3690, %3459
  %3789 = fmul fast float %3788, %3778
  %3790 = fadd fast float %3789, %3459
  %3791 = fmul fast float %3778, %3449
  %3792 = fsub fast float %3449, %3791
  %3793 = fmul fast float %3778, %3448
  %3794 = fsub fast float %3448, %3793
  %3795 = fadd fast float %3663, %3458
  %3796 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3797 = fsub fast float %3710, %3457
  %3798 = fmul fast float %3797, %3759
  %3799 = fadd fast float %3798, %3457
  %3800 = fsub fast float %3696, %3456
  %3801 = fmul fast float %3800, %3759
  %3802 = fadd fast float %3801, %3456
  %3803 = call float @dx.op.dot3.f32(i32 55, float %3717, float %3718, float %3719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.CBufRet.f32 %3804, 1
  %3807 = fmul fast float %3806, %3803
  %3808 = fadd fast float %3807, %3805
  %3809 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3810 = bitcast float %3508 to i32
  %3811 = and i32 %3810, 65535
  %3812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3811)  ; LegacyF16ToF32(value)
  %3813 = lshr i32 %3810, 16
  %3814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3813)  ; LegacyF16ToF32(value)
  %3815 = fcmp fast oge float %3812, 0.000000e+00
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %3818 = select i1 %3815, float %3812, float %3817
  %3819 = fadd fast float %3818, %3814
  %3820 = fsub fast float %3809, %3447
  %3821 = fmul fast float %3820, %3663
  %3822 = fadd fast float %3821, %3447
  %3823 = fmul fast float %3819, %3663
  %3824 = call float @dx.op.binary.f32(i32 35, float %3446, float %3823)  ; FMax(a,b)
  %3825 = and i32 %3593, 16
  %3826 = icmp eq i32 %3825, 0
  br i1 %3826, label %3849, label %3827

; <label>:3827                                    ; preds = %3766
  %3828 = bitcast float %3514 to i32
  %3829 = add i32 %3511, 0
  %3830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3829, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3831 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3830, %dx.types.Handle %3676, float %3604, float %3607, float undef, float undef, i32 0, i32 0, i32 undef, float %3609, float %3611, float undef, float %3613, float %3615, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = and i32 %3828, 65535
  %3836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3835)  ; LegacyF16ToF32(value)
  %3837 = fmul fast float %3832, %3505
  %3838 = fmul fast float %3833, %3506
  %3839 = fmul fast float %3834, %3507
  %3840 = and i32 %3593, 16384
  %3841 = icmp ne i32 %3840, 0
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 0
  %3844 = select i1 %3841, float %3843, float 1.000000e+00
  %3845 = fmul fast float %3844, %3836
  %3846 = fmul fast float %3837, %3845
  %3847 = fmul fast float %3838, %3845
  %3848 = fmul fast float %3839, %3845
  br label %3849

; <label>:3849                                    ; preds = %3827, %3766
  %3850 = phi float [ %3846, %3827 ], [ 0.000000e+00, %3766 ]
  %3851 = phi float [ %3847, %3827 ], [ 0.000000e+00, %3766 ]
  %3852 = phi float [ %3848, %3827 ], [ 0.000000e+00, %3766 ]
  %3853 = fsub fast float %3850, %3450
  %3854 = fsub fast float %3851, %3451
  %3855 = fsub fast float %3852, %3452
  %3856 = fmul fast float %3853, %3663
  %3857 = fmul fast float %3854, %3663
  %3858 = fmul fast float %3855, %3663
  %3859 = fadd fast float %3856, %3450
  %3860 = fadd fast float %3857, %3451
  %3861 = fadd fast float %3858, %3452
  br label %3564

; <label>:3862                                    ; preds = %3564
  br label %3863

; <label>:3863                                    ; preds = %3862, %3380
  %3864 = phi float [ 0.000000e+00, %3380 ], [ %3565, %3862 ]
  %3865 = phi float [ %3324, %3380 ], [ %3566, %3862 ]
  %3866 = phi float [ %3303, %3380 ], [ %3567, %3862 ]
  %3867 = phi float [ %3302, %3380 ], [ %3568, %3862 ]
  %3868 = phi float [ 0.000000e+00, %3380 ], [ %3569, %3862 ]
  %3869 = phi float [ %3346, %3380 ], [ %3570, %3862 ]
  %3870 = phi float [ %3348, %3380 ], [ %3571, %3862 ]
  %3871 = phi float [ %3350, %3380 ], [ %3572, %3862 ]
  %3872 = phi float [ %3376, %3380 ], [ %3573, %3862 ]
  %3873 = phi float [ %3377, %3380 ], [ %3574, %3862 ]
  %3874 = phi float [ %3378, %3380 ], [ %3575, %3862 ]
  %3875 = phi float [ %3301, %3380 ], [ %3576, %3862 ]
  %3876 = phi float [ %3300, %3380 ], [ %3577, %3862 ]
  %3877 = phi float [ 0.000000e+00, %3380 ], [ %3578, %3862 ]
  %3878 = phi float [ %3299, %3380 ], [ %3579, %3862 ]
  %3879 = phi float [ %3331, %3380 ], [ %3580, %3862 ]
  %3880 = phi float [ %3332, %3380 ], [ %3581, %3862 ]
  %3881 = phi float [ %3333, %3380 ], [ %3582, %3862 ]
  %3882 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3872, float %3873, float %3874)  ; Dot3(ax,ay,az,bx,by,bz)
  %3883 = call float @dx.op.unary.f32(i32 25, float %3882)  ; Rsqrt(value)
  %3884 = fmul fast float %3883, %3872
  %3885 = fmul fast float %3883, %3873
  %3886 = fmul fast float %3883, %3874
  %3887 = fadd fast float %3877, %962
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = call float @dx.op.dot3.f32(i32 55, float %3884, float %3885, float %3886, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %3890 = call float @dx.op.unary.f32(i32 25, float %3889)  ; Rsqrt(value)
  %3891 = fmul fast float %3890, %3884
  %3892 = fmul fast float %3890, %3885
  %3893 = fmul fast float %3890, %3886
  br label %3894

; <label>:3894                                    ; preds = %3863, %3290
  %3895 = phi float [ %3891, %3863 ], [ %3376, %3290 ]
  %3896 = phi float [ %3892, %3863 ], [ %3377, %3290 ]
  %3897 = phi float [ %3893, %3863 ], [ %3378, %3290 ]
  %3898 = phi float [ %3869, %3863 ], [ %3346, %3290 ]
  %3899 = phi float [ %3870, %3863 ], [ %3348, %3290 ]
  %3900 = phi float [ %3871, %3863 ], [ %3350, %3290 ]
  %3901 = phi float [ %3879, %3863 ], [ %3331, %3290 ]
  %3902 = phi float [ %3880, %3863 ], [ %3332, %3290 ]
  %3903 = phi float [ %3881, %3863 ], [ %3333, %3290 ]
  %3904 = phi float [ %3878, %3863 ], [ %3299, %3290 ]
  %3905 = phi float [ %3888, %3863 ], [ %962, %3290 ]
  %3906 = phi float [ %3876, %3863 ], [ %3300, %3290 ]
  %3907 = phi float [ %3875, %3863 ], [ %3301, %3290 ]
  %3908 = phi float [ %3868, %3863 ], [ 0.000000e+00, %3290 ]
  %3909 = phi float [ %3867, %3863 ], [ %3302, %3290 ]
  %3910 = phi float [ %3864, %3863 ], [ 0.000000e+00, %3290 ]
  %3911 = phi float [ %3865, %3863 ], [ %3324, %3290 ]
  %3912 = phi float [ %3866, %3863 ], [ %3303, %3290 ]
  %3913 = fadd fast float %3904, 0xBFB99999A0000000
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = fmul fast float %3914, 0x3FF1C71C80000000
  %3916 = call float @dx.op.binary.f32(i32 36, float %3904, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3917 = fsub fast float 1.000000e+00, %3915
  %3918 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3919 = fmul fast float %3918, %3901
  %3920 = fmul fast float %3918, %3902
  %3921 = fmul fast float %3918, %3903
  %3922 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3923 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3924 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3925 = fmul fast float %3915, %3901
  %3926 = fmul fast float %3915, %3902
  %3927 = fmul fast float %3915, %3903
  %3928 = fadd fast float %3925, %3916
  %3929 = fadd fast float %3926, %3916
  %3930 = fadd fast float %3927, %3916
  %3931 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3932 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3933 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3934 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.i32 %3935, 3
  %3937 = and i32 %3936, 8
  %3938 = icmp ne i32 %3937, 0
  %3939 = call float @dx.op.binary.f32(i32 35, float %3922, float %3901)  ; FMax(a,b)
  %3940 = call float @dx.op.binary.f32(i32 35, float %3923, float %3901)  ; FMax(a,b)
  %3941 = call float @dx.op.binary.f32(i32 35, float %3924, float %3901)  ; FMax(a,b)
  %3942 = call float @dx.op.dot3.f32(i32 55, float %3922, float %3923, float %3924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3943 = select i1 %217, float %3901, float %3922
  %3944 = select i1 %217, float %3942, float %3923
  %3945 = select i1 %217, float 1.000000e+00, float %3924
  %3946 = select i1 %3938, float %3939, float %3943
  %3947 = select i1 %3938, float %3940, float %3944
  %3948 = select i1 %3938, float %3941, float %3945
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.CBufRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.CBufRet.f32 %3949, 2
  %3953 = fadd fast float %3950, %165
  %3954 = fadd fast float %3951, %166
  %3955 = fadd fast float %3952, %167
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.CBufRet.f32 %3956, 1
  %3959 = fsub fast float %3953, %3957
  %3960 = fsub fast float %3954, %3958
  %3961 = fmul fast float %3959, %3959
  %3962 = fmul fast float %3960, %3960
  %3963 = fadd fast float %3961, %3962
  %3964 = call float @dx.op.unary.f32(i32 24, float %3963)  ; Sqrt(value)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3956, 2
  %3966 = fcmp fast olt float %3964, %3965
  br i1 %3966, label %3967, label %4034

; <label>:3967                                    ; preds = %3894
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.CBufRet.f32 %3968, 1
  %3975 = extractvalue %dx.types.CBufRet.f32 %3970, 1
  %3976 = extractvalue %dx.types.CBufRet.f32 %3972, 1
  %3977 = extractvalue %dx.types.CBufRet.f32 %3968, 3
  %3978 = extractvalue %dx.types.CBufRet.f32 %3970, 3
  %3979 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3980 = fadd fast float %3977, %3953
  %3981 = fadd fast float %3978, %3954
  %3982 = fadd fast float %3979, %3955
  %3983 = fmul fast float %3980, %3969
  %3984 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3971, float %3983)  ; FMad(a,b,c)
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3982, float %3973, float %3984)  ; FMad(a,b,c)
  %3986 = fmul fast float %3980, %3974
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3975, float %3986)  ; FMad(a,b,c)
  %3988 = call float @dx.op.tertiary.f32(i32 46, float %3982, float %3976, float %3987)  ; FMad(a,b,c)
  %3989 = fsub fast float %3985, %3977
  %3990 = fsub fast float %3988, %3978
  %3991 = fsub fast float %3989, %3957
  %3992 = fadd fast float %3991, %3965
  %3993 = fsub fast float %3990, %3958
  %3994 = fadd fast float %3993, %3965
  %3995 = extractvalue %dx.types.CBufRet.f32 %3956, 3
  %3996 = fmul fast float %3992, %3995
  %3997 = fmul fast float %3994, %3995
  %3998 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3999 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %4000 = fsub fast float 1.000000e+00, %3998
  %4001 = fsub fast float 1.000000e+00, %3999
  %4002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4000, float %4001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = fcmp fast ugt float %4003, 0.000000e+00
  br i1 %4004, label %4005, label %4308

; <label>:4005                                    ; preds = %3967
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 2
  %4008 = fmul fast float %4007, %4003
  %4009 = extractvalue %dx.types.CBufRet.f32 %4006, 3
  %4010 = fadd fast float %4009, %4008
  %4011 = extractvalue %dx.types.CBufRet.f32 %3972, 2
  %4012 = fadd fast float %4010, %3979
  %4013 = fmul fast float %3985, %3973
  %4014 = call float @dx.op.tertiary.f32(i32 46, float %3988, float %3976, float %4013)  ; FMad(a,b,c)
  %4015 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4011, float %4014)  ; FMad(a,b,c)
  %4016 = fsub fast float %4015, %3979
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 2
  %4019 = fsub fast float %4016, %4018
  %4020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4000, float %4001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = extractvalue %dx.types.ResRet.f32 %4020, 1
  %4023 = extractvalue %dx.types.ResRet.f32 %4020, 2
  %4024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4000, float %4001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %4024, 2
  %4028 = fadd fast float %4025, %4021
  %4029 = fmul fast float %4028, 0x3F847AE140000000
  %4030 = fadd fast float %4026, %4022
  %4031 = fmul fast float %4030, 0x3F847AE140000000
  %4032 = fadd fast float %4027, %4023
  %4033 = fmul fast float %4032, 0x3F847AE140000000
  br label %4308

; <label>:4034                                    ; preds = %3894
  %4035 = and i32 %196, 1
  %4036 = icmp eq i32 %4035, 0
  br i1 %4036, label %4308, label %4037

; <label>:4037                                    ; preds = %4034
  %4038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.f32 %4038, 0
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.CBufRet.f32 %4038, 1
  %4045 = extractvalue %dx.types.CBufRet.f32 %4040, 1
  %4046 = extractvalue %dx.types.CBufRet.f32 %4042, 1
  %4047 = extractvalue %dx.types.CBufRet.f32 %4038, 3
  %4048 = extractvalue %dx.types.CBufRet.f32 %4040, 3
  %4049 = extractvalue %dx.types.CBufRet.f32 %4042, 3
  %4050 = fadd fast float %4047, %3953
  %4051 = fadd fast float %4048, %3954
  %4052 = fadd fast float %4049, %3955
  %4053 = fmul fast float %4050, %4039
  %4054 = call float @dx.op.tertiary.f32(i32 46, float %4051, float %4041, float %4053)  ; FMad(a,b,c)
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %4052, float %4043, float %4054)  ; FMad(a,b,c)
  %4056 = fmul fast float %4050, %4044
  %4057 = call float @dx.op.tertiary.f32(i32 46, float %4051, float %4045, float %4056)  ; FMad(a,b,c)
  %4058 = call float @dx.op.tertiary.f32(i32 46, float %4052, float %4046, float %4057)  ; FMad(a,b,c)
  %4059 = fsub fast float %4055, %4047
  %4060 = fsub fast float %4058, %4048
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4065 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.i32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.i32 %4068, 1
  %4071 = udiv i32 %4070, %4069
  %4072 = fsub fast float %4059, %4062
  %4073 = fsub fast float %4060, %4063
  %4074 = call float @dx.op.binary.f32(i32 35, float %4072, float 0.000000e+00)  ; FMax(a,b)
  %4075 = call float @dx.op.binary.f32(i32 35, float %4073, float 0.000000e+00)  ; FMax(a,b)
  %4076 = call float @dx.op.binary.f32(i32 36, float %4074, float %4064)  ; FMin(a,b)
  %4077 = call float @dx.op.binary.f32(i32 36, float %4075, float %4065)  ; FMin(a,b)
  %4078 = add i32 %4069, -1
  %4079 = add i32 %4071, -1
  %4080 = fmul fast float %4076, %4067
  %4081 = fmul fast float %4077, %4067
  %4082 = fptoui float %4080 to i32
  %4083 = fptoui float %4081 to i32
  %4084 = call i32 @dx.op.binary.i32(i32 40, i32 %4082, i32 %4078)  ; UMin(a,b)
  %4085 = call i32 @dx.op.binary.i32(i32 40, i32 %4083, i32 %4079)  ; UMin(a,b)
  %4086 = mul i32 %4085, %4069
  %4087 = add i32 %4086, %4084
  %4088 = shl i32 %4087, 2
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = icmp eq i32 %4090, -1
  br i1 %4091, label %4308, label %4092

; <label>:4092                                    ; preds = %4037
  %4093 = mul i32 %4090, 148
  %4094 = add i32 %4093, 4
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = add i32 %4093, 8
  %4098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = add i32 %4093, 36
  %4101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = add i32 %4093, 60
  %4104 = add i32 %4093, 92
  %4105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.i32 %4105, 0
  %4107 = add i32 %4093, 116
  %4108 = fsub fast float %4059, %4096
  %4109 = fsub fast float %4060, %4099
  %4110 = fmul fast float %4067, %4108
  %4111 = fmul fast float %4067, %4109
  %4112 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4114 = fsub fast float 1.000000e+00, %4113
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4117 = call float @dx.op.unary.f32(i32 83, float %4112)  ; DerivCoarseX(value)
  %4118 = call float @dx.op.unary.f32(i32 83, float %4114)  ; DerivCoarseX(value)
  %4119 = call float @dx.op.unary.f32(i32 84, float %4112)  ; DerivCoarseY(value)
  %4120 = call float @dx.op.unary.f32(i32 84, float %4114)  ; DerivCoarseY(value)
  %4121 = fmul fast float %4117, %4116
  %4122 = fmul fast float %4118, %4116
  %4123 = fmul fast float %4119, %4116
  %4124 = fmul fast float %4120, %4116
  %4125 = call float @dx.op.dot2.f32(i32 54, float %4123, float %4124, float %4123, float %4124)  ; Dot2(ax,ay,bx,by)
  %4126 = call float @dx.op.dot2.f32(i32 54, float %4121, float %4122, float %4121, float %4122)  ; Dot2(ax,ay,bx,by)
  %4127 = call float @dx.op.binary.f32(i32 35, float %4126, float %4125)  ; FMax(a,b)
  %4128 = call float @dx.op.unary.f32(i32 23, float %4127)  ; Log(value)
  %4129 = fmul fast float %4128, 5.000000e-01
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 1
  %4132 = fadd fast float %4131, %4129
  %4133 = call float @dx.op.binary.f32(i32 35, float %4132, float 0.000000e+00)  ; FMax(a,b)
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 3
  %4136 = fadd fast float %4135, %4133
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 3
  %4139 = fadd fast float %4136, %4138
  %4140 = add i32 %4106, 0
  %4141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4140, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4142 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4141, i32 0)  ; GetDimensions(handle,mipLevel)
  %4143 = extractvalue %dx.types.Dimensions %4142, 0
  %4144 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4143)  ; FirstbitLo(value)
  %4145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.i32 %4145, 1
  %4147 = sub nsw i32 %4146, %4144
  %4148 = sitofp i32 %4147 to float
  %4149 = fsub fast float %4139, %4148
  %4150 = call float @dx.op.binary.f32(i32 35, float %4149, float 0.000000e+00)  ; FMax(a,b)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4141, %dx.types.Handle %28, float %4112, float %4114, float %4102, float undef, i32 0, i32 0, i32 undef, float %4150)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = fcmp ule float %4152, 0x3FE0101020000000
  %4154 = extractvalue %dx.types.CBufRet.i32 %4145, 0
  %4155 = and i32 %4154, 128
  %4156 = icmp ne i32 %4155, 0
  %4157 = and i1 %4153, %4156
  br i1 %4157, label %4308, label %4158

; <label>:4158                                    ; preds = %4092
  %4159 = add i32 %4093, 20
  %4160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = add i32 %4093, 24
  %4163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = add i32 %4093, 40
  %4166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.f32 %4166, 0
  %4168 = add i32 %4093, 96
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4173 = fmul fast float %4172, %4112
  %4174 = fmul fast float %4172, %4114
  %4175 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4176 = fadd fast float %4173, %4175
  %4177 = fadd fast float %4174, %4175
  %4178 = add i32 %4170, 0
  %4179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4178, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4180 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4179, i32 0)  ; GetDimensions(handle,mipLevel)
  %4181 = extractvalue %dx.types.Dimensions %4180, 0
  %4182 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4181)  ; FirstbitLo(value)
  %4183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.i32 %4183, 1
  %4185 = sub nsw i32 %4184, %4182
  %4186 = sitofp i32 %4185 to float
  %4187 = fsub fast float %4136, %4186
  %4188 = call float @dx.op.binary.f32(i32 35, float %4187, float 0.000000e+00)  ; FMax(a,b)
  %4189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4179, %dx.types.Handle %28, float %4176, float %4177, float %4167, float undef, i32 0, i32 0, i32 undef, float %4188)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = fmul fast float %4190, %4161
  %4192 = fadd fast float %4191, %4164
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.CBufRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.CBufRet.f32 %4193, 2
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4201 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4202 = fadd fast float %4198, %4059
  %4203 = fadd fast float %4200, %4060
  %4204 = fadd fast float %4192, %4201
  %4205 = fmul fast float %4202, %4194
  %4206 = call float @dx.op.tertiary.f32(i32 46, float %4203, float %4195, float %4205)  ; FMad(a,b,c)
  %4207 = call float @dx.op.tertiary.f32(i32 46, float %4204, float %4196, float %4206)  ; FMad(a,b,c)
  %4208 = fsub fast float %4207, %4201
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 2
  %4211 = fsub fast float %4208, %4210
  %4212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.i32 %4212, 0
  %4214 = call i32 @dx.op.binary.i32(i32 40, i32 %4090, i32 %4213)  ; UMin(a,b)
  %4215 = mul i32 %4214, 36
  %4216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.i32 %4216, 0
  %4218 = add i32 %4215, 4
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = fmul fast float %4220, %4112
  %4222 = fmul fast float %4220, %4114
  %4223 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4224 = fadd fast float %4221, %4223
  %4225 = fadd fast float %4222, %4223
  %4226 = icmp eq i32 %4217, 0
  br i1 %4226, label %4295, label %4227

; <label>:4227                                    ; preds = %4158
  br label %4228

; <label>:4228                                    ; preds = %4285, %4227
  %4229 = phi float [ %4286, %4285 ], [ 0.000000e+00, %4227 ]
  %4230 = phi float [ %4287, %4285 ], [ 0.000000e+00, %4227 ]
  %4231 = phi float [ %4288, %4285 ], [ 0.000000e+00, %4227 ]
  %4232 = phi float [ %4289, %4285 ], [ 0.000000e+00, %4227 ]
  %4233 = phi float [ %4290, %4285 ], [ 0.000000e+00, %4227 ]
  %4234 = phi float [ %4291, %4285 ], [ 0.000000e+00, %4227 ]
  %4235 = phi i32 [ %4292, %4285 ], [ 0, %4227 ]
  %4236 = shl i32 %4235, 2
  %4237 = add i32 %4103, %4236
  %4238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = add i32 %4107, %4236
  %4241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.i32 %4241, 0
  %4243 = add i32 %4242, 0
  %4244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4243, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4245 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4244, i32 0)  ; GetDimensions(handle,mipLevel)
  %4246 = extractvalue %dx.types.Dimensions %4245, 0
  %4247 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4246)  ; FirstbitLo(value)
  %4248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.i32 %4248, 1
  %4250 = sub nsw i32 %4249, %4247
  %4251 = sitofp i32 %4250 to float
  %4252 = fsub fast float %4136, %4251
  %4253 = call float @dx.op.binary.f32(i32 35, float %4252, float 0.000000e+00)  ; FMax(a,b)
  %4254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4244, %dx.types.Handle %28, float %4224, float %4225, float %4239, float undef, i32 0, i32 0, i32 undef, float %4253)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = fcmp fast ogt float %4255, 0.000000e+00
  br i1 %4256, label %4257, label %4285

; <label>:4257                                    ; preds = %4228
  %4258 = add i32 %4218, %4236
  %4259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.i32 %4259, 0
  %4261 = and i32 %4260, 32767
  %4262 = mul nuw nsw i32 %4261, 928
  %4263 = add nuw nsw i32 %4262, 48
  %4264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = extractvalue %dx.types.ResRet.f32 %4264, 1
  %4267 = extractvalue %dx.types.ResRet.f32 %4264, 2
  %4268 = add nuw nsw i32 %4262, 60
  %4269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4268, i32 undef)  ; BufferLoad(srv,index,wot)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.ResRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.ResRet.f32 %4269, 2
  %4273 = fmul fast float %4265, %4255
  %4274 = fmul fast float %4266, %4255
  %4275 = fmul fast float %4267, %4255
  %4276 = fadd fast float %4273, %4229
  %4277 = fadd fast float %4274, %4230
  %4278 = fadd fast float %4275, %4231
  %4279 = fmul fast float %4270, %4255
  %4280 = fmul fast float %4271, %4255
  %4281 = fmul fast float %4272, %4255
  %4282 = fadd fast float %4279, %4232
  %4283 = fadd fast float %4280, %4233
  %4284 = fadd fast float %4281, %4234
  br label %4285

; <label>:4285                                    ; preds = %4257, %4228
  %4286 = phi float [ %4276, %4257 ], [ %4229, %4228 ]
  %4287 = phi float [ %4277, %4257 ], [ %4230, %4228 ]
  %4288 = phi float [ %4278, %4257 ], [ %4231, %4228 ]
  %4289 = phi float [ %4282, %4257 ], [ %4232, %4228 ]
  %4290 = phi float [ %4283, %4257 ], [ %4233, %4228 ]
  %4291 = phi float [ %4284, %4257 ], [ %4234, %4228 ]
  %4292 = add nuw i32 %4235, 1
  %4293 = icmp eq i32 %4292, %4217
  br i1 %4293, label %4294, label %4228

; <label>:4294                                    ; preds = %4285
  br label %4295

; <label>:4295                                    ; preds = %4294, %4158
  %4296 = phi float [ 0.000000e+00, %4158 ], [ %4286, %4294 ]
  %4297 = phi float [ 0.000000e+00, %4158 ], [ %4287, %4294 ]
  %4298 = phi float [ 0.000000e+00, %4158 ], [ %4288, %4294 ]
  %4299 = phi float [ 0.000000e+00, %4158 ], [ %4289, %4294 ]
  %4300 = phi float [ 0.000000e+00, %4158 ], [ %4290, %4294 ]
  %4301 = phi float [ 0.000000e+00, %4158 ], [ %4291, %4294 ]
  %4302 = fadd fast float %4299, %4296
  %4303 = fmul fast float %4302, 0x3F847AE140000000
  %4304 = fadd fast float %4300, %4297
  %4305 = fmul fast float %4304, 0x3F847AE140000000
  %4306 = fadd fast float %4301, %4298
  %4307 = fmul fast float %4306, 0x3F847AE140000000
  br label %4308

; <label>:4308                                    ; preds = %4295, %4092, %4037, %4034, %4005, %3967
  %4309 = phi float [ %4019, %4005 ], [ -1.310720e+05, %3967 ], [ %4211, %4295 ], [ -1.310720e+05, %4037 ], [ -1.310720e+05, %4092 ], [ -1.310720e+05, %4034 ]
  %4310 = phi float [ %4029, %4005 ], [ 0.000000e+00, %3967 ], [ %4303, %4295 ], [ 0.000000e+00, %4037 ], [ 0.000000e+00, %4092 ], [ 0.000000e+00, %4034 ]
  %4311 = phi float [ %4031, %4005 ], [ 0.000000e+00, %3967 ], [ %4305, %4295 ], [ 0.000000e+00, %4037 ], [ 0.000000e+00, %4092 ], [ 0.000000e+00, %4034 ]
  %4312 = phi float [ %4033, %4005 ], [ 0.000000e+00, %3967 ], [ %4307, %4295 ], [ 0.000000e+00, %4037 ], [ 0.000000e+00, %4092 ], [ 0.000000e+00, %4034 ]
  %4313 = phi i1 [ true, %4005 ], [ false, %3967 ], [ true, %4295 ], [ false, %4037 ], [ false, %4092 ], [ false, %4034 ]
  %4314 = and i32 %196, 3
  %4315 = icmp eq i32 %4314, 1
  %4316 = select i1 %4315, float 1.000000e+00, float 0.000000e+00
  %4317 = fsub fast float %4309, %167
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = select i1 %4313, float %4318, float 1.000000e+00
  %4320 = fmul fast float %4319, %4316
  %4321 = icmp eq i32 %4314, 3
  %4322 = select i1 %4321, float 1.000000e+00, float %4320
  %4323 = call float @dx.op.binary.f32(i32 35, float %3910, float %4322)  ; FMax(a,b)
  %4324 = fcmp fast olt float %4322, 1.000000e+00
  %4325 = fcmp uge float %49, 0.000000e+00
  %4326 = and i1 %4325, %4324
  br i1 %4326, label %4327, label %4337

; <label>:4327                                    ; preds = %4308
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.ResRet.f32 %4328, 1
  %4331 = extractvalue %dx.types.ResRet.f32 %4328, 2
  %4332 = fadd fast float %4329, %4323
  %4333 = fcmp ule float %48, 0.000000e+00
  %4334 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4335 = select i1 %4333, float %4334, float 1.000000e+00
  %4336 = fmul fast float %4335, %4331
  br label %4337

; <label>:4337                                    ; preds = %4327, %4308
  %4338 = phi float [ %4332, %4327 ], [ %4323, %4308 ]
  %4339 = phi float [ %4330, %4327 ], [ 0.000000e+00, %4308 ]
  %4340 = phi float [ %4336, %4327 ], [ 0.000000e+00, %4308 ]
  %4341 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4342 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4343 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4344 = fcmp fast une float %4342, 0.000000e+00
  %4345 = fcmp fast une float %4343, 0.000000e+00
  %4346 = or i1 %4344, %4345
  br i1 %4346, label %4347, label %4906

; <label>:4347                                    ; preds = %4337
  br i1 %4344, label %4348, label %4621

; <label>:4348                                    ; preds = %4347
  %4349 = call float @dx.op.unary.f32(i32 23, float %3907)  ; Log(value)
  %4350 = fmul fast float %4349, 4.000000e+00
  %4351 = call float @dx.op.unary.f32(i32 21, float %4350)  ; Exp(value)
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4354 = fmul fast float %4353, %36
  %4355 = fmul fast float %4353, %37
  %4356 = fmul fast float %4353, %38
  %4357 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4358 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4359 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4360 = call float @dx.op.unary.f32(i32 23, float %4357)  ; Log(value)
  %4361 = call float @dx.op.unary.f32(i32 23, float %4358)  ; Log(value)
  %4362 = call float @dx.op.unary.f32(i32 23, float %4359)  ; Log(value)
  %4363 = fmul fast float %4360, 4.000000e+00
  %4364 = fmul fast float %4361, 4.000000e+00
  %4365 = fmul fast float %4362, 4.000000e+00
  %4366 = call float @dx.op.unary.f32(i32 21, float %4363)  ; Exp(value)
  %4367 = call float @dx.op.unary.f32(i32 21, float %4364)  ; Exp(value)
  %4368 = call float @dx.op.unary.f32(i32 21, float %4365)  ; Exp(value)
  %4369 = fadd fast float %4367, %4366
  %4370 = fadd fast float %4369, %4368
  %4371 = fdiv fast float 1.000000e+00, %4370
  %4372 = fmul fast float %4371, %4366
  %4373 = fcmp fast ogt float %45, 0.000000e+00
  %4374 = fcmp fast ogt float %46, 0.000000e+00
  %4375 = fcmp fast ogt float %47, 0.000000e+00
  %4376 = fcmp fast olt float %45, 0.000000e+00
  %4377 = fcmp fast olt float %46, 0.000000e+00
  %4378 = fcmp fast olt float %47, 0.000000e+00
  %4379 = zext i1 %4373 to i32
  %4380 = zext i1 %4374 to i32
  %4381 = zext i1 %4375 to i32
  %4382 = zext i1 %4376 to i32
  %4383 = zext i1 %4377 to i32
  %4384 = zext i1 %4378 to i32
  %4385 = sub nsw i32 %4379, %4382
  %4386 = sub nsw i32 %4380, %4383
  %4387 = sub nsw i32 %4381, %4384
  %4388 = call float @dx.op.unary.f32(i32 83, float %4354)  ; DerivCoarseX(value)
  %4389 = call float @dx.op.unary.f32(i32 83, float %4355)  ; DerivCoarseX(value)
  %4390 = call float @dx.op.unary.f32(i32 83, float %4356)  ; DerivCoarseX(value)
  %4391 = call float @dx.op.unary.f32(i32 84, float %4354)  ; DerivCoarseY(value)
  %4392 = call float @dx.op.unary.f32(i32 84, float %4355)  ; DerivCoarseY(value)
  %4393 = call float @dx.op.unary.f32(i32 84, float %4356)  ; DerivCoarseY(value)
  %4394 = fcmp fast ole float %228, %4372
  %4395 = fmul fast float %4371, %4369
  %4396 = fcmp fast ole float %228, %4395
  %4397 = select i1 %4396, float %4356, float %4354
  %4398 = select i1 %4396, float %4354, float %4355
  %4399 = select i1 %4394, float %4355, float %4397
  %4400 = select i1 %4394, float %4356, float %4398
  %4401 = select i1 %4396, float %4390, float %4388
  %4402 = select i1 %4396, float %4388, float %4389
  %4403 = select i1 %4394, float %4389, float %4401
  %4404 = select i1 %4394, float %4390, float %4402
  %4405 = select i1 %4396, float %4393, float %4391
  %4406 = select i1 %4396, float %4391, float %4392
  %4407 = select i1 %4394, float %4392, float %4405
  %4408 = select i1 %4394, float %4393, float %4406
  %4409 = call float @dx.op.unary.f32(i32 27, float %4399)  ; Round_ni(value)
  %4410 = call float @dx.op.unary.f32(i32 27, float %4400)  ; Round_ni(value)
  %4411 = fptosi float %4409 to i32
  %4412 = fptosi float %4410 to i32
  %4413 = xor i32 %4412, %4411
  %4414 = sitofp i32 %4413 to float
  %4415 = fptosi float %4414 to i32
  %4416 = sitofp i32 %4415 to float
  %4417 = fmul fast float %4416, 0x3FE3C6EF40000000
  %4418 = frem fast float %4409, 2.560000e+02
  %4419 = frem fast float %4410, 2.560000e+02
  %4420 = fptoui float %4418 to i32
  %4421 = fptoui float %4419 to i32
  %4422 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4420, i32 %4421, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.ResRet.f32 %4422, 2
  %4426 = fadd fast float %4423, %4417
  %4427 = fadd fast float %4424, %4417
  %4428 = fadd fast float %4425, %4417
  %4429 = call float @dx.op.unary.f32(i32 22, float %4426)  ; Frc(value)
  %4430 = call float @dx.op.unary.f32(i32 22, float %4427)  ; Frc(value)
  %4431 = call float @dx.op.unary.f32(i32 22, float %4428)  ; Frc(value)
  %4432 = fmul fast float %4431, 0x401921FB60000000
  %4433 = call float @dx.op.unary.f32(i32 13, float %4432)  ; Sin(value)
  %4434 = call float @dx.op.unary.f32(i32 12, float %4432)  ; Cos(value)
  %4435 = fsub fast float -0.000000e+00, %4434
  %4436 = fmul fast float %4434, %4399
  %4437 = call float @dx.op.tertiary.f32(i32 46, float %4433, float %4400, float %4436)  ; FMad(a,b,c)
  %4438 = fmul fast float %4433, %4399
  %4439 = call float @dx.op.tertiary.f32(i32 46, float %4435, float %4400, float %4438)  ; FMad(a,b,c)
  %4440 = fadd fast float %4437, %4429
  %4441 = fadd fast float %4439, %4430
  %4442 = extractvalue %dx.types.CBufRet.f32 %4352, 3
  %4443 = bitcast float %4442 to i32
  %4444 = icmp eq i32 %4443, 0
  br i1 %4444, label %4483, label %4445

; <label>:4445                                    ; preds = %4348
  %4446 = add i32 %4443, 0
  %4447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4448 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4447, %dx.types.Handle %75, float %4440, float %4441, float undef, float undef, i32 0, i32 0, i32 undef, float %4403, float %4404, float undef, float %4407, float %4408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 1
  %4452 = extractvalue %dx.types.CBufRet.f32 %4450, 2
  %4453 = fsub fast float 1.000000e+00, %4342
  %4454 = call float @dx.op.binary.f32(i32 35, float %4453, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4455 = bitcast float %4342 to i32
  %4456 = sitofp i32 %4455 to float
  %4457 = fadd fast float %4456, 0xC1CFBF8940000000
  %4458 = fmul fast float %4452, %4457
  %4459 = fadd fast float %4458, 0x41CFBF8940000000
  %4460 = fptosi float %4459 to i32
  %4461 = bitcast i32 %4460 to float
  %4462 = bitcast float %4454 to i32
  %4463 = sitofp i32 %4462 to float
  %4464 = fadd fast float %4463, 0xC1CFBF8940000000
  %4465 = fmul fast float %4464, %4452
  %4466 = fadd fast float %4465, 0x41CFBF8940000000
  %4467 = fptosi float %4466 to i32
  %4468 = bitcast i32 %4467 to float
  %4469 = fmul fast float %4461, %4451
  %4470 = fmul fast float %4468, %4451
  %4471 = fsub fast float %4454, %4469
  %4472 = fadd fast float %4470, %4454
  %4473 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4475 = fsub fast float %4449, %4473
  %4476 = fsub fast float %4474, %4473
  %4477 = bitcast float %4476 to i32
  %4478 = sub nsw i32 2129859010, %4477
  %4479 = bitcast i32 %4478 to float
  %4480 = fmul fast float %4479, %4475
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fcmp fast olt float %4481, 0x3F70101020000000
  br i1 %4482, label %4621, label %4483

; <label>:4483                                    ; preds = %4445, %4348
  %4484 = phi float [ %4481, %4445 ], [ %4342, %4348 ]
  %4485 = fmul fast float %4484, %4351
  %4486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.i32 %4486, 1
  %4488 = extractvalue %dx.types.CBufRet.i32 %4486, 0
  %4489 = add i32 %4488, 0
  %4490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4491 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4490, %dx.types.Handle %74, float %4440, float %4441, float undef, float undef, i32 0, i32 0, i32 undef, float %4403, float %4404, float undef, float %4407, float %4408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.ResRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.ResRet.f32 %4491, 2
  %4495 = extractvalue %dx.types.ResRet.f32 %4491, 3
  %4496 = and i32 %4487, 255
  %4497 = uitofp i32 %4496 to float
  %4498 = lshr i32 %4487, 8
  %4499 = and i32 %4498, 255
  %4500 = uitofp i32 %4499 to float
  %4501 = fmul fast float %4495, %4497
  %4502 = fadd fast float %4501, %4500
  %4503 = fmul fast float %4502, 0x3F70101000000000
  %4504 = fadd fast float %4503, 0xBFB99999A0000000
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = fmul fast float %4505, 0x3FF1C71C80000000
  %4507 = call float @dx.op.binary.f32(i32 36, float %4503, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4508 = fsub fast float 1.000000e+00, %4506
  %4509 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4510 = fmul fast float %4509, %4492
  %4511 = fmul fast float %4509, %4493
  %4512 = fmul fast float %4509, %4494
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = fmul fast float %4506, %4492
  %4517 = fmul fast float %4506, %4493
  %4518 = fmul fast float %4506, %4494
  %4519 = fadd fast float %4516, %4507
  %4520 = fadd fast float %4517, %4507
  %4521 = fadd fast float %4518, %4507
  %4522 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4523 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4524 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.i32 %4525, 3
  %4527 = extractvalue %dx.types.CBufRet.i32 %4525, 2
  %4528 = add i32 %4527, 0
  %4529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4530 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4529, %dx.types.Handle %74, float %4440, float %4441, float undef, float undef, i32 0, i32 0, i32 undef, float %4403, float %4404, float undef, float %4407, float %4408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = extractvalue %dx.types.ResRet.f32 %4530, 1
  %4533 = extractvalue %dx.types.ResRet.f32 %4530, 2
  %4534 = extractvalue %dx.types.ResRet.f32 %4530, 3
  %4535 = and i32 %4526, 255
  %4536 = uitofp i32 %4535 to float
  %4537 = lshr i32 %4526, 8
  %4538 = and i32 %4537, 255
  %4539 = uitofp i32 %4538 to float
  %4540 = lshr i32 %4526, 16
  %4541 = and i32 %4540, 255
  %4542 = uitofp i32 %4541 to float
  %4543 = fmul fast float %4542, 0x3F70101000000000
  %4544 = fmul fast float %4531, %4536
  %4545 = fadd fast float %4544, %4539
  %4546 = fmul fast float %4545, 0x3F70101000000000
  %4547 = fadd fast float %4532, -5.000000e-01
  %4548 = fadd fast float %4534, -5.000000e-01
  %4549 = fmul fast float %4547, %4543
  %4550 = fmul fast float %4548, %4543
  %4551 = fadd fast float %4549, 5.000000e-01
  %4552 = fadd fast float %4550, 5.000000e-01
  %4553 = fmul fast float %4551, 2.000000e+00
  %4554 = fadd fast float %4553, -1.000000e+00
  %4555 = fmul fast float %4552, 2.000000e+00
  %4556 = fadd fast float %4555, -1.000000e+00
  %4557 = fadd fast float %4554, %4556
  %4558 = fmul fast float %4557, 5.000000e-01
  %4559 = fsub fast float %4554, %4556
  %4560 = fmul fast float %4559, 5.000000e-01
  %4561 = call float @dx.op.unary.f32(i32 6, float %4558)  ; FAbs(value)
  %4562 = fsub fast float 1.000000e+00, %4561
  %4563 = call float @dx.op.unary.f32(i32 6, float %4560)  ; FAbs(value)
  %4564 = fsub fast float %4562, %4563
  %4565 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4560, float %4564, float %4558, float %4560, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4566 = call float @dx.op.unary.f32(i32 25, float %4565)  ; Rsqrt(value)
  %4567 = fmul fast float %4558, %4566
  %4568 = fmul fast float %4560, %4566
  %4569 = select i1 %4396, i32 %4386, i32 %4387
  %4570 = select i1 %4394, i32 %4385, i32 %4569
  %4571 = sitofp i32 %4570 to float
  %4572 = fmul fast float %4564, %4571
  %4573 = fmul fast float %4572, %4566
  %4574 = select i1 %4396, float %4573, float %4568
  %4575 = select i1 %4396, float %4568, float %4573
  %4576 = select i1 %4394, float %4573, float %4567
  %4577 = select i1 %4394, float %4568, float %4574
  %4578 = select i1 %4394, float %4567, float %4575
  %4579 = fsub fast float %4513, %3946
  %4580 = fsub fast float %4514, %3947
  %4581 = fsub fast float %4515, %3948
  %4582 = fmul fast float %4579, %4485
  %4583 = fmul fast float %4580, %4485
  %4584 = fmul fast float %4581, %4485
  %4585 = fadd fast float %4582, %3946
  %4586 = fadd fast float %4583, %3947
  %4587 = fadd fast float %4584, %3948
  %4588 = fsub fast float %4522, %3931
  %4589 = fsub fast float %4523, %3932
  %4590 = fsub fast float %4524, %3933
  %4591 = fmul fast float %4588, %4485
  %4592 = fmul fast float %4589, %4485
  %4593 = fmul fast float %4590, %4485
  %4594 = fadd fast float %4591, %3931
  %4595 = fadd fast float %4592, %3932
  %4596 = fadd fast float %4593, %3933
  %4597 = fadd fast float %4576, %3895
  %4598 = fadd fast float %4577, %3896
  %4599 = fadd fast float %4578, %3897
  %4600 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %4597, float %4598, float %4599)  ; Dot3(ax,ay,az,bx,by,bz)
  %4601 = call float @dx.op.unary.f32(i32 25, float %4600)  ; Rsqrt(value)
  %4602 = fmul fast float %4597, %4601
  %4603 = fmul fast float %4598, %4601
  %4604 = fmul fast float %4599, %4601
  %4605 = fsub fast float %4602, %3895
  %4606 = fsub fast float %4603, %3896
  %4607 = fsub fast float %4604, %3897
  %4608 = fmul fast float %4605, %4485
  %4609 = fmul fast float %4606, %4485
  %4610 = fmul fast float %4607, %4485
  %4611 = fadd fast float %4608, %3895
  %4612 = fadd fast float %4609, %3896
  %4613 = fadd fast float %4610, %3897
  %4614 = call float @dx.op.binary.f32(i32 36, float %3907, float %4533)  ; FMin(a,b)
  %4615 = fsub fast float %4614, %3907
  %4616 = fmul fast float %4615, %4485
  %4617 = fadd fast float %4616, %3907
  %4618 = fsub fast float %4546, %3934
  %4619 = fmul fast float %4618, %4485
  %4620 = fadd fast float %4619, %3934
  br label %4621

; <label>:4621                                    ; preds = %4483, %4445, %4347
  %4622 = phi float [ %4594, %4483 ], [ %3931, %4445 ], [ %3931, %4347 ]
  %4623 = phi float [ %4595, %4483 ], [ %3932, %4445 ], [ %3932, %4347 ]
  %4624 = phi float [ %4596, %4483 ], [ %3933, %4445 ], [ %3933, %4347 ]
  %4625 = phi float [ %4611, %4483 ], [ %3895, %4445 ], [ %3895, %4347 ]
  %4626 = phi float [ %4612, %4483 ], [ %3896, %4445 ], [ %3896, %4347 ]
  %4627 = phi float [ %4613, %4483 ], [ %3897, %4445 ], [ %3897, %4347 ]
  %4628 = phi float [ %4585, %4483 ], [ %3946, %4445 ], [ %3946, %4347 ]
  %4629 = phi float [ %4586, %4483 ], [ %3947, %4445 ], [ %3947, %4347 ]
  %4630 = phi float [ %4587, %4483 ], [ %3948, %4445 ], [ %3948, %4347 ]
  %4631 = phi float [ %4620, %4483 ], [ %3934, %4445 ], [ %3934, %4347 ]
  %4632 = phi float [ %4617, %4483 ], [ %3907, %4445 ], [ %3907, %4347 ]
  br i1 %4345, label %4633, label %4906

; <label>:4633                                    ; preds = %4621
  %4634 = call float @dx.op.unary.f32(i32 23, float %4632)  ; Log(value)
  %4635 = fmul fast float %4634, 4.000000e+00
  %4636 = call float @dx.op.unary.f32(i32 21, float %4635)  ; Exp(value)
  %4637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4638 = extractvalue %dx.types.CBufRet.f32 %4637, 0
  %4639 = fmul fast float %4638, %36
  %4640 = fmul fast float %4638, %37
  %4641 = fmul fast float %4638, %38
  %4642 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4643 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4644 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4645 = call float @dx.op.unary.f32(i32 23, float %4642)  ; Log(value)
  %4646 = call float @dx.op.unary.f32(i32 23, float %4643)  ; Log(value)
  %4647 = call float @dx.op.unary.f32(i32 23, float %4644)  ; Log(value)
  %4648 = fmul fast float %4645, 4.000000e+00
  %4649 = fmul fast float %4646, 4.000000e+00
  %4650 = fmul fast float %4647, 4.000000e+00
  %4651 = call float @dx.op.unary.f32(i32 21, float %4648)  ; Exp(value)
  %4652 = call float @dx.op.unary.f32(i32 21, float %4649)  ; Exp(value)
  %4653 = call float @dx.op.unary.f32(i32 21, float %4650)  ; Exp(value)
  %4654 = fadd fast float %4652, %4651
  %4655 = fadd fast float %4654, %4653
  %4656 = fdiv fast float 1.000000e+00, %4655
  %4657 = fmul fast float %4656, %4651
  %4658 = fcmp fast ogt float %45, 0.000000e+00
  %4659 = fcmp fast ogt float %46, 0.000000e+00
  %4660 = fcmp fast ogt float %47, 0.000000e+00
  %4661 = fcmp fast olt float %45, 0.000000e+00
  %4662 = fcmp fast olt float %46, 0.000000e+00
  %4663 = fcmp fast olt float %47, 0.000000e+00
  %4664 = zext i1 %4658 to i32
  %4665 = zext i1 %4659 to i32
  %4666 = zext i1 %4660 to i32
  %4667 = zext i1 %4661 to i32
  %4668 = zext i1 %4662 to i32
  %4669 = zext i1 %4663 to i32
  %4670 = sub nsw i32 %4664, %4667
  %4671 = sub nsw i32 %4665, %4668
  %4672 = sub nsw i32 %4666, %4669
  %4673 = call float @dx.op.unary.f32(i32 83, float %4639)  ; DerivCoarseX(value)
  %4674 = call float @dx.op.unary.f32(i32 83, float %4640)  ; DerivCoarseX(value)
  %4675 = call float @dx.op.unary.f32(i32 83, float %4641)  ; DerivCoarseX(value)
  %4676 = call float @dx.op.unary.f32(i32 84, float %4639)  ; DerivCoarseY(value)
  %4677 = call float @dx.op.unary.f32(i32 84, float %4640)  ; DerivCoarseY(value)
  %4678 = call float @dx.op.unary.f32(i32 84, float %4641)  ; DerivCoarseY(value)
  %4679 = fcmp fast ole float %228, %4657
  %4680 = fmul fast float %4656, %4654
  %4681 = fcmp fast ole float %228, %4680
  %4682 = select i1 %4681, float %4641, float %4639
  %4683 = select i1 %4681, float %4639, float %4640
  %4684 = select i1 %4679, float %4640, float %4682
  %4685 = select i1 %4679, float %4641, float %4683
  %4686 = select i1 %4681, float %4675, float %4673
  %4687 = select i1 %4681, float %4673, float %4674
  %4688 = select i1 %4679, float %4674, float %4686
  %4689 = select i1 %4679, float %4675, float %4687
  %4690 = select i1 %4681, float %4678, float %4676
  %4691 = select i1 %4681, float %4676, float %4677
  %4692 = select i1 %4679, float %4677, float %4690
  %4693 = select i1 %4679, float %4678, float %4691
  %4694 = call float @dx.op.unary.f32(i32 27, float %4684)  ; Round_ni(value)
  %4695 = call float @dx.op.unary.f32(i32 27, float %4685)  ; Round_ni(value)
  %4696 = fptosi float %4694 to i32
  %4697 = fptosi float %4695 to i32
  %4698 = xor i32 %4697, %4696
  %4699 = sitofp i32 %4698 to float
  %4700 = fptosi float %4699 to i32
  %4701 = sitofp i32 %4700 to float
  %4702 = fmul fast float %4701, 0x3FE3C6EF40000000
  %4703 = frem fast float %4694, 2.560000e+02
  %4704 = frem fast float %4695, 2.560000e+02
  %4705 = fptoui float %4703 to i32
  %4706 = fptoui float %4704 to i32
  %4707 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4705, i32 %4706, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.f32 %4707, 1
  %4710 = extractvalue %dx.types.ResRet.f32 %4707, 2
  %4711 = fadd fast float %4708, %4702
  %4712 = fadd fast float %4709, %4702
  %4713 = fadd fast float %4710, %4702
  %4714 = call float @dx.op.unary.f32(i32 22, float %4711)  ; Frc(value)
  %4715 = call float @dx.op.unary.f32(i32 22, float %4712)  ; Frc(value)
  %4716 = call float @dx.op.unary.f32(i32 22, float %4713)  ; Frc(value)
  %4717 = fmul fast float %4716, 0x401921FB60000000
  %4718 = call float @dx.op.unary.f32(i32 13, float %4717)  ; Sin(value)
  %4719 = call float @dx.op.unary.f32(i32 12, float %4717)  ; Cos(value)
  %4720 = fsub fast float -0.000000e+00, %4719
  %4721 = fmul fast float %4719, %4684
  %4722 = call float @dx.op.tertiary.f32(i32 46, float %4718, float %4685, float %4721)  ; FMad(a,b,c)
  %4723 = fmul fast float %4718, %4684
  %4724 = call float @dx.op.tertiary.f32(i32 46, float %4720, float %4685, float %4723)  ; FMad(a,b,c)
  %4725 = fadd fast float %4722, %4714
  %4726 = fadd fast float %4724, %4715
  %4727 = extractvalue %dx.types.CBufRet.f32 %4637, 3
  %4728 = bitcast float %4727 to i32
  %4729 = icmp eq i32 %4728, 0
  br i1 %4729, label %4768, label %4730

; <label>:4730                                    ; preds = %4633
  %4731 = add i32 %4728, 0
  %4732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4733 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4732, %dx.types.Handle %75, float %4725, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4689, float undef, float %4692, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4737 = extractvalue %dx.types.CBufRet.f32 %4735, 2
  %4738 = fsub fast float 1.000000e+00, %4343
  %4739 = call float @dx.op.binary.f32(i32 35, float %4738, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4740 = bitcast float %4343 to i32
  %4741 = sitofp i32 %4740 to float
  %4742 = fadd fast float %4741, 0xC1CFBF8940000000
  %4743 = fmul fast float %4737, %4742
  %4744 = fadd fast float %4743, 0x41CFBF8940000000
  %4745 = fptosi float %4744 to i32
  %4746 = bitcast i32 %4745 to float
  %4747 = bitcast float %4739 to i32
  %4748 = sitofp i32 %4747 to float
  %4749 = fadd fast float %4748, 0xC1CFBF8940000000
  %4750 = fmul fast float %4749, %4737
  %4751 = fadd fast float %4750, 0x41CFBF8940000000
  %4752 = fptosi float %4751 to i32
  %4753 = bitcast i32 %4752 to float
  %4754 = fmul fast float %4746, %4736
  %4755 = fmul fast float %4753, %4736
  %4756 = fsub fast float %4739, %4754
  %4757 = fadd fast float %4755, %4739
  %4758 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4759 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4760 = fsub fast float %4734, %4758
  %4761 = fsub fast float %4759, %4758
  %4762 = bitcast float %4761 to i32
  %4763 = sub nsw i32 2129859010, %4762
  %4764 = bitcast i32 %4763 to float
  %4765 = fmul fast float %4764, %4760
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4767 = fcmp fast olt float %4766, 0x3F70101020000000
  br i1 %4767, label %4906, label %4768

; <label>:4768                                    ; preds = %4730, %4633
  %4769 = phi float [ %4766, %4730 ], [ %4343, %4633 ]
  %4770 = fmul fast float %4769, %4636
  %4771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.i32 %4771, 1
  %4773 = extractvalue %dx.types.CBufRet.i32 %4771, 0
  %4774 = add i32 %4773, 0
  %4775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4776 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4775, %dx.types.Handle %74, float %4725, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4689, float undef, float %4692, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.ResRet.f32 %4776, 1
  %4779 = extractvalue %dx.types.ResRet.f32 %4776, 2
  %4780 = extractvalue %dx.types.ResRet.f32 %4776, 3
  %4781 = and i32 %4772, 255
  %4782 = uitofp i32 %4781 to float
  %4783 = lshr i32 %4772, 8
  %4784 = and i32 %4783, 255
  %4785 = uitofp i32 %4784 to float
  %4786 = fmul fast float %4780, %4782
  %4787 = fadd fast float %4786, %4785
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = fadd fast float %4788, 0xBFB99999A0000000
  %4790 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4791 = fmul fast float %4790, 0x3FF1C71C80000000
  %4792 = call float @dx.op.binary.f32(i32 36, float %4788, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4793 = fsub fast float 1.000000e+00, %4791
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = fmul fast float %4794, %4777
  %4796 = fmul fast float %4794, %4778
  %4797 = fmul fast float %4794, %4779
  %4798 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4801 = fmul fast float %4791, %4777
  %4802 = fmul fast float %4791, %4778
  %4803 = fmul fast float %4791, %4779
  %4804 = fadd fast float %4801, %4792
  %4805 = fadd fast float %4802, %4792
  %4806 = fadd fast float %4803, %4792
  %4807 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.i32 %4810, 3
  %4812 = extractvalue %dx.types.CBufRet.i32 %4810, 2
  %4813 = add i32 %4812, 0
  %4814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4814, %dx.types.Handle %74, float %4725, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4689, float undef, float %4692, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.ResRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.ResRet.f32 %4815, 2
  %4819 = extractvalue %dx.types.ResRet.f32 %4815, 3
  %4820 = and i32 %4811, 255
  %4821 = uitofp i32 %4820 to float
  %4822 = lshr i32 %4811, 8
  %4823 = and i32 %4822, 255
  %4824 = uitofp i32 %4823 to float
  %4825 = lshr i32 %4811, 16
  %4826 = and i32 %4825, 255
  %4827 = uitofp i32 %4826 to float
  %4828 = fmul fast float %4827, 0x3F70101000000000
  %4829 = fmul fast float %4816, %4821
  %4830 = fadd fast float %4829, %4824
  %4831 = fmul fast float %4830, 0x3F70101000000000
  %4832 = fadd fast float %4817, -5.000000e-01
  %4833 = fadd fast float %4819, -5.000000e-01
  %4834 = fmul fast float %4832, %4828
  %4835 = fmul fast float %4833, %4828
  %4836 = fadd fast float %4834, 5.000000e-01
  %4837 = fadd fast float %4835, 5.000000e-01
  %4838 = fmul fast float %4836, 2.000000e+00
  %4839 = fadd fast float %4838, -1.000000e+00
  %4840 = fmul fast float %4837, 2.000000e+00
  %4841 = fadd fast float %4840, -1.000000e+00
  %4842 = fadd fast float %4839, %4841
  %4843 = fmul fast float %4842, 5.000000e-01
  %4844 = fsub fast float %4839, %4841
  %4845 = fmul fast float %4844, 5.000000e-01
  %4846 = call float @dx.op.unary.f32(i32 6, float %4843)  ; FAbs(value)
  %4847 = fsub fast float 1.000000e+00, %4846
  %4848 = call float @dx.op.unary.f32(i32 6, float %4845)  ; FAbs(value)
  %4849 = fsub fast float %4847, %4848
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4843, float %4845, float %4849, float %4843, float %4845, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = call float @dx.op.unary.f32(i32 25, float %4850)  ; Rsqrt(value)
  %4852 = fmul fast float %4843, %4851
  %4853 = fmul fast float %4845, %4851
  %4854 = select i1 %4681, i32 %4671, i32 %4672
  %4855 = select i1 %4679, i32 %4670, i32 %4854
  %4856 = sitofp i32 %4855 to float
  %4857 = fmul fast float %4849, %4856
  %4858 = fmul fast float %4857, %4851
  %4859 = select i1 %4681, float %4858, float %4853
  %4860 = select i1 %4681, float %4853, float %4858
  %4861 = select i1 %4679, float %4858, float %4852
  %4862 = select i1 %4679, float %4853, float %4859
  %4863 = select i1 %4679, float %4852, float %4860
  %4864 = fsub fast float %4798, %4628
  %4865 = fsub fast float %4799, %4629
  %4866 = fsub fast float %4800, %4630
  %4867 = fmul fast float %4864, %4770
  %4868 = fmul fast float %4865, %4770
  %4869 = fmul fast float %4866, %4770
  %4870 = fadd fast float %4867, %4628
  %4871 = fadd fast float %4868, %4629
  %4872 = fadd fast float %4869, %4630
  %4873 = fsub fast float %4807, %4622
  %4874 = fsub fast float %4808, %4623
  %4875 = fsub fast float %4809, %4624
  %4876 = fmul fast float %4873, %4770
  %4877 = fmul fast float %4874, %4770
  %4878 = fmul fast float %4875, %4770
  %4879 = fadd fast float %4876, %4622
  %4880 = fadd fast float %4877, %4623
  %4881 = fadd fast float %4878, %4624
  %4882 = fadd fast float %4861, %4625
  %4883 = fadd fast float %4862, %4626
  %4884 = fadd fast float %4863, %4627
  %4885 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %4884, float %4882, float %4883, float %4884)  ; Dot3(ax,ay,az,bx,by,bz)
  %4886 = call float @dx.op.unary.f32(i32 25, float %4885)  ; Rsqrt(value)
  %4887 = fmul fast float %4882, %4886
  %4888 = fmul fast float %4883, %4886
  %4889 = fmul fast float %4884, %4886
  %4890 = fsub fast float %4887, %4625
  %4891 = fsub fast float %4888, %4626
  %4892 = fsub fast float %4889, %4627
  %4893 = fmul fast float %4890, %4770
  %4894 = fmul fast float %4891, %4770
  %4895 = fmul fast float %4892, %4770
  %4896 = fadd fast float %4893, %4625
  %4897 = fadd fast float %4894, %4626
  %4898 = fadd fast float %4895, %4627
  %4899 = call float @dx.op.binary.f32(i32 36, float %4632, float %4818)  ; FMin(a,b)
  %4900 = fsub fast float %4899, %4632
  %4901 = fmul fast float %4900, %4770
  %4902 = fadd fast float %4901, %4632
  %4903 = fsub fast float %4831, %4631
  %4904 = fmul fast float %4903, %4770
  %4905 = fadd fast float %4904, %4631
  br label %4906

; <label>:4906                                    ; preds = %4768, %4730, %4621, %4337
  %4907 = phi float [ %4879, %4768 ], [ %4622, %4730 ], [ %4622, %4621 ], [ %3931, %4337 ]
  %4908 = phi float [ %4880, %4768 ], [ %4623, %4730 ], [ %4623, %4621 ], [ %3932, %4337 ]
  %4909 = phi float [ %4881, %4768 ], [ %4624, %4730 ], [ %4624, %4621 ], [ %3933, %4337 ]
  %4910 = phi float [ %4896, %4768 ], [ %4625, %4730 ], [ %4625, %4621 ], [ %3895, %4337 ]
  %4911 = phi float [ %4897, %4768 ], [ %4626, %4730 ], [ %4626, %4621 ], [ %3896, %4337 ]
  %4912 = phi float [ %4898, %4768 ], [ %4627, %4730 ], [ %4627, %4621 ], [ %3897, %4337 ]
  %4913 = phi float [ %4870, %4768 ], [ %4628, %4730 ], [ %4628, %4621 ], [ %3946, %4337 ]
  %4914 = phi float [ %4871, %4768 ], [ %4629, %4730 ], [ %4629, %4621 ], [ %3947, %4337 ]
  %4915 = phi float [ %4872, %4768 ], [ %4630, %4730 ], [ %4630, %4621 ], [ %3948, %4337 ]
  %4916 = phi float [ %4905, %4768 ], [ %4631, %4730 ], [ %4631, %4621 ], [ %3934, %4337 ]
  %4917 = phi float [ %4902, %4768 ], [ %4632, %4730 ], [ %4632, %4621 ], [ %3907, %4337 ]
  %4918 = fcmp fast une float %4341, 0.000000e+00
  %4919 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.unary.f32(i32 25, float %4919)  ; Rsqrt(value)
  br i1 %4918, label %4928, label %4921

; <label>:4921                                    ; preds = %4906
  %4922 = fmul fast float %4920, %165
  %4923 = fmul fast float %4920, %166
  %4924 = fmul fast float %4920, %167
  %4925 = fsub fast float -0.000000e+00, %4922
  %4926 = fsub fast float -0.000000e+00, %4923
  %4927 = fsub fast float -0.000000e+00, %4924
  br label %5095

; <label>:4928                                    ; preds = %4906
  %4929 = fmul fast float %165, %4920
  %4930 = fsub fast float -0.000000e+00, %4929
  %4931 = fmul fast float %166, %4920
  %4932 = fsub fast float -0.000000e+00, %4931
  %4933 = fmul fast float %167, %4920
  %4934 = fsub fast float -0.000000e+00, %4933
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4932, float %4934, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = fmul fast float %4341, 2.500000e+00
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = fmul fast float %4341, 0x4013FFFFE0000000
  %4939 = fadd fast float %4938, 0xBFFFFFFFE0000000
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fmul fast float %4341, 0x4004000020000000
  %4942 = fadd fast float %4941, 0xBFF8000040000000
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %3913, 1.000000e+01
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fmul fast float %4945, 2.000000e+00
  %4947 = fsub fast float 3.000000e+00, %4946
  %4948 = fmul fast float %4945, %4945
  %4949 = fmul fast float %4948, %4947
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = fsub fast float 0x3FE3333340000000, %4916
  %4952 = fmul fast float %4951, 0x400AAAAAA0000000
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = fmul fast float %4950, %4953
  %4955 = fmul fast float %4913, 0x3FEA2B8620000000
  %4956 = fmul fast float %4914, 0x3FEA2B8620000000
  %4957 = fmul fast float %4915, 0x3FEA2B8620000000
  %4958 = fadd fast float %4955, 0x3FC81DFBA0000000
  %4959 = fmul fast float %4958, %4913
  %4960 = fadd fast float %4959, 0x3F910E6020000000
  %4961 = fadd fast float %4956, 0x3FC81DFBA0000000
  %4962 = fmul fast float %4961, %4914
  %4963 = fadd fast float %4962, 0x3F910E6020000000
  %4964 = fadd fast float %4957, 0x3FC81DFBA0000000
  %4965 = fmul fast float %4964, %4915
  %4966 = fadd fast float %4965, 0x3F910E6020000000
  %4967 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4968 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4970 = fsub fast float %4967, %4913
  %4971 = fsub fast float %4968, %4914
  %4972 = fsub fast float %4969, %4915
  %4973 = fmul fast float %4970, %4937
  %4974 = fmul fast float %4973, %4954
  %4975 = fmul fast float %4971, %4937
  %4976 = fmul fast float %4975, %4954
  %4977 = fmul fast float %4972, %4937
  %4978 = fmul fast float %4977, %4954
  %4979 = fadd fast float %4974, %4913
  %4980 = fadd fast float %4976, %4914
  %4981 = fadd fast float %4978, %4915
  %4982 = fmul fast float %4917, %4917
  %4983 = fmul fast float %4982, %4982
  %4984 = fadd fast float %4940, 1.000000e+00
  %4985 = fsub fast float %4984, %4954
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fsub fast float 1.000000e+00, %4983
  %4990 = call float @dx.op.binary.f32(i32 36, float %4986, float %4989)  ; FMin(a,b)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4992 = call float @dx.op.binary.f32(i32 35, float %4990, float %4991)  ; FMax(a,b)
  %4993 = fadd fast float %4988, 0xBFE4CCCCC0000000
  %4994 = fmul fast float %4993, 0x4006DB6DA0000000
  %4995 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4996 = fmul fast float %4995, 2.000000e+00
  %4997 = fsub fast float 3.000000e+00, %4996
  %4998 = bitcast float %4907 to i32
  %4999 = ashr i32 %4998, 1
  %5000 = add nsw i32 %4999, 532487669
  %5001 = bitcast i32 %5000 to float
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = bitcast float %5002 to i32
  %5004 = sub nsw i32 2129859010, %5003
  %5005 = bitcast i32 %5004 to float
  %5006 = fmul fast float %5005, 2.000000e+00
  %5007 = bitcast float %4908 to i32
  %5008 = ashr i32 %5007, 1
  %5009 = add nsw i32 %5008, 532487669
  %5010 = bitcast i32 %5009 to float
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %5014, 2.000000e+00
  %5016 = bitcast float %4909 to i32
  %5017 = ashr i32 %5016, 1
  %5018 = add nsw i32 %5017, 532487669
  %5019 = bitcast i32 %5018 to float
  %5020 = fsub fast float 1.000000e+00, %5019
  %5021 = bitcast float %5020 to i32
  %5022 = sub nsw i32 2129859010, %5021
  %5023 = bitcast i32 %5022 to float
  %5024 = fmul fast float %5023, 2.000000e+00
  %5025 = fsub fast float 0x4002A9FBE0000000, %5006
  %5026 = fadd fast float %5006, 0x3FD54FDF00000000
  %5027 = bitcast float %5026 to i32
  %5028 = sub nsw i32 2129859010, %5027
  %5029 = bitcast i32 %5028 to float
  %5030 = fmul fast float %5029, %5025
  %5031 = fmul fast float %5030, %5030
  %5032 = fsub fast float 0x4002A9FBE0000000, %5015
  %5033 = fadd fast float %5015, 0x3FD54FDF00000000
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = fmul fast float %5036, %5032
  %5038 = fmul fast float %5037, %5037
  %5039 = fsub fast float 0x4002A9FBE0000000, %5024
  %5040 = fadd fast float %5024, 0x3FD54FDF00000000
  %5041 = bitcast float %5040 to i32
  %5042 = sub nsw i32 2129859010, %5041
  %5043 = bitcast i32 %5042 to float
  %5044 = fmul fast float %5043, %5039
  %5045 = fmul fast float %5044, %5044
  %5046 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5031)  ; FMax(a,b)
  %5047 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5038)  ; FMax(a,b)
  %5048 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5045)  ; FMax(a,b)
  %5049 = fsub fast float 1.000000e+00, %4935
  %5050 = fadd fast float %5049, %4950
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = fsub fast float 1.000000e+00, %4322
  %5053 = fmul fast float %4992, %5052
  %5054 = fmul fast float %4995, %4995
  %5055 = fmul fast float %5054, %5053
  %5056 = fmul fast float %5055, %4997
  %5057 = fmul fast float %5052, 0xBFE99999A0000000
  %5058 = fmul fast float %5057, %4937
  %5059 = fmul fast float %5058, %4954
  %5060 = fadd fast float %5059, 1.000000e+00
  %5061 = fadd fast float %4916, -1.000000e+00
  %5062 = fmul fast float %5060, %5061
  %5063 = fadd fast float %5062, 1.000000e+00
  %5064 = fsub fast float %5046, %4907
  %5065 = fsub fast float %5047, %4908
  %5066 = fsub fast float %5048, %4909
  %5067 = fmul fast float %5056, %5064
  %5068 = fmul fast float %5056, %5065
  %5069 = fmul fast float %5056, %5066
  %5070 = fadd fast float %5067, %4907
  %5071 = fadd fast float %5068, %4908
  %5072 = fadd fast float %5069, %4909
  %5073 = fsub fast float %85, %4910
  %5074 = fsub fast float %86, %4911
  %5075 = fsub fast float %87, %4912
  %5076 = fmul fast float %5056, %5073
  %5077 = fmul fast float %5056, %5074
  %5078 = fmul fast float %5056, %5075
  %5079 = fadd fast float %5076, %4910
  %5080 = fadd fast float %5077, %4911
  %5081 = fadd fast float %5078, %4912
  %5082 = fmul fast float %5056, %5051
  %5083 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5084 = fsub fast float 1.000000e+00, %5083
  %5085 = fmul fast float %5082, %5084
  %5086 = fadd fast float %5085, %5083
  %5087 = fsub fast float 1.000000e+00, %4917
  %5088 = fmul fast float %5056, %5087
  %5089 = fadd fast float %5088, %4917
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5079, float %5080, float %5081, float %5079, float %5080, float %5081)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = call float @dx.op.unary.f32(i32 25, float %5090)  ; Rsqrt(value)
  %5092 = fmul fast float %5079, %5091
  %5093 = fmul fast float %5080, %5091
  %5094 = fmul fast float %5081, %5091
  br label %5095

; <label>:5095                                    ; preds = %4928, %4921
  %5096 = phi float [ %4927, %4921 ], [ %4934, %4928 ]
  %5097 = phi float [ %4926, %4921 ], [ %4932, %4928 ]
  %5098 = phi float [ %4925, %4921 ], [ %4930, %4928 ]
  %5099 = phi float [ %4924, %4921 ], [ %4933, %4928 ]
  %5100 = phi float [ %4923, %4921 ], [ %4931, %4928 ]
  %5101 = phi float [ %4922, %4921 ], [ %4929, %4928 ]
  %5102 = phi float [ %4907, %4921 ], [ %5070, %4928 ]
  %5103 = phi float [ %4908, %4921 ], [ %5071, %4928 ]
  %5104 = phi float [ %4909, %4921 ], [ %5072, %4928 ]
  %5105 = phi float [ %4910, %4921 ], [ %5092, %4928 ]
  %5106 = phi float [ %4911, %4921 ], [ %5093, %4928 ]
  %5107 = phi float [ %4912, %4921 ], [ %5094, %4928 ]
  %5108 = phi float [ %4913, %4921 ], [ %4979, %4928 ]
  %5109 = phi float [ %4914, %4921 ], [ %4980, %4928 ]
  %5110 = phi float [ %4915, %4921 ], [ %4981, %4928 ]
  %5111 = phi float [ %4916, %4921 ], [ %5086, %4928 ]
  %5112 = phi float [ %4917, %4921 ], [ %5089, %4928 ]
  %5113 = select i1 %217, float 0.000000e+00, float %5104
  %5114 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %5107, float %5098, float %5097, float %5096)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = call float @dx.op.dot3.f32(i32 55, float %5101, float %5100, float %5099, float %5105, float %5106, float %5107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5117 = fmul fast float %5116, 2.000000e+00
  %5118 = fmul fast float %5117, %5105
  %5119 = fmul fast float %5117, %5106
  %5120 = fmul fast float %5117, %5107
  %5121 = fsub fast float %5101, %5118
  %5122 = fsub fast float %5100, %5119
  %5123 = fsub fast float %5099, %5120
  %5124 = call float @dx.op.binary.f32(i32 36, float %5112, float 1.000000e+00)  ; FMin(a,b)
  %5125 = fsub fast float 1.000000e+00, %5112
  %5126 = bitcast float %5125 to i32
  %5127 = sub nsw i32 2129859010, %5126
  %5128 = fsub fast float 1.000000e+00, %55
  %5129 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.binary.f32(i32 35, float %5129, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5131 = fdiv fast float %5128, %5130
  %5132 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %5107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fmul fast float %5133, 5.000000e-01
  %5135 = fadd fast float %5134, 5.000000e-01
  %5136 = fmul fast float %5135, %55
  %5137 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %5107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fmul fast float %5138, %5131
  %5140 = fadd fast float %5136, %5139
  %5141 = fsub fast float 5.000000e-01, %5134
  %5142 = fmul fast float %5141, %5108
  %5143 = fmul fast float %5141, %5109
  %5144 = fmul fast float %5141, %5110
  %5145 = fadd fast float %5140, %5142
  %5146 = fadd fast float %5140, %5143
  %5147 = fadd fast float %5140, %5144
  %5148 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5122, float %5123, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5150 = fmul fast float %5149, 5.000000e-01
  %5151 = fadd fast float %5150, 5.000000e-01
  %5152 = fmul fast float %5151, %55
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5122, float %5123, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5155 = fmul fast float %5154, %5131
  %5156 = fadd fast float %5152, %5155
  %5157 = fsub fast float 5.000000e-01, %5150
  %5158 = fmul fast float %5157, %5108
  %5159 = fmul fast float %5157, %5109
  %5160 = fmul fast float %5157, %5110
  %5161 = fadd fast float %5156, %5158
  %5162 = fadd fast float %5156, %5159
  %5163 = fadd fast float %5156, %5160
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 0
  %5166 = call float @dx.op.binary.f32(i32 36, float %5108, float %5165)  ; FMin(a,b)
  %5167 = fsub fast float 1.000000e+00, %5124
  %5168 = fmul fast float %5166, %5167
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = bitcast float %5169 to i32
  %5171 = sub nsw i32 2129859010, %5170
  %5172 = bitcast i32 %5171 to float
  %5173 = call float @dx.op.binary.f32(i32 36, float %5109, float %5165)  ; FMin(a,b)
  %5174 = fmul fast float %5173, %5167
  %5175 = fsub fast float 1.000000e+00, %5174
  %5176 = bitcast float %5175 to i32
  %5177 = sub nsw i32 2129859010, %5176
  %5178 = bitcast i32 %5177 to float
  %5179 = call float @dx.op.binary.f32(i32 36, float %5110, float %5165)  ; FMin(a,b)
  %5180 = fmul fast float %5179, %5167
  %5181 = fsub fast float 1.000000e+00, %5180
  %5182 = bitcast float %5181 to i32
  %5183 = sub nsw i32 2129859010, %5182
  %5184 = bitcast i32 %5183 to float
  %5185 = fmul fast float %5124, %56
  %5186 = fmul fast float %5185, %5145
  %5187 = fmul fast float %5186, %5172
  %5188 = fmul fast float %5124, %57
  %5189 = fmul fast float %5188, %5146
  %5190 = fmul fast float %5189, %5178
  %5191 = fmul fast float %5124, %58
  %5192 = fmul fast float %5191, %5147
  %5193 = fmul fast float %5192, %5184
  %5194 = call float @dx.op.binary.f32(i32 36, float %5102, float %5165)  ; FMin(a,b)
  %5195 = fmul fast float %5194, %5167
  %5196 = fsub fast float 1.000000e+00, %5195
  %5197 = bitcast float %5196 to i32
  %5198 = sub nsw i32 2129859010, %5197
  %5199 = bitcast i32 %5198 to float
  %5200 = call float @dx.op.binary.f32(i32 36, float %5103, float %5165)  ; FMin(a,b)
  %5201 = fmul fast float %5200, %5167
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = bitcast float %5202 to i32
  %5204 = sub nsw i32 2129859010, %5203
  %5205 = bitcast i32 %5204 to float
  %5206 = call float @dx.op.binary.f32(i32 36, float %5113, float %5165)  ; FMin(a,b)
  %5207 = fmul fast float %5206, %5167
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = bitcast float %5208 to i32
  %5210 = sub nsw i32 2129859010, %5209
  %5211 = bitcast i32 %5210 to float
  %5212 = fmul fast float %5185, %5161
  %5213 = fmul fast float %5212, %5199
  %5214 = fmul fast float %5188, %5162
  %5215 = fmul fast float %5214, %5205
  %5216 = fmul fast float %5191, %5163
  %5217 = fmul fast float %5216, %5211
  %5218 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5190, float %5193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5219 = select i1 %217, float 0.000000e+00, float %5187
  %5220 = select i1 %217, float %5218, float %5190
  %5221 = select i1 %217, float 0.000000e+00, float %5193
  %5222 = call float @dx.op.dot3.f32(i32 55, float %5213, float %5215, float %5217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = select i1 %217, float 0.000000e+00, float %5213
  %5224 = select i1 %217, float %5222, float %5215
  %5225 = select i1 %217, float 0.000000e+00, float %5217
  %5226 = fmul fast float %5115, 9.843750e-01
  %5227 = fmul fast float %5111, 9.843750e-01
  %5228 = fadd fast float %5226, 7.812500e-03
  %5229 = fadd fast float %5227, 7.812500e-03
  %5230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5228, float %5229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5231 = extractvalue %dx.types.ResRet.f32 %5230, 2
  %5232 = extractvalue %dx.types.ResRet.f32 %5230, 3
  %5233 = fmul fast float %5231, %5102
  %5234 = fmul fast float %5231, %5103
  %5235 = fmul fast float %5231, %5113
  %5236 = fadd fast float %5233, %5232
  %5237 = fadd fast float %5234, %5232
  %5238 = fadd fast float %5235, %5232
  %5239 = fcmp fast ogt float %3908, 0.000000e+00
  br i1 %5239, label %5240, label %5266

; <label>:5240                                    ; preds = %5095
  %5241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3908, float %5115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5245 = fadd fast float %5242, -5.000000e-01
  %5246 = fadd fast float %5243, -5.000000e-01
  %5247 = fadd fast float %5244, -5.000000e-01
  %5248 = fsub fast float 1.000000e+00, %5102
  %5249 = fsub fast float 1.000000e+00, %5103
  %5250 = fsub fast float 1.000000e+00, %5113
  %5251 = fmul fast float %5102, 4.000000e+00
  %5252 = fmul fast float %5251, %5248
  %5253 = fmul fast float %5252, %5245
  %5254 = fmul fast float %5103, 4.000000e+00
  %5255 = fmul fast float %5254, %5249
  %5256 = fmul fast float %5255, %5246
  %5257 = fmul fast float %5113, 4.000000e+00
  %5258 = fmul fast float %5257, %5250
  %5259 = fmul fast float %5258, %5247
  %5260 = fadd fast float %5253, %5236
  %5261 = fadd fast float %5256, %5237
  %5262 = fadd fast float %5259, %5238
  %5263 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5264 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  br label %5266

; <label>:5266                                    ; preds = %5240, %5095
  %5267 = phi float [ %5263, %5240 ], [ %5236, %5095 ]
  %5268 = phi float [ %5264, %5240 ], [ %5237, %5095 ]
  %5269 = phi float [ %5265, %5240 ], [ %5238, %5095 ]
  %5270 = call float @dx.op.binary.f32(i32 35, float %5268, float %5269)  ; FMax(a,b)
  %5271 = call float @dx.op.binary.f32(i32 35, float %5267, float %5270)  ; FMax(a,b)
  %5272 = fsub fast float 1.000000e+00, %5271
  %5273 = fmul fast float %5272, %5219
  %5274 = fmul fast float %5272, %5220
  %5275 = fmul fast float %5272, %5221
  %5276 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5277 = fcmp fast ogt float %5276, 0x3E7FF19E20000000
  %5278 = fdiv fast float 1.000000e+00, %5276
  %5279 = select i1 %5277, float %5278, float 0.000000e+00
  %5280 = fmul fast float %5279, %5108
  %5281 = fmul fast float %5279, %5109
  %5282 = fmul fast float %5279, %5110
  %5283 = fadd fast float %5280, -1.000000e+00
  %5284 = fadd fast float %5281, -1.000000e+00
  %5285 = fadd fast float %5282, -1.000000e+00
  %5286 = fmul fast float %5283, 5.000000e-01
  %5287 = fmul fast float %5284, 5.000000e-01
  %5288 = fmul fast float %5285, 5.000000e-01
  %5289 = fadd fast float %5286, 1.000000e+00
  %5290 = fadd fast float %5287, 1.000000e+00
  %5291 = fadd fast float %5288, 1.000000e+00
  %5292 = fmul fast float %5267, %5223
  %5293 = fmul fast float %5268, %5224
  %5294 = fmul fast float %5269, %5225
  %5295 = fsub fast float 1.000000e+00, %5115
  %5296 = bitcast float %5295 to i32
  %5297 = sitofp i32 %5296 to float
  %5298 = fmul fast float %5297, 5.000000e+00
  %5299 = fadd fast float %5298, 0xC1EFBF8940000000
  %5300 = fptosi float %5299 to i32
  %5301 = bitcast i32 %5300 to float
  %5302 = fmul fast float %5301, %3909
  %5303 = fmul fast float %5219, %5302
  %5304 = fmul fast float %5303, %5272
  %5305 = fmul fast float %5304, %5289
  %5306 = fmul fast float %5220, %5302
  %5307 = fmul fast float %5306, %5272
  %5308 = fmul fast float %5307, %5290
  %5309 = fmul fast float %5221, %5302
  %5310 = fmul fast float %5309, %5272
  %5311 = fmul fast float %5310, %5291
  %5312 = fmul fast float %5273, %3905
  %5313 = fmul fast float %5274, %3905
  %5314 = fmul fast float %5275, %3905
  %5315 = fadd fast float %5292, %3898
  %5316 = fadd fast float %5315, %5305
  %5317 = fmul fast float %5316, %3905
  %5318 = fadd fast float %5293, %3899
  %5319 = fadd fast float %5318, %5308
  %5320 = fmul fast float %5319, %3905
  %5321 = fadd fast float %5294, %3900
  %5322 = fadd fast float %5321, %5311
  %5323 = fmul fast float %5322, %3905
  %5324 = bitcast i32 %5127 to float
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 3
  %5327 = fcmp fast oeq float %5326, 0.000000e+00
  br i1 %5327, label %5555, label %5328

; <label>:5328                                    ; preds = %5266
  %5329 = extractvalue %dx.types.CBufRet.f32 %5325, 0
  %5330 = extractvalue %dx.types.CBufRet.f32 %5325, 1
  %5331 = extractvalue %dx.types.CBufRet.f32 %5325, 2
  %5332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.f32 %5332, 0
  %5334 = extractvalue %dx.types.CBufRet.f32 %5332, 1
  %5335 = extractvalue %dx.types.CBufRet.f32 %5332, 2
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  %5338 = extractvalue %dx.types.CBufRet.f32 %5336, 1
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5333, float %5334, float %5335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = select i1 %217, float %5337, float %5333
  %5341 = select i1 %217, float %5339, float %5334
  %5342 = select i1 %217, float %5338, float %5335
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 1
  %5345 = fcmp fast une float %5344, 0.000000e+00
  br i1 %5345, label %5346, label %5363

; <label>:5346                                    ; preds = %5328
  %5347 = fptoui float %78 to i32
  %5348 = fptoui float %79 to i32
  %5349 = lshr i32 %5347, 4
  %5350 = lshr i32 %5348, 4
  %5351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.f32 %5351, 0
  %5353 = fptoui float %5352 to i32
  %5354 = add i32 %5353, 15
  %5355 = lshr i32 %5354, 4
  %5356 = mul i32 %5355, %5350
  %5357 = add i32 %5356, %5349
  %5358 = shl i32 %5357, 3
  %5359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.i32 %5359, 0
  %5361 = and i32 %5360, -268435456
  %5362 = icmp eq i32 %5361, -1342177280
  br i1 %5362, label %5373, label %5363

; <label>:5363                                    ; preds = %5346, %5328
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 2
  %5366 = extractvalue %dx.types.CBufRet.f32 %5364, 3
  %5367 = fmul fast float %5365, %78
  %5368 = fmul fast float %5366, %79
  %5369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5367, float %5368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  br label %5373

; <label>:5373                                    ; preds = %5363, %5346
  %5374 = phi float [ %5370, %5363 ], [ 0.000000e+00, %5346 ]
  %5375 = phi float [ %5371, %5363 ], [ 0.000000e+00, %5346 ]
  %5376 = phi float [ %5372, %5363 ], [ 0.000000e+00, %5346 ]
  %5377 = call float @dx.op.binary.f32(i32 36, float %5375, float %5376)  ; FMin(a,b)
  %5378 = call float @dx.op.binary.f32(i32 36, float %5374, float %5377)  ; FMin(a,b)
  %5379 = fcmp fast ogt float %5378, 0.000000e+00
  br i1 %5379, label %5380, label %5555, !dx.controlflow.hints !76

; <label>:5380                                    ; preds = %5373
  %5381 = fmul fast float %5374, %5340
  %5382 = fmul fast float %5375, %5341
  %5383 = fmul fast float %5376, %5342
  %5384 = fsub fast float %5329, %5101
  %5385 = fsub fast float %5330, %5100
  %5386 = fsub fast float %5331, %5099
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5384, float %5385, float %5386, float %5384, float %5385, float %5386)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = call float @dx.op.unary.f32(i32 25, float %5387)  ; Rsqrt(value)
  %5389 = fmul fast float %5388, %5384
  %5390 = fmul fast float %5388, %5385
  %5391 = fmul fast float %5388, %5386
  %5392 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float %5105, float %5106, float %5107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5097, float %5096, float %5389, float %5390, float %5391)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5395 = fmul fast float %5394, %5394
  %5396 = fmul fast float %5395, %5324
  %5397 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5398 = fmul fast float %5397, %5394
  %5399 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %5107, float %5389, float %5390, float %5391)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = fmul fast float %5399, %5399
  %5401 = call float @dx.op.unary.f32(i32 6, float %5392)  ; FAbs(value)
  %5402 = fsub fast float 1.000000e+00, %5111
  %5403 = call float @dx.op.binary.f32(i32 35, float %5402, float 0x3F847AE140000000)  ; FMax(a,b)
  %5404 = fmul fast float %5403, %5403
  %5405 = fmul fast float %5404, %5404
  %5406 = fsub fast float 1.000000e+00, %5405
  %5407 = fmul fast float %5115, %5115
  %5408 = fmul fast float %5407, %5406
  %5409 = fadd fast float %5408, %5405
  %5410 = bitcast float %5409 to i32
  %5411 = ashr i32 %5410, 1
  %5412 = add nsw i32 %5411, 532487669
  %5413 = bitcast i32 %5412 to float
  %5414 = fadd fast float %5413, %5115
  %5415 = fmul fast float %5405, %5400
  %5416 = fsub fast float 1.000000e+00, %5400
  %5417 = fadd fast float %5416, %5415
  %5418 = fmul fast float %5401, %5401
  %5419 = fmul fast float %5418, %5406
  %5420 = fadd fast float %5419, %5405
  %5421 = bitcast float %5420 to i32
  %5422 = ashr i32 %5421, 1
  %5423 = add nsw i32 %5422, 532487669
  %5424 = bitcast i32 %5423 to float
  %5425 = fadd fast float %5424, %5401
  %5426 = fmul fast float %5417, %5417
  %5427 = fmul fast float %5426, %5414
  %5428 = fmul fast float %5427, %5425
  %5429 = fdiv fast float 0x3FF0A00000000000, %5428
  %5430 = fmul fast float %5429, %5405
  %5431 = call float @dx.op.unary.f32(i32 6, float %5393)  ; FAbs(value)
  %5432 = fsub fast float 1.000000e+00, %5431
  %5433 = bitcast float %5432 to i32
  %5434 = sitofp i32 %5433 to float
  %5435 = fmul fast float %5434, 5.000000e+00
  %5436 = fadd fast float %5435, 0xC1EFBF8940000000
  %5437 = fptosi float %5436 to i32
  %5438 = bitcast i32 %5437 to float
  %5439 = fsub fast float 1.000000e+00, %5102
  %5440 = fsub fast float 1.000000e+00, %5103
  %5441 = fsub fast float 1.000000e+00, %5113
  %5442 = fmul fast float %5438, %5439
  %5443 = fmul fast float %5438, %5440
  %5444 = fmul fast float %5438, %5441
  %5445 = fadd fast float %5442, %5102
  %5446 = fadd fast float %5443, %5103
  %5447 = fadd fast float %5444, %5113
  br i1 %5239, label %5448, label %5471

; <label>:5448                                    ; preds = %5380
  %5449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3908, float %5431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.ResRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.ResRet.f32 %5449, 2
  %5453 = fadd fast float %5450, -5.000000e-01
  %5454 = fadd fast float %5451, -5.000000e-01
  %5455 = fadd fast float %5452, -5.000000e-01
  %5456 = fmul fast float %5102, 4.000000e+00
  %5457 = fmul fast float %5456, %5439
  %5458 = fmul fast float %5457, %5453
  %5459 = fmul fast float %5103, 4.000000e+00
  %5460 = fmul fast float %5459, %5440
  %5461 = fmul fast float %5460, %5454
  %5462 = fmul fast float %5113, 4.000000e+00
  %5463 = fmul fast float %5462, %5441
  %5464 = fmul fast float %5463, %5455
  %5465 = fadd fast float %5458, %5445
  %5466 = fadd fast float %5461, %5446
  %5467 = fadd fast float %5464, %5447
  %5468 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5469 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5470 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  br label %5471

; <label>:5471                                    ; preds = %5448, %5380
  %5472 = phi float [ %5468, %5448 ], [ %5445, %5380 ]
  %5473 = phi float [ %5469, %5448 ], [ %5446, %5380 ]
  %5474 = phi float [ %5470, %5448 ], [ %5447, %5380 ]
  %5475 = fmul fast float %5392, 9.843750e-01
  %5476 = fadd fast float %5475, 7.812500e-03
  %5477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5476, float %5229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5478 = extractvalue %dx.types.ResRet.f32 %5477, 2
  %5479 = extractvalue %dx.types.ResRet.f32 %5477, 3
  %5480 = fmul fast float %5478, %5102
  %5481 = fmul fast float %5478, %5103
  %5482 = fmul fast float %5478, %5113
  %5483 = fadd fast float %5480, %5479
  %5484 = fadd fast float %5481, %5479
  %5485 = fadd fast float %5482, %5479
  br i1 %5239, label %5486, label %5509

; <label>:5486                                    ; preds = %5471
  %5487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3908, float %5392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5490 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5491 = fadd fast float %5488, -5.000000e-01
  %5492 = fadd fast float %5489, -5.000000e-01
  %5493 = fadd fast float %5490, -5.000000e-01
  %5494 = fmul fast float %5102, 4.000000e+00
  %5495 = fmul fast float %5494, %5439
  %5496 = fmul fast float %5495, %5491
  %5497 = fmul fast float %5103, 4.000000e+00
  %5498 = fmul fast float %5497, %5440
  %5499 = fmul fast float %5498, %5492
  %5500 = fmul fast float %5113, 4.000000e+00
  %5501 = fmul fast float %5500, %5441
  %5502 = fmul fast float %5501, %5493
  %5503 = fadd fast float %5496, %5483
  %5504 = fadd fast float %5499, %5484
  %5505 = fadd fast float %5502, %5485
  %5506 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5507 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5508 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  br label %5509

; <label>:5509                                    ; preds = %5486, %5471
  %5510 = phi float [ %5506, %5486 ], [ %5483, %5471 ]
  %5511 = phi float [ %5507, %5486 ], [ %5484, %5471 ]
  %5512 = phi float [ %5508, %5486 ], [ %5485, %5471 ]
  %5513 = call float @dx.op.binary.f32(i32 35, float %5511, float %5512)  ; FMax(a,b)
  %5514 = call float @dx.op.binary.f32(i32 35, float %5510, float %5513)  ; FMax(a,b)
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = fmul fast float %5472, %5430
  %5517 = fmul fast float %5473, %5430
  %5518 = fmul fast float %5474, %5430
  %5519 = fsub fast float 1.000000e+00, %5393
  %5520 = bitcast float %5519 to i32
  %5521 = sitofp i32 %5520 to float
  %5522 = fmul fast float %5521, 5.000000e+00
  %5523 = fadd fast float %5522, 0xC1EFBF8940000000
  %5524 = fptosi float %5523 to i32
  %5525 = bitcast i32 %5524 to float
  %5526 = fmul fast float %5525, %3909
  %5527 = fmul fast float %5515, %5526
  %5528 = fmul fast float %5527, %5289
  %5529 = fmul fast float %5527, %5290
  %5530 = fmul fast float %5527, %5291
  %5531 = fadd fast float %5528, %5516
  %5532 = fadd fast float %5529, %5517
  %5533 = fadd fast float %5530, %5518
  %5534 = fmul fast float %5398, %5381
  %5535 = fmul fast float %5534, %5515
  %5536 = fmul fast float %5398, %5382
  %5537 = fmul fast float %5536, %5515
  %5538 = fmul fast float %5398, %5383
  %5539 = fmul fast float %5538, %5515
  %5540 = fmul fast float %5534, %5531
  %5541 = fmul fast float %5536, %5532
  %5542 = fmul fast float %5538, %5533
  %5543 = fadd fast float %5535, %5273
  %5544 = fmul fast float %5543, %3905
  %5545 = fadd fast float %5537, %5274
  %5546 = fmul fast float %5545, %3905
  %5547 = fadd fast float %5539, %5275
  %5548 = fmul fast float %5547, %3905
  %5549 = fadd fast float %5540, %5316
  %5550 = fmul fast float %5549, %3905
  %5551 = fadd fast float %5541, %5319
  %5552 = fmul fast float %5551, %3905
  %5553 = fadd fast float %5542, %5322
  %5554 = fmul fast float %5553, %3905
  br label %5555

; <label>:5555                                    ; preds = %5509, %5373, %5266
  %5556 = phi float [ %5317, %5266 ], [ %5317, %5373 ], [ %5550, %5509 ]
  %5557 = phi float [ %5320, %5266 ], [ %5320, %5373 ], [ %5552, %5509 ]
  %5558 = phi float [ %5323, %5266 ], [ %5323, %5373 ], [ %5554, %5509 ]
  %5559 = phi float [ %5312, %5266 ], [ %5312, %5373 ], [ %5544, %5509 ]
  %5560 = phi float [ %5313, %5266 ], [ %5313, %5373 ], [ %5546, %5509 ]
  %5561 = phi float [ %5314, %5266 ], [ %5314, %5373 ], [ %5548, %5509 ]
  %5562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.i32 %5562, 0
  %5564 = icmp eq i32 %5563, 0
  br i1 %5564, label %5999, label %5565

; <label>:5565                                    ; preds = %5555
  %5566 = fptoui float %78 to i32
  %5567 = fptoui float %79 to i32
  %5568 = lshr i32 %5566, 4
  %5569 = lshr i32 %5567, 4
  %5570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.i32 %5570, 0
  %5572 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5569, i32 %5571, i32 %5568)  ; UMad(a,b,c)
  %5573 = add nsw i32 %5563, -1
  %5574 = call i32 @dx.op.binary.i32(i32 37, i32 %5573, i32 0)  ; IMax(a,b)
  %5575 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5576 = fptoui float %5575 to i32
  %5577 = lshr i32 %5576, 5
  %5578 = call i32 @dx.op.binary.i32(i32 40, i32 %5577, i32 8191)  ; UMin(a,b)
  %5579 = shl i32 %5578, 2
  %5580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5579, i32 undef)  ; BufferLoad(srv,index,wot)
  %5581 = extractvalue %dx.types.ResRet.i32 %5580, 0
  %5582 = lshr i32 %5581, 16
  %5583 = and i32 %5581, 65535
  %5584 = lshr i32 %5581, 21
  %5585 = lshr i32 %5583, 5
  %5586 = call i32 @dx.op.binary.i32(i32 40, i32 %5585, i32 %5574)  ; UMin(a,b)
  %5587 = icmp ugt i32 %5584, %5586
  br i1 %5587, label %5999, label %5588

; <label>:5588                                    ; preds = %5565
  br label %5589

; <label>:5589                                    ; preds = %5989, %5588
  %5590 = phi i32 [ %5996, %5989 ], [ %5584, %5588 ]
  %5591 = phi float [ %5990, %5989 ], [ %5556, %5588 ]
  %5592 = phi float [ %5991, %5989 ], [ %5557, %5588 ]
  %5593 = phi float [ %5992, %5989 ], [ %5558, %5588 ]
  %5594 = phi float [ %5993, %5989 ], [ %5559, %5588 ]
  %5595 = phi float [ %5994, %5989 ], [ %5560, %5588 ]
  %5596 = phi float [ %5995, %5989 ], [ %5561, %5588 ]
  %5597 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5598 = extractvalue %dx.types.CBufRet.i32 %5597, 0
  %5599 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5572, i32 %5598, i32 %5590)  ; UMad(a,b,c)
  %5600 = shl i32 %5599, 2
  %5601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5600, i32 undef)  ; BufferLoad(srv,index,wot)
  %5602 = extractvalue %dx.types.ResRet.i32 %5601, 0
  %5603 = shl i32 %5590, 5
  %5604 = sub nsw i32 %5582, %5603
  %5605 = call i32 @dx.op.binary.i32(i32 37, i32 %5604, i32 0)  ; IMax(a,b)
  %5606 = call i32 @dx.op.binary.i32(i32 38, i32 %5605, i32 31)  ; IMin(a,b)
  %5607 = sub nsw i32 1, %5582
  %5608 = add nsw i32 %5607, %5583
  %5609 = call i32 @dx.op.binary.i32(i32 37, i32 %5608, i32 0)  ; IMax(a,b)
  %5610 = call i32 @dx.op.binary.i32(i32 38, i32 %5609, i32 32)  ; IMin(a,b)
  %5611 = and i32 %5610, 31
  %5612 = shl i32 -1, %5611
  %5613 = xor i32 %5612, -1
  %5614 = and i32 %5606, 31
  %5615 = shl i32 %5613, %5614
  %5616 = icmp eq i32 %5610, 32
  %5617 = select i1 %5616, i32 -1, i32 %5615
  %5618 = and i32 %5617, %5602
  %5619 = icmp eq i32 %5618, 0
  br i1 %5619, label %5989, label %5620

; <label>:5620                                    ; preds = %5589
  br label %5621

; <label>:5621                                    ; preds = %5701, %5620
  %5622 = phi i32 [ %5633, %5701 ], [ %5618, %5620 ]
  %5623 = phi float [ %5702, %5701 ], [ %5591, %5620 ]
  %5624 = phi float [ %5703, %5701 ], [ %5592, %5620 ]
  %5625 = phi float [ %5704, %5701 ], [ %5593, %5620 ]
  %5626 = phi float [ %5705, %5701 ], [ %5594, %5620 ]
  %5627 = phi float [ %5706, %5701 ], [ %5595, %5620 ]
  %5628 = phi float [ %5707, %5701 ], [ %5596, %5620 ]
  %5629 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5622)  ; FirstbitLo(value)
  %5630 = add i32 %5629, %5603
  %5631 = and i32 %5629, 31
  %5632 = shl i32 1, %5631
  %5633 = xor i32 %5632, %5622
  %5634 = mul i32 %5630, 112
  %5635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5634, i32 undef)  ; BufferLoad(srv,index,wot)
  %5636 = extractvalue %dx.types.ResRet.f32 %5635, 0
  %5637 = extractvalue %dx.types.ResRet.f32 %5635, 1
  %5638 = extractvalue %dx.types.ResRet.f32 %5635, 2
  %5639 = or i32 %5634, 12
  %5640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5639, i32 undef)  ; BufferLoad(srv,index,wot)
  %5641 = extractvalue %dx.types.ResRet.f32 %5640, 0
  %5642 = add i32 %5634, 44
  %5643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5642, i32 undef)  ; BufferLoad(srv,index,wot)
  %5644 = extractvalue %dx.types.ResRet.f32 %5643, 0
  %5645 = add i32 %5634, 48
  %5646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5645, i32 undef)  ; BufferLoad(srv,index,wot)
  %5647 = extractvalue %dx.types.ResRet.f32 %5646, 0
  %5648 = extractvalue %dx.types.ResRet.f32 %5646, 1
  %5649 = extractvalue %dx.types.ResRet.f32 %5646, 2
  %5650 = add i32 %5634, 80
  %5651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5650, i32 undef)  ; BufferLoad(srv,index,wot)
  %5652 = extractvalue %dx.types.ResRet.f32 %5651, 1
  %5653 = extractvalue %dx.types.ResRet.f32 %5651, 2
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5637, float %5638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = select i1 %217, float %5652, float %5636
  %5656 = select i1 %217, float %5654, float %5637
  %5657 = select i1 %217, float %5653, float %5638
  %5658 = fsub fast float %5647, %165
  %5659 = fsub fast float %5648, %166
  %5660 = fsub fast float %5649, %167
  %5661 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5660, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = call float @dx.op.unary.f32(i32 24, float %5661)  ; Sqrt(value)
  %5663 = fdiv fast float 1.000000e+00, %5662
  %5664 = fmul fast float %5663, %5658
  %5665 = fmul fast float %5663, %5659
  %5666 = fmul fast float %5663, %5660
  %5667 = fadd fast float %5662, %5641
  %5668 = fdiv fast float 1.000000e+00, %5667
  %5669 = fmul float %5644, %5668
  %5670 = fmul float %5669, %5669
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = and i32 %5632, %5618
  %5673 = icmp eq i32 %5672, 0
  br i1 %5673, label %5696, label %5674, !dx.controlflow.hints !77

; <label>:5674                                    ; preds = %5621
  %5675 = lshr i32 %5566, 5
  %5676 = lshr i32 %5567, 5
  %5677 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5675, i32 %5676, i32 %5630, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5678 = extractvalue %dx.types.ResRet.i32 %5677, 0
  %5679 = and i32 %5678, 3
  %5680 = icmp eq i32 %5679, 0
  %5681 = select i1 %5680, float 1.000000e+00, float 0.000000e+00
  %5682 = icmp eq i32 %5679, 3
  br i1 %5682, label %5683, label %5696

; <label>:5683                                    ; preds = %5674
  %5684 = lshr i32 %5678, 10
  %5685 = and i32 %5684, 8160
  %5686 = and i32 %5567, 31
  %5687 = or i32 %5685, %5686
  %5688 = lshr i32 %5678, 1
  %5689 = and i32 %5688, 16352
  %5690 = and i32 %5566, 31
  %5691 = or i32 %5689, %5690
  %5692 = lshr i32 %5678, 23
  %5693 = and i32 %5692, 255
  %5694 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5691, i32 %5687, i32 %5693, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5695 = extractvalue %dx.types.ResRet.f32 %5694, 0
  br label %5696

; <label>:5696                                    ; preds = %5683, %5674, %5621
  %5697 = phi float [ %5695, %5683 ], [ %5681, %5674 ], [ 0.000000e+00, %5621 ]
  %5698 = call float @dx.op.binary.f32(i32 36, float %5697, float %5697)  ; FMin(a,b)
  %5699 = call float @dx.op.binary.f32(i32 36, float %5697, float %5698)  ; FMin(a,b)
  %5700 = fcmp fast ogt float %5699, 0.000000e+00
  br i1 %5700, label %5709, label %5701, !dx.controlflow.hints !78

; <label>:5701                                    ; preds = %5945, %5696
  %5702 = phi float [ %5623, %5696 ], [ %5985, %5945 ]
  %5703 = phi float [ %5624, %5696 ], [ %5986, %5945 ]
  %5704 = phi float [ %5625, %5696 ], [ %5987, %5945 ]
  %5705 = phi float [ %5626, %5696 ], [ %5979, %5945 ]
  %5706 = phi float [ %5627, %5696 ], [ %5980, %5945 ]
  %5707 = phi float [ %5628, %5696 ], [ %5981, %5945 ]
  %5708 = icmp eq i32 %5622, %5632
  br i1 %5708, label %5988, label %5621

; <label>:5709                                    ; preds = %5696
  %5710 = fmul fast float %5697, %5655
  %5711 = fmul fast float %5697, %5656
  %5712 = fmul fast float %5697, %5657
  %5713 = fsub fast float %5649, %4309
  %5714 = fcmp fast ogt float %5713, 0.000000e+00
  %5715 = fsub fast float %167, %4309
  %5716 = fcmp fast ogt float %5715, 0.000000e+00
  %5717 = xor i1 %5716, %5714
  %5718 = fsub fast float %4309, %5649
  %5719 = fmul fast float %5718, 2.000000e+00
  %5720 = fadd fast float %5719, %5649
  %5721 = select i1 %5717, float %5649, float %5720
  %5722 = fsub fast float %5721, %167
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5722, float %5658, float %5659, float %5722)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = call float @dx.op.unary.f32(i32 25, float %5723)  ; Rsqrt(value)
  %5725 = fmul fast float %5724, %5658
  %5726 = fmul fast float %5724, %5659
  %5727 = fmul fast float %5724, %5722
  %5728 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4317)  ; Dot3(ax,ay,az,bx,by,bz)
  %5729 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5725, float %5726, float %5727)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = fdiv fast float 1.000000e+00, %5729
  %5731 = fmul fast float %5730, %5728
  %5732 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5715, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = fcmp fast ogt float %5732, 0.000000e+00
  %5734 = fcmp fast olt float %5732, 0.000000e+00
  %5735 = zext i1 %5733 to i32
  %5736 = zext i1 %5734 to i32
  %5737 = sub nsw i32 %5735, %5736
  %5738 = sitofp i32 %5737 to float
  %5739 = fsub fast float %5721, %4309
  %5740 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5739, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5741 = fcmp fast ogt float %5740, 0.000000e+00
  %5742 = fcmp fast olt float %5740, 0.000000e+00
  %5743 = zext i1 %5741 to i32
  %5744 = zext i1 %5742 to i32
  %5745 = sub nsw i32 %5743, %5744
  %5746 = sitofp i32 %5745 to float
  %5747 = fcmp fast une float %5738, %5746
  br i1 %5747, label %5748, label %5758

; <label>:5748                                    ; preds = %5709
  %5749 = fmul fast float %5731, %5727
  %5750 = fmul fast float %5731, %5726
  %5751 = fmul fast float %5731, %5725
  %5752 = fmul fast float %5751, %5751
  %5753 = fmul fast float %5750, %5750
  %5754 = fadd fast float %5752, %5753
  %5755 = fmul fast float %5749, %5749
  %5756 = fadd fast float %5754, %5755
  %5757 = call float @dx.op.unary.f32(i32 24, float %5756)  ; Sqrt(value)
  br label %5770

; <label>:5758                                    ; preds = %5709
  %5759 = icmp slt i32 %5737, 0
  br i1 %5759, label %5760, label %5770

; <label>:5760                                    ; preds = %5758
  %5761 = fsub fast float %165, %5647
  %5762 = fsub fast float %166, %5648
  %5763 = fsub fast float %167, %5721
  %5764 = fmul fast float %5761, %5761
  %5765 = fmul fast float %5762, %5762
  %5766 = fadd fast float %5764, %5765
  %5767 = fmul fast float %5763, %5763
  %5768 = fadd fast float %5766, %5767
  %5769 = call float @dx.op.unary.f32(i32 24, float %5768)  ; Sqrt(value)
  br label %5770

; <label>:5770                                    ; preds = %5760, %5758, %5748
  %5771 = phi float [ %5757, %5748 ], [ %5769, %5760 ], [ 0.000000e+00, %5758 ]
  %5772 = and i1 %5716, %5714
  %5773 = fsub fast float -0.000000e+00, %5771
  %5774 = select i1 %5772, float -0.000000e+00, float %5773
  %5775 = fmul fast float %4310, 0x3FF7154760000000
  %5776 = fmul fast float %5775, %5774
  %5777 = fmul fast float %4311, 0x3FF7154760000000
  %5778 = fmul fast float %5777, %5774
  %5779 = fmul fast float %4312, 0x3FF7154760000000
  %5780 = fmul fast float %5779, %5774
  %5781 = call float @dx.op.unary.f32(i32 21, float %5776)  ; Exp(value)
  %5782 = call float @dx.op.unary.f32(i32 21, float %5778)  ; Exp(value)
  %5783 = call float @dx.op.unary.f32(i32 21, float %5780)  ; Exp(value)
  %5784 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5785 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5786 = call float @dx.op.unary.f32(i32 7, float %5783)  ; Saturate(value)
  %5787 = fmul fast float %5710, %5784
  %5788 = fmul fast float %5711, %5785
  %5789 = fmul fast float %5712, %5786
  %5790 = fsub fast float %5664, %5101
  %5791 = fsub fast float %5665, %5100
  %5792 = fsub fast float %5666, %5099
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5790, float %5791, float %5792, float %5790, float %5791, float %5792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = call float @dx.op.unary.f32(i32 25, float %5793)  ; Rsqrt(value)
  %5795 = fmul fast float %5794, %5790
  %5796 = fmul fast float %5794, %5791
  %5797 = fmul fast float %5794, %5792
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %5105, float %5106, float %5107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5097, float %5096, float %5795, float %5796, float %5797)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5801 = fmul fast float %5800, %5671
  %5802 = fmul fast float %5800, %5800
  %5803 = fmul fast float %5802, %5324
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5805 = fmul fast float %5801, %5804
  %5806 = bitcast float %5661 to i32
  %5807 = ashr i32 %5806, 1
  %5808 = sub nsw i32 1597463007, %5807
  %5809 = bitcast i32 %5808 to float
  %5810 = fmul fast float %5809, %5658
  %5811 = fmul fast float %5809, %5659
  %5812 = fmul fast float %5809, %5660
  %5813 = fsub fast float %5810, %5101
  %5814 = fsub fast float %5811, %5100
  %5815 = fsub fast float %5812, %5099
  %5816 = call float @dx.op.dot3.f32(i32 55, float %5813, float %5814, float %5815, float %5813, float %5814, float %5815)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = call float @dx.op.unary.f32(i32 25, float %5816)  ; Rsqrt(value)
  %5818 = fmul fast float %5813, %5817
  %5819 = fmul fast float %5814, %5817
  %5820 = fmul fast float %5815, %5817
  %5821 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %5107, float %5818, float %5819, float %5820)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = fmul fast float %5821, %5821
  %5823 = call float @dx.op.unary.f32(i32 6, float %5798)  ; FAbs(value)
  %5824 = fsub fast float 1.000000e+00, %5111
  %5825 = call float @dx.op.binary.f32(i32 35, float %5824, float 0x3F847AE140000000)  ; FMax(a,b)
  %5826 = fmul fast float %5825, %5825
  %5827 = fmul fast float %5826, %5826
  %5828 = fsub fast float 1.000000e+00, %5827
  %5829 = fmul fast float %5115, %5115
  %5830 = fmul fast float %5829, %5828
  %5831 = fadd fast float %5830, %5827
  %5832 = bitcast float %5831 to i32
  %5833 = ashr i32 %5832, 1
  %5834 = add nsw i32 %5833, 532487669
  %5835 = bitcast i32 %5834 to float
  %5836 = fadd fast float %5835, %5115
  %5837 = fmul fast float %5827, %5822
  %5838 = fsub fast float 1.000000e+00, %5822
  %5839 = fadd fast float %5838, %5837
  %5840 = fmul fast float %5823, %5823
  %5841 = fmul fast float %5840, %5828
  %5842 = fadd fast float %5841, %5827
  %5843 = bitcast float %5842 to i32
  %5844 = ashr i32 %5843, 1
  %5845 = add nsw i32 %5844, 532487669
  %5846 = bitcast i32 %5845 to float
  %5847 = fadd fast float %5846, %5823
  %5848 = fmul fast float %5839, %5839
  %5849 = fmul fast float %5848, %5836
  %5850 = fmul fast float %5849, %5847
  %5851 = fdiv fast float 1.000000e+00, %5850
  %5852 = bitcast float %5827 to i32
  %5853 = sitofp i32 %5852 to float
  %5854 = fmul fast float %5853, 0x3FE7F73180000000
  %5855 = fadd fast float %5854, 0x41AFE27C40000000
  %5856 = fptosi float %5855 to i32
  %5857 = bitcast i32 %5856 to float
  %5858 = fmul fast float %5644, 0x3FD80E9D60000000
  %5859 = fmul fast float %5858, %5809
  %5860 = fadd fast float %5857, %5859
  %5861 = bitcast float %5860 to i32
  %5862 = sub nsw i32 2129859010, %5861
  %5863 = bitcast i32 %5862 to float
  %5864 = fmul fast float %5827, %5851
  %5865 = fmul fast float %5864, %5857
  %5866 = fmul fast float %5865, %5863
  %5867 = call float @dx.op.unary.f32(i32 6, float %5799)  ; FAbs(value)
  %5868 = fsub fast float 1.000000e+00, %5867
  %5869 = bitcast float %5868 to i32
  %5870 = sitofp i32 %5869 to float
  %5871 = fmul fast float %5870, 5.000000e+00
  %5872 = fadd fast float %5871, 0xC1EFBF8940000000
  %5873 = fptosi float %5872 to i32
  %5874 = bitcast i32 %5873 to float
  %5875 = fsub fast float 1.000000e+00, %5102
  %5876 = fsub fast float 1.000000e+00, %5103
  %5877 = fsub fast float 1.000000e+00, %5113
  %5878 = fmul fast float %5874, %5875
  %5879 = fmul fast float %5874, %5876
  %5880 = fmul fast float %5874, %5877
  %5881 = fadd fast float %5878, %5102
  %5882 = fadd fast float %5879, %5103
  %5883 = fadd fast float %5880, %5113
  br i1 %5239, label %5884, label %5907

; <label>:5884                                    ; preds = %5770
  %5885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3908, float %5867, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5886 = extractvalue %dx.types.ResRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.ResRet.f32 %5885, 1
  %5888 = extractvalue %dx.types.ResRet.f32 %5885, 2
  %5889 = fadd fast float %5886, -5.000000e-01
  %5890 = fadd fast float %5887, -5.000000e-01
  %5891 = fadd fast float %5888, -5.000000e-01
  %5892 = fmul fast float %5102, 4.000000e+00
  %5893 = fmul fast float %5892, %5875
  %5894 = fmul fast float %5893, %5889
  %5895 = fmul fast float %5103, 4.000000e+00
  %5896 = fmul fast float %5895, %5876
  %5897 = fmul fast float %5896, %5890
  %5898 = fmul fast float %5113, 4.000000e+00
  %5899 = fmul fast float %5898, %5877
  %5900 = fmul fast float %5899, %5891
  %5901 = fadd fast float %5894, %5881
  %5902 = fadd fast float %5897, %5882
  %5903 = fadd fast float %5900, %5883
  %5904 = call float @dx.op.unary.f32(i32 7, float %5901)  ; Saturate(value)
  %5905 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5906 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  br label %5907

; <label>:5907                                    ; preds = %5884, %5770
  %5908 = phi float [ %5904, %5884 ], [ %5881, %5770 ]
  %5909 = phi float [ %5905, %5884 ], [ %5882, %5770 ]
  %5910 = phi float [ %5906, %5884 ], [ %5883, %5770 ]
  %5911 = fmul fast float %5798, 9.843750e-01
  %5912 = fadd fast float %5911, 7.812500e-03
  %5913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5912, float %5229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5914 = extractvalue %dx.types.ResRet.f32 %5913, 2
  %5915 = extractvalue %dx.types.ResRet.f32 %5913, 3
  %5916 = fmul fast float %5914, %5102
  %5917 = fmul fast float %5914, %5103
  %5918 = fmul fast float %5914, %5113
  %5919 = fadd fast float %5916, %5915
  %5920 = fadd fast float %5917, %5915
  %5921 = fadd fast float %5918, %5915
  br i1 %5239, label %5922, label %5945

; <label>:5922                                    ; preds = %5907
  %5923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3908, float %5798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.ResRet.f32 %5923, 1
  %5926 = extractvalue %dx.types.ResRet.f32 %5923, 2
  %5927 = fadd fast float %5924, -5.000000e-01
  %5928 = fadd fast float %5925, -5.000000e-01
  %5929 = fadd fast float %5926, -5.000000e-01
  %5930 = fmul fast float %5102, 4.000000e+00
  %5931 = fmul fast float %5930, %5875
  %5932 = fmul fast float %5931, %5927
  %5933 = fmul fast float %5103, 4.000000e+00
  %5934 = fmul fast float %5933, %5876
  %5935 = fmul fast float %5934, %5928
  %5936 = fmul fast float %5113, 4.000000e+00
  %5937 = fmul fast float %5936, %5877
  %5938 = fmul fast float %5937, %5929
  %5939 = fadd fast float %5932, %5919
  %5940 = fadd fast float %5935, %5920
  %5941 = fadd fast float %5938, %5921
  %5942 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5943 = call float @dx.op.unary.f32(i32 7, float %5940)  ; Saturate(value)
  %5944 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  br label %5945

; <label>:5945                                    ; preds = %5922, %5907
  %5946 = phi float [ %5942, %5922 ], [ %5919, %5907 ]
  %5947 = phi float [ %5943, %5922 ], [ %5920, %5907 ]
  %5948 = phi float [ %5944, %5922 ], [ %5921, %5907 ]
  %5949 = call float @dx.op.binary.f32(i32 35, float %5947, float %5948)  ; FMax(a,b)
  %5950 = call float @dx.op.binary.f32(i32 35, float %5946, float %5949)  ; FMax(a,b)
  %5951 = fsub fast float 1.000000e+00, %5950
  %5952 = fmul fast float %5908, %5866
  %5953 = fmul fast float %5909, %5866
  %5954 = fmul fast float %5910, %5866
  %5955 = fsub fast float 1.000000e+00, %5799
  %5956 = bitcast float %5955 to i32
  %5957 = sitofp i32 %5956 to float
  %5958 = fmul fast float %5957, 5.000000e+00
  %5959 = fadd fast float %5958, 0xC1EFBF8940000000
  %5960 = fptosi float %5959 to i32
  %5961 = bitcast i32 %5960 to float
  %5962 = fmul fast float %5961, %3909
  %5963 = fmul fast float %5951, %5962
  %5964 = fmul fast float %5963, %5289
  %5965 = fmul fast float %5963, %5290
  %5966 = fmul fast float %5963, %5291
  %5967 = fadd fast float %5964, %5952
  %5968 = fadd fast float %5965, %5953
  %5969 = fadd fast float %5966, %5954
  %5970 = fmul fast float %5787, %3905
  %5971 = fmul fast float %5970, %5805
  %5972 = fmul fast float %5971, %5951
  %5973 = fmul fast float %5788, %3905
  %5974 = fmul fast float %5973, %5805
  %5975 = fmul fast float %5974, %5951
  %5976 = fmul fast float %5789, %3905
  %5977 = fmul fast float %5976, %5805
  %5978 = fmul fast float %5977, %5951
  %5979 = fadd fast float %5972, %5626
  %5980 = fadd fast float %5975, %5627
  %5981 = fadd fast float %5978, %5628
  %5982 = fmul fast float %5971, %5967
  %5983 = fmul fast float %5974, %5968
  %5984 = fmul fast float %5977, %5969
  %5985 = fadd fast float %5982, %5623
  %5986 = fadd fast float %5983, %5624
  %5987 = fadd fast float %5984, %5625
  br label %5701

; <label>:5988                                    ; preds = %5701
  br label %5989

; <label>:5989                                    ; preds = %5988, %5589
  %5990 = phi float [ %5591, %5589 ], [ %5702, %5988 ]
  %5991 = phi float [ %5592, %5589 ], [ %5703, %5988 ]
  %5992 = phi float [ %5593, %5589 ], [ %5704, %5988 ]
  %5993 = phi float [ %5594, %5589 ], [ %5705, %5988 ]
  %5994 = phi float [ %5595, %5589 ], [ %5706, %5988 ]
  %5995 = phi float [ %5596, %5589 ], [ %5707, %5988 ]
  %5996 = add i32 %5590, 1
  %5997 = icmp ugt i32 %5996, %5586
  br i1 %5997, label %5998, label %5589

; <label>:5998                                    ; preds = %5989
  br label %5999

; <label>:5999                                    ; preds = %5998, %5565, %5555
  %6000 = phi float [ %5556, %5555 ], [ %5556, %5565 ], [ %5990, %5998 ]
  %6001 = phi float [ %5557, %5555 ], [ %5557, %5565 ], [ %5991, %5998 ]
  %6002 = phi float [ %5558, %5555 ], [ %5558, %5565 ], [ %5992, %5998 ]
  %6003 = phi float [ %5559, %5555 ], [ %5559, %5565 ], [ %5993, %5998 ]
  %6004 = phi float [ %5560, %5555 ], [ %5560, %5565 ], [ %5994, %5998 ]
  %6005 = phi float [ %5561, %5555 ], [ %5561, %5565 ], [ %5995, %5998 ]
  %6006 = call float @dx.op.unary.f32(i32 24, float %5108)  ; Sqrt(value)
  %6007 = call float @dx.op.unary.f32(i32 24, float %5109)  ; Sqrt(value)
  %6008 = call float @dx.op.unary.f32(i32 24, float %5110)  ; Sqrt(value)
  %6009 = fmul fast float %6006, %6003
  %6010 = fmul fast float %6007, %6004
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 0
  br i1 %217, label %6013, label %6033

; <label>:6013                                    ; preds = %5999
  %6014 = fadd fast float %6005, %3911
  %6015 = fmul fast float %6014, %3912
  %6016 = fsub fast float 1.000000e+00, %3912
  %6017 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  %6018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.f32 %6018, 3
  %6020 = fmul fast float %6019, %6017
  %6021 = fadd fast float %6020, %6015
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6024 = fmul fast float %6023, %5295
  %6025 = fsub fast float %6021, %6024
  %6026 = fadd fast float %6010, %6009
  %6027 = fmul fast float %6012, %6026
  %6028 = extractvalue %dx.types.CBufRet.f32 %6018, 1
  %6029 = fsub fast float %6025, %6028
  %6030 = extractvalue %dx.types.CBufRet.f32 %6018, 2
  %6031 = fmul fast float %6029, %6030
  %6032 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  br label %6049

; <label>:6033                                    ; preds = %5999
  %6034 = fmul fast float %6008, %6005
  %6035 = fmul fast float %6012, %6009
  %6036 = fmul fast float %6012, %6010
  %6037 = fmul fast float %6034, %6012
  %6038 = add i32 %33, 356
  %6039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6038, i32 undef)  ; BufferLoad(srv,index,wot)
  %6040 = extractvalue %dx.types.ResRet.i32 %6039, 0
  %6041 = and i32 %6040, 32
  %6042 = icmp eq i32 %6041, 0
  br i1 %6042, label %6049, label %6043

; <label>:6043                                    ; preds = %6033
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6046 = fmul fast float %6045, 0x3FE99999A0000000
  %6047 = fadd fast float %6045, %6035
  %6048 = fadd fast float %6046, %6037
  br label %6049

; <label>:6049                                    ; preds = %6043, %6033, %6013
  %6050 = phi float [ %6027, %6013 ], [ %6047, %6043 ], [ %6035, %6033 ]
  %6051 = phi float [ %6032, %6013 ], [ %6036, %6043 ], [ %6036, %6033 ]
  %6052 = phi float [ 1.000000e+00, %6013 ], [ %6048, %6043 ], [ %6037, %6033 ]
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6055 = fmul fast float %6054, %6001
  %6056 = fmul fast float %6054, %6002
  %6057 = fadd fast float %6001, %6000
  %6058 = select i1 %217, float %6057, float %6000
  %6059 = fmul float %6058, %6054
  %6060 = select i1 %217, float 0.000000e+00, float %6055
  %6061 = select i1 %217, float 0.000000e+00, float %6056
  %6062 = fmul fast float %6050, %6006
  %6063 = fmul fast float %6051, %6007
  %6064 = fmul fast float %6052, %6008
  %6065 = fadd fast float %6059, %6062
  %6066 = fadd fast float %6060, %6063
  %6067 = fadd fast float %6061, %6064
  %6068 = select i1 %217, float %6051, float %6066
  %6069 = select i1 %217, float %6052, float %6067
  %6070 = call float @dx.op.binary.f32(i32 36, float %6065, float 3.225500e+04)  ; FMin(a,b)
  %6071 = call float @dx.op.binary.f32(i32 36, float %6068, float 3.225500e+04)  ; FMin(a,b)
  %6072 = call float @dx.op.binary.f32(i32 36, float %6069, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6070)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6071)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6072)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

