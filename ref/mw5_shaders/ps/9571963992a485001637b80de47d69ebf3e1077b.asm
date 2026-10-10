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
; shader hash: eb22b773a41d859533c47ab9d78355b6
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
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     u32     2darray      T6     t11,space2     1
;                                   texture     f32     2darray      T7     t10,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture    byte         r/o      T9     t18,space1     1
;                                   texture    byte         r/o     T10     t19,space1     1
;                                   texture    byte         r/o     T11     t20,space1     1
;                                   texture    byte         r/o     T12     t21,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t59,space2     1
;                                   texture     f32          2d     T16     t60,space2     1
;                                   texture    byte         r/o     T17     t45,space1     1
;                                   texture    byte         r/o     T18     t46,space1     1
;                                   texture    byte         r/o     T19     t47,space1     1
;                                   texture    byte         r/o     T20     t48,space1     1
;                                   texture     f32          2d     T21     t57,space2     1
;                                   texture    byte         r/o     T22     t69,space1     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture    byte         r/o     T24     t10,space1     1
;                                   texture    byte         r/o     T25     t68,space1     1
;                                   texture     f32          2d     T26      t0,space2     1
;                                   texture    byte         r/o     T27     t11,space1     1
;                                   texture    byte         r/o     T28     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = fmul fast float %75, %69
  %77 = fmul fast float %75, %70
  %78 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %79 = bitcast float %78 to i32
  %80 = ashr i32 %79, 1
  %81 = sub nsw i32 1597250115, %80
  %82 = bitcast i32 %81 to float
  %83 = fmul fast float %82, %61
  %84 = fmul fast float %82, %62
  %85 = fmul fast float %82, %63
  %86 = fmul fast float %62, %59
  %87 = fmul fast float %63, %58
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %63, %57
  %90 = fmul fast float %61, %59
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %61, %58
  %93 = fmul fast float %62, %57
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %88, %60
  %96 = fmul fast float %91, %60
  %97 = fmul fast float %94, %60
  %98 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %99 = bitcast float %98 to i32
  %100 = ashr i32 %99, 1
  %101 = sub nsw i32 1597250115, %100
  %102 = bitcast i32 %101 to float
  %103 = fmul fast float %102, %50
  %104 = fmul fast float %102, %51
  %105 = fmul fast float %102, %52
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fcmp fast une float %107, 0.000000e+00
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %76, 2.000000e+00
  %113 = fmul fast float %112, %110
  %114 = fmul fast float %77, 2.000000e+00
  %115 = fmul fast float %114, %111
  %116 = fsub fast float 1.000000e+00, %113
  %117 = fsub fast float 1.000000e+00, %115
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = select i1 %108, float %119, float %123
  %127 = select i1 %108, float %120, float %124
  %128 = select i1 %108, float %121, float %125
  %129 = fmul fast float %126, %116
  %130 = fmul fast float %127, %116
  %131 = fmul fast float %128, %116
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = select i1 %108, float %133, float %137
  %141 = select i1 %108, float %134, float %138
  %142 = select i1 %108, float %135, float %139
  %143 = fmul fast float %140, %117
  %144 = fmul fast float %141, %117
  %145 = fmul fast float %142, %117
  %146 = fadd fast float %143, %129
  %147 = fadd fast float %144, %130
  %148 = fadd fast float %145, %131
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = select i1 %108, float %150, float %154
  %158 = select i1 %108, float %151, float %155
  %159 = select i1 %108, float %152, float %156
  %160 = fadd fast float %146, %157
  %161 = fadd fast float %147, %158
  %162 = fadd fast float %148, %159
  %163 = fmul fast float %160, %71
  %164 = fmul fast float %161, %71
  %165 = fmul fast float %162, %71
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %169 = fmul fast float %167, %76
  %170 = fmul fast float %168, %77
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = and i32 %172, 114688
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %174, float %169, float 0.000000e+00
  %176 = select i1 %174, float %170, float 0.000000e+00
  %177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = fmul fast float %178, 2.550000e+02
  %180 = fptoui float %179 to i32
  %181 = select i1 %174, i32 %180, i32 0
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 3
  %184 = and i32 %183, 3
  %185 = icmp ne i32 %184, 0
  %186 = and i32 %183, 4
  %187 = icmp ne i32 %186, 0
  %188 = and i1 %185, %187
  br i1 %188, label %189, label %198

; <label>:189                                     ; preds = %0
  %190 = fmul fast float %111, %77
  %191 = fmul fast float %110, %76
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %191, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fsub fast float 1.000000e+00, %193
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = fcmp fast olt float %194, %196
  br label %201

; <label>:198                                     ; preds = %0
  %199 = icmp eq i32 %186, 0
  %200 = and i1 %185, %199
  br label %201

; <label>:201                                     ; preds = %198, %189
  %202 = phi i1 [ %197, %189 ], [ %200, %198 ]
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = fmul fast float %204, 0x3FE3C6EF40000000
  %206 = frem fast float %76, 2.560000e+02
  %207 = frem fast float %77, 2.560000e+02
  %208 = fptoui float %206 to i32
  %209 = fptoui float %207 to i32
  %210 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fadd fast float %211, %205
  %213 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %214 = add i32 %32, 156
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = shl i32 %216, 4
  %218 = and i32 %217, 32752
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %216, 7
  %221 = and i32 %220, 32752
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %216, 22
  %224 = shl nuw nsw i32 %223, 5
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %32, 216
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %228, 8
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %228, 16
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = add i32 %32, 36
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %32, 288
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = fmul fast float %251, 0x3F50624DE0000000
  %255 = fmul fast float %253, 0x3F50624DE0000000
  %256 = add i32 %32, 172
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = shl i32 %258, 4
  %260 = and i32 %259, 32752
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %258, 7
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %258, 22
  %266 = shl nuw nsw i32 %265, 5
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %32, 232
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %270, 8
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %270, 16
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = add i32 %32, 52
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %32, 304
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 65535
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %291, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = fmul fast float %293, 0x3F50624DE0000000
  %297 = fmul fast float %295, 0x3F50624DE0000000
  %298 = add i32 %32, 188
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = shl i32 %300, 4
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %300, 7
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %300, 22
  %308 = shl nuw nsw i32 %307, 5
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %32, 248
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %312, 8
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %312, 16
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = add i32 %32, 68
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %32, 320
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %333, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = fmul fast float %335, 0x3F50624DE0000000
  %339 = fmul fast float %337, 0x3F50624DE0000000
  %340 = add i32 %32, 204
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = shl i32 %342, 4
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %342, 7
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %342, 22
  %350 = shl nuw nsw i32 %349, 5
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %32, 264
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = lshr i32 %354, 8
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F70101020000000
  %362 = lshr i32 %354, 16
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = add i32 %32, 84
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %32, 336
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %375, 16
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = fmul fast float %377, 0x3F50624DE0000000
  %381 = fmul fast float %379, 0x3F50624DE0000000
  %382 = add i32 %32, 348
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 32
  %386 = icmp eq i32 %385, 0
  %387 = and i32 %384, 64
  %388 = icmp eq i32 %387, 0
  %389 = and i32 %384, 128
  %390 = icmp eq i32 %389, 0
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 2
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %408, label %395

; <label>:395                                     ; preds = %201
  %396 = add i32 %32, 488
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = add i32 %398, 0
  %400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %400, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = fmul fast float %402, %66
  %406 = fmul fast float %403, %67
  %407 = fmul fast float %404, %68
  br label %408

; <label>:408                                     ; preds = %395, %201
  %409 = phi float [ %68, %201 ], [ %407, %395 ]
  %410 = phi float [ %67, %201 ], [ %406, %395 ]
  %411 = phi float [ %66, %201 ], [ %405, %395 ]
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 2
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %435, label %416

; <label>:416                                     ; preds = %408
  %417 = add i32 %32, 44
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 1
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %411, float 1.000000e+00
  %423 = add i32 %32, 60
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 1
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %410, float 1.000000e+00
  %429 = add i32 %32, 76
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 1
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %433, float %409, float 1.000000e+00
  br label %435

; <label>:435                                     ; preds = %416, %408
  %436 = phi float [ %409, %408 ], [ %434, %416 ]
  %437 = phi float [ %410, %408 ], [ %428, %416 ]
  %438 = phi float [ %411, %408 ], [ %422, %416 ]
  %439 = lshr i32 %413, 20
  %440 = and i32 %439, 3
  %441 = add nuw nsw i32 %440, 1
  %442 = add i32 %32, 24
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = add i32 %32, 28
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = or i32 %447, %444
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %908, label %450

; <label>:450                                     ; preds = %435
  %451 = and i32 %444, 262144
  %452 = icmp ne i32 %451, 0
  %453 = select i1 %452, float %37, float 1.000000e+00
  %454 = select i1 %452, float %38, float 0.000000e+00
  %455 = select i1 %452, float %39, float 0.000000e+00
  %456 = select i1 %452, float %40, float 1.000000e+00
  %457 = select i1 %452, float %41, float %64
  %458 = select i1 %452, float %42, float %65
  %459 = add i32 %32, 284
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = lshr i32 %461, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = fmul fast float %463, 0x3F50624DE0000000
  %465 = add i32 %32, 88
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = lshr i32 %467, 16
  %469 = and i32 %468, 255
  %470 = lshr i32 %467, 24
  %471 = add i32 %32, 292
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 65535
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = lshr i32 %473, 16
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = add i32 %32, 32
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 22
  %482 = shl nuw nsw i32 %481, 5
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = shl i32 %480, 4
  %485 = and i32 %484, 32752
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = lshr i32 %480, 7
  %488 = and i32 %487, 32752
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 3
  %492 = fmul fast float %491, 1.000000e+03
  %493 = fmul fast float %254, %492
  %494 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %495 = fadd fast float %494, %244
  %496 = fmul fast float %255, %492
  %497 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %498 = fadd fast float %497, %246
  %499 = fmul fast float %464, %492
  %500 = call float @dx.op.unary.f32(i32 22, float %499)  ; Frc(value)
  %501 = fmul fast float %500, 0x401921FB60000000
  %502 = fadd fast float %501, %483
  %503 = call float @dx.op.unary.f32(i32 13, float %502)  ; Sin(value)
  %504 = call float @dx.op.unary.f32(i32 12, float %502)  ; Cos(value)
  %505 = fsub fast float -0.000000e+00, %503
  %506 = fadd fast float %457, -5.000000e-01
  %507 = fadd fast float %458, -5.000000e-01
  %508 = fmul fast float %475, %506
  %509 = fmul fast float %477, %507
  %510 = fadd fast float %508, 5.000000e-01
  %511 = fadd fast float %509, 5.000000e-01
  %512 = fmul fast float %486, %510
  %513 = fmul fast float %489, %511
  %514 = fmul fast float %504, %512
  %515 = call float @dx.op.tertiary.f32(i32 46, float %505, float %513, float %514)  ; FMad(a,b,c)
  %516 = fmul fast float %503, %512
  %517 = call float @dx.op.tertiary.f32(i32 46, float %504, float %513, float %516)  ; FMad(a,b,c)
  %518 = fadd fast float %495, %515
  %519 = fadd fast float %498, %517
  %520 = icmp ugt i32 %469, 1
  %521 = icmp ugt i32 %467, 33554431
  %522 = or i1 %521, %520
  br i1 %522, label %523, label %548

; <label>:523                                     ; preds = %450
  %524 = add i32 %32, 228
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = lshr i32 %526, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = fmul fast float %491, %528
  %530 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %531 = mul nuw nsw i32 %469, %470
  %532 = uitofp i32 %531 to float
  %533 = fmul fast float %530, %532
  %534 = call float @dx.op.unary.f32(i32 27, float %533)  ; Round_ni(value)
  %535 = fptoui float %534 to i32
  %536 = urem i32 %535, %469
  %537 = udiv i32 %535, %470
  %538 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %539 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %540 = uitofp i32 %536 to float
  %541 = uitofp i32 %537 to float
  %542 = fadd fast float %538, %540
  %543 = fadd fast float %539, %541
  %544 = uitofp i32 %469 to float
  %545 = uitofp i32 %470 to float
  %546 = fdiv fast float %542, %544
  %547 = fdiv fast float %543, %545
  br label %548

; <label>:548                                     ; preds = %523, %450
  %549 = phi float [ %546, %523 ], [ %518, %450 ]
  %550 = phi float [ %547, %523 ], [ %519, %450 ]
  %551 = and i32 %444, 16
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %749, label %553

; <label>:553                                     ; preds = %548
  %554 = add i32 %32, 360
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = add i32 %556, 0
  %558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %72, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = extractvalue %dx.types.ResRet.f32 %559, 3
  %564 = and i32 %467, 255
  %565 = uitofp i32 %564 to float
  %566 = lshr i32 %467, 8
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %563, %565
  %570 = fadd fast float %569, %568
  %571 = fmul fast float %570, 0x3F70101000000000
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 512
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %584, label %576

; <label>:576                                     ; preds = %553
  %577 = add i32 %32, 440
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = add i32 %579, 0
  %581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %581, %dx.types.Handle %73, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  br label %584

; <label>:584                                     ; preds = %576, %553
  %585 = phi float [ %583, %576 ], [ 1.000000e+00, %553 ]
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 33554432
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %696, label %590

; <label>:590                                     ; preds = %584
  %591 = add i32 %32, 224
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %593, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = add i32 %32, 228
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %600, 65535
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = lshr i32 %604, 24
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = and i32 %604, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = lshr i32 %604, 8
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = lshr i32 %604, 16
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = add i32 %32, 220
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = lshr i32 %621, 24
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, 0x3F70101020000000
  %625 = and i32 %621, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = lshr i32 %621, 8
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = lshr i32 %621, 16
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F70101020000000
  %636 = bitcast float %560 to i32
  %637 = ashr i32 %636, 1
  %638 = sub nsw i32 1597463174, %637
  %639 = bitcast i32 %638 to float
  %640 = fmul fast float %560, 5.000000e-01
  %641 = fmul fast float %639, %639
  %642 = fmul fast float %641, %640
  %643 = fsub fast float 1.500000e+00, %642
  %644 = fmul fast float %639, %560
  %645 = fmul fast float %644, %643
  %646 = bitcast float %561 to i32
  %647 = ashr i32 %646, 1
  %648 = sub nsw i32 1597463174, %647
  %649 = bitcast i32 %648 to float
  %650 = fmul fast float %561, 5.000000e-01
  %651 = fmul fast float %649, %649
  %652 = fmul fast float %651, %650
  %653 = fsub fast float 1.500000e+00, %652
  %654 = fmul fast float %649, %561
  %655 = fmul fast float %654, %653
  %656 = bitcast float %562 to i32
  %657 = ashr i32 %656, 1
  %658 = sub nsw i32 1597463174, %657
  %659 = bitcast i32 %658 to float
  %660 = fmul fast float %562, 5.000000e-01
  %661 = fmul fast float %659, %659
  %662 = fmul fast float %661, %660
  %663 = fsub fast float 1.500000e+00, %662
  %664 = fmul fast float %659, %562
  %665 = fmul fast float %664, %663
  %666 = fsub fast float %645, %627
  %667 = fsub fast float %655, %631
  %668 = fsub fast float %665, %635
  %669 = fmul fast float %666, %595
  %670 = fmul fast float %667, %597
  %671 = fmul fast float %668, %602
  %672 = fadd fast float %669, %610
  %673 = fadd fast float %670, %614
  %674 = fadd fast float %671, %618
  %675 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %676 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %677 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %678 = fmul fast float %675, %675
  %679 = fmul fast float %676, %676
  %680 = fmul fast float %677, %677
  %681 = fsub fast float %678, %560
  %682 = fsub fast float %679, %561
  %683 = fsub fast float %680, %562
  %684 = fmul fast float %681, %585
  %685 = fmul fast float %682, %585
  %686 = fmul fast float %683, %585
  %687 = fadd fast float %684, %560
  %688 = fadd fast float %685, %561
  %689 = fadd fast float %686, %562
  %690 = fadd fast float %607, %571
  %691 = fsub fast float %690, %624
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %693 = fsub fast float %692, %571
  %694 = fmul fast float %693, %585
  %695 = fadd fast float %694, %571
  br label %749

; <label>:696                                     ; preds = %584
  %697 = and i32 %587, 134217728
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %733, label %699

; <label>:699                                     ; preds = %696
  %700 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %701 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %702 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %703 = fadd fast float %700, -5.000000e-01
  %704 = fadd fast float %701, -5.000000e-01
  %705 = fadd fast float %702, -5.000000e-01
  %706 = fmul fast float %703, %585
  %707 = fmul fast float %704, %585
  %708 = fmul fast float %705, %585
  %709 = fadd fast float %706, 5.000000e-01
  %710 = fadd fast float %707, 5.000000e-01
  %711 = fadd fast float %708, 5.000000e-01
  %712 = call float @dx.op.unary.f32(i32 24, float %560)  ; Sqrt(value)
  %713 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %714 = call float @dx.op.unary.f32(i32 24, float %562)  ; Sqrt(value)
  %715 = fmul fast float %709, 2.000000e+00
  %716 = fsub fast float 1.000000e+00, %715
  %717 = fmul fast float %716, %712
  %718 = fadd fast float %717, %715
  %719 = fmul fast float %718, %712
  %720 = fmul fast float %710, 2.000000e+00
  %721 = fsub fast float 1.000000e+00, %720
  %722 = fmul fast float %721, %713
  %723 = fadd fast float %722, %720
  %724 = fmul fast float %723, %713
  %725 = fmul fast float %711, 2.000000e+00
  %726 = fsub fast float 1.000000e+00, %725
  %727 = fmul fast float %726, %714
  %728 = fadd fast float %727, %725
  %729 = fmul fast float %728, %714
  %730 = fmul fast float %719, %719
  %731 = fmul fast float %724, %724
  %732 = fmul fast float %729, %729
  br label %749

; <label>:733                                     ; preds = %696
  %734 = fmul fast float %231, %231
  %735 = fmul fast float %235, %235
  %736 = fmul fast float %239, %239
  %737 = fadd fast float %734, -1.000000e+00
  %738 = fadd fast float %735, -1.000000e+00
  %739 = fadd fast float %736, -1.000000e+00
  %740 = fmul fast float %585, %737
  %741 = fmul fast float %585, %738
  %742 = fmul fast float %585, %739
  %743 = fadd fast float %740, 1.000000e+00
  %744 = fadd fast float %741, 1.000000e+00
  %745 = fadd fast float %742, 1.000000e+00
  %746 = fmul fast float %743, %560
  %747 = fmul fast float %744, %561
  %748 = fmul fast float %745, %562
  br label %749

; <label>:749                                     ; preds = %733, %699, %590, %548
  %750 = phi float [ %695, %590 ], [ %571, %699 ], [ %571, %733 ], [ 0x3FA23C0BE0000000, %548 ]
  %751 = phi float [ %687, %590 ], [ %730, %699 ], [ %746, %733 ], [ 1.000000e+00, %548 ]
  %752 = phi float [ %688, %590 ], [ %731, %699 ], [ %747, %733 ], [ 1.000000e+00, %548 ]
  %753 = phi float [ %689, %590 ], [ %732, %699 ], [ %748, %733 ], [ 1.000000e+00, %548 ]
  %754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.i32 %754, 1
  %756 = and i32 %755, 1
  %757 = icmp ne i32 %756, 0
  %758 = add i32 %32, 356
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 32
  %762 = icmp ne i32 %761, 0
  %763 = and i1 %757, %762
  %764 = select i1 %763, float 1.000000e+00, float %751
  %765 = select i1 %763, float 0x3FD3333340000000, float %752
  %766 = select i1 %763, float 0x3FD3333340000000, float %753
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 32
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %843, label %771

; <label>:771                                     ; preds = %749
  %772 = add i32 %32, 92
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = add i32 %32, 376
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = add i32 %777, 0
  %779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %779, %dx.types.Handle %72, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = extractvalue %dx.types.ResRet.f32 %780, 3
  %785 = and i32 %774, 255
  %786 = uitofp i32 %785 to float
  %787 = lshr i32 %774, 8
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = lshr i32 %774, 16
  %791 = and i32 %790, 255
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F70101000000000
  %794 = fmul fast float %781, %786
  %795 = fadd fast float %794, %789
  %796 = fmul fast float %795, 0x3F70101000000000
  %797 = fadd fast float %782, -5.000000e-01
  %798 = fadd fast float %784, -5.000000e-01
  %799 = fmul fast float %797, %793
  %800 = fmul fast float %798, %793
  %801 = fadd fast float %799, 5.000000e-01
  %802 = fadd fast float %800, 5.000000e-01
  %803 = fmul fast float %801, 2.000000e+00
  %804 = fadd fast float %803, -1.000000e+00
  %805 = fmul fast float %802, 2.000000e+00
  %806 = fadd fast float %805, -1.000000e+00
  %807 = fadd fast float %804, %806
  %808 = fmul fast float %807, 5.000000e-01
  %809 = fsub fast float %804, %806
  %810 = fmul fast float %809, 5.000000e-01
  %811 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %812 = fsub fast float 1.000000e+00, %811
  %813 = call float @dx.op.unary.f32(i32 6, float %810)  ; FAbs(value)
  %814 = fsub fast float %812, %813
  %815 = call float @dx.op.dot3.f32(i32 55, float %808, float %810, float %814, float %808, float %810, float %814)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = call float @dx.op.unary.f32(i32 25, float %815)  ; Rsqrt(value)
  %817 = fmul fast float %808, %816
  %818 = fmul fast float %810, %816
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 67108864
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %839, label %823

; <label>:823                                     ; preds = %771
  %824 = add i32 %32, 280
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 65535
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 65535
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = lshr i32 %826, 16
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = fsub fast float %796, %834
  %836 = fmul fast float %835, %828
  %837 = fadd fast float %836, %832
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  br label %839

; <label>:839                                     ; preds = %823, %771
  %840 = phi float [ %838, %823 ], [ %796, %771 ]
  %841 = call float @dx.op.dot2.f32(i32 54, float %817, float %818, float %453, float %454)  ; Dot2(ax,ay,bx,by)
  %842 = call float @dx.op.dot2.f32(i32 54, float %817, float %818, float %455, float %456)  ; Dot2(ax,ay,bx,by)
  br label %843

; <label>:843                                     ; preds = %839, %749
  %844 = phi float [ %840, %839 ], [ 0x3FD6666660000000, %749 ]
  %845 = phi float [ %841, %839 ], [ 0.000000e+00, %749 ]
  %846 = phi float [ %842, %839 ], [ 0.000000e+00, %749 ]
  %847 = phi float [ %783, %839 ], [ 1.000000e+00, %749 ]
  %848 = add i32 %32, 160
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %848, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = lshr i32 %850, 22
  %852 = shl nuw nsw i32 %851, 5
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = and i32 %855, 64
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %891, label %858

; <label>:858                                     ; preds = %843
  %859 = add i32 %32, 392
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = add i32 %861, 0
  %863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %862, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = and i32 %865, 131072
  %867 = icmp eq i32 %866, 0
  %868 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %863, %dx.types.Handle %72, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 2
  %872 = fmul fast float %869, %219
  %873 = fmul fast float %870, %222
  %874 = fmul fast float %871, %225
  br i1 %867, label %881, label %875

; <label>:875                                     ; preds = %858
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = fmul fast float %877, %872
  %879 = fmul fast float %877, %873
  %880 = fmul fast float %877, %874
  br label %881

; <label>:881                                     ; preds = %875, %858
  %882 = phi float [ %878, %875 ], [ %872, %858 ]
  %883 = phi float [ %879, %875 ], [ %873, %858 ]
  %884 = phi float [ %880, %875 ], [ %874, %858 ]
  %885 = fmul fast float %882, %853
  %886 = select i1 %202, float %885, float %882
  %887 = call float @dx.op.dot3.f32(i32 55, float %886, float %883, float %884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = select i1 %202, float 0.000000e+00, float %882
  %889 = select i1 %202, float %887, float %883
  %890 = select i1 %202, float 0.000000e+00, float %884
  br label %891

; <label>:891                                     ; preds = %881, %843
  %892 = phi float [ %888, %881 ], [ 0.000000e+00, %843 ]
  %893 = phi float [ %889, %881 ], [ 0.000000e+00, %843 ]
  %894 = phi float [ %890, %881 ], [ 0.000000e+00, %843 ]
  %895 = add i32 %32, 96
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 255
  %899 = uitofp i32 %898 to float
  %900 = lshr i32 %897, 8
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = fmul fast float %902, %903
  %905 = fadd fast float %904, %899
  %906 = fmul fast float %905, 0x3F70101020000000
  %907 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  br label %908

; <label>:908                                     ; preds = %891, %435
  %909 = phi float [ 0.000000e+00, %435 ], [ %845, %891 ]
  %910 = phi float [ 0.000000e+00, %435 ], [ %846, %891 ]
  %911 = phi float [ 0.000000e+00, %435 ], [ %764, %891 ]
  %912 = phi float [ 0.000000e+00, %435 ], [ %765, %891 ]
  %913 = phi float [ 0.000000e+00, %435 ], [ %766, %891 ]
  %914 = phi float [ 0.000000e+00, %435 ], [ %892, %891 ]
  %915 = phi float [ 0.000000e+00, %435 ], [ %893, %891 ]
  %916 = phi float [ 0.000000e+00, %435 ], [ %894, %891 ]
  %917 = phi float [ 0.000000e+00, %435 ], [ %750, %891 ]
  %918 = phi float [ 0.000000e+00, %435 ], [ 1.000000e+00, %891 ]
  %919 = phi float [ 0.000000e+00, %435 ], [ %844, %891 ]
  %920 = phi float [ 0.000000e+00, %435 ], [ %847, %891 ]
  %921 = phi float [ 0.000000e+00, %435 ], [ %907, %891 ]
  br i1 %386, label %1759, label %922

; <label>:922                                     ; preds = %908
  %923 = icmp ult i32 %441, 2
  %924 = add i32 %32, 40
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = add i32 %32, 44
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = or i32 %929, %926
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %1759, label %932

; <label>:932                                     ; preds = %922
  %933 = and i32 %926, 262144
  %934 = icmp ne i32 %933, 0
  %935 = select i1 %934, float %37, float 1.000000e+00
  %936 = select i1 %934, float %38, float 0.000000e+00
  %937 = select i1 %934, float %39, float 0.000000e+00
  %938 = select i1 %934, float %40, float 1.000000e+00
  %939 = select i1 %934, float %41, float %64
  %940 = select i1 %934, float %42, float %65
  %941 = add i32 %32, 300
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = lshr i32 %943, 16
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = fmul fast float %945, 0x3F50624DE0000000
  %947 = add i32 %32, 104
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = lshr i32 %949, 16
  %951 = and i32 %950, 255
  %952 = lshr i32 %949, 24
  %953 = add i32 %32, 308
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = and i32 %955, 65535
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = lshr i32 %955, 16
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = add i32 %32, 48
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = lshr i32 %962, 22
  %964 = shl nuw nsw i32 %963, 5
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = shl i32 %962, 4
  %967 = and i32 %966, 32752
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = lshr i32 %962, 7
  %970 = and i32 %969, 32752
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 3
  %974 = fmul fast float %973, 1.000000e+03
  %975 = fmul fast float %296, %974
  %976 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %977 = fadd fast float %976, %286
  %978 = fmul fast float %297, %974
  %979 = call float @dx.op.unary.f32(i32 22, float %978)  ; Frc(value)
  %980 = fadd fast float %979, %288
  %981 = fmul fast float %946, %974
  %982 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %983 = fmul fast float %982, 0x401921FB60000000
  %984 = fadd fast float %983, %965
  %985 = call float @dx.op.unary.f32(i32 13, float %984)  ; Sin(value)
  %986 = call float @dx.op.unary.f32(i32 12, float %984)  ; Cos(value)
  %987 = fsub fast float -0.000000e+00, %985
  %988 = fadd fast float %939, -5.000000e-01
  %989 = fadd fast float %940, -5.000000e-01
  %990 = fmul fast float %957, %988
  %991 = fmul fast float %959, %989
  %992 = fadd fast float %990, 5.000000e-01
  %993 = fadd fast float %991, 5.000000e-01
  %994 = fmul fast float %968, %992
  %995 = fmul fast float %971, %993
  %996 = fmul fast float %986, %994
  %997 = call float @dx.op.tertiary.f32(i32 46, float %987, float %995, float %996)  ; FMad(a,b,c)
  %998 = fmul fast float %985, %994
  %999 = call float @dx.op.tertiary.f32(i32 46, float %986, float %995, float %998)  ; FMad(a,b,c)
  %1000 = fadd fast float %977, %997
  %1001 = fadd fast float %980, %999
  %1002 = icmp ugt i32 %951, 1
  %1003 = icmp ugt i32 %949, 33554431
  %1004 = or i1 %1003, %1002
  br i1 %1004, label %1005, label %1030

; <label>:1005                                    ; preds = %932
  %1006 = add i32 %32, 244
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = lshr i32 %1008, 16
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = fmul fast float %973, %1010
  %1012 = call float @dx.op.unary.f32(i32 22, float %1011)  ; Frc(value)
  %1013 = mul nuw nsw i32 %951, %952
  %1014 = uitofp i32 %1013 to float
  %1015 = fmul fast float %1012, %1014
  %1016 = call float @dx.op.unary.f32(i32 27, float %1015)  ; Round_ni(value)
  %1017 = fptoui float %1016 to i32
  %1018 = urem i32 %1017, %951
  %1019 = udiv i32 %1017, %952
  %1020 = call float @dx.op.unary.f32(i32 22, float %1000)  ; Frc(value)
  %1021 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1022 = uitofp i32 %1018 to float
  %1023 = uitofp i32 %1019 to float
  %1024 = fadd fast float %1020, %1022
  %1025 = fadd fast float %1021, %1023
  %1026 = uitofp i32 %951 to float
  %1027 = uitofp i32 %952 to float
  %1028 = fdiv fast float %1024, %1026
  %1029 = fdiv fast float %1025, %1027
  br label %1030

; <label>:1030                                    ; preds = %1005, %932
  %1031 = phi float [ %1028, %1005 ], [ %1000, %932 ]
  %1032 = phi float [ %1029, %1005 ], [ %1001, %932 ]
  %1033 = and i32 %926, 256
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1081, label %1035

; <label>:1035                                    ; preds = %1030
  %1036 = add i32 %32, 428
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = add i32 %1038, 0
  %1040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1039, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1041 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1040, %dx.types.Handle %73, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = add i32 %32, 116
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = shl i32 %1045, 4
  %1047 = and i32 %1046, 32752
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = lshr i32 %1045, 7
  %1050 = and i32 %1049, 32752
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = fsub fast float 1.000000e+00, %438
  %1053 = call float @dx.op.binary.f32(i32 35, float %1052, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1054 = bitcast float %438 to i32
  %1055 = sitofp i32 %1054 to float
  %1056 = fadd fast float %1055, 0xC1CFBF8940000000
  %1057 = fmul fast float %1051, %1056
  %1058 = fadd fast float %1057, 0x41CFBF8940000000
  %1059 = fptosi float %1058 to i32
  %1060 = bitcast i32 %1059 to float
  %1061 = bitcast float %1053 to i32
  %1062 = sitofp i32 %1061 to float
  %1063 = fadd fast float %1062, 0xC1CFBF8940000000
  %1064 = fmul fast float %1063, %1051
  %1065 = fadd fast float %1064, 0x41CFBF8940000000
  %1066 = fptosi float %1065 to i32
  %1067 = bitcast i32 %1066 to float
  %1068 = fmul fast float %1060, %1048
  %1069 = fmul fast float %1067, %1048
  %1070 = fsub fast float %1053, %1068
  %1071 = fadd fast float %1069, %1053
  %1072 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1073 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  %1074 = fsub fast float %1042, %1072
  %1075 = fsub fast float %1073, %1072
  %1076 = bitcast float %1075 to i32
  %1077 = sub nsw i32 2129859010, %1076
  %1078 = bitcast i32 %1077 to float
  %1079 = fmul fast float %1078, %1074
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  br label %1081

; <label>:1081                                    ; preds = %1035, %1030
  %1082 = phi float [ %1080, %1035 ], [ %438, %1030 ]
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = and i32 %1084, 128
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1103, label %1087

; <label>:1087                                    ; preds = %1081
  %1088 = add i32 %32, 412
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = add i32 %1090, 0
  %1092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1092, %dx.types.Handle %73, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 524288
  %1098 = icmp ne i32 %1097, 0
  %1099 = fcmp fast ogt float %1094, 0x3FE0101020000000
  %1100 = select i1 %1099, float 1.000000e+00, float 0.000000e+00
  %1101 = select i1 %1098, float %1100, float %1094
  %1102 = fmul fast float %1101, %1082
  br label %1103

; <label>:1103                                    ; preds = %1087, %1081
  %1104 = phi float [ %1102, %1087 ], [ %1082, %1081 ]
  %1105 = fcmp fast ult float %1104, 0x3F70101020000000
  br i1 %1105, label %1759, label %1106

; <label>:1106                                    ; preds = %1103
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 16
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1309, label %1111

; <label>:1111                                    ; preds = %1106
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %32, 364
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %1116, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1118, %dx.types.Handle %72, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = extractvalue %dx.types.ResRet.f32 %1119, 3
  %1124 = and i32 %1113, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = lshr i32 %1113, 8
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1123, %1125
  %1130 = fadd fast float %1129, %1128
  %1131 = fmul fast float %1130, 0x3F70101000000000
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 512
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1144, label %1136

; <label>:1136                                    ; preds = %1111
  %1137 = add i32 %32, 444
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = add i32 %1139, 0
  %1141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1141, %dx.types.Handle %73, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  br label %1144

; <label>:1144                                    ; preds = %1136, %1111
  %1145 = phi float [ %1143, %1136 ], [ 1.000000e+00, %1111 ]
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 33554432
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1256, label %1150

; <label>:1150                                    ; preds = %1144
  %1151 = add i32 %32, 240
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 65535
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = lshr i32 %1153, 16
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = add i32 %32, 244
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 65535
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = lshr i32 %1164, 24
  %1166 = uitofp i32 %1165 to float
  %1167 = fmul fast float %1166, 0x3F70101020000000
  %1168 = and i32 %1164, 255
  %1169 = uitofp i32 %1168 to float
  %1170 = fmul fast float %1169, 0x3F70101020000000
  %1171 = lshr i32 %1164, 8
  %1172 = and i32 %1171, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1173, 0x3F70101020000000
  %1175 = lshr i32 %1164, 16
  %1176 = and i32 %1175, 255
  %1177 = uitofp i32 %1176 to float
  %1178 = fmul fast float %1177, 0x3F70101020000000
  %1179 = add i32 %32, 236
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = lshr i32 %1181, 24
  %1183 = uitofp i32 %1182 to float
  %1184 = fmul fast float %1183, 0x3F70101020000000
  %1185 = and i32 %1181, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = fmul fast float %1186, 0x3F70101020000000
  %1188 = lshr i32 %1181, 8
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F70101020000000
  %1192 = lshr i32 %1181, 16
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1194, 0x3F70101020000000
  %1196 = bitcast float %1120 to i32
  %1197 = ashr i32 %1196, 1
  %1198 = sub nsw i32 1597463174, %1197
  %1199 = bitcast i32 %1198 to float
  %1200 = fmul fast float %1120, 5.000000e-01
  %1201 = fmul fast float %1199, %1199
  %1202 = fmul fast float %1201, %1200
  %1203 = fsub fast float 1.500000e+00, %1202
  %1204 = fmul fast float %1199, %1120
  %1205 = fmul fast float %1204, %1203
  %1206 = bitcast float %1121 to i32
  %1207 = ashr i32 %1206, 1
  %1208 = sub nsw i32 1597463174, %1207
  %1209 = bitcast i32 %1208 to float
  %1210 = fmul fast float %1121, 5.000000e-01
  %1211 = fmul fast float %1209, %1209
  %1212 = fmul fast float %1211, %1210
  %1213 = fsub fast float 1.500000e+00, %1212
  %1214 = fmul fast float %1209, %1121
  %1215 = fmul fast float %1214, %1213
  %1216 = bitcast float %1122 to i32
  %1217 = ashr i32 %1216, 1
  %1218 = sub nsw i32 1597463174, %1217
  %1219 = bitcast i32 %1218 to float
  %1220 = fmul fast float %1122, 5.000000e-01
  %1221 = fmul fast float %1219, %1219
  %1222 = fmul fast float %1221, %1220
  %1223 = fsub fast float 1.500000e+00, %1222
  %1224 = fmul fast float %1219, %1122
  %1225 = fmul fast float %1224, %1223
  %1226 = fsub fast float %1205, %1187
  %1227 = fsub fast float %1215, %1191
  %1228 = fsub fast float %1225, %1195
  %1229 = fmul fast float %1226, %1155
  %1230 = fmul fast float %1227, %1157
  %1231 = fmul fast float %1228, %1162
  %1232 = fadd fast float %1229, %1170
  %1233 = fadd fast float %1230, %1174
  %1234 = fadd fast float %1231, %1178
  %1235 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1236 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1237 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1238 = fmul fast float %1235, %1235
  %1239 = fmul fast float %1236, %1236
  %1240 = fmul fast float %1237, %1237
  %1241 = fsub fast float %1238, %1120
  %1242 = fsub fast float %1239, %1121
  %1243 = fsub fast float %1240, %1122
  %1244 = fmul fast float %1241, %1145
  %1245 = fmul fast float %1242, %1145
  %1246 = fmul fast float %1243, %1145
  %1247 = fadd fast float %1244, %1120
  %1248 = fadd fast float %1245, %1121
  %1249 = fadd fast float %1246, %1122
  %1250 = fadd fast float %1167, %1131
  %1251 = fsub fast float %1250, %1184
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1253 = fsub fast float %1252, %1131
  %1254 = fmul fast float %1253, %1145
  %1255 = fadd fast float %1254, %1131
  br label %1309

; <label>:1256                                    ; preds = %1144
  %1257 = and i32 %1147, 134217728
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1293, label %1259

; <label>:1259                                    ; preds = %1256
  %1260 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %1261 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %1262 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %1263 = fadd fast float %1260, -5.000000e-01
  %1264 = fadd fast float %1261, -5.000000e-01
  %1265 = fadd fast float %1262, -5.000000e-01
  %1266 = fmul fast float %1263, %1145
  %1267 = fmul fast float %1264, %1145
  %1268 = fmul fast float %1265, %1145
  %1269 = fadd fast float %1266, 5.000000e-01
  %1270 = fadd fast float %1267, 5.000000e-01
  %1271 = fadd fast float %1268, 5.000000e-01
  %1272 = call float @dx.op.unary.f32(i32 24, float %1120)  ; Sqrt(value)
  %1273 = call float @dx.op.unary.f32(i32 24, float %1121)  ; Sqrt(value)
  %1274 = call float @dx.op.unary.f32(i32 24, float %1122)  ; Sqrt(value)
  %1275 = fmul fast float %1269, 2.000000e+00
  %1276 = fsub fast float 1.000000e+00, %1275
  %1277 = fmul fast float %1276, %1272
  %1278 = fadd fast float %1277, %1275
  %1279 = fmul fast float %1278, %1272
  %1280 = fmul fast float %1270, 2.000000e+00
  %1281 = fsub fast float 1.000000e+00, %1280
  %1282 = fmul fast float %1281, %1273
  %1283 = fadd fast float %1282, %1280
  %1284 = fmul fast float %1283, %1273
  %1285 = fmul fast float %1271, 2.000000e+00
  %1286 = fsub fast float 1.000000e+00, %1285
  %1287 = fmul fast float %1286, %1274
  %1288 = fadd fast float %1287, %1285
  %1289 = fmul fast float %1288, %1274
  %1290 = fmul fast float %1279, %1279
  %1291 = fmul fast float %1284, %1284
  %1292 = fmul fast float %1289, %1289
  br label %1309

; <label>:1293                                    ; preds = %1256
  %1294 = fmul fast float %273, %273
  %1295 = fmul fast float %277, %277
  %1296 = fmul fast float %281, %281
  %1297 = fadd fast float %1294, -1.000000e+00
  %1298 = fadd fast float %1295, -1.000000e+00
  %1299 = fadd fast float %1296, -1.000000e+00
  %1300 = fmul fast float %1145, %1297
  %1301 = fmul fast float %1145, %1298
  %1302 = fmul fast float %1145, %1299
  %1303 = fadd fast float %1300, 1.000000e+00
  %1304 = fadd fast float %1301, 1.000000e+00
  %1305 = fadd fast float %1302, 1.000000e+00
  %1306 = fmul fast float %1303, %1120
  %1307 = fmul fast float %1304, %1121
  %1308 = fmul fast float %1305, %1122
  br label %1309

; <label>:1309                                    ; preds = %1293, %1259, %1150, %1106
  %1310 = phi float [ %1255, %1150 ], [ %1131, %1259 ], [ %1131, %1293 ], [ 0x3FA23C0BE0000000, %1106 ]
  %1311 = phi float [ %1247, %1150 ], [ %1290, %1259 ], [ %1306, %1293 ], [ 1.000000e+00, %1106 ]
  %1312 = phi float [ %1248, %1150 ], [ %1291, %1259 ], [ %1307, %1293 ], [ 1.000000e+00, %1106 ]
  %1313 = phi float [ %1249, %1150 ], [ %1292, %1259 ], [ %1308, %1293 ], [ 1.000000e+00, %1106 ]
  %1314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.i32 %1314, 1
  %1316 = and i32 %1315, 1
  %1317 = icmp ne i32 %1316, 0
  %1318 = add i32 %32, 356
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = and i32 %1320, 32
  %1322 = icmp ne i32 %1321, 0
  %1323 = and i1 %1317, %1322
  %1324 = select i1 %1323, float 1.000000e+00, float %1311
  %1325 = select i1 %1323, float 0x3FD3333340000000, float %1312
  %1326 = select i1 %1323, float 0x3FD3333340000000, float %1313
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = and i32 %1328, 32
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1403, label %1331

; <label>:1331                                    ; preds = %1309
  %1332 = add i32 %32, 108
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = add i32 %32, 380
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = add i32 %1337, 0
  %1339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1340 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1339, %dx.types.Handle %72, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.ResRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.ResRet.f32 %1340, 2
  %1344 = extractvalue %dx.types.ResRet.f32 %1340, 3
  %1345 = and i32 %1334, 255
  %1346 = uitofp i32 %1345 to float
  %1347 = lshr i32 %1334, 8
  %1348 = and i32 %1347, 255
  %1349 = uitofp i32 %1348 to float
  %1350 = lshr i32 %1334, 16
  %1351 = and i32 %1350, 255
  %1352 = uitofp i32 %1351 to float
  %1353 = fmul fast float %1352, 0x3F70101000000000
  %1354 = fmul fast float %1341, %1346
  %1355 = fadd fast float %1354, %1349
  %1356 = fmul fast float %1355, 0x3F70101000000000
  %1357 = fadd fast float %1342, -5.000000e-01
  %1358 = fadd fast float %1344, -5.000000e-01
  %1359 = fmul fast float %1357, %1353
  %1360 = fmul fast float %1358, %1353
  %1361 = fadd fast float %1359, 5.000000e-01
  %1362 = fadd fast float %1360, 5.000000e-01
  %1363 = fmul fast float %1361, 2.000000e+00
  %1364 = fadd fast float %1363, -1.000000e+00
  %1365 = fmul fast float %1362, 2.000000e+00
  %1366 = fadd fast float %1365, -1.000000e+00
  %1367 = fadd fast float %1364, %1366
  %1368 = fmul fast float %1367, 5.000000e-01
  %1369 = fsub fast float %1364, %1366
  %1370 = fmul fast float %1369, 5.000000e-01
  %1371 = call float @dx.op.unary.f32(i32 6, float %1368)  ; FAbs(value)
  %1372 = fsub fast float 1.000000e+00, %1371
  %1373 = call float @dx.op.unary.f32(i32 6, float %1370)  ; FAbs(value)
  %1374 = fsub fast float %1372, %1373
  %1375 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1370, float %1374, float %1368, float %1370, float %1374)  ; Dot3(ax,ay,az,bx,by,bz)
  %1376 = call float @dx.op.unary.f32(i32 25, float %1375)  ; Rsqrt(value)
  %1377 = fmul fast float %1368, %1376
  %1378 = fmul fast float %1370, %1376
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 67108864
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1399, label %1383

; <label>:1383                                    ; preds = %1331
  %1384 = add i32 %32, 296
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 65535
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = lshr i32 %1386, 16
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = fsub fast float %1356, %1394
  %1396 = fmul fast float %1395, %1388
  %1397 = fadd fast float %1396, %1392
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  br label %1399

; <label>:1399                                    ; preds = %1383, %1331
  %1400 = phi float [ %1398, %1383 ], [ %1356, %1331 ]
  %1401 = call float @dx.op.dot2.f32(i32 54, float %1377, float %1378, float %935, float %936)  ; Dot2(ax,ay,bx,by)
  %1402 = call float @dx.op.dot2.f32(i32 54, float %1377, float %1378, float %937, float %938)  ; Dot2(ax,ay,bx,by)
  br label %1403

; <label>:1403                                    ; preds = %1399, %1309
  %1404 = phi float [ %1400, %1399 ], [ 0x3FD6666660000000, %1309 ]
  %1405 = phi float [ %1401, %1399 ], [ 0.000000e+00, %1309 ]
  %1406 = phi float [ %1402, %1399 ], [ 0.000000e+00, %1309 ]
  %1407 = phi float [ %1343, %1399 ], [ 1.000000e+00, %1309 ]
  %1408 = add i32 %32, 176
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = lshr i32 %1410, 22
  %1412 = shl nuw nsw i32 %1411, 5
  %1413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1412)  ; LegacyF16ToF32(value)
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = and i32 %1415, 64
  %1417 = icmp eq i32 %1416, 0
  br i1 %1417, label %1451, label %1418

; <label>:1418                                    ; preds = %1403
  %1419 = add i32 %32, 396
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1421, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 131072
  %1427 = icmp eq i32 %1426, 0
  %1428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1423, %dx.types.Handle %72, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = fmul fast float %1429, %261
  %1433 = fmul fast float %1430, %264
  %1434 = fmul fast float %1431, %267
  br i1 %1427, label %1441, label %1435

; <label>:1435                                    ; preds = %1418
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = fmul fast float %1437, %1432
  %1439 = fmul fast float %1437, %1433
  %1440 = fmul fast float %1437, %1434
  br label %1441

; <label>:1441                                    ; preds = %1435, %1418
  %1442 = phi float [ %1438, %1435 ], [ %1432, %1418 ]
  %1443 = phi float [ %1439, %1435 ], [ %1433, %1418 ]
  %1444 = phi float [ %1440, %1435 ], [ %1434, %1418 ]
  %1445 = fmul fast float %1442, %1413
  %1446 = select i1 %202, float %1445, float %1442
  %1447 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1443, float %1444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1448 = select i1 %202, float 0.000000e+00, float %1442
  %1449 = select i1 %202, float %1447, float %1443
  %1450 = select i1 %202, float 0.000000e+00, float %1444
  br label %1451

; <label>:1451                                    ; preds = %1441, %1403
  %1452 = phi float [ %1448, %1441 ], [ 0.000000e+00, %1403 ]
  %1453 = phi float [ %1449, %1441 ], [ 0.000000e+00, %1403 ]
  %1454 = phi float [ %1450, %1441 ], [ 0.000000e+00, %1403 ]
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 1024
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1489, label %1459

; <label>:1459                                    ; preds = %1451
  %1460 = add i32 %32, 168
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = fmul fast float %1464, 0x3F70101020000000
  %1466 = lshr i32 %1462, 8
  %1467 = and i32 %1466, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = fmul fast float %1468, 0x3F70101020000000
  %1470 = lshr i32 %1462, 16
  %1471 = and i32 %1470, 255
  %1472 = uitofp i32 %1471 to float
  %1473 = fmul fast float %1472, 0x3F70101020000000
  %1474 = fmul fast float %1465, %1465
  %1475 = fmul fast float %1469, %1469
  %1476 = fmul fast float %1473, %1473
  %1477 = add i32 %32, 460
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %73, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = extractvalue %dx.types.ResRet.f32 %1482, 1
  %1485 = extractvalue %dx.types.ResRet.f32 %1482, 2
  %1486 = fmul fast float %1474, %1483
  %1487 = fmul fast float %1475, %1484
  %1488 = fmul fast float %1476, %1485
  br label %1489

; <label>:1489                                    ; preds = %1459, %1451
  %1490 = phi float [ %1486, %1459 ], [ 0.000000e+00, %1451 ]
  %1491 = phi float [ %1487, %1459 ], [ 0.000000e+00, %1451 ]
  %1492 = phi float [ %1488, %1459 ], [ 0.000000e+00, %1451 ]
  %1493 = fcmp fast ogt float %1490, 0.000000e+00
  %1494 = fcmp fast ogt float %1491, 0.000000e+00
  %1495 = fcmp fast ogt float %1492, 0.000000e+00
  %1496 = call float @dx.op.unary.f32(i32 23, float %1490)  ; Log(value)
  %1497 = call float @dx.op.unary.f32(i32 23, float %1491)  ; Log(value)
  %1498 = call float @dx.op.unary.f32(i32 23, float %1492)  ; Log(value)
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = lshr i32 %1500, 7
  %1502 = and i32 %1501, 32752
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = fmul fast float %1496, 0xBFE62E4300000000
  %1505 = fmul fast float %1504, %1503
  %1506 = fmul fast float %1497, 0xBFE62E4300000000
  %1507 = fmul fast float %1506, %1503
  %1508 = fmul fast float %1498, 0xBFE62E4300000000
  %1509 = fmul fast float %1508, %1503
  %1510 = select i1 %1493, float %1505, float 1.270000e+02
  %1511 = select i1 %1494, float %1507, float 1.270000e+02
  %1512 = select i1 %1495, float %1509, float 1.270000e+02
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 10240
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1537, label %1517

; <label>:1517                                    ; preds = %1489
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 2048
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1537, label %1522

; <label>:1522                                    ; preds = %1517
  %1523 = add i32 %32, 476
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = add i32 %1525, 0
  %1527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1527, %dx.types.Handle %73, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 3
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = shl i32 %1531, 4
  %1533 = and i32 %1532, 32752
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = fmul fast float %1534, %1529
  %1536 = call float @dx.op.binary.f32(i32 35, float %1535, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1537

; <label>:1537                                    ; preds = %1522, %1517, %1489
  %1538 = phi float [ %1536, %1522 ], [ 0x3F70101020000000, %1517 ], [ 0x3F70101020000000, %1489 ]
  %1539 = add i32 %32, 112
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = lshr i32 %1541, 8
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1324, float %1325, float %1326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = fmul fast float %1546, %1547
  %1549 = fadd fast float %1548, %1543
  %1550 = fmul fast float %1549, 0x3F70101020000000
  %1551 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  br i1 %923, label %1552, label %1587

; <label>:1552                                    ; preds = %1537
  %1553 = fmul fast float %1538, 2.000000e+00
  %1554 = fcmp fast olt float %1510, 1.270000e+02
  %1555 = fcmp fast olt float %1511, 1.270000e+02
  %1556 = fcmp fast olt float %1512, 1.270000e+02
  %1557 = fmul fast float %1510, 0xBFF7154760000000
  %1558 = fmul fast float %1557, %1553
  %1559 = fmul fast float %1511, 0xBFF7154760000000
  %1560 = fmul fast float %1559, %1553
  %1561 = fmul fast float %1512, 0xBFF7154760000000
  %1562 = fmul fast float %1561, %1553
  %1563 = call float @dx.op.unary.f32(i32 21, float %1558)  ; Exp(value)
  %1564 = call float @dx.op.unary.f32(i32 21, float %1560)  ; Exp(value)
  %1565 = call float @dx.op.unary.f32(i32 21, float %1562)  ; Exp(value)
  %1566 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1567 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1568 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1569 = fadd fast float %1566, -1.000000e+00
  %1570 = select i1 %1554, float %1569, float -1.000000e+00
  %1571 = fadd fast float %1567, -1.000000e+00
  %1572 = select i1 %1555, float %1571, float -1.000000e+00
  %1573 = fadd fast float %1568, -1.000000e+00
  %1574 = select i1 %1556, float %1573, float -1.000000e+00
  %1575 = fmul fast float %1570, %1104
  %1576 = fmul fast float %1572, %1104
  %1577 = fmul fast float %1574, %1104
  %1578 = fadd fast float %1575, 1.000000e+00
  %1579 = fadd fast float %1576, 1.000000e+00
  %1580 = fadd fast float %1577, 1.000000e+00
  %1581 = fmul fast float %1578, %911
  %1582 = fmul fast float %1579, %912
  %1583 = fmul fast float %1580, %913
  %1584 = fmul fast float %1578, %914
  %1585 = fmul fast float %1579, %915
  %1586 = fmul fast float %1580, %916
  br label %1587

; <label>:1587                                    ; preds = %1552, %1537
  %1588 = phi float [ %1581, %1552 ], [ %911, %1537 ]
  %1589 = phi float [ %1582, %1552 ], [ %912, %1537 ]
  %1590 = phi float [ %1583, %1552 ], [ %913, %1537 ]
  %1591 = phi float [ %1584, %1552 ], [ %914, %1537 ]
  %1592 = phi float [ %1585, %1552 ], [ %915, %1537 ]
  %1593 = phi float [ %1586, %1552 ], [ %916, %1537 ]
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 3
  %1597 = icmp eq i32 %1596, 3
  br i1 %1597, label %1676, label %1598

; <label>:1598                                    ; preds = %1587
  %1599 = and i32 %1595, 16
  %1600 = icmp ne i32 %1599, 0
  %1601 = select i1 %1600, float %1104, float 0.000000e+00
  %1602 = icmp eq i32 %1596, 0
  br i1 %1602, label %1603, label %1631

; <label>:1603                                    ; preds = %1598
  %1604 = and i32 %1595, 64
  %1605 = icmp ne i32 %1604, 0
  %1606 = select i1 %1605, float %1104, float 0.000000e+00
  %1607 = fsub fast float %1324, %1588
  %1608 = fsub fast float %1325, %1589
  %1609 = fsub fast float %1326, %1590
  %1610 = fmul fast float %1601, %1607
  %1611 = fmul fast float %1601, %1608
  %1612 = fmul fast float %1601, %1609
  %1613 = fadd fast float %1610, %1588
  %1614 = fadd fast float %1611, %1589
  %1615 = fadd fast float %1612, %1590
  %1616 = fsub fast float %1310, %917
  %1617 = fmul fast float %1601, %1616
  %1618 = fadd fast float %1617, %917
  %1619 = fsub fast float %1452, %1591
  %1620 = fsub fast float %1453, %1592
  %1621 = fsub fast float %1454, %1593
  %1622 = fmul fast float %1606, %1619
  %1623 = fmul fast float %1606, %1620
  %1624 = fmul fast float %1606, %1621
  %1625 = fadd fast float %1622, %1591
  %1626 = fadd fast float %1623, %1592
  %1627 = fadd fast float %1624, %1593
  %1628 = fsub fast float %1551, %921
  %1629 = fmul fast float %1601, %1628
  %1630 = fadd fast float %1629, %921
  br label %1676

; <label>:1631                                    ; preds = %1598
  %1632 = icmp eq i32 %1596, 1
  br i1 %1632, label %1633, label %1646

; <label>:1633                                    ; preds = %1631
  %1634 = fadd fast float %1324, -1.000000e+00
  %1635 = fadd fast float %1325, -1.000000e+00
  %1636 = fadd fast float %1326, -1.000000e+00
  %1637 = fmul fast float %1601, %1634
  %1638 = fmul fast float %1601, %1635
  %1639 = fmul fast float %1601, %1636
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fadd fast float %1639, 1.000000e+00
  %1643 = fmul fast float %1640, %1588
  %1644 = fmul fast float %1641, %1589
  %1645 = fmul fast float %1642, %1590
  br label %1676

; <label>:1646                                    ; preds = %1631
  %1647 = icmp eq i32 %1596, 2
  br i1 %1647, label %1648, label %1676

; <label>:1648                                    ; preds = %1646
  %1649 = call float @dx.op.unary.f32(i32 24, float %1324)  ; Sqrt(value)
  %1650 = call float @dx.op.unary.f32(i32 24, float %1325)  ; Sqrt(value)
  %1651 = call float @dx.op.unary.f32(i32 24, float %1326)  ; Sqrt(value)
  %1652 = fadd fast float %1649, -5.000000e-01
  %1653 = fadd fast float %1650, -5.000000e-01
  %1654 = fadd fast float %1651, -5.000000e-01
  %1655 = fmul fast float %1652, %1601
  %1656 = fmul fast float %1653, %1601
  %1657 = fmul fast float %1654, %1601
  %1658 = fadd fast float %1655, 5.000000e-01
  %1659 = fadd fast float %1656, 5.000000e-01
  %1660 = fadd fast float %1657, 5.000000e-01
  %1661 = fmul fast float %1658, 2.000000e+00
  %1662 = fsub fast float 1.000000e+00, %1661
  %1663 = fmul fast float %1662, %1588
  %1664 = fadd fast float %1663, %1661
  %1665 = fmul fast float %1664, %1588
  %1666 = fmul fast float %1659, 2.000000e+00
  %1667 = fsub fast float 1.000000e+00, %1666
  %1668 = fmul fast float %1667, %1589
  %1669 = fadd fast float %1668, %1666
  %1670 = fmul fast float %1669, %1589
  %1671 = fmul fast float %1660, 2.000000e+00
  %1672 = fsub fast float 1.000000e+00, %1671
  %1673 = fmul fast float %1672, %1590
  %1674 = fadd fast float %1673, %1671
  %1675 = fmul fast float %1674, %1590
  br label %1676

; <label>:1676                                    ; preds = %1648, %1646, %1633, %1603, %1587
  %1677 = phi float [ %1588, %1587 ], [ %1665, %1648 ], [ %1588, %1646 ], [ %1643, %1633 ], [ %1613, %1603 ]
  %1678 = phi float [ %1589, %1587 ], [ %1670, %1648 ], [ %1589, %1646 ], [ %1644, %1633 ], [ %1614, %1603 ]
  %1679 = phi float [ %1590, %1587 ], [ %1675, %1648 ], [ %1590, %1646 ], [ %1645, %1633 ], [ %1615, %1603 ]
  %1680 = phi float [ %1591, %1587 ], [ %1591, %1648 ], [ %1591, %1646 ], [ %1591, %1633 ], [ %1625, %1603 ]
  %1681 = phi float [ %1592, %1587 ], [ %1592, %1648 ], [ %1592, %1646 ], [ %1592, %1633 ], [ %1626, %1603 ]
  %1682 = phi float [ %1593, %1587 ], [ %1593, %1648 ], [ %1593, %1646 ], [ %1593, %1633 ], [ %1627, %1603 ]
  %1683 = phi float [ %917, %1587 ], [ %917, %1648 ], [ %917, %1646 ], [ %917, %1633 ], [ %1618, %1603 ]
  %1684 = phi float [ %921, %1587 ], [ %921, %1648 ], [ %921, %1646 ], [ %921, %1633 ], [ %1630, %1603 ]
  %1685 = and i32 %1595, 12
  %1686 = icmp eq i32 %1685, 12
  br i1 %1686, label %1759, label %1687

; <label>:1687                                    ; preds = %1676
  %1688 = and i32 %1595, 2097184
  %1689 = icmp eq i32 %1688, 2097184
  %1690 = select i1 %1689, float %1104, float 0.000000e+00
  %1691 = and i32 %1595, 4194336
  %1692 = icmp eq i32 %1691, 4194336
  %1693 = select i1 %1692, float %1104, float 0.000000e+00
  %1694 = and i32 %1595, 8388640
  %1695 = icmp eq i32 %1694, 8388640
  %1696 = select i1 %1695, float %1104, float 0.000000e+00
  %1697 = icmp eq i32 %1685, 0
  br i1 %1697, label %1698, label %1711

; <label>:1698                                    ; preds = %1687
  %1699 = fsub fast float %1405, %909
  %1700 = fsub fast float %1406, %910
  %1701 = fmul fast float %1690, %1699
  %1702 = fmul fast float %1690, %1700
  %1703 = fadd fast float %1701, %909
  %1704 = fadd fast float %1702, %910
  %1705 = fsub fast float %1407, %920
  %1706 = fmul fast float %1693, %1705
  %1707 = fadd fast float %1706, %920
  %1708 = fsub fast float %1404, %919
  %1709 = fmul fast float %1696, %1708
  %1710 = fadd fast float %1709, %919
  br label %1759

; <label>:1711                                    ; preds = %1687
  %1712 = icmp eq i32 %1685, 4
  br i1 %1712, label %1713, label %1745

; <label>:1713                                    ; preds = %1711
  %1714 = fmul fast float %1690, %1405
  %1715 = fmul fast float %1690, %1406
  %1716 = fadd fast float %1714, %909
  %1717 = fadd fast float %1715, %910
  %1718 = call float @dx.op.binary.f32(i32 36, float %920, float %1407)  ; FMin(a,b)
  %1719 = fsub fast float %1718, %920
  %1720 = fmul fast float %1719, %1693
  %1721 = fadd fast float %1720, %920
  %1722 = fadd fast float %1404, %919
  %1723 = fmul fast float %1722, 0x3FF337FAE0000000
  %1724 = fmul fast float %919, %919
  %1725 = fmul fast float %1404, %1404
  %1726 = fadd fast float %1725, %1724
  %1727 = fmul fast float %1726, 0x3FE5152B00000000
  %1728 = fmul fast float %919, 0xBFCC1F85E0000000
  %1729 = fmul fast float %1728, %1404
  %1730 = fadd fast float %1729, 0xBFE1363700000000
  %1731 = fadd fast float %1730, %1723
  %1732 = fsub fast float %1731, %1727
  %1733 = fmul fast float %1722, 0x3FBA6F0D00000000
  %1734 = fmul fast float %1726, 0x3FD0432880000000
  %1735 = fmul fast float %919, 0xBFEF110800000000
  %1736 = fmul fast float %1735, %1404
  %1737 = fadd fast float %1736, 1.000000e+00
  %1738 = fsub fast float %1737, %1733
  %1739 = fadd fast float %1738, %1734
  %1740 = fdiv fast float %1732, %1739
  %1741 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  %1742 = fsub fast float %1741, %919
  %1743 = fmul fast float %1742, %1696
  %1744 = fadd fast float %1743, %919
  br label %1759

; <label>:1745                                    ; preds = %1711
  %1746 = icmp eq i32 %1685, 8
  br i1 %1746, label %1747, label %1759

; <label>:1747                                    ; preds = %1745
  %1748 = fmul fast float %1690, %1405
  %1749 = fmul fast float %1690, %1406
  %1750 = fadd fast float %1748, %909
  %1751 = fadd fast float %1749, %910
  %1752 = call float @dx.op.binary.f32(i32 36, float %920, float %1407)  ; FMin(a,b)
  %1753 = fsub fast float %1752, %920
  %1754 = fmul fast float %1753, %1693
  %1755 = fadd fast float %1754, %920
  %1756 = fsub fast float %1404, %919
  %1757 = fmul fast float %1696, %1756
  %1758 = fadd fast float %1757, %919
  br label %1759

; <label>:1759                                    ; preds = %1747, %1745, %1713, %1698, %1676, %1103, %922, %908
  %1760 = phi float [ %909, %1676 ], [ %909, %1103 ], [ %909, %908 ], [ %1750, %1747 ], [ %909, %1745 ], [ %1716, %1713 ], [ %1703, %1698 ], [ %909, %922 ]
  %1761 = phi float [ %910, %1676 ], [ %910, %1103 ], [ %910, %908 ], [ %1751, %1747 ], [ %910, %1745 ], [ %1717, %1713 ], [ %1704, %1698 ], [ %910, %922 ]
  %1762 = phi float [ %1677, %1676 ], [ %911, %1103 ], [ %911, %908 ], [ %1677, %1747 ], [ %1677, %1745 ], [ %1677, %1713 ], [ %1677, %1698 ], [ %911, %922 ]
  %1763 = phi float [ %1678, %1676 ], [ %912, %1103 ], [ %912, %908 ], [ %1678, %1747 ], [ %1678, %1745 ], [ %1678, %1713 ], [ %1678, %1698 ], [ %912, %922 ]
  %1764 = phi float [ %1679, %1676 ], [ %913, %1103 ], [ %913, %908 ], [ %1679, %1747 ], [ %1679, %1745 ], [ %1679, %1713 ], [ %1679, %1698 ], [ %913, %922 ]
  %1765 = phi float [ %1680, %1676 ], [ %914, %1103 ], [ %914, %908 ], [ %1680, %1747 ], [ %1680, %1745 ], [ %1680, %1713 ], [ %1680, %1698 ], [ %914, %922 ]
  %1766 = phi float [ %1681, %1676 ], [ %915, %1103 ], [ %915, %908 ], [ %1681, %1747 ], [ %1681, %1745 ], [ %1681, %1713 ], [ %1681, %1698 ], [ %915, %922 ]
  %1767 = phi float [ %1682, %1676 ], [ %916, %1103 ], [ %916, %908 ], [ %1682, %1747 ], [ %1682, %1745 ], [ %1682, %1713 ], [ %1682, %1698 ], [ %916, %922 ]
  %1768 = phi float [ %1683, %1676 ], [ %917, %1103 ], [ %917, %908 ], [ %1683, %1747 ], [ %1683, %1745 ], [ %1683, %1713 ], [ %1683, %1698 ], [ %917, %922 ]
  %1769 = phi float [ %919, %1676 ], [ %919, %1103 ], [ %919, %908 ], [ %1758, %1747 ], [ %919, %1745 ], [ %1744, %1713 ], [ %1710, %1698 ], [ %919, %922 ]
  %1770 = phi float [ %920, %1676 ], [ %920, %1103 ], [ %920, %908 ], [ %1755, %1747 ], [ %920, %1745 ], [ %1721, %1713 ], [ %1707, %1698 ], [ %920, %922 ]
  %1771 = phi float [ %1684, %1676 ], [ %921, %1103 ], [ %921, %908 ], [ %1684, %1747 ], [ %1684, %1745 ], [ %1684, %1713 ], [ %1684, %1698 ], [ %921, %922 ]
  br i1 %388, label %2609, label %1772

; <label>:1772                                    ; preds = %1759
  %1773 = icmp ult i32 %441, 3
  %1774 = add i32 %32, 56
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = add i32 %32, 60
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = or i32 %1779, %1776
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %2609, label %1782

; <label>:1782                                    ; preds = %1772
  %1783 = and i32 %1776, 262144
  %1784 = icmp ne i32 %1783, 0
  %1785 = select i1 %1784, float %37, float 1.000000e+00
  %1786 = select i1 %1784, float %38, float 0.000000e+00
  %1787 = select i1 %1784, float %39, float 0.000000e+00
  %1788 = select i1 %1784, float %40, float 1.000000e+00
  %1789 = select i1 %1784, float %41, float %64
  %1790 = select i1 %1784, float %42, float %65
  %1791 = add i32 %32, 316
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = lshr i32 %1793, 16
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = fmul fast float %1795, 0x3F50624DE0000000
  %1797 = add i32 %32, 120
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = lshr i32 %1799, 16
  %1801 = and i32 %1800, 255
  %1802 = lshr i32 %1799, 24
  %1803 = add i32 %32, 324
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = and i32 %1805, 65535
  %1807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1806)  ; LegacyF16ToF32(value)
  %1808 = lshr i32 %1805, 16
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = add i32 %32, 64
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = lshr i32 %1812, 22
  %1814 = shl nuw nsw i32 %1813, 5
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = shl i32 %1812, 4
  %1817 = and i32 %1816, 32752
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = lshr i32 %1812, 7
  %1820 = and i32 %1819, 32752
  %1821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1820)  ; LegacyF16ToF32(value)
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 3
  %1824 = fmul fast float %1823, 1.000000e+03
  %1825 = fmul fast float %338, %1824
  %1826 = call float @dx.op.unary.f32(i32 22, float %1825)  ; Frc(value)
  %1827 = fadd fast float %1826, %328
  %1828 = fmul fast float %339, %1824
  %1829 = call float @dx.op.unary.f32(i32 22, float %1828)  ; Frc(value)
  %1830 = fadd fast float %1829, %330
  %1831 = fmul fast float %1796, %1824
  %1832 = call float @dx.op.unary.f32(i32 22, float %1831)  ; Frc(value)
  %1833 = fmul fast float %1832, 0x401921FB60000000
  %1834 = fadd fast float %1833, %1815
  %1835 = call float @dx.op.unary.f32(i32 13, float %1834)  ; Sin(value)
  %1836 = call float @dx.op.unary.f32(i32 12, float %1834)  ; Cos(value)
  %1837 = fsub fast float -0.000000e+00, %1835
  %1838 = fadd fast float %1789, -5.000000e-01
  %1839 = fadd fast float %1790, -5.000000e-01
  %1840 = fmul fast float %1807, %1838
  %1841 = fmul fast float %1809, %1839
  %1842 = fadd fast float %1840, 5.000000e-01
  %1843 = fadd fast float %1841, 5.000000e-01
  %1844 = fmul fast float %1818, %1842
  %1845 = fmul fast float %1821, %1843
  %1846 = fmul fast float %1836, %1844
  %1847 = call float @dx.op.tertiary.f32(i32 46, float %1837, float %1845, float %1846)  ; FMad(a,b,c)
  %1848 = fmul fast float %1835, %1844
  %1849 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1845, float %1848)  ; FMad(a,b,c)
  %1850 = fadd fast float %1827, %1847
  %1851 = fadd fast float %1830, %1849
  %1852 = icmp ugt i32 %1801, 1
  %1853 = icmp ugt i32 %1799, 33554431
  %1854 = or i1 %1853, %1852
  br i1 %1854, label %1855, label %1880

; <label>:1855                                    ; preds = %1782
  %1856 = add i32 %32, 260
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = lshr i32 %1858, 16
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = fmul fast float %1823, %1860
  %1862 = call float @dx.op.unary.f32(i32 22, float %1861)  ; Frc(value)
  %1863 = mul nuw nsw i32 %1801, %1802
  %1864 = uitofp i32 %1863 to float
  %1865 = fmul fast float %1862, %1864
  %1866 = call float @dx.op.unary.f32(i32 27, float %1865)  ; Round_ni(value)
  %1867 = fptoui float %1866 to i32
  %1868 = urem i32 %1867, %1801
  %1869 = udiv i32 %1867, %1802
  %1870 = call float @dx.op.unary.f32(i32 22, float %1850)  ; Frc(value)
  %1871 = call float @dx.op.unary.f32(i32 22, float %1851)  ; Frc(value)
  %1872 = uitofp i32 %1868 to float
  %1873 = uitofp i32 %1869 to float
  %1874 = fadd fast float %1870, %1872
  %1875 = fadd fast float %1871, %1873
  %1876 = uitofp i32 %1801 to float
  %1877 = uitofp i32 %1802 to float
  %1878 = fdiv fast float %1874, %1876
  %1879 = fdiv fast float %1875, %1877
  br label %1880

; <label>:1880                                    ; preds = %1855, %1782
  %1881 = phi float [ %1878, %1855 ], [ %1850, %1782 ]
  %1882 = phi float [ %1879, %1855 ], [ %1851, %1782 ]
  %1883 = and i32 %1776, 256
  %1884 = icmp eq i32 %1883, 0
  br i1 %1884, label %1931, label %1885

; <label>:1885                                    ; preds = %1880
  %1886 = add i32 %32, 432
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = add i32 %1888, 0
  %1890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1890, %dx.types.Handle %73, float %1881, float %1882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = add i32 %32, 132
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = shl i32 %1895, 4
  %1897 = and i32 %1896, 32752
  %1898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1897)  ; LegacyF16ToF32(value)
  %1899 = lshr i32 %1895, 7
  %1900 = and i32 %1899, 32752
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = fsub fast float 1.000000e+00, %437
  %1903 = call float @dx.op.binary.f32(i32 35, float %1902, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1904 = bitcast float %437 to i32
  %1905 = sitofp i32 %1904 to float
  %1906 = fadd fast float %1905, 0xC1CFBF8940000000
  %1907 = fmul fast float %1901, %1906
  %1908 = fadd fast float %1907, 0x41CFBF8940000000
  %1909 = fptosi float %1908 to i32
  %1910 = bitcast i32 %1909 to float
  %1911 = bitcast float %1903 to i32
  %1912 = sitofp i32 %1911 to float
  %1913 = fadd fast float %1912, 0xC1CFBF8940000000
  %1914 = fmul fast float %1913, %1901
  %1915 = fadd fast float %1914, 0x41CFBF8940000000
  %1916 = fptosi float %1915 to i32
  %1917 = bitcast i32 %1916 to float
  %1918 = fmul fast float %1910, %1898
  %1919 = fmul fast float %1917, %1898
  %1920 = fsub fast float %1903, %1918
  %1921 = fadd fast float %1919, %1903
  %1922 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1923 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1924 = fsub fast float %1892, %1922
  %1925 = fsub fast float %1923, %1922
  %1926 = bitcast float %1925 to i32
  %1927 = sub nsw i32 2129859010, %1926
  %1928 = bitcast i32 %1927 to float
  %1929 = fmul fast float %1928, %1924
  %1930 = call float @dx.op.unary.f32(i32 7, float %1929)  ; Saturate(value)
  br label %1931

; <label>:1931                                    ; preds = %1885, %1880
  %1932 = phi float [ %1930, %1885 ], [ %437, %1880 ]
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = and i32 %1934, 128
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %1953, label %1937

; <label>:1937                                    ; preds = %1931
  %1938 = add i32 %32, 416
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = add i32 %1940, 0
  %1942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1942, %dx.types.Handle %73, float %1881, float %1882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = and i32 %1946, 524288
  %1948 = icmp ne i32 %1947, 0
  %1949 = fcmp fast ogt float %1944, 0x3FE0101020000000
  %1950 = select i1 %1949, float 1.000000e+00, float 0.000000e+00
  %1951 = select i1 %1948, float %1950, float %1944
  %1952 = fmul fast float %1951, %1932
  br label %1953

; <label>:1953                                    ; preds = %1937, %1931
  %1954 = phi float [ %1952, %1937 ], [ %1932, %1931 ]
  %1955 = fcmp fast ult float %1954, 0x3F70101020000000
  br i1 %1955, label %2609, label %1956

; <label>:1956                                    ; preds = %1953
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = and i32 %1958, 16
  %1960 = icmp eq i32 %1959, 0
  br i1 %1960, label %2159, label %1961

; <label>:1961                                    ; preds = %1956
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = add i32 %32, 368
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = add i32 %1966, 0
  %1968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1969 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1968, %dx.types.Handle %72, float %1881, float %1882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.ResRet.f32 %1969, 1
  %1972 = extractvalue %dx.types.ResRet.f32 %1969, 2
  %1973 = extractvalue %dx.types.ResRet.f32 %1969, 3
  %1974 = and i32 %1963, 255
  %1975 = uitofp i32 %1974 to float
  %1976 = lshr i32 %1963, 8
  %1977 = and i32 %1976, 255
  %1978 = uitofp i32 %1977 to float
  %1979 = fmul fast float %1973, %1975
  %1980 = fadd fast float %1979, %1978
  %1981 = fmul fast float %1980, 0x3F70101000000000
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 512
  %1985 = icmp eq i32 %1984, 0
  br i1 %1985, label %1994, label %1986

; <label>:1986                                    ; preds = %1961
  %1987 = add i32 %32, 448
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = add i32 %1989, 0
  %1991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1991, %dx.types.Handle %73, float %1881, float %1882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  br label %1994

; <label>:1994                                    ; preds = %1986, %1961
  %1995 = phi float [ %1993, %1986 ], [ 1.000000e+00, %1961 ]
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = and i32 %1997, 33554432
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2106, label %2000

; <label>:2000                                    ; preds = %1994
  %2001 = add i32 %32, 256
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = and i32 %2003, 65535
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = lshr i32 %2003, 16
  %2007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2006)  ; LegacyF16ToF32(value)
  %2008 = add i32 %32, 260
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %2010, 65535
  %2012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2011)  ; LegacyF16ToF32(value)
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = lshr i32 %2014, 24
  %2016 = uitofp i32 %2015 to float
  %2017 = fmul fast float %2016, 0x3F70101020000000
  %2018 = and i32 %2014, 255
  %2019 = uitofp i32 %2018 to float
  %2020 = fmul fast float %2019, 0x3F70101020000000
  %2021 = lshr i32 %2014, 8
  %2022 = and i32 %2021, 255
  %2023 = uitofp i32 %2022 to float
  %2024 = fmul fast float %2023, 0x3F70101020000000
  %2025 = lshr i32 %2014, 16
  %2026 = and i32 %2025, 255
  %2027 = uitofp i32 %2026 to float
  %2028 = fmul fast float %2027, 0x3F70101020000000
  %2029 = add i32 %32, 252
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = lshr i32 %2031, 24
  %2033 = uitofp i32 %2032 to float
  %2034 = fmul fast float %2033, 0x3F70101020000000
  %2035 = and i32 %2031, 255
  %2036 = uitofp i32 %2035 to float
  %2037 = fmul fast float %2036, 0x3F70101020000000
  %2038 = lshr i32 %2031, 8
  %2039 = and i32 %2038, 255
  %2040 = uitofp i32 %2039 to float
  %2041 = fmul fast float %2040, 0x3F70101020000000
  %2042 = lshr i32 %2031, 16
  %2043 = and i32 %2042, 255
  %2044 = uitofp i32 %2043 to float
  %2045 = fmul fast float %2044, 0x3F70101020000000
  %2046 = bitcast float %1970 to i32
  %2047 = ashr i32 %2046, 1
  %2048 = sub nsw i32 1597463174, %2047
  %2049 = bitcast i32 %2048 to float
  %2050 = fmul fast float %1970, 5.000000e-01
  %2051 = fmul fast float %2049, %2049
  %2052 = fmul fast float %2051, %2050
  %2053 = fsub fast float 1.500000e+00, %2052
  %2054 = fmul fast float %2049, %1970
  %2055 = fmul fast float %2054, %2053
  %2056 = bitcast float %1971 to i32
  %2057 = ashr i32 %2056, 1
  %2058 = sub nsw i32 1597463174, %2057
  %2059 = bitcast i32 %2058 to float
  %2060 = fmul fast float %1971, 5.000000e-01
  %2061 = fmul fast float %2059, %2059
  %2062 = fmul fast float %2061, %2060
  %2063 = fsub fast float 1.500000e+00, %2062
  %2064 = fmul fast float %2059, %1971
  %2065 = fmul fast float %2064, %2063
  %2066 = bitcast float %1972 to i32
  %2067 = ashr i32 %2066, 1
  %2068 = sub nsw i32 1597463174, %2067
  %2069 = bitcast i32 %2068 to float
  %2070 = fmul fast float %1972, 5.000000e-01
  %2071 = fmul fast float %2069, %2069
  %2072 = fmul fast float %2071, %2070
  %2073 = fsub fast float 1.500000e+00, %2072
  %2074 = fmul fast float %2069, %1972
  %2075 = fmul fast float %2074, %2073
  %2076 = fsub fast float %2055, %2037
  %2077 = fsub fast float %2065, %2041
  %2078 = fsub fast float %2075, %2045
  %2079 = fmul fast float %2076, %2005
  %2080 = fmul fast float %2077, %2007
  %2081 = fmul fast float %2078, %2012
  %2082 = fadd fast float %2079, %2020
  %2083 = fadd fast float %2080, %2024
  %2084 = fadd fast float %2081, %2028
  %2085 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2086 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2087 = call float @dx.op.unary.f32(i32 7, float %2084)  ; Saturate(value)
  %2088 = fmul fast float %2085, %2085
  %2089 = fmul fast float %2086, %2086
  %2090 = fmul fast float %2087, %2087
  %2091 = fsub fast float %2088, %1970
  %2092 = fsub fast float %2089, %1971
  %2093 = fsub fast float %2090, %1972
  %2094 = fmul fast float %2091, %1995
  %2095 = fmul fast float %2092, %1995
  %2096 = fmul fast float %2093, %1995
  %2097 = fadd fast float %2094, %1970
  %2098 = fadd fast float %2095, %1971
  %2099 = fadd fast float %2096, %1972
  %2100 = fadd fast float %2017, %1981
  %2101 = fsub fast float %2100, %2034
  %2102 = call float @dx.op.unary.f32(i32 7, float %2101)  ; Saturate(value)
  %2103 = fsub fast float %2102, %1981
  %2104 = fmul fast float %2103, %1995
  %2105 = fadd fast float %2104, %1981
  br label %2159

; <label>:2106                                    ; preds = %1994
  %2107 = and i32 %1997, 134217728
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2143, label %2109

; <label>:2109                                    ; preds = %2106
  %2110 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2111 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %2112 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %2113 = fadd fast float %2110, -5.000000e-01
  %2114 = fadd fast float %2111, -5.000000e-01
  %2115 = fadd fast float %2112, -5.000000e-01
  %2116 = fmul fast float %2113, %1995
  %2117 = fmul fast float %2114, %1995
  %2118 = fmul fast float %2115, %1995
  %2119 = fadd fast float %2116, 5.000000e-01
  %2120 = fadd fast float %2117, 5.000000e-01
  %2121 = fadd fast float %2118, 5.000000e-01
  %2122 = call float @dx.op.unary.f32(i32 24, float %1970)  ; Sqrt(value)
  %2123 = call float @dx.op.unary.f32(i32 24, float %1971)  ; Sqrt(value)
  %2124 = call float @dx.op.unary.f32(i32 24, float %1972)  ; Sqrt(value)
  %2125 = fmul fast float %2119, 2.000000e+00
  %2126 = fsub fast float 1.000000e+00, %2125
  %2127 = fmul fast float %2126, %2122
  %2128 = fadd fast float %2127, %2125
  %2129 = fmul fast float %2128, %2122
  %2130 = fmul fast float %2120, 2.000000e+00
  %2131 = fsub fast float 1.000000e+00, %2130
  %2132 = fmul fast float %2131, %2123
  %2133 = fadd fast float %2132, %2130
  %2134 = fmul fast float %2133, %2123
  %2135 = fmul fast float %2121, 2.000000e+00
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = fmul fast float %2136, %2124
  %2138 = fadd fast float %2137, %2135
  %2139 = fmul fast float %2138, %2124
  %2140 = fmul fast float %2129, %2129
  %2141 = fmul fast float %2134, %2134
  %2142 = fmul fast float %2139, %2139
  br label %2159

; <label>:2143                                    ; preds = %2106
  %2144 = fmul fast float %315, %315
  %2145 = fmul fast float %319, %319
  %2146 = fmul fast float %323, %323
  %2147 = fadd fast float %2144, -1.000000e+00
  %2148 = fadd fast float %2145, -1.000000e+00
  %2149 = fadd fast float %2146, -1.000000e+00
  %2150 = fmul fast float %1995, %2147
  %2151 = fmul fast float %1995, %2148
  %2152 = fmul fast float %1995, %2149
  %2153 = fadd fast float %2150, 1.000000e+00
  %2154 = fadd fast float %2151, 1.000000e+00
  %2155 = fadd fast float %2152, 1.000000e+00
  %2156 = fmul fast float %2153, %1970
  %2157 = fmul fast float %2154, %1971
  %2158 = fmul fast float %2155, %1972
  br label %2159

; <label>:2159                                    ; preds = %2143, %2109, %2000, %1956
  %2160 = phi float [ %2105, %2000 ], [ %1981, %2109 ], [ %1981, %2143 ], [ 0x3FA23C0BE0000000, %1956 ]
  %2161 = phi float [ %2097, %2000 ], [ %2140, %2109 ], [ %2156, %2143 ], [ 1.000000e+00, %1956 ]
  %2162 = phi float [ %2098, %2000 ], [ %2141, %2109 ], [ %2157, %2143 ], [ 1.000000e+00, %1956 ]
  %2163 = phi float [ %2099, %2000 ], [ %2142, %2109 ], [ %2158, %2143 ], [ 1.000000e+00, %1956 ]
  %2164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.i32 %2164, 1
  %2166 = and i32 %2165, 1
  %2167 = icmp ne i32 %2166, 0
  %2168 = add i32 %32, 356
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 32
  %2172 = icmp ne i32 %2171, 0
  %2173 = and i1 %2167, %2172
  %2174 = select i1 %2173, float 1.000000e+00, float %2161
  %2175 = select i1 %2173, float 0x3FD3333340000000, float %2162
  %2176 = select i1 %2173, float 0x3FD3333340000000, float %2163
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = and i32 %2178, 32
  %2180 = icmp eq i32 %2179, 0
  br i1 %2180, label %2253, label %2181

; <label>:2181                                    ; preds = %2159
  %2182 = add i32 %32, 124
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2182, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = add i32 %32, 384
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = add i32 %2187, 0
  %2189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2189, %dx.types.Handle %72, float %1881, float %1882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2191 = extractvalue %dx.types.ResRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.ResRet.f32 %2190, 1
  %2193 = extractvalue %dx.types.ResRet.f32 %2190, 2
  %2194 = extractvalue %dx.types.ResRet.f32 %2190, 3
  %2195 = and i32 %2184, 255
  %2196 = uitofp i32 %2195 to float
  %2197 = lshr i32 %2184, 8
  %2198 = and i32 %2197, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = lshr i32 %2184, 16
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = fmul fast float %2202, 0x3F70101000000000
  %2204 = fmul fast float %2191, %2196
  %2205 = fadd fast float %2204, %2199
  %2206 = fmul fast float %2205, 0x3F70101000000000
  %2207 = fadd fast float %2192, -5.000000e-01
  %2208 = fadd fast float %2194, -5.000000e-01
  %2209 = fmul fast float %2207, %2203
  %2210 = fmul fast float %2208, %2203
  %2211 = fadd fast float %2209, 5.000000e-01
  %2212 = fadd fast float %2210, 5.000000e-01
  %2213 = fmul fast float %2211, 2.000000e+00
  %2214 = fadd fast float %2213, -1.000000e+00
  %2215 = fmul fast float %2212, 2.000000e+00
  %2216 = fadd fast float %2215, -1.000000e+00
  %2217 = fadd fast float %2214, %2216
  %2218 = fmul fast float %2217, 5.000000e-01
  %2219 = fsub fast float %2214, %2216
  %2220 = fmul fast float %2219, 5.000000e-01
  %2221 = call float @dx.op.unary.f32(i32 6, float %2218)  ; FAbs(value)
  %2222 = fsub fast float 1.000000e+00, %2221
  %2223 = call float @dx.op.unary.f32(i32 6, float %2220)  ; FAbs(value)
  %2224 = fsub fast float %2222, %2223
  %2225 = call float @dx.op.dot3.f32(i32 55, float %2218, float %2220, float %2224, float %2218, float %2220, float %2224)  ; Dot3(ax,ay,az,bx,by,bz)
  %2226 = call float @dx.op.unary.f32(i32 25, float %2225)  ; Rsqrt(value)
  %2227 = fmul fast float %2218, %2226
  %2228 = fmul fast float %2220, %2226
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = and i32 %2230, 67108864
  %2232 = icmp eq i32 %2231, 0
  br i1 %2232, label %2249, label %2233

; <label>:2233                                    ; preds = %2181
  %2234 = add i32 %32, 312
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 65535
  %2238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2237)  ; LegacyF16ToF32(value)
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 65535
  %2242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2241)  ; LegacyF16ToF32(value)
  %2243 = lshr i32 %2236, 16
  %2244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2243)  ; LegacyF16ToF32(value)
  %2245 = fsub fast float %2206, %2244
  %2246 = fmul fast float %2245, %2238
  %2247 = fadd fast float %2246, %2242
  %2248 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  br label %2249

; <label>:2249                                    ; preds = %2233, %2181
  %2250 = phi float [ %2248, %2233 ], [ %2206, %2181 ]
  %2251 = call float @dx.op.dot2.f32(i32 54, float %2227, float %2228, float %1785, float %1786)  ; Dot2(ax,ay,bx,by)
  %2252 = call float @dx.op.dot2.f32(i32 54, float %2227, float %2228, float %1787, float %1788)  ; Dot2(ax,ay,bx,by)
  br label %2253

; <label>:2253                                    ; preds = %2249, %2159
  %2254 = phi float [ %2250, %2249 ], [ 0x3FD6666660000000, %2159 ]
  %2255 = phi float [ %2251, %2249 ], [ 0.000000e+00, %2159 ]
  %2256 = phi float [ %2252, %2249 ], [ 0.000000e+00, %2159 ]
  %2257 = phi float [ %2193, %2249 ], [ 1.000000e+00, %2159 ]
  %2258 = add i32 %32, 192
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = lshr i32 %2260, 22
  %2262 = shl nuw nsw i32 %2261, 5
  %2263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2262)  ; LegacyF16ToF32(value)
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 64
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2301, label %2268

; <label>:2268                                    ; preds = %2253
  %2269 = add i32 %32, 400
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = add i32 %2271, 0
  %2273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 131072
  %2277 = icmp eq i32 %2276, 0
  %2278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2273, %dx.types.Handle %72, float %1881, float %1882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.ResRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.ResRet.f32 %2278, 2
  %2282 = fmul fast float %2279, %303
  %2283 = fmul fast float %2280, %306
  %2284 = fmul fast float %2281, %309
  br i1 %2277, label %2291, label %2285

; <label>:2285                                    ; preds = %2268
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 0
  %2288 = fmul fast float %2287, %2282
  %2289 = fmul fast float %2287, %2283
  %2290 = fmul fast float %2287, %2284
  br label %2291

; <label>:2291                                    ; preds = %2285, %2268
  %2292 = phi float [ %2288, %2285 ], [ %2282, %2268 ]
  %2293 = phi float [ %2289, %2285 ], [ %2283, %2268 ]
  %2294 = phi float [ %2290, %2285 ], [ %2284, %2268 ]
  %2295 = fmul fast float %2292, %2263
  %2296 = select i1 %202, float %2295, float %2292
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2296, float %2293, float %2294, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = select i1 %202, float 0.000000e+00, float %2292
  %2299 = select i1 %202, float %2297, float %2293
  %2300 = select i1 %202, float 0.000000e+00, float %2294
  br label %2301

; <label>:2301                                    ; preds = %2291, %2253
  %2302 = phi float [ %2298, %2291 ], [ 0.000000e+00, %2253 ]
  %2303 = phi float [ %2299, %2291 ], [ 0.000000e+00, %2253 ]
  %2304 = phi float [ %2300, %2291 ], [ 0.000000e+00, %2253 ]
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 1024
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2339, label %2309

; <label>:2309                                    ; preds = %2301
  %2310 = add i32 %32, 184
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 255
  %2314 = uitofp i32 %2313 to float
  %2315 = fmul fast float %2314, 0x3F70101020000000
  %2316 = lshr i32 %2312, 8
  %2317 = and i32 %2316, 255
  %2318 = uitofp i32 %2317 to float
  %2319 = fmul fast float %2318, 0x3F70101020000000
  %2320 = lshr i32 %2312, 16
  %2321 = and i32 %2320, 255
  %2322 = uitofp i32 %2321 to float
  %2323 = fmul fast float %2322, 0x3F70101020000000
  %2324 = fmul fast float %2315, %2315
  %2325 = fmul fast float %2319, %2319
  %2326 = fmul fast float %2323, %2323
  %2327 = add i32 %32, 464
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = add i32 %2329, 0
  %2331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2332 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2331, %dx.types.Handle %73, float %1881, float %1882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = extractvalue %dx.types.ResRet.f32 %2332, 1
  %2335 = extractvalue %dx.types.ResRet.f32 %2332, 2
  %2336 = fmul fast float %2324, %2333
  %2337 = fmul fast float %2325, %2334
  %2338 = fmul fast float %2326, %2335
  br label %2339

; <label>:2339                                    ; preds = %2309, %2301
  %2340 = phi float [ %2336, %2309 ], [ 0.000000e+00, %2301 ]
  %2341 = phi float [ %2337, %2309 ], [ 0.000000e+00, %2301 ]
  %2342 = phi float [ %2338, %2309 ], [ 0.000000e+00, %2301 ]
  %2343 = fcmp fast ogt float %2340, 0.000000e+00
  %2344 = fcmp fast ogt float %2341, 0.000000e+00
  %2345 = fcmp fast ogt float %2342, 0.000000e+00
  %2346 = call float @dx.op.unary.f32(i32 23, float %2340)  ; Log(value)
  %2347 = call float @dx.op.unary.f32(i32 23, float %2341)  ; Log(value)
  %2348 = call float @dx.op.unary.f32(i32 23, float %2342)  ; Log(value)
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = lshr i32 %2350, 7
  %2352 = and i32 %2351, 32752
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = fmul fast float %2346, 0xBFE62E4300000000
  %2355 = fmul fast float %2354, %2353
  %2356 = fmul fast float %2347, 0xBFE62E4300000000
  %2357 = fmul fast float %2356, %2353
  %2358 = fmul fast float %2348, 0xBFE62E4300000000
  %2359 = fmul fast float %2358, %2353
  %2360 = select i1 %2343, float %2355, float 1.270000e+02
  %2361 = select i1 %2344, float %2357, float 1.270000e+02
  %2362 = select i1 %2345, float %2359, float 1.270000e+02
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = and i32 %2364, 10240
  %2366 = icmp eq i32 %2365, 0
  br i1 %2366, label %2387, label %2367

; <label>:2367                                    ; preds = %2339
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 2048
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2387, label %2372

; <label>:2372                                    ; preds = %2367
  %2373 = add i32 %32, 480
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = add i32 %2375, 0
  %2377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2377, %dx.types.Handle %73, float %1881, float %1882, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 3
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = shl i32 %2381, 4
  %2383 = and i32 %2382, 32752
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = fmul fast float %2384, %2379
  %2386 = call float @dx.op.binary.f32(i32 35, float %2385, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2387

; <label>:2387                                    ; preds = %2372, %2367, %2339
  %2388 = phi float [ %2386, %2372 ], [ 0x3F70101020000000, %2367 ], [ 0x3F70101020000000, %2339 ]
  %2389 = add i32 %32, 128
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 255
  %2393 = uitofp i32 %2392 to float
  %2394 = lshr i32 %2391, 8
  %2395 = and i32 %2394, 255
  %2396 = uitofp i32 %2395 to float
  %2397 = call float @dx.op.dot3.f32(i32 55, float %2174, float %2175, float %2176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2398 = fmul fast float %2396, %2397
  %2399 = fadd fast float %2398, %2393
  %2400 = fmul fast float %2399, 0x3F70101020000000
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  br i1 %1773, label %2402, label %2437

; <label>:2402                                    ; preds = %2387
  %2403 = fmul fast float %2388, 2.000000e+00
  %2404 = fcmp fast olt float %2360, 1.270000e+02
  %2405 = fcmp fast olt float %2361, 1.270000e+02
  %2406 = fcmp fast olt float %2362, 1.270000e+02
  %2407 = fmul fast float %2360, 0xBFF7154760000000
  %2408 = fmul fast float %2407, %2403
  %2409 = fmul fast float %2361, 0xBFF7154760000000
  %2410 = fmul fast float %2409, %2403
  %2411 = fmul fast float %2362, 0xBFF7154760000000
  %2412 = fmul fast float %2411, %2403
  %2413 = call float @dx.op.unary.f32(i32 21, float %2408)  ; Exp(value)
  %2414 = call float @dx.op.unary.f32(i32 21, float %2410)  ; Exp(value)
  %2415 = call float @dx.op.unary.f32(i32 21, float %2412)  ; Exp(value)
  %2416 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2417 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2418 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2419 = fadd fast float %2416, -1.000000e+00
  %2420 = select i1 %2404, float %2419, float -1.000000e+00
  %2421 = fadd fast float %2417, -1.000000e+00
  %2422 = select i1 %2405, float %2421, float -1.000000e+00
  %2423 = fadd fast float %2418, -1.000000e+00
  %2424 = select i1 %2406, float %2423, float -1.000000e+00
  %2425 = fmul fast float %2420, %1954
  %2426 = fmul fast float %2422, %1954
  %2427 = fmul fast float %2424, %1954
  %2428 = fadd fast float %2425, 1.000000e+00
  %2429 = fadd fast float %2426, 1.000000e+00
  %2430 = fadd fast float %2427, 1.000000e+00
  %2431 = fmul fast float %2428, %1762
  %2432 = fmul fast float %2429, %1763
  %2433 = fmul fast float %2430, %1764
  %2434 = fmul fast float %2428, %1765
  %2435 = fmul fast float %2429, %1766
  %2436 = fmul fast float %2430, %1767
  br label %2437

; <label>:2437                                    ; preds = %2402, %2387
  %2438 = phi float [ %2431, %2402 ], [ %1762, %2387 ]
  %2439 = phi float [ %2432, %2402 ], [ %1763, %2387 ]
  %2440 = phi float [ %2433, %2402 ], [ %1764, %2387 ]
  %2441 = phi float [ %2434, %2402 ], [ %1765, %2387 ]
  %2442 = phi float [ %2435, %2402 ], [ %1766, %2387 ]
  %2443 = phi float [ %2436, %2402 ], [ %1767, %2387 ]
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = and i32 %2445, 3
  %2447 = icmp eq i32 %2446, 3
  br i1 %2447, label %2526, label %2448

; <label>:2448                                    ; preds = %2437
  %2449 = and i32 %2445, 16
  %2450 = icmp ne i32 %2449, 0
  %2451 = select i1 %2450, float %1954, float 0.000000e+00
  %2452 = icmp eq i32 %2446, 0
  br i1 %2452, label %2453, label %2481

; <label>:2453                                    ; preds = %2448
  %2454 = and i32 %2445, 64
  %2455 = icmp ne i32 %2454, 0
  %2456 = select i1 %2455, float %1954, float 0.000000e+00
  %2457 = fsub fast float %2174, %2438
  %2458 = fsub fast float %2175, %2439
  %2459 = fsub fast float %2176, %2440
  %2460 = fmul fast float %2451, %2457
  %2461 = fmul fast float %2451, %2458
  %2462 = fmul fast float %2451, %2459
  %2463 = fadd fast float %2460, %2438
  %2464 = fadd fast float %2461, %2439
  %2465 = fadd fast float %2462, %2440
  %2466 = fsub fast float %2160, %1768
  %2467 = fmul fast float %2451, %2466
  %2468 = fadd fast float %2467, %1768
  %2469 = fsub fast float %2302, %2441
  %2470 = fsub fast float %2303, %2442
  %2471 = fsub fast float %2304, %2443
  %2472 = fmul fast float %2456, %2469
  %2473 = fmul fast float %2456, %2470
  %2474 = fmul fast float %2456, %2471
  %2475 = fadd fast float %2472, %2441
  %2476 = fadd fast float %2473, %2442
  %2477 = fadd fast float %2474, %2443
  %2478 = fsub fast float %2401, %1771
  %2479 = fmul fast float %2451, %2478
  %2480 = fadd fast float %2479, %1771
  br label %2526

; <label>:2481                                    ; preds = %2448
  %2482 = icmp eq i32 %2446, 1
  br i1 %2482, label %2483, label %2496

; <label>:2483                                    ; preds = %2481
  %2484 = fadd fast float %2174, -1.000000e+00
  %2485 = fadd fast float %2175, -1.000000e+00
  %2486 = fadd fast float %2176, -1.000000e+00
  %2487 = fmul fast float %2451, %2484
  %2488 = fmul fast float %2451, %2485
  %2489 = fmul fast float %2451, %2486
  %2490 = fadd fast float %2487, 1.000000e+00
  %2491 = fadd fast float %2488, 1.000000e+00
  %2492 = fadd fast float %2489, 1.000000e+00
  %2493 = fmul fast float %2490, %2438
  %2494 = fmul fast float %2491, %2439
  %2495 = fmul fast float %2492, %2440
  br label %2526

; <label>:2496                                    ; preds = %2481
  %2497 = icmp eq i32 %2446, 2
  br i1 %2497, label %2498, label %2526

; <label>:2498                                    ; preds = %2496
  %2499 = call float @dx.op.unary.f32(i32 24, float %2174)  ; Sqrt(value)
  %2500 = call float @dx.op.unary.f32(i32 24, float %2175)  ; Sqrt(value)
  %2501 = call float @dx.op.unary.f32(i32 24, float %2176)  ; Sqrt(value)
  %2502 = fadd fast float %2499, -5.000000e-01
  %2503 = fadd fast float %2500, -5.000000e-01
  %2504 = fadd fast float %2501, -5.000000e-01
  %2505 = fmul fast float %2502, %2451
  %2506 = fmul fast float %2503, %2451
  %2507 = fmul fast float %2504, %2451
  %2508 = fadd fast float %2505, 5.000000e-01
  %2509 = fadd fast float %2506, 5.000000e-01
  %2510 = fadd fast float %2507, 5.000000e-01
  %2511 = fmul fast float %2508, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2438
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2438
  %2516 = fmul fast float %2509, 2.000000e+00
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2517, %2439
  %2519 = fadd fast float %2518, %2516
  %2520 = fmul fast float %2519, %2439
  %2521 = fmul fast float %2510, 2.000000e+00
  %2522 = fsub fast float 1.000000e+00, %2521
  %2523 = fmul fast float %2522, %2440
  %2524 = fadd fast float %2523, %2521
  %2525 = fmul fast float %2524, %2440
  br label %2526

; <label>:2526                                    ; preds = %2498, %2496, %2483, %2453, %2437
  %2527 = phi float [ %2438, %2437 ], [ %2515, %2498 ], [ %2438, %2496 ], [ %2493, %2483 ], [ %2463, %2453 ]
  %2528 = phi float [ %2439, %2437 ], [ %2520, %2498 ], [ %2439, %2496 ], [ %2494, %2483 ], [ %2464, %2453 ]
  %2529 = phi float [ %2440, %2437 ], [ %2525, %2498 ], [ %2440, %2496 ], [ %2495, %2483 ], [ %2465, %2453 ]
  %2530 = phi float [ %2441, %2437 ], [ %2441, %2498 ], [ %2441, %2496 ], [ %2441, %2483 ], [ %2475, %2453 ]
  %2531 = phi float [ %2442, %2437 ], [ %2442, %2498 ], [ %2442, %2496 ], [ %2442, %2483 ], [ %2476, %2453 ]
  %2532 = phi float [ %2443, %2437 ], [ %2443, %2498 ], [ %2443, %2496 ], [ %2443, %2483 ], [ %2477, %2453 ]
  %2533 = phi float [ %1768, %2437 ], [ %1768, %2498 ], [ %1768, %2496 ], [ %1768, %2483 ], [ %2468, %2453 ]
  %2534 = phi float [ %1771, %2437 ], [ %1771, %2498 ], [ %1771, %2496 ], [ %1771, %2483 ], [ %2480, %2453 ]
  %2535 = and i32 %2445, 12
  %2536 = icmp eq i32 %2535, 12
  br i1 %2536, label %2609, label %2537

; <label>:2537                                    ; preds = %2526
  %2538 = and i32 %2445, 2097184
  %2539 = icmp eq i32 %2538, 2097184
  %2540 = select i1 %2539, float %1954, float 0.000000e+00
  %2541 = and i32 %2445, 4194336
  %2542 = icmp eq i32 %2541, 4194336
  %2543 = select i1 %2542, float %1954, float 0.000000e+00
  %2544 = and i32 %2445, 8388640
  %2545 = icmp eq i32 %2544, 8388640
  %2546 = select i1 %2545, float %1954, float 0.000000e+00
  %2547 = icmp eq i32 %2535, 0
  br i1 %2547, label %2548, label %2561

; <label>:2548                                    ; preds = %2537
  %2549 = fsub fast float %2255, %1760
  %2550 = fsub fast float %2256, %1761
  %2551 = fmul fast float %2540, %2549
  %2552 = fmul fast float %2540, %2550
  %2553 = fadd fast float %2551, %1760
  %2554 = fadd fast float %2552, %1761
  %2555 = fsub fast float %2257, %1770
  %2556 = fmul fast float %2543, %2555
  %2557 = fadd fast float %2556, %1770
  %2558 = fsub fast float %2254, %1769
  %2559 = fmul fast float %2546, %2558
  %2560 = fadd fast float %2559, %1769
  br label %2609

; <label>:2561                                    ; preds = %2537
  %2562 = icmp eq i32 %2535, 4
  br i1 %2562, label %2563, label %2595

; <label>:2563                                    ; preds = %2561
  %2564 = fmul fast float %2540, %2255
  %2565 = fmul fast float %2540, %2256
  %2566 = fadd fast float %2564, %1760
  %2567 = fadd fast float %2565, %1761
  %2568 = call float @dx.op.binary.f32(i32 36, float %1770, float %2257)  ; FMin(a,b)
  %2569 = fsub fast float %2568, %1770
  %2570 = fmul fast float %2569, %2543
  %2571 = fadd fast float %2570, %1770
  %2572 = fadd fast float %2254, %1769
  %2573 = fmul fast float %2572, 0x3FF337FAE0000000
  %2574 = fmul fast float %1769, %1769
  %2575 = fmul fast float %2254, %2254
  %2576 = fadd fast float %2575, %2574
  %2577 = fmul fast float %2576, 0x3FE5152B00000000
  %2578 = fmul fast float %1769, 0xBFCC1F85E0000000
  %2579 = fmul fast float %2578, %2254
  %2580 = fadd fast float %2579, 0xBFE1363700000000
  %2581 = fadd fast float %2580, %2573
  %2582 = fsub fast float %2581, %2577
  %2583 = fmul fast float %2572, 0x3FBA6F0D00000000
  %2584 = fmul fast float %2576, 0x3FD0432880000000
  %2585 = fmul fast float %1769, 0xBFEF110800000000
  %2586 = fmul fast float %2585, %2254
  %2587 = fadd fast float %2586, 1.000000e+00
  %2588 = fsub fast float %2587, %2583
  %2589 = fadd fast float %2588, %2584
  %2590 = fdiv fast float %2582, %2589
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2592 = fsub fast float %2591, %1769
  %2593 = fmul fast float %2592, %2546
  %2594 = fadd fast float %2593, %1769
  br label %2609

; <label>:2595                                    ; preds = %2561
  %2596 = icmp eq i32 %2535, 8
  br i1 %2596, label %2597, label %2609

; <label>:2597                                    ; preds = %2595
  %2598 = fmul fast float %2540, %2255
  %2599 = fmul fast float %2540, %2256
  %2600 = fadd fast float %2598, %1760
  %2601 = fadd fast float %2599, %1761
  %2602 = call float @dx.op.binary.f32(i32 36, float %1770, float %2257)  ; FMin(a,b)
  %2603 = fsub fast float %2602, %1770
  %2604 = fmul fast float %2603, %2543
  %2605 = fadd fast float %2604, %1770
  %2606 = fsub fast float %2254, %1769
  %2607 = fmul fast float %2546, %2606
  %2608 = fadd fast float %2607, %1769
  br label %2609

; <label>:2609                                    ; preds = %2597, %2595, %2563, %2548, %2526, %1953, %1772, %1759
  %2610 = phi float [ %1760, %2526 ], [ %1760, %1953 ], [ %1760, %1759 ], [ %2600, %2597 ], [ %1760, %2595 ], [ %2566, %2563 ], [ %2553, %2548 ], [ %1760, %1772 ]
  %2611 = phi float [ %1761, %2526 ], [ %1761, %1953 ], [ %1761, %1759 ], [ %2601, %2597 ], [ %1761, %2595 ], [ %2567, %2563 ], [ %2554, %2548 ], [ %1761, %1772 ]
  %2612 = phi float [ %2527, %2526 ], [ %1762, %1953 ], [ %1762, %1759 ], [ %2527, %2597 ], [ %2527, %2595 ], [ %2527, %2563 ], [ %2527, %2548 ], [ %1762, %1772 ]
  %2613 = phi float [ %2528, %2526 ], [ %1763, %1953 ], [ %1763, %1759 ], [ %2528, %2597 ], [ %2528, %2595 ], [ %2528, %2563 ], [ %2528, %2548 ], [ %1763, %1772 ]
  %2614 = phi float [ %2529, %2526 ], [ %1764, %1953 ], [ %1764, %1759 ], [ %2529, %2597 ], [ %2529, %2595 ], [ %2529, %2563 ], [ %2529, %2548 ], [ %1764, %1772 ]
  %2615 = phi float [ %2530, %2526 ], [ %1765, %1953 ], [ %1765, %1759 ], [ %2530, %2597 ], [ %2530, %2595 ], [ %2530, %2563 ], [ %2530, %2548 ], [ %1765, %1772 ]
  %2616 = phi float [ %2531, %2526 ], [ %1766, %1953 ], [ %1766, %1759 ], [ %2531, %2597 ], [ %2531, %2595 ], [ %2531, %2563 ], [ %2531, %2548 ], [ %1766, %1772 ]
  %2617 = phi float [ %2532, %2526 ], [ %1767, %1953 ], [ %1767, %1759 ], [ %2532, %2597 ], [ %2532, %2595 ], [ %2532, %2563 ], [ %2532, %2548 ], [ %1767, %1772 ]
  %2618 = phi float [ %2533, %2526 ], [ %1768, %1953 ], [ %1768, %1759 ], [ %2533, %2597 ], [ %2533, %2595 ], [ %2533, %2563 ], [ %2533, %2548 ], [ %1768, %1772 ]
  %2619 = phi float [ %1769, %2526 ], [ %1769, %1953 ], [ %1769, %1759 ], [ %2608, %2597 ], [ %1769, %2595 ], [ %2594, %2563 ], [ %2560, %2548 ], [ %1769, %1772 ]
  %2620 = phi float [ %1770, %2526 ], [ %1770, %1953 ], [ %1770, %1759 ], [ %2605, %2597 ], [ %1770, %2595 ], [ %2571, %2563 ], [ %2557, %2548 ], [ %1770, %1772 ]
  %2621 = phi float [ %2534, %2526 ], [ %1771, %1953 ], [ %1771, %1759 ], [ %2534, %2597 ], [ %2534, %2595 ], [ %2534, %2563 ], [ %2534, %2548 ], [ %1771, %1772 ]
  br i1 %390, label %3459, label %2622

; <label>:2622                                    ; preds = %2609
  %2623 = icmp ult i32 %441, 4
  %2624 = add i32 %32, 72
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = add i32 %32, 76
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = or i32 %2629, %2626
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %3459, label %2632

; <label>:2632                                    ; preds = %2622
  %2633 = and i32 %2626, 262144
  %2634 = icmp ne i32 %2633, 0
  %2635 = select i1 %2634, float %37, float 1.000000e+00
  %2636 = select i1 %2634, float %38, float 0.000000e+00
  %2637 = select i1 %2634, float %39, float 0.000000e+00
  %2638 = select i1 %2634, float %40, float 1.000000e+00
  %2639 = select i1 %2634, float %41, float %64
  %2640 = select i1 %2634, float %42, float %65
  %2641 = add i32 %32, 332
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = lshr i32 %2643, 16
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = fmul fast float %2645, 0x3F50624DE0000000
  %2647 = add i32 %32, 136
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = lshr i32 %2649, 16
  %2651 = and i32 %2650, 255
  %2652 = lshr i32 %2649, 24
  %2653 = add i32 %32, 340
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %2655, 65535
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = lshr i32 %2655, 16
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = add i32 %32, 80
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = lshr i32 %2662, 22
  %2664 = shl nuw nsw i32 %2663, 5
  %2665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2664)  ; LegacyF16ToF32(value)
  %2666 = shl i32 %2662, 4
  %2667 = and i32 %2666, 32752
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = lshr i32 %2662, 7
  %2670 = and i32 %2669, 32752
  %2671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2670)  ; LegacyF16ToF32(value)
  %2672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2673 = extractvalue %dx.types.CBufRet.f32 %2672, 3
  %2674 = fmul fast float %2673, 1.000000e+03
  %2675 = fmul fast float %380, %2674
  %2676 = call float @dx.op.unary.f32(i32 22, float %2675)  ; Frc(value)
  %2677 = fadd fast float %2676, %370
  %2678 = fmul fast float %381, %2674
  %2679 = call float @dx.op.unary.f32(i32 22, float %2678)  ; Frc(value)
  %2680 = fadd fast float %2679, %372
  %2681 = fmul fast float %2646, %2674
  %2682 = call float @dx.op.unary.f32(i32 22, float %2681)  ; Frc(value)
  %2683 = fmul fast float %2682, 0x401921FB60000000
  %2684 = fadd fast float %2683, %2665
  %2685 = call float @dx.op.unary.f32(i32 13, float %2684)  ; Sin(value)
  %2686 = call float @dx.op.unary.f32(i32 12, float %2684)  ; Cos(value)
  %2687 = fsub fast float -0.000000e+00, %2685
  %2688 = fadd fast float %2639, -5.000000e-01
  %2689 = fadd fast float %2640, -5.000000e-01
  %2690 = fmul fast float %2657, %2688
  %2691 = fmul fast float %2659, %2689
  %2692 = fadd fast float %2690, 5.000000e-01
  %2693 = fadd fast float %2691, 5.000000e-01
  %2694 = fmul fast float %2668, %2692
  %2695 = fmul fast float %2671, %2693
  %2696 = fmul fast float %2686, %2694
  %2697 = call float @dx.op.tertiary.f32(i32 46, float %2687, float %2695, float %2696)  ; FMad(a,b,c)
  %2698 = fmul fast float %2685, %2694
  %2699 = call float @dx.op.tertiary.f32(i32 46, float %2686, float %2695, float %2698)  ; FMad(a,b,c)
  %2700 = fadd fast float %2677, %2697
  %2701 = fadd fast float %2680, %2699
  %2702 = icmp ugt i32 %2651, 1
  %2703 = icmp ugt i32 %2649, 33554431
  %2704 = or i1 %2703, %2702
  br i1 %2704, label %2705, label %2730

; <label>:2705                                    ; preds = %2632
  %2706 = add i32 %32, 276
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = lshr i32 %2708, 16
  %2710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2709)  ; LegacyF16ToF32(value)
  %2711 = fmul fast float %2673, %2710
  %2712 = call float @dx.op.unary.f32(i32 22, float %2711)  ; Frc(value)
  %2713 = mul nuw nsw i32 %2651, %2652
  %2714 = uitofp i32 %2713 to float
  %2715 = fmul fast float %2712, %2714
  %2716 = call float @dx.op.unary.f32(i32 27, float %2715)  ; Round_ni(value)
  %2717 = fptoui float %2716 to i32
  %2718 = urem i32 %2717, %2651
  %2719 = udiv i32 %2717, %2652
  %2720 = call float @dx.op.unary.f32(i32 22, float %2700)  ; Frc(value)
  %2721 = call float @dx.op.unary.f32(i32 22, float %2701)  ; Frc(value)
  %2722 = uitofp i32 %2718 to float
  %2723 = uitofp i32 %2719 to float
  %2724 = fadd fast float %2720, %2722
  %2725 = fadd fast float %2721, %2723
  %2726 = uitofp i32 %2651 to float
  %2727 = uitofp i32 %2652 to float
  %2728 = fdiv fast float %2724, %2726
  %2729 = fdiv fast float %2725, %2727
  br label %2730

; <label>:2730                                    ; preds = %2705, %2632
  %2731 = phi float [ %2728, %2705 ], [ %2700, %2632 ]
  %2732 = phi float [ %2729, %2705 ], [ %2701, %2632 ]
  %2733 = and i32 %2626, 256
  %2734 = icmp eq i32 %2733, 0
  br i1 %2734, label %2781, label %2735

; <label>:2735                                    ; preds = %2730
  %2736 = add i32 %32, 436
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = add i32 %2738, 0
  %2740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2740, %dx.types.Handle %73, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2742 = extractvalue %dx.types.ResRet.f32 %2741, 0
  %2743 = add i32 %32, 148
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = shl i32 %2745, 4
  %2747 = and i32 %2746, 32752
  %2748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2747)  ; LegacyF16ToF32(value)
  %2749 = lshr i32 %2745, 7
  %2750 = and i32 %2749, 32752
  %2751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2750)  ; LegacyF16ToF32(value)
  %2752 = fsub fast float 1.000000e+00, %436
  %2753 = call float @dx.op.binary.f32(i32 35, float %2752, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2754 = bitcast float %436 to i32
  %2755 = sitofp i32 %2754 to float
  %2756 = fadd fast float %2755, 0xC1CFBF8940000000
  %2757 = fmul fast float %2751, %2756
  %2758 = fadd fast float %2757, 0x41CFBF8940000000
  %2759 = fptosi float %2758 to i32
  %2760 = bitcast i32 %2759 to float
  %2761 = bitcast float %2753 to i32
  %2762 = sitofp i32 %2761 to float
  %2763 = fadd fast float %2762, 0xC1CFBF8940000000
  %2764 = fmul fast float %2763, %2751
  %2765 = fadd fast float %2764, 0x41CFBF8940000000
  %2766 = fptosi float %2765 to i32
  %2767 = bitcast i32 %2766 to float
  %2768 = fmul fast float %2760, %2748
  %2769 = fmul fast float %2767, %2748
  %2770 = fsub fast float %2753, %2768
  %2771 = fadd fast float %2769, %2753
  %2772 = call float @dx.op.unary.f32(i32 7, float %2770)  ; Saturate(value)
  %2773 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2774 = fsub fast float %2742, %2772
  %2775 = fsub fast float %2773, %2772
  %2776 = bitcast float %2775 to i32
  %2777 = sub nsw i32 2129859010, %2776
  %2778 = bitcast i32 %2777 to float
  %2779 = fmul fast float %2778, %2774
  %2780 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  br label %2781

; <label>:2781                                    ; preds = %2735, %2730
  %2782 = phi float [ %2780, %2735 ], [ %436, %2730 ]
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = and i32 %2784, 128
  %2786 = icmp eq i32 %2785, 0
  br i1 %2786, label %2803, label %2787

; <label>:2787                                    ; preds = %2781
  %2788 = add i32 %32, 420
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = add i32 %2790, 0
  %2792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2793 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2792, %dx.types.Handle %73, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = and i32 %2796, 524288
  %2798 = icmp ne i32 %2797, 0
  %2799 = fcmp fast ogt float %2794, 0x3FE0101020000000
  %2800 = select i1 %2799, float 1.000000e+00, float 0.000000e+00
  %2801 = select i1 %2798, float %2800, float %2794
  %2802 = fmul fast float %2801, %2782
  br label %2803

; <label>:2803                                    ; preds = %2787, %2781
  %2804 = phi float [ %2802, %2787 ], [ %2782, %2781 ]
  %2805 = fcmp fast ult float %2804, 0x3F70101020000000
  br i1 %2805, label %3459, label %2806

; <label>:2806                                    ; preds = %2803
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = and i32 %2808, 16
  %2810 = icmp eq i32 %2809, 0
  br i1 %2810, label %3009, label %2811

; <label>:2811                                    ; preds = %2806
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = add i32 %32, 372
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = add i32 %2816, 0
  %2818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2817, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2818, %dx.types.Handle %72, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.ResRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.ResRet.f32 %2819, 2
  %2823 = extractvalue %dx.types.ResRet.f32 %2819, 3
  %2824 = and i32 %2813, 255
  %2825 = uitofp i32 %2824 to float
  %2826 = lshr i32 %2813, 8
  %2827 = and i32 %2826, 255
  %2828 = uitofp i32 %2827 to float
  %2829 = fmul fast float %2823, %2825
  %2830 = fadd fast float %2829, %2828
  %2831 = fmul fast float %2830, 0x3F70101000000000
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = and i32 %2833, 512
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2844, label %2836

; <label>:2836                                    ; preds = %2811
  %2837 = add i32 %32, 452
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %2839, 0
  %2841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2842 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2841, %dx.types.Handle %73, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  br label %2844

; <label>:2844                                    ; preds = %2836, %2811
  %2845 = phi float [ %2843, %2836 ], [ 1.000000e+00, %2811 ]
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = and i32 %2847, 33554432
  %2849 = icmp eq i32 %2848, 0
  br i1 %2849, label %2956, label %2850

; <label>:2850                                    ; preds = %2844
  %2851 = add i32 %32, 272
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = and i32 %2853, 65535
  %2855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2854)  ; LegacyF16ToF32(value)
  %2856 = lshr i32 %2853, 16
  %2857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2856)  ; LegacyF16ToF32(value)
  %2858 = add i32 %32, 276
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = and i32 %2860, 65535
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = lshr i32 %2864, 24
  %2866 = uitofp i32 %2865 to float
  %2867 = fmul fast float %2866, 0x3F70101020000000
  %2868 = and i32 %2864, 255
  %2869 = uitofp i32 %2868 to float
  %2870 = fmul fast float %2869, 0x3F70101020000000
  %2871 = lshr i32 %2864, 8
  %2872 = and i32 %2871, 255
  %2873 = uitofp i32 %2872 to float
  %2874 = fmul fast float %2873, 0x3F70101020000000
  %2875 = lshr i32 %2864, 16
  %2876 = and i32 %2875, 255
  %2877 = uitofp i32 %2876 to float
  %2878 = fmul fast float %2877, 0x3F70101020000000
  %2879 = add i32 %32, 268
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = lshr i32 %2881, 24
  %2883 = uitofp i32 %2882 to float
  %2884 = fmul fast float %2883, 0x3F70101020000000
  %2885 = and i32 %2881, 255
  %2886 = uitofp i32 %2885 to float
  %2887 = fmul fast float %2886, 0x3F70101020000000
  %2888 = lshr i32 %2881, 8
  %2889 = and i32 %2888, 255
  %2890 = uitofp i32 %2889 to float
  %2891 = fmul fast float %2890, 0x3F70101020000000
  %2892 = lshr i32 %2881, 16
  %2893 = and i32 %2892, 255
  %2894 = uitofp i32 %2893 to float
  %2895 = fmul fast float %2894, 0x3F70101020000000
  %2896 = bitcast float %2820 to i32
  %2897 = ashr i32 %2896, 1
  %2898 = sub nsw i32 1597463174, %2897
  %2899 = bitcast i32 %2898 to float
  %2900 = fmul fast float %2820, 5.000000e-01
  %2901 = fmul fast float %2899, %2899
  %2902 = fmul fast float %2901, %2900
  %2903 = fsub fast float 1.500000e+00, %2902
  %2904 = fmul fast float %2899, %2820
  %2905 = fmul fast float %2904, %2903
  %2906 = bitcast float %2821 to i32
  %2907 = ashr i32 %2906, 1
  %2908 = sub nsw i32 1597463174, %2907
  %2909 = bitcast i32 %2908 to float
  %2910 = fmul fast float %2821, 5.000000e-01
  %2911 = fmul fast float %2909, %2909
  %2912 = fmul fast float %2911, %2910
  %2913 = fsub fast float 1.500000e+00, %2912
  %2914 = fmul fast float %2909, %2821
  %2915 = fmul fast float %2914, %2913
  %2916 = bitcast float %2822 to i32
  %2917 = ashr i32 %2916, 1
  %2918 = sub nsw i32 1597463174, %2917
  %2919 = bitcast i32 %2918 to float
  %2920 = fmul fast float %2822, 5.000000e-01
  %2921 = fmul fast float %2919, %2919
  %2922 = fmul fast float %2921, %2920
  %2923 = fsub fast float 1.500000e+00, %2922
  %2924 = fmul fast float %2919, %2822
  %2925 = fmul fast float %2924, %2923
  %2926 = fsub fast float %2905, %2887
  %2927 = fsub fast float %2915, %2891
  %2928 = fsub fast float %2925, %2895
  %2929 = fmul fast float %2926, %2855
  %2930 = fmul fast float %2927, %2857
  %2931 = fmul fast float %2928, %2862
  %2932 = fadd fast float %2929, %2870
  %2933 = fadd fast float %2930, %2874
  %2934 = fadd fast float %2931, %2878
  %2935 = call float @dx.op.unary.f32(i32 7, float %2932)  ; Saturate(value)
  %2936 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2937 = call float @dx.op.unary.f32(i32 7, float %2934)  ; Saturate(value)
  %2938 = fmul fast float %2935, %2935
  %2939 = fmul fast float %2936, %2936
  %2940 = fmul fast float %2937, %2937
  %2941 = fsub fast float %2938, %2820
  %2942 = fsub fast float %2939, %2821
  %2943 = fsub fast float %2940, %2822
  %2944 = fmul fast float %2941, %2845
  %2945 = fmul fast float %2942, %2845
  %2946 = fmul fast float %2943, %2845
  %2947 = fadd fast float %2944, %2820
  %2948 = fadd fast float %2945, %2821
  %2949 = fadd fast float %2946, %2822
  %2950 = fadd fast float %2867, %2831
  %2951 = fsub fast float %2950, %2884
  %2952 = call float @dx.op.unary.f32(i32 7, float %2951)  ; Saturate(value)
  %2953 = fsub fast float %2952, %2831
  %2954 = fmul fast float %2953, %2845
  %2955 = fadd fast float %2954, %2831
  br label %3009

; <label>:2956                                    ; preds = %2844
  %2957 = and i32 %2847, 134217728
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %2993, label %2959

; <label>:2959                                    ; preds = %2956
  %2960 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %2961 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %2962 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2963 = fadd fast float %2960, -5.000000e-01
  %2964 = fadd fast float %2961, -5.000000e-01
  %2965 = fadd fast float %2962, -5.000000e-01
  %2966 = fmul fast float %2963, %2845
  %2967 = fmul fast float %2964, %2845
  %2968 = fmul fast float %2965, %2845
  %2969 = fadd fast float %2966, 5.000000e-01
  %2970 = fadd fast float %2967, 5.000000e-01
  %2971 = fadd fast float %2968, 5.000000e-01
  %2972 = call float @dx.op.unary.f32(i32 24, float %2820)  ; Sqrt(value)
  %2973 = call float @dx.op.unary.f32(i32 24, float %2821)  ; Sqrt(value)
  %2974 = call float @dx.op.unary.f32(i32 24, float %2822)  ; Sqrt(value)
  %2975 = fmul fast float %2969, 2.000000e+00
  %2976 = fsub fast float 1.000000e+00, %2975
  %2977 = fmul fast float %2976, %2972
  %2978 = fadd fast float %2977, %2975
  %2979 = fmul fast float %2978, %2972
  %2980 = fmul fast float %2970, 2.000000e+00
  %2981 = fsub fast float 1.000000e+00, %2980
  %2982 = fmul fast float %2981, %2973
  %2983 = fadd fast float %2982, %2980
  %2984 = fmul fast float %2983, %2973
  %2985 = fmul fast float %2971, 2.000000e+00
  %2986 = fsub fast float 1.000000e+00, %2985
  %2987 = fmul fast float %2986, %2974
  %2988 = fadd fast float %2987, %2985
  %2989 = fmul fast float %2988, %2974
  %2990 = fmul fast float %2979, %2979
  %2991 = fmul fast float %2984, %2984
  %2992 = fmul fast float %2989, %2989
  br label %3009

; <label>:2993                                    ; preds = %2956
  %2994 = fmul fast float %357, %357
  %2995 = fmul fast float %361, %361
  %2996 = fmul fast float %365, %365
  %2997 = fadd fast float %2994, -1.000000e+00
  %2998 = fadd fast float %2995, -1.000000e+00
  %2999 = fadd fast float %2996, -1.000000e+00
  %3000 = fmul fast float %2845, %2997
  %3001 = fmul fast float %2845, %2998
  %3002 = fmul fast float %2845, %2999
  %3003 = fadd fast float %3000, 1.000000e+00
  %3004 = fadd fast float %3001, 1.000000e+00
  %3005 = fadd fast float %3002, 1.000000e+00
  %3006 = fmul fast float %3003, %2820
  %3007 = fmul fast float %3004, %2821
  %3008 = fmul fast float %3005, %2822
  br label %3009

; <label>:3009                                    ; preds = %2993, %2959, %2850, %2806
  %3010 = phi float [ %2955, %2850 ], [ %2831, %2959 ], [ %2831, %2993 ], [ 0x3FA23C0BE0000000, %2806 ]
  %3011 = phi float [ %2947, %2850 ], [ %2990, %2959 ], [ %3006, %2993 ], [ 1.000000e+00, %2806 ]
  %3012 = phi float [ %2948, %2850 ], [ %2991, %2959 ], [ %3007, %2993 ], [ 1.000000e+00, %2806 ]
  %3013 = phi float [ %2949, %2850 ], [ %2992, %2959 ], [ %3008, %2993 ], [ 1.000000e+00, %2806 ]
  %3014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3015 = extractvalue %dx.types.CBufRet.i32 %3014, 1
  %3016 = and i32 %3015, 1
  %3017 = icmp ne i32 %3016, 0
  %3018 = add i32 %32, 356
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %3020, 32
  %3022 = icmp ne i32 %3021, 0
  %3023 = and i1 %3017, %3022
  %3024 = select i1 %3023, float 1.000000e+00, float %3011
  %3025 = select i1 %3023, float 0x3FD3333340000000, float %3012
  %3026 = select i1 %3023, float 0x3FD3333340000000, float %3013
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = and i32 %3028, 32
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %3103, label %3031

; <label>:3031                                    ; preds = %3009
  %3032 = add i32 %32, 140
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = add i32 %32, 388
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = add i32 %3037, 0
  %3039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3040 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3039, %dx.types.Handle %72, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3041 = extractvalue %dx.types.ResRet.f32 %3040, 0
  %3042 = extractvalue %dx.types.ResRet.f32 %3040, 1
  %3043 = extractvalue %dx.types.ResRet.f32 %3040, 2
  %3044 = extractvalue %dx.types.ResRet.f32 %3040, 3
  %3045 = and i32 %3034, 255
  %3046 = uitofp i32 %3045 to float
  %3047 = lshr i32 %3034, 8
  %3048 = and i32 %3047, 255
  %3049 = uitofp i32 %3048 to float
  %3050 = lshr i32 %3034, 16
  %3051 = and i32 %3050, 255
  %3052 = uitofp i32 %3051 to float
  %3053 = fmul fast float %3052, 0x3F70101000000000
  %3054 = fmul fast float %3041, %3046
  %3055 = fadd fast float %3054, %3049
  %3056 = fmul fast float %3055, 0x3F70101000000000
  %3057 = fadd fast float %3042, -5.000000e-01
  %3058 = fadd fast float %3044, -5.000000e-01
  %3059 = fmul fast float %3057, %3053
  %3060 = fmul fast float %3058, %3053
  %3061 = fadd fast float %3059, 5.000000e-01
  %3062 = fadd fast float %3060, 5.000000e-01
  %3063 = fmul fast float %3061, 2.000000e+00
  %3064 = fadd fast float %3063, -1.000000e+00
  %3065 = fmul fast float %3062, 2.000000e+00
  %3066 = fadd fast float %3065, -1.000000e+00
  %3067 = fadd fast float %3064, %3066
  %3068 = fmul fast float %3067, 5.000000e-01
  %3069 = fsub fast float %3064, %3066
  %3070 = fmul fast float %3069, 5.000000e-01
  %3071 = call float @dx.op.unary.f32(i32 6, float %3068)  ; FAbs(value)
  %3072 = fsub fast float 1.000000e+00, %3071
  %3073 = call float @dx.op.unary.f32(i32 6, float %3070)  ; FAbs(value)
  %3074 = fsub fast float %3072, %3073
  %3075 = call float @dx.op.dot3.f32(i32 55, float %3068, float %3070, float %3074, float %3068, float %3070, float %3074)  ; Dot3(ax,ay,az,bx,by,bz)
  %3076 = call float @dx.op.unary.f32(i32 25, float %3075)  ; Rsqrt(value)
  %3077 = fmul fast float %3068, %3076
  %3078 = fmul fast float %3070, %3076
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = and i32 %3080, 67108864
  %3082 = icmp eq i32 %3081, 0
  br i1 %3082, label %3099, label %3083

; <label>:3083                                    ; preds = %3031
  %3084 = add i32 %32, 328
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = and i32 %3086, 65535
  %3088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3087)  ; LegacyF16ToF32(value)
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 65535
  %3092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3091)  ; LegacyF16ToF32(value)
  %3093 = lshr i32 %3086, 16
  %3094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3093)  ; LegacyF16ToF32(value)
  %3095 = fsub fast float %3056, %3094
  %3096 = fmul fast float %3095, %3088
  %3097 = fadd fast float %3096, %3092
  %3098 = call float @dx.op.unary.f32(i32 7, float %3097)  ; Saturate(value)
  br label %3099

; <label>:3099                                    ; preds = %3083, %3031
  %3100 = phi float [ %3098, %3083 ], [ %3056, %3031 ]
  %3101 = call float @dx.op.dot2.f32(i32 54, float %3077, float %3078, float %2635, float %2636)  ; Dot2(ax,ay,bx,by)
  %3102 = call float @dx.op.dot2.f32(i32 54, float %3077, float %3078, float %2637, float %2638)  ; Dot2(ax,ay,bx,by)
  br label %3103

; <label>:3103                                    ; preds = %3099, %3009
  %3104 = phi float [ %3100, %3099 ], [ 0x3FD6666660000000, %3009 ]
  %3105 = phi float [ %3101, %3099 ], [ 0.000000e+00, %3009 ]
  %3106 = phi float [ %3102, %3099 ], [ 0.000000e+00, %3009 ]
  %3107 = phi float [ %3043, %3099 ], [ 1.000000e+00, %3009 ]
  %3108 = add i32 %32, 208
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = lshr i32 %3110, 22
  %3112 = shl nuw nsw i32 %3111, 5
  %3113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3112)  ; LegacyF16ToF32(value)
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 64
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3151, label %3118

; <label>:3118                                    ; preds = %3103
  %3119 = add i32 %32, 404
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %3121, 0
  %3123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = and i32 %3125, 131072
  %3127 = icmp eq i32 %3126, 0
  %3128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3123, %dx.types.Handle %72, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = extractvalue %dx.types.ResRet.f32 %3128, 1
  %3131 = extractvalue %dx.types.ResRet.f32 %3128, 2
  %3132 = fmul fast float %3129, %345
  %3133 = fmul fast float %3130, %348
  %3134 = fmul fast float %3131, %351
  br i1 %3127, label %3141, label %3135

; <label>:3135                                    ; preds = %3118
  %3136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.f32 %3136, 0
  %3138 = fmul fast float %3137, %3132
  %3139 = fmul fast float %3137, %3133
  %3140 = fmul fast float %3137, %3134
  br label %3141

; <label>:3141                                    ; preds = %3135, %3118
  %3142 = phi float [ %3138, %3135 ], [ %3132, %3118 ]
  %3143 = phi float [ %3139, %3135 ], [ %3133, %3118 ]
  %3144 = phi float [ %3140, %3135 ], [ %3134, %3118 ]
  %3145 = fmul fast float %3142, %3113
  %3146 = select i1 %202, float %3145, float %3142
  %3147 = call float @dx.op.dot3.f32(i32 55, float %3146, float %3143, float %3144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3148 = select i1 %202, float 0.000000e+00, float %3142
  %3149 = select i1 %202, float %3147, float %3143
  %3150 = select i1 %202, float 0.000000e+00, float %3144
  br label %3151

; <label>:3151                                    ; preds = %3141, %3103
  %3152 = phi float [ %3148, %3141 ], [ 0.000000e+00, %3103 ]
  %3153 = phi float [ %3149, %3141 ], [ 0.000000e+00, %3103 ]
  %3154 = phi float [ %3150, %3141 ], [ 0.000000e+00, %3103 ]
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 1024
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %3189, label %3159

; <label>:3159                                    ; preds = %3151
  %3160 = add i32 %32, 200
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = fmul fast float %3164, 0x3F70101020000000
  %3166 = lshr i32 %3162, 8
  %3167 = and i32 %3166, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = fmul fast float %3168, 0x3F70101020000000
  %3170 = lshr i32 %3162, 16
  %3171 = and i32 %3170, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3172, 0x3F70101020000000
  %3174 = fmul fast float %3165, %3165
  %3175 = fmul fast float %3169, %3169
  %3176 = fmul fast float %3173, %3173
  %3177 = add i32 %32, 468
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = add i32 %3179, 0
  %3181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3181, %dx.types.Handle %73, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3183 = extractvalue %dx.types.ResRet.f32 %3182, 0
  %3184 = extractvalue %dx.types.ResRet.f32 %3182, 1
  %3185 = extractvalue %dx.types.ResRet.f32 %3182, 2
  %3186 = fmul fast float %3174, %3183
  %3187 = fmul fast float %3175, %3184
  %3188 = fmul fast float %3176, %3185
  br label %3189

; <label>:3189                                    ; preds = %3159, %3151
  %3190 = phi float [ %3186, %3159 ], [ 0.000000e+00, %3151 ]
  %3191 = phi float [ %3187, %3159 ], [ 0.000000e+00, %3151 ]
  %3192 = phi float [ %3188, %3159 ], [ 0.000000e+00, %3151 ]
  %3193 = fcmp fast ogt float %3190, 0.000000e+00
  %3194 = fcmp fast ogt float %3191, 0.000000e+00
  %3195 = fcmp fast ogt float %3192, 0.000000e+00
  %3196 = call float @dx.op.unary.f32(i32 23, float %3190)  ; Log(value)
  %3197 = call float @dx.op.unary.f32(i32 23, float %3191)  ; Log(value)
  %3198 = call float @dx.op.unary.f32(i32 23, float %3192)  ; Log(value)
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = lshr i32 %3200, 7
  %3202 = and i32 %3201, 32752
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = fmul fast float %3196, 0xBFE62E4300000000
  %3205 = fmul fast float %3204, %3203
  %3206 = fmul fast float %3197, 0xBFE62E4300000000
  %3207 = fmul fast float %3206, %3203
  %3208 = fmul fast float %3198, 0xBFE62E4300000000
  %3209 = fmul fast float %3208, %3203
  %3210 = select i1 %3193, float %3205, float 1.270000e+02
  %3211 = select i1 %3194, float %3207, float 1.270000e+02
  %3212 = select i1 %3195, float %3209, float 1.270000e+02
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 10240
  %3216 = icmp eq i32 %3215, 0
  br i1 %3216, label %3237, label %3217

; <label>:3217                                    ; preds = %3189
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = and i32 %3219, 2048
  %3221 = icmp eq i32 %3220, 0
  br i1 %3221, label %3237, label %3222

; <label>:3222                                    ; preds = %3217
  %3223 = add i32 %32, 484
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = add i32 %3225, 0
  %3227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3227, %dx.types.Handle %73, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3229 = extractvalue %dx.types.ResRet.f32 %3228, 3
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = shl i32 %3231, 4
  %3233 = and i32 %3232, 32752
  %3234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3233)  ; LegacyF16ToF32(value)
  %3235 = fmul fast float %3234, %3229
  %3236 = call float @dx.op.binary.f32(i32 35, float %3235, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3237

; <label>:3237                                    ; preds = %3222, %3217, %3189
  %3238 = phi float [ %3236, %3222 ], [ 0x3F70101020000000, %3217 ], [ 0x3F70101020000000, %3189 ]
  %3239 = add i32 %32, 144
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, 255
  %3243 = uitofp i32 %3242 to float
  %3244 = lshr i32 %3241, 8
  %3245 = and i32 %3244, 255
  %3246 = uitofp i32 %3245 to float
  %3247 = call float @dx.op.dot3.f32(i32 55, float %3024, float %3025, float %3026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3248 = fmul fast float %3246, %3247
  %3249 = fadd fast float %3248, %3243
  %3250 = fmul fast float %3249, 0x3F70101020000000
  %3251 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  br i1 %2623, label %3252, label %3287

; <label>:3252                                    ; preds = %3237
  %3253 = fmul fast float %3238, 2.000000e+00
  %3254 = fcmp fast olt float %3210, 1.270000e+02
  %3255 = fcmp fast olt float %3211, 1.270000e+02
  %3256 = fcmp fast olt float %3212, 1.270000e+02
  %3257 = fmul fast float %3210, 0xBFF7154760000000
  %3258 = fmul fast float %3257, %3253
  %3259 = fmul fast float %3211, 0xBFF7154760000000
  %3260 = fmul fast float %3259, %3253
  %3261 = fmul fast float %3212, 0xBFF7154760000000
  %3262 = fmul fast float %3261, %3253
  %3263 = call float @dx.op.unary.f32(i32 21, float %3258)  ; Exp(value)
  %3264 = call float @dx.op.unary.f32(i32 21, float %3260)  ; Exp(value)
  %3265 = call float @dx.op.unary.f32(i32 21, float %3262)  ; Exp(value)
  %3266 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3267 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3268 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  %3269 = fadd fast float %3266, -1.000000e+00
  %3270 = select i1 %3254, float %3269, float -1.000000e+00
  %3271 = fadd fast float %3267, -1.000000e+00
  %3272 = select i1 %3255, float %3271, float -1.000000e+00
  %3273 = fadd fast float %3268, -1.000000e+00
  %3274 = select i1 %3256, float %3273, float -1.000000e+00
  %3275 = fmul fast float %3270, %2804
  %3276 = fmul fast float %3272, %2804
  %3277 = fmul fast float %3274, %2804
  %3278 = fadd fast float %3275, 1.000000e+00
  %3279 = fadd fast float %3276, 1.000000e+00
  %3280 = fadd fast float %3277, 1.000000e+00
  %3281 = fmul fast float %3278, %2612
  %3282 = fmul fast float %3279, %2613
  %3283 = fmul fast float %3280, %2614
  %3284 = fmul fast float %3278, %2615
  %3285 = fmul fast float %3279, %2616
  %3286 = fmul fast float %3280, %2617
  br label %3287

; <label>:3287                                    ; preds = %3252, %3237
  %3288 = phi float [ %3281, %3252 ], [ %2612, %3237 ]
  %3289 = phi float [ %3282, %3252 ], [ %2613, %3237 ]
  %3290 = phi float [ %3283, %3252 ], [ %2614, %3237 ]
  %3291 = phi float [ %3284, %3252 ], [ %2615, %3237 ]
  %3292 = phi float [ %3285, %3252 ], [ %2616, %3237 ]
  %3293 = phi float [ %3286, %3252 ], [ %2617, %3237 ]
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = and i32 %3295, 3
  %3297 = icmp eq i32 %3296, 3
  br i1 %3297, label %3376, label %3298

; <label>:3298                                    ; preds = %3287
  %3299 = and i32 %3295, 16
  %3300 = icmp ne i32 %3299, 0
  %3301 = select i1 %3300, float %2804, float 0.000000e+00
  %3302 = icmp eq i32 %3296, 0
  br i1 %3302, label %3303, label %3331

; <label>:3303                                    ; preds = %3298
  %3304 = and i32 %3295, 64
  %3305 = icmp ne i32 %3304, 0
  %3306 = select i1 %3305, float %2804, float 0.000000e+00
  %3307 = fsub fast float %3024, %3288
  %3308 = fsub fast float %3025, %3289
  %3309 = fsub fast float %3026, %3290
  %3310 = fmul fast float %3301, %3307
  %3311 = fmul fast float %3301, %3308
  %3312 = fmul fast float %3301, %3309
  %3313 = fadd fast float %3310, %3288
  %3314 = fadd fast float %3311, %3289
  %3315 = fadd fast float %3312, %3290
  %3316 = fsub fast float %3010, %2618
  %3317 = fmul fast float %3301, %3316
  %3318 = fadd fast float %3317, %2618
  %3319 = fsub fast float %3152, %3291
  %3320 = fsub fast float %3153, %3292
  %3321 = fsub fast float %3154, %3293
  %3322 = fmul fast float %3306, %3319
  %3323 = fmul fast float %3306, %3320
  %3324 = fmul fast float %3306, %3321
  %3325 = fadd fast float %3322, %3291
  %3326 = fadd fast float %3323, %3292
  %3327 = fadd fast float %3324, %3293
  %3328 = fsub fast float %3251, %2621
  %3329 = fmul fast float %3301, %3328
  %3330 = fadd fast float %3329, %2621
  br label %3376

; <label>:3331                                    ; preds = %3298
  %3332 = icmp eq i32 %3296, 1
  br i1 %3332, label %3333, label %3346

; <label>:3333                                    ; preds = %3331
  %3334 = fadd fast float %3024, -1.000000e+00
  %3335 = fadd fast float %3025, -1.000000e+00
  %3336 = fadd fast float %3026, -1.000000e+00
  %3337 = fmul fast float %3301, %3334
  %3338 = fmul fast float %3301, %3335
  %3339 = fmul fast float %3301, %3336
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fadd fast float %3338, 1.000000e+00
  %3342 = fadd fast float %3339, 1.000000e+00
  %3343 = fmul fast float %3340, %3288
  %3344 = fmul fast float %3341, %3289
  %3345 = fmul fast float %3342, %3290
  br label %3376

; <label>:3346                                    ; preds = %3331
  %3347 = icmp eq i32 %3296, 2
  br i1 %3347, label %3348, label %3376

; <label>:3348                                    ; preds = %3346
  %3349 = call float @dx.op.unary.f32(i32 24, float %3024)  ; Sqrt(value)
  %3350 = call float @dx.op.unary.f32(i32 24, float %3025)  ; Sqrt(value)
  %3351 = call float @dx.op.unary.f32(i32 24, float %3026)  ; Sqrt(value)
  %3352 = fadd fast float %3349, -5.000000e-01
  %3353 = fadd fast float %3350, -5.000000e-01
  %3354 = fadd fast float %3351, -5.000000e-01
  %3355 = fmul fast float %3352, %3301
  %3356 = fmul fast float %3353, %3301
  %3357 = fmul fast float %3354, %3301
  %3358 = fadd fast float %3355, 5.000000e-01
  %3359 = fadd fast float %3356, 5.000000e-01
  %3360 = fadd fast float %3357, 5.000000e-01
  %3361 = fmul fast float %3358, 2.000000e+00
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = fmul fast float %3362, %3288
  %3364 = fadd fast float %3363, %3361
  %3365 = fmul fast float %3364, %3288
  %3366 = fmul fast float %3359, 2.000000e+00
  %3367 = fsub fast float 1.000000e+00, %3366
  %3368 = fmul fast float %3367, %3289
  %3369 = fadd fast float %3368, %3366
  %3370 = fmul fast float %3369, %3289
  %3371 = fmul fast float %3360, 2.000000e+00
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = fmul fast float %3372, %3290
  %3374 = fadd fast float %3373, %3371
  %3375 = fmul fast float %3374, %3290
  br label %3376

; <label>:3376                                    ; preds = %3348, %3346, %3333, %3303, %3287
  %3377 = phi float [ %3288, %3287 ], [ %3365, %3348 ], [ %3288, %3346 ], [ %3343, %3333 ], [ %3313, %3303 ]
  %3378 = phi float [ %3289, %3287 ], [ %3370, %3348 ], [ %3289, %3346 ], [ %3344, %3333 ], [ %3314, %3303 ]
  %3379 = phi float [ %3290, %3287 ], [ %3375, %3348 ], [ %3290, %3346 ], [ %3345, %3333 ], [ %3315, %3303 ]
  %3380 = phi float [ %3291, %3287 ], [ %3291, %3348 ], [ %3291, %3346 ], [ %3291, %3333 ], [ %3325, %3303 ]
  %3381 = phi float [ %3292, %3287 ], [ %3292, %3348 ], [ %3292, %3346 ], [ %3292, %3333 ], [ %3326, %3303 ]
  %3382 = phi float [ %3293, %3287 ], [ %3293, %3348 ], [ %3293, %3346 ], [ %3293, %3333 ], [ %3327, %3303 ]
  %3383 = phi float [ %2618, %3287 ], [ %2618, %3348 ], [ %2618, %3346 ], [ %2618, %3333 ], [ %3318, %3303 ]
  %3384 = phi float [ %2621, %3287 ], [ %2621, %3348 ], [ %2621, %3346 ], [ %2621, %3333 ], [ %3330, %3303 ]
  %3385 = and i32 %3295, 12
  %3386 = icmp eq i32 %3385, 12
  br i1 %3386, label %3459, label %3387

; <label>:3387                                    ; preds = %3376
  %3388 = and i32 %3295, 2097184
  %3389 = icmp eq i32 %3388, 2097184
  %3390 = select i1 %3389, float %2804, float 0.000000e+00
  %3391 = and i32 %3295, 4194336
  %3392 = icmp eq i32 %3391, 4194336
  %3393 = select i1 %3392, float %2804, float 0.000000e+00
  %3394 = and i32 %3295, 8388640
  %3395 = icmp eq i32 %3394, 8388640
  %3396 = select i1 %3395, float %2804, float 0.000000e+00
  %3397 = icmp eq i32 %3385, 0
  br i1 %3397, label %3398, label %3411

; <label>:3398                                    ; preds = %3387
  %3399 = fsub fast float %3105, %2610
  %3400 = fsub fast float %3106, %2611
  %3401 = fmul fast float %3390, %3399
  %3402 = fmul fast float %3390, %3400
  %3403 = fadd fast float %3401, %2610
  %3404 = fadd fast float %3402, %2611
  %3405 = fsub fast float %3107, %2620
  %3406 = fmul fast float %3393, %3405
  %3407 = fadd fast float %3406, %2620
  %3408 = fsub fast float %3104, %2619
  %3409 = fmul fast float %3396, %3408
  %3410 = fadd fast float %3409, %2619
  br label %3459

; <label>:3411                                    ; preds = %3387
  %3412 = icmp eq i32 %3385, 4
  br i1 %3412, label %3413, label %3445

; <label>:3413                                    ; preds = %3411
  %3414 = fmul fast float %3390, %3105
  %3415 = fmul fast float %3390, %3106
  %3416 = fadd fast float %3414, %2610
  %3417 = fadd fast float %3415, %2611
  %3418 = call float @dx.op.binary.f32(i32 36, float %2620, float %3107)  ; FMin(a,b)
  %3419 = fsub fast float %3418, %2620
  %3420 = fmul fast float %3419, %3393
  %3421 = fadd fast float %3420, %2620
  %3422 = fadd fast float %3104, %2619
  %3423 = fmul fast float %3422, 0x3FF337FAE0000000
  %3424 = fmul fast float %2619, %2619
  %3425 = fmul fast float %3104, %3104
  %3426 = fadd fast float %3425, %3424
  %3427 = fmul fast float %3426, 0x3FE5152B00000000
  %3428 = fmul fast float %2619, 0xBFCC1F85E0000000
  %3429 = fmul fast float %3428, %3104
  %3430 = fadd fast float %3429, 0xBFE1363700000000
  %3431 = fadd fast float %3430, %3423
  %3432 = fsub fast float %3431, %3427
  %3433 = fmul fast float %3422, 0x3FBA6F0D00000000
  %3434 = fmul fast float %3426, 0x3FD0432880000000
  %3435 = fmul fast float %2619, 0xBFEF110800000000
  %3436 = fmul fast float %3435, %3104
  %3437 = fadd fast float %3436, 1.000000e+00
  %3438 = fsub fast float %3437, %3433
  %3439 = fadd fast float %3438, %3434
  %3440 = fdiv fast float %3432, %3439
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3442 = fsub fast float %3441, %2619
  %3443 = fmul fast float %3442, %3396
  %3444 = fadd fast float %3443, %2619
  br label %3459

; <label>:3445                                    ; preds = %3411
  %3446 = icmp eq i32 %3385, 8
  br i1 %3446, label %3447, label %3459

; <label>:3447                                    ; preds = %3445
  %3448 = fmul fast float %3390, %3105
  %3449 = fmul fast float %3390, %3106
  %3450 = fadd fast float %3448, %2610
  %3451 = fadd fast float %3449, %2611
  %3452 = call float @dx.op.binary.f32(i32 36, float %2620, float %3107)  ; FMin(a,b)
  %3453 = fsub fast float %3452, %2620
  %3454 = fmul fast float %3453, %3393
  %3455 = fadd fast float %3454, %2620
  %3456 = fsub fast float %3104, %2619
  %3457 = fmul fast float %3396, %3456
  %3458 = fadd fast float %3457, %2619
  br label %3459

; <label>:3459                                    ; preds = %3447, %3445, %3413, %3398, %3376, %2803, %2622, %2609
  %3460 = phi float [ %2610, %3376 ], [ %2610, %2803 ], [ %2610, %2609 ], [ %2610, %2622 ], [ %3403, %3398 ], [ %3416, %3413 ], [ %2610, %3445 ], [ %3450, %3447 ]
  %3461 = phi float [ %2611, %3376 ], [ %2611, %2803 ], [ %2611, %2609 ], [ %2611, %2622 ], [ %3404, %3398 ], [ %3417, %3413 ], [ %2611, %3445 ], [ %3451, %3447 ]
  %3462 = phi float [ %3377, %3376 ], [ %2612, %2803 ], [ %2612, %2609 ], [ %2612, %2622 ], [ %3377, %3398 ], [ %3377, %3413 ], [ %3377, %3445 ], [ %3377, %3447 ]
  %3463 = phi float [ %3378, %3376 ], [ %2613, %2803 ], [ %2613, %2609 ], [ %2613, %2622 ], [ %3378, %3398 ], [ %3378, %3413 ], [ %3378, %3445 ], [ %3378, %3447 ]
  %3464 = phi float [ %3379, %3376 ], [ %2614, %2803 ], [ %2614, %2609 ], [ %2614, %2622 ], [ %3379, %3398 ], [ %3379, %3413 ], [ %3379, %3445 ], [ %3379, %3447 ]
  %3465 = phi float [ %3380, %3376 ], [ %2615, %2803 ], [ %2615, %2609 ], [ %2615, %2622 ], [ %3380, %3398 ], [ %3380, %3413 ], [ %3380, %3445 ], [ %3380, %3447 ]
  %3466 = phi float [ %3381, %3376 ], [ %2616, %2803 ], [ %2616, %2609 ], [ %2616, %2622 ], [ %3381, %3398 ], [ %3381, %3413 ], [ %3381, %3445 ], [ %3381, %3447 ]
  %3467 = phi float [ %3382, %3376 ], [ %2617, %2803 ], [ %2617, %2609 ], [ %2617, %2622 ], [ %3382, %3398 ], [ %3382, %3413 ], [ %3382, %3445 ], [ %3382, %3447 ]
  %3468 = phi float [ %3383, %3376 ], [ %2618, %2803 ], [ %2618, %2609 ], [ %2618, %2622 ], [ %3383, %3398 ], [ %3383, %3413 ], [ %3383, %3445 ], [ %3383, %3447 ]
  %3469 = phi float [ %2619, %3376 ], [ %2619, %2803 ], [ %2619, %2609 ], [ %2619, %2622 ], [ %3410, %3398 ], [ %3444, %3413 ], [ %2619, %3445 ], [ %3458, %3447 ]
  %3470 = phi float [ %2620, %3376 ], [ %2620, %2803 ], [ %2620, %2609 ], [ %2620, %2622 ], [ %3407, %3398 ], [ %3421, %3413 ], [ %2620, %3445 ], [ %3455, %3447 ]
  %3471 = phi float [ %3384, %3376 ], [ %2621, %2803 ], [ %2621, %2609 ], [ %2621, %2622 ], [ %3384, %3398 ], [ %3384, %3413 ], [ %3384, %3445 ], [ %3384, %3447 ]
  %3472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3473 = extractvalue %dx.types.CBufRet.f32 %3472, 0
  %3474 = call float @dx.op.dot2.f32(i32 54, float %3460, float %3461, float %3460, float %3461)  ; Dot2(ax,ay,bx,by)
  %3475 = fmul fast float %3474, 0x3FE3333340000000
  %3476 = fsub fast float 1.000000e+00, %3475
  %3477 = call float @dx.op.dot3.f32(i32 55, float %3460, float %3461, float %3476, float %3460, float %3461, float %3476)  ; Dot3(ax,ay,az,bx,by,bz)
  %3478 = call float @dx.op.unary.f32(i32 25, float %3477)  ; Rsqrt(value)
  %3479 = fmul fast float %3478, %3460
  %3480 = fmul fast float %3478, %3461
  %3481 = fmul fast float %3476, %3478
  %3482 = fmul fast float %3481, %83
  %3483 = fmul fast float %3481, %84
  %3484 = fmul fast float %3481, %85
  %3485 = fmul fast float %3479, %57
  %3486 = fmul fast float %3479, %58
  %3487 = fmul fast float %3479, %59
  %3488 = fadd fast float %3482, %3485
  %3489 = fadd fast float %3483, %3486
  %3490 = fadd fast float %3484, %3487
  %3491 = fmul fast float %95, %3480
  %3492 = fmul fast float %96, %3480
  %3493 = fmul fast float %97, %3480
  %3494 = fadd fast float %3488, %3491
  %3495 = fadd fast float %3489, %3492
  %3496 = fadd fast float %3490, %3493
  %3497 = call float @dx.op.dot3.f32(i32 55, float %3494, float %3495, float %3496, float %3494, float %3495, float %3496)  ; Dot3(ax,ay,az,bx,by,bz)
  %3498 = call float @dx.op.unary.f32(i32 25, float %3497)  ; Rsqrt(value)
  %3499 = fmul fast float %3494, %3498
  %3500 = fmul fast float %3495, %3498
  %3501 = fmul fast float %3496, %3498
  %3502 = icmp eq i32 %33, 65535
  br i1 %3502, label %4017, label %3503

; <label>:3503                                    ; preds = %3459
  %3504 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3505 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3506 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3507 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3508 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3509 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3510 = fadd fast float %3504, %34
  %3511 = fadd fast float %3505, %35
  %3512 = fadd fast float %3506, %36
  %3513 = fadd fast float %3507, %34
  %3514 = fadd fast float %3508, %35
  %3515 = fadd fast float %3509, %36
  %3516 = mul i32 %33, 48
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3517, 2
  %3521 = add i32 %3516, 16
  %3522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = extractvalue %dx.types.ResRet.f32 %3522, 1
  %3525 = extractvalue %dx.types.ResRet.f32 %3522, 2
  %3526 = add i32 %3516, 32
  %3527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.f32 %3527, 0
  %3529 = extractvalue %dx.types.ResRet.f32 %3527, 1
  %3530 = extractvalue %dx.types.ResRet.f32 %3527, 2
  %3531 = extractvalue %dx.types.ResRet.f32 %3527, 3
  %3532 = bitcast float %3531 to i32
  %3533 = fmul fast float %3518, %34
  %3534 = fmul fast float %3519, %35
  %3535 = fmul fast float %3520, %36
  %3536 = fsub fast float %3533, %3523
  %3537 = fsub fast float %3534, %3524
  %3538 = fsub fast float %3535, %3525
  %3539 = call float @dx.op.unary.f32(i32 7, float %3536)  ; Saturate(value)
  %3540 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  %3541 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  %3542 = fmul fast float %3539, %3528
  %3543 = fmul fast float %3540, %3529
  %3544 = fmul fast float %3541, %3530
  %3545 = fadd fast float %3528, -1.000000e+00
  %3546 = fadd fast float %3529, -1.000000e+00
  %3547 = fadd fast float %3530, -1.000000e+00
  %3548 = call float @dx.op.unary.f32(i32 27, float %3542)  ; Round_ni(value)
  %3549 = call float @dx.op.unary.f32(i32 27, float %3543)  ; Round_ni(value)
  %3550 = call float @dx.op.unary.f32(i32 27, float %3544)  ; Round_ni(value)
  %3551 = call float @dx.op.binary.f32(i32 36, float %3548, float %3545)  ; FMin(a,b)
  %3552 = call float @dx.op.binary.f32(i32 36, float %3549, float %3546)  ; FMin(a,b)
  %3553 = call float @dx.op.binary.f32(i32 36, float %3550, float %3547)  ; FMin(a,b)
  %3554 = fmul fast float %3553, %3529
  %3555 = fadd fast float %3554, %3552
  %3556 = fmul fast float %3555, %3528
  %3557 = fadd fast float %3556, %3551
  %3558 = fptosi float %3557 to i32
  %3559 = add nsw i32 %3558, %3532
  %3560 = shl nsw i32 %3559, 2
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = lshr i32 %3562, 16
  %3564 = icmp eq i32 %3563, 0
  br i1 %3564, label %3986, label %3565

; <label>:3565                                    ; preds = %3503
  br label %3566

; <label>:3566                                    ; preds = %3687, %3565
  %3567 = phi i32 [ %3589, %3687 ], [ %3563, %3565 ]
  %3568 = phi float [ %3688, %3687 ], [ 0.000000e+00, %3565 ]
  %3569 = phi float [ %3689, %3687 ], [ %3473, %3565 ]
  %3570 = phi float [ %3690, %3687 ], [ %3471, %3565 ]
  %3571 = phi float [ %3691, %3687 ], [ 0.000000e+00, %3565 ]
  %3572 = phi float [ %3692, %3687 ], [ 0.000000e+00, %3565 ]
  %3573 = phi float [ %3693, %3687 ], [ %3465, %3565 ]
  %3574 = phi float [ %3694, %3687 ], [ %3466, %3565 ]
  %3575 = phi float [ %3695, %3687 ], [ %3467, %3565 ]
  %3576 = phi float [ %3696, %3687 ], [ %3499, %3565 ]
  %3577 = phi float [ %3697, %3687 ], [ %3500, %3565 ]
  %3578 = phi float [ %3698, %3687 ], [ %3501, %3565 ]
  %3579 = phi float [ %3699, %3687 ], [ %3470, %3565 ]
  %3580 = phi float [ %3700, %3687 ], [ %3469, %3565 ]
  %3581 = phi float [ %3701, %3687 ], [ 0.000000e+00, %3565 ]
  %3582 = phi float [ %3702, %3687 ], [ %3468, %3565 ]
  %3583 = phi float [ %3703, %3687 ], [ %3462, %3565 ]
  %3584 = phi float [ %3704, %3687 ], [ %3463, %3565 ]
  %3585 = phi float [ %3705, %3687 ], [ %3464, %3565 ]
  %3586 = shl nuw nsw i32 %3567, 2
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = lshr i32 %3588, 16
  %3590 = shl i32 %3588, 8
  %3591 = and i32 %3590, 16776960
  %3592 = or i32 %3591, 48
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = or i32 %3591, 64
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.i32 %3598, 1
  %3601 = or i32 %3591, 80
  %3602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 3
  %3605 = or i32 %3591, 96
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = or i32 %3591, 112
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3614 = or i32 %3591, 128
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3620 = or i32 %3591, 144
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3621, 3
  %3626 = or i32 %3591, 160
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3627, 3
  %3632 = or i32 %3591, 192
  %3633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.i32 %3633, 0
  %3635 = or i32 %3591, 208
  %3636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = or i32 %3591, 248
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.ResRet.f32 %3642, 2
  %3646 = extractvalue %dx.types.ResRet.f32 %3642, 3
  %3647 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3648 = or i32 %3591, 16
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = or i32 %3591, 32
  %3656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.ResRet.f32 %3656, 1
  %3659 = extractvalue %dx.types.ResRet.f32 %3656, 2
  %3660 = extractvalue %dx.types.ResRet.f32 %3656, 3
  %3661 = call float @dx.op.dot4.f32(i32 56, float %3657, float %3658, float %3659, float %3660, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3662 = call float @dx.op.unary.f32(i32 27, float %3647)  ; Round_ni(value)
  %3663 = call float @dx.op.unary.f32(i32 6, float %3662)  ; FAbs(value)
  %3664 = call float @dx.op.unary.f32(i32 27, float %3654)  ; Round_ni(value)
  %3665 = call float @dx.op.unary.f32(i32 6, float %3664)  ; FAbs(value)
  %3666 = call float @dx.op.unary.f32(i32 6, float %3661)  ; FAbs(value)
  %3667 = call float @dx.op.unary.f32(i32 27, float %3666)  ; Round_ni(value)
  %3668 = fadd fast float %3665, %3663
  %3669 = fadd fast float %3668, %3667
  %3670 = fcmp fast oeq float %3669, 0.000000e+00
  %3671 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3672 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3673 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3674 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3675 = fsub fast float %3671, %3647
  %3676 = fsub fast float %3673, %3647
  %3677 = fsub fast float %3672, %3654
  %3678 = fsub fast float %3674, %3654
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3595, float %3596, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3681 = extractvalue %dx.types.CBufRet.f32 %3680, 2
  %3682 = fadd fast float %3681, %3679
  %3683 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3680, 0
  %3685 = fcmp fast ogt float %3683, %3684
  %3686 = and i1 %3670, %3685
  br i1 %3686, label %3707, label %3687

; <label>:3687                                    ; preds = %3972, %3790, %3707, %3566
  %3688 = phi float [ %3568, %3707 ], [ %3793, %3790 ], [ %3793, %3972 ], [ %3568, %3566 ]
  %3689 = phi float [ %3569, %3707 ], [ %3569, %3790 ], [ %3947, %3972 ], [ %3569, %3566 ]
  %3690 = phi float [ %3570, %3707 ], [ %3570, %3790 ], [ %3945, %3972 ], [ %3570, %3566 ]
  %3691 = phi float [ %3571, %3707 ], [ %3571, %3790 ], [ %3917, %3972 ], [ %3571, %3566 ]
  %3692 = phi float [ %3572, %3707 ], [ %3572, %3790 ], [ %3915, %3972 ], [ %3572, %3566 ]
  %3693 = phi float [ %3573, %3707 ], [ %3573, %3790 ], [ %3982, %3972 ], [ %3573, %3566 ]
  %3694 = phi float [ %3574, %3707 ], [ %3574, %3790 ], [ %3983, %3972 ], [ %3574, %3566 ]
  %3695 = phi float [ %3575, %3707 ], [ %3575, %3790 ], [ %3984, %3972 ], [ %3575, %3566 ]
  %3696 = phi float [ %3576, %3707 ], [ %3576, %3790 ], [ %3896, %3972 ], [ %3576, %3566 ]
  %3697 = phi float [ %3577, %3707 ], [ %3577, %3790 ], [ %3897, %3972 ], [ %3577, %3566 ]
  %3698 = phi float [ %3578, %3707 ], [ %3578, %3790 ], [ %3898, %3972 ], [ %3578, %3566 ]
  %3699 = phi float [ %3579, %3707 ], [ %3579, %3790 ], [ %3925, %3972 ], [ %3579, %3566 ]
  %3700 = phi float [ %3580, %3707 ], [ %3580, %3790 ], [ %3922, %3972 ], [ %3580, %3566 ]
  %3701 = phi float [ %3581, %3707 ], [ %3581, %3790 ], [ %3919, %3972 ], [ %3581, %3566 ]
  %3702 = phi float [ %3582, %3707 ], [ %3582, %3790 ], [ %3913, %3972 ], [ %3582, %3566 ]
  %3703 = phi float [ %3583, %3707 ], [ %3583, %3790 ], [ %3908, %3972 ], [ %3583, %3566 ]
  %3704 = phi float [ %3584, %3707 ], [ %3584, %3790 ], [ %3909, %3972 ], [ %3584, %3566 ]
  %3705 = phi float [ %3585, %3707 ], [ %3585, %3790 ], [ %3910, %3972 ], [ %3585, %3566 ]
  %3706 = icmp eq i32 %3589, 0
  br i1 %3706, label %3985, label %3566

; <label>:3707                                    ; preds = %3566
  %3708 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3709 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3710 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3712 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3713 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3714 = extractvalue %dx.types.ResRet.i32 %3598, 3
  %3715 = extractvalue %dx.types.ResRet.i32 %3598, 2
  %3716 = bitcast float %3708 to i32
  %3717 = add i32 %3714, 0
  %3718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3717, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3720 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3718, %dx.types.Handle %3719, float %3647, float %3654, float undef, float undef, i32 0, i32 0, i32 undef, float %3675, float %3677, float undef, float %3676, float %3678, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = fmul fast float %3721, %3713
  %3723 = fadd fast float %3722, %3712
  %3724 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3725 = fmul fast float %3647, %3607
  %3726 = call float @dx.op.tertiary.f32(i32 46, float %3608, float %3654, float %3725)  ; FMad(a,b,c)
  %3727 = fadd fast float %3726, %3711
  %3728 = fmul fast float %3647, %3609
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3610, float %3654, float %3728)  ; FMad(a,b,c)
  %3730 = fadd fast float %3729, %3710
  %3731 = fmul fast float %3675, %3607
  %3732 = call float @dx.op.tertiary.f32(i32 46, float %3608, float %3677, float %3731)  ; FMad(a,b,c)
  %3733 = fmul fast float %3675, %3609
  %3734 = call float @dx.op.tertiary.f32(i32 46, float %3610, float %3677, float %3733)  ; FMad(a,b,c)
  %3735 = fmul fast float %3676, %3607
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3608, float %3678, float %3735)  ; FMad(a,b,c)
  %3737 = fmul fast float %3676, %3609
  %3738 = call float @dx.op.tertiary.f32(i32 46, float %3610, float %3678, float %3737)  ; FMad(a,b,c)
  %3739 = add i32 %3715, 0
  %3740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3739, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3741 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3740, %dx.types.Handle %3719, float %3727, float %3730, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3736, float %3738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = and i32 %3716, 1024
  %3744 = icmp ne i32 %3743, 0
  %3745 = fcmp fast ogt float %3742, 0x3FE0101020000000
  %3746 = uitofp i1 %3745 to float
  %3747 = select i1 %3744, float %3746, float %3742
  %3748 = and i32 %3716, 8192
  %3749 = icmp ne i32 %3748, 0
  %3750 = select i1 %3749, float %3709, float 1.000000e+00
  %3751 = fmul fast float %3647, 2.000000e+00
  %3752 = fadd fast float %3751, -1.000000e+00
  %3753 = call float @dx.op.unary.f32(i32 6, float %3752)  ; FAbs(value)
  %3754 = fmul fast float %3753, %3640
  %3755 = fsub fast float %3754, %3640
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3757 = fmul fast float %3654, 2.000000e+00
  %3758 = fadd fast float %3757, -1.000000e+00
  %3759 = call float @dx.op.unary.f32(i32 6, float %3758)  ; FAbs(value)
  %3760 = fmul fast float %3759, %3641
  %3761 = fsub fast float %3760, %3641
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3763 = fmul fast float %3666, %3603
  %3764 = fsub fast float %3763, %3603
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = fmul fast float %3724, %3750
  %3767 = fmul fast float %3766, %3721
  %3768 = fmul fast float %3767, %3756
  %3769 = fmul fast float %3768, %3747
  %3770 = fmul fast float %3769, %3762
  %3771 = fmul fast float %3770, %3765
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 1
  %3774 = extractvalue %dx.types.CBufRet.f32 %3772, 0
  %3775 = fsub fast float %3683, %3774
  %3776 = fmul fast float %3775, %3773
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fmul fast float %3771, %3604
  %3779 = fadd fast float %3771, %3604
  %3780 = fmul fast float %3779, %3613
  %3781 = fsub fast float %3780, %3613
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = and i32 %3716, 128
  %3784 = icmp ne i32 %3783, 0
  %3785 = select i1 %3784, float %3782, float %3778
  %3786 = fmul fast float %3785, %3777
  %3787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3788 = extractvalue %dx.types.CBufRet.f32 %3787, 0
  %3789 = fcmp fast ugt float %3786, %3788
  br i1 %3789, label %3790, label %3687

; <label>:3790                                    ; preds = %3707
  %3791 = select i1 %3749, float %3786, float 0.000000e+00
  %3792 = fadd fast float %3791, %3568
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  br i1 %3749, label %3687, label %3794

; <label>:3794                                    ; preds = %3790
  %3795 = and i32 %3716, 4
  %3796 = and i32 %3716, 8
  %3797 = add i32 %3599, 0
  %3798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3797, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3800 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3798, %dx.types.Handle %3799, float %3727, float %3730, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3736, float %3738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3800, 2
  %3804 = extractvalue %dx.types.ResRet.f32 %3800, 3
  %3805 = bitcast float %3625 to i32
  %3806 = and i32 %3805, 255
  %3807 = uitofp i32 %3806 to float
  %3808 = lshr i32 %3805, 8
  %3809 = and i32 %3808, 255
  %3810 = uitofp i32 %3809 to float
  %3811 = fmul fast float %3804, %3807
  %3812 = fadd fast float %3811, %3810
  %3813 = fmul fast float %3812, 0x3F70101000000000
  %3814 = add i32 %3600, 0
  %3815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3814, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3816 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3815, %dx.types.Handle %3799, float %3727, float %3730, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3736, float %3738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3819 = extractvalue %dx.types.ResRet.f32 %3816, 2
  %3820 = extractvalue %dx.types.ResRet.f32 %3816, 3
  %3821 = bitcast float %3619 to i32
  %3822 = and i32 %3821, 255
  %3823 = uitofp i32 %3822 to float
  %3824 = lshr i32 %3821, 8
  %3825 = and i32 %3824, 255
  %3826 = uitofp i32 %3825 to float
  %3827 = lshr i32 %3821, 16
  %3828 = and i32 %3827, 255
  %3829 = uitofp i32 %3828 to float
  %3830 = fmul fast float %3829, 0x3F70101000000000
  %3831 = fmul fast float %3817, %3823
  %3832 = fadd fast float %3831, %3826
  %3833 = fmul fast float %3832, 0x3F70101000000000
  %3834 = fadd fast float %3818, -5.000000e-01
  %3835 = fadd fast float %3820, -5.000000e-01
  %3836 = fmul fast float %3834, %3830
  %3837 = fmul fast float %3835, %3830
  %3838 = fadd fast float %3836, 5.000000e-01
  %3839 = fadd fast float %3837, 5.000000e-01
  %3840 = fmul fast float %3801, %3628
  %3841 = fmul fast float %3802, %3629
  %3842 = fmul fast float %3803, %3630
  %3843 = fmul fast float %3838, 2.000000e+00
  %3844 = fadd fast float %3843, -1.000000e+00
  %3845 = fmul fast float %3839, 2.000000e+00
  %3846 = fadd fast float %3845, -1.000000e+00
  %3847 = fadd fast float %3844, %3846
  %3848 = fmul fast float %3847, 5.000000e-01
  %3849 = fsub fast float %3844, %3846
  %3850 = fmul fast float %3849, 5.000000e-01
  %3851 = call float @dx.op.unary.f32(i32 6, float %3848)  ; FAbs(value)
  %3852 = fsub fast float 1.000000e+00, %3851
  %3853 = call float @dx.op.unary.f32(i32 6, float %3850)  ; FAbs(value)
  %3854 = fsub fast float %3852, %3853
  %3855 = call float @dx.op.dot3.f32(i32 55, float %3848, float %3850, float %3854, float %3848, float %3850, float %3854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3856 = call float @dx.op.unary.f32(i32 25, float %3855)  ; Rsqrt(value)
  %3857 = fmul fast float %3848, %3856
  %3858 = fmul fast float %3850, %3856
  %3859 = fmul fast float %3856, %3854
  %3860 = fmul fast float %3859, %3594
  %3861 = fmul fast float %3859, %3595
  %3862 = fmul fast float %3859, %3596
  %3863 = fmul fast float %3857, %3616
  %3864 = fmul fast float %3857, %3617
  %3865 = fmul fast float %3857, %3618
  %3866 = fadd fast float %3863, %3860
  %3867 = fadd fast float %3864, %3861
  %3868 = fadd fast float %3865, %3862
  %3869 = fmul fast float %3858, %3622
  %3870 = fmul fast float %3858, %3623
  %3871 = fmul fast float %3858, %3624
  %3872 = fadd fast float %3866, %3869
  %3873 = fadd fast float %3867, %3870
  %3874 = fadd fast float %3868, %3871
  %3875 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3872, float %3873, float %3874)  ; Dot3(ax,ay,az,bx,by,bz)
  %3876 = call float @dx.op.unary.f32(i32 25, float %3875)  ; Rsqrt(value)
  %3877 = fmul fast float %3872, %3876
  %3878 = fmul fast float %3873, %3876
  %3879 = fmul fast float %3874, %3876
  %3880 = icmp ne i32 %3796, 0
  %3881 = select i1 %3880, float 1.000000e+00, float 0.000000e+00
  %3882 = fmul fast float %3786, %3881
  %3883 = and i32 %3716, 1
  %3884 = icmp eq i32 %3883, 0
  br i1 %3884, label %3885, label %3889

; <label>:3885                                    ; preds = %3794
  %3886 = fsub fast float %3877, %3576
  %3887 = fsub fast float %3878, %3577
  %3888 = fsub fast float %3879, %3578
  br label %3889

; <label>:3889                                    ; preds = %3885, %3794
  %3890 = phi float [ %3886, %3885 ], [ %3877, %3794 ]
  %3891 = phi float [ %3887, %3885 ], [ %3878, %3794 ]
  %3892 = phi float [ %3888, %3885 ], [ %3879, %3794 ]
  %3893 = fmul float %3892, %3882
  %3894 = fmul float %3891, %3882
  %3895 = fmul float %3890, %3882
  %3896 = fadd fast float %3895, %3576
  %3897 = fadd fast float %3894, %3577
  %3898 = fadd fast float %3893, %3578
  %3899 = icmp ne i32 %3795, 0
  %3900 = select i1 %3899, float 1.000000e+00, float 0.000000e+00
  %3901 = fmul fast float %3786, %3900
  %3902 = fsub fast float %3840, %3583
  %3903 = fsub fast float %3841, %3584
  %3904 = fsub fast float %3842, %3585
  %3905 = fmul fast float %3902, %3901
  %3906 = fmul fast float %3903, %3901
  %3907 = fmul fast float %3904, %3901
  %3908 = fadd fast float %3905, %3583
  %3909 = fadd fast float %3906, %3584
  %3910 = fadd fast float %3907, %3585
  %3911 = fsub fast float %3813, %3582
  %3912 = fmul fast float %3911, %3901
  %3913 = fadd fast float %3912, %3582
  %3914 = fmul fast float %3901, %3572
  %3915 = fsub fast float %3572, %3914
  %3916 = fmul fast float %3901, %3571
  %3917 = fsub fast float %3571, %3916
  %3918 = fadd fast float %3786, %3581
  %3919 = call float @dx.op.unary.f32(i32 7, float %3918)  ; Saturate(value)
  %3920 = fsub fast float %3833, %3580
  %3921 = fmul fast float %3920, %3882
  %3922 = fadd fast float %3921, %3580
  %3923 = fsub fast float %3819, %3579
  %3924 = fmul fast float %3923, %3882
  %3925 = fadd fast float %3924, %3579
  %3926 = call float @dx.op.dot3.f32(i32 55, float %3840, float %3841, float %3842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3930 = fmul fast float %3929, %3926
  %3931 = fadd fast float %3930, %3928
  %3932 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3933 = bitcast float %3631 to i32
  %3934 = and i32 %3933, 65535
  %3935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3934)  ; LegacyF16ToF32(value)
  %3936 = lshr i32 %3933, 16
  %3937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3936)  ; LegacyF16ToF32(value)
  %3938 = fcmp fast oge float %3935, 0.000000e+00
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = select i1 %3938, float %3935, float %3940
  %3942 = fadd fast float %3941, %3937
  %3943 = fsub fast float %3932, %3570
  %3944 = fmul fast float %3943, %3786
  %3945 = fadd fast float %3944, %3570
  %3946 = fmul fast float %3942, %3786
  %3947 = call float @dx.op.binary.f32(i32 35, float %3569, float %3946)  ; FMax(a,b)
  %3948 = and i32 %3716, 16
  %3949 = icmp eq i32 %3948, 0
  br i1 %3949, label %3972, label %3950

; <label>:3950                                    ; preds = %3889
  %3951 = bitcast float %3637 to i32
  %3952 = add i32 %3634, 0
  %3953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3953, %dx.types.Handle %3799, float %3727, float %3730, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3736, float %3738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = and i32 %3951, 65535
  %3959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3958)  ; LegacyF16ToF32(value)
  %3960 = fmul fast float %3955, %3628
  %3961 = fmul fast float %3956, %3629
  %3962 = fmul fast float %3957, %3630
  %3963 = and i32 %3716, 16384
  %3964 = icmp ne i32 %3963, 0
  %3965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.f32 %3965, 0
  %3967 = select i1 %3964, float %3966, float 1.000000e+00
  %3968 = fmul fast float %3967, %3959
  %3969 = fmul fast float %3960, %3968
  %3970 = fmul fast float %3961, %3968
  %3971 = fmul fast float %3962, %3968
  br label %3972

; <label>:3972                                    ; preds = %3950, %3889
  %3973 = phi float [ %3969, %3950 ], [ 0.000000e+00, %3889 ]
  %3974 = phi float [ %3970, %3950 ], [ 0.000000e+00, %3889 ]
  %3975 = phi float [ %3971, %3950 ], [ 0.000000e+00, %3889 ]
  %3976 = fsub fast float %3973, %3573
  %3977 = fsub fast float %3974, %3574
  %3978 = fsub fast float %3975, %3575
  %3979 = fmul fast float %3976, %3786
  %3980 = fmul fast float %3977, %3786
  %3981 = fmul fast float %3978, %3786
  %3982 = fadd fast float %3979, %3573
  %3983 = fadd fast float %3980, %3574
  %3984 = fadd fast float %3981, %3575
  br label %3687

; <label>:3985                                    ; preds = %3687
  br label %3986

; <label>:3986                                    ; preds = %3985, %3503
  %3987 = phi float [ 0.000000e+00, %3503 ], [ %3688, %3985 ]
  %3988 = phi float [ %3473, %3503 ], [ %3689, %3985 ]
  %3989 = phi float [ %3471, %3503 ], [ %3690, %3985 ]
  %3990 = phi float [ 0.000000e+00, %3503 ], [ %3691, %3985 ]
  %3991 = phi float [ 0.000000e+00, %3503 ], [ %3692, %3985 ]
  %3992 = phi float [ %3465, %3503 ], [ %3693, %3985 ]
  %3993 = phi float [ %3466, %3503 ], [ %3694, %3985 ]
  %3994 = phi float [ %3467, %3503 ], [ %3695, %3985 ]
  %3995 = phi float [ %3499, %3503 ], [ %3696, %3985 ]
  %3996 = phi float [ %3500, %3503 ], [ %3697, %3985 ]
  %3997 = phi float [ %3501, %3503 ], [ %3698, %3985 ]
  %3998 = phi float [ %3470, %3503 ], [ %3699, %3985 ]
  %3999 = phi float [ %3469, %3503 ], [ %3700, %3985 ]
  %4000 = phi float [ 0.000000e+00, %3503 ], [ %3701, %3985 ]
  %4001 = phi float [ %3468, %3503 ], [ %3702, %3985 ]
  %4002 = phi float [ %3462, %3503 ], [ %3703, %3985 ]
  %4003 = phi float [ %3463, %3503 ], [ %3704, %3985 ]
  %4004 = phi float [ %3464, %3503 ], [ %3705, %3985 ]
  %4005 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3996, float %3997, float %3995, float %3996, float %3997)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = call float @dx.op.unary.f32(i32 25, float %4005)  ; Rsqrt(value)
  %4007 = fmul fast float %4006, %3995
  %4008 = fmul fast float %4006, %3996
  %4009 = fmul fast float %4006, %3997
  %4010 = fadd fast float %4000, %918
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4009, float %4007, float %4008, float %4009)  ; Dot3(ax,ay,az,bx,by,bz)
  %4013 = call float @dx.op.unary.f32(i32 25, float %4012)  ; Rsqrt(value)
  %4014 = fmul fast float %4013, %4007
  %4015 = fmul fast float %4013, %4008
  %4016 = fmul fast float %4013, %4009
  br label %4017

; <label>:4017                                    ; preds = %3986, %3459
  %4018 = phi float [ %4014, %3986 ], [ %3499, %3459 ]
  %4019 = phi float [ %4015, %3986 ], [ %3500, %3459 ]
  %4020 = phi float [ %4016, %3986 ], [ %3501, %3459 ]
  %4021 = phi float [ %4002, %3986 ], [ %3462, %3459 ]
  %4022 = phi float [ %4003, %3986 ], [ %3463, %3459 ]
  %4023 = phi float [ %4004, %3986 ], [ %3464, %3459 ]
  %4024 = phi float [ %3992, %3986 ], [ %3465, %3459 ]
  %4025 = phi float [ %3993, %3986 ], [ %3466, %3459 ]
  %4026 = phi float [ %3994, %3986 ], [ %3467, %3459 ]
  %4027 = phi float [ %4001, %3986 ], [ %3468, %3459 ]
  %4028 = phi float [ %4011, %3986 ], [ %918, %3459 ]
  %4029 = phi float [ %3999, %3986 ], [ %3469, %3459 ]
  %4030 = phi float [ %3998, %3986 ], [ %3470, %3459 ]
  %4031 = phi float [ %3991, %3986 ], [ 0.000000e+00, %3459 ]
  %4032 = phi float [ %3990, %3986 ], [ 0.000000e+00, %3459 ]
  %4033 = phi float [ %3987, %3986 ], [ 0.000000e+00, %3459 ]
  %4034 = phi float [ %3988, %3986 ], [ %3473, %3459 ]
  %4035 = phi float [ %3989, %3986 ], [ %3471, %3459 ]
  %4036 = fadd fast float %4027, 0xBFB99999A0000000
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4038 = fmul fast float %4037, 0x3FF1C71C80000000
  %4039 = call float @dx.op.binary.f32(i32 36, float %4027, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4040 = fsub fast float 1.000000e+00, %4038
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = fmul fast float %4041, %4021
  %4043 = fmul fast float %4041, %4022
  %4044 = fmul fast float %4041, %4023
  %4045 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = fmul fast float %4038, %4021
  %4049 = fmul fast float %4038, %4022
  %4050 = fmul fast float %4038, %4023
  %4051 = fadd fast float %4048, %4039
  %4052 = fadd fast float %4049, %4039
  %4053 = fadd fast float %4050, %4039
  %4054 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4055 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4056 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4057 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.i32 %4058, 3
  %4060 = and i32 %4059, 8
  %4061 = icmp ne i32 %4060, 0
  %4062 = call float @dx.op.binary.f32(i32 35, float %4045, float %4021)  ; FMax(a,b)
  %4063 = call float @dx.op.binary.f32(i32 35, float %4046, float %4021)  ; FMax(a,b)
  %4064 = call float @dx.op.binary.f32(i32 35, float %4047, float %4021)  ; FMax(a,b)
  %4065 = call float @dx.op.dot3.f32(i32 55, float %4045, float %4046, float %4047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4066 = select i1 %202, float %4021, float %4045
  %4067 = select i1 %202, float %4065, float %4046
  %4068 = select i1 %202, float 1.000000e+00, float %4047
  %4069 = select i1 %4061, float %4062, float %4066
  %4070 = select i1 %4061, float %4063, float %4067
  %4071 = select i1 %4061, float %4064, float %4068
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4076 = fadd fast float %4073, %163
  %4077 = fadd fast float %4074, %164
  %4078 = fadd fast float %4075, %165
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4082 = fsub fast float %4076, %4080
  %4083 = fsub fast float %4077, %4081
  %4084 = fmul fast float %4082, %4082
  %4085 = fmul fast float %4083, %4083
  %4086 = fadd fast float %4084, %4085
  %4087 = call float @dx.op.unary.f32(i32 24, float %4086)  ; Sqrt(value)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4079, 2
  %4089 = fcmp fast olt float %4087, %4088
  br i1 %4089, label %4090, label %4157

; <label>:4090                                    ; preds = %4017
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 0
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4098 = extractvalue %dx.types.CBufRet.f32 %4093, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4101 = extractvalue %dx.types.CBufRet.f32 %4093, 3
  %4102 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4103 = fadd fast float %4100, %4076
  %4104 = fadd fast float %4101, %4077
  %4105 = fadd fast float %4102, %4078
  %4106 = fmul fast float %4103, %4092
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4094, float %4106)  ; FMad(a,b,c)
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4096, float %4107)  ; FMad(a,b,c)
  %4109 = fmul fast float %4103, %4097
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4098, float %4109)  ; FMad(a,b,c)
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4099, float %4110)  ; FMad(a,b,c)
  %4112 = fsub fast float %4108, %4100
  %4113 = fsub fast float %4111, %4101
  %4114 = fsub fast float %4112, %4080
  %4115 = fadd fast float %4114, %4088
  %4116 = fsub fast float %4113, %4081
  %4117 = fadd fast float %4116, %4088
  %4118 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4119 = fmul fast float %4115, %4118
  %4120 = fmul fast float %4117, %4118
  %4121 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4122 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4123 = fsub fast float 1.000000e+00, %4121
  %4124 = fsub fast float 1.000000e+00, %4122
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %4123, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = fcmp fast ugt float %4126, 0.000000e+00
  br i1 %4127, label %4128, label %4431

; <label>:4128                                    ; preds = %4090
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4131 = fmul fast float %4130, %4126
  %4132 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4133 = fadd fast float %4132, %4131
  %4134 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4135 = fadd fast float %4133, %4102
  %4136 = fmul fast float %4108, %4096
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4111, float %4099, float %4136)  ; FMad(a,b,c)
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4135, float %4134, float %4137)  ; FMad(a,b,c)
  %4139 = fsub fast float %4138, %4102
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4142 = fsub fast float %4139, %4141
  %4143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %4123, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %4123, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4147, 2
  %4151 = fadd fast float %4148, %4144
  %4152 = fmul fast float %4151, 0x3F847AE140000000
  %4153 = fadd fast float %4149, %4145
  %4154 = fmul fast float %4153, 0x3F847AE140000000
  %4155 = fadd fast float %4150, %4146
  %4156 = fmul fast float %4155, 0x3F847AE140000000
  br label %4431

; <label>:4157                                    ; preds = %4017
  %4158 = and i32 %181, 1
  %4159 = icmp eq i32 %4158, 0
  br i1 %4159, label %4431, label %4160

; <label>:4160                                    ; preds = %4157
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 0
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.CBufRet.f32 %4161, 1
  %4168 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4171 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4172 = extractvalue %dx.types.CBufRet.f32 %4165, 3
  %4173 = fadd fast float %4170, %4076
  %4174 = fadd fast float %4171, %4077
  %4175 = fadd fast float %4172, %4078
  %4176 = fmul fast float %4173, %4162
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4164, float %4176)  ; FMad(a,b,c)
  %4178 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4166, float %4177)  ; FMad(a,b,c)
  %4179 = fmul fast float %4173, %4167
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4168, float %4179)  ; FMad(a,b,c)
  %4181 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4169, float %4180)  ; FMad(a,b,c)
  %4182 = fsub fast float %4178, %4170
  %4183 = fsub fast float %4181, %4171
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.CBufRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4184, 2
  %4188 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.i32 %4191, 0
  %4193 = extractvalue %dx.types.CBufRet.i32 %4191, 1
  %4194 = udiv i32 %4193, %4192
  %4195 = fsub fast float %4182, %4185
  %4196 = fsub fast float %4183, %4186
  %4197 = call float @dx.op.binary.f32(i32 35, float %4195, float 0.000000e+00)  ; FMax(a,b)
  %4198 = call float @dx.op.binary.f32(i32 35, float %4196, float 0.000000e+00)  ; FMax(a,b)
  %4199 = call float @dx.op.binary.f32(i32 36, float %4197, float %4187)  ; FMin(a,b)
  %4200 = call float @dx.op.binary.f32(i32 36, float %4198, float %4188)  ; FMin(a,b)
  %4201 = add i32 %4192, -1
  %4202 = add i32 %4194, -1
  %4203 = fmul fast float %4199, %4190
  %4204 = fmul fast float %4200, %4190
  %4205 = fptoui float %4203 to i32
  %4206 = fptoui float %4204 to i32
  %4207 = call i32 @dx.op.binary.i32(i32 40, i32 %4205, i32 %4201)  ; UMin(a,b)
  %4208 = call i32 @dx.op.binary.i32(i32 40, i32 %4206, i32 %4202)  ; UMin(a,b)
  %4209 = mul i32 %4208, %4192
  %4210 = add i32 %4209, %4207
  %4211 = shl i32 %4210, 2
  %4212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.i32 %4212, 0
  %4214 = icmp eq i32 %4213, -1
  br i1 %4214, label %4431, label %4215

; <label>:4215                                    ; preds = %4160
  %4216 = mul i32 %4213, 148
  %4217 = add i32 %4216, 4
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = add i32 %4216, 8
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = add i32 %4216, 36
  %4224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4223, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.f32 %4224, 0
  %4226 = add i32 %4216, 60
  %4227 = add i32 %4216, 92
  %4228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.i32 %4228, 0
  %4230 = add i32 %4216, 116
  %4231 = fsub fast float %4182, %4219
  %4232 = fsub fast float %4183, %4222
  %4233 = fmul fast float %4190, %4231
  %4234 = fmul fast float %4190, %4232
  %4235 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4237 = fsub fast float 1.000000e+00, %4236
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4240 = call float @dx.op.unary.f32(i32 83, float %4235)  ; DerivCoarseX(value)
  %4241 = call float @dx.op.unary.f32(i32 83, float %4237)  ; DerivCoarseX(value)
  %4242 = call float @dx.op.unary.f32(i32 84, float %4235)  ; DerivCoarseY(value)
  %4243 = call float @dx.op.unary.f32(i32 84, float %4237)  ; DerivCoarseY(value)
  %4244 = fmul fast float %4240, %4239
  %4245 = fmul fast float %4241, %4239
  %4246 = fmul fast float %4242, %4239
  %4247 = fmul fast float %4243, %4239
  %4248 = call float @dx.op.dot2.f32(i32 54, float %4246, float %4247, float %4246, float %4247)  ; Dot2(ax,ay,bx,by)
  %4249 = call float @dx.op.dot2.f32(i32 54, float %4244, float %4245, float %4244, float %4245)  ; Dot2(ax,ay,bx,by)
  %4250 = call float @dx.op.binary.f32(i32 35, float %4249, float %4248)  ; FMax(a,b)
  %4251 = call float @dx.op.unary.f32(i32 23, float %4250)  ; Log(value)
  %4252 = fmul fast float %4251, 5.000000e-01
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 1
  %4255 = fadd fast float %4254, %4252
  %4256 = call float @dx.op.binary.f32(i32 35, float %4255, float 0.000000e+00)  ; FMax(a,b)
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 3
  %4259 = fadd fast float %4258, %4256
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 3
  %4262 = fadd fast float %4259, %4261
  %4263 = add i32 %4229, 0
  %4264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4263, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4265 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4264, i32 0)  ; GetDimensions(handle,mipLevel)
  %4266 = extractvalue %dx.types.Dimensions %4265, 0
  %4267 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4266)  ; FirstbitLo(value)
  %4268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.i32 %4268, 1
  %4270 = sub nsw i32 %4269, %4267
  %4271 = sitofp i32 %4270 to float
  %4272 = fsub fast float %4262, %4271
  %4273 = call float @dx.op.binary.f32(i32 35, float %4272, float 0.000000e+00)  ; FMax(a,b)
  %4274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4264, %dx.types.Handle %27, float %4235, float %4237, float %4225, float undef, i32 0, i32 0, i32 undef, float %4273)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = fcmp ule float %4275, 0x3FE0101020000000
  %4277 = extractvalue %dx.types.CBufRet.i32 %4268, 0
  %4278 = and i32 %4277, 128
  %4279 = icmp ne i32 %4278, 0
  %4280 = and i1 %4276, %4279
  br i1 %4280, label %4431, label %4281

; <label>:4281                                    ; preds = %4215
  %4282 = add i32 %4216, 20
  %4283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = add i32 %4216, 24
  %4286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4285, i32 undef)  ; BufferLoad(srv,index,wot)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = add i32 %4216, 40
  %4289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = add i32 %4216, 96
  %4292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.i32 %4292, 0
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 2
  %4296 = fmul fast float %4295, %4235
  %4297 = fmul fast float %4295, %4237
  %4298 = extractvalue %dx.types.CBufRet.f32 %4294, 3
  %4299 = fadd fast float %4296, %4298
  %4300 = fadd fast float %4297, %4298
  %4301 = add i32 %4293, 0
  %4302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4301, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4303 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4302, i32 0)  ; GetDimensions(handle,mipLevel)
  %4304 = extractvalue %dx.types.Dimensions %4303, 0
  %4305 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4304)  ; FirstbitLo(value)
  %4306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.i32 %4306, 1
  %4308 = sub nsw i32 %4307, %4305
  %4309 = sitofp i32 %4308 to float
  %4310 = fsub fast float %4259, %4309
  %4311 = call float @dx.op.binary.f32(i32 35, float %4310, float 0.000000e+00)  ; FMax(a,b)
  %4312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4302, %dx.types.Handle %27, float %4299, float %4300, float %4290, float undef, i32 0, i32 0, i32 undef, float %4311)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = fmul fast float %4313, %4284
  %4315 = fadd fast float %4314, %4287
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 0
  %4318 = extractvalue %dx.types.CBufRet.f32 %4316, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4316, 2
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4324 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4325 = fadd fast float %4321, %4182
  %4326 = fadd fast float %4323, %4183
  %4327 = fadd fast float %4315, %4324
  %4328 = fmul fast float %4325, %4317
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4326, float %4318, float %4328)  ; FMad(a,b,c)
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4327, float %4319, float %4329)  ; FMad(a,b,c)
  %4331 = fsub fast float %4330, %4324
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4334 = fsub fast float %4331, %4333
  %4335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.i32 %4335, 0
  %4337 = call i32 @dx.op.binary.i32(i32 40, i32 %4213, i32 %4336)  ; UMin(a,b)
  %4338 = mul i32 %4337, 36
  %4339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.i32 %4339, 0
  %4341 = add i32 %4338, 4
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4344 = fmul fast float %4343, %4235
  %4345 = fmul fast float %4343, %4237
  %4346 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4347 = fadd fast float %4344, %4346
  %4348 = fadd fast float %4345, %4346
  %4349 = icmp eq i32 %4340, 0
  br i1 %4349, label %4418, label %4350

; <label>:4350                                    ; preds = %4281
  br label %4351

; <label>:4351                                    ; preds = %4408, %4350
  %4352 = phi float [ %4409, %4408 ], [ 0.000000e+00, %4350 ]
  %4353 = phi float [ %4410, %4408 ], [ 0.000000e+00, %4350 ]
  %4354 = phi float [ %4411, %4408 ], [ 0.000000e+00, %4350 ]
  %4355 = phi float [ %4412, %4408 ], [ 0.000000e+00, %4350 ]
  %4356 = phi float [ %4413, %4408 ], [ 0.000000e+00, %4350 ]
  %4357 = phi float [ %4414, %4408 ], [ 0.000000e+00, %4350 ]
  %4358 = phi i32 [ %4415, %4408 ], [ 0, %4350 ]
  %4359 = shl i32 %4358, 2
  %4360 = add i32 %4226, %4359
  %4361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4360, i32 undef)  ; BufferLoad(srv,index,wot)
  %4362 = extractvalue %dx.types.ResRet.f32 %4361, 0
  %4363 = add i32 %4230, %4359
  %4364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.i32 %4364, 0
  %4366 = add i32 %4365, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4367, i32 0)  ; GetDimensions(handle,mipLevel)
  %4369 = extractvalue %dx.types.Dimensions %4368, 0
  %4370 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4369)  ; FirstbitLo(value)
  %4371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.i32 %4371, 1
  %4373 = sub nsw i32 %4372, %4370
  %4374 = sitofp i32 %4373 to float
  %4375 = fsub fast float %4259, %4374
  %4376 = call float @dx.op.binary.f32(i32 35, float %4375, float 0.000000e+00)  ; FMax(a,b)
  %4377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4367, %dx.types.Handle %27, float %4347, float %4348, float %4362, float undef, i32 0, i32 0, i32 undef, float %4376)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = fcmp fast ogt float %4378, 0.000000e+00
  br i1 %4379, label %4380, label %4408

; <label>:4380                                    ; preds = %4351
  %4381 = add i32 %4341, %4359
  %4382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4381, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.i32 %4382, 0
  %4384 = and i32 %4383, 32767
  %4385 = mul nuw nsw i32 %4384, 928
  %4386 = add nuw nsw i32 %4385, 48
  %4387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.ResRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.ResRet.f32 %4387, 2
  %4391 = add nuw nsw i32 %4385, 60
  %4392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = fmul fast float %4388, %4378
  %4397 = fmul fast float %4389, %4378
  %4398 = fmul fast float %4390, %4378
  %4399 = fadd fast float %4396, %4352
  %4400 = fadd fast float %4397, %4353
  %4401 = fadd fast float %4398, %4354
  %4402 = fmul fast float %4393, %4378
  %4403 = fmul fast float %4394, %4378
  %4404 = fmul fast float %4395, %4378
  %4405 = fadd fast float %4402, %4355
  %4406 = fadd fast float %4403, %4356
  %4407 = fadd fast float %4404, %4357
  br label %4408

; <label>:4408                                    ; preds = %4380, %4351
  %4409 = phi float [ %4399, %4380 ], [ %4352, %4351 ]
  %4410 = phi float [ %4400, %4380 ], [ %4353, %4351 ]
  %4411 = phi float [ %4401, %4380 ], [ %4354, %4351 ]
  %4412 = phi float [ %4405, %4380 ], [ %4355, %4351 ]
  %4413 = phi float [ %4406, %4380 ], [ %4356, %4351 ]
  %4414 = phi float [ %4407, %4380 ], [ %4357, %4351 ]
  %4415 = add nuw i32 %4358, 1
  %4416 = icmp eq i32 %4415, %4340
  br i1 %4416, label %4417, label %4351

; <label>:4417                                    ; preds = %4408
  br label %4418

; <label>:4418                                    ; preds = %4417, %4281
  %4419 = phi float [ 0.000000e+00, %4281 ], [ %4409, %4417 ]
  %4420 = phi float [ 0.000000e+00, %4281 ], [ %4410, %4417 ]
  %4421 = phi float [ 0.000000e+00, %4281 ], [ %4411, %4417 ]
  %4422 = phi float [ 0.000000e+00, %4281 ], [ %4412, %4417 ]
  %4423 = phi float [ 0.000000e+00, %4281 ], [ %4413, %4417 ]
  %4424 = phi float [ 0.000000e+00, %4281 ], [ %4414, %4417 ]
  %4425 = fadd fast float %4422, %4419
  %4426 = fmul fast float %4425, 0x3F847AE140000000
  %4427 = fadd fast float %4423, %4420
  %4428 = fmul fast float %4427, 0x3F847AE140000000
  %4429 = fadd fast float %4424, %4421
  %4430 = fmul fast float %4429, 0x3F847AE140000000
  br label %4431

; <label>:4431                                    ; preds = %4418, %4215, %4160, %4157, %4128, %4090
  %4432 = phi float [ %4142, %4128 ], [ -1.310720e+05, %4090 ], [ %4334, %4418 ], [ -1.310720e+05, %4160 ], [ -1.310720e+05, %4215 ], [ -1.310720e+05, %4157 ]
  %4433 = phi float [ %4152, %4128 ], [ 0.000000e+00, %4090 ], [ %4426, %4418 ], [ 0.000000e+00, %4160 ], [ 0.000000e+00, %4215 ], [ 0.000000e+00, %4157 ]
  %4434 = phi float [ %4154, %4128 ], [ 0.000000e+00, %4090 ], [ %4428, %4418 ], [ 0.000000e+00, %4160 ], [ 0.000000e+00, %4215 ], [ 0.000000e+00, %4157 ]
  %4435 = phi float [ %4156, %4128 ], [ 0.000000e+00, %4090 ], [ %4430, %4418 ], [ 0.000000e+00, %4160 ], [ 0.000000e+00, %4215 ], [ 0.000000e+00, %4157 ]
  %4436 = phi i1 [ true, %4128 ], [ false, %4090 ], [ true, %4418 ], [ false, %4160 ], [ false, %4215 ], [ false, %4157 ]
  %4437 = and i32 %181, 3
  %4438 = icmp eq i32 %4437, 1
  %4439 = select i1 %4438, float 1.000000e+00, float 0.000000e+00
  %4440 = fsub fast float %4432, %165
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = select i1 %4436, float %4441, float 1.000000e+00
  %4443 = fmul fast float %4442, %4439
  %4444 = icmp eq i32 %4437, 3
  %4445 = select i1 %4444, float 1.000000e+00, float %4443
  %4446 = call float @dx.op.binary.f32(i32 35, float %4033, float %4445)  ; FMax(a,b)
  %4447 = fcmp fast olt float %4445, 1.000000e+00
  %4448 = fcmp uge float %47, 0.000000e+00
  %4449 = and i1 %4448, %4447
  br i1 %4449, label %4450, label %4460

; <label>:4450                                    ; preds = %4431
  %4451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.ResRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.ResRet.f32 %4451, 2
  %4455 = fadd fast float %4452, %4446
  %4456 = fcmp ule float %46, 0.000000e+00
  %4457 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4458 = select i1 %4456, float %4457, float 1.000000e+00
  %4459 = fmul fast float %4458, %4454
  br label %4460

; <label>:4460                                    ; preds = %4450, %4431
  %4461 = phi float [ %4455, %4450 ], [ %4446, %4431 ]
  %4462 = phi float [ %4453, %4450 ], [ 0.000000e+00, %4431 ]
  %4463 = phi float [ %4459, %4450 ], [ 0.000000e+00, %4431 ]
  %4464 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4465 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4466 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4467 = fcmp fast une float %4465, 0.000000e+00
  %4468 = fcmp fast une float %4466, 0.000000e+00
  %4469 = or i1 %4467, %4468
  br i1 %4469, label %4470, label %5029

; <label>:4470                                    ; preds = %4460
  br i1 %4467, label %4471, label %4744

; <label>:4471                                    ; preds = %4470
  %4472 = call float @dx.op.unary.f32(i32 23, float %4030)  ; Log(value)
  %4473 = fmul fast float %4472, 4.000000e+00
  %4474 = call float @dx.op.unary.f32(i32 21, float %4473)  ; Exp(value)
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 0
  %4477 = fmul fast float %4476, %34
  %4478 = fmul fast float %4476, %35
  %4479 = fmul fast float %4476, %36
  %4480 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4481 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4482 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4483 = call float @dx.op.unary.f32(i32 23, float %4480)  ; Log(value)
  %4484 = call float @dx.op.unary.f32(i32 23, float %4481)  ; Log(value)
  %4485 = call float @dx.op.unary.f32(i32 23, float %4482)  ; Log(value)
  %4486 = fmul fast float %4483, 4.000000e+00
  %4487 = fmul fast float %4484, 4.000000e+00
  %4488 = fmul fast float %4485, 4.000000e+00
  %4489 = call float @dx.op.unary.f32(i32 21, float %4486)  ; Exp(value)
  %4490 = call float @dx.op.unary.f32(i32 21, float %4487)  ; Exp(value)
  %4491 = call float @dx.op.unary.f32(i32 21, float %4488)  ; Exp(value)
  %4492 = fadd fast float %4490, %4489
  %4493 = fadd fast float %4492, %4491
  %4494 = fdiv fast float 1.000000e+00, %4493
  %4495 = fmul fast float %4494, %4489
  %4496 = fcmp fast ogt float %43, 0.000000e+00
  %4497 = fcmp fast ogt float %44, 0.000000e+00
  %4498 = fcmp fast ogt float %45, 0.000000e+00
  %4499 = fcmp fast olt float %43, 0.000000e+00
  %4500 = fcmp fast olt float %44, 0.000000e+00
  %4501 = fcmp fast olt float %45, 0.000000e+00
  %4502 = zext i1 %4496 to i32
  %4503 = zext i1 %4497 to i32
  %4504 = zext i1 %4498 to i32
  %4505 = zext i1 %4499 to i32
  %4506 = zext i1 %4500 to i32
  %4507 = zext i1 %4501 to i32
  %4508 = sub nsw i32 %4502, %4505
  %4509 = sub nsw i32 %4503, %4506
  %4510 = sub nsw i32 %4504, %4507
  %4511 = call float @dx.op.unary.f32(i32 83, float %4477)  ; DerivCoarseX(value)
  %4512 = call float @dx.op.unary.f32(i32 83, float %4478)  ; DerivCoarseX(value)
  %4513 = call float @dx.op.unary.f32(i32 83, float %4479)  ; DerivCoarseX(value)
  %4514 = call float @dx.op.unary.f32(i32 84, float %4477)  ; DerivCoarseY(value)
  %4515 = call float @dx.op.unary.f32(i32 84, float %4478)  ; DerivCoarseY(value)
  %4516 = call float @dx.op.unary.f32(i32 84, float %4479)  ; DerivCoarseY(value)
  %4517 = fcmp fast ole float %213, %4495
  %4518 = fmul fast float %4494, %4492
  %4519 = fcmp fast ole float %213, %4518
  %4520 = select i1 %4519, float %4479, float %4477
  %4521 = select i1 %4519, float %4477, float %4478
  %4522 = select i1 %4517, float %4478, float %4520
  %4523 = select i1 %4517, float %4479, float %4521
  %4524 = select i1 %4519, float %4513, float %4511
  %4525 = select i1 %4519, float %4511, float %4512
  %4526 = select i1 %4517, float %4512, float %4524
  %4527 = select i1 %4517, float %4513, float %4525
  %4528 = select i1 %4519, float %4516, float %4514
  %4529 = select i1 %4519, float %4514, float %4515
  %4530 = select i1 %4517, float %4515, float %4528
  %4531 = select i1 %4517, float %4516, float %4529
  %4532 = call float @dx.op.unary.f32(i32 27, float %4522)  ; Round_ni(value)
  %4533 = call float @dx.op.unary.f32(i32 27, float %4523)  ; Round_ni(value)
  %4534 = fptosi float %4532 to i32
  %4535 = fptosi float %4533 to i32
  %4536 = xor i32 %4535, %4534
  %4537 = sitofp i32 %4536 to float
  %4538 = fptosi float %4537 to i32
  %4539 = sitofp i32 %4538 to float
  %4540 = fmul fast float %4539, 0x3FE3C6EF40000000
  %4541 = frem fast float %4532, 2.560000e+02
  %4542 = frem fast float %4533, 2.560000e+02
  %4543 = fptoui float %4541 to i32
  %4544 = fptoui float %4542 to i32
  %4545 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4543, i32 %4544, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.ResRet.f32 %4545, 1
  %4548 = extractvalue %dx.types.ResRet.f32 %4545, 2
  %4549 = fadd fast float %4546, %4540
  %4550 = fadd fast float %4547, %4540
  %4551 = fadd fast float %4548, %4540
  %4552 = call float @dx.op.unary.f32(i32 22, float %4549)  ; Frc(value)
  %4553 = call float @dx.op.unary.f32(i32 22, float %4550)  ; Frc(value)
  %4554 = call float @dx.op.unary.f32(i32 22, float %4551)  ; Frc(value)
  %4555 = fmul fast float %4554, 0x401921FB60000000
  %4556 = call float @dx.op.unary.f32(i32 13, float %4555)  ; Sin(value)
  %4557 = call float @dx.op.unary.f32(i32 12, float %4555)  ; Cos(value)
  %4558 = fsub fast float -0.000000e+00, %4557
  %4559 = fmul fast float %4557, %4522
  %4560 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4523, float %4559)  ; FMad(a,b,c)
  %4561 = fmul fast float %4556, %4522
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4523, float %4561)  ; FMad(a,b,c)
  %4563 = fadd fast float %4560, %4552
  %4564 = fadd fast float %4562, %4553
  %4565 = extractvalue %dx.types.CBufRet.f32 %4475, 3
  %4566 = bitcast float %4565 to i32
  %4567 = icmp eq i32 %4566, 0
  br i1 %4567, label %4606, label %4568

; <label>:4568                                    ; preds = %4471
  %4569 = add i32 %4566, 0
  %4570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4571 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4570, %dx.types.Handle %73, float %4563, float %4564, float undef, float undef, i32 0, i32 0, i32 undef, float %4526, float %4527, float undef, float %4530, float %4531, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 1
  %4575 = extractvalue %dx.types.CBufRet.f32 %4573, 2
  %4576 = fsub fast float 1.000000e+00, %4465
  %4577 = call float @dx.op.binary.f32(i32 35, float %4576, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4578 = bitcast float %4465 to i32
  %4579 = sitofp i32 %4578 to float
  %4580 = fadd fast float %4579, 0xC1CFBF8940000000
  %4581 = fmul fast float %4575, %4580
  %4582 = fadd fast float %4581, 0x41CFBF8940000000
  %4583 = fptosi float %4582 to i32
  %4584 = bitcast i32 %4583 to float
  %4585 = bitcast float %4577 to i32
  %4586 = sitofp i32 %4585 to float
  %4587 = fadd fast float %4586, 0xC1CFBF8940000000
  %4588 = fmul fast float %4587, %4575
  %4589 = fadd fast float %4588, 0x41CFBF8940000000
  %4590 = fptosi float %4589 to i32
  %4591 = bitcast i32 %4590 to float
  %4592 = fmul fast float %4584, %4574
  %4593 = fmul fast float %4591, %4574
  %4594 = fsub fast float %4577, %4592
  %4595 = fadd fast float %4593, %4577
  %4596 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4597 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4598 = fsub fast float %4572, %4596
  %4599 = fsub fast float %4597, %4596
  %4600 = bitcast float %4599 to i32
  %4601 = sub nsw i32 2129859010, %4600
  %4602 = bitcast i32 %4601 to float
  %4603 = fmul fast float %4602, %4598
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4605 = fcmp fast olt float %4604, 0x3F70101020000000
  br i1 %4605, label %4744, label %4606

; <label>:4606                                    ; preds = %4568, %4471
  %4607 = phi float [ %4604, %4568 ], [ %4465, %4471 ]
  %4608 = fmul fast float %4607, %4474
  %4609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.i32 %4609, 1
  %4611 = extractvalue %dx.types.CBufRet.i32 %4609, 0
  %4612 = add i32 %4611, 0
  %4613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4614 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4613, %dx.types.Handle %72, float %4563, float %4564, float undef, float undef, i32 0, i32 0, i32 undef, float %4526, float %4527, float undef, float %4530, float %4531, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4614, 3
  %4619 = and i32 %4610, 255
  %4620 = uitofp i32 %4619 to float
  %4621 = lshr i32 %4610, 8
  %4622 = and i32 %4621, 255
  %4623 = uitofp i32 %4622 to float
  %4624 = fmul fast float %4618, %4620
  %4625 = fadd fast float %4624, %4623
  %4626 = fmul fast float %4625, 0x3F70101000000000
  %4627 = fadd fast float %4626, 0xBFB99999A0000000
  %4628 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4629 = fmul fast float %4628, 0x3FF1C71C80000000
  %4630 = call float @dx.op.binary.f32(i32 36, float %4626, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4631 = fsub fast float 1.000000e+00, %4629
  %4632 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4633 = fmul fast float %4632, %4615
  %4634 = fmul fast float %4632, %4616
  %4635 = fmul fast float %4632, %4617
  %4636 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4639 = fmul fast float %4629, %4615
  %4640 = fmul fast float %4629, %4616
  %4641 = fmul fast float %4629, %4617
  %4642 = fadd fast float %4639, %4630
  %4643 = fadd fast float %4640, %4630
  %4644 = fadd fast float %4641, %4630
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4647 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.i32 %4648, 3
  %4650 = extractvalue %dx.types.CBufRet.i32 %4648, 2
  %4651 = add i32 %4650, 0
  %4652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4653 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4652, %dx.types.Handle %72, float %4563, float %4564, float undef, float undef, i32 0, i32 0, i32 undef, float %4526, float %4527, float undef, float %4530, float %4531, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4654 = extractvalue %dx.types.ResRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.ResRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.ResRet.f32 %4653, 2
  %4657 = extractvalue %dx.types.ResRet.f32 %4653, 3
  %4658 = and i32 %4649, 255
  %4659 = uitofp i32 %4658 to float
  %4660 = lshr i32 %4649, 8
  %4661 = and i32 %4660, 255
  %4662 = uitofp i32 %4661 to float
  %4663 = lshr i32 %4649, 16
  %4664 = and i32 %4663, 255
  %4665 = uitofp i32 %4664 to float
  %4666 = fmul fast float %4665, 0x3F70101000000000
  %4667 = fmul fast float %4654, %4659
  %4668 = fadd fast float %4667, %4662
  %4669 = fmul fast float %4668, 0x3F70101000000000
  %4670 = fadd fast float %4655, -5.000000e-01
  %4671 = fadd fast float %4657, -5.000000e-01
  %4672 = fmul fast float %4670, %4666
  %4673 = fmul fast float %4671, %4666
  %4674 = fadd fast float %4672, 5.000000e-01
  %4675 = fadd fast float %4673, 5.000000e-01
  %4676 = fmul fast float %4674, 2.000000e+00
  %4677 = fadd fast float %4676, -1.000000e+00
  %4678 = fmul fast float %4675, 2.000000e+00
  %4679 = fadd fast float %4678, -1.000000e+00
  %4680 = fadd fast float %4677, %4679
  %4681 = fmul fast float %4680, 5.000000e-01
  %4682 = fsub fast float %4677, %4679
  %4683 = fmul fast float %4682, 5.000000e-01
  %4684 = call float @dx.op.unary.f32(i32 6, float %4681)  ; FAbs(value)
  %4685 = fsub fast float 1.000000e+00, %4684
  %4686 = call float @dx.op.unary.f32(i32 6, float %4683)  ; FAbs(value)
  %4687 = fsub fast float %4685, %4686
  %4688 = call float @dx.op.dot3.f32(i32 55, float %4681, float %4683, float %4687, float %4681, float %4683, float %4687)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = call float @dx.op.unary.f32(i32 25, float %4688)  ; Rsqrt(value)
  %4690 = fmul fast float %4681, %4689
  %4691 = fmul fast float %4683, %4689
  %4692 = select i1 %4519, i32 %4509, i32 %4510
  %4693 = select i1 %4517, i32 %4508, i32 %4692
  %4694 = sitofp i32 %4693 to float
  %4695 = fmul fast float %4687, %4694
  %4696 = fmul fast float %4695, %4689
  %4697 = select i1 %4519, float %4696, float %4691
  %4698 = select i1 %4519, float %4691, float %4696
  %4699 = select i1 %4517, float %4696, float %4690
  %4700 = select i1 %4517, float %4691, float %4697
  %4701 = select i1 %4517, float %4690, float %4698
  %4702 = fsub fast float %4636, %4069
  %4703 = fsub fast float %4637, %4070
  %4704 = fsub fast float %4638, %4071
  %4705 = fmul fast float %4702, %4608
  %4706 = fmul fast float %4703, %4608
  %4707 = fmul fast float %4704, %4608
  %4708 = fadd fast float %4705, %4069
  %4709 = fadd fast float %4706, %4070
  %4710 = fadd fast float %4707, %4071
  %4711 = fsub fast float %4645, %4054
  %4712 = fsub fast float %4646, %4055
  %4713 = fsub fast float %4647, %4056
  %4714 = fmul fast float %4711, %4608
  %4715 = fmul fast float %4712, %4608
  %4716 = fmul fast float %4713, %4608
  %4717 = fadd fast float %4714, %4054
  %4718 = fadd fast float %4715, %4055
  %4719 = fadd fast float %4716, %4056
  %4720 = fadd fast float %4699, %4018
  %4721 = fadd fast float %4700, %4019
  %4722 = fadd fast float %4701, %4020
  %4723 = call float @dx.op.dot3.f32(i32 55, float %4720, float %4721, float %4722, float %4720, float %4721, float %4722)  ; Dot3(ax,ay,az,bx,by,bz)
  %4724 = call float @dx.op.unary.f32(i32 25, float %4723)  ; Rsqrt(value)
  %4725 = fmul fast float %4720, %4724
  %4726 = fmul fast float %4721, %4724
  %4727 = fmul fast float %4722, %4724
  %4728 = fsub fast float %4725, %4018
  %4729 = fsub fast float %4726, %4019
  %4730 = fsub fast float %4727, %4020
  %4731 = fmul fast float %4728, %4608
  %4732 = fmul fast float %4729, %4608
  %4733 = fmul fast float %4730, %4608
  %4734 = fadd fast float %4731, %4018
  %4735 = fadd fast float %4732, %4019
  %4736 = fadd fast float %4733, %4020
  %4737 = call float @dx.op.binary.f32(i32 36, float %4030, float %4656)  ; FMin(a,b)
  %4738 = fsub fast float %4737, %4030
  %4739 = fmul fast float %4738, %4608
  %4740 = fadd fast float %4739, %4030
  %4741 = fsub fast float %4669, %4057
  %4742 = fmul fast float %4741, %4608
  %4743 = fadd fast float %4742, %4057
  br label %4744

; <label>:4744                                    ; preds = %4606, %4568, %4470
  %4745 = phi float [ %4708, %4606 ], [ %4069, %4568 ], [ %4069, %4470 ]
  %4746 = phi float [ %4709, %4606 ], [ %4070, %4568 ], [ %4070, %4470 ]
  %4747 = phi float [ %4710, %4606 ], [ %4071, %4568 ], [ %4071, %4470 ]
  %4748 = phi float [ %4717, %4606 ], [ %4054, %4568 ], [ %4054, %4470 ]
  %4749 = phi float [ %4718, %4606 ], [ %4055, %4568 ], [ %4055, %4470 ]
  %4750 = phi float [ %4719, %4606 ], [ %4056, %4568 ], [ %4056, %4470 ]
  %4751 = phi float [ %4734, %4606 ], [ %4018, %4568 ], [ %4018, %4470 ]
  %4752 = phi float [ %4735, %4606 ], [ %4019, %4568 ], [ %4019, %4470 ]
  %4753 = phi float [ %4736, %4606 ], [ %4020, %4568 ], [ %4020, %4470 ]
  %4754 = phi float [ %4743, %4606 ], [ %4057, %4568 ], [ %4057, %4470 ]
  %4755 = phi float [ %4740, %4606 ], [ %4030, %4568 ], [ %4030, %4470 ]
  br i1 %4468, label %4756, label %5029

; <label>:4756                                    ; preds = %4744
  %4757 = call float @dx.op.unary.f32(i32 23, float %4755)  ; Log(value)
  %4758 = fmul fast float %4757, 4.000000e+00
  %4759 = call float @dx.op.unary.f32(i32 21, float %4758)  ; Exp(value)
  %4760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4760, 0
  %4762 = fmul fast float %4761, %34
  %4763 = fmul fast float %4761, %35
  %4764 = fmul fast float %4761, %36
  %4765 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4766 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4767 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4768 = call float @dx.op.unary.f32(i32 23, float %4765)  ; Log(value)
  %4769 = call float @dx.op.unary.f32(i32 23, float %4766)  ; Log(value)
  %4770 = call float @dx.op.unary.f32(i32 23, float %4767)  ; Log(value)
  %4771 = fmul fast float %4768, 4.000000e+00
  %4772 = fmul fast float %4769, 4.000000e+00
  %4773 = fmul fast float %4770, 4.000000e+00
  %4774 = call float @dx.op.unary.f32(i32 21, float %4771)  ; Exp(value)
  %4775 = call float @dx.op.unary.f32(i32 21, float %4772)  ; Exp(value)
  %4776 = call float @dx.op.unary.f32(i32 21, float %4773)  ; Exp(value)
  %4777 = fadd fast float %4775, %4774
  %4778 = fadd fast float %4777, %4776
  %4779 = fdiv fast float 1.000000e+00, %4778
  %4780 = fmul fast float %4779, %4774
  %4781 = fcmp fast ogt float %43, 0.000000e+00
  %4782 = fcmp fast ogt float %44, 0.000000e+00
  %4783 = fcmp fast ogt float %45, 0.000000e+00
  %4784 = fcmp fast olt float %43, 0.000000e+00
  %4785 = fcmp fast olt float %44, 0.000000e+00
  %4786 = fcmp fast olt float %45, 0.000000e+00
  %4787 = zext i1 %4781 to i32
  %4788 = zext i1 %4782 to i32
  %4789 = zext i1 %4783 to i32
  %4790 = zext i1 %4784 to i32
  %4791 = zext i1 %4785 to i32
  %4792 = zext i1 %4786 to i32
  %4793 = sub nsw i32 %4787, %4790
  %4794 = sub nsw i32 %4788, %4791
  %4795 = sub nsw i32 %4789, %4792
  %4796 = call float @dx.op.unary.f32(i32 83, float %4762)  ; DerivCoarseX(value)
  %4797 = call float @dx.op.unary.f32(i32 83, float %4763)  ; DerivCoarseX(value)
  %4798 = call float @dx.op.unary.f32(i32 83, float %4764)  ; DerivCoarseX(value)
  %4799 = call float @dx.op.unary.f32(i32 84, float %4762)  ; DerivCoarseY(value)
  %4800 = call float @dx.op.unary.f32(i32 84, float %4763)  ; DerivCoarseY(value)
  %4801 = call float @dx.op.unary.f32(i32 84, float %4764)  ; DerivCoarseY(value)
  %4802 = fcmp fast ole float %213, %4780
  %4803 = fmul fast float %4779, %4777
  %4804 = fcmp fast ole float %213, %4803
  %4805 = select i1 %4804, float %4764, float %4762
  %4806 = select i1 %4804, float %4762, float %4763
  %4807 = select i1 %4802, float %4763, float %4805
  %4808 = select i1 %4802, float %4764, float %4806
  %4809 = select i1 %4804, float %4798, float %4796
  %4810 = select i1 %4804, float %4796, float %4797
  %4811 = select i1 %4802, float %4797, float %4809
  %4812 = select i1 %4802, float %4798, float %4810
  %4813 = select i1 %4804, float %4801, float %4799
  %4814 = select i1 %4804, float %4799, float %4800
  %4815 = select i1 %4802, float %4800, float %4813
  %4816 = select i1 %4802, float %4801, float %4814
  %4817 = call float @dx.op.unary.f32(i32 27, float %4807)  ; Round_ni(value)
  %4818 = call float @dx.op.unary.f32(i32 27, float %4808)  ; Round_ni(value)
  %4819 = fptosi float %4817 to i32
  %4820 = fptosi float %4818 to i32
  %4821 = xor i32 %4820, %4819
  %4822 = sitofp i32 %4821 to float
  %4823 = fptosi float %4822 to i32
  %4824 = sitofp i32 %4823 to float
  %4825 = fmul fast float %4824, 0x3FE3C6EF40000000
  %4826 = frem fast float %4817, 2.560000e+02
  %4827 = frem fast float %4818, 2.560000e+02
  %4828 = fptoui float %4826 to i32
  %4829 = fptoui float %4827 to i32
  %4830 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4828, i32 %4829, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4834 = fadd fast float %4831, %4825
  %4835 = fadd fast float %4832, %4825
  %4836 = fadd fast float %4833, %4825
  %4837 = call float @dx.op.unary.f32(i32 22, float %4834)  ; Frc(value)
  %4838 = call float @dx.op.unary.f32(i32 22, float %4835)  ; Frc(value)
  %4839 = call float @dx.op.unary.f32(i32 22, float %4836)  ; Frc(value)
  %4840 = fmul fast float %4839, 0x401921FB60000000
  %4841 = call float @dx.op.unary.f32(i32 13, float %4840)  ; Sin(value)
  %4842 = call float @dx.op.unary.f32(i32 12, float %4840)  ; Cos(value)
  %4843 = fsub fast float -0.000000e+00, %4842
  %4844 = fmul fast float %4842, %4807
  %4845 = call float @dx.op.tertiary.f32(i32 46, float %4841, float %4808, float %4844)  ; FMad(a,b,c)
  %4846 = fmul fast float %4841, %4807
  %4847 = call float @dx.op.tertiary.f32(i32 46, float %4843, float %4808, float %4846)  ; FMad(a,b,c)
  %4848 = fadd fast float %4845, %4837
  %4849 = fadd fast float %4847, %4838
  %4850 = extractvalue %dx.types.CBufRet.f32 %4760, 3
  %4851 = bitcast float %4850 to i32
  %4852 = icmp eq i32 %4851, 0
  br i1 %4852, label %4891, label %4853

; <label>:4853                                    ; preds = %4756
  %4854 = add i32 %4851, 0
  %4855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4854, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4856 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4855, %dx.types.Handle %73, float %4848, float %4849, float undef, float undef, i32 0, i32 0, i32 undef, float %4811, float %4812, float undef, float %4815, float %4816, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4857 = extractvalue %dx.types.ResRet.f32 %4856, 0
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 1
  %4860 = extractvalue %dx.types.CBufRet.f32 %4858, 2
  %4861 = fsub fast float 1.000000e+00, %4466
  %4862 = call float @dx.op.binary.f32(i32 35, float %4861, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4863 = bitcast float %4466 to i32
  %4864 = sitofp i32 %4863 to float
  %4865 = fadd fast float %4864, 0xC1CFBF8940000000
  %4866 = fmul fast float %4860, %4865
  %4867 = fadd fast float %4866, 0x41CFBF8940000000
  %4868 = fptosi float %4867 to i32
  %4869 = bitcast i32 %4868 to float
  %4870 = bitcast float %4862 to i32
  %4871 = sitofp i32 %4870 to float
  %4872 = fadd fast float %4871, 0xC1CFBF8940000000
  %4873 = fmul fast float %4872, %4860
  %4874 = fadd fast float %4873, 0x41CFBF8940000000
  %4875 = fptosi float %4874 to i32
  %4876 = bitcast i32 %4875 to float
  %4877 = fmul fast float %4869, %4859
  %4878 = fmul fast float %4876, %4859
  %4879 = fsub fast float %4862, %4877
  %4880 = fadd fast float %4878, %4862
  %4881 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4882 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4883 = fsub fast float %4857, %4881
  %4884 = fsub fast float %4882, %4881
  %4885 = bitcast float %4884 to i32
  %4886 = sub nsw i32 2129859010, %4885
  %4887 = bitcast i32 %4886 to float
  %4888 = fmul fast float %4887, %4883
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = fcmp fast olt float %4889, 0x3F70101020000000
  br i1 %4890, label %5029, label %4891

; <label>:4891                                    ; preds = %4853, %4756
  %4892 = phi float [ %4889, %4853 ], [ %4466, %4756 ]
  %4893 = fmul fast float %4892, %4759
  %4894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.i32 %4894, 1
  %4896 = extractvalue %dx.types.CBufRet.i32 %4894, 0
  %4897 = add i32 %4896, 0
  %4898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4899 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4898, %dx.types.Handle %72, float %4848, float %4849, float undef, float undef, i32 0, i32 0, i32 undef, float %4811, float %4812, float undef, float %4815, float %4816, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4900 = extractvalue %dx.types.ResRet.f32 %4899, 0
  %4901 = extractvalue %dx.types.ResRet.f32 %4899, 1
  %4902 = extractvalue %dx.types.ResRet.f32 %4899, 2
  %4903 = extractvalue %dx.types.ResRet.f32 %4899, 3
  %4904 = and i32 %4895, 255
  %4905 = uitofp i32 %4904 to float
  %4906 = lshr i32 %4895, 8
  %4907 = and i32 %4906, 255
  %4908 = uitofp i32 %4907 to float
  %4909 = fmul fast float %4903, %4905
  %4910 = fadd fast float %4909, %4908
  %4911 = fmul fast float %4910, 0x3F70101000000000
  %4912 = fadd fast float %4911, 0xBFB99999A0000000
  %4913 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4914 = fmul fast float %4913, 0x3FF1C71C80000000
  %4915 = call float @dx.op.binary.f32(i32 36, float %4911, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4916 = fsub fast float 1.000000e+00, %4914
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fmul fast float %4917, %4900
  %4919 = fmul fast float %4917, %4901
  %4920 = fmul fast float %4917, %4902
  %4921 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4924 = fmul fast float %4914, %4900
  %4925 = fmul fast float %4914, %4901
  %4926 = fmul fast float %4914, %4902
  %4927 = fadd fast float %4924, %4915
  %4928 = fadd fast float %4925, %4915
  %4929 = fadd fast float %4926, %4915
  %4930 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4932 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.i32 %4933, 3
  %4935 = extractvalue %dx.types.CBufRet.i32 %4933, 2
  %4936 = add i32 %4935, 0
  %4937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4938 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4937, %dx.types.Handle %72, float %4848, float %4849, float undef, float undef, i32 0, i32 0, i32 undef, float %4811, float %4812, float undef, float %4815, float %4816, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4939 = extractvalue %dx.types.ResRet.f32 %4938, 0
  %4940 = extractvalue %dx.types.ResRet.f32 %4938, 1
  %4941 = extractvalue %dx.types.ResRet.f32 %4938, 2
  %4942 = extractvalue %dx.types.ResRet.f32 %4938, 3
  %4943 = and i32 %4934, 255
  %4944 = uitofp i32 %4943 to float
  %4945 = lshr i32 %4934, 8
  %4946 = and i32 %4945, 255
  %4947 = uitofp i32 %4946 to float
  %4948 = lshr i32 %4934, 16
  %4949 = and i32 %4948, 255
  %4950 = uitofp i32 %4949 to float
  %4951 = fmul fast float %4950, 0x3F70101000000000
  %4952 = fmul fast float %4939, %4944
  %4953 = fadd fast float %4952, %4947
  %4954 = fmul fast float %4953, 0x3F70101000000000
  %4955 = fadd fast float %4940, -5.000000e-01
  %4956 = fadd fast float %4942, -5.000000e-01
  %4957 = fmul fast float %4955, %4951
  %4958 = fmul fast float %4956, %4951
  %4959 = fadd fast float %4957, 5.000000e-01
  %4960 = fadd fast float %4958, 5.000000e-01
  %4961 = fmul fast float %4959, 2.000000e+00
  %4962 = fadd fast float %4961, -1.000000e+00
  %4963 = fmul fast float %4960, 2.000000e+00
  %4964 = fadd fast float %4963, -1.000000e+00
  %4965 = fadd fast float %4962, %4964
  %4966 = fmul fast float %4965, 5.000000e-01
  %4967 = fsub fast float %4962, %4964
  %4968 = fmul fast float %4967, 5.000000e-01
  %4969 = call float @dx.op.unary.f32(i32 6, float %4966)  ; FAbs(value)
  %4970 = fsub fast float 1.000000e+00, %4969
  %4971 = call float @dx.op.unary.f32(i32 6, float %4968)  ; FAbs(value)
  %4972 = fsub fast float %4970, %4971
  %4973 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4968, float %4972, float %4966, float %4968, float %4972)  ; Dot3(ax,ay,az,bx,by,bz)
  %4974 = call float @dx.op.unary.f32(i32 25, float %4973)  ; Rsqrt(value)
  %4975 = fmul fast float %4966, %4974
  %4976 = fmul fast float %4968, %4974
  %4977 = select i1 %4804, i32 %4794, i32 %4795
  %4978 = select i1 %4802, i32 %4793, i32 %4977
  %4979 = sitofp i32 %4978 to float
  %4980 = fmul fast float %4972, %4979
  %4981 = fmul fast float %4980, %4974
  %4982 = select i1 %4804, float %4981, float %4976
  %4983 = select i1 %4804, float %4976, float %4981
  %4984 = select i1 %4802, float %4981, float %4975
  %4985 = select i1 %4802, float %4976, float %4982
  %4986 = select i1 %4802, float %4975, float %4983
  %4987 = fsub fast float %4921, %4745
  %4988 = fsub fast float %4922, %4746
  %4989 = fsub fast float %4923, %4747
  %4990 = fmul fast float %4987, %4893
  %4991 = fmul fast float %4988, %4893
  %4992 = fmul fast float %4989, %4893
  %4993 = fadd fast float %4990, %4745
  %4994 = fadd fast float %4991, %4746
  %4995 = fadd fast float %4992, %4747
  %4996 = fsub fast float %4930, %4748
  %4997 = fsub fast float %4931, %4749
  %4998 = fsub fast float %4932, %4750
  %4999 = fmul fast float %4996, %4893
  %5000 = fmul fast float %4997, %4893
  %5001 = fmul fast float %4998, %4893
  %5002 = fadd fast float %4999, %4748
  %5003 = fadd fast float %5000, %4749
  %5004 = fadd fast float %5001, %4750
  %5005 = fadd fast float %4984, %4751
  %5006 = fadd fast float %4985, %4752
  %5007 = fadd fast float %4986, %4753
  %5008 = call float @dx.op.dot3.f32(i32 55, float %5005, float %5006, float %5007, float %5005, float %5006, float %5007)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = call float @dx.op.unary.f32(i32 25, float %5008)  ; Rsqrt(value)
  %5010 = fmul fast float %5005, %5009
  %5011 = fmul fast float %5006, %5009
  %5012 = fmul fast float %5007, %5009
  %5013 = fsub fast float %5010, %4751
  %5014 = fsub fast float %5011, %4752
  %5015 = fsub fast float %5012, %4753
  %5016 = fmul fast float %5013, %4893
  %5017 = fmul fast float %5014, %4893
  %5018 = fmul fast float %5015, %4893
  %5019 = fadd fast float %5016, %4751
  %5020 = fadd fast float %5017, %4752
  %5021 = fadd fast float %5018, %4753
  %5022 = call float @dx.op.binary.f32(i32 36, float %4755, float %4941)  ; FMin(a,b)
  %5023 = fsub fast float %5022, %4755
  %5024 = fmul fast float %5023, %4893
  %5025 = fadd fast float %5024, %4755
  %5026 = fsub fast float %4954, %4754
  %5027 = fmul fast float %5026, %4893
  %5028 = fadd fast float %5027, %4754
  br label %5029

; <label>:5029                                    ; preds = %4891, %4853, %4744, %4460
  %5030 = phi float [ %4993, %4891 ], [ %4745, %4853 ], [ %4745, %4744 ], [ %4069, %4460 ]
  %5031 = phi float [ %4994, %4891 ], [ %4746, %4853 ], [ %4746, %4744 ], [ %4070, %4460 ]
  %5032 = phi float [ %4995, %4891 ], [ %4747, %4853 ], [ %4747, %4744 ], [ %4071, %4460 ]
  %5033 = phi float [ %5002, %4891 ], [ %4748, %4853 ], [ %4748, %4744 ], [ %4054, %4460 ]
  %5034 = phi float [ %5003, %4891 ], [ %4749, %4853 ], [ %4749, %4744 ], [ %4055, %4460 ]
  %5035 = phi float [ %5004, %4891 ], [ %4750, %4853 ], [ %4750, %4744 ], [ %4056, %4460 ]
  %5036 = phi float [ %5019, %4891 ], [ %4751, %4853 ], [ %4751, %4744 ], [ %4018, %4460 ]
  %5037 = phi float [ %5020, %4891 ], [ %4752, %4853 ], [ %4752, %4744 ], [ %4019, %4460 ]
  %5038 = phi float [ %5021, %4891 ], [ %4753, %4853 ], [ %4753, %4744 ], [ %4020, %4460 ]
  %5039 = phi float [ %5028, %4891 ], [ %4754, %4853 ], [ %4754, %4744 ], [ %4057, %4460 ]
  %5040 = phi float [ %5025, %4891 ], [ %4755, %4853 ], [ %4755, %4744 ], [ %4030, %4460 ]
  %5041 = fcmp fast une float %4464, 0.000000e+00
  %5042 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = call float @dx.op.unary.f32(i32 25, float %5042)  ; Rsqrt(value)
  br i1 %5041, label %5051, label %5044

; <label>:5044                                    ; preds = %5029
  %5045 = fmul fast float %5043, %163
  %5046 = fmul fast float %5043, %164
  %5047 = fmul fast float %5043, %165
  %5048 = fsub fast float -0.000000e+00, %5045
  %5049 = fsub fast float -0.000000e+00, %5046
  %5050 = fsub fast float -0.000000e+00, %5047
  br label %5218

; <label>:5051                                    ; preds = %5029
  %5052 = fmul fast float %163, %5043
  %5053 = fsub fast float -0.000000e+00, %5052
  %5054 = fmul fast float %164, %5043
  %5055 = fsub fast float -0.000000e+00, %5054
  %5056 = fmul fast float %165, %5043
  %5057 = fsub fast float -0.000000e+00, %5056
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5055, float %5057, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = fmul fast float %4464, 2.500000e+00
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = fmul fast float %4464, 0x4013FFFFE0000000
  %5062 = fadd fast float %5061, 0xBFFFFFFFE0000000
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fmul fast float %4464, 0x4004000020000000
  %5065 = fadd fast float %5064, 0xBFF8000040000000
  %5066 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5067 = fmul fast float %4036, 1.000000e+01
  %5068 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5069 = fmul fast float %5068, 2.000000e+00
  %5070 = fsub fast float 3.000000e+00, %5069
  %5071 = fmul fast float %5068, %5068
  %5072 = fmul fast float %5071, %5070
  %5073 = fsub fast float 1.000000e+00, %5072
  %5074 = fsub fast float 0x3FE3333340000000, %5039
  %5075 = fmul fast float %5074, 0x400AAAAAA0000000
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fmul fast float %5073, %5076
  %5078 = fmul fast float %5030, 0x3FEA2B8620000000
  %5079 = fmul fast float %5031, 0x3FEA2B8620000000
  %5080 = fmul fast float %5032, 0x3FEA2B8620000000
  %5081 = fadd fast float %5078, 0x3FC81DFBA0000000
  %5082 = fmul fast float %5081, %5030
  %5083 = fadd fast float %5082, 0x3F910E6020000000
  %5084 = fadd fast float %5079, 0x3FC81DFBA0000000
  %5085 = fmul fast float %5084, %5031
  %5086 = fadd fast float %5085, 0x3F910E6020000000
  %5087 = fadd fast float %5080, 0x3FC81DFBA0000000
  %5088 = fmul fast float %5087, %5032
  %5089 = fadd fast float %5088, 0x3F910E6020000000
  %5090 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = fsub fast float %5090, %5030
  %5094 = fsub fast float %5091, %5031
  %5095 = fsub fast float %5092, %5032
  %5096 = fmul fast float %5093, %5060
  %5097 = fmul fast float %5096, %5077
  %5098 = fmul fast float %5094, %5060
  %5099 = fmul fast float %5098, %5077
  %5100 = fmul fast float %5095, %5060
  %5101 = fmul fast float %5100, %5077
  %5102 = fadd fast float %5097, %5030
  %5103 = fadd fast float %5099, %5031
  %5104 = fadd fast float %5101, %5032
  %5105 = fmul fast float %5040, %5040
  %5106 = fmul fast float %5105, %5105
  %5107 = fadd fast float %5063, 1.000000e+00
  %5108 = fsub fast float %5107, %5077
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fsub fast float 1.000000e+00, %5106
  %5113 = call float @dx.op.binary.f32(i32 36, float %5109, float %5112)  ; FMin(a,b)
  %5114 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5115 = call float @dx.op.binary.f32(i32 35, float %5113, float %5114)  ; FMax(a,b)
  %5116 = fadd fast float %5111, 0xBFE4CCCCC0000000
  %5117 = fmul fast float %5116, 0x4006DB6DA0000000
  %5118 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5119 = fmul fast float %5118, 2.000000e+00
  %5120 = fsub fast float 3.000000e+00, %5119
  %5121 = bitcast float %5033 to i32
  %5122 = ashr i32 %5121, 1
  %5123 = add nsw i32 %5122, 532487669
  %5124 = bitcast i32 %5123 to float
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = bitcast float %5125 to i32
  %5127 = sub nsw i32 2129859010, %5126
  %5128 = bitcast i32 %5127 to float
  %5129 = fmul fast float %5128, 2.000000e+00
  %5130 = bitcast float %5034 to i32
  %5131 = ashr i32 %5130, 1
  %5132 = add nsw i32 %5131, 532487669
  %5133 = bitcast i32 %5132 to float
  %5134 = fsub fast float 1.000000e+00, %5133
  %5135 = bitcast float %5134 to i32
  %5136 = sub nsw i32 2129859010, %5135
  %5137 = bitcast i32 %5136 to float
  %5138 = fmul fast float %5137, 2.000000e+00
  %5139 = bitcast float %5035 to i32
  %5140 = ashr i32 %5139, 1
  %5141 = add nsw i32 %5140, 532487669
  %5142 = bitcast i32 %5141 to float
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = bitcast float %5143 to i32
  %5145 = sub nsw i32 2129859010, %5144
  %5146 = bitcast i32 %5145 to float
  %5147 = fmul fast float %5146, 2.000000e+00
  %5148 = fsub fast float 0x4002A9FBE0000000, %5129
  %5149 = fadd fast float %5129, 0x3FD54FDF00000000
  %5150 = bitcast float %5149 to i32
  %5151 = sub nsw i32 2129859010, %5150
  %5152 = bitcast i32 %5151 to float
  %5153 = fmul fast float %5152, %5148
  %5154 = fmul fast float %5153, %5153
  %5155 = fsub fast float 0x4002A9FBE0000000, %5138
  %5156 = fadd fast float %5138, 0x3FD54FDF00000000
  %5157 = bitcast float %5156 to i32
  %5158 = sub nsw i32 2129859010, %5157
  %5159 = bitcast i32 %5158 to float
  %5160 = fmul fast float %5159, %5155
  %5161 = fmul fast float %5160, %5160
  %5162 = fsub fast float 0x4002A9FBE0000000, %5147
  %5163 = fadd fast float %5147, 0x3FD54FDF00000000
  %5164 = bitcast float %5163 to i32
  %5165 = sub nsw i32 2129859010, %5164
  %5166 = bitcast i32 %5165 to float
  %5167 = fmul fast float %5166, %5162
  %5168 = fmul fast float %5167, %5167
  %5169 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5154)  ; FMax(a,b)
  %5170 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5161)  ; FMax(a,b)
  %5171 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5168)  ; FMax(a,b)
  %5172 = fsub fast float 1.000000e+00, %5058
  %5173 = fadd fast float %5172, %5073
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = fsub fast float 1.000000e+00, %4445
  %5176 = fmul fast float %5115, %5175
  %5177 = fmul fast float %5118, %5118
  %5178 = fmul fast float %5177, %5176
  %5179 = fmul fast float %5178, %5120
  %5180 = fmul fast float %5175, 0xBFE99999A0000000
  %5181 = fmul fast float %5180, %5060
  %5182 = fmul fast float %5181, %5077
  %5183 = fadd fast float %5182, 1.000000e+00
  %5184 = fadd fast float %5039, -1.000000e+00
  %5185 = fmul fast float %5183, %5184
  %5186 = fadd fast float %5185, 1.000000e+00
  %5187 = fsub fast float %5169, %5033
  %5188 = fsub fast float %5170, %5034
  %5189 = fsub fast float %5171, %5035
  %5190 = fmul fast float %5179, %5187
  %5191 = fmul fast float %5179, %5188
  %5192 = fmul fast float %5179, %5189
  %5193 = fadd fast float %5190, %5033
  %5194 = fadd fast float %5191, %5034
  %5195 = fadd fast float %5192, %5035
  %5196 = fsub fast float %83, %5036
  %5197 = fsub fast float %84, %5037
  %5198 = fsub fast float %85, %5038
  %5199 = fmul fast float %5179, %5196
  %5200 = fmul fast float %5179, %5197
  %5201 = fmul fast float %5179, %5198
  %5202 = fadd fast float %5199, %5036
  %5203 = fadd fast float %5200, %5037
  %5204 = fadd fast float %5201, %5038
  %5205 = fmul fast float %5179, %5174
  %5206 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5207 = fsub fast float 1.000000e+00, %5206
  %5208 = fmul fast float %5205, %5207
  %5209 = fadd fast float %5208, %5206
  %5210 = fsub fast float 1.000000e+00, %5040
  %5211 = fmul fast float %5179, %5210
  %5212 = fadd fast float %5211, %5040
  %5213 = call float @dx.op.dot3.f32(i32 55, float %5202, float %5203, float %5204, float %5202, float %5203, float %5204)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = call float @dx.op.unary.f32(i32 25, float %5213)  ; Rsqrt(value)
  %5215 = fmul fast float %5202, %5214
  %5216 = fmul fast float %5203, %5214
  %5217 = fmul fast float %5204, %5214
  br label %5218

; <label>:5218                                    ; preds = %5051, %5044
  %5219 = phi float [ %5050, %5044 ], [ %5057, %5051 ]
  %5220 = phi float [ %5049, %5044 ], [ %5055, %5051 ]
  %5221 = phi float [ %5048, %5044 ], [ %5053, %5051 ]
  %5222 = phi float [ %5047, %5044 ], [ %5056, %5051 ]
  %5223 = phi float [ %5046, %5044 ], [ %5054, %5051 ]
  %5224 = phi float [ %5045, %5044 ], [ %5052, %5051 ]
  %5225 = phi float [ %5030, %5044 ], [ %5102, %5051 ]
  %5226 = phi float [ %5031, %5044 ], [ %5103, %5051 ]
  %5227 = phi float [ %5032, %5044 ], [ %5104, %5051 ]
  %5228 = phi float [ %5033, %5044 ], [ %5193, %5051 ]
  %5229 = phi float [ %5034, %5044 ], [ %5194, %5051 ]
  %5230 = phi float [ %5035, %5044 ], [ %5195, %5051 ]
  %5231 = phi float [ %5036, %5044 ], [ %5215, %5051 ]
  %5232 = phi float [ %5037, %5044 ], [ %5216, %5051 ]
  %5233 = phi float [ %5038, %5044 ], [ %5217, %5051 ]
  %5234 = phi float [ %5039, %5044 ], [ %5209, %5051 ]
  %5235 = phi float [ %5040, %5044 ], [ %5212, %5051 ]
  %5236 = select i1 %202, float 0.000000e+00, float %5230
  %5237 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float %5221, float %5220, float %5219)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5223, float %5222, float %5231, float %5232, float %5233)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = fmul fast float %5239, 2.000000e+00
  %5241 = fmul fast float %5240, %5231
  %5242 = fmul fast float %5240, %5232
  %5243 = fmul fast float %5240, %5233
  %5244 = fsub fast float %5224, %5241
  %5245 = fsub fast float %5223, %5242
  %5246 = fsub fast float %5222, %5243
  %5247 = call float @dx.op.binary.f32(i32 36, float %5235, float 1.000000e+00)  ; FMin(a,b)
  %5248 = fsub fast float 1.000000e+00, %5235
  %5249 = bitcast float %5248 to i32
  %5250 = sub nsw i32 2129859010, %5249
  %5251 = fsub fast float 1.000000e+00, %53
  %5252 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.binary.f32(i32 35, float %5252, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5254 = fdiv fast float %5251, %5253
  %5255 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = fmul fast float %5256, 5.000000e-01
  %5258 = fadd fast float %5257, 5.000000e-01
  %5259 = fmul fast float %5258, %53
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = fmul fast float %5261, %5254
  %5263 = fadd fast float %5259, %5262
  %5264 = fsub fast float 5.000000e-01, %5257
  %5265 = fmul fast float %5264, %5225
  %5266 = fmul fast float %5264, %5226
  %5267 = fmul fast float %5264, %5227
  %5268 = fadd fast float %5263, %5265
  %5269 = fadd fast float %5263, %5266
  %5270 = fadd fast float %5263, %5267
  %5271 = call float @dx.op.dot3.f32(i32 55, float %5244, float %5245, float %5246, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %5272, 5.000000e-01
  %5274 = fadd fast float %5273, 5.000000e-01
  %5275 = fmul fast float %5274, %53
  %5276 = call float @dx.op.dot3.f32(i32 55, float %5244, float %5245, float %5246, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5276)  ; Saturate(value)
  %5278 = fmul fast float %5277, %5254
  %5279 = fadd fast float %5275, %5278
  %5280 = fsub fast float 5.000000e-01, %5273
  %5281 = fmul fast float %5280, %5225
  %5282 = fmul fast float %5280, %5226
  %5283 = fmul fast float %5280, %5227
  %5284 = fadd fast float %5279, %5281
  %5285 = fadd fast float %5279, %5282
  %5286 = fadd fast float %5279, %5283
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 0
  %5289 = call float @dx.op.binary.f32(i32 36, float %5225, float %5288)  ; FMin(a,b)
  %5290 = fsub fast float 1.000000e+00, %5247
  %5291 = fmul fast float %5289, %5290
  %5292 = fsub fast float 1.000000e+00, %5291
  %5293 = bitcast float %5292 to i32
  %5294 = sub nsw i32 2129859010, %5293
  %5295 = bitcast i32 %5294 to float
  %5296 = call float @dx.op.binary.f32(i32 36, float %5226, float %5288)  ; FMin(a,b)
  %5297 = fmul fast float %5296, %5290
  %5298 = fsub fast float 1.000000e+00, %5297
  %5299 = bitcast float %5298 to i32
  %5300 = sub nsw i32 2129859010, %5299
  %5301 = bitcast i32 %5300 to float
  %5302 = call float @dx.op.binary.f32(i32 36, float %5227, float %5288)  ; FMin(a,b)
  %5303 = fmul fast float %5302, %5290
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = bitcast float %5304 to i32
  %5306 = sub nsw i32 2129859010, %5305
  %5307 = bitcast i32 %5306 to float
  %5308 = fmul fast float %5247, %54
  %5309 = fmul fast float %5308, %5268
  %5310 = fmul fast float %5309, %5295
  %5311 = fmul fast float %5247, %55
  %5312 = fmul fast float %5311, %5269
  %5313 = fmul fast float %5312, %5301
  %5314 = fmul fast float %5247, %56
  %5315 = fmul fast float %5314, %5270
  %5316 = fmul fast float %5315, %5307
  %5317 = call float @dx.op.binary.f32(i32 36, float %5228, float %5288)  ; FMin(a,b)
  %5318 = fmul fast float %5317, %5290
  %5319 = fsub fast float 1.000000e+00, %5318
  %5320 = bitcast float %5319 to i32
  %5321 = sub nsw i32 2129859010, %5320
  %5322 = bitcast i32 %5321 to float
  %5323 = call float @dx.op.binary.f32(i32 36, float %5229, float %5288)  ; FMin(a,b)
  %5324 = fmul fast float %5323, %5290
  %5325 = fsub fast float 1.000000e+00, %5324
  %5326 = bitcast float %5325 to i32
  %5327 = sub nsw i32 2129859010, %5326
  %5328 = bitcast i32 %5327 to float
  %5329 = call float @dx.op.binary.f32(i32 36, float %5236, float %5288)  ; FMin(a,b)
  %5330 = fmul fast float %5329, %5290
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = bitcast float %5331 to i32
  %5333 = sub nsw i32 2129859010, %5332
  %5334 = bitcast i32 %5333 to float
  %5335 = fmul fast float %5308, %5284
  %5336 = fmul fast float %5335, %5322
  %5337 = fmul fast float %5311, %5285
  %5338 = fmul fast float %5337, %5328
  %5339 = fmul fast float %5314, %5286
  %5340 = fmul fast float %5339, %5334
  %5341 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5313, float %5316, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5342 = select i1 %202, float 0.000000e+00, float %5310
  %5343 = select i1 %202, float %5341, float %5313
  %5344 = select i1 %202, float 0.000000e+00, float %5316
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5336, float %5338, float %5340, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = select i1 %202, float 0.000000e+00, float %5336
  %5347 = select i1 %202, float %5345, float %5338
  %5348 = select i1 %202, float 0.000000e+00, float %5340
  %5349 = fmul fast float %5238, 9.843750e-01
  %5350 = fmul fast float %5234, 9.843750e-01
  %5351 = fadd fast float %5349, 7.812500e-03
  %5352 = fadd fast float %5350, 7.812500e-03
  %5353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5351, float %5352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5354 = extractvalue %dx.types.ResRet.f32 %5353, 2
  %5355 = extractvalue %dx.types.ResRet.f32 %5353, 3
  %5356 = fmul fast float %5354, %5228
  %5357 = fmul fast float %5354, %5229
  %5358 = fmul fast float %5354, %5236
  %5359 = fadd fast float %5356, %5355
  %5360 = fadd fast float %5357, %5355
  %5361 = fadd fast float %5358, %5355
  %5362 = fcmp fast ogt float %4031, 0.000000e+00
  br i1 %5362, label %5363, label %5389

; <label>:5363                                    ; preds = %5218
  %5364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4031, float %5238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5365 = extractvalue %dx.types.ResRet.f32 %5364, 0
  %5366 = extractvalue %dx.types.ResRet.f32 %5364, 1
  %5367 = extractvalue %dx.types.ResRet.f32 %5364, 2
  %5368 = fadd fast float %5365, -5.000000e-01
  %5369 = fadd fast float %5366, -5.000000e-01
  %5370 = fadd fast float %5367, -5.000000e-01
  %5371 = fsub fast float 1.000000e+00, %5228
  %5372 = fsub fast float 1.000000e+00, %5229
  %5373 = fsub fast float 1.000000e+00, %5236
  %5374 = fmul fast float %5228, 4.000000e+00
  %5375 = fmul fast float %5374, %5371
  %5376 = fmul fast float %5375, %5368
  %5377 = fmul fast float %5229, 4.000000e+00
  %5378 = fmul fast float %5377, %5372
  %5379 = fmul fast float %5378, %5369
  %5380 = fmul fast float %5236, 4.000000e+00
  %5381 = fmul fast float %5380, %5373
  %5382 = fmul fast float %5381, %5370
  %5383 = fadd fast float %5376, %5359
  %5384 = fadd fast float %5379, %5360
  %5385 = fadd fast float %5382, %5361
  %5386 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5388 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  br label %5389

; <label>:5389                                    ; preds = %5363, %5218
  %5390 = phi float [ %5386, %5363 ], [ %5359, %5218 ]
  %5391 = phi float [ %5387, %5363 ], [ %5360, %5218 ]
  %5392 = phi float [ %5388, %5363 ], [ %5361, %5218 ]
  %5393 = call float @dx.op.binary.f32(i32 35, float %5391, float %5392)  ; FMax(a,b)
  %5394 = call float @dx.op.binary.f32(i32 35, float %5390, float %5393)  ; FMax(a,b)
  %5395 = fsub fast float 1.000000e+00, %5394
  %5396 = fmul fast float %5395, %5342
  %5397 = fmul fast float %5395, %5343
  %5398 = fmul fast float %5395, %5344
  %5399 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = fcmp fast ogt float %5399, 0x3E7FF19E20000000
  %5401 = fdiv fast float 1.000000e+00, %5399
  %5402 = select i1 %5400, float %5401, float 0.000000e+00
  %5403 = fmul fast float %5402, %5225
  %5404 = fmul fast float %5402, %5226
  %5405 = fmul fast float %5402, %5227
  %5406 = fadd fast float %5403, -1.000000e+00
  %5407 = fadd fast float %5404, -1.000000e+00
  %5408 = fadd fast float %5405, -1.000000e+00
  %5409 = fmul fast float %5406, 5.000000e-01
  %5410 = fmul fast float %5407, 5.000000e-01
  %5411 = fmul fast float %5408, 5.000000e-01
  %5412 = fadd fast float %5409, 1.000000e+00
  %5413 = fadd fast float %5410, 1.000000e+00
  %5414 = fadd fast float %5411, 1.000000e+00
  %5415 = fmul fast float %5390, %5346
  %5416 = fmul fast float %5391, %5347
  %5417 = fmul fast float %5392, %5348
  %5418 = fsub fast float 1.000000e+00, %5238
  %5419 = bitcast float %5418 to i32
  %5420 = sitofp i32 %5419 to float
  %5421 = fmul fast float %5420, 5.000000e+00
  %5422 = fadd fast float %5421, 0xC1EFBF8940000000
  %5423 = fptosi float %5422 to i32
  %5424 = bitcast i32 %5423 to float
  %5425 = fmul fast float %5424, %4032
  %5426 = fmul fast float %5342, %5425
  %5427 = fmul fast float %5426, %5395
  %5428 = fmul fast float %5427, %5412
  %5429 = fmul fast float %5343, %5425
  %5430 = fmul fast float %5429, %5395
  %5431 = fmul fast float %5430, %5413
  %5432 = fmul fast float %5344, %5425
  %5433 = fmul fast float %5432, %5395
  %5434 = fmul fast float %5433, %5414
  %5435 = fmul fast float %5396, %4028
  %5436 = fmul fast float %5397, %4028
  %5437 = fmul fast float %5398, %4028
  %5438 = fadd fast float %5415, %4024
  %5439 = fadd fast float %5438, %5428
  %5440 = fmul fast float %5439, %4028
  %5441 = fadd fast float %5416, %4025
  %5442 = fadd fast float %5441, %5431
  %5443 = fmul fast float %5442, %4028
  %5444 = fadd fast float %5417, %4026
  %5445 = fadd fast float %5444, %5434
  %5446 = fmul fast float %5445, %4028
  %5447 = bitcast i32 %5250 to float
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 3
  %5450 = fcmp fast oeq float %5449, 0.000000e+00
  br i1 %5450, label %5678, label %5451

; <label>:5451                                    ; preds = %5389
  %5452 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5453 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5454 = extractvalue %dx.types.CBufRet.f32 %5448, 2
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.CBufRet.f32 %5455, 2
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5456, float %5457, float %5458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = select i1 %202, float %5460, float %5456
  %5464 = select i1 %202, float %5462, float %5457
  %5465 = select i1 %202, float %5461, float %5458
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 1
  %5468 = fcmp fast une float %5467, 0.000000e+00
  br i1 %5468, label %5469, label %5486

; <label>:5469                                    ; preds = %5451
  %5470 = fptoui float %76 to i32
  %5471 = fptoui float %77 to i32
  %5472 = lshr i32 %5470, 4
  %5473 = lshr i32 %5471, 4
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 0
  %5476 = fptoui float %5475 to i32
  %5477 = add i32 %5476, 15
  %5478 = lshr i32 %5477, 4
  %5479 = mul i32 %5478, %5473
  %5480 = add i32 %5479, %5472
  %5481 = shl i32 %5480, 3
  %5482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5481, i32 undef)  ; BufferLoad(srv,index,wot)
  %5483 = extractvalue %dx.types.ResRet.i32 %5482, 0
  %5484 = and i32 %5483, -268435456
  %5485 = icmp eq i32 %5484, -1342177280
  br i1 %5485, label %5496, label %5486

; <label>:5486                                    ; preds = %5469, %5451
  %5487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5488 = extractvalue %dx.types.CBufRet.f32 %5487, 2
  %5489 = extractvalue %dx.types.CBufRet.f32 %5487, 3
  %5490 = fmul fast float %5488, %76
  %5491 = fmul fast float %5489, %77
  %5492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5490, float %5491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 0
  %5494 = extractvalue %dx.types.ResRet.f32 %5492, 1
  %5495 = extractvalue %dx.types.ResRet.f32 %5492, 2
  br label %5496

; <label>:5496                                    ; preds = %5486, %5469
  %5497 = phi float [ %5493, %5486 ], [ 0.000000e+00, %5469 ]
  %5498 = phi float [ %5494, %5486 ], [ 0.000000e+00, %5469 ]
  %5499 = phi float [ %5495, %5486 ], [ 0.000000e+00, %5469 ]
  %5500 = call float @dx.op.binary.f32(i32 36, float %5498, float %5499)  ; FMin(a,b)
  %5501 = call float @dx.op.binary.f32(i32 36, float %5497, float %5500)  ; FMin(a,b)
  %5502 = fcmp fast ogt float %5501, 0.000000e+00
  br i1 %5502, label %5503, label %5678, !dx.controlflow.hints !74

; <label>:5503                                    ; preds = %5496
  %5504 = fmul fast float %5497, %5463
  %5505 = fmul fast float %5498, %5464
  %5506 = fmul fast float %5499, %5465
  %5507 = fsub fast float %5452, %5224
  %5508 = fsub fast float %5453, %5223
  %5509 = fsub fast float %5454, %5222
  %5510 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5507, float %5508, float %5509)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = call float @dx.op.unary.f32(i32 25, float %5510)  ; Rsqrt(value)
  %5512 = fmul fast float %5511, %5507
  %5513 = fmul fast float %5511, %5508
  %5514 = fmul fast float %5511, %5509
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %5231, float %5232, float %5233)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5220, float %5219, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5518 = fmul fast float %5517, %5517
  %5519 = fmul fast float %5518, %5447
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fmul fast float %5520, %5517
  %5522 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = fmul fast float %5522, %5522
  %5524 = call float @dx.op.unary.f32(i32 6, float %5515)  ; FAbs(value)
  %5525 = fsub fast float 1.000000e+00, %5234
  %5526 = call float @dx.op.binary.f32(i32 35, float %5525, float 0x3F847AE140000000)  ; FMax(a,b)
  %5527 = fmul fast float %5526, %5526
  %5528 = fmul fast float %5527, %5527
  %5529 = fsub fast float 1.000000e+00, %5528
  %5530 = fmul fast float %5238, %5238
  %5531 = fmul fast float %5530, %5529
  %5532 = fadd fast float %5531, %5528
  %5533 = bitcast float %5532 to i32
  %5534 = ashr i32 %5533, 1
  %5535 = add nsw i32 %5534, 532487669
  %5536 = bitcast i32 %5535 to float
  %5537 = fadd fast float %5536, %5238
  %5538 = fmul fast float %5528, %5523
  %5539 = fsub fast float 1.000000e+00, %5523
  %5540 = fadd fast float %5539, %5538
  %5541 = fmul fast float %5524, %5524
  %5542 = fmul fast float %5541, %5529
  %5543 = fadd fast float %5542, %5528
  %5544 = bitcast float %5543 to i32
  %5545 = ashr i32 %5544, 1
  %5546 = add nsw i32 %5545, 532487669
  %5547 = bitcast i32 %5546 to float
  %5548 = fadd fast float %5547, %5524
  %5549 = fmul fast float %5540, %5540
  %5550 = fmul fast float %5549, %5537
  %5551 = fmul fast float %5550, %5548
  %5552 = fdiv fast float 0x3FF0A00000000000, %5551
  %5553 = fmul fast float %5552, %5528
  %5554 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5555 = fsub fast float 1.000000e+00, %5554
  %5556 = bitcast float %5555 to i32
  %5557 = sitofp i32 %5556 to float
  %5558 = fmul fast float %5557, 5.000000e+00
  %5559 = fadd fast float %5558, 0xC1EFBF8940000000
  %5560 = fptosi float %5559 to i32
  %5561 = bitcast i32 %5560 to float
  %5562 = fsub fast float 1.000000e+00, %5228
  %5563 = fsub fast float 1.000000e+00, %5229
  %5564 = fsub fast float 1.000000e+00, %5236
  %5565 = fmul fast float %5561, %5562
  %5566 = fmul fast float %5561, %5563
  %5567 = fmul fast float %5561, %5564
  %5568 = fadd fast float %5565, %5228
  %5569 = fadd fast float %5566, %5229
  %5570 = fadd fast float %5567, %5236
  br i1 %5362, label %5571, label %5594

; <label>:5571                                    ; preds = %5503
  %5572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4031, float %5554, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5573 = extractvalue %dx.types.ResRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.ResRet.f32 %5572, 1
  %5575 = extractvalue %dx.types.ResRet.f32 %5572, 2
  %5576 = fadd fast float %5573, -5.000000e-01
  %5577 = fadd fast float %5574, -5.000000e-01
  %5578 = fadd fast float %5575, -5.000000e-01
  %5579 = fmul fast float %5228, 4.000000e+00
  %5580 = fmul fast float %5579, %5562
  %5581 = fmul fast float %5580, %5576
  %5582 = fmul fast float %5229, 4.000000e+00
  %5583 = fmul fast float %5582, %5563
  %5584 = fmul fast float %5583, %5577
  %5585 = fmul fast float %5236, 4.000000e+00
  %5586 = fmul fast float %5585, %5564
  %5587 = fmul fast float %5586, %5578
  %5588 = fadd fast float %5581, %5568
  %5589 = fadd fast float %5584, %5569
  %5590 = fadd fast float %5587, %5570
  %5591 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5592 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5593 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  br label %5594

; <label>:5594                                    ; preds = %5571, %5503
  %5595 = phi float [ %5591, %5571 ], [ %5568, %5503 ]
  %5596 = phi float [ %5592, %5571 ], [ %5569, %5503 ]
  %5597 = phi float [ %5593, %5571 ], [ %5570, %5503 ]
  %5598 = fmul fast float %5515, 9.843750e-01
  %5599 = fadd fast float %5598, 7.812500e-03
  %5600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5599, float %5352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5601 = extractvalue %dx.types.ResRet.f32 %5600, 2
  %5602 = extractvalue %dx.types.ResRet.f32 %5600, 3
  %5603 = fmul fast float %5601, %5228
  %5604 = fmul fast float %5601, %5229
  %5605 = fmul fast float %5601, %5236
  %5606 = fadd fast float %5603, %5602
  %5607 = fadd fast float %5604, %5602
  %5608 = fadd fast float %5605, %5602
  br i1 %5362, label %5609, label %5632

; <label>:5609                                    ; preds = %5594
  %5610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4031, float %5515, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5611 = extractvalue %dx.types.ResRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.ResRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.ResRet.f32 %5610, 2
  %5614 = fadd fast float %5611, -5.000000e-01
  %5615 = fadd fast float %5612, -5.000000e-01
  %5616 = fadd fast float %5613, -5.000000e-01
  %5617 = fmul fast float %5228, 4.000000e+00
  %5618 = fmul fast float %5617, %5562
  %5619 = fmul fast float %5618, %5614
  %5620 = fmul fast float %5229, 4.000000e+00
  %5621 = fmul fast float %5620, %5563
  %5622 = fmul fast float %5621, %5615
  %5623 = fmul fast float %5236, 4.000000e+00
  %5624 = fmul fast float %5623, %5564
  %5625 = fmul fast float %5624, %5616
  %5626 = fadd fast float %5619, %5606
  %5627 = fadd fast float %5622, %5607
  %5628 = fadd fast float %5625, %5608
  %5629 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5631 = call float @dx.op.unary.f32(i32 7, float %5628)  ; Saturate(value)
  br label %5632

; <label>:5632                                    ; preds = %5609, %5594
  %5633 = phi float [ %5629, %5609 ], [ %5606, %5594 ]
  %5634 = phi float [ %5630, %5609 ], [ %5607, %5594 ]
  %5635 = phi float [ %5631, %5609 ], [ %5608, %5594 ]
  %5636 = call float @dx.op.binary.f32(i32 35, float %5634, float %5635)  ; FMax(a,b)
  %5637 = call float @dx.op.binary.f32(i32 35, float %5633, float %5636)  ; FMax(a,b)
  %5638 = fsub fast float 1.000000e+00, %5637
  %5639 = fmul fast float %5595, %5553
  %5640 = fmul fast float %5596, %5553
  %5641 = fmul fast float %5597, %5553
  %5642 = fsub fast float 1.000000e+00, %5516
  %5643 = bitcast float %5642 to i32
  %5644 = sitofp i32 %5643 to float
  %5645 = fmul fast float %5644, 5.000000e+00
  %5646 = fadd fast float %5645, 0xC1EFBF8940000000
  %5647 = fptosi float %5646 to i32
  %5648 = bitcast i32 %5647 to float
  %5649 = fmul fast float %5648, %4032
  %5650 = fmul fast float %5638, %5649
  %5651 = fmul fast float %5650, %5412
  %5652 = fmul fast float %5650, %5413
  %5653 = fmul fast float %5650, %5414
  %5654 = fadd fast float %5651, %5639
  %5655 = fadd fast float %5652, %5640
  %5656 = fadd fast float %5653, %5641
  %5657 = fmul fast float %5521, %5504
  %5658 = fmul fast float %5657, %5638
  %5659 = fmul fast float %5521, %5505
  %5660 = fmul fast float %5659, %5638
  %5661 = fmul fast float %5521, %5506
  %5662 = fmul fast float %5661, %5638
  %5663 = fmul fast float %5657, %5654
  %5664 = fmul fast float %5659, %5655
  %5665 = fmul fast float %5661, %5656
  %5666 = fadd fast float %5658, %5396
  %5667 = fmul fast float %5666, %4028
  %5668 = fadd fast float %5660, %5397
  %5669 = fmul fast float %5668, %4028
  %5670 = fadd fast float %5662, %5398
  %5671 = fmul fast float %5670, %4028
  %5672 = fadd fast float %5663, %5439
  %5673 = fmul fast float %5672, %4028
  %5674 = fadd fast float %5664, %5442
  %5675 = fmul fast float %5674, %4028
  %5676 = fadd fast float %5665, %5445
  %5677 = fmul fast float %5676, %4028
  br label %5678

; <label>:5678                                    ; preds = %5632, %5496, %5389
  %5679 = phi float [ %5440, %5389 ], [ %5440, %5496 ], [ %5673, %5632 ]
  %5680 = phi float [ %5443, %5389 ], [ %5443, %5496 ], [ %5675, %5632 ]
  %5681 = phi float [ %5446, %5389 ], [ %5446, %5496 ], [ %5677, %5632 ]
  %5682 = phi float [ %5435, %5389 ], [ %5435, %5496 ], [ %5667, %5632 ]
  %5683 = phi float [ %5436, %5389 ], [ %5436, %5496 ], [ %5669, %5632 ]
  %5684 = phi float [ %5437, %5389 ], [ %5437, %5496 ], [ %5671, %5632 ]
  %5685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.i32 %5685, 0
  %5687 = icmp eq i32 %5686, 0
  br i1 %5687, label %6122, label %5688

; <label>:5688                                    ; preds = %5678
  %5689 = fptoui float %76 to i32
  %5690 = fptoui float %77 to i32
  %5691 = lshr i32 %5689, 4
  %5692 = lshr i32 %5690, 4
  %5693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.i32 %5693, 0
  %5695 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5692, i32 %5694, i32 %5691)  ; UMad(a,b,c)
  %5696 = add nsw i32 %5686, -1
  %5697 = call i32 @dx.op.binary.i32(i32 37, i32 %5696, i32 0)  ; IMax(a,b)
  %5698 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5699 = fptoui float %5698 to i32
  %5700 = lshr i32 %5699, 5
  %5701 = call i32 @dx.op.binary.i32(i32 40, i32 %5700, i32 8191)  ; UMin(a,b)
  %5702 = shl i32 %5701, 2
  %5703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5702, i32 undef)  ; BufferLoad(srv,index,wot)
  %5704 = extractvalue %dx.types.ResRet.i32 %5703, 0
  %5705 = lshr i32 %5704, 16
  %5706 = and i32 %5704, 65535
  %5707 = lshr i32 %5704, 21
  %5708 = lshr i32 %5706, 5
  %5709 = call i32 @dx.op.binary.i32(i32 40, i32 %5708, i32 %5697)  ; UMin(a,b)
  %5710 = icmp ugt i32 %5707, %5709
  br i1 %5710, label %6122, label %5711

; <label>:5711                                    ; preds = %5688
  br label %5712

; <label>:5712                                    ; preds = %6112, %5711
  %5713 = phi i32 [ %6119, %6112 ], [ %5707, %5711 ]
  %5714 = phi float [ %6113, %6112 ], [ %5679, %5711 ]
  %5715 = phi float [ %6114, %6112 ], [ %5680, %5711 ]
  %5716 = phi float [ %6115, %6112 ], [ %5681, %5711 ]
  %5717 = phi float [ %6116, %6112 ], [ %5682, %5711 ]
  %5718 = phi float [ %6117, %6112 ], [ %5683, %5711 ]
  %5719 = phi float [ %6118, %6112 ], [ %5684, %5711 ]
  %5720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.i32 %5720, 0
  %5722 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5695, i32 %5721, i32 %5713)  ; UMad(a,b,c)
  %5723 = shl i32 %5722, 2
  %5724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5723, i32 undef)  ; BufferLoad(srv,index,wot)
  %5725 = extractvalue %dx.types.ResRet.i32 %5724, 0
  %5726 = shl i32 %5713, 5
  %5727 = sub nsw i32 %5705, %5726
  %5728 = call i32 @dx.op.binary.i32(i32 37, i32 %5727, i32 0)  ; IMax(a,b)
  %5729 = call i32 @dx.op.binary.i32(i32 38, i32 %5728, i32 31)  ; IMin(a,b)
  %5730 = sub nsw i32 1, %5705
  %5731 = add nsw i32 %5730, %5706
  %5732 = call i32 @dx.op.binary.i32(i32 37, i32 %5731, i32 0)  ; IMax(a,b)
  %5733 = call i32 @dx.op.binary.i32(i32 38, i32 %5732, i32 32)  ; IMin(a,b)
  %5734 = and i32 %5733, 31
  %5735 = shl i32 -1, %5734
  %5736 = xor i32 %5735, -1
  %5737 = and i32 %5729, 31
  %5738 = shl i32 %5736, %5737
  %5739 = icmp eq i32 %5733, 32
  %5740 = select i1 %5739, i32 -1, i32 %5738
  %5741 = and i32 %5740, %5725
  %5742 = icmp eq i32 %5741, 0
  br i1 %5742, label %6112, label %5743

; <label>:5743                                    ; preds = %5712
  br label %5744

; <label>:5744                                    ; preds = %5824, %5743
  %5745 = phi i32 [ %5756, %5824 ], [ %5741, %5743 ]
  %5746 = phi float [ %5825, %5824 ], [ %5714, %5743 ]
  %5747 = phi float [ %5826, %5824 ], [ %5715, %5743 ]
  %5748 = phi float [ %5827, %5824 ], [ %5716, %5743 ]
  %5749 = phi float [ %5828, %5824 ], [ %5717, %5743 ]
  %5750 = phi float [ %5829, %5824 ], [ %5718, %5743 ]
  %5751 = phi float [ %5830, %5824 ], [ %5719, %5743 ]
  %5752 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5745)  ; FirstbitLo(value)
  %5753 = add i32 %5752, %5726
  %5754 = and i32 %5752, 31
  %5755 = shl i32 1, %5754
  %5756 = xor i32 %5755, %5745
  %5757 = mul i32 %5753, 112
  %5758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5757, i32 undef)  ; BufferLoad(srv,index,wot)
  %5759 = extractvalue %dx.types.ResRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.ResRet.f32 %5758, 1
  %5761 = extractvalue %dx.types.ResRet.f32 %5758, 2
  %5762 = or i32 %5757, 12
  %5763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5762, i32 undef)  ; BufferLoad(srv,index,wot)
  %5764 = extractvalue %dx.types.ResRet.f32 %5763, 0
  %5765 = add i32 %5757, 44
  %5766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5765, i32 undef)  ; BufferLoad(srv,index,wot)
  %5767 = extractvalue %dx.types.ResRet.f32 %5766, 0
  %5768 = add i32 %5757, 48
  %5769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5768, i32 undef)  ; BufferLoad(srv,index,wot)
  %5770 = extractvalue %dx.types.ResRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.ResRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.ResRet.f32 %5769, 2
  %5773 = add i32 %5757, 80
  %5774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5773, i32 undef)  ; BufferLoad(srv,index,wot)
  %5775 = extractvalue %dx.types.ResRet.f32 %5774, 1
  %5776 = extractvalue %dx.types.ResRet.f32 %5774, 2
  %5777 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = select i1 %202, float %5775, float %5759
  %5779 = select i1 %202, float %5777, float %5760
  %5780 = select i1 %202, float %5776, float %5761
  %5781 = fsub fast float %5770, %163
  %5782 = fsub fast float %5771, %164
  %5783 = fsub fast float %5772, %165
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5782, float %5783, float %5781, float %5782, float %5783)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = call float @dx.op.unary.f32(i32 24, float %5784)  ; Sqrt(value)
  %5786 = fdiv fast float 1.000000e+00, %5785
  %5787 = fmul fast float %5786, %5781
  %5788 = fmul fast float %5786, %5782
  %5789 = fmul fast float %5786, %5783
  %5790 = fadd fast float %5785, %5764
  %5791 = fdiv fast float 1.000000e+00, %5790
  %5792 = fmul float %5767, %5791
  %5793 = fmul float %5792, %5792
  %5794 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5795 = and i32 %5755, %5741
  %5796 = icmp eq i32 %5795, 0
  br i1 %5796, label %5819, label %5797, !dx.controlflow.hints !75

; <label>:5797                                    ; preds = %5744
  %5798 = lshr i32 %5689, 5
  %5799 = lshr i32 %5690, 5
  %5800 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5798, i32 %5799, i32 %5753, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5801 = extractvalue %dx.types.ResRet.i32 %5800, 0
  %5802 = and i32 %5801, 3
  %5803 = icmp eq i32 %5802, 0
  %5804 = select i1 %5803, float 1.000000e+00, float 0.000000e+00
  %5805 = icmp eq i32 %5802, 3
  br i1 %5805, label %5806, label %5819

; <label>:5806                                    ; preds = %5797
  %5807 = lshr i32 %5801, 10
  %5808 = and i32 %5807, 8160
  %5809 = and i32 %5690, 31
  %5810 = or i32 %5808, %5809
  %5811 = lshr i32 %5801, 1
  %5812 = and i32 %5811, 16352
  %5813 = and i32 %5689, 31
  %5814 = or i32 %5812, %5813
  %5815 = lshr i32 %5801, 23
  %5816 = and i32 %5815, 255
  %5817 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5814, i32 %5810, i32 %5816, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5818 = extractvalue %dx.types.ResRet.f32 %5817, 0
  br label %5819

; <label>:5819                                    ; preds = %5806, %5797, %5744
  %5820 = phi float [ %5818, %5806 ], [ %5804, %5797 ], [ 0.000000e+00, %5744 ]
  %5821 = call float @dx.op.binary.f32(i32 36, float %5820, float %5820)  ; FMin(a,b)
  %5822 = call float @dx.op.binary.f32(i32 36, float %5820, float %5821)  ; FMin(a,b)
  %5823 = fcmp fast ogt float %5822, 0.000000e+00
  br i1 %5823, label %5832, label %5824, !dx.controlflow.hints !76

; <label>:5824                                    ; preds = %6068, %5819
  %5825 = phi float [ %5746, %5819 ], [ %6108, %6068 ]
  %5826 = phi float [ %5747, %5819 ], [ %6109, %6068 ]
  %5827 = phi float [ %5748, %5819 ], [ %6110, %6068 ]
  %5828 = phi float [ %5749, %5819 ], [ %6102, %6068 ]
  %5829 = phi float [ %5750, %5819 ], [ %6103, %6068 ]
  %5830 = phi float [ %5751, %5819 ], [ %6104, %6068 ]
  %5831 = icmp eq i32 %5745, %5755
  br i1 %5831, label %6111, label %5744

; <label>:5832                                    ; preds = %5819
  %5833 = fmul fast float %5820, %5778
  %5834 = fmul fast float %5820, %5779
  %5835 = fmul fast float %5820, %5780
  %5836 = fsub fast float %5772, %4432
  %5837 = fcmp fast ogt float %5836, 0.000000e+00
  %5838 = fsub fast float %165, %4432
  %5839 = fcmp fast ogt float %5838, 0.000000e+00
  %5840 = xor i1 %5839, %5837
  %5841 = fsub fast float %4432, %5772
  %5842 = fmul fast float %5841, 2.000000e+00
  %5843 = fadd fast float %5842, %5772
  %5844 = select i1 %5840, float %5772, float %5843
  %5845 = fsub fast float %5844, %165
  %5846 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5782, float %5845, float %5781, float %5782, float %5845)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = call float @dx.op.unary.f32(i32 25, float %5846)  ; Rsqrt(value)
  %5848 = fmul fast float %5847, %5781
  %5849 = fmul fast float %5847, %5782
  %5850 = fmul fast float %5847, %5845
  %5851 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5852 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5848, float %5849, float %5850)  ; Dot3(ax,ay,az,bx,by,bz)
  %5853 = fdiv fast float 1.000000e+00, %5852
  %5854 = fmul fast float %5853, %5851
  %5855 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5838, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = fcmp fast ogt float %5855, 0.000000e+00
  %5857 = fcmp fast olt float %5855, 0.000000e+00
  %5858 = zext i1 %5856 to i32
  %5859 = zext i1 %5857 to i32
  %5860 = sub nsw i32 %5858, %5859
  %5861 = sitofp i32 %5860 to float
  %5862 = fsub fast float %5844, %4432
  %5863 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5782, float %5862, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = fcmp fast ogt float %5863, 0.000000e+00
  %5865 = fcmp fast olt float %5863, 0.000000e+00
  %5866 = zext i1 %5864 to i32
  %5867 = zext i1 %5865 to i32
  %5868 = sub nsw i32 %5866, %5867
  %5869 = sitofp i32 %5868 to float
  %5870 = fcmp fast une float %5861, %5869
  br i1 %5870, label %5871, label %5881

; <label>:5871                                    ; preds = %5832
  %5872 = fmul fast float %5854, %5850
  %5873 = fmul fast float %5854, %5849
  %5874 = fmul fast float %5854, %5848
  %5875 = fmul fast float %5874, %5874
  %5876 = fmul fast float %5873, %5873
  %5877 = fadd fast float %5875, %5876
  %5878 = fmul fast float %5872, %5872
  %5879 = fadd fast float %5877, %5878
  %5880 = call float @dx.op.unary.f32(i32 24, float %5879)  ; Sqrt(value)
  br label %5893

; <label>:5881                                    ; preds = %5832
  %5882 = icmp slt i32 %5860, 0
  br i1 %5882, label %5883, label %5893

; <label>:5883                                    ; preds = %5881
  %5884 = fsub fast float %163, %5770
  %5885 = fsub fast float %164, %5771
  %5886 = fsub fast float %165, %5844
  %5887 = fmul fast float %5884, %5884
  %5888 = fmul fast float %5885, %5885
  %5889 = fadd fast float %5887, %5888
  %5890 = fmul fast float %5886, %5886
  %5891 = fadd fast float %5889, %5890
  %5892 = call float @dx.op.unary.f32(i32 24, float %5891)  ; Sqrt(value)
  br label %5893

; <label>:5893                                    ; preds = %5883, %5881, %5871
  %5894 = phi float [ %5880, %5871 ], [ %5892, %5883 ], [ 0.000000e+00, %5881 ]
  %5895 = and i1 %5839, %5837
  %5896 = fsub fast float -0.000000e+00, %5894
  %5897 = select i1 %5895, float -0.000000e+00, float %5896
  %5898 = fmul fast float %4433, 0x3FF7154760000000
  %5899 = fmul fast float %5898, %5897
  %5900 = fmul fast float %4434, 0x3FF7154760000000
  %5901 = fmul fast float %5900, %5897
  %5902 = fmul fast float %4435, 0x3FF7154760000000
  %5903 = fmul fast float %5902, %5897
  %5904 = call float @dx.op.unary.f32(i32 21, float %5899)  ; Exp(value)
  %5905 = call float @dx.op.unary.f32(i32 21, float %5901)  ; Exp(value)
  %5906 = call float @dx.op.unary.f32(i32 21, float %5903)  ; Exp(value)
  %5907 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  %5908 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5909 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5910 = fmul fast float %5833, %5907
  %5911 = fmul fast float %5834, %5908
  %5912 = fmul fast float %5835, %5909
  %5913 = fsub fast float %5787, %5224
  %5914 = fsub fast float %5788, %5223
  %5915 = fsub fast float %5789, %5222
  %5916 = call float @dx.op.dot3.f32(i32 55, float %5913, float %5914, float %5915, float %5913, float %5914, float %5915)  ; Dot3(ax,ay,az,bx,by,bz)
  %5917 = call float @dx.op.unary.f32(i32 25, float %5916)  ; Rsqrt(value)
  %5918 = fmul fast float %5917, %5913
  %5919 = fmul fast float %5917, %5914
  %5920 = fmul fast float %5917, %5915
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5231, float %5232, float %5233)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5220, float %5219, float %5918, float %5919, float %5920)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = call float @dx.op.unary.f32(i32 7, float %5921)  ; Saturate(value)
  %5924 = fmul fast float %5923, %5794
  %5925 = fmul fast float %5923, %5923
  %5926 = fmul fast float %5925, %5447
  %5927 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5928 = fmul fast float %5924, %5927
  %5929 = bitcast float %5784 to i32
  %5930 = ashr i32 %5929, 1
  %5931 = sub nsw i32 1597463007, %5930
  %5932 = bitcast i32 %5931 to float
  %5933 = fmul fast float %5932, %5781
  %5934 = fmul fast float %5932, %5782
  %5935 = fmul fast float %5932, %5783
  %5936 = fsub fast float %5933, %5224
  %5937 = fsub fast float %5934, %5223
  %5938 = fsub fast float %5935, %5222
  %5939 = call float @dx.op.dot3.f32(i32 55, float %5936, float %5937, float %5938, float %5936, float %5937, float %5938)  ; Dot3(ax,ay,az,bx,by,bz)
  %5940 = call float @dx.op.unary.f32(i32 25, float %5939)  ; Rsqrt(value)
  %5941 = fmul fast float %5936, %5940
  %5942 = fmul fast float %5937, %5940
  %5943 = fmul fast float %5938, %5940
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fmul fast float %5944, %5944
  %5946 = call float @dx.op.unary.f32(i32 6, float %5921)  ; FAbs(value)
  %5947 = fsub fast float 1.000000e+00, %5234
  %5948 = call float @dx.op.binary.f32(i32 35, float %5947, float 0x3F847AE140000000)  ; FMax(a,b)
  %5949 = fmul fast float %5948, %5948
  %5950 = fmul fast float %5949, %5949
  %5951 = fsub fast float 1.000000e+00, %5950
  %5952 = fmul fast float %5238, %5238
  %5953 = fmul fast float %5952, %5951
  %5954 = fadd fast float %5953, %5950
  %5955 = bitcast float %5954 to i32
  %5956 = ashr i32 %5955, 1
  %5957 = add nsw i32 %5956, 532487669
  %5958 = bitcast i32 %5957 to float
  %5959 = fadd fast float %5958, %5238
  %5960 = fmul fast float %5950, %5945
  %5961 = fsub fast float 1.000000e+00, %5945
  %5962 = fadd fast float %5961, %5960
  %5963 = fmul fast float %5946, %5946
  %5964 = fmul fast float %5963, %5951
  %5965 = fadd fast float %5964, %5950
  %5966 = bitcast float %5965 to i32
  %5967 = ashr i32 %5966, 1
  %5968 = add nsw i32 %5967, 532487669
  %5969 = bitcast i32 %5968 to float
  %5970 = fadd fast float %5969, %5946
  %5971 = fmul fast float %5962, %5962
  %5972 = fmul fast float %5971, %5959
  %5973 = fmul fast float %5972, %5970
  %5974 = fdiv fast float 1.000000e+00, %5973
  %5975 = bitcast float %5950 to i32
  %5976 = sitofp i32 %5975 to float
  %5977 = fmul fast float %5976, 0x3FE7F73180000000
  %5978 = fadd fast float %5977, 0x41AFE27C40000000
  %5979 = fptosi float %5978 to i32
  %5980 = bitcast i32 %5979 to float
  %5981 = fmul fast float %5767, 0x3FD80E9D60000000
  %5982 = fmul fast float %5981, %5932
  %5983 = fadd fast float %5980, %5982
  %5984 = bitcast float %5983 to i32
  %5985 = sub nsw i32 2129859010, %5984
  %5986 = bitcast i32 %5985 to float
  %5987 = fmul fast float %5950, %5974
  %5988 = fmul fast float %5987, %5980
  %5989 = fmul fast float %5988, %5986
  %5990 = call float @dx.op.unary.f32(i32 6, float %5922)  ; FAbs(value)
  %5991 = fsub fast float 1.000000e+00, %5990
  %5992 = bitcast float %5991 to i32
  %5993 = sitofp i32 %5992 to float
  %5994 = fmul fast float %5993, 5.000000e+00
  %5995 = fadd fast float %5994, 0xC1EFBF8940000000
  %5996 = fptosi float %5995 to i32
  %5997 = bitcast i32 %5996 to float
  %5998 = fsub fast float 1.000000e+00, %5228
  %5999 = fsub fast float 1.000000e+00, %5229
  %6000 = fsub fast float 1.000000e+00, %5236
  %6001 = fmul fast float %5997, %5998
  %6002 = fmul fast float %5997, %5999
  %6003 = fmul fast float %5997, %6000
  %6004 = fadd fast float %6001, %5228
  %6005 = fadd fast float %6002, %5229
  %6006 = fadd fast float %6003, %5236
  br i1 %5362, label %6007, label %6030

; <label>:6007                                    ; preds = %5893
  %6008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4031, float %5990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6009 = extractvalue %dx.types.ResRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.ResRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.ResRet.f32 %6008, 2
  %6012 = fadd fast float %6009, -5.000000e-01
  %6013 = fadd fast float %6010, -5.000000e-01
  %6014 = fadd fast float %6011, -5.000000e-01
  %6015 = fmul fast float %5228, 4.000000e+00
  %6016 = fmul fast float %6015, %5998
  %6017 = fmul fast float %6016, %6012
  %6018 = fmul fast float %5229, 4.000000e+00
  %6019 = fmul fast float %6018, %5999
  %6020 = fmul fast float %6019, %6013
  %6021 = fmul fast float %5236, 4.000000e+00
  %6022 = fmul fast float %6021, %6000
  %6023 = fmul fast float %6022, %6014
  %6024 = fadd fast float %6017, %6004
  %6025 = fadd fast float %6020, %6005
  %6026 = fadd fast float %6023, %6006
  %6027 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  %6028 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6029 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  br label %6030

; <label>:6030                                    ; preds = %6007, %5893
  %6031 = phi float [ %6027, %6007 ], [ %6004, %5893 ]
  %6032 = phi float [ %6028, %6007 ], [ %6005, %5893 ]
  %6033 = phi float [ %6029, %6007 ], [ %6006, %5893 ]
  %6034 = fmul fast float %5921, 9.843750e-01
  %6035 = fadd fast float %6034, 7.812500e-03
  %6036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6035, float %5352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6037 = extractvalue %dx.types.ResRet.f32 %6036, 2
  %6038 = extractvalue %dx.types.ResRet.f32 %6036, 3
  %6039 = fmul fast float %6037, %5228
  %6040 = fmul fast float %6037, %5229
  %6041 = fmul fast float %6037, %5236
  %6042 = fadd fast float %6039, %6038
  %6043 = fadd fast float %6040, %6038
  %6044 = fadd fast float %6041, %6038
  br i1 %5362, label %6045, label %6068

; <label>:6045                                    ; preds = %6030
  %6046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4031, float %5921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6047 = extractvalue %dx.types.ResRet.f32 %6046, 0
  %6048 = extractvalue %dx.types.ResRet.f32 %6046, 1
  %6049 = extractvalue %dx.types.ResRet.f32 %6046, 2
  %6050 = fadd fast float %6047, -5.000000e-01
  %6051 = fadd fast float %6048, -5.000000e-01
  %6052 = fadd fast float %6049, -5.000000e-01
  %6053 = fmul fast float %5228, 4.000000e+00
  %6054 = fmul fast float %6053, %5998
  %6055 = fmul fast float %6054, %6050
  %6056 = fmul fast float %5229, 4.000000e+00
  %6057 = fmul fast float %6056, %5999
  %6058 = fmul fast float %6057, %6051
  %6059 = fmul fast float %5236, 4.000000e+00
  %6060 = fmul fast float %6059, %6000
  %6061 = fmul fast float %6060, %6052
  %6062 = fadd fast float %6055, %6042
  %6063 = fadd fast float %6058, %6043
  %6064 = fadd fast float %6061, %6044
  %6065 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6066 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6067 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  br label %6068

; <label>:6068                                    ; preds = %6045, %6030
  %6069 = phi float [ %6065, %6045 ], [ %6042, %6030 ]
  %6070 = phi float [ %6066, %6045 ], [ %6043, %6030 ]
  %6071 = phi float [ %6067, %6045 ], [ %6044, %6030 ]
  %6072 = call float @dx.op.binary.f32(i32 35, float %6070, float %6071)  ; FMax(a,b)
  %6073 = call float @dx.op.binary.f32(i32 35, float %6069, float %6072)  ; FMax(a,b)
  %6074 = fsub fast float 1.000000e+00, %6073
  %6075 = fmul fast float %6031, %5989
  %6076 = fmul fast float %6032, %5989
  %6077 = fmul fast float %6033, %5989
  %6078 = fsub fast float 1.000000e+00, %5922
  %6079 = bitcast float %6078 to i32
  %6080 = sitofp i32 %6079 to float
  %6081 = fmul fast float %6080, 5.000000e+00
  %6082 = fadd fast float %6081, 0xC1EFBF8940000000
  %6083 = fptosi float %6082 to i32
  %6084 = bitcast i32 %6083 to float
  %6085 = fmul fast float %6084, %4032
  %6086 = fmul fast float %6074, %6085
  %6087 = fmul fast float %6086, %5412
  %6088 = fmul fast float %6086, %5413
  %6089 = fmul fast float %6086, %5414
  %6090 = fadd fast float %6087, %6075
  %6091 = fadd fast float %6088, %6076
  %6092 = fadd fast float %6089, %6077
  %6093 = fmul fast float %5910, %4028
  %6094 = fmul fast float %6093, %5928
  %6095 = fmul fast float %6094, %6074
  %6096 = fmul fast float %5911, %4028
  %6097 = fmul fast float %6096, %5928
  %6098 = fmul fast float %6097, %6074
  %6099 = fmul fast float %5912, %4028
  %6100 = fmul fast float %6099, %5928
  %6101 = fmul fast float %6100, %6074
  %6102 = fadd fast float %6095, %5749
  %6103 = fadd fast float %6098, %5750
  %6104 = fadd fast float %6101, %5751
  %6105 = fmul fast float %6094, %6090
  %6106 = fmul fast float %6097, %6091
  %6107 = fmul fast float %6100, %6092
  %6108 = fadd fast float %6105, %5746
  %6109 = fadd fast float %6106, %5747
  %6110 = fadd fast float %6107, %5748
  br label %5824

; <label>:6111                                    ; preds = %5824
  br label %6112

; <label>:6112                                    ; preds = %6111, %5712
  %6113 = phi float [ %5714, %5712 ], [ %5825, %6111 ]
  %6114 = phi float [ %5715, %5712 ], [ %5826, %6111 ]
  %6115 = phi float [ %5716, %5712 ], [ %5827, %6111 ]
  %6116 = phi float [ %5717, %5712 ], [ %5828, %6111 ]
  %6117 = phi float [ %5718, %5712 ], [ %5829, %6111 ]
  %6118 = phi float [ %5719, %5712 ], [ %5830, %6111 ]
  %6119 = add i32 %5713, 1
  %6120 = icmp ugt i32 %6119, %5709
  br i1 %6120, label %6121, label %5712

; <label>:6121                                    ; preds = %6112
  br label %6122

; <label>:6122                                    ; preds = %6121, %5688, %5678
  %6123 = phi float [ %5679, %5678 ], [ %5679, %5688 ], [ %6113, %6121 ]
  %6124 = phi float [ %5680, %5678 ], [ %5680, %5688 ], [ %6114, %6121 ]
  %6125 = phi float [ %5681, %5678 ], [ %5681, %5688 ], [ %6115, %6121 ]
  %6126 = phi float [ %5682, %5678 ], [ %5682, %5688 ], [ %6116, %6121 ]
  %6127 = phi float [ %5683, %5678 ], [ %5683, %5688 ], [ %6117, %6121 ]
  %6128 = phi float [ %5684, %5678 ], [ %5684, %5688 ], [ %6118, %6121 ]
  %6129 = call float @dx.op.unary.f32(i32 24, float %5225)  ; Sqrt(value)
  %6130 = call float @dx.op.unary.f32(i32 24, float %5226)  ; Sqrt(value)
  %6131 = call float @dx.op.unary.f32(i32 24, float %5227)  ; Sqrt(value)
  %6132 = fmul fast float %6129, %6126
  %6133 = fmul fast float %6130, %6127
  %6134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.f32 %6134, 0
  br i1 %202, label %6136, label %6156

; <label>:6136                                    ; preds = %6122
  %6137 = fadd fast float %6128, %4034
  %6138 = fmul fast float %6137, %4035
  %6139 = fsub fast float 1.000000e+00, %4035
  %6140 = call float @dx.op.unary.f32(i32 7, float %6139)  ; Saturate(value)
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 3
  %6143 = fmul fast float %6142, %6140
  %6144 = fadd fast float %6143, %6138
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 0
  %6147 = fmul fast float %6146, %5418
  %6148 = fsub fast float %6144, %6147
  %6149 = fadd fast float %6133, %6132
  %6150 = fmul fast float %6135, %6149
  %6151 = extractvalue %dx.types.CBufRet.f32 %6141, 1
  %6152 = fsub fast float %6148, %6151
  %6153 = extractvalue %dx.types.CBufRet.f32 %6141, 2
  %6154 = fmul fast float %6152, %6153
  %6155 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  br label %6172

; <label>:6156                                    ; preds = %6122
  %6157 = fmul fast float %6131, %6128
  %6158 = fmul fast float %6135, %6132
  %6159 = fmul fast float %6135, %6133
  %6160 = fmul fast float %6157, %6135
  %6161 = add i32 %32, 356
  %6162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6161, i32 undef)  ; BufferLoad(srv,index,wot)
  %6163 = extractvalue %dx.types.ResRet.i32 %6162, 0
  %6164 = and i32 %6163, 32
  %6165 = icmp eq i32 %6164, 0
  br i1 %6165, label %6172, label %6166

; <label>:6166                                    ; preds = %6156
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 0
  %6169 = fmul fast float %6168, 0x3FE99999A0000000
  %6170 = fadd fast float %6168, %6158
  %6171 = fadd fast float %6169, %6160
  br label %6172

; <label>:6172                                    ; preds = %6166, %6156, %6136
  %6173 = phi float [ %6150, %6136 ], [ %6170, %6166 ], [ %6158, %6156 ]
  %6174 = phi float [ %6155, %6136 ], [ %6159, %6166 ], [ %6159, %6156 ]
  %6175 = phi float [ 1.000000e+00, %6136 ], [ %6171, %6166 ], [ %6160, %6156 ]
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = fmul fast float %6177, %6124
  %6179 = fmul fast float %6177, %6125
  %6180 = fadd fast float %6124, %6123
  %6181 = select i1 %202, float %6180, float %6123
  %6182 = fmul float %6181, %6177
  %6183 = select i1 %202, float 0.000000e+00, float %6178
  %6184 = select i1 %202, float 0.000000e+00, float %6179
  %6185 = fmul fast float %6173, %6129
  %6186 = fmul fast float %6174, %6130
  %6187 = fmul fast float %6175, %6131
  %6188 = fadd fast float %6182, %6185
  %6189 = fadd fast float %6183, %6186
  %6190 = fadd fast float %6184, %6187
  %6191 = select i1 %202, float %6174, float %6189
  %6192 = select i1 %202, float %6175, float %6190
  %6193 = call float @dx.op.binary.f32(i32 36, float %6188, float 3.225500e+04)  ; FMin(a,b)
  %6194 = call float @dx.op.binary.f32(i32 36, float %6191, float 3.225500e+04)  ; FMin(a,b)
  %6195 = call float @dx.op.binary.f32(i32 36, float %6192, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6193)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6194)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6195)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!45}
!dx.entryPoints = !{!46}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !37, !40}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!37 = !{!38, !39}
!38 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!39 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!40 = !{!41, !42, !43, !44}
!41 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!42 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!43 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!44 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!45 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!46 = !{void ()* @ps_main, !"ps_main", !47, !4, !73}
!47 = !{!48, !71, null}
!48 = !{!49, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !66, !67, !69, !70}
!49 = !{i32 0, !"SV_Position", i8 9, i8 3, !50, i8 4, i32 1, i8 4, i32 0, i8 0, !51}
!50 = !{i32 0}
!51 = !{i32 3, i32 11}
!52 = !{i32 1, !"COLOR", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 1, i8 0, !53}
!53 = !{i32 3, i32 14}
!54 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 2, i8 0, !55}
!55 = !{i32 3, i32 3}
!56 = !{i32 3, !"NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 3, i32 3, i8 0, !57}
!57 = !{i32 3, i32 7}
!58 = !{i32 4, !"TANGENT", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 4, i8 0, !59}
!59 = !{i32 3, i32 15}
!60 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !50, i8 2, i32 1, i8 3, i32 5, i8 0, !57}
!61 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 6, i8 0, !59}
!62 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 3, i32 7, i8 0, !57}
!63 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 8, i8 0, !59}
!64 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !50, i8 2, i32 1, i8 2, i32 9, i8 0, !55}
!65 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 10, i8 0, !59}
!66 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 11, i8 0, !57}
!67 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !50, i8 1, i32 1, i8 1, i32 12, i8 0, !68}
!68 = !{i32 3, i32 1}
!69 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !50, i8 1, i32 1, i8 4, i32 13, i8 0, !68}
!70 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !50, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!71 = !{!72}
!72 = !{i32 0, !"SV_Target", i8 9, i8 16, !50, i8 0, i32 1, i8 4, i32 0, i8 0, !59}
!73 = !{i32 0, i64 24}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}

