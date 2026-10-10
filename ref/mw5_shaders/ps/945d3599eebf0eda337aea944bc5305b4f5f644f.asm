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
; shader hash: 4421dab98166d885b5014fc74b11f3d3
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
  %396 = add i32 %32, 492
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
  %554 = add i32 %32, 376
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
  %577 = add i32 %32, 460
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
  %775 = add i32 %32, 392
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
  %859 = add i32 %32, 408
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
  %1036 = add i32 %32, 444
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
  %1088 = add i32 %32, 428
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
  %1114 = add i32 %32, 380
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
  %1137 = add i32 %32, 464
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
  %1335 = add i32 %32, 396
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
  %1419 = add i32 %32, 412
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
  %1775 = add i32 %32, 448
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
  %1827 = add i32 %32, 432
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
  %1853 = add i32 %32, 384
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
  %1876 = add i32 %32, 468
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
  %2074 = add i32 %32, 400
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
  %2158 = add i32 %32, 416
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
  %2514 = add i32 %32, 452
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
  %2566 = add i32 %32, 436
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
  %2592 = add i32 %32, 388
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
  %2615 = add i32 %32, 472
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
  %2813 = add i32 %32, 404
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
  %2897 = add i32 %32, 420
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
  %3139 = add i32 %32, 360
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = extractvalue %dx.types.ResRet.i32 %3140, 1
  %3143 = bitcast i32 %3141 to float
  %3144 = bitcast i32 %3142 to float
  %3145 = fcmp fast oge float %3143, 0.000000e+00
  %3146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3147 = extractvalue %dx.types.CBufRet.f32 %3146, 0
  %3148 = select i1 %3145, float %3143, float %3147
  %3149 = add i32 %32, 456
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = add i32 %3151, 0
  %3153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3153, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  %3156 = fmul fast float %3155, %3144
  %3157 = fadd fast float %3156, %3148
  %3158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3159 = extractvalue %dx.types.CBufRet.f32 %3158, 0
  %3160 = fmul fast float %3159, %3132
  %3161 = fmul fast float %3159, %3133
  %3162 = fmul fast float %3159, %3134
  %3163 = call float @dx.op.dot2.f32(i32 54, float %3127, float %3128, float %3127, float %3128)  ; Dot2(ax,ay,bx,by)
  %3164 = fmul fast float %3163, 0x3FE3333340000000
  %3165 = fsub fast float 1.000000e+00, %3164
  %3166 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3128, float %3165, float %3127, float %3128, float %3165)  ; Dot3(ax,ay,az,bx,by,bz)
  %3167 = call float @dx.op.unary.f32(i32 25, float %3166)  ; Rsqrt(value)
  %3168 = fmul fast float %3167, %3127
  %3169 = fmul fast float %3167, %3128
  %3170 = fmul fast float %3165, %3167
  %3171 = fmul fast float %3170, %83
  %3172 = fmul fast float %3170, %84
  %3173 = fmul fast float %3170, %85
  %3174 = fmul fast float %3168, %57
  %3175 = fmul fast float %3168, %58
  %3176 = fmul fast float %3168, %59
  %3177 = fadd fast float %3171, %3174
  %3178 = fadd fast float %3172, %3175
  %3179 = fadd fast float %3173, %3176
  %3180 = fmul fast float %95, %3169
  %3181 = fmul fast float %96, %3169
  %3182 = fmul fast float %97, %3169
  %3183 = fadd fast float %3177, %3180
  %3184 = fadd fast float %3178, %3181
  %3185 = fadd fast float %3179, %3182
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3183, float %3184, float %3185, float %3183, float %3184, float %3185)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = call float @dx.op.unary.f32(i32 25, float %3186)  ; Rsqrt(value)
  %3188 = fmul fast float %3183, %3187
  %3189 = fmul fast float %3184, %3187
  %3190 = fmul fast float %3185, %3187
  %3191 = icmp eq i32 %33, 65535
  br i1 %3191, label %3706, label %3192

; <label>:3192                                    ; preds = %3126
  %3193 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3194 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3195 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3196 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3197 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3198 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3199 = fadd fast float %3193, %34
  %3200 = fadd fast float %3194, %35
  %3201 = fadd fast float %3195, %36
  %3202 = fadd fast float %3196, %34
  %3203 = fadd fast float %3197, %35
  %3204 = fadd fast float %3198, %36
  %3205 = mul i32 %33, 48
  %3206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.f32 %3206, 0
  %3208 = extractvalue %dx.types.ResRet.f32 %3206, 1
  %3209 = extractvalue %dx.types.ResRet.f32 %3206, 2
  %3210 = add i32 %3205, 16
  %3211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.f32 %3211, 0
  %3213 = extractvalue %dx.types.ResRet.f32 %3211, 1
  %3214 = extractvalue %dx.types.ResRet.f32 %3211, 2
  %3215 = add i32 %3205, 32
  %3216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.f32 %3216, 0
  %3218 = extractvalue %dx.types.ResRet.f32 %3216, 1
  %3219 = extractvalue %dx.types.ResRet.f32 %3216, 2
  %3220 = extractvalue %dx.types.ResRet.f32 %3216, 3
  %3221 = bitcast float %3220 to i32
  %3222 = fmul fast float %3207, %34
  %3223 = fmul fast float %3208, %35
  %3224 = fmul fast float %3209, %36
  %3225 = fsub fast float %3222, %3212
  %3226 = fsub fast float %3223, %3213
  %3227 = fsub fast float %3224, %3214
  %3228 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  %3229 = call float @dx.op.unary.f32(i32 7, float %3226)  ; Saturate(value)
  %3230 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  %3231 = fmul fast float %3228, %3217
  %3232 = fmul fast float %3229, %3218
  %3233 = fmul fast float %3230, %3219
  %3234 = fadd fast float %3217, -1.000000e+00
  %3235 = fadd fast float %3218, -1.000000e+00
  %3236 = fadd fast float %3219, -1.000000e+00
  %3237 = call float @dx.op.unary.f32(i32 27, float %3231)  ; Round_ni(value)
  %3238 = call float @dx.op.unary.f32(i32 27, float %3232)  ; Round_ni(value)
  %3239 = call float @dx.op.unary.f32(i32 27, float %3233)  ; Round_ni(value)
  %3240 = call float @dx.op.binary.f32(i32 36, float %3237, float %3234)  ; FMin(a,b)
  %3241 = call float @dx.op.binary.f32(i32 36, float %3238, float %3235)  ; FMin(a,b)
  %3242 = call float @dx.op.binary.f32(i32 36, float %3239, float %3236)  ; FMin(a,b)
  %3243 = fmul fast float %3242, %3218
  %3244 = fadd fast float %3243, %3241
  %3245 = fmul fast float %3244, %3217
  %3246 = fadd fast float %3245, %3240
  %3247 = fptosi float %3246 to i32
  %3248 = add nsw i32 %3247, %3221
  %3249 = shl nsw i32 %3248, 2
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = lshr i32 %3251, 16
  %3253 = icmp eq i32 %3252, 0
  br i1 %3253, label %3675, label %3254

; <label>:3254                                    ; preds = %3192
  br label %3255

; <label>:3255                                    ; preds = %3376, %3254
  %3256 = phi i32 [ %3278, %3376 ], [ %3252, %3254 ]
  %3257 = phi float [ %3377, %3376 ], [ 0.000000e+00, %3254 ]
  %3258 = phi float [ %3378, %3376 ], [ %3157, %3254 ]
  %3259 = phi float [ %3379, %3376 ], [ %3138, %3254 ]
  %3260 = phi float [ %3380, %3376 ], [ 0.000000e+00, %3254 ]
  %3261 = phi float [ %3381, %3376 ], [ 0.000000e+00, %3254 ]
  %3262 = phi float [ %3382, %3376 ], [ %3160, %3254 ]
  %3263 = phi float [ %3383, %3376 ], [ %3161, %3254 ]
  %3264 = phi float [ %3384, %3376 ], [ %3162, %3254 ]
  %3265 = phi float [ %3385, %3376 ], [ %3188, %3254 ]
  %3266 = phi float [ %3386, %3376 ], [ %3189, %3254 ]
  %3267 = phi float [ %3387, %3376 ], [ %3190, %3254 ]
  %3268 = phi float [ %3388, %3376 ], [ %3137, %3254 ]
  %3269 = phi float [ %3389, %3376 ], [ %3136, %3254 ]
  %3270 = phi float [ %3390, %3376 ], [ 0.000000e+00, %3254 ]
  %3271 = phi float [ %3391, %3376 ], [ %3135, %3254 ]
  %3272 = phi float [ %3392, %3376 ], [ %3129, %3254 ]
  %3273 = phi float [ %3393, %3376 ], [ %3130, %3254 ]
  %3274 = phi float [ %3394, %3376 ], [ %3131, %3254 ]
  %3275 = shl nuw nsw i32 %3256, 2
  %3276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = lshr i32 %3277, 16
  %3279 = shl i32 %3277, 8
  %3280 = and i32 %3279, 16776960
  %3281 = or i32 %3280, 48
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = extractvalue %dx.types.ResRet.f32 %3282, 1
  %3285 = extractvalue %dx.types.ResRet.f32 %3282, 2
  %3286 = or i32 %3280, 64
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = extractvalue %dx.types.ResRet.i32 %3287, 1
  %3290 = or i32 %3280, 80
  %3291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3290, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 2
  %3293 = extractvalue %dx.types.ResRet.f32 %3291, 3
  %3294 = or i32 %3280, 96
  %3295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.ResRet.f32 %3295, 2
  %3299 = extractvalue %dx.types.ResRet.f32 %3295, 3
  %3300 = or i32 %3280, 112
  %3301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.f32 %3301, 2
  %3303 = or i32 %3280, 128
  %3304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = extractvalue %dx.types.ResRet.f32 %3304, 1
  %3307 = extractvalue %dx.types.ResRet.f32 %3304, 2
  %3308 = extractvalue %dx.types.ResRet.f32 %3304, 3
  %3309 = or i32 %3280, 144
  %3310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.ResRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.ResRet.f32 %3310, 3
  %3315 = or i32 %3280, 160
  %3316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = extractvalue %dx.types.ResRet.f32 %3316, 3
  %3321 = or i32 %3280, 192
  %3322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.i32 %3322, 0
  %3324 = or i32 %3280, 208
  %3325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = or i32 %3280, 248
  %3328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  %3330 = extractvalue %dx.types.ResRet.f32 %3328, 1
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3337 = or i32 %3280, 16
  %3338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = extractvalue %dx.types.ResRet.f32 %3338, 3
  %3343 = call float @dx.op.dot4.f32(i32 56, float %3339, float %3340, float %3341, float %3342, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3344 = or i32 %3280, 32
  %3345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.ResRet.f32 %3345, 1
  %3348 = extractvalue %dx.types.ResRet.f32 %3345, 2
  %3349 = extractvalue %dx.types.ResRet.f32 %3345, 3
  %3350 = call float @dx.op.dot4.f32(i32 56, float %3346, float %3347, float %3348, float %3349, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3351 = call float @dx.op.unary.f32(i32 27, float %3336)  ; Round_ni(value)
  %3352 = call float @dx.op.unary.f32(i32 6, float %3351)  ; FAbs(value)
  %3353 = call float @dx.op.unary.f32(i32 27, float %3343)  ; Round_ni(value)
  %3354 = call float @dx.op.unary.f32(i32 6, float %3353)  ; FAbs(value)
  %3355 = call float @dx.op.unary.f32(i32 6, float %3350)  ; FAbs(value)
  %3356 = call float @dx.op.unary.f32(i32 27, float %3355)  ; Round_ni(value)
  %3357 = fadd fast float %3354, %3352
  %3358 = fadd fast float %3357, %3356
  %3359 = fcmp fast oeq float %3358, 0.000000e+00
  %3360 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %3199, float %3200, float %3201, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3361 = call float @dx.op.dot4.f32(i32 56, float %3339, float %3340, float %3341, float %3342, float %3199, float %3200, float %3201, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3362 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %3202, float %3203, float %3204, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3363 = call float @dx.op.dot4.f32(i32 56, float %3339, float %3340, float %3341, float %3342, float %3202, float %3203, float %3204, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3364 = fsub fast float %3360, %3336
  %3365 = fsub fast float %3362, %3336
  %3366 = fsub fast float %3361, %3343
  %3367 = fsub fast float %3363, %3343
  %3368 = call float @dx.op.dot3.f32(i32 55, float %3283, float %3284, float %3285, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 2
  %3371 = fadd fast float %3370, %3368
  %3372 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3373 = extractvalue %dx.types.CBufRet.f32 %3369, 0
  %3374 = fcmp fast ogt float %3372, %3373
  %3375 = and i1 %3359, %3374
  br i1 %3375, label %3396, label %3376

; <label>:3376                                    ; preds = %3661, %3479, %3396, %3255
  %3377 = phi float [ %3257, %3396 ], [ %3482, %3479 ], [ %3482, %3661 ], [ %3257, %3255 ]
  %3378 = phi float [ %3258, %3396 ], [ %3258, %3479 ], [ %3636, %3661 ], [ %3258, %3255 ]
  %3379 = phi float [ %3259, %3396 ], [ %3259, %3479 ], [ %3634, %3661 ], [ %3259, %3255 ]
  %3380 = phi float [ %3260, %3396 ], [ %3260, %3479 ], [ %3606, %3661 ], [ %3260, %3255 ]
  %3381 = phi float [ %3261, %3396 ], [ %3261, %3479 ], [ %3604, %3661 ], [ %3261, %3255 ]
  %3382 = phi float [ %3262, %3396 ], [ %3262, %3479 ], [ %3671, %3661 ], [ %3262, %3255 ]
  %3383 = phi float [ %3263, %3396 ], [ %3263, %3479 ], [ %3672, %3661 ], [ %3263, %3255 ]
  %3384 = phi float [ %3264, %3396 ], [ %3264, %3479 ], [ %3673, %3661 ], [ %3264, %3255 ]
  %3385 = phi float [ %3265, %3396 ], [ %3265, %3479 ], [ %3585, %3661 ], [ %3265, %3255 ]
  %3386 = phi float [ %3266, %3396 ], [ %3266, %3479 ], [ %3586, %3661 ], [ %3266, %3255 ]
  %3387 = phi float [ %3267, %3396 ], [ %3267, %3479 ], [ %3587, %3661 ], [ %3267, %3255 ]
  %3388 = phi float [ %3268, %3396 ], [ %3268, %3479 ], [ %3614, %3661 ], [ %3268, %3255 ]
  %3389 = phi float [ %3269, %3396 ], [ %3269, %3479 ], [ %3611, %3661 ], [ %3269, %3255 ]
  %3390 = phi float [ %3270, %3396 ], [ %3270, %3479 ], [ %3608, %3661 ], [ %3270, %3255 ]
  %3391 = phi float [ %3271, %3396 ], [ %3271, %3479 ], [ %3602, %3661 ], [ %3271, %3255 ]
  %3392 = phi float [ %3272, %3396 ], [ %3272, %3479 ], [ %3597, %3661 ], [ %3272, %3255 ]
  %3393 = phi float [ %3273, %3396 ], [ %3273, %3479 ], [ %3598, %3661 ], [ %3273, %3255 ]
  %3394 = phi float [ %3274, %3396 ], [ %3274, %3479 ], [ %3599, %3661 ], [ %3274, %3255 ]
  %3395 = icmp eq i32 %3278, 0
  br i1 %3395, label %3674, label %3255

; <label>:3396                                    ; preds = %3255
  %3397 = extractvalue %dx.types.ResRet.f32 %3282, 3
  %3398 = extractvalue %dx.types.ResRet.f32 %3301, 3
  %3399 = extractvalue %dx.types.ResRet.f32 %3301, 1
  %3400 = extractvalue %dx.types.ResRet.f32 %3301, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3291, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3291, 0
  %3403 = extractvalue %dx.types.ResRet.i32 %3287, 3
  %3404 = extractvalue %dx.types.ResRet.i32 %3287, 2
  %3405 = bitcast float %3397 to i32
  %3406 = add i32 %3403, 0
  %3407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3406, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3409 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3407, %dx.types.Handle %3408, float %3336, float %3343, float undef, float undef, i32 0, i32 0, i32 undef, float %3364, float %3366, float undef, float %3365, float %3367, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = fmul fast float %3410, %3402
  %3412 = fadd fast float %3411, %3401
  %3413 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3414 = fmul fast float %3336, %3296
  %3415 = call float @dx.op.tertiary.f32(i32 46, float %3297, float %3343, float %3414)  ; FMad(a,b,c)
  %3416 = fadd fast float %3415, %3400
  %3417 = fmul fast float %3336, %3298
  %3418 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3343, float %3417)  ; FMad(a,b,c)
  %3419 = fadd fast float %3418, %3399
  %3420 = fmul fast float %3364, %3296
  %3421 = call float @dx.op.tertiary.f32(i32 46, float %3297, float %3366, float %3420)  ; FMad(a,b,c)
  %3422 = fmul fast float %3364, %3298
  %3423 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3366, float %3422)  ; FMad(a,b,c)
  %3424 = fmul fast float %3365, %3296
  %3425 = call float @dx.op.tertiary.f32(i32 46, float %3297, float %3367, float %3424)  ; FMad(a,b,c)
  %3426 = fmul fast float %3365, %3298
  %3427 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3367, float %3426)  ; FMad(a,b,c)
  %3428 = add i32 %3404, 0
  %3429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3428, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3430 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3429, %dx.types.Handle %3408, float %3416, float %3419, float undef, float undef, i32 0, i32 0, i32 undef, float %3421, float %3423, float undef, float %3425, float %3427, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3431 = extractvalue %dx.types.ResRet.f32 %3430, 0
  %3432 = and i32 %3405, 1024
  %3433 = icmp ne i32 %3432, 0
  %3434 = fcmp fast ogt float %3431, 0x3FE0101020000000
  %3435 = uitofp i1 %3434 to float
  %3436 = select i1 %3433, float %3435, float %3431
  %3437 = and i32 %3405, 8192
  %3438 = icmp ne i32 %3437, 0
  %3439 = select i1 %3438, float %3398, float 1.000000e+00
  %3440 = fmul fast float %3336, 2.000000e+00
  %3441 = fadd fast float %3440, -1.000000e+00
  %3442 = call float @dx.op.unary.f32(i32 6, float %3441)  ; FAbs(value)
  %3443 = fmul fast float %3442, %3329
  %3444 = fsub fast float %3443, %3329
  %3445 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3446 = fmul fast float %3343, 2.000000e+00
  %3447 = fadd fast float %3446, -1.000000e+00
  %3448 = call float @dx.op.unary.f32(i32 6, float %3447)  ; FAbs(value)
  %3449 = fmul fast float %3448, %3330
  %3450 = fsub fast float %3449, %3330
  %3451 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  %3452 = fmul fast float %3355, %3292
  %3453 = fsub fast float %3452, %3292
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3455 = fmul fast float %3413, %3439
  %3456 = fmul fast float %3455, %3410
  %3457 = fmul fast float %3456, %3445
  %3458 = fmul fast float %3457, %3436
  %3459 = fmul fast float %3458, %3451
  %3460 = fmul fast float %3459, %3454
  %3461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3462 = extractvalue %dx.types.CBufRet.f32 %3461, 1
  %3463 = extractvalue %dx.types.CBufRet.f32 %3461, 0
  %3464 = fsub fast float %3372, %3463
  %3465 = fmul fast float %3464, %3462
  %3466 = call float @dx.op.unary.f32(i32 7, float %3465)  ; Saturate(value)
  %3467 = fmul fast float %3460, %3293
  %3468 = fadd fast float %3460, %3293
  %3469 = fmul fast float %3468, %3302
  %3470 = fsub fast float %3469, %3302
  %3471 = call float @dx.op.unary.f32(i32 7, float %3470)  ; Saturate(value)
  %3472 = and i32 %3405, 128
  %3473 = icmp ne i32 %3472, 0
  %3474 = select i1 %3473, float %3471, float %3467
  %3475 = fmul fast float %3474, %3466
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = fcmp fast ugt float %3475, %3477
  br i1 %3478, label %3479, label %3376

; <label>:3479                                    ; preds = %3396
  %3480 = select i1 %3438, float %3475, float 0.000000e+00
  %3481 = fadd fast float %3480, %3257
  %3482 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  br i1 %3438, label %3376, label %3483

; <label>:3483                                    ; preds = %3479
  %3484 = and i32 %3405, 4
  %3485 = and i32 %3405, 8
  %3486 = add i32 %3288, 0
  %3487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3486, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3489 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3487, %dx.types.Handle %3488, float %3416, float %3419, float undef, float undef, i32 0, i32 0, i32 undef, float %3421, float %3423, float undef, float %3425, float %3427, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3494 = bitcast float %3314 to i32
  %3495 = and i32 %3494, 255
  %3496 = uitofp i32 %3495 to float
  %3497 = lshr i32 %3494, 8
  %3498 = and i32 %3497, 255
  %3499 = uitofp i32 %3498 to float
  %3500 = fmul fast float %3493, %3496
  %3501 = fadd fast float %3500, %3499
  %3502 = fmul fast float %3501, 0x3F70101000000000
  %3503 = add i32 %3289, 0
  %3504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3503, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3505 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3504, %dx.types.Handle %3488, float %3416, float %3419, float undef, float undef, i32 0, i32 0, i32 undef, float %3421, float %3423, float undef, float %3425, float %3427, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = extractvalue %dx.types.ResRet.f32 %3505, 3
  %3510 = bitcast float %3308 to i32
  %3511 = and i32 %3510, 255
  %3512 = uitofp i32 %3511 to float
  %3513 = lshr i32 %3510, 8
  %3514 = and i32 %3513, 255
  %3515 = uitofp i32 %3514 to float
  %3516 = lshr i32 %3510, 16
  %3517 = and i32 %3516, 255
  %3518 = uitofp i32 %3517 to float
  %3519 = fmul fast float %3518, 0x3F70101000000000
  %3520 = fmul fast float %3506, %3512
  %3521 = fadd fast float %3520, %3515
  %3522 = fmul fast float %3521, 0x3F70101000000000
  %3523 = fadd fast float %3507, -5.000000e-01
  %3524 = fadd fast float %3509, -5.000000e-01
  %3525 = fmul fast float %3523, %3519
  %3526 = fmul fast float %3524, %3519
  %3527 = fadd fast float %3525, 5.000000e-01
  %3528 = fadd fast float %3526, 5.000000e-01
  %3529 = fmul fast float %3490, %3317
  %3530 = fmul fast float %3491, %3318
  %3531 = fmul fast float %3492, %3319
  %3532 = fmul fast float %3527, 2.000000e+00
  %3533 = fadd fast float %3532, -1.000000e+00
  %3534 = fmul fast float %3528, 2.000000e+00
  %3535 = fadd fast float %3534, -1.000000e+00
  %3536 = fadd fast float %3533, %3535
  %3537 = fmul fast float %3536, 5.000000e-01
  %3538 = fsub fast float %3533, %3535
  %3539 = fmul fast float %3538, 5.000000e-01
  %3540 = call float @dx.op.unary.f32(i32 6, float %3537)  ; FAbs(value)
  %3541 = fsub fast float 1.000000e+00, %3540
  %3542 = call float @dx.op.unary.f32(i32 6, float %3539)  ; FAbs(value)
  %3543 = fsub fast float %3541, %3542
  %3544 = call float @dx.op.dot3.f32(i32 55, float %3537, float %3539, float %3543, float %3537, float %3539, float %3543)  ; Dot3(ax,ay,az,bx,by,bz)
  %3545 = call float @dx.op.unary.f32(i32 25, float %3544)  ; Rsqrt(value)
  %3546 = fmul fast float %3537, %3545
  %3547 = fmul fast float %3539, %3545
  %3548 = fmul fast float %3545, %3543
  %3549 = fmul fast float %3548, %3283
  %3550 = fmul fast float %3548, %3284
  %3551 = fmul fast float %3548, %3285
  %3552 = fmul fast float %3546, %3305
  %3553 = fmul fast float %3546, %3306
  %3554 = fmul fast float %3546, %3307
  %3555 = fadd fast float %3552, %3549
  %3556 = fadd fast float %3553, %3550
  %3557 = fadd fast float %3554, %3551
  %3558 = fmul fast float %3547, %3311
  %3559 = fmul fast float %3547, %3312
  %3560 = fmul fast float %3547, %3313
  %3561 = fadd fast float %3555, %3558
  %3562 = fadd fast float %3556, %3559
  %3563 = fadd fast float %3557, %3560
  %3564 = call float @dx.op.dot3.f32(i32 55, float %3561, float %3562, float %3563, float %3561, float %3562, float %3563)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = call float @dx.op.unary.f32(i32 25, float %3564)  ; Rsqrt(value)
  %3566 = fmul fast float %3561, %3565
  %3567 = fmul fast float %3562, %3565
  %3568 = fmul fast float %3563, %3565
  %3569 = icmp ne i32 %3485, 0
  %3570 = select i1 %3569, float 1.000000e+00, float 0.000000e+00
  %3571 = fmul fast float %3475, %3570
  %3572 = and i32 %3405, 1
  %3573 = icmp eq i32 %3572, 0
  br i1 %3573, label %3574, label %3578

; <label>:3574                                    ; preds = %3483
  %3575 = fsub fast float %3566, %3265
  %3576 = fsub fast float %3567, %3266
  %3577 = fsub fast float %3568, %3267
  br label %3578

; <label>:3578                                    ; preds = %3574, %3483
  %3579 = phi float [ %3575, %3574 ], [ %3566, %3483 ]
  %3580 = phi float [ %3576, %3574 ], [ %3567, %3483 ]
  %3581 = phi float [ %3577, %3574 ], [ %3568, %3483 ]
  %3582 = fmul float %3581, %3571
  %3583 = fmul float %3580, %3571
  %3584 = fmul float %3579, %3571
  %3585 = fadd fast float %3584, %3265
  %3586 = fadd fast float %3583, %3266
  %3587 = fadd fast float %3582, %3267
  %3588 = icmp ne i32 %3484, 0
  %3589 = select i1 %3588, float 1.000000e+00, float 0.000000e+00
  %3590 = fmul fast float %3475, %3589
  %3591 = fsub fast float %3529, %3272
  %3592 = fsub fast float %3530, %3273
  %3593 = fsub fast float %3531, %3274
  %3594 = fmul fast float %3591, %3590
  %3595 = fmul fast float %3592, %3590
  %3596 = fmul fast float %3593, %3590
  %3597 = fadd fast float %3594, %3272
  %3598 = fadd fast float %3595, %3273
  %3599 = fadd fast float %3596, %3274
  %3600 = fsub fast float %3502, %3271
  %3601 = fmul fast float %3600, %3590
  %3602 = fadd fast float %3601, %3271
  %3603 = fmul fast float %3590, %3261
  %3604 = fsub fast float %3261, %3603
  %3605 = fmul fast float %3590, %3260
  %3606 = fsub fast float %3260, %3605
  %3607 = fadd fast float %3475, %3270
  %3608 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3609 = fsub fast float %3522, %3269
  %3610 = fmul fast float %3609, %3571
  %3611 = fadd fast float %3610, %3269
  %3612 = fsub fast float %3508, %3268
  %3613 = fmul fast float %3612, %3571
  %3614 = fadd fast float %3613, %3268
  %3615 = call float @dx.op.dot3.f32(i32 55, float %3529, float %3530, float %3531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.CBufRet.f32 %3616, 1
  %3619 = fmul fast float %3618, %3615
  %3620 = fadd fast float %3619, %3617
  %3621 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  %3622 = bitcast float %3320 to i32
  %3623 = and i32 %3622, 65535
  %3624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3623)  ; LegacyF16ToF32(value)
  %3625 = lshr i32 %3622, 16
  %3626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3625)  ; LegacyF16ToF32(value)
  %3627 = fcmp fast oge float %3624, 0.000000e+00
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 0
  %3630 = select i1 %3627, float %3624, float %3629
  %3631 = fadd fast float %3630, %3626
  %3632 = fsub fast float %3621, %3259
  %3633 = fmul fast float %3632, %3475
  %3634 = fadd fast float %3633, %3259
  %3635 = fmul fast float %3631, %3475
  %3636 = call float @dx.op.binary.f32(i32 35, float %3258, float %3635)  ; FMax(a,b)
  %3637 = and i32 %3405, 16
  %3638 = icmp eq i32 %3637, 0
  br i1 %3638, label %3661, label %3639

; <label>:3639                                    ; preds = %3578
  %3640 = bitcast float %3326 to i32
  %3641 = add i32 %3323, 0
  %3642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3641, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3643 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3642, %dx.types.Handle %3488, float %3416, float %3419, float undef, float undef, i32 0, i32 0, i32 undef, float %3421, float %3423, float undef, float %3425, float %3427, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = and i32 %3640, 65535
  %3648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3647)  ; LegacyF16ToF32(value)
  %3649 = fmul fast float %3644, %3317
  %3650 = fmul fast float %3645, %3318
  %3651 = fmul fast float %3646, %3319
  %3652 = and i32 %3405, 16384
  %3653 = icmp ne i32 %3652, 0
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 0
  %3656 = select i1 %3653, float %3655, float 1.000000e+00
  %3657 = fmul fast float %3656, %3648
  %3658 = fmul fast float %3649, %3657
  %3659 = fmul fast float %3650, %3657
  %3660 = fmul fast float %3651, %3657
  br label %3661

; <label>:3661                                    ; preds = %3639, %3578
  %3662 = phi float [ %3658, %3639 ], [ 0.000000e+00, %3578 ]
  %3663 = phi float [ %3659, %3639 ], [ 0.000000e+00, %3578 ]
  %3664 = phi float [ %3660, %3639 ], [ 0.000000e+00, %3578 ]
  %3665 = fsub fast float %3662, %3262
  %3666 = fsub fast float %3663, %3263
  %3667 = fsub fast float %3664, %3264
  %3668 = fmul fast float %3665, %3475
  %3669 = fmul fast float %3666, %3475
  %3670 = fmul fast float %3667, %3475
  %3671 = fadd fast float %3668, %3262
  %3672 = fadd fast float %3669, %3263
  %3673 = fadd fast float %3670, %3264
  br label %3376

; <label>:3674                                    ; preds = %3376
  br label %3675

; <label>:3675                                    ; preds = %3674, %3192
  %3676 = phi float [ 0.000000e+00, %3192 ], [ %3377, %3674 ]
  %3677 = phi float [ %3157, %3192 ], [ %3378, %3674 ]
  %3678 = phi float [ %3138, %3192 ], [ %3379, %3674 ]
  %3679 = phi float [ 0.000000e+00, %3192 ], [ %3380, %3674 ]
  %3680 = phi float [ 0.000000e+00, %3192 ], [ %3381, %3674 ]
  %3681 = phi float [ %3160, %3192 ], [ %3382, %3674 ]
  %3682 = phi float [ %3161, %3192 ], [ %3383, %3674 ]
  %3683 = phi float [ %3162, %3192 ], [ %3384, %3674 ]
  %3684 = phi float [ %3188, %3192 ], [ %3385, %3674 ]
  %3685 = phi float [ %3189, %3192 ], [ %3386, %3674 ]
  %3686 = phi float [ %3190, %3192 ], [ %3387, %3674 ]
  %3687 = phi float [ %3137, %3192 ], [ %3388, %3674 ]
  %3688 = phi float [ %3136, %3192 ], [ %3389, %3674 ]
  %3689 = phi float [ 0.000000e+00, %3192 ], [ %3390, %3674 ]
  %3690 = phi float [ %3135, %3192 ], [ %3391, %3674 ]
  %3691 = phi float [ %3129, %3192 ], [ %3392, %3674 ]
  %3692 = phi float [ %3130, %3192 ], [ %3393, %3674 ]
  %3693 = phi float [ %3131, %3192 ], [ %3394, %3674 ]
  %3694 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3686, float %3684, float %3685, float %3686)  ; Dot3(ax,ay,az,bx,by,bz)
  %3695 = call float @dx.op.unary.f32(i32 25, float %3694)  ; Rsqrt(value)
  %3696 = fmul fast float %3695, %3684
  %3697 = fmul fast float %3695, %3685
  %3698 = fmul fast float %3695, %3686
  %3699 = fadd fast float %3689, %918
  %3700 = call float @dx.op.unary.f32(i32 7, float %3699)  ; Saturate(value)
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3696, float %3697, float %3698, float %3696, float %3697, float %3698)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = call float @dx.op.unary.f32(i32 25, float %3701)  ; Rsqrt(value)
  %3703 = fmul fast float %3702, %3696
  %3704 = fmul fast float %3702, %3697
  %3705 = fmul fast float %3702, %3698
  br label %3706

; <label>:3706                                    ; preds = %3675, %3126
  %3707 = phi float [ %3703, %3675 ], [ %3188, %3126 ]
  %3708 = phi float [ %3704, %3675 ], [ %3189, %3126 ]
  %3709 = phi float [ %3705, %3675 ], [ %3190, %3126 ]
  %3710 = phi float [ %3691, %3675 ], [ %3129, %3126 ]
  %3711 = phi float [ %3692, %3675 ], [ %3130, %3126 ]
  %3712 = phi float [ %3693, %3675 ], [ %3131, %3126 ]
  %3713 = phi float [ %3681, %3675 ], [ %3160, %3126 ]
  %3714 = phi float [ %3682, %3675 ], [ %3161, %3126 ]
  %3715 = phi float [ %3683, %3675 ], [ %3162, %3126 ]
  %3716 = phi float [ %3690, %3675 ], [ %3135, %3126 ]
  %3717 = phi float [ %3700, %3675 ], [ %918, %3126 ]
  %3718 = phi float [ %3688, %3675 ], [ %3136, %3126 ]
  %3719 = phi float [ %3687, %3675 ], [ %3137, %3126 ]
  %3720 = phi float [ %3680, %3675 ], [ 0.000000e+00, %3126 ]
  %3721 = phi float [ %3679, %3675 ], [ 0.000000e+00, %3126 ]
  %3722 = phi float [ %3676, %3675 ], [ 0.000000e+00, %3126 ]
  %3723 = phi float [ %3677, %3675 ], [ %3157, %3126 ]
  %3724 = phi float [ %3678, %3675 ], [ %3138, %3126 ]
  %3725 = fadd fast float %3716, 0xBFB99999A0000000
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fmul fast float %3726, 0x3FF1C71C80000000
  %3728 = call float @dx.op.binary.f32(i32 36, float %3716, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3729 = fsub fast float 1.000000e+00, %3727
  %3730 = call float @dx.op.unary.f32(i32 7, float %3729)  ; Saturate(value)
  %3731 = fmul fast float %3730, %3710
  %3732 = fmul fast float %3730, %3711
  %3733 = fmul fast float %3730, %3712
  %3734 = call float @dx.op.unary.f32(i32 7, float %3731)  ; Saturate(value)
  %3735 = call float @dx.op.unary.f32(i32 7, float %3732)  ; Saturate(value)
  %3736 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3737 = fmul fast float %3727, %3710
  %3738 = fmul fast float %3727, %3711
  %3739 = fmul fast float %3727, %3712
  %3740 = fadd fast float %3737, %3728
  %3741 = fadd fast float %3738, %3728
  %3742 = fadd fast float %3739, %3728
  %3743 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3744 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  %3745 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3746 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.i32 %3747, 3
  %3749 = and i32 %3748, 8
  %3750 = icmp ne i32 %3749, 0
  %3751 = call float @dx.op.binary.f32(i32 35, float %3734, float %3710)  ; FMax(a,b)
  %3752 = call float @dx.op.binary.f32(i32 35, float %3735, float %3710)  ; FMax(a,b)
  %3753 = call float @dx.op.binary.f32(i32 35, float %3736, float %3710)  ; FMax(a,b)
  %3754 = call float @dx.op.dot3.f32(i32 55, float %3734, float %3735, float %3736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3755 = select i1 %202, float %3710, float %3734
  %3756 = select i1 %202, float %3754, float %3735
  %3757 = select i1 %202, float 1.000000e+00, float %3736
  %3758 = select i1 %3750, float %3751, float %3755
  %3759 = select i1 %3750, float %3752, float %3756
  %3760 = select i1 %3750, float %3753, float %3757
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.CBufRet.f32 %3761, 2
  %3765 = fadd fast float %3762, %163
  %3766 = fadd fast float %3763, %164
  %3767 = fadd fast float %3764, %165
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3771 = fsub fast float %3765, %3769
  %3772 = fsub fast float %3766, %3770
  %3773 = fmul fast float %3771, %3771
  %3774 = fmul fast float %3772, %3772
  %3775 = fadd fast float %3773, %3774
  %3776 = call float @dx.op.unary.f32(i32 24, float %3775)  ; Sqrt(value)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3778 = fcmp fast olt float %3776, %3777
  br i1 %3778, label %3779, label %3846

; <label>:3779                                    ; preds = %3706
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.CBufRet.f32 %3780, 1
  %3787 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3788 = extractvalue %dx.types.CBufRet.f32 %3784, 1
  %3789 = extractvalue %dx.types.CBufRet.f32 %3780, 3
  %3790 = extractvalue %dx.types.CBufRet.f32 %3782, 3
  %3791 = extractvalue %dx.types.CBufRet.f32 %3784, 3
  %3792 = fadd fast float %3789, %3765
  %3793 = fadd fast float %3790, %3766
  %3794 = fadd fast float %3791, %3767
  %3795 = fmul fast float %3792, %3781
  %3796 = call float @dx.op.tertiary.f32(i32 46, float %3793, float %3783, float %3795)  ; FMad(a,b,c)
  %3797 = call float @dx.op.tertiary.f32(i32 46, float %3794, float %3785, float %3796)  ; FMad(a,b,c)
  %3798 = fmul fast float %3792, %3786
  %3799 = call float @dx.op.tertiary.f32(i32 46, float %3793, float %3787, float %3798)  ; FMad(a,b,c)
  %3800 = call float @dx.op.tertiary.f32(i32 46, float %3794, float %3788, float %3799)  ; FMad(a,b,c)
  %3801 = fsub fast float %3797, %3789
  %3802 = fsub fast float %3800, %3790
  %3803 = fsub fast float %3801, %3769
  %3804 = fadd fast float %3803, %3777
  %3805 = fsub fast float %3802, %3770
  %3806 = fadd fast float %3805, %3777
  %3807 = extractvalue %dx.types.CBufRet.f32 %3768, 3
  %3808 = fmul fast float %3804, %3807
  %3809 = fmul fast float %3806, %3807
  %3810 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3811 = call float @dx.op.unary.f32(i32 7, float %3809)  ; Saturate(value)
  %3812 = fsub fast float 1.000000e+00, %3810
  %3813 = fsub fast float 1.000000e+00, %3811
  %3814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3812, float %3813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = fcmp fast ugt float %3815, 0.000000e+00
  br i1 %3816, label %3817, label %4120

; <label>:3817                                    ; preds = %3779
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 2
  %3820 = fmul fast float %3819, %3815
  %3821 = extractvalue %dx.types.CBufRet.f32 %3818, 3
  %3822 = fadd fast float %3821, %3820
  %3823 = extractvalue %dx.types.CBufRet.f32 %3784, 2
  %3824 = fadd fast float %3822, %3791
  %3825 = fmul fast float %3797, %3785
  %3826 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3788, float %3825)  ; FMad(a,b,c)
  %3827 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3823, float %3826)  ; FMad(a,b,c)
  %3828 = fsub fast float %3827, %3791
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 2
  %3831 = fsub fast float %3828, %3830
  %3832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3812, float %3813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3812, float %3813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3839 = extractvalue %dx.types.ResRet.f32 %3836, 2
  %3840 = fadd fast float %3837, %3833
  %3841 = fmul fast float %3840, 0x3F847AE140000000
  %3842 = fadd fast float %3838, %3834
  %3843 = fmul fast float %3842, 0x3F847AE140000000
  %3844 = fadd fast float %3839, %3835
  %3845 = fmul fast float %3844, 0x3F847AE140000000
  br label %4120

; <label>:3846                                    ; preds = %3706
  %3847 = and i32 %181, 1
  %3848 = icmp eq i32 %3847, 0
  br i1 %3848, label %4120, label %3849

; <label>:3849                                    ; preds = %3846
  %3850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3851 = extractvalue %dx.types.CBufRet.f32 %3850, 0
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 0
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.CBufRet.f32 %3850, 1
  %3857 = extractvalue %dx.types.CBufRet.f32 %3852, 1
  %3858 = extractvalue %dx.types.CBufRet.f32 %3854, 1
  %3859 = extractvalue %dx.types.CBufRet.f32 %3850, 3
  %3860 = extractvalue %dx.types.CBufRet.f32 %3852, 3
  %3861 = extractvalue %dx.types.CBufRet.f32 %3854, 3
  %3862 = fadd fast float %3859, %3765
  %3863 = fadd fast float %3860, %3766
  %3864 = fadd fast float %3861, %3767
  %3865 = fmul fast float %3862, %3851
  %3866 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %3853, float %3865)  ; FMad(a,b,c)
  %3867 = call float @dx.op.tertiary.f32(i32 46, float %3864, float %3855, float %3866)  ; FMad(a,b,c)
  %3868 = fmul fast float %3862, %3856
  %3869 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %3857, float %3868)  ; FMad(a,b,c)
  %3870 = call float @dx.op.tertiary.f32(i32 46, float %3864, float %3858, float %3869)  ; FMad(a,b,c)
  %3871 = fsub fast float %3867, %3859
  %3872 = fsub fast float %3870, %3860
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.CBufRet.f32 %3873, 3
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 3
  %3880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3881 = extractvalue %dx.types.CBufRet.i32 %3880, 0
  %3882 = extractvalue %dx.types.CBufRet.i32 %3880, 1
  %3883 = udiv i32 %3882, %3881
  %3884 = fsub fast float %3871, %3874
  %3885 = fsub fast float %3872, %3875
  %3886 = call float @dx.op.binary.f32(i32 35, float %3884, float 0.000000e+00)  ; FMax(a,b)
  %3887 = call float @dx.op.binary.f32(i32 35, float %3885, float 0.000000e+00)  ; FMax(a,b)
  %3888 = call float @dx.op.binary.f32(i32 36, float %3886, float %3876)  ; FMin(a,b)
  %3889 = call float @dx.op.binary.f32(i32 36, float %3887, float %3877)  ; FMin(a,b)
  %3890 = add i32 %3881, -1
  %3891 = add i32 %3883, -1
  %3892 = fmul fast float %3888, %3879
  %3893 = fmul fast float %3889, %3879
  %3894 = fptoui float %3892 to i32
  %3895 = fptoui float %3893 to i32
  %3896 = call i32 @dx.op.binary.i32(i32 40, i32 %3894, i32 %3890)  ; UMin(a,b)
  %3897 = call i32 @dx.op.binary.i32(i32 40, i32 %3895, i32 %3891)  ; UMin(a,b)
  %3898 = mul i32 %3897, %3881
  %3899 = add i32 %3898, %3896
  %3900 = shl i32 %3899, 2
  %3901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.i32 %3901, 0
  %3903 = icmp eq i32 %3902, -1
  br i1 %3903, label %4120, label %3904

; <label>:3904                                    ; preds = %3849
  %3905 = mul i32 %3902, 148
  %3906 = add i32 %3905, 4
  %3907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = add i32 %3905, 8
  %3910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = add i32 %3905, 36
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = add i32 %3905, 60
  %3916 = add i32 %3905, 92
  %3917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3919 = add i32 %3905, 116
  %3920 = fsub fast float %3871, %3908
  %3921 = fsub fast float %3872, %3911
  %3922 = fmul fast float %3879, %3920
  %3923 = fmul fast float %3879, %3921
  %3924 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3925 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3926 = fsub fast float 1.000000e+00, %3925
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 2
  %3929 = call float @dx.op.unary.f32(i32 83, float %3924)  ; DerivCoarseX(value)
  %3930 = call float @dx.op.unary.f32(i32 83, float %3926)  ; DerivCoarseX(value)
  %3931 = call float @dx.op.unary.f32(i32 84, float %3924)  ; DerivCoarseY(value)
  %3932 = call float @dx.op.unary.f32(i32 84, float %3926)  ; DerivCoarseY(value)
  %3933 = fmul fast float %3929, %3928
  %3934 = fmul fast float %3930, %3928
  %3935 = fmul fast float %3931, %3928
  %3936 = fmul fast float %3932, %3928
  %3937 = call float @dx.op.dot2.f32(i32 54, float %3935, float %3936, float %3935, float %3936)  ; Dot2(ax,ay,bx,by)
  %3938 = call float @dx.op.dot2.f32(i32 54, float %3933, float %3934, float %3933, float %3934)  ; Dot2(ax,ay,bx,by)
  %3939 = call float @dx.op.binary.f32(i32 35, float %3938, float %3937)  ; FMax(a,b)
  %3940 = call float @dx.op.unary.f32(i32 23, float %3939)  ; Log(value)
  %3941 = fmul fast float %3940, 5.000000e-01
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 1
  %3944 = fadd fast float %3943, %3941
  %3945 = call float @dx.op.binary.f32(i32 35, float %3944, float 0.000000e+00)  ; FMax(a,b)
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3948 = fadd fast float %3947, %3945
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 3
  %3951 = fadd fast float %3948, %3950
  %3952 = add i32 %3918, 0
  %3953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3954 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3953, i32 0)  ; GetDimensions(handle,mipLevel)
  %3955 = extractvalue %dx.types.Dimensions %3954, 0
  %3956 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3955)  ; FirstbitLo(value)
  %3957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.i32 %3957, 1
  %3959 = sub nsw i32 %3958, %3956
  %3960 = sitofp i32 %3959 to float
  %3961 = fsub fast float %3951, %3960
  %3962 = call float @dx.op.binary.f32(i32 35, float %3961, float 0.000000e+00)  ; FMax(a,b)
  %3963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3953, %dx.types.Handle %27, float %3924, float %3926, float %3914, float undef, i32 0, i32 0, i32 undef, float %3962)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = fcmp ule float %3964, 0x3FE0101020000000
  %3966 = extractvalue %dx.types.CBufRet.i32 %3957, 0
  %3967 = and i32 %3966, 128
  %3968 = icmp ne i32 %3967, 0
  %3969 = and i1 %3965, %3968
  br i1 %3969, label %4120, label %3970

; <label>:3970                                    ; preds = %3904
  %3971 = add i32 %3905, 20
  %3972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = add i32 %3905, 24
  %3975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = add i32 %3905, 40
  %3978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = add i32 %3905, 96
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 2
  %3985 = fmul fast float %3984, %3924
  %3986 = fmul fast float %3984, %3926
  %3987 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3988 = fadd fast float %3985, %3987
  %3989 = fadd fast float %3986, %3987
  %3990 = add i32 %3982, 0
  %3991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3990, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3992 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3991, i32 0)  ; GetDimensions(handle,mipLevel)
  %3993 = extractvalue %dx.types.Dimensions %3992, 0
  %3994 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3993)  ; FirstbitLo(value)
  %3995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.i32 %3995, 1
  %3997 = sub nsw i32 %3996, %3994
  %3998 = sitofp i32 %3997 to float
  %3999 = fsub fast float %3948, %3998
  %4000 = call float @dx.op.binary.f32(i32 35, float %3999, float 0.000000e+00)  ; FMax(a,b)
  %4001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3991, %dx.types.Handle %27, float %3988, float %3989, float %3979, float undef, i32 0, i32 0, i32 undef, float %4000)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = fmul fast float %4002, %3973
  %4004 = fadd fast float %4003, %3976
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.CBufRet.f32 %4005, 1
  %4008 = extractvalue %dx.types.CBufRet.f32 %4005, 2
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 3
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 3
  %4013 = extractvalue %dx.types.CBufRet.f32 %4005, 3
  %4014 = fadd fast float %4010, %3871
  %4015 = fadd fast float %4012, %3872
  %4016 = fadd fast float %4004, %4013
  %4017 = fmul fast float %4014, %4006
  %4018 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %4007, float %4017)  ; FMad(a,b,c)
  %4019 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %4008, float %4018)  ; FMad(a,b,c)
  %4020 = fsub fast float %4019, %4013
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4023 = fsub fast float %4020, %4022
  %4024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.i32 %4024, 0
  %4026 = call i32 @dx.op.binary.i32(i32 40, i32 %3902, i32 %4025)  ; UMin(a,b)
  %4027 = mul i32 %4026, 36
  %4028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.i32 %4028, 0
  %4030 = add i32 %4027, 4
  %4031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4031, 0
  %4033 = fmul fast float %4032, %3924
  %4034 = fmul fast float %4032, %3926
  %4035 = extractvalue %dx.types.CBufRet.f32 %4031, 1
  %4036 = fadd fast float %4033, %4035
  %4037 = fadd fast float %4034, %4035
  %4038 = icmp eq i32 %4029, 0
  br i1 %4038, label %4107, label %4039

; <label>:4039                                    ; preds = %3970
  br label %4040

; <label>:4040                                    ; preds = %4097, %4039
  %4041 = phi float [ %4098, %4097 ], [ 0.000000e+00, %4039 ]
  %4042 = phi float [ %4099, %4097 ], [ 0.000000e+00, %4039 ]
  %4043 = phi float [ %4100, %4097 ], [ 0.000000e+00, %4039 ]
  %4044 = phi float [ %4101, %4097 ], [ 0.000000e+00, %4039 ]
  %4045 = phi float [ %4102, %4097 ], [ 0.000000e+00, %4039 ]
  %4046 = phi float [ %4103, %4097 ], [ 0.000000e+00, %4039 ]
  %4047 = phi i32 [ %4104, %4097 ], [ 0, %4039 ]
  %4048 = shl i32 %4047, 2
  %4049 = add i32 %3915, %4048
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = add i32 %3919, %4048
  %4053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.i32 %4053, 0
  %4055 = add i32 %4054, 0
  %4056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4055, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4057 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4056, i32 0)  ; GetDimensions(handle,mipLevel)
  %4058 = extractvalue %dx.types.Dimensions %4057, 0
  %4059 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4058)  ; FirstbitLo(value)
  %4060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.i32 %4060, 1
  %4062 = sub nsw i32 %4061, %4059
  %4063 = sitofp i32 %4062 to float
  %4064 = fsub fast float %3948, %4063
  %4065 = call float @dx.op.binary.f32(i32 35, float %4064, float 0.000000e+00)  ; FMax(a,b)
  %4066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4056, %dx.types.Handle %27, float %4036, float %4037, float %4051, float undef, i32 0, i32 0, i32 undef, float %4065)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = fcmp fast ogt float %4067, 0.000000e+00
  br i1 %4068, label %4069, label %4097

; <label>:4069                                    ; preds = %4040
  %4070 = add i32 %4030, %4048
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = and i32 %4072, 32767
  %4074 = mul nuw nsw i32 %4073, 928
  %4075 = add nuw nsw i32 %4074, 48
  %4076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.ResRet.f32 %4076, 1
  %4079 = extractvalue %dx.types.ResRet.f32 %4076, 2
  %4080 = add nuw nsw i32 %4074, 60
  %4081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4080, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.ResRet.f32 %4081, 1
  %4084 = extractvalue %dx.types.ResRet.f32 %4081, 2
  %4085 = fmul fast float %4077, %4067
  %4086 = fmul fast float %4078, %4067
  %4087 = fmul fast float %4079, %4067
  %4088 = fadd fast float %4085, %4041
  %4089 = fadd fast float %4086, %4042
  %4090 = fadd fast float %4087, %4043
  %4091 = fmul fast float %4082, %4067
  %4092 = fmul fast float %4083, %4067
  %4093 = fmul fast float %4084, %4067
  %4094 = fadd fast float %4091, %4044
  %4095 = fadd fast float %4092, %4045
  %4096 = fadd fast float %4093, %4046
  br label %4097

; <label>:4097                                    ; preds = %4069, %4040
  %4098 = phi float [ %4088, %4069 ], [ %4041, %4040 ]
  %4099 = phi float [ %4089, %4069 ], [ %4042, %4040 ]
  %4100 = phi float [ %4090, %4069 ], [ %4043, %4040 ]
  %4101 = phi float [ %4094, %4069 ], [ %4044, %4040 ]
  %4102 = phi float [ %4095, %4069 ], [ %4045, %4040 ]
  %4103 = phi float [ %4096, %4069 ], [ %4046, %4040 ]
  %4104 = add nuw i32 %4047, 1
  %4105 = icmp eq i32 %4104, %4029
  br i1 %4105, label %4106, label %4040

; <label>:4106                                    ; preds = %4097
  br label %4107

; <label>:4107                                    ; preds = %4106, %3970
  %4108 = phi float [ 0.000000e+00, %3970 ], [ %4098, %4106 ]
  %4109 = phi float [ 0.000000e+00, %3970 ], [ %4099, %4106 ]
  %4110 = phi float [ 0.000000e+00, %3970 ], [ %4100, %4106 ]
  %4111 = phi float [ 0.000000e+00, %3970 ], [ %4101, %4106 ]
  %4112 = phi float [ 0.000000e+00, %3970 ], [ %4102, %4106 ]
  %4113 = phi float [ 0.000000e+00, %3970 ], [ %4103, %4106 ]
  %4114 = fadd fast float %4111, %4108
  %4115 = fmul fast float %4114, 0x3F847AE140000000
  %4116 = fadd fast float %4112, %4109
  %4117 = fmul fast float %4116, 0x3F847AE140000000
  %4118 = fadd fast float %4113, %4110
  %4119 = fmul fast float %4118, 0x3F847AE140000000
  br label %4120

; <label>:4120                                    ; preds = %4107, %3904, %3849, %3846, %3817, %3779
  %4121 = phi float [ %3831, %3817 ], [ -1.310720e+05, %3779 ], [ %4023, %4107 ], [ -1.310720e+05, %3849 ], [ -1.310720e+05, %3904 ], [ -1.310720e+05, %3846 ]
  %4122 = phi float [ %3841, %3817 ], [ 0.000000e+00, %3779 ], [ %4115, %4107 ], [ 0.000000e+00, %3849 ], [ 0.000000e+00, %3904 ], [ 0.000000e+00, %3846 ]
  %4123 = phi float [ %3843, %3817 ], [ 0.000000e+00, %3779 ], [ %4117, %4107 ], [ 0.000000e+00, %3849 ], [ 0.000000e+00, %3904 ], [ 0.000000e+00, %3846 ]
  %4124 = phi float [ %3845, %3817 ], [ 0.000000e+00, %3779 ], [ %4119, %4107 ], [ 0.000000e+00, %3849 ], [ 0.000000e+00, %3904 ], [ 0.000000e+00, %3846 ]
  %4125 = phi i1 [ true, %3817 ], [ false, %3779 ], [ true, %4107 ], [ false, %3849 ], [ false, %3904 ], [ false, %3846 ]
  %4126 = and i32 %181, 3
  %4127 = icmp eq i32 %4126, 1
  %4128 = select i1 %4127, float 1.000000e+00, float 0.000000e+00
  %4129 = fsub fast float %4121, %165
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4131 = select i1 %4125, float %4130, float 1.000000e+00
  %4132 = fmul fast float %4131, %4128
  %4133 = icmp eq i32 %4126, 3
  %4134 = select i1 %4133, float 1.000000e+00, float %4132
  %4135 = call float @dx.op.binary.f32(i32 35, float %3722, float %4134)  ; FMax(a,b)
  %4136 = fcmp fast olt float %4134, 1.000000e+00
  %4137 = fcmp uge float %47, 0.000000e+00
  %4138 = and i1 %4137, %4136
  br i1 %4138, label %4139, label %4149

; <label>:4139                                    ; preds = %4120
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = fadd fast float %4141, %4135
  %4145 = fcmp ule float %46, 0.000000e+00
  %4146 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4147 = select i1 %4145, float %4146, float 1.000000e+00
  %4148 = fmul fast float %4147, %4143
  br label %4149

; <label>:4149                                    ; preds = %4139, %4120
  %4150 = phi float [ %4144, %4139 ], [ %4135, %4120 ]
  %4151 = phi float [ %4142, %4139 ], [ 0.000000e+00, %4120 ]
  %4152 = phi float [ %4148, %4139 ], [ 0.000000e+00, %4120 ]
  %4153 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = fcmp fast une float %4154, 0.000000e+00
  %4157 = fcmp fast une float %4155, 0.000000e+00
  %4158 = or i1 %4156, %4157
  br i1 %4158, label %4159, label %4718

; <label>:4159                                    ; preds = %4149
  br i1 %4156, label %4160, label %4433

; <label>:4160                                    ; preds = %4159
  %4161 = call float @dx.op.unary.f32(i32 23, float %3719)  ; Log(value)
  %4162 = fmul fast float %4161, 4.000000e+00
  %4163 = call float @dx.op.unary.f32(i32 21, float %4162)  ; Exp(value)
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4166 = fmul fast float %4165, %34
  %4167 = fmul fast float %4165, %35
  %4168 = fmul fast float %4165, %36
  %4169 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4170 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4171 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4172 = call float @dx.op.unary.f32(i32 23, float %4169)  ; Log(value)
  %4173 = call float @dx.op.unary.f32(i32 23, float %4170)  ; Log(value)
  %4174 = call float @dx.op.unary.f32(i32 23, float %4171)  ; Log(value)
  %4175 = fmul fast float %4172, 4.000000e+00
  %4176 = fmul fast float %4173, 4.000000e+00
  %4177 = fmul fast float %4174, 4.000000e+00
  %4178 = call float @dx.op.unary.f32(i32 21, float %4175)  ; Exp(value)
  %4179 = call float @dx.op.unary.f32(i32 21, float %4176)  ; Exp(value)
  %4180 = call float @dx.op.unary.f32(i32 21, float %4177)  ; Exp(value)
  %4181 = fadd fast float %4179, %4178
  %4182 = fadd fast float %4181, %4180
  %4183 = fdiv fast float 1.000000e+00, %4182
  %4184 = fmul fast float %4183, %4178
  %4185 = fcmp fast ogt float %43, 0.000000e+00
  %4186 = fcmp fast ogt float %44, 0.000000e+00
  %4187 = fcmp fast ogt float %45, 0.000000e+00
  %4188 = fcmp fast olt float %43, 0.000000e+00
  %4189 = fcmp fast olt float %44, 0.000000e+00
  %4190 = fcmp fast olt float %45, 0.000000e+00
  %4191 = zext i1 %4185 to i32
  %4192 = zext i1 %4186 to i32
  %4193 = zext i1 %4187 to i32
  %4194 = zext i1 %4188 to i32
  %4195 = zext i1 %4189 to i32
  %4196 = zext i1 %4190 to i32
  %4197 = sub nsw i32 %4191, %4194
  %4198 = sub nsw i32 %4192, %4195
  %4199 = sub nsw i32 %4193, %4196
  %4200 = call float @dx.op.unary.f32(i32 83, float %4166)  ; DerivCoarseX(value)
  %4201 = call float @dx.op.unary.f32(i32 83, float %4167)  ; DerivCoarseX(value)
  %4202 = call float @dx.op.unary.f32(i32 83, float %4168)  ; DerivCoarseX(value)
  %4203 = call float @dx.op.unary.f32(i32 84, float %4166)  ; DerivCoarseY(value)
  %4204 = call float @dx.op.unary.f32(i32 84, float %4167)  ; DerivCoarseY(value)
  %4205 = call float @dx.op.unary.f32(i32 84, float %4168)  ; DerivCoarseY(value)
  %4206 = fcmp fast ole float %213, %4184
  %4207 = fmul fast float %4183, %4181
  %4208 = fcmp fast ole float %213, %4207
  %4209 = select i1 %4208, float %4168, float %4166
  %4210 = select i1 %4208, float %4166, float %4167
  %4211 = select i1 %4206, float %4167, float %4209
  %4212 = select i1 %4206, float %4168, float %4210
  %4213 = select i1 %4208, float %4202, float %4200
  %4214 = select i1 %4208, float %4200, float %4201
  %4215 = select i1 %4206, float %4201, float %4213
  %4216 = select i1 %4206, float %4202, float %4214
  %4217 = select i1 %4208, float %4205, float %4203
  %4218 = select i1 %4208, float %4203, float %4204
  %4219 = select i1 %4206, float %4204, float %4217
  %4220 = select i1 %4206, float %4205, float %4218
  %4221 = call float @dx.op.unary.f32(i32 27, float %4211)  ; Round_ni(value)
  %4222 = call float @dx.op.unary.f32(i32 27, float %4212)  ; Round_ni(value)
  %4223 = fptosi float %4221 to i32
  %4224 = fptosi float %4222 to i32
  %4225 = xor i32 %4224, %4223
  %4226 = sitofp i32 %4225 to float
  %4227 = fptosi float %4226 to i32
  %4228 = sitofp i32 %4227 to float
  %4229 = fmul fast float %4228, 0x3FE3C6EF40000000
  %4230 = frem fast float %4221, 2.560000e+02
  %4231 = frem fast float %4222, 2.560000e+02
  %4232 = fptoui float %4230 to i32
  %4233 = fptoui float %4231 to i32
  %4234 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4232, i32 %4233, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.ResRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.ResRet.f32 %4234, 2
  %4238 = fadd fast float %4235, %4229
  %4239 = fadd fast float %4236, %4229
  %4240 = fadd fast float %4237, %4229
  %4241 = call float @dx.op.unary.f32(i32 22, float %4238)  ; Frc(value)
  %4242 = call float @dx.op.unary.f32(i32 22, float %4239)  ; Frc(value)
  %4243 = call float @dx.op.unary.f32(i32 22, float %4240)  ; Frc(value)
  %4244 = fmul fast float %4243, 0x401921FB60000000
  %4245 = call float @dx.op.unary.f32(i32 13, float %4244)  ; Sin(value)
  %4246 = call float @dx.op.unary.f32(i32 12, float %4244)  ; Cos(value)
  %4247 = fsub fast float -0.000000e+00, %4246
  %4248 = fmul fast float %4246, %4211
  %4249 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4212, float %4248)  ; FMad(a,b,c)
  %4250 = fmul fast float %4245, %4211
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %4247, float %4212, float %4250)  ; FMad(a,b,c)
  %4252 = fadd fast float %4249, %4241
  %4253 = fadd fast float %4251, %4242
  %4254 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4255 = bitcast float %4254 to i32
  %4256 = icmp eq i32 %4255, 0
  br i1 %4256, label %4295, label %4257

; <label>:4257                                    ; preds = %4160
  %4258 = add i32 %4255, 0
  %4259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4260 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4259, %dx.types.Handle %73, float %4252, float %4253, float undef, float undef, i32 0, i32 0, i32 undef, float %4215, float %4216, float undef, float %4219, float %4220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 1
  %4264 = extractvalue %dx.types.CBufRet.f32 %4262, 2
  %4265 = fsub fast float 1.000000e+00, %4154
  %4266 = call float @dx.op.binary.f32(i32 35, float %4265, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4267 = bitcast float %4154 to i32
  %4268 = sitofp i32 %4267 to float
  %4269 = fadd fast float %4268, 0xC1CFBF8940000000
  %4270 = fmul fast float %4264, %4269
  %4271 = fadd fast float %4270, 0x41CFBF8940000000
  %4272 = fptosi float %4271 to i32
  %4273 = bitcast i32 %4272 to float
  %4274 = bitcast float %4266 to i32
  %4275 = sitofp i32 %4274 to float
  %4276 = fadd fast float %4275, 0xC1CFBF8940000000
  %4277 = fmul fast float %4276, %4264
  %4278 = fadd fast float %4277, 0x41CFBF8940000000
  %4279 = fptosi float %4278 to i32
  %4280 = bitcast i32 %4279 to float
  %4281 = fmul fast float %4273, %4263
  %4282 = fmul fast float %4280, %4263
  %4283 = fsub fast float %4266, %4281
  %4284 = fadd fast float %4282, %4266
  %4285 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4286 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4287 = fsub fast float %4261, %4285
  %4288 = fsub fast float %4286, %4285
  %4289 = bitcast float %4288 to i32
  %4290 = sub nsw i32 2129859010, %4289
  %4291 = bitcast i32 %4290 to float
  %4292 = fmul fast float %4291, %4287
  %4293 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4294 = fcmp fast olt float %4293, 0x3F70101020000000
  br i1 %4294, label %4433, label %4295

; <label>:4295                                    ; preds = %4257, %4160
  %4296 = phi float [ %4293, %4257 ], [ %4154, %4160 ]
  %4297 = fmul fast float %4296, %4163
  %4298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.i32 %4298, 1
  %4300 = extractvalue %dx.types.CBufRet.i32 %4298, 0
  %4301 = add i32 %4300, 0
  %4302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4303 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4302, %dx.types.Handle %72, float %4252, float %4253, float undef, float undef, i32 0, i32 0, i32 undef, float %4215, float %4216, float undef, float %4219, float %4220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4304 = extractvalue %dx.types.ResRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.ResRet.f32 %4303, 1
  %4306 = extractvalue %dx.types.ResRet.f32 %4303, 2
  %4307 = extractvalue %dx.types.ResRet.f32 %4303, 3
  %4308 = and i32 %4299, 255
  %4309 = uitofp i32 %4308 to float
  %4310 = lshr i32 %4299, 8
  %4311 = and i32 %4310, 255
  %4312 = uitofp i32 %4311 to float
  %4313 = fmul fast float %4307, %4309
  %4314 = fadd fast float %4313, %4312
  %4315 = fmul fast float %4314, 0x3F70101000000000
  %4316 = fadd fast float %4315, 0xBFB99999A0000000
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fmul fast float %4317, 0x3FF1C71C80000000
  %4319 = call float @dx.op.binary.f32(i32 36, float %4315, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4320 = fsub fast float 1.000000e+00, %4318
  %4321 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4322 = fmul fast float %4321, %4304
  %4323 = fmul fast float %4321, %4305
  %4324 = fmul fast float %4321, %4306
  %4325 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = fmul fast float %4318, %4304
  %4329 = fmul fast float %4318, %4305
  %4330 = fmul fast float %4318, %4306
  %4331 = fadd fast float %4328, %4319
  %4332 = fadd fast float %4329, %4319
  %4333 = fadd fast float %4330, %4319
  %4334 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.i32 %4337, 3
  %4339 = extractvalue %dx.types.CBufRet.i32 %4337, 2
  %4340 = add i32 %4339, 0
  %4341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4342 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4341, %dx.types.Handle %72, float %4252, float %4253, float undef, float undef, i32 0, i32 0, i32 undef, float %4215, float %4216, float undef, float %4219, float %4220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.ResRet.f32 %4342, 1
  %4345 = extractvalue %dx.types.ResRet.f32 %4342, 2
  %4346 = extractvalue %dx.types.ResRet.f32 %4342, 3
  %4347 = and i32 %4338, 255
  %4348 = uitofp i32 %4347 to float
  %4349 = lshr i32 %4338, 8
  %4350 = and i32 %4349, 255
  %4351 = uitofp i32 %4350 to float
  %4352 = lshr i32 %4338, 16
  %4353 = and i32 %4352, 255
  %4354 = uitofp i32 %4353 to float
  %4355 = fmul fast float %4354, 0x3F70101000000000
  %4356 = fmul fast float %4343, %4348
  %4357 = fadd fast float %4356, %4351
  %4358 = fmul fast float %4357, 0x3F70101000000000
  %4359 = fadd fast float %4344, -5.000000e-01
  %4360 = fadd fast float %4346, -5.000000e-01
  %4361 = fmul fast float %4359, %4355
  %4362 = fmul fast float %4360, %4355
  %4363 = fadd fast float %4361, 5.000000e-01
  %4364 = fadd fast float %4362, 5.000000e-01
  %4365 = fmul fast float %4363, 2.000000e+00
  %4366 = fadd fast float %4365, -1.000000e+00
  %4367 = fmul fast float %4364, 2.000000e+00
  %4368 = fadd fast float %4367, -1.000000e+00
  %4369 = fadd fast float %4366, %4368
  %4370 = fmul fast float %4369, 5.000000e-01
  %4371 = fsub fast float %4366, %4368
  %4372 = fmul fast float %4371, 5.000000e-01
  %4373 = call float @dx.op.unary.f32(i32 6, float %4370)  ; FAbs(value)
  %4374 = fsub fast float 1.000000e+00, %4373
  %4375 = call float @dx.op.unary.f32(i32 6, float %4372)  ; FAbs(value)
  %4376 = fsub fast float %4374, %4375
  %4377 = call float @dx.op.dot3.f32(i32 55, float %4370, float %4372, float %4376, float %4370, float %4372, float %4376)  ; Dot3(ax,ay,az,bx,by,bz)
  %4378 = call float @dx.op.unary.f32(i32 25, float %4377)  ; Rsqrt(value)
  %4379 = fmul fast float %4370, %4378
  %4380 = fmul fast float %4372, %4378
  %4381 = select i1 %4208, i32 %4198, i32 %4199
  %4382 = select i1 %4206, i32 %4197, i32 %4381
  %4383 = sitofp i32 %4382 to float
  %4384 = fmul fast float %4376, %4383
  %4385 = fmul fast float %4384, %4378
  %4386 = select i1 %4208, float %4385, float %4380
  %4387 = select i1 %4208, float %4380, float %4385
  %4388 = select i1 %4206, float %4385, float %4379
  %4389 = select i1 %4206, float %4380, float %4386
  %4390 = select i1 %4206, float %4379, float %4387
  %4391 = fsub fast float %4325, %3758
  %4392 = fsub fast float %4326, %3759
  %4393 = fsub fast float %4327, %3760
  %4394 = fmul fast float %4391, %4297
  %4395 = fmul fast float %4392, %4297
  %4396 = fmul fast float %4393, %4297
  %4397 = fadd fast float %4394, %3758
  %4398 = fadd fast float %4395, %3759
  %4399 = fadd fast float %4396, %3760
  %4400 = fsub fast float %4334, %3743
  %4401 = fsub fast float %4335, %3744
  %4402 = fsub fast float %4336, %3745
  %4403 = fmul fast float %4400, %4297
  %4404 = fmul fast float %4401, %4297
  %4405 = fmul fast float %4402, %4297
  %4406 = fadd fast float %4403, %3743
  %4407 = fadd fast float %4404, %3744
  %4408 = fadd fast float %4405, %3745
  %4409 = fadd fast float %4388, %3707
  %4410 = fadd fast float %4389, %3708
  %4411 = fadd fast float %4390, %3709
  %4412 = call float @dx.op.dot3.f32(i32 55, float %4409, float %4410, float %4411, float %4409, float %4410, float %4411)  ; Dot3(ax,ay,az,bx,by,bz)
  %4413 = call float @dx.op.unary.f32(i32 25, float %4412)  ; Rsqrt(value)
  %4414 = fmul fast float %4409, %4413
  %4415 = fmul fast float %4410, %4413
  %4416 = fmul fast float %4411, %4413
  %4417 = fsub fast float %4414, %3707
  %4418 = fsub fast float %4415, %3708
  %4419 = fsub fast float %4416, %3709
  %4420 = fmul fast float %4417, %4297
  %4421 = fmul fast float %4418, %4297
  %4422 = fmul fast float %4419, %4297
  %4423 = fadd fast float %4420, %3707
  %4424 = fadd fast float %4421, %3708
  %4425 = fadd fast float %4422, %3709
  %4426 = call float @dx.op.binary.f32(i32 36, float %3719, float %4345)  ; FMin(a,b)
  %4427 = fsub fast float %4426, %3719
  %4428 = fmul fast float %4427, %4297
  %4429 = fadd fast float %4428, %3719
  %4430 = fsub fast float %4358, %3746
  %4431 = fmul fast float %4430, %4297
  %4432 = fadd fast float %4431, %3746
  br label %4433

; <label>:4433                                    ; preds = %4295, %4257, %4159
  %4434 = phi float [ %4406, %4295 ], [ %3743, %4257 ], [ %3743, %4159 ]
  %4435 = phi float [ %4407, %4295 ], [ %3744, %4257 ], [ %3744, %4159 ]
  %4436 = phi float [ %4408, %4295 ], [ %3745, %4257 ], [ %3745, %4159 ]
  %4437 = phi float [ %4423, %4295 ], [ %3707, %4257 ], [ %3707, %4159 ]
  %4438 = phi float [ %4424, %4295 ], [ %3708, %4257 ], [ %3708, %4159 ]
  %4439 = phi float [ %4425, %4295 ], [ %3709, %4257 ], [ %3709, %4159 ]
  %4440 = phi float [ %4397, %4295 ], [ %3758, %4257 ], [ %3758, %4159 ]
  %4441 = phi float [ %4398, %4295 ], [ %3759, %4257 ], [ %3759, %4159 ]
  %4442 = phi float [ %4399, %4295 ], [ %3760, %4257 ], [ %3760, %4159 ]
  %4443 = phi float [ %4432, %4295 ], [ %3746, %4257 ], [ %3746, %4159 ]
  %4444 = phi float [ %4429, %4295 ], [ %3719, %4257 ], [ %3719, %4159 ]
  br i1 %4157, label %4445, label %4718

; <label>:4445                                    ; preds = %4433
  %4446 = call float @dx.op.unary.f32(i32 23, float %4444)  ; Log(value)
  %4447 = fmul fast float %4446, 4.000000e+00
  %4448 = call float @dx.op.unary.f32(i32 21, float %4447)  ; Exp(value)
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 0
  %4451 = fmul fast float %4450, %34
  %4452 = fmul fast float %4450, %35
  %4453 = fmul fast float %4450, %36
  %4454 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4455 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4456 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4457 = call float @dx.op.unary.f32(i32 23, float %4454)  ; Log(value)
  %4458 = call float @dx.op.unary.f32(i32 23, float %4455)  ; Log(value)
  %4459 = call float @dx.op.unary.f32(i32 23, float %4456)  ; Log(value)
  %4460 = fmul fast float %4457, 4.000000e+00
  %4461 = fmul fast float %4458, 4.000000e+00
  %4462 = fmul fast float %4459, 4.000000e+00
  %4463 = call float @dx.op.unary.f32(i32 21, float %4460)  ; Exp(value)
  %4464 = call float @dx.op.unary.f32(i32 21, float %4461)  ; Exp(value)
  %4465 = call float @dx.op.unary.f32(i32 21, float %4462)  ; Exp(value)
  %4466 = fadd fast float %4464, %4463
  %4467 = fadd fast float %4466, %4465
  %4468 = fdiv fast float 1.000000e+00, %4467
  %4469 = fmul fast float %4468, %4463
  %4470 = fcmp fast ogt float %43, 0.000000e+00
  %4471 = fcmp fast ogt float %44, 0.000000e+00
  %4472 = fcmp fast ogt float %45, 0.000000e+00
  %4473 = fcmp fast olt float %43, 0.000000e+00
  %4474 = fcmp fast olt float %44, 0.000000e+00
  %4475 = fcmp fast olt float %45, 0.000000e+00
  %4476 = zext i1 %4470 to i32
  %4477 = zext i1 %4471 to i32
  %4478 = zext i1 %4472 to i32
  %4479 = zext i1 %4473 to i32
  %4480 = zext i1 %4474 to i32
  %4481 = zext i1 %4475 to i32
  %4482 = sub nsw i32 %4476, %4479
  %4483 = sub nsw i32 %4477, %4480
  %4484 = sub nsw i32 %4478, %4481
  %4485 = call float @dx.op.unary.f32(i32 83, float %4451)  ; DerivCoarseX(value)
  %4486 = call float @dx.op.unary.f32(i32 83, float %4452)  ; DerivCoarseX(value)
  %4487 = call float @dx.op.unary.f32(i32 83, float %4453)  ; DerivCoarseX(value)
  %4488 = call float @dx.op.unary.f32(i32 84, float %4451)  ; DerivCoarseY(value)
  %4489 = call float @dx.op.unary.f32(i32 84, float %4452)  ; DerivCoarseY(value)
  %4490 = call float @dx.op.unary.f32(i32 84, float %4453)  ; DerivCoarseY(value)
  %4491 = fcmp fast ole float %213, %4469
  %4492 = fmul fast float %4468, %4466
  %4493 = fcmp fast ole float %213, %4492
  %4494 = select i1 %4493, float %4453, float %4451
  %4495 = select i1 %4493, float %4451, float %4452
  %4496 = select i1 %4491, float %4452, float %4494
  %4497 = select i1 %4491, float %4453, float %4495
  %4498 = select i1 %4493, float %4487, float %4485
  %4499 = select i1 %4493, float %4485, float %4486
  %4500 = select i1 %4491, float %4486, float %4498
  %4501 = select i1 %4491, float %4487, float %4499
  %4502 = select i1 %4493, float %4490, float %4488
  %4503 = select i1 %4493, float %4488, float %4489
  %4504 = select i1 %4491, float %4489, float %4502
  %4505 = select i1 %4491, float %4490, float %4503
  %4506 = call float @dx.op.unary.f32(i32 27, float %4496)  ; Round_ni(value)
  %4507 = call float @dx.op.unary.f32(i32 27, float %4497)  ; Round_ni(value)
  %4508 = fptosi float %4506 to i32
  %4509 = fptosi float %4507 to i32
  %4510 = xor i32 %4509, %4508
  %4511 = sitofp i32 %4510 to float
  %4512 = fptosi float %4511 to i32
  %4513 = sitofp i32 %4512 to float
  %4514 = fmul fast float %4513, 0x3FE3C6EF40000000
  %4515 = frem fast float %4506, 2.560000e+02
  %4516 = frem fast float %4507, 2.560000e+02
  %4517 = fptoui float %4515 to i32
  %4518 = fptoui float %4516 to i32
  %4519 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4517, i32 %4518, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.ResRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.ResRet.f32 %4519, 2
  %4523 = fadd fast float %4520, %4514
  %4524 = fadd fast float %4521, %4514
  %4525 = fadd fast float %4522, %4514
  %4526 = call float @dx.op.unary.f32(i32 22, float %4523)  ; Frc(value)
  %4527 = call float @dx.op.unary.f32(i32 22, float %4524)  ; Frc(value)
  %4528 = call float @dx.op.unary.f32(i32 22, float %4525)  ; Frc(value)
  %4529 = fmul fast float %4528, 0x401921FB60000000
  %4530 = call float @dx.op.unary.f32(i32 13, float %4529)  ; Sin(value)
  %4531 = call float @dx.op.unary.f32(i32 12, float %4529)  ; Cos(value)
  %4532 = fsub fast float -0.000000e+00, %4531
  %4533 = fmul fast float %4531, %4496
  %4534 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4497, float %4533)  ; FMad(a,b,c)
  %4535 = fmul fast float %4530, %4496
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4532, float %4497, float %4535)  ; FMad(a,b,c)
  %4537 = fadd fast float %4534, %4526
  %4538 = fadd fast float %4536, %4527
  %4539 = extractvalue %dx.types.CBufRet.f32 %4449, 3
  %4540 = bitcast float %4539 to i32
  %4541 = icmp eq i32 %4540, 0
  br i1 %4541, label %4580, label %4542

; <label>:4542                                    ; preds = %4445
  %4543 = add i32 %4540, 0
  %4544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4545 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4544, %dx.types.Handle %73, float %4537, float %4538, float undef, float undef, i32 0, i32 0, i32 undef, float %4500, float %4501, float undef, float %4504, float %4505, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 1
  %4549 = extractvalue %dx.types.CBufRet.f32 %4547, 2
  %4550 = fsub fast float 1.000000e+00, %4155
  %4551 = call float @dx.op.binary.f32(i32 35, float %4550, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4552 = bitcast float %4155 to i32
  %4553 = sitofp i32 %4552 to float
  %4554 = fadd fast float %4553, 0xC1CFBF8940000000
  %4555 = fmul fast float %4549, %4554
  %4556 = fadd fast float %4555, 0x41CFBF8940000000
  %4557 = fptosi float %4556 to i32
  %4558 = bitcast i32 %4557 to float
  %4559 = bitcast float %4551 to i32
  %4560 = sitofp i32 %4559 to float
  %4561 = fadd fast float %4560, 0xC1CFBF8940000000
  %4562 = fmul fast float %4561, %4549
  %4563 = fadd fast float %4562, 0x41CFBF8940000000
  %4564 = fptosi float %4563 to i32
  %4565 = bitcast i32 %4564 to float
  %4566 = fmul fast float %4558, %4548
  %4567 = fmul fast float %4565, %4548
  %4568 = fsub fast float %4551, %4566
  %4569 = fadd fast float %4567, %4551
  %4570 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4571 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4572 = fsub fast float %4546, %4570
  %4573 = fsub fast float %4571, %4570
  %4574 = bitcast float %4573 to i32
  %4575 = sub nsw i32 2129859010, %4574
  %4576 = bitcast i32 %4575 to float
  %4577 = fmul fast float %4576, %4572
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fcmp fast olt float %4578, 0x3F70101020000000
  br i1 %4579, label %4718, label %4580

; <label>:4580                                    ; preds = %4542, %4445
  %4581 = phi float [ %4578, %4542 ], [ %4155, %4445 ]
  %4582 = fmul fast float %4581, %4448
  %4583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.i32 %4583, 1
  %4585 = extractvalue %dx.types.CBufRet.i32 %4583, 0
  %4586 = add i32 %4585, 0
  %4587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4588 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4587, %dx.types.Handle %72, float %4537, float %4538, float undef, float undef, i32 0, i32 0, i32 undef, float %4500, float %4501, float undef, float %4504, float %4505, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = extractvalue %dx.types.ResRet.f32 %4588, 3
  %4593 = and i32 %4584, 255
  %4594 = uitofp i32 %4593 to float
  %4595 = lshr i32 %4584, 8
  %4596 = and i32 %4595, 255
  %4597 = uitofp i32 %4596 to float
  %4598 = fmul fast float %4592, %4594
  %4599 = fadd fast float %4598, %4597
  %4600 = fmul fast float %4599, 0x3F70101000000000
  %4601 = fadd fast float %4600, 0xBFB99999A0000000
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = fmul fast float %4602, 0x3FF1C71C80000000
  %4604 = call float @dx.op.binary.f32(i32 36, float %4600, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4605 = fsub fast float 1.000000e+00, %4603
  %4606 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4607 = fmul fast float %4606, %4589
  %4608 = fmul fast float %4606, %4590
  %4609 = fmul fast float %4606, %4591
  %4610 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4611 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4612 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4613 = fmul fast float %4603, %4589
  %4614 = fmul fast float %4603, %4590
  %4615 = fmul fast float %4603, %4591
  %4616 = fadd fast float %4613, %4604
  %4617 = fadd fast float %4614, %4604
  %4618 = fadd fast float %4615, %4604
  %4619 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4620 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4621 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.i32 %4622, 3
  %4624 = extractvalue %dx.types.CBufRet.i32 %4622, 2
  %4625 = add i32 %4624, 0
  %4626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4627 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4626, %dx.types.Handle %72, float %4537, float %4538, float undef, float undef, i32 0, i32 0, i32 undef, float %4500, float %4501, float undef, float %4504, float %4505, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.ResRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.ResRet.f32 %4627, 2
  %4631 = extractvalue %dx.types.ResRet.f32 %4627, 3
  %4632 = and i32 %4623, 255
  %4633 = uitofp i32 %4632 to float
  %4634 = lshr i32 %4623, 8
  %4635 = and i32 %4634, 255
  %4636 = uitofp i32 %4635 to float
  %4637 = lshr i32 %4623, 16
  %4638 = and i32 %4637, 255
  %4639 = uitofp i32 %4638 to float
  %4640 = fmul fast float %4639, 0x3F70101000000000
  %4641 = fmul fast float %4628, %4633
  %4642 = fadd fast float %4641, %4636
  %4643 = fmul fast float %4642, 0x3F70101000000000
  %4644 = fadd fast float %4629, -5.000000e-01
  %4645 = fadd fast float %4631, -5.000000e-01
  %4646 = fmul fast float %4644, %4640
  %4647 = fmul fast float %4645, %4640
  %4648 = fadd fast float %4646, 5.000000e-01
  %4649 = fadd fast float %4647, 5.000000e-01
  %4650 = fmul fast float %4648, 2.000000e+00
  %4651 = fadd fast float %4650, -1.000000e+00
  %4652 = fmul fast float %4649, 2.000000e+00
  %4653 = fadd fast float %4652, -1.000000e+00
  %4654 = fadd fast float %4651, %4653
  %4655 = fmul fast float %4654, 5.000000e-01
  %4656 = fsub fast float %4651, %4653
  %4657 = fmul fast float %4656, 5.000000e-01
  %4658 = call float @dx.op.unary.f32(i32 6, float %4655)  ; FAbs(value)
  %4659 = fsub fast float 1.000000e+00, %4658
  %4660 = call float @dx.op.unary.f32(i32 6, float %4657)  ; FAbs(value)
  %4661 = fsub fast float %4659, %4660
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4655, float %4657, float %4661, float %4655, float %4657, float %4661)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = call float @dx.op.unary.f32(i32 25, float %4662)  ; Rsqrt(value)
  %4664 = fmul fast float %4655, %4663
  %4665 = fmul fast float %4657, %4663
  %4666 = select i1 %4493, i32 %4483, i32 %4484
  %4667 = select i1 %4491, i32 %4482, i32 %4666
  %4668 = sitofp i32 %4667 to float
  %4669 = fmul fast float %4661, %4668
  %4670 = fmul fast float %4669, %4663
  %4671 = select i1 %4493, float %4670, float %4665
  %4672 = select i1 %4493, float %4665, float %4670
  %4673 = select i1 %4491, float %4670, float %4664
  %4674 = select i1 %4491, float %4665, float %4671
  %4675 = select i1 %4491, float %4664, float %4672
  %4676 = fsub fast float %4610, %4440
  %4677 = fsub fast float %4611, %4441
  %4678 = fsub fast float %4612, %4442
  %4679 = fmul fast float %4676, %4582
  %4680 = fmul fast float %4677, %4582
  %4681 = fmul fast float %4678, %4582
  %4682 = fadd fast float %4679, %4440
  %4683 = fadd fast float %4680, %4441
  %4684 = fadd fast float %4681, %4442
  %4685 = fsub fast float %4619, %4434
  %4686 = fsub fast float %4620, %4435
  %4687 = fsub fast float %4621, %4436
  %4688 = fmul fast float %4685, %4582
  %4689 = fmul fast float %4686, %4582
  %4690 = fmul fast float %4687, %4582
  %4691 = fadd fast float %4688, %4434
  %4692 = fadd fast float %4689, %4435
  %4693 = fadd fast float %4690, %4436
  %4694 = fadd fast float %4673, %4437
  %4695 = fadd fast float %4674, %4438
  %4696 = fadd fast float %4675, %4439
  %4697 = call float @dx.op.dot3.f32(i32 55, float %4694, float %4695, float %4696, float %4694, float %4695, float %4696)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = call float @dx.op.unary.f32(i32 25, float %4697)  ; Rsqrt(value)
  %4699 = fmul fast float %4694, %4698
  %4700 = fmul fast float %4695, %4698
  %4701 = fmul fast float %4696, %4698
  %4702 = fsub fast float %4699, %4437
  %4703 = fsub fast float %4700, %4438
  %4704 = fsub fast float %4701, %4439
  %4705 = fmul fast float %4702, %4582
  %4706 = fmul fast float %4703, %4582
  %4707 = fmul fast float %4704, %4582
  %4708 = fadd fast float %4705, %4437
  %4709 = fadd fast float %4706, %4438
  %4710 = fadd fast float %4707, %4439
  %4711 = call float @dx.op.binary.f32(i32 36, float %4444, float %4630)  ; FMin(a,b)
  %4712 = fsub fast float %4711, %4444
  %4713 = fmul fast float %4712, %4582
  %4714 = fadd fast float %4713, %4444
  %4715 = fsub fast float %4643, %4443
  %4716 = fmul fast float %4715, %4582
  %4717 = fadd fast float %4716, %4443
  br label %4718

; <label>:4718                                    ; preds = %4580, %4542, %4433, %4149
  %4719 = phi float [ %4691, %4580 ], [ %4434, %4542 ], [ %4434, %4433 ], [ %3743, %4149 ]
  %4720 = phi float [ %4692, %4580 ], [ %4435, %4542 ], [ %4435, %4433 ], [ %3744, %4149 ]
  %4721 = phi float [ %4693, %4580 ], [ %4436, %4542 ], [ %4436, %4433 ], [ %3745, %4149 ]
  %4722 = phi float [ %4708, %4580 ], [ %4437, %4542 ], [ %4437, %4433 ], [ %3707, %4149 ]
  %4723 = phi float [ %4709, %4580 ], [ %4438, %4542 ], [ %4438, %4433 ], [ %3708, %4149 ]
  %4724 = phi float [ %4710, %4580 ], [ %4439, %4542 ], [ %4439, %4433 ], [ %3709, %4149 ]
  %4725 = phi float [ %4682, %4580 ], [ %4440, %4542 ], [ %4440, %4433 ], [ %3758, %4149 ]
  %4726 = phi float [ %4683, %4580 ], [ %4441, %4542 ], [ %4441, %4433 ], [ %3759, %4149 ]
  %4727 = phi float [ %4684, %4580 ], [ %4442, %4542 ], [ %4442, %4433 ], [ %3760, %4149 ]
  %4728 = phi float [ %4717, %4580 ], [ %4443, %4542 ], [ %4443, %4433 ], [ %3746, %4149 ]
  %4729 = phi float [ %4714, %4580 ], [ %4444, %4542 ], [ %4444, %4433 ], [ %3719, %4149 ]
  %4730 = fcmp fast une float %4153, 0.000000e+00
  %4731 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = call float @dx.op.unary.f32(i32 25, float %4731)  ; Rsqrt(value)
  br i1 %4730, label %4740, label %4733

; <label>:4733                                    ; preds = %4718
  %4734 = fmul fast float %4732, %163
  %4735 = fmul fast float %4732, %164
  %4736 = fmul fast float %4732, %165
  %4737 = fsub fast float -0.000000e+00, %4734
  %4738 = fsub fast float -0.000000e+00, %4735
  %4739 = fsub fast float -0.000000e+00, %4736
  br label %4907

; <label>:4740                                    ; preds = %4718
  %4741 = fmul fast float %163, %4732
  %4742 = fsub fast float -0.000000e+00, %4741
  %4743 = fmul fast float %164, %4732
  %4744 = fsub fast float -0.000000e+00, %4743
  %4745 = fmul fast float %165, %4732
  %4746 = fsub fast float -0.000000e+00, %4745
  %4747 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4744, float %4746, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = fmul fast float %4153, 2.500000e+00
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4153, 0x4013FFFFE0000000
  %4751 = fadd fast float %4750, 0xBFFFFFFFE0000000
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4153, 0x4004000020000000
  %4754 = fadd fast float %4753, 0xBFF8000040000000
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = fmul fast float %3725, 1.000000e+01
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = fmul fast float %4757, 2.000000e+00
  %4759 = fsub fast float 3.000000e+00, %4758
  %4760 = fmul fast float %4757, %4757
  %4761 = fmul fast float %4760, %4759
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = fsub fast float 0x3FE3333340000000, %4728
  %4764 = fmul fast float %4763, 0x400AAAAAA0000000
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = fmul fast float %4762, %4765
  %4767 = fmul fast float %4725, 0x3FEA2B8620000000
  %4768 = fmul fast float %4726, 0x3FEA2B8620000000
  %4769 = fmul fast float %4727, 0x3FEA2B8620000000
  %4770 = fadd fast float %4767, 0x3FC81DFBA0000000
  %4771 = fmul fast float %4770, %4725
  %4772 = fadd fast float %4771, 0x3F910E6020000000
  %4773 = fadd fast float %4768, 0x3FC81DFBA0000000
  %4774 = fmul fast float %4773, %4726
  %4775 = fadd fast float %4774, 0x3F910E6020000000
  %4776 = fadd fast float %4769, 0x3FC81DFBA0000000
  %4777 = fmul fast float %4776, %4727
  %4778 = fadd fast float %4777, 0x3F910E6020000000
  %4779 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4782 = fsub fast float %4779, %4725
  %4783 = fsub fast float %4780, %4726
  %4784 = fsub fast float %4781, %4727
  %4785 = fmul fast float %4782, %4749
  %4786 = fmul fast float %4785, %4766
  %4787 = fmul fast float %4783, %4749
  %4788 = fmul fast float %4787, %4766
  %4789 = fmul fast float %4784, %4749
  %4790 = fmul fast float %4789, %4766
  %4791 = fadd fast float %4786, %4725
  %4792 = fadd fast float %4788, %4726
  %4793 = fadd fast float %4790, %4727
  %4794 = fmul fast float %4729, %4729
  %4795 = fmul fast float %4794, %4794
  %4796 = fadd fast float %4752, 1.000000e+00
  %4797 = fsub fast float %4796, %4766
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fsub fast float 1.000000e+00, %4795
  %4802 = call float @dx.op.binary.f32(i32 36, float %4798, float %4801)  ; FMin(a,b)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4804 = call float @dx.op.binary.f32(i32 35, float %4802, float %4803)  ; FMax(a,b)
  %4805 = fadd fast float %4800, 0xBFE4CCCCC0000000
  %4806 = fmul fast float %4805, 0x4006DB6DA0000000
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = fmul fast float %4807, 2.000000e+00
  %4809 = fsub fast float 3.000000e+00, %4808
  %4810 = bitcast float %4719 to i32
  %4811 = ashr i32 %4810, 1
  %4812 = add nsw i32 %4811, 532487669
  %4813 = bitcast i32 %4812 to float
  %4814 = fsub fast float 1.000000e+00, %4813
  %4815 = bitcast float %4814 to i32
  %4816 = sub nsw i32 2129859010, %4815
  %4817 = bitcast i32 %4816 to float
  %4818 = fmul fast float %4817, 2.000000e+00
  %4819 = bitcast float %4720 to i32
  %4820 = ashr i32 %4819, 1
  %4821 = add nsw i32 %4820, 532487669
  %4822 = bitcast i32 %4821 to float
  %4823 = fsub fast float 1.000000e+00, %4822
  %4824 = bitcast float %4823 to i32
  %4825 = sub nsw i32 2129859010, %4824
  %4826 = bitcast i32 %4825 to float
  %4827 = fmul fast float %4826, 2.000000e+00
  %4828 = bitcast float %4721 to i32
  %4829 = ashr i32 %4828, 1
  %4830 = add nsw i32 %4829, 532487669
  %4831 = bitcast i32 %4830 to float
  %4832 = fsub fast float 1.000000e+00, %4831
  %4833 = bitcast float %4832 to i32
  %4834 = sub nsw i32 2129859010, %4833
  %4835 = bitcast i32 %4834 to float
  %4836 = fmul fast float %4835, 2.000000e+00
  %4837 = fsub fast float 0x4002A9FBE0000000, %4818
  %4838 = fadd fast float %4818, 0x3FD54FDF00000000
  %4839 = bitcast float %4838 to i32
  %4840 = sub nsw i32 2129859010, %4839
  %4841 = bitcast i32 %4840 to float
  %4842 = fmul fast float %4841, %4837
  %4843 = fmul fast float %4842, %4842
  %4844 = fsub fast float 0x4002A9FBE0000000, %4827
  %4845 = fadd fast float %4827, 0x3FD54FDF00000000
  %4846 = bitcast float %4845 to i32
  %4847 = sub nsw i32 2129859010, %4846
  %4848 = bitcast i32 %4847 to float
  %4849 = fmul fast float %4848, %4844
  %4850 = fmul fast float %4849, %4849
  %4851 = fsub fast float 0x4002A9FBE0000000, %4836
  %4852 = fadd fast float %4836, 0x3FD54FDF00000000
  %4853 = bitcast float %4852 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = fmul fast float %4855, %4851
  %4857 = fmul fast float %4856, %4856
  %4858 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4843)  ; FMax(a,b)
  %4859 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4850)  ; FMax(a,b)
  %4860 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4857)  ; FMax(a,b)
  %4861 = fsub fast float 1.000000e+00, %4747
  %4862 = fadd fast float %4861, %4762
  %4863 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4864 = fsub fast float 1.000000e+00, %4134
  %4865 = fmul fast float %4804, %4864
  %4866 = fmul fast float %4807, %4807
  %4867 = fmul fast float %4866, %4865
  %4868 = fmul fast float %4867, %4809
  %4869 = fmul fast float %4864, 0xBFE99999A0000000
  %4870 = fmul fast float %4869, %4749
  %4871 = fmul fast float %4870, %4766
  %4872 = fadd fast float %4871, 1.000000e+00
  %4873 = fadd fast float %4728, -1.000000e+00
  %4874 = fmul fast float %4872, %4873
  %4875 = fadd fast float %4874, 1.000000e+00
  %4876 = fsub fast float %4858, %4719
  %4877 = fsub fast float %4859, %4720
  %4878 = fsub fast float %4860, %4721
  %4879 = fmul fast float %4868, %4876
  %4880 = fmul fast float %4868, %4877
  %4881 = fmul fast float %4868, %4878
  %4882 = fadd fast float %4879, %4719
  %4883 = fadd fast float %4880, %4720
  %4884 = fadd fast float %4881, %4721
  %4885 = fsub fast float %83, %4722
  %4886 = fsub fast float %84, %4723
  %4887 = fsub fast float %85, %4724
  %4888 = fmul fast float %4868, %4885
  %4889 = fmul fast float %4868, %4886
  %4890 = fmul fast float %4868, %4887
  %4891 = fadd fast float %4888, %4722
  %4892 = fadd fast float %4889, %4723
  %4893 = fadd fast float %4890, %4724
  %4894 = fmul fast float %4868, %4863
  %4895 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4896 = fsub fast float 1.000000e+00, %4895
  %4897 = fmul fast float %4894, %4896
  %4898 = fadd fast float %4897, %4895
  %4899 = fsub fast float 1.000000e+00, %4729
  %4900 = fmul fast float %4868, %4899
  %4901 = fadd fast float %4900, %4729
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4892, float %4893, float %4891, float %4892, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = call float @dx.op.unary.f32(i32 25, float %4902)  ; Rsqrt(value)
  %4904 = fmul fast float %4891, %4903
  %4905 = fmul fast float %4892, %4903
  %4906 = fmul fast float %4893, %4903
  br label %4907

; <label>:4907                                    ; preds = %4740, %4733
  %4908 = phi float [ %4739, %4733 ], [ %4746, %4740 ]
  %4909 = phi float [ %4738, %4733 ], [ %4744, %4740 ]
  %4910 = phi float [ %4737, %4733 ], [ %4742, %4740 ]
  %4911 = phi float [ %4736, %4733 ], [ %4745, %4740 ]
  %4912 = phi float [ %4735, %4733 ], [ %4743, %4740 ]
  %4913 = phi float [ %4734, %4733 ], [ %4741, %4740 ]
  %4914 = phi float [ %4719, %4733 ], [ %4882, %4740 ]
  %4915 = phi float [ %4720, %4733 ], [ %4883, %4740 ]
  %4916 = phi float [ %4721, %4733 ], [ %4884, %4740 ]
  %4917 = phi float [ %4722, %4733 ], [ %4904, %4740 ]
  %4918 = phi float [ %4723, %4733 ], [ %4905, %4740 ]
  %4919 = phi float [ %4724, %4733 ], [ %4906, %4740 ]
  %4920 = phi float [ %4725, %4733 ], [ %4791, %4740 ]
  %4921 = phi float [ %4726, %4733 ], [ %4792, %4740 ]
  %4922 = phi float [ %4727, %4733 ], [ %4793, %4740 ]
  %4923 = phi float [ %4728, %4733 ], [ %4898, %4740 ]
  %4924 = phi float [ %4729, %4733 ], [ %4901, %4740 ]
  %4925 = select i1 %202, float 0.000000e+00, float %4916
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %4910, float %4909, float %4908)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4913, float %4912, float %4911, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = fmul fast float %4928, 2.000000e+00
  %4930 = fmul fast float %4929, %4917
  %4931 = fmul fast float %4929, %4918
  %4932 = fmul fast float %4929, %4919
  %4933 = fsub fast float %4913, %4930
  %4934 = fsub fast float %4912, %4931
  %4935 = fsub fast float %4911, %4932
  %4936 = call float @dx.op.binary.f32(i32 36, float %4924, float 1.000000e+00)  ; FMin(a,b)
  %4937 = fsub fast float 1.000000e+00, %4924
  %4938 = bitcast float %4937 to i32
  %4939 = sub nsw i32 2129859010, %4938
  %4940 = fsub fast float 1.000000e+00, %53
  %4941 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = call float @dx.op.binary.f32(i32 35, float %4941, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4943 = fdiv fast float %4940, %4942
  %4944 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fmul fast float %4945, 5.000000e-01
  %4947 = fadd fast float %4946, 5.000000e-01
  %4948 = fmul fast float %4947, %53
  %4949 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = fmul fast float %4950, %4943
  %4952 = fadd fast float %4948, %4951
  %4953 = fsub fast float 5.000000e-01, %4946
  %4954 = fmul fast float %4953, %4920
  %4955 = fmul fast float %4953, %4921
  %4956 = fmul fast float %4953, %4922
  %4957 = fadd fast float %4952, %4954
  %4958 = fadd fast float %4952, %4955
  %4959 = fadd fast float %4952, %4956
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4933, float %4934, float %4935, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4962 = fmul fast float %4961, 5.000000e-01
  %4963 = fadd fast float %4962, 5.000000e-01
  %4964 = fmul fast float %4963, %53
  %4965 = call float @dx.op.dot3.f32(i32 55, float %4933, float %4934, float %4935, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = fmul fast float %4966, %4943
  %4968 = fadd fast float %4964, %4967
  %4969 = fsub fast float 5.000000e-01, %4962
  %4970 = fmul fast float %4969, %4920
  %4971 = fmul fast float %4969, %4921
  %4972 = fmul fast float %4969, %4922
  %4973 = fadd fast float %4968, %4970
  %4974 = fadd fast float %4968, %4971
  %4975 = fadd fast float %4968, %4972
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = call float @dx.op.binary.f32(i32 36, float %4920, float %4977)  ; FMin(a,b)
  %4979 = fsub fast float 1.000000e+00, %4936
  %4980 = fmul fast float %4978, %4979
  %4981 = fsub fast float 1.000000e+00, %4980
  %4982 = bitcast float %4981 to i32
  %4983 = sub nsw i32 2129859010, %4982
  %4984 = bitcast i32 %4983 to float
  %4985 = call float @dx.op.binary.f32(i32 36, float %4921, float %4977)  ; FMin(a,b)
  %4986 = fmul fast float %4985, %4979
  %4987 = fsub fast float 1.000000e+00, %4986
  %4988 = bitcast float %4987 to i32
  %4989 = sub nsw i32 2129859010, %4988
  %4990 = bitcast i32 %4989 to float
  %4991 = call float @dx.op.binary.f32(i32 36, float %4922, float %4977)  ; FMin(a,b)
  %4992 = fmul fast float %4991, %4979
  %4993 = fsub fast float 1.000000e+00, %4992
  %4994 = bitcast float %4993 to i32
  %4995 = sub nsw i32 2129859010, %4994
  %4996 = bitcast i32 %4995 to float
  %4997 = fmul fast float %4936, %54
  %4998 = fmul fast float %4997, %4957
  %4999 = fmul fast float %4998, %4984
  %5000 = fmul fast float %4936, %55
  %5001 = fmul fast float %5000, %4958
  %5002 = fmul fast float %5001, %4990
  %5003 = fmul fast float %4936, %56
  %5004 = fmul fast float %5003, %4959
  %5005 = fmul fast float %5004, %4996
  %5006 = call float @dx.op.binary.f32(i32 36, float %4914, float %4977)  ; FMin(a,b)
  %5007 = fmul fast float %5006, %4979
  %5008 = fsub fast float 1.000000e+00, %5007
  %5009 = bitcast float %5008 to i32
  %5010 = sub nsw i32 2129859010, %5009
  %5011 = bitcast i32 %5010 to float
  %5012 = call float @dx.op.binary.f32(i32 36, float %4915, float %4977)  ; FMin(a,b)
  %5013 = fmul fast float %5012, %4979
  %5014 = fsub fast float 1.000000e+00, %5013
  %5015 = bitcast float %5014 to i32
  %5016 = sub nsw i32 2129859010, %5015
  %5017 = bitcast i32 %5016 to float
  %5018 = call float @dx.op.binary.f32(i32 36, float %4925, float %4977)  ; FMin(a,b)
  %5019 = fmul fast float %5018, %4979
  %5020 = fsub fast float 1.000000e+00, %5019
  %5021 = bitcast float %5020 to i32
  %5022 = sub nsw i32 2129859010, %5021
  %5023 = bitcast i32 %5022 to float
  %5024 = fmul fast float %4997, %4973
  %5025 = fmul fast float %5024, %5011
  %5026 = fmul fast float %5000, %4974
  %5027 = fmul fast float %5026, %5017
  %5028 = fmul fast float %5003, %4975
  %5029 = fmul fast float %5028, %5023
  %5030 = call float @dx.op.dot3.f32(i32 55, float %4999, float %5002, float %5005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = select i1 %202, float 0.000000e+00, float %4999
  %5032 = select i1 %202, float %5030, float %5002
  %5033 = select i1 %202, float 0.000000e+00, float %5005
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5027, float %5029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = select i1 %202, float 0.000000e+00, float %5025
  %5036 = select i1 %202, float %5034, float %5027
  %5037 = select i1 %202, float 0.000000e+00, float %5029
  %5038 = fmul fast float %4927, 9.843750e-01
  %5039 = fmul fast float %4923, 9.843750e-01
  %5040 = fadd fast float %5038, 7.812500e-03
  %5041 = fadd fast float %5039, 7.812500e-03
  %5042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5040, float %5041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 2
  %5044 = extractvalue %dx.types.ResRet.f32 %5042, 3
  %5045 = fmul fast float %5043, %4914
  %5046 = fmul fast float %5043, %4915
  %5047 = fmul fast float %5043, %4925
  %5048 = fadd fast float %5045, %5044
  %5049 = fadd fast float %5046, %5044
  %5050 = fadd fast float %5047, %5044
  %5051 = fcmp fast ogt float %3720, 0.000000e+00
  br i1 %5051, label %5052, label %5078

; <label>:5052                                    ; preds = %4907
  %5053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3720, float %4927, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5054 = extractvalue %dx.types.ResRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.ResRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.ResRet.f32 %5053, 2
  %5057 = fadd fast float %5054, -5.000000e-01
  %5058 = fadd fast float %5055, -5.000000e-01
  %5059 = fadd fast float %5056, -5.000000e-01
  %5060 = fsub fast float 1.000000e+00, %4914
  %5061 = fsub fast float 1.000000e+00, %4915
  %5062 = fsub fast float 1.000000e+00, %4925
  %5063 = fmul fast float %4914, 4.000000e+00
  %5064 = fmul fast float %5063, %5060
  %5065 = fmul fast float %5064, %5057
  %5066 = fmul fast float %4915, 4.000000e+00
  %5067 = fmul fast float %5066, %5061
  %5068 = fmul fast float %5067, %5058
  %5069 = fmul fast float %4925, 4.000000e+00
  %5070 = fmul fast float %5069, %5062
  %5071 = fmul fast float %5070, %5059
  %5072 = fadd fast float %5065, %5048
  %5073 = fadd fast float %5068, %5049
  %5074 = fadd fast float %5071, %5050
  %5075 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5076 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5077 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  br label %5078

; <label>:5078                                    ; preds = %5052, %4907
  %5079 = phi float [ %5075, %5052 ], [ %5048, %4907 ]
  %5080 = phi float [ %5076, %5052 ], [ %5049, %4907 ]
  %5081 = phi float [ %5077, %5052 ], [ %5050, %4907 ]
  %5082 = call float @dx.op.binary.f32(i32 35, float %5080, float %5081)  ; FMax(a,b)
  %5083 = call float @dx.op.binary.f32(i32 35, float %5079, float %5082)  ; FMax(a,b)
  %5084 = fsub fast float 1.000000e+00, %5083
  %5085 = fmul fast float %5084, %5031
  %5086 = fmul fast float %5084, %5032
  %5087 = fmul fast float %5084, %5033
  %5088 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = fcmp fast ogt float %5088, 0x3E7FF19E20000000
  %5090 = fdiv fast float 1.000000e+00, %5088
  %5091 = select i1 %5089, float %5090, float 0.000000e+00
  %5092 = fmul fast float %5091, %4920
  %5093 = fmul fast float %5091, %4921
  %5094 = fmul fast float %5091, %4922
  %5095 = fadd fast float %5092, -1.000000e+00
  %5096 = fadd fast float %5093, -1.000000e+00
  %5097 = fadd fast float %5094, -1.000000e+00
  %5098 = fmul fast float %5095, 5.000000e-01
  %5099 = fmul fast float %5096, 5.000000e-01
  %5100 = fmul fast float %5097, 5.000000e-01
  %5101 = fadd fast float %5098, 1.000000e+00
  %5102 = fadd fast float %5099, 1.000000e+00
  %5103 = fadd fast float %5100, 1.000000e+00
  %5104 = fmul fast float %5079, %5035
  %5105 = fmul fast float %5080, %5036
  %5106 = fmul fast float %5081, %5037
  %5107 = fsub fast float 1.000000e+00, %4927
  %5108 = bitcast float %5107 to i32
  %5109 = sitofp i32 %5108 to float
  %5110 = fmul fast float %5109, 5.000000e+00
  %5111 = fadd fast float %5110, 0xC1EFBF8940000000
  %5112 = fptosi float %5111 to i32
  %5113 = bitcast i32 %5112 to float
  %5114 = fmul fast float %5113, %3721
  %5115 = fmul fast float %5031, %5114
  %5116 = fmul fast float %5115, %5084
  %5117 = fmul fast float %5116, %5101
  %5118 = fmul fast float %5032, %5114
  %5119 = fmul fast float %5118, %5084
  %5120 = fmul fast float %5119, %5102
  %5121 = fmul fast float %5033, %5114
  %5122 = fmul fast float %5121, %5084
  %5123 = fmul fast float %5122, %5103
  %5124 = fmul fast float %5085, %3717
  %5125 = fmul fast float %5086, %3717
  %5126 = fmul fast float %5087, %3717
  %5127 = fadd fast float %5104, %3713
  %5128 = fadd fast float %5127, %5117
  %5129 = fmul fast float %5128, %3717
  %5130 = fadd fast float %5105, %3714
  %5131 = fadd fast float %5130, %5120
  %5132 = fmul fast float %5131, %3717
  %5133 = fadd fast float %5106, %3715
  %5134 = fadd fast float %5133, %5123
  %5135 = fmul fast float %5134, %3717
  %5136 = bitcast i32 %4939 to float
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 3
  %5139 = fcmp fast oeq float %5138, 0.000000e+00
  br i1 %5139, label %5367, label %5140

; <label>:5140                                    ; preds = %5078
  %5141 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5147 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5151 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = select i1 %202, float %5149, float %5145
  %5153 = select i1 %202, float %5151, float %5146
  %5154 = select i1 %202, float %5150, float %5147
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5157 = fcmp fast une float %5156, 0.000000e+00
  br i1 %5157, label %5158, label %5175

; <label>:5158                                    ; preds = %5140
  %5159 = fptoui float %76 to i32
  %5160 = fptoui float %77 to i32
  %5161 = lshr i32 %5159, 4
  %5162 = lshr i32 %5160, 4
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = fptoui float %5164 to i32
  %5166 = add i32 %5165, 15
  %5167 = lshr i32 %5166, 4
  %5168 = mul i32 %5167, %5162
  %5169 = add i32 %5168, %5161
  %5170 = shl i32 %5169, 3
  %5171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5170, i32 undef)  ; BufferLoad(srv,index,wot)
  %5172 = extractvalue %dx.types.ResRet.i32 %5171, 0
  %5173 = and i32 %5172, -268435456
  %5174 = icmp eq i32 %5173, -1342177280
  br i1 %5174, label %5185, label %5175

; <label>:5175                                    ; preds = %5158, %5140
  %5176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.f32 %5176, 2
  %5178 = extractvalue %dx.types.CBufRet.f32 %5176, 3
  %5179 = fmul fast float %5177, %76
  %5180 = fmul fast float %5178, %77
  %5181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5179, float %5180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5182 = extractvalue %dx.types.ResRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.ResRet.f32 %5181, 1
  %5184 = extractvalue %dx.types.ResRet.f32 %5181, 2
  br label %5185

; <label>:5185                                    ; preds = %5175, %5158
  %5186 = phi float [ %5182, %5175 ], [ 0.000000e+00, %5158 ]
  %5187 = phi float [ %5183, %5175 ], [ 0.000000e+00, %5158 ]
  %5188 = phi float [ %5184, %5175 ], [ 0.000000e+00, %5158 ]
  %5189 = call float @dx.op.binary.f32(i32 36, float %5187, float %5188)  ; FMin(a,b)
  %5190 = call float @dx.op.binary.f32(i32 36, float %5186, float %5189)  ; FMin(a,b)
  %5191 = fcmp fast ogt float %5190, 0.000000e+00
  br i1 %5191, label %5192, label %5367, !dx.controlflow.hints !74

; <label>:5192                                    ; preds = %5185
  %5193 = fmul fast float %5186, %5152
  %5194 = fmul fast float %5187, %5153
  %5195 = fmul fast float %5188, %5154
  %5196 = fsub fast float %5141, %4913
  %5197 = fsub fast float %5142, %4912
  %5198 = fsub fast float %5143, %4911
  %5199 = call float @dx.op.dot3.f32(i32 55, float %5196, float %5197, float %5198, float %5196, float %5197, float %5198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5200 = call float @dx.op.unary.f32(i32 25, float %5199)  ; Rsqrt(value)
  %5201 = fmul fast float %5200, %5196
  %5202 = fmul fast float %5200, %5197
  %5203 = fmul fast float %5200, %5198
  %5204 = call float @dx.op.dot3.f32(i32 55, float %5141, float %5142, float %5143, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4909, float %4908, float %5201, float %5202, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5207 = fmul fast float %5206, %5206
  %5208 = fmul fast float %5207, %5136
  %5209 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5210 = fmul fast float %5209, %5206
  %5211 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %5201, float %5202, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = fmul fast float %5211, %5211
  %5213 = call float @dx.op.unary.f32(i32 6, float %5204)  ; FAbs(value)
  %5214 = fsub fast float 1.000000e+00, %4923
  %5215 = call float @dx.op.binary.f32(i32 35, float %5214, float 0x3F847AE140000000)  ; FMax(a,b)
  %5216 = fmul fast float %5215, %5215
  %5217 = fmul fast float %5216, %5216
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = fmul fast float %4927, %4927
  %5220 = fmul fast float %5219, %5218
  %5221 = fadd fast float %5220, %5217
  %5222 = bitcast float %5221 to i32
  %5223 = ashr i32 %5222, 1
  %5224 = add nsw i32 %5223, 532487669
  %5225 = bitcast i32 %5224 to float
  %5226 = fadd fast float %5225, %4927
  %5227 = fmul fast float %5217, %5212
  %5228 = fsub fast float 1.000000e+00, %5212
  %5229 = fadd fast float %5228, %5227
  %5230 = fmul fast float %5213, %5213
  %5231 = fmul fast float %5230, %5218
  %5232 = fadd fast float %5231, %5217
  %5233 = bitcast float %5232 to i32
  %5234 = ashr i32 %5233, 1
  %5235 = add nsw i32 %5234, 532487669
  %5236 = bitcast i32 %5235 to float
  %5237 = fadd fast float %5236, %5213
  %5238 = fmul fast float %5229, %5229
  %5239 = fmul fast float %5238, %5226
  %5240 = fmul fast float %5239, %5237
  %5241 = fdiv fast float 0x3FF0A00000000000, %5240
  %5242 = fmul fast float %5241, %5217
  %5243 = call float @dx.op.unary.f32(i32 6, float %5205)  ; FAbs(value)
  %5244 = fsub fast float 1.000000e+00, %5243
  %5245 = bitcast float %5244 to i32
  %5246 = sitofp i32 %5245 to float
  %5247 = fmul fast float %5246, 5.000000e+00
  %5248 = fadd fast float %5247, 0xC1EFBF8940000000
  %5249 = fptosi float %5248 to i32
  %5250 = bitcast i32 %5249 to float
  %5251 = fsub fast float 1.000000e+00, %4914
  %5252 = fsub fast float 1.000000e+00, %4915
  %5253 = fsub fast float 1.000000e+00, %4925
  %5254 = fmul fast float %5250, %5251
  %5255 = fmul fast float %5250, %5252
  %5256 = fmul fast float %5250, %5253
  %5257 = fadd fast float %5254, %4914
  %5258 = fadd fast float %5255, %4915
  %5259 = fadd fast float %5256, %4925
  br i1 %5051, label %5260, label %5283

; <label>:5260                                    ; preds = %5192
  %5261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3720, float %5243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.ResRet.f32 %5261, 2
  %5265 = fadd fast float %5262, -5.000000e-01
  %5266 = fadd fast float %5263, -5.000000e-01
  %5267 = fadd fast float %5264, -5.000000e-01
  %5268 = fmul fast float %4914, 4.000000e+00
  %5269 = fmul fast float %5268, %5251
  %5270 = fmul fast float %5269, %5265
  %5271 = fmul fast float %4915, 4.000000e+00
  %5272 = fmul fast float %5271, %5252
  %5273 = fmul fast float %5272, %5266
  %5274 = fmul fast float %4925, 4.000000e+00
  %5275 = fmul fast float %5274, %5253
  %5276 = fmul fast float %5275, %5267
  %5277 = fadd fast float %5270, %5257
  %5278 = fadd fast float %5273, %5258
  %5279 = fadd fast float %5276, %5259
  %5280 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5281 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5282 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  br label %5283

; <label>:5283                                    ; preds = %5260, %5192
  %5284 = phi float [ %5280, %5260 ], [ %5257, %5192 ]
  %5285 = phi float [ %5281, %5260 ], [ %5258, %5192 ]
  %5286 = phi float [ %5282, %5260 ], [ %5259, %5192 ]
  %5287 = fmul fast float %5204, 9.843750e-01
  %5288 = fadd fast float %5287, 7.812500e-03
  %5289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5288, float %5041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 2
  %5291 = extractvalue %dx.types.ResRet.f32 %5289, 3
  %5292 = fmul fast float %5290, %4914
  %5293 = fmul fast float %5290, %4915
  %5294 = fmul fast float %5290, %4925
  %5295 = fadd fast float %5292, %5291
  %5296 = fadd fast float %5293, %5291
  %5297 = fadd fast float %5294, %5291
  br i1 %5051, label %5298, label %5321

; <label>:5298                                    ; preds = %5283
  %5299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3720, float %5204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.ResRet.f32 %5299, 1
  %5302 = extractvalue %dx.types.ResRet.f32 %5299, 2
  %5303 = fadd fast float %5300, -5.000000e-01
  %5304 = fadd fast float %5301, -5.000000e-01
  %5305 = fadd fast float %5302, -5.000000e-01
  %5306 = fmul fast float %4914, 4.000000e+00
  %5307 = fmul fast float %5306, %5251
  %5308 = fmul fast float %5307, %5303
  %5309 = fmul fast float %4915, 4.000000e+00
  %5310 = fmul fast float %5309, %5252
  %5311 = fmul fast float %5310, %5304
  %5312 = fmul fast float %4925, 4.000000e+00
  %5313 = fmul fast float %5312, %5253
  %5314 = fmul fast float %5313, %5305
  %5315 = fadd fast float %5308, %5295
  %5316 = fadd fast float %5311, %5296
  %5317 = fadd fast float %5314, %5297
  %5318 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5319 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  br label %5321

; <label>:5321                                    ; preds = %5298, %5283
  %5322 = phi float [ %5318, %5298 ], [ %5295, %5283 ]
  %5323 = phi float [ %5319, %5298 ], [ %5296, %5283 ]
  %5324 = phi float [ %5320, %5298 ], [ %5297, %5283 ]
  %5325 = call float @dx.op.binary.f32(i32 35, float %5323, float %5324)  ; FMax(a,b)
  %5326 = call float @dx.op.binary.f32(i32 35, float %5322, float %5325)  ; FMax(a,b)
  %5327 = fsub fast float 1.000000e+00, %5326
  %5328 = fmul fast float %5284, %5242
  %5329 = fmul fast float %5285, %5242
  %5330 = fmul fast float %5286, %5242
  %5331 = fsub fast float 1.000000e+00, %5205
  %5332 = bitcast float %5331 to i32
  %5333 = sitofp i32 %5332 to float
  %5334 = fmul fast float %5333, 5.000000e+00
  %5335 = fadd fast float %5334, 0xC1EFBF8940000000
  %5336 = fptosi float %5335 to i32
  %5337 = bitcast i32 %5336 to float
  %5338 = fmul fast float %5337, %3721
  %5339 = fmul fast float %5327, %5338
  %5340 = fmul fast float %5339, %5101
  %5341 = fmul fast float %5339, %5102
  %5342 = fmul fast float %5339, %5103
  %5343 = fadd fast float %5340, %5328
  %5344 = fadd fast float %5341, %5329
  %5345 = fadd fast float %5342, %5330
  %5346 = fmul fast float %5210, %5193
  %5347 = fmul fast float %5346, %5327
  %5348 = fmul fast float %5210, %5194
  %5349 = fmul fast float %5348, %5327
  %5350 = fmul fast float %5210, %5195
  %5351 = fmul fast float %5350, %5327
  %5352 = fmul fast float %5346, %5343
  %5353 = fmul fast float %5348, %5344
  %5354 = fmul fast float %5350, %5345
  %5355 = fadd fast float %5347, %5085
  %5356 = fmul fast float %5355, %3717
  %5357 = fadd fast float %5349, %5086
  %5358 = fmul fast float %5357, %3717
  %5359 = fadd fast float %5351, %5087
  %5360 = fmul fast float %5359, %3717
  %5361 = fadd fast float %5352, %5128
  %5362 = fmul fast float %5361, %3717
  %5363 = fadd fast float %5353, %5131
  %5364 = fmul fast float %5363, %3717
  %5365 = fadd fast float %5354, %5134
  %5366 = fmul fast float %5365, %3717
  br label %5367

; <label>:5367                                    ; preds = %5321, %5185, %5078
  %5368 = phi float [ %5129, %5078 ], [ %5129, %5185 ], [ %5362, %5321 ]
  %5369 = phi float [ %5132, %5078 ], [ %5132, %5185 ], [ %5364, %5321 ]
  %5370 = phi float [ %5135, %5078 ], [ %5135, %5185 ], [ %5366, %5321 ]
  %5371 = phi float [ %5124, %5078 ], [ %5124, %5185 ], [ %5356, %5321 ]
  %5372 = phi float [ %5125, %5078 ], [ %5125, %5185 ], [ %5358, %5321 ]
  %5373 = phi float [ %5126, %5078 ], [ %5126, %5185 ], [ %5360, %5321 ]
  %5374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.i32 %5374, 0
  %5376 = icmp eq i32 %5375, 0
  br i1 %5376, label %5811, label %5377

; <label>:5377                                    ; preds = %5367
  %5378 = fptoui float %76 to i32
  %5379 = fptoui float %77 to i32
  %5380 = lshr i32 %5378, 4
  %5381 = lshr i32 %5379, 4
  %5382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.i32 %5382, 0
  %5384 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5381, i32 %5383, i32 %5380)  ; UMad(a,b,c)
  %5385 = add nsw i32 %5375, -1
  %5386 = call i32 @dx.op.binary.i32(i32 37, i32 %5385, i32 0)  ; IMax(a,b)
  %5387 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5388 = fptoui float %5387 to i32
  %5389 = lshr i32 %5388, 5
  %5390 = call i32 @dx.op.binary.i32(i32 40, i32 %5389, i32 8191)  ; UMin(a,b)
  %5391 = shl i32 %5390, 2
  %5392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5391, i32 undef)  ; BufferLoad(srv,index,wot)
  %5393 = extractvalue %dx.types.ResRet.i32 %5392, 0
  %5394 = lshr i32 %5393, 16
  %5395 = and i32 %5393, 65535
  %5396 = lshr i32 %5393, 21
  %5397 = lshr i32 %5395, 5
  %5398 = call i32 @dx.op.binary.i32(i32 40, i32 %5397, i32 %5386)  ; UMin(a,b)
  %5399 = icmp ugt i32 %5396, %5398
  br i1 %5399, label %5811, label %5400

; <label>:5400                                    ; preds = %5377
  br label %5401

; <label>:5401                                    ; preds = %5801, %5400
  %5402 = phi i32 [ %5808, %5801 ], [ %5396, %5400 ]
  %5403 = phi float [ %5802, %5801 ], [ %5368, %5400 ]
  %5404 = phi float [ %5803, %5801 ], [ %5369, %5400 ]
  %5405 = phi float [ %5804, %5801 ], [ %5370, %5400 ]
  %5406 = phi float [ %5805, %5801 ], [ %5371, %5400 ]
  %5407 = phi float [ %5806, %5801 ], [ %5372, %5400 ]
  %5408 = phi float [ %5807, %5801 ], [ %5373, %5400 ]
  %5409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.i32 %5409, 0
  %5411 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5384, i32 %5410, i32 %5402)  ; UMad(a,b,c)
  %5412 = shl i32 %5411, 2
  %5413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5412, i32 undef)  ; BufferLoad(srv,index,wot)
  %5414 = extractvalue %dx.types.ResRet.i32 %5413, 0
  %5415 = shl i32 %5402, 5
  %5416 = sub nsw i32 %5394, %5415
  %5417 = call i32 @dx.op.binary.i32(i32 37, i32 %5416, i32 0)  ; IMax(a,b)
  %5418 = call i32 @dx.op.binary.i32(i32 38, i32 %5417, i32 31)  ; IMin(a,b)
  %5419 = sub nsw i32 1, %5394
  %5420 = add nsw i32 %5419, %5395
  %5421 = call i32 @dx.op.binary.i32(i32 37, i32 %5420, i32 0)  ; IMax(a,b)
  %5422 = call i32 @dx.op.binary.i32(i32 38, i32 %5421, i32 32)  ; IMin(a,b)
  %5423 = and i32 %5422, 31
  %5424 = shl i32 -1, %5423
  %5425 = xor i32 %5424, -1
  %5426 = and i32 %5418, 31
  %5427 = shl i32 %5425, %5426
  %5428 = icmp eq i32 %5422, 32
  %5429 = select i1 %5428, i32 -1, i32 %5427
  %5430 = and i32 %5429, %5414
  %5431 = icmp eq i32 %5430, 0
  br i1 %5431, label %5801, label %5432

; <label>:5432                                    ; preds = %5401
  br label %5433

; <label>:5433                                    ; preds = %5513, %5432
  %5434 = phi i32 [ %5445, %5513 ], [ %5430, %5432 ]
  %5435 = phi float [ %5514, %5513 ], [ %5403, %5432 ]
  %5436 = phi float [ %5515, %5513 ], [ %5404, %5432 ]
  %5437 = phi float [ %5516, %5513 ], [ %5405, %5432 ]
  %5438 = phi float [ %5517, %5513 ], [ %5406, %5432 ]
  %5439 = phi float [ %5518, %5513 ], [ %5407, %5432 ]
  %5440 = phi float [ %5519, %5513 ], [ %5408, %5432 ]
  %5441 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5434)  ; FirstbitLo(value)
  %5442 = add i32 %5441, %5415
  %5443 = and i32 %5441, 31
  %5444 = shl i32 1, %5443
  %5445 = xor i32 %5444, %5434
  %5446 = mul i32 %5442, 112
  %5447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5446, i32 undef)  ; BufferLoad(srv,index,wot)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.ResRet.f32 %5447, 2
  %5451 = or i32 %5446, 12
  %5452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = add i32 %5446, 44
  %5455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = add i32 %5446, 48
  %5458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5457, i32 undef)  ; BufferLoad(srv,index,wot)
  %5459 = extractvalue %dx.types.ResRet.f32 %5458, 0
  %5460 = extractvalue %dx.types.ResRet.f32 %5458, 1
  %5461 = extractvalue %dx.types.ResRet.f32 %5458, 2
  %5462 = add i32 %5446, 80
  %5463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5462, i32 undef)  ; BufferLoad(srv,index,wot)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 1
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = select i1 %202, float %5464, float %5448
  %5468 = select i1 %202, float %5466, float %5449
  %5469 = select i1 %202, float %5465, float %5450
  %5470 = fsub fast float %5459, %163
  %5471 = fsub fast float %5460, %164
  %5472 = fsub fast float %5461, %165
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5472, float %5470, float %5471, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.unary.f32(i32 24, float %5473)  ; Sqrt(value)
  %5475 = fdiv fast float 1.000000e+00, %5474
  %5476 = fmul fast float %5475, %5470
  %5477 = fmul fast float %5475, %5471
  %5478 = fmul fast float %5475, %5472
  %5479 = fadd fast float %5474, %5453
  %5480 = fdiv fast float 1.000000e+00, %5479
  %5481 = fmul float %5456, %5480
  %5482 = fmul float %5481, %5481
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = and i32 %5444, %5430
  %5485 = icmp eq i32 %5484, 0
  br i1 %5485, label %5508, label %5486, !dx.controlflow.hints !75

; <label>:5486                                    ; preds = %5433
  %5487 = lshr i32 %5378, 5
  %5488 = lshr i32 %5379, 5
  %5489 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5487, i32 %5488, i32 %5442, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5490 = extractvalue %dx.types.ResRet.i32 %5489, 0
  %5491 = and i32 %5490, 3
  %5492 = icmp eq i32 %5491, 0
  %5493 = select i1 %5492, float 1.000000e+00, float 0.000000e+00
  %5494 = icmp eq i32 %5491, 3
  br i1 %5494, label %5495, label %5508

; <label>:5495                                    ; preds = %5486
  %5496 = lshr i32 %5490, 10
  %5497 = and i32 %5496, 8160
  %5498 = and i32 %5379, 31
  %5499 = or i32 %5497, %5498
  %5500 = lshr i32 %5490, 1
  %5501 = and i32 %5500, 16352
  %5502 = and i32 %5378, 31
  %5503 = or i32 %5501, %5502
  %5504 = lshr i32 %5490, 23
  %5505 = and i32 %5504, 255
  %5506 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5503, i32 %5499, i32 %5505, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5507 = extractvalue %dx.types.ResRet.f32 %5506, 0
  br label %5508

; <label>:5508                                    ; preds = %5495, %5486, %5433
  %5509 = phi float [ %5507, %5495 ], [ %5493, %5486 ], [ 0.000000e+00, %5433 ]
  %5510 = call float @dx.op.binary.f32(i32 36, float %5509, float %5509)  ; FMin(a,b)
  %5511 = call float @dx.op.binary.f32(i32 36, float %5509, float %5510)  ; FMin(a,b)
  %5512 = fcmp fast ogt float %5511, 0.000000e+00
  br i1 %5512, label %5521, label %5513, !dx.controlflow.hints !76

; <label>:5513                                    ; preds = %5757, %5508
  %5514 = phi float [ %5435, %5508 ], [ %5797, %5757 ]
  %5515 = phi float [ %5436, %5508 ], [ %5798, %5757 ]
  %5516 = phi float [ %5437, %5508 ], [ %5799, %5757 ]
  %5517 = phi float [ %5438, %5508 ], [ %5791, %5757 ]
  %5518 = phi float [ %5439, %5508 ], [ %5792, %5757 ]
  %5519 = phi float [ %5440, %5508 ], [ %5793, %5757 ]
  %5520 = icmp eq i32 %5434, %5444
  br i1 %5520, label %5800, label %5433

; <label>:5521                                    ; preds = %5508
  %5522 = fmul fast float %5509, %5467
  %5523 = fmul fast float %5509, %5468
  %5524 = fmul fast float %5509, %5469
  %5525 = fsub fast float %5461, %4121
  %5526 = fcmp fast ogt float %5525, 0.000000e+00
  %5527 = fsub fast float %165, %4121
  %5528 = fcmp fast ogt float %5527, 0.000000e+00
  %5529 = xor i1 %5528, %5526
  %5530 = fsub fast float %4121, %5461
  %5531 = fmul fast float %5530, 2.000000e+00
  %5532 = fadd fast float %5531, %5461
  %5533 = select i1 %5529, float %5461, float %5532
  %5534 = fsub fast float %5533, %165
  %5535 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5534, float %5470, float %5471, float %5534)  ; Dot3(ax,ay,az,bx,by,bz)
  %5536 = call float @dx.op.unary.f32(i32 25, float %5535)  ; Rsqrt(value)
  %5537 = fmul fast float %5536, %5470
  %5538 = fmul fast float %5536, %5471
  %5539 = fmul fast float %5536, %5534
  %5540 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5541 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5537, float %5538, float %5539)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = fdiv fast float 1.000000e+00, %5541
  %5543 = fmul fast float %5542, %5540
  %5544 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5527, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fcmp fast ogt float %5544, 0.000000e+00
  %5546 = fcmp fast olt float %5544, 0.000000e+00
  %5547 = zext i1 %5545 to i32
  %5548 = zext i1 %5546 to i32
  %5549 = sub nsw i32 %5547, %5548
  %5550 = sitofp i32 %5549 to float
  %5551 = fsub fast float %5533, %4121
  %5552 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5551, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5553 = fcmp fast ogt float %5552, 0.000000e+00
  %5554 = fcmp fast olt float %5552, 0.000000e+00
  %5555 = zext i1 %5553 to i32
  %5556 = zext i1 %5554 to i32
  %5557 = sub nsw i32 %5555, %5556
  %5558 = sitofp i32 %5557 to float
  %5559 = fcmp fast une float %5550, %5558
  br i1 %5559, label %5560, label %5570

; <label>:5560                                    ; preds = %5521
  %5561 = fmul fast float %5543, %5539
  %5562 = fmul fast float %5543, %5538
  %5563 = fmul fast float %5543, %5537
  %5564 = fmul fast float %5563, %5563
  %5565 = fmul fast float %5562, %5562
  %5566 = fadd fast float %5564, %5565
  %5567 = fmul fast float %5561, %5561
  %5568 = fadd fast float %5566, %5567
  %5569 = call float @dx.op.unary.f32(i32 24, float %5568)  ; Sqrt(value)
  br label %5582

; <label>:5570                                    ; preds = %5521
  %5571 = icmp slt i32 %5549, 0
  br i1 %5571, label %5572, label %5582

; <label>:5572                                    ; preds = %5570
  %5573 = fsub fast float %163, %5459
  %5574 = fsub fast float %164, %5460
  %5575 = fsub fast float %165, %5533
  %5576 = fmul fast float %5573, %5573
  %5577 = fmul fast float %5574, %5574
  %5578 = fadd fast float %5576, %5577
  %5579 = fmul fast float %5575, %5575
  %5580 = fadd fast float %5578, %5579
  %5581 = call float @dx.op.unary.f32(i32 24, float %5580)  ; Sqrt(value)
  br label %5582

; <label>:5582                                    ; preds = %5572, %5570, %5560
  %5583 = phi float [ %5569, %5560 ], [ %5581, %5572 ], [ 0.000000e+00, %5570 ]
  %5584 = and i1 %5528, %5526
  %5585 = fsub fast float -0.000000e+00, %5583
  %5586 = select i1 %5584, float -0.000000e+00, float %5585
  %5587 = fmul fast float %4122, 0x3FF7154760000000
  %5588 = fmul fast float %5587, %5586
  %5589 = fmul fast float %4123, 0x3FF7154760000000
  %5590 = fmul fast float %5589, %5586
  %5591 = fmul fast float %4124, 0x3FF7154760000000
  %5592 = fmul fast float %5591, %5586
  %5593 = call float @dx.op.unary.f32(i32 21, float %5588)  ; Exp(value)
  %5594 = call float @dx.op.unary.f32(i32 21, float %5590)  ; Exp(value)
  %5595 = call float @dx.op.unary.f32(i32 21, float %5592)  ; Exp(value)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5598 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5599 = fmul fast float %5522, %5596
  %5600 = fmul fast float %5523, %5597
  %5601 = fmul fast float %5524, %5598
  %5602 = fsub fast float %5476, %4913
  %5603 = fsub fast float %5477, %4912
  %5604 = fsub fast float %5478, %4911
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float %5602, float %5603, float %5604)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = call float @dx.op.unary.f32(i32 25, float %5605)  ; Rsqrt(value)
  %5607 = fmul fast float %5606, %5602
  %5608 = fmul fast float %5606, %5603
  %5609 = fmul fast float %5606, %5604
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5477, float %5478, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4909, float %4908, float %5607, float %5608, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5613 = fmul fast float %5612, %5483
  %5614 = fmul fast float %5612, %5612
  %5615 = fmul fast float %5614, %5136
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fmul fast float %5613, %5616
  %5618 = bitcast float %5473 to i32
  %5619 = ashr i32 %5618, 1
  %5620 = sub nsw i32 1597463007, %5619
  %5621 = bitcast i32 %5620 to float
  %5622 = fmul fast float %5621, %5470
  %5623 = fmul fast float %5621, %5471
  %5624 = fmul fast float %5621, %5472
  %5625 = fsub fast float %5622, %4913
  %5626 = fsub fast float %5623, %4912
  %5627 = fsub fast float %5624, %4911
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5625, float %5626, float %5627, float %5625, float %5626, float %5627)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.unary.f32(i32 25, float %5628)  ; Rsqrt(value)
  %5630 = fmul fast float %5625, %5629
  %5631 = fmul fast float %5626, %5629
  %5632 = fmul fast float %5627, %5629
  %5633 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %5630, float %5631, float %5632)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = fmul fast float %5633, %5633
  %5635 = call float @dx.op.unary.f32(i32 6, float %5610)  ; FAbs(value)
  %5636 = fsub fast float 1.000000e+00, %4923
  %5637 = call float @dx.op.binary.f32(i32 35, float %5636, float 0x3F847AE140000000)  ; FMax(a,b)
  %5638 = fmul fast float %5637, %5637
  %5639 = fmul fast float %5638, %5638
  %5640 = fsub fast float 1.000000e+00, %5639
  %5641 = fmul fast float %4927, %4927
  %5642 = fmul fast float %5641, %5640
  %5643 = fadd fast float %5642, %5639
  %5644 = bitcast float %5643 to i32
  %5645 = ashr i32 %5644, 1
  %5646 = add nsw i32 %5645, 532487669
  %5647 = bitcast i32 %5646 to float
  %5648 = fadd fast float %5647, %4927
  %5649 = fmul fast float %5639, %5634
  %5650 = fsub fast float 1.000000e+00, %5634
  %5651 = fadd fast float %5650, %5649
  %5652 = fmul fast float %5635, %5635
  %5653 = fmul fast float %5652, %5640
  %5654 = fadd fast float %5653, %5639
  %5655 = bitcast float %5654 to i32
  %5656 = ashr i32 %5655, 1
  %5657 = add nsw i32 %5656, 532487669
  %5658 = bitcast i32 %5657 to float
  %5659 = fadd fast float %5658, %5635
  %5660 = fmul fast float %5651, %5651
  %5661 = fmul fast float %5660, %5648
  %5662 = fmul fast float %5661, %5659
  %5663 = fdiv fast float 1.000000e+00, %5662
  %5664 = bitcast float %5639 to i32
  %5665 = sitofp i32 %5664 to float
  %5666 = fmul fast float %5665, 0x3FE7F73180000000
  %5667 = fadd fast float %5666, 0x41AFE27C40000000
  %5668 = fptosi float %5667 to i32
  %5669 = bitcast i32 %5668 to float
  %5670 = fmul fast float %5456, 0x3FD80E9D60000000
  %5671 = fmul fast float %5670, %5621
  %5672 = fadd fast float %5669, %5671
  %5673 = bitcast float %5672 to i32
  %5674 = sub nsw i32 2129859010, %5673
  %5675 = bitcast i32 %5674 to float
  %5676 = fmul fast float %5639, %5663
  %5677 = fmul fast float %5676, %5669
  %5678 = fmul fast float %5677, %5675
  %5679 = call float @dx.op.unary.f32(i32 6, float %5611)  ; FAbs(value)
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = bitcast float %5680 to i32
  %5682 = sitofp i32 %5681 to float
  %5683 = fmul fast float %5682, 5.000000e+00
  %5684 = fadd fast float %5683, 0xC1EFBF8940000000
  %5685 = fptosi float %5684 to i32
  %5686 = bitcast i32 %5685 to float
  %5687 = fsub fast float 1.000000e+00, %4914
  %5688 = fsub fast float 1.000000e+00, %4915
  %5689 = fsub fast float 1.000000e+00, %4925
  %5690 = fmul fast float %5686, %5687
  %5691 = fmul fast float %5686, %5688
  %5692 = fmul fast float %5686, %5689
  %5693 = fadd fast float %5690, %4914
  %5694 = fadd fast float %5691, %4915
  %5695 = fadd fast float %5692, %4925
  br i1 %5051, label %5696, label %5719

; <label>:5696                                    ; preds = %5582
  %5697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3720, float %5679, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5698 = extractvalue %dx.types.ResRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.ResRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.ResRet.f32 %5697, 2
  %5701 = fadd fast float %5698, -5.000000e-01
  %5702 = fadd fast float %5699, -5.000000e-01
  %5703 = fadd fast float %5700, -5.000000e-01
  %5704 = fmul fast float %4914, 4.000000e+00
  %5705 = fmul fast float %5704, %5687
  %5706 = fmul fast float %5705, %5701
  %5707 = fmul fast float %4915, 4.000000e+00
  %5708 = fmul fast float %5707, %5688
  %5709 = fmul fast float %5708, %5702
  %5710 = fmul fast float %4925, 4.000000e+00
  %5711 = fmul fast float %5710, %5689
  %5712 = fmul fast float %5711, %5703
  %5713 = fadd fast float %5706, %5693
  %5714 = fadd fast float %5709, %5694
  %5715 = fadd fast float %5712, %5695
  %5716 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  %5717 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5718 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  br label %5719

; <label>:5719                                    ; preds = %5696, %5582
  %5720 = phi float [ %5716, %5696 ], [ %5693, %5582 ]
  %5721 = phi float [ %5717, %5696 ], [ %5694, %5582 ]
  %5722 = phi float [ %5718, %5696 ], [ %5695, %5582 ]
  %5723 = fmul fast float %5610, 9.843750e-01
  %5724 = fadd fast float %5723, 7.812500e-03
  %5725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5724, float %5041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5726 = extractvalue %dx.types.ResRet.f32 %5725, 2
  %5727 = extractvalue %dx.types.ResRet.f32 %5725, 3
  %5728 = fmul fast float %5726, %4914
  %5729 = fmul fast float %5726, %4915
  %5730 = fmul fast float %5726, %4925
  %5731 = fadd fast float %5728, %5727
  %5732 = fadd fast float %5729, %5727
  %5733 = fadd fast float %5730, %5727
  br i1 %5051, label %5734, label %5757

; <label>:5734                                    ; preds = %5719
  %5735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3720, float %5610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.ResRet.f32 %5735, 2
  %5739 = fadd fast float %5736, -5.000000e-01
  %5740 = fadd fast float %5737, -5.000000e-01
  %5741 = fadd fast float %5738, -5.000000e-01
  %5742 = fmul fast float %4914, 4.000000e+00
  %5743 = fmul fast float %5742, %5687
  %5744 = fmul fast float %5743, %5739
  %5745 = fmul fast float %4915, 4.000000e+00
  %5746 = fmul fast float %5745, %5688
  %5747 = fmul fast float %5746, %5740
  %5748 = fmul fast float %4925, 4.000000e+00
  %5749 = fmul fast float %5748, %5689
  %5750 = fmul fast float %5749, %5741
  %5751 = fadd fast float %5744, %5731
  %5752 = fadd fast float %5747, %5732
  %5753 = fadd fast float %5750, %5733
  %5754 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5755 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5756 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  br label %5757

; <label>:5757                                    ; preds = %5734, %5719
  %5758 = phi float [ %5754, %5734 ], [ %5731, %5719 ]
  %5759 = phi float [ %5755, %5734 ], [ %5732, %5719 ]
  %5760 = phi float [ %5756, %5734 ], [ %5733, %5719 ]
  %5761 = call float @dx.op.binary.f32(i32 35, float %5759, float %5760)  ; FMax(a,b)
  %5762 = call float @dx.op.binary.f32(i32 35, float %5758, float %5761)  ; FMax(a,b)
  %5763 = fsub fast float 1.000000e+00, %5762
  %5764 = fmul fast float %5720, %5678
  %5765 = fmul fast float %5721, %5678
  %5766 = fmul fast float %5722, %5678
  %5767 = fsub fast float 1.000000e+00, %5611
  %5768 = bitcast float %5767 to i32
  %5769 = sitofp i32 %5768 to float
  %5770 = fmul fast float %5769, 5.000000e+00
  %5771 = fadd fast float %5770, 0xC1EFBF8940000000
  %5772 = fptosi float %5771 to i32
  %5773 = bitcast i32 %5772 to float
  %5774 = fmul fast float %5773, %3721
  %5775 = fmul fast float %5763, %5774
  %5776 = fmul fast float %5775, %5101
  %5777 = fmul fast float %5775, %5102
  %5778 = fmul fast float %5775, %5103
  %5779 = fadd fast float %5776, %5764
  %5780 = fadd fast float %5777, %5765
  %5781 = fadd fast float %5778, %5766
  %5782 = fmul fast float %5599, %3717
  %5783 = fmul fast float %5782, %5617
  %5784 = fmul fast float %5783, %5763
  %5785 = fmul fast float %5600, %3717
  %5786 = fmul fast float %5785, %5617
  %5787 = fmul fast float %5786, %5763
  %5788 = fmul fast float %5601, %3717
  %5789 = fmul fast float %5788, %5617
  %5790 = fmul fast float %5789, %5763
  %5791 = fadd fast float %5784, %5438
  %5792 = fadd fast float %5787, %5439
  %5793 = fadd fast float %5790, %5440
  %5794 = fmul fast float %5783, %5779
  %5795 = fmul fast float %5786, %5780
  %5796 = fmul fast float %5789, %5781
  %5797 = fadd fast float %5794, %5435
  %5798 = fadd fast float %5795, %5436
  %5799 = fadd fast float %5796, %5437
  br label %5513

; <label>:5800                                    ; preds = %5513
  br label %5801

; <label>:5801                                    ; preds = %5800, %5401
  %5802 = phi float [ %5403, %5401 ], [ %5514, %5800 ]
  %5803 = phi float [ %5404, %5401 ], [ %5515, %5800 ]
  %5804 = phi float [ %5405, %5401 ], [ %5516, %5800 ]
  %5805 = phi float [ %5406, %5401 ], [ %5517, %5800 ]
  %5806 = phi float [ %5407, %5401 ], [ %5518, %5800 ]
  %5807 = phi float [ %5408, %5401 ], [ %5519, %5800 ]
  %5808 = add i32 %5402, 1
  %5809 = icmp ugt i32 %5808, %5398
  br i1 %5809, label %5810, label %5401

; <label>:5810                                    ; preds = %5801
  br label %5811

; <label>:5811                                    ; preds = %5810, %5377, %5367
  %5812 = phi float [ %5368, %5367 ], [ %5368, %5377 ], [ %5802, %5810 ]
  %5813 = phi float [ %5369, %5367 ], [ %5369, %5377 ], [ %5803, %5810 ]
  %5814 = phi float [ %5370, %5367 ], [ %5370, %5377 ], [ %5804, %5810 ]
  %5815 = phi float [ %5371, %5367 ], [ %5371, %5377 ], [ %5805, %5810 ]
  %5816 = phi float [ %5372, %5367 ], [ %5372, %5377 ], [ %5806, %5810 ]
  %5817 = phi float [ %5373, %5367 ], [ %5373, %5377 ], [ %5807, %5810 ]
  %5818 = call float @dx.op.unary.f32(i32 24, float %4920)  ; Sqrt(value)
  %5819 = call float @dx.op.unary.f32(i32 24, float %4921)  ; Sqrt(value)
  %5820 = call float @dx.op.unary.f32(i32 24, float %4922)  ; Sqrt(value)
  %5821 = fmul fast float %5818, %5815
  %5822 = fmul fast float %5819, %5816
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  br i1 %202, label %5825, label %5845

; <label>:5825                                    ; preds = %5811
  %5826 = fadd fast float %5817, %3723
  %5827 = fmul fast float %5826, %3724
  %5828 = fsub fast float 1.000000e+00, %3724
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 3
  %5832 = fmul fast float %5831, %5829
  %5833 = fadd fast float %5832, %5827
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = fmul fast float %5835, %5107
  %5837 = fsub fast float %5833, %5836
  %5838 = fadd fast float %5822, %5821
  %5839 = fmul fast float %5824, %5838
  %5840 = extractvalue %dx.types.CBufRet.f32 %5830, 1
  %5841 = fsub fast float %5837, %5840
  %5842 = extractvalue %dx.types.CBufRet.f32 %5830, 2
  %5843 = fmul fast float %5841, %5842
  %5844 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  br label %5861

; <label>:5845                                    ; preds = %5811
  %5846 = fmul fast float %5820, %5817
  %5847 = fmul fast float %5824, %5821
  %5848 = fmul fast float %5824, %5822
  %5849 = fmul fast float %5846, %5824
  %5850 = add i32 %32, 356
  %5851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5850, i32 undef)  ; BufferLoad(srv,index,wot)
  %5852 = extractvalue %dx.types.ResRet.i32 %5851, 0
  %5853 = and i32 %5852, 32
  %5854 = icmp eq i32 %5853, 0
  br i1 %5854, label %5861, label %5855

; <label>:5855                                    ; preds = %5845
  %5856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5856, 0
  %5858 = fmul fast float %5857, 0x3FE99999A0000000
  %5859 = fadd fast float %5857, %5847
  %5860 = fadd fast float %5858, %5849
  br label %5861

; <label>:5861                                    ; preds = %5855, %5845, %5825
  %5862 = phi float [ %5839, %5825 ], [ %5859, %5855 ], [ %5847, %5845 ]
  %5863 = phi float [ %5844, %5825 ], [ %5848, %5855 ], [ %5848, %5845 ]
  %5864 = phi float [ 1.000000e+00, %5825 ], [ %5860, %5855 ], [ %5849, %5845 ]
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 0
  %5867 = fmul fast float %5866, %5813
  %5868 = fmul fast float %5866, %5814
  %5869 = fadd fast float %5813, %5812
  %5870 = select i1 %202, float %5869, float %5812
  %5871 = fmul float %5870, %5866
  %5872 = select i1 %202, float 0.000000e+00, float %5867
  %5873 = select i1 %202, float 0.000000e+00, float %5868
  %5874 = fmul fast float %5862, %5818
  %5875 = fmul fast float %5863, %5819
  %5876 = fmul fast float %5864, %5820
  %5877 = fadd fast float %5871, %5874
  %5878 = fadd fast float %5872, %5875
  %5879 = fadd fast float %5873, %5876
  %5880 = select i1 %202, float %5863, float %5878
  %5881 = select i1 %202, float %5864, float %5879
  %5882 = call float @dx.op.binary.f32(i32 36, float %5877, float 3.225500e+04)  ; FMin(a,b)
  %5883 = call float @dx.op.binary.f32(i32 36, float %5880, float 3.225500e+04)  ; FMin(a,b)
  %5884 = call float @dx.op.binary.f32(i32 36, float %5881, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5882)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5883)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5884)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

