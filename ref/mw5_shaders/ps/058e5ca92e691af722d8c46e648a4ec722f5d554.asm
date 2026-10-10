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
; shader hash: 6efd135b91b2f3afc2393d79c08395e1
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
  %396 = add i32 %32, 472
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
  br i1 %386, label %1648, label %922

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
  br i1 %931, label %1648, label %932

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
  br i1 %1105, label %1648, label %1106

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
  %1455 = add i32 %32, 112
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = lshr i32 %1457, 8
  %1461 = and i32 %1460, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = call float @dx.op.dot3.f32(i32 55, float %1324, float %1325, float %1326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1464 = fmul fast float %1462, %1463
  %1465 = fadd fast float %1464, %1459
  %1466 = fmul fast float %1465, 0x3F70101020000000
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  br i1 %923, label %1468, label %1476

; <label>:1468                                    ; preds = %1451
  %1469 = fsub fast float 1.000000e+00, %1104
  %1470 = fmul fast float %1469, %911
  %1471 = fmul fast float %1469, %912
  %1472 = fmul fast float %1469, %913
  %1473 = fmul fast float %1469, %914
  %1474 = fmul fast float %1469, %915
  %1475 = fmul fast float %1469, %916
  br label %1476

; <label>:1476                                    ; preds = %1468, %1451
  %1477 = phi float [ %1470, %1468 ], [ %911, %1451 ]
  %1478 = phi float [ %1471, %1468 ], [ %912, %1451 ]
  %1479 = phi float [ %1472, %1468 ], [ %913, %1451 ]
  %1480 = phi float [ %1473, %1468 ], [ %914, %1451 ]
  %1481 = phi float [ %1474, %1468 ], [ %915, %1451 ]
  %1482 = phi float [ %1475, %1468 ], [ %916, %1451 ]
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 3
  %1486 = icmp eq i32 %1485, 3
  br i1 %1486, label %1565, label %1487

; <label>:1487                                    ; preds = %1476
  %1488 = and i32 %1484, 16
  %1489 = icmp ne i32 %1488, 0
  %1490 = select i1 %1489, float %1104, float 0.000000e+00
  %1491 = icmp eq i32 %1485, 0
  br i1 %1491, label %1492, label %1520

; <label>:1492                                    ; preds = %1487
  %1493 = and i32 %1484, 64
  %1494 = icmp ne i32 %1493, 0
  %1495 = select i1 %1494, float %1104, float 0.000000e+00
  %1496 = fsub fast float %1324, %1477
  %1497 = fsub fast float %1325, %1478
  %1498 = fsub fast float %1326, %1479
  %1499 = fmul fast float %1490, %1496
  %1500 = fmul fast float %1490, %1497
  %1501 = fmul fast float %1490, %1498
  %1502 = fadd fast float %1499, %1477
  %1503 = fadd fast float %1500, %1478
  %1504 = fadd fast float %1501, %1479
  %1505 = fsub fast float %1310, %917
  %1506 = fmul fast float %1490, %1505
  %1507 = fadd fast float %1506, %917
  %1508 = fsub fast float %1452, %1480
  %1509 = fsub fast float %1453, %1481
  %1510 = fsub fast float %1454, %1482
  %1511 = fmul fast float %1495, %1508
  %1512 = fmul fast float %1495, %1509
  %1513 = fmul fast float %1495, %1510
  %1514 = fadd fast float %1511, %1480
  %1515 = fadd fast float %1512, %1481
  %1516 = fadd fast float %1513, %1482
  %1517 = fsub fast float %1467, %921
  %1518 = fmul fast float %1490, %1517
  %1519 = fadd fast float %1518, %921
  br label %1565

; <label>:1520                                    ; preds = %1487
  %1521 = icmp eq i32 %1485, 1
  br i1 %1521, label %1522, label %1535

; <label>:1522                                    ; preds = %1520
  %1523 = fadd fast float %1324, -1.000000e+00
  %1524 = fadd fast float %1325, -1.000000e+00
  %1525 = fadd fast float %1326, -1.000000e+00
  %1526 = fmul fast float %1490, %1523
  %1527 = fmul fast float %1490, %1524
  %1528 = fmul fast float %1490, %1525
  %1529 = fadd fast float %1526, 1.000000e+00
  %1530 = fadd fast float %1527, 1.000000e+00
  %1531 = fadd fast float %1528, 1.000000e+00
  %1532 = fmul fast float %1529, %1477
  %1533 = fmul fast float %1530, %1478
  %1534 = fmul fast float %1531, %1479
  br label %1565

; <label>:1535                                    ; preds = %1520
  %1536 = icmp eq i32 %1485, 2
  br i1 %1536, label %1537, label %1565

; <label>:1537                                    ; preds = %1535
  %1538 = call float @dx.op.unary.f32(i32 24, float %1324)  ; Sqrt(value)
  %1539 = call float @dx.op.unary.f32(i32 24, float %1325)  ; Sqrt(value)
  %1540 = call float @dx.op.unary.f32(i32 24, float %1326)  ; Sqrt(value)
  %1541 = fadd fast float %1538, -5.000000e-01
  %1542 = fadd fast float %1539, -5.000000e-01
  %1543 = fadd fast float %1540, -5.000000e-01
  %1544 = fmul fast float %1541, %1490
  %1545 = fmul fast float %1542, %1490
  %1546 = fmul fast float %1543, %1490
  %1547 = fadd fast float %1544, 5.000000e-01
  %1548 = fadd fast float %1545, 5.000000e-01
  %1549 = fadd fast float %1546, 5.000000e-01
  %1550 = fmul fast float %1547, 2.000000e+00
  %1551 = fsub fast float 1.000000e+00, %1550
  %1552 = fmul fast float %1551, %1477
  %1553 = fadd fast float %1552, %1550
  %1554 = fmul fast float %1553, %1477
  %1555 = fmul fast float %1548, 2.000000e+00
  %1556 = fsub fast float 1.000000e+00, %1555
  %1557 = fmul fast float %1556, %1478
  %1558 = fadd fast float %1557, %1555
  %1559 = fmul fast float %1558, %1478
  %1560 = fmul fast float %1549, 2.000000e+00
  %1561 = fsub fast float 1.000000e+00, %1560
  %1562 = fmul fast float %1561, %1479
  %1563 = fadd fast float %1562, %1560
  %1564 = fmul fast float %1563, %1479
  br label %1565

; <label>:1565                                    ; preds = %1537, %1535, %1522, %1492, %1476
  %1566 = phi float [ %1477, %1476 ], [ %1554, %1537 ], [ %1477, %1535 ], [ %1532, %1522 ], [ %1502, %1492 ]
  %1567 = phi float [ %1478, %1476 ], [ %1559, %1537 ], [ %1478, %1535 ], [ %1533, %1522 ], [ %1503, %1492 ]
  %1568 = phi float [ %1479, %1476 ], [ %1564, %1537 ], [ %1479, %1535 ], [ %1534, %1522 ], [ %1504, %1492 ]
  %1569 = phi float [ %1480, %1476 ], [ %1480, %1537 ], [ %1480, %1535 ], [ %1480, %1522 ], [ %1514, %1492 ]
  %1570 = phi float [ %1481, %1476 ], [ %1481, %1537 ], [ %1481, %1535 ], [ %1481, %1522 ], [ %1515, %1492 ]
  %1571 = phi float [ %1482, %1476 ], [ %1482, %1537 ], [ %1482, %1535 ], [ %1482, %1522 ], [ %1516, %1492 ]
  %1572 = phi float [ %917, %1476 ], [ %917, %1537 ], [ %917, %1535 ], [ %917, %1522 ], [ %1507, %1492 ]
  %1573 = phi float [ %921, %1476 ], [ %921, %1537 ], [ %921, %1535 ], [ %921, %1522 ], [ %1519, %1492 ]
  %1574 = and i32 %1484, 12
  %1575 = icmp eq i32 %1574, 12
  br i1 %1575, label %1648, label %1576

; <label>:1576                                    ; preds = %1565
  %1577 = and i32 %1484, 2097184
  %1578 = icmp eq i32 %1577, 2097184
  %1579 = select i1 %1578, float %1104, float 0.000000e+00
  %1580 = and i32 %1484, 4194336
  %1581 = icmp eq i32 %1580, 4194336
  %1582 = select i1 %1581, float %1104, float 0.000000e+00
  %1583 = and i32 %1484, 8388640
  %1584 = icmp eq i32 %1583, 8388640
  %1585 = select i1 %1584, float %1104, float 0.000000e+00
  %1586 = icmp eq i32 %1574, 0
  br i1 %1586, label %1587, label %1600

; <label>:1587                                    ; preds = %1576
  %1588 = fsub fast float %1405, %909
  %1589 = fsub fast float %1406, %910
  %1590 = fmul fast float %1579, %1588
  %1591 = fmul fast float %1579, %1589
  %1592 = fadd fast float %1590, %909
  %1593 = fadd fast float %1591, %910
  %1594 = fsub fast float %1407, %920
  %1595 = fmul fast float %1582, %1594
  %1596 = fadd fast float %1595, %920
  %1597 = fsub fast float %1404, %919
  %1598 = fmul fast float %1585, %1597
  %1599 = fadd fast float %1598, %919
  br label %1648

; <label>:1600                                    ; preds = %1576
  %1601 = icmp eq i32 %1574, 4
  br i1 %1601, label %1602, label %1634

; <label>:1602                                    ; preds = %1600
  %1603 = fmul fast float %1579, %1405
  %1604 = fmul fast float %1579, %1406
  %1605 = fadd fast float %1603, %909
  %1606 = fadd fast float %1604, %910
  %1607 = call float @dx.op.binary.f32(i32 36, float %920, float %1407)  ; FMin(a,b)
  %1608 = fsub fast float %1607, %920
  %1609 = fmul fast float %1608, %1582
  %1610 = fadd fast float %1609, %920
  %1611 = fadd fast float %1404, %919
  %1612 = fmul fast float %1611, 0x3FF337FAE0000000
  %1613 = fmul fast float %919, %919
  %1614 = fmul fast float %1404, %1404
  %1615 = fadd fast float %1614, %1613
  %1616 = fmul fast float %1615, 0x3FE5152B00000000
  %1617 = fmul fast float %919, 0xBFCC1F85E0000000
  %1618 = fmul fast float %1617, %1404
  %1619 = fadd fast float %1618, 0xBFE1363700000000
  %1620 = fadd fast float %1619, %1612
  %1621 = fsub fast float %1620, %1616
  %1622 = fmul fast float %1611, 0x3FBA6F0D00000000
  %1623 = fmul fast float %1615, 0x3FD0432880000000
  %1624 = fmul fast float %919, 0xBFEF110800000000
  %1625 = fmul fast float %1624, %1404
  %1626 = fadd fast float %1625, 1.000000e+00
  %1627 = fsub fast float %1626, %1622
  %1628 = fadd fast float %1627, %1623
  %1629 = fdiv fast float %1621, %1628
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fsub fast float %1630, %919
  %1632 = fmul fast float %1631, %1585
  %1633 = fadd fast float %1632, %919
  br label %1648

; <label>:1634                                    ; preds = %1600
  %1635 = icmp eq i32 %1574, 8
  br i1 %1635, label %1636, label %1648

; <label>:1636                                    ; preds = %1634
  %1637 = fmul fast float %1579, %1405
  %1638 = fmul fast float %1579, %1406
  %1639 = fadd fast float %1637, %909
  %1640 = fadd fast float %1638, %910
  %1641 = call float @dx.op.binary.f32(i32 36, float %920, float %1407)  ; FMin(a,b)
  %1642 = fsub fast float %1641, %920
  %1643 = fmul fast float %1642, %1582
  %1644 = fadd fast float %1643, %920
  %1645 = fsub fast float %1404, %919
  %1646 = fmul fast float %1585, %1645
  %1647 = fadd fast float %1646, %919
  br label %1648

; <label>:1648                                    ; preds = %1636, %1634, %1602, %1587, %1565, %1103, %922, %908
  %1649 = phi float [ %909, %1565 ], [ %909, %1103 ], [ %909, %908 ], [ %1639, %1636 ], [ %909, %1634 ], [ %1605, %1602 ], [ %1592, %1587 ], [ %909, %922 ]
  %1650 = phi float [ %910, %1565 ], [ %910, %1103 ], [ %910, %908 ], [ %1640, %1636 ], [ %910, %1634 ], [ %1606, %1602 ], [ %1593, %1587 ], [ %910, %922 ]
  %1651 = phi float [ %1566, %1565 ], [ %911, %1103 ], [ %911, %908 ], [ %1566, %1636 ], [ %1566, %1634 ], [ %1566, %1602 ], [ %1566, %1587 ], [ %911, %922 ]
  %1652 = phi float [ %1567, %1565 ], [ %912, %1103 ], [ %912, %908 ], [ %1567, %1636 ], [ %1567, %1634 ], [ %1567, %1602 ], [ %1567, %1587 ], [ %912, %922 ]
  %1653 = phi float [ %1568, %1565 ], [ %913, %1103 ], [ %913, %908 ], [ %1568, %1636 ], [ %1568, %1634 ], [ %1568, %1602 ], [ %1568, %1587 ], [ %913, %922 ]
  %1654 = phi float [ %1569, %1565 ], [ %914, %1103 ], [ %914, %908 ], [ %1569, %1636 ], [ %1569, %1634 ], [ %1569, %1602 ], [ %1569, %1587 ], [ %914, %922 ]
  %1655 = phi float [ %1570, %1565 ], [ %915, %1103 ], [ %915, %908 ], [ %1570, %1636 ], [ %1570, %1634 ], [ %1570, %1602 ], [ %1570, %1587 ], [ %915, %922 ]
  %1656 = phi float [ %1571, %1565 ], [ %916, %1103 ], [ %916, %908 ], [ %1571, %1636 ], [ %1571, %1634 ], [ %1571, %1602 ], [ %1571, %1587 ], [ %916, %922 ]
  %1657 = phi float [ %1572, %1565 ], [ %917, %1103 ], [ %917, %908 ], [ %1572, %1636 ], [ %1572, %1634 ], [ %1572, %1602 ], [ %1572, %1587 ], [ %917, %922 ]
  %1658 = phi float [ %919, %1565 ], [ %919, %1103 ], [ %919, %908 ], [ %1647, %1636 ], [ %919, %1634 ], [ %1633, %1602 ], [ %1599, %1587 ], [ %919, %922 ]
  %1659 = phi float [ %920, %1565 ], [ %920, %1103 ], [ %920, %908 ], [ %1644, %1636 ], [ %920, %1634 ], [ %1610, %1602 ], [ %1596, %1587 ], [ %920, %922 ]
  %1660 = phi float [ %1573, %1565 ], [ %921, %1103 ], [ %921, %908 ], [ %1573, %1636 ], [ %1573, %1634 ], [ %1573, %1602 ], [ %1573, %1587 ], [ %921, %922 ]
  br i1 %388, label %2387, label %1661

; <label>:1661                                    ; preds = %1648
  %1662 = icmp ult i32 %441, 3
  %1663 = add i32 %32, 56
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = add i32 %32, 60
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = or i32 %1668, %1665
  %1670 = icmp eq i32 %1669, 0
  br i1 %1670, label %2387, label %1671

; <label>:1671                                    ; preds = %1661
  %1672 = and i32 %1665, 262144
  %1673 = icmp ne i32 %1672, 0
  %1674 = select i1 %1673, float %37, float 1.000000e+00
  %1675 = select i1 %1673, float %38, float 0.000000e+00
  %1676 = select i1 %1673, float %39, float 0.000000e+00
  %1677 = select i1 %1673, float %40, float 1.000000e+00
  %1678 = select i1 %1673, float %41, float %64
  %1679 = select i1 %1673, float %42, float %65
  %1680 = add i32 %32, 316
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = lshr i32 %1682, 16
  %1684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1683)  ; LegacyF16ToF32(value)
  %1685 = fmul fast float %1684, 0x3F50624DE0000000
  %1686 = add i32 %32, 120
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = lshr i32 %1688, 16
  %1690 = and i32 %1689, 255
  %1691 = lshr i32 %1688, 24
  %1692 = add i32 %32, 324
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = and i32 %1694, 65535
  %1696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1695)  ; LegacyF16ToF32(value)
  %1697 = lshr i32 %1694, 16
  %1698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1697)  ; LegacyF16ToF32(value)
  %1699 = add i32 %32, 64
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = lshr i32 %1701, 22
  %1703 = shl nuw nsw i32 %1702, 5
  %1704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1703)  ; LegacyF16ToF32(value)
  %1705 = shl i32 %1701, 4
  %1706 = and i32 %1705, 32752
  %1707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1706)  ; LegacyF16ToF32(value)
  %1708 = lshr i32 %1701, 7
  %1709 = and i32 %1708, 32752
  %1710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1709)  ; LegacyF16ToF32(value)
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 3
  %1713 = fmul fast float %1712, 1.000000e+03
  %1714 = fmul fast float %338, %1713
  %1715 = call float @dx.op.unary.f32(i32 22, float %1714)  ; Frc(value)
  %1716 = fadd fast float %1715, %328
  %1717 = fmul fast float %339, %1713
  %1718 = call float @dx.op.unary.f32(i32 22, float %1717)  ; Frc(value)
  %1719 = fadd fast float %1718, %330
  %1720 = fmul fast float %1685, %1713
  %1721 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1722 = fmul fast float %1721, 0x401921FB60000000
  %1723 = fadd fast float %1722, %1704
  %1724 = call float @dx.op.unary.f32(i32 13, float %1723)  ; Sin(value)
  %1725 = call float @dx.op.unary.f32(i32 12, float %1723)  ; Cos(value)
  %1726 = fsub fast float -0.000000e+00, %1724
  %1727 = fadd fast float %1678, -5.000000e-01
  %1728 = fadd fast float %1679, -5.000000e-01
  %1729 = fmul fast float %1696, %1727
  %1730 = fmul fast float %1698, %1728
  %1731 = fadd fast float %1729, 5.000000e-01
  %1732 = fadd fast float %1730, 5.000000e-01
  %1733 = fmul fast float %1707, %1731
  %1734 = fmul fast float %1710, %1732
  %1735 = fmul fast float %1725, %1733
  %1736 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1734, float %1735)  ; FMad(a,b,c)
  %1737 = fmul fast float %1724, %1733
  %1738 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1734, float %1737)  ; FMad(a,b,c)
  %1739 = fadd fast float %1716, %1736
  %1740 = fadd fast float %1719, %1738
  %1741 = icmp ugt i32 %1690, 1
  %1742 = icmp ugt i32 %1688, 33554431
  %1743 = or i1 %1742, %1741
  br i1 %1743, label %1744, label %1769

; <label>:1744                                    ; preds = %1671
  %1745 = add i32 %32, 260
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = lshr i32 %1747, 16
  %1749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1748)  ; LegacyF16ToF32(value)
  %1750 = fmul fast float %1712, %1749
  %1751 = call float @dx.op.unary.f32(i32 22, float %1750)  ; Frc(value)
  %1752 = mul nuw nsw i32 %1690, %1691
  %1753 = uitofp i32 %1752 to float
  %1754 = fmul fast float %1751, %1753
  %1755 = call float @dx.op.unary.f32(i32 27, float %1754)  ; Round_ni(value)
  %1756 = fptoui float %1755 to i32
  %1757 = urem i32 %1756, %1690
  %1758 = udiv i32 %1756, %1691
  %1759 = call float @dx.op.unary.f32(i32 22, float %1739)  ; Frc(value)
  %1760 = call float @dx.op.unary.f32(i32 22, float %1740)  ; Frc(value)
  %1761 = uitofp i32 %1757 to float
  %1762 = uitofp i32 %1758 to float
  %1763 = fadd fast float %1759, %1761
  %1764 = fadd fast float %1760, %1762
  %1765 = uitofp i32 %1690 to float
  %1766 = uitofp i32 %1691 to float
  %1767 = fdiv fast float %1763, %1765
  %1768 = fdiv fast float %1764, %1766
  br label %1769

; <label>:1769                                    ; preds = %1744, %1671
  %1770 = phi float [ %1767, %1744 ], [ %1739, %1671 ]
  %1771 = phi float [ %1768, %1744 ], [ %1740, %1671 ]
  %1772 = and i32 %1665, 256
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1820, label %1774

; <label>:1774                                    ; preds = %1769
  %1775 = add i32 %32, 432
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = add i32 %1777, 0
  %1779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1779, %dx.types.Handle %73, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = add i32 %32, 132
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = shl i32 %1784, 4
  %1786 = and i32 %1785, 32752
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = lshr i32 %1784, 7
  %1789 = and i32 %1788, 32752
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = fsub fast float 1.000000e+00, %437
  %1792 = call float @dx.op.binary.f32(i32 35, float %1791, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1793 = bitcast float %437 to i32
  %1794 = sitofp i32 %1793 to float
  %1795 = fadd fast float %1794, 0xC1CFBF8940000000
  %1796 = fmul fast float %1790, %1795
  %1797 = fadd fast float %1796, 0x41CFBF8940000000
  %1798 = fptosi float %1797 to i32
  %1799 = bitcast i32 %1798 to float
  %1800 = bitcast float %1792 to i32
  %1801 = sitofp i32 %1800 to float
  %1802 = fadd fast float %1801, 0xC1CFBF8940000000
  %1803 = fmul fast float %1802, %1790
  %1804 = fadd fast float %1803, 0x41CFBF8940000000
  %1805 = fptosi float %1804 to i32
  %1806 = bitcast i32 %1805 to float
  %1807 = fmul fast float %1799, %1787
  %1808 = fmul fast float %1806, %1787
  %1809 = fsub fast float %1792, %1807
  %1810 = fadd fast float %1808, %1792
  %1811 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  %1812 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1813 = fsub fast float %1781, %1811
  %1814 = fsub fast float %1812, %1811
  %1815 = bitcast float %1814 to i32
  %1816 = sub nsw i32 2129859010, %1815
  %1817 = bitcast i32 %1816 to float
  %1818 = fmul fast float %1817, %1813
  %1819 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  br label %1820

; <label>:1820                                    ; preds = %1774, %1769
  %1821 = phi float [ %1819, %1774 ], [ %437, %1769 ]
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = and i32 %1823, 128
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %1842, label %1826

; <label>:1826                                    ; preds = %1820
  %1827 = add i32 %32, 416
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = add i32 %1829, 0
  %1831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1830, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1832 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1831, %dx.types.Handle %73, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = and i32 %1835, 524288
  %1837 = icmp ne i32 %1836, 0
  %1838 = fcmp fast ogt float %1833, 0x3FE0101020000000
  %1839 = select i1 %1838, float 1.000000e+00, float 0.000000e+00
  %1840 = select i1 %1837, float %1839, float %1833
  %1841 = fmul fast float %1840, %1821
  br label %1842

; <label>:1842                                    ; preds = %1826, %1820
  %1843 = phi float [ %1841, %1826 ], [ %1821, %1820 ]
  %1844 = fcmp fast ult float %1843, 0x3F70101020000000
  br i1 %1844, label %2387, label %1845

; <label>:1845                                    ; preds = %1842
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = and i32 %1847, 16
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %2048, label %1850

; <label>:1850                                    ; preds = %1845
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = add i32 %32, 368
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = add i32 %1855, 0
  %1857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1857, %dx.types.Handle %72, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1859 = extractvalue %dx.types.ResRet.f32 %1858, 0
  %1860 = extractvalue %dx.types.ResRet.f32 %1858, 1
  %1861 = extractvalue %dx.types.ResRet.f32 %1858, 2
  %1862 = extractvalue %dx.types.ResRet.f32 %1858, 3
  %1863 = and i32 %1852, 255
  %1864 = uitofp i32 %1863 to float
  %1865 = lshr i32 %1852, 8
  %1866 = and i32 %1865, 255
  %1867 = uitofp i32 %1866 to float
  %1868 = fmul fast float %1862, %1864
  %1869 = fadd fast float %1868, %1867
  %1870 = fmul fast float %1869, 0x3F70101000000000
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = and i32 %1872, 512
  %1874 = icmp eq i32 %1873, 0
  br i1 %1874, label %1883, label %1875

; <label>:1875                                    ; preds = %1850
  %1876 = add i32 %32, 448
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = add i32 %1878, 0
  %1880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1880, %dx.types.Handle %73, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  br label %1883

; <label>:1883                                    ; preds = %1875, %1850
  %1884 = phi float [ %1882, %1875 ], [ 1.000000e+00, %1850 ]
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 33554432
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1995, label %1889

; <label>:1889                                    ; preds = %1883
  %1890 = add i32 %32, 256
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %1892, 65535
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = lshr i32 %1892, 16
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = add i32 %32, 260
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 65535
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = lshr i32 %1903, 24
  %1905 = uitofp i32 %1904 to float
  %1906 = fmul fast float %1905, 0x3F70101020000000
  %1907 = and i32 %1903, 255
  %1908 = uitofp i32 %1907 to float
  %1909 = fmul fast float %1908, 0x3F70101020000000
  %1910 = lshr i32 %1903, 8
  %1911 = and i32 %1910, 255
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1912, 0x3F70101020000000
  %1914 = lshr i32 %1903, 16
  %1915 = and i32 %1914, 255
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = add i32 %32, 252
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = lshr i32 %1920, 24
  %1922 = uitofp i32 %1921 to float
  %1923 = fmul fast float %1922, 0x3F70101020000000
  %1924 = and i32 %1920, 255
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1925, 0x3F70101020000000
  %1927 = lshr i32 %1920, 8
  %1928 = and i32 %1927, 255
  %1929 = uitofp i32 %1928 to float
  %1930 = fmul fast float %1929, 0x3F70101020000000
  %1931 = lshr i32 %1920, 16
  %1932 = and i32 %1931, 255
  %1933 = uitofp i32 %1932 to float
  %1934 = fmul fast float %1933, 0x3F70101020000000
  %1935 = bitcast float %1859 to i32
  %1936 = ashr i32 %1935, 1
  %1937 = sub nsw i32 1597463174, %1936
  %1938 = bitcast i32 %1937 to float
  %1939 = fmul fast float %1859, 5.000000e-01
  %1940 = fmul fast float %1938, %1938
  %1941 = fmul fast float %1940, %1939
  %1942 = fsub fast float 1.500000e+00, %1941
  %1943 = fmul fast float %1938, %1859
  %1944 = fmul fast float %1943, %1942
  %1945 = bitcast float %1860 to i32
  %1946 = ashr i32 %1945, 1
  %1947 = sub nsw i32 1597463174, %1946
  %1948 = bitcast i32 %1947 to float
  %1949 = fmul fast float %1860, 5.000000e-01
  %1950 = fmul fast float %1948, %1948
  %1951 = fmul fast float %1950, %1949
  %1952 = fsub fast float 1.500000e+00, %1951
  %1953 = fmul fast float %1948, %1860
  %1954 = fmul fast float %1953, %1952
  %1955 = bitcast float %1861 to i32
  %1956 = ashr i32 %1955, 1
  %1957 = sub nsw i32 1597463174, %1956
  %1958 = bitcast i32 %1957 to float
  %1959 = fmul fast float %1861, 5.000000e-01
  %1960 = fmul fast float %1958, %1958
  %1961 = fmul fast float %1960, %1959
  %1962 = fsub fast float 1.500000e+00, %1961
  %1963 = fmul fast float %1958, %1861
  %1964 = fmul fast float %1963, %1962
  %1965 = fsub fast float %1944, %1926
  %1966 = fsub fast float %1954, %1930
  %1967 = fsub fast float %1964, %1934
  %1968 = fmul fast float %1965, %1894
  %1969 = fmul fast float %1966, %1896
  %1970 = fmul fast float %1967, %1901
  %1971 = fadd fast float %1968, %1909
  %1972 = fadd fast float %1969, %1913
  %1973 = fadd fast float %1970, %1917
  %1974 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1975 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1976 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1977 = fmul fast float %1974, %1974
  %1978 = fmul fast float %1975, %1975
  %1979 = fmul fast float %1976, %1976
  %1980 = fsub fast float %1977, %1859
  %1981 = fsub fast float %1978, %1860
  %1982 = fsub fast float %1979, %1861
  %1983 = fmul fast float %1980, %1884
  %1984 = fmul fast float %1981, %1884
  %1985 = fmul fast float %1982, %1884
  %1986 = fadd fast float %1983, %1859
  %1987 = fadd fast float %1984, %1860
  %1988 = fadd fast float %1985, %1861
  %1989 = fadd fast float %1906, %1870
  %1990 = fsub fast float %1989, %1923
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fsub fast float %1991, %1870
  %1993 = fmul fast float %1992, %1884
  %1994 = fadd fast float %1993, %1870
  br label %2048

; <label>:1995                                    ; preds = %1883
  %1996 = and i32 %1886, 134217728
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2032, label %1998

; <label>:1998                                    ; preds = %1995
  %1999 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2000 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %2001 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %2002 = fadd fast float %1999, -5.000000e-01
  %2003 = fadd fast float %2000, -5.000000e-01
  %2004 = fadd fast float %2001, -5.000000e-01
  %2005 = fmul fast float %2002, %1884
  %2006 = fmul fast float %2003, %1884
  %2007 = fmul fast float %2004, %1884
  %2008 = fadd fast float %2005, 5.000000e-01
  %2009 = fadd fast float %2006, 5.000000e-01
  %2010 = fadd fast float %2007, 5.000000e-01
  %2011 = call float @dx.op.unary.f32(i32 24, float %1859)  ; Sqrt(value)
  %2012 = call float @dx.op.unary.f32(i32 24, float %1860)  ; Sqrt(value)
  %2013 = call float @dx.op.unary.f32(i32 24, float %1861)  ; Sqrt(value)
  %2014 = fmul fast float %2008, 2.000000e+00
  %2015 = fsub fast float 1.000000e+00, %2014
  %2016 = fmul fast float %2015, %2011
  %2017 = fadd fast float %2016, %2014
  %2018 = fmul fast float %2017, %2011
  %2019 = fmul fast float %2009, 2.000000e+00
  %2020 = fsub fast float 1.000000e+00, %2019
  %2021 = fmul fast float %2020, %2012
  %2022 = fadd fast float %2021, %2019
  %2023 = fmul fast float %2022, %2012
  %2024 = fmul fast float %2010, 2.000000e+00
  %2025 = fsub fast float 1.000000e+00, %2024
  %2026 = fmul fast float %2025, %2013
  %2027 = fadd fast float %2026, %2024
  %2028 = fmul fast float %2027, %2013
  %2029 = fmul fast float %2018, %2018
  %2030 = fmul fast float %2023, %2023
  %2031 = fmul fast float %2028, %2028
  br label %2048

; <label>:2032                                    ; preds = %1995
  %2033 = fmul fast float %315, %315
  %2034 = fmul fast float %319, %319
  %2035 = fmul fast float %323, %323
  %2036 = fadd fast float %2033, -1.000000e+00
  %2037 = fadd fast float %2034, -1.000000e+00
  %2038 = fadd fast float %2035, -1.000000e+00
  %2039 = fmul fast float %1884, %2036
  %2040 = fmul fast float %1884, %2037
  %2041 = fmul fast float %1884, %2038
  %2042 = fadd fast float %2039, 1.000000e+00
  %2043 = fadd fast float %2040, 1.000000e+00
  %2044 = fadd fast float %2041, 1.000000e+00
  %2045 = fmul fast float %2042, %1859
  %2046 = fmul fast float %2043, %1860
  %2047 = fmul fast float %2044, %1861
  br label %2048

; <label>:2048                                    ; preds = %2032, %1998, %1889, %1845
  %2049 = phi float [ %1994, %1889 ], [ %1870, %1998 ], [ %1870, %2032 ], [ 0x3FA23C0BE0000000, %1845 ]
  %2050 = phi float [ %1986, %1889 ], [ %2029, %1998 ], [ %2045, %2032 ], [ 1.000000e+00, %1845 ]
  %2051 = phi float [ %1987, %1889 ], [ %2030, %1998 ], [ %2046, %2032 ], [ 1.000000e+00, %1845 ]
  %2052 = phi float [ %1988, %1889 ], [ %2031, %1998 ], [ %2047, %2032 ], [ 1.000000e+00, %1845 ]
  %2053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.i32 %2053, 1
  %2055 = and i32 %2054, 1
  %2056 = icmp ne i32 %2055, 0
  %2057 = add i32 %32, 356
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = and i32 %2059, 32
  %2061 = icmp ne i32 %2060, 0
  %2062 = and i1 %2056, %2061
  %2063 = select i1 %2062, float 1.000000e+00, float %2050
  %2064 = select i1 %2062, float 0x3FD3333340000000, float %2051
  %2065 = select i1 %2062, float 0x3FD3333340000000, float %2052
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = and i32 %2067, 32
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %2142, label %2070

; <label>:2070                                    ; preds = %2048
  %2071 = add i32 %32, 124
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = add i32 %32, 384
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = add i32 %2076, 0
  %2078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2079 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2078, %dx.types.Handle %72, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.ResRet.f32 %2079, 1
  %2082 = extractvalue %dx.types.ResRet.f32 %2079, 2
  %2083 = extractvalue %dx.types.ResRet.f32 %2079, 3
  %2084 = and i32 %2073, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = lshr i32 %2073, 8
  %2087 = and i32 %2086, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = lshr i32 %2073, 16
  %2090 = and i32 %2089, 255
  %2091 = uitofp i32 %2090 to float
  %2092 = fmul fast float %2091, 0x3F70101000000000
  %2093 = fmul fast float %2080, %2085
  %2094 = fadd fast float %2093, %2088
  %2095 = fmul fast float %2094, 0x3F70101000000000
  %2096 = fadd fast float %2081, -5.000000e-01
  %2097 = fadd fast float %2083, -5.000000e-01
  %2098 = fmul fast float %2096, %2092
  %2099 = fmul fast float %2097, %2092
  %2100 = fadd fast float %2098, 5.000000e-01
  %2101 = fadd fast float %2099, 5.000000e-01
  %2102 = fmul fast float %2100, 2.000000e+00
  %2103 = fadd fast float %2102, -1.000000e+00
  %2104 = fmul fast float %2101, 2.000000e+00
  %2105 = fadd fast float %2104, -1.000000e+00
  %2106 = fadd fast float %2103, %2105
  %2107 = fmul fast float %2106, 5.000000e-01
  %2108 = fsub fast float %2103, %2105
  %2109 = fmul fast float %2108, 5.000000e-01
  %2110 = call float @dx.op.unary.f32(i32 6, float %2107)  ; FAbs(value)
  %2111 = fsub fast float 1.000000e+00, %2110
  %2112 = call float @dx.op.unary.f32(i32 6, float %2109)  ; FAbs(value)
  %2113 = fsub fast float %2111, %2112
  %2114 = call float @dx.op.dot3.f32(i32 55, float %2107, float %2109, float %2113, float %2107, float %2109, float %2113)  ; Dot3(ax,ay,az,bx,by,bz)
  %2115 = call float @dx.op.unary.f32(i32 25, float %2114)  ; Rsqrt(value)
  %2116 = fmul fast float %2107, %2115
  %2117 = fmul fast float %2109, %2115
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = and i32 %2119, 67108864
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2138, label %2122

; <label>:2122                                    ; preds = %2070
  %2123 = add i32 %32, 312
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = and i32 %2125, 65535
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = and i32 %2129, 65535
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = lshr i32 %2125, 16
  %2133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2132)  ; LegacyF16ToF32(value)
  %2134 = fsub fast float %2095, %2133
  %2135 = fmul fast float %2134, %2127
  %2136 = fadd fast float %2135, %2131
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  br label %2138

; <label>:2138                                    ; preds = %2122, %2070
  %2139 = phi float [ %2137, %2122 ], [ %2095, %2070 ]
  %2140 = call float @dx.op.dot2.f32(i32 54, float %2116, float %2117, float %1674, float %1675)  ; Dot2(ax,ay,bx,by)
  %2141 = call float @dx.op.dot2.f32(i32 54, float %2116, float %2117, float %1676, float %1677)  ; Dot2(ax,ay,bx,by)
  br label %2142

; <label>:2142                                    ; preds = %2138, %2048
  %2143 = phi float [ %2139, %2138 ], [ 0x3FD6666660000000, %2048 ]
  %2144 = phi float [ %2140, %2138 ], [ 0.000000e+00, %2048 ]
  %2145 = phi float [ %2141, %2138 ], [ 0.000000e+00, %2048 ]
  %2146 = phi float [ %2082, %2138 ], [ 1.000000e+00, %2048 ]
  %2147 = add i32 %32, 192
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = lshr i32 %2149, 22
  %2151 = shl nuw nsw i32 %2150, 5
  %2152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2151)  ; LegacyF16ToF32(value)
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 64
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2190, label %2157

; <label>:2157                                    ; preds = %2142
  %2158 = add i32 %32, 400
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = add i32 %2160, 0
  %2162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = and i32 %2164, 131072
  %2166 = icmp eq i32 %2165, 0
  %2167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2162, %dx.types.Handle %72, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.ResRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.ResRet.f32 %2167, 2
  %2171 = fmul fast float %2168, %303
  %2172 = fmul fast float %2169, %306
  %2173 = fmul fast float %2170, %309
  br i1 %2166, label %2180, label %2174

; <label>:2174                                    ; preds = %2157
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 0
  %2177 = fmul fast float %2176, %2171
  %2178 = fmul fast float %2176, %2172
  %2179 = fmul fast float %2176, %2173
  br label %2180

; <label>:2180                                    ; preds = %2174, %2157
  %2181 = phi float [ %2177, %2174 ], [ %2171, %2157 ]
  %2182 = phi float [ %2178, %2174 ], [ %2172, %2157 ]
  %2183 = phi float [ %2179, %2174 ], [ %2173, %2157 ]
  %2184 = fmul fast float %2181, %2152
  %2185 = select i1 %202, float %2184, float %2181
  %2186 = call float @dx.op.dot3.f32(i32 55, float %2185, float %2182, float %2183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2187 = select i1 %202, float 0.000000e+00, float %2181
  %2188 = select i1 %202, float %2186, float %2182
  %2189 = select i1 %202, float 0.000000e+00, float %2183
  br label %2190

; <label>:2190                                    ; preds = %2180, %2142
  %2191 = phi float [ %2187, %2180 ], [ 0.000000e+00, %2142 ]
  %2192 = phi float [ %2188, %2180 ], [ 0.000000e+00, %2142 ]
  %2193 = phi float [ %2189, %2180 ], [ 0.000000e+00, %2142 ]
  %2194 = add i32 %32, 128
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = and i32 %2196, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = lshr i32 %2196, 8
  %2200 = and i32 %2199, 255
  %2201 = uitofp i32 %2200 to float
  %2202 = call float @dx.op.dot3.f32(i32 55, float %2063, float %2064, float %2065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2203 = fmul fast float %2201, %2202
  %2204 = fadd fast float %2203, %2198
  %2205 = fmul fast float %2204, 0x3F70101020000000
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  br i1 %1662, label %2207, label %2215

; <label>:2207                                    ; preds = %2190
  %2208 = fsub fast float 1.000000e+00, %1843
  %2209 = fmul fast float %2208, %1651
  %2210 = fmul fast float %2208, %1652
  %2211 = fmul fast float %2208, %1653
  %2212 = fmul fast float %2208, %1654
  %2213 = fmul fast float %2208, %1655
  %2214 = fmul fast float %2208, %1656
  br label %2215

; <label>:2215                                    ; preds = %2207, %2190
  %2216 = phi float [ %2209, %2207 ], [ %1651, %2190 ]
  %2217 = phi float [ %2210, %2207 ], [ %1652, %2190 ]
  %2218 = phi float [ %2211, %2207 ], [ %1653, %2190 ]
  %2219 = phi float [ %2212, %2207 ], [ %1654, %2190 ]
  %2220 = phi float [ %2213, %2207 ], [ %1655, %2190 ]
  %2221 = phi float [ %2214, %2207 ], [ %1656, %2190 ]
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = and i32 %2223, 3
  %2225 = icmp eq i32 %2224, 3
  br i1 %2225, label %2304, label %2226

; <label>:2226                                    ; preds = %2215
  %2227 = and i32 %2223, 16
  %2228 = icmp ne i32 %2227, 0
  %2229 = select i1 %2228, float %1843, float 0.000000e+00
  %2230 = icmp eq i32 %2224, 0
  br i1 %2230, label %2231, label %2259

; <label>:2231                                    ; preds = %2226
  %2232 = and i32 %2223, 64
  %2233 = icmp ne i32 %2232, 0
  %2234 = select i1 %2233, float %1843, float 0.000000e+00
  %2235 = fsub fast float %2063, %2216
  %2236 = fsub fast float %2064, %2217
  %2237 = fsub fast float %2065, %2218
  %2238 = fmul fast float %2229, %2235
  %2239 = fmul fast float %2229, %2236
  %2240 = fmul fast float %2229, %2237
  %2241 = fadd fast float %2238, %2216
  %2242 = fadd fast float %2239, %2217
  %2243 = fadd fast float %2240, %2218
  %2244 = fsub fast float %2049, %1657
  %2245 = fmul fast float %2229, %2244
  %2246 = fadd fast float %2245, %1657
  %2247 = fsub fast float %2191, %2219
  %2248 = fsub fast float %2192, %2220
  %2249 = fsub fast float %2193, %2221
  %2250 = fmul fast float %2234, %2247
  %2251 = fmul fast float %2234, %2248
  %2252 = fmul fast float %2234, %2249
  %2253 = fadd fast float %2250, %2219
  %2254 = fadd fast float %2251, %2220
  %2255 = fadd fast float %2252, %2221
  %2256 = fsub fast float %2206, %1660
  %2257 = fmul fast float %2229, %2256
  %2258 = fadd fast float %2257, %1660
  br label %2304

; <label>:2259                                    ; preds = %2226
  %2260 = icmp eq i32 %2224, 1
  br i1 %2260, label %2261, label %2274

; <label>:2261                                    ; preds = %2259
  %2262 = fadd fast float %2063, -1.000000e+00
  %2263 = fadd fast float %2064, -1.000000e+00
  %2264 = fadd fast float %2065, -1.000000e+00
  %2265 = fmul fast float %2229, %2262
  %2266 = fmul fast float %2229, %2263
  %2267 = fmul fast float %2229, %2264
  %2268 = fadd fast float %2265, 1.000000e+00
  %2269 = fadd fast float %2266, 1.000000e+00
  %2270 = fadd fast float %2267, 1.000000e+00
  %2271 = fmul fast float %2268, %2216
  %2272 = fmul fast float %2269, %2217
  %2273 = fmul fast float %2270, %2218
  br label %2304

; <label>:2274                                    ; preds = %2259
  %2275 = icmp eq i32 %2224, 2
  br i1 %2275, label %2276, label %2304

; <label>:2276                                    ; preds = %2274
  %2277 = call float @dx.op.unary.f32(i32 24, float %2063)  ; Sqrt(value)
  %2278 = call float @dx.op.unary.f32(i32 24, float %2064)  ; Sqrt(value)
  %2279 = call float @dx.op.unary.f32(i32 24, float %2065)  ; Sqrt(value)
  %2280 = fadd fast float %2277, -5.000000e-01
  %2281 = fadd fast float %2278, -5.000000e-01
  %2282 = fadd fast float %2279, -5.000000e-01
  %2283 = fmul fast float %2280, %2229
  %2284 = fmul fast float %2281, %2229
  %2285 = fmul fast float %2282, %2229
  %2286 = fadd fast float %2283, 5.000000e-01
  %2287 = fadd fast float %2284, 5.000000e-01
  %2288 = fadd fast float %2285, 5.000000e-01
  %2289 = fmul fast float %2286, 2.000000e+00
  %2290 = fsub fast float 1.000000e+00, %2289
  %2291 = fmul fast float %2290, %2216
  %2292 = fadd fast float %2291, %2289
  %2293 = fmul fast float %2292, %2216
  %2294 = fmul fast float %2287, 2.000000e+00
  %2295 = fsub fast float 1.000000e+00, %2294
  %2296 = fmul fast float %2295, %2217
  %2297 = fadd fast float %2296, %2294
  %2298 = fmul fast float %2297, %2217
  %2299 = fmul fast float %2288, 2.000000e+00
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = fmul fast float %2300, %2218
  %2302 = fadd fast float %2301, %2299
  %2303 = fmul fast float %2302, %2218
  br label %2304

; <label>:2304                                    ; preds = %2276, %2274, %2261, %2231, %2215
  %2305 = phi float [ %2216, %2215 ], [ %2293, %2276 ], [ %2216, %2274 ], [ %2271, %2261 ], [ %2241, %2231 ]
  %2306 = phi float [ %2217, %2215 ], [ %2298, %2276 ], [ %2217, %2274 ], [ %2272, %2261 ], [ %2242, %2231 ]
  %2307 = phi float [ %2218, %2215 ], [ %2303, %2276 ], [ %2218, %2274 ], [ %2273, %2261 ], [ %2243, %2231 ]
  %2308 = phi float [ %2219, %2215 ], [ %2219, %2276 ], [ %2219, %2274 ], [ %2219, %2261 ], [ %2253, %2231 ]
  %2309 = phi float [ %2220, %2215 ], [ %2220, %2276 ], [ %2220, %2274 ], [ %2220, %2261 ], [ %2254, %2231 ]
  %2310 = phi float [ %2221, %2215 ], [ %2221, %2276 ], [ %2221, %2274 ], [ %2221, %2261 ], [ %2255, %2231 ]
  %2311 = phi float [ %1657, %2215 ], [ %1657, %2276 ], [ %1657, %2274 ], [ %1657, %2261 ], [ %2246, %2231 ]
  %2312 = phi float [ %1660, %2215 ], [ %1660, %2276 ], [ %1660, %2274 ], [ %1660, %2261 ], [ %2258, %2231 ]
  %2313 = and i32 %2223, 12
  %2314 = icmp eq i32 %2313, 12
  br i1 %2314, label %2387, label %2315

; <label>:2315                                    ; preds = %2304
  %2316 = and i32 %2223, 2097184
  %2317 = icmp eq i32 %2316, 2097184
  %2318 = select i1 %2317, float %1843, float 0.000000e+00
  %2319 = and i32 %2223, 4194336
  %2320 = icmp eq i32 %2319, 4194336
  %2321 = select i1 %2320, float %1843, float 0.000000e+00
  %2322 = and i32 %2223, 8388640
  %2323 = icmp eq i32 %2322, 8388640
  %2324 = select i1 %2323, float %1843, float 0.000000e+00
  %2325 = icmp eq i32 %2313, 0
  br i1 %2325, label %2326, label %2339

; <label>:2326                                    ; preds = %2315
  %2327 = fsub fast float %2144, %1649
  %2328 = fsub fast float %2145, %1650
  %2329 = fmul fast float %2318, %2327
  %2330 = fmul fast float %2318, %2328
  %2331 = fadd fast float %2329, %1649
  %2332 = fadd fast float %2330, %1650
  %2333 = fsub fast float %2146, %1659
  %2334 = fmul fast float %2321, %2333
  %2335 = fadd fast float %2334, %1659
  %2336 = fsub fast float %2143, %1658
  %2337 = fmul fast float %2324, %2336
  %2338 = fadd fast float %2337, %1658
  br label %2387

; <label>:2339                                    ; preds = %2315
  %2340 = icmp eq i32 %2313, 4
  br i1 %2340, label %2341, label %2373

; <label>:2341                                    ; preds = %2339
  %2342 = fmul fast float %2318, %2144
  %2343 = fmul fast float %2318, %2145
  %2344 = fadd fast float %2342, %1649
  %2345 = fadd fast float %2343, %1650
  %2346 = call float @dx.op.binary.f32(i32 36, float %1659, float %2146)  ; FMin(a,b)
  %2347 = fsub fast float %2346, %1659
  %2348 = fmul fast float %2347, %2321
  %2349 = fadd fast float %2348, %1659
  %2350 = fadd fast float %2143, %1658
  %2351 = fmul fast float %2350, 0x3FF337FAE0000000
  %2352 = fmul fast float %1658, %1658
  %2353 = fmul fast float %2143, %2143
  %2354 = fadd fast float %2353, %2352
  %2355 = fmul fast float %2354, 0x3FE5152B00000000
  %2356 = fmul fast float %1658, 0xBFCC1F85E0000000
  %2357 = fmul fast float %2356, %2143
  %2358 = fadd fast float %2357, 0xBFE1363700000000
  %2359 = fadd fast float %2358, %2351
  %2360 = fsub fast float %2359, %2355
  %2361 = fmul fast float %2350, 0x3FBA6F0D00000000
  %2362 = fmul fast float %2354, 0x3FD0432880000000
  %2363 = fmul fast float %1658, 0xBFEF110800000000
  %2364 = fmul fast float %2363, %2143
  %2365 = fadd fast float %2364, 1.000000e+00
  %2366 = fsub fast float %2365, %2361
  %2367 = fadd fast float %2366, %2362
  %2368 = fdiv fast float %2360, %2367
  %2369 = call float @dx.op.unary.f32(i32 7, float %2368)  ; Saturate(value)
  %2370 = fsub fast float %2369, %1658
  %2371 = fmul fast float %2370, %2324
  %2372 = fadd fast float %2371, %1658
  br label %2387

; <label>:2373                                    ; preds = %2339
  %2374 = icmp eq i32 %2313, 8
  br i1 %2374, label %2375, label %2387

; <label>:2375                                    ; preds = %2373
  %2376 = fmul fast float %2318, %2144
  %2377 = fmul fast float %2318, %2145
  %2378 = fadd fast float %2376, %1649
  %2379 = fadd fast float %2377, %1650
  %2380 = call float @dx.op.binary.f32(i32 36, float %1659, float %2146)  ; FMin(a,b)
  %2381 = fsub fast float %2380, %1659
  %2382 = fmul fast float %2381, %2321
  %2383 = fadd fast float %2382, %1659
  %2384 = fsub fast float %2143, %1658
  %2385 = fmul fast float %2324, %2384
  %2386 = fadd fast float %2385, %1658
  br label %2387

; <label>:2387                                    ; preds = %2375, %2373, %2341, %2326, %2304, %1842, %1661, %1648
  %2388 = phi float [ %1649, %2304 ], [ %1649, %1842 ], [ %1649, %1648 ], [ %2378, %2375 ], [ %1649, %2373 ], [ %2344, %2341 ], [ %2331, %2326 ], [ %1649, %1661 ]
  %2389 = phi float [ %1650, %2304 ], [ %1650, %1842 ], [ %1650, %1648 ], [ %2379, %2375 ], [ %1650, %2373 ], [ %2345, %2341 ], [ %2332, %2326 ], [ %1650, %1661 ]
  %2390 = phi float [ %2305, %2304 ], [ %1651, %1842 ], [ %1651, %1648 ], [ %2305, %2375 ], [ %2305, %2373 ], [ %2305, %2341 ], [ %2305, %2326 ], [ %1651, %1661 ]
  %2391 = phi float [ %2306, %2304 ], [ %1652, %1842 ], [ %1652, %1648 ], [ %2306, %2375 ], [ %2306, %2373 ], [ %2306, %2341 ], [ %2306, %2326 ], [ %1652, %1661 ]
  %2392 = phi float [ %2307, %2304 ], [ %1653, %1842 ], [ %1653, %1648 ], [ %2307, %2375 ], [ %2307, %2373 ], [ %2307, %2341 ], [ %2307, %2326 ], [ %1653, %1661 ]
  %2393 = phi float [ %2308, %2304 ], [ %1654, %1842 ], [ %1654, %1648 ], [ %2308, %2375 ], [ %2308, %2373 ], [ %2308, %2341 ], [ %2308, %2326 ], [ %1654, %1661 ]
  %2394 = phi float [ %2309, %2304 ], [ %1655, %1842 ], [ %1655, %1648 ], [ %2309, %2375 ], [ %2309, %2373 ], [ %2309, %2341 ], [ %2309, %2326 ], [ %1655, %1661 ]
  %2395 = phi float [ %2310, %2304 ], [ %1656, %1842 ], [ %1656, %1648 ], [ %2310, %2375 ], [ %2310, %2373 ], [ %2310, %2341 ], [ %2310, %2326 ], [ %1656, %1661 ]
  %2396 = phi float [ %2311, %2304 ], [ %1657, %1842 ], [ %1657, %1648 ], [ %2311, %2375 ], [ %2311, %2373 ], [ %2311, %2341 ], [ %2311, %2326 ], [ %1657, %1661 ]
  %2397 = phi float [ %1658, %2304 ], [ %1658, %1842 ], [ %1658, %1648 ], [ %2386, %2375 ], [ %1658, %2373 ], [ %2372, %2341 ], [ %2338, %2326 ], [ %1658, %1661 ]
  %2398 = phi float [ %1659, %2304 ], [ %1659, %1842 ], [ %1659, %1648 ], [ %2383, %2375 ], [ %1659, %2373 ], [ %2349, %2341 ], [ %2335, %2326 ], [ %1659, %1661 ]
  %2399 = phi float [ %2312, %2304 ], [ %1660, %1842 ], [ %1660, %1648 ], [ %2312, %2375 ], [ %2312, %2373 ], [ %2312, %2341 ], [ %2312, %2326 ], [ %1660, %1661 ]
  br i1 %390, label %3126, label %2400

; <label>:2400                                    ; preds = %2387
  %2401 = icmp ult i32 %441, 4
  %2402 = add i32 %32, 72
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = add i32 %32, 76
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = or i32 %2407, %2404
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %3126, label %2410

; <label>:2410                                    ; preds = %2400
  %2411 = and i32 %2404, 262144
  %2412 = icmp ne i32 %2411, 0
  %2413 = select i1 %2412, float %37, float 1.000000e+00
  %2414 = select i1 %2412, float %38, float 0.000000e+00
  %2415 = select i1 %2412, float %39, float 0.000000e+00
  %2416 = select i1 %2412, float %40, float 1.000000e+00
  %2417 = select i1 %2412, float %41, float %64
  %2418 = select i1 %2412, float %42, float %65
  %2419 = add i32 %32, 332
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = lshr i32 %2421, 16
  %2423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2422)  ; LegacyF16ToF32(value)
  %2424 = fmul fast float %2423, 0x3F50624DE0000000
  %2425 = add i32 %32, 136
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = lshr i32 %2427, 16
  %2429 = and i32 %2428, 255
  %2430 = lshr i32 %2427, 24
  %2431 = add i32 %32, 340
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, 65535
  %2435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2434)  ; LegacyF16ToF32(value)
  %2436 = lshr i32 %2433, 16
  %2437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2436)  ; LegacyF16ToF32(value)
  %2438 = add i32 %32, 80
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = lshr i32 %2440, 22
  %2442 = shl nuw nsw i32 %2441, 5
  %2443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2442)  ; LegacyF16ToF32(value)
  %2444 = shl i32 %2440, 4
  %2445 = and i32 %2444, 32752
  %2446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2445)  ; LegacyF16ToF32(value)
  %2447 = lshr i32 %2440, 7
  %2448 = and i32 %2447, 32752
  %2449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2448)  ; LegacyF16ToF32(value)
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 3
  %2452 = fmul fast float %2451, 1.000000e+03
  %2453 = fmul fast float %380, %2452
  %2454 = call float @dx.op.unary.f32(i32 22, float %2453)  ; Frc(value)
  %2455 = fadd fast float %2454, %370
  %2456 = fmul fast float %381, %2452
  %2457 = call float @dx.op.unary.f32(i32 22, float %2456)  ; Frc(value)
  %2458 = fadd fast float %2457, %372
  %2459 = fmul fast float %2424, %2452
  %2460 = call float @dx.op.unary.f32(i32 22, float %2459)  ; Frc(value)
  %2461 = fmul fast float %2460, 0x401921FB60000000
  %2462 = fadd fast float %2461, %2443
  %2463 = call float @dx.op.unary.f32(i32 13, float %2462)  ; Sin(value)
  %2464 = call float @dx.op.unary.f32(i32 12, float %2462)  ; Cos(value)
  %2465 = fsub fast float -0.000000e+00, %2463
  %2466 = fadd fast float %2417, -5.000000e-01
  %2467 = fadd fast float %2418, -5.000000e-01
  %2468 = fmul fast float %2435, %2466
  %2469 = fmul fast float %2437, %2467
  %2470 = fadd fast float %2468, 5.000000e-01
  %2471 = fadd fast float %2469, 5.000000e-01
  %2472 = fmul fast float %2446, %2470
  %2473 = fmul fast float %2449, %2471
  %2474 = fmul fast float %2464, %2472
  %2475 = call float @dx.op.tertiary.f32(i32 46, float %2465, float %2473, float %2474)  ; FMad(a,b,c)
  %2476 = fmul fast float %2463, %2472
  %2477 = call float @dx.op.tertiary.f32(i32 46, float %2464, float %2473, float %2476)  ; FMad(a,b,c)
  %2478 = fadd fast float %2455, %2475
  %2479 = fadd fast float %2458, %2477
  %2480 = icmp ugt i32 %2429, 1
  %2481 = icmp ugt i32 %2427, 33554431
  %2482 = or i1 %2481, %2480
  br i1 %2482, label %2483, label %2508

; <label>:2483                                    ; preds = %2410
  %2484 = add i32 %32, 276
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = lshr i32 %2486, 16
  %2488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2487)  ; LegacyF16ToF32(value)
  %2489 = fmul fast float %2451, %2488
  %2490 = call float @dx.op.unary.f32(i32 22, float %2489)  ; Frc(value)
  %2491 = mul nuw nsw i32 %2429, %2430
  %2492 = uitofp i32 %2491 to float
  %2493 = fmul fast float %2490, %2492
  %2494 = call float @dx.op.unary.f32(i32 27, float %2493)  ; Round_ni(value)
  %2495 = fptoui float %2494 to i32
  %2496 = urem i32 %2495, %2429
  %2497 = udiv i32 %2495, %2430
  %2498 = call float @dx.op.unary.f32(i32 22, float %2478)  ; Frc(value)
  %2499 = call float @dx.op.unary.f32(i32 22, float %2479)  ; Frc(value)
  %2500 = uitofp i32 %2496 to float
  %2501 = uitofp i32 %2497 to float
  %2502 = fadd fast float %2498, %2500
  %2503 = fadd fast float %2499, %2501
  %2504 = uitofp i32 %2429 to float
  %2505 = uitofp i32 %2430 to float
  %2506 = fdiv fast float %2502, %2504
  %2507 = fdiv fast float %2503, %2505
  br label %2508

; <label>:2508                                    ; preds = %2483, %2410
  %2509 = phi float [ %2506, %2483 ], [ %2478, %2410 ]
  %2510 = phi float [ %2507, %2483 ], [ %2479, %2410 ]
  %2511 = and i32 %2404, 256
  %2512 = icmp eq i32 %2511, 0
  br i1 %2512, label %2559, label %2513

; <label>:2513                                    ; preds = %2508
  %2514 = add i32 %32, 436
  %2515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2514, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.i32 %2515, 0
  %2517 = add i32 %2516, 0
  %2518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2518, %dx.types.Handle %73, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2520 = extractvalue %dx.types.ResRet.f32 %2519, 0
  %2521 = add i32 %32, 148
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = shl i32 %2523, 4
  %2525 = and i32 %2524, 32752
  %2526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2525)  ; LegacyF16ToF32(value)
  %2527 = lshr i32 %2523, 7
  %2528 = and i32 %2527, 32752
  %2529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2528)  ; LegacyF16ToF32(value)
  %2530 = fsub fast float 1.000000e+00, %436
  %2531 = call float @dx.op.binary.f32(i32 35, float %2530, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2532 = bitcast float %436 to i32
  %2533 = sitofp i32 %2532 to float
  %2534 = fadd fast float %2533, 0xC1CFBF8940000000
  %2535 = fmul fast float %2529, %2534
  %2536 = fadd fast float %2535, 0x41CFBF8940000000
  %2537 = fptosi float %2536 to i32
  %2538 = bitcast i32 %2537 to float
  %2539 = bitcast float %2531 to i32
  %2540 = sitofp i32 %2539 to float
  %2541 = fadd fast float %2540, 0xC1CFBF8940000000
  %2542 = fmul fast float %2541, %2529
  %2543 = fadd fast float %2542, 0x41CFBF8940000000
  %2544 = fptosi float %2543 to i32
  %2545 = bitcast i32 %2544 to float
  %2546 = fmul fast float %2538, %2526
  %2547 = fmul fast float %2545, %2526
  %2548 = fsub fast float %2531, %2546
  %2549 = fadd fast float %2547, %2531
  %2550 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  %2551 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2552 = fsub fast float %2520, %2550
  %2553 = fsub fast float %2551, %2550
  %2554 = bitcast float %2553 to i32
  %2555 = sub nsw i32 2129859010, %2554
  %2556 = bitcast i32 %2555 to float
  %2557 = fmul fast float %2556, %2552
  %2558 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  br label %2559

; <label>:2559                                    ; preds = %2513, %2508
  %2560 = phi float [ %2558, %2513 ], [ %436, %2508 ]
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = and i32 %2562, 128
  %2564 = icmp eq i32 %2563, 0
  br i1 %2564, label %2581, label %2565

; <label>:2565                                    ; preds = %2559
  %2566 = add i32 %32, 420
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = add i32 %2568, 0
  %2570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2570, %dx.types.Handle %73, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 524288
  %2576 = icmp ne i32 %2575, 0
  %2577 = fcmp fast ogt float %2572, 0x3FE0101020000000
  %2578 = select i1 %2577, float 1.000000e+00, float 0.000000e+00
  %2579 = select i1 %2576, float %2578, float %2572
  %2580 = fmul fast float %2579, %2560
  br label %2581

; <label>:2581                                    ; preds = %2565, %2559
  %2582 = phi float [ %2580, %2565 ], [ %2560, %2559 ]
  %2583 = fcmp fast ult float %2582, 0x3F70101020000000
  br i1 %2583, label %3126, label %2584

; <label>:2584                                    ; preds = %2581
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, 16
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2787, label %2589

; <label>:2589                                    ; preds = %2584
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = add i32 %32, 372
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = add i32 %2594, 0
  %2596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2596, %dx.types.Handle %72, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2598 = extractvalue %dx.types.ResRet.f32 %2597, 0
  %2599 = extractvalue %dx.types.ResRet.f32 %2597, 1
  %2600 = extractvalue %dx.types.ResRet.f32 %2597, 2
  %2601 = extractvalue %dx.types.ResRet.f32 %2597, 3
  %2602 = and i32 %2591, 255
  %2603 = uitofp i32 %2602 to float
  %2604 = lshr i32 %2591, 8
  %2605 = and i32 %2604, 255
  %2606 = uitofp i32 %2605 to float
  %2607 = fmul fast float %2601, %2603
  %2608 = fadd fast float %2607, %2606
  %2609 = fmul fast float %2608, 0x3F70101000000000
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 512
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2622, label %2614

; <label>:2614                                    ; preds = %2589
  %2615 = add i32 %32, 452
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = add i32 %2617, 0
  %2619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2619, %dx.types.Handle %73, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2621 = extractvalue %dx.types.ResRet.f32 %2620, 0
  br label %2622

; <label>:2622                                    ; preds = %2614, %2589
  %2623 = phi float [ %2621, %2614 ], [ 1.000000e+00, %2589 ]
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 33554432
  %2627 = icmp eq i32 %2626, 0
  br i1 %2627, label %2734, label %2628

; <label>:2628                                    ; preds = %2622
  %2629 = add i32 %32, 272
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 65535
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = lshr i32 %2631, 16
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = add i32 %32, 276
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 65535
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = lshr i32 %2642, 24
  %2644 = uitofp i32 %2643 to float
  %2645 = fmul fast float %2644, 0x3F70101020000000
  %2646 = and i32 %2642, 255
  %2647 = uitofp i32 %2646 to float
  %2648 = fmul fast float %2647, 0x3F70101020000000
  %2649 = lshr i32 %2642, 8
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = fmul fast float %2651, 0x3F70101020000000
  %2653 = lshr i32 %2642, 16
  %2654 = and i32 %2653, 255
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2655, 0x3F70101020000000
  %2657 = add i32 %32, 268
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = lshr i32 %2659, 24
  %2661 = uitofp i32 %2660 to float
  %2662 = fmul fast float %2661, 0x3F70101020000000
  %2663 = and i32 %2659, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = lshr i32 %2659, 8
  %2667 = and i32 %2666, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = lshr i32 %2659, 16
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101020000000
  %2674 = bitcast float %2598 to i32
  %2675 = ashr i32 %2674, 1
  %2676 = sub nsw i32 1597463174, %2675
  %2677 = bitcast i32 %2676 to float
  %2678 = fmul fast float %2598, 5.000000e-01
  %2679 = fmul fast float %2677, %2677
  %2680 = fmul fast float %2679, %2678
  %2681 = fsub fast float 1.500000e+00, %2680
  %2682 = fmul fast float %2677, %2598
  %2683 = fmul fast float %2682, %2681
  %2684 = bitcast float %2599 to i32
  %2685 = ashr i32 %2684, 1
  %2686 = sub nsw i32 1597463174, %2685
  %2687 = bitcast i32 %2686 to float
  %2688 = fmul fast float %2599, 5.000000e-01
  %2689 = fmul fast float %2687, %2687
  %2690 = fmul fast float %2689, %2688
  %2691 = fsub fast float 1.500000e+00, %2690
  %2692 = fmul fast float %2687, %2599
  %2693 = fmul fast float %2692, %2691
  %2694 = bitcast float %2600 to i32
  %2695 = ashr i32 %2694, 1
  %2696 = sub nsw i32 1597463174, %2695
  %2697 = bitcast i32 %2696 to float
  %2698 = fmul fast float %2600, 5.000000e-01
  %2699 = fmul fast float %2697, %2697
  %2700 = fmul fast float %2699, %2698
  %2701 = fsub fast float 1.500000e+00, %2700
  %2702 = fmul fast float %2697, %2600
  %2703 = fmul fast float %2702, %2701
  %2704 = fsub fast float %2683, %2665
  %2705 = fsub fast float %2693, %2669
  %2706 = fsub fast float %2703, %2673
  %2707 = fmul fast float %2704, %2633
  %2708 = fmul fast float %2705, %2635
  %2709 = fmul fast float %2706, %2640
  %2710 = fadd fast float %2707, %2648
  %2711 = fadd fast float %2708, %2652
  %2712 = fadd fast float %2709, %2656
  %2713 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2714 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2715 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2716 = fmul fast float %2713, %2713
  %2717 = fmul fast float %2714, %2714
  %2718 = fmul fast float %2715, %2715
  %2719 = fsub fast float %2716, %2598
  %2720 = fsub fast float %2717, %2599
  %2721 = fsub fast float %2718, %2600
  %2722 = fmul fast float %2719, %2623
  %2723 = fmul fast float %2720, %2623
  %2724 = fmul fast float %2721, %2623
  %2725 = fadd fast float %2722, %2598
  %2726 = fadd fast float %2723, %2599
  %2727 = fadd fast float %2724, %2600
  %2728 = fadd fast float %2645, %2609
  %2729 = fsub fast float %2728, %2662
  %2730 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2731 = fsub fast float %2730, %2609
  %2732 = fmul fast float %2731, %2623
  %2733 = fadd fast float %2732, %2609
  br label %2787

; <label>:2734                                    ; preds = %2622
  %2735 = and i32 %2625, 134217728
  %2736 = icmp eq i32 %2735, 0
  br i1 %2736, label %2771, label %2737

; <label>:2737                                    ; preds = %2734
  %2738 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %2739 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %2740 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2741 = fadd fast float %2738, -5.000000e-01
  %2742 = fadd fast float %2739, -5.000000e-01
  %2743 = fadd fast float %2740, -5.000000e-01
  %2744 = fmul fast float %2741, %2623
  %2745 = fmul fast float %2742, %2623
  %2746 = fmul fast float %2743, %2623
  %2747 = fadd fast float %2744, 5.000000e-01
  %2748 = fadd fast float %2745, 5.000000e-01
  %2749 = fadd fast float %2746, 5.000000e-01
  %2750 = call float @dx.op.unary.f32(i32 24, float %2598)  ; Sqrt(value)
  %2751 = call float @dx.op.unary.f32(i32 24, float %2599)  ; Sqrt(value)
  %2752 = call float @dx.op.unary.f32(i32 24, float %2600)  ; Sqrt(value)
  %2753 = fmul fast float %2747, 2.000000e+00
  %2754 = fsub fast float 1.000000e+00, %2753
  %2755 = fmul fast float %2754, %2750
  %2756 = fadd fast float %2755, %2753
  %2757 = fmul fast float %2756, %2750
  %2758 = fmul fast float %2748, 2.000000e+00
  %2759 = fsub fast float 1.000000e+00, %2758
  %2760 = fmul fast float %2759, %2751
  %2761 = fadd fast float %2760, %2758
  %2762 = fmul fast float %2761, %2751
  %2763 = fmul fast float %2749, 2.000000e+00
  %2764 = fsub fast float 1.000000e+00, %2763
  %2765 = fmul fast float %2764, %2752
  %2766 = fadd fast float %2765, %2763
  %2767 = fmul fast float %2766, %2752
  %2768 = fmul fast float %2757, %2757
  %2769 = fmul fast float %2762, %2762
  %2770 = fmul fast float %2767, %2767
  br label %2787

; <label>:2771                                    ; preds = %2734
  %2772 = fmul fast float %357, %357
  %2773 = fmul fast float %361, %361
  %2774 = fmul fast float %365, %365
  %2775 = fadd fast float %2772, -1.000000e+00
  %2776 = fadd fast float %2773, -1.000000e+00
  %2777 = fadd fast float %2774, -1.000000e+00
  %2778 = fmul fast float %2623, %2775
  %2779 = fmul fast float %2623, %2776
  %2780 = fmul fast float %2623, %2777
  %2781 = fadd fast float %2778, 1.000000e+00
  %2782 = fadd fast float %2779, 1.000000e+00
  %2783 = fadd fast float %2780, 1.000000e+00
  %2784 = fmul fast float %2781, %2598
  %2785 = fmul fast float %2782, %2599
  %2786 = fmul fast float %2783, %2600
  br label %2787

; <label>:2787                                    ; preds = %2771, %2737, %2628, %2584
  %2788 = phi float [ %2733, %2628 ], [ %2609, %2737 ], [ %2609, %2771 ], [ 0x3FA23C0BE0000000, %2584 ]
  %2789 = phi float [ %2725, %2628 ], [ %2768, %2737 ], [ %2784, %2771 ], [ 1.000000e+00, %2584 ]
  %2790 = phi float [ %2726, %2628 ], [ %2769, %2737 ], [ %2785, %2771 ], [ 1.000000e+00, %2584 ]
  %2791 = phi float [ %2727, %2628 ], [ %2770, %2737 ], [ %2786, %2771 ], [ 1.000000e+00, %2584 ]
  %2792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.i32 %2792, 1
  %2794 = and i32 %2793, 1
  %2795 = icmp ne i32 %2794, 0
  %2796 = add i32 %32, 356
  %2797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2796, i32 undef)  ; BufferLoad(srv,index,wot)
  %2798 = extractvalue %dx.types.ResRet.i32 %2797, 0
  %2799 = and i32 %2798, 32
  %2800 = icmp ne i32 %2799, 0
  %2801 = and i1 %2795, %2800
  %2802 = select i1 %2801, float 1.000000e+00, float %2789
  %2803 = select i1 %2801, float 0x3FD3333340000000, float %2790
  %2804 = select i1 %2801, float 0x3FD3333340000000, float %2791
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = and i32 %2806, 32
  %2808 = icmp eq i32 %2807, 0
  br i1 %2808, label %2881, label %2809

; <label>:2809                                    ; preds = %2787
  %2810 = add i32 %32, 140
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = add i32 %32, 388
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = add i32 %2815, 0
  %2817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2817, %dx.types.Handle %72, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2819 = extractvalue %dx.types.ResRet.f32 %2818, 0
  %2820 = extractvalue %dx.types.ResRet.f32 %2818, 1
  %2821 = extractvalue %dx.types.ResRet.f32 %2818, 2
  %2822 = extractvalue %dx.types.ResRet.f32 %2818, 3
  %2823 = and i32 %2812, 255
  %2824 = uitofp i32 %2823 to float
  %2825 = lshr i32 %2812, 8
  %2826 = and i32 %2825, 255
  %2827 = uitofp i32 %2826 to float
  %2828 = lshr i32 %2812, 16
  %2829 = and i32 %2828, 255
  %2830 = uitofp i32 %2829 to float
  %2831 = fmul fast float %2830, 0x3F70101000000000
  %2832 = fmul fast float %2819, %2824
  %2833 = fadd fast float %2832, %2827
  %2834 = fmul fast float %2833, 0x3F70101000000000
  %2835 = fadd fast float %2820, -5.000000e-01
  %2836 = fadd fast float %2822, -5.000000e-01
  %2837 = fmul fast float %2835, %2831
  %2838 = fmul fast float %2836, %2831
  %2839 = fadd fast float %2837, 5.000000e-01
  %2840 = fadd fast float %2838, 5.000000e-01
  %2841 = fmul fast float %2839, 2.000000e+00
  %2842 = fadd fast float %2841, -1.000000e+00
  %2843 = fmul fast float %2840, 2.000000e+00
  %2844 = fadd fast float %2843, -1.000000e+00
  %2845 = fadd fast float %2842, %2844
  %2846 = fmul fast float %2845, 5.000000e-01
  %2847 = fsub fast float %2842, %2844
  %2848 = fmul fast float %2847, 5.000000e-01
  %2849 = call float @dx.op.unary.f32(i32 6, float %2846)  ; FAbs(value)
  %2850 = fsub fast float 1.000000e+00, %2849
  %2851 = call float @dx.op.unary.f32(i32 6, float %2848)  ; FAbs(value)
  %2852 = fsub fast float %2850, %2851
  %2853 = call float @dx.op.dot3.f32(i32 55, float %2846, float %2848, float %2852, float %2846, float %2848, float %2852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2854 = call float @dx.op.unary.f32(i32 25, float %2853)  ; Rsqrt(value)
  %2855 = fmul fast float %2846, %2854
  %2856 = fmul fast float %2848, %2854
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, 67108864
  %2860 = icmp eq i32 %2859, 0
  br i1 %2860, label %2877, label %2861

; <label>:2861                                    ; preds = %2809
  %2862 = add i32 %32, 328
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 65535
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = and i32 %2868, 65535
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = lshr i32 %2864, 16
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = fsub fast float %2834, %2872
  %2874 = fmul fast float %2873, %2866
  %2875 = fadd fast float %2874, %2870
  %2876 = call float @dx.op.unary.f32(i32 7, float %2875)  ; Saturate(value)
  br label %2877

; <label>:2877                                    ; preds = %2861, %2809
  %2878 = phi float [ %2876, %2861 ], [ %2834, %2809 ]
  %2879 = call float @dx.op.dot2.f32(i32 54, float %2855, float %2856, float %2413, float %2414)  ; Dot2(ax,ay,bx,by)
  %2880 = call float @dx.op.dot2.f32(i32 54, float %2855, float %2856, float %2415, float %2416)  ; Dot2(ax,ay,bx,by)
  br label %2881

; <label>:2881                                    ; preds = %2877, %2787
  %2882 = phi float [ %2878, %2877 ], [ 0x3FD6666660000000, %2787 ]
  %2883 = phi float [ %2879, %2877 ], [ 0.000000e+00, %2787 ]
  %2884 = phi float [ %2880, %2877 ], [ 0.000000e+00, %2787 ]
  %2885 = phi float [ %2821, %2877 ], [ 1.000000e+00, %2787 ]
  %2886 = add i32 %32, 208
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = lshr i32 %2888, 22
  %2890 = shl nuw nsw i32 %2889, 5
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 64
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %2929, label %2896

; <label>:2896                                    ; preds = %2881
  %2897 = add i32 %32, 404
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %2899, 0
  %2901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 131072
  %2905 = icmp eq i32 %2904, 0
  %2906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2901, %dx.types.Handle %72, float %2509, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2907 = extractvalue %dx.types.ResRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.ResRet.f32 %2906, 1
  %2909 = extractvalue %dx.types.ResRet.f32 %2906, 2
  %2910 = fmul fast float %2907, %345
  %2911 = fmul fast float %2908, %348
  %2912 = fmul fast float %2909, %351
  br i1 %2905, label %2919, label %2913

; <label>:2913                                    ; preds = %2896
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 0
  %2916 = fmul fast float %2915, %2910
  %2917 = fmul fast float %2915, %2911
  %2918 = fmul fast float %2915, %2912
  br label %2919

; <label>:2919                                    ; preds = %2913, %2896
  %2920 = phi float [ %2916, %2913 ], [ %2910, %2896 ]
  %2921 = phi float [ %2917, %2913 ], [ %2911, %2896 ]
  %2922 = phi float [ %2918, %2913 ], [ %2912, %2896 ]
  %2923 = fmul fast float %2920, %2891
  %2924 = select i1 %202, float %2923, float %2920
  %2925 = call float @dx.op.dot3.f32(i32 55, float %2924, float %2921, float %2922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2926 = select i1 %202, float 0.000000e+00, float %2920
  %2927 = select i1 %202, float %2925, float %2921
  %2928 = select i1 %202, float 0.000000e+00, float %2922
  br label %2929

; <label>:2929                                    ; preds = %2919, %2881
  %2930 = phi float [ %2926, %2919 ], [ 0.000000e+00, %2881 ]
  %2931 = phi float [ %2927, %2919 ], [ 0.000000e+00, %2881 ]
  %2932 = phi float [ %2928, %2919 ], [ 0.000000e+00, %2881 ]
  %2933 = add i32 %32, 144
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 255
  %2937 = uitofp i32 %2936 to float
  %2938 = lshr i32 %2935, 8
  %2939 = and i32 %2938, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = call float @dx.op.dot3.f32(i32 55, float %2802, float %2803, float %2804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2942 = fmul fast float %2940, %2941
  %2943 = fadd fast float %2942, %2937
  %2944 = fmul fast float %2943, 0x3F70101020000000
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  br i1 %2401, label %2946, label %2954

; <label>:2946                                    ; preds = %2929
  %2947 = fsub fast float 1.000000e+00, %2582
  %2948 = fmul fast float %2947, %2390
  %2949 = fmul fast float %2947, %2391
  %2950 = fmul fast float %2947, %2392
  %2951 = fmul fast float %2947, %2393
  %2952 = fmul fast float %2947, %2394
  %2953 = fmul fast float %2947, %2395
  br label %2954

; <label>:2954                                    ; preds = %2946, %2929
  %2955 = phi float [ %2948, %2946 ], [ %2390, %2929 ]
  %2956 = phi float [ %2949, %2946 ], [ %2391, %2929 ]
  %2957 = phi float [ %2950, %2946 ], [ %2392, %2929 ]
  %2958 = phi float [ %2951, %2946 ], [ %2393, %2929 ]
  %2959 = phi float [ %2952, %2946 ], [ %2394, %2929 ]
  %2960 = phi float [ %2953, %2946 ], [ %2395, %2929 ]
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 3
  %2964 = icmp eq i32 %2963, 3
  br i1 %2964, label %3043, label %2965

; <label>:2965                                    ; preds = %2954
  %2966 = and i32 %2962, 16
  %2967 = icmp ne i32 %2966, 0
  %2968 = select i1 %2967, float %2582, float 0.000000e+00
  %2969 = icmp eq i32 %2963, 0
  br i1 %2969, label %2970, label %2998

; <label>:2970                                    ; preds = %2965
  %2971 = and i32 %2962, 64
  %2972 = icmp ne i32 %2971, 0
  %2973 = select i1 %2972, float %2582, float 0.000000e+00
  %2974 = fsub fast float %2802, %2955
  %2975 = fsub fast float %2803, %2956
  %2976 = fsub fast float %2804, %2957
  %2977 = fmul fast float %2968, %2974
  %2978 = fmul fast float %2968, %2975
  %2979 = fmul fast float %2968, %2976
  %2980 = fadd fast float %2977, %2955
  %2981 = fadd fast float %2978, %2956
  %2982 = fadd fast float %2979, %2957
  %2983 = fsub fast float %2788, %2396
  %2984 = fmul fast float %2968, %2983
  %2985 = fadd fast float %2984, %2396
  %2986 = fsub fast float %2930, %2958
  %2987 = fsub fast float %2931, %2959
  %2988 = fsub fast float %2932, %2960
  %2989 = fmul fast float %2973, %2986
  %2990 = fmul fast float %2973, %2987
  %2991 = fmul fast float %2973, %2988
  %2992 = fadd fast float %2989, %2958
  %2993 = fadd fast float %2990, %2959
  %2994 = fadd fast float %2991, %2960
  %2995 = fsub fast float %2945, %2399
  %2996 = fmul fast float %2968, %2995
  %2997 = fadd fast float %2996, %2399
  br label %3043

; <label>:2998                                    ; preds = %2965
  %2999 = icmp eq i32 %2963, 1
  br i1 %2999, label %3000, label %3013

; <label>:3000                                    ; preds = %2998
  %3001 = fadd fast float %2802, -1.000000e+00
  %3002 = fadd fast float %2803, -1.000000e+00
  %3003 = fadd fast float %2804, -1.000000e+00
  %3004 = fmul fast float %2968, %3001
  %3005 = fmul fast float %2968, %3002
  %3006 = fmul fast float %2968, %3003
  %3007 = fadd fast float %3004, 1.000000e+00
  %3008 = fadd fast float %3005, 1.000000e+00
  %3009 = fadd fast float %3006, 1.000000e+00
  %3010 = fmul fast float %3007, %2955
  %3011 = fmul fast float %3008, %2956
  %3012 = fmul fast float %3009, %2957
  br label %3043

; <label>:3013                                    ; preds = %2998
  %3014 = icmp eq i32 %2963, 2
  br i1 %3014, label %3015, label %3043

; <label>:3015                                    ; preds = %3013
  %3016 = call float @dx.op.unary.f32(i32 24, float %2802)  ; Sqrt(value)
  %3017 = call float @dx.op.unary.f32(i32 24, float %2803)  ; Sqrt(value)
  %3018 = call float @dx.op.unary.f32(i32 24, float %2804)  ; Sqrt(value)
  %3019 = fadd fast float %3016, -5.000000e-01
  %3020 = fadd fast float %3017, -5.000000e-01
  %3021 = fadd fast float %3018, -5.000000e-01
  %3022 = fmul fast float %3019, %2968
  %3023 = fmul fast float %3020, %2968
  %3024 = fmul fast float %3021, %2968
  %3025 = fadd fast float %3022, 5.000000e-01
  %3026 = fadd fast float %3023, 5.000000e-01
  %3027 = fadd fast float %3024, 5.000000e-01
  %3028 = fmul fast float %3025, 2.000000e+00
  %3029 = fsub fast float 1.000000e+00, %3028
  %3030 = fmul fast float %3029, %2955
  %3031 = fadd fast float %3030, %3028
  %3032 = fmul fast float %3031, %2955
  %3033 = fmul fast float %3026, 2.000000e+00
  %3034 = fsub fast float 1.000000e+00, %3033
  %3035 = fmul fast float %3034, %2956
  %3036 = fadd fast float %3035, %3033
  %3037 = fmul fast float %3036, %2956
  %3038 = fmul fast float %3027, 2.000000e+00
  %3039 = fsub fast float 1.000000e+00, %3038
  %3040 = fmul fast float %3039, %2957
  %3041 = fadd fast float %3040, %3038
  %3042 = fmul fast float %3041, %2957
  br label %3043

; <label>:3043                                    ; preds = %3015, %3013, %3000, %2970, %2954
  %3044 = phi float [ %2955, %2954 ], [ %3032, %3015 ], [ %2955, %3013 ], [ %3010, %3000 ], [ %2980, %2970 ]
  %3045 = phi float [ %2956, %2954 ], [ %3037, %3015 ], [ %2956, %3013 ], [ %3011, %3000 ], [ %2981, %2970 ]
  %3046 = phi float [ %2957, %2954 ], [ %3042, %3015 ], [ %2957, %3013 ], [ %3012, %3000 ], [ %2982, %2970 ]
  %3047 = phi float [ %2958, %2954 ], [ %2958, %3015 ], [ %2958, %3013 ], [ %2958, %3000 ], [ %2992, %2970 ]
  %3048 = phi float [ %2959, %2954 ], [ %2959, %3015 ], [ %2959, %3013 ], [ %2959, %3000 ], [ %2993, %2970 ]
  %3049 = phi float [ %2960, %2954 ], [ %2960, %3015 ], [ %2960, %3013 ], [ %2960, %3000 ], [ %2994, %2970 ]
  %3050 = phi float [ %2396, %2954 ], [ %2396, %3015 ], [ %2396, %3013 ], [ %2396, %3000 ], [ %2985, %2970 ]
  %3051 = phi float [ %2399, %2954 ], [ %2399, %3015 ], [ %2399, %3013 ], [ %2399, %3000 ], [ %2997, %2970 ]
  %3052 = and i32 %2962, 12
  %3053 = icmp eq i32 %3052, 12
  br i1 %3053, label %3126, label %3054

; <label>:3054                                    ; preds = %3043
  %3055 = and i32 %2962, 2097184
  %3056 = icmp eq i32 %3055, 2097184
  %3057 = select i1 %3056, float %2582, float 0.000000e+00
  %3058 = and i32 %2962, 4194336
  %3059 = icmp eq i32 %3058, 4194336
  %3060 = select i1 %3059, float %2582, float 0.000000e+00
  %3061 = and i32 %2962, 8388640
  %3062 = icmp eq i32 %3061, 8388640
  %3063 = select i1 %3062, float %2582, float 0.000000e+00
  %3064 = icmp eq i32 %3052, 0
  br i1 %3064, label %3065, label %3078

; <label>:3065                                    ; preds = %3054
  %3066 = fsub fast float %2883, %2388
  %3067 = fsub fast float %2884, %2389
  %3068 = fmul fast float %3057, %3066
  %3069 = fmul fast float %3057, %3067
  %3070 = fadd fast float %3068, %2388
  %3071 = fadd fast float %3069, %2389
  %3072 = fsub fast float %2885, %2398
  %3073 = fmul fast float %3060, %3072
  %3074 = fadd fast float %3073, %2398
  %3075 = fsub fast float %2882, %2397
  %3076 = fmul fast float %3063, %3075
  %3077 = fadd fast float %3076, %2397
  br label %3126

; <label>:3078                                    ; preds = %3054
  %3079 = icmp eq i32 %3052, 4
  br i1 %3079, label %3080, label %3112

; <label>:3080                                    ; preds = %3078
  %3081 = fmul fast float %3057, %2883
  %3082 = fmul fast float %3057, %2884
  %3083 = fadd fast float %3081, %2388
  %3084 = fadd fast float %3082, %2389
  %3085 = call float @dx.op.binary.f32(i32 36, float %2398, float %2885)  ; FMin(a,b)
  %3086 = fsub fast float %3085, %2398
  %3087 = fmul fast float %3086, %3060
  %3088 = fadd fast float %3087, %2398
  %3089 = fadd fast float %2882, %2397
  %3090 = fmul fast float %3089, 0x3FF337FAE0000000
  %3091 = fmul fast float %2397, %2397
  %3092 = fmul fast float %2882, %2882
  %3093 = fadd fast float %3092, %3091
  %3094 = fmul fast float %3093, 0x3FE5152B00000000
  %3095 = fmul fast float %2397, 0xBFCC1F85E0000000
  %3096 = fmul fast float %3095, %2882
  %3097 = fadd fast float %3096, 0xBFE1363700000000
  %3098 = fadd fast float %3097, %3090
  %3099 = fsub fast float %3098, %3094
  %3100 = fmul fast float %3089, 0x3FBA6F0D00000000
  %3101 = fmul fast float %3093, 0x3FD0432880000000
  %3102 = fmul fast float %2397, 0xBFEF110800000000
  %3103 = fmul fast float %3102, %2882
  %3104 = fadd fast float %3103, 1.000000e+00
  %3105 = fsub fast float %3104, %3100
  %3106 = fadd fast float %3105, %3101
  %3107 = fdiv fast float %3099, %3106
  %3108 = call float @dx.op.unary.f32(i32 7, float %3107)  ; Saturate(value)
  %3109 = fsub fast float %3108, %2397
  %3110 = fmul fast float %3109, %3063
  %3111 = fadd fast float %3110, %2397
  br label %3126

; <label>:3112                                    ; preds = %3078
  %3113 = icmp eq i32 %3052, 8
  br i1 %3113, label %3114, label %3126

; <label>:3114                                    ; preds = %3112
  %3115 = fmul fast float %3057, %2883
  %3116 = fmul fast float %3057, %2884
  %3117 = fadd fast float %3115, %2388
  %3118 = fadd fast float %3116, %2389
  %3119 = call float @dx.op.binary.f32(i32 36, float %2398, float %2885)  ; FMin(a,b)
  %3120 = fsub fast float %3119, %2398
  %3121 = fmul fast float %3120, %3060
  %3122 = fadd fast float %3121, %2398
  %3123 = fsub fast float %2882, %2397
  %3124 = fmul fast float %3063, %3123
  %3125 = fadd fast float %3124, %2397
  br label %3126

; <label>:3126                                    ; preds = %3114, %3112, %3080, %3065, %3043, %2581, %2400, %2387
  %3127 = phi float [ %2388, %3043 ], [ %2388, %2581 ], [ %2388, %2387 ], [ %2388, %2400 ], [ %3070, %3065 ], [ %3083, %3080 ], [ %2388, %3112 ], [ %3117, %3114 ]
  %3128 = phi float [ %2389, %3043 ], [ %2389, %2581 ], [ %2389, %2387 ], [ %2389, %2400 ], [ %3071, %3065 ], [ %3084, %3080 ], [ %2389, %3112 ], [ %3118, %3114 ]
  %3129 = phi float [ %3044, %3043 ], [ %2390, %2581 ], [ %2390, %2387 ], [ %2390, %2400 ], [ %3044, %3065 ], [ %3044, %3080 ], [ %3044, %3112 ], [ %3044, %3114 ]
  %3130 = phi float [ %3045, %3043 ], [ %2391, %2581 ], [ %2391, %2387 ], [ %2391, %2400 ], [ %3045, %3065 ], [ %3045, %3080 ], [ %3045, %3112 ], [ %3045, %3114 ]
  %3131 = phi float [ %3046, %3043 ], [ %2392, %2581 ], [ %2392, %2387 ], [ %2392, %2400 ], [ %3046, %3065 ], [ %3046, %3080 ], [ %3046, %3112 ], [ %3046, %3114 ]
  %3132 = phi float [ %3047, %3043 ], [ %2393, %2581 ], [ %2393, %2387 ], [ %2393, %2400 ], [ %3047, %3065 ], [ %3047, %3080 ], [ %3047, %3112 ], [ %3047, %3114 ]
  %3133 = phi float [ %3048, %3043 ], [ %2394, %2581 ], [ %2394, %2387 ], [ %2394, %2400 ], [ %3048, %3065 ], [ %3048, %3080 ], [ %3048, %3112 ], [ %3048, %3114 ]
  %3134 = phi float [ %3049, %3043 ], [ %2395, %2581 ], [ %2395, %2387 ], [ %2395, %2400 ], [ %3049, %3065 ], [ %3049, %3080 ], [ %3049, %3112 ], [ %3049, %3114 ]
  %3135 = phi float [ %3050, %3043 ], [ %2396, %2581 ], [ %2396, %2387 ], [ %2396, %2400 ], [ %3050, %3065 ], [ %3050, %3080 ], [ %3050, %3112 ], [ %3050, %3114 ]
  %3136 = phi float [ %2397, %3043 ], [ %2397, %2581 ], [ %2397, %2387 ], [ %2397, %2400 ], [ %3077, %3065 ], [ %3111, %3080 ], [ %2397, %3112 ], [ %3125, %3114 ]
  %3137 = phi float [ %2398, %3043 ], [ %2398, %2581 ], [ %2398, %2387 ], [ %2398, %2400 ], [ %3074, %3065 ], [ %3088, %3080 ], [ %2398, %3112 ], [ %3122, %3114 ]
  %3138 = phi float [ %3051, %3043 ], [ %2399, %2581 ], [ %2399, %2387 ], [ %2399, %2400 ], [ %3051, %3065 ], [ %3051, %3080 ], [ %3051, %3112 ], [ %3051, %3114 ]
  %3139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3140 = extractvalue %dx.types.CBufRet.f32 %3139, 0
  %3141 = call float @dx.op.dot2.f32(i32 54, float %3127, float %3128, float %3127, float %3128)  ; Dot2(ax,ay,bx,by)
  %3142 = fmul fast float %3141, 0x3FE3333340000000
  %3143 = fsub fast float 1.000000e+00, %3142
  %3144 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3128, float %3143, float %3127, float %3128, float %3143)  ; Dot3(ax,ay,az,bx,by,bz)
  %3145 = call float @dx.op.unary.f32(i32 25, float %3144)  ; Rsqrt(value)
  %3146 = fmul fast float %3145, %3127
  %3147 = fmul fast float %3145, %3128
  %3148 = fmul fast float %3143, %3145
  %3149 = fmul fast float %3148, %83
  %3150 = fmul fast float %3148, %84
  %3151 = fmul fast float %3148, %85
  %3152 = fmul fast float %3146, %57
  %3153 = fmul fast float %3146, %58
  %3154 = fmul fast float %3146, %59
  %3155 = fadd fast float %3149, %3152
  %3156 = fadd fast float %3150, %3153
  %3157 = fadd fast float %3151, %3154
  %3158 = fmul fast float %95, %3147
  %3159 = fmul fast float %96, %3147
  %3160 = fmul fast float %97, %3147
  %3161 = fadd fast float %3155, %3158
  %3162 = fadd fast float %3156, %3159
  %3163 = fadd fast float %3157, %3160
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3161, float %3162, float %3163, float %3161, float %3162, float %3163)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.unary.f32(i32 25, float %3164)  ; Rsqrt(value)
  %3166 = fmul fast float %3161, %3165
  %3167 = fmul fast float %3162, %3165
  %3168 = fmul fast float %3163, %3165
  %3169 = icmp eq i32 %33, 65535
  br i1 %3169, label %3688, label %3170

; <label>:3170                                    ; preds = %3126
  %3171 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3172 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3173 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3174 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3175 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3176 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3177 = fadd fast float %3171, %34
  %3178 = fadd fast float %3172, %35
  %3179 = fadd fast float %3173, %36
  %3180 = fadd fast float %3174, %34
  %3181 = fadd fast float %3175, %35
  %3182 = fadd fast float %3176, %36
  %3183 = mul i32 %33, 48
  %3184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.f32 %3184, 0
  %3186 = extractvalue %dx.types.ResRet.f32 %3184, 1
  %3187 = extractvalue %dx.types.ResRet.f32 %3184, 2
  %3188 = add i32 %3183, 16
  %3189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3188, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  %3191 = extractvalue %dx.types.ResRet.f32 %3189, 1
  %3192 = extractvalue %dx.types.ResRet.f32 %3189, 2
  %3193 = add i32 %3183, 32
  %3194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.f32 %3194, 0
  %3196 = extractvalue %dx.types.ResRet.f32 %3194, 1
  %3197 = extractvalue %dx.types.ResRet.f32 %3194, 2
  %3198 = extractvalue %dx.types.ResRet.f32 %3194, 3
  %3199 = bitcast float %3198 to i32
  %3200 = fmul fast float %3185, %34
  %3201 = fmul fast float %3186, %35
  %3202 = fmul fast float %3187, %36
  %3203 = fsub fast float %3200, %3190
  %3204 = fsub fast float %3201, %3191
  %3205 = fsub fast float %3202, %3192
  %3206 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3207 = call float @dx.op.unary.f32(i32 7, float %3204)  ; Saturate(value)
  %3208 = call float @dx.op.unary.f32(i32 7, float %3205)  ; Saturate(value)
  %3209 = fmul fast float %3206, %3195
  %3210 = fmul fast float %3207, %3196
  %3211 = fmul fast float %3208, %3197
  %3212 = fadd fast float %3195, -1.000000e+00
  %3213 = fadd fast float %3196, -1.000000e+00
  %3214 = fadd fast float %3197, -1.000000e+00
  %3215 = call float @dx.op.unary.f32(i32 27, float %3209)  ; Round_ni(value)
  %3216 = call float @dx.op.unary.f32(i32 27, float %3210)  ; Round_ni(value)
  %3217 = call float @dx.op.unary.f32(i32 27, float %3211)  ; Round_ni(value)
  %3218 = call float @dx.op.binary.f32(i32 36, float %3215, float %3212)  ; FMin(a,b)
  %3219 = call float @dx.op.binary.f32(i32 36, float %3216, float %3213)  ; FMin(a,b)
  %3220 = call float @dx.op.binary.f32(i32 36, float %3217, float %3214)  ; FMin(a,b)
  %3221 = fmul fast float %3220, %3196
  %3222 = fadd fast float %3221, %3219
  %3223 = fmul fast float %3222, %3195
  %3224 = fadd fast float %3223, %3218
  %3225 = fptosi float %3224 to i32
  %3226 = add nsw i32 %3225, %3199
  %3227 = shl nsw i32 %3226, 2
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = lshr i32 %3229, 16
  %3231 = icmp eq i32 %3230, 0
  br i1 %3231, label %3656, label %3232

; <label>:3232                                    ; preds = %3170
  br label %3233

; <label>:3233                                    ; preds = %3355, %3232
  %3234 = phi i32 [ %3257, %3355 ], [ %3230, %3232 ]
  %3235 = phi float [ %3356, %3355 ], [ 0.000000e+00, %3232 ]
  %3236 = phi float [ %3357, %3355 ], [ %918, %3232 ]
  %3237 = phi float [ %3358, %3355 ], [ %3140, %3232 ]
  %3238 = phi float [ %3359, %3355 ], [ %3138, %3232 ]
  %3239 = phi float [ %3360, %3355 ], [ 0.000000e+00, %3232 ]
  %3240 = phi float [ %3361, %3355 ], [ 0.000000e+00, %3232 ]
  %3241 = phi float [ %3362, %3355 ], [ %3132, %3232 ]
  %3242 = phi float [ %3363, %3355 ], [ %3133, %3232 ]
  %3243 = phi float [ %3364, %3355 ], [ %3134, %3232 ]
  %3244 = phi float [ %3365, %3355 ], [ %3166, %3232 ]
  %3245 = phi float [ %3366, %3355 ], [ %3167, %3232 ]
  %3246 = phi float [ %3367, %3355 ], [ %3168, %3232 ]
  %3247 = phi float [ %3368, %3355 ], [ %3137, %3232 ]
  %3248 = phi float [ %3369, %3355 ], [ %3136, %3232 ]
  %3249 = phi float [ %3370, %3355 ], [ 0.000000e+00, %3232 ]
  %3250 = phi float [ %3371, %3355 ], [ %3135, %3232 ]
  %3251 = phi float [ %3372, %3355 ], [ %3129, %3232 ]
  %3252 = phi float [ %3373, %3355 ], [ %3130, %3232 ]
  %3253 = phi float [ %3374, %3355 ], [ %3131, %3232 ]
  %3254 = shl nuw nsw i32 %3234, 2
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3254, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = lshr i32 %3256, 16
  %3258 = shl i32 %3256, 8
  %3259 = and i32 %3258, 16776960
  %3260 = or i32 %3259, 48
  %3261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.f32 %3261, 0
  %3263 = extractvalue %dx.types.ResRet.f32 %3261, 1
  %3264 = extractvalue %dx.types.ResRet.f32 %3261, 2
  %3265 = or i32 %3259, 64
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = extractvalue %dx.types.ResRet.i32 %3266, 1
  %3269 = or i32 %3259, 80
  %3270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 2
  %3272 = extractvalue %dx.types.ResRet.f32 %3270, 3
  %3273 = or i32 %3259, 96
  %3274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.ResRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.ResRet.f32 %3274, 2
  %3278 = extractvalue %dx.types.ResRet.f32 %3274, 3
  %3279 = or i32 %3259, 112
  %3280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3282 = or i32 %3259, 128
  %3283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3282, i32 undef)  ; BufferLoad(srv,index,wot)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.ResRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.ResRet.f32 %3283, 2
  %3287 = extractvalue %dx.types.ResRet.f32 %3283, 3
  %3288 = or i32 %3259, 144
  %3289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3288, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.ResRet.f32 %3289, 1
  %3292 = extractvalue %dx.types.ResRet.f32 %3289, 2
  %3293 = extractvalue %dx.types.ResRet.f32 %3289, 3
  %3294 = or i32 %3259, 160
  %3295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.ResRet.f32 %3295, 2
  %3299 = extractvalue %dx.types.ResRet.f32 %3295, 3
  %3300 = or i32 %3259, 192
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = or i32 %3259, 208
  %3304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = or i32 %3259, 248
  %3307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.f32 %3307, 0
  %3309 = extractvalue %dx.types.ResRet.f32 %3307, 1
  %3310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.ResRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.ResRet.f32 %3310, 3
  %3315 = call float @dx.op.dot4.f32(i32 56, float %3311, float %3312, float %3313, float %3314, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3316 = or i32 %3259, 16
  %3317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.ResRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.ResRet.f32 %3317, 2
  %3321 = extractvalue %dx.types.ResRet.f32 %3317, 3
  %3322 = call float @dx.op.dot4.f32(i32 56, float %3318, float %3319, float %3320, float %3321, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3323 = or i32 %3259, 32
  %3324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.ResRet.f32 %3324, 2
  %3328 = extractvalue %dx.types.ResRet.f32 %3324, 3
  %3329 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3330 = call float @dx.op.unary.f32(i32 27, float %3315)  ; Round_ni(value)
  %3331 = call float @dx.op.unary.f32(i32 6, float %3330)  ; FAbs(value)
  %3332 = call float @dx.op.unary.f32(i32 27, float %3322)  ; Round_ni(value)
  %3333 = call float @dx.op.unary.f32(i32 6, float %3332)  ; FAbs(value)
  %3334 = call float @dx.op.unary.f32(i32 6, float %3329)  ; FAbs(value)
  %3335 = call float @dx.op.unary.f32(i32 27, float %3334)  ; Round_ni(value)
  %3336 = fadd fast float %3333, %3331
  %3337 = fadd fast float %3336, %3335
  %3338 = fcmp fast oeq float %3337, 0.000000e+00
  %3339 = call float @dx.op.dot4.f32(i32 56, float %3311, float %3312, float %3313, float %3314, float %3177, float %3178, float %3179, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3340 = call float @dx.op.dot4.f32(i32 56, float %3318, float %3319, float %3320, float %3321, float %3177, float %3178, float %3179, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3341 = call float @dx.op.dot4.f32(i32 56, float %3311, float %3312, float %3313, float %3314, float %3180, float %3181, float %3182, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3342 = call float @dx.op.dot4.f32(i32 56, float %3318, float %3319, float %3320, float %3321, float %3180, float %3181, float %3182, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3343 = fsub fast float %3339, %3315
  %3344 = fsub fast float %3341, %3315
  %3345 = fsub fast float %3340, %3322
  %3346 = fsub fast float %3342, %3322
  %3347 = call float @dx.op.dot3.f32(i32 55, float %3262, float %3263, float %3264, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3349 = extractvalue %dx.types.CBufRet.f32 %3348, 2
  %3350 = fadd fast float %3349, %3347
  %3351 = call float @dx.op.unary.f32(i32 7, float %3350)  ; Saturate(value)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3348, 0
  %3353 = fcmp fast ogt float %3351, %3352
  %3354 = and i1 %3338, %3353
  br i1 %3354, label %3376, label %3355

; <label>:3355                                    ; preds = %3642, %3459, %3376, %3233
  %3356 = phi float [ %3235, %3376 ], [ %3462, %3459 ], [ %3462, %3642 ], [ %3235, %3233 ]
  %3357 = phi float [ %3236, %3376 ], [ %3236, %3459 ], [ %3617, %3642 ], [ %3236, %3233 ]
  %3358 = phi float [ %3237, %3376 ], [ %3237, %3459 ], [ %3616, %3642 ], [ %3237, %3233 ]
  %3359 = phi float [ %3238, %3376 ], [ %3238, %3459 ], [ %3614, %3642 ], [ %3238, %3233 ]
  %3360 = phi float [ %3239, %3376 ], [ %3239, %3459 ], [ %3586, %3642 ], [ %3239, %3233 ]
  %3361 = phi float [ %3240, %3376 ], [ %3240, %3459 ], [ %3584, %3642 ], [ %3240, %3233 ]
  %3362 = phi float [ %3241, %3376 ], [ %3241, %3459 ], [ %3652, %3642 ], [ %3241, %3233 ]
  %3363 = phi float [ %3242, %3376 ], [ %3242, %3459 ], [ %3653, %3642 ], [ %3242, %3233 ]
  %3364 = phi float [ %3243, %3376 ], [ %3243, %3459 ], [ %3654, %3642 ], [ %3243, %3233 ]
  %3365 = phi float [ %3244, %3376 ], [ %3244, %3459 ], [ %3565, %3642 ], [ %3244, %3233 ]
  %3366 = phi float [ %3245, %3376 ], [ %3245, %3459 ], [ %3566, %3642 ], [ %3245, %3233 ]
  %3367 = phi float [ %3246, %3376 ], [ %3246, %3459 ], [ %3567, %3642 ], [ %3246, %3233 ]
  %3368 = phi float [ %3247, %3376 ], [ %3247, %3459 ], [ %3594, %3642 ], [ %3247, %3233 ]
  %3369 = phi float [ %3248, %3376 ], [ %3248, %3459 ], [ %3591, %3642 ], [ %3248, %3233 ]
  %3370 = phi float [ %3249, %3376 ], [ %3249, %3459 ], [ %3588, %3642 ], [ %3249, %3233 ]
  %3371 = phi float [ %3250, %3376 ], [ %3250, %3459 ], [ %3582, %3642 ], [ %3250, %3233 ]
  %3372 = phi float [ %3251, %3376 ], [ %3251, %3459 ], [ %3577, %3642 ], [ %3251, %3233 ]
  %3373 = phi float [ %3252, %3376 ], [ %3252, %3459 ], [ %3578, %3642 ], [ %3252, %3233 ]
  %3374 = phi float [ %3253, %3376 ], [ %3253, %3459 ], [ %3579, %3642 ], [ %3253, %3233 ]
  %3375 = icmp eq i32 %3257, 0
  br i1 %3375, label %3655, label %3233

; <label>:3376                                    ; preds = %3233
  %3377 = extractvalue %dx.types.ResRet.f32 %3261, 3
  %3378 = extractvalue %dx.types.ResRet.f32 %3280, 3
  %3379 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3270, 1
  %3382 = extractvalue %dx.types.ResRet.f32 %3270, 0
  %3383 = extractvalue %dx.types.ResRet.i32 %3266, 3
  %3384 = extractvalue %dx.types.ResRet.i32 %3266, 2
  %3385 = bitcast float %3377 to i32
  %3386 = add i32 %3383, 0
  %3387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3386, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3389 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3387, %dx.types.Handle %3388, float %3315, float %3322, float undef, float undef, i32 0, i32 0, i32 undef, float %3343, float %3345, float undef, float %3344, float %3346, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = fmul fast float %3390, %3382
  %3392 = fadd fast float %3391, %3381
  %3393 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3394 = fmul fast float %3315, %3275
  %3395 = call float @dx.op.tertiary.f32(i32 46, float %3276, float %3322, float %3394)  ; FMad(a,b,c)
  %3396 = fadd fast float %3395, %3380
  %3397 = fmul fast float %3315, %3277
  %3398 = call float @dx.op.tertiary.f32(i32 46, float %3278, float %3322, float %3397)  ; FMad(a,b,c)
  %3399 = fadd fast float %3398, %3379
  %3400 = fmul fast float %3343, %3275
  %3401 = call float @dx.op.tertiary.f32(i32 46, float %3276, float %3345, float %3400)  ; FMad(a,b,c)
  %3402 = fmul fast float %3343, %3277
  %3403 = call float @dx.op.tertiary.f32(i32 46, float %3278, float %3345, float %3402)  ; FMad(a,b,c)
  %3404 = fmul fast float %3344, %3275
  %3405 = call float @dx.op.tertiary.f32(i32 46, float %3276, float %3346, float %3404)  ; FMad(a,b,c)
  %3406 = fmul fast float %3344, %3277
  %3407 = call float @dx.op.tertiary.f32(i32 46, float %3278, float %3346, float %3406)  ; FMad(a,b,c)
  %3408 = add i32 %3384, 0
  %3409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3410 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3409, %dx.types.Handle %3388, float %3396, float %3399, float undef, float undef, i32 0, i32 0, i32 undef, float %3401, float %3403, float undef, float %3405, float %3407, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = and i32 %3385, 1024
  %3413 = icmp ne i32 %3412, 0
  %3414 = fcmp fast ogt float %3411, 0x3FE0101020000000
  %3415 = uitofp i1 %3414 to float
  %3416 = select i1 %3413, float %3415, float %3411
  %3417 = and i32 %3385, 8192
  %3418 = icmp ne i32 %3417, 0
  %3419 = select i1 %3418, float %3378, float 1.000000e+00
  %3420 = fmul fast float %3315, 2.000000e+00
  %3421 = fadd fast float %3420, -1.000000e+00
  %3422 = call float @dx.op.unary.f32(i32 6, float %3421)  ; FAbs(value)
  %3423 = fmul fast float %3422, %3308
  %3424 = fsub fast float %3423, %3308
  %3425 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3426 = fmul fast float %3322, 2.000000e+00
  %3427 = fadd fast float %3426, -1.000000e+00
  %3428 = call float @dx.op.unary.f32(i32 6, float %3427)  ; FAbs(value)
  %3429 = fmul fast float %3428, %3309
  %3430 = fsub fast float %3429, %3309
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3432 = fmul fast float %3334, %3271
  %3433 = fsub fast float %3432, %3271
  %3434 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3435 = fmul fast float %3393, %3419
  %3436 = fmul fast float %3435, %3390
  %3437 = fmul fast float %3436, %3425
  %3438 = fmul fast float %3437, %3416
  %3439 = fmul fast float %3438, %3431
  %3440 = fmul fast float %3439, %3434
  %3441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3442 = extractvalue %dx.types.CBufRet.f32 %3441, 1
  %3443 = extractvalue %dx.types.CBufRet.f32 %3441, 0
  %3444 = fsub fast float %3351, %3443
  %3445 = fmul fast float %3444, %3442
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  %3447 = fmul fast float %3440, %3272
  %3448 = fadd fast float %3440, %3272
  %3449 = fmul fast float %3448, %3281
  %3450 = fsub fast float %3449, %3281
  %3451 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  %3452 = and i32 %3385, 128
  %3453 = icmp ne i32 %3452, 0
  %3454 = select i1 %3453, float %3451, float %3447
  %3455 = fmul fast float %3454, %3446
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3458 = fcmp fast ugt float %3455, %3457
  br i1 %3458, label %3459, label %3355

; <label>:3459                                    ; preds = %3376
  %3460 = select i1 %3418, float %3455, float 0.000000e+00
  %3461 = fadd fast float %3460, %3235
  %3462 = call float @dx.op.unary.f32(i32 7, float %3461)  ; Saturate(value)
  br i1 %3418, label %3355, label %3463

; <label>:3463                                    ; preds = %3459
  %3464 = and i32 %3385, 4
  %3465 = and i32 %3385, 8
  %3466 = add i32 %3267, 0
  %3467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3466, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3469 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3467, %dx.types.Handle %3468, float %3396, float %3399, float undef, float undef, i32 0, i32 0, i32 undef, float %3401, float %3403, float undef, float %3405, float %3407, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3473 = extractvalue %dx.types.ResRet.f32 %3469, 3
  %3474 = bitcast float %3293 to i32
  %3475 = and i32 %3474, 255
  %3476 = uitofp i32 %3475 to float
  %3477 = lshr i32 %3474, 8
  %3478 = and i32 %3477, 255
  %3479 = uitofp i32 %3478 to float
  %3480 = fmul fast float %3473, %3476
  %3481 = fadd fast float %3480, %3479
  %3482 = fmul fast float %3481, 0x3F70101000000000
  %3483 = add i32 %3268, 0
  %3484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3483, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3485 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3484, %dx.types.Handle %3468, float %3396, float %3399, float undef, float undef, i32 0, i32 0, i32 undef, float %3401, float %3403, float undef, float %3405, float %3407, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = extractvalue %dx.types.ResRet.f32 %3485, 3
  %3490 = bitcast float %3287 to i32
  %3491 = and i32 %3490, 255
  %3492 = uitofp i32 %3491 to float
  %3493 = lshr i32 %3490, 8
  %3494 = and i32 %3493, 255
  %3495 = uitofp i32 %3494 to float
  %3496 = lshr i32 %3490, 16
  %3497 = and i32 %3496, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = fmul fast float %3498, 0x3F70101000000000
  %3500 = fmul fast float %3486, %3492
  %3501 = fadd fast float %3500, %3495
  %3502 = fmul fast float %3501, 0x3F70101000000000
  %3503 = fadd fast float %3487, -5.000000e-01
  %3504 = fadd fast float %3489, -5.000000e-01
  %3505 = fmul fast float %3503, %3499
  %3506 = fmul fast float %3504, %3499
  %3507 = fadd fast float %3505, 5.000000e-01
  %3508 = fadd fast float %3506, 5.000000e-01
  %3509 = fmul fast float %3470, %3296
  %3510 = fmul fast float %3471, %3297
  %3511 = fmul fast float %3472, %3298
  %3512 = fmul fast float %3507, 2.000000e+00
  %3513 = fadd fast float %3512, -1.000000e+00
  %3514 = fmul fast float %3508, 2.000000e+00
  %3515 = fadd fast float %3514, -1.000000e+00
  %3516 = fadd fast float %3513, %3515
  %3517 = fmul fast float %3516, 5.000000e-01
  %3518 = fsub fast float %3513, %3515
  %3519 = fmul fast float %3518, 5.000000e-01
  %3520 = call float @dx.op.unary.f32(i32 6, float %3517)  ; FAbs(value)
  %3521 = fsub fast float 1.000000e+00, %3520
  %3522 = call float @dx.op.unary.f32(i32 6, float %3519)  ; FAbs(value)
  %3523 = fsub fast float %3521, %3522
  %3524 = call float @dx.op.dot3.f32(i32 55, float %3517, float %3519, float %3523, float %3517, float %3519, float %3523)  ; Dot3(ax,ay,az,bx,by,bz)
  %3525 = call float @dx.op.unary.f32(i32 25, float %3524)  ; Rsqrt(value)
  %3526 = fmul fast float %3517, %3525
  %3527 = fmul fast float %3519, %3525
  %3528 = fmul fast float %3525, %3523
  %3529 = fmul fast float %3528, %3262
  %3530 = fmul fast float %3528, %3263
  %3531 = fmul fast float %3528, %3264
  %3532 = fmul fast float %3526, %3284
  %3533 = fmul fast float %3526, %3285
  %3534 = fmul fast float %3526, %3286
  %3535 = fadd fast float %3532, %3529
  %3536 = fadd fast float %3533, %3530
  %3537 = fadd fast float %3534, %3531
  %3538 = fmul fast float %3527, %3290
  %3539 = fmul fast float %3527, %3291
  %3540 = fmul fast float %3527, %3292
  %3541 = fadd fast float %3535, %3538
  %3542 = fadd fast float %3536, %3539
  %3543 = fadd fast float %3537, %3540
  %3544 = call float @dx.op.dot3.f32(i32 55, float %3541, float %3542, float %3543, float %3541, float %3542, float %3543)  ; Dot3(ax,ay,az,bx,by,bz)
  %3545 = call float @dx.op.unary.f32(i32 25, float %3544)  ; Rsqrt(value)
  %3546 = fmul fast float %3541, %3545
  %3547 = fmul fast float %3542, %3545
  %3548 = fmul fast float %3543, %3545
  %3549 = icmp ne i32 %3465, 0
  %3550 = select i1 %3549, float 1.000000e+00, float 0.000000e+00
  %3551 = fmul fast float %3455, %3550
  %3552 = and i32 %3385, 1
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %3554, label %3558

; <label>:3554                                    ; preds = %3463
  %3555 = fsub fast float %3546, %3244
  %3556 = fsub fast float %3547, %3245
  %3557 = fsub fast float %3548, %3246
  br label %3558

; <label>:3558                                    ; preds = %3554, %3463
  %3559 = phi float [ %3555, %3554 ], [ %3546, %3463 ]
  %3560 = phi float [ %3556, %3554 ], [ %3547, %3463 ]
  %3561 = phi float [ %3557, %3554 ], [ %3548, %3463 ]
  %3562 = fmul float %3561, %3551
  %3563 = fmul float %3560, %3551
  %3564 = fmul float %3559, %3551
  %3565 = fadd fast float %3564, %3244
  %3566 = fadd fast float %3563, %3245
  %3567 = fadd fast float %3562, %3246
  %3568 = icmp ne i32 %3464, 0
  %3569 = select i1 %3568, float 1.000000e+00, float 0.000000e+00
  %3570 = fmul fast float %3455, %3569
  %3571 = fsub fast float %3509, %3251
  %3572 = fsub fast float %3510, %3252
  %3573 = fsub fast float %3511, %3253
  %3574 = fmul fast float %3571, %3570
  %3575 = fmul fast float %3572, %3570
  %3576 = fmul fast float %3573, %3570
  %3577 = fadd fast float %3574, %3251
  %3578 = fadd fast float %3575, %3252
  %3579 = fadd fast float %3576, %3253
  %3580 = fsub fast float %3482, %3250
  %3581 = fmul fast float %3580, %3570
  %3582 = fadd fast float %3581, %3250
  %3583 = fmul fast float %3570, %3240
  %3584 = fsub fast float %3240, %3583
  %3585 = fmul fast float %3570, %3239
  %3586 = fsub fast float %3239, %3585
  %3587 = fadd fast float %3455, %3249
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = fsub fast float %3502, %3248
  %3590 = fmul fast float %3589, %3551
  %3591 = fadd fast float %3590, %3248
  %3592 = fsub fast float %3488, %3247
  %3593 = fmul fast float %3592, %3551
  %3594 = fadd fast float %3593, %3247
  %3595 = call float @dx.op.dot3.f32(i32 55, float %3509, float %3510, float %3511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.CBufRet.f32 %3596, 1
  %3599 = fmul fast float %3598, %3595
  %3600 = fadd fast float %3599, %3597
  %3601 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3602 = bitcast float %3299 to i32
  %3603 = and i32 %3602, 65535
  %3604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3603)  ; LegacyF16ToF32(value)
  %3605 = lshr i32 %3602, 16
  %3606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3605)  ; LegacyF16ToF32(value)
  %3607 = fcmp fast oge float %3604, 0.000000e+00
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = select i1 %3607, float %3604, float %3609
  %3611 = fadd fast float %3610, %3606
  %3612 = fsub fast float %3601, %3238
  %3613 = fmul fast float %3612, %3455
  %3614 = fadd fast float %3613, %3238
  %3615 = fmul fast float %3611, %3455
  %3616 = call float @dx.op.binary.f32(i32 35, float %3237, float %3615)  ; FMax(a,b)
  %3617 = call float @dx.op.binary.f32(i32 35, float %3236, float %3455)  ; FMax(a,b)
  %3618 = and i32 %3385, 16
  %3619 = icmp eq i32 %3618, 0
  br i1 %3619, label %3642, label %3620

; <label>:3620                                    ; preds = %3558
  %3621 = bitcast float %3305 to i32
  %3622 = add i32 %3302, 0
  %3623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3622, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3624 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3623, %dx.types.Handle %3468, float %3396, float %3399, float undef, float undef, i32 0, i32 0, i32 undef, float %3401, float %3403, float undef, float %3405, float %3407, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = and i32 %3621, 65535
  %3629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3628)  ; LegacyF16ToF32(value)
  %3630 = fmul fast float %3625, %3296
  %3631 = fmul fast float %3626, %3297
  %3632 = fmul fast float %3627, %3298
  %3633 = and i32 %3385, 16384
  %3634 = icmp ne i32 %3633, 0
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3637 = select i1 %3634, float %3636, float 1.000000e+00
  %3638 = fmul fast float %3637, %3629
  %3639 = fmul fast float %3630, %3638
  %3640 = fmul fast float %3631, %3638
  %3641 = fmul fast float %3632, %3638
  br label %3642

; <label>:3642                                    ; preds = %3620, %3558
  %3643 = phi float [ %3639, %3620 ], [ 0.000000e+00, %3558 ]
  %3644 = phi float [ %3640, %3620 ], [ 0.000000e+00, %3558 ]
  %3645 = phi float [ %3641, %3620 ], [ 0.000000e+00, %3558 ]
  %3646 = fsub fast float %3643, %3241
  %3647 = fsub fast float %3644, %3242
  %3648 = fsub fast float %3645, %3243
  %3649 = fmul fast float %3646, %3455
  %3650 = fmul fast float %3647, %3455
  %3651 = fmul fast float %3648, %3455
  %3652 = fadd fast float %3649, %3241
  %3653 = fadd fast float %3650, %3242
  %3654 = fadd fast float %3651, %3243
  br label %3355

; <label>:3655                                    ; preds = %3355
  br label %3656

; <label>:3656                                    ; preds = %3655, %3170
  %3657 = phi float [ 0.000000e+00, %3170 ], [ %3356, %3655 ]
  %3658 = phi float [ %918, %3170 ], [ %3357, %3655 ]
  %3659 = phi float [ %3140, %3170 ], [ %3358, %3655 ]
  %3660 = phi float [ %3138, %3170 ], [ %3359, %3655 ]
  %3661 = phi float [ 0.000000e+00, %3170 ], [ %3360, %3655 ]
  %3662 = phi float [ 0.000000e+00, %3170 ], [ %3361, %3655 ]
  %3663 = phi float [ %3132, %3170 ], [ %3362, %3655 ]
  %3664 = phi float [ %3133, %3170 ], [ %3363, %3655 ]
  %3665 = phi float [ %3134, %3170 ], [ %3364, %3655 ]
  %3666 = phi float [ %3166, %3170 ], [ %3365, %3655 ]
  %3667 = phi float [ %3167, %3170 ], [ %3366, %3655 ]
  %3668 = phi float [ %3168, %3170 ], [ %3367, %3655 ]
  %3669 = phi float [ %3137, %3170 ], [ %3368, %3655 ]
  %3670 = phi float [ %3136, %3170 ], [ %3369, %3655 ]
  %3671 = phi float [ 0.000000e+00, %3170 ], [ %3370, %3655 ]
  %3672 = phi float [ %3135, %3170 ], [ %3371, %3655 ]
  %3673 = phi float [ %3129, %3170 ], [ %3372, %3655 ]
  %3674 = phi float [ %3130, %3170 ], [ %3373, %3655 ]
  %3675 = phi float [ %3131, %3170 ], [ %3374, %3655 ]
  %3676 = call float @dx.op.dot3.f32(i32 55, float %3666, float %3667, float %3668, float %3666, float %3667, float %3668)  ; Dot3(ax,ay,az,bx,by,bz)
  %3677 = call float @dx.op.unary.f32(i32 25, float %3676)  ; Rsqrt(value)
  %3678 = fmul fast float %3677, %3666
  %3679 = fmul fast float %3677, %3667
  %3680 = fmul fast float %3677, %3668
  %3681 = fadd fast float %3671, %918
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = call float @dx.op.dot3.f32(i32 55, float %3678, float %3679, float %3680, float %3678, float %3679, float %3680)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = call float @dx.op.unary.f32(i32 25, float %3683)  ; Rsqrt(value)
  %3685 = fmul fast float %3684, %3678
  %3686 = fmul fast float %3684, %3679
  %3687 = fmul fast float %3684, %3680
  br label %3688

; <label>:3688                                    ; preds = %3656, %3126
  %3689 = phi float [ %3685, %3656 ], [ %3166, %3126 ]
  %3690 = phi float [ %3686, %3656 ], [ %3167, %3126 ]
  %3691 = phi float [ %3687, %3656 ], [ %3168, %3126 ]
  %3692 = phi float [ %3673, %3656 ], [ %3129, %3126 ]
  %3693 = phi float [ %3674, %3656 ], [ %3130, %3126 ]
  %3694 = phi float [ %3675, %3656 ], [ %3131, %3126 ]
  %3695 = phi float [ %3663, %3656 ], [ %3132, %3126 ]
  %3696 = phi float [ %3664, %3656 ], [ %3133, %3126 ]
  %3697 = phi float [ %3665, %3656 ], [ %3134, %3126 ]
  %3698 = phi float [ %3672, %3656 ], [ %3135, %3126 ]
  %3699 = phi float [ %3682, %3656 ], [ %918, %3126 ]
  %3700 = phi float [ %3670, %3656 ], [ %3136, %3126 ]
  %3701 = phi float [ %3669, %3656 ], [ %3137, %3126 ]
  %3702 = phi float [ %3662, %3656 ], [ 0.000000e+00, %3126 ]
  %3703 = phi float [ %3661, %3656 ], [ 0.000000e+00, %3126 ]
  %3704 = phi float [ %3657, %3656 ], [ 0.000000e+00, %3126 ]
  %3705 = phi float [ %3659, %3656 ], [ %3140, %3126 ]
  %3706 = phi float [ %3658, %3656 ], [ %918, %3126 ]
  %3707 = phi float [ %3660, %3656 ], [ %3138, %3126 ]
  %3708 = fadd fast float %3698, 0xBFB99999A0000000
  %3709 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3710 = fmul fast float %3709, 0x3FF1C71C80000000
  %3711 = call float @dx.op.binary.f32(i32 36, float %3698, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3712 = fsub fast float 1.000000e+00, %3710
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = fmul fast float %3713, %3692
  %3715 = fmul fast float %3713, %3693
  %3716 = fmul fast float %3713, %3694
  %3717 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3718 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3719 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3720 = fmul fast float %3710, %3692
  %3721 = fmul fast float %3710, %3693
  %3722 = fmul fast float %3710, %3694
  %3723 = fadd fast float %3720, %3711
  %3724 = fadd fast float %3721, %3711
  %3725 = fadd fast float %3722, %3711
  %3726 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3727 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3728 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3729 = call float @dx.op.unary.f32(i32 7, float %3700)  ; Saturate(value)
  %3730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.i32 %3730, 3
  %3732 = and i32 %3731, 8
  %3733 = icmp ne i32 %3732, 0
  %3734 = call float @dx.op.binary.f32(i32 35, float %3717, float %3692)  ; FMax(a,b)
  %3735 = call float @dx.op.binary.f32(i32 35, float %3718, float %3692)  ; FMax(a,b)
  %3736 = call float @dx.op.binary.f32(i32 35, float %3719, float %3692)  ; FMax(a,b)
  %3737 = call float @dx.op.dot3.f32(i32 55, float %3717, float %3718, float %3719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3738 = select i1 %202, float %3692, float %3717
  %3739 = select i1 %202, float %3737, float %3718
  %3740 = select i1 %202, float 1.000000e+00, float %3719
  %3741 = select i1 %3733, float %3734, float %3738
  %3742 = select i1 %3733, float %3735, float %3739
  %3743 = select i1 %3733, float %3736, float %3740
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = extractvalue %dx.types.CBufRet.f32 %3744, 1
  %3747 = extractvalue %dx.types.CBufRet.f32 %3744, 2
  %3748 = fadd fast float %3745, %163
  %3749 = fadd fast float %3746, %164
  %3750 = fadd fast float %3747, %165
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.CBufRet.f32 %3751, 1
  %3754 = fsub fast float %3748, %3752
  %3755 = fsub fast float %3749, %3753
  %3756 = fmul fast float %3754, %3754
  %3757 = fmul fast float %3755, %3755
  %3758 = fadd fast float %3756, %3757
  %3759 = call float @dx.op.unary.f32(i32 24, float %3758)  ; Sqrt(value)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3751, 2
  %3761 = fcmp fast olt float %3759, %3760
  br i1 %3761, label %3762, label %3829

; <label>:3762                                    ; preds = %3688
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3770 = extractvalue %dx.types.CBufRet.f32 %3765, 1
  %3771 = extractvalue %dx.types.CBufRet.f32 %3767, 1
  %3772 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3773 = extractvalue %dx.types.CBufRet.f32 %3765, 3
  %3774 = extractvalue %dx.types.CBufRet.f32 %3767, 3
  %3775 = fadd fast float %3772, %3748
  %3776 = fadd fast float %3773, %3749
  %3777 = fadd fast float %3774, %3750
  %3778 = fmul fast float %3775, %3764
  %3779 = call float @dx.op.tertiary.f32(i32 46, float %3776, float %3766, float %3778)  ; FMad(a,b,c)
  %3780 = call float @dx.op.tertiary.f32(i32 46, float %3777, float %3768, float %3779)  ; FMad(a,b,c)
  %3781 = fmul fast float %3775, %3769
  %3782 = call float @dx.op.tertiary.f32(i32 46, float %3776, float %3770, float %3781)  ; FMad(a,b,c)
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %3777, float %3771, float %3782)  ; FMad(a,b,c)
  %3784 = fsub fast float %3780, %3772
  %3785 = fsub fast float %3783, %3773
  %3786 = fsub fast float %3784, %3752
  %3787 = fadd fast float %3786, %3760
  %3788 = fsub fast float %3785, %3753
  %3789 = fadd fast float %3788, %3760
  %3790 = extractvalue %dx.types.CBufRet.f32 %3751, 3
  %3791 = fmul fast float %3787, %3790
  %3792 = fmul fast float %3789, %3790
  %3793 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3794 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3795 = fsub fast float 1.000000e+00, %3793
  %3796 = fsub fast float 1.000000e+00, %3794
  %3797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3795, float %3796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = fcmp fast ugt float %3798, 0.000000e+00
  br i1 %3799, label %3800, label %4103

; <label>:3800                                    ; preds = %3762
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3803 = fmul fast float %3802, %3798
  %3804 = extractvalue %dx.types.CBufRet.f32 %3801, 3
  %3805 = fadd fast float %3804, %3803
  %3806 = extractvalue %dx.types.CBufRet.f32 %3767, 2
  %3807 = fadd fast float %3805, %3774
  %3808 = fmul fast float %3780, %3768
  %3809 = call float @dx.op.tertiary.f32(i32 46, float %3783, float %3771, float %3808)  ; FMad(a,b,c)
  %3810 = call float @dx.op.tertiary.f32(i32 46, float %3807, float %3806, float %3809)  ; FMad(a,b,c)
  %3811 = fsub fast float %3810, %3774
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 2
  %3814 = fsub fast float %3811, %3813
  %3815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3795, float %3796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3818 = extractvalue %dx.types.ResRet.f32 %3815, 2
  %3819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3795, float %3796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = fadd fast float %3820, %3816
  %3824 = fmul fast float %3823, 0x3F847AE140000000
  %3825 = fadd fast float %3821, %3817
  %3826 = fmul fast float %3825, 0x3F847AE140000000
  %3827 = fadd fast float %3822, %3818
  %3828 = fmul fast float %3827, 0x3F847AE140000000
  br label %4103

; <label>:3829                                    ; preds = %3688
  %3830 = and i32 %181, 1
  %3831 = icmp eq i32 %3830, 0
  br i1 %3831, label %4103, label %3832

; <label>:3832                                    ; preds = %3829
  %3833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3833, 0
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.CBufRet.f32 %3833, 1
  %3840 = extractvalue %dx.types.CBufRet.f32 %3835, 1
  %3841 = extractvalue %dx.types.CBufRet.f32 %3837, 1
  %3842 = extractvalue %dx.types.CBufRet.f32 %3833, 3
  %3843 = extractvalue %dx.types.CBufRet.f32 %3835, 3
  %3844 = extractvalue %dx.types.CBufRet.f32 %3837, 3
  %3845 = fadd fast float %3842, %3748
  %3846 = fadd fast float %3843, %3749
  %3847 = fadd fast float %3844, %3750
  %3848 = fmul fast float %3845, %3834
  %3849 = call float @dx.op.tertiary.f32(i32 46, float %3846, float %3836, float %3848)  ; FMad(a,b,c)
  %3850 = call float @dx.op.tertiary.f32(i32 46, float %3847, float %3838, float %3849)  ; FMad(a,b,c)
  %3851 = fmul fast float %3845, %3839
  %3852 = call float @dx.op.tertiary.f32(i32 46, float %3846, float %3840, float %3851)  ; FMad(a,b,c)
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3847, float %3841, float %3852)  ; FMad(a,b,c)
  %3854 = fsub fast float %3850, %3842
  %3855 = fsub fast float %3853, %3843
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.CBufRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.CBufRet.f32 %3856, 2
  %3860 = extractvalue %dx.types.CBufRet.f32 %3856, 3
  %3861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.f32 %3861, 3
  %3863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.i32 %3863, 0
  %3865 = extractvalue %dx.types.CBufRet.i32 %3863, 1
  %3866 = udiv i32 %3865, %3864
  %3867 = fsub fast float %3854, %3857
  %3868 = fsub fast float %3855, %3858
  %3869 = call float @dx.op.binary.f32(i32 35, float %3867, float 0.000000e+00)  ; FMax(a,b)
  %3870 = call float @dx.op.binary.f32(i32 35, float %3868, float 0.000000e+00)  ; FMax(a,b)
  %3871 = call float @dx.op.binary.f32(i32 36, float %3869, float %3859)  ; FMin(a,b)
  %3872 = call float @dx.op.binary.f32(i32 36, float %3870, float %3860)  ; FMin(a,b)
  %3873 = add i32 %3864, -1
  %3874 = add i32 %3866, -1
  %3875 = fmul fast float %3871, %3862
  %3876 = fmul fast float %3872, %3862
  %3877 = fptoui float %3875 to i32
  %3878 = fptoui float %3876 to i32
  %3879 = call i32 @dx.op.binary.i32(i32 40, i32 %3877, i32 %3873)  ; UMin(a,b)
  %3880 = call i32 @dx.op.binary.i32(i32 40, i32 %3878, i32 %3874)  ; UMin(a,b)
  %3881 = mul i32 %3880, %3864
  %3882 = add i32 %3881, %3879
  %3883 = shl i32 %3882, 2
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = icmp eq i32 %3885, -1
  br i1 %3886, label %4103, label %3887

; <label>:3887                                    ; preds = %3832
  %3888 = mul i32 %3885, 148
  %3889 = add i32 %3888, 4
  %3890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = add i32 %3888, 8
  %3893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.f32 %3893, 0
  %3895 = add i32 %3888, 36
  %3896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = add i32 %3888, 60
  %3899 = add i32 %3888, 92
  %3900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.i32 %3900, 0
  %3902 = add i32 %3888, 116
  %3903 = fsub fast float %3854, %3891
  %3904 = fsub fast float %3855, %3894
  %3905 = fmul fast float %3862, %3903
  %3906 = fmul fast float %3862, %3904
  %3907 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3908 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3909 = fsub fast float 1.000000e+00, %3908
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %3912 = call float @dx.op.unary.f32(i32 83, float %3907)  ; DerivCoarseX(value)
  %3913 = call float @dx.op.unary.f32(i32 83, float %3909)  ; DerivCoarseX(value)
  %3914 = call float @dx.op.unary.f32(i32 84, float %3907)  ; DerivCoarseY(value)
  %3915 = call float @dx.op.unary.f32(i32 84, float %3909)  ; DerivCoarseY(value)
  %3916 = fmul fast float %3912, %3911
  %3917 = fmul fast float %3913, %3911
  %3918 = fmul fast float %3914, %3911
  %3919 = fmul fast float %3915, %3911
  %3920 = call float @dx.op.dot2.f32(i32 54, float %3918, float %3919, float %3918, float %3919)  ; Dot2(ax,ay,bx,by)
  %3921 = call float @dx.op.dot2.f32(i32 54, float %3916, float %3917, float %3916, float %3917)  ; Dot2(ax,ay,bx,by)
  %3922 = call float @dx.op.binary.f32(i32 35, float %3921, float %3920)  ; FMax(a,b)
  %3923 = call float @dx.op.unary.f32(i32 23, float %3922)  ; Log(value)
  %3924 = fmul fast float %3923, 5.000000e-01
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 1
  %3927 = fadd fast float %3926, %3924
  %3928 = call float @dx.op.binary.f32(i32 35, float %3927, float 0.000000e+00)  ; FMax(a,b)
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 3
  %3931 = fadd fast float %3930, %3928
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 3
  %3934 = fadd fast float %3931, %3933
  %3935 = add i32 %3901, 0
  %3936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3935, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3937 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3936, i32 0)  ; GetDimensions(handle,mipLevel)
  %3938 = extractvalue %dx.types.Dimensions %3937, 0
  %3939 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3938)  ; FirstbitLo(value)
  %3940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.i32 %3940, 1
  %3942 = sub nsw i32 %3941, %3939
  %3943 = sitofp i32 %3942 to float
  %3944 = fsub fast float %3934, %3943
  %3945 = call float @dx.op.binary.f32(i32 35, float %3944, float 0.000000e+00)  ; FMax(a,b)
  %3946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3936, %dx.types.Handle %27, float %3907, float %3909, float %3897, float undef, i32 0, i32 0, i32 undef, float %3945)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %3948 = fcmp ule float %3947, 0x3FE0101020000000
  %3949 = extractvalue %dx.types.CBufRet.i32 %3940, 0
  %3950 = and i32 %3949, 128
  %3951 = icmp ne i32 %3950, 0
  %3952 = and i1 %3948, %3951
  br i1 %3952, label %4103, label %3953

; <label>:3953                                    ; preds = %3887
  %3954 = add i32 %3888, 20
  %3955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 0
  %3957 = add i32 %3888, 24
  %3958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = add i32 %3888, 40
  %3961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %3963 = add i32 %3888, 96
  %3964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.i32 %3964, 0
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 2
  %3968 = fmul fast float %3967, %3907
  %3969 = fmul fast float %3967, %3909
  %3970 = extractvalue %dx.types.CBufRet.f32 %3966, 3
  %3971 = fadd fast float %3968, %3970
  %3972 = fadd fast float %3969, %3970
  %3973 = add i32 %3965, 0
  %3974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3973, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3975 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3974, i32 0)  ; GetDimensions(handle,mipLevel)
  %3976 = extractvalue %dx.types.Dimensions %3975, 0
  %3977 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3976)  ; FirstbitLo(value)
  %3978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.i32 %3978, 1
  %3980 = sub nsw i32 %3979, %3977
  %3981 = sitofp i32 %3980 to float
  %3982 = fsub fast float %3931, %3981
  %3983 = call float @dx.op.binary.f32(i32 35, float %3982, float 0.000000e+00)  ; FMax(a,b)
  %3984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3974, %dx.types.Handle %27, float %3971, float %3972, float %3962, float undef, i32 0, i32 0, i32 undef, float %3983)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = fmul fast float %3985, %3956
  %3987 = fadd fast float %3986, %3959
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 0
  %3990 = extractvalue %dx.types.CBufRet.f32 %3988, 1
  %3991 = extractvalue %dx.types.CBufRet.f32 %3988, 2
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 3
  %3996 = extractvalue %dx.types.CBufRet.f32 %3988, 3
  %3997 = fadd fast float %3993, %3854
  %3998 = fadd fast float %3995, %3855
  %3999 = fadd fast float %3987, %3996
  %4000 = fmul fast float %3997, %3989
  %4001 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %3990, float %4000)  ; FMad(a,b,c)
  %4002 = call float @dx.op.tertiary.f32(i32 46, float %3999, float %3991, float %4001)  ; FMad(a,b,c)
  %4003 = fsub fast float %4002, %3996
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 2
  %4006 = fsub fast float %4003, %4005
  %4007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.i32 %4007, 0
  %4009 = call i32 @dx.op.binary.i32(i32 40, i32 %3885, i32 %4008)  ; UMin(a,b)
  %4010 = mul i32 %4009, 36
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = add i32 %4010, 4
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = fmul fast float %4015, %3907
  %4017 = fmul fast float %4015, %3909
  %4018 = extractvalue %dx.types.CBufRet.f32 %4014, 1
  %4019 = fadd fast float %4016, %4018
  %4020 = fadd fast float %4017, %4018
  %4021 = icmp eq i32 %4012, 0
  br i1 %4021, label %4090, label %4022

; <label>:4022                                    ; preds = %3953
  br label %4023

; <label>:4023                                    ; preds = %4080, %4022
  %4024 = phi float [ %4081, %4080 ], [ 0.000000e+00, %4022 ]
  %4025 = phi float [ %4082, %4080 ], [ 0.000000e+00, %4022 ]
  %4026 = phi float [ %4083, %4080 ], [ 0.000000e+00, %4022 ]
  %4027 = phi float [ %4084, %4080 ], [ 0.000000e+00, %4022 ]
  %4028 = phi float [ %4085, %4080 ], [ 0.000000e+00, %4022 ]
  %4029 = phi float [ %4086, %4080 ], [ 0.000000e+00, %4022 ]
  %4030 = phi i32 [ %4087, %4080 ], [ 0, %4022 ]
  %4031 = shl i32 %4030, 2
  %4032 = add i32 %3898, %4031
  %4033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.f32 %4033, 0
  %4035 = add i32 %3902, %4031
  %4036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.i32 %4036, 0
  %4038 = add i32 %4037, 0
  %4039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4040 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4039, i32 0)  ; GetDimensions(handle,mipLevel)
  %4041 = extractvalue %dx.types.Dimensions %4040, 0
  %4042 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4041)  ; FirstbitLo(value)
  %4043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.i32 %4043, 1
  %4045 = sub nsw i32 %4044, %4042
  %4046 = sitofp i32 %4045 to float
  %4047 = fsub fast float %3931, %4046
  %4048 = call float @dx.op.binary.f32(i32 35, float %4047, float 0.000000e+00)  ; FMax(a,b)
  %4049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4039, %dx.types.Handle %27, float %4019, float %4020, float %4034, float undef, i32 0, i32 0, i32 undef, float %4048)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = fcmp fast ogt float %4050, 0.000000e+00
  br i1 %4051, label %4052, label %4080

; <label>:4052                                    ; preds = %4023
  %4053 = add i32 %4013, %4031
  %4054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4053, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.i32 %4054, 0
  %4056 = and i32 %4055, 32767
  %4057 = mul nuw nsw i32 %4056, 928
  %4058 = add nuw nsw i32 %4057, 48
  %4059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4058, i32 undef)  ; BufferLoad(srv,index,wot)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.ResRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.ResRet.f32 %4059, 2
  %4063 = add nuw nsw i32 %4057, 60
  %4064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4063, i32 undef)  ; BufferLoad(srv,index,wot)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.ResRet.f32 %4064, 1
  %4067 = extractvalue %dx.types.ResRet.f32 %4064, 2
  %4068 = fmul fast float %4060, %4050
  %4069 = fmul fast float %4061, %4050
  %4070 = fmul fast float %4062, %4050
  %4071 = fadd fast float %4068, %4024
  %4072 = fadd fast float %4069, %4025
  %4073 = fadd fast float %4070, %4026
  %4074 = fmul fast float %4065, %4050
  %4075 = fmul fast float %4066, %4050
  %4076 = fmul fast float %4067, %4050
  %4077 = fadd fast float %4074, %4027
  %4078 = fadd fast float %4075, %4028
  %4079 = fadd fast float %4076, %4029
  br label %4080

; <label>:4080                                    ; preds = %4052, %4023
  %4081 = phi float [ %4071, %4052 ], [ %4024, %4023 ]
  %4082 = phi float [ %4072, %4052 ], [ %4025, %4023 ]
  %4083 = phi float [ %4073, %4052 ], [ %4026, %4023 ]
  %4084 = phi float [ %4077, %4052 ], [ %4027, %4023 ]
  %4085 = phi float [ %4078, %4052 ], [ %4028, %4023 ]
  %4086 = phi float [ %4079, %4052 ], [ %4029, %4023 ]
  %4087 = add nuw i32 %4030, 1
  %4088 = icmp eq i32 %4087, %4012
  br i1 %4088, label %4089, label %4023

; <label>:4089                                    ; preds = %4080
  br label %4090

; <label>:4090                                    ; preds = %4089, %3953
  %4091 = phi float [ 0.000000e+00, %3953 ], [ %4081, %4089 ]
  %4092 = phi float [ 0.000000e+00, %3953 ], [ %4082, %4089 ]
  %4093 = phi float [ 0.000000e+00, %3953 ], [ %4083, %4089 ]
  %4094 = phi float [ 0.000000e+00, %3953 ], [ %4084, %4089 ]
  %4095 = phi float [ 0.000000e+00, %3953 ], [ %4085, %4089 ]
  %4096 = phi float [ 0.000000e+00, %3953 ], [ %4086, %4089 ]
  %4097 = fadd fast float %4094, %4091
  %4098 = fmul fast float %4097, 0x3F847AE140000000
  %4099 = fadd fast float %4095, %4092
  %4100 = fmul fast float %4099, 0x3F847AE140000000
  %4101 = fadd fast float %4096, %4093
  %4102 = fmul fast float %4101, 0x3F847AE140000000
  br label %4103

; <label>:4103                                    ; preds = %4090, %3887, %3832, %3829, %3800, %3762
  %4104 = phi float [ %3814, %3800 ], [ -1.310720e+05, %3762 ], [ %4006, %4090 ], [ -1.310720e+05, %3832 ], [ -1.310720e+05, %3887 ], [ -1.310720e+05, %3829 ]
  %4105 = phi float [ %3824, %3800 ], [ 0.000000e+00, %3762 ], [ %4098, %4090 ], [ 0.000000e+00, %3832 ], [ 0.000000e+00, %3887 ], [ 0.000000e+00, %3829 ]
  %4106 = phi float [ %3826, %3800 ], [ 0.000000e+00, %3762 ], [ %4100, %4090 ], [ 0.000000e+00, %3832 ], [ 0.000000e+00, %3887 ], [ 0.000000e+00, %3829 ]
  %4107 = phi float [ %3828, %3800 ], [ 0.000000e+00, %3762 ], [ %4102, %4090 ], [ 0.000000e+00, %3832 ], [ 0.000000e+00, %3887 ], [ 0.000000e+00, %3829 ]
  %4108 = phi i1 [ true, %3800 ], [ false, %3762 ], [ true, %4090 ], [ false, %3832 ], [ false, %3887 ], [ false, %3829 ]
  %4109 = and i32 %181, 3
  %4110 = icmp eq i32 %4109, 1
  %4111 = select i1 %4110, float 1.000000e+00, float 0.000000e+00
  %4112 = fsub fast float %4104, %165
  %4113 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4114 = select i1 %4108, float %4113, float 1.000000e+00
  %4115 = fmul fast float %4114, %4111
  %4116 = icmp eq i32 %4109, 3
  %4117 = select i1 %4116, float 1.000000e+00, float %4115
  %4118 = call float @dx.op.binary.f32(i32 35, float %3704, float %4117)  ; FMax(a,b)
  %4119 = fcmp fast olt float %4117, 1.000000e+00
  %4120 = fcmp uge float %47, 0.000000e+00
  %4121 = and i1 %4120, %4119
  br i1 %4121, label %4122, label %4132

; <label>:4122                                    ; preds = %4103
  %4123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.ResRet.f32 %4123, 1
  %4126 = extractvalue %dx.types.ResRet.f32 %4123, 2
  %4127 = fadd fast float %4124, %4118
  %4128 = fcmp ule float %46, 0.000000e+00
  %4129 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4130 = select i1 %4128, float %4129, float 1.000000e+00
  %4131 = fmul fast float %4130, %4126
  br label %4132

; <label>:4132                                    ; preds = %4122, %4103
  %4133 = phi float [ %4127, %4122 ], [ %4118, %4103 ]
  %4134 = phi float [ %4125, %4122 ], [ 0.000000e+00, %4103 ]
  %4135 = phi float [ %4131, %4122 ], [ 0.000000e+00, %4103 ]
  %4136 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4137 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4138 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  %4139 = fcmp fast une float %4137, 0.000000e+00
  %4140 = fcmp fast une float %4138, 0.000000e+00
  %4141 = or i1 %4139, %4140
  br i1 %4141, label %4142, label %4701

; <label>:4142                                    ; preds = %4132
  br i1 %4139, label %4143, label %4416

; <label>:4143                                    ; preds = %4142
  %4144 = call float @dx.op.unary.f32(i32 23, float %3701)  ; Log(value)
  %4145 = fmul fast float %4144, 4.000000e+00
  %4146 = call float @dx.op.unary.f32(i32 21, float %4145)  ; Exp(value)
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = fmul fast float %4148, %34
  %4150 = fmul fast float %4148, %35
  %4151 = fmul fast float %4148, %36
  %4152 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4153 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4154 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4155 = call float @dx.op.unary.f32(i32 23, float %4152)  ; Log(value)
  %4156 = call float @dx.op.unary.f32(i32 23, float %4153)  ; Log(value)
  %4157 = call float @dx.op.unary.f32(i32 23, float %4154)  ; Log(value)
  %4158 = fmul fast float %4155, 4.000000e+00
  %4159 = fmul fast float %4156, 4.000000e+00
  %4160 = fmul fast float %4157, 4.000000e+00
  %4161 = call float @dx.op.unary.f32(i32 21, float %4158)  ; Exp(value)
  %4162 = call float @dx.op.unary.f32(i32 21, float %4159)  ; Exp(value)
  %4163 = call float @dx.op.unary.f32(i32 21, float %4160)  ; Exp(value)
  %4164 = fadd fast float %4162, %4161
  %4165 = fadd fast float %4164, %4163
  %4166 = fdiv fast float 1.000000e+00, %4165
  %4167 = fmul fast float %4166, %4161
  %4168 = fcmp fast ogt float %43, 0.000000e+00
  %4169 = fcmp fast ogt float %44, 0.000000e+00
  %4170 = fcmp fast ogt float %45, 0.000000e+00
  %4171 = fcmp fast olt float %43, 0.000000e+00
  %4172 = fcmp fast olt float %44, 0.000000e+00
  %4173 = fcmp fast olt float %45, 0.000000e+00
  %4174 = zext i1 %4168 to i32
  %4175 = zext i1 %4169 to i32
  %4176 = zext i1 %4170 to i32
  %4177 = zext i1 %4171 to i32
  %4178 = zext i1 %4172 to i32
  %4179 = zext i1 %4173 to i32
  %4180 = sub nsw i32 %4174, %4177
  %4181 = sub nsw i32 %4175, %4178
  %4182 = sub nsw i32 %4176, %4179
  %4183 = call float @dx.op.unary.f32(i32 83, float %4149)  ; DerivCoarseX(value)
  %4184 = call float @dx.op.unary.f32(i32 83, float %4150)  ; DerivCoarseX(value)
  %4185 = call float @dx.op.unary.f32(i32 83, float %4151)  ; DerivCoarseX(value)
  %4186 = call float @dx.op.unary.f32(i32 84, float %4149)  ; DerivCoarseY(value)
  %4187 = call float @dx.op.unary.f32(i32 84, float %4150)  ; DerivCoarseY(value)
  %4188 = call float @dx.op.unary.f32(i32 84, float %4151)  ; DerivCoarseY(value)
  %4189 = fcmp fast ole float %213, %4167
  %4190 = fmul fast float %4166, %4164
  %4191 = fcmp fast ole float %213, %4190
  %4192 = select i1 %4191, float %4151, float %4149
  %4193 = select i1 %4191, float %4149, float %4150
  %4194 = select i1 %4189, float %4150, float %4192
  %4195 = select i1 %4189, float %4151, float %4193
  %4196 = select i1 %4191, float %4185, float %4183
  %4197 = select i1 %4191, float %4183, float %4184
  %4198 = select i1 %4189, float %4184, float %4196
  %4199 = select i1 %4189, float %4185, float %4197
  %4200 = select i1 %4191, float %4188, float %4186
  %4201 = select i1 %4191, float %4186, float %4187
  %4202 = select i1 %4189, float %4187, float %4200
  %4203 = select i1 %4189, float %4188, float %4201
  %4204 = call float @dx.op.unary.f32(i32 27, float %4194)  ; Round_ni(value)
  %4205 = call float @dx.op.unary.f32(i32 27, float %4195)  ; Round_ni(value)
  %4206 = fptosi float %4204 to i32
  %4207 = fptosi float %4205 to i32
  %4208 = xor i32 %4207, %4206
  %4209 = sitofp i32 %4208 to float
  %4210 = fptosi float %4209 to i32
  %4211 = sitofp i32 %4210 to float
  %4212 = fmul fast float %4211, 0x3FE3C6EF40000000
  %4213 = frem fast float %4204, 2.560000e+02
  %4214 = frem fast float %4205, 2.560000e+02
  %4215 = fptoui float %4213 to i32
  %4216 = fptoui float %4214 to i32
  %4217 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4215, i32 %4216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = fadd fast float %4218, %4212
  %4222 = fadd fast float %4219, %4212
  %4223 = fadd fast float %4220, %4212
  %4224 = call float @dx.op.unary.f32(i32 22, float %4221)  ; Frc(value)
  %4225 = call float @dx.op.unary.f32(i32 22, float %4222)  ; Frc(value)
  %4226 = call float @dx.op.unary.f32(i32 22, float %4223)  ; Frc(value)
  %4227 = fmul fast float %4226, 0x401921FB60000000
  %4228 = call float @dx.op.unary.f32(i32 13, float %4227)  ; Sin(value)
  %4229 = call float @dx.op.unary.f32(i32 12, float %4227)  ; Cos(value)
  %4230 = fsub fast float -0.000000e+00, %4229
  %4231 = fmul fast float %4229, %4194
  %4232 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4195, float %4231)  ; FMad(a,b,c)
  %4233 = fmul fast float %4228, %4194
  %4234 = call float @dx.op.tertiary.f32(i32 46, float %4230, float %4195, float %4233)  ; FMad(a,b,c)
  %4235 = fadd fast float %4232, %4224
  %4236 = fadd fast float %4234, %4225
  %4237 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4238 = bitcast float %4237 to i32
  %4239 = icmp eq i32 %4238, 0
  br i1 %4239, label %4278, label %4240

; <label>:4240                                    ; preds = %4143
  %4241 = add i32 %4238, 0
  %4242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4243 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4242, %dx.types.Handle %73, float %4235, float %4236, float undef, float undef, i32 0, i32 0, i32 undef, float %4198, float %4199, float undef, float %4202, float %4203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4247 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4248 = fsub fast float 1.000000e+00, %4137
  %4249 = call float @dx.op.binary.f32(i32 35, float %4248, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4250 = bitcast float %4137 to i32
  %4251 = sitofp i32 %4250 to float
  %4252 = fadd fast float %4251, 0xC1CFBF8940000000
  %4253 = fmul fast float %4247, %4252
  %4254 = fadd fast float %4253, 0x41CFBF8940000000
  %4255 = fptosi float %4254 to i32
  %4256 = bitcast i32 %4255 to float
  %4257 = bitcast float %4249 to i32
  %4258 = sitofp i32 %4257 to float
  %4259 = fadd fast float %4258, 0xC1CFBF8940000000
  %4260 = fmul fast float %4259, %4247
  %4261 = fadd fast float %4260, 0x41CFBF8940000000
  %4262 = fptosi float %4261 to i32
  %4263 = bitcast i32 %4262 to float
  %4264 = fmul fast float %4256, %4246
  %4265 = fmul fast float %4263, %4246
  %4266 = fsub fast float %4249, %4264
  %4267 = fadd fast float %4265, %4249
  %4268 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4269 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4270 = fsub fast float %4244, %4268
  %4271 = fsub fast float %4269, %4268
  %4272 = bitcast float %4271 to i32
  %4273 = sub nsw i32 2129859010, %4272
  %4274 = bitcast i32 %4273 to float
  %4275 = fmul fast float %4274, %4270
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fcmp fast olt float %4276, 0x3F70101020000000
  br i1 %4277, label %4416, label %4278

; <label>:4278                                    ; preds = %4240, %4143
  %4279 = phi float [ %4276, %4240 ], [ %4137, %4143 ]
  %4280 = fmul fast float %4279, %4146
  %4281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.i32 %4281, 1
  %4283 = extractvalue %dx.types.CBufRet.i32 %4281, 0
  %4284 = add i32 %4283, 0
  %4285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4286 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4285, %dx.types.Handle %72, float %4235, float %4236, float undef, float undef, i32 0, i32 0, i32 undef, float %4198, float %4199, float undef, float %4202, float %4203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = extractvalue %dx.types.ResRet.f32 %4286, 1
  %4289 = extractvalue %dx.types.ResRet.f32 %4286, 2
  %4290 = extractvalue %dx.types.ResRet.f32 %4286, 3
  %4291 = and i32 %4282, 255
  %4292 = uitofp i32 %4291 to float
  %4293 = lshr i32 %4282, 8
  %4294 = and i32 %4293, 255
  %4295 = uitofp i32 %4294 to float
  %4296 = fmul fast float %4290, %4292
  %4297 = fadd fast float %4296, %4295
  %4298 = fmul fast float %4297, 0x3F70101000000000
  %4299 = fadd fast float %4298, 0xBFB99999A0000000
  %4300 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4301 = fmul fast float %4300, 0x3FF1C71C80000000
  %4302 = call float @dx.op.binary.f32(i32 36, float %4298, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4303 = fsub fast float 1.000000e+00, %4301
  %4304 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4305 = fmul fast float %4304, %4287
  %4306 = fmul fast float %4304, %4288
  %4307 = fmul fast float %4304, %4289
  %4308 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4309 = call float @dx.op.unary.f32(i32 7, float %4306)  ; Saturate(value)
  %4310 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4311 = fmul fast float %4301, %4287
  %4312 = fmul fast float %4301, %4288
  %4313 = fmul fast float %4301, %4289
  %4314 = fadd fast float %4311, %4302
  %4315 = fadd fast float %4312, %4302
  %4316 = fadd fast float %4313, %4302
  %4317 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4318 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4319 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.i32 %4320, 3
  %4322 = extractvalue %dx.types.CBufRet.i32 %4320, 2
  %4323 = add i32 %4322, 0
  %4324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4325 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4324, %dx.types.Handle %72, float %4235, float %4236, float undef, float undef, i32 0, i32 0, i32 undef, float %4198, float %4199, float undef, float %4202, float %4203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 0
  %4327 = extractvalue %dx.types.ResRet.f32 %4325, 1
  %4328 = extractvalue %dx.types.ResRet.f32 %4325, 2
  %4329 = extractvalue %dx.types.ResRet.f32 %4325, 3
  %4330 = and i32 %4321, 255
  %4331 = uitofp i32 %4330 to float
  %4332 = lshr i32 %4321, 8
  %4333 = and i32 %4332, 255
  %4334 = uitofp i32 %4333 to float
  %4335 = lshr i32 %4321, 16
  %4336 = and i32 %4335, 255
  %4337 = uitofp i32 %4336 to float
  %4338 = fmul fast float %4337, 0x3F70101000000000
  %4339 = fmul fast float %4326, %4331
  %4340 = fadd fast float %4339, %4334
  %4341 = fmul fast float %4340, 0x3F70101000000000
  %4342 = fadd fast float %4327, -5.000000e-01
  %4343 = fadd fast float %4329, -5.000000e-01
  %4344 = fmul fast float %4342, %4338
  %4345 = fmul fast float %4343, %4338
  %4346 = fadd fast float %4344, 5.000000e-01
  %4347 = fadd fast float %4345, 5.000000e-01
  %4348 = fmul fast float %4346, 2.000000e+00
  %4349 = fadd fast float %4348, -1.000000e+00
  %4350 = fmul fast float %4347, 2.000000e+00
  %4351 = fadd fast float %4350, -1.000000e+00
  %4352 = fadd fast float %4349, %4351
  %4353 = fmul fast float %4352, 5.000000e-01
  %4354 = fsub fast float %4349, %4351
  %4355 = fmul fast float %4354, 5.000000e-01
  %4356 = call float @dx.op.unary.f32(i32 6, float %4353)  ; FAbs(value)
  %4357 = fsub fast float 1.000000e+00, %4356
  %4358 = call float @dx.op.unary.f32(i32 6, float %4355)  ; FAbs(value)
  %4359 = fsub fast float %4357, %4358
  %4360 = call float @dx.op.dot3.f32(i32 55, float %4353, float %4355, float %4359, float %4353, float %4355, float %4359)  ; Dot3(ax,ay,az,bx,by,bz)
  %4361 = call float @dx.op.unary.f32(i32 25, float %4360)  ; Rsqrt(value)
  %4362 = fmul fast float %4353, %4361
  %4363 = fmul fast float %4355, %4361
  %4364 = select i1 %4191, i32 %4181, i32 %4182
  %4365 = select i1 %4189, i32 %4180, i32 %4364
  %4366 = sitofp i32 %4365 to float
  %4367 = fmul fast float %4359, %4366
  %4368 = fmul fast float %4367, %4361
  %4369 = select i1 %4191, float %4368, float %4363
  %4370 = select i1 %4191, float %4363, float %4368
  %4371 = select i1 %4189, float %4368, float %4362
  %4372 = select i1 %4189, float %4363, float %4369
  %4373 = select i1 %4189, float %4362, float %4370
  %4374 = fsub fast float %4308, %3741
  %4375 = fsub fast float %4309, %3742
  %4376 = fsub fast float %4310, %3743
  %4377 = fmul fast float %4374, %4280
  %4378 = fmul fast float %4375, %4280
  %4379 = fmul fast float %4376, %4280
  %4380 = fadd fast float %4377, %3741
  %4381 = fadd fast float %4378, %3742
  %4382 = fadd fast float %4379, %3743
  %4383 = fsub fast float %4317, %3726
  %4384 = fsub fast float %4318, %3727
  %4385 = fsub fast float %4319, %3728
  %4386 = fmul fast float %4383, %4280
  %4387 = fmul fast float %4384, %4280
  %4388 = fmul fast float %4385, %4280
  %4389 = fadd fast float %4386, %3726
  %4390 = fadd fast float %4387, %3727
  %4391 = fadd fast float %4388, %3728
  %4392 = fadd fast float %4371, %3689
  %4393 = fadd fast float %4372, %3690
  %4394 = fadd fast float %4373, %3691
  %4395 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float %4392, float %4393, float %4394)  ; Dot3(ax,ay,az,bx,by,bz)
  %4396 = call float @dx.op.unary.f32(i32 25, float %4395)  ; Rsqrt(value)
  %4397 = fmul fast float %4392, %4396
  %4398 = fmul fast float %4393, %4396
  %4399 = fmul fast float %4394, %4396
  %4400 = fsub fast float %4397, %3689
  %4401 = fsub fast float %4398, %3690
  %4402 = fsub fast float %4399, %3691
  %4403 = fmul fast float %4400, %4280
  %4404 = fmul fast float %4401, %4280
  %4405 = fmul fast float %4402, %4280
  %4406 = fadd fast float %4403, %3689
  %4407 = fadd fast float %4404, %3690
  %4408 = fadd fast float %4405, %3691
  %4409 = call float @dx.op.binary.f32(i32 36, float %3701, float %4328)  ; FMin(a,b)
  %4410 = fsub fast float %4409, %3701
  %4411 = fmul fast float %4410, %4280
  %4412 = fadd fast float %4411, %3701
  %4413 = fsub fast float %4341, %3729
  %4414 = fmul fast float %4413, %4280
  %4415 = fadd fast float %4414, %3729
  br label %4416

; <label>:4416                                    ; preds = %4278, %4240, %4142
  %4417 = phi float [ %4380, %4278 ], [ %3741, %4240 ], [ %3741, %4142 ]
  %4418 = phi float [ %4381, %4278 ], [ %3742, %4240 ], [ %3742, %4142 ]
  %4419 = phi float [ %4382, %4278 ], [ %3743, %4240 ], [ %3743, %4142 ]
  %4420 = phi float [ %4389, %4278 ], [ %3726, %4240 ], [ %3726, %4142 ]
  %4421 = phi float [ %4390, %4278 ], [ %3727, %4240 ], [ %3727, %4142 ]
  %4422 = phi float [ %4391, %4278 ], [ %3728, %4240 ], [ %3728, %4142 ]
  %4423 = phi float [ %4406, %4278 ], [ %3689, %4240 ], [ %3689, %4142 ]
  %4424 = phi float [ %4407, %4278 ], [ %3690, %4240 ], [ %3690, %4142 ]
  %4425 = phi float [ %4408, %4278 ], [ %3691, %4240 ], [ %3691, %4142 ]
  %4426 = phi float [ %4415, %4278 ], [ %3729, %4240 ], [ %3729, %4142 ]
  %4427 = phi float [ %4412, %4278 ], [ %3701, %4240 ], [ %3701, %4142 ]
  br i1 %4140, label %4428, label %4701

; <label>:4428                                    ; preds = %4416
  %4429 = call float @dx.op.unary.f32(i32 23, float %4427)  ; Log(value)
  %4430 = fmul fast float %4429, 4.000000e+00
  %4431 = call float @dx.op.unary.f32(i32 21, float %4430)  ; Exp(value)
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = fmul fast float %4433, %34
  %4435 = fmul fast float %4433, %35
  %4436 = fmul fast float %4433, %36
  %4437 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4438 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4439 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4440 = call float @dx.op.unary.f32(i32 23, float %4437)  ; Log(value)
  %4441 = call float @dx.op.unary.f32(i32 23, float %4438)  ; Log(value)
  %4442 = call float @dx.op.unary.f32(i32 23, float %4439)  ; Log(value)
  %4443 = fmul fast float %4440, 4.000000e+00
  %4444 = fmul fast float %4441, 4.000000e+00
  %4445 = fmul fast float %4442, 4.000000e+00
  %4446 = call float @dx.op.unary.f32(i32 21, float %4443)  ; Exp(value)
  %4447 = call float @dx.op.unary.f32(i32 21, float %4444)  ; Exp(value)
  %4448 = call float @dx.op.unary.f32(i32 21, float %4445)  ; Exp(value)
  %4449 = fadd fast float %4447, %4446
  %4450 = fadd fast float %4449, %4448
  %4451 = fdiv fast float 1.000000e+00, %4450
  %4452 = fmul fast float %4451, %4446
  %4453 = fcmp fast ogt float %43, 0.000000e+00
  %4454 = fcmp fast ogt float %44, 0.000000e+00
  %4455 = fcmp fast ogt float %45, 0.000000e+00
  %4456 = fcmp fast olt float %43, 0.000000e+00
  %4457 = fcmp fast olt float %44, 0.000000e+00
  %4458 = fcmp fast olt float %45, 0.000000e+00
  %4459 = zext i1 %4453 to i32
  %4460 = zext i1 %4454 to i32
  %4461 = zext i1 %4455 to i32
  %4462 = zext i1 %4456 to i32
  %4463 = zext i1 %4457 to i32
  %4464 = zext i1 %4458 to i32
  %4465 = sub nsw i32 %4459, %4462
  %4466 = sub nsw i32 %4460, %4463
  %4467 = sub nsw i32 %4461, %4464
  %4468 = call float @dx.op.unary.f32(i32 83, float %4434)  ; DerivCoarseX(value)
  %4469 = call float @dx.op.unary.f32(i32 83, float %4435)  ; DerivCoarseX(value)
  %4470 = call float @dx.op.unary.f32(i32 83, float %4436)  ; DerivCoarseX(value)
  %4471 = call float @dx.op.unary.f32(i32 84, float %4434)  ; DerivCoarseY(value)
  %4472 = call float @dx.op.unary.f32(i32 84, float %4435)  ; DerivCoarseY(value)
  %4473 = call float @dx.op.unary.f32(i32 84, float %4436)  ; DerivCoarseY(value)
  %4474 = fcmp fast ole float %213, %4452
  %4475 = fmul fast float %4451, %4449
  %4476 = fcmp fast ole float %213, %4475
  %4477 = select i1 %4476, float %4436, float %4434
  %4478 = select i1 %4476, float %4434, float %4435
  %4479 = select i1 %4474, float %4435, float %4477
  %4480 = select i1 %4474, float %4436, float %4478
  %4481 = select i1 %4476, float %4470, float %4468
  %4482 = select i1 %4476, float %4468, float %4469
  %4483 = select i1 %4474, float %4469, float %4481
  %4484 = select i1 %4474, float %4470, float %4482
  %4485 = select i1 %4476, float %4473, float %4471
  %4486 = select i1 %4476, float %4471, float %4472
  %4487 = select i1 %4474, float %4472, float %4485
  %4488 = select i1 %4474, float %4473, float %4486
  %4489 = call float @dx.op.unary.f32(i32 27, float %4479)  ; Round_ni(value)
  %4490 = call float @dx.op.unary.f32(i32 27, float %4480)  ; Round_ni(value)
  %4491 = fptosi float %4489 to i32
  %4492 = fptosi float %4490 to i32
  %4493 = xor i32 %4492, %4491
  %4494 = sitofp i32 %4493 to float
  %4495 = fptosi float %4494 to i32
  %4496 = sitofp i32 %4495 to float
  %4497 = fmul fast float %4496, 0x3FE3C6EF40000000
  %4498 = frem fast float %4489, 2.560000e+02
  %4499 = frem fast float %4490, 2.560000e+02
  %4500 = fptoui float %4498 to i32
  %4501 = fptoui float %4499 to i32
  %4502 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4500, i32 %4501, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.ResRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.ResRet.f32 %4502, 2
  %4506 = fadd fast float %4503, %4497
  %4507 = fadd fast float %4504, %4497
  %4508 = fadd fast float %4505, %4497
  %4509 = call float @dx.op.unary.f32(i32 22, float %4506)  ; Frc(value)
  %4510 = call float @dx.op.unary.f32(i32 22, float %4507)  ; Frc(value)
  %4511 = call float @dx.op.unary.f32(i32 22, float %4508)  ; Frc(value)
  %4512 = fmul fast float %4511, 0x401921FB60000000
  %4513 = call float @dx.op.unary.f32(i32 13, float %4512)  ; Sin(value)
  %4514 = call float @dx.op.unary.f32(i32 12, float %4512)  ; Cos(value)
  %4515 = fsub fast float -0.000000e+00, %4514
  %4516 = fmul fast float %4514, %4479
  %4517 = call float @dx.op.tertiary.f32(i32 46, float %4513, float %4480, float %4516)  ; FMad(a,b,c)
  %4518 = fmul fast float %4513, %4479
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %4515, float %4480, float %4518)  ; FMad(a,b,c)
  %4520 = fadd fast float %4517, %4509
  %4521 = fadd fast float %4519, %4510
  %4522 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4523 = bitcast float %4522 to i32
  %4524 = icmp eq i32 %4523, 0
  br i1 %4524, label %4563, label %4525

; <label>:4525                                    ; preds = %4428
  %4526 = add i32 %4523, 0
  %4527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4528 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4527, %dx.types.Handle %73, float %4520, float %4521, float undef, float undef, i32 0, i32 0, i32 undef, float %4483, float %4484, float undef, float %4487, float %4488, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.f32 %4530, 1
  %4532 = extractvalue %dx.types.CBufRet.f32 %4530, 2
  %4533 = fsub fast float 1.000000e+00, %4138
  %4534 = call float @dx.op.binary.f32(i32 35, float %4533, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4535 = bitcast float %4138 to i32
  %4536 = sitofp i32 %4535 to float
  %4537 = fadd fast float %4536, 0xC1CFBF8940000000
  %4538 = fmul fast float %4532, %4537
  %4539 = fadd fast float %4538, 0x41CFBF8940000000
  %4540 = fptosi float %4539 to i32
  %4541 = bitcast i32 %4540 to float
  %4542 = bitcast float %4534 to i32
  %4543 = sitofp i32 %4542 to float
  %4544 = fadd fast float %4543, 0xC1CFBF8940000000
  %4545 = fmul fast float %4544, %4532
  %4546 = fadd fast float %4545, 0x41CFBF8940000000
  %4547 = fptosi float %4546 to i32
  %4548 = bitcast i32 %4547 to float
  %4549 = fmul fast float %4541, %4531
  %4550 = fmul fast float %4548, %4531
  %4551 = fsub fast float %4534, %4549
  %4552 = fadd fast float %4550, %4534
  %4553 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4554 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4555 = fsub fast float %4529, %4553
  %4556 = fsub fast float %4554, %4553
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, %4555
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = fcmp fast olt float %4561, 0x3F70101020000000
  br i1 %4562, label %4701, label %4563

; <label>:4563                                    ; preds = %4525, %4428
  %4564 = phi float [ %4561, %4525 ], [ %4138, %4428 ]
  %4565 = fmul fast float %4564, %4431
  %4566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.i32 %4566, 1
  %4568 = extractvalue %dx.types.CBufRet.i32 %4566, 0
  %4569 = add i32 %4568, 0
  %4570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4571 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4570, %dx.types.Handle %72, float %4520, float %4521, float undef, float undef, i32 0, i32 0, i32 undef, float %4483, float %4484, float undef, float %4487, float %4488, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4575 = extractvalue %dx.types.ResRet.f32 %4571, 3
  %4576 = and i32 %4567, 255
  %4577 = uitofp i32 %4576 to float
  %4578 = lshr i32 %4567, 8
  %4579 = and i32 %4578, 255
  %4580 = uitofp i32 %4579 to float
  %4581 = fmul fast float %4575, %4577
  %4582 = fadd fast float %4581, %4580
  %4583 = fmul fast float %4582, 0x3F70101000000000
  %4584 = fadd fast float %4583, 0xBFB99999A0000000
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = fmul fast float %4585, 0x3FF1C71C80000000
  %4587 = call float @dx.op.binary.f32(i32 36, float %4583, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4588 = fsub fast float 1.000000e+00, %4586
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %4589, %4572
  %4591 = fmul fast float %4589, %4573
  %4592 = fmul fast float %4589, %4574
  %4593 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4595 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4596 = fmul fast float %4586, %4572
  %4597 = fmul fast float %4586, %4573
  %4598 = fmul fast float %4586, %4574
  %4599 = fadd fast float %4596, %4587
  %4600 = fadd fast float %4597, %4587
  %4601 = fadd fast float %4598, %4587
  %4602 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4603 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4604 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.i32 %4605, 3
  %4607 = extractvalue %dx.types.CBufRet.i32 %4605, 2
  %4608 = add i32 %4607, 0
  %4609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4610 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4609, %dx.types.Handle %72, float %4520, float %4521, float undef, float undef, i32 0, i32 0, i32 undef, float %4483, float %4484, float undef, float %4487, float %4488, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = extractvalue %dx.types.ResRet.f32 %4610, 3
  %4615 = and i32 %4606, 255
  %4616 = uitofp i32 %4615 to float
  %4617 = lshr i32 %4606, 8
  %4618 = and i32 %4617, 255
  %4619 = uitofp i32 %4618 to float
  %4620 = lshr i32 %4606, 16
  %4621 = and i32 %4620, 255
  %4622 = uitofp i32 %4621 to float
  %4623 = fmul fast float %4622, 0x3F70101000000000
  %4624 = fmul fast float %4611, %4616
  %4625 = fadd fast float %4624, %4619
  %4626 = fmul fast float %4625, 0x3F70101000000000
  %4627 = fadd fast float %4612, -5.000000e-01
  %4628 = fadd fast float %4614, -5.000000e-01
  %4629 = fmul fast float %4627, %4623
  %4630 = fmul fast float %4628, %4623
  %4631 = fadd fast float %4629, 5.000000e-01
  %4632 = fadd fast float %4630, 5.000000e-01
  %4633 = fmul fast float %4631, 2.000000e+00
  %4634 = fadd fast float %4633, -1.000000e+00
  %4635 = fmul fast float %4632, 2.000000e+00
  %4636 = fadd fast float %4635, -1.000000e+00
  %4637 = fadd fast float %4634, %4636
  %4638 = fmul fast float %4637, 5.000000e-01
  %4639 = fsub fast float %4634, %4636
  %4640 = fmul fast float %4639, 5.000000e-01
  %4641 = call float @dx.op.unary.f32(i32 6, float %4638)  ; FAbs(value)
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = call float @dx.op.unary.f32(i32 6, float %4640)  ; FAbs(value)
  %4644 = fsub fast float %4642, %4643
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4640, float %4644, float %4638, float %4640, float %4644)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.unary.f32(i32 25, float %4645)  ; Rsqrt(value)
  %4647 = fmul fast float %4638, %4646
  %4648 = fmul fast float %4640, %4646
  %4649 = select i1 %4476, i32 %4466, i32 %4467
  %4650 = select i1 %4474, i32 %4465, i32 %4649
  %4651 = sitofp i32 %4650 to float
  %4652 = fmul fast float %4644, %4651
  %4653 = fmul fast float %4652, %4646
  %4654 = select i1 %4476, float %4653, float %4648
  %4655 = select i1 %4476, float %4648, float %4653
  %4656 = select i1 %4474, float %4653, float %4647
  %4657 = select i1 %4474, float %4648, float %4654
  %4658 = select i1 %4474, float %4647, float %4655
  %4659 = fsub fast float %4593, %4417
  %4660 = fsub fast float %4594, %4418
  %4661 = fsub fast float %4595, %4419
  %4662 = fmul fast float %4659, %4565
  %4663 = fmul fast float %4660, %4565
  %4664 = fmul fast float %4661, %4565
  %4665 = fadd fast float %4662, %4417
  %4666 = fadd fast float %4663, %4418
  %4667 = fadd fast float %4664, %4419
  %4668 = fsub fast float %4602, %4420
  %4669 = fsub fast float %4603, %4421
  %4670 = fsub fast float %4604, %4422
  %4671 = fmul fast float %4668, %4565
  %4672 = fmul fast float %4669, %4565
  %4673 = fmul fast float %4670, %4565
  %4674 = fadd fast float %4671, %4420
  %4675 = fadd fast float %4672, %4421
  %4676 = fadd fast float %4673, %4422
  %4677 = fadd fast float %4656, %4423
  %4678 = fadd fast float %4657, %4424
  %4679 = fadd fast float %4658, %4425
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 25, float %4680)  ; Rsqrt(value)
  %4682 = fmul fast float %4677, %4681
  %4683 = fmul fast float %4678, %4681
  %4684 = fmul fast float %4679, %4681
  %4685 = fsub fast float %4682, %4423
  %4686 = fsub fast float %4683, %4424
  %4687 = fsub fast float %4684, %4425
  %4688 = fmul fast float %4685, %4565
  %4689 = fmul fast float %4686, %4565
  %4690 = fmul fast float %4687, %4565
  %4691 = fadd fast float %4688, %4423
  %4692 = fadd fast float %4689, %4424
  %4693 = fadd fast float %4690, %4425
  %4694 = call float @dx.op.binary.f32(i32 36, float %4427, float %4613)  ; FMin(a,b)
  %4695 = fsub fast float %4694, %4427
  %4696 = fmul fast float %4695, %4565
  %4697 = fadd fast float %4696, %4427
  %4698 = fsub fast float %4626, %4426
  %4699 = fmul fast float %4698, %4565
  %4700 = fadd fast float %4699, %4426
  br label %4701

; <label>:4701                                    ; preds = %4563, %4525, %4416, %4132
  %4702 = phi float [ %4665, %4563 ], [ %4417, %4525 ], [ %4417, %4416 ], [ %3741, %4132 ]
  %4703 = phi float [ %4666, %4563 ], [ %4418, %4525 ], [ %4418, %4416 ], [ %3742, %4132 ]
  %4704 = phi float [ %4667, %4563 ], [ %4419, %4525 ], [ %4419, %4416 ], [ %3743, %4132 ]
  %4705 = phi float [ %4674, %4563 ], [ %4420, %4525 ], [ %4420, %4416 ], [ %3726, %4132 ]
  %4706 = phi float [ %4675, %4563 ], [ %4421, %4525 ], [ %4421, %4416 ], [ %3727, %4132 ]
  %4707 = phi float [ %4676, %4563 ], [ %4422, %4525 ], [ %4422, %4416 ], [ %3728, %4132 ]
  %4708 = phi float [ %4691, %4563 ], [ %4423, %4525 ], [ %4423, %4416 ], [ %3689, %4132 ]
  %4709 = phi float [ %4692, %4563 ], [ %4424, %4525 ], [ %4424, %4416 ], [ %3690, %4132 ]
  %4710 = phi float [ %4693, %4563 ], [ %4425, %4525 ], [ %4425, %4416 ], [ %3691, %4132 ]
  %4711 = phi float [ %4700, %4563 ], [ %4426, %4525 ], [ %4426, %4416 ], [ %3729, %4132 ]
  %4712 = phi float [ %4697, %4563 ], [ %4427, %4525 ], [ %4427, %4416 ], [ %3701, %4132 ]
  %4713 = fcmp fast une float %4136, 0.000000e+00
  %4714 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4715 = call float @dx.op.unary.f32(i32 25, float %4714)  ; Rsqrt(value)
  br i1 %4713, label %4723, label %4716

; <label>:4716                                    ; preds = %4701
  %4717 = fmul fast float %4715, %163
  %4718 = fmul fast float %4715, %164
  %4719 = fmul fast float %4715, %165
  %4720 = fsub fast float -0.000000e+00, %4717
  %4721 = fsub fast float -0.000000e+00, %4718
  %4722 = fsub fast float -0.000000e+00, %4719
  br label %4890

; <label>:4723                                    ; preds = %4701
  %4724 = fmul fast float %163, %4715
  %4725 = fsub fast float -0.000000e+00, %4724
  %4726 = fmul fast float %164, %4715
  %4727 = fsub fast float -0.000000e+00, %4726
  %4728 = fmul fast float %165, %4715
  %4729 = fsub fast float -0.000000e+00, %4728
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4725, float %4727, float %4729, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = fmul fast float %4136, 2.500000e+00
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fmul fast float %4136, 0x4013FFFFE0000000
  %4734 = fadd fast float %4733, 0xBFFFFFFFE0000000
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4136, 0x4004000020000000
  %4737 = fadd fast float %4736, 0xBFF8000040000000
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %3708, 1.000000e+01
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = fmul fast float %4740, 2.000000e+00
  %4742 = fsub fast float 3.000000e+00, %4741
  %4743 = fmul fast float %4740, %4740
  %4744 = fmul fast float %4743, %4742
  %4745 = fsub fast float 1.000000e+00, %4744
  %4746 = fsub fast float 0x3FE3333340000000, %4711
  %4747 = fmul fast float %4746, 0x400AAAAAA0000000
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = fmul fast float %4745, %4748
  %4750 = fmul fast float %4702, 0x3FEA2B8620000000
  %4751 = fmul fast float %4703, 0x3FEA2B8620000000
  %4752 = fmul fast float %4704, 0x3FEA2B8620000000
  %4753 = fadd fast float %4750, 0x3FC81DFBA0000000
  %4754 = fmul fast float %4753, %4702
  %4755 = fadd fast float %4754, 0x3F910E6020000000
  %4756 = fadd fast float %4751, 0x3FC81DFBA0000000
  %4757 = fmul fast float %4756, %4703
  %4758 = fadd fast float %4757, 0x3F910E6020000000
  %4759 = fadd fast float %4752, 0x3FC81DFBA0000000
  %4760 = fmul fast float %4759, %4704
  %4761 = fadd fast float %4760, 0x3F910E6020000000
  %4762 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4763 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4764 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4765 = fsub fast float %4762, %4702
  %4766 = fsub fast float %4763, %4703
  %4767 = fsub fast float %4764, %4704
  %4768 = fmul fast float %4765, %4732
  %4769 = fmul fast float %4768, %4749
  %4770 = fmul fast float %4766, %4732
  %4771 = fmul fast float %4770, %4749
  %4772 = fmul fast float %4767, %4732
  %4773 = fmul fast float %4772, %4749
  %4774 = fadd fast float %4769, %4702
  %4775 = fadd fast float %4771, %4703
  %4776 = fadd fast float %4773, %4704
  %4777 = fmul fast float %4712, %4712
  %4778 = fmul fast float %4777, %4777
  %4779 = fadd fast float %4735, 1.000000e+00
  %4780 = fsub fast float %4779, %4749
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = fsub fast float 1.000000e+00, %4778
  %4785 = call float @dx.op.binary.f32(i32 36, float %4781, float %4784)  ; FMin(a,b)
  %4786 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4787 = call float @dx.op.binary.f32(i32 35, float %4785, float %4786)  ; FMax(a,b)
  %4788 = fadd fast float %4783, 0xBFE4CCCCC0000000
  %4789 = fmul fast float %4788, 0x4006DB6DA0000000
  %4790 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4791 = fmul fast float %4790, 2.000000e+00
  %4792 = fsub fast float 3.000000e+00, %4791
  %4793 = bitcast float %4705 to i32
  %4794 = ashr i32 %4793, 1
  %4795 = add nsw i32 %4794, 532487669
  %4796 = bitcast i32 %4795 to float
  %4797 = fsub fast float 1.000000e+00, %4796
  %4798 = bitcast float %4797 to i32
  %4799 = sub nsw i32 2129859010, %4798
  %4800 = bitcast i32 %4799 to float
  %4801 = fmul fast float %4800, 2.000000e+00
  %4802 = bitcast float %4706 to i32
  %4803 = ashr i32 %4802, 1
  %4804 = add nsw i32 %4803, 532487669
  %4805 = bitcast i32 %4804 to float
  %4806 = fsub fast float 1.000000e+00, %4805
  %4807 = bitcast float %4806 to i32
  %4808 = sub nsw i32 2129859010, %4807
  %4809 = bitcast i32 %4808 to float
  %4810 = fmul fast float %4809, 2.000000e+00
  %4811 = bitcast float %4707 to i32
  %4812 = ashr i32 %4811, 1
  %4813 = add nsw i32 %4812, 532487669
  %4814 = bitcast i32 %4813 to float
  %4815 = fsub fast float 1.000000e+00, %4814
  %4816 = bitcast float %4815 to i32
  %4817 = sub nsw i32 2129859010, %4816
  %4818 = bitcast i32 %4817 to float
  %4819 = fmul fast float %4818, 2.000000e+00
  %4820 = fsub fast float 0x4002A9FBE0000000, %4801
  %4821 = fadd fast float %4801, 0x3FD54FDF00000000
  %4822 = bitcast float %4821 to i32
  %4823 = sub nsw i32 2129859010, %4822
  %4824 = bitcast i32 %4823 to float
  %4825 = fmul fast float %4824, %4820
  %4826 = fmul fast float %4825, %4825
  %4827 = fsub fast float 0x4002A9FBE0000000, %4810
  %4828 = fadd fast float %4810, 0x3FD54FDF00000000
  %4829 = bitcast float %4828 to i32
  %4830 = sub nsw i32 2129859010, %4829
  %4831 = bitcast i32 %4830 to float
  %4832 = fmul fast float %4831, %4827
  %4833 = fmul fast float %4832, %4832
  %4834 = fsub fast float 0x4002A9FBE0000000, %4819
  %4835 = fadd fast float %4819, 0x3FD54FDF00000000
  %4836 = bitcast float %4835 to i32
  %4837 = sub nsw i32 2129859010, %4836
  %4838 = bitcast i32 %4837 to float
  %4839 = fmul fast float %4838, %4834
  %4840 = fmul fast float %4839, %4839
  %4841 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4826)  ; FMax(a,b)
  %4842 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4833)  ; FMax(a,b)
  %4843 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4840)  ; FMax(a,b)
  %4844 = fsub fast float 1.000000e+00, %4730
  %4845 = fadd fast float %4844, %4745
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4847 = fsub fast float 1.000000e+00, %4117
  %4848 = fmul fast float %4787, %4847
  %4849 = fmul fast float %4790, %4790
  %4850 = fmul fast float %4849, %4848
  %4851 = fmul fast float %4850, %4792
  %4852 = fmul fast float %4847, 0xBFE99999A0000000
  %4853 = fmul fast float %4852, %4732
  %4854 = fmul fast float %4853, %4749
  %4855 = fadd fast float %4854, 1.000000e+00
  %4856 = fadd fast float %4711, -1.000000e+00
  %4857 = fmul fast float %4855, %4856
  %4858 = fadd fast float %4857, 1.000000e+00
  %4859 = fsub fast float %4841, %4705
  %4860 = fsub fast float %4842, %4706
  %4861 = fsub fast float %4843, %4707
  %4862 = fmul fast float %4851, %4859
  %4863 = fmul fast float %4851, %4860
  %4864 = fmul fast float %4851, %4861
  %4865 = fadd fast float %4862, %4705
  %4866 = fadd fast float %4863, %4706
  %4867 = fadd fast float %4864, %4707
  %4868 = fsub fast float %83, %4708
  %4869 = fsub fast float %84, %4709
  %4870 = fsub fast float %85, %4710
  %4871 = fmul fast float %4851, %4868
  %4872 = fmul fast float %4851, %4869
  %4873 = fmul fast float %4851, %4870
  %4874 = fadd fast float %4871, %4708
  %4875 = fadd fast float %4872, %4709
  %4876 = fadd fast float %4873, %4710
  %4877 = fmul fast float %4851, %4846
  %4878 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4879 = fsub fast float 1.000000e+00, %4878
  %4880 = fmul fast float %4877, %4879
  %4881 = fadd fast float %4880, %4878
  %4882 = fsub fast float 1.000000e+00, %4712
  %4883 = fmul fast float %4851, %4882
  %4884 = fadd fast float %4883, %4712
  %4885 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4875, float %4876, float %4874, float %4875, float %4876)  ; Dot3(ax,ay,az,bx,by,bz)
  %4886 = call float @dx.op.unary.f32(i32 25, float %4885)  ; Rsqrt(value)
  %4887 = fmul fast float %4874, %4886
  %4888 = fmul fast float %4875, %4886
  %4889 = fmul fast float %4876, %4886
  br label %4890

; <label>:4890                                    ; preds = %4723, %4716
  %4891 = phi float [ %4722, %4716 ], [ %4729, %4723 ]
  %4892 = phi float [ %4721, %4716 ], [ %4727, %4723 ]
  %4893 = phi float [ %4720, %4716 ], [ %4725, %4723 ]
  %4894 = phi float [ %4719, %4716 ], [ %4728, %4723 ]
  %4895 = phi float [ %4718, %4716 ], [ %4726, %4723 ]
  %4896 = phi float [ %4717, %4716 ], [ %4724, %4723 ]
  %4897 = phi float [ %4702, %4716 ], [ %4774, %4723 ]
  %4898 = phi float [ %4703, %4716 ], [ %4775, %4723 ]
  %4899 = phi float [ %4704, %4716 ], [ %4776, %4723 ]
  %4900 = phi float [ %4705, %4716 ], [ %4865, %4723 ]
  %4901 = phi float [ %4706, %4716 ], [ %4866, %4723 ]
  %4902 = phi float [ %4707, %4716 ], [ %4867, %4723 ]
  %4903 = phi float [ %4708, %4716 ], [ %4887, %4723 ]
  %4904 = phi float [ %4709, %4716 ], [ %4888, %4723 ]
  %4905 = phi float [ %4710, %4716 ], [ %4889, %4723 ]
  %4906 = phi float [ %4711, %4716 ], [ %4881, %4723 ]
  %4907 = phi float [ %4712, %4716 ], [ %4884, %4723 ]
  %4908 = select i1 %202, float 0.000000e+00, float %4902
  %4909 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %4893, float %4892, float %4891)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4895, float %4894, float %4903, float %4904, float %4905)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = fmul fast float %4911, 2.000000e+00
  %4913 = fmul fast float %4912, %4903
  %4914 = fmul fast float %4912, %4904
  %4915 = fmul fast float %4912, %4905
  %4916 = fsub fast float %4896, %4913
  %4917 = fsub fast float %4895, %4914
  %4918 = fsub fast float %4894, %4915
  %4919 = call float @dx.op.binary.f32(i32 36, float %4907, float 1.000000e+00)  ; FMin(a,b)
  %4920 = fsub fast float 1.000000e+00, %4907
  %4921 = bitcast float %4920 to i32
  %4922 = sub nsw i32 2129859010, %4921
  %4923 = fsub fast float 1.000000e+00, %53
  %4924 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4924, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4926 = fdiv fast float %4923, %4925
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %4928, 5.000000e-01
  %4930 = fadd fast float %4929, 5.000000e-01
  %4931 = fmul fast float %4930, %53
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = fmul fast float %4933, %4926
  %4935 = fadd fast float %4931, %4934
  %4936 = fsub fast float 5.000000e-01, %4929
  %4937 = fmul fast float %4936, %4897
  %4938 = fmul fast float %4936, %4898
  %4939 = fmul fast float %4936, %4899
  %4940 = fadd fast float %4935, %4937
  %4941 = fadd fast float %4935, %4938
  %4942 = fadd fast float %4935, %4939
  %4943 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4945 = fmul fast float %4944, 5.000000e-01
  %4946 = fadd fast float %4945, 5.000000e-01
  %4947 = fmul fast float %4946, %53
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4950 = fmul fast float %4949, %4926
  %4951 = fadd fast float %4947, %4950
  %4952 = fsub fast float 5.000000e-01, %4945
  %4953 = fmul fast float %4952, %4897
  %4954 = fmul fast float %4952, %4898
  %4955 = fmul fast float %4952, %4899
  %4956 = fadd fast float %4951, %4953
  %4957 = fadd fast float %4951, %4954
  %4958 = fadd fast float %4951, %4955
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = call float @dx.op.binary.f32(i32 36, float %4897, float %4960)  ; FMin(a,b)
  %4962 = fsub fast float 1.000000e+00, %4919
  %4963 = fmul fast float %4961, %4962
  %4964 = fsub fast float 1.000000e+00, %4963
  %4965 = bitcast float %4964 to i32
  %4966 = sub nsw i32 2129859010, %4965
  %4967 = bitcast i32 %4966 to float
  %4968 = call float @dx.op.binary.f32(i32 36, float %4898, float %4960)  ; FMin(a,b)
  %4969 = fmul fast float %4968, %4962
  %4970 = fsub fast float 1.000000e+00, %4969
  %4971 = bitcast float %4970 to i32
  %4972 = sub nsw i32 2129859010, %4971
  %4973 = bitcast i32 %4972 to float
  %4974 = call float @dx.op.binary.f32(i32 36, float %4899, float %4960)  ; FMin(a,b)
  %4975 = fmul fast float %4974, %4962
  %4976 = fsub fast float 1.000000e+00, %4975
  %4977 = bitcast float %4976 to i32
  %4978 = sub nsw i32 2129859010, %4977
  %4979 = bitcast i32 %4978 to float
  %4980 = fmul fast float %4919, %54
  %4981 = fmul fast float %4980, %4940
  %4982 = fmul fast float %4981, %4967
  %4983 = fmul fast float %4919, %55
  %4984 = fmul fast float %4983, %4941
  %4985 = fmul fast float %4984, %4973
  %4986 = fmul fast float %4919, %56
  %4987 = fmul fast float %4986, %4942
  %4988 = fmul fast float %4987, %4979
  %4989 = call float @dx.op.binary.f32(i32 36, float %4900, float %4960)  ; FMin(a,b)
  %4990 = fmul fast float %4989, %4962
  %4991 = fsub fast float 1.000000e+00, %4990
  %4992 = bitcast float %4991 to i32
  %4993 = sub nsw i32 2129859010, %4992
  %4994 = bitcast i32 %4993 to float
  %4995 = call float @dx.op.binary.f32(i32 36, float %4901, float %4960)  ; FMin(a,b)
  %4996 = fmul fast float %4995, %4962
  %4997 = fsub fast float 1.000000e+00, %4996
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = call float @dx.op.binary.f32(i32 36, float %4908, float %4960)  ; FMin(a,b)
  %5002 = fmul fast float %5001, %4962
  %5003 = fsub fast float 1.000000e+00, %5002
  %5004 = bitcast float %5003 to i32
  %5005 = sub nsw i32 2129859010, %5004
  %5006 = bitcast i32 %5005 to float
  %5007 = fmul fast float %4980, %4956
  %5008 = fmul fast float %5007, %4994
  %5009 = fmul fast float %4983, %4957
  %5010 = fmul fast float %5009, %5000
  %5011 = fmul fast float %4986, %4958
  %5012 = fmul fast float %5011, %5006
  %5013 = call float @dx.op.dot3.f32(i32 55, float %4982, float %4985, float %4988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5014 = select i1 %202, float 0.000000e+00, float %4982
  %5015 = select i1 %202, float %5013, float %4985
  %5016 = select i1 %202, float 0.000000e+00, float %4988
  %5017 = call float @dx.op.dot3.f32(i32 55, float %5008, float %5010, float %5012, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5018 = select i1 %202, float 0.000000e+00, float %5008
  %5019 = select i1 %202, float %5017, float %5010
  %5020 = select i1 %202, float 0.000000e+00, float %5012
  %5021 = fmul fast float %4910, 9.843750e-01
  %5022 = fmul fast float %4906, 9.843750e-01
  %5023 = fadd fast float %5021, 7.812500e-03
  %5024 = fadd fast float %5022, 7.812500e-03
  %5025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5023, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5026 = extractvalue %dx.types.ResRet.f32 %5025, 2
  %5027 = extractvalue %dx.types.ResRet.f32 %5025, 3
  %5028 = fmul fast float %5026, %4900
  %5029 = fmul fast float %5026, %4901
  %5030 = fmul fast float %5026, %4908
  %5031 = fadd fast float %5028, %5027
  %5032 = fadd fast float %5029, %5027
  %5033 = fadd fast float %5030, %5027
  %5034 = fcmp fast ogt float %3702, 0.000000e+00
  br i1 %5034, label %5035, label %5061

; <label>:5035                                    ; preds = %4890
  %5036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3702, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = extractvalue %dx.types.ResRet.f32 %5036, 1
  %5039 = extractvalue %dx.types.ResRet.f32 %5036, 2
  %5040 = fadd fast float %5037, -5.000000e-01
  %5041 = fadd fast float %5038, -5.000000e-01
  %5042 = fadd fast float %5039, -5.000000e-01
  %5043 = fsub fast float 1.000000e+00, %4900
  %5044 = fsub fast float 1.000000e+00, %4901
  %5045 = fsub fast float 1.000000e+00, %4908
  %5046 = fmul fast float %4900, 4.000000e+00
  %5047 = fmul fast float %5046, %5043
  %5048 = fmul fast float %5047, %5040
  %5049 = fmul fast float %4901, 4.000000e+00
  %5050 = fmul fast float %5049, %5044
  %5051 = fmul fast float %5050, %5041
  %5052 = fmul fast float %4908, 4.000000e+00
  %5053 = fmul fast float %5052, %5045
  %5054 = fmul fast float %5053, %5042
  %5055 = fadd fast float %5048, %5031
  %5056 = fadd fast float %5051, %5032
  %5057 = fadd fast float %5054, %5033
  %5058 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5059 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5060 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  br label %5061

; <label>:5061                                    ; preds = %5035, %4890
  %5062 = phi float [ %5058, %5035 ], [ %5031, %4890 ]
  %5063 = phi float [ %5059, %5035 ], [ %5032, %4890 ]
  %5064 = phi float [ %5060, %5035 ], [ %5033, %4890 ]
  %5065 = call float @dx.op.binary.f32(i32 35, float %5063, float %5064)  ; FMax(a,b)
  %5066 = call float @dx.op.binary.f32(i32 35, float %5062, float %5065)  ; FMax(a,b)
  %5067 = fsub fast float 1.000000e+00, %5066
  %5068 = fmul fast float %5067, %5014
  %5069 = fmul fast float %5067, %5015
  %5070 = fmul fast float %5067, %5016
  %5071 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4898, float %4899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5072 = fcmp fast ogt float %5071, 0x3E7FF19E20000000
  %5073 = fdiv fast float 1.000000e+00, %5071
  %5074 = select i1 %5072, float %5073, float 0.000000e+00
  %5075 = fmul fast float %5074, %4897
  %5076 = fmul fast float %5074, %4898
  %5077 = fmul fast float %5074, %4899
  %5078 = fadd fast float %5075, -1.000000e+00
  %5079 = fadd fast float %5076, -1.000000e+00
  %5080 = fadd fast float %5077, -1.000000e+00
  %5081 = fmul fast float %5078, 5.000000e-01
  %5082 = fmul fast float %5079, 5.000000e-01
  %5083 = fmul fast float %5080, 5.000000e-01
  %5084 = fadd fast float %5081, 1.000000e+00
  %5085 = fadd fast float %5082, 1.000000e+00
  %5086 = fadd fast float %5083, 1.000000e+00
  %5087 = fmul fast float %5062, %5018
  %5088 = fmul fast float %5063, %5019
  %5089 = fmul fast float %5064, %5020
  %5090 = fsub fast float 1.000000e+00, %4910
  %5091 = bitcast float %5090 to i32
  %5092 = sitofp i32 %5091 to float
  %5093 = fmul fast float %5092, 5.000000e+00
  %5094 = fadd fast float %5093, 0xC1EFBF8940000000
  %5095 = fptosi float %5094 to i32
  %5096 = bitcast i32 %5095 to float
  %5097 = fmul fast float %5096, %3703
  %5098 = fmul fast float %5014, %5097
  %5099 = fmul fast float %5098, %5067
  %5100 = fmul fast float %5099, %5084
  %5101 = fmul fast float %5015, %5097
  %5102 = fmul fast float %5101, %5067
  %5103 = fmul fast float %5102, %5085
  %5104 = fmul fast float %5016, %5097
  %5105 = fmul fast float %5104, %5067
  %5106 = fmul fast float %5105, %5086
  %5107 = fmul fast float %5068, %3699
  %5108 = fmul fast float %5069, %3699
  %5109 = fmul fast float %5070, %3699
  %5110 = fadd fast float %5087, %3695
  %5111 = fadd fast float %5110, %5100
  %5112 = fmul fast float %5111, %3699
  %5113 = fadd fast float %5088, %3696
  %5114 = fadd fast float %5113, %5103
  %5115 = fmul fast float %5114, %3699
  %5116 = fadd fast float %5089, %3697
  %5117 = fadd fast float %5116, %5106
  %5118 = fmul fast float %5117, %3699
  %5119 = bitcast i32 %4922 to float
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 3
  %5122 = fcmp fast oeq float %5121, 0.000000e+00
  br i1 %5122, label %5350, label %5123

; <label>:5123                                    ; preds = %5061
  %5124 = extractvalue %dx.types.CBufRet.f32 %5120, 0
  %5125 = extractvalue %dx.types.CBufRet.f32 %5120, 1
  %5126 = extractvalue %dx.types.CBufRet.f32 %5120, 2
  %5127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.f32 %5127, 0
  %5129 = extractvalue %dx.types.CBufRet.f32 %5127, 1
  %5130 = extractvalue %dx.types.CBufRet.f32 %5127, 2
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.CBufRet.f32 %5131, 1
  %5134 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5129, float %5130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = select i1 %202, float %5132, float %5128
  %5136 = select i1 %202, float %5134, float %5129
  %5137 = select i1 %202, float %5133, float %5130
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 1
  %5140 = fcmp fast une float %5139, 0.000000e+00
  br i1 %5140, label %5141, label %5158

; <label>:5141                                    ; preds = %5123
  %5142 = fptoui float %76 to i32
  %5143 = fptoui float %77 to i32
  %5144 = lshr i32 %5142, 4
  %5145 = lshr i32 %5143, 4
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = fptoui float %5147 to i32
  %5149 = add i32 %5148, 15
  %5150 = lshr i32 %5149, 4
  %5151 = mul i32 %5150, %5145
  %5152 = add i32 %5151, %5144
  %5153 = shl i32 %5152, 3
  %5154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5153, i32 undef)  ; BufferLoad(srv,index,wot)
  %5155 = extractvalue %dx.types.ResRet.i32 %5154, 0
  %5156 = and i32 %5155, -268435456
  %5157 = icmp eq i32 %5156, -1342177280
  br i1 %5157, label %5168, label %5158

; <label>:5158                                    ; preds = %5141, %5123
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 2
  %5161 = extractvalue %dx.types.CBufRet.f32 %5159, 3
  %5162 = fmul fast float %5160, %76
  %5163 = fmul fast float %5161, %77
  %5164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5162, float %5163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5165 = extractvalue %dx.types.ResRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.ResRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.ResRet.f32 %5164, 2
  br label %5168

; <label>:5168                                    ; preds = %5158, %5141
  %5169 = phi float [ %5165, %5158 ], [ 0.000000e+00, %5141 ]
  %5170 = phi float [ %5166, %5158 ], [ 0.000000e+00, %5141 ]
  %5171 = phi float [ %5167, %5158 ], [ 0.000000e+00, %5141 ]
  %5172 = call float @dx.op.binary.f32(i32 36, float %5170, float %5171)  ; FMin(a,b)
  %5173 = call float @dx.op.binary.f32(i32 36, float %5169, float %5172)  ; FMin(a,b)
  %5174 = fcmp fast ogt float %5173, 0.000000e+00
  br i1 %5174, label %5175, label %5350, !dx.controlflow.hints !74

; <label>:5175                                    ; preds = %5168
  %5176 = fmul fast float %5169, %5135
  %5177 = fmul fast float %5170, %5136
  %5178 = fmul fast float %5171, %5137
  %5179 = fsub fast float %5124, %4896
  %5180 = fsub fast float %5125, %4895
  %5181 = fsub fast float %5126, %4894
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float %5179, float %5180, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = call float @dx.op.unary.f32(i32 25, float %5182)  ; Rsqrt(value)
  %5184 = fmul fast float %5183, %5179
  %5185 = fmul fast float %5183, %5180
  %5186 = fmul fast float %5183, %5181
  %5187 = call float @dx.op.dot3.f32(i32 55, float %5124, float %5125, float %5126, float %4903, float %4904, float %4905)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = call float @dx.op.dot3.f32(i32 55, float %4893, float %4892, float %4891, float %5184, float %5185, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = fmul fast float %5189, %5189
  %5191 = fmul fast float %5190, %5119
  %5192 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5193 = fmul fast float %5192, %5189
  %5194 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %5184, float %5185, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = fmul fast float %5194, %5194
  %5196 = call float @dx.op.unary.f32(i32 6, float %5187)  ; FAbs(value)
  %5197 = fsub fast float 1.000000e+00, %4906
  %5198 = call float @dx.op.binary.f32(i32 35, float %5197, float 0x3F847AE140000000)  ; FMax(a,b)
  %5199 = fmul fast float %5198, %5198
  %5200 = fmul fast float %5199, %5199
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = fmul fast float %4910, %4910
  %5203 = fmul fast float %5202, %5201
  %5204 = fadd fast float %5203, %5200
  %5205 = bitcast float %5204 to i32
  %5206 = ashr i32 %5205, 1
  %5207 = add nsw i32 %5206, 532487669
  %5208 = bitcast i32 %5207 to float
  %5209 = fadd fast float %5208, %4910
  %5210 = fmul fast float %5200, %5195
  %5211 = fsub fast float 1.000000e+00, %5195
  %5212 = fadd fast float %5211, %5210
  %5213 = fmul fast float %5196, %5196
  %5214 = fmul fast float %5213, %5201
  %5215 = fadd fast float %5214, %5200
  %5216 = bitcast float %5215 to i32
  %5217 = ashr i32 %5216, 1
  %5218 = add nsw i32 %5217, 532487669
  %5219 = bitcast i32 %5218 to float
  %5220 = fadd fast float %5219, %5196
  %5221 = fmul fast float %5212, %5212
  %5222 = fmul fast float %5221, %5209
  %5223 = fmul fast float %5222, %5220
  %5224 = fdiv fast float 0x3FF0A00000000000, %5223
  %5225 = fmul fast float %5224, %5200
  %5226 = call float @dx.op.unary.f32(i32 6, float %5188)  ; FAbs(value)
  %5227 = fsub fast float 1.000000e+00, %5226
  %5228 = bitcast float %5227 to i32
  %5229 = sitofp i32 %5228 to float
  %5230 = fmul fast float %5229, 5.000000e+00
  %5231 = fadd fast float %5230, 0xC1EFBF8940000000
  %5232 = fptosi float %5231 to i32
  %5233 = bitcast i32 %5232 to float
  %5234 = fsub fast float 1.000000e+00, %4900
  %5235 = fsub fast float 1.000000e+00, %4901
  %5236 = fsub fast float 1.000000e+00, %4908
  %5237 = fmul fast float %5233, %5234
  %5238 = fmul fast float %5233, %5235
  %5239 = fmul fast float %5233, %5236
  %5240 = fadd fast float %5237, %4900
  %5241 = fadd fast float %5238, %4901
  %5242 = fadd fast float %5239, %4908
  br i1 %5034, label %5243, label %5266

; <label>:5243                                    ; preds = %5175
  %5244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3702, float %5226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5245 = extractvalue %dx.types.ResRet.f32 %5244, 0
  %5246 = extractvalue %dx.types.ResRet.f32 %5244, 1
  %5247 = extractvalue %dx.types.ResRet.f32 %5244, 2
  %5248 = fadd fast float %5245, -5.000000e-01
  %5249 = fadd fast float %5246, -5.000000e-01
  %5250 = fadd fast float %5247, -5.000000e-01
  %5251 = fmul fast float %4900, 4.000000e+00
  %5252 = fmul fast float %5251, %5234
  %5253 = fmul fast float %5252, %5248
  %5254 = fmul fast float %4901, 4.000000e+00
  %5255 = fmul fast float %5254, %5235
  %5256 = fmul fast float %5255, %5249
  %5257 = fmul fast float %4908, 4.000000e+00
  %5258 = fmul fast float %5257, %5236
  %5259 = fmul fast float %5258, %5250
  %5260 = fadd fast float %5253, %5240
  %5261 = fadd fast float %5256, %5241
  %5262 = fadd fast float %5259, %5242
  %5263 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5264 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  br label %5266

; <label>:5266                                    ; preds = %5243, %5175
  %5267 = phi float [ %5263, %5243 ], [ %5240, %5175 ]
  %5268 = phi float [ %5264, %5243 ], [ %5241, %5175 ]
  %5269 = phi float [ %5265, %5243 ], [ %5242, %5175 ]
  %5270 = fmul fast float %5187, 9.843750e-01
  %5271 = fadd fast float %5270, 7.812500e-03
  %5272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5271, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 2
  %5274 = extractvalue %dx.types.ResRet.f32 %5272, 3
  %5275 = fmul fast float %5273, %4900
  %5276 = fmul fast float %5273, %4901
  %5277 = fmul fast float %5273, %4908
  %5278 = fadd fast float %5275, %5274
  %5279 = fadd fast float %5276, %5274
  %5280 = fadd fast float %5277, %5274
  br i1 %5034, label %5281, label %5304

; <label>:5281                                    ; preds = %5266
  %5282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3702, float %5187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 0
  %5284 = extractvalue %dx.types.ResRet.f32 %5282, 1
  %5285 = extractvalue %dx.types.ResRet.f32 %5282, 2
  %5286 = fadd fast float %5283, -5.000000e-01
  %5287 = fadd fast float %5284, -5.000000e-01
  %5288 = fadd fast float %5285, -5.000000e-01
  %5289 = fmul fast float %4900, 4.000000e+00
  %5290 = fmul fast float %5289, %5234
  %5291 = fmul fast float %5290, %5286
  %5292 = fmul fast float %4901, 4.000000e+00
  %5293 = fmul fast float %5292, %5235
  %5294 = fmul fast float %5293, %5287
  %5295 = fmul fast float %4908, 4.000000e+00
  %5296 = fmul fast float %5295, %5236
  %5297 = fmul fast float %5296, %5288
  %5298 = fadd fast float %5291, %5278
  %5299 = fadd fast float %5294, %5279
  %5300 = fadd fast float %5297, %5280
  %5301 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5302 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  br label %5304

; <label>:5304                                    ; preds = %5281, %5266
  %5305 = phi float [ %5301, %5281 ], [ %5278, %5266 ]
  %5306 = phi float [ %5302, %5281 ], [ %5279, %5266 ]
  %5307 = phi float [ %5303, %5281 ], [ %5280, %5266 ]
  %5308 = call float @dx.op.binary.f32(i32 35, float %5306, float %5307)  ; FMax(a,b)
  %5309 = call float @dx.op.binary.f32(i32 35, float %5305, float %5308)  ; FMax(a,b)
  %5310 = fsub fast float 1.000000e+00, %5309
  %5311 = fmul fast float %5267, %5225
  %5312 = fmul fast float %5268, %5225
  %5313 = fmul fast float %5269, %5225
  %5314 = fsub fast float 1.000000e+00, %5188
  %5315 = bitcast float %5314 to i32
  %5316 = sitofp i32 %5315 to float
  %5317 = fmul fast float %5316, 5.000000e+00
  %5318 = fadd fast float %5317, 0xC1EFBF8940000000
  %5319 = fptosi float %5318 to i32
  %5320 = bitcast i32 %5319 to float
  %5321 = fmul fast float %5320, %3703
  %5322 = fmul fast float %5310, %5321
  %5323 = fmul fast float %5322, %5084
  %5324 = fmul fast float %5322, %5085
  %5325 = fmul fast float %5322, %5086
  %5326 = fadd fast float %5323, %5311
  %5327 = fadd fast float %5324, %5312
  %5328 = fadd fast float %5325, %5313
  %5329 = fmul fast float %5193, %5176
  %5330 = fmul fast float %5329, %5310
  %5331 = fmul fast float %5193, %5177
  %5332 = fmul fast float %5331, %5310
  %5333 = fmul fast float %5193, %5178
  %5334 = fmul fast float %5333, %5310
  %5335 = fmul fast float %5329, %5326
  %5336 = fmul fast float %5331, %5327
  %5337 = fmul fast float %5333, %5328
  %5338 = fadd fast float %5330, %5068
  %5339 = fmul fast float %5338, %3699
  %5340 = fadd fast float %5332, %5069
  %5341 = fmul fast float %5340, %3699
  %5342 = fadd fast float %5334, %5070
  %5343 = fmul fast float %5342, %3699
  %5344 = fadd fast float %5335, %5111
  %5345 = fmul fast float %5344, %3699
  %5346 = fadd fast float %5336, %5114
  %5347 = fmul fast float %5346, %3699
  %5348 = fadd fast float %5337, %5117
  %5349 = fmul fast float %5348, %3699
  br label %5350

; <label>:5350                                    ; preds = %5304, %5168, %5061
  %5351 = phi float [ %5112, %5061 ], [ %5112, %5168 ], [ %5345, %5304 ]
  %5352 = phi float [ %5115, %5061 ], [ %5115, %5168 ], [ %5347, %5304 ]
  %5353 = phi float [ %5118, %5061 ], [ %5118, %5168 ], [ %5349, %5304 ]
  %5354 = phi float [ %5107, %5061 ], [ %5107, %5168 ], [ %5339, %5304 ]
  %5355 = phi float [ %5108, %5061 ], [ %5108, %5168 ], [ %5341, %5304 ]
  %5356 = phi float [ %5109, %5061 ], [ %5109, %5168 ], [ %5343, %5304 ]
  %5357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.i32 %5357, 0
  %5359 = icmp eq i32 %5358, 0
  br i1 %5359, label %5794, label %5360

; <label>:5360                                    ; preds = %5350
  %5361 = fptoui float %76 to i32
  %5362 = fptoui float %77 to i32
  %5363 = lshr i32 %5361, 4
  %5364 = lshr i32 %5362, 4
  %5365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5366 = extractvalue %dx.types.CBufRet.i32 %5365, 0
  %5367 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5364, i32 %5366, i32 %5363)  ; UMad(a,b,c)
  %5368 = add nsw i32 %5358, -1
  %5369 = call i32 @dx.op.binary.i32(i32 37, i32 %5368, i32 0)  ; IMax(a,b)
  %5370 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5371 = fptoui float %5370 to i32
  %5372 = lshr i32 %5371, 5
  %5373 = call i32 @dx.op.binary.i32(i32 40, i32 %5372, i32 8191)  ; UMin(a,b)
  %5374 = shl i32 %5373, 2
  %5375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5374, i32 undef)  ; BufferLoad(srv,index,wot)
  %5376 = extractvalue %dx.types.ResRet.i32 %5375, 0
  %5377 = lshr i32 %5376, 16
  %5378 = and i32 %5376, 65535
  %5379 = lshr i32 %5376, 21
  %5380 = lshr i32 %5378, 5
  %5381 = call i32 @dx.op.binary.i32(i32 40, i32 %5380, i32 %5369)  ; UMin(a,b)
  %5382 = icmp ugt i32 %5379, %5381
  br i1 %5382, label %5794, label %5383

; <label>:5383                                    ; preds = %5360
  br label %5384

; <label>:5384                                    ; preds = %5784, %5383
  %5385 = phi i32 [ %5791, %5784 ], [ %5379, %5383 ]
  %5386 = phi float [ %5785, %5784 ], [ %5351, %5383 ]
  %5387 = phi float [ %5786, %5784 ], [ %5352, %5383 ]
  %5388 = phi float [ %5787, %5784 ], [ %5353, %5383 ]
  %5389 = phi float [ %5788, %5784 ], [ %5354, %5383 ]
  %5390 = phi float [ %5789, %5784 ], [ %5355, %5383 ]
  %5391 = phi float [ %5790, %5784 ], [ %5356, %5383 ]
  %5392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.i32 %5392, 0
  %5394 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5367, i32 %5393, i32 %5385)  ; UMad(a,b,c)
  %5395 = shl i32 %5394, 2
  %5396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5395, i32 undef)  ; BufferLoad(srv,index,wot)
  %5397 = extractvalue %dx.types.ResRet.i32 %5396, 0
  %5398 = shl i32 %5385, 5
  %5399 = sub nsw i32 %5377, %5398
  %5400 = call i32 @dx.op.binary.i32(i32 37, i32 %5399, i32 0)  ; IMax(a,b)
  %5401 = call i32 @dx.op.binary.i32(i32 38, i32 %5400, i32 31)  ; IMin(a,b)
  %5402 = sub nsw i32 1, %5377
  %5403 = add nsw i32 %5402, %5378
  %5404 = call i32 @dx.op.binary.i32(i32 37, i32 %5403, i32 0)  ; IMax(a,b)
  %5405 = call i32 @dx.op.binary.i32(i32 38, i32 %5404, i32 32)  ; IMin(a,b)
  %5406 = and i32 %5405, 31
  %5407 = shl i32 -1, %5406
  %5408 = xor i32 %5407, -1
  %5409 = and i32 %5401, 31
  %5410 = shl i32 %5408, %5409
  %5411 = icmp eq i32 %5405, 32
  %5412 = select i1 %5411, i32 -1, i32 %5410
  %5413 = and i32 %5412, %5397
  %5414 = icmp eq i32 %5413, 0
  br i1 %5414, label %5784, label %5415

; <label>:5415                                    ; preds = %5384
  br label %5416

; <label>:5416                                    ; preds = %5496, %5415
  %5417 = phi i32 [ %5428, %5496 ], [ %5413, %5415 ]
  %5418 = phi float [ %5497, %5496 ], [ %5386, %5415 ]
  %5419 = phi float [ %5498, %5496 ], [ %5387, %5415 ]
  %5420 = phi float [ %5499, %5496 ], [ %5388, %5415 ]
  %5421 = phi float [ %5500, %5496 ], [ %5389, %5415 ]
  %5422 = phi float [ %5501, %5496 ], [ %5390, %5415 ]
  %5423 = phi float [ %5502, %5496 ], [ %5391, %5415 ]
  %5424 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5417)  ; FirstbitLo(value)
  %5425 = add i32 %5424, %5398
  %5426 = and i32 %5424, 31
  %5427 = shl i32 1, %5426
  %5428 = xor i32 %5427, %5417
  %5429 = mul i32 %5425, 112
  %5430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5431 = extractvalue %dx.types.ResRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.ResRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.ResRet.f32 %5430, 2
  %5434 = or i32 %5429, 12
  %5435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5436 = extractvalue %dx.types.ResRet.f32 %5435, 0
  %5437 = add i32 %5429, 44
  %5438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5437, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = add i32 %5429, 48
  %5441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5440, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.ResRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.ResRet.f32 %5441, 2
  %5445 = add i32 %5429, 80
  %5446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5445, i32 undef)  ; BufferLoad(srv,index,wot)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 1
  %5448 = extractvalue %dx.types.ResRet.f32 %5446, 2
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = select i1 %202, float %5447, float %5431
  %5451 = select i1 %202, float %5449, float %5432
  %5452 = select i1 %202, float %5448, float %5433
  %5453 = fsub fast float %5442, %163
  %5454 = fsub fast float %5443, %164
  %5455 = fsub fast float %5444, %165
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = call float @dx.op.unary.f32(i32 24, float %5456)  ; Sqrt(value)
  %5458 = fdiv fast float 1.000000e+00, %5457
  %5459 = fmul fast float %5458, %5453
  %5460 = fmul fast float %5458, %5454
  %5461 = fmul fast float %5458, %5455
  %5462 = fadd fast float %5457, %5436
  %5463 = fdiv fast float 1.000000e+00, %5462
  %5464 = fmul float %5439, %5463
  %5465 = fmul float %5464, %5464
  %5466 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5467 = and i32 %5427, %5413
  %5468 = icmp eq i32 %5467, 0
  br i1 %5468, label %5491, label %5469, !dx.controlflow.hints !75

; <label>:5469                                    ; preds = %5416
  %5470 = lshr i32 %5361, 5
  %5471 = lshr i32 %5362, 5
  %5472 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5470, i32 %5471, i32 %5425, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5473 = extractvalue %dx.types.ResRet.i32 %5472, 0
  %5474 = and i32 %5473, 3
  %5475 = icmp eq i32 %5474, 0
  %5476 = select i1 %5475, float 1.000000e+00, float 0.000000e+00
  %5477 = icmp eq i32 %5474, 3
  br i1 %5477, label %5478, label %5491

; <label>:5478                                    ; preds = %5469
  %5479 = lshr i32 %5473, 10
  %5480 = and i32 %5479, 8160
  %5481 = and i32 %5362, 31
  %5482 = or i32 %5480, %5481
  %5483 = lshr i32 %5473, 1
  %5484 = and i32 %5483, 16352
  %5485 = and i32 %5361, 31
  %5486 = or i32 %5484, %5485
  %5487 = lshr i32 %5473, 23
  %5488 = and i32 %5487, 255
  %5489 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5486, i32 %5482, i32 %5488, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5490 = extractvalue %dx.types.ResRet.f32 %5489, 0
  br label %5491

; <label>:5491                                    ; preds = %5478, %5469, %5416
  %5492 = phi float [ %5490, %5478 ], [ %5476, %5469 ], [ 0.000000e+00, %5416 ]
  %5493 = call float @dx.op.binary.f32(i32 36, float %5492, float %5492)  ; FMin(a,b)
  %5494 = call float @dx.op.binary.f32(i32 36, float %5492, float %5493)  ; FMin(a,b)
  %5495 = fcmp fast ogt float %5494, 0.000000e+00
  br i1 %5495, label %5504, label %5496, !dx.controlflow.hints !76

; <label>:5496                                    ; preds = %5740, %5491
  %5497 = phi float [ %5418, %5491 ], [ %5780, %5740 ]
  %5498 = phi float [ %5419, %5491 ], [ %5781, %5740 ]
  %5499 = phi float [ %5420, %5491 ], [ %5782, %5740 ]
  %5500 = phi float [ %5421, %5491 ], [ %5774, %5740 ]
  %5501 = phi float [ %5422, %5491 ], [ %5775, %5740 ]
  %5502 = phi float [ %5423, %5491 ], [ %5776, %5740 ]
  %5503 = icmp eq i32 %5417, %5427
  br i1 %5503, label %5783, label %5416

; <label>:5504                                    ; preds = %5491
  %5505 = fmul fast float %5492, %5450
  %5506 = fmul fast float %5492, %5451
  %5507 = fmul fast float %5492, %5452
  %5508 = fsub fast float %5444, %4104
  %5509 = fcmp fast ogt float %5508, 0.000000e+00
  %5510 = fsub fast float %165, %4104
  %5511 = fcmp fast ogt float %5510, 0.000000e+00
  %5512 = xor i1 %5511, %5509
  %5513 = fsub fast float %4104, %5444
  %5514 = fmul fast float %5513, 2.000000e+00
  %5515 = fadd fast float %5514, %5444
  %5516 = select i1 %5512, float %5444, float %5515
  %5517 = fsub fast float %5516, %165
  %5518 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5517, float %5453, float %5454, float %5517)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = call float @dx.op.unary.f32(i32 25, float %5518)  ; Rsqrt(value)
  %5520 = fmul fast float %5519, %5453
  %5521 = fmul fast float %5519, %5454
  %5522 = fmul fast float %5519, %5517
  %5523 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4112)  ; Dot3(ax,ay,az,bx,by,bz)
  %5524 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5520, float %5521, float %5522)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = fdiv fast float 1.000000e+00, %5524
  %5526 = fmul fast float %5525, %5523
  %5527 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5510, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = fcmp fast ogt float %5527, 0.000000e+00
  %5529 = fcmp fast olt float %5527, 0.000000e+00
  %5530 = zext i1 %5528 to i32
  %5531 = zext i1 %5529 to i32
  %5532 = sub nsw i32 %5530, %5531
  %5533 = sitofp i32 %5532 to float
  %5534 = fsub fast float %5516, %4104
  %5535 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5534, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5536 = fcmp fast ogt float %5535, 0.000000e+00
  %5537 = fcmp fast olt float %5535, 0.000000e+00
  %5538 = zext i1 %5536 to i32
  %5539 = zext i1 %5537 to i32
  %5540 = sub nsw i32 %5538, %5539
  %5541 = sitofp i32 %5540 to float
  %5542 = fcmp fast une float %5533, %5541
  br i1 %5542, label %5543, label %5553

; <label>:5543                                    ; preds = %5504
  %5544 = fmul fast float %5526, %5522
  %5545 = fmul fast float %5526, %5521
  %5546 = fmul fast float %5526, %5520
  %5547 = fmul fast float %5546, %5546
  %5548 = fmul fast float %5545, %5545
  %5549 = fadd fast float %5547, %5548
  %5550 = fmul fast float %5544, %5544
  %5551 = fadd fast float %5549, %5550
  %5552 = call float @dx.op.unary.f32(i32 24, float %5551)  ; Sqrt(value)
  br label %5565

; <label>:5553                                    ; preds = %5504
  %5554 = icmp slt i32 %5532, 0
  br i1 %5554, label %5555, label %5565

; <label>:5555                                    ; preds = %5553
  %5556 = fsub fast float %163, %5442
  %5557 = fsub fast float %164, %5443
  %5558 = fsub fast float %165, %5516
  %5559 = fmul fast float %5556, %5556
  %5560 = fmul fast float %5557, %5557
  %5561 = fadd fast float %5559, %5560
  %5562 = fmul fast float %5558, %5558
  %5563 = fadd fast float %5561, %5562
  %5564 = call float @dx.op.unary.f32(i32 24, float %5563)  ; Sqrt(value)
  br label %5565

; <label>:5565                                    ; preds = %5555, %5553, %5543
  %5566 = phi float [ %5552, %5543 ], [ %5564, %5555 ], [ 0.000000e+00, %5553 ]
  %5567 = and i1 %5511, %5509
  %5568 = fsub fast float -0.000000e+00, %5566
  %5569 = select i1 %5567, float -0.000000e+00, float %5568
  %5570 = fmul fast float %4105, 0x3FF7154760000000
  %5571 = fmul fast float %5570, %5569
  %5572 = fmul fast float %4106, 0x3FF7154760000000
  %5573 = fmul fast float %5572, %5569
  %5574 = fmul fast float %4107, 0x3FF7154760000000
  %5575 = fmul fast float %5574, %5569
  %5576 = call float @dx.op.unary.f32(i32 21, float %5571)  ; Exp(value)
  %5577 = call float @dx.op.unary.f32(i32 21, float %5573)  ; Exp(value)
  %5578 = call float @dx.op.unary.f32(i32 21, float %5575)  ; Exp(value)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5580 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5581 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5582 = fmul fast float %5505, %5579
  %5583 = fmul fast float %5506, %5580
  %5584 = fmul fast float %5507, %5581
  %5585 = fsub fast float %5459, %4896
  %5586 = fsub fast float %5460, %4895
  %5587 = fsub fast float %5461, %4894
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float %5585, float %5586, float %5587)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.unary.f32(i32 25, float %5588)  ; Rsqrt(value)
  %5590 = fmul fast float %5589, %5585
  %5591 = fmul fast float %5589, %5586
  %5592 = fmul fast float %5589, %5587
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float %4903, float %4904, float %4905)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = call float @dx.op.dot3.f32(i32 55, float %4893, float %4892, float %4891, float %5590, float %5591, float %5592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5596 = fmul fast float %5595, %5466
  %5597 = fmul fast float %5595, %5595
  %5598 = fmul fast float %5597, %5119
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = fmul fast float %5596, %5599
  %5601 = bitcast float %5456 to i32
  %5602 = ashr i32 %5601, 1
  %5603 = sub nsw i32 1597463007, %5602
  %5604 = bitcast i32 %5603 to float
  %5605 = fmul fast float %5604, %5453
  %5606 = fmul fast float %5604, %5454
  %5607 = fmul fast float %5604, %5455
  %5608 = fsub fast float %5605, %4896
  %5609 = fsub fast float %5606, %4895
  %5610 = fsub fast float %5607, %4894
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.unary.f32(i32 25, float %5611)  ; Rsqrt(value)
  %5613 = fmul fast float %5608, %5612
  %5614 = fmul fast float %5609, %5612
  %5615 = fmul fast float %5610, %5612
  %5616 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = fmul fast float %5616, %5616
  %5618 = call float @dx.op.unary.f32(i32 6, float %5593)  ; FAbs(value)
  %5619 = fsub fast float 1.000000e+00, %4906
  %5620 = call float @dx.op.binary.f32(i32 35, float %5619, float 0x3F847AE140000000)  ; FMax(a,b)
  %5621 = fmul fast float %5620, %5620
  %5622 = fmul fast float %5621, %5621
  %5623 = fsub fast float 1.000000e+00, %5622
  %5624 = fmul fast float %4910, %4910
  %5625 = fmul fast float %5624, %5623
  %5626 = fadd fast float %5625, %5622
  %5627 = bitcast float %5626 to i32
  %5628 = ashr i32 %5627, 1
  %5629 = add nsw i32 %5628, 532487669
  %5630 = bitcast i32 %5629 to float
  %5631 = fadd fast float %5630, %4910
  %5632 = fmul fast float %5622, %5617
  %5633 = fsub fast float 1.000000e+00, %5617
  %5634 = fadd fast float %5633, %5632
  %5635 = fmul fast float %5618, %5618
  %5636 = fmul fast float %5635, %5623
  %5637 = fadd fast float %5636, %5622
  %5638 = bitcast float %5637 to i32
  %5639 = ashr i32 %5638, 1
  %5640 = add nsw i32 %5639, 532487669
  %5641 = bitcast i32 %5640 to float
  %5642 = fadd fast float %5641, %5618
  %5643 = fmul fast float %5634, %5634
  %5644 = fmul fast float %5643, %5631
  %5645 = fmul fast float %5644, %5642
  %5646 = fdiv fast float 1.000000e+00, %5645
  %5647 = bitcast float %5622 to i32
  %5648 = sitofp i32 %5647 to float
  %5649 = fmul fast float %5648, 0x3FE7F73180000000
  %5650 = fadd fast float %5649, 0x41AFE27C40000000
  %5651 = fptosi float %5650 to i32
  %5652 = bitcast i32 %5651 to float
  %5653 = fmul fast float %5439, 0x3FD80E9D60000000
  %5654 = fmul fast float %5653, %5604
  %5655 = fadd fast float %5652, %5654
  %5656 = bitcast float %5655 to i32
  %5657 = sub nsw i32 2129859010, %5656
  %5658 = bitcast i32 %5657 to float
  %5659 = fmul fast float %5622, %5646
  %5660 = fmul fast float %5659, %5652
  %5661 = fmul fast float %5660, %5658
  %5662 = call float @dx.op.unary.f32(i32 6, float %5594)  ; FAbs(value)
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = bitcast float %5663 to i32
  %5665 = sitofp i32 %5664 to float
  %5666 = fmul fast float %5665, 5.000000e+00
  %5667 = fadd fast float %5666, 0xC1EFBF8940000000
  %5668 = fptosi float %5667 to i32
  %5669 = bitcast i32 %5668 to float
  %5670 = fsub fast float 1.000000e+00, %4900
  %5671 = fsub fast float 1.000000e+00, %4901
  %5672 = fsub fast float 1.000000e+00, %4908
  %5673 = fmul fast float %5669, %5670
  %5674 = fmul fast float %5669, %5671
  %5675 = fmul fast float %5669, %5672
  %5676 = fadd fast float %5673, %4900
  %5677 = fadd fast float %5674, %4901
  %5678 = fadd fast float %5675, %4908
  br i1 %5034, label %5679, label %5702

; <label>:5679                                    ; preds = %5565
  %5680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3702, float %5662, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.ResRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.ResRet.f32 %5680, 2
  %5684 = fadd fast float %5681, -5.000000e-01
  %5685 = fadd fast float %5682, -5.000000e-01
  %5686 = fadd fast float %5683, -5.000000e-01
  %5687 = fmul fast float %4900, 4.000000e+00
  %5688 = fmul fast float %5687, %5670
  %5689 = fmul fast float %5688, %5684
  %5690 = fmul fast float %4901, 4.000000e+00
  %5691 = fmul fast float %5690, %5671
  %5692 = fmul fast float %5691, %5685
  %5693 = fmul fast float %4908, 4.000000e+00
  %5694 = fmul fast float %5693, %5672
  %5695 = fmul fast float %5694, %5686
  %5696 = fadd fast float %5689, %5676
  %5697 = fadd fast float %5692, %5677
  %5698 = fadd fast float %5695, %5678
  %5699 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5700 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5701 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  br label %5702

; <label>:5702                                    ; preds = %5679, %5565
  %5703 = phi float [ %5699, %5679 ], [ %5676, %5565 ]
  %5704 = phi float [ %5700, %5679 ], [ %5677, %5565 ]
  %5705 = phi float [ %5701, %5679 ], [ %5678, %5565 ]
  %5706 = fmul fast float %5593, 9.843750e-01
  %5707 = fadd fast float %5706, 7.812500e-03
  %5708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5707, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5709 = extractvalue %dx.types.ResRet.f32 %5708, 2
  %5710 = extractvalue %dx.types.ResRet.f32 %5708, 3
  %5711 = fmul fast float %5709, %4900
  %5712 = fmul fast float %5709, %4901
  %5713 = fmul fast float %5709, %4908
  %5714 = fadd fast float %5711, %5710
  %5715 = fadd fast float %5712, %5710
  %5716 = fadd fast float %5713, %5710
  br i1 %5034, label %5717, label %5740

; <label>:5717                                    ; preds = %5702
  %5718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3702, float %5593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5719 = extractvalue %dx.types.ResRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.ResRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.ResRet.f32 %5718, 2
  %5722 = fadd fast float %5719, -5.000000e-01
  %5723 = fadd fast float %5720, -5.000000e-01
  %5724 = fadd fast float %5721, -5.000000e-01
  %5725 = fmul fast float %4900, 4.000000e+00
  %5726 = fmul fast float %5725, %5670
  %5727 = fmul fast float %5726, %5722
  %5728 = fmul fast float %4901, 4.000000e+00
  %5729 = fmul fast float %5728, %5671
  %5730 = fmul fast float %5729, %5723
  %5731 = fmul fast float %4908, 4.000000e+00
  %5732 = fmul fast float %5731, %5672
  %5733 = fmul fast float %5732, %5724
  %5734 = fadd fast float %5727, %5714
  %5735 = fadd fast float %5730, %5715
  %5736 = fadd fast float %5733, %5716
  %5737 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5738 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5739 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  br label %5740

; <label>:5740                                    ; preds = %5717, %5702
  %5741 = phi float [ %5737, %5717 ], [ %5714, %5702 ]
  %5742 = phi float [ %5738, %5717 ], [ %5715, %5702 ]
  %5743 = phi float [ %5739, %5717 ], [ %5716, %5702 ]
  %5744 = call float @dx.op.binary.f32(i32 35, float %5742, float %5743)  ; FMax(a,b)
  %5745 = call float @dx.op.binary.f32(i32 35, float %5741, float %5744)  ; FMax(a,b)
  %5746 = fsub fast float 1.000000e+00, %5745
  %5747 = fmul fast float %5703, %5661
  %5748 = fmul fast float %5704, %5661
  %5749 = fmul fast float %5705, %5661
  %5750 = fsub fast float 1.000000e+00, %5594
  %5751 = bitcast float %5750 to i32
  %5752 = sitofp i32 %5751 to float
  %5753 = fmul fast float %5752, 5.000000e+00
  %5754 = fadd fast float %5753, 0xC1EFBF8940000000
  %5755 = fptosi float %5754 to i32
  %5756 = bitcast i32 %5755 to float
  %5757 = fmul fast float %5756, %3703
  %5758 = fmul fast float %5746, %5757
  %5759 = fmul fast float %5758, %5084
  %5760 = fmul fast float %5758, %5085
  %5761 = fmul fast float %5758, %5086
  %5762 = fadd fast float %5759, %5747
  %5763 = fadd fast float %5760, %5748
  %5764 = fadd fast float %5761, %5749
  %5765 = fmul fast float %5582, %3699
  %5766 = fmul fast float %5765, %5600
  %5767 = fmul fast float %5766, %5746
  %5768 = fmul fast float %5583, %3699
  %5769 = fmul fast float %5768, %5600
  %5770 = fmul fast float %5769, %5746
  %5771 = fmul fast float %5584, %3699
  %5772 = fmul fast float %5771, %5600
  %5773 = fmul fast float %5772, %5746
  %5774 = fadd fast float %5767, %5421
  %5775 = fadd fast float %5770, %5422
  %5776 = fadd fast float %5773, %5423
  %5777 = fmul fast float %5766, %5762
  %5778 = fmul fast float %5769, %5763
  %5779 = fmul fast float %5772, %5764
  %5780 = fadd fast float %5777, %5418
  %5781 = fadd fast float %5778, %5419
  %5782 = fadd fast float %5779, %5420
  br label %5496

; <label>:5783                                    ; preds = %5496
  br label %5784

; <label>:5784                                    ; preds = %5783, %5384
  %5785 = phi float [ %5386, %5384 ], [ %5497, %5783 ]
  %5786 = phi float [ %5387, %5384 ], [ %5498, %5783 ]
  %5787 = phi float [ %5388, %5384 ], [ %5499, %5783 ]
  %5788 = phi float [ %5389, %5384 ], [ %5500, %5783 ]
  %5789 = phi float [ %5390, %5384 ], [ %5501, %5783 ]
  %5790 = phi float [ %5391, %5384 ], [ %5502, %5783 ]
  %5791 = add i32 %5385, 1
  %5792 = icmp ugt i32 %5791, %5381
  br i1 %5792, label %5793, label %5384

; <label>:5793                                    ; preds = %5784
  br label %5794

; <label>:5794                                    ; preds = %5793, %5360, %5350
  %5795 = phi float [ %5351, %5350 ], [ %5351, %5360 ], [ %5785, %5793 ]
  %5796 = phi float [ %5352, %5350 ], [ %5352, %5360 ], [ %5786, %5793 ]
  %5797 = phi float [ %5353, %5350 ], [ %5353, %5360 ], [ %5787, %5793 ]
  %5798 = phi float [ %5354, %5350 ], [ %5354, %5360 ], [ %5788, %5793 ]
  %5799 = phi float [ %5355, %5350 ], [ %5355, %5360 ], [ %5789, %5793 ]
  %5800 = phi float [ %5356, %5350 ], [ %5356, %5360 ], [ %5790, %5793 ]
  %5801 = call float @dx.op.unary.f32(i32 24, float %4897)  ; Sqrt(value)
  %5802 = call float @dx.op.unary.f32(i32 24, float %4898)  ; Sqrt(value)
  %5803 = call float @dx.op.unary.f32(i32 24, float %4899)  ; Sqrt(value)
  %5804 = fmul fast float %5801, %5798
  %5805 = fmul fast float %5802, %5799
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  br i1 %202, label %5808, label %5837

; <label>:5808                                    ; preds = %5794
  %5809 = fadd fast float %5800, %3705
  %5810 = fmul fast float %5809, %3707
  %5811 = fsub fast float 1.000000e+00, %3707
  %5812 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5814 = extractvalue %dx.types.CBufRet.f32 %5813, 3
  %5815 = fmul fast float %5814, %5812
  %5816 = fadd fast float %5815, %5810
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = fmul fast float %5818, %5090
  %5820 = fsub fast float %5816, %5819
  %5821 = fadd fast float %5805, %5804
  %5822 = fmul fast float %5807, %5821
  %5823 = extractvalue %dx.types.CBufRet.f32 %5813, 1
  %5824 = fsub fast float %5820, %5823
  %5825 = extractvalue %dx.types.CBufRet.f32 %5813, 2
  %5826 = fmul fast float %5824, %5825
  %5827 = call float @dx.op.unary.f32(i32 7, float %5826)  ; Saturate(value)
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = fsub fast float %5827, %5829
  %5831 = fmul fast float %5830, 1.000000e+01
  %5832 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5833 = fadd fast float %3706, -1.000000e+00
  %5834 = fmul fast float %5832, %5833
  %5835 = fadd fast float %5834, 1.000000e+00
  %5836 = fmul fast float %5835, %5827
  br label %5853

; <label>:5837                                    ; preds = %5794
  %5838 = fmul fast float %5803, %5800
  %5839 = fmul fast float %5807, %5804
  %5840 = fmul fast float %5807, %5805
  %5841 = fmul fast float %5838, %5807
  %5842 = add i32 %32, 356
  %5843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5842, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.i32 %5843, 0
  %5845 = and i32 %5844, 32
  %5846 = icmp eq i32 %5845, 0
  br i1 %5846, label %5853, label %5847

; <label>:5847                                    ; preds = %5837
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 0
  %5850 = fmul fast float %5849, 0x3FE99999A0000000
  %5851 = fadd fast float %5849, %5839
  %5852 = fadd fast float %5850, %5841
  br label %5853

; <label>:5853                                    ; preds = %5847, %5837, %5808
  %5854 = phi float [ %5822, %5808 ], [ %5851, %5847 ], [ %5839, %5837 ]
  %5855 = phi float [ %5836, %5808 ], [ %5840, %5847 ], [ %5840, %5837 ]
  %5856 = phi float [ %5835, %5808 ], [ %5852, %5847 ], [ %5841, %5837 ]
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  %5859 = fmul fast float %5858, %5796
  %5860 = fmul fast float %5858, %5797
  %5861 = fadd fast float %5796, %5795
  %5862 = select i1 %202, float %5861, float %5795
  %5863 = fmul float %5862, %5858
  %5864 = select i1 %202, float 0.000000e+00, float %5859
  %5865 = select i1 %202, float 0.000000e+00, float %5860
  %5866 = fmul fast float %5854, %5801
  %5867 = fmul fast float %5855, %5802
  %5868 = fmul fast float %5856, %5803
  %5869 = fadd fast float %5863, %5866
  %5870 = fadd fast float %5864, %5867
  %5871 = fadd fast float %5865, %5868
  %5872 = select i1 %202, float %5855, float %5870
  %5873 = select i1 %202, float %5856, float %5871
  %5874 = call float @dx.op.binary.f32(i32 36, float %5869, float 3.225500e+04)  ; FMin(a,b)
  %5875 = call float @dx.op.binary.f32(i32 36, float %5872, float 3.225500e+04)  ; FMin(a,b)
  %5876 = call float @dx.op.binary.f32(i32 36, float %5873, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5874)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5875)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5876)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

