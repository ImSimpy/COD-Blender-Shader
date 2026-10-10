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
; shader hash: a8320d5e65533343abf56cdce609af0a
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
;                                   sampler      NA          NA      S4             s5     1
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
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %70
  %78 = fmul fast float %76, %71
  %79 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = bitcast float %79 to i32
  %81 = ashr i32 %80, 1
  %82 = sub nsw i32 1597250115, %81
  %83 = bitcast i32 %82 to float
  %84 = fmul fast float %83, %62
  %85 = fmul fast float %83, %63
  %86 = fmul fast float %83, %64
  %87 = fmul fast float %63, %60
  %88 = fmul fast float %64, %59
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %64, %58
  %91 = fmul fast float %62, %60
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %62, %59
  %94 = fmul fast float %63, %58
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %89, %61
  %97 = fmul fast float %92, %61
  %98 = fmul fast float %95, %61
  %99 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %100 = bitcast float %99 to i32
  %101 = ashr i32 %100, 1
  %102 = sub nsw i32 1597250115, %101
  %103 = bitcast i32 %102 to float
  %104 = fmul fast float %103, %51
  %105 = fmul fast float %103, %52
  %106 = fmul fast float %103, %53
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fcmp fast une float %108, 0.000000e+00
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %77, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %78, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = select i1 %109, float %120, float %124
  %128 = select i1 %109, float %121, float %125
  %129 = select i1 %109, float %122, float %126
  %130 = fmul fast float %127, %117
  %131 = fmul fast float %128, %117
  %132 = fmul fast float %129, %117
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = select i1 %109, float %134, float %138
  %142 = select i1 %109, float %135, float %139
  %143 = select i1 %109, float %136, float %140
  %144 = fmul fast float %141, %118
  %145 = fmul fast float %142, %118
  %146 = fmul fast float %143, %118
  %147 = fadd fast float %144, %130
  %148 = fadd fast float %145, %131
  %149 = fadd fast float %146, %132
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = select i1 %109, float %151, float %155
  %159 = select i1 %109, float %152, float %156
  %160 = select i1 %109, float %153, float %157
  %161 = fadd fast float %147, %158
  %162 = fadd fast float %148, %159
  %163 = fadd fast float %149, %160
  %164 = fmul fast float %161, %72
  %165 = fmul fast float %162, %72
  %166 = fmul fast float %163, %72
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 3
  %170 = fmul fast float %168, %77
  %171 = fmul fast float %169, %78
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = and i32 %173, 114688
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, float %170, float 0.000000e+00
  %177 = select i1 %175, float %171, float 0.000000e+00
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = fmul fast float %179, 2.550000e+02
  %181 = fptoui float %180 to i32
  %182 = select i1 %175, i32 %181, i32 0
  %183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.i32 %183, 3
  %185 = and i32 %184, 3
  %186 = icmp ne i32 %185, 0
  %187 = and i32 %184, 4
  %188 = icmp ne i32 %187, 0
  %189 = and i1 %186, %188
  br i1 %189, label %190, label %199

; <label>:190                                     ; preds = %0
  %191 = fmul fast float %112, %78
  %192 = fmul fast float %111, %77
  %193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %192, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fsub fast float 1.000000e+00, %194
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = fcmp fast olt float %195, %197
  br label %202

; <label>:199                                     ; preds = %0
  %200 = icmp eq i32 %187, 0
  %201 = and i1 %186, %200
  br label %202

; <label>:202                                     ; preds = %199, %190
  %203 = phi i1 [ %198, %190 ], [ %201, %199 ]
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fmul fast float %205, 0x3FE3C6EF40000000
  %207 = frem fast float %77, 2.560000e+02
  %208 = frem fast float %78, 2.560000e+02
  %209 = fptoui float %207 to i32
  %210 = fptoui float %208 to i32
  %211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %209, i32 %210, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = fadd fast float %212, %206
  %214 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %215 = add i32 %33, 156
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = shl i32 %217, 4
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %217, 7
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %217, 22
  %225 = shl nuw nsw i32 %224, 5
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = add i32 %33, 216
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %229, 8
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = lshr i32 %229, 16
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = add i32 %33, 36
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = add i32 %33, 288
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = fmul fast float %252, 0x3F50624DE0000000
  %256 = fmul fast float %254, 0x3F50624DE0000000
  %257 = add i32 %33, 172
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = shl i32 %259, 4
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %259, 7
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %259, 22
  %267 = shl nuw nsw i32 %266, 5
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %33, 232
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = lshr i32 %271, 8
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %271, 16
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = add i32 %33, 52
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %33, 304
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = fmul fast float %294, 0x3F50624DE0000000
  %298 = fmul fast float %296, 0x3F50624DE0000000
  %299 = add i32 %33, 188
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = shl i32 %301, 4
  %303 = and i32 %302, 32752
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %301, 7
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %301, 22
  %309 = shl nuw nsw i32 %308, 5
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %33, 248
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = lshr i32 %313, 8
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %313, 16
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = add i32 %33, 68
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %33, 320
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = fmul fast float %336, 0x3F50624DE0000000
  %340 = fmul fast float %338, 0x3F50624DE0000000
  %341 = add i32 %33, 204
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = shl i32 %343, 4
  %345 = and i32 %344, 32752
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %343, 7
  %348 = and i32 %347, 32752
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %343, 22
  %351 = shl nuw nsw i32 %350, 5
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %33, 264
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = lshr i32 %355, 8
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = lshr i32 %355, 16
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = add i32 %33, 84
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = add i32 %33, 336
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = fmul fast float %378, 0x3F50624DE0000000
  %382 = fmul fast float %380, 0x3F50624DE0000000
  %383 = add i32 %33, 348
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 32
  %387 = icmp eq i32 %386, 0
  %388 = and i32 %385, 64
  %389 = icmp eq i32 %388, 0
  %390 = and i32 %385, 128
  %391 = icmp eq i32 %390, 0
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 2
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %409, label %396

; <label>:396                                     ; preds = %202
  %397 = add i32 %33, 472
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = add i32 %399, 0
  %401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %402 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %401, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = fmul fast float %403, %67
  %407 = fmul fast float %404, %68
  %408 = fmul fast float %405, %69
  br label %409

; <label>:409                                     ; preds = %396, %202
  %410 = phi float [ %69, %202 ], [ %408, %396 ]
  %411 = phi float [ %68, %202 ], [ %407, %396 ]
  %412 = phi float [ %67, %202 ], [ %406, %396 ]
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 2
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %436, label %417

; <label>:417                                     ; preds = %409
  %418 = add i32 %33, 44
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 1
  %422 = icmp ne i32 %421, 0
  %423 = select i1 %422, float %412, float 1.000000e+00
  %424 = add i32 %33, 60
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 1
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %428, float %411, float 1.000000e+00
  %430 = add i32 %33, 76
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 1
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %410, float 1.000000e+00
  br label %436

; <label>:436                                     ; preds = %417, %409
  %437 = phi float [ %410, %409 ], [ %435, %417 ]
  %438 = phi float [ %411, %409 ], [ %429, %417 ]
  %439 = phi float [ %412, %409 ], [ %423, %417 ]
  %440 = lshr i32 %414, 20
  %441 = and i32 %440, 3
  %442 = add nuw nsw i32 %441, 1
  %443 = add i32 %33, 24
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add i32 %33, 28
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = or i32 %448, %445
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %909, label %451

; <label>:451                                     ; preds = %436
  %452 = and i32 %445, 262144
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %38, float 1.000000e+00
  %455 = select i1 %453, float %39, float 0.000000e+00
  %456 = select i1 %453, float %40, float 0.000000e+00
  %457 = select i1 %453, float %41, float 1.000000e+00
  %458 = select i1 %453, float %42, float %65
  %459 = select i1 %453, float %43, float %66
  %460 = add i32 %33, 284
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = fmul fast float %464, 0x3F50624DE0000000
  %466 = add i32 %33, 88
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 16
  %470 = and i32 %469, 255
  %471 = lshr i32 %468, 24
  %472 = add i32 %33, 292
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 65535
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %474, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = add i32 %33, 32
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = lshr i32 %481, 22
  %483 = shl nuw nsw i32 %482, 5
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = shl i32 %481, 4
  %486 = and i32 %485, 32752
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %481, 7
  %489 = and i32 %488, 32752
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 3
  %493 = fmul fast float %492, 1.000000e+03
  %494 = fmul fast float %255, %493
  %495 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %496 = fadd fast float %495, %245
  %497 = fmul fast float %256, %493
  %498 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %499 = fadd fast float %498, %247
  %500 = fmul fast float %465, %493
  %501 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %502 = fmul fast float %501, 0x401921FB60000000
  %503 = fadd fast float %502, %484
  %504 = call float @dx.op.unary.f32(i32 13, float %503)  ; Sin(value)
  %505 = call float @dx.op.unary.f32(i32 12, float %503)  ; Cos(value)
  %506 = fsub fast float -0.000000e+00, %504
  %507 = fadd fast float %458, -5.000000e-01
  %508 = fadd fast float %459, -5.000000e-01
  %509 = fmul fast float %476, %507
  %510 = fmul fast float %478, %508
  %511 = fadd fast float %509, 5.000000e-01
  %512 = fadd fast float %510, 5.000000e-01
  %513 = fmul fast float %487, %511
  %514 = fmul fast float %490, %512
  %515 = fmul fast float %505, %513
  %516 = call float @dx.op.tertiary.f32(i32 46, float %506, float %514, float %515)  ; FMad(a,b,c)
  %517 = fmul fast float %504, %513
  %518 = call float @dx.op.tertiary.f32(i32 46, float %505, float %514, float %517)  ; FMad(a,b,c)
  %519 = fadd fast float %496, %516
  %520 = fadd fast float %499, %518
  %521 = icmp ugt i32 %470, 1
  %522 = icmp ugt i32 %468, 33554431
  %523 = or i1 %522, %521
  br i1 %523, label %524, label %549

; <label>:524                                     ; preds = %451
  %525 = add i32 %33, 228
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 16
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = fmul fast float %492, %529
  %531 = call float @dx.op.unary.f32(i32 22, float %530)  ; Frc(value)
  %532 = mul nuw nsw i32 %470, %471
  %533 = uitofp i32 %532 to float
  %534 = fmul fast float %531, %533
  %535 = call float @dx.op.unary.f32(i32 27, float %534)  ; Round_ni(value)
  %536 = fptoui float %535 to i32
  %537 = urem i32 %536, %470
  %538 = udiv i32 %536, %471
  %539 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %540 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %541 = uitofp i32 %537 to float
  %542 = uitofp i32 %538 to float
  %543 = fadd fast float %539, %541
  %544 = fadd fast float %540, %542
  %545 = uitofp i32 %470 to float
  %546 = uitofp i32 %471 to float
  %547 = fdiv fast float %543, %545
  %548 = fdiv fast float %544, %546
  br label %549

; <label>:549                                     ; preds = %524, %451
  %550 = phi float [ %547, %524 ], [ %519, %451 ]
  %551 = phi float [ %548, %524 ], [ %520, %451 ]
  %552 = and i32 %445, 16
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %750, label %554

; <label>:554                                     ; preds = %549
  %555 = add i32 %33, 360
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = add i32 %557, 0
  %559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %559, %dx.types.Handle %73, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = extractvalue %dx.types.ResRet.f32 %560, 2
  %564 = extractvalue %dx.types.ResRet.f32 %560, 3
  %565 = and i32 %468, 255
  %566 = uitofp i32 %565 to float
  %567 = lshr i32 %468, 8
  %568 = and i32 %567, 255
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %564, %566
  %571 = fadd fast float %570, %569
  %572 = fmul fast float %571, 0x3F70101000000000
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 512
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %585, label %577

; <label>:577                                     ; preds = %554
  %578 = add i32 %33, 440
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = add i32 %580, 0
  %582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %582, %dx.types.Handle %74, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  br label %585

; <label>:585                                     ; preds = %577, %554
  %586 = phi float [ %584, %577 ], [ 1.000000e+00, %554 ]
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 33554432
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %697, label %591

; <label>:591                                     ; preds = %585
  %592 = add i32 %33, 224
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = and i32 %594, 65535
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = lshr i32 %594, 16
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = add i32 %33, 228
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = and i32 %601, 65535
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = lshr i32 %605, 24
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = and i32 %605, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = lshr i32 %605, 8
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = lshr i32 %605, 16
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = add i32 %33, 220
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = lshr i32 %622, 24
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = and i32 %622, 255
  %627 = uitofp i32 %626 to float
  %628 = fmul fast float %627, 0x3F70101020000000
  %629 = lshr i32 %622, 8
  %630 = and i32 %629, 255
  %631 = uitofp i32 %630 to float
  %632 = fmul fast float %631, 0x3F70101020000000
  %633 = lshr i32 %622, 16
  %634 = and i32 %633, 255
  %635 = uitofp i32 %634 to float
  %636 = fmul fast float %635, 0x3F70101020000000
  %637 = bitcast float %561 to i32
  %638 = ashr i32 %637, 1
  %639 = sub nsw i32 1597463174, %638
  %640 = bitcast i32 %639 to float
  %641 = fmul fast float %561, 5.000000e-01
  %642 = fmul fast float %640, %640
  %643 = fmul fast float %642, %641
  %644 = fsub fast float 1.500000e+00, %643
  %645 = fmul fast float %640, %561
  %646 = fmul fast float %645, %644
  %647 = bitcast float %562 to i32
  %648 = ashr i32 %647, 1
  %649 = sub nsw i32 1597463174, %648
  %650 = bitcast i32 %649 to float
  %651 = fmul fast float %562, 5.000000e-01
  %652 = fmul fast float %650, %650
  %653 = fmul fast float %652, %651
  %654 = fsub fast float 1.500000e+00, %653
  %655 = fmul fast float %650, %562
  %656 = fmul fast float %655, %654
  %657 = bitcast float %563 to i32
  %658 = ashr i32 %657, 1
  %659 = sub nsw i32 1597463174, %658
  %660 = bitcast i32 %659 to float
  %661 = fmul fast float %563, 5.000000e-01
  %662 = fmul fast float %660, %660
  %663 = fmul fast float %662, %661
  %664 = fsub fast float 1.500000e+00, %663
  %665 = fmul fast float %660, %563
  %666 = fmul fast float %665, %664
  %667 = fsub fast float %646, %628
  %668 = fsub fast float %656, %632
  %669 = fsub fast float %666, %636
  %670 = fmul fast float %667, %596
  %671 = fmul fast float %668, %598
  %672 = fmul fast float %669, %603
  %673 = fadd fast float %670, %611
  %674 = fadd fast float %671, %615
  %675 = fadd fast float %672, %619
  %676 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %677 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %678 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %679 = fmul fast float %676, %676
  %680 = fmul fast float %677, %677
  %681 = fmul fast float %678, %678
  %682 = fsub fast float %679, %561
  %683 = fsub fast float %680, %562
  %684 = fsub fast float %681, %563
  %685 = fmul fast float %682, %586
  %686 = fmul fast float %683, %586
  %687 = fmul fast float %684, %586
  %688 = fadd fast float %685, %561
  %689 = fadd fast float %686, %562
  %690 = fadd fast float %687, %563
  %691 = fadd fast float %608, %572
  %692 = fsub fast float %691, %625
  %693 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %694 = fsub fast float %693, %572
  %695 = fmul fast float %694, %586
  %696 = fadd fast float %695, %572
  br label %750

; <label>:697                                     ; preds = %585
  %698 = and i32 %588, 134217728
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %734, label %700

; <label>:700                                     ; preds = %697
  %701 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %702 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %703 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %704 = fadd fast float %701, -5.000000e-01
  %705 = fadd fast float %702, -5.000000e-01
  %706 = fadd fast float %703, -5.000000e-01
  %707 = fmul fast float %704, %586
  %708 = fmul fast float %705, %586
  %709 = fmul fast float %706, %586
  %710 = fadd fast float %707, 5.000000e-01
  %711 = fadd fast float %708, 5.000000e-01
  %712 = fadd fast float %709, 5.000000e-01
  %713 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %714 = call float @dx.op.unary.f32(i32 24, float %562)  ; Sqrt(value)
  %715 = call float @dx.op.unary.f32(i32 24, float %563)  ; Sqrt(value)
  %716 = fmul fast float %710, 2.000000e+00
  %717 = fsub fast float 1.000000e+00, %716
  %718 = fmul fast float %717, %713
  %719 = fadd fast float %718, %716
  %720 = fmul fast float %719, %713
  %721 = fmul fast float %711, 2.000000e+00
  %722 = fsub fast float 1.000000e+00, %721
  %723 = fmul fast float %722, %714
  %724 = fadd fast float %723, %721
  %725 = fmul fast float %724, %714
  %726 = fmul fast float %712, 2.000000e+00
  %727 = fsub fast float 1.000000e+00, %726
  %728 = fmul fast float %727, %715
  %729 = fadd fast float %728, %726
  %730 = fmul fast float %729, %715
  %731 = fmul fast float %720, %720
  %732 = fmul fast float %725, %725
  %733 = fmul fast float %730, %730
  br label %750

; <label>:734                                     ; preds = %697
  %735 = fmul fast float %232, %232
  %736 = fmul fast float %236, %236
  %737 = fmul fast float %240, %240
  %738 = fadd fast float %735, -1.000000e+00
  %739 = fadd fast float %736, -1.000000e+00
  %740 = fadd fast float %737, -1.000000e+00
  %741 = fmul fast float %586, %738
  %742 = fmul fast float %586, %739
  %743 = fmul fast float %586, %740
  %744 = fadd fast float %741, 1.000000e+00
  %745 = fadd fast float %742, 1.000000e+00
  %746 = fadd fast float %743, 1.000000e+00
  %747 = fmul fast float %744, %561
  %748 = fmul fast float %745, %562
  %749 = fmul fast float %746, %563
  br label %750

; <label>:750                                     ; preds = %734, %700, %591, %549
  %751 = phi float [ %696, %591 ], [ %572, %700 ], [ %572, %734 ], [ 0x3FA23C0BE0000000, %549 ]
  %752 = phi float [ %688, %591 ], [ %731, %700 ], [ %747, %734 ], [ 1.000000e+00, %549 ]
  %753 = phi float [ %689, %591 ], [ %732, %700 ], [ %748, %734 ], [ 1.000000e+00, %549 ]
  %754 = phi float [ %690, %591 ], [ %733, %700 ], [ %749, %734 ], [ 1.000000e+00, %549 ]
  %755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.i32 %755, 1
  %757 = and i32 %756, 1
  %758 = icmp ne i32 %757, 0
  %759 = add i32 %33, 356
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 32
  %763 = icmp ne i32 %762, 0
  %764 = and i1 %758, %763
  %765 = select i1 %764, float 1.000000e+00, float %752
  %766 = select i1 %764, float 0x3FD3333340000000, float %753
  %767 = select i1 %764, float 0x3FD3333340000000, float %754
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 32
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %844, label %772

; <label>:772                                     ; preds = %750
  %773 = add i32 %33, 92
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = add i32 %33, 376
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = add i32 %778, 0
  %780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %780, %dx.types.Handle %73, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = extractvalue %dx.types.ResRet.f32 %781, 3
  %786 = and i32 %775, 255
  %787 = uitofp i32 %786 to float
  %788 = lshr i32 %775, 8
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = lshr i32 %775, 16
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101000000000
  %795 = fmul fast float %782, %787
  %796 = fadd fast float %795, %790
  %797 = fmul fast float %796, 0x3F70101000000000
  %798 = fadd fast float %783, -5.000000e-01
  %799 = fadd fast float %785, -5.000000e-01
  %800 = fmul fast float %798, %794
  %801 = fmul fast float %799, %794
  %802 = fadd fast float %800, 5.000000e-01
  %803 = fadd fast float %801, 5.000000e-01
  %804 = fmul fast float %802, 2.000000e+00
  %805 = fadd fast float %804, -1.000000e+00
  %806 = fmul fast float %803, 2.000000e+00
  %807 = fadd fast float %806, -1.000000e+00
  %808 = fadd fast float %805, %807
  %809 = fmul fast float %808, 5.000000e-01
  %810 = fsub fast float %805, %807
  %811 = fmul fast float %810, 5.000000e-01
  %812 = call float @dx.op.unary.f32(i32 6, float %809)  ; FAbs(value)
  %813 = fsub fast float 1.000000e+00, %812
  %814 = call float @dx.op.unary.f32(i32 6, float %811)  ; FAbs(value)
  %815 = fsub fast float %813, %814
  %816 = call float @dx.op.dot3.f32(i32 55, float %809, float %811, float %815, float %809, float %811, float %815)  ; Dot3(ax,ay,az,bx,by,bz)
  %817 = call float @dx.op.unary.f32(i32 25, float %816)  ; Rsqrt(value)
  %818 = fmul fast float %809, %817
  %819 = fmul fast float %811, %817
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 67108864
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %840, label %824

; <label>:824                                     ; preds = %772
  %825 = add i32 %33, 280
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 65535
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = and i32 %831, 65535
  %833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %832)  ; LegacyF16ToF32(value)
  %834 = lshr i32 %827, 16
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = fsub fast float %797, %835
  %837 = fmul fast float %836, %829
  %838 = fadd fast float %837, %833
  %839 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  br label %840

; <label>:840                                     ; preds = %824, %772
  %841 = phi float [ %839, %824 ], [ %797, %772 ]
  %842 = call float @dx.op.dot2.f32(i32 54, float %818, float %819, float %454, float %455)  ; Dot2(ax,ay,bx,by)
  %843 = call float @dx.op.dot2.f32(i32 54, float %818, float %819, float %456, float %457)  ; Dot2(ax,ay,bx,by)
  br label %844

; <label>:844                                     ; preds = %840, %750
  %845 = phi float [ %841, %840 ], [ 0x3FD6666660000000, %750 ]
  %846 = phi float [ %842, %840 ], [ 0.000000e+00, %750 ]
  %847 = phi float [ %843, %840 ], [ 0.000000e+00, %750 ]
  %848 = phi float [ %784, %840 ], [ 1.000000e+00, %750 ]
  %849 = add i32 %33, 160
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = lshr i32 %851, 22
  %853 = shl nuw nsw i32 %852, 5
  %854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %853)  ; LegacyF16ToF32(value)
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 64
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %892, label %859

; <label>:859                                     ; preds = %844
  %860 = add i32 %33, 392
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = add i32 %862, 0
  %864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = and i32 %866, 131072
  %868 = icmp eq i32 %867, 0
  %869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %864, %dx.types.Handle %73, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = extractvalue %dx.types.ResRet.f32 %869, 1
  %872 = extractvalue %dx.types.ResRet.f32 %869, 2
  %873 = fmul fast float %870, %220
  %874 = fmul fast float %871, %223
  %875 = fmul fast float %872, %226
  br i1 %868, label %882, label %876

; <label>:876                                     ; preds = %859
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %879 = fmul fast float %878, %873
  %880 = fmul fast float %878, %874
  %881 = fmul fast float %878, %875
  br label %882

; <label>:882                                     ; preds = %876, %859
  %883 = phi float [ %879, %876 ], [ %873, %859 ]
  %884 = phi float [ %880, %876 ], [ %874, %859 ]
  %885 = phi float [ %881, %876 ], [ %875, %859 ]
  %886 = fmul fast float %883, %854
  %887 = select i1 %203, float %886, float %883
  %888 = call float @dx.op.dot3.f32(i32 55, float %887, float %884, float %885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = select i1 %203, float 0.000000e+00, float %883
  %890 = select i1 %203, float %888, float %884
  %891 = select i1 %203, float 0.000000e+00, float %885
  br label %892

; <label>:892                                     ; preds = %882, %844
  %893 = phi float [ %889, %882 ], [ 0.000000e+00, %844 ]
  %894 = phi float [ %890, %882 ], [ 0.000000e+00, %844 ]
  %895 = phi float [ %891, %882 ], [ 0.000000e+00, %844 ]
  %896 = add i32 %33, 96
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = and i32 %898, 255
  %900 = uitofp i32 %899 to float
  %901 = lshr i32 %898, 8
  %902 = and i32 %901, 255
  %903 = uitofp i32 %902 to float
  %904 = call float @dx.op.dot3.f32(i32 55, float %765, float %766, float %767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = fmul fast float %903, %904
  %906 = fadd fast float %905, %900
  %907 = fmul fast float %906, 0x3F70101020000000
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  br label %909

; <label>:909                                     ; preds = %892, %436
  %910 = phi float [ 0.000000e+00, %436 ], [ %846, %892 ]
  %911 = phi float [ 0.000000e+00, %436 ], [ %847, %892 ]
  %912 = phi float [ 0.000000e+00, %436 ], [ %765, %892 ]
  %913 = phi float [ 0.000000e+00, %436 ], [ %766, %892 ]
  %914 = phi float [ 0.000000e+00, %436 ], [ %767, %892 ]
  %915 = phi float [ 0.000000e+00, %436 ], [ %893, %892 ]
  %916 = phi float [ 0.000000e+00, %436 ], [ %894, %892 ]
  %917 = phi float [ 0.000000e+00, %436 ], [ %895, %892 ]
  %918 = phi float [ 0.000000e+00, %436 ], [ %751, %892 ]
  %919 = phi float [ 0.000000e+00, %436 ], [ 1.000000e+00, %892 ]
  %920 = phi float [ 0.000000e+00, %436 ], [ %845, %892 ]
  %921 = phi float [ 0.000000e+00, %436 ], [ %848, %892 ]
  %922 = phi float [ 0.000000e+00, %436 ], [ %908, %892 ]
  br i1 %387, label %1649, label %923

; <label>:923                                     ; preds = %909
  %924 = icmp ult i32 %442, 2
  %925 = add i32 %33, 40
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = add i32 %33, 44
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = or i32 %930, %927
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %1649, label %933

; <label>:933                                     ; preds = %923
  %934 = and i32 %927, 262144
  %935 = icmp ne i32 %934, 0
  %936 = select i1 %935, float %38, float 1.000000e+00
  %937 = select i1 %935, float %39, float 0.000000e+00
  %938 = select i1 %935, float %40, float 0.000000e+00
  %939 = select i1 %935, float %41, float 1.000000e+00
  %940 = select i1 %935, float %42, float %65
  %941 = select i1 %935, float %43, float %66
  %942 = add i32 %33, 300
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = lshr i32 %944, 16
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = fmul fast float %946, 0x3F50624DE0000000
  %948 = add i32 %33, 104
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = lshr i32 %950, 16
  %952 = and i32 %951, 255
  %953 = lshr i32 %950, 24
  %954 = add i32 %33, 308
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 65535
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = lshr i32 %956, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = add i32 %33, 48
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 22
  %965 = shl nuw nsw i32 %964, 5
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = shl i32 %963, 4
  %968 = and i32 %967, 32752
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = lshr i32 %963, 7
  %971 = and i32 %970, 32752
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 3
  %975 = fmul fast float %974, 1.000000e+03
  %976 = fmul fast float %297, %975
  %977 = call float @dx.op.unary.f32(i32 22, float %976)  ; Frc(value)
  %978 = fadd fast float %977, %287
  %979 = fmul fast float %298, %975
  %980 = call float @dx.op.unary.f32(i32 22, float %979)  ; Frc(value)
  %981 = fadd fast float %980, %289
  %982 = fmul fast float %947, %975
  %983 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %984 = fmul fast float %983, 0x401921FB60000000
  %985 = fadd fast float %984, %966
  %986 = call float @dx.op.unary.f32(i32 13, float %985)  ; Sin(value)
  %987 = call float @dx.op.unary.f32(i32 12, float %985)  ; Cos(value)
  %988 = fsub fast float -0.000000e+00, %986
  %989 = fadd fast float %940, -5.000000e-01
  %990 = fadd fast float %941, -5.000000e-01
  %991 = fmul fast float %958, %989
  %992 = fmul fast float %960, %990
  %993 = fadd fast float %991, 5.000000e-01
  %994 = fadd fast float %992, 5.000000e-01
  %995 = fmul fast float %969, %993
  %996 = fmul fast float %972, %994
  %997 = fmul fast float %987, %995
  %998 = call float @dx.op.tertiary.f32(i32 46, float %988, float %996, float %997)  ; FMad(a,b,c)
  %999 = fmul fast float %986, %995
  %1000 = call float @dx.op.tertiary.f32(i32 46, float %987, float %996, float %999)  ; FMad(a,b,c)
  %1001 = fadd fast float %978, %998
  %1002 = fadd fast float %981, %1000
  %1003 = icmp ugt i32 %952, 1
  %1004 = icmp ugt i32 %950, 33554431
  %1005 = or i1 %1004, %1003
  br i1 %1005, label %1006, label %1031

; <label>:1006                                    ; preds = %933
  %1007 = add i32 %33, 244
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = lshr i32 %1009, 16
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = fmul fast float %974, %1011
  %1013 = call float @dx.op.unary.f32(i32 22, float %1012)  ; Frc(value)
  %1014 = mul nuw nsw i32 %952, %953
  %1015 = uitofp i32 %1014 to float
  %1016 = fmul fast float %1013, %1015
  %1017 = call float @dx.op.unary.f32(i32 27, float %1016)  ; Round_ni(value)
  %1018 = fptoui float %1017 to i32
  %1019 = urem i32 %1018, %952
  %1020 = udiv i32 %1018, %953
  %1021 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1022 = call float @dx.op.unary.f32(i32 22, float %1002)  ; Frc(value)
  %1023 = uitofp i32 %1019 to float
  %1024 = uitofp i32 %1020 to float
  %1025 = fadd fast float %1021, %1023
  %1026 = fadd fast float %1022, %1024
  %1027 = uitofp i32 %952 to float
  %1028 = uitofp i32 %953 to float
  %1029 = fdiv fast float %1025, %1027
  %1030 = fdiv fast float %1026, %1028
  br label %1031

; <label>:1031                                    ; preds = %1006, %933
  %1032 = phi float [ %1029, %1006 ], [ %1001, %933 ]
  %1033 = phi float [ %1030, %1006 ], [ %1002, %933 ]
  %1034 = and i32 %927, 256
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1082, label %1036

; <label>:1036                                    ; preds = %1031
  %1037 = add i32 %33, 428
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = add i32 %1039, 0
  %1041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1041, %dx.types.Handle %74, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = add i32 %33, 116
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = shl i32 %1046, 4
  %1048 = and i32 %1047, 32752
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = lshr i32 %1046, 7
  %1051 = and i32 %1050, 32752
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = fsub fast float 1.000000e+00, %439
  %1054 = call float @dx.op.binary.f32(i32 35, float %1053, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1055 = bitcast float %439 to i32
  %1056 = sitofp i32 %1055 to float
  %1057 = fadd fast float %1056, 0xC1CFBF8940000000
  %1058 = fmul fast float %1052, %1057
  %1059 = fadd fast float %1058, 0x41CFBF8940000000
  %1060 = fptosi float %1059 to i32
  %1061 = bitcast i32 %1060 to float
  %1062 = bitcast float %1054 to i32
  %1063 = sitofp i32 %1062 to float
  %1064 = fadd fast float %1063, 0xC1CFBF8940000000
  %1065 = fmul fast float %1064, %1052
  %1066 = fadd fast float %1065, 0x41CFBF8940000000
  %1067 = fptosi float %1066 to i32
  %1068 = bitcast i32 %1067 to float
  %1069 = fmul fast float %1061, %1049
  %1070 = fmul fast float %1068, %1049
  %1071 = fsub fast float %1054, %1069
  %1072 = fadd fast float %1070, %1054
  %1073 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  %1074 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1075 = fsub fast float %1043, %1073
  %1076 = fsub fast float %1074, %1073
  %1077 = bitcast float %1076 to i32
  %1078 = sub nsw i32 2129859010, %1077
  %1079 = bitcast i32 %1078 to float
  %1080 = fmul fast float %1079, %1075
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  br label %1082

; <label>:1082                                    ; preds = %1036, %1031
  %1083 = phi float [ %1081, %1036 ], [ %439, %1031 ]
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 128
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1104, label %1088

; <label>:1088                                    ; preds = %1082
  %1089 = add i32 %33, 412
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = add i32 %1091, 0
  %1093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1093, %dx.types.Handle %74, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 524288
  %1099 = icmp ne i32 %1098, 0
  %1100 = fcmp fast ogt float %1095, 0x3FE0101020000000
  %1101 = select i1 %1100, float 1.000000e+00, float 0.000000e+00
  %1102 = select i1 %1099, float %1101, float %1095
  %1103 = fmul fast float %1102, %1083
  br label %1104

; <label>:1104                                    ; preds = %1088, %1082
  %1105 = phi float [ %1103, %1088 ], [ %1083, %1082 ]
  %1106 = fcmp fast ult float %1105, 0x3F70101020000000
  br i1 %1106, label %1649, label %1107

; <label>:1107                                    ; preds = %1104
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 16
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1310, label %1112

; <label>:1112                                    ; preds = %1107
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %33, 364
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %1117, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1119, %dx.types.Handle %73, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = extractvalue %dx.types.ResRet.f32 %1120, 3
  %1125 = and i32 %1114, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = lshr i32 %1114, 8
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1124, %1126
  %1131 = fadd fast float %1130, %1129
  %1132 = fmul fast float %1131, 0x3F70101000000000
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = and i32 %1134, 512
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1145, label %1137

; <label>:1137                                    ; preds = %1112
  %1138 = add i32 %33, 444
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = add i32 %1140, 0
  %1142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1142, %dx.types.Handle %74, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  br label %1145

; <label>:1145                                    ; preds = %1137, %1112
  %1146 = phi float [ %1144, %1137 ], [ 1.000000e+00, %1112 ]
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 33554432
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1257, label %1151

; <label>:1151                                    ; preds = %1145
  %1152 = add i32 %33, 240
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 65535
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = lshr i32 %1154, 16
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = add i32 %33, 244
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 65535
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = lshr i32 %1165, 24
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1167, 0x3F70101020000000
  %1169 = and i32 %1165, 255
  %1170 = uitofp i32 %1169 to float
  %1171 = fmul fast float %1170, 0x3F70101020000000
  %1172 = lshr i32 %1165, 8
  %1173 = and i32 %1172, 255
  %1174 = uitofp i32 %1173 to float
  %1175 = fmul fast float %1174, 0x3F70101020000000
  %1176 = lshr i32 %1165, 16
  %1177 = and i32 %1176, 255
  %1178 = uitofp i32 %1177 to float
  %1179 = fmul fast float %1178, 0x3F70101020000000
  %1180 = add i32 %33, 236
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = lshr i32 %1182, 24
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F70101020000000
  %1186 = and i32 %1182, 255
  %1187 = uitofp i32 %1186 to float
  %1188 = fmul fast float %1187, 0x3F70101020000000
  %1189 = lshr i32 %1182, 8
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1191, 0x3F70101020000000
  %1193 = lshr i32 %1182, 16
  %1194 = and i32 %1193, 255
  %1195 = uitofp i32 %1194 to float
  %1196 = fmul fast float %1195, 0x3F70101020000000
  %1197 = bitcast float %1121 to i32
  %1198 = ashr i32 %1197, 1
  %1199 = sub nsw i32 1597463174, %1198
  %1200 = bitcast i32 %1199 to float
  %1201 = fmul fast float %1121, 5.000000e-01
  %1202 = fmul fast float %1200, %1200
  %1203 = fmul fast float %1202, %1201
  %1204 = fsub fast float 1.500000e+00, %1203
  %1205 = fmul fast float %1200, %1121
  %1206 = fmul fast float %1205, %1204
  %1207 = bitcast float %1122 to i32
  %1208 = ashr i32 %1207, 1
  %1209 = sub nsw i32 1597463174, %1208
  %1210 = bitcast i32 %1209 to float
  %1211 = fmul fast float %1122, 5.000000e-01
  %1212 = fmul fast float %1210, %1210
  %1213 = fmul fast float %1212, %1211
  %1214 = fsub fast float 1.500000e+00, %1213
  %1215 = fmul fast float %1210, %1122
  %1216 = fmul fast float %1215, %1214
  %1217 = bitcast float %1123 to i32
  %1218 = ashr i32 %1217, 1
  %1219 = sub nsw i32 1597463174, %1218
  %1220 = bitcast i32 %1219 to float
  %1221 = fmul fast float %1123, 5.000000e-01
  %1222 = fmul fast float %1220, %1220
  %1223 = fmul fast float %1222, %1221
  %1224 = fsub fast float 1.500000e+00, %1223
  %1225 = fmul fast float %1220, %1123
  %1226 = fmul fast float %1225, %1224
  %1227 = fsub fast float %1206, %1188
  %1228 = fsub fast float %1216, %1192
  %1229 = fsub fast float %1226, %1196
  %1230 = fmul fast float %1227, %1156
  %1231 = fmul fast float %1228, %1158
  %1232 = fmul fast float %1229, %1163
  %1233 = fadd fast float %1230, %1171
  %1234 = fadd fast float %1231, %1175
  %1235 = fadd fast float %1232, %1179
  %1236 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1237 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1238 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1239 = fmul fast float %1236, %1236
  %1240 = fmul fast float %1237, %1237
  %1241 = fmul fast float %1238, %1238
  %1242 = fsub fast float %1239, %1121
  %1243 = fsub fast float %1240, %1122
  %1244 = fsub fast float %1241, %1123
  %1245 = fmul fast float %1242, %1146
  %1246 = fmul fast float %1243, %1146
  %1247 = fmul fast float %1244, %1146
  %1248 = fadd fast float %1245, %1121
  %1249 = fadd fast float %1246, %1122
  %1250 = fadd fast float %1247, %1123
  %1251 = fadd fast float %1168, %1132
  %1252 = fsub fast float %1251, %1185
  %1253 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1254 = fsub fast float %1253, %1132
  %1255 = fmul fast float %1254, %1146
  %1256 = fadd fast float %1255, %1132
  br label %1310

; <label>:1257                                    ; preds = %1145
  %1258 = and i32 %1148, 134217728
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1294, label %1260

; <label>:1260                                    ; preds = %1257
  %1261 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %1262 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %1263 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %1264 = fadd fast float %1261, -5.000000e-01
  %1265 = fadd fast float %1262, -5.000000e-01
  %1266 = fadd fast float %1263, -5.000000e-01
  %1267 = fmul fast float %1264, %1146
  %1268 = fmul fast float %1265, %1146
  %1269 = fmul fast float %1266, %1146
  %1270 = fadd fast float %1267, 5.000000e-01
  %1271 = fadd fast float %1268, 5.000000e-01
  %1272 = fadd fast float %1269, 5.000000e-01
  %1273 = call float @dx.op.unary.f32(i32 24, float %1121)  ; Sqrt(value)
  %1274 = call float @dx.op.unary.f32(i32 24, float %1122)  ; Sqrt(value)
  %1275 = call float @dx.op.unary.f32(i32 24, float %1123)  ; Sqrt(value)
  %1276 = fmul fast float %1270, 2.000000e+00
  %1277 = fsub fast float 1.000000e+00, %1276
  %1278 = fmul fast float %1277, %1273
  %1279 = fadd fast float %1278, %1276
  %1280 = fmul fast float %1279, %1273
  %1281 = fmul fast float %1271, 2.000000e+00
  %1282 = fsub fast float 1.000000e+00, %1281
  %1283 = fmul fast float %1282, %1274
  %1284 = fadd fast float %1283, %1281
  %1285 = fmul fast float %1284, %1274
  %1286 = fmul fast float %1272, 2.000000e+00
  %1287 = fsub fast float 1.000000e+00, %1286
  %1288 = fmul fast float %1287, %1275
  %1289 = fadd fast float %1288, %1286
  %1290 = fmul fast float %1289, %1275
  %1291 = fmul fast float %1280, %1280
  %1292 = fmul fast float %1285, %1285
  %1293 = fmul fast float %1290, %1290
  br label %1310

; <label>:1294                                    ; preds = %1257
  %1295 = fmul fast float %274, %274
  %1296 = fmul fast float %278, %278
  %1297 = fmul fast float %282, %282
  %1298 = fadd fast float %1295, -1.000000e+00
  %1299 = fadd fast float %1296, -1.000000e+00
  %1300 = fadd fast float %1297, -1.000000e+00
  %1301 = fmul fast float %1146, %1298
  %1302 = fmul fast float %1146, %1299
  %1303 = fmul fast float %1146, %1300
  %1304 = fadd fast float %1301, 1.000000e+00
  %1305 = fadd fast float %1302, 1.000000e+00
  %1306 = fadd fast float %1303, 1.000000e+00
  %1307 = fmul fast float %1304, %1121
  %1308 = fmul fast float %1305, %1122
  %1309 = fmul fast float %1306, %1123
  br label %1310

; <label>:1310                                    ; preds = %1294, %1260, %1151, %1107
  %1311 = phi float [ %1256, %1151 ], [ %1132, %1260 ], [ %1132, %1294 ], [ 0x3FA23C0BE0000000, %1107 ]
  %1312 = phi float [ %1248, %1151 ], [ %1291, %1260 ], [ %1307, %1294 ], [ 1.000000e+00, %1107 ]
  %1313 = phi float [ %1249, %1151 ], [ %1292, %1260 ], [ %1308, %1294 ], [ 1.000000e+00, %1107 ]
  %1314 = phi float [ %1250, %1151 ], [ %1293, %1260 ], [ %1309, %1294 ], [ 1.000000e+00, %1107 ]
  %1315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.i32 %1315, 1
  %1317 = and i32 %1316, 1
  %1318 = icmp ne i32 %1317, 0
  %1319 = add i32 %33, 356
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = and i32 %1321, 32
  %1323 = icmp ne i32 %1322, 0
  %1324 = and i1 %1318, %1323
  %1325 = select i1 %1324, float 1.000000e+00, float %1312
  %1326 = select i1 %1324, float 0x3FD3333340000000, float %1313
  %1327 = select i1 %1324, float 0x3FD3333340000000, float %1314
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 32
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1404, label %1332

; <label>:1332                                    ; preds = %1310
  %1333 = add i32 %33, 108
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = add i32 %33, 380
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = add i32 %1338, 0
  %1340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1340, %dx.types.Handle %73, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = extractvalue %dx.types.ResRet.f32 %1341, 1
  %1344 = extractvalue %dx.types.ResRet.f32 %1341, 2
  %1345 = extractvalue %dx.types.ResRet.f32 %1341, 3
  %1346 = and i32 %1335, 255
  %1347 = uitofp i32 %1346 to float
  %1348 = lshr i32 %1335, 8
  %1349 = and i32 %1348, 255
  %1350 = uitofp i32 %1349 to float
  %1351 = lshr i32 %1335, 16
  %1352 = and i32 %1351, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = fmul fast float %1353, 0x3F70101000000000
  %1355 = fmul fast float %1342, %1347
  %1356 = fadd fast float %1355, %1350
  %1357 = fmul fast float %1356, 0x3F70101000000000
  %1358 = fadd fast float %1343, -5.000000e-01
  %1359 = fadd fast float %1345, -5.000000e-01
  %1360 = fmul fast float %1358, %1354
  %1361 = fmul fast float %1359, %1354
  %1362 = fadd fast float %1360, 5.000000e-01
  %1363 = fadd fast float %1361, 5.000000e-01
  %1364 = fmul fast float %1362, 2.000000e+00
  %1365 = fadd fast float %1364, -1.000000e+00
  %1366 = fmul fast float %1363, 2.000000e+00
  %1367 = fadd fast float %1366, -1.000000e+00
  %1368 = fadd fast float %1365, %1367
  %1369 = fmul fast float %1368, 5.000000e-01
  %1370 = fsub fast float %1365, %1367
  %1371 = fmul fast float %1370, 5.000000e-01
  %1372 = call float @dx.op.unary.f32(i32 6, float %1369)  ; FAbs(value)
  %1373 = fsub fast float 1.000000e+00, %1372
  %1374 = call float @dx.op.unary.f32(i32 6, float %1371)  ; FAbs(value)
  %1375 = fsub fast float %1373, %1374
  %1376 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1371, float %1375, float %1369, float %1371, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1377 = call float @dx.op.unary.f32(i32 25, float %1376)  ; Rsqrt(value)
  %1378 = fmul fast float %1369, %1377
  %1379 = fmul fast float %1371, %1377
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %1381, 67108864
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1400, label %1384

; <label>:1384                                    ; preds = %1332
  %1385 = add i32 %33, 296
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 65535
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = and i32 %1391, 65535
  %1393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1392)  ; LegacyF16ToF32(value)
  %1394 = lshr i32 %1387, 16
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = fsub fast float %1357, %1395
  %1397 = fmul fast float %1396, %1389
  %1398 = fadd fast float %1397, %1393
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  br label %1400

; <label>:1400                                    ; preds = %1384, %1332
  %1401 = phi float [ %1399, %1384 ], [ %1357, %1332 ]
  %1402 = call float @dx.op.dot2.f32(i32 54, float %1378, float %1379, float %936, float %937)  ; Dot2(ax,ay,bx,by)
  %1403 = call float @dx.op.dot2.f32(i32 54, float %1378, float %1379, float %938, float %939)  ; Dot2(ax,ay,bx,by)
  br label %1404

; <label>:1404                                    ; preds = %1400, %1310
  %1405 = phi float [ %1401, %1400 ], [ 0x3FD6666660000000, %1310 ]
  %1406 = phi float [ %1402, %1400 ], [ 0.000000e+00, %1310 ]
  %1407 = phi float [ %1403, %1400 ], [ 0.000000e+00, %1310 ]
  %1408 = phi float [ %1344, %1400 ], [ 1.000000e+00, %1310 ]
  %1409 = add i32 %33, 176
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = lshr i32 %1411, 22
  %1413 = shl nuw nsw i32 %1412, 5
  %1414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1413)  ; LegacyF16ToF32(value)
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = and i32 %1416, 64
  %1418 = icmp eq i32 %1417, 0
  br i1 %1418, label %1452, label %1419

; <label>:1419                                    ; preds = %1404
  %1420 = add i32 %33, 396
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = add i32 %1422, 0
  %1424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = and i32 %1426, 131072
  %1428 = icmp eq i32 %1427, 0
  %1429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1424, %dx.types.Handle %73, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.ResRet.f32 %1429, 2
  %1433 = fmul fast float %1430, %262
  %1434 = fmul fast float %1431, %265
  %1435 = fmul fast float %1432, %268
  br i1 %1428, label %1442, label %1436

; <label>:1436                                    ; preds = %1419
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = fmul fast float %1438, %1433
  %1440 = fmul fast float %1438, %1434
  %1441 = fmul fast float %1438, %1435
  br label %1442

; <label>:1442                                    ; preds = %1436, %1419
  %1443 = phi float [ %1439, %1436 ], [ %1433, %1419 ]
  %1444 = phi float [ %1440, %1436 ], [ %1434, %1419 ]
  %1445 = phi float [ %1441, %1436 ], [ %1435, %1419 ]
  %1446 = fmul fast float %1443, %1414
  %1447 = select i1 %203, float %1446, float %1443
  %1448 = call float @dx.op.dot3.f32(i32 55, float %1447, float %1444, float %1445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = select i1 %203, float 0.000000e+00, float %1443
  %1450 = select i1 %203, float %1448, float %1444
  %1451 = select i1 %203, float 0.000000e+00, float %1445
  br label %1452

; <label>:1452                                    ; preds = %1442, %1404
  %1453 = phi float [ %1449, %1442 ], [ 0.000000e+00, %1404 ]
  %1454 = phi float [ %1450, %1442 ], [ 0.000000e+00, %1404 ]
  %1455 = phi float [ %1451, %1442 ], [ 0.000000e+00, %1404 ]
  %1456 = add i32 %33, 112
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 255
  %1460 = uitofp i32 %1459 to float
  %1461 = lshr i32 %1458, 8
  %1462 = and i32 %1461, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = call float @dx.op.dot3.f32(i32 55, float %1325, float %1326, float %1327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1465 = fmul fast float %1463, %1464
  %1466 = fadd fast float %1465, %1460
  %1467 = fmul fast float %1466, 0x3F70101020000000
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  br i1 %924, label %1469, label %1477

; <label>:1469                                    ; preds = %1452
  %1470 = fsub fast float 1.000000e+00, %1105
  %1471 = fmul fast float %1470, %912
  %1472 = fmul fast float %1470, %913
  %1473 = fmul fast float %1470, %914
  %1474 = fmul fast float %1470, %915
  %1475 = fmul fast float %1470, %916
  %1476 = fmul fast float %1470, %917
  br label %1477

; <label>:1477                                    ; preds = %1469, %1452
  %1478 = phi float [ %1471, %1469 ], [ %912, %1452 ]
  %1479 = phi float [ %1472, %1469 ], [ %913, %1452 ]
  %1480 = phi float [ %1473, %1469 ], [ %914, %1452 ]
  %1481 = phi float [ %1474, %1469 ], [ %915, %1452 ]
  %1482 = phi float [ %1475, %1469 ], [ %916, %1452 ]
  %1483 = phi float [ %1476, %1469 ], [ %917, %1452 ]
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 3
  %1487 = icmp eq i32 %1486, 3
  br i1 %1487, label %1566, label %1488

; <label>:1488                                    ; preds = %1477
  %1489 = and i32 %1485, 16
  %1490 = icmp ne i32 %1489, 0
  %1491 = select i1 %1490, float %1105, float 0.000000e+00
  %1492 = icmp eq i32 %1486, 0
  br i1 %1492, label %1493, label %1521

; <label>:1493                                    ; preds = %1488
  %1494 = and i32 %1485, 64
  %1495 = icmp ne i32 %1494, 0
  %1496 = select i1 %1495, float %1105, float 0.000000e+00
  %1497 = fsub fast float %1325, %1478
  %1498 = fsub fast float %1326, %1479
  %1499 = fsub fast float %1327, %1480
  %1500 = fmul fast float %1491, %1497
  %1501 = fmul fast float %1491, %1498
  %1502 = fmul fast float %1491, %1499
  %1503 = fadd fast float %1500, %1478
  %1504 = fadd fast float %1501, %1479
  %1505 = fadd fast float %1502, %1480
  %1506 = fsub fast float %1311, %918
  %1507 = fmul fast float %1491, %1506
  %1508 = fadd fast float %1507, %918
  %1509 = fsub fast float %1453, %1481
  %1510 = fsub fast float %1454, %1482
  %1511 = fsub fast float %1455, %1483
  %1512 = fmul fast float %1496, %1509
  %1513 = fmul fast float %1496, %1510
  %1514 = fmul fast float %1496, %1511
  %1515 = fadd fast float %1512, %1481
  %1516 = fadd fast float %1513, %1482
  %1517 = fadd fast float %1514, %1483
  %1518 = fsub fast float %1468, %922
  %1519 = fmul fast float %1491, %1518
  %1520 = fadd fast float %1519, %922
  br label %1566

; <label>:1521                                    ; preds = %1488
  %1522 = icmp eq i32 %1486, 1
  br i1 %1522, label %1523, label %1536

; <label>:1523                                    ; preds = %1521
  %1524 = fadd fast float %1325, -1.000000e+00
  %1525 = fadd fast float %1326, -1.000000e+00
  %1526 = fadd fast float %1327, -1.000000e+00
  %1527 = fmul fast float %1491, %1524
  %1528 = fmul fast float %1491, %1525
  %1529 = fmul fast float %1491, %1526
  %1530 = fadd fast float %1527, 1.000000e+00
  %1531 = fadd fast float %1528, 1.000000e+00
  %1532 = fadd fast float %1529, 1.000000e+00
  %1533 = fmul fast float %1530, %1478
  %1534 = fmul fast float %1531, %1479
  %1535 = fmul fast float %1532, %1480
  br label %1566

; <label>:1536                                    ; preds = %1521
  %1537 = icmp eq i32 %1486, 2
  br i1 %1537, label %1538, label %1566

; <label>:1538                                    ; preds = %1536
  %1539 = call float @dx.op.unary.f32(i32 24, float %1325)  ; Sqrt(value)
  %1540 = call float @dx.op.unary.f32(i32 24, float %1326)  ; Sqrt(value)
  %1541 = call float @dx.op.unary.f32(i32 24, float %1327)  ; Sqrt(value)
  %1542 = fadd fast float %1539, -5.000000e-01
  %1543 = fadd fast float %1540, -5.000000e-01
  %1544 = fadd fast float %1541, -5.000000e-01
  %1545 = fmul fast float %1542, %1491
  %1546 = fmul fast float %1543, %1491
  %1547 = fmul fast float %1544, %1491
  %1548 = fadd fast float %1545, 5.000000e-01
  %1549 = fadd fast float %1546, 5.000000e-01
  %1550 = fadd fast float %1547, 5.000000e-01
  %1551 = fmul fast float %1548, 2.000000e+00
  %1552 = fsub fast float 1.000000e+00, %1551
  %1553 = fmul fast float %1552, %1478
  %1554 = fadd fast float %1553, %1551
  %1555 = fmul fast float %1554, %1478
  %1556 = fmul fast float %1549, 2.000000e+00
  %1557 = fsub fast float 1.000000e+00, %1556
  %1558 = fmul fast float %1557, %1479
  %1559 = fadd fast float %1558, %1556
  %1560 = fmul fast float %1559, %1479
  %1561 = fmul fast float %1550, 2.000000e+00
  %1562 = fsub fast float 1.000000e+00, %1561
  %1563 = fmul fast float %1562, %1480
  %1564 = fadd fast float %1563, %1561
  %1565 = fmul fast float %1564, %1480
  br label %1566

; <label>:1566                                    ; preds = %1538, %1536, %1523, %1493, %1477
  %1567 = phi float [ %1478, %1477 ], [ %1555, %1538 ], [ %1478, %1536 ], [ %1533, %1523 ], [ %1503, %1493 ]
  %1568 = phi float [ %1479, %1477 ], [ %1560, %1538 ], [ %1479, %1536 ], [ %1534, %1523 ], [ %1504, %1493 ]
  %1569 = phi float [ %1480, %1477 ], [ %1565, %1538 ], [ %1480, %1536 ], [ %1535, %1523 ], [ %1505, %1493 ]
  %1570 = phi float [ %1481, %1477 ], [ %1481, %1538 ], [ %1481, %1536 ], [ %1481, %1523 ], [ %1515, %1493 ]
  %1571 = phi float [ %1482, %1477 ], [ %1482, %1538 ], [ %1482, %1536 ], [ %1482, %1523 ], [ %1516, %1493 ]
  %1572 = phi float [ %1483, %1477 ], [ %1483, %1538 ], [ %1483, %1536 ], [ %1483, %1523 ], [ %1517, %1493 ]
  %1573 = phi float [ %918, %1477 ], [ %918, %1538 ], [ %918, %1536 ], [ %918, %1523 ], [ %1508, %1493 ]
  %1574 = phi float [ %922, %1477 ], [ %922, %1538 ], [ %922, %1536 ], [ %922, %1523 ], [ %1520, %1493 ]
  %1575 = and i32 %1485, 12
  %1576 = icmp eq i32 %1575, 12
  br i1 %1576, label %1649, label %1577

; <label>:1577                                    ; preds = %1566
  %1578 = and i32 %1485, 2097184
  %1579 = icmp eq i32 %1578, 2097184
  %1580 = select i1 %1579, float %1105, float 0.000000e+00
  %1581 = and i32 %1485, 4194336
  %1582 = icmp eq i32 %1581, 4194336
  %1583 = select i1 %1582, float %1105, float 0.000000e+00
  %1584 = and i32 %1485, 8388640
  %1585 = icmp eq i32 %1584, 8388640
  %1586 = select i1 %1585, float %1105, float 0.000000e+00
  %1587 = icmp eq i32 %1575, 0
  br i1 %1587, label %1588, label %1601

; <label>:1588                                    ; preds = %1577
  %1589 = fsub fast float %1406, %910
  %1590 = fsub fast float %1407, %911
  %1591 = fmul fast float %1580, %1589
  %1592 = fmul fast float %1580, %1590
  %1593 = fadd fast float %1591, %910
  %1594 = fadd fast float %1592, %911
  %1595 = fsub fast float %1408, %921
  %1596 = fmul fast float %1583, %1595
  %1597 = fadd fast float %1596, %921
  %1598 = fsub fast float %1405, %920
  %1599 = fmul fast float %1586, %1598
  %1600 = fadd fast float %1599, %920
  br label %1649

; <label>:1601                                    ; preds = %1577
  %1602 = icmp eq i32 %1575, 4
  br i1 %1602, label %1603, label %1635

; <label>:1603                                    ; preds = %1601
  %1604 = fmul fast float %1580, %1406
  %1605 = fmul fast float %1580, %1407
  %1606 = fadd fast float %1604, %910
  %1607 = fadd fast float %1605, %911
  %1608 = call float @dx.op.binary.f32(i32 36, float %921, float %1408)  ; FMin(a,b)
  %1609 = fsub fast float %1608, %921
  %1610 = fmul fast float %1609, %1583
  %1611 = fadd fast float %1610, %921
  %1612 = fadd fast float %1405, %920
  %1613 = fmul fast float %1612, 0x3FF337FAE0000000
  %1614 = fmul fast float %920, %920
  %1615 = fmul fast float %1405, %1405
  %1616 = fadd fast float %1615, %1614
  %1617 = fmul fast float %1616, 0x3FE5152B00000000
  %1618 = fmul fast float %920, 0xBFCC1F85E0000000
  %1619 = fmul fast float %1618, %1405
  %1620 = fadd fast float %1619, 0xBFE1363700000000
  %1621 = fadd fast float %1620, %1613
  %1622 = fsub fast float %1621, %1617
  %1623 = fmul fast float %1612, 0x3FBA6F0D00000000
  %1624 = fmul fast float %1616, 0x3FD0432880000000
  %1625 = fmul fast float %920, 0xBFEF110800000000
  %1626 = fmul fast float %1625, %1405
  %1627 = fadd fast float %1626, 1.000000e+00
  %1628 = fsub fast float %1627, %1623
  %1629 = fadd fast float %1628, %1624
  %1630 = fdiv fast float %1622, %1629
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = fsub fast float %1631, %920
  %1633 = fmul fast float %1632, %1586
  %1634 = fadd fast float %1633, %920
  br label %1649

; <label>:1635                                    ; preds = %1601
  %1636 = icmp eq i32 %1575, 8
  br i1 %1636, label %1637, label %1649

; <label>:1637                                    ; preds = %1635
  %1638 = fmul fast float %1580, %1406
  %1639 = fmul fast float %1580, %1407
  %1640 = fadd fast float %1638, %910
  %1641 = fadd fast float %1639, %911
  %1642 = call float @dx.op.binary.f32(i32 36, float %921, float %1408)  ; FMin(a,b)
  %1643 = fsub fast float %1642, %921
  %1644 = fmul fast float %1643, %1583
  %1645 = fadd fast float %1644, %921
  %1646 = fsub fast float %1405, %920
  %1647 = fmul fast float %1586, %1646
  %1648 = fadd fast float %1647, %920
  br label %1649

; <label>:1649                                    ; preds = %1637, %1635, %1603, %1588, %1566, %1104, %923, %909
  %1650 = phi float [ %910, %1566 ], [ %910, %1104 ], [ %910, %909 ], [ %1640, %1637 ], [ %910, %1635 ], [ %1606, %1603 ], [ %1593, %1588 ], [ %910, %923 ]
  %1651 = phi float [ %911, %1566 ], [ %911, %1104 ], [ %911, %909 ], [ %1641, %1637 ], [ %911, %1635 ], [ %1607, %1603 ], [ %1594, %1588 ], [ %911, %923 ]
  %1652 = phi float [ %1567, %1566 ], [ %912, %1104 ], [ %912, %909 ], [ %1567, %1637 ], [ %1567, %1635 ], [ %1567, %1603 ], [ %1567, %1588 ], [ %912, %923 ]
  %1653 = phi float [ %1568, %1566 ], [ %913, %1104 ], [ %913, %909 ], [ %1568, %1637 ], [ %1568, %1635 ], [ %1568, %1603 ], [ %1568, %1588 ], [ %913, %923 ]
  %1654 = phi float [ %1569, %1566 ], [ %914, %1104 ], [ %914, %909 ], [ %1569, %1637 ], [ %1569, %1635 ], [ %1569, %1603 ], [ %1569, %1588 ], [ %914, %923 ]
  %1655 = phi float [ %1570, %1566 ], [ %915, %1104 ], [ %915, %909 ], [ %1570, %1637 ], [ %1570, %1635 ], [ %1570, %1603 ], [ %1570, %1588 ], [ %915, %923 ]
  %1656 = phi float [ %1571, %1566 ], [ %916, %1104 ], [ %916, %909 ], [ %1571, %1637 ], [ %1571, %1635 ], [ %1571, %1603 ], [ %1571, %1588 ], [ %916, %923 ]
  %1657 = phi float [ %1572, %1566 ], [ %917, %1104 ], [ %917, %909 ], [ %1572, %1637 ], [ %1572, %1635 ], [ %1572, %1603 ], [ %1572, %1588 ], [ %917, %923 ]
  %1658 = phi float [ %1573, %1566 ], [ %918, %1104 ], [ %918, %909 ], [ %1573, %1637 ], [ %1573, %1635 ], [ %1573, %1603 ], [ %1573, %1588 ], [ %918, %923 ]
  %1659 = phi float [ %920, %1566 ], [ %920, %1104 ], [ %920, %909 ], [ %1648, %1637 ], [ %920, %1635 ], [ %1634, %1603 ], [ %1600, %1588 ], [ %920, %923 ]
  %1660 = phi float [ %921, %1566 ], [ %921, %1104 ], [ %921, %909 ], [ %1645, %1637 ], [ %921, %1635 ], [ %1611, %1603 ], [ %1597, %1588 ], [ %921, %923 ]
  %1661 = phi float [ %1574, %1566 ], [ %922, %1104 ], [ %922, %909 ], [ %1574, %1637 ], [ %1574, %1635 ], [ %1574, %1603 ], [ %1574, %1588 ], [ %922, %923 ]
  br i1 %389, label %2388, label %1662

; <label>:1662                                    ; preds = %1649
  %1663 = icmp ult i32 %442, 3
  %1664 = add i32 %33, 56
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = add i32 %33, 60
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = or i32 %1669, %1666
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %2388, label %1672

; <label>:1672                                    ; preds = %1662
  %1673 = and i32 %1666, 262144
  %1674 = icmp ne i32 %1673, 0
  %1675 = select i1 %1674, float %38, float 1.000000e+00
  %1676 = select i1 %1674, float %39, float 0.000000e+00
  %1677 = select i1 %1674, float %40, float 0.000000e+00
  %1678 = select i1 %1674, float %41, float 1.000000e+00
  %1679 = select i1 %1674, float %42, float %65
  %1680 = select i1 %1674, float %43, float %66
  %1681 = add i32 %33, 316
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = lshr i32 %1683, 16
  %1685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1684)  ; LegacyF16ToF32(value)
  %1686 = fmul fast float %1685, 0x3F50624DE0000000
  %1687 = add i32 %33, 120
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = lshr i32 %1689, 16
  %1691 = and i32 %1690, 255
  %1692 = lshr i32 %1689, 24
  %1693 = add i32 %33, 324
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = and i32 %1695, 65535
  %1697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1696)  ; LegacyF16ToF32(value)
  %1698 = lshr i32 %1695, 16
  %1699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1698)  ; LegacyF16ToF32(value)
  %1700 = add i32 %33, 64
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = lshr i32 %1702, 22
  %1704 = shl nuw nsw i32 %1703, 5
  %1705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1704)  ; LegacyF16ToF32(value)
  %1706 = shl i32 %1702, 4
  %1707 = and i32 %1706, 32752
  %1708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1707)  ; LegacyF16ToF32(value)
  %1709 = lshr i32 %1702, 7
  %1710 = and i32 %1709, 32752
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 3
  %1714 = fmul fast float %1713, 1.000000e+03
  %1715 = fmul fast float %339, %1714
  %1716 = call float @dx.op.unary.f32(i32 22, float %1715)  ; Frc(value)
  %1717 = fadd fast float %1716, %329
  %1718 = fmul fast float %340, %1714
  %1719 = call float @dx.op.unary.f32(i32 22, float %1718)  ; Frc(value)
  %1720 = fadd fast float %1719, %331
  %1721 = fmul fast float %1686, %1714
  %1722 = call float @dx.op.unary.f32(i32 22, float %1721)  ; Frc(value)
  %1723 = fmul fast float %1722, 0x401921FB60000000
  %1724 = fadd fast float %1723, %1705
  %1725 = call float @dx.op.unary.f32(i32 13, float %1724)  ; Sin(value)
  %1726 = call float @dx.op.unary.f32(i32 12, float %1724)  ; Cos(value)
  %1727 = fsub fast float -0.000000e+00, %1725
  %1728 = fadd fast float %1679, -5.000000e-01
  %1729 = fadd fast float %1680, -5.000000e-01
  %1730 = fmul fast float %1697, %1728
  %1731 = fmul fast float %1699, %1729
  %1732 = fadd fast float %1730, 5.000000e-01
  %1733 = fadd fast float %1731, 5.000000e-01
  %1734 = fmul fast float %1708, %1732
  %1735 = fmul fast float %1711, %1733
  %1736 = fmul fast float %1726, %1734
  %1737 = call float @dx.op.tertiary.f32(i32 46, float %1727, float %1735, float %1736)  ; FMad(a,b,c)
  %1738 = fmul fast float %1725, %1734
  %1739 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1735, float %1738)  ; FMad(a,b,c)
  %1740 = fadd fast float %1717, %1737
  %1741 = fadd fast float %1720, %1739
  %1742 = icmp ugt i32 %1691, 1
  %1743 = icmp ugt i32 %1689, 33554431
  %1744 = or i1 %1743, %1742
  br i1 %1744, label %1745, label %1770

; <label>:1745                                    ; preds = %1672
  %1746 = add i32 %33, 260
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = lshr i32 %1748, 16
  %1750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1749)  ; LegacyF16ToF32(value)
  %1751 = fmul fast float %1713, %1750
  %1752 = call float @dx.op.unary.f32(i32 22, float %1751)  ; Frc(value)
  %1753 = mul nuw nsw i32 %1691, %1692
  %1754 = uitofp i32 %1753 to float
  %1755 = fmul fast float %1752, %1754
  %1756 = call float @dx.op.unary.f32(i32 27, float %1755)  ; Round_ni(value)
  %1757 = fptoui float %1756 to i32
  %1758 = urem i32 %1757, %1691
  %1759 = udiv i32 %1757, %1692
  %1760 = call float @dx.op.unary.f32(i32 22, float %1740)  ; Frc(value)
  %1761 = call float @dx.op.unary.f32(i32 22, float %1741)  ; Frc(value)
  %1762 = uitofp i32 %1758 to float
  %1763 = uitofp i32 %1759 to float
  %1764 = fadd fast float %1760, %1762
  %1765 = fadd fast float %1761, %1763
  %1766 = uitofp i32 %1691 to float
  %1767 = uitofp i32 %1692 to float
  %1768 = fdiv fast float %1764, %1766
  %1769 = fdiv fast float %1765, %1767
  br label %1770

; <label>:1770                                    ; preds = %1745, %1672
  %1771 = phi float [ %1768, %1745 ], [ %1740, %1672 ]
  %1772 = phi float [ %1769, %1745 ], [ %1741, %1672 ]
  %1773 = and i32 %1666, 256
  %1774 = icmp eq i32 %1773, 0
  br i1 %1774, label %1821, label %1775

; <label>:1775                                    ; preds = %1770
  %1776 = add i32 %33, 432
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = add i32 %1778, 0
  %1780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1780, %dx.types.Handle %74, float %1771, float %1772, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1782 = extractvalue %dx.types.ResRet.f32 %1781, 0
  %1783 = add i32 %33, 132
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = shl i32 %1785, 4
  %1787 = and i32 %1786, 32752
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = lshr i32 %1785, 7
  %1790 = and i32 %1789, 32752
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = fsub fast float 1.000000e+00, %438
  %1793 = call float @dx.op.binary.f32(i32 35, float %1792, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1794 = bitcast float %438 to i32
  %1795 = sitofp i32 %1794 to float
  %1796 = fadd fast float %1795, 0xC1CFBF8940000000
  %1797 = fmul fast float %1791, %1796
  %1798 = fadd fast float %1797, 0x41CFBF8940000000
  %1799 = fptosi float %1798 to i32
  %1800 = bitcast i32 %1799 to float
  %1801 = bitcast float %1793 to i32
  %1802 = sitofp i32 %1801 to float
  %1803 = fadd fast float %1802, 0xC1CFBF8940000000
  %1804 = fmul fast float %1803, %1791
  %1805 = fadd fast float %1804, 0x41CFBF8940000000
  %1806 = fptosi float %1805 to i32
  %1807 = bitcast i32 %1806 to float
  %1808 = fmul fast float %1800, %1788
  %1809 = fmul fast float %1807, %1788
  %1810 = fsub fast float %1793, %1808
  %1811 = fadd fast float %1809, %1793
  %1812 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1813 = call float @dx.op.unary.f32(i32 7, float %1811)  ; Saturate(value)
  %1814 = fsub fast float %1782, %1812
  %1815 = fsub fast float %1813, %1812
  %1816 = bitcast float %1815 to i32
  %1817 = sub nsw i32 2129859010, %1816
  %1818 = bitcast i32 %1817 to float
  %1819 = fmul fast float %1818, %1814
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  br label %1821

; <label>:1821                                    ; preds = %1775, %1770
  %1822 = phi float [ %1820, %1775 ], [ %438, %1770 ]
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 128
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %1843, label %1827

; <label>:1827                                    ; preds = %1821
  %1828 = add i32 %33, 416
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = add i32 %1830, 0
  %1832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1832, %dx.types.Handle %74, float %1771, float %1772, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 524288
  %1838 = icmp ne i32 %1837, 0
  %1839 = fcmp fast ogt float %1834, 0x3FE0101020000000
  %1840 = select i1 %1839, float 1.000000e+00, float 0.000000e+00
  %1841 = select i1 %1838, float %1840, float %1834
  %1842 = fmul fast float %1841, %1822
  br label %1843

; <label>:1843                                    ; preds = %1827, %1821
  %1844 = phi float [ %1842, %1827 ], [ %1822, %1821 ]
  %1845 = fcmp fast ult float %1844, 0x3F70101020000000
  br i1 %1845, label %2388, label %1846

; <label>:1846                                    ; preds = %1843
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = and i32 %1848, 16
  %1850 = icmp eq i32 %1849, 0
  br i1 %1850, label %2049, label %1851

; <label>:1851                                    ; preds = %1846
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = add i32 %33, 368
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = add i32 %1856, 0
  %1858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1858, %dx.types.Handle %73, float %1771, float %1772, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1860 = extractvalue %dx.types.ResRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.ResRet.f32 %1859, 1
  %1862 = extractvalue %dx.types.ResRet.f32 %1859, 2
  %1863 = extractvalue %dx.types.ResRet.f32 %1859, 3
  %1864 = and i32 %1853, 255
  %1865 = uitofp i32 %1864 to float
  %1866 = lshr i32 %1853, 8
  %1867 = and i32 %1866, 255
  %1868 = uitofp i32 %1867 to float
  %1869 = fmul fast float %1863, %1865
  %1870 = fadd fast float %1869, %1868
  %1871 = fmul fast float %1870, 0x3F70101000000000
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 512
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1884, label %1876

; <label>:1876                                    ; preds = %1851
  %1877 = add i32 %33, 448
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = add i32 %1879, 0
  %1881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1882 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1881, %dx.types.Handle %74, float %1771, float %1772, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  br label %1884

; <label>:1884                                    ; preds = %1876, %1851
  %1885 = phi float [ %1883, %1876 ], [ 1.000000e+00, %1851 ]
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = and i32 %1887, 33554432
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %1996, label %1890

; <label>:1890                                    ; preds = %1884
  %1891 = add i32 %33, 256
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = and i32 %1893, 65535
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = lshr i32 %1893, 16
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = add i32 %33, 260
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = and i32 %1900, 65535
  %1902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1901)  ; LegacyF16ToF32(value)
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = lshr i32 %1904, 24
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F70101020000000
  %1908 = and i32 %1904, 255
  %1909 = uitofp i32 %1908 to float
  %1910 = fmul fast float %1909, 0x3F70101020000000
  %1911 = lshr i32 %1904, 8
  %1912 = and i32 %1911, 255
  %1913 = uitofp i32 %1912 to float
  %1914 = fmul fast float %1913, 0x3F70101020000000
  %1915 = lshr i32 %1904, 16
  %1916 = and i32 %1915, 255
  %1917 = uitofp i32 %1916 to float
  %1918 = fmul fast float %1917, 0x3F70101020000000
  %1919 = add i32 %33, 252
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = lshr i32 %1921, 24
  %1923 = uitofp i32 %1922 to float
  %1924 = fmul fast float %1923, 0x3F70101020000000
  %1925 = and i32 %1921, 255
  %1926 = uitofp i32 %1925 to float
  %1927 = fmul fast float %1926, 0x3F70101020000000
  %1928 = lshr i32 %1921, 8
  %1929 = and i32 %1928, 255
  %1930 = uitofp i32 %1929 to float
  %1931 = fmul fast float %1930, 0x3F70101020000000
  %1932 = lshr i32 %1921, 16
  %1933 = and i32 %1932, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = fmul fast float %1934, 0x3F70101020000000
  %1936 = bitcast float %1860 to i32
  %1937 = ashr i32 %1936, 1
  %1938 = sub nsw i32 1597463174, %1937
  %1939 = bitcast i32 %1938 to float
  %1940 = fmul fast float %1860, 5.000000e-01
  %1941 = fmul fast float %1939, %1939
  %1942 = fmul fast float %1941, %1940
  %1943 = fsub fast float 1.500000e+00, %1942
  %1944 = fmul fast float %1939, %1860
  %1945 = fmul fast float %1944, %1943
  %1946 = bitcast float %1861 to i32
  %1947 = ashr i32 %1946, 1
  %1948 = sub nsw i32 1597463174, %1947
  %1949 = bitcast i32 %1948 to float
  %1950 = fmul fast float %1861, 5.000000e-01
  %1951 = fmul fast float %1949, %1949
  %1952 = fmul fast float %1951, %1950
  %1953 = fsub fast float 1.500000e+00, %1952
  %1954 = fmul fast float %1949, %1861
  %1955 = fmul fast float %1954, %1953
  %1956 = bitcast float %1862 to i32
  %1957 = ashr i32 %1956, 1
  %1958 = sub nsw i32 1597463174, %1957
  %1959 = bitcast i32 %1958 to float
  %1960 = fmul fast float %1862, 5.000000e-01
  %1961 = fmul fast float %1959, %1959
  %1962 = fmul fast float %1961, %1960
  %1963 = fsub fast float 1.500000e+00, %1962
  %1964 = fmul fast float %1959, %1862
  %1965 = fmul fast float %1964, %1963
  %1966 = fsub fast float %1945, %1927
  %1967 = fsub fast float %1955, %1931
  %1968 = fsub fast float %1965, %1935
  %1969 = fmul fast float %1966, %1895
  %1970 = fmul fast float %1967, %1897
  %1971 = fmul fast float %1968, %1902
  %1972 = fadd fast float %1969, %1910
  %1973 = fadd fast float %1970, %1914
  %1974 = fadd fast float %1971, %1918
  %1975 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1976 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1977 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1978 = fmul fast float %1975, %1975
  %1979 = fmul fast float %1976, %1976
  %1980 = fmul fast float %1977, %1977
  %1981 = fsub fast float %1978, %1860
  %1982 = fsub fast float %1979, %1861
  %1983 = fsub fast float %1980, %1862
  %1984 = fmul fast float %1981, %1885
  %1985 = fmul fast float %1982, %1885
  %1986 = fmul fast float %1983, %1885
  %1987 = fadd fast float %1984, %1860
  %1988 = fadd fast float %1985, %1861
  %1989 = fadd fast float %1986, %1862
  %1990 = fadd fast float %1907, %1871
  %1991 = fsub fast float %1990, %1924
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fsub fast float %1992, %1871
  %1994 = fmul fast float %1993, %1885
  %1995 = fadd fast float %1994, %1871
  br label %2049

; <label>:1996                                    ; preds = %1884
  %1997 = and i32 %1887, 134217728
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2033, label %1999

; <label>:1999                                    ; preds = %1996
  %2000 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %2001 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %2002 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %2003 = fadd fast float %2000, -5.000000e-01
  %2004 = fadd fast float %2001, -5.000000e-01
  %2005 = fadd fast float %2002, -5.000000e-01
  %2006 = fmul fast float %2003, %1885
  %2007 = fmul fast float %2004, %1885
  %2008 = fmul fast float %2005, %1885
  %2009 = fadd fast float %2006, 5.000000e-01
  %2010 = fadd fast float %2007, 5.000000e-01
  %2011 = fadd fast float %2008, 5.000000e-01
  %2012 = call float @dx.op.unary.f32(i32 24, float %1860)  ; Sqrt(value)
  %2013 = call float @dx.op.unary.f32(i32 24, float %1861)  ; Sqrt(value)
  %2014 = call float @dx.op.unary.f32(i32 24, float %1862)  ; Sqrt(value)
  %2015 = fmul fast float %2009, 2.000000e+00
  %2016 = fsub fast float 1.000000e+00, %2015
  %2017 = fmul fast float %2016, %2012
  %2018 = fadd fast float %2017, %2015
  %2019 = fmul fast float %2018, %2012
  %2020 = fmul fast float %2010, 2.000000e+00
  %2021 = fsub fast float 1.000000e+00, %2020
  %2022 = fmul fast float %2021, %2013
  %2023 = fadd fast float %2022, %2020
  %2024 = fmul fast float %2023, %2013
  %2025 = fmul fast float %2011, 2.000000e+00
  %2026 = fsub fast float 1.000000e+00, %2025
  %2027 = fmul fast float %2026, %2014
  %2028 = fadd fast float %2027, %2025
  %2029 = fmul fast float %2028, %2014
  %2030 = fmul fast float %2019, %2019
  %2031 = fmul fast float %2024, %2024
  %2032 = fmul fast float %2029, %2029
  br label %2049

; <label>:2033                                    ; preds = %1996
  %2034 = fmul fast float %316, %316
  %2035 = fmul fast float %320, %320
  %2036 = fmul fast float %324, %324
  %2037 = fadd fast float %2034, -1.000000e+00
  %2038 = fadd fast float %2035, -1.000000e+00
  %2039 = fadd fast float %2036, -1.000000e+00
  %2040 = fmul fast float %1885, %2037
  %2041 = fmul fast float %1885, %2038
  %2042 = fmul fast float %1885, %2039
  %2043 = fadd fast float %2040, 1.000000e+00
  %2044 = fadd fast float %2041, 1.000000e+00
  %2045 = fadd fast float %2042, 1.000000e+00
  %2046 = fmul fast float %2043, %1860
  %2047 = fmul fast float %2044, %1861
  %2048 = fmul fast float %2045, %1862
  br label %2049

; <label>:2049                                    ; preds = %2033, %1999, %1890, %1846
  %2050 = phi float [ %1995, %1890 ], [ %1871, %1999 ], [ %1871, %2033 ], [ 0x3FA23C0BE0000000, %1846 ]
  %2051 = phi float [ %1987, %1890 ], [ %2030, %1999 ], [ %2046, %2033 ], [ 1.000000e+00, %1846 ]
  %2052 = phi float [ %1988, %1890 ], [ %2031, %1999 ], [ %2047, %2033 ], [ 1.000000e+00, %1846 ]
  %2053 = phi float [ %1989, %1890 ], [ %2032, %1999 ], [ %2048, %2033 ], [ 1.000000e+00, %1846 ]
  %2054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.i32 %2054, 1
  %2056 = and i32 %2055, 1
  %2057 = icmp ne i32 %2056, 0
  %2058 = add i32 %33, 356
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = and i32 %2060, 32
  %2062 = icmp ne i32 %2061, 0
  %2063 = and i1 %2057, %2062
  %2064 = select i1 %2063, float 1.000000e+00, float %2051
  %2065 = select i1 %2063, float 0x3FD3333340000000, float %2052
  %2066 = select i1 %2063, float 0x3FD3333340000000, float %2053
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = and i32 %2068, 32
  %2070 = icmp eq i32 %2069, 0
  br i1 %2070, label %2143, label %2071

; <label>:2071                                    ; preds = %2049
  %2072 = add i32 %33, 124
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = add i32 %33, 384
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = add i32 %2077, 0
  %2079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2079, %dx.types.Handle %73, float %1771, float %1772, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.ResRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.ResRet.f32 %2080, 2
  %2084 = extractvalue %dx.types.ResRet.f32 %2080, 3
  %2085 = and i32 %2074, 255
  %2086 = uitofp i32 %2085 to float
  %2087 = lshr i32 %2074, 8
  %2088 = and i32 %2087, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = lshr i32 %2074, 16
  %2091 = and i32 %2090, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = fmul fast float %2092, 0x3F70101000000000
  %2094 = fmul fast float %2081, %2086
  %2095 = fadd fast float %2094, %2089
  %2096 = fmul fast float %2095, 0x3F70101000000000
  %2097 = fadd fast float %2082, -5.000000e-01
  %2098 = fadd fast float %2084, -5.000000e-01
  %2099 = fmul fast float %2097, %2093
  %2100 = fmul fast float %2098, %2093
  %2101 = fadd fast float %2099, 5.000000e-01
  %2102 = fadd fast float %2100, 5.000000e-01
  %2103 = fmul fast float %2101, 2.000000e+00
  %2104 = fadd fast float %2103, -1.000000e+00
  %2105 = fmul fast float %2102, 2.000000e+00
  %2106 = fadd fast float %2105, -1.000000e+00
  %2107 = fadd fast float %2104, %2106
  %2108 = fmul fast float %2107, 5.000000e-01
  %2109 = fsub fast float %2104, %2106
  %2110 = fmul fast float %2109, 5.000000e-01
  %2111 = call float @dx.op.unary.f32(i32 6, float %2108)  ; FAbs(value)
  %2112 = fsub fast float 1.000000e+00, %2111
  %2113 = call float @dx.op.unary.f32(i32 6, float %2110)  ; FAbs(value)
  %2114 = fsub fast float %2112, %2113
  %2115 = call float @dx.op.dot3.f32(i32 55, float %2108, float %2110, float %2114, float %2108, float %2110, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2116 = call float @dx.op.unary.f32(i32 25, float %2115)  ; Rsqrt(value)
  %2117 = fmul fast float %2108, %2116
  %2118 = fmul fast float %2110, %2116
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = and i32 %2120, 67108864
  %2122 = icmp eq i32 %2121, 0
  br i1 %2122, label %2139, label %2123

; <label>:2123                                    ; preds = %2071
  %2124 = add i32 %33, 312
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = and i32 %2126, 65535
  %2128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2127)  ; LegacyF16ToF32(value)
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = and i32 %2130, 65535
  %2132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2131)  ; LegacyF16ToF32(value)
  %2133 = lshr i32 %2126, 16
  %2134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2133)  ; LegacyF16ToF32(value)
  %2135 = fsub fast float %2096, %2134
  %2136 = fmul fast float %2135, %2128
  %2137 = fadd fast float %2136, %2132
  %2138 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  br label %2139

; <label>:2139                                    ; preds = %2123, %2071
  %2140 = phi float [ %2138, %2123 ], [ %2096, %2071 ]
  %2141 = call float @dx.op.dot2.f32(i32 54, float %2117, float %2118, float %1675, float %1676)  ; Dot2(ax,ay,bx,by)
  %2142 = call float @dx.op.dot2.f32(i32 54, float %2117, float %2118, float %1677, float %1678)  ; Dot2(ax,ay,bx,by)
  br label %2143

; <label>:2143                                    ; preds = %2139, %2049
  %2144 = phi float [ %2140, %2139 ], [ 0x3FD6666660000000, %2049 ]
  %2145 = phi float [ %2141, %2139 ], [ 0.000000e+00, %2049 ]
  %2146 = phi float [ %2142, %2139 ], [ 0.000000e+00, %2049 ]
  %2147 = phi float [ %2083, %2139 ], [ 1.000000e+00, %2049 ]
  %2148 = add i32 %33, 192
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = lshr i32 %2150, 22
  %2152 = shl nuw nsw i32 %2151, 5
  %2153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2152)  ; LegacyF16ToF32(value)
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = and i32 %2155, 64
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %2191, label %2158

; <label>:2158                                    ; preds = %2143
  %2159 = add i32 %33, 400
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = add i32 %2161, 0
  %2163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = and i32 %2165, 131072
  %2167 = icmp eq i32 %2166, 0
  %2168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2163, %dx.types.Handle %73, float %1771, float %1772, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.ResRet.f32 %2168, 2
  %2172 = fmul fast float %2169, %304
  %2173 = fmul fast float %2170, %307
  %2174 = fmul fast float %2171, %310
  br i1 %2167, label %2181, label %2175

; <label>:2175                                    ; preds = %2158
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = fmul fast float %2177, %2172
  %2179 = fmul fast float %2177, %2173
  %2180 = fmul fast float %2177, %2174
  br label %2181

; <label>:2181                                    ; preds = %2175, %2158
  %2182 = phi float [ %2178, %2175 ], [ %2172, %2158 ]
  %2183 = phi float [ %2179, %2175 ], [ %2173, %2158 ]
  %2184 = phi float [ %2180, %2175 ], [ %2174, %2158 ]
  %2185 = fmul fast float %2182, %2153
  %2186 = select i1 %203, float %2185, float %2182
  %2187 = call float @dx.op.dot3.f32(i32 55, float %2186, float %2183, float %2184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2188 = select i1 %203, float 0.000000e+00, float %2182
  %2189 = select i1 %203, float %2187, float %2183
  %2190 = select i1 %203, float 0.000000e+00, float %2184
  br label %2191

; <label>:2191                                    ; preds = %2181, %2143
  %2192 = phi float [ %2188, %2181 ], [ 0.000000e+00, %2143 ]
  %2193 = phi float [ %2189, %2181 ], [ 0.000000e+00, %2143 ]
  %2194 = phi float [ %2190, %2181 ], [ 0.000000e+00, %2143 ]
  %2195 = add i32 %33, 128
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = lshr i32 %2197, 8
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = call float @dx.op.dot3.f32(i32 55, float %2064, float %2065, float %2066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2204 = fmul fast float %2202, %2203
  %2205 = fadd fast float %2204, %2199
  %2206 = fmul fast float %2205, 0x3F70101020000000
  %2207 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  br i1 %1663, label %2208, label %2216

; <label>:2208                                    ; preds = %2191
  %2209 = fsub fast float 1.000000e+00, %1844
  %2210 = fmul fast float %2209, %1652
  %2211 = fmul fast float %2209, %1653
  %2212 = fmul fast float %2209, %1654
  %2213 = fmul fast float %2209, %1655
  %2214 = fmul fast float %2209, %1656
  %2215 = fmul fast float %2209, %1657
  br label %2216

; <label>:2216                                    ; preds = %2208, %2191
  %2217 = phi float [ %2210, %2208 ], [ %1652, %2191 ]
  %2218 = phi float [ %2211, %2208 ], [ %1653, %2191 ]
  %2219 = phi float [ %2212, %2208 ], [ %1654, %2191 ]
  %2220 = phi float [ %2213, %2208 ], [ %1655, %2191 ]
  %2221 = phi float [ %2214, %2208 ], [ %1656, %2191 ]
  %2222 = phi float [ %2215, %2208 ], [ %1657, %2191 ]
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 3
  %2226 = icmp eq i32 %2225, 3
  br i1 %2226, label %2305, label %2227

; <label>:2227                                    ; preds = %2216
  %2228 = and i32 %2224, 16
  %2229 = icmp ne i32 %2228, 0
  %2230 = select i1 %2229, float %1844, float 0.000000e+00
  %2231 = icmp eq i32 %2225, 0
  br i1 %2231, label %2232, label %2260

; <label>:2232                                    ; preds = %2227
  %2233 = and i32 %2224, 64
  %2234 = icmp ne i32 %2233, 0
  %2235 = select i1 %2234, float %1844, float 0.000000e+00
  %2236 = fsub fast float %2064, %2217
  %2237 = fsub fast float %2065, %2218
  %2238 = fsub fast float %2066, %2219
  %2239 = fmul fast float %2230, %2236
  %2240 = fmul fast float %2230, %2237
  %2241 = fmul fast float %2230, %2238
  %2242 = fadd fast float %2239, %2217
  %2243 = fadd fast float %2240, %2218
  %2244 = fadd fast float %2241, %2219
  %2245 = fsub fast float %2050, %1658
  %2246 = fmul fast float %2230, %2245
  %2247 = fadd fast float %2246, %1658
  %2248 = fsub fast float %2192, %2220
  %2249 = fsub fast float %2193, %2221
  %2250 = fsub fast float %2194, %2222
  %2251 = fmul fast float %2235, %2248
  %2252 = fmul fast float %2235, %2249
  %2253 = fmul fast float %2235, %2250
  %2254 = fadd fast float %2251, %2220
  %2255 = fadd fast float %2252, %2221
  %2256 = fadd fast float %2253, %2222
  %2257 = fsub fast float %2207, %1661
  %2258 = fmul fast float %2230, %2257
  %2259 = fadd fast float %2258, %1661
  br label %2305

; <label>:2260                                    ; preds = %2227
  %2261 = icmp eq i32 %2225, 1
  br i1 %2261, label %2262, label %2275

; <label>:2262                                    ; preds = %2260
  %2263 = fadd fast float %2064, -1.000000e+00
  %2264 = fadd fast float %2065, -1.000000e+00
  %2265 = fadd fast float %2066, -1.000000e+00
  %2266 = fmul fast float %2230, %2263
  %2267 = fmul fast float %2230, %2264
  %2268 = fmul fast float %2230, %2265
  %2269 = fadd fast float %2266, 1.000000e+00
  %2270 = fadd fast float %2267, 1.000000e+00
  %2271 = fadd fast float %2268, 1.000000e+00
  %2272 = fmul fast float %2269, %2217
  %2273 = fmul fast float %2270, %2218
  %2274 = fmul fast float %2271, %2219
  br label %2305

; <label>:2275                                    ; preds = %2260
  %2276 = icmp eq i32 %2225, 2
  br i1 %2276, label %2277, label %2305

; <label>:2277                                    ; preds = %2275
  %2278 = call float @dx.op.unary.f32(i32 24, float %2064)  ; Sqrt(value)
  %2279 = call float @dx.op.unary.f32(i32 24, float %2065)  ; Sqrt(value)
  %2280 = call float @dx.op.unary.f32(i32 24, float %2066)  ; Sqrt(value)
  %2281 = fadd fast float %2278, -5.000000e-01
  %2282 = fadd fast float %2279, -5.000000e-01
  %2283 = fadd fast float %2280, -5.000000e-01
  %2284 = fmul fast float %2281, %2230
  %2285 = fmul fast float %2282, %2230
  %2286 = fmul fast float %2283, %2230
  %2287 = fadd fast float %2284, 5.000000e-01
  %2288 = fadd fast float %2285, 5.000000e-01
  %2289 = fadd fast float %2286, 5.000000e-01
  %2290 = fmul fast float %2287, 2.000000e+00
  %2291 = fsub fast float 1.000000e+00, %2290
  %2292 = fmul fast float %2291, %2217
  %2293 = fadd fast float %2292, %2290
  %2294 = fmul fast float %2293, %2217
  %2295 = fmul fast float %2288, 2.000000e+00
  %2296 = fsub fast float 1.000000e+00, %2295
  %2297 = fmul fast float %2296, %2218
  %2298 = fadd fast float %2297, %2295
  %2299 = fmul fast float %2298, %2218
  %2300 = fmul fast float %2289, 2.000000e+00
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = fmul fast float %2301, %2219
  %2303 = fadd fast float %2302, %2300
  %2304 = fmul fast float %2303, %2219
  br label %2305

; <label>:2305                                    ; preds = %2277, %2275, %2262, %2232, %2216
  %2306 = phi float [ %2217, %2216 ], [ %2294, %2277 ], [ %2217, %2275 ], [ %2272, %2262 ], [ %2242, %2232 ]
  %2307 = phi float [ %2218, %2216 ], [ %2299, %2277 ], [ %2218, %2275 ], [ %2273, %2262 ], [ %2243, %2232 ]
  %2308 = phi float [ %2219, %2216 ], [ %2304, %2277 ], [ %2219, %2275 ], [ %2274, %2262 ], [ %2244, %2232 ]
  %2309 = phi float [ %2220, %2216 ], [ %2220, %2277 ], [ %2220, %2275 ], [ %2220, %2262 ], [ %2254, %2232 ]
  %2310 = phi float [ %2221, %2216 ], [ %2221, %2277 ], [ %2221, %2275 ], [ %2221, %2262 ], [ %2255, %2232 ]
  %2311 = phi float [ %2222, %2216 ], [ %2222, %2277 ], [ %2222, %2275 ], [ %2222, %2262 ], [ %2256, %2232 ]
  %2312 = phi float [ %1658, %2216 ], [ %1658, %2277 ], [ %1658, %2275 ], [ %1658, %2262 ], [ %2247, %2232 ]
  %2313 = phi float [ %1661, %2216 ], [ %1661, %2277 ], [ %1661, %2275 ], [ %1661, %2262 ], [ %2259, %2232 ]
  %2314 = and i32 %2224, 12
  %2315 = icmp eq i32 %2314, 12
  br i1 %2315, label %2388, label %2316

; <label>:2316                                    ; preds = %2305
  %2317 = and i32 %2224, 2097184
  %2318 = icmp eq i32 %2317, 2097184
  %2319 = select i1 %2318, float %1844, float 0.000000e+00
  %2320 = and i32 %2224, 4194336
  %2321 = icmp eq i32 %2320, 4194336
  %2322 = select i1 %2321, float %1844, float 0.000000e+00
  %2323 = and i32 %2224, 8388640
  %2324 = icmp eq i32 %2323, 8388640
  %2325 = select i1 %2324, float %1844, float 0.000000e+00
  %2326 = icmp eq i32 %2314, 0
  br i1 %2326, label %2327, label %2340

; <label>:2327                                    ; preds = %2316
  %2328 = fsub fast float %2145, %1650
  %2329 = fsub fast float %2146, %1651
  %2330 = fmul fast float %2319, %2328
  %2331 = fmul fast float %2319, %2329
  %2332 = fadd fast float %2330, %1650
  %2333 = fadd fast float %2331, %1651
  %2334 = fsub fast float %2147, %1660
  %2335 = fmul fast float %2322, %2334
  %2336 = fadd fast float %2335, %1660
  %2337 = fsub fast float %2144, %1659
  %2338 = fmul fast float %2325, %2337
  %2339 = fadd fast float %2338, %1659
  br label %2388

; <label>:2340                                    ; preds = %2316
  %2341 = icmp eq i32 %2314, 4
  br i1 %2341, label %2342, label %2374

; <label>:2342                                    ; preds = %2340
  %2343 = fmul fast float %2319, %2145
  %2344 = fmul fast float %2319, %2146
  %2345 = fadd fast float %2343, %1650
  %2346 = fadd fast float %2344, %1651
  %2347 = call float @dx.op.binary.f32(i32 36, float %1660, float %2147)  ; FMin(a,b)
  %2348 = fsub fast float %2347, %1660
  %2349 = fmul fast float %2348, %2322
  %2350 = fadd fast float %2349, %1660
  %2351 = fadd fast float %2144, %1659
  %2352 = fmul fast float %2351, 0x3FF337FAE0000000
  %2353 = fmul fast float %1659, %1659
  %2354 = fmul fast float %2144, %2144
  %2355 = fadd fast float %2354, %2353
  %2356 = fmul fast float %2355, 0x3FE5152B00000000
  %2357 = fmul fast float %1659, 0xBFCC1F85E0000000
  %2358 = fmul fast float %2357, %2144
  %2359 = fadd fast float %2358, 0xBFE1363700000000
  %2360 = fadd fast float %2359, %2352
  %2361 = fsub fast float %2360, %2356
  %2362 = fmul fast float %2351, 0x3FBA6F0D00000000
  %2363 = fmul fast float %2355, 0x3FD0432880000000
  %2364 = fmul fast float %1659, 0xBFEF110800000000
  %2365 = fmul fast float %2364, %2144
  %2366 = fadd fast float %2365, 1.000000e+00
  %2367 = fsub fast float %2366, %2362
  %2368 = fadd fast float %2367, %2363
  %2369 = fdiv fast float %2361, %2368
  %2370 = call float @dx.op.unary.f32(i32 7, float %2369)  ; Saturate(value)
  %2371 = fsub fast float %2370, %1659
  %2372 = fmul fast float %2371, %2325
  %2373 = fadd fast float %2372, %1659
  br label %2388

; <label>:2374                                    ; preds = %2340
  %2375 = icmp eq i32 %2314, 8
  br i1 %2375, label %2376, label %2388

; <label>:2376                                    ; preds = %2374
  %2377 = fmul fast float %2319, %2145
  %2378 = fmul fast float %2319, %2146
  %2379 = fadd fast float %2377, %1650
  %2380 = fadd fast float %2378, %1651
  %2381 = call float @dx.op.binary.f32(i32 36, float %1660, float %2147)  ; FMin(a,b)
  %2382 = fsub fast float %2381, %1660
  %2383 = fmul fast float %2382, %2322
  %2384 = fadd fast float %2383, %1660
  %2385 = fsub fast float %2144, %1659
  %2386 = fmul fast float %2325, %2385
  %2387 = fadd fast float %2386, %1659
  br label %2388

; <label>:2388                                    ; preds = %2376, %2374, %2342, %2327, %2305, %1843, %1662, %1649
  %2389 = phi float [ %1650, %2305 ], [ %1650, %1843 ], [ %1650, %1649 ], [ %2379, %2376 ], [ %1650, %2374 ], [ %2345, %2342 ], [ %2332, %2327 ], [ %1650, %1662 ]
  %2390 = phi float [ %1651, %2305 ], [ %1651, %1843 ], [ %1651, %1649 ], [ %2380, %2376 ], [ %1651, %2374 ], [ %2346, %2342 ], [ %2333, %2327 ], [ %1651, %1662 ]
  %2391 = phi float [ %2306, %2305 ], [ %1652, %1843 ], [ %1652, %1649 ], [ %2306, %2376 ], [ %2306, %2374 ], [ %2306, %2342 ], [ %2306, %2327 ], [ %1652, %1662 ]
  %2392 = phi float [ %2307, %2305 ], [ %1653, %1843 ], [ %1653, %1649 ], [ %2307, %2376 ], [ %2307, %2374 ], [ %2307, %2342 ], [ %2307, %2327 ], [ %1653, %1662 ]
  %2393 = phi float [ %2308, %2305 ], [ %1654, %1843 ], [ %1654, %1649 ], [ %2308, %2376 ], [ %2308, %2374 ], [ %2308, %2342 ], [ %2308, %2327 ], [ %1654, %1662 ]
  %2394 = phi float [ %2309, %2305 ], [ %1655, %1843 ], [ %1655, %1649 ], [ %2309, %2376 ], [ %2309, %2374 ], [ %2309, %2342 ], [ %2309, %2327 ], [ %1655, %1662 ]
  %2395 = phi float [ %2310, %2305 ], [ %1656, %1843 ], [ %1656, %1649 ], [ %2310, %2376 ], [ %2310, %2374 ], [ %2310, %2342 ], [ %2310, %2327 ], [ %1656, %1662 ]
  %2396 = phi float [ %2311, %2305 ], [ %1657, %1843 ], [ %1657, %1649 ], [ %2311, %2376 ], [ %2311, %2374 ], [ %2311, %2342 ], [ %2311, %2327 ], [ %1657, %1662 ]
  %2397 = phi float [ %2312, %2305 ], [ %1658, %1843 ], [ %1658, %1649 ], [ %2312, %2376 ], [ %2312, %2374 ], [ %2312, %2342 ], [ %2312, %2327 ], [ %1658, %1662 ]
  %2398 = phi float [ %1659, %2305 ], [ %1659, %1843 ], [ %1659, %1649 ], [ %2387, %2376 ], [ %1659, %2374 ], [ %2373, %2342 ], [ %2339, %2327 ], [ %1659, %1662 ]
  %2399 = phi float [ %1660, %2305 ], [ %1660, %1843 ], [ %1660, %1649 ], [ %2384, %2376 ], [ %1660, %2374 ], [ %2350, %2342 ], [ %2336, %2327 ], [ %1660, %1662 ]
  %2400 = phi float [ %2313, %2305 ], [ %1661, %1843 ], [ %1661, %1649 ], [ %2313, %2376 ], [ %2313, %2374 ], [ %2313, %2342 ], [ %2313, %2327 ], [ %1661, %1662 ]
  br i1 %391, label %3127, label %2401

; <label>:2401                                    ; preds = %2388
  %2402 = icmp ult i32 %442, 4
  %2403 = add i32 %33, 72
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = add i32 %33, 76
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = or i32 %2408, %2405
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %3127, label %2411

; <label>:2411                                    ; preds = %2401
  %2412 = and i32 %2405, 262144
  %2413 = icmp ne i32 %2412, 0
  %2414 = select i1 %2413, float %38, float 1.000000e+00
  %2415 = select i1 %2413, float %39, float 0.000000e+00
  %2416 = select i1 %2413, float %40, float 0.000000e+00
  %2417 = select i1 %2413, float %41, float 1.000000e+00
  %2418 = select i1 %2413, float %42, float %65
  %2419 = select i1 %2413, float %43, float %66
  %2420 = add i32 %33, 332
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = lshr i32 %2422, 16
  %2424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2423)  ; LegacyF16ToF32(value)
  %2425 = fmul fast float %2424, 0x3F50624DE0000000
  %2426 = add i32 %33, 136
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2426, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = lshr i32 %2428, 16
  %2430 = and i32 %2429, 255
  %2431 = lshr i32 %2428, 24
  %2432 = add i32 %33, 340
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 65535
  %2436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2435)  ; LegacyF16ToF32(value)
  %2437 = lshr i32 %2434, 16
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = add i32 %33, 80
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = lshr i32 %2441, 22
  %2443 = shl nuw nsw i32 %2442, 5
  %2444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2443)  ; LegacyF16ToF32(value)
  %2445 = shl i32 %2441, 4
  %2446 = and i32 %2445, 32752
  %2447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2446)  ; LegacyF16ToF32(value)
  %2448 = lshr i32 %2441, 7
  %2449 = and i32 %2448, 32752
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 3
  %2453 = fmul fast float %2452, 1.000000e+03
  %2454 = fmul fast float %381, %2453
  %2455 = call float @dx.op.unary.f32(i32 22, float %2454)  ; Frc(value)
  %2456 = fadd fast float %2455, %371
  %2457 = fmul fast float %382, %2453
  %2458 = call float @dx.op.unary.f32(i32 22, float %2457)  ; Frc(value)
  %2459 = fadd fast float %2458, %373
  %2460 = fmul fast float %2425, %2453
  %2461 = call float @dx.op.unary.f32(i32 22, float %2460)  ; Frc(value)
  %2462 = fmul fast float %2461, 0x401921FB60000000
  %2463 = fadd fast float %2462, %2444
  %2464 = call float @dx.op.unary.f32(i32 13, float %2463)  ; Sin(value)
  %2465 = call float @dx.op.unary.f32(i32 12, float %2463)  ; Cos(value)
  %2466 = fsub fast float -0.000000e+00, %2464
  %2467 = fadd fast float %2418, -5.000000e-01
  %2468 = fadd fast float %2419, -5.000000e-01
  %2469 = fmul fast float %2436, %2467
  %2470 = fmul fast float %2438, %2468
  %2471 = fadd fast float %2469, 5.000000e-01
  %2472 = fadd fast float %2470, 5.000000e-01
  %2473 = fmul fast float %2447, %2471
  %2474 = fmul fast float %2450, %2472
  %2475 = fmul fast float %2465, %2473
  %2476 = call float @dx.op.tertiary.f32(i32 46, float %2466, float %2474, float %2475)  ; FMad(a,b,c)
  %2477 = fmul fast float %2464, %2473
  %2478 = call float @dx.op.tertiary.f32(i32 46, float %2465, float %2474, float %2477)  ; FMad(a,b,c)
  %2479 = fadd fast float %2456, %2476
  %2480 = fadd fast float %2459, %2478
  %2481 = icmp ugt i32 %2430, 1
  %2482 = icmp ugt i32 %2428, 33554431
  %2483 = or i1 %2482, %2481
  br i1 %2483, label %2484, label %2509

; <label>:2484                                    ; preds = %2411
  %2485 = add i32 %33, 276
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = lshr i32 %2487, 16
  %2489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2488)  ; LegacyF16ToF32(value)
  %2490 = fmul fast float %2452, %2489
  %2491 = call float @dx.op.unary.f32(i32 22, float %2490)  ; Frc(value)
  %2492 = mul nuw nsw i32 %2430, %2431
  %2493 = uitofp i32 %2492 to float
  %2494 = fmul fast float %2491, %2493
  %2495 = call float @dx.op.unary.f32(i32 27, float %2494)  ; Round_ni(value)
  %2496 = fptoui float %2495 to i32
  %2497 = urem i32 %2496, %2430
  %2498 = udiv i32 %2496, %2431
  %2499 = call float @dx.op.unary.f32(i32 22, float %2479)  ; Frc(value)
  %2500 = call float @dx.op.unary.f32(i32 22, float %2480)  ; Frc(value)
  %2501 = uitofp i32 %2497 to float
  %2502 = uitofp i32 %2498 to float
  %2503 = fadd fast float %2499, %2501
  %2504 = fadd fast float %2500, %2502
  %2505 = uitofp i32 %2430 to float
  %2506 = uitofp i32 %2431 to float
  %2507 = fdiv fast float %2503, %2505
  %2508 = fdiv fast float %2504, %2506
  br label %2509

; <label>:2509                                    ; preds = %2484, %2411
  %2510 = phi float [ %2507, %2484 ], [ %2479, %2411 ]
  %2511 = phi float [ %2508, %2484 ], [ %2480, %2411 ]
  %2512 = and i32 %2405, 256
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2560, label %2514

; <label>:2514                                    ; preds = %2509
  %2515 = add i32 %33, 436
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = add i32 %2517, 0
  %2519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2520 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2519, %dx.types.Handle %74, float %2510, float %2511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  %2522 = add i32 %33, 148
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = shl i32 %2524, 4
  %2526 = and i32 %2525, 32752
  %2527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2526)  ; LegacyF16ToF32(value)
  %2528 = lshr i32 %2524, 7
  %2529 = and i32 %2528, 32752
  %2530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2529)  ; LegacyF16ToF32(value)
  %2531 = fsub fast float 1.000000e+00, %437
  %2532 = call float @dx.op.binary.f32(i32 35, float %2531, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2533 = bitcast float %437 to i32
  %2534 = sitofp i32 %2533 to float
  %2535 = fadd fast float %2534, 0xC1CFBF8940000000
  %2536 = fmul fast float %2530, %2535
  %2537 = fadd fast float %2536, 0x41CFBF8940000000
  %2538 = fptosi float %2537 to i32
  %2539 = bitcast i32 %2538 to float
  %2540 = bitcast float %2532 to i32
  %2541 = sitofp i32 %2540 to float
  %2542 = fadd fast float %2541, 0xC1CFBF8940000000
  %2543 = fmul fast float %2542, %2530
  %2544 = fadd fast float %2543, 0x41CFBF8940000000
  %2545 = fptosi float %2544 to i32
  %2546 = bitcast i32 %2545 to float
  %2547 = fmul fast float %2539, %2527
  %2548 = fmul fast float %2546, %2527
  %2549 = fsub fast float %2532, %2547
  %2550 = fadd fast float %2548, %2532
  %2551 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2552 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  %2553 = fsub fast float %2521, %2551
  %2554 = fsub fast float %2552, %2551
  %2555 = bitcast float %2554 to i32
  %2556 = sub nsw i32 2129859010, %2555
  %2557 = bitcast i32 %2556 to float
  %2558 = fmul fast float %2557, %2553
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  br label %2560

; <label>:2560                                    ; preds = %2514, %2509
  %2561 = phi float [ %2559, %2514 ], [ %437, %2509 ]
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 128
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2582, label %2566

; <label>:2566                                    ; preds = %2560
  %2567 = add i32 %33, 420
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = add i32 %2569, 0
  %2571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2571, %dx.types.Handle %74, float %2510, float %2511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2573 = extractvalue %dx.types.ResRet.f32 %2572, 0
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 524288
  %2577 = icmp ne i32 %2576, 0
  %2578 = fcmp fast ogt float %2573, 0x3FE0101020000000
  %2579 = select i1 %2578, float 1.000000e+00, float 0.000000e+00
  %2580 = select i1 %2577, float %2579, float %2573
  %2581 = fmul fast float %2580, %2561
  br label %2582

; <label>:2582                                    ; preds = %2566, %2560
  %2583 = phi float [ %2581, %2566 ], [ %2561, %2560 ]
  %2584 = fcmp fast ult float %2583, 0x3F70101020000000
  br i1 %2584, label %3127, label %2585

; <label>:2585                                    ; preds = %2582
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = and i32 %2587, 16
  %2589 = icmp eq i32 %2588, 0
  br i1 %2589, label %2788, label %2590

; <label>:2590                                    ; preds = %2585
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2426, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = add i32 %33, 372
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = add i32 %2595, 0
  %2597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2597, %dx.types.Handle %73, float %2510, float %2511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2599 = extractvalue %dx.types.ResRet.f32 %2598, 0
  %2600 = extractvalue %dx.types.ResRet.f32 %2598, 1
  %2601 = extractvalue %dx.types.ResRet.f32 %2598, 2
  %2602 = extractvalue %dx.types.ResRet.f32 %2598, 3
  %2603 = and i32 %2592, 255
  %2604 = uitofp i32 %2603 to float
  %2605 = lshr i32 %2592, 8
  %2606 = and i32 %2605, 255
  %2607 = uitofp i32 %2606 to float
  %2608 = fmul fast float %2602, %2604
  %2609 = fadd fast float %2608, %2607
  %2610 = fmul fast float %2609, 0x3F70101000000000
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 512
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2623, label %2615

; <label>:2615                                    ; preds = %2590
  %2616 = add i32 %33, 452
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = add i32 %2618, 0
  %2620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2619, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2620, %dx.types.Handle %74, float %2510, float %2511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  br label %2623

; <label>:2623                                    ; preds = %2615, %2590
  %2624 = phi float [ %2622, %2615 ], [ 1.000000e+00, %2590 ]
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 33554432
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2735, label %2629

; <label>:2629                                    ; preds = %2623
  %2630 = add i32 %33, 272
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 65535
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = lshr i32 %2632, 16
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = add i32 %33, 276
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 65535
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = lshr i32 %2643, 24
  %2645 = uitofp i32 %2644 to float
  %2646 = fmul fast float %2645, 0x3F70101020000000
  %2647 = and i32 %2643, 255
  %2648 = uitofp i32 %2647 to float
  %2649 = fmul fast float %2648, 0x3F70101020000000
  %2650 = lshr i32 %2643, 8
  %2651 = and i32 %2650, 255
  %2652 = uitofp i32 %2651 to float
  %2653 = fmul fast float %2652, 0x3F70101020000000
  %2654 = lshr i32 %2643, 16
  %2655 = and i32 %2654, 255
  %2656 = uitofp i32 %2655 to float
  %2657 = fmul fast float %2656, 0x3F70101020000000
  %2658 = add i32 %33, 268
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = lshr i32 %2660, 24
  %2662 = uitofp i32 %2661 to float
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = and i32 %2660, 255
  %2665 = uitofp i32 %2664 to float
  %2666 = fmul fast float %2665, 0x3F70101020000000
  %2667 = lshr i32 %2660, 8
  %2668 = and i32 %2667, 255
  %2669 = uitofp i32 %2668 to float
  %2670 = fmul fast float %2669, 0x3F70101020000000
  %2671 = lshr i32 %2660, 16
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = bitcast float %2599 to i32
  %2676 = ashr i32 %2675, 1
  %2677 = sub nsw i32 1597463174, %2676
  %2678 = bitcast i32 %2677 to float
  %2679 = fmul fast float %2599, 5.000000e-01
  %2680 = fmul fast float %2678, %2678
  %2681 = fmul fast float %2680, %2679
  %2682 = fsub fast float 1.500000e+00, %2681
  %2683 = fmul fast float %2678, %2599
  %2684 = fmul fast float %2683, %2682
  %2685 = bitcast float %2600 to i32
  %2686 = ashr i32 %2685, 1
  %2687 = sub nsw i32 1597463174, %2686
  %2688 = bitcast i32 %2687 to float
  %2689 = fmul fast float %2600, 5.000000e-01
  %2690 = fmul fast float %2688, %2688
  %2691 = fmul fast float %2690, %2689
  %2692 = fsub fast float 1.500000e+00, %2691
  %2693 = fmul fast float %2688, %2600
  %2694 = fmul fast float %2693, %2692
  %2695 = bitcast float %2601 to i32
  %2696 = ashr i32 %2695, 1
  %2697 = sub nsw i32 1597463174, %2696
  %2698 = bitcast i32 %2697 to float
  %2699 = fmul fast float %2601, 5.000000e-01
  %2700 = fmul fast float %2698, %2698
  %2701 = fmul fast float %2700, %2699
  %2702 = fsub fast float 1.500000e+00, %2701
  %2703 = fmul fast float %2698, %2601
  %2704 = fmul fast float %2703, %2702
  %2705 = fsub fast float %2684, %2666
  %2706 = fsub fast float %2694, %2670
  %2707 = fsub fast float %2704, %2674
  %2708 = fmul fast float %2705, %2634
  %2709 = fmul fast float %2706, %2636
  %2710 = fmul fast float %2707, %2641
  %2711 = fadd fast float %2708, %2649
  %2712 = fadd fast float %2709, %2653
  %2713 = fadd fast float %2710, %2657
  %2714 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2715 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2716 = call float @dx.op.unary.f32(i32 7, float %2713)  ; Saturate(value)
  %2717 = fmul fast float %2714, %2714
  %2718 = fmul fast float %2715, %2715
  %2719 = fmul fast float %2716, %2716
  %2720 = fsub fast float %2717, %2599
  %2721 = fsub fast float %2718, %2600
  %2722 = fsub fast float %2719, %2601
  %2723 = fmul fast float %2720, %2624
  %2724 = fmul fast float %2721, %2624
  %2725 = fmul fast float %2722, %2624
  %2726 = fadd fast float %2723, %2599
  %2727 = fadd fast float %2724, %2600
  %2728 = fadd fast float %2725, %2601
  %2729 = fadd fast float %2646, %2610
  %2730 = fsub fast float %2729, %2663
  %2731 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2732 = fsub fast float %2731, %2610
  %2733 = fmul fast float %2732, %2624
  %2734 = fadd fast float %2733, %2610
  br label %2788

; <label>:2735                                    ; preds = %2623
  %2736 = and i32 %2626, 134217728
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2772, label %2738

; <label>:2738                                    ; preds = %2735
  %2739 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %2740 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %2741 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2742 = fadd fast float %2739, -5.000000e-01
  %2743 = fadd fast float %2740, -5.000000e-01
  %2744 = fadd fast float %2741, -5.000000e-01
  %2745 = fmul fast float %2742, %2624
  %2746 = fmul fast float %2743, %2624
  %2747 = fmul fast float %2744, %2624
  %2748 = fadd fast float %2745, 5.000000e-01
  %2749 = fadd fast float %2746, 5.000000e-01
  %2750 = fadd fast float %2747, 5.000000e-01
  %2751 = call float @dx.op.unary.f32(i32 24, float %2599)  ; Sqrt(value)
  %2752 = call float @dx.op.unary.f32(i32 24, float %2600)  ; Sqrt(value)
  %2753 = call float @dx.op.unary.f32(i32 24, float %2601)  ; Sqrt(value)
  %2754 = fmul fast float %2748, 2.000000e+00
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = fmul fast float %2755, %2751
  %2757 = fadd fast float %2756, %2754
  %2758 = fmul fast float %2757, %2751
  %2759 = fmul fast float %2749, 2.000000e+00
  %2760 = fsub fast float 1.000000e+00, %2759
  %2761 = fmul fast float %2760, %2752
  %2762 = fadd fast float %2761, %2759
  %2763 = fmul fast float %2762, %2752
  %2764 = fmul fast float %2750, 2.000000e+00
  %2765 = fsub fast float 1.000000e+00, %2764
  %2766 = fmul fast float %2765, %2753
  %2767 = fadd fast float %2766, %2764
  %2768 = fmul fast float %2767, %2753
  %2769 = fmul fast float %2758, %2758
  %2770 = fmul fast float %2763, %2763
  %2771 = fmul fast float %2768, %2768
  br label %2788

; <label>:2772                                    ; preds = %2735
  %2773 = fmul fast float %358, %358
  %2774 = fmul fast float %362, %362
  %2775 = fmul fast float %366, %366
  %2776 = fadd fast float %2773, -1.000000e+00
  %2777 = fadd fast float %2774, -1.000000e+00
  %2778 = fadd fast float %2775, -1.000000e+00
  %2779 = fmul fast float %2624, %2776
  %2780 = fmul fast float %2624, %2777
  %2781 = fmul fast float %2624, %2778
  %2782 = fadd fast float %2779, 1.000000e+00
  %2783 = fadd fast float %2780, 1.000000e+00
  %2784 = fadd fast float %2781, 1.000000e+00
  %2785 = fmul fast float %2782, %2599
  %2786 = fmul fast float %2783, %2600
  %2787 = fmul fast float %2784, %2601
  br label %2788

; <label>:2788                                    ; preds = %2772, %2738, %2629, %2585
  %2789 = phi float [ %2734, %2629 ], [ %2610, %2738 ], [ %2610, %2772 ], [ 0x3FA23C0BE0000000, %2585 ]
  %2790 = phi float [ %2726, %2629 ], [ %2769, %2738 ], [ %2785, %2772 ], [ 1.000000e+00, %2585 ]
  %2791 = phi float [ %2727, %2629 ], [ %2770, %2738 ], [ %2786, %2772 ], [ 1.000000e+00, %2585 ]
  %2792 = phi float [ %2728, %2629 ], [ %2771, %2738 ], [ %2787, %2772 ], [ 1.000000e+00, %2585 ]
  %2793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2794 = extractvalue %dx.types.CBufRet.i32 %2793, 1
  %2795 = and i32 %2794, 1
  %2796 = icmp ne i32 %2795, 0
  %2797 = add i32 %33, 356
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = and i32 %2799, 32
  %2801 = icmp ne i32 %2800, 0
  %2802 = and i1 %2796, %2801
  %2803 = select i1 %2802, float 1.000000e+00, float %2790
  %2804 = select i1 %2802, float 0x3FD3333340000000, float %2791
  %2805 = select i1 %2802, float 0x3FD3333340000000, float %2792
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = and i32 %2807, 32
  %2809 = icmp eq i32 %2808, 0
  br i1 %2809, label %2882, label %2810

; <label>:2810                                    ; preds = %2788
  %2811 = add i32 %33, 140
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = add i32 %33, 388
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = add i32 %2816, 0
  %2818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2817, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2818, %dx.types.Handle %73, float %2510, float %2511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.ResRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.ResRet.f32 %2819, 2
  %2823 = extractvalue %dx.types.ResRet.f32 %2819, 3
  %2824 = and i32 %2813, 255
  %2825 = uitofp i32 %2824 to float
  %2826 = lshr i32 %2813, 8
  %2827 = and i32 %2826, 255
  %2828 = uitofp i32 %2827 to float
  %2829 = lshr i32 %2813, 16
  %2830 = and i32 %2829, 255
  %2831 = uitofp i32 %2830 to float
  %2832 = fmul fast float %2831, 0x3F70101000000000
  %2833 = fmul fast float %2820, %2825
  %2834 = fadd fast float %2833, %2828
  %2835 = fmul fast float %2834, 0x3F70101000000000
  %2836 = fadd fast float %2821, -5.000000e-01
  %2837 = fadd fast float %2823, -5.000000e-01
  %2838 = fmul fast float %2836, %2832
  %2839 = fmul fast float %2837, %2832
  %2840 = fadd fast float %2838, 5.000000e-01
  %2841 = fadd fast float %2839, 5.000000e-01
  %2842 = fmul fast float %2840, 2.000000e+00
  %2843 = fadd fast float %2842, -1.000000e+00
  %2844 = fmul fast float %2841, 2.000000e+00
  %2845 = fadd fast float %2844, -1.000000e+00
  %2846 = fadd fast float %2843, %2845
  %2847 = fmul fast float %2846, 5.000000e-01
  %2848 = fsub fast float %2843, %2845
  %2849 = fmul fast float %2848, 5.000000e-01
  %2850 = call float @dx.op.unary.f32(i32 6, float %2847)  ; FAbs(value)
  %2851 = fsub fast float 1.000000e+00, %2850
  %2852 = call float @dx.op.unary.f32(i32 6, float %2849)  ; FAbs(value)
  %2853 = fsub fast float %2851, %2852
  %2854 = call float @dx.op.dot3.f32(i32 55, float %2847, float %2849, float %2853, float %2847, float %2849, float %2853)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = call float @dx.op.unary.f32(i32 25, float %2854)  ; Rsqrt(value)
  %2856 = fmul fast float %2847, %2855
  %2857 = fmul fast float %2849, %2855
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 67108864
  %2861 = icmp eq i32 %2860, 0
  br i1 %2861, label %2878, label %2862

; <label>:2862                                    ; preds = %2810
  %2863 = add i32 %33, 328
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = and i32 %2865, 65535
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 65535
  %2871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2870)  ; LegacyF16ToF32(value)
  %2872 = lshr i32 %2865, 16
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = fsub fast float %2835, %2873
  %2875 = fmul fast float %2874, %2867
  %2876 = fadd fast float %2875, %2871
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  br label %2878

; <label>:2878                                    ; preds = %2862, %2810
  %2879 = phi float [ %2877, %2862 ], [ %2835, %2810 ]
  %2880 = call float @dx.op.dot2.f32(i32 54, float %2856, float %2857, float %2414, float %2415)  ; Dot2(ax,ay,bx,by)
  %2881 = call float @dx.op.dot2.f32(i32 54, float %2856, float %2857, float %2416, float %2417)  ; Dot2(ax,ay,bx,by)
  br label %2882

; <label>:2882                                    ; preds = %2878, %2788
  %2883 = phi float [ %2879, %2878 ], [ 0x3FD6666660000000, %2788 ]
  %2884 = phi float [ %2880, %2878 ], [ 0.000000e+00, %2788 ]
  %2885 = phi float [ %2881, %2878 ], [ 0.000000e+00, %2788 ]
  %2886 = phi float [ %2822, %2878 ], [ 1.000000e+00, %2788 ]
  %2887 = add i32 %33, 208
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = lshr i32 %2889, 22
  %2891 = shl nuw nsw i32 %2890, 5
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 64
  %2896 = icmp eq i32 %2895, 0
  br i1 %2896, label %2930, label %2897

; <label>:2897                                    ; preds = %2882
  %2898 = add i32 %33, 404
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = add i32 %2900, 0
  %2902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = and i32 %2904, 131072
  %2906 = icmp eq i32 %2905, 0
  %2907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2902, %dx.types.Handle %73, float %2510, float %2511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2908 = extractvalue %dx.types.ResRet.f32 %2907, 0
  %2909 = extractvalue %dx.types.ResRet.f32 %2907, 1
  %2910 = extractvalue %dx.types.ResRet.f32 %2907, 2
  %2911 = fmul fast float %2908, %346
  %2912 = fmul fast float %2909, %349
  %2913 = fmul fast float %2910, %352
  br i1 %2906, label %2920, label %2914

; <label>:2914                                    ; preds = %2897
  %2915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2916 = extractvalue %dx.types.CBufRet.f32 %2915, 0
  %2917 = fmul fast float %2916, %2911
  %2918 = fmul fast float %2916, %2912
  %2919 = fmul fast float %2916, %2913
  br label %2920

; <label>:2920                                    ; preds = %2914, %2897
  %2921 = phi float [ %2917, %2914 ], [ %2911, %2897 ]
  %2922 = phi float [ %2918, %2914 ], [ %2912, %2897 ]
  %2923 = phi float [ %2919, %2914 ], [ %2913, %2897 ]
  %2924 = fmul fast float %2921, %2892
  %2925 = select i1 %203, float %2924, float %2921
  %2926 = call float @dx.op.dot3.f32(i32 55, float %2925, float %2922, float %2923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2927 = select i1 %203, float 0.000000e+00, float %2921
  %2928 = select i1 %203, float %2926, float %2922
  %2929 = select i1 %203, float 0.000000e+00, float %2923
  br label %2930

; <label>:2930                                    ; preds = %2920, %2882
  %2931 = phi float [ %2927, %2920 ], [ 0.000000e+00, %2882 ]
  %2932 = phi float [ %2928, %2920 ], [ 0.000000e+00, %2882 ]
  %2933 = phi float [ %2929, %2920 ], [ 0.000000e+00, %2882 ]
  %2934 = add i32 %33, 144
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 255
  %2938 = uitofp i32 %2937 to float
  %2939 = lshr i32 %2936, 8
  %2940 = and i32 %2939, 255
  %2941 = uitofp i32 %2940 to float
  %2942 = call float @dx.op.dot3.f32(i32 55, float %2803, float %2804, float %2805, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2943 = fmul fast float %2941, %2942
  %2944 = fadd fast float %2943, %2938
  %2945 = fmul fast float %2944, 0x3F70101020000000
  %2946 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  br i1 %2402, label %2947, label %2955

; <label>:2947                                    ; preds = %2930
  %2948 = fsub fast float 1.000000e+00, %2583
  %2949 = fmul fast float %2948, %2391
  %2950 = fmul fast float %2948, %2392
  %2951 = fmul fast float %2948, %2393
  %2952 = fmul fast float %2948, %2394
  %2953 = fmul fast float %2948, %2395
  %2954 = fmul fast float %2948, %2396
  br label %2955

; <label>:2955                                    ; preds = %2947, %2930
  %2956 = phi float [ %2949, %2947 ], [ %2391, %2930 ]
  %2957 = phi float [ %2950, %2947 ], [ %2392, %2930 ]
  %2958 = phi float [ %2951, %2947 ], [ %2393, %2930 ]
  %2959 = phi float [ %2952, %2947 ], [ %2394, %2930 ]
  %2960 = phi float [ %2953, %2947 ], [ %2395, %2930 ]
  %2961 = phi float [ %2954, %2947 ], [ %2396, %2930 ]
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 3
  %2965 = icmp eq i32 %2964, 3
  br i1 %2965, label %3044, label %2966

; <label>:2966                                    ; preds = %2955
  %2967 = and i32 %2963, 16
  %2968 = icmp ne i32 %2967, 0
  %2969 = select i1 %2968, float %2583, float 0.000000e+00
  %2970 = icmp eq i32 %2964, 0
  br i1 %2970, label %2971, label %2999

; <label>:2971                                    ; preds = %2966
  %2972 = and i32 %2963, 64
  %2973 = icmp ne i32 %2972, 0
  %2974 = select i1 %2973, float %2583, float 0.000000e+00
  %2975 = fsub fast float %2803, %2956
  %2976 = fsub fast float %2804, %2957
  %2977 = fsub fast float %2805, %2958
  %2978 = fmul fast float %2969, %2975
  %2979 = fmul fast float %2969, %2976
  %2980 = fmul fast float %2969, %2977
  %2981 = fadd fast float %2978, %2956
  %2982 = fadd fast float %2979, %2957
  %2983 = fadd fast float %2980, %2958
  %2984 = fsub fast float %2789, %2397
  %2985 = fmul fast float %2969, %2984
  %2986 = fadd fast float %2985, %2397
  %2987 = fsub fast float %2931, %2959
  %2988 = fsub fast float %2932, %2960
  %2989 = fsub fast float %2933, %2961
  %2990 = fmul fast float %2974, %2987
  %2991 = fmul fast float %2974, %2988
  %2992 = fmul fast float %2974, %2989
  %2993 = fadd fast float %2990, %2959
  %2994 = fadd fast float %2991, %2960
  %2995 = fadd fast float %2992, %2961
  %2996 = fsub fast float %2946, %2400
  %2997 = fmul fast float %2969, %2996
  %2998 = fadd fast float %2997, %2400
  br label %3044

; <label>:2999                                    ; preds = %2966
  %3000 = icmp eq i32 %2964, 1
  br i1 %3000, label %3001, label %3014

; <label>:3001                                    ; preds = %2999
  %3002 = fadd fast float %2803, -1.000000e+00
  %3003 = fadd fast float %2804, -1.000000e+00
  %3004 = fadd fast float %2805, -1.000000e+00
  %3005 = fmul fast float %2969, %3002
  %3006 = fmul fast float %2969, %3003
  %3007 = fmul fast float %2969, %3004
  %3008 = fadd fast float %3005, 1.000000e+00
  %3009 = fadd fast float %3006, 1.000000e+00
  %3010 = fadd fast float %3007, 1.000000e+00
  %3011 = fmul fast float %3008, %2956
  %3012 = fmul fast float %3009, %2957
  %3013 = fmul fast float %3010, %2958
  br label %3044

; <label>:3014                                    ; preds = %2999
  %3015 = icmp eq i32 %2964, 2
  br i1 %3015, label %3016, label %3044

; <label>:3016                                    ; preds = %3014
  %3017 = call float @dx.op.unary.f32(i32 24, float %2803)  ; Sqrt(value)
  %3018 = call float @dx.op.unary.f32(i32 24, float %2804)  ; Sqrt(value)
  %3019 = call float @dx.op.unary.f32(i32 24, float %2805)  ; Sqrt(value)
  %3020 = fadd fast float %3017, -5.000000e-01
  %3021 = fadd fast float %3018, -5.000000e-01
  %3022 = fadd fast float %3019, -5.000000e-01
  %3023 = fmul fast float %3020, %2969
  %3024 = fmul fast float %3021, %2969
  %3025 = fmul fast float %3022, %2969
  %3026 = fadd fast float %3023, 5.000000e-01
  %3027 = fadd fast float %3024, 5.000000e-01
  %3028 = fadd fast float %3025, 5.000000e-01
  %3029 = fmul fast float %3026, 2.000000e+00
  %3030 = fsub fast float 1.000000e+00, %3029
  %3031 = fmul fast float %3030, %2956
  %3032 = fadd fast float %3031, %3029
  %3033 = fmul fast float %3032, %2956
  %3034 = fmul fast float %3027, 2.000000e+00
  %3035 = fsub fast float 1.000000e+00, %3034
  %3036 = fmul fast float %3035, %2957
  %3037 = fadd fast float %3036, %3034
  %3038 = fmul fast float %3037, %2957
  %3039 = fmul fast float %3028, 2.000000e+00
  %3040 = fsub fast float 1.000000e+00, %3039
  %3041 = fmul fast float %3040, %2958
  %3042 = fadd fast float %3041, %3039
  %3043 = fmul fast float %3042, %2958
  br label %3044

; <label>:3044                                    ; preds = %3016, %3014, %3001, %2971, %2955
  %3045 = phi float [ %2956, %2955 ], [ %3033, %3016 ], [ %2956, %3014 ], [ %3011, %3001 ], [ %2981, %2971 ]
  %3046 = phi float [ %2957, %2955 ], [ %3038, %3016 ], [ %2957, %3014 ], [ %3012, %3001 ], [ %2982, %2971 ]
  %3047 = phi float [ %2958, %2955 ], [ %3043, %3016 ], [ %2958, %3014 ], [ %3013, %3001 ], [ %2983, %2971 ]
  %3048 = phi float [ %2959, %2955 ], [ %2959, %3016 ], [ %2959, %3014 ], [ %2959, %3001 ], [ %2993, %2971 ]
  %3049 = phi float [ %2960, %2955 ], [ %2960, %3016 ], [ %2960, %3014 ], [ %2960, %3001 ], [ %2994, %2971 ]
  %3050 = phi float [ %2961, %2955 ], [ %2961, %3016 ], [ %2961, %3014 ], [ %2961, %3001 ], [ %2995, %2971 ]
  %3051 = phi float [ %2397, %2955 ], [ %2397, %3016 ], [ %2397, %3014 ], [ %2397, %3001 ], [ %2986, %2971 ]
  %3052 = phi float [ %2400, %2955 ], [ %2400, %3016 ], [ %2400, %3014 ], [ %2400, %3001 ], [ %2998, %2971 ]
  %3053 = and i32 %2963, 12
  %3054 = icmp eq i32 %3053, 12
  br i1 %3054, label %3127, label %3055

; <label>:3055                                    ; preds = %3044
  %3056 = and i32 %2963, 2097184
  %3057 = icmp eq i32 %3056, 2097184
  %3058 = select i1 %3057, float %2583, float 0.000000e+00
  %3059 = and i32 %2963, 4194336
  %3060 = icmp eq i32 %3059, 4194336
  %3061 = select i1 %3060, float %2583, float 0.000000e+00
  %3062 = and i32 %2963, 8388640
  %3063 = icmp eq i32 %3062, 8388640
  %3064 = select i1 %3063, float %2583, float 0.000000e+00
  %3065 = icmp eq i32 %3053, 0
  br i1 %3065, label %3066, label %3079

; <label>:3066                                    ; preds = %3055
  %3067 = fsub fast float %2884, %2389
  %3068 = fsub fast float %2885, %2390
  %3069 = fmul fast float %3058, %3067
  %3070 = fmul fast float %3058, %3068
  %3071 = fadd fast float %3069, %2389
  %3072 = fadd fast float %3070, %2390
  %3073 = fsub fast float %2886, %2399
  %3074 = fmul fast float %3061, %3073
  %3075 = fadd fast float %3074, %2399
  %3076 = fsub fast float %2883, %2398
  %3077 = fmul fast float %3064, %3076
  %3078 = fadd fast float %3077, %2398
  br label %3127

; <label>:3079                                    ; preds = %3055
  %3080 = icmp eq i32 %3053, 4
  br i1 %3080, label %3081, label %3113

; <label>:3081                                    ; preds = %3079
  %3082 = fmul fast float %3058, %2884
  %3083 = fmul fast float %3058, %2885
  %3084 = fadd fast float %3082, %2389
  %3085 = fadd fast float %3083, %2390
  %3086 = call float @dx.op.binary.f32(i32 36, float %2399, float %2886)  ; FMin(a,b)
  %3087 = fsub fast float %3086, %2399
  %3088 = fmul fast float %3087, %3061
  %3089 = fadd fast float %3088, %2399
  %3090 = fadd fast float %2883, %2398
  %3091 = fmul fast float %3090, 0x3FF337FAE0000000
  %3092 = fmul fast float %2398, %2398
  %3093 = fmul fast float %2883, %2883
  %3094 = fadd fast float %3093, %3092
  %3095 = fmul fast float %3094, 0x3FE5152B00000000
  %3096 = fmul fast float %2398, 0xBFCC1F85E0000000
  %3097 = fmul fast float %3096, %2883
  %3098 = fadd fast float %3097, 0xBFE1363700000000
  %3099 = fadd fast float %3098, %3091
  %3100 = fsub fast float %3099, %3095
  %3101 = fmul fast float %3090, 0x3FBA6F0D00000000
  %3102 = fmul fast float %3094, 0x3FD0432880000000
  %3103 = fmul fast float %2398, 0xBFEF110800000000
  %3104 = fmul fast float %3103, %2883
  %3105 = fadd fast float %3104, 1.000000e+00
  %3106 = fsub fast float %3105, %3101
  %3107 = fadd fast float %3106, %3102
  %3108 = fdiv fast float %3100, %3107
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3110 = fsub fast float %3109, %2398
  %3111 = fmul fast float %3110, %3064
  %3112 = fadd fast float %3111, %2398
  br label %3127

; <label>:3113                                    ; preds = %3079
  %3114 = icmp eq i32 %3053, 8
  br i1 %3114, label %3115, label %3127

; <label>:3115                                    ; preds = %3113
  %3116 = fmul fast float %3058, %2884
  %3117 = fmul fast float %3058, %2885
  %3118 = fadd fast float %3116, %2389
  %3119 = fadd fast float %3117, %2390
  %3120 = call float @dx.op.binary.f32(i32 36, float %2399, float %2886)  ; FMin(a,b)
  %3121 = fsub fast float %3120, %2399
  %3122 = fmul fast float %3121, %3061
  %3123 = fadd fast float %3122, %2399
  %3124 = fsub fast float %2883, %2398
  %3125 = fmul fast float %3064, %3124
  %3126 = fadd fast float %3125, %2398
  br label %3127

; <label>:3127                                    ; preds = %3115, %3113, %3081, %3066, %3044, %2582, %2401, %2388
  %3128 = phi float [ %2389, %3044 ], [ %2389, %2582 ], [ %2389, %2388 ], [ %2389, %2401 ], [ %3071, %3066 ], [ %3084, %3081 ], [ %2389, %3113 ], [ %3118, %3115 ]
  %3129 = phi float [ %2390, %3044 ], [ %2390, %2582 ], [ %2390, %2388 ], [ %2390, %2401 ], [ %3072, %3066 ], [ %3085, %3081 ], [ %2390, %3113 ], [ %3119, %3115 ]
  %3130 = phi float [ %3045, %3044 ], [ %2391, %2582 ], [ %2391, %2388 ], [ %2391, %2401 ], [ %3045, %3066 ], [ %3045, %3081 ], [ %3045, %3113 ], [ %3045, %3115 ]
  %3131 = phi float [ %3046, %3044 ], [ %2392, %2582 ], [ %2392, %2388 ], [ %2392, %2401 ], [ %3046, %3066 ], [ %3046, %3081 ], [ %3046, %3113 ], [ %3046, %3115 ]
  %3132 = phi float [ %3047, %3044 ], [ %2393, %2582 ], [ %2393, %2388 ], [ %2393, %2401 ], [ %3047, %3066 ], [ %3047, %3081 ], [ %3047, %3113 ], [ %3047, %3115 ]
  %3133 = phi float [ %3048, %3044 ], [ %2394, %2582 ], [ %2394, %2388 ], [ %2394, %2401 ], [ %3048, %3066 ], [ %3048, %3081 ], [ %3048, %3113 ], [ %3048, %3115 ]
  %3134 = phi float [ %3049, %3044 ], [ %2395, %2582 ], [ %2395, %2388 ], [ %2395, %2401 ], [ %3049, %3066 ], [ %3049, %3081 ], [ %3049, %3113 ], [ %3049, %3115 ]
  %3135 = phi float [ %3050, %3044 ], [ %2396, %2582 ], [ %2396, %2388 ], [ %2396, %2401 ], [ %3050, %3066 ], [ %3050, %3081 ], [ %3050, %3113 ], [ %3050, %3115 ]
  %3136 = phi float [ %3051, %3044 ], [ %2397, %2582 ], [ %2397, %2388 ], [ %2397, %2401 ], [ %3051, %3066 ], [ %3051, %3081 ], [ %3051, %3113 ], [ %3051, %3115 ]
  %3137 = phi float [ %2398, %3044 ], [ %2398, %2582 ], [ %2398, %2388 ], [ %2398, %2401 ], [ %3078, %3066 ], [ %3112, %3081 ], [ %2398, %3113 ], [ %3126, %3115 ]
  %3138 = phi float [ %2399, %3044 ], [ %2399, %2582 ], [ %2399, %2388 ], [ %2399, %2401 ], [ %3075, %3066 ], [ %3089, %3081 ], [ %2399, %3113 ], [ %3123, %3115 ]
  %3139 = phi float [ %3052, %3044 ], [ %2400, %2582 ], [ %2400, %2388 ], [ %2400, %2401 ], [ %3052, %3066 ], [ %3052, %3081 ], [ %3052, %3113 ], [ %3052, %3115 ]
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.f32 %3142, 0
  %3144 = fmul fast float %3143, %3133
  %3145 = fmul fast float %3143, %3134
  %3146 = fmul fast float %3143, %3135
  %3147 = call float @dx.op.dot2.f32(i32 54, float %3128, float %3129, float %3128, float %3129)  ; Dot2(ax,ay,bx,by)
  %3148 = fmul fast float %3147, 0x3FE3333340000000
  %3149 = fsub fast float 1.000000e+00, %3148
  %3150 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3149, float %3128, float %3129, float %3149)  ; Dot3(ax,ay,az,bx,by,bz)
  %3151 = call float @dx.op.unary.f32(i32 25, float %3150)  ; Rsqrt(value)
  %3152 = fmul fast float %3151, %3128
  %3153 = fmul fast float %3151, %3129
  %3154 = fmul fast float %3149, %3151
  %3155 = fmul fast float %3154, %84
  %3156 = fmul fast float %3154, %85
  %3157 = fmul fast float %3154, %86
  %3158 = fmul fast float %3152, %58
  %3159 = fmul fast float %3152, %59
  %3160 = fmul fast float %3152, %60
  %3161 = fadd fast float %3155, %3158
  %3162 = fadd fast float %3156, %3159
  %3163 = fadd fast float %3157, %3160
  %3164 = fmul fast float %96, %3153
  %3165 = fmul fast float %97, %3153
  %3166 = fmul fast float %98, %3153
  %3167 = fadd fast float %3161, %3164
  %3168 = fadd fast float %3162, %3165
  %3169 = fadd fast float %3163, %3166
  %3170 = call float @dx.op.dot3.f32(i32 55, float %3167, float %3168, float %3169, float %3167, float %3168, float %3169)  ; Dot3(ax,ay,az,bx,by,bz)
  %3171 = call float @dx.op.unary.f32(i32 25, float %3170)  ; Rsqrt(value)
  %3172 = fmul fast float %3167, %3171
  %3173 = fmul fast float %3168, %3171
  %3174 = fmul fast float %3169, %3171
  %3175 = icmp ne i32 %34, 65535
  %3176 = add i32 %33, 476
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3176, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = add i32 %3178, 0
  %3180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3180, %dx.types.Handle %27, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3182 = extractvalue %dx.types.ResRet.f32 %3181, 0
  %3183 = fcmp fast ogt float %3182, 0.000000e+00
  %3184 = and i1 %3175, %3183
  br i1 %3184, label %3185, label %3699

; <label>:3185                                    ; preds = %3127
  %3186 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3187 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3188 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3189 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3190 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3191 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3192 = fadd fast float %3186, %35
  %3193 = fadd fast float %3187, %36
  %3194 = fadd fast float %3188, %37
  %3195 = fadd fast float %3189, %35
  %3196 = fadd fast float %3190, %36
  %3197 = fadd fast float %3191, %37
  %3198 = mul i32 %34, 48
  %3199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.f32 %3199, 0
  %3201 = extractvalue %dx.types.ResRet.f32 %3199, 1
  %3202 = extractvalue %dx.types.ResRet.f32 %3199, 2
  %3203 = add i32 %3198, 16
  %3204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.f32 %3204, 0
  %3206 = extractvalue %dx.types.ResRet.f32 %3204, 1
  %3207 = extractvalue %dx.types.ResRet.f32 %3204, 2
  %3208 = add i32 %3198, 32
  %3209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  %3211 = extractvalue %dx.types.ResRet.f32 %3209, 1
  %3212 = extractvalue %dx.types.ResRet.f32 %3209, 2
  %3213 = extractvalue %dx.types.ResRet.f32 %3209, 3
  %3214 = bitcast float %3213 to i32
  %3215 = fmul fast float %3200, %35
  %3216 = fmul fast float %3201, %36
  %3217 = fmul fast float %3202, %37
  %3218 = fsub fast float %3215, %3205
  %3219 = fsub fast float %3216, %3206
  %3220 = fsub fast float %3217, %3207
  %3221 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3222 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3223 = call float @dx.op.unary.f32(i32 7, float %3220)  ; Saturate(value)
  %3224 = fmul fast float %3221, %3210
  %3225 = fmul fast float %3222, %3211
  %3226 = fmul fast float %3223, %3212
  %3227 = fadd fast float %3210, -1.000000e+00
  %3228 = fadd fast float %3211, -1.000000e+00
  %3229 = fadd fast float %3212, -1.000000e+00
  %3230 = call float @dx.op.unary.f32(i32 27, float %3224)  ; Round_ni(value)
  %3231 = call float @dx.op.unary.f32(i32 27, float %3225)  ; Round_ni(value)
  %3232 = call float @dx.op.unary.f32(i32 27, float %3226)  ; Round_ni(value)
  %3233 = call float @dx.op.binary.f32(i32 36, float %3230, float %3227)  ; FMin(a,b)
  %3234 = call float @dx.op.binary.f32(i32 36, float %3231, float %3228)  ; FMin(a,b)
  %3235 = call float @dx.op.binary.f32(i32 36, float %3232, float %3229)  ; FMin(a,b)
  %3236 = fmul fast float %3235, %3211
  %3237 = fadd fast float %3236, %3234
  %3238 = fmul fast float %3237, %3210
  %3239 = fadd fast float %3238, %3233
  %3240 = fptosi float %3239 to i32
  %3241 = add nsw i32 %3240, %3214
  %3242 = shl nsw i32 %3241, 2
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = lshr i32 %3244, 16
  %3246 = icmp eq i32 %3245, 0
  br i1 %3246, label %3668, label %3247

; <label>:3247                                    ; preds = %3185
  br label %3248

; <label>:3248                                    ; preds = %3369, %3247
  %3249 = phi i32 [ %3271, %3369 ], [ %3245, %3247 ]
  %3250 = phi float [ %3370, %3369 ], [ 0.000000e+00, %3247 ]
  %3251 = phi float [ %3371, %3369 ], [ %3141, %3247 ]
  %3252 = phi float [ %3372, %3369 ], [ %3139, %3247 ]
  %3253 = phi float [ %3373, %3369 ], [ 0.000000e+00, %3247 ]
  %3254 = phi float [ %3374, %3369 ], [ 0.000000e+00, %3247 ]
  %3255 = phi float [ %3375, %3369 ], [ %3144, %3247 ]
  %3256 = phi float [ %3376, %3369 ], [ %3145, %3247 ]
  %3257 = phi float [ %3377, %3369 ], [ %3146, %3247 ]
  %3258 = phi float [ %3378, %3369 ], [ %3172, %3247 ]
  %3259 = phi float [ %3379, %3369 ], [ %3173, %3247 ]
  %3260 = phi float [ %3380, %3369 ], [ %3174, %3247 ]
  %3261 = phi float [ %3381, %3369 ], [ %3138, %3247 ]
  %3262 = phi float [ %3382, %3369 ], [ %3137, %3247 ]
  %3263 = phi float [ %3383, %3369 ], [ 0.000000e+00, %3247 ]
  %3264 = phi float [ %3384, %3369 ], [ %3136, %3247 ]
  %3265 = phi float [ %3385, %3369 ], [ %3130, %3247 ]
  %3266 = phi float [ %3386, %3369 ], [ %3131, %3247 ]
  %3267 = phi float [ %3387, %3369 ], [ %3132, %3247 ]
  %3268 = shl nuw nsw i32 %3249, 2
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = lshr i32 %3270, 16
  %3272 = shl i32 %3270, 8
  %3273 = and i32 %3272, 16776960
  %3274 = or i32 %3273, 48
  %3275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3274, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.f32 %3275, 0
  %3277 = extractvalue %dx.types.ResRet.f32 %3275, 1
  %3278 = extractvalue %dx.types.ResRet.f32 %3275, 2
  %3279 = or i32 %3273, 64
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.i32 %3280, 1
  %3283 = or i32 %3273, 80
  %3284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 2
  %3286 = extractvalue %dx.types.ResRet.f32 %3284, 3
  %3287 = or i32 %3273, 96
  %3288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.ResRet.f32 %3288, 1
  %3291 = extractvalue %dx.types.ResRet.f32 %3288, 2
  %3292 = extractvalue %dx.types.ResRet.f32 %3288, 3
  %3293 = or i32 %3273, 112
  %3294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.f32 %3294, 2
  %3296 = or i32 %3273, 128
  %3297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = extractvalue %dx.types.ResRet.f32 %3297, 3
  %3302 = or i32 %3273, 144
  %3303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.ResRet.f32 %3303, 1
  %3306 = extractvalue %dx.types.ResRet.f32 %3303, 2
  %3307 = extractvalue %dx.types.ResRet.f32 %3303, 3
  %3308 = or i32 %3273, 160
  %3309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.ResRet.f32 %3309, 1
  %3312 = extractvalue %dx.types.ResRet.f32 %3309, 2
  %3313 = extractvalue %dx.types.ResRet.f32 %3309, 3
  %3314 = or i32 %3273, 192
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = or i32 %3273, 208
  %3318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = or i32 %3273, 248
  %3321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.ResRet.f32 %3324, 2
  %3328 = extractvalue %dx.types.ResRet.f32 %3324, 3
  %3329 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %35, float %36, float %37, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3330 = or i32 %3273, 16
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %35, float %36, float %37, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3337 = or i32 %3273, 32
  %3338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = extractvalue %dx.types.ResRet.f32 %3338, 3
  %3343 = call float @dx.op.dot4.f32(i32 56, float %3339, float %3340, float %3341, float %3342, float %35, float %36, float %37, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3344 = call float @dx.op.unary.f32(i32 27, float %3329)  ; Round_ni(value)
  %3345 = call float @dx.op.unary.f32(i32 6, float %3344)  ; FAbs(value)
  %3346 = call float @dx.op.unary.f32(i32 27, float %3336)  ; Round_ni(value)
  %3347 = call float @dx.op.unary.f32(i32 6, float %3346)  ; FAbs(value)
  %3348 = call float @dx.op.unary.f32(i32 6, float %3343)  ; FAbs(value)
  %3349 = call float @dx.op.unary.f32(i32 27, float %3348)  ; Round_ni(value)
  %3350 = fadd fast float %3347, %3345
  %3351 = fadd fast float %3350, %3349
  %3352 = fcmp fast oeq float %3351, 0.000000e+00
  %3353 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %3192, float %3193, float %3194, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3354 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %3192, float %3193, float %3194, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3355 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %3195, float %3196, float %3197, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3356 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %3195, float %3196, float %3197, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3357 = fsub fast float %3353, %3329
  %3358 = fsub fast float %3355, %3329
  %3359 = fsub fast float %3354, %3336
  %3360 = fsub fast float %3356, %3336
  %3361 = call float @dx.op.dot3.f32(i32 55, float %3276, float %3277, float %3278, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %3362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3362, 2
  %3364 = fadd fast float %3363, %3361
  %3365 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3366 = extractvalue %dx.types.CBufRet.f32 %3362, 0
  %3367 = fcmp fast ogt float %3365, %3366
  %3368 = and i1 %3352, %3367
  br i1 %3368, label %3389, label %3369

; <label>:3369                                    ; preds = %3654, %3472, %3389, %3248
  %3370 = phi float [ %3250, %3389 ], [ %3475, %3472 ], [ %3475, %3654 ], [ %3250, %3248 ]
  %3371 = phi float [ %3251, %3389 ], [ %3251, %3472 ], [ %3629, %3654 ], [ %3251, %3248 ]
  %3372 = phi float [ %3252, %3389 ], [ %3252, %3472 ], [ %3627, %3654 ], [ %3252, %3248 ]
  %3373 = phi float [ %3253, %3389 ], [ %3253, %3472 ], [ %3599, %3654 ], [ %3253, %3248 ]
  %3374 = phi float [ %3254, %3389 ], [ %3254, %3472 ], [ %3597, %3654 ], [ %3254, %3248 ]
  %3375 = phi float [ %3255, %3389 ], [ %3255, %3472 ], [ %3664, %3654 ], [ %3255, %3248 ]
  %3376 = phi float [ %3256, %3389 ], [ %3256, %3472 ], [ %3665, %3654 ], [ %3256, %3248 ]
  %3377 = phi float [ %3257, %3389 ], [ %3257, %3472 ], [ %3666, %3654 ], [ %3257, %3248 ]
  %3378 = phi float [ %3258, %3389 ], [ %3258, %3472 ], [ %3578, %3654 ], [ %3258, %3248 ]
  %3379 = phi float [ %3259, %3389 ], [ %3259, %3472 ], [ %3579, %3654 ], [ %3259, %3248 ]
  %3380 = phi float [ %3260, %3389 ], [ %3260, %3472 ], [ %3580, %3654 ], [ %3260, %3248 ]
  %3381 = phi float [ %3261, %3389 ], [ %3261, %3472 ], [ %3607, %3654 ], [ %3261, %3248 ]
  %3382 = phi float [ %3262, %3389 ], [ %3262, %3472 ], [ %3604, %3654 ], [ %3262, %3248 ]
  %3383 = phi float [ %3263, %3389 ], [ %3263, %3472 ], [ %3601, %3654 ], [ %3263, %3248 ]
  %3384 = phi float [ %3264, %3389 ], [ %3264, %3472 ], [ %3595, %3654 ], [ %3264, %3248 ]
  %3385 = phi float [ %3265, %3389 ], [ %3265, %3472 ], [ %3590, %3654 ], [ %3265, %3248 ]
  %3386 = phi float [ %3266, %3389 ], [ %3266, %3472 ], [ %3591, %3654 ], [ %3266, %3248 ]
  %3387 = phi float [ %3267, %3389 ], [ %3267, %3472 ], [ %3592, %3654 ], [ %3267, %3248 ]
  %3388 = icmp eq i32 %3271, 0
  br i1 %3388, label %3667, label %3248

; <label>:3389                                    ; preds = %3248
  %3390 = extractvalue %dx.types.ResRet.f32 %3275, 3
  %3391 = extractvalue %dx.types.ResRet.f32 %3294, 3
  %3392 = extractvalue %dx.types.ResRet.f32 %3294, 1
  %3393 = extractvalue %dx.types.ResRet.f32 %3294, 0
  %3394 = extractvalue %dx.types.ResRet.f32 %3284, 1
  %3395 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3396 = extractvalue %dx.types.ResRet.i32 %3280, 3
  %3397 = extractvalue %dx.types.ResRet.i32 %3280, 2
  %3398 = bitcast float %3390 to i32
  %3399 = add i32 %3396, 0
  %3400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3399, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3402 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3400, %dx.types.Handle %3401, float %3329, float %3336, float undef, float undef, i32 0, i32 0, i32 undef, float %3357, float %3359, float undef, float %3358, float %3360, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3403 = extractvalue %dx.types.ResRet.f32 %3402, 0
  %3404 = fmul fast float %3403, %3395
  %3405 = fadd fast float %3404, %3394
  %3406 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  %3407 = fmul fast float %3329, %3289
  %3408 = call float @dx.op.tertiary.f32(i32 46, float %3290, float %3336, float %3407)  ; FMad(a,b,c)
  %3409 = fadd fast float %3408, %3393
  %3410 = fmul fast float %3329, %3291
  %3411 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3336, float %3410)  ; FMad(a,b,c)
  %3412 = fadd fast float %3411, %3392
  %3413 = fmul fast float %3357, %3289
  %3414 = call float @dx.op.tertiary.f32(i32 46, float %3290, float %3359, float %3413)  ; FMad(a,b,c)
  %3415 = fmul fast float %3357, %3291
  %3416 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3359, float %3415)  ; FMad(a,b,c)
  %3417 = fmul fast float %3358, %3289
  %3418 = call float @dx.op.tertiary.f32(i32 46, float %3290, float %3360, float %3417)  ; FMad(a,b,c)
  %3419 = fmul fast float %3358, %3291
  %3420 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3360, float %3419)  ; FMad(a,b,c)
  %3421 = add i32 %3397, 0
  %3422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3421, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3423 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3422, %dx.types.Handle %3401, float %3409, float %3412, float undef, float undef, i32 0, i32 0, i32 undef, float %3414, float %3416, float undef, float %3418, float %3420, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = and i32 %3398, 1024
  %3426 = icmp ne i32 %3425, 0
  %3427 = fcmp fast ogt float %3424, 0x3FE0101020000000
  %3428 = uitofp i1 %3427 to float
  %3429 = select i1 %3426, float %3428, float %3424
  %3430 = and i32 %3398, 8192
  %3431 = icmp ne i32 %3430, 0
  %3432 = select i1 %3431, float %3391, float 1.000000e+00
  %3433 = fmul fast float %3329, 2.000000e+00
  %3434 = fadd fast float %3433, -1.000000e+00
  %3435 = call float @dx.op.unary.f32(i32 6, float %3434)  ; FAbs(value)
  %3436 = fmul fast float %3435, %3322
  %3437 = fsub fast float %3436, %3322
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3439 = fmul fast float %3336, 2.000000e+00
  %3440 = fadd fast float %3439, -1.000000e+00
  %3441 = call float @dx.op.unary.f32(i32 6, float %3440)  ; FAbs(value)
  %3442 = fmul fast float %3441, %3323
  %3443 = fsub fast float %3442, %3323
  %3444 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  %3445 = fmul fast float %3348, %3285
  %3446 = fsub fast float %3445, %3285
  %3447 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3448 = fmul fast float %3406, %3432
  %3449 = fmul fast float %3448, %3403
  %3450 = fmul fast float %3449, %3438
  %3451 = fmul fast float %3450, %3429
  %3452 = fmul fast float %3451, %3444
  %3453 = fmul fast float %3452, %3447
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 1
  %3456 = extractvalue %dx.types.CBufRet.f32 %3454, 0
  %3457 = fsub fast float %3365, %3456
  %3458 = fmul fast float %3457, %3455
  %3459 = call float @dx.op.unary.f32(i32 7, float %3458)  ; Saturate(value)
  %3460 = fmul fast float %3453, %3286
  %3461 = fadd fast float %3453, %3286
  %3462 = fmul fast float %3461, %3295
  %3463 = fsub fast float %3462, %3295
  %3464 = call float @dx.op.unary.f32(i32 7, float %3463)  ; Saturate(value)
  %3465 = and i32 %3398, 128
  %3466 = icmp ne i32 %3465, 0
  %3467 = select i1 %3466, float %3464, float %3460
  %3468 = fmul fast float %3467, %3459
  %3469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3470 = extractvalue %dx.types.CBufRet.f32 %3469, 0
  %3471 = fcmp fast ugt float %3468, %3470
  br i1 %3471, label %3472, label %3369

; <label>:3472                                    ; preds = %3389
  %3473 = select i1 %3431, float %3468, float 0.000000e+00
  %3474 = fadd fast float %3473, %3250
  %3475 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  br i1 %3431, label %3369, label %3476

; <label>:3476                                    ; preds = %3472
  %3477 = and i32 %3398, 4
  %3478 = and i32 %3398, 8
  %3479 = add i32 %3281, 0
  %3480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3479, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3482 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3480, %dx.types.Handle %3481, float %3409, float %3412, float undef, float undef, i32 0, i32 0, i32 undef, float %3414, float %3416, float undef, float %3418, float %3420, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3483 = extractvalue %dx.types.ResRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.ResRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.ResRet.f32 %3482, 2
  %3486 = extractvalue %dx.types.ResRet.f32 %3482, 3
  %3487 = bitcast float %3307 to i32
  %3488 = and i32 %3487, 255
  %3489 = uitofp i32 %3488 to float
  %3490 = lshr i32 %3487, 8
  %3491 = and i32 %3490, 255
  %3492 = uitofp i32 %3491 to float
  %3493 = fmul fast float %3486, %3489
  %3494 = fadd fast float %3493, %3492
  %3495 = fmul fast float %3494, 0x3F70101000000000
  %3496 = add i32 %3282, 0
  %3497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3496, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3498 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3497, %dx.types.Handle %3481, float %3409, float %3412, float undef, float undef, i32 0, i32 0, i32 undef, float %3414, float %3416, float undef, float %3418, float %3420, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = extractvalue %dx.types.ResRet.f32 %3498, 3
  %3503 = bitcast float %3301 to i32
  %3504 = and i32 %3503, 255
  %3505 = uitofp i32 %3504 to float
  %3506 = lshr i32 %3503, 8
  %3507 = and i32 %3506, 255
  %3508 = uitofp i32 %3507 to float
  %3509 = lshr i32 %3503, 16
  %3510 = and i32 %3509, 255
  %3511 = uitofp i32 %3510 to float
  %3512 = fmul fast float %3511, 0x3F70101000000000
  %3513 = fmul fast float %3499, %3505
  %3514 = fadd fast float %3513, %3508
  %3515 = fmul fast float %3514, 0x3F70101000000000
  %3516 = fadd fast float %3500, -5.000000e-01
  %3517 = fadd fast float %3502, -5.000000e-01
  %3518 = fmul fast float %3516, %3512
  %3519 = fmul fast float %3517, %3512
  %3520 = fadd fast float %3518, 5.000000e-01
  %3521 = fadd fast float %3519, 5.000000e-01
  %3522 = fmul fast float %3483, %3310
  %3523 = fmul fast float %3484, %3311
  %3524 = fmul fast float %3485, %3312
  %3525 = fmul fast float %3520, 2.000000e+00
  %3526 = fadd fast float %3525, -1.000000e+00
  %3527 = fmul fast float %3521, 2.000000e+00
  %3528 = fadd fast float %3527, -1.000000e+00
  %3529 = fadd fast float %3526, %3528
  %3530 = fmul fast float %3529, 5.000000e-01
  %3531 = fsub fast float %3526, %3528
  %3532 = fmul fast float %3531, 5.000000e-01
  %3533 = call float @dx.op.unary.f32(i32 6, float %3530)  ; FAbs(value)
  %3534 = fsub fast float 1.000000e+00, %3533
  %3535 = call float @dx.op.unary.f32(i32 6, float %3532)  ; FAbs(value)
  %3536 = fsub fast float %3534, %3535
  %3537 = call float @dx.op.dot3.f32(i32 55, float %3530, float %3532, float %3536, float %3530, float %3532, float %3536)  ; Dot3(ax,ay,az,bx,by,bz)
  %3538 = call float @dx.op.unary.f32(i32 25, float %3537)  ; Rsqrt(value)
  %3539 = fmul fast float %3530, %3538
  %3540 = fmul fast float %3532, %3538
  %3541 = fmul fast float %3538, %3536
  %3542 = fmul fast float %3541, %3276
  %3543 = fmul fast float %3541, %3277
  %3544 = fmul fast float %3541, %3278
  %3545 = fmul fast float %3539, %3298
  %3546 = fmul fast float %3539, %3299
  %3547 = fmul fast float %3539, %3300
  %3548 = fadd fast float %3545, %3542
  %3549 = fadd fast float %3546, %3543
  %3550 = fadd fast float %3547, %3544
  %3551 = fmul fast float %3540, %3304
  %3552 = fmul fast float %3540, %3305
  %3553 = fmul fast float %3540, %3306
  %3554 = fadd fast float %3548, %3551
  %3555 = fadd fast float %3549, %3552
  %3556 = fadd fast float %3550, %3553
  %3557 = call float @dx.op.dot3.f32(i32 55, float %3554, float %3555, float %3556, float %3554, float %3555, float %3556)  ; Dot3(ax,ay,az,bx,by,bz)
  %3558 = call float @dx.op.unary.f32(i32 25, float %3557)  ; Rsqrt(value)
  %3559 = fmul fast float %3554, %3558
  %3560 = fmul fast float %3555, %3558
  %3561 = fmul fast float %3556, %3558
  %3562 = icmp ne i32 %3478, 0
  %3563 = select i1 %3562, float 1.000000e+00, float 0.000000e+00
  %3564 = fmul fast float %3468, %3563
  %3565 = and i32 %3398, 1
  %3566 = icmp eq i32 %3565, 0
  br i1 %3566, label %3567, label %3571

; <label>:3567                                    ; preds = %3476
  %3568 = fsub fast float %3559, %3258
  %3569 = fsub fast float %3560, %3259
  %3570 = fsub fast float %3561, %3260
  br label %3571

; <label>:3571                                    ; preds = %3567, %3476
  %3572 = phi float [ %3568, %3567 ], [ %3559, %3476 ]
  %3573 = phi float [ %3569, %3567 ], [ %3560, %3476 ]
  %3574 = phi float [ %3570, %3567 ], [ %3561, %3476 ]
  %3575 = fmul float %3574, %3564
  %3576 = fmul float %3573, %3564
  %3577 = fmul float %3572, %3564
  %3578 = fadd fast float %3577, %3258
  %3579 = fadd fast float %3576, %3259
  %3580 = fadd fast float %3575, %3260
  %3581 = icmp ne i32 %3477, 0
  %3582 = select i1 %3581, float 1.000000e+00, float 0.000000e+00
  %3583 = fmul fast float %3468, %3582
  %3584 = fsub fast float %3522, %3265
  %3585 = fsub fast float %3523, %3266
  %3586 = fsub fast float %3524, %3267
  %3587 = fmul fast float %3584, %3583
  %3588 = fmul fast float %3585, %3583
  %3589 = fmul fast float %3586, %3583
  %3590 = fadd fast float %3587, %3265
  %3591 = fadd fast float %3588, %3266
  %3592 = fadd fast float %3589, %3267
  %3593 = fsub fast float %3495, %3264
  %3594 = fmul fast float %3593, %3583
  %3595 = fadd fast float %3594, %3264
  %3596 = fmul fast float %3583, %3254
  %3597 = fsub fast float %3254, %3596
  %3598 = fmul fast float %3583, %3253
  %3599 = fsub fast float %3253, %3598
  %3600 = fadd fast float %3468, %3263
  %3601 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3602 = fsub fast float %3515, %3262
  %3603 = fmul fast float %3602, %3564
  %3604 = fadd fast float %3603, %3262
  %3605 = fsub fast float %3501, %3261
  %3606 = fmul fast float %3605, %3564
  %3607 = fadd fast float %3606, %3261
  %3608 = call float @dx.op.dot3.f32(i32 55, float %3522, float %3523, float %3524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.CBufRet.f32 %3609, 1
  %3612 = fmul fast float %3611, %3608
  %3613 = fadd fast float %3612, %3610
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = bitcast float %3313 to i32
  %3616 = and i32 %3615, 65535
  %3617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3616)  ; LegacyF16ToF32(value)
  %3618 = lshr i32 %3615, 16
  %3619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3618)  ; LegacyF16ToF32(value)
  %3620 = fcmp fast oge float %3617, 0.000000e+00
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = select i1 %3620, float %3617, float %3622
  %3624 = fadd fast float %3623, %3619
  %3625 = fsub fast float %3614, %3252
  %3626 = fmul fast float %3625, %3468
  %3627 = fadd fast float %3626, %3252
  %3628 = fmul fast float %3624, %3468
  %3629 = call float @dx.op.binary.f32(i32 35, float %3251, float %3628)  ; FMax(a,b)
  %3630 = and i32 %3398, 16
  %3631 = icmp eq i32 %3630, 0
  br i1 %3631, label %3654, label %3632

; <label>:3632                                    ; preds = %3571
  %3633 = bitcast float %3319 to i32
  %3634 = add i32 %3316, 0
  %3635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3634, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3636 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3635, %dx.types.Handle %3481, float %3409, float %3412, float undef, float undef, i32 0, i32 0, i32 undef, float %3414, float %3416, float undef, float %3418, float %3420, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = and i32 %3633, 65535
  %3641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3640)  ; LegacyF16ToF32(value)
  %3642 = fmul fast float %3637, %3310
  %3643 = fmul fast float %3638, %3311
  %3644 = fmul fast float %3639, %3312
  %3645 = and i32 %3398, 16384
  %3646 = icmp ne i32 %3645, 0
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = select i1 %3646, float %3648, float 1.000000e+00
  %3650 = fmul fast float %3649, %3641
  %3651 = fmul fast float %3642, %3650
  %3652 = fmul fast float %3643, %3650
  %3653 = fmul fast float %3644, %3650
  br label %3654

; <label>:3654                                    ; preds = %3632, %3571
  %3655 = phi float [ %3651, %3632 ], [ 0.000000e+00, %3571 ]
  %3656 = phi float [ %3652, %3632 ], [ 0.000000e+00, %3571 ]
  %3657 = phi float [ %3653, %3632 ], [ 0.000000e+00, %3571 ]
  %3658 = fsub fast float %3655, %3255
  %3659 = fsub fast float %3656, %3256
  %3660 = fsub fast float %3657, %3257
  %3661 = fmul fast float %3658, %3468
  %3662 = fmul fast float %3659, %3468
  %3663 = fmul fast float %3660, %3468
  %3664 = fadd fast float %3661, %3255
  %3665 = fadd fast float %3662, %3256
  %3666 = fadd fast float %3663, %3257
  br label %3369

; <label>:3667                                    ; preds = %3369
  br label %3668

; <label>:3668                                    ; preds = %3667, %3185
  %3669 = phi float [ 0.000000e+00, %3185 ], [ %3370, %3667 ]
  %3670 = phi float [ %3141, %3185 ], [ %3371, %3667 ]
  %3671 = phi float [ %3139, %3185 ], [ %3372, %3667 ]
  %3672 = phi float [ 0.000000e+00, %3185 ], [ %3373, %3667 ]
  %3673 = phi float [ 0.000000e+00, %3185 ], [ %3374, %3667 ]
  %3674 = phi float [ %3144, %3185 ], [ %3375, %3667 ]
  %3675 = phi float [ %3145, %3185 ], [ %3376, %3667 ]
  %3676 = phi float [ %3146, %3185 ], [ %3377, %3667 ]
  %3677 = phi float [ %3172, %3185 ], [ %3378, %3667 ]
  %3678 = phi float [ %3173, %3185 ], [ %3379, %3667 ]
  %3679 = phi float [ %3174, %3185 ], [ %3380, %3667 ]
  %3680 = phi float [ %3138, %3185 ], [ %3381, %3667 ]
  %3681 = phi float [ %3137, %3185 ], [ %3382, %3667 ]
  %3682 = phi float [ 0.000000e+00, %3185 ], [ %3383, %3667 ]
  %3683 = phi float [ %3136, %3185 ], [ %3384, %3667 ]
  %3684 = phi float [ %3130, %3185 ], [ %3385, %3667 ]
  %3685 = phi float [ %3131, %3185 ], [ %3386, %3667 ]
  %3686 = phi float [ %3132, %3185 ], [ %3387, %3667 ]
  %3687 = call float @dx.op.dot3.f32(i32 55, float %3677, float %3678, float %3679, float %3677, float %3678, float %3679)  ; Dot3(ax,ay,az,bx,by,bz)
  %3688 = call float @dx.op.unary.f32(i32 25, float %3687)  ; Rsqrt(value)
  %3689 = fmul fast float %3688, %3677
  %3690 = fmul fast float %3688, %3678
  %3691 = fmul fast float %3688, %3679
  %3692 = fadd fast float %3682, %919
  %3693 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3694 = call float @dx.op.dot3.f32(i32 55, float %3689, float %3690, float %3691, float %3689, float %3690, float %3691)  ; Dot3(ax,ay,az,bx,by,bz)
  %3695 = call float @dx.op.unary.f32(i32 25, float %3694)  ; Rsqrt(value)
  %3696 = fmul fast float %3695, %3689
  %3697 = fmul fast float %3695, %3690
  %3698 = fmul fast float %3695, %3691
  br label %3699

; <label>:3699                                    ; preds = %3668, %3127
  %3700 = phi float [ %3696, %3668 ], [ %3172, %3127 ]
  %3701 = phi float [ %3697, %3668 ], [ %3173, %3127 ]
  %3702 = phi float [ %3698, %3668 ], [ %3174, %3127 ]
  %3703 = phi float [ %3684, %3668 ], [ %3130, %3127 ]
  %3704 = phi float [ %3685, %3668 ], [ %3131, %3127 ]
  %3705 = phi float [ %3686, %3668 ], [ %3132, %3127 ]
  %3706 = phi float [ %3674, %3668 ], [ %3144, %3127 ]
  %3707 = phi float [ %3675, %3668 ], [ %3145, %3127 ]
  %3708 = phi float [ %3676, %3668 ], [ %3146, %3127 ]
  %3709 = phi float [ %3683, %3668 ], [ %3136, %3127 ]
  %3710 = phi float [ %3693, %3668 ], [ %919, %3127 ]
  %3711 = phi float [ %3681, %3668 ], [ %3137, %3127 ]
  %3712 = phi float [ %3680, %3668 ], [ %3138, %3127 ]
  %3713 = phi float [ %3673, %3668 ], [ 0.000000e+00, %3127 ]
  %3714 = phi float [ %3672, %3668 ], [ 0.000000e+00, %3127 ]
  %3715 = phi float [ %3669, %3668 ], [ 0.000000e+00, %3127 ]
  %3716 = phi float [ %3670, %3668 ], [ %3141, %3127 ]
  %3717 = phi float [ %3671, %3668 ], [ %3139, %3127 ]
  %3718 = fadd fast float %3709, 0xBFB99999A0000000
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = fmul fast float %3719, 0x3FF1C71C80000000
  %3721 = call float @dx.op.binary.f32(i32 36, float %3709, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3722 = fsub fast float 1.000000e+00, %3720
  %3723 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3724 = fmul fast float %3723, %3703
  %3725 = fmul fast float %3723, %3704
  %3726 = fmul fast float %3723, %3705
  %3727 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3728 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3729 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3730 = fmul fast float %3720, %3703
  %3731 = fmul fast float %3720, %3704
  %3732 = fmul fast float %3720, %3705
  %3733 = fadd fast float %3730, %3721
  %3734 = fadd fast float %3731, %3721
  %3735 = fadd fast float %3732, %3721
  %3736 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3737 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3738 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  %3739 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.i32 %3740, 3
  %3742 = and i32 %3741, 8
  %3743 = icmp ne i32 %3742, 0
  %3744 = call float @dx.op.binary.f32(i32 35, float %3727, float %3703)  ; FMax(a,b)
  %3745 = call float @dx.op.binary.f32(i32 35, float %3728, float %3703)  ; FMax(a,b)
  %3746 = call float @dx.op.binary.f32(i32 35, float %3729, float %3703)  ; FMax(a,b)
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3727, float %3728, float %3729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = select i1 %203, float %3703, float %3727
  %3749 = select i1 %203, float %3747, float %3728
  %3750 = select i1 %203, float 1.000000e+00, float %3729
  %3751 = select i1 %3743, float %3744, float %3748
  %3752 = select i1 %3743, float %3745, float %3749
  %3753 = select i1 %3743, float %3746, float %3750
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.CBufRet.f32 %3754, 1
  %3757 = extractvalue %dx.types.CBufRet.f32 %3754, 2
  %3758 = fadd fast float %3755, %164
  %3759 = fadd fast float %3756, %165
  %3760 = fadd fast float %3757, %166
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3764 = fsub fast float %3758, %3762
  %3765 = fsub fast float %3759, %3763
  %3766 = fmul fast float %3764, %3764
  %3767 = fmul fast float %3765, %3765
  %3768 = fadd fast float %3766, %3767
  %3769 = call float @dx.op.unary.f32(i32 24, float %3768)  ; Sqrt(value)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3761, 2
  %3771 = fcmp fast olt float %3769, %3770
  br i1 %3771, label %3772, label %3839

; <label>:3772                                    ; preds = %3699
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 0
  %3779 = extractvalue %dx.types.CBufRet.f32 %3773, 1
  %3780 = extractvalue %dx.types.CBufRet.f32 %3775, 1
  %3781 = extractvalue %dx.types.CBufRet.f32 %3777, 1
  %3782 = extractvalue %dx.types.CBufRet.f32 %3773, 3
  %3783 = extractvalue %dx.types.CBufRet.f32 %3775, 3
  %3784 = extractvalue %dx.types.CBufRet.f32 %3777, 3
  %3785 = fadd fast float %3782, %3758
  %3786 = fadd fast float %3783, %3759
  %3787 = fadd fast float %3784, %3760
  %3788 = fmul fast float %3785, %3774
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3786, float %3776, float %3788)  ; FMad(a,b,c)
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3787, float %3778, float %3789)  ; FMad(a,b,c)
  %3791 = fmul fast float %3785, %3779
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3786, float %3780, float %3791)  ; FMad(a,b,c)
  %3793 = call float @dx.op.tertiary.f32(i32 46, float %3787, float %3781, float %3792)  ; FMad(a,b,c)
  %3794 = fsub fast float %3790, %3782
  %3795 = fsub fast float %3793, %3783
  %3796 = fsub fast float %3794, %3762
  %3797 = fadd fast float %3796, %3770
  %3798 = fsub fast float %3795, %3763
  %3799 = fadd fast float %3798, %3770
  %3800 = extractvalue %dx.types.CBufRet.f32 %3761, 3
  %3801 = fmul fast float %3797, %3800
  %3802 = fmul fast float %3799, %3800
  %3803 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3804 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3805 = fsub fast float 1.000000e+00, %3803
  %3806 = fsub fast float 1.000000e+00, %3804
  %3807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3805, float %3806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = fcmp fast ugt float %3808, 0.000000e+00
  br i1 %3809, label %3810, label %4113

; <label>:3810                                    ; preds = %3772
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 2
  %3813 = fmul fast float %3812, %3808
  %3814 = extractvalue %dx.types.CBufRet.f32 %3811, 3
  %3815 = fadd fast float %3814, %3813
  %3816 = extractvalue %dx.types.CBufRet.f32 %3777, 2
  %3817 = fadd fast float %3815, %3784
  %3818 = fmul fast float %3790, %3778
  %3819 = call float @dx.op.tertiary.f32(i32 46, float %3793, float %3781, float %3818)  ; FMad(a,b,c)
  %3820 = call float @dx.op.tertiary.f32(i32 46, float %3817, float %3816, float %3819)  ; FMad(a,b,c)
  %3821 = fsub fast float %3820, %3784
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 2
  %3824 = fsub fast float %3821, %3823
  %3825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3805, float %3806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3826 = extractvalue %dx.types.ResRet.f32 %3825, 0
  %3827 = extractvalue %dx.types.ResRet.f32 %3825, 1
  %3828 = extractvalue %dx.types.ResRet.f32 %3825, 2
  %3829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %3805, float %3806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3833 = fadd fast float %3830, %3826
  %3834 = fmul fast float %3833, 0x3F847AE140000000
  %3835 = fadd fast float %3831, %3827
  %3836 = fmul fast float %3835, 0x3F847AE140000000
  %3837 = fadd fast float %3832, %3828
  %3838 = fmul fast float %3837, 0x3F847AE140000000
  br label %4113

; <label>:3839                                    ; preds = %3699
  %3840 = and i32 %182, 1
  %3841 = icmp eq i32 %3840, 0
  br i1 %3841, label %4113, label %3842

; <label>:3842                                    ; preds = %3839
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 0
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 0
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.CBufRet.f32 %3843, 1
  %3850 = extractvalue %dx.types.CBufRet.f32 %3845, 1
  %3851 = extractvalue %dx.types.CBufRet.f32 %3847, 1
  %3852 = extractvalue %dx.types.CBufRet.f32 %3843, 3
  %3853 = extractvalue %dx.types.CBufRet.f32 %3845, 3
  %3854 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3855 = fadd fast float %3852, %3758
  %3856 = fadd fast float %3853, %3759
  %3857 = fadd fast float %3854, %3760
  %3858 = fmul fast float %3855, %3844
  %3859 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3846, float %3858)  ; FMad(a,b,c)
  %3860 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3848, float %3859)  ; FMad(a,b,c)
  %3861 = fmul fast float %3855, %3849
  %3862 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3850, float %3861)  ; FMad(a,b,c)
  %3863 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3851, float %3862)  ; FMad(a,b,c)
  %3864 = fsub fast float %3860, %3852
  %3865 = fsub fast float %3863, %3853
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.CBufRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.CBufRet.f32 %3866, 2
  %3870 = extractvalue %dx.types.CBufRet.f32 %3866, 3
  %3871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3871, 3
  %3873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.i32 %3873, 0
  %3875 = extractvalue %dx.types.CBufRet.i32 %3873, 1
  %3876 = udiv i32 %3875, %3874
  %3877 = fsub fast float %3864, %3867
  %3878 = fsub fast float %3865, %3868
  %3879 = call float @dx.op.binary.f32(i32 35, float %3877, float 0.000000e+00)  ; FMax(a,b)
  %3880 = call float @dx.op.binary.f32(i32 35, float %3878, float 0.000000e+00)  ; FMax(a,b)
  %3881 = call float @dx.op.binary.f32(i32 36, float %3879, float %3869)  ; FMin(a,b)
  %3882 = call float @dx.op.binary.f32(i32 36, float %3880, float %3870)  ; FMin(a,b)
  %3883 = add i32 %3874, -1
  %3884 = add i32 %3876, -1
  %3885 = fmul fast float %3881, %3872
  %3886 = fmul fast float %3882, %3872
  %3887 = fptoui float %3885 to i32
  %3888 = fptoui float %3886 to i32
  %3889 = call i32 @dx.op.binary.i32(i32 40, i32 %3887, i32 %3883)  ; UMin(a,b)
  %3890 = call i32 @dx.op.binary.i32(i32 40, i32 %3888, i32 %3884)  ; UMin(a,b)
  %3891 = mul i32 %3890, %3874
  %3892 = add i32 %3891, %3889
  %3893 = shl i32 %3892, 2
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = icmp eq i32 %3895, -1
  br i1 %3896, label %4113, label %3897

; <label>:3897                                    ; preds = %3842
  %3898 = mul i32 %3895, 148
  %3899 = add i32 %3898, 4
  %3900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = add i32 %3898, 8
  %3903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = add i32 %3898, 36
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = add i32 %3898, 60
  %3909 = add i32 %3898, 92
  %3910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.i32 %3910, 0
  %3912 = add i32 %3898, 116
  %3913 = fsub fast float %3864, %3901
  %3914 = fsub fast float %3865, %3904
  %3915 = fmul fast float %3872, %3913
  %3916 = fmul fast float %3872, %3914
  %3917 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3918 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3919 = fsub fast float 1.000000e+00, %3918
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 2
  %3922 = call float @dx.op.unary.f32(i32 83, float %3917)  ; DerivCoarseX(value)
  %3923 = call float @dx.op.unary.f32(i32 83, float %3919)  ; DerivCoarseX(value)
  %3924 = call float @dx.op.unary.f32(i32 84, float %3917)  ; DerivCoarseY(value)
  %3925 = call float @dx.op.unary.f32(i32 84, float %3919)  ; DerivCoarseY(value)
  %3926 = fmul fast float %3922, %3921
  %3927 = fmul fast float %3923, %3921
  %3928 = fmul fast float %3924, %3921
  %3929 = fmul fast float %3925, %3921
  %3930 = call float @dx.op.dot2.f32(i32 54, float %3928, float %3929, float %3928, float %3929)  ; Dot2(ax,ay,bx,by)
  %3931 = call float @dx.op.dot2.f32(i32 54, float %3926, float %3927, float %3926, float %3927)  ; Dot2(ax,ay,bx,by)
  %3932 = call float @dx.op.binary.f32(i32 35, float %3931, float %3930)  ; FMax(a,b)
  %3933 = call float @dx.op.unary.f32(i32 23, float %3932)  ; Log(value)
  %3934 = fmul fast float %3933, 5.000000e-01
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 1
  %3937 = fadd fast float %3936, %3934
  %3938 = call float @dx.op.binary.f32(i32 35, float %3937, float 0.000000e+00)  ; FMax(a,b)
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 3
  %3941 = fadd fast float %3940, %3938
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 3
  %3944 = fadd fast float %3941, %3943
  %3945 = add i32 %3911, 0
  %3946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3945, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3947 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3946, i32 0)  ; GetDimensions(handle,mipLevel)
  %3948 = extractvalue %dx.types.Dimensions %3947, 0
  %3949 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3948)  ; FirstbitLo(value)
  %3950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.i32 %3950, 1
  %3952 = sub nsw i32 %3951, %3949
  %3953 = sitofp i32 %3952 to float
  %3954 = fsub fast float %3944, %3953
  %3955 = call float @dx.op.binary.f32(i32 35, float %3954, float 0.000000e+00)  ; FMax(a,b)
  %3956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3946, %dx.types.Handle %28, float %3917, float %3919, float %3907, float undef, i32 0, i32 0, i32 undef, float %3955)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = fcmp ule float %3957, 0x3FE0101020000000
  %3959 = extractvalue %dx.types.CBufRet.i32 %3950, 0
  %3960 = and i32 %3959, 128
  %3961 = icmp ne i32 %3960, 0
  %3962 = and i1 %3958, %3961
  br i1 %3962, label %4113, label %3963

; <label>:3963                                    ; preds = %3897
  %3964 = add i32 %3898, 20
  %3965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = add i32 %3898, 24
  %3968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.f32 %3968, 0
  %3970 = add i32 %3898, 40
  %3971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = add i32 %3898, 96
  %3974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.i32 %3974, 0
  %3976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3976, 2
  %3978 = fmul fast float %3977, %3917
  %3979 = fmul fast float %3977, %3919
  %3980 = extractvalue %dx.types.CBufRet.f32 %3976, 3
  %3981 = fadd fast float %3978, %3980
  %3982 = fadd fast float %3979, %3980
  %3983 = add i32 %3975, 0
  %3984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3983, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3985 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3984, i32 0)  ; GetDimensions(handle,mipLevel)
  %3986 = extractvalue %dx.types.Dimensions %3985, 0
  %3987 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3986)  ; FirstbitLo(value)
  %3988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.i32 %3988, 1
  %3990 = sub nsw i32 %3989, %3987
  %3991 = sitofp i32 %3990 to float
  %3992 = fsub fast float %3941, %3991
  %3993 = call float @dx.op.binary.f32(i32 35, float %3992, float 0.000000e+00)  ; FMax(a,b)
  %3994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3984, %dx.types.Handle %28, float %3981, float %3982, float %3972, float undef, i32 0, i32 0, i32 undef, float %3993)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = fmul fast float %3995, %3966
  %3997 = fadd fast float %3996, %3969
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 3
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 3
  %4006 = extractvalue %dx.types.CBufRet.f32 %3998, 3
  %4007 = fadd fast float %4003, %3864
  %4008 = fadd fast float %4005, %3865
  %4009 = fadd fast float %3997, %4006
  %4010 = fmul fast float %4007, %3999
  %4011 = call float @dx.op.tertiary.f32(i32 46, float %4008, float %4000, float %4010)  ; FMad(a,b,c)
  %4012 = call float @dx.op.tertiary.f32(i32 46, float %4009, float %4001, float %4011)  ; FMad(a,b,c)
  %4013 = fsub fast float %4012, %4006
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 2
  %4016 = fsub fast float %4013, %4015
  %4017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.i32 %4017, 0
  %4019 = call i32 @dx.op.binary.i32(i32 40, i32 %3895, i32 %4018)  ; UMin(a,b)
  %4020 = mul i32 %4019, 36
  %4021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.i32 %4021, 0
  %4023 = add i32 %4020, 4
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = fmul fast float %4025, %3917
  %4027 = fmul fast float %4025, %3919
  %4028 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4029 = fadd fast float %4026, %4028
  %4030 = fadd fast float %4027, %4028
  %4031 = icmp eq i32 %4022, 0
  br i1 %4031, label %4100, label %4032

; <label>:4032                                    ; preds = %3963
  br label %4033

; <label>:4033                                    ; preds = %4090, %4032
  %4034 = phi float [ %4091, %4090 ], [ 0.000000e+00, %4032 ]
  %4035 = phi float [ %4092, %4090 ], [ 0.000000e+00, %4032 ]
  %4036 = phi float [ %4093, %4090 ], [ 0.000000e+00, %4032 ]
  %4037 = phi float [ %4094, %4090 ], [ 0.000000e+00, %4032 ]
  %4038 = phi float [ %4095, %4090 ], [ 0.000000e+00, %4032 ]
  %4039 = phi float [ %4096, %4090 ], [ 0.000000e+00, %4032 ]
  %4040 = phi i32 [ %4097, %4090 ], [ 0, %4032 ]
  %4041 = shl i32 %4040, 2
  %4042 = add i32 %3908, %4041
  %4043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4042, i32 undef)  ; BufferLoad(srv,index,wot)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = add i32 %3912, %4041
  %4046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.i32 %4046, 0
  %4048 = add i32 %4047, 0
  %4049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4048, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4050 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4049, i32 0)  ; GetDimensions(handle,mipLevel)
  %4051 = extractvalue %dx.types.Dimensions %4050, 0
  %4052 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4051)  ; FirstbitLo(value)
  %4053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.i32 %4053, 1
  %4055 = sub nsw i32 %4054, %4052
  %4056 = sitofp i32 %4055 to float
  %4057 = fsub fast float %3941, %4056
  %4058 = call float @dx.op.binary.f32(i32 35, float %4057, float 0.000000e+00)  ; FMax(a,b)
  %4059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4049, %dx.types.Handle %28, float %4029, float %4030, float %4044, float undef, i32 0, i32 0, i32 undef, float %4058)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = fcmp fast ogt float %4060, 0.000000e+00
  br i1 %4061, label %4062, label %4090

; <label>:4062                                    ; preds = %4033
  %4063 = add i32 %4023, %4041
  %4064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4063, i32 undef)  ; BufferLoad(srv,index,wot)
  %4065 = extractvalue %dx.types.ResRet.i32 %4064, 0
  %4066 = and i32 %4065, 32767
  %4067 = mul nuw nsw i32 %4066, 928
  %4068 = add nuw nsw i32 %4067, 48
  %4069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4068, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.ResRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.ResRet.f32 %4069, 2
  %4073 = add nuw nsw i32 %4067, 60
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.ResRet.f32 %4074, 2
  %4078 = fmul fast float %4070, %4060
  %4079 = fmul fast float %4071, %4060
  %4080 = fmul fast float %4072, %4060
  %4081 = fadd fast float %4078, %4034
  %4082 = fadd fast float %4079, %4035
  %4083 = fadd fast float %4080, %4036
  %4084 = fmul fast float %4075, %4060
  %4085 = fmul fast float %4076, %4060
  %4086 = fmul fast float %4077, %4060
  %4087 = fadd fast float %4084, %4037
  %4088 = fadd fast float %4085, %4038
  %4089 = fadd fast float %4086, %4039
  br label %4090

; <label>:4090                                    ; preds = %4062, %4033
  %4091 = phi float [ %4081, %4062 ], [ %4034, %4033 ]
  %4092 = phi float [ %4082, %4062 ], [ %4035, %4033 ]
  %4093 = phi float [ %4083, %4062 ], [ %4036, %4033 ]
  %4094 = phi float [ %4087, %4062 ], [ %4037, %4033 ]
  %4095 = phi float [ %4088, %4062 ], [ %4038, %4033 ]
  %4096 = phi float [ %4089, %4062 ], [ %4039, %4033 ]
  %4097 = add nuw i32 %4040, 1
  %4098 = icmp eq i32 %4097, %4022
  br i1 %4098, label %4099, label %4033

; <label>:4099                                    ; preds = %4090
  br label %4100

; <label>:4100                                    ; preds = %4099, %3963
  %4101 = phi float [ 0.000000e+00, %3963 ], [ %4091, %4099 ]
  %4102 = phi float [ 0.000000e+00, %3963 ], [ %4092, %4099 ]
  %4103 = phi float [ 0.000000e+00, %3963 ], [ %4093, %4099 ]
  %4104 = phi float [ 0.000000e+00, %3963 ], [ %4094, %4099 ]
  %4105 = phi float [ 0.000000e+00, %3963 ], [ %4095, %4099 ]
  %4106 = phi float [ 0.000000e+00, %3963 ], [ %4096, %4099 ]
  %4107 = fadd fast float %4104, %4101
  %4108 = fmul fast float %4107, 0x3F847AE140000000
  %4109 = fadd fast float %4105, %4102
  %4110 = fmul fast float %4109, 0x3F847AE140000000
  %4111 = fadd fast float %4106, %4103
  %4112 = fmul fast float %4111, 0x3F847AE140000000
  br label %4113

; <label>:4113                                    ; preds = %4100, %3897, %3842, %3839, %3810, %3772
  %4114 = phi float [ %3824, %3810 ], [ -1.310720e+05, %3772 ], [ %4016, %4100 ], [ -1.310720e+05, %3842 ], [ -1.310720e+05, %3897 ], [ -1.310720e+05, %3839 ]
  %4115 = phi float [ %3834, %3810 ], [ 0.000000e+00, %3772 ], [ %4108, %4100 ], [ 0.000000e+00, %3842 ], [ 0.000000e+00, %3897 ], [ 0.000000e+00, %3839 ]
  %4116 = phi float [ %3836, %3810 ], [ 0.000000e+00, %3772 ], [ %4110, %4100 ], [ 0.000000e+00, %3842 ], [ 0.000000e+00, %3897 ], [ 0.000000e+00, %3839 ]
  %4117 = phi float [ %3838, %3810 ], [ 0.000000e+00, %3772 ], [ %4112, %4100 ], [ 0.000000e+00, %3842 ], [ 0.000000e+00, %3897 ], [ 0.000000e+00, %3839 ]
  %4118 = phi i1 [ true, %3810 ], [ false, %3772 ], [ true, %4100 ], [ false, %3842 ], [ false, %3897 ], [ false, %3839 ]
  %4119 = and i32 %182, 3
  %4120 = icmp eq i32 %4119, 1
  %4121 = select i1 %4120, float 1.000000e+00, float 0.000000e+00
  %4122 = fsub fast float %4114, %166
  %4123 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4124 = select i1 %4118, float %4123, float 1.000000e+00
  %4125 = fmul fast float %4124, %4121
  %4126 = icmp eq i32 %4119, 3
  %4127 = select i1 %4126, float 1.000000e+00, float %4125
  %4128 = call float @dx.op.binary.f32(i32 35, float %3715, float %4127)  ; FMax(a,b)
  %4129 = fcmp fast olt float %4127, 1.000000e+00
  %4130 = fcmp uge float %48, 0.000000e+00
  %4131 = and i1 %4130, %4129
  br i1 %4131, label %4132, label %4142

; <label>:4132                                    ; preds = %4113
  %4133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %48, float %49, float %50, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.ResRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.ResRet.f32 %4133, 2
  %4137 = fadd fast float %4134, %4128
  %4138 = fcmp ule float %47, 0.000000e+00
  %4139 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4140 = select i1 %4138, float %4139, float 1.000000e+00
  %4141 = fmul fast float %4140, %4136
  br label %4142

; <label>:4142                                    ; preds = %4132, %4113
  %4143 = phi float [ %4137, %4132 ], [ %4128, %4113 ]
  %4144 = phi float [ %4135, %4132 ], [ 0.000000e+00, %4113 ]
  %4145 = phi float [ %4141, %4132 ], [ 0.000000e+00, %4113 ]
  %4146 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4147 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4149 = fcmp fast une float %4147, 0.000000e+00
  %4150 = fcmp fast une float %4148, 0.000000e+00
  %4151 = or i1 %4149, %4150
  br i1 %4151, label %4152, label %4711

; <label>:4152                                    ; preds = %4142
  br i1 %4149, label %4153, label %4426

; <label>:4153                                    ; preds = %4152
  %4154 = call float @dx.op.unary.f32(i32 23, float %3712)  ; Log(value)
  %4155 = fmul fast float %4154, 4.000000e+00
  %4156 = call float @dx.op.unary.f32(i32 21, float %4155)  ; Exp(value)
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = fmul fast float %4158, %35
  %4160 = fmul fast float %4158, %36
  %4161 = fmul fast float %4158, %37
  %4162 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4163 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4164 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4165 = call float @dx.op.unary.f32(i32 23, float %4162)  ; Log(value)
  %4166 = call float @dx.op.unary.f32(i32 23, float %4163)  ; Log(value)
  %4167 = call float @dx.op.unary.f32(i32 23, float %4164)  ; Log(value)
  %4168 = fmul fast float %4165, 4.000000e+00
  %4169 = fmul fast float %4166, 4.000000e+00
  %4170 = fmul fast float %4167, 4.000000e+00
  %4171 = call float @dx.op.unary.f32(i32 21, float %4168)  ; Exp(value)
  %4172 = call float @dx.op.unary.f32(i32 21, float %4169)  ; Exp(value)
  %4173 = call float @dx.op.unary.f32(i32 21, float %4170)  ; Exp(value)
  %4174 = fadd fast float %4172, %4171
  %4175 = fadd fast float %4174, %4173
  %4176 = fdiv fast float 1.000000e+00, %4175
  %4177 = fmul fast float %4176, %4171
  %4178 = fcmp fast ogt float %44, 0.000000e+00
  %4179 = fcmp fast ogt float %45, 0.000000e+00
  %4180 = fcmp fast ogt float %46, 0.000000e+00
  %4181 = fcmp fast olt float %44, 0.000000e+00
  %4182 = fcmp fast olt float %45, 0.000000e+00
  %4183 = fcmp fast olt float %46, 0.000000e+00
  %4184 = zext i1 %4178 to i32
  %4185 = zext i1 %4179 to i32
  %4186 = zext i1 %4180 to i32
  %4187 = zext i1 %4181 to i32
  %4188 = zext i1 %4182 to i32
  %4189 = zext i1 %4183 to i32
  %4190 = sub nsw i32 %4184, %4187
  %4191 = sub nsw i32 %4185, %4188
  %4192 = sub nsw i32 %4186, %4189
  %4193 = call float @dx.op.unary.f32(i32 83, float %4159)  ; DerivCoarseX(value)
  %4194 = call float @dx.op.unary.f32(i32 83, float %4160)  ; DerivCoarseX(value)
  %4195 = call float @dx.op.unary.f32(i32 83, float %4161)  ; DerivCoarseX(value)
  %4196 = call float @dx.op.unary.f32(i32 84, float %4159)  ; DerivCoarseY(value)
  %4197 = call float @dx.op.unary.f32(i32 84, float %4160)  ; DerivCoarseY(value)
  %4198 = call float @dx.op.unary.f32(i32 84, float %4161)  ; DerivCoarseY(value)
  %4199 = fcmp fast ole float %214, %4177
  %4200 = fmul fast float %4176, %4174
  %4201 = fcmp fast ole float %214, %4200
  %4202 = select i1 %4201, float %4161, float %4159
  %4203 = select i1 %4201, float %4159, float %4160
  %4204 = select i1 %4199, float %4160, float %4202
  %4205 = select i1 %4199, float %4161, float %4203
  %4206 = select i1 %4201, float %4195, float %4193
  %4207 = select i1 %4201, float %4193, float %4194
  %4208 = select i1 %4199, float %4194, float %4206
  %4209 = select i1 %4199, float %4195, float %4207
  %4210 = select i1 %4201, float %4198, float %4196
  %4211 = select i1 %4201, float %4196, float %4197
  %4212 = select i1 %4199, float %4197, float %4210
  %4213 = select i1 %4199, float %4198, float %4211
  %4214 = call float @dx.op.unary.f32(i32 27, float %4204)  ; Round_ni(value)
  %4215 = call float @dx.op.unary.f32(i32 27, float %4205)  ; Round_ni(value)
  %4216 = fptosi float %4214 to i32
  %4217 = fptosi float %4215 to i32
  %4218 = xor i32 %4217, %4216
  %4219 = sitofp i32 %4218 to float
  %4220 = fptosi float %4219 to i32
  %4221 = sitofp i32 %4220 to float
  %4222 = fmul fast float %4221, 0x3FE3C6EF40000000
  %4223 = frem fast float %4214, 2.560000e+02
  %4224 = frem fast float %4215, 2.560000e+02
  %4225 = fptoui float %4223 to i32
  %4226 = fptoui float %4224 to i32
  %4227 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4225, i32 %4226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = extractvalue %dx.types.ResRet.f32 %4227, 1
  %4230 = extractvalue %dx.types.ResRet.f32 %4227, 2
  %4231 = fadd fast float %4228, %4222
  %4232 = fadd fast float %4229, %4222
  %4233 = fadd fast float %4230, %4222
  %4234 = call float @dx.op.unary.f32(i32 22, float %4231)  ; Frc(value)
  %4235 = call float @dx.op.unary.f32(i32 22, float %4232)  ; Frc(value)
  %4236 = call float @dx.op.unary.f32(i32 22, float %4233)  ; Frc(value)
  %4237 = fmul fast float %4236, 0x401921FB60000000
  %4238 = call float @dx.op.unary.f32(i32 13, float %4237)  ; Sin(value)
  %4239 = call float @dx.op.unary.f32(i32 12, float %4237)  ; Cos(value)
  %4240 = fsub fast float -0.000000e+00, %4239
  %4241 = fmul fast float %4239, %4204
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4238, float %4205, float %4241)  ; FMad(a,b,c)
  %4243 = fmul fast float %4238, %4204
  %4244 = call float @dx.op.tertiary.f32(i32 46, float %4240, float %4205, float %4243)  ; FMad(a,b,c)
  %4245 = fadd fast float %4242, %4234
  %4246 = fadd fast float %4244, %4235
  %4247 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4248 = bitcast float %4247 to i32
  %4249 = icmp eq i32 %4248, 0
  br i1 %4249, label %4288, label %4250

; <label>:4250                                    ; preds = %4153
  %4251 = add i32 %4248, 0
  %4252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4251, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4253 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4252, %dx.types.Handle %74, float %4245, float %4246, float undef, float undef, i32 0, i32 0, i32 undef, float %4208, float %4209, float undef, float %4212, float %4213, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4257 = extractvalue %dx.types.CBufRet.f32 %4255, 2
  %4258 = fsub fast float 1.000000e+00, %4147
  %4259 = call float @dx.op.binary.f32(i32 35, float %4258, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4260 = bitcast float %4147 to i32
  %4261 = sitofp i32 %4260 to float
  %4262 = fadd fast float %4261, 0xC1CFBF8940000000
  %4263 = fmul fast float %4257, %4262
  %4264 = fadd fast float %4263, 0x41CFBF8940000000
  %4265 = fptosi float %4264 to i32
  %4266 = bitcast i32 %4265 to float
  %4267 = bitcast float %4259 to i32
  %4268 = sitofp i32 %4267 to float
  %4269 = fadd fast float %4268, 0xC1CFBF8940000000
  %4270 = fmul fast float %4269, %4257
  %4271 = fadd fast float %4270, 0x41CFBF8940000000
  %4272 = fptosi float %4271 to i32
  %4273 = bitcast i32 %4272 to float
  %4274 = fmul fast float %4266, %4256
  %4275 = fmul fast float %4273, %4256
  %4276 = fsub fast float %4259, %4274
  %4277 = fadd fast float %4275, %4259
  %4278 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4280 = fsub fast float %4254, %4278
  %4281 = fsub fast float %4279, %4278
  %4282 = bitcast float %4281 to i32
  %4283 = sub nsw i32 2129859010, %4282
  %4284 = bitcast i32 %4283 to float
  %4285 = fmul fast float %4284, %4280
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fcmp fast olt float %4286, 0x3F70101020000000
  br i1 %4287, label %4426, label %4288

; <label>:4288                                    ; preds = %4250, %4153
  %4289 = phi float [ %4286, %4250 ], [ %4147, %4153 ]
  %4290 = fmul fast float %4289, %4156
  %4291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.i32 %4291, 1
  %4293 = extractvalue %dx.types.CBufRet.i32 %4291, 0
  %4294 = add i32 %4293, 0
  %4295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4296 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4295, %dx.types.Handle %73, float %4245, float %4246, float undef, float undef, i32 0, i32 0, i32 undef, float %4208, float %4209, float undef, float %4212, float %4213, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4297 = extractvalue %dx.types.ResRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.ResRet.f32 %4296, 1
  %4299 = extractvalue %dx.types.ResRet.f32 %4296, 2
  %4300 = extractvalue %dx.types.ResRet.f32 %4296, 3
  %4301 = and i32 %4292, 255
  %4302 = uitofp i32 %4301 to float
  %4303 = lshr i32 %4292, 8
  %4304 = and i32 %4303, 255
  %4305 = uitofp i32 %4304 to float
  %4306 = fmul fast float %4300, %4302
  %4307 = fadd fast float %4306, %4305
  %4308 = fmul fast float %4307, 0x3F70101000000000
  %4309 = fadd fast float %4308, 0xBFB99999A0000000
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4311 = fmul fast float %4310, 0x3FF1C71C80000000
  %4312 = call float @dx.op.binary.f32(i32 36, float %4308, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4313 = fsub fast float 1.000000e+00, %4311
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4314, %4297
  %4316 = fmul fast float %4314, %4298
  %4317 = fmul fast float %4314, %4299
  %4318 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4319 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4320 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4321 = fmul fast float %4311, %4297
  %4322 = fmul fast float %4311, %4298
  %4323 = fmul fast float %4311, %4299
  %4324 = fadd fast float %4321, %4312
  %4325 = fadd fast float %4322, %4312
  %4326 = fadd fast float %4323, %4312
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.i32 %4330, 3
  %4332 = extractvalue %dx.types.CBufRet.i32 %4330, 2
  %4333 = add i32 %4332, 0
  %4334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4335 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4334, %dx.types.Handle %73, float %4245, float %4246, float undef, float undef, i32 0, i32 0, i32 undef, float %4208, float %4209, float undef, float %4212, float %4213, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = extractvalue %dx.types.ResRet.f32 %4335, 1
  %4338 = extractvalue %dx.types.ResRet.f32 %4335, 2
  %4339 = extractvalue %dx.types.ResRet.f32 %4335, 3
  %4340 = and i32 %4331, 255
  %4341 = uitofp i32 %4340 to float
  %4342 = lshr i32 %4331, 8
  %4343 = and i32 %4342, 255
  %4344 = uitofp i32 %4343 to float
  %4345 = lshr i32 %4331, 16
  %4346 = and i32 %4345, 255
  %4347 = uitofp i32 %4346 to float
  %4348 = fmul fast float %4347, 0x3F70101000000000
  %4349 = fmul fast float %4336, %4341
  %4350 = fadd fast float %4349, %4344
  %4351 = fmul fast float %4350, 0x3F70101000000000
  %4352 = fadd fast float %4337, -5.000000e-01
  %4353 = fadd fast float %4339, -5.000000e-01
  %4354 = fmul fast float %4352, %4348
  %4355 = fmul fast float %4353, %4348
  %4356 = fadd fast float %4354, 5.000000e-01
  %4357 = fadd fast float %4355, 5.000000e-01
  %4358 = fmul fast float %4356, 2.000000e+00
  %4359 = fadd fast float %4358, -1.000000e+00
  %4360 = fmul fast float %4357, 2.000000e+00
  %4361 = fadd fast float %4360, -1.000000e+00
  %4362 = fadd fast float %4359, %4361
  %4363 = fmul fast float %4362, 5.000000e-01
  %4364 = fsub fast float %4359, %4361
  %4365 = fmul fast float %4364, 5.000000e-01
  %4366 = call float @dx.op.unary.f32(i32 6, float %4363)  ; FAbs(value)
  %4367 = fsub fast float 1.000000e+00, %4366
  %4368 = call float @dx.op.unary.f32(i32 6, float %4365)  ; FAbs(value)
  %4369 = fsub fast float %4367, %4368
  %4370 = call float @dx.op.dot3.f32(i32 55, float %4363, float %4365, float %4369, float %4363, float %4365, float %4369)  ; Dot3(ax,ay,az,bx,by,bz)
  %4371 = call float @dx.op.unary.f32(i32 25, float %4370)  ; Rsqrt(value)
  %4372 = fmul fast float %4363, %4371
  %4373 = fmul fast float %4365, %4371
  %4374 = select i1 %4201, i32 %4191, i32 %4192
  %4375 = select i1 %4199, i32 %4190, i32 %4374
  %4376 = sitofp i32 %4375 to float
  %4377 = fmul fast float %4369, %4376
  %4378 = fmul fast float %4377, %4371
  %4379 = select i1 %4201, float %4378, float %4373
  %4380 = select i1 %4201, float %4373, float %4378
  %4381 = select i1 %4199, float %4378, float %4372
  %4382 = select i1 %4199, float %4373, float %4379
  %4383 = select i1 %4199, float %4372, float %4380
  %4384 = fsub fast float %4318, %3751
  %4385 = fsub fast float %4319, %3752
  %4386 = fsub fast float %4320, %3753
  %4387 = fmul fast float %4384, %4290
  %4388 = fmul fast float %4385, %4290
  %4389 = fmul fast float %4386, %4290
  %4390 = fadd fast float %4387, %3751
  %4391 = fadd fast float %4388, %3752
  %4392 = fadd fast float %4389, %3753
  %4393 = fsub fast float %4327, %3736
  %4394 = fsub fast float %4328, %3737
  %4395 = fsub fast float %4329, %3738
  %4396 = fmul fast float %4393, %4290
  %4397 = fmul fast float %4394, %4290
  %4398 = fmul fast float %4395, %4290
  %4399 = fadd fast float %4396, %3736
  %4400 = fadd fast float %4397, %3737
  %4401 = fadd fast float %4398, %3738
  %4402 = fadd fast float %4381, %3700
  %4403 = fadd fast float %4382, %3701
  %4404 = fadd fast float %4383, %3702
  %4405 = call float @dx.op.dot3.f32(i32 55, float %4402, float %4403, float %4404, float %4402, float %4403, float %4404)  ; Dot3(ax,ay,az,bx,by,bz)
  %4406 = call float @dx.op.unary.f32(i32 25, float %4405)  ; Rsqrt(value)
  %4407 = fmul fast float %4402, %4406
  %4408 = fmul fast float %4403, %4406
  %4409 = fmul fast float %4404, %4406
  %4410 = fsub fast float %4407, %3700
  %4411 = fsub fast float %4408, %3701
  %4412 = fsub fast float %4409, %3702
  %4413 = fmul fast float %4410, %4290
  %4414 = fmul fast float %4411, %4290
  %4415 = fmul fast float %4412, %4290
  %4416 = fadd fast float %4413, %3700
  %4417 = fadd fast float %4414, %3701
  %4418 = fadd fast float %4415, %3702
  %4419 = call float @dx.op.binary.f32(i32 36, float %3712, float %4338)  ; FMin(a,b)
  %4420 = fsub fast float %4419, %3712
  %4421 = fmul fast float %4420, %4290
  %4422 = fadd fast float %4421, %3712
  %4423 = fsub fast float %4351, %3739
  %4424 = fmul fast float %4423, %4290
  %4425 = fadd fast float %4424, %3739
  br label %4426

; <label>:4426                                    ; preds = %4288, %4250, %4152
  %4427 = phi float [ %4390, %4288 ], [ %3751, %4250 ], [ %3751, %4152 ]
  %4428 = phi float [ %4391, %4288 ], [ %3752, %4250 ], [ %3752, %4152 ]
  %4429 = phi float [ %4392, %4288 ], [ %3753, %4250 ], [ %3753, %4152 ]
  %4430 = phi float [ %4416, %4288 ], [ %3700, %4250 ], [ %3700, %4152 ]
  %4431 = phi float [ %4417, %4288 ], [ %3701, %4250 ], [ %3701, %4152 ]
  %4432 = phi float [ %4418, %4288 ], [ %3702, %4250 ], [ %3702, %4152 ]
  %4433 = phi float [ %4399, %4288 ], [ %3736, %4250 ], [ %3736, %4152 ]
  %4434 = phi float [ %4400, %4288 ], [ %3737, %4250 ], [ %3737, %4152 ]
  %4435 = phi float [ %4401, %4288 ], [ %3738, %4250 ], [ %3738, %4152 ]
  %4436 = phi float [ %4425, %4288 ], [ %3739, %4250 ], [ %3739, %4152 ]
  %4437 = phi float [ %4422, %4288 ], [ %3712, %4250 ], [ %3712, %4152 ]
  br i1 %4150, label %4438, label %4711

; <label>:4438                                    ; preds = %4426
  %4439 = call float @dx.op.unary.f32(i32 23, float %4437)  ; Log(value)
  %4440 = fmul fast float %4439, 4.000000e+00
  %4441 = call float @dx.op.unary.f32(i32 21, float %4440)  ; Exp(value)
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = fmul fast float %4443, %35
  %4445 = fmul fast float %4443, %36
  %4446 = fmul fast float %4443, %37
  %4447 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4448 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4449 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4450 = call float @dx.op.unary.f32(i32 23, float %4447)  ; Log(value)
  %4451 = call float @dx.op.unary.f32(i32 23, float %4448)  ; Log(value)
  %4452 = call float @dx.op.unary.f32(i32 23, float %4449)  ; Log(value)
  %4453 = fmul fast float %4450, 4.000000e+00
  %4454 = fmul fast float %4451, 4.000000e+00
  %4455 = fmul fast float %4452, 4.000000e+00
  %4456 = call float @dx.op.unary.f32(i32 21, float %4453)  ; Exp(value)
  %4457 = call float @dx.op.unary.f32(i32 21, float %4454)  ; Exp(value)
  %4458 = call float @dx.op.unary.f32(i32 21, float %4455)  ; Exp(value)
  %4459 = fadd fast float %4457, %4456
  %4460 = fadd fast float %4459, %4458
  %4461 = fdiv fast float 1.000000e+00, %4460
  %4462 = fmul fast float %4461, %4456
  %4463 = fcmp fast ogt float %44, 0.000000e+00
  %4464 = fcmp fast ogt float %45, 0.000000e+00
  %4465 = fcmp fast ogt float %46, 0.000000e+00
  %4466 = fcmp fast olt float %44, 0.000000e+00
  %4467 = fcmp fast olt float %45, 0.000000e+00
  %4468 = fcmp fast olt float %46, 0.000000e+00
  %4469 = zext i1 %4463 to i32
  %4470 = zext i1 %4464 to i32
  %4471 = zext i1 %4465 to i32
  %4472 = zext i1 %4466 to i32
  %4473 = zext i1 %4467 to i32
  %4474 = zext i1 %4468 to i32
  %4475 = sub nsw i32 %4469, %4472
  %4476 = sub nsw i32 %4470, %4473
  %4477 = sub nsw i32 %4471, %4474
  %4478 = call float @dx.op.unary.f32(i32 83, float %4444)  ; DerivCoarseX(value)
  %4479 = call float @dx.op.unary.f32(i32 83, float %4445)  ; DerivCoarseX(value)
  %4480 = call float @dx.op.unary.f32(i32 83, float %4446)  ; DerivCoarseX(value)
  %4481 = call float @dx.op.unary.f32(i32 84, float %4444)  ; DerivCoarseY(value)
  %4482 = call float @dx.op.unary.f32(i32 84, float %4445)  ; DerivCoarseY(value)
  %4483 = call float @dx.op.unary.f32(i32 84, float %4446)  ; DerivCoarseY(value)
  %4484 = fcmp fast ole float %214, %4462
  %4485 = fmul fast float %4461, %4459
  %4486 = fcmp fast ole float %214, %4485
  %4487 = select i1 %4486, float %4446, float %4444
  %4488 = select i1 %4486, float %4444, float %4445
  %4489 = select i1 %4484, float %4445, float %4487
  %4490 = select i1 %4484, float %4446, float %4488
  %4491 = select i1 %4486, float %4480, float %4478
  %4492 = select i1 %4486, float %4478, float %4479
  %4493 = select i1 %4484, float %4479, float %4491
  %4494 = select i1 %4484, float %4480, float %4492
  %4495 = select i1 %4486, float %4483, float %4481
  %4496 = select i1 %4486, float %4481, float %4482
  %4497 = select i1 %4484, float %4482, float %4495
  %4498 = select i1 %4484, float %4483, float %4496
  %4499 = call float @dx.op.unary.f32(i32 27, float %4489)  ; Round_ni(value)
  %4500 = call float @dx.op.unary.f32(i32 27, float %4490)  ; Round_ni(value)
  %4501 = fptosi float %4499 to i32
  %4502 = fptosi float %4500 to i32
  %4503 = xor i32 %4502, %4501
  %4504 = sitofp i32 %4503 to float
  %4505 = fptosi float %4504 to i32
  %4506 = sitofp i32 %4505 to float
  %4507 = fmul fast float %4506, 0x3FE3C6EF40000000
  %4508 = frem fast float %4499, 2.560000e+02
  %4509 = frem fast float %4500, 2.560000e+02
  %4510 = fptoui float %4508 to i32
  %4511 = fptoui float %4509 to i32
  %4512 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4510, i32 %4511, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = fadd fast float %4513, %4507
  %4517 = fadd fast float %4514, %4507
  %4518 = fadd fast float %4515, %4507
  %4519 = call float @dx.op.unary.f32(i32 22, float %4516)  ; Frc(value)
  %4520 = call float @dx.op.unary.f32(i32 22, float %4517)  ; Frc(value)
  %4521 = call float @dx.op.unary.f32(i32 22, float %4518)  ; Frc(value)
  %4522 = fmul fast float %4521, 0x401921FB60000000
  %4523 = call float @dx.op.unary.f32(i32 13, float %4522)  ; Sin(value)
  %4524 = call float @dx.op.unary.f32(i32 12, float %4522)  ; Cos(value)
  %4525 = fsub fast float -0.000000e+00, %4524
  %4526 = fmul fast float %4524, %4489
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4523, float %4490, float %4526)  ; FMad(a,b,c)
  %4528 = fmul fast float %4523, %4489
  %4529 = call float @dx.op.tertiary.f32(i32 46, float %4525, float %4490, float %4528)  ; FMad(a,b,c)
  %4530 = fadd fast float %4527, %4519
  %4531 = fadd fast float %4529, %4520
  %4532 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4533 = bitcast float %4532 to i32
  %4534 = icmp eq i32 %4533, 0
  br i1 %4534, label %4573, label %4535

; <label>:4535                                    ; preds = %4438
  %4536 = add i32 %4533, 0
  %4537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4538 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4537, %dx.types.Handle %74, float %4530, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4493, float %4494, float undef, float %4497, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4539 = extractvalue %dx.types.ResRet.f32 %4538, 0
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 1
  %4542 = extractvalue %dx.types.CBufRet.f32 %4540, 2
  %4543 = fsub fast float 1.000000e+00, %4148
  %4544 = call float @dx.op.binary.f32(i32 35, float %4543, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4545 = bitcast float %4148 to i32
  %4546 = sitofp i32 %4545 to float
  %4547 = fadd fast float %4546, 0xC1CFBF8940000000
  %4548 = fmul fast float %4542, %4547
  %4549 = fadd fast float %4548, 0x41CFBF8940000000
  %4550 = fptosi float %4549 to i32
  %4551 = bitcast i32 %4550 to float
  %4552 = bitcast float %4544 to i32
  %4553 = sitofp i32 %4552 to float
  %4554 = fadd fast float %4553, 0xC1CFBF8940000000
  %4555 = fmul fast float %4554, %4542
  %4556 = fadd fast float %4555, 0x41CFBF8940000000
  %4557 = fptosi float %4556 to i32
  %4558 = bitcast i32 %4557 to float
  %4559 = fmul fast float %4551, %4541
  %4560 = fmul fast float %4558, %4541
  %4561 = fsub fast float %4544, %4559
  %4562 = fadd fast float %4560, %4544
  %4563 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4564 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4565 = fsub fast float %4539, %4563
  %4566 = fsub fast float %4564, %4563
  %4567 = bitcast float %4566 to i32
  %4568 = sub nsw i32 2129859010, %4567
  %4569 = bitcast i32 %4568 to float
  %4570 = fmul fast float %4569, %4565
  %4571 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4572 = fcmp fast olt float %4571, 0x3F70101020000000
  br i1 %4572, label %4711, label %4573

; <label>:4573                                    ; preds = %4535, %4438
  %4574 = phi float [ %4571, %4535 ], [ %4148, %4438 ]
  %4575 = fmul fast float %4574, %4441
  %4576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.i32 %4576, 1
  %4578 = extractvalue %dx.types.CBufRet.i32 %4576, 0
  %4579 = add i32 %4578, 0
  %4580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4581 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4580, %dx.types.Handle %73, float %4530, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4493, float %4494, float undef, float %4497, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.ResRet.f32 %4581, 1
  %4584 = extractvalue %dx.types.ResRet.f32 %4581, 2
  %4585 = extractvalue %dx.types.ResRet.f32 %4581, 3
  %4586 = and i32 %4577, 255
  %4587 = uitofp i32 %4586 to float
  %4588 = lshr i32 %4577, 8
  %4589 = and i32 %4588, 255
  %4590 = uitofp i32 %4589 to float
  %4591 = fmul fast float %4585, %4587
  %4592 = fadd fast float %4591, %4590
  %4593 = fmul fast float %4592, 0x3F70101000000000
  %4594 = fadd fast float %4593, 0xBFB99999A0000000
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fmul fast float %4595, 0x3FF1C71C80000000
  %4597 = call float @dx.op.binary.f32(i32 36, float %4593, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4598 = fsub fast float 1.000000e+00, %4596
  %4599 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4600 = fmul fast float %4599, %4582
  %4601 = fmul fast float %4599, %4583
  %4602 = fmul fast float %4599, %4584
  %4603 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4604 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4606 = fmul fast float %4596, %4582
  %4607 = fmul fast float %4596, %4583
  %4608 = fmul fast float %4596, %4584
  %4609 = fadd fast float %4606, %4597
  %4610 = fadd fast float %4607, %4597
  %4611 = fadd fast float %4608, %4597
  %4612 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4613 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4614 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.i32 %4615, 3
  %4617 = extractvalue %dx.types.CBufRet.i32 %4615, 2
  %4618 = add i32 %4617, 0
  %4619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4620 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4619, %dx.types.Handle %73, float %4530, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4493, float %4494, float undef, float %4497, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4624 = extractvalue %dx.types.ResRet.f32 %4620, 3
  %4625 = and i32 %4616, 255
  %4626 = uitofp i32 %4625 to float
  %4627 = lshr i32 %4616, 8
  %4628 = and i32 %4627, 255
  %4629 = uitofp i32 %4628 to float
  %4630 = lshr i32 %4616, 16
  %4631 = and i32 %4630, 255
  %4632 = uitofp i32 %4631 to float
  %4633 = fmul fast float %4632, 0x3F70101000000000
  %4634 = fmul fast float %4621, %4626
  %4635 = fadd fast float %4634, %4629
  %4636 = fmul fast float %4635, 0x3F70101000000000
  %4637 = fadd fast float %4622, -5.000000e-01
  %4638 = fadd fast float %4624, -5.000000e-01
  %4639 = fmul fast float %4637, %4633
  %4640 = fmul fast float %4638, %4633
  %4641 = fadd fast float %4639, 5.000000e-01
  %4642 = fadd fast float %4640, 5.000000e-01
  %4643 = fmul fast float %4641, 2.000000e+00
  %4644 = fadd fast float %4643, -1.000000e+00
  %4645 = fmul fast float %4642, 2.000000e+00
  %4646 = fadd fast float %4645, -1.000000e+00
  %4647 = fadd fast float %4644, %4646
  %4648 = fmul fast float %4647, 5.000000e-01
  %4649 = fsub fast float %4644, %4646
  %4650 = fmul fast float %4649, 5.000000e-01
  %4651 = call float @dx.op.unary.f32(i32 6, float %4648)  ; FAbs(value)
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = call float @dx.op.unary.f32(i32 6, float %4650)  ; FAbs(value)
  %4654 = fsub fast float %4652, %4653
  %4655 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4650, float %4654, float %4648, float %4650, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = call float @dx.op.unary.f32(i32 25, float %4655)  ; Rsqrt(value)
  %4657 = fmul fast float %4648, %4656
  %4658 = fmul fast float %4650, %4656
  %4659 = select i1 %4486, i32 %4476, i32 %4477
  %4660 = select i1 %4484, i32 %4475, i32 %4659
  %4661 = sitofp i32 %4660 to float
  %4662 = fmul fast float %4654, %4661
  %4663 = fmul fast float %4662, %4656
  %4664 = select i1 %4486, float %4663, float %4658
  %4665 = select i1 %4486, float %4658, float %4663
  %4666 = select i1 %4484, float %4663, float %4657
  %4667 = select i1 %4484, float %4658, float %4664
  %4668 = select i1 %4484, float %4657, float %4665
  %4669 = fsub fast float %4603, %4427
  %4670 = fsub fast float %4604, %4428
  %4671 = fsub fast float %4605, %4429
  %4672 = fmul fast float %4669, %4575
  %4673 = fmul fast float %4670, %4575
  %4674 = fmul fast float %4671, %4575
  %4675 = fadd fast float %4672, %4427
  %4676 = fadd fast float %4673, %4428
  %4677 = fadd fast float %4674, %4429
  %4678 = fsub fast float %4612, %4433
  %4679 = fsub fast float %4613, %4434
  %4680 = fsub fast float %4614, %4435
  %4681 = fmul fast float %4678, %4575
  %4682 = fmul fast float %4679, %4575
  %4683 = fmul fast float %4680, %4575
  %4684 = fadd fast float %4681, %4433
  %4685 = fadd fast float %4682, %4434
  %4686 = fadd fast float %4683, %4435
  %4687 = fadd fast float %4666, %4430
  %4688 = fadd fast float %4667, %4431
  %4689 = fadd fast float %4668, %4432
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4687, float %4688, float %4689, float %4687, float %4688, float %4689)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = call float @dx.op.unary.f32(i32 25, float %4690)  ; Rsqrt(value)
  %4692 = fmul fast float %4687, %4691
  %4693 = fmul fast float %4688, %4691
  %4694 = fmul fast float %4689, %4691
  %4695 = fsub fast float %4692, %4430
  %4696 = fsub fast float %4693, %4431
  %4697 = fsub fast float %4694, %4432
  %4698 = fmul fast float %4695, %4575
  %4699 = fmul fast float %4696, %4575
  %4700 = fmul fast float %4697, %4575
  %4701 = fadd fast float %4698, %4430
  %4702 = fadd fast float %4699, %4431
  %4703 = fadd fast float %4700, %4432
  %4704 = call float @dx.op.binary.f32(i32 36, float %4437, float %4623)  ; FMin(a,b)
  %4705 = fsub fast float %4704, %4437
  %4706 = fmul fast float %4705, %4575
  %4707 = fadd fast float %4706, %4437
  %4708 = fsub fast float %4636, %4436
  %4709 = fmul fast float %4708, %4575
  %4710 = fadd fast float %4709, %4436
  br label %4711

; <label>:4711                                    ; preds = %4573, %4535, %4426, %4142
  %4712 = phi float [ %4675, %4573 ], [ %4427, %4535 ], [ %4427, %4426 ], [ %3751, %4142 ]
  %4713 = phi float [ %4676, %4573 ], [ %4428, %4535 ], [ %4428, %4426 ], [ %3752, %4142 ]
  %4714 = phi float [ %4677, %4573 ], [ %4429, %4535 ], [ %4429, %4426 ], [ %3753, %4142 ]
  %4715 = phi float [ %4701, %4573 ], [ %4430, %4535 ], [ %4430, %4426 ], [ %3700, %4142 ]
  %4716 = phi float [ %4702, %4573 ], [ %4431, %4535 ], [ %4431, %4426 ], [ %3701, %4142 ]
  %4717 = phi float [ %4703, %4573 ], [ %4432, %4535 ], [ %4432, %4426 ], [ %3702, %4142 ]
  %4718 = phi float [ %4684, %4573 ], [ %4433, %4535 ], [ %4433, %4426 ], [ %3736, %4142 ]
  %4719 = phi float [ %4685, %4573 ], [ %4434, %4535 ], [ %4434, %4426 ], [ %3737, %4142 ]
  %4720 = phi float [ %4686, %4573 ], [ %4435, %4535 ], [ %4435, %4426 ], [ %3738, %4142 ]
  %4721 = phi float [ %4710, %4573 ], [ %4436, %4535 ], [ %4436, %4426 ], [ %3739, %4142 ]
  %4722 = phi float [ %4707, %4573 ], [ %4437, %4535 ], [ %4437, %4426 ], [ %3712, %4142 ]
  %4723 = fcmp fast une float %4146, 0.000000e+00
  %4724 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = call float @dx.op.unary.f32(i32 25, float %4724)  ; Rsqrt(value)
  br i1 %4723, label %4733, label %4726

; <label>:4726                                    ; preds = %4711
  %4727 = fmul fast float %4725, %164
  %4728 = fmul fast float %4725, %165
  %4729 = fmul fast float %4725, %166
  %4730 = fsub fast float -0.000000e+00, %4727
  %4731 = fsub fast float -0.000000e+00, %4728
  %4732 = fsub fast float -0.000000e+00, %4729
  br label %4900

; <label>:4733                                    ; preds = %4711
  %4734 = fmul fast float %164, %4725
  %4735 = fsub fast float -0.000000e+00, %4734
  %4736 = fmul fast float %165, %4725
  %4737 = fsub fast float -0.000000e+00, %4736
  %4738 = fmul fast float %166, %4725
  %4739 = fsub fast float -0.000000e+00, %4738
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4735, float %4737, float %4739, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = fmul fast float %4146, 2.500000e+00
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fmul fast float %4146, 0x4013FFFFE0000000
  %4744 = fadd fast float %4743, 0xBFFFFFFFE0000000
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4146, 0x4004000020000000
  %4747 = fadd fast float %4746, 0xBFF8000040000000
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = fmul fast float %3718, 1.000000e+01
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = fmul fast float %4750, 2.000000e+00
  %4752 = fsub fast float 3.000000e+00, %4751
  %4753 = fmul fast float %4750, %4750
  %4754 = fmul fast float %4753, %4752
  %4755 = fsub fast float 1.000000e+00, %4754
  %4756 = fsub fast float 0x3FE3333340000000, %4721
  %4757 = fmul fast float %4756, 0x400AAAAAA0000000
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = fmul fast float %4755, %4758
  %4760 = fmul fast float %4712, 0x3FEA2B8620000000
  %4761 = fmul fast float %4713, 0x3FEA2B8620000000
  %4762 = fmul fast float %4714, 0x3FEA2B8620000000
  %4763 = fadd fast float %4760, 0x3FC81DFBA0000000
  %4764 = fmul fast float %4763, %4712
  %4765 = fadd fast float %4764, 0x3F910E6020000000
  %4766 = fadd fast float %4761, 0x3FC81DFBA0000000
  %4767 = fmul fast float %4766, %4713
  %4768 = fadd fast float %4767, 0x3F910E6020000000
  %4769 = fadd fast float %4762, 0x3FC81DFBA0000000
  %4770 = fmul fast float %4769, %4714
  %4771 = fadd fast float %4770, 0x3F910E6020000000
  %4772 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4773 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4774 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4775 = fsub fast float %4772, %4712
  %4776 = fsub fast float %4773, %4713
  %4777 = fsub fast float %4774, %4714
  %4778 = fmul fast float %4775, %4742
  %4779 = fmul fast float %4778, %4759
  %4780 = fmul fast float %4776, %4742
  %4781 = fmul fast float %4780, %4759
  %4782 = fmul fast float %4777, %4742
  %4783 = fmul fast float %4782, %4759
  %4784 = fadd fast float %4779, %4712
  %4785 = fadd fast float %4781, %4713
  %4786 = fadd fast float %4783, %4714
  %4787 = fmul fast float %4722, %4722
  %4788 = fmul fast float %4787, %4787
  %4789 = fadd fast float %4745, 1.000000e+00
  %4790 = fsub fast float %4789, %4759
  %4791 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4792 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = fsub fast float 1.000000e+00, %4788
  %4795 = call float @dx.op.binary.f32(i32 36, float %4791, float %4794)  ; FMin(a,b)
  %4796 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4797 = call float @dx.op.binary.f32(i32 35, float %4795, float %4796)  ; FMax(a,b)
  %4798 = fadd fast float %4793, 0xBFE4CCCCC0000000
  %4799 = fmul fast float %4798, 0x4006DB6DA0000000
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fmul fast float %4800, 2.000000e+00
  %4802 = fsub fast float 3.000000e+00, %4801
  %4803 = bitcast float %4718 to i32
  %4804 = ashr i32 %4803, 1
  %4805 = add nsw i32 %4804, 532487669
  %4806 = bitcast i32 %4805 to float
  %4807 = fsub fast float 1.000000e+00, %4806
  %4808 = bitcast float %4807 to i32
  %4809 = sub nsw i32 2129859010, %4808
  %4810 = bitcast i32 %4809 to float
  %4811 = fmul fast float %4810, 2.000000e+00
  %4812 = bitcast float %4719 to i32
  %4813 = ashr i32 %4812, 1
  %4814 = add nsw i32 %4813, 532487669
  %4815 = bitcast i32 %4814 to float
  %4816 = fsub fast float 1.000000e+00, %4815
  %4817 = bitcast float %4816 to i32
  %4818 = sub nsw i32 2129859010, %4817
  %4819 = bitcast i32 %4818 to float
  %4820 = fmul fast float %4819, 2.000000e+00
  %4821 = bitcast float %4720 to i32
  %4822 = ashr i32 %4821, 1
  %4823 = add nsw i32 %4822, 532487669
  %4824 = bitcast i32 %4823 to float
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = bitcast float %4825 to i32
  %4827 = sub nsw i32 2129859010, %4826
  %4828 = bitcast i32 %4827 to float
  %4829 = fmul fast float %4828, 2.000000e+00
  %4830 = fsub fast float 0x4002A9FBE0000000, %4811
  %4831 = fadd fast float %4811, 0x3FD54FDF00000000
  %4832 = bitcast float %4831 to i32
  %4833 = sub nsw i32 2129859010, %4832
  %4834 = bitcast i32 %4833 to float
  %4835 = fmul fast float %4834, %4830
  %4836 = fmul fast float %4835, %4835
  %4837 = fsub fast float 0x4002A9FBE0000000, %4820
  %4838 = fadd fast float %4820, 0x3FD54FDF00000000
  %4839 = bitcast float %4838 to i32
  %4840 = sub nsw i32 2129859010, %4839
  %4841 = bitcast i32 %4840 to float
  %4842 = fmul fast float %4841, %4837
  %4843 = fmul fast float %4842, %4842
  %4844 = fsub fast float 0x4002A9FBE0000000, %4829
  %4845 = fadd fast float %4829, 0x3FD54FDF00000000
  %4846 = bitcast float %4845 to i32
  %4847 = sub nsw i32 2129859010, %4846
  %4848 = bitcast i32 %4847 to float
  %4849 = fmul fast float %4848, %4844
  %4850 = fmul fast float %4849, %4849
  %4851 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4836)  ; FMax(a,b)
  %4852 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4843)  ; FMax(a,b)
  %4853 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4850)  ; FMax(a,b)
  %4854 = fsub fast float 1.000000e+00, %4740
  %4855 = fadd fast float %4854, %4755
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fsub fast float 1.000000e+00, %4127
  %4858 = fmul fast float %4797, %4857
  %4859 = fmul fast float %4800, %4800
  %4860 = fmul fast float %4859, %4858
  %4861 = fmul fast float %4860, %4802
  %4862 = fmul fast float %4857, 0xBFE99999A0000000
  %4863 = fmul fast float %4862, %4742
  %4864 = fmul fast float %4863, %4759
  %4865 = fadd fast float %4864, 1.000000e+00
  %4866 = fadd fast float %4721, -1.000000e+00
  %4867 = fmul fast float %4865, %4866
  %4868 = fadd fast float %4867, 1.000000e+00
  %4869 = fsub fast float %4851, %4718
  %4870 = fsub fast float %4852, %4719
  %4871 = fsub fast float %4853, %4720
  %4872 = fmul fast float %4861, %4869
  %4873 = fmul fast float %4861, %4870
  %4874 = fmul fast float %4861, %4871
  %4875 = fadd fast float %4872, %4718
  %4876 = fadd fast float %4873, %4719
  %4877 = fadd fast float %4874, %4720
  %4878 = fsub fast float %84, %4715
  %4879 = fsub fast float %85, %4716
  %4880 = fsub fast float %86, %4717
  %4881 = fmul fast float %4861, %4878
  %4882 = fmul fast float %4861, %4879
  %4883 = fmul fast float %4861, %4880
  %4884 = fadd fast float %4881, %4715
  %4885 = fadd fast float %4882, %4716
  %4886 = fadd fast float %4883, %4717
  %4887 = fmul fast float %4861, %4856
  %4888 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = fmul fast float %4887, %4889
  %4891 = fadd fast float %4890, %4888
  %4892 = fsub fast float 1.000000e+00, %4722
  %4893 = fmul fast float %4861, %4892
  %4894 = fadd fast float %4893, %4722
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4884, float %4885, float %4886, float %4884, float %4885, float %4886)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = call float @dx.op.unary.f32(i32 25, float %4895)  ; Rsqrt(value)
  %4897 = fmul fast float %4884, %4896
  %4898 = fmul fast float %4885, %4896
  %4899 = fmul fast float %4886, %4896
  br label %4900

; <label>:4900                                    ; preds = %4733, %4726
  %4901 = phi float [ %4732, %4726 ], [ %4739, %4733 ]
  %4902 = phi float [ %4731, %4726 ], [ %4737, %4733 ]
  %4903 = phi float [ %4730, %4726 ], [ %4735, %4733 ]
  %4904 = phi float [ %4729, %4726 ], [ %4738, %4733 ]
  %4905 = phi float [ %4728, %4726 ], [ %4736, %4733 ]
  %4906 = phi float [ %4727, %4726 ], [ %4734, %4733 ]
  %4907 = phi float [ %4712, %4726 ], [ %4784, %4733 ]
  %4908 = phi float [ %4713, %4726 ], [ %4785, %4733 ]
  %4909 = phi float [ %4714, %4726 ], [ %4786, %4733 ]
  %4910 = phi float [ %4715, %4726 ], [ %4897, %4733 ]
  %4911 = phi float [ %4716, %4726 ], [ %4898, %4733 ]
  %4912 = phi float [ %4717, %4726 ], [ %4899, %4733 ]
  %4913 = phi float [ %4718, %4726 ], [ %4875, %4733 ]
  %4914 = phi float [ %4719, %4726 ], [ %4876, %4733 ]
  %4915 = phi float [ %4720, %4726 ], [ %4877, %4733 ]
  %4916 = phi float [ %4721, %4726 ], [ %4891, %4733 ]
  %4917 = phi float [ %4722, %4726 ], [ %4894, %4733 ]
  %4918 = select i1 %203, float 0.000000e+00, float %4915
  %4919 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4911, float %4912, float %4903, float %4902, float %4901)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4906, float %4905, float %4904, float %4910, float %4911, float %4912)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = fmul fast float %4921, 2.000000e+00
  %4923 = fmul fast float %4922, %4910
  %4924 = fmul fast float %4922, %4911
  %4925 = fmul fast float %4922, %4912
  %4926 = fsub fast float %4906, %4923
  %4927 = fsub fast float %4905, %4924
  %4928 = fsub fast float %4904, %4925
  %4929 = call float @dx.op.binary.f32(i32 36, float %4917, float 1.000000e+00)  ; FMin(a,b)
  %4930 = fsub fast float 1.000000e+00, %4917
  %4931 = bitcast float %4930 to i32
  %4932 = sub nsw i32 2129859010, %4931
  %4933 = fsub fast float 1.000000e+00, %54
  %4934 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4935 = call float @dx.op.binary.f32(i32 35, float %4934, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4936 = fdiv fast float %4933, %4935
  %4937 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4911, float %4912, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fmul fast float %4938, 5.000000e-01
  %4940 = fadd fast float %4939, 5.000000e-01
  %4941 = fmul fast float %4940, %54
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4911, float %4912, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %4943, %4936
  %4945 = fadd fast float %4941, %4944
  %4946 = fsub fast float 5.000000e-01, %4939
  %4947 = fmul fast float %4946, %4907
  %4948 = fmul fast float %4946, %4908
  %4949 = fmul fast float %4946, %4909
  %4950 = fadd fast float %4945, %4947
  %4951 = fadd fast float %4945, %4948
  %4952 = fadd fast float %4945, %4949
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4926, float %4927, float %4928, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = fmul fast float %4954, 5.000000e-01
  %4956 = fadd fast float %4955, 5.000000e-01
  %4957 = fmul fast float %4956, %54
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4926, float %4927, float %4928, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fmul fast float %4959, %4936
  %4961 = fadd fast float %4957, %4960
  %4962 = fsub fast float 5.000000e-01, %4955
  %4963 = fmul fast float %4962, %4907
  %4964 = fmul fast float %4962, %4908
  %4965 = fmul fast float %4962, %4909
  %4966 = fadd fast float %4961, %4963
  %4967 = fadd fast float %4961, %4964
  %4968 = fadd fast float %4961, %4965
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %4971 = call float @dx.op.binary.f32(i32 36, float %4907, float %4970)  ; FMin(a,b)
  %4972 = fsub fast float 1.000000e+00, %4929
  %4973 = fmul fast float %4971, %4972
  %4974 = fsub fast float 1.000000e+00, %4973
  %4975 = bitcast float %4974 to i32
  %4976 = sub nsw i32 2129859010, %4975
  %4977 = bitcast i32 %4976 to float
  %4978 = call float @dx.op.binary.f32(i32 36, float %4908, float %4970)  ; FMin(a,b)
  %4979 = fmul fast float %4978, %4972
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = call float @dx.op.binary.f32(i32 36, float %4909, float %4970)  ; FMin(a,b)
  %4985 = fmul fast float %4984, %4972
  %4986 = fsub fast float 1.000000e+00, %4985
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = fmul fast float %4929, %55
  %4991 = fmul fast float %4990, %4950
  %4992 = fmul fast float %4991, %4977
  %4993 = fmul fast float %4929, %56
  %4994 = fmul fast float %4993, %4951
  %4995 = fmul fast float %4994, %4983
  %4996 = fmul fast float %4929, %57
  %4997 = fmul fast float %4996, %4952
  %4998 = fmul fast float %4997, %4989
  %4999 = call float @dx.op.binary.f32(i32 36, float %4913, float %4970)  ; FMin(a,b)
  %5000 = fmul fast float %4999, %4972
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = bitcast float %5001 to i32
  %5003 = sub nsw i32 2129859010, %5002
  %5004 = bitcast i32 %5003 to float
  %5005 = call float @dx.op.binary.f32(i32 36, float %4914, float %4970)  ; FMin(a,b)
  %5006 = fmul fast float %5005, %4972
  %5007 = fsub fast float 1.000000e+00, %5006
  %5008 = bitcast float %5007 to i32
  %5009 = sub nsw i32 2129859010, %5008
  %5010 = bitcast i32 %5009 to float
  %5011 = call float @dx.op.binary.f32(i32 36, float %4918, float %4970)  ; FMin(a,b)
  %5012 = fmul fast float %5011, %4972
  %5013 = fsub fast float 1.000000e+00, %5012
  %5014 = bitcast float %5013 to i32
  %5015 = sub nsw i32 2129859010, %5014
  %5016 = bitcast i32 %5015 to float
  %5017 = fmul fast float %4990, %4966
  %5018 = fmul fast float %5017, %5004
  %5019 = fmul fast float %4993, %4967
  %5020 = fmul fast float %5019, %5010
  %5021 = fmul fast float %4996, %4968
  %5022 = fmul fast float %5021, %5016
  %5023 = call float @dx.op.dot3.f32(i32 55, float %4992, float %4995, float %4998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = select i1 %203, float 0.000000e+00, float %4992
  %5025 = select i1 %203, float %5023, float %4995
  %5026 = select i1 %203, float 0.000000e+00, float %4998
  %5027 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5020, float %5022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = select i1 %203, float 0.000000e+00, float %5018
  %5029 = select i1 %203, float %5027, float %5020
  %5030 = select i1 %203, float 0.000000e+00, float %5022
  %5031 = fmul fast float %4920, 9.843750e-01
  %5032 = fmul fast float %4916, 9.843750e-01
  %5033 = fadd fast float %5031, 7.812500e-03
  %5034 = fadd fast float %5032, 7.812500e-03
  %5035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5033, float %5034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5036 = extractvalue %dx.types.ResRet.f32 %5035, 2
  %5037 = extractvalue %dx.types.ResRet.f32 %5035, 3
  %5038 = fmul fast float %5036, %4913
  %5039 = fmul fast float %5036, %4914
  %5040 = fmul fast float %5036, %4918
  %5041 = fadd fast float %5038, %5037
  %5042 = fadd fast float %5039, %5037
  %5043 = fadd fast float %5040, %5037
  %5044 = fcmp fast ogt float %3713, 0.000000e+00
  br i1 %5044, label %5045, label %5071

; <label>:5045                                    ; preds = %4900
  %5046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3713, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5047 = extractvalue %dx.types.ResRet.f32 %5046, 0
  %5048 = extractvalue %dx.types.ResRet.f32 %5046, 1
  %5049 = extractvalue %dx.types.ResRet.f32 %5046, 2
  %5050 = fadd fast float %5047, -5.000000e-01
  %5051 = fadd fast float %5048, -5.000000e-01
  %5052 = fadd fast float %5049, -5.000000e-01
  %5053 = fsub fast float 1.000000e+00, %4913
  %5054 = fsub fast float 1.000000e+00, %4914
  %5055 = fsub fast float 1.000000e+00, %4918
  %5056 = fmul fast float %4913, 4.000000e+00
  %5057 = fmul fast float %5056, %5053
  %5058 = fmul fast float %5057, %5050
  %5059 = fmul fast float %4914, 4.000000e+00
  %5060 = fmul fast float %5059, %5054
  %5061 = fmul fast float %5060, %5051
  %5062 = fmul fast float %4918, 4.000000e+00
  %5063 = fmul fast float %5062, %5055
  %5064 = fmul fast float %5063, %5052
  %5065 = fadd fast float %5058, %5041
  %5066 = fadd fast float %5061, %5042
  %5067 = fadd fast float %5064, %5043
  %5068 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5069 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5070 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  br label %5071

; <label>:5071                                    ; preds = %5045, %4900
  %5072 = phi float [ %5068, %5045 ], [ %5041, %4900 ]
  %5073 = phi float [ %5069, %5045 ], [ %5042, %4900 ]
  %5074 = phi float [ %5070, %5045 ], [ %5043, %4900 ]
  %5075 = call float @dx.op.binary.f32(i32 35, float %5073, float %5074)  ; FMax(a,b)
  %5076 = call float @dx.op.binary.f32(i32 35, float %5072, float %5075)  ; FMax(a,b)
  %5077 = fsub fast float 1.000000e+00, %5076
  %5078 = fmul fast float %5077, %5024
  %5079 = fmul fast float %5077, %5025
  %5080 = fmul fast float %5077, %5026
  %5081 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4908, float %4909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5082 = fcmp fast ogt float %5081, 0x3E7FF19E20000000
  %5083 = fdiv fast float 1.000000e+00, %5081
  %5084 = select i1 %5082, float %5083, float 0.000000e+00
  %5085 = fmul fast float %5084, %4907
  %5086 = fmul fast float %5084, %4908
  %5087 = fmul fast float %5084, %4909
  %5088 = fadd fast float %5085, -1.000000e+00
  %5089 = fadd fast float %5086, -1.000000e+00
  %5090 = fadd fast float %5087, -1.000000e+00
  %5091 = fmul fast float %5088, 5.000000e-01
  %5092 = fmul fast float %5089, 5.000000e-01
  %5093 = fmul fast float %5090, 5.000000e-01
  %5094 = fadd fast float %5091, 1.000000e+00
  %5095 = fadd fast float %5092, 1.000000e+00
  %5096 = fadd fast float %5093, 1.000000e+00
  %5097 = fmul fast float %5072, %5028
  %5098 = fmul fast float %5073, %5029
  %5099 = fmul fast float %5074, %5030
  %5100 = fsub fast float 1.000000e+00, %4920
  %5101 = bitcast float %5100 to i32
  %5102 = sitofp i32 %5101 to float
  %5103 = fmul fast float %5102, 5.000000e+00
  %5104 = fadd fast float %5103, 0xC1EFBF8940000000
  %5105 = fptosi float %5104 to i32
  %5106 = bitcast i32 %5105 to float
  %5107 = fmul fast float %5106, %3714
  %5108 = fmul fast float %5024, %5107
  %5109 = fmul fast float %5108, %5077
  %5110 = fmul fast float %5109, %5094
  %5111 = fmul fast float %5025, %5107
  %5112 = fmul fast float %5111, %5077
  %5113 = fmul fast float %5112, %5095
  %5114 = fmul fast float %5026, %5107
  %5115 = fmul fast float %5114, %5077
  %5116 = fmul fast float %5115, %5096
  %5117 = fmul fast float %5078, %3710
  %5118 = fmul fast float %5079, %3710
  %5119 = fmul fast float %5080, %3710
  %5120 = fadd fast float %5097, %3706
  %5121 = fadd fast float %5120, %5110
  %5122 = fmul fast float %5121, %3710
  %5123 = fadd fast float %5098, %3707
  %5124 = fadd fast float %5123, %5113
  %5125 = fmul fast float %5124, %3710
  %5126 = fadd fast float %5099, %3708
  %5127 = fadd fast float %5126, %5116
  %5128 = fmul fast float %5127, %3710
  %5129 = bitcast i32 %4932 to float
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 3
  %5132 = fcmp fast oeq float %5131, 0.000000e+00
  br i1 %5132, label %5360, label %5133

; <label>:5133                                    ; preds = %5071
  %5134 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5130, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5140 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5139, float %5140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = select i1 %203, float %5142, float %5138
  %5146 = select i1 %203, float %5144, float %5139
  %5147 = select i1 %203, float %5143, float %5140
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5150 = fcmp fast une float %5149, 0.000000e+00
  br i1 %5150, label %5151, label %5168

; <label>:5151                                    ; preds = %5133
  %5152 = fptoui float %77 to i32
  %5153 = fptoui float %78 to i32
  %5154 = lshr i32 %5152, 4
  %5155 = lshr i32 %5153, 4
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = fptoui float %5157 to i32
  %5159 = add i32 %5158, 15
  %5160 = lshr i32 %5159, 4
  %5161 = mul i32 %5160, %5155
  %5162 = add i32 %5161, %5154
  %5163 = shl i32 %5162, 3
  %5164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5163, i32 undef)  ; BufferLoad(srv,index,wot)
  %5165 = extractvalue %dx.types.ResRet.i32 %5164, 0
  %5166 = and i32 %5165, -268435456
  %5167 = icmp eq i32 %5166, -1342177280
  br i1 %5167, label %5178, label %5168

; <label>:5168                                    ; preds = %5151, %5133
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 2
  %5171 = extractvalue %dx.types.CBufRet.f32 %5169, 3
  %5172 = fmul fast float %5170, %77
  %5173 = fmul fast float %5171, %78
  %5174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5172, float %5173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5175 = extractvalue %dx.types.ResRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.ResRet.f32 %5174, 1
  %5177 = extractvalue %dx.types.ResRet.f32 %5174, 2
  br label %5178

; <label>:5178                                    ; preds = %5168, %5151
  %5179 = phi float [ %5175, %5168 ], [ 0.000000e+00, %5151 ]
  %5180 = phi float [ %5176, %5168 ], [ 0.000000e+00, %5151 ]
  %5181 = phi float [ %5177, %5168 ], [ 0.000000e+00, %5151 ]
  %5182 = call float @dx.op.binary.f32(i32 36, float %5180, float %5181)  ; FMin(a,b)
  %5183 = call float @dx.op.binary.f32(i32 36, float %5179, float %5182)  ; FMin(a,b)
  %5184 = fcmp fast ogt float %5183, 0.000000e+00
  br i1 %5184, label %5185, label %5360, !dx.controlflow.hints !75

; <label>:5185                                    ; preds = %5178
  %5186 = fmul fast float %5179, %5145
  %5187 = fmul fast float %5180, %5146
  %5188 = fmul fast float %5181, %5147
  %5189 = fsub fast float %5134, %4906
  %5190 = fsub fast float %5135, %4905
  %5191 = fsub fast float %5136, %4904
  %5192 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5189, float %5190, float %5191)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = call float @dx.op.unary.f32(i32 25, float %5192)  ; Rsqrt(value)
  %5194 = fmul fast float %5193, %5189
  %5195 = fmul fast float %5193, %5190
  %5196 = fmul fast float %5193, %5191
  %5197 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %4910, float %4911, float %4912)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4902, float %4901, float %5194, float %5195, float %5196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5200 = fmul fast float %5199, %5199
  %5201 = fmul fast float %5200, %5129
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = fmul fast float %5202, %5199
  %5204 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4911, float %4912, float %5194, float %5195, float %5196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = fmul fast float %5204, %5204
  %5206 = call float @dx.op.unary.f32(i32 6, float %5197)  ; FAbs(value)
  %5207 = fsub fast float 1.000000e+00, %4916
  %5208 = call float @dx.op.binary.f32(i32 35, float %5207, float 0x3F847AE140000000)  ; FMax(a,b)
  %5209 = fmul fast float %5208, %5208
  %5210 = fmul fast float %5209, %5209
  %5211 = fsub fast float 1.000000e+00, %5210
  %5212 = fmul fast float %4920, %4920
  %5213 = fmul fast float %5212, %5211
  %5214 = fadd fast float %5213, %5210
  %5215 = bitcast float %5214 to i32
  %5216 = ashr i32 %5215, 1
  %5217 = add nsw i32 %5216, 532487669
  %5218 = bitcast i32 %5217 to float
  %5219 = fadd fast float %5218, %4920
  %5220 = fmul fast float %5210, %5205
  %5221 = fsub fast float 1.000000e+00, %5205
  %5222 = fadd fast float %5221, %5220
  %5223 = fmul fast float %5206, %5206
  %5224 = fmul fast float %5223, %5211
  %5225 = fadd fast float %5224, %5210
  %5226 = bitcast float %5225 to i32
  %5227 = ashr i32 %5226, 1
  %5228 = add nsw i32 %5227, 532487669
  %5229 = bitcast i32 %5228 to float
  %5230 = fadd fast float %5229, %5206
  %5231 = fmul fast float %5222, %5222
  %5232 = fmul fast float %5231, %5219
  %5233 = fmul fast float %5232, %5230
  %5234 = fdiv fast float 0x3FF0A00000000000, %5233
  %5235 = fmul fast float %5234, %5210
  %5236 = call float @dx.op.unary.f32(i32 6, float %5198)  ; FAbs(value)
  %5237 = fsub fast float 1.000000e+00, %5236
  %5238 = bitcast float %5237 to i32
  %5239 = sitofp i32 %5238 to float
  %5240 = fmul fast float %5239, 5.000000e+00
  %5241 = fadd fast float %5240, 0xC1EFBF8940000000
  %5242 = fptosi float %5241 to i32
  %5243 = bitcast i32 %5242 to float
  %5244 = fsub fast float 1.000000e+00, %4913
  %5245 = fsub fast float 1.000000e+00, %4914
  %5246 = fsub fast float 1.000000e+00, %4918
  %5247 = fmul fast float %5243, %5244
  %5248 = fmul fast float %5243, %5245
  %5249 = fmul fast float %5243, %5246
  %5250 = fadd fast float %5247, %4913
  %5251 = fadd fast float %5248, %4914
  %5252 = fadd fast float %5249, %4918
  br i1 %5044, label %5253, label %5276

; <label>:5253                                    ; preds = %5185
  %5254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3713, float %5236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5255 = extractvalue %dx.types.ResRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.ResRet.f32 %5254, 1
  %5257 = extractvalue %dx.types.ResRet.f32 %5254, 2
  %5258 = fadd fast float %5255, -5.000000e-01
  %5259 = fadd fast float %5256, -5.000000e-01
  %5260 = fadd fast float %5257, -5.000000e-01
  %5261 = fmul fast float %4913, 4.000000e+00
  %5262 = fmul fast float %5261, %5244
  %5263 = fmul fast float %5262, %5258
  %5264 = fmul fast float %4914, 4.000000e+00
  %5265 = fmul fast float %5264, %5245
  %5266 = fmul fast float %5265, %5259
  %5267 = fmul fast float %4918, 4.000000e+00
  %5268 = fmul fast float %5267, %5246
  %5269 = fmul fast float %5268, %5260
  %5270 = fadd fast float %5263, %5250
  %5271 = fadd fast float %5266, %5251
  %5272 = fadd fast float %5269, %5252
  %5273 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5274 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5275 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  br label %5276

; <label>:5276                                    ; preds = %5253, %5185
  %5277 = phi float [ %5273, %5253 ], [ %5250, %5185 ]
  %5278 = phi float [ %5274, %5253 ], [ %5251, %5185 ]
  %5279 = phi float [ %5275, %5253 ], [ %5252, %5185 ]
  %5280 = fmul fast float %5197, 9.843750e-01
  %5281 = fadd fast float %5280, 7.812500e-03
  %5282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5281, float %5034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 2
  %5284 = extractvalue %dx.types.ResRet.f32 %5282, 3
  %5285 = fmul fast float %5283, %4913
  %5286 = fmul fast float %5283, %4914
  %5287 = fmul fast float %5283, %4918
  %5288 = fadd fast float %5285, %5284
  %5289 = fadd fast float %5286, %5284
  %5290 = fadd fast float %5287, %5284
  br i1 %5044, label %5291, label %5314

; <label>:5291                                    ; preds = %5276
  %5292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3713, float %5197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5296 = fadd fast float %5293, -5.000000e-01
  %5297 = fadd fast float %5294, -5.000000e-01
  %5298 = fadd fast float %5295, -5.000000e-01
  %5299 = fmul fast float %4913, 4.000000e+00
  %5300 = fmul fast float %5299, %5244
  %5301 = fmul fast float %5300, %5296
  %5302 = fmul fast float %4914, 4.000000e+00
  %5303 = fmul fast float %5302, %5245
  %5304 = fmul fast float %5303, %5297
  %5305 = fmul fast float %4918, 4.000000e+00
  %5306 = fmul fast float %5305, %5246
  %5307 = fmul fast float %5306, %5298
  %5308 = fadd fast float %5301, %5288
  %5309 = fadd fast float %5304, %5289
  %5310 = fadd fast float %5307, %5290
  %5311 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5312 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  br label %5314

; <label>:5314                                    ; preds = %5291, %5276
  %5315 = phi float [ %5311, %5291 ], [ %5288, %5276 ]
  %5316 = phi float [ %5312, %5291 ], [ %5289, %5276 ]
  %5317 = phi float [ %5313, %5291 ], [ %5290, %5276 ]
  %5318 = call float @dx.op.binary.f32(i32 35, float %5316, float %5317)  ; FMax(a,b)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5315, float %5318)  ; FMax(a,b)
  %5320 = fsub fast float 1.000000e+00, %5319
  %5321 = fmul fast float %5277, %5235
  %5322 = fmul fast float %5278, %5235
  %5323 = fmul fast float %5279, %5235
  %5324 = fsub fast float 1.000000e+00, %5198
  %5325 = bitcast float %5324 to i32
  %5326 = sitofp i32 %5325 to float
  %5327 = fmul fast float %5326, 5.000000e+00
  %5328 = fadd fast float %5327, 0xC1EFBF8940000000
  %5329 = fptosi float %5328 to i32
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5330, %3714
  %5332 = fmul fast float %5320, %5331
  %5333 = fmul fast float %5332, %5094
  %5334 = fmul fast float %5332, %5095
  %5335 = fmul fast float %5332, %5096
  %5336 = fadd fast float %5333, %5321
  %5337 = fadd fast float %5334, %5322
  %5338 = fadd fast float %5335, %5323
  %5339 = fmul fast float %5203, %5186
  %5340 = fmul fast float %5339, %5320
  %5341 = fmul fast float %5203, %5187
  %5342 = fmul fast float %5341, %5320
  %5343 = fmul fast float %5203, %5188
  %5344 = fmul fast float %5343, %5320
  %5345 = fmul fast float %5339, %5336
  %5346 = fmul fast float %5341, %5337
  %5347 = fmul fast float %5343, %5338
  %5348 = fadd fast float %5340, %5078
  %5349 = fmul fast float %5348, %3710
  %5350 = fadd fast float %5342, %5079
  %5351 = fmul fast float %5350, %3710
  %5352 = fadd fast float %5344, %5080
  %5353 = fmul fast float %5352, %3710
  %5354 = fadd fast float %5345, %5121
  %5355 = fmul fast float %5354, %3710
  %5356 = fadd fast float %5346, %5124
  %5357 = fmul fast float %5356, %3710
  %5358 = fadd fast float %5347, %5127
  %5359 = fmul fast float %5358, %3710
  br label %5360

; <label>:5360                                    ; preds = %5314, %5178, %5071
  %5361 = phi float [ %5122, %5071 ], [ %5122, %5178 ], [ %5355, %5314 ]
  %5362 = phi float [ %5125, %5071 ], [ %5125, %5178 ], [ %5357, %5314 ]
  %5363 = phi float [ %5128, %5071 ], [ %5128, %5178 ], [ %5359, %5314 ]
  %5364 = phi float [ %5117, %5071 ], [ %5117, %5178 ], [ %5349, %5314 ]
  %5365 = phi float [ %5118, %5071 ], [ %5118, %5178 ], [ %5351, %5314 ]
  %5366 = phi float [ %5119, %5071 ], [ %5119, %5178 ], [ %5353, %5314 ]
  %5367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.i32 %5367, 0
  %5369 = icmp eq i32 %5368, 0
  br i1 %5369, label %5804, label %5370

; <label>:5370                                    ; preds = %5360
  %5371 = fptoui float %77 to i32
  %5372 = fptoui float %78 to i32
  %5373 = lshr i32 %5371, 4
  %5374 = lshr i32 %5372, 4
  %5375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5376 = extractvalue %dx.types.CBufRet.i32 %5375, 0
  %5377 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5374, i32 %5376, i32 %5373)  ; UMad(a,b,c)
  %5378 = add nsw i32 %5368, -1
  %5379 = call i32 @dx.op.binary.i32(i32 37, i32 %5378, i32 0)  ; IMax(a,b)
  %5380 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5381 = fptoui float %5380 to i32
  %5382 = lshr i32 %5381, 5
  %5383 = call i32 @dx.op.binary.i32(i32 40, i32 %5382, i32 8191)  ; UMin(a,b)
  %5384 = shl i32 %5383, 2
  %5385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.i32 %5385, 0
  %5387 = lshr i32 %5386, 16
  %5388 = and i32 %5386, 65535
  %5389 = lshr i32 %5386, 21
  %5390 = lshr i32 %5388, 5
  %5391 = call i32 @dx.op.binary.i32(i32 40, i32 %5390, i32 %5379)  ; UMin(a,b)
  %5392 = icmp ugt i32 %5389, %5391
  br i1 %5392, label %5804, label %5393

; <label>:5393                                    ; preds = %5370
  br label %5394

; <label>:5394                                    ; preds = %5794, %5393
  %5395 = phi i32 [ %5801, %5794 ], [ %5389, %5393 ]
  %5396 = phi float [ %5795, %5794 ], [ %5361, %5393 ]
  %5397 = phi float [ %5796, %5794 ], [ %5362, %5393 ]
  %5398 = phi float [ %5797, %5794 ], [ %5363, %5393 ]
  %5399 = phi float [ %5798, %5794 ], [ %5364, %5393 ]
  %5400 = phi float [ %5799, %5794 ], [ %5365, %5393 ]
  %5401 = phi float [ %5800, %5794 ], [ %5366, %5393 ]
  %5402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.i32 %5402, 0
  %5404 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5377, i32 %5403, i32 %5395)  ; UMad(a,b,c)
  %5405 = shl i32 %5404, 2
  %5406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.i32 %5406, 0
  %5408 = shl i32 %5395, 5
  %5409 = sub nsw i32 %5387, %5408
  %5410 = call i32 @dx.op.binary.i32(i32 37, i32 %5409, i32 0)  ; IMax(a,b)
  %5411 = call i32 @dx.op.binary.i32(i32 38, i32 %5410, i32 31)  ; IMin(a,b)
  %5412 = sub nsw i32 1, %5387
  %5413 = add nsw i32 %5412, %5388
  %5414 = call i32 @dx.op.binary.i32(i32 37, i32 %5413, i32 0)  ; IMax(a,b)
  %5415 = call i32 @dx.op.binary.i32(i32 38, i32 %5414, i32 32)  ; IMin(a,b)
  %5416 = and i32 %5415, 31
  %5417 = shl i32 -1, %5416
  %5418 = xor i32 %5417, -1
  %5419 = and i32 %5411, 31
  %5420 = shl i32 %5418, %5419
  %5421 = icmp eq i32 %5415, 32
  %5422 = select i1 %5421, i32 -1, i32 %5420
  %5423 = and i32 %5422, %5407
  %5424 = icmp eq i32 %5423, 0
  br i1 %5424, label %5794, label %5425

; <label>:5425                                    ; preds = %5394
  br label %5426

; <label>:5426                                    ; preds = %5506, %5425
  %5427 = phi i32 [ %5438, %5506 ], [ %5423, %5425 ]
  %5428 = phi float [ %5507, %5506 ], [ %5396, %5425 ]
  %5429 = phi float [ %5508, %5506 ], [ %5397, %5425 ]
  %5430 = phi float [ %5509, %5506 ], [ %5398, %5425 ]
  %5431 = phi float [ %5510, %5506 ], [ %5399, %5425 ]
  %5432 = phi float [ %5511, %5506 ], [ %5400, %5425 ]
  %5433 = phi float [ %5512, %5506 ], [ %5401, %5425 ]
  %5434 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5427)  ; FirstbitLo(value)
  %5435 = add i32 %5434, %5408
  %5436 = and i32 %5434, 31
  %5437 = shl i32 1, %5436
  %5438 = xor i32 %5437, %5427
  %5439 = mul i32 %5435, 112
  %5440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.ResRet.f32 %5440, 2
  %5444 = or i32 %5439, 12
  %5445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5444, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = add i32 %5439, 44
  %5448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5447, i32 undef)  ; BufferLoad(srv,index,wot)
  %5449 = extractvalue %dx.types.ResRet.f32 %5448, 0
  %5450 = add i32 %5439, 48
  %5451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5450, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5451, 2
  %5455 = add i32 %5439, 80
  %5456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5455, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 1
  %5458 = extractvalue %dx.types.ResRet.f32 %5456, 2
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = select i1 %203, float %5457, float %5441
  %5461 = select i1 %203, float %5459, float %5442
  %5462 = select i1 %203, float %5458, float %5443
  %5463 = fsub fast float %5452, %164
  %5464 = fsub fast float %5453, %165
  %5465 = fsub fast float %5454, %166
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = call float @dx.op.unary.f32(i32 24, float %5466)  ; Sqrt(value)
  %5468 = fdiv fast float 1.000000e+00, %5467
  %5469 = fmul fast float %5468, %5463
  %5470 = fmul fast float %5468, %5464
  %5471 = fmul fast float %5468, %5465
  %5472 = fadd fast float %5467, %5446
  %5473 = fdiv fast float 1.000000e+00, %5472
  %5474 = fmul float %5449, %5473
  %5475 = fmul float %5474, %5474
  %5476 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5477 = and i32 %5437, %5423
  %5478 = icmp eq i32 %5477, 0
  br i1 %5478, label %5501, label %5479, !dx.controlflow.hints !76

; <label>:5479                                    ; preds = %5426
  %5480 = lshr i32 %5371, 5
  %5481 = lshr i32 %5372, 5
  %5482 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5480, i32 %5481, i32 %5435, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5483 = extractvalue %dx.types.ResRet.i32 %5482, 0
  %5484 = and i32 %5483, 3
  %5485 = icmp eq i32 %5484, 0
  %5486 = select i1 %5485, float 1.000000e+00, float 0.000000e+00
  %5487 = icmp eq i32 %5484, 3
  br i1 %5487, label %5488, label %5501

; <label>:5488                                    ; preds = %5479
  %5489 = lshr i32 %5483, 10
  %5490 = and i32 %5489, 8160
  %5491 = and i32 %5372, 31
  %5492 = or i32 %5490, %5491
  %5493 = lshr i32 %5483, 1
  %5494 = and i32 %5493, 16352
  %5495 = and i32 %5371, 31
  %5496 = or i32 %5494, %5495
  %5497 = lshr i32 %5483, 23
  %5498 = and i32 %5497, 255
  %5499 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5496, i32 %5492, i32 %5498, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5500 = extractvalue %dx.types.ResRet.f32 %5499, 0
  br label %5501

; <label>:5501                                    ; preds = %5488, %5479, %5426
  %5502 = phi float [ %5500, %5488 ], [ %5486, %5479 ], [ 0.000000e+00, %5426 ]
  %5503 = call float @dx.op.binary.f32(i32 36, float %5502, float %5502)  ; FMin(a,b)
  %5504 = call float @dx.op.binary.f32(i32 36, float %5502, float %5503)  ; FMin(a,b)
  %5505 = fcmp fast ogt float %5504, 0.000000e+00
  br i1 %5505, label %5514, label %5506, !dx.controlflow.hints !77

; <label>:5506                                    ; preds = %5750, %5501
  %5507 = phi float [ %5428, %5501 ], [ %5790, %5750 ]
  %5508 = phi float [ %5429, %5501 ], [ %5791, %5750 ]
  %5509 = phi float [ %5430, %5501 ], [ %5792, %5750 ]
  %5510 = phi float [ %5431, %5501 ], [ %5784, %5750 ]
  %5511 = phi float [ %5432, %5501 ], [ %5785, %5750 ]
  %5512 = phi float [ %5433, %5501 ], [ %5786, %5750 ]
  %5513 = icmp eq i32 %5427, %5437
  br i1 %5513, label %5793, label %5426

; <label>:5514                                    ; preds = %5501
  %5515 = fmul fast float %5502, %5460
  %5516 = fmul fast float %5502, %5461
  %5517 = fmul fast float %5502, %5462
  %5518 = fsub fast float %5454, %4114
  %5519 = fcmp fast ogt float %5518, 0.000000e+00
  %5520 = fsub fast float %166, %4114
  %5521 = fcmp fast ogt float %5520, 0.000000e+00
  %5522 = xor i1 %5521, %5519
  %5523 = fsub fast float %4114, %5454
  %5524 = fmul fast float %5523, 2.000000e+00
  %5525 = fadd fast float %5524, %5454
  %5526 = select i1 %5522, float %5454, float %5525
  %5527 = fsub fast float %5526, %166
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5527, float %5463, float %5464, float %5527)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = call float @dx.op.unary.f32(i32 25, float %5528)  ; Rsqrt(value)
  %5530 = fmul fast float %5529, %5463
  %5531 = fmul fast float %5529, %5464
  %5532 = fmul fast float %5529, %5527
  %5533 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4122)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5530, float %5531, float %5532)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fdiv fast float 1.000000e+00, %5534
  %5536 = fmul fast float %5535, %5533
  %5537 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5520, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = fcmp fast ogt float %5537, 0.000000e+00
  %5539 = fcmp fast olt float %5537, 0.000000e+00
  %5540 = zext i1 %5538 to i32
  %5541 = zext i1 %5539 to i32
  %5542 = sub nsw i32 %5540, %5541
  %5543 = sitofp i32 %5542 to float
  %5544 = fsub fast float %5526, %4114
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5544, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = fcmp fast ogt float %5545, 0.000000e+00
  %5547 = fcmp fast olt float %5545, 0.000000e+00
  %5548 = zext i1 %5546 to i32
  %5549 = zext i1 %5547 to i32
  %5550 = sub nsw i32 %5548, %5549
  %5551 = sitofp i32 %5550 to float
  %5552 = fcmp fast une float %5543, %5551
  br i1 %5552, label %5553, label %5563

; <label>:5553                                    ; preds = %5514
  %5554 = fmul fast float %5536, %5532
  %5555 = fmul fast float %5536, %5531
  %5556 = fmul fast float %5536, %5530
  %5557 = fmul fast float %5556, %5556
  %5558 = fmul fast float %5555, %5555
  %5559 = fadd fast float %5557, %5558
  %5560 = fmul fast float %5554, %5554
  %5561 = fadd fast float %5559, %5560
  %5562 = call float @dx.op.unary.f32(i32 24, float %5561)  ; Sqrt(value)
  br label %5575

; <label>:5563                                    ; preds = %5514
  %5564 = icmp slt i32 %5542, 0
  br i1 %5564, label %5565, label %5575

; <label>:5565                                    ; preds = %5563
  %5566 = fsub fast float %164, %5452
  %5567 = fsub fast float %165, %5453
  %5568 = fsub fast float %166, %5526
  %5569 = fmul fast float %5566, %5566
  %5570 = fmul fast float %5567, %5567
  %5571 = fadd fast float %5569, %5570
  %5572 = fmul fast float %5568, %5568
  %5573 = fadd fast float %5571, %5572
  %5574 = call float @dx.op.unary.f32(i32 24, float %5573)  ; Sqrt(value)
  br label %5575

; <label>:5575                                    ; preds = %5565, %5563, %5553
  %5576 = phi float [ %5562, %5553 ], [ %5574, %5565 ], [ 0.000000e+00, %5563 ]
  %5577 = and i1 %5521, %5519
  %5578 = fsub fast float -0.000000e+00, %5576
  %5579 = select i1 %5577, float -0.000000e+00, float %5578
  %5580 = fmul fast float %4115, 0x3FF7154760000000
  %5581 = fmul fast float %5580, %5579
  %5582 = fmul fast float %4116, 0x3FF7154760000000
  %5583 = fmul fast float %5582, %5579
  %5584 = fmul fast float %4117, 0x3FF7154760000000
  %5585 = fmul fast float %5584, %5579
  %5586 = call float @dx.op.unary.f32(i32 21, float %5581)  ; Exp(value)
  %5587 = call float @dx.op.unary.f32(i32 21, float %5583)  ; Exp(value)
  %5588 = call float @dx.op.unary.f32(i32 21, float %5585)  ; Exp(value)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5590 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5591 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5592 = fmul fast float %5515, %5589
  %5593 = fmul fast float %5516, %5590
  %5594 = fmul fast float %5517, %5591
  %5595 = fsub fast float %5469, %4906
  %5596 = fsub fast float %5470, %4905
  %5597 = fsub fast float %5471, %4904
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %5595, float %5596, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = call float @dx.op.unary.f32(i32 25, float %5598)  ; Rsqrt(value)
  %5600 = fmul fast float %5599, %5595
  %5601 = fmul fast float %5599, %5596
  %5602 = fmul fast float %5599, %5597
  %5603 = call float @dx.op.dot3.f32(i32 55, float %5469, float %5470, float %5471, float %4910, float %4911, float %4912)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4902, float %4901, float %5600, float %5601, float %5602)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5606 = fmul fast float %5605, %5476
  %5607 = fmul fast float %5605, %5605
  %5608 = fmul fast float %5607, %5129
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fmul fast float %5606, %5609
  %5611 = bitcast float %5466 to i32
  %5612 = ashr i32 %5611, 1
  %5613 = sub nsw i32 1597463007, %5612
  %5614 = bitcast i32 %5613 to float
  %5615 = fmul fast float %5614, %5463
  %5616 = fmul fast float %5614, %5464
  %5617 = fmul fast float %5614, %5465
  %5618 = fsub fast float %5615, %4906
  %5619 = fsub fast float %5616, %4905
  %5620 = fsub fast float %5617, %4904
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = call float @dx.op.unary.f32(i32 25, float %5621)  ; Rsqrt(value)
  %5623 = fmul fast float %5618, %5622
  %5624 = fmul fast float %5619, %5622
  %5625 = fmul fast float %5620, %5622
  %5626 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4911, float %4912, float %5623, float %5624, float %5625)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = fmul fast float %5626, %5626
  %5628 = call float @dx.op.unary.f32(i32 6, float %5603)  ; FAbs(value)
  %5629 = fsub fast float 1.000000e+00, %4916
  %5630 = call float @dx.op.binary.f32(i32 35, float %5629, float 0x3F847AE140000000)  ; FMax(a,b)
  %5631 = fmul fast float %5630, %5630
  %5632 = fmul fast float %5631, %5631
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = fmul fast float %4920, %4920
  %5635 = fmul fast float %5634, %5633
  %5636 = fadd fast float %5635, %5632
  %5637 = bitcast float %5636 to i32
  %5638 = ashr i32 %5637, 1
  %5639 = add nsw i32 %5638, 532487669
  %5640 = bitcast i32 %5639 to float
  %5641 = fadd fast float %5640, %4920
  %5642 = fmul fast float %5632, %5627
  %5643 = fsub fast float 1.000000e+00, %5627
  %5644 = fadd fast float %5643, %5642
  %5645 = fmul fast float %5628, %5628
  %5646 = fmul fast float %5645, %5633
  %5647 = fadd fast float %5646, %5632
  %5648 = bitcast float %5647 to i32
  %5649 = ashr i32 %5648, 1
  %5650 = add nsw i32 %5649, 532487669
  %5651 = bitcast i32 %5650 to float
  %5652 = fadd fast float %5651, %5628
  %5653 = fmul fast float %5644, %5644
  %5654 = fmul fast float %5653, %5641
  %5655 = fmul fast float %5654, %5652
  %5656 = fdiv fast float 1.000000e+00, %5655
  %5657 = bitcast float %5632 to i32
  %5658 = sitofp i32 %5657 to float
  %5659 = fmul fast float %5658, 0x3FE7F73180000000
  %5660 = fadd fast float %5659, 0x41AFE27C40000000
  %5661 = fptosi float %5660 to i32
  %5662 = bitcast i32 %5661 to float
  %5663 = fmul fast float %5449, 0x3FD80E9D60000000
  %5664 = fmul fast float %5663, %5614
  %5665 = fadd fast float %5662, %5664
  %5666 = bitcast float %5665 to i32
  %5667 = sub nsw i32 2129859010, %5666
  %5668 = bitcast i32 %5667 to float
  %5669 = fmul fast float %5632, %5656
  %5670 = fmul fast float %5669, %5662
  %5671 = fmul fast float %5670, %5668
  %5672 = call float @dx.op.unary.f32(i32 6, float %5604)  ; FAbs(value)
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sitofp i32 %5674 to float
  %5676 = fmul fast float %5675, 5.000000e+00
  %5677 = fadd fast float %5676, 0xC1EFBF8940000000
  %5678 = fptosi float %5677 to i32
  %5679 = bitcast i32 %5678 to float
  %5680 = fsub fast float 1.000000e+00, %4913
  %5681 = fsub fast float 1.000000e+00, %4914
  %5682 = fsub fast float 1.000000e+00, %4918
  %5683 = fmul fast float %5679, %5680
  %5684 = fmul fast float %5679, %5681
  %5685 = fmul fast float %5679, %5682
  %5686 = fadd fast float %5683, %4913
  %5687 = fadd fast float %5684, %4914
  %5688 = fadd fast float %5685, %4918
  br i1 %5044, label %5689, label %5712

; <label>:5689                                    ; preds = %5575
  %5690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3713, float %5672, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5691 = extractvalue %dx.types.ResRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.ResRet.f32 %5690, 1
  %5693 = extractvalue %dx.types.ResRet.f32 %5690, 2
  %5694 = fadd fast float %5691, -5.000000e-01
  %5695 = fadd fast float %5692, -5.000000e-01
  %5696 = fadd fast float %5693, -5.000000e-01
  %5697 = fmul fast float %4913, 4.000000e+00
  %5698 = fmul fast float %5697, %5680
  %5699 = fmul fast float %5698, %5694
  %5700 = fmul fast float %4914, 4.000000e+00
  %5701 = fmul fast float %5700, %5681
  %5702 = fmul fast float %5701, %5695
  %5703 = fmul fast float %4918, 4.000000e+00
  %5704 = fmul fast float %5703, %5682
  %5705 = fmul fast float %5704, %5696
  %5706 = fadd fast float %5699, %5686
  %5707 = fadd fast float %5702, %5687
  %5708 = fadd fast float %5705, %5688
  %5709 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5710 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5711 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  br label %5712

; <label>:5712                                    ; preds = %5689, %5575
  %5713 = phi float [ %5709, %5689 ], [ %5686, %5575 ]
  %5714 = phi float [ %5710, %5689 ], [ %5687, %5575 ]
  %5715 = phi float [ %5711, %5689 ], [ %5688, %5575 ]
  %5716 = fmul fast float %5603, 9.843750e-01
  %5717 = fadd fast float %5716, 7.812500e-03
  %5718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5717, float %5034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5719 = extractvalue %dx.types.ResRet.f32 %5718, 2
  %5720 = extractvalue %dx.types.ResRet.f32 %5718, 3
  %5721 = fmul fast float %5719, %4913
  %5722 = fmul fast float %5719, %4914
  %5723 = fmul fast float %5719, %4918
  %5724 = fadd fast float %5721, %5720
  %5725 = fadd fast float %5722, %5720
  %5726 = fadd fast float %5723, %5720
  br i1 %5044, label %5727, label %5750

; <label>:5727                                    ; preds = %5712
  %5728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3713, float %5603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5729 = extractvalue %dx.types.ResRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.ResRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.ResRet.f32 %5728, 2
  %5732 = fadd fast float %5729, -5.000000e-01
  %5733 = fadd fast float %5730, -5.000000e-01
  %5734 = fadd fast float %5731, -5.000000e-01
  %5735 = fmul fast float %4913, 4.000000e+00
  %5736 = fmul fast float %5735, %5680
  %5737 = fmul fast float %5736, %5732
  %5738 = fmul fast float %4914, 4.000000e+00
  %5739 = fmul fast float %5738, %5681
  %5740 = fmul fast float %5739, %5733
  %5741 = fmul fast float %4918, 4.000000e+00
  %5742 = fmul fast float %5741, %5682
  %5743 = fmul fast float %5742, %5734
  %5744 = fadd fast float %5737, %5724
  %5745 = fadd fast float %5740, %5725
  %5746 = fadd fast float %5743, %5726
  %5747 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5748 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5749 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  br label %5750

; <label>:5750                                    ; preds = %5727, %5712
  %5751 = phi float [ %5747, %5727 ], [ %5724, %5712 ]
  %5752 = phi float [ %5748, %5727 ], [ %5725, %5712 ]
  %5753 = phi float [ %5749, %5727 ], [ %5726, %5712 ]
  %5754 = call float @dx.op.binary.f32(i32 35, float %5752, float %5753)  ; FMax(a,b)
  %5755 = call float @dx.op.binary.f32(i32 35, float %5751, float %5754)  ; FMax(a,b)
  %5756 = fsub fast float 1.000000e+00, %5755
  %5757 = fmul fast float %5713, %5671
  %5758 = fmul fast float %5714, %5671
  %5759 = fmul fast float %5715, %5671
  %5760 = fsub fast float 1.000000e+00, %5604
  %5761 = bitcast float %5760 to i32
  %5762 = sitofp i32 %5761 to float
  %5763 = fmul fast float %5762, 5.000000e+00
  %5764 = fadd fast float %5763, 0xC1EFBF8940000000
  %5765 = fptosi float %5764 to i32
  %5766 = bitcast i32 %5765 to float
  %5767 = fmul fast float %5766, %3714
  %5768 = fmul fast float %5756, %5767
  %5769 = fmul fast float %5768, %5094
  %5770 = fmul fast float %5768, %5095
  %5771 = fmul fast float %5768, %5096
  %5772 = fadd fast float %5769, %5757
  %5773 = fadd fast float %5770, %5758
  %5774 = fadd fast float %5771, %5759
  %5775 = fmul fast float %5592, %3710
  %5776 = fmul fast float %5775, %5610
  %5777 = fmul fast float %5776, %5756
  %5778 = fmul fast float %5593, %3710
  %5779 = fmul fast float %5778, %5610
  %5780 = fmul fast float %5779, %5756
  %5781 = fmul fast float %5594, %3710
  %5782 = fmul fast float %5781, %5610
  %5783 = fmul fast float %5782, %5756
  %5784 = fadd fast float %5777, %5431
  %5785 = fadd fast float %5780, %5432
  %5786 = fadd fast float %5783, %5433
  %5787 = fmul fast float %5776, %5772
  %5788 = fmul fast float %5779, %5773
  %5789 = fmul fast float %5782, %5774
  %5790 = fadd fast float %5787, %5428
  %5791 = fadd fast float %5788, %5429
  %5792 = fadd fast float %5789, %5430
  br label %5506

; <label>:5793                                    ; preds = %5506
  br label %5794

; <label>:5794                                    ; preds = %5793, %5394
  %5795 = phi float [ %5396, %5394 ], [ %5507, %5793 ]
  %5796 = phi float [ %5397, %5394 ], [ %5508, %5793 ]
  %5797 = phi float [ %5398, %5394 ], [ %5509, %5793 ]
  %5798 = phi float [ %5399, %5394 ], [ %5510, %5793 ]
  %5799 = phi float [ %5400, %5394 ], [ %5511, %5793 ]
  %5800 = phi float [ %5401, %5394 ], [ %5512, %5793 ]
  %5801 = add i32 %5395, 1
  %5802 = icmp ugt i32 %5801, %5391
  br i1 %5802, label %5803, label %5394

; <label>:5803                                    ; preds = %5794
  br label %5804

; <label>:5804                                    ; preds = %5803, %5370, %5360
  %5805 = phi float [ %5361, %5360 ], [ %5361, %5370 ], [ %5795, %5803 ]
  %5806 = phi float [ %5362, %5360 ], [ %5362, %5370 ], [ %5796, %5803 ]
  %5807 = phi float [ %5363, %5360 ], [ %5363, %5370 ], [ %5797, %5803 ]
  %5808 = phi float [ %5364, %5360 ], [ %5364, %5370 ], [ %5798, %5803 ]
  %5809 = phi float [ %5365, %5360 ], [ %5365, %5370 ], [ %5799, %5803 ]
  %5810 = phi float [ %5366, %5360 ], [ %5366, %5370 ], [ %5800, %5803 ]
  %5811 = call float @dx.op.unary.f32(i32 24, float %4907)  ; Sqrt(value)
  %5812 = call float @dx.op.unary.f32(i32 24, float %4908)  ; Sqrt(value)
  %5813 = call float @dx.op.unary.f32(i32 24, float %4909)  ; Sqrt(value)
  %5814 = fmul fast float %5811, %5808
  %5815 = fmul fast float %5812, %5809
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 0
  br i1 %203, label %5818, label %5838

; <label>:5818                                    ; preds = %5804
  %5819 = fadd fast float %5810, %3716
  %5820 = fmul fast float %5819, %3717
  %5821 = fsub fast float 1.000000e+00, %3717
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5825 = fmul fast float %5824, %5822
  %5826 = fadd fast float %5825, %5820
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = fmul fast float %5828, %5100
  %5830 = fsub fast float %5826, %5829
  %5831 = fadd fast float %5815, %5814
  %5832 = fmul fast float %5817, %5831
  %5833 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5834 = fsub fast float %5830, %5833
  %5835 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5836 = fmul fast float %5834, %5835
  %5837 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  br label %5854

; <label>:5838                                    ; preds = %5804
  %5839 = fmul fast float %5813, %5810
  %5840 = fmul fast float %5817, %5814
  %5841 = fmul fast float %5817, %5815
  %5842 = fmul fast float %5839, %5817
  %5843 = add i32 %33, 356
  %5844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5843, i32 undef)  ; BufferLoad(srv,index,wot)
  %5845 = extractvalue %dx.types.ResRet.i32 %5844, 0
  %5846 = and i32 %5845, 32
  %5847 = icmp eq i32 %5846, 0
  br i1 %5847, label %5854, label %5848

; <label>:5848                                    ; preds = %5838
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = fmul fast float %5850, 0x3FE99999A0000000
  %5852 = fadd fast float %5850, %5840
  %5853 = fadd fast float %5851, %5842
  br label %5854

; <label>:5854                                    ; preds = %5848, %5838, %5818
  %5855 = phi float [ %5832, %5818 ], [ %5852, %5848 ], [ %5840, %5838 ]
  %5856 = phi float [ %5837, %5818 ], [ %5841, %5848 ], [ %5841, %5838 ]
  %5857 = phi float [ 1.000000e+00, %5818 ], [ %5853, %5848 ], [ %5842, %5838 ]
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = fmul fast float %5859, %5806
  %5861 = fmul fast float %5859, %5807
  %5862 = fadd fast float %5806, %5805
  %5863 = select i1 %203, float %5862, float %5805
  %5864 = fmul float %5863, %5859
  %5865 = select i1 %203, float 0.000000e+00, float %5860
  %5866 = select i1 %203, float 0.000000e+00, float %5861
  %5867 = fmul fast float %5855, %5811
  %5868 = fmul fast float %5856, %5812
  %5869 = fmul fast float %5857, %5813
  %5870 = fadd fast float %5864, %5867
  %5871 = fadd fast float %5865, %5868
  %5872 = fadd fast float %5866, %5869
  %5873 = select i1 %203, float %5856, float %5871
  %5874 = select i1 %203, float %5857, float %5872
  %5875 = call float @dx.op.binary.f32(i32 36, float %5870, float 3.225500e+04)  ; FMin(a,b)
  %5876 = call float @dx.op.binary.f32(i32 36, float %5873, float 3.225500e+04)  ; FMin(a,b)
  %5877 = call float @dx.op.binary.f32(i32 36, float %5874, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5875)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5876)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5877)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!40 = !{!41, !42, !43, !44, !45}
!41 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!42 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!43 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!44 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!45 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!46 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!47 = !{void ()* @ps_main, !"ps_main", !48, !4, !74}
!48 = !{!49, !72, null}
!49 = !{!50, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71}
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
!70 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !51, i8 1, i32 1, i8 4, i32 13, i8 0, !69}
!71 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !51, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

