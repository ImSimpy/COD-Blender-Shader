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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
; SV_IsFrontFace           0    y         13    FFACE    uint    y  
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 61ddf905579fdb8f3124c740cabe144a
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = icmp ne i32 %32, 0
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %80 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = fmul fast float %82, %76
  %84 = fmul fast float %82, %77
  %85 = select i1 %33, float 1.000000e+00, float -1.000000e+00
  %86 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %87 = bitcast float %86 to i32
  %88 = ashr i32 %87, 1
  %89 = sub nsw i32 1597250115, %88
  %90 = bitcast i32 %89 to float
  %91 = fmul fast float %68, %85
  %92 = fmul fast float %91, %90
  %93 = fmul fast float %69, %85
  %94 = fmul fast float %93, %90
  %95 = fmul fast float %70, %85
  %96 = fmul fast float %95, %90
  %97 = fmul fast float %69, %66
  %98 = fmul fast float %70, %65
  %99 = fsub fast float %97, %98
  %100 = fmul fast float %70, %64
  %101 = fmul fast float %68, %66
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %68, %65
  %104 = fmul fast float %69, %64
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %99, %67
  %107 = fmul fast float %102, %67
  %108 = fmul fast float %105, %67
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fcmp fast une float %110, 0.000000e+00
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %83, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %84, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = select i1 %111, float %122, float %126
  %130 = select i1 %111, float %123, float %127
  %131 = select i1 %111, float %124, float %128
  %132 = fmul fast float %129, %119
  %133 = fmul fast float %130, %119
  %134 = fmul fast float %131, %119
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = select i1 %111, float %136, float %140
  %144 = select i1 %111, float %137, float %141
  %145 = select i1 %111, float %138, float %142
  %146 = fmul fast float %143, %120
  %147 = fmul fast float %144, %120
  %148 = fmul fast float %145, %120
  %149 = fadd fast float %146, %132
  %150 = fadd fast float %147, %133
  %151 = fadd fast float %148, %134
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = select i1 %111, float %153, float %157
  %161 = select i1 %111, float %154, float %158
  %162 = select i1 %111, float %155, float %159
  %163 = fadd fast float %149, %160
  %164 = fadd fast float %150, %161
  %165 = fadd fast float %151, %162
  %166 = fmul fast float %163, %78
  %167 = fmul fast float %164, %78
  %168 = fmul fast float %165, %78
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %172 = fmul fast float %170, %83
  %173 = fmul fast float %171, %84
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = and i32 %175, 114688
  %177 = icmp ne i32 %176, 0
  %178 = select i1 %177, float %172, float 0.000000e+00
  %179 = select i1 %177, float %173, float 0.000000e+00
  %180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %178, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fmul fast float %181, 2.550000e+02
  %183 = fptoui float %182 to i32
  %184 = select i1 %177, i32 %183, i32 0
  %185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.i32 %185, 3
  %187 = and i32 %186, 3
  %188 = icmp ne i32 %187, 0
  %189 = and i32 %186, 4
  %190 = icmp ne i32 %189, 0
  %191 = and i1 %188, %190
  br i1 %191, label %192, label %201

; <label>:192                                     ; preds = %0
  %193 = fmul fast float %114, %84
  %194 = fmul fast float %113, %83
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %194, float %193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = fsub fast float 1.000000e+00, %196
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = fcmp fast olt float %197, %199
  br label %204

; <label>:201                                     ; preds = %0
  %202 = icmp eq i32 %189, 0
  %203 = and i1 %188, %202
  br label %204

; <label>:204                                     ; preds = %201, %192
  %205 = phi i1 [ %200, %192 ], [ %203, %201 ]
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = fmul fast float %207, 0x3FE3C6EF40000000
  %209 = frem fast float %83, 2.560000e+02
  %210 = frem fast float %84, 2.560000e+02
  %211 = fptoui float %209 to i32
  %212 = fptoui float %210 to i32
  %213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fadd fast float %214, %208
  %216 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %217 = add i32 %34, 156
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = shl i32 %219, 4
  %221 = and i32 %220, 32752
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %219, 7
  %224 = and i32 %223, 32752
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = lshr i32 %219, 22
  %227 = shl nuw nsw i32 %226, 5
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = add i32 %34, 216
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F70101020000000
  %235 = lshr i32 %231, 8
  %236 = and i32 %235, 255
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = lshr i32 %231, 16
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = add i32 %34, 36
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = add i32 %34, 288
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 65535
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %252, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = fmul fast float %254, 0x3F50624DE0000000
  %258 = fmul fast float %256, 0x3F50624DE0000000
  %259 = add i32 %34, 172
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = shl i32 %261, 4
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %261, 7
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %261, 22
  %269 = shl nuw nsw i32 %268, 5
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %34, 232
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %273, 8
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = lshr i32 %273, 16
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = add i32 %34, 52
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %34, 304
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = fmul fast float %296, 0x3F50624DE0000000
  %300 = fmul fast float %298, 0x3F50624DE0000000
  %301 = add i32 %34, 188
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = shl i32 %303, 4
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %303, 7
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %303, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %34, 248
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = lshr i32 %315, 8
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = lshr i32 %315, 16
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = add i32 %34, 68
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %34, 320
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = fmul fast float %338, 0x3F50624DE0000000
  %342 = fmul fast float %340, 0x3F50624DE0000000
  %343 = add i32 %34, 204
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = shl i32 %345, 4
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %345, 7
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %345, 22
  %353 = shl nuw nsw i32 %352, 5
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %34, 264
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = lshr i32 %357, 8
  %362 = and i32 %361, 255
  %363 = uitofp i32 %362 to float
  %364 = fmul fast float %363, 0x3F70101020000000
  %365 = lshr i32 %357, 16
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = add i32 %34, 84
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = add i32 %34, 336
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %378, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = fmul fast float %380, 0x3F50624DE0000000
  %384 = fmul fast float %382, 0x3F50624DE0000000
  %385 = add i32 %34, 348
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 32
  %389 = icmp eq i32 %388, 0
  %390 = and i32 %387, 64
  %391 = icmp eq i32 %390, 0
  %392 = and i32 %387, 128
  %393 = icmp eq i32 %392, 0
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 2
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %411, label %398

; <label>:398                                     ; preds = %204
  %399 = add i32 %34, 488
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = add i32 %401, 0
  %403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %403, %dx.types.Handle %80, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = extractvalue %dx.types.ResRet.f32 %404, 1
  %407 = extractvalue %dx.types.ResRet.f32 %404, 2
  %408 = fmul fast float %405, %73
  %409 = fmul fast float %406, %74
  %410 = fmul fast float %407, %75
  br label %411

; <label>:411                                     ; preds = %398, %204
  %412 = phi float [ %75, %204 ], [ %410, %398 ]
  %413 = phi float [ %74, %204 ], [ %409, %398 ]
  %414 = phi float [ %73, %204 ], [ %408, %398 ]
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 2
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %438, label %419

; <label>:419                                     ; preds = %411
  %420 = add i32 %34, 44
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 1
  %424 = icmp ne i32 %423, 0
  %425 = select i1 %424, float %414, float 1.000000e+00
  %426 = add i32 %34, 60
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 1
  %430 = icmp ne i32 %429, 0
  %431 = select i1 %430, float %413, float 1.000000e+00
  %432 = add i32 %34, 76
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 1
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %412, float 1.000000e+00
  br label %438

; <label>:438                                     ; preds = %419, %411
  %439 = phi float [ %412, %411 ], [ %437, %419 ]
  %440 = phi float [ %413, %411 ], [ %431, %419 ]
  %441 = phi float [ %414, %411 ], [ %425, %419 ]
  %442 = lshr i32 %416, 20
  %443 = and i32 %442, 3
  %444 = add nuw nsw i32 %443, 1
  %445 = add i32 %34, 24
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = add i32 %34, 28
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = or i32 %450, %447
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %911, label %453

; <label>:453                                     ; preds = %438
  %454 = and i32 %447, 262144
  %455 = icmp ne i32 %454, 0
  %456 = select i1 %455, float %39, float 1.000000e+00
  %457 = select i1 %455, float %40, float 0.000000e+00
  %458 = select i1 %455, float %41, float 0.000000e+00
  %459 = select i1 %455, float %42, float 1.000000e+00
  %460 = select i1 %455, float %43, float %71
  %461 = select i1 %455, float %44, float %72
  %462 = add i32 %34, 284
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = lshr i32 %464, 16
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = fmul fast float %466, 0x3F50624DE0000000
  %468 = add i32 %34, 88
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = lshr i32 %470, 16
  %472 = and i32 %471, 255
  %473 = lshr i32 %470, 24
  %474 = add i32 %34, 292
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 65535
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = lshr i32 %476, 16
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = add i32 %34, 32
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = lshr i32 %483, 22
  %485 = shl nuw nsw i32 %484, 5
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = shl i32 %483, 4
  %488 = and i32 %487, 32752
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = lshr i32 %483, 7
  %491 = and i32 %490, 32752
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 3
  %495 = fmul fast float %494, 1.000000e+03
  %496 = fmul fast float %257, %495
  %497 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %498 = fadd fast float %497, %247
  %499 = fmul fast float %258, %495
  %500 = call float @dx.op.unary.f32(i32 22, float %499)  ; Frc(value)
  %501 = fadd fast float %500, %249
  %502 = fmul fast float %467, %495
  %503 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %504 = fmul fast float %503, 0x401921FB60000000
  %505 = fadd fast float %504, %486
  %506 = call float @dx.op.unary.f32(i32 13, float %505)  ; Sin(value)
  %507 = call float @dx.op.unary.f32(i32 12, float %505)  ; Cos(value)
  %508 = fsub fast float -0.000000e+00, %506
  %509 = fadd fast float %460, -5.000000e-01
  %510 = fadd fast float %461, -5.000000e-01
  %511 = fmul fast float %478, %509
  %512 = fmul fast float %480, %510
  %513 = fadd fast float %511, 5.000000e-01
  %514 = fadd fast float %512, 5.000000e-01
  %515 = fmul fast float %489, %513
  %516 = fmul fast float %492, %514
  %517 = fmul fast float %507, %515
  %518 = call float @dx.op.tertiary.f32(i32 46, float %508, float %516, float %517)  ; FMad(a,b,c)
  %519 = fmul fast float %506, %515
  %520 = call float @dx.op.tertiary.f32(i32 46, float %507, float %516, float %519)  ; FMad(a,b,c)
  %521 = fadd fast float %498, %518
  %522 = fadd fast float %501, %520
  %523 = icmp ugt i32 %472, 1
  %524 = icmp ugt i32 %470, 33554431
  %525 = or i1 %524, %523
  br i1 %525, label %526, label %551

; <label>:526                                     ; preds = %453
  %527 = add i32 %34, 228
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = lshr i32 %529, 16
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = fmul fast float %494, %531
  %533 = call float @dx.op.unary.f32(i32 22, float %532)  ; Frc(value)
  %534 = mul nuw nsw i32 %472, %473
  %535 = uitofp i32 %534 to float
  %536 = fmul fast float %533, %535
  %537 = call float @dx.op.unary.f32(i32 27, float %536)  ; Round_ni(value)
  %538 = fptoui float %537 to i32
  %539 = urem i32 %538, %472
  %540 = udiv i32 %538, %473
  %541 = call float @dx.op.unary.f32(i32 22, float %521)  ; Frc(value)
  %542 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %543 = uitofp i32 %539 to float
  %544 = uitofp i32 %540 to float
  %545 = fadd fast float %541, %543
  %546 = fadd fast float %542, %544
  %547 = uitofp i32 %472 to float
  %548 = uitofp i32 %473 to float
  %549 = fdiv fast float %545, %547
  %550 = fdiv fast float %546, %548
  br label %551

; <label>:551                                     ; preds = %526, %453
  %552 = phi float [ %549, %526 ], [ %521, %453 ]
  %553 = phi float [ %550, %526 ], [ %522, %453 ]
  %554 = and i32 %447, 16
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %752, label %556

; <label>:556                                     ; preds = %551
  %557 = add i32 %34, 376
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = add i32 %559, 0
  %561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %561, %dx.types.Handle %79, float %552, float %553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = extractvalue %dx.types.ResRet.f32 %562, 2
  %566 = extractvalue %dx.types.ResRet.f32 %562, 3
  %567 = and i32 %470, 255
  %568 = uitofp i32 %567 to float
  %569 = lshr i32 %470, 8
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %566, %568
  %573 = fadd fast float %572, %571
  %574 = fmul fast float %573, 0x3F70101000000000
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 512
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %587, label %579

; <label>:579                                     ; preds = %556
  %580 = add i32 %34, 456
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = add i32 %582, 0
  %584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %584, %dx.types.Handle %80, float %552, float %553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  br label %587

; <label>:587                                     ; preds = %579, %556
  %588 = phi float [ %586, %579 ], [ 1.000000e+00, %556 ]
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 33554432
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %699, label %593

; <label>:593                                     ; preds = %587
  %594 = add i32 %34, 224
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 65535
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = lshr i32 %596, 16
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = add i32 %34, 228
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 65535
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = lshr i32 %607, 24
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = and i32 %607, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %607, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = lshr i32 %607, 16
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = add i32 %34, 220
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = lshr i32 %624, 24
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = and i32 %624, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = lshr i32 %624, 8
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = lshr i32 %624, 16
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, 0x3F70101020000000
  %639 = bitcast float %563 to i32
  %640 = ashr i32 %639, 1
  %641 = sub nsw i32 1597463174, %640
  %642 = bitcast i32 %641 to float
  %643 = fmul fast float %563, 5.000000e-01
  %644 = fmul fast float %642, %642
  %645 = fmul fast float %644, %643
  %646 = fsub fast float 1.500000e+00, %645
  %647 = fmul fast float %642, %563
  %648 = fmul fast float %647, %646
  %649 = bitcast float %564 to i32
  %650 = ashr i32 %649, 1
  %651 = sub nsw i32 1597463174, %650
  %652 = bitcast i32 %651 to float
  %653 = fmul fast float %564, 5.000000e-01
  %654 = fmul fast float %652, %652
  %655 = fmul fast float %654, %653
  %656 = fsub fast float 1.500000e+00, %655
  %657 = fmul fast float %652, %564
  %658 = fmul fast float %657, %656
  %659 = bitcast float %565 to i32
  %660 = ashr i32 %659, 1
  %661 = sub nsw i32 1597463174, %660
  %662 = bitcast i32 %661 to float
  %663 = fmul fast float %565, 5.000000e-01
  %664 = fmul fast float %662, %662
  %665 = fmul fast float %664, %663
  %666 = fsub fast float 1.500000e+00, %665
  %667 = fmul fast float %662, %565
  %668 = fmul fast float %667, %666
  %669 = fsub fast float %648, %630
  %670 = fsub fast float %658, %634
  %671 = fsub fast float %668, %638
  %672 = fmul fast float %669, %598
  %673 = fmul fast float %670, %600
  %674 = fmul fast float %671, %605
  %675 = fadd fast float %672, %613
  %676 = fadd fast float %673, %617
  %677 = fadd fast float %674, %621
  %678 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %679 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %680 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %681 = fmul fast float %678, %678
  %682 = fmul fast float %679, %679
  %683 = fmul fast float %680, %680
  %684 = fsub fast float %681, %563
  %685 = fsub fast float %682, %564
  %686 = fsub fast float %683, %565
  %687 = fmul fast float %684, %588
  %688 = fmul fast float %685, %588
  %689 = fmul fast float %686, %588
  %690 = fadd fast float %687, %563
  %691 = fadd fast float %688, %564
  %692 = fadd fast float %689, %565
  %693 = fadd fast float %610, %574
  %694 = fsub fast float %693, %627
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  %696 = fsub fast float %695, %574
  %697 = fmul fast float %696, %588
  %698 = fadd fast float %697, %574
  br label %752

; <label>:699                                     ; preds = %587
  %700 = and i32 %590, 134217728
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %736, label %702

; <label>:702                                     ; preds = %699
  %703 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %704 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %705 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %706 = fadd fast float %703, -5.000000e-01
  %707 = fadd fast float %704, -5.000000e-01
  %708 = fadd fast float %705, -5.000000e-01
  %709 = fmul fast float %706, %588
  %710 = fmul fast float %707, %588
  %711 = fmul fast float %708, %588
  %712 = fadd fast float %709, 5.000000e-01
  %713 = fadd fast float %710, 5.000000e-01
  %714 = fadd fast float %711, 5.000000e-01
  %715 = call float @dx.op.unary.f32(i32 24, float %563)  ; Sqrt(value)
  %716 = call float @dx.op.unary.f32(i32 24, float %564)  ; Sqrt(value)
  %717 = call float @dx.op.unary.f32(i32 24, float %565)  ; Sqrt(value)
  %718 = fmul fast float %712, 2.000000e+00
  %719 = fsub fast float 1.000000e+00, %718
  %720 = fmul fast float %719, %715
  %721 = fadd fast float %720, %718
  %722 = fmul fast float %721, %715
  %723 = fmul fast float %713, 2.000000e+00
  %724 = fsub fast float 1.000000e+00, %723
  %725 = fmul fast float %724, %716
  %726 = fadd fast float %725, %723
  %727 = fmul fast float %726, %716
  %728 = fmul fast float %714, 2.000000e+00
  %729 = fsub fast float 1.000000e+00, %728
  %730 = fmul fast float %729, %717
  %731 = fadd fast float %730, %728
  %732 = fmul fast float %731, %717
  %733 = fmul fast float %722, %722
  %734 = fmul fast float %727, %727
  %735 = fmul fast float %732, %732
  br label %752

; <label>:736                                     ; preds = %699
  %737 = fmul fast float %234, %234
  %738 = fmul fast float %238, %238
  %739 = fmul fast float %242, %242
  %740 = fadd fast float %737, -1.000000e+00
  %741 = fadd fast float %738, -1.000000e+00
  %742 = fadd fast float %739, -1.000000e+00
  %743 = fmul fast float %588, %740
  %744 = fmul fast float %588, %741
  %745 = fmul fast float %588, %742
  %746 = fadd fast float %743, 1.000000e+00
  %747 = fadd fast float %744, 1.000000e+00
  %748 = fadd fast float %745, 1.000000e+00
  %749 = fmul fast float %746, %563
  %750 = fmul fast float %747, %564
  %751 = fmul fast float %748, %565
  br label %752

; <label>:752                                     ; preds = %736, %702, %593, %551
  %753 = phi float [ %698, %593 ], [ %574, %702 ], [ %574, %736 ], [ 0x3FA23C0BE0000000, %551 ]
  %754 = phi float [ %690, %593 ], [ %733, %702 ], [ %749, %736 ], [ 1.000000e+00, %551 ]
  %755 = phi float [ %691, %593 ], [ %734, %702 ], [ %750, %736 ], [ 1.000000e+00, %551 ]
  %756 = phi float [ %692, %593 ], [ %735, %702 ], [ %751, %736 ], [ 1.000000e+00, %551 ]
  %757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.i32 %757, 1
  %759 = and i32 %758, 1
  %760 = icmp ne i32 %759, 0
  %761 = add i32 %34, 356
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 32
  %765 = icmp ne i32 %764, 0
  %766 = and i1 %760, %765
  %767 = select i1 %766, float 1.000000e+00, float %754
  %768 = select i1 %766, float 0x3FD3333340000000, float %755
  %769 = select i1 %766, float 0x3FD3333340000000, float %756
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 32
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %846, label %774

; <label>:774                                     ; preds = %752
  %775 = add i32 %34, 92
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = add i32 %34, 392
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = add i32 %780, 0
  %782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %782, %dx.types.Handle %79, float %552, float %553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = extractvalue %dx.types.ResRet.f32 %783, 3
  %788 = and i32 %777, 255
  %789 = uitofp i32 %788 to float
  %790 = lshr i32 %777, 8
  %791 = and i32 %790, 255
  %792 = uitofp i32 %791 to float
  %793 = lshr i32 %777, 16
  %794 = and i32 %793, 255
  %795 = uitofp i32 %794 to float
  %796 = fmul fast float %795, 0x3F70101000000000
  %797 = fmul fast float %784, %789
  %798 = fadd fast float %797, %792
  %799 = fmul fast float %798, 0x3F70101000000000
  %800 = fadd fast float %785, -5.000000e-01
  %801 = fadd fast float %787, -5.000000e-01
  %802 = fmul fast float %800, %796
  %803 = fmul fast float %801, %796
  %804 = fadd fast float %802, 5.000000e-01
  %805 = fadd fast float %803, 5.000000e-01
  %806 = fmul fast float %804, 2.000000e+00
  %807 = fadd fast float %806, -1.000000e+00
  %808 = fmul fast float %805, 2.000000e+00
  %809 = fadd fast float %808, -1.000000e+00
  %810 = fadd fast float %807, %809
  %811 = fmul fast float %810, 5.000000e-01
  %812 = fsub fast float %807, %809
  %813 = fmul fast float %812, 5.000000e-01
  %814 = call float @dx.op.unary.f32(i32 6, float %811)  ; FAbs(value)
  %815 = fsub fast float 1.000000e+00, %814
  %816 = call float @dx.op.unary.f32(i32 6, float %813)  ; FAbs(value)
  %817 = fsub fast float %815, %816
  %818 = call float @dx.op.dot3.f32(i32 55, float %811, float %813, float %817, float %811, float %813, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.unary.f32(i32 25, float %818)  ; Rsqrt(value)
  %820 = fmul fast float %811, %819
  %821 = fmul fast float %813, %819
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 67108864
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %842, label %826

; <label>:826                                     ; preds = %774
  %827 = add i32 %34, 280
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 65535
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 65535
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = lshr i32 %829, 16
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = fsub fast float %799, %837
  %839 = fmul fast float %838, %831
  %840 = fadd fast float %839, %835
  %841 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  br label %842

; <label>:842                                     ; preds = %826, %774
  %843 = phi float [ %841, %826 ], [ %799, %774 ]
  %844 = call float @dx.op.dot2.f32(i32 54, float %820, float %821, float %456, float %457)  ; Dot2(ax,ay,bx,by)
  %845 = call float @dx.op.dot2.f32(i32 54, float %820, float %821, float %458, float %459)  ; Dot2(ax,ay,bx,by)
  br label %846

; <label>:846                                     ; preds = %842, %752
  %847 = phi float [ %843, %842 ], [ 0x3FD6666660000000, %752 ]
  %848 = phi float [ %844, %842 ], [ 0.000000e+00, %752 ]
  %849 = phi float [ %845, %842 ], [ 0.000000e+00, %752 ]
  %850 = phi float [ %786, %842 ], [ 1.000000e+00, %752 ]
  %851 = add i32 %34, 160
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = lshr i32 %853, 22
  %855 = shl nuw nsw i32 %854, 5
  %856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %855)  ; LegacyF16ToF32(value)
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 64
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %894, label %861

; <label>:861                                     ; preds = %846
  %862 = add i32 %34, 408
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = add i32 %864, 0
  %866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 131072
  %870 = icmp eq i32 %869, 0
  %871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %866, %dx.types.Handle %79, float %552, float %553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  %875 = fmul fast float %872, %222
  %876 = fmul fast float %873, %225
  %877 = fmul fast float %874, %228
  br i1 %870, label %884, label %878

; <label>:878                                     ; preds = %861
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 0
  %881 = fmul fast float %880, %875
  %882 = fmul fast float %880, %876
  %883 = fmul fast float %880, %877
  br label %884

; <label>:884                                     ; preds = %878, %861
  %885 = phi float [ %881, %878 ], [ %875, %861 ]
  %886 = phi float [ %882, %878 ], [ %876, %861 ]
  %887 = phi float [ %883, %878 ], [ %877, %861 ]
  %888 = fmul fast float %885, %856
  %889 = select i1 %205, float %888, float %885
  %890 = call float @dx.op.dot3.f32(i32 55, float %889, float %886, float %887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %891 = select i1 %205, float 0.000000e+00, float %885
  %892 = select i1 %205, float %890, float %886
  %893 = select i1 %205, float 0.000000e+00, float %887
  br label %894

; <label>:894                                     ; preds = %884, %846
  %895 = phi float [ %891, %884 ], [ 0.000000e+00, %846 ]
  %896 = phi float [ %892, %884 ], [ 0.000000e+00, %846 ]
  %897 = phi float [ %893, %884 ], [ 0.000000e+00, %846 ]
  %898 = add i32 %34, 96
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = lshr i32 %900, 8
  %904 = and i32 %903, 255
  %905 = uitofp i32 %904 to float
  %906 = call float @dx.op.dot3.f32(i32 55, float %767, float %768, float %769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = fmul fast float %905, %906
  %908 = fadd fast float %907, %902
  %909 = fmul fast float %908, 0x3F70101020000000
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  br label %911

; <label>:911                                     ; preds = %894, %438
  %912 = phi float [ 0.000000e+00, %438 ], [ %848, %894 ]
  %913 = phi float [ 0.000000e+00, %438 ], [ %849, %894 ]
  %914 = phi float [ 0.000000e+00, %438 ], [ %767, %894 ]
  %915 = phi float [ 0.000000e+00, %438 ], [ %768, %894 ]
  %916 = phi float [ 0.000000e+00, %438 ], [ %769, %894 ]
  %917 = phi float [ 0.000000e+00, %438 ], [ %895, %894 ]
  %918 = phi float [ 0.000000e+00, %438 ], [ %896, %894 ]
  %919 = phi float [ 0.000000e+00, %438 ], [ %897, %894 ]
  %920 = phi float [ 0.000000e+00, %438 ], [ %753, %894 ]
  %921 = phi float [ 0.000000e+00, %438 ], [ 1.000000e+00, %894 ]
  %922 = phi float [ 0.000000e+00, %438 ], [ %847, %894 ]
  %923 = phi float [ 0.000000e+00, %438 ], [ %850, %894 ]
  %924 = phi float [ 0.000000e+00, %438 ], [ %910, %894 ]
  br i1 %389, label %1651, label %925

; <label>:925                                     ; preds = %911
  %926 = icmp ult i32 %444, 2
  %927 = add i32 %34, 40
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = add i32 %34, 44
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = or i32 %932, %929
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %1651, label %935

; <label>:935                                     ; preds = %925
  %936 = and i32 %929, 262144
  %937 = icmp ne i32 %936, 0
  %938 = select i1 %937, float %39, float 1.000000e+00
  %939 = select i1 %937, float %40, float 0.000000e+00
  %940 = select i1 %937, float %41, float 0.000000e+00
  %941 = select i1 %937, float %42, float 1.000000e+00
  %942 = select i1 %937, float %43, float %71
  %943 = select i1 %937, float %44, float %72
  %944 = add i32 %34, 300
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = lshr i32 %946, 16
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = fmul fast float %948, 0x3F50624DE0000000
  %950 = add i32 %34, 104
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = lshr i32 %952, 16
  %954 = and i32 %953, 255
  %955 = lshr i32 %952, 24
  %956 = add i32 %34, 308
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = and i32 %958, 65535
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = lshr i32 %958, 16
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = add i32 %34, 48
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 22
  %967 = shl nuw nsw i32 %966, 5
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = shl i32 %965, 4
  %970 = and i32 %969, 32752
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = lshr i32 %965, 7
  %973 = and i32 %972, 32752
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %977 = fmul fast float %976, 1.000000e+03
  %978 = fmul fast float %299, %977
  %979 = call float @dx.op.unary.f32(i32 22, float %978)  ; Frc(value)
  %980 = fadd fast float %979, %289
  %981 = fmul fast float %300, %977
  %982 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %983 = fadd fast float %982, %291
  %984 = fmul fast float %949, %977
  %985 = call float @dx.op.unary.f32(i32 22, float %984)  ; Frc(value)
  %986 = fmul fast float %985, 0x401921FB60000000
  %987 = fadd fast float %986, %968
  %988 = call float @dx.op.unary.f32(i32 13, float %987)  ; Sin(value)
  %989 = call float @dx.op.unary.f32(i32 12, float %987)  ; Cos(value)
  %990 = fsub fast float -0.000000e+00, %988
  %991 = fadd fast float %942, -5.000000e-01
  %992 = fadd fast float %943, -5.000000e-01
  %993 = fmul fast float %960, %991
  %994 = fmul fast float %962, %992
  %995 = fadd fast float %993, 5.000000e-01
  %996 = fadd fast float %994, 5.000000e-01
  %997 = fmul fast float %971, %995
  %998 = fmul fast float %974, %996
  %999 = fmul fast float %989, %997
  %1000 = call float @dx.op.tertiary.f32(i32 46, float %990, float %998, float %999)  ; FMad(a,b,c)
  %1001 = fmul fast float %988, %997
  %1002 = call float @dx.op.tertiary.f32(i32 46, float %989, float %998, float %1001)  ; FMad(a,b,c)
  %1003 = fadd fast float %980, %1000
  %1004 = fadd fast float %983, %1002
  %1005 = icmp ugt i32 %954, 1
  %1006 = icmp ugt i32 %952, 33554431
  %1007 = or i1 %1006, %1005
  br i1 %1007, label %1008, label %1033

; <label>:1008                                    ; preds = %935
  %1009 = add i32 %34, 244
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = lshr i32 %1011, 16
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = fmul fast float %976, %1013
  %1015 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1016 = mul nuw nsw i32 %954, %955
  %1017 = uitofp i32 %1016 to float
  %1018 = fmul fast float %1015, %1017
  %1019 = call float @dx.op.unary.f32(i32 27, float %1018)  ; Round_ni(value)
  %1020 = fptoui float %1019 to i32
  %1021 = urem i32 %1020, %954
  %1022 = udiv i32 %1020, %955
  %1023 = call float @dx.op.unary.f32(i32 22, float %1003)  ; Frc(value)
  %1024 = call float @dx.op.unary.f32(i32 22, float %1004)  ; Frc(value)
  %1025 = uitofp i32 %1021 to float
  %1026 = uitofp i32 %1022 to float
  %1027 = fadd fast float %1023, %1025
  %1028 = fadd fast float %1024, %1026
  %1029 = uitofp i32 %954 to float
  %1030 = uitofp i32 %955 to float
  %1031 = fdiv fast float %1027, %1029
  %1032 = fdiv fast float %1028, %1030
  br label %1033

; <label>:1033                                    ; preds = %1008, %935
  %1034 = phi float [ %1031, %1008 ], [ %1003, %935 ]
  %1035 = phi float [ %1032, %1008 ], [ %1004, %935 ]
  %1036 = and i32 %929, 256
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1084, label %1038

; <label>:1038                                    ; preds = %1033
  %1039 = add i32 %34, 444
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = add i32 %1041, 0
  %1043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1043, %dx.types.Handle %80, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = add i32 %34, 116
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = shl i32 %1048, 4
  %1050 = and i32 %1049, 32752
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = lshr i32 %1048, 7
  %1053 = and i32 %1052, 32752
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = fsub fast float 1.000000e+00, %441
  %1056 = call float @dx.op.binary.f32(i32 35, float %1055, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1057 = bitcast float %441 to i32
  %1058 = sitofp i32 %1057 to float
  %1059 = fadd fast float %1058, 0xC1CFBF8940000000
  %1060 = fmul fast float %1054, %1059
  %1061 = fadd fast float %1060, 0x41CFBF8940000000
  %1062 = fptosi float %1061 to i32
  %1063 = bitcast i32 %1062 to float
  %1064 = bitcast float %1056 to i32
  %1065 = sitofp i32 %1064 to float
  %1066 = fadd fast float %1065, 0xC1CFBF8940000000
  %1067 = fmul fast float %1066, %1054
  %1068 = fadd fast float %1067, 0x41CFBF8940000000
  %1069 = fptosi float %1068 to i32
  %1070 = bitcast i32 %1069 to float
  %1071 = fmul fast float %1063, %1051
  %1072 = fmul fast float %1070, %1051
  %1073 = fsub fast float %1056, %1071
  %1074 = fadd fast float %1072, %1056
  %1075 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  %1076 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1077 = fsub fast float %1045, %1075
  %1078 = fsub fast float %1076, %1075
  %1079 = bitcast float %1078 to i32
  %1080 = sub nsw i32 2129859010, %1079
  %1081 = bitcast i32 %1080 to float
  %1082 = fmul fast float %1081, %1077
  %1083 = call float @dx.op.unary.f32(i32 7, float %1082)  ; Saturate(value)
  br label %1084

; <label>:1084                                    ; preds = %1038, %1033
  %1085 = phi float [ %1083, %1038 ], [ %441, %1033 ]
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 128
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1106, label %1090

; <label>:1090                                    ; preds = %1084
  %1091 = add i32 %34, 428
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = add i32 %1093, 0
  %1095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1096 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1095, %dx.types.Handle %80, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 524288
  %1101 = icmp ne i32 %1100, 0
  %1102 = fcmp fast ogt float %1097, 0x3FE0101020000000
  %1103 = select i1 %1102, float 1.000000e+00, float 0.000000e+00
  %1104 = select i1 %1101, float %1103, float %1097
  %1105 = fmul fast float %1104, %1085
  br label %1106

; <label>:1106                                    ; preds = %1090, %1084
  %1107 = phi float [ %1105, %1090 ], [ %1085, %1084 ]
  %1108 = fcmp fast ult float %1107, 0x3F70101020000000
  br i1 %1108, label %1651, label %1109

; <label>:1109                                    ; preds = %1106
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 16
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1312, label %1114

; <label>:1114                                    ; preds = %1109
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %34, 380
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %1119, 0
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1121, %dx.types.Handle %79, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1122, 2
  %1126 = extractvalue %dx.types.ResRet.f32 %1122, 3
  %1127 = and i32 %1116, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = lshr i32 %1116, 8
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1126, %1128
  %1133 = fadd fast float %1132, %1131
  %1134 = fmul fast float %1133, 0x3F70101000000000
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = and i32 %1136, 512
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1147, label %1139

; <label>:1139                                    ; preds = %1114
  %1140 = add i32 %34, 460
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = add i32 %1142, 0
  %1144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1144, %dx.types.Handle %80, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  br label %1147

; <label>:1147                                    ; preds = %1139, %1114
  %1148 = phi float [ %1146, %1139 ], [ 1.000000e+00, %1114 ]
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = and i32 %1150, 33554432
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1259, label %1153

; <label>:1153                                    ; preds = %1147
  %1154 = add i32 %34, 240
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 65535
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = lshr i32 %1156, 16
  %1160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1159)  ; LegacyF16ToF32(value)
  %1161 = add i32 %34, 244
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 65535
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = lshr i32 %1167, 24
  %1169 = uitofp i32 %1168 to float
  %1170 = fmul fast float %1169, 0x3F70101020000000
  %1171 = and i32 %1167, 255
  %1172 = uitofp i32 %1171 to float
  %1173 = fmul fast float %1172, 0x3F70101020000000
  %1174 = lshr i32 %1167, 8
  %1175 = and i32 %1174, 255
  %1176 = uitofp i32 %1175 to float
  %1177 = fmul fast float %1176, 0x3F70101020000000
  %1178 = lshr i32 %1167, 16
  %1179 = and i32 %1178, 255
  %1180 = uitofp i32 %1179 to float
  %1181 = fmul fast float %1180, 0x3F70101020000000
  %1182 = add i32 %34, 236
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = lshr i32 %1184, 24
  %1186 = uitofp i32 %1185 to float
  %1187 = fmul fast float %1186, 0x3F70101020000000
  %1188 = and i32 %1184, 255
  %1189 = uitofp i32 %1188 to float
  %1190 = fmul fast float %1189, 0x3F70101020000000
  %1191 = lshr i32 %1184, 8
  %1192 = and i32 %1191, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = fmul fast float %1193, 0x3F70101020000000
  %1195 = lshr i32 %1184, 16
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3F70101020000000
  %1199 = bitcast float %1123 to i32
  %1200 = ashr i32 %1199, 1
  %1201 = sub nsw i32 1597463174, %1200
  %1202 = bitcast i32 %1201 to float
  %1203 = fmul fast float %1123, 5.000000e-01
  %1204 = fmul fast float %1202, %1202
  %1205 = fmul fast float %1204, %1203
  %1206 = fsub fast float 1.500000e+00, %1205
  %1207 = fmul fast float %1202, %1123
  %1208 = fmul fast float %1207, %1206
  %1209 = bitcast float %1124 to i32
  %1210 = ashr i32 %1209, 1
  %1211 = sub nsw i32 1597463174, %1210
  %1212 = bitcast i32 %1211 to float
  %1213 = fmul fast float %1124, 5.000000e-01
  %1214 = fmul fast float %1212, %1212
  %1215 = fmul fast float %1214, %1213
  %1216 = fsub fast float 1.500000e+00, %1215
  %1217 = fmul fast float %1212, %1124
  %1218 = fmul fast float %1217, %1216
  %1219 = bitcast float %1125 to i32
  %1220 = ashr i32 %1219, 1
  %1221 = sub nsw i32 1597463174, %1220
  %1222 = bitcast i32 %1221 to float
  %1223 = fmul fast float %1125, 5.000000e-01
  %1224 = fmul fast float %1222, %1222
  %1225 = fmul fast float %1224, %1223
  %1226 = fsub fast float 1.500000e+00, %1225
  %1227 = fmul fast float %1222, %1125
  %1228 = fmul fast float %1227, %1226
  %1229 = fsub fast float %1208, %1190
  %1230 = fsub fast float %1218, %1194
  %1231 = fsub fast float %1228, %1198
  %1232 = fmul fast float %1229, %1158
  %1233 = fmul fast float %1230, %1160
  %1234 = fmul fast float %1231, %1165
  %1235 = fadd fast float %1232, %1173
  %1236 = fadd fast float %1233, %1177
  %1237 = fadd fast float %1234, %1181
  %1238 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1239 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1240 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1241 = fmul fast float %1238, %1238
  %1242 = fmul fast float %1239, %1239
  %1243 = fmul fast float %1240, %1240
  %1244 = fsub fast float %1241, %1123
  %1245 = fsub fast float %1242, %1124
  %1246 = fsub fast float %1243, %1125
  %1247 = fmul fast float %1244, %1148
  %1248 = fmul fast float %1245, %1148
  %1249 = fmul fast float %1246, %1148
  %1250 = fadd fast float %1247, %1123
  %1251 = fadd fast float %1248, %1124
  %1252 = fadd fast float %1249, %1125
  %1253 = fadd fast float %1170, %1134
  %1254 = fsub fast float %1253, %1187
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = fsub fast float %1255, %1134
  %1257 = fmul fast float %1256, %1148
  %1258 = fadd fast float %1257, %1134
  br label %1312

; <label>:1259                                    ; preds = %1147
  %1260 = and i32 %1150, 134217728
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1296, label %1262

; <label>:1262                                    ; preds = %1259
  %1263 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %1264 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %1265 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %1266 = fadd fast float %1263, -5.000000e-01
  %1267 = fadd fast float %1264, -5.000000e-01
  %1268 = fadd fast float %1265, -5.000000e-01
  %1269 = fmul fast float %1266, %1148
  %1270 = fmul fast float %1267, %1148
  %1271 = fmul fast float %1268, %1148
  %1272 = fadd fast float %1269, 5.000000e-01
  %1273 = fadd fast float %1270, 5.000000e-01
  %1274 = fadd fast float %1271, 5.000000e-01
  %1275 = call float @dx.op.unary.f32(i32 24, float %1123)  ; Sqrt(value)
  %1276 = call float @dx.op.unary.f32(i32 24, float %1124)  ; Sqrt(value)
  %1277 = call float @dx.op.unary.f32(i32 24, float %1125)  ; Sqrt(value)
  %1278 = fmul fast float %1272, 2.000000e+00
  %1279 = fsub fast float 1.000000e+00, %1278
  %1280 = fmul fast float %1279, %1275
  %1281 = fadd fast float %1280, %1278
  %1282 = fmul fast float %1281, %1275
  %1283 = fmul fast float %1273, 2.000000e+00
  %1284 = fsub fast float 1.000000e+00, %1283
  %1285 = fmul fast float %1284, %1276
  %1286 = fadd fast float %1285, %1283
  %1287 = fmul fast float %1286, %1276
  %1288 = fmul fast float %1274, 2.000000e+00
  %1289 = fsub fast float 1.000000e+00, %1288
  %1290 = fmul fast float %1289, %1277
  %1291 = fadd fast float %1290, %1288
  %1292 = fmul fast float %1291, %1277
  %1293 = fmul fast float %1282, %1282
  %1294 = fmul fast float %1287, %1287
  %1295 = fmul fast float %1292, %1292
  br label %1312

; <label>:1296                                    ; preds = %1259
  %1297 = fmul fast float %276, %276
  %1298 = fmul fast float %280, %280
  %1299 = fmul fast float %284, %284
  %1300 = fadd fast float %1297, -1.000000e+00
  %1301 = fadd fast float %1298, -1.000000e+00
  %1302 = fadd fast float %1299, -1.000000e+00
  %1303 = fmul fast float %1148, %1300
  %1304 = fmul fast float %1148, %1301
  %1305 = fmul fast float %1148, %1302
  %1306 = fadd fast float %1303, 1.000000e+00
  %1307 = fadd fast float %1304, 1.000000e+00
  %1308 = fadd fast float %1305, 1.000000e+00
  %1309 = fmul fast float %1306, %1123
  %1310 = fmul fast float %1307, %1124
  %1311 = fmul fast float %1308, %1125
  br label %1312

; <label>:1312                                    ; preds = %1296, %1262, %1153, %1109
  %1313 = phi float [ %1258, %1153 ], [ %1134, %1262 ], [ %1134, %1296 ], [ 0x3FA23C0BE0000000, %1109 ]
  %1314 = phi float [ %1250, %1153 ], [ %1293, %1262 ], [ %1309, %1296 ], [ 1.000000e+00, %1109 ]
  %1315 = phi float [ %1251, %1153 ], [ %1294, %1262 ], [ %1310, %1296 ], [ 1.000000e+00, %1109 ]
  %1316 = phi float [ %1252, %1153 ], [ %1295, %1262 ], [ %1311, %1296 ], [ 1.000000e+00, %1109 ]
  %1317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.i32 %1317, 1
  %1319 = and i32 %1318, 1
  %1320 = icmp ne i32 %1319, 0
  %1321 = add i32 %34, 356
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 32
  %1325 = icmp ne i32 %1324, 0
  %1326 = and i1 %1320, %1325
  %1327 = select i1 %1326, float 1.000000e+00, float %1314
  %1328 = select i1 %1326, float 0x3FD3333340000000, float %1315
  %1329 = select i1 %1326, float 0x3FD3333340000000, float %1316
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = and i32 %1331, 32
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1406, label %1334

; <label>:1334                                    ; preds = %1312
  %1335 = add i32 %34, 108
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = add i32 %34, 396
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = add i32 %1340, 0
  %1342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1342, %dx.types.Handle %79, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1344 = extractvalue %dx.types.ResRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.ResRet.f32 %1343, 1
  %1346 = extractvalue %dx.types.ResRet.f32 %1343, 2
  %1347 = extractvalue %dx.types.ResRet.f32 %1343, 3
  %1348 = and i32 %1337, 255
  %1349 = uitofp i32 %1348 to float
  %1350 = lshr i32 %1337, 8
  %1351 = and i32 %1350, 255
  %1352 = uitofp i32 %1351 to float
  %1353 = lshr i32 %1337, 16
  %1354 = and i32 %1353, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1355, 0x3F70101000000000
  %1357 = fmul fast float %1344, %1349
  %1358 = fadd fast float %1357, %1352
  %1359 = fmul fast float %1358, 0x3F70101000000000
  %1360 = fadd fast float %1345, -5.000000e-01
  %1361 = fadd fast float %1347, -5.000000e-01
  %1362 = fmul fast float %1360, %1356
  %1363 = fmul fast float %1361, %1356
  %1364 = fadd fast float %1362, 5.000000e-01
  %1365 = fadd fast float %1363, 5.000000e-01
  %1366 = fmul fast float %1364, 2.000000e+00
  %1367 = fadd fast float %1366, -1.000000e+00
  %1368 = fmul fast float %1365, 2.000000e+00
  %1369 = fadd fast float %1368, -1.000000e+00
  %1370 = fadd fast float %1367, %1369
  %1371 = fmul fast float %1370, 5.000000e-01
  %1372 = fsub fast float %1367, %1369
  %1373 = fmul fast float %1372, 5.000000e-01
  %1374 = call float @dx.op.unary.f32(i32 6, float %1371)  ; FAbs(value)
  %1375 = fsub fast float 1.000000e+00, %1374
  %1376 = call float @dx.op.unary.f32(i32 6, float %1373)  ; FAbs(value)
  %1377 = fsub fast float %1375, %1376
  %1378 = call float @dx.op.dot3.f32(i32 55, float %1371, float %1373, float %1377, float %1371, float %1373, float %1377)  ; Dot3(ax,ay,az,bx,by,bz)
  %1379 = call float @dx.op.unary.f32(i32 25, float %1378)  ; Rsqrt(value)
  %1380 = fmul fast float %1371, %1379
  %1381 = fmul fast float %1373, %1379
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 67108864
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1402, label %1386

; <label>:1386                                    ; preds = %1334
  %1387 = add i32 %34, 296
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 65535
  %1391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1390)  ; LegacyF16ToF32(value)
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 65535
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = lshr i32 %1389, 16
  %1397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1396)  ; LegacyF16ToF32(value)
  %1398 = fsub fast float %1359, %1397
  %1399 = fmul fast float %1398, %1391
  %1400 = fadd fast float %1399, %1395
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  br label %1402

; <label>:1402                                    ; preds = %1386, %1334
  %1403 = phi float [ %1401, %1386 ], [ %1359, %1334 ]
  %1404 = call float @dx.op.dot2.f32(i32 54, float %1380, float %1381, float %938, float %939)  ; Dot2(ax,ay,bx,by)
  %1405 = call float @dx.op.dot2.f32(i32 54, float %1380, float %1381, float %940, float %941)  ; Dot2(ax,ay,bx,by)
  br label %1406

; <label>:1406                                    ; preds = %1402, %1312
  %1407 = phi float [ %1403, %1402 ], [ 0x3FD6666660000000, %1312 ]
  %1408 = phi float [ %1404, %1402 ], [ 0.000000e+00, %1312 ]
  %1409 = phi float [ %1405, %1402 ], [ 0.000000e+00, %1312 ]
  %1410 = phi float [ %1346, %1402 ], [ 1.000000e+00, %1312 ]
  %1411 = add i32 %34, 176
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = lshr i32 %1413, 22
  %1415 = shl nuw nsw i32 %1414, 5
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = and i32 %1418, 64
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1454, label %1421

; <label>:1421                                    ; preds = %1406
  %1422 = add i32 %34, 412
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = add i32 %1424, 0
  %1426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 131072
  %1430 = icmp eq i32 %1429, 0
  %1431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1426, %dx.types.Handle %79, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.ResRet.f32 %1431, 1
  %1434 = extractvalue %dx.types.ResRet.f32 %1431, 2
  %1435 = fmul fast float %1432, %264
  %1436 = fmul fast float %1433, %267
  %1437 = fmul fast float %1434, %270
  br i1 %1430, label %1444, label %1438

; <label>:1438                                    ; preds = %1421
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 0
  %1441 = fmul fast float %1440, %1435
  %1442 = fmul fast float %1440, %1436
  %1443 = fmul fast float %1440, %1437
  br label %1444

; <label>:1444                                    ; preds = %1438, %1421
  %1445 = phi float [ %1441, %1438 ], [ %1435, %1421 ]
  %1446 = phi float [ %1442, %1438 ], [ %1436, %1421 ]
  %1447 = phi float [ %1443, %1438 ], [ %1437, %1421 ]
  %1448 = fmul fast float %1445, %1416
  %1449 = select i1 %205, float %1448, float %1445
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1449, float %1446, float %1447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = select i1 %205, float 0.000000e+00, float %1445
  %1452 = select i1 %205, float %1450, float %1446
  %1453 = select i1 %205, float 0.000000e+00, float %1447
  br label %1454

; <label>:1454                                    ; preds = %1444, %1406
  %1455 = phi float [ %1451, %1444 ], [ 0.000000e+00, %1406 ]
  %1456 = phi float [ %1452, %1444 ], [ 0.000000e+00, %1406 ]
  %1457 = phi float [ %1453, %1444 ], [ 0.000000e+00, %1406 ]
  %1458 = add i32 %34, 112
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = lshr i32 %1460, 8
  %1464 = and i32 %1463, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = call float @dx.op.dot3.f32(i32 55, float %1327, float %1328, float %1329, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1467 = fmul fast float %1465, %1466
  %1468 = fadd fast float %1467, %1462
  %1469 = fmul fast float %1468, 0x3F70101020000000
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  br i1 %926, label %1471, label %1479

; <label>:1471                                    ; preds = %1454
  %1472 = fsub fast float 1.000000e+00, %1107
  %1473 = fmul fast float %1472, %914
  %1474 = fmul fast float %1472, %915
  %1475 = fmul fast float %1472, %916
  %1476 = fmul fast float %1472, %917
  %1477 = fmul fast float %1472, %918
  %1478 = fmul fast float %1472, %919
  br label %1479

; <label>:1479                                    ; preds = %1471, %1454
  %1480 = phi float [ %1473, %1471 ], [ %914, %1454 ]
  %1481 = phi float [ %1474, %1471 ], [ %915, %1454 ]
  %1482 = phi float [ %1475, %1471 ], [ %916, %1454 ]
  %1483 = phi float [ %1476, %1471 ], [ %917, %1454 ]
  %1484 = phi float [ %1477, %1471 ], [ %918, %1454 ]
  %1485 = phi float [ %1478, %1471 ], [ %919, %1454 ]
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 3
  %1489 = icmp eq i32 %1488, 3
  br i1 %1489, label %1568, label %1490

; <label>:1490                                    ; preds = %1479
  %1491 = and i32 %1487, 16
  %1492 = icmp ne i32 %1491, 0
  %1493 = select i1 %1492, float %1107, float 0.000000e+00
  %1494 = icmp eq i32 %1488, 0
  br i1 %1494, label %1495, label %1523

; <label>:1495                                    ; preds = %1490
  %1496 = and i32 %1487, 64
  %1497 = icmp ne i32 %1496, 0
  %1498 = select i1 %1497, float %1107, float 0.000000e+00
  %1499 = fsub fast float %1327, %1480
  %1500 = fsub fast float %1328, %1481
  %1501 = fsub fast float %1329, %1482
  %1502 = fmul fast float %1493, %1499
  %1503 = fmul fast float %1493, %1500
  %1504 = fmul fast float %1493, %1501
  %1505 = fadd fast float %1502, %1480
  %1506 = fadd fast float %1503, %1481
  %1507 = fadd fast float %1504, %1482
  %1508 = fsub fast float %1313, %920
  %1509 = fmul fast float %1493, %1508
  %1510 = fadd fast float %1509, %920
  %1511 = fsub fast float %1455, %1483
  %1512 = fsub fast float %1456, %1484
  %1513 = fsub fast float %1457, %1485
  %1514 = fmul fast float %1498, %1511
  %1515 = fmul fast float %1498, %1512
  %1516 = fmul fast float %1498, %1513
  %1517 = fadd fast float %1514, %1483
  %1518 = fadd fast float %1515, %1484
  %1519 = fadd fast float %1516, %1485
  %1520 = fsub fast float %1470, %924
  %1521 = fmul fast float %1493, %1520
  %1522 = fadd fast float %1521, %924
  br label %1568

; <label>:1523                                    ; preds = %1490
  %1524 = icmp eq i32 %1488, 1
  br i1 %1524, label %1525, label %1538

; <label>:1525                                    ; preds = %1523
  %1526 = fadd fast float %1327, -1.000000e+00
  %1527 = fadd fast float %1328, -1.000000e+00
  %1528 = fadd fast float %1329, -1.000000e+00
  %1529 = fmul fast float %1493, %1526
  %1530 = fmul fast float %1493, %1527
  %1531 = fmul fast float %1493, %1528
  %1532 = fadd fast float %1529, 1.000000e+00
  %1533 = fadd fast float %1530, 1.000000e+00
  %1534 = fadd fast float %1531, 1.000000e+00
  %1535 = fmul fast float %1532, %1480
  %1536 = fmul fast float %1533, %1481
  %1537 = fmul fast float %1534, %1482
  br label %1568

; <label>:1538                                    ; preds = %1523
  %1539 = icmp eq i32 %1488, 2
  br i1 %1539, label %1540, label %1568

; <label>:1540                                    ; preds = %1538
  %1541 = call float @dx.op.unary.f32(i32 24, float %1327)  ; Sqrt(value)
  %1542 = call float @dx.op.unary.f32(i32 24, float %1328)  ; Sqrt(value)
  %1543 = call float @dx.op.unary.f32(i32 24, float %1329)  ; Sqrt(value)
  %1544 = fadd fast float %1541, -5.000000e-01
  %1545 = fadd fast float %1542, -5.000000e-01
  %1546 = fadd fast float %1543, -5.000000e-01
  %1547 = fmul fast float %1544, %1493
  %1548 = fmul fast float %1545, %1493
  %1549 = fmul fast float %1546, %1493
  %1550 = fadd fast float %1547, 5.000000e-01
  %1551 = fadd fast float %1548, 5.000000e-01
  %1552 = fadd fast float %1549, 5.000000e-01
  %1553 = fmul fast float %1550, 2.000000e+00
  %1554 = fsub fast float 1.000000e+00, %1553
  %1555 = fmul fast float %1554, %1480
  %1556 = fadd fast float %1555, %1553
  %1557 = fmul fast float %1556, %1480
  %1558 = fmul fast float %1551, 2.000000e+00
  %1559 = fsub fast float 1.000000e+00, %1558
  %1560 = fmul fast float %1559, %1481
  %1561 = fadd fast float %1560, %1558
  %1562 = fmul fast float %1561, %1481
  %1563 = fmul fast float %1552, 2.000000e+00
  %1564 = fsub fast float 1.000000e+00, %1563
  %1565 = fmul fast float %1564, %1482
  %1566 = fadd fast float %1565, %1563
  %1567 = fmul fast float %1566, %1482
  br label %1568

; <label>:1568                                    ; preds = %1540, %1538, %1525, %1495, %1479
  %1569 = phi float [ %1480, %1479 ], [ %1557, %1540 ], [ %1480, %1538 ], [ %1535, %1525 ], [ %1505, %1495 ]
  %1570 = phi float [ %1481, %1479 ], [ %1562, %1540 ], [ %1481, %1538 ], [ %1536, %1525 ], [ %1506, %1495 ]
  %1571 = phi float [ %1482, %1479 ], [ %1567, %1540 ], [ %1482, %1538 ], [ %1537, %1525 ], [ %1507, %1495 ]
  %1572 = phi float [ %1483, %1479 ], [ %1483, %1540 ], [ %1483, %1538 ], [ %1483, %1525 ], [ %1517, %1495 ]
  %1573 = phi float [ %1484, %1479 ], [ %1484, %1540 ], [ %1484, %1538 ], [ %1484, %1525 ], [ %1518, %1495 ]
  %1574 = phi float [ %1485, %1479 ], [ %1485, %1540 ], [ %1485, %1538 ], [ %1485, %1525 ], [ %1519, %1495 ]
  %1575 = phi float [ %920, %1479 ], [ %920, %1540 ], [ %920, %1538 ], [ %920, %1525 ], [ %1510, %1495 ]
  %1576 = phi float [ %924, %1479 ], [ %924, %1540 ], [ %924, %1538 ], [ %924, %1525 ], [ %1522, %1495 ]
  %1577 = and i32 %1487, 12
  %1578 = icmp eq i32 %1577, 12
  br i1 %1578, label %1651, label %1579

; <label>:1579                                    ; preds = %1568
  %1580 = and i32 %1487, 2097184
  %1581 = icmp eq i32 %1580, 2097184
  %1582 = select i1 %1581, float %1107, float 0.000000e+00
  %1583 = and i32 %1487, 4194336
  %1584 = icmp eq i32 %1583, 4194336
  %1585 = select i1 %1584, float %1107, float 0.000000e+00
  %1586 = and i32 %1487, 8388640
  %1587 = icmp eq i32 %1586, 8388640
  %1588 = select i1 %1587, float %1107, float 0.000000e+00
  %1589 = icmp eq i32 %1577, 0
  br i1 %1589, label %1590, label %1603

; <label>:1590                                    ; preds = %1579
  %1591 = fsub fast float %1408, %912
  %1592 = fsub fast float %1409, %913
  %1593 = fmul fast float %1582, %1591
  %1594 = fmul fast float %1582, %1592
  %1595 = fadd fast float %1593, %912
  %1596 = fadd fast float %1594, %913
  %1597 = fsub fast float %1410, %923
  %1598 = fmul fast float %1585, %1597
  %1599 = fadd fast float %1598, %923
  %1600 = fsub fast float %1407, %922
  %1601 = fmul fast float %1588, %1600
  %1602 = fadd fast float %1601, %922
  br label %1651

; <label>:1603                                    ; preds = %1579
  %1604 = icmp eq i32 %1577, 4
  br i1 %1604, label %1605, label %1637

; <label>:1605                                    ; preds = %1603
  %1606 = fmul fast float %1582, %1408
  %1607 = fmul fast float %1582, %1409
  %1608 = fadd fast float %1606, %912
  %1609 = fadd fast float %1607, %913
  %1610 = call float @dx.op.binary.f32(i32 36, float %923, float %1410)  ; FMin(a,b)
  %1611 = fsub fast float %1610, %923
  %1612 = fmul fast float %1611, %1585
  %1613 = fadd fast float %1612, %923
  %1614 = fadd fast float %1407, %922
  %1615 = fmul fast float %1614, 0x3FF337FAE0000000
  %1616 = fmul fast float %922, %922
  %1617 = fmul fast float %1407, %1407
  %1618 = fadd fast float %1617, %1616
  %1619 = fmul fast float %1618, 0x3FE5152B00000000
  %1620 = fmul fast float %922, 0xBFCC1F85E0000000
  %1621 = fmul fast float %1620, %1407
  %1622 = fadd fast float %1621, 0xBFE1363700000000
  %1623 = fadd fast float %1622, %1615
  %1624 = fsub fast float %1623, %1619
  %1625 = fmul fast float %1614, 0x3FBA6F0D00000000
  %1626 = fmul fast float %1618, 0x3FD0432880000000
  %1627 = fmul fast float %922, 0xBFEF110800000000
  %1628 = fmul fast float %1627, %1407
  %1629 = fadd fast float %1628, 1.000000e+00
  %1630 = fsub fast float %1629, %1625
  %1631 = fadd fast float %1630, %1626
  %1632 = fdiv fast float %1624, %1631
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1634 = fsub fast float %1633, %922
  %1635 = fmul fast float %1634, %1588
  %1636 = fadd fast float %1635, %922
  br label %1651

; <label>:1637                                    ; preds = %1603
  %1638 = icmp eq i32 %1577, 8
  br i1 %1638, label %1639, label %1651

; <label>:1639                                    ; preds = %1637
  %1640 = fmul fast float %1582, %1408
  %1641 = fmul fast float %1582, %1409
  %1642 = fadd fast float %1640, %912
  %1643 = fadd fast float %1641, %913
  %1644 = call float @dx.op.binary.f32(i32 36, float %923, float %1410)  ; FMin(a,b)
  %1645 = fsub fast float %1644, %923
  %1646 = fmul fast float %1645, %1585
  %1647 = fadd fast float %1646, %923
  %1648 = fsub fast float %1407, %922
  %1649 = fmul fast float %1588, %1648
  %1650 = fadd fast float %1649, %922
  br label %1651

; <label>:1651                                    ; preds = %1639, %1637, %1605, %1590, %1568, %1106, %925, %911
  %1652 = phi float [ %912, %1568 ], [ %912, %1106 ], [ %912, %911 ], [ %1642, %1639 ], [ %912, %1637 ], [ %1608, %1605 ], [ %1595, %1590 ], [ %912, %925 ]
  %1653 = phi float [ %913, %1568 ], [ %913, %1106 ], [ %913, %911 ], [ %1643, %1639 ], [ %913, %1637 ], [ %1609, %1605 ], [ %1596, %1590 ], [ %913, %925 ]
  %1654 = phi float [ %1569, %1568 ], [ %914, %1106 ], [ %914, %911 ], [ %1569, %1639 ], [ %1569, %1637 ], [ %1569, %1605 ], [ %1569, %1590 ], [ %914, %925 ]
  %1655 = phi float [ %1570, %1568 ], [ %915, %1106 ], [ %915, %911 ], [ %1570, %1639 ], [ %1570, %1637 ], [ %1570, %1605 ], [ %1570, %1590 ], [ %915, %925 ]
  %1656 = phi float [ %1571, %1568 ], [ %916, %1106 ], [ %916, %911 ], [ %1571, %1639 ], [ %1571, %1637 ], [ %1571, %1605 ], [ %1571, %1590 ], [ %916, %925 ]
  %1657 = phi float [ %1572, %1568 ], [ %917, %1106 ], [ %917, %911 ], [ %1572, %1639 ], [ %1572, %1637 ], [ %1572, %1605 ], [ %1572, %1590 ], [ %917, %925 ]
  %1658 = phi float [ %1573, %1568 ], [ %918, %1106 ], [ %918, %911 ], [ %1573, %1639 ], [ %1573, %1637 ], [ %1573, %1605 ], [ %1573, %1590 ], [ %918, %925 ]
  %1659 = phi float [ %1574, %1568 ], [ %919, %1106 ], [ %919, %911 ], [ %1574, %1639 ], [ %1574, %1637 ], [ %1574, %1605 ], [ %1574, %1590 ], [ %919, %925 ]
  %1660 = phi float [ %1575, %1568 ], [ %920, %1106 ], [ %920, %911 ], [ %1575, %1639 ], [ %1575, %1637 ], [ %1575, %1605 ], [ %1575, %1590 ], [ %920, %925 ]
  %1661 = phi float [ %922, %1568 ], [ %922, %1106 ], [ %922, %911 ], [ %1650, %1639 ], [ %922, %1637 ], [ %1636, %1605 ], [ %1602, %1590 ], [ %922, %925 ]
  %1662 = phi float [ %923, %1568 ], [ %923, %1106 ], [ %923, %911 ], [ %1647, %1639 ], [ %923, %1637 ], [ %1613, %1605 ], [ %1599, %1590 ], [ %923, %925 ]
  %1663 = phi float [ %1576, %1568 ], [ %924, %1106 ], [ %924, %911 ], [ %1576, %1639 ], [ %1576, %1637 ], [ %1576, %1605 ], [ %1576, %1590 ], [ %924, %925 ]
  br i1 %391, label %2390, label %1664

; <label>:1664                                    ; preds = %1651
  %1665 = icmp ult i32 %444, 3
  %1666 = add i32 %34, 56
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = add i32 %34, 60
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = or i32 %1671, %1668
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %2390, label %1674

; <label>:1674                                    ; preds = %1664
  %1675 = and i32 %1668, 262144
  %1676 = icmp ne i32 %1675, 0
  %1677 = select i1 %1676, float %39, float 1.000000e+00
  %1678 = select i1 %1676, float %40, float 0.000000e+00
  %1679 = select i1 %1676, float %41, float 0.000000e+00
  %1680 = select i1 %1676, float %42, float 1.000000e+00
  %1681 = select i1 %1676, float %43, float %71
  %1682 = select i1 %1676, float %44, float %72
  %1683 = add i32 %34, 316
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = lshr i32 %1685, 16
  %1687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1686)  ; LegacyF16ToF32(value)
  %1688 = fmul fast float %1687, 0x3F50624DE0000000
  %1689 = add i32 %34, 120
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = lshr i32 %1691, 16
  %1693 = and i32 %1692, 255
  %1694 = lshr i32 %1691, 24
  %1695 = add i32 %34, 324
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = and i32 %1697, 65535
  %1699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1698)  ; LegacyF16ToF32(value)
  %1700 = lshr i32 %1697, 16
  %1701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1700)  ; LegacyF16ToF32(value)
  %1702 = add i32 %34, 64
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = lshr i32 %1704, 22
  %1706 = shl nuw nsw i32 %1705, 5
  %1707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1706)  ; LegacyF16ToF32(value)
  %1708 = shl i32 %1704, 4
  %1709 = and i32 %1708, 32752
  %1710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1709)  ; LegacyF16ToF32(value)
  %1711 = lshr i32 %1704, 7
  %1712 = and i32 %1711, 32752
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 3
  %1716 = fmul fast float %1715, 1.000000e+03
  %1717 = fmul fast float %341, %1716
  %1718 = call float @dx.op.unary.f32(i32 22, float %1717)  ; Frc(value)
  %1719 = fadd fast float %1718, %331
  %1720 = fmul fast float %342, %1716
  %1721 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1722 = fadd fast float %1721, %333
  %1723 = fmul fast float %1688, %1716
  %1724 = call float @dx.op.unary.f32(i32 22, float %1723)  ; Frc(value)
  %1725 = fmul fast float %1724, 0x401921FB60000000
  %1726 = fadd fast float %1725, %1707
  %1727 = call float @dx.op.unary.f32(i32 13, float %1726)  ; Sin(value)
  %1728 = call float @dx.op.unary.f32(i32 12, float %1726)  ; Cos(value)
  %1729 = fsub fast float -0.000000e+00, %1727
  %1730 = fadd fast float %1681, -5.000000e-01
  %1731 = fadd fast float %1682, -5.000000e-01
  %1732 = fmul fast float %1699, %1730
  %1733 = fmul fast float %1701, %1731
  %1734 = fadd fast float %1732, 5.000000e-01
  %1735 = fadd fast float %1733, 5.000000e-01
  %1736 = fmul fast float %1710, %1734
  %1737 = fmul fast float %1713, %1735
  %1738 = fmul fast float %1728, %1736
  %1739 = call float @dx.op.tertiary.f32(i32 46, float %1729, float %1737, float %1738)  ; FMad(a,b,c)
  %1740 = fmul fast float %1727, %1736
  %1741 = call float @dx.op.tertiary.f32(i32 46, float %1728, float %1737, float %1740)  ; FMad(a,b,c)
  %1742 = fadd fast float %1719, %1739
  %1743 = fadd fast float %1722, %1741
  %1744 = icmp ugt i32 %1693, 1
  %1745 = icmp ugt i32 %1691, 33554431
  %1746 = or i1 %1745, %1744
  br i1 %1746, label %1747, label %1772

; <label>:1747                                    ; preds = %1674
  %1748 = add i32 %34, 260
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = lshr i32 %1750, 16
  %1752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1751)  ; LegacyF16ToF32(value)
  %1753 = fmul fast float %1715, %1752
  %1754 = call float @dx.op.unary.f32(i32 22, float %1753)  ; Frc(value)
  %1755 = mul nuw nsw i32 %1693, %1694
  %1756 = uitofp i32 %1755 to float
  %1757 = fmul fast float %1754, %1756
  %1758 = call float @dx.op.unary.f32(i32 27, float %1757)  ; Round_ni(value)
  %1759 = fptoui float %1758 to i32
  %1760 = urem i32 %1759, %1693
  %1761 = udiv i32 %1759, %1694
  %1762 = call float @dx.op.unary.f32(i32 22, float %1742)  ; Frc(value)
  %1763 = call float @dx.op.unary.f32(i32 22, float %1743)  ; Frc(value)
  %1764 = uitofp i32 %1760 to float
  %1765 = uitofp i32 %1761 to float
  %1766 = fadd fast float %1762, %1764
  %1767 = fadd fast float %1763, %1765
  %1768 = uitofp i32 %1693 to float
  %1769 = uitofp i32 %1694 to float
  %1770 = fdiv fast float %1766, %1768
  %1771 = fdiv fast float %1767, %1769
  br label %1772

; <label>:1772                                    ; preds = %1747, %1674
  %1773 = phi float [ %1770, %1747 ], [ %1742, %1674 ]
  %1774 = phi float [ %1771, %1747 ], [ %1743, %1674 ]
  %1775 = and i32 %1668, 256
  %1776 = icmp eq i32 %1775, 0
  br i1 %1776, label %1823, label %1777

; <label>:1777                                    ; preds = %1772
  %1778 = add i32 %34, 448
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = add i32 %1780, 0
  %1782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1782, %dx.types.Handle %80, float %1773, float %1774, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1784 = extractvalue %dx.types.ResRet.f32 %1783, 0
  %1785 = add i32 %34, 132
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = shl i32 %1787, 4
  %1789 = and i32 %1788, 32752
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = lshr i32 %1787, 7
  %1792 = and i32 %1791, 32752
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = fsub fast float 1.000000e+00, %440
  %1795 = call float @dx.op.binary.f32(i32 35, float %1794, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1796 = bitcast float %440 to i32
  %1797 = sitofp i32 %1796 to float
  %1798 = fadd fast float %1797, 0xC1CFBF8940000000
  %1799 = fmul fast float %1793, %1798
  %1800 = fadd fast float %1799, 0x41CFBF8940000000
  %1801 = fptosi float %1800 to i32
  %1802 = bitcast i32 %1801 to float
  %1803 = bitcast float %1795 to i32
  %1804 = sitofp i32 %1803 to float
  %1805 = fadd fast float %1804, 0xC1CFBF8940000000
  %1806 = fmul fast float %1805, %1793
  %1807 = fadd fast float %1806, 0x41CFBF8940000000
  %1808 = fptosi float %1807 to i32
  %1809 = bitcast i32 %1808 to float
  %1810 = fmul fast float %1802, %1790
  %1811 = fmul fast float %1809, %1790
  %1812 = fsub fast float %1795, %1810
  %1813 = fadd fast float %1811, %1795
  %1814 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  %1815 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1816 = fsub fast float %1784, %1814
  %1817 = fsub fast float %1815, %1814
  %1818 = bitcast float %1817 to i32
  %1819 = sub nsw i32 2129859010, %1818
  %1820 = bitcast i32 %1819 to float
  %1821 = fmul fast float %1820, %1816
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  br label %1823

; <label>:1823                                    ; preds = %1777, %1772
  %1824 = phi float [ %1822, %1777 ], [ %440, %1772 ]
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = and i32 %1826, 128
  %1828 = icmp eq i32 %1827, 0
  br i1 %1828, label %1845, label %1829

; <label>:1829                                    ; preds = %1823
  %1830 = add i32 %34, 432
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = add i32 %1832, 0
  %1834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1835 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1834, %dx.types.Handle %80, float %1773, float %1774, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 524288
  %1840 = icmp ne i32 %1839, 0
  %1841 = fcmp fast ogt float %1836, 0x3FE0101020000000
  %1842 = select i1 %1841, float 1.000000e+00, float 0.000000e+00
  %1843 = select i1 %1840, float %1842, float %1836
  %1844 = fmul fast float %1843, %1824
  br label %1845

; <label>:1845                                    ; preds = %1829, %1823
  %1846 = phi float [ %1844, %1829 ], [ %1824, %1823 ]
  %1847 = fcmp fast ult float %1846, 0x3F70101020000000
  br i1 %1847, label %2390, label %1848

; <label>:1848                                    ; preds = %1845
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %1850, 16
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %2051, label %1853

; <label>:1853                                    ; preds = %1848
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = add i32 %34, 384
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = add i32 %1858, 0
  %1860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1860, %dx.types.Handle %79, float %1773, float %1774, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.ResRet.f32 %1861, 1
  %1864 = extractvalue %dx.types.ResRet.f32 %1861, 2
  %1865 = extractvalue %dx.types.ResRet.f32 %1861, 3
  %1866 = and i32 %1855, 255
  %1867 = uitofp i32 %1866 to float
  %1868 = lshr i32 %1855, 8
  %1869 = and i32 %1868, 255
  %1870 = uitofp i32 %1869 to float
  %1871 = fmul fast float %1865, %1867
  %1872 = fadd fast float %1871, %1870
  %1873 = fmul fast float %1872, 0x3F70101000000000
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = and i32 %1875, 512
  %1877 = icmp eq i32 %1876, 0
  br i1 %1877, label %1886, label %1878

; <label>:1878                                    ; preds = %1853
  %1879 = add i32 %34, 464
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = add i32 %1881, 0
  %1883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1882, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1883, %dx.types.Handle %80, float %1773, float %1774, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  br label %1886

; <label>:1886                                    ; preds = %1878, %1853
  %1887 = phi float [ %1885, %1878 ], [ 1.000000e+00, %1853 ]
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %1889, 33554432
  %1891 = icmp eq i32 %1890, 0
  br i1 %1891, label %1998, label %1892

; <label>:1892                                    ; preds = %1886
  %1893 = add i32 %34, 256
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = and i32 %1895, 65535
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = lshr i32 %1895, 16
  %1899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1898)  ; LegacyF16ToF32(value)
  %1900 = add i32 %34, 260
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = and i32 %1902, 65535
  %1904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1903)  ; LegacyF16ToF32(value)
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = lshr i32 %1906, 24
  %1908 = uitofp i32 %1907 to float
  %1909 = fmul fast float %1908, 0x3F70101020000000
  %1910 = and i32 %1906, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = fmul fast float %1911, 0x3F70101020000000
  %1913 = lshr i32 %1906, 8
  %1914 = and i32 %1913, 255
  %1915 = uitofp i32 %1914 to float
  %1916 = fmul fast float %1915, 0x3F70101020000000
  %1917 = lshr i32 %1906, 16
  %1918 = and i32 %1917, 255
  %1919 = uitofp i32 %1918 to float
  %1920 = fmul fast float %1919, 0x3F70101020000000
  %1921 = add i32 %34, 252
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = lshr i32 %1923, 24
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1925, 0x3F70101020000000
  %1927 = and i32 %1923, 255
  %1928 = uitofp i32 %1927 to float
  %1929 = fmul fast float %1928, 0x3F70101020000000
  %1930 = lshr i32 %1923, 8
  %1931 = and i32 %1930, 255
  %1932 = uitofp i32 %1931 to float
  %1933 = fmul fast float %1932, 0x3F70101020000000
  %1934 = lshr i32 %1923, 16
  %1935 = and i32 %1934, 255
  %1936 = uitofp i32 %1935 to float
  %1937 = fmul fast float %1936, 0x3F70101020000000
  %1938 = bitcast float %1862 to i32
  %1939 = ashr i32 %1938, 1
  %1940 = sub nsw i32 1597463174, %1939
  %1941 = bitcast i32 %1940 to float
  %1942 = fmul fast float %1862, 5.000000e-01
  %1943 = fmul fast float %1941, %1941
  %1944 = fmul fast float %1943, %1942
  %1945 = fsub fast float 1.500000e+00, %1944
  %1946 = fmul fast float %1941, %1862
  %1947 = fmul fast float %1946, %1945
  %1948 = bitcast float %1863 to i32
  %1949 = ashr i32 %1948, 1
  %1950 = sub nsw i32 1597463174, %1949
  %1951 = bitcast i32 %1950 to float
  %1952 = fmul fast float %1863, 5.000000e-01
  %1953 = fmul fast float %1951, %1951
  %1954 = fmul fast float %1953, %1952
  %1955 = fsub fast float 1.500000e+00, %1954
  %1956 = fmul fast float %1951, %1863
  %1957 = fmul fast float %1956, %1955
  %1958 = bitcast float %1864 to i32
  %1959 = ashr i32 %1958, 1
  %1960 = sub nsw i32 1597463174, %1959
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1864, 5.000000e-01
  %1963 = fmul fast float %1961, %1961
  %1964 = fmul fast float %1963, %1962
  %1965 = fsub fast float 1.500000e+00, %1964
  %1966 = fmul fast float %1961, %1864
  %1967 = fmul fast float %1966, %1965
  %1968 = fsub fast float %1947, %1929
  %1969 = fsub fast float %1957, %1933
  %1970 = fsub fast float %1967, %1937
  %1971 = fmul fast float %1968, %1897
  %1972 = fmul fast float %1969, %1899
  %1973 = fmul fast float %1970, %1904
  %1974 = fadd fast float %1971, %1912
  %1975 = fadd fast float %1972, %1916
  %1976 = fadd fast float %1973, %1920
  %1977 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1978 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1979 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1980 = fmul fast float %1977, %1977
  %1981 = fmul fast float %1978, %1978
  %1982 = fmul fast float %1979, %1979
  %1983 = fsub fast float %1980, %1862
  %1984 = fsub fast float %1981, %1863
  %1985 = fsub fast float %1982, %1864
  %1986 = fmul fast float %1983, %1887
  %1987 = fmul fast float %1984, %1887
  %1988 = fmul fast float %1985, %1887
  %1989 = fadd fast float %1986, %1862
  %1990 = fadd fast float %1987, %1863
  %1991 = fadd fast float %1988, %1864
  %1992 = fadd fast float %1909, %1873
  %1993 = fsub fast float %1992, %1926
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fsub fast float %1994, %1873
  %1996 = fmul fast float %1995, %1887
  %1997 = fadd fast float %1996, %1873
  br label %2051

; <label>:1998                                    ; preds = %1886
  %1999 = and i32 %1889, 134217728
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %2035, label %2001

; <label>:2001                                    ; preds = %1998
  %2002 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %2003 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %2004 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2005 = fadd fast float %2002, -5.000000e-01
  %2006 = fadd fast float %2003, -5.000000e-01
  %2007 = fadd fast float %2004, -5.000000e-01
  %2008 = fmul fast float %2005, %1887
  %2009 = fmul fast float %2006, %1887
  %2010 = fmul fast float %2007, %1887
  %2011 = fadd fast float %2008, 5.000000e-01
  %2012 = fadd fast float %2009, 5.000000e-01
  %2013 = fadd fast float %2010, 5.000000e-01
  %2014 = call float @dx.op.unary.f32(i32 24, float %1862)  ; Sqrt(value)
  %2015 = call float @dx.op.unary.f32(i32 24, float %1863)  ; Sqrt(value)
  %2016 = call float @dx.op.unary.f32(i32 24, float %1864)  ; Sqrt(value)
  %2017 = fmul fast float %2011, 2.000000e+00
  %2018 = fsub fast float 1.000000e+00, %2017
  %2019 = fmul fast float %2018, %2014
  %2020 = fadd fast float %2019, %2017
  %2021 = fmul fast float %2020, %2014
  %2022 = fmul fast float %2012, 2.000000e+00
  %2023 = fsub fast float 1.000000e+00, %2022
  %2024 = fmul fast float %2023, %2015
  %2025 = fadd fast float %2024, %2022
  %2026 = fmul fast float %2025, %2015
  %2027 = fmul fast float %2013, 2.000000e+00
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = fmul fast float %2028, %2016
  %2030 = fadd fast float %2029, %2027
  %2031 = fmul fast float %2030, %2016
  %2032 = fmul fast float %2021, %2021
  %2033 = fmul fast float %2026, %2026
  %2034 = fmul fast float %2031, %2031
  br label %2051

; <label>:2035                                    ; preds = %1998
  %2036 = fmul fast float %318, %318
  %2037 = fmul fast float %322, %322
  %2038 = fmul fast float %326, %326
  %2039 = fadd fast float %2036, -1.000000e+00
  %2040 = fadd fast float %2037, -1.000000e+00
  %2041 = fadd fast float %2038, -1.000000e+00
  %2042 = fmul fast float %1887, %2039
  %2043 = fmul fast float %1887, %2040
  %2044 = fmul fast float %1887, %2041
  %2045 = fadd fast float %2042, 1.000000e+00
  %2046 = fadd fast float %2043, 1.000000e+00
  %2047 = fadd fast float %2044, 1.000000e+00
  %2048 = fmul fast float %2045, %1862
  %2049 = fmul fast float %2046, %1863
  %2050 = fmul fast float %2047, %1864
  br label %2051

; <label>:2051                                    ; preds = %2035, %2001, %1892, %1848
  %2052 = phi float [ %1997, %1892 ], [ %1873, %2001 ], [ %1873, %2035 ], [ 0x3FA23C0BE0000000, %1848 ]
  %2053 = phi float [ %1989, %1892 ], [ %2032, %2001 ], [ %2048, %2035 ], [ 1.000000e+00, %1848 ]
  %2054 = phi float [ %1990, %1892 ], [ %2033, %2001 ], [ %2049, %2035 ], [ 1.000000e+00, %1848 ]
  %2055 = phi float [ %1991, %1892 ], [ %2034, %2001 ], [ %2050, %2035 ], [ 1.000000e+00, %1848 ]
  %2056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2057 = extractvalue %dx.types.CBufRet.i32 %2056, 1
  %2058 = and i32 %2057, 1
  %2059 = icmp ne i32 %2058, 0
  %2060 = add i32 %34, 356
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = and i32 %2062, 32
  %2064 = icmp ne i32 %2063, 0
  %2065 = and i1 %2059, %2064
  %2066 = select i1 %2065, float 1.000000e+00, float %2053
  %2067 = select i1 %2065, float 0x3FD3333340000000, float %2054
  %2068 = select i1 %2065, float 0x3FD3333340000000, float %2055
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 32
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2145, label %2073

; <label>:2073                                    ; preds = %2051
  %2074 = add i32 %34, 124
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = add i32 %34, 400
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = add i32 %2079, 0
  %2081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2081, %dx.types.Handle %79, float %1773, float %1774, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2083 = extractvalue %dx.types.ResRet.f32 %2082, 0
  %2084 = extractvalue %dx.types.ResRet.f32 %2082, 1
  %2085 = extractvalue %dx.types.ResRet.f32 %2082, 2
  %2086 = extractvalue %dx.types.ResRet.f32 %2082, 3
  %2087 = and i32 %2076, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = lshr i32 %2076, 8
  %2090 = and i32 %2089, 255
  %2091 = uitofp i32 %2090 to float
  %2092 = lshr i32 %2076, 16
  %2093 = and i32 %2092, 255
  %2094 = uitofp i32 %2093 to float
  %2095 = fmul fast float %2094, 0x3F70101000000000
  %2096 = fmul fast float %2083, %2088
  %2097 = fadd fast float %2096, %2091
  %2098 = fmul fast float %2097, 0x3F70101000000000
  %2099 = fadd fast float %2084, -5.000000e-01
  %2100 = fadd fast float %2086, -5.000000e-01
  %2101 = fmul fast float %2099, %2095
  %2102 = fmul fast float %2100, %2095
  %2103 = fadd fast float %2101, 5.000000e-01
  %2104 = fadd fast float %2102, 5.000000e-01
  %2105 = fmul fast float %2103, 2.000000e+00
  %2106 = fadd fast float %2105, -1.000000e+00
  %2107 = fmul fast float %2104, 2.000000e+00
  %2108 = fadd fast float %2107, -1.000000e+00
  %2109 = fadd fast float %2106, %2108
  %2110 = fmul fast float %2109, 5.000000e-01
  %2111 = fsub fast float %2106, %2108
  %2112 = fmul fast float %2111, 5.000000e-01
  %2113 = call float @dx.op.unary.f32(i32 6, float %2110)  ; FAbs(value)
  %2114 = fsub fast float 1.000000e+00, %2113
  %2115 = call float @dx.op.unary.f32(i32 6, float %2112)  ; FAbs(value)
  %2116 = fsub fast float %2114, %2115
  %2117 = call float @dx.op.dot3.f32(i32 55, float %2110, float %2112, float %2116, float %2110, float %2112, float %2116)  ; Dot3(ax,ay,az,bx,by,bz)
  %2118 = call float @dx.op.unary.f32(i32 25, float %2117)  ; Rsqrt(value)
  %2119 = fmul fast float %2110, %2118
  %2120 = fmul fast float %2112, %2118
  %2121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.i32 %2121, 0
  %2123 = and i32 %2122, 67108864
  %2124 = icmp eq i32 %2123, 0
  br i1 %2124, label %2141, label %2125

; <label>:2125                                    ; preds = %2073
  %2126 = add i32 %34, 312
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = and i32 %2128, 65535
  %2130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2129)  ; LegacyF16ToF32(value)
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 65535
  %2134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2133)  ; LegacyF16ToF32(value)
  %2135 = lshr i32 %2128, 16
  %2136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2135)  ; LegacyF16ToF32(value)
  %2137 = fsub fast float %2098, %2136
  %2138 = fmul fast float %2137, %2130
  %2139 = fadd fast float %2138, %2134
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  br label %2141

; <label>:2141                                    ; preds = %2125, %2073
  %2142 = phi float [ %2140, %2125 ], [ %2098, %2073 ]
  %2143 = call float @dx.op.dot2.f32(i32 54, float %2119, float %2120, float %1677, float %1678)  ; Dot2(ax,ay,bx,by)
  %2144 = call float @dx.op.dot2.f32(i32 54, float %2119, float %2120, float %1679, float %1680)  ; Dot2(ax,ay,bx,by)
  br label %2145

; <label>:2145                                    ; preds = %2141, %2051
  %2146 = phi float [ %2142, %2141 ], [ 0x3FD6666660000000, %2051 ]
  %2147 = phi float [ %2143, %2141 ], [ 0.000000e+00, %2051 ]
  %2148 = phi float [ %2144, %2141 ], [ 0.000000e+00, %2051 ]
  %2149 = phi float [ %2085, %2141 ], [ 1.000000e+00, %2051 ]
  %2150 = add i32 %34, 192
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = lshr i32 %2152, 22
  %2154 = shl nuw nsw i32 %2153, 5
  %2155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2154)  ; LegacyF16ToF32(value)
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = and i32 %2157, 64
  %2159 = icmp eq i32 %2158, 0
  br i1 %2159, label %2193, label %2160

; <label>:2160                                    ; preds = %2145
  %2161 = add i32 %34, 416
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2161, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = add i32 %2163, 0
  %2165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = and i32 %2167, 131072
  %2169 = icmp eq i32 %2168, 0
  %2170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2165, %dx.types.Handle %79, float %1773, float %1774, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.ResRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.ResRet.f32 %2170, 2
  %2174 = fmul fast float %2171, %306
  %2175 = fmul fast float %2172, %309
  %2176 = fmul fast float %2173, %312
  br i1 %2169, label %2183, label %2177

; <label>:2177                                    ; preds = %2160
  %2178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2178, 0
  %2180 = fmul fast float %2179, %2174
  %2181 = fmul fast float %2179, %2175
  %2182 = fmul fast float %2179, %2176
  br label %2183

; <label>:2183                                    ; preds = %2177, %2160
  %2184 = phi float [ %2180, %2177 ], [ %2174, %2160 ]
  %2185 = phi float [ %2181, %2177 ], [ %2175, %2160 ]
  %2186 = phi float [ %2182, %2177 ], [ %2176, %2160 ]
  %2187 = fmul fast float %2184, %2155
  %2188 = select i1 %205, float %2187, float %2184
  %2189 = call float @dx.op.dot3.f32(i32 55, float %2188, float %2185, float %2186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2190 = select i1 %205, float 0.000000e+00, float %2184
  %2191 = select i1 %205, float %2189, float %2185
  %2192 = select i1 %205, float 0.000000e+00, float %2186
  br label %2193

; <label>:2193                                    ; preds = %2183, %2145
  %2194 = phi float [ %2190, %2183 ], [ 0.000000e+00, %2145 ]
  %2195 = phi float [ %2191, %2183 ], [ 0.000000e+00, %2145 ]
  %2196 = phi float [ %2192, %2183 ], [ 0.000000e+00, %2145 ]
  %2197 = add i32 %34, 128
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 255
  %2201 = uitofp i32 %2200 to float
  %2202 = lshr i32 %2199, 8
  %2203 = and i32 %2202, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2066, float %2067, float %2068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = fmul fast float %2204, %2205
  %2207 = fadd fast float %2206, %2201
  %2208 = fmul fast float %2207, 0x3F70101020000000
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  br i1 %1665, label %2210, label %2218

; <label>:2210                                    ; preds = %2193
  %2211 = fsub fast float 1.000000e+00, %1846
  %2212 = fmul fast float %2211, %1654
  %2213 = fmul fast float %2211, %1655
  %2214 = fmul fast float %2211, %1656
  %2215 = fmul fast float %2211, %1657
  %2216 = fmul fast float %2211, %1658
  %2217 = fmul fast float %2211, %1659
  br label %2218

; <label>:2218                                    ; preds = %2210, %2193
  %2219 = phi float [ %2212, %2210 ], [ %1654, %2193 ]
  %2220 = phi float [ %2213, %2210 ], [ %1655, %2193 ]
  %2221 = phi float [ %2214, %2210 ], [ %1656, %2193 ]
  %2222 = phi float [ %2215, %2210 ], [ %1657, %2193 ]
  %2223 = phi float [ %2216, %2210 ], [ %1658, %2193 ]
  %2224 = phi float [ %2217, %2210 ], [ %1659, %2193 ]
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 3
  %2228 = icmp eq i32 %2227, 3
  br i1 %2228, label %2307, label %2229

; <label>:2229                                    ; preds = %2218
  %2230 = and i32 %2226, 16
  %2231 = icmp ne i32 %2230, 0
  %2232 = select i1 %2231, float %1846, float 0.000000e+00
  %2233 = icmp eq i32 %2227, 0
  br i1 %2233, label %2234, label %2262

; <label>:2234                                    ; preds = %2229
  %2235 = and i32 %2226, 64
  %2236 = icmp ne i32 %2235, 0
  %2237 = select i1 %2236, float %1846, float 0.000000e+00
  %2238 = fsub fast float %2066, %2219
  %2239 = fsub fast float %2067, %2220
  %2240 = fsub fast float %2068, %2221
  %2241 = fmul fast float %2232, %2238
  %2242 = fmul fast float %2232, %2239
  %2243 = fmul fast float %2232, %2240
  %2244 = fadd fast float %2241, %2219
  %2245 = fadd fast float %2242, %2220
  %2246 = fadd fast float %2243, %2221
  %2247 = fsub fast float %2052, %1660
  %2248 = fmul fast float %2232, %2247
  %2249 = fadd fast float %2248, %1660
  %2250 = fsub fast float %2194, %2222
  %2251 = fsub fast float %2195, %2223
  %2252 = fsub fast float %2196, %2224
  %2253 = fmul fast float %2237, %2250
  %2254 = fmul fast float %2237, %2251
  %2255 = fmul fast float %2237, %2252
  %2256 = fadd fast float %2253, %2222
  %2257 = fadd fast float %2254, %2223
  %2258 = fadd fast float %2255, %2224
  %2259 = fsub fast float %2209, %1663
  %2260 = fmul fast float %2232, %2259
  %2261 = fadd fast float %2260, %1663
  br label %2307

; <label>:2262                                    ; preds = %2229
  %2263 = icmp eq i32 %2227, 1
  br i1 %2263, label %2264, label %2277

; <label>:2264                                    ; preds = %2262
  %2265 = fadd fast float %2066, -1.000000e+00
  %2266 = fadd fast float %2067, -1.000000e+00
  %2267 = fadd fast float %2068, -1.000000e+00
  %2268 = fmul fast float %2232, %2265
  %2269 = fmul fast float %2232, %2266
  %2270 = fmul fast float %2232, %2267
  %2271 = fadd fast float %2268, 1.000000e+00
  %2272 = fadd fast float %2269, 1.000000e+00
  %2273 = fadd fast float %2270, 1.000000e+00
  %2274 = fmul fast float %2271, %2219
  %2275 = fmul fast float %2272, %2220
  %2276 = fmul fast float %2273, %2221
  br label %2307

; <label>:2277                                    ; preds = %2262
  %2278 = icmp eq i32 %2227, 2
  br i1 %2278, label %2279, label %2307

; <label>:2279                                    ; preds = %2277
  %2280 = call float @dx.op.unary.f32(i32 24, float %2066)  ; Sqrt(value)
  %2281 = call float @dx.op.unary.f32(i32 24, float %2067)  ; Sqrt(value)
  %2282 = call float @dx.op.unary.f32(i32 24, float %2068)  ; Sqrt(value)
  %2283 = fadd fast float %2280, -5.000000e-01
  %2284 = fadd fast float %2281, -5.000000e-01
  %2285 = fadd fast float %2282, -5.000000e-01
  %2286 = fmul fast float %2283, %2232
  %2287 = fmul fast float %2284, %2232
  %2288 = fmul fast float %2285, %2232
  %2289 = fadd fast float %2286, 5.000000e-01
  %2290 = fadd fast float %2287, 5.000000e-01
  %2291 = fadd fast float %2288, 5.000000e-01
  %2292 = fmul fast float %2289, 2.000000e+00
  %2293 = fsub fast float 1.000000e+00, %2292
  %2294 = fmul fast float %2293, %2219
  %2295 = fadd fast float %2294, %2292
  %2296 = fmul fast float %2295, %2219
  %2297 = fmul fast float %2290, 2.000000e+00
  %2298 = fsub fast float 1.000000e+00, %2297
  %2299 = fmul fast float %2298, %2220
  %2300 = fadd fast float %2299, %2297
  %2301 = fmul fast float %2300, %2220
  %2302 = fmul fast float %2291, 2.000000e+00
  %2303 = fsub fast float 1.000000e+00, %2302
  %2304 = fmul fast float %2303, %2221
  %2305 = fadd fast float %2304, %2302
  %2306 = fmul fast float %2305, %2221
  br label %2307

; <label>:2307                                    ; preds = %2279, %2277, %2264, %2234, %2218
  %2308 = phi float [ %2219, %2218 ], [ %2296, %2279 ], [ %2219, %2277 ], [ %2274, %2264 ], [ %2244, %2234 ]
  %2309 = phi float [ %2220, %2218 ], [ %2301, %2279 ], [ %2220, %2277 ], [ %2275, %2264 ], [ %2245, %2234 ]
  %2310 = phi float [ %2221, %2218 ], [ %2306, %2279 ], [ %2221, %2277 ], [ %2276, %2264 ], [ %2246, %2234 ]
  %2311 = phi float [ %2222, %2218 ], [ %2222, %2279 ], [ %2222, %2277 ], [ %2222, %2264 ], [ %2256, %2234 ]
  %2312 = phi float [ %2223, %2218 ], [ %2223, %2279 ], [ %2223, %2277 ], [ %2223, %2264 ], [ %2257, %2234 ]
  %2313 = phi float [ %2224, %2218 ], [ %2224, %2279 ], [ %2224, %2277 ], [ %2224, %2264 ], [ %2258, %2234 ]
  %2314 = phi float [ %1660, %2218 ], [ %1660, %2279 ], [ %1660, %2277 ], [ %1660, %2264 ], [ %2249, %2234 ]
  %2315 = phi float [ %1663, %2218 ], [ %1663, %2279 ], [ %1663, %2277 ], [ %1663, %2264 ], [ %2261, %2234 ]
  %2316 = and i32 %2226, 12
  %2317 = icmp eq i32 %2316, 12
  br i1 %2317, label %2390, label %2318

; <label>:2318                                    ; preds = %2307
  %2319 = and i32 %2226, 2097184
  %2320 = icmp eq i32 %2319, 2097184
  %2321 = select i1 %2320, float %1846, float 0.000000e+00
  %2322 = and i32 %2226, 4194336
  %2323 = icmp eq i32 %2322, 4194336
  %2324 = select i1 %2323, float %1846, float 0.000000e+00
  %2325 = and i32 %2226, 8388640
  %2326 = icmp eq i32 %2325, 8388640
  %2327 = select i1 %2326, float %1846, float 0.000000e+00
  %2328 = icmp eq i32 %2316, 0
  br i1 %2328, label %2329, label %2342

; <label>:2329                                    ; preds = %2318
  %2330 = fsub fast float %2147, %1652
  %2331 = fsub fast float %2148, %1653
  %2332 = fmul fast float %2321, %2330
  %2333 = fmul fast float %2321, %2331
  %2334 = fadd fast float %2332, %1652
  %2335 = fadd fast float %2333, %1653
  %2336 = fsub fast float %2149, %1662
  %2337 = fmul fast float %2324, %2336
  %2338 = fadd fast float %2337, %1662
  %2339 = fsub fast float %2146, %1661
  %2340 = fmul fast float %2327, %2339
  %2341 = fadd fast float %2340, %1661
  br label %2390

; <label>:2342                                    ; preds = %2318
  %2343 = icmp eq i32 %2316, 4
  br i1 %2343, label %2344, label %2376

; <label>:2344                                    ; preds = %2342
  %2345 = fmul fast float %2321, %2147
  %2346 = fmul fast float %2321, %2148
  %2347 = fadd fast float %2345, %1652
  %2348 = fadd fast float %2346, %1653
  %2349 = call float @dx.op.binary.f32(i32 36, float %1662, float %2149)  ; FMin(a,b)
  %2350 = fsub fast float %2349, %1662
  %2351 = fmul fast float %2350, %2324
  %2352 = fadd fast float %2351, %1662
  %2353 = fadd fast float %2146, %1661
  %2354 = fmul fast float %2353, 0x3FF337FAE0000000
  %2355 = fmul fast float %1661, %1661
  %2356 = fmul fast float %2146, %2146
  %2357 = fadd fast float %2356, %2355
  %2358 = fmul fast float %2357, 0x3FE5152B00000000
  %2359 = fmul fast float %1661, 0xBFCC1F85E0000000
  %2360 = fmul fast float %2359, %2146
  %2361 = fadd fast float %2360, 0xBFE1363700000000
  %2362 = fadd fast float %2361, %2354
  %2363 = fsub fast float %2362, %2358
  %2364 = fmul fast float %2353, 0x3FBA6F0D00000000
  %2365 = fmul fast float %2357, 0x3FD0432880000000
  %2366 = fmul fast float %1661, 0xBFEF110800000000
  %2367 = fmul fast float %2366, %2146
  %2368 = fadd fast float %2367, 1.000000e+00
  %2369 = fsub fast float %2368, %2364
  %2370 = fadd fast float %2369, %2365
  %2371 = fdiv fast float %2363, %2370
  %2372 = call float @dx.op.unary.f32(i32 7, float %2371)  ; Saturate(value)
  %2373 = fsub fast float %2372, %1661
  %2374 = fmul fast float %2373, %2327
  %2375 = fadd fast float %2374, %1661
  br label %2390

; <label>:2376                                    ; preds = %2342
  %2377 = icmp eq i32 %2316, 8
  br i1 %2377, label %2378, label %2390

; <label>:2378                                    ; preds = %2376
  %2379 = fmul fast float %2321, %2147
  %2380 = fmul fast float %2321, %2148
  %2381 = fadd fast float %2379, %1652
  %2382 = fadd fast float %2380, %1653
  %2383 = call float @dx.op.binary.f32(i32 36, float %1662, float %2149)  ; FMin(a,b)
  %2384 = fsub fast float %2383, %1662
  %2385 = fmul fast float %2384, %2324
  %2386 = fadd fast float %2385, %1662
  %2387 = fsub fast float %2146, %1661
  %2388 = fmul fast float %2327, %2387
  %2389 = fadd fast float %2388, %1661
  br label %2390

; <label>:2390                                    ; preds = %2378, %2376, %2344, %2329, %2307, %1845, %1664, %1651
  %2391 = phi float [ %1652, %2307 ], [ %1652, %1845 ], [ %1652, %1651 ], [ %2381, %2378 ], [ %1652, %2376 ], [ %2347, %2344 ], [ %2334, %2329 ], [ %1652, %1664 ]
  %2392 = phi float [ %1653, %2307 ], [ %1653, %1845 ], [ %1653, %1651 ], [ %2382, %2378 ], [ %1653, %2376 ], [ %2348, %2344 ], [ %2335, %2329 ], [ %1653, %1664 ]
  %2393 = phi float [ %2308, %2307 ], [ %1654, %1845 ], [ %1654, %1651 ], [ %2308, %2378 ], [ %2308, %2376 ], [ %2308, %2344 ], [ %2308, %2329 ], [ %1654, %1664 ]
  %2394 = phi float [ %2309, %2307 ], [ %1655, %1845 ], [ %1655, %1651 ], [ %2309, %2378 ], [ %2309, %2376 ], [ %2309, %2344 ], [ %2309, %2329 ], [ %1655, %1664 ]
  %2395 = phi float [ %2310, %2307 ], [ %1656, %1845 ], [ %1656, %1651 ], [ %2310, %2378 ], [ %2310, %2376 ], [ %2310, %2344 ], [ %2310, %2329 ], [ %1656, %1664 ]
  %2396 = phi float [ %2311, %2307 ], [ %1657, %1845 ], [ %1657, %1651 ], [ %2311, %2378 ], [ %2311, %2376 ], [ %2311, %2344 ], [ %2311, %2329 ], [ %1657, %1664 ]
  %2397 = phi float [ %2312, %2307 ], [ %1658, %1845 ], [ %1658, %1651 ], [ %2312, %2378 ], [ %2312, %2376 ], [ %2312, %2344 ], [ %2312, %2329 ], [ %1658, %1664 ]
  %2398 = phi float [ %2313, %2307 ], [ %1659, %1845 ], [ %1659, %1651 ], [ %2313, %2378 ], [ %2313, %2376 ], [ %2313, %2344 ], [ %2313, %2329 ], [ %1659, %1664 ]
  %2399 = phi float [ %2314, %2307 ], [ %1660, %1845 ], [ %1660, %1651 ], [ %2314, %2378 ], [ %2314, %2376 ], [ %2314, %2344 ], [ %2314, %2329 ], [ %1660, %1664 ]
  %2400 = phi float [ %1661, %2307 ], [ %1661, %1845 ], [ %1661, %1651 ], [ %2389, %2378 ], [ %1661, %2376 ], [ %2375, %2344 ], [ %2341, %2329 ], [ %1661, %1664 ]
  %2401 = phi float [ %1662, %2307 ], [ %1662, %1845 ], [ %1662, %1651 ], [ %2386, %2378 ], [ %1662, %2376 ], [ %2352, %2344 ], [ %2338, %2329 ], [ %1662, %1664 ]
  %2402 = phi float [ %2315, %2307 ], [ %1663, %1845 ], [ %1663, %1651 ], [ %2315, %2378 ], [ %2315, %2376 ], [ %2315, %2344 ], [ %2315, %2329 ], [ %1663, %1664 ]
  br i1 %393, label %3129, label %2403

; <label>:2403                                    ; preds = %2390
  %2404 = icmp ult i32 %444, 4
  %2405 = add i32 %34, 72
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = add i32 %34, 76
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = or i32 %2410, %2407
  %2412 = icmp eq i32 %2411, 0
  br i1 %2412, label %3129, label %2413

; <label>:2413                                    ; preds = %2403
  %2414 = and i32 %2407, 262144
  %2415 = icmp ne i32 %2414, 0
  %2416 = select i1 %2415, float %39, float 1.000000e+00
  %2417 = select i1 %2415, float %40, float 0.000000e+00
  %2418 = select i1 %2415, float %41, float 0.000000e+00
  %2419 = select i1 %2415, float %42, float 1.000000e+00
  %2420 = select i1 %2415, float %43, float %71
  %2421 = select i1 %2415, float %44, float %72
  %2422 = add i32 %34, 332
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = lshr i32 %2424, 16
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = fmul fast float %2426, 0x3F50624DE0000000
  %2428 = add i32 %34, 136
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = lshr i32 %2430, 16
  %2432 = and i32 %2431, 255
  %2433 = lshr i32 %2430, 24
  %2434 = add i32 %34, 340
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 65535
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = lshr i32 %2436, 16
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = add i32 %34, 80
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = lshr i32 %2443, 22
  %2445 = shl nuw nsw i32 %2444, 5
  %2446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2445)  ; LegacyF16ToF32(value)
  %2447 = shl i32 %2443, 4
  %2448 = and i32 %2447, 32752
  %2449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2448)  ; LegacyF16ToF32(value)
  %2450 = lshr i32 %2443, 7
  %2451 = and i32 %2450, 32752
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 3
  %2455 = fmul fast float %2454, 1.000000e+03
  %2456 = fmul fast float %383, %2455
  %2457 = call float @dx.op.unary.f32(i32 22, float %2456)  ; Frc(value)
  %2458 = fadd fast float %2457, %373
  %2459 = fmul fast float %384, %2455
  %2460 = call float @dx.op.unary.f32(i32 22, float %2459)  ; Frc(value)
  %2461 = fadd fast float %2460, %375
  %2462 = fmul fast float %2427, %2455
  %2463 = call float @dx.op.unary.f32(i32 22, float %2462)  ; Frc(value)
  %2464 = fmul fast float %2463, 0x401921FB60000000
  %2465 = fadd fast float %2464, %2446
  %2466 = call float @dx.op.unary.f32(i32 13, float %2465)  ; Sin(value)
  %2467 = call float @dx.op.unary.f32(i32 12, float %2465)  ; Cos(value)
  %2468 = fsub fast float -0.000000e+00, %2466
  %2469 = fadd fast float %2420, -5.000000e-01
  %2470 = fadd fast float %2421, -5.000000e-01
  %2471 = fmul fast float %2438, %2469
  %2472 = fmul fast float %2440, %2470
  %2473 = fadd fast float %2471, 5.000000e-01
  %2474 = fadd fast float %2472, 5.000000e-01
  %2475 = fmul fast float %2449, %2473
  %2476 = fmul fast float %2452, %2474
  %2477 = fmul fast float %2467, %2475
  %2478 = call float @dx.op.tertiary.f32(i32 46, float %2468, float %2476, float %2477)  ; FMad(a,b,c)
  %2479 = fmul fast float %2466, %2475
  %2480 = call float @dx.op.tertiary.f32(i32 46, float %2467, float %2476, float %2479)  ; FMad(a,b,c)
  %2481 = fadd fast float %2458, %2478
  %2482 = fadd fast float %2461, %2480
  %2483 = icmp ugt i32 %2432, 1
  %2484 = icmp ugt i32 %2430, 33554431
  %2485 = or i1 %2484, %2483
  br i1 %2485, label %2486, label %2511

; <label>:2486                                    ; preds = %2413
  %2487 = add i32 %34, 276
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = lshr i32 %2489, 16
  %2491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2490)  ; LegacyF16ToF32(value)
  %2492 = fmul fast float %2454, %2491
  %2493 = call float @dx.op.unary.f32(i32 22, float %2492)  ; Frc(value)
  %2494 = mul nuw nsw i32 %2432, %2433
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2493, %2495
  %2497 = call float @dx.op.unary.f32(i32 27, float %2496)  ; Round_ni(value)
  %2498 = fptoui float %2497 to i32
  %2499 = urem i32 %2498, %2432
  %2500 = udiv i32 %2498, %2433
  %2501 = call float @dx.op.unary.f32(i32 22, float %2481)  ; Frc(value)
  %2502 = call float @dx.op.unary.f32(i32 22, float %2482)  ; Frc(value)
  %2503 = uitofp i32 %2499 to float
  %2504 = uitofp i32 %2500 to float
  %2505 = fadd fast float %2501, %2503
  %2506 = fadd fast float %2502, %2504
  %2507 = uitofp i32 %2432 to float
  %2508 = uitofp i32 %2433 to float
  %2509 = fdiv fast float %2505, %2507
  %2510 = fdiv fast float %2506, %2508
  br label %2511

; <label>:2511                                    ; preds = %2486, %2413
  %2512 = phi float [ %2509, %2486 ], [ %2481, %2413 ]
  %2513 = phi float [ %2510, %2486 ], [ %2482, %2413 ]
  %2514 = and i32 %2407, 256
  %2515 = icmp eq i32 %2514, 0
  br i1 %2515, label %2562, label %2516

; <label>:2516                                    ; preds = %2511
  %2517 = add i32 %34, 452
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = add i32 %2519, 0
  %2521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2521, %dx.types.Handle %80, float %2512, float %2513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2523 = extractvalue %dx.types.ResRet.f32 %2522, 0
  %2524 = add i32 %34, 148
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = shl i32 %2526, 4
  %2528 = and i32 %2527, 32752
  %2529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2528)  ; LegacyF16ToF32(value)
  %2530 = lshr i32 %2526, 7
  %2531 = and i32 %2530, 32752
  %2532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2531)  ; LegacyF16ToF32(value)
  %2533 = fsub fast float 1.000000e+00, %439
  %2534 = call float @dx.op.binary.f32(i32 35, float %2533, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2535 = bitcast float %439 to i32
  %2536 = sitofp i32 %2535 to float
  %2537 = fadd fast float %2536, 0xC1CFBF8940000000
  %2538 = fmul fast float %2532, %2537
  %2539 = fadd fast float %2538, 0x41CFBF8940000000
  %2540 = fptosi float %2539 to i32
  %2541 = bitcast i32 %2540 to float
  %2542 = bitcast float %2534 to i32
  %2543 = sitofp i32 %2542 to float
  %2544 = fadd fast float %2543, 0xC1CFBF8940000000
  %2545 = fmul fast float %2544, %2532
  %2546 = fadd fast float %2545, 0x41CFBF8940000000
  %2547 = fptosi float %2546 to i32
  %2548 = bitcast i32 %2547 to float
  %2549 = fmul fast float %2541, %2529
  %2550 = fmul fast float %2548, %2529
  %2551 = fsub fast float %2534, %2549
  %2552 = fadd fast float %2550, %2534
  %2553 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2554 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2555 = fsub fast float %2523, %2553
  %2556 = fsub fast float %2554, %2553
  %2557 = bitcast float %2556 to i32
  %2558 = sub nsw i32 2129859010, %2557
  %2559 = bitcast i32 %2558 to float
  %2560 = fmul fast float %2559, %2555
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  br label %2562

; <label>:2562                                    ; preds = %2516, %2511
  %2563 = phi float [ %2561, %2516 ], [ %439, %2511 ]
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 128
  %2567 = icmp eq i32 %2566, 0
  br i1 %2567, label %2584, label %2568

; <label>:2568                                    ; preds = %2562
  %2569 = add i32 %34, 436
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = add i32 %2571, 0
  %2573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2573, %dx.types.Handle %80, float %2512, float %2513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 0
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 524288
  %2579 = icmp ne i32 %2578, 0
  %2580 = fcmp fast ogt float %2575, 0x3FE0101020000000
  %2581 = select i1 %2580, float 1.000000e+00, float 0.000000e+00
  %2582 = select i1 %2579, float %2581, float %2575
  %2583 = fmul fast float %2582, %2563
  br label %2584

; <label>:2584                                    ; preds = %2568, %2562
  %2585 = phi float [ %2583, %2568 ], [ %2563, %2562 ]
  %2586 = fcmp fast ult float %2585, 0x3F70101020000000
  br i1 %2586, label %3129, label %2587

; <label>:2587                                    ; preds = %2584
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 16
  %2591 = icmp eq i32 %2590, 0
  br i1 %2591, label %2790, label %2592

; <label>:2592                                    ; preds = %2587
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = add i32 %34, 388
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = add i32 %2597, 0
  %2599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2599, %dx.types.Handle %79, float %2512, float %2513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.ResRet.f32 %2600, 1
  %2603 = extractvalue %dx.types.ResRet.f32 %2600, 2
  %2604 = extractvalue %dx.types.ResRet.f32 %2600, 3
  %2605 = and i32 %2594, 255
  %2606 = uitofp i32 %2605 to float
  %2607 = lshr i32 %2594, 8
  %2608 = and i32 %2607, 255
  %2609 = uitofp i32 %2608 to float
  %2610 = fmul fast float %2604, %2606
  %2611 = fadd fast float %2610, %2609
  %2612 = fmul fast float %2611, 0x3F70101000000000
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 512
  %2616 = icmp eq i32 %2615, 0
  br i1 %2616, label %2625, label %2617

; <label>:2617                                    ; preds = %2592
  %2618 = add i32 %34, 468
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %2620, 0
  %2622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2622, %dx.types.Handle %80, float %2512, float %2513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  br label %2625

; <label>:2625                                    ; preds = %2617, %2592
  %2626 = phi float [ %2624, %2617 ], [ 1.000000e+00, %2592 ]
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = and i32 %2628, 33554432
  %2630 = icmp eq i32 %2629, 0
  br i1 %2630, label %2737, label %2631

; <label>:2631                                    ; preds = %2625
  %2632 = add i32 %34, 272
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 65535
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = lshr i32 %2634, 16
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = add i32 %34, 276
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 65535
  %2643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2642)  ; LegacyF16ToF32(value)
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 24
  %2647 = uitofp i32 %2646 to float
  %2648 = fmul fast float %2647, 0x3F70101020000000
  %2649 = and i32 %2645, 255
  %2650 = uitofp i32 %2649 to float
  %2651 = fmul fast float %2650, 0x3F70101020000000
  %2652 = lshr i32 %2645, 8
  %2653 = and i32 %2652, 255
  %2654 = uitofp i32 %2653 to float
  %2655 = fmul fast float %2654, 0x3F70101020000000
  %2656 = lshr i32 %2645, 16
  %2657 = and i32 %2656, 255
  %2658 = uitofp i32 %2657 to float
  %2659 = fmul fast float %2658, 0x3F70101020000000
  %2660 = add i32 %34, 268
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = lshr i32 %2662, 24
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = and i32 %2662, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = lshr i32 %2662, 8
  %2670 = and i32 %2669, 255
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2671, 0x3F70101020000000
  %2673 = lshr i32 %2662, 16
  %2674 = and i32 %2673, 255
  %2675 = uitofp i32 %2674 to float
  %2676 = fmul fast float %2675, 0x3F70101020000000
  %2677 = bitcast float %2601 to i32
  %2678 = ashr i32 %2677, 1
  %2679 = sub nsw i32 1597463174, %2678
  %2680 = bitcast i32 %2679 to float
  %2681 = fmul fast float %2601, 5.000000e-01
  %2682 = fmul fast float %2680, %2680
  %2683 = fmul fast float %2682, %2681
  %2684 = fsub fast float 1.500000e+00, %2683
  %2685 = fmul fast float %2680, %2601
  %2686 = fmul fast float %2685, %2684
  %2687 = bitcast float %2602 to i32
  %2688 = ashr i32 %2687, 1
  %2689 = sub nsw i32 1597463174, %2688
  %2690 = bitcast i32 %2689 to float
  %2691 = fmul fast float %2602, 5.000000e-01
  %2692 = fmul fast float %2690, %2690
  %2693 = fmul fast float %2692, %2691
  %2694 = fsub fast float 1.500000e+00, %2693
  %2695 = fmul fast float %2690, %2602
  %2696 = fmul fast float %2695, %2694
  %2697 = bitcast float %2603 to i32
  %2698 = ashr i32 %2697, 1
  %2699 = sub nsw i32 1597463174, %2698
  %2700 = bitcast i32 %2699 to float
  %2701 = fmul fast float %2603, 5.000000e-01
  %2702 = fmul fast float %2700, %2700
  %2703 = fmul fast float %2702, %2701
  %2704 = fsub fast float 1.500000e+00, %2703
  %2705 = fmul fast float %2700, %2603
  %2706 = fmul fast float %2705, %2704
  %2707 = fsub fast float %2686, %2668
  %2708 = fsub fast float %2696, %2672
  %2709 = fsub fast float %2706, %2676
  %2710 = fmul fast float %2707, %2636
  %2711 = fmul fast float %2708, %2638
  %2712 = fmul fast float %2709, %2643
  %2713 = fadd fast float %2710, %2651
  %2714 = fadd fast float %2711, %2655
  %2715 = fadd fast float %2712, %2659
  %2716 = call float @dx.op.unary.f32(i32 7, float %2713)  ; Saturate(value)
  %2717 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2718 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2719 = fmul fast float %2716, %2716
  %2720 = fmul fast float %2717, %2717
  %2721 = fmul fast float %2718, %2718
  %2722 = fsub fast float %2719, %2601
  %2723 = fsub fast float %2720, %2602
  %2724 = fsub fast float %2721, %2603
  %2725 = fmul fast float %2722, %2626
  %2726 = fmul fast float %2723, %2626
  %2727 = fmul fast float %2724, %2626
  %2728 = fadd fast float %2725, %2601
  %2729 = fadd fast float %2726, %2602
  %2730 = fadd fast float %2727, %2603
  %2731 = fadd fast float %2648, %2612
  %2732 = fsub fast float %2731, %2665
  %2733 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2734 = fsub fast float %2733, %2612
  %2735 = fmul fast float %2734, %2626
  %2736 = fadd fast float %2735, %2612
  br label %2790

; <label>:2737                                    ; preds = %2625
  %2738 = and i32 %2628, 134217728
  %2739 = icmp eq i32 %2738, 0
  br i1 %2739, label %2774, label %2740

; <label>:2740                                    ; preds = %2737
  %2741 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %2742 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %2743 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %2744 = fadd fast float %2741, -5.000000e-01
  %2745 = fadd fast float %2742, -5.000000e-01
  %2746 = fadd fast float %2743, -5.000000e-01
  %2747 = fmul fast float %2744, %2626
  %2748 = fmul fast float %2745, %2626
  %2749 = fmul fast float %2746, %2626
  %2750 = fadd fast float %2747, 5.000000e-01
  %2751 = fadd fast float %2748, 5.000000e-01
  %2752 = fadd fast float %2749, 5.000000e-01
  %2753 = call float @dx.op.unary.f32(i32 24, float %2601)  ; Sqrt(value)
  %2754 = call float @dx.op.unary.f32(i32 24, float %2602)  ; Sqrt(value)
  %2755 = call float @dx.op.unary.f32(i32 24, float %2603)  ; Sqrt(value)
  %2756 = fmul fast float %2750, 2.000000e+00
  %2757 = fsub fast float 1.000000e+00, %2756
  %2758 = fmul fast float %2757, %2753
  %2759 = fadd fast float %2758, %2756
  %2760 = fmul fast float %2759, %2753
  %2761 = fmul fast float %2751, 2.000000e+00
  %2762 = fsub fast float 1.000000e+00, %2761
  %2763 = fmul fast float %2762, %2754
  %2764 = fadd fast float %2763, %2761
  %2765 = fmul fast float %2764, %2754
  %2766 = fmul fast float %2752, 2.000000e+00
  %2767 = fsub fast float 1.000000e+00, %2766
  %2768 = fmul fast float %2767, %2755
  %2769 = fadd fast float %2768, %2766
  %2770 = fmul fast float %2769, %2755
  %2771 = fmul fast float %2760, %2760
  %2772 = fmul fast float %2765, %2765
  %2773 = fmul fast float %2770, %2770
  br label %2790

; <label>:2774                                    ; preds = %2737
  %2775 = fmul fast float %360, %360
  %2776 = fmul fast float %364, %364
  %2777 = fmul fast float %368, %368
  %2778 = fadd fast float %2775, -1.000000e+00
  %2779 = fadd fast float %2776, -1.000000e+00
  %2780 = fadd fast float %2777, -1.000000e+00
  %2781 = fmul fast float %2626, %2778
  %2782 = fmul fast float %2626, %2779
  %2783 = fmul fast float %2626, %2780
  %2784 = fadd fast float %2781, 1.000000e+00
  %2785 = fadd fast float %2782, 1.000000e+00
  %2786 = fadd fast float %2783, 1.000000e+00
  %2787 = fmul fast float %2784, %2601
  %2788 = fmul fast float %2785, %2602
  %2789 = fmul fast float %2786, %2603
  br label %2790

; <label>:2790                                    ; preds = %2774, %2740, %2631, %2587
  %2791 = phi float [ %2736, %2631 ], [ %2612, %2740 ], [ %2612, %2774 ], [ 0x3FA23C0BE0000000, %2587 ]
  %2792 = phi float [ %2728, %2631 ], [ %2771, %2740 ], [ %2787, %2774 ], [ 1.000000e+00, %2587 ]
  %2793 = phi float [ %2729, %2631 ], [ %2772, %2740 ], [ %2788, %2774 ], [ 1.000000e+00, %2587 ]
  %2794 = phi float [ %2730, %2631 ], [ %2773, %2740 ], [ %2789, %2774 ], [ 1.000000e+00, %2587 ]
  %2795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2796 = extractvalue %dx.types.CBufRet.i32 %2795, 1
  %2797 = and i32 %2796, 1
  %2798 = icmp ne i32 %2797, 0
  %2799 = add i32 %34, 356
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = and i32 %2801, 32
  %2803 = icmp ne i32 %2802, 0
  %2804 = and i1 %2798, %2803
  %2805 = select i1 %2804, float 1.000000e+00, float %2792
  %2806 = select i1 %2804, float 0x3FD3333340000000, float %2793
  %2807 = select i1 %2804, float 0x3FD3333340000000, float %2794
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = and i32 %2809, 32
  %2811 = icmp eq i32 %2810, 0
  br i1 %2811, label %2884, label %2812

; <label>:2812                                    ; preds = %2790
  %2813 = add i32 %34, 140
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = add i32 %34, 404
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = add i32 %2818, 0
  %2820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2820, %dx.types.Handle %79, float %2512, float %2513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2822 = extractvalue %dx.types.ResRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.ResRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.ResRet.f32 %2821, 2
  %2825 = extractvalue %dx.types.ResRet.f32 %2821, 3
  %2826 = and i32 %2815, 255
  %2827 = uitofp i32 %2826 to float
  %2828 = lshr i32 %2815, 8
  %2829 = and i32 %2828, 255
  %2830 = uitofp i32 %2829 to float
  %2831 = lshr i32 %2815, 16
  %2832 = and i32 %2831, 255
  %2833 = uitofp i32 %2832 to float
  %2834 = fmul fast float %2833, 0x3F70101000000000
  %2835 = fmul fast float %2822, %2827
  %2836 = fadd fast float %2835, %2830
  %2837 = fmul fast float %2836, 0x3F70101000000000
  %2838 = fadd fast float %2823, -5.000000e-01
  %2839 = fadd fast float %2825, -5.000000e-01
  %2840 = fmul fast float %2838, %2834
  %2841 = fmul fast float %2839, %2834
  %2842 = fadd fast float %2840, 5.000000e-01
  %2843 = fadd fast float %2841, 5.000000e-01
  %2844 = fmul fast float %2842, 2.000000e+00
  %2845 = fadd fast float %2844, -1.000000e+00
  %2846 = fmul fast float %2843, 2.000000e+00
  %2847 = fadd fast float %2846, -1.000000e+00
  %2848 = fadd fast float %2845, %2847
  %2849 = fmul fast float %2848, 5.000000e-01
  %2850 = fsub fast float %2845, %2847
  %2851 = fmul fast float %2850, 5.000000e-01
  %2852 = call float @dx.op.unary.f32(i32 6, float %2849)  ; FAbs(value)
  %2853 = fsub fast float 1.000000e+00, %2852
  %2854 = call float @dx.op.unary.f32(i32 6, float %2851)  ; FAbs(value)
  %2855 = fsub fast float %2853, %2854
  %2856 = call float @dx.op.dot3.f32(i32 55, float %2849, float %2851, float %2855, float %2849, float %2851, float %2855)  ; Dot3(ax,ay,az,bx,by,bz)
  %2857 = call float @dx.op.unary.f32(i32 25, float %2856)  ; Rsqrt(value)
  %2858 = fmul fast float %2849, %2857
  %2859 = fmul fast float %2851, %2857
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = and i32 %2861, 67108864
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %2880, label %2864

; <label>:2864                                    ; preds = %2812
  %2865 = add i32 %34, 328
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = and i32 %2867, 65535
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 65535
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = lshr i32 %2867, 16
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = fsub fast float %2837, %2875
  %2877 = fmul fast float %2876, %2869
  %2878 = fadd fast float %2877, %2873
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  br label %2880

; <label>:2880                                    ; preds = %2864, %2812
  %2881 = phi float [ %2879, %2864 ], [ %2837, %2812 ]
  %2882 = call float @dx.op.dot2.f32(i32 54, float %2858, float %2859, float %2416, float %2417)  ; Dot2(ax,ay,bx,by)
  %2883 = call float @dx.op.dot2.f32(i32 54, float %2858, float %2859, float %2418, float %2419)  ; Dot2(ax,ay,bx,by)
  br label %2884

; <label>:2884                                    ; preds = %2880, %2790
  %2885 = phi float [ %2881, %2880 ], [ 0x3FD6666660000000, %2790 ]
  %2886 = phi float [ %2882, %2880 ], [ 0.000000e+00, %2790 ]
  %2887 = phi float [ %2883, %2880 ], [ 0.000000e+00, %2790 ]
  %2888 = phi float [ %2824, %2880 ], [ 1.000000e+00, %2790 ]
  %2889 = add i32 %34, 208
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = lshr i32 %2891, 22
  %2893 = shl nuw nsw i32 %2892, 5
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = and i32 %2896, 64
  %2898 = icmp eq i32 %2897, 0
  br i1 %2898, label %2932, label %2899

; <label>:2899                                    ; preds = %2884
  %2900 = add i32 %34, 420
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = add i32 %2902, 0
  %2904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 131072
  %2908 = icmp eq i32 %2907, 0
  %2909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2904, %dx.types.Handle %79, float %2512, float %2513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2910 = extractvalue %dx.types.ResRet.f32 %2909, 0
  %2911 = extractvalue %dx.types.ResRet.f32 %2909, 1
  %2912 = extractvalue %dx.types.ResRet.f32 %2909, 2
  %2913 = fmul fast float %2910, %348
  %2914 = fmul fast float %2911, %351
  %2915 = fmul fast float %2912, %354
  br i1 %2908, label %2922, label %2916

; <label>:2916                                    ; preds = %2899
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2919 = fmul fast float %2918, %2913
  %2920 = fmul fast float %2918, %2914
  %2921 = fmul fast float %2918, %2915
  br label %2922

; <label>:2922                                    ; preds = %2916, %2899
  %2923 = phi float [ %2919, %2916 ], [ %2913, %2899 ]
  %2924 = phi float [ %2920, %2916 ], [ %2914, %2899 ]
  %2925 = phi float [ %2921, %2916 ], [ %2915, %2899 ]
  %2926 = fmul fast float %2923, %2894
  %2927 = select i1 %205, float %2926, float %2923
  %2928 = call float @dx.op.dot3.f32(i32 55, float %2927, float %2924, float %2925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2929 = select i1 %205, float 0.000000e+00, float %2923
  %2930 = select i1 %205, float %2928, float %2924
  %2931 = select i1 %205, float 0.000000e+00, float %2925
  br label %2932

; <label>:2932                                    ; preds = %2922, %2884
  %2933 = phi float [ %2929, %2922 ], [ 0.000000e+00, %2884 ]
  %2934 = phi float [ %2930, %2922 ], [ 0.000000e+00, %2884 ]
  %2935 = phi float [ %2931, %2922 ], [ 0.000000e+00, %2884 ]
  %2936 = add i32 %34, 144
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = lshr i32 %2938, 8
  %2942 = and i32 %2941, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2806, float %2807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2945 = fmul fast float %2943, %2944
  %2946 = fadd fast float %2945, %2940
  %2947 = fmul fast float %2946, 0x3F70101020000000
  %2948 = call float @dx.op.unary.f32(i32 7, float %2947)  ; Saturate(value)
  br i1 %2404, label %2949, label %2957

; <label>:2949                                    ; preds = %2932
  %2950 = fsub fast float 1.000000e+00, %2585
  %2951 = fmul fast float %2950, %2393
  %2952 = fmul fast float %2950, %2394
  %2953 = fmul fast float %2950, %2395
  %2954 = fmul fast float %2950, %2396
  %2955 = fmul fast float %2950, %2397
  %2956 = fmul fast float %2950, %2398
  br label %2957

; <label>:2957                                    ; preds = %2949, %2932
  %2958 = phi float [ %2951, %2949 ], [ %2393, %2932 ]
  %2959 = phi float [ %2952, %2949 ], [ %2394, %2932 ]
  %2960 = phi float [ %2953, %2949 ], [ %2395, %2932 ]
  %2961 = phi float [ %2954, %2949 ], [ %2396, %2932 ]
  %2962 = phi float [ %2955, %2949 ], [ %2397, %2932 ]
  %2963 = phi float [ %2956, %2949 ], [ %2398, %2932 ]
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 3
  %2967 = icmp eq i32 %2966, 3
  br i1 %2967, label %3046, label %2968

; <label>:2968                                    ; preds = %2957
  %2969 = and i32 %2965, 16
  %2970 = icmp ne i32 %2969, 0
  %2971 = select i1 %2970, float %2585, float 0.000000e+00
  %2972 = icmp eq i32 %2966, 0
  br i1 %2972, label %2973, label %3001

; <label>:2973                                    ; preds = %2968
  %2974 = and i32 %2965, 64
  %2975 = icmp ne i32 %2974, 0
  %2976 = select i1 %2975, float %2585, float 0.000000e+00
  %2977 = fsub fast float %2805, %2958
  %2978 = fsub fast float %2806, %2959
  %2979 = fsub fast float %2807, %2960
  %2980 = fmul fast float %2971, %2977
  %2981 = fmul fast float %2971, %2978
  %2982 = fmul fast float %2971, %2979
  %2983 = fadd fast float %2980, %2958
  %2984 = fadd fast float %2981, %2959
  %2985 = fadd fast float %2982, %2960
  %2986 = fsub fast float %2791, %2399
  %2987 = fmul fast float %2971, %2986
  %2988 = fadd fast float %2987, %2399
  %2989 = fsub fast float %2933, %2961
  %2990 = fsub fast float %2934, %2962
  %2991 = fsub fast float %2935, %2963
  %2992 = fmul fast float %2976, %2989
  %2993 = fmul fast float %2976, %2990
  %2994 = fmul fast float %2976, %2991
  %2995 = fadd fast float %2992, %2961
  %2996 = fadd fast float %2993, %2962
  %2997 = fadd fast float %2994, %2963
  %2998 = fsub fast float %2948, %2402
  %2999 = fmul fast float %2971, %2998
  %3000 = fadd fast float %2999, %2402
  br label %3046

; <label>:3001                                    ; preds = %2968
  %3002 = icmp eq i32 %2966, 1
  br i1 %3002, label %3003, label %3016

; <label>:3003                                    ; preds = %3001
  %3004 = fadd fast float %2805, -1.000000e+00
  %3005 = fadd fast float %2806, -1.000000e+00
  %3006 = fadd fast float %2807, -1.000000e+00
  %3007 = fmul fast float %2971, %3004
  %3008 = fmul fast float %2971, %3005
  %3009 = fmul fast float %2971, %3006
  %3010 = fadd fast float %3007, 1.000000e+00
  %3011 = fadd fast float %3008, 1.000000e+00
  %3012 = fadd fast float %3009, 1.000000e+00
  %3013 = fmul fast float %3010, %2958
  %3014 = fmul fast float %3011, %2959
  %3015 = fmul fast float %3012, %2960
  br label %3046

; <label>:3016                                    ; preds = %3001
  %3017 = icmp eq i32 %2966, 2
  br i1 %3017, label %3018, label %3046

; <label>:3018                                    ; preds = %3016
  %3019 = call float @dx.op.unary.f32(i32 24, float %2805)  ; Sqrt(value)
  %3020 = call float @dx.op.unary.f32(i32 24, float %2806)  ; Sqrt(value)
  %3021 = call float @dx.op.unary.f32(i32 24, float %2807)  ; Sqrt(value)
  %3022 = fadd fast float %3019, -5.000000e-01
  %3023 = fadd fast float %3020, -5.000000e-01
  %3024 = fadd fast float %3021, -5.000000e-01
  %3025 = fmul fast float %3022, %2971
  %3026 = fmul fast float %3023, %2971
  %3027 = fmul fast float %3024, %2971
  %3028 = fadd fast float %3025, 5.000000e-01
  %3029 = fadd fast float %3026, 5.000000e-01
  %3030 = fadd fast float %3027, 5.000000e-01
  %3031 = fmul fast float %3028, 2.000000e+00
  %3032 = fsub fast float 1.000000e+00, %3031
  %3033 = fmul fast float %3032, %2958
  %3034 = fadd fast float %3033, %3031
  %3035 = fmul fast float %3034, %2958
  %3036 = fmul fast float %3029, 2.000000e+00
  %3037 = fsub fast float 1.000000e+00, %3036
  %3038 = fmul fast float %3037, %2959
  %3039 = fadd fast float %3038, %3036
  %3040 = fmul fast float %3039, %2959
  %3041 = fmul fast float %3030, 2.000000e+00
  %3042 = fsub fast float 1.000000e+00, %3041
  %3043 = fmul fast float %3042, %2960
  %3044 = fadd fast float %3043, %3041
  %3045 = fmul fast float %3044, %2960
  br label %3046

; <label>:3046                                    ; preds = %3018, %3016, %3003, %2973, %2957
  %3047 = phi float [ %2958, %2957 ], [ %3035, %3018 ], [ %2958, %3016 ], [ %3013, %3003 ], [ %2983, %2973 ]
  %3048 = phi float [ %2959, %2957 ], [ %3040, %3018 ], [ %2959, %3016 ], [ %3014, %3003 ], [ %2984, %2973 ]
  %3049 = phi float [ %2960, %2957 ], [ %3045, %3018 ], [ %2960, %3016 ], [ %3015, %3003 ], [ %2985, %2973 ]
  %3050 = phi float [ %2961, %2957 ], [ %2961, %3018 ], [ %2961, %3016 ], [ %2961, %3003 ], [ %2995, %2973 ]
  %3051 = phi float [ %2962, %2957 ], [ %2962, %3018 ], [ %2962, %3016 ], [ %2962, %3003 ], [ %2996, %2973 ]
  %3052 = phi float [ %2963, %2957 ], [ %2963, %3018 ], [ %2963, %3016 ], [ %2963, %3003 ], [ %2997, %2973 ]
  %3053 = phi float [ %2399, %2957 ], [ %2399, %3018 ], [ %2399, %3016 ], [ %2399, %3003 ], [ %2988, %2973 ]
  %3054 = phi float [ %2402, %2957 ], [ %2402, %3018 ], [ %2402, %3016 ], [ %2402, %3003 ], [ %3000, %2973 ]
  %3055 = and i32 %2965, 12
  %3056 = icmp eq i32 %3055, 12
  br i1 %3056, label %3129, label %3057

; <label>:3057                                    ; preds = %3046
  %3058 = and i32 %2965, 2097184
  %3059 = icmp eq i32 %3058, 2097184
  %3060 = select i1 %3059, float %2585, float 0.000000e+00
  %3061 = and i32 %2965, 4194336
  %3062 = icmp eq i32 %3061, 4194336
  %3063 = select i1 %3062, float %2585, float 0.000000e+00
  %3064 = and i32 %2965, 8388640
  %3065 = icmp eq i32 %3064, 8388640
  %3066 = select i1 %3065, float %2585, float 0.000000e+00
  %3067 = icmp eq i32 %3055, 0
  br i1 %3067, label %3068, label %3081

; <label>:3068                                    ; preds = %3057
  %3069 = fsub fast float %2886, %2391
  %3070 = fsub fast float %2887, %2392
  %3071 = fmul fast float %3060, %3069
  %3072 = fmul fast float %3060, %3070
  %3073 = fadd fast float %3071, %2391
  %3074 = fadd fast float %3072, %2392
  %3075 = fsub fast float %2888, %2401
  %3076 = fmul fast float %3063, %3075
  %3077 = fadd fast float %3076, %2401
  %3078 = fsub fast float %2885, %2400
  %3079 = fmul fast float %3066, %3078
  %3080 = fadd fast float %3079, %2400
  br label %3129

; <label>:3081                                    ; preds = %3057
  %3082 = icmp eq i32 %3055, 4
  br i1 %3082, label %3083, label %3115

; <label>:3083                                    ; preds = %3081
  %3084 = fmul fast float %3060, %2886
  %3085 = fmul fast float %3060, %2887
  %3086 = fadd fast float %3084, %2391
  %3087 = fadd fast float %3085, %2392
  %3088 = call float @dx.op.binary.f32(i32 36, float %2401, float %2888)  ; FMin(a,b)
  %3089 = fsub fast float %3088, %2401
  %3090 = fmul fast float %3089, %3063
  %3091 = fadd fast float %3090, %2401
  %3092 = fadd fast float %2885, %2400
  %3093 = fmul fast float %3092, 0x3FF337FAE0000000
  %3094 = fmul fast float %2400, %2400
  %3095 = fmul fast float %2885, %2885
  %3096 = fadd fast float %3095, %3094
  %3097 = fmul fast float %3096, 0x3FE5152B00000000
  %3098 = fmul fast float %2400, 0xBFCC1F85E0000000
  %3099 = fmul fast float %3098, %2885
  %3100 = fadd fast float %3099, 0xBFE1363700000000
  %3101 = fadd fast float %3100, %3093
  %3102 = fsub fast float %3101, %3097
  %3103 = fmul fast float %3092, 0x3FBA6F0D00000000
  %3104 = fmul fast float %3096, 0x3FD0432880000000
  %3105 = fmul fast float %2400, 0xBFEF110800000000
  %3106 = fmul fast float %3105, %2885
  %3107 = fadd fast float %3106, 1.000000e+00
  %3108 = fsub fast float %3107, %3103
  %3109 = fadd fast float %3108, %3104
  %3110 = fdiv fast float %3102, %3109
  %3111 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3112 = fsub fast float %3111, %2400
  %3113 = fmul fast float %3112, %3066
  %3114 = fadd fast float %3113, %2400
  br label %3129

; <label>:3115                                    ; preds = %3081
  %3116 = icmp eq i32 %3055, 8
  br i1 %3116, label %3117, label %3129

; <label>:3117                                    ; preds = %3115
  %3118 = fmul fast float %3060, %2886
  %3119 = fmul fast float %3060, %2887
  %3120 = fadd fast float %3118, %2391
  %3121 = fadd fast float %3119, %2392
  %3122 = call float @dx.op.binary.f32(i32 36, float %2401, float %2888)  ; FMin(a,b)
  %3123 = fsub fast float %3122, %2401
  %3124 = fmul fast float %3123, %3063
  %3125 = fadd fast float %3124, %2401
  %3126 = fsub fast float %2885, %2400
  %3127 = fmul fast float %3066, %3126
  %3128 = fadd fast float %3127, %2400
  br label %3129

; <label>:3129                                    ; preds = %3117, %3115, %3083, %3068, %3046, %2584, %2403, %2390
  %3130 = phi float [ %2391, %3046 ], [ %2391, %2584 ], [ %2391, %2390 ], [ %2391, %2403 ], [ %3073, %3068 ], [ %3086, %3083 ], [ %2391, %3115 ], [ %3120, %3117 ]
  %3131 = phi float [ %2392, %3046 ], [ %2392, %2584 ], [ %2392, %2390 ], [ %2392, %2403 ], [ %3074, %3068 ], [ %3087, %3083 ], [ %2392, %3115 ], [ %3121, %3117 ]
  %3132 = phi float [ %3047, %3046 ], [ %2393, %2584 ], [ %2393, %2390 ], [ %2393, %2403 ], [ %3047, %3068 ], [ %3047, %3083 ], [ %3047, %3115 ], [ %3047, %3117 ]
  %3133 = phi float [ %3048, %3046 ], [ %2394, %2584 ], [ %2394, %2390 ], [ %2394, %2403 ], [ %3048, %3068 ], [ %3048, %3083 ], [ %3048, %3115 ], [ %3048, %3117 ]
  %3134 = phi float [ %3049, %3046 ], [ %2395, %2584 ], [ %2395, %2390 ], [ %2395, %2403 ], [ %3049, %3068 ], [ %3049, %3083 ], [ %3049, %3115 ], [ %3049, %3117 ]
  %3135 = phi float [ %3050, %3046 ], [ %2396, %2584 ], [ %2396, %2390 ], [ %2396, %2403 ], [ %3050, %3068 ], [ %3050, %3083 ], [ %3050, %3115 ], [ %3050, %3117 ]
  %3136 = phi float [ %3051, %3046 ], [ %2397, %2584 ], [ %2397, %2390 ], [ %2397, %2403 ], [ %3051, %3068 ], [ %3051, %3083 ], [ %3051, %3115 ], [ %3051, %3117 ]
  %3137 = phi float [ %3052, %3046 ], [ %2398, %2584 ], [ %2398, %2390 ], [ %2398, %2403 ], [ %3052, %3068 ], [ %3052, %3083 ], [ %3052, %3115 ], [ %3052, %3117 ]
  %3138 = phi float [ %3053, %3046 ], [ %2399, %2584 ], [ %2399, %2390 ], [ %2399, %2403 ], [ %3053, %3068 ], [ %3053, %3083 ], [ %3053, %3115 ], [ %3053, %3117 ]
  %3139 = phi float [ %2400, %3046 ], [ %2400, %2584 ], [ %2400, %2390 ], [ %2400, %2403 ], [ %3080, %3068 ], [ %3114, %3083 ], [ %2400, %3115 ], [ %3128, %3117 ]
  %3140 = phi float [ %2401, %3046 ], [ %2401, %2584 ], [ %2401, %2390 ], [ %2401, %2403 ], [ %3077, %3068 ], [ %3091, %3083 ], [ %2401, %3115 ], [ %3125, %3117 ]
  %3141 = phi float [ %3054, %3046 ], [ %2402, %2584 ], [ %2402, %2390 ], [ %2402, %2403 ], [ %3054, %3068 ], [ %3054, %3083 ], [ %3054, %3115 ], [ %3054, %3117 ]
  %3142 = add i32 %34, 360
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = bitcast i32 %3144 to float
  %3146 = fcmp fast oge float %3145, 0.000000e+00
  %3147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3148 = extractvalue %dx.types.CBufRet.f32 %3147, 0
  %3149 = select i1 %3146, float %3145, float %3148
  %3150 = call float @dx.op.dot2.f32(i32 54, float %3130, float %3131, float %3130, float %3131)  ; Dot2(ax,ay,bx,by)
  %3151 = fmul fast float %3150, 0x3FE3333340000000
  %3152 = fsub fast float 1.000000e+00, %3151
  %3153 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3131, float %3152, float %3130, float %3131, float %3152)  ; Dot3(ax,ay,az,bx,by,bz)
  %3154 = call float @dx.op.unary.f32(i32 25, float %3153)  ; Rsqrt(value)
  %3155 = fmul fast float %3154, %3130
  %3156 = fmul fast float %3154, %3131
  %3157 = fmul fast float %3152, %3154
  %3158 = fmul fast float %3157, %92
  %3159 = fmul fast float %3157, %94
  %3160 = fmul fast float %3157, %96
  %3161 = fmul fast float %3155, %64
  %3162 = fmul fast float %3155, %65
  %3163 = fmul fast float %3155, %66
  %3164 = fadd fast float %3158, %3161
  %3165 = fadd fast float %3159, %3162
  %3166 = fadd fast float %3160, %3163
  %3167 = fmul fast float %106, %3156
  %3168 = fmul fast float %107, %3156
  %3169 = fmul fast float %108, %3156
  %3170 = fadd fast float %3164, %3167
  %3171 = fadd fast float %3165, %3168
  %3172 = fadd fast float %3166, %3169
  %3173 = call float @dx.op.dot3.f32(i32 55, float %3170, float %3171, float %3172, float %3170, float %3171, float %3172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = call float @dx.op.unary.f32(i32 25, float %3173)  ; Rsqrt(value)
  %3175 = fmul fast float %3170, %3174
  %3176 = fmul fast float %3171, %3174
  %3177 = fmul fast float %3172, %3174
  %3178 = icmp eq i32 %35, 65535
  br i1 %3178, label %3693, label %3179

; <label>:3179                                    ; preds = %3129
  %3180 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3181 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3182 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3183 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3184 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3185 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3186 = fadd fast float %3180, %36
  %3187 = fadd fast float %3181, %37
  %3188 = fadd fast float %3182, %38
  %3189 = fadd fast float %3183, %36
  %3190 = fadd fast float %3184, %37
  %3191 = fadd fast float %3185, %38
  %3192 = mul i32 %35, 48
  %3193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.ResRet.f32 %3193, 1
  %3196 = extractvalue %dx.types.ResRet.f32 %3193, 2
  %3197 = add i32 %3192, 16
  %3198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.ResRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.ResRet.f32 %3198, 2
  %3202 = add i32 %3192, 32
  %3203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.ResRet.f32 %3203, 1
  %3206 = extractvalue %dx.types.ResRet.f32 %3203, 2
  %3207 = extractvalue %dx.types.ResRet.f32 %3203, 3
  %3208 = bitcast float %3207 to i32
  %3209 = fmul fast float %3194, %36
  %3210 = fmul fast float %3195, %37
  %3211 = fmul fast float %3196, %38
  %3212 = fsub fast float %3209, %3199
  %3213 = fsub fast float %3210, %3200
  %3214 = fsub fast float %3211, %3201
  %3215 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3216 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  %3217 = call float @dx.op.unary.f32(i32 7, float %3214)  ; Saturate(value)
  %3218 = fmul fast float %3215, %3204
  %3219 = fmul fast float %3216, %3205
  %3220 = fmul fast float %3217, %3206
  %3221 = fadd fast float %3204, -1.000000e+00
  %3222 = fadd fast float %3205, -1.000000e+00
  %3223 = fadd fast float %3206, -1.000000e+00
  %3224 = call float @dx.op.unary.f32(i32 27, float %3218)  ; Round_ni(value)
  %3225 = call float @dx.op.unary.f32(i32 27, float %3219)  ; Round_ni(value)
  %3226 = call float @dx.op.unary.f32(i32 27, float %3220)  ; Round_ni(value)
  %3227 = call float @dx.op.binary.f32(i32 36, float %3224, float %3221)  ; FMin(a,b)
  %3228 = call float @dx.op.binary.f32(i32 36, float %3225, float %3222)  ; FMin(a,b)
  %3229 = call float @dx.op.binary.f32(i32 36, float %3226, float %3223)  ; FMin(a,b)
  %3230 = fmul fast float %3229, %3205
  %3231 = fadd fast float %3230, %3228
  %3232 = fmul fast float %3231, %3204
  %3233 = fadd fast float %3232, %3227
  %3234 = fptosi float %3233 to i32
  %3235 = add nsw i32 %3234, %3208
  %3236 = shl nsw i32 %3235, 2
  %3237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.i32 %3237, 0
  %3239 = lshr i32 %3238, 16
  %3240 = icmp eq i32 %3239, 0
  br i1 %3240, label %3662, label %3241

; <label>:3241                                    ; preds = %3179
  br label %3242

; <label>:3242                                    ; preds = %3363, %3241
  %3243 = phi i32 [ %3265, %3363 ], [ %3239, %3241 ]
  %3244 = phi float [ %3364, %3363 ], [ 0.000000e+00, %3241 ]
  %3245 = phi float [ %3365, %3363 ], [ %3149, %3241 ]
  %3246 = phi float [ %3366, %3363 ], [ %3141, %3241 ]
  %3247 = phi float [ %3367, %3363 ], [ 0.000000e+00, %3241 ]
  %3248 = phi float [ %3368, %3363 ], [ 0.000000e+00, %3241 ]
  %3249 = phi float [ %3369, %3363 ], [ %3135, %3241 ]
  %3250 = phi float [ %3370, %3363 ], [ %3136, %3241 ]
  %3251 = phi float [ %3371, %3363 ], [ %3137, %3241 ]
  %3252 = phi float [ %3372, %3363 ], [ %3175, %3241 ]
  %3253 = phi float [ %3373, %3363 ], [ %3176, %3241 ]
  %3254 = phi float [ %3374, %3363 ], [ %3177, %3241 ]
  %3255 = phi float [ %3375, %3363 ], [ %3140, %3241 ]
  %3256 = phi float [ %3376, %3363 ], [ %3139, %3241 ]
  %3257 = phi float [ %3377, %3363 ], [ 0.000000e+00, %3241 ]
  %3258 = phi float [ %3378, %3363 ], [ %3138, %3241 ]
  %3259 = phi float [ %3379, %3363 ], [ %3132, %3241 ]
  %3260 = phi float [ %3380, %3363 ], [ %3133, %3241 ]
  %3261 = phi float [ %3381, %3363 ], [ %3134, %3241 ]
  %3262 = shl nuw nsw i32 %3243, 2
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = lshr i32 %3264, 16
  %3266 = shl i32 %3264, 8
  %3267 = and i32 %3266, 16776960
  %3268 = or i32 %3267, 48
  %3269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.f32 %3269, 0
  %3271 = extractvalue %dx.types.ResRet.f32 %3269, 1
  %3272 = extractvalue %dx.types.ResRet.f32 %3269, 2
  %3273 = or i32 %3267, 64
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = extractvalue %dx.types.ResRet.i32 %3274, 1
  %3277 = or i32 %3267, 80
  %3278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.f32 %3278, 2
  %3280 = extractvalue %dx.types.ResRet.f32 %3278, 3
  %3281 = or i32 %3267, 96
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = extractvalue %dx.types.ResRet.f32 %3282, 1
  %3285 = extractvalue %dx.types.ResRet.f32 %3282, 2
  %3286 = extractvalue %dx.types.ResRet.f32 %3282, 3
  %3287 = or i32 %3267, 112
  %3288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 2
  %3290 = or i32 %3267, 128
  %3291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3290, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 0
  %3293 = extractvalue %dx.types.ResRet.f32 %3291, 1
  %3294 = extractvalue %dx.types.ResRet.f32 %3291, 2
  %3295 = extractvalue %dx.types.ResRet.f32 %3291, 3
  %3296 = or i32 %3267, 144
  %3297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = extractvalue %dx.types.ResRet.f32 %3297, 3
  %3302 = or i32 %3267, 160
  %3303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.ResRet.f32 %3303, 1
  %3306 = extractvalue %dx.types.ResRet.f32 %3303, 2
  %3307 = extractvalue %dx.types.ResRet.f32 %3303, 3
  %3308 = or i32 %3267, 192
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = or i32 %3267, 208
  %3312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = or i32 %3267, 248
  %3315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.ResRet.f32 %3315, 1
  %3318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.ResRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.ResRet.f32 %3318, 2
  %3322 = extractvalue %dx.types.ResRet.f32 %3318, 3
  %3323 = call float @dx.op.dot4.f32(i32 56, float %3319, float %3320, float %3321, float %3322, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3324 = or i32 %3267, 16
  %3325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3329 = extractvalue %dx.types.ResRet.f32 %3325, 3
  %3330 = call float @dx.op.dot4.f32(i32 56, float %3326, float %3327, float %3328, float %3329, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3331 = or i32 %3267, 32
  %3332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.f32 %3332, 0
  %3334 = extractvalue %dx.types.ResRet.f32 %3332, 1
  %3335 = extractvalue %dx.types.ResRet.f32 %3332, 2
  %3336 = extractvalue %dx.types.ResRet.f32 %3332, 3
  %3337 = call float @dx.op.dot4.f32(i32 56, float %3333, float %3334, float %3335, float %3336, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3338 = call float @dx.op.unary.f32(i32 27, float %3323)  ; Round_ni(value)
  %3339 = call float @dx.op.unary.f32(i32 6, float %3338)  ; FAbs(value)
  %3340 = call float @dx.op.unary.f32(i32 27, float %3330)  ; Round_ni(value)
  %3341 = call float @dx.op.unary.f32(i32 6, float %3340)  ; FAbs(value)
  %3342 = call float @dx.op.unary.f32(i32 6, float %3337)  ; FAbs(value)
  %3343 = call float @dx.op.unary.f32(i32 27, float %3342)  ; Round_ni(value)
  %3344 = fadd fast float %3341, %3339
  %3345 = fadd fast float %3344, %3343
  %3346 = fcmp fast oeq float %3345, 0.000000e+00
  %3347 = call float @dx.op.dot4.f32(i32 56, float %3319, float %3320, float %3321, float %3322, float %3186, float %3187, float %3188, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3348 = call float @dx.op.dot4.f32(i32 56, float %3326, float %3327, float %3328, float %3329, float %3186, float %3187, float %3188, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3349 = call float @dx.op.dot4.f32(i32 56, float %3319, float %3320, float %3321, float %3322, float %3189, float %3190, float %3191, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3350 = call float @dx.op.dot4.f32(i32 56, float %3326, float %3327, float %3328, float %3329, float %3189, float %3190, float %3191, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3351 = fsub fast float %3347, %3323
  %3352 = fsub fast float %3349, %3323
  %3353 = fsub fast float %3348, %3330
  %3354 = fsub fast float %3350, %3330
  %3355 = call float @dx.op.dot3.f32(i32 55, float %3270, float %3271, float %3272, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %3356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3356, 2
  %3358 = fadd fast float %3357, %3355
  %3359 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  %3360 = extractvalue %dx.types.CBufRet.f32 %3356, 0
  %3361 = fcmp fast ogt float %3359, %3360
  %3362 = and i1 %3346, %3361
  br i1 %3362, label %3383, label %3363

; <label>:3363                                    ; preds = %3648, %3466, %3383, %3242
  %3364 = phi float [ %3244, %3383 ], [ %3469, %3466 ], [ %3469, %3648 ], [ %3244, %3242 ]
  %3365 = phi float [ %3245, %3383 ], [ %3245, %3466 ], [ %3623, %3648 ], [ %3245, %3242 ]
  %3366 = phi float [ %3246, %3383 ], [ %3246, %3466 ], [ %3621, %3648 ], [ %3246, %3242 ]
  %3367 = phi float [ %3247, %3383 ], [ %3247, %3466 ], [ %3593, %3648 ], [ %3247, %3242 ]
  %3368 = phi float [ %3248, %3383 ], [ %3248, %3466 ], [ %3591, %3648 ], [ %3248, %3242 ]
  %3369 = phi float [ %3249, %3383 ], [ %3249, %3466 ], [ %3658, %3648 ], [ %3249, %3242 ]
  %3370 = phi float [ %3250, %3383 ], [ %3250, %3466 ], [ %3659, %3648 ], [ %3250, %3242 ]
  %3371 = phi float [ %3251, %3383 ], [ %3251, %3466 ], [ %3660, %3648 ], [ %3251, %3242 ]
  %3372 = phi float [ %3252, %3383 ], [ %3252, %3466 ], [ %3572, %3648 ], [ %3252, %3242 ]
  %3373 = phi float [ %3253, %3383 ], [ %3253, %3466 ], [ %3573, %3648 ], [ %3253, %3242 ]
  %3374 = phi float [ %3254, %3383 ], [ %3254, %3466 ], [ %3574, %3648 ], [ %3254, %3242 ]
  %3375 = phi float [ %3255, %3383 ], [ %3255, %3466 ], [ %3601, %3648 ], [ %3255, %3242 ]
  %3376 = phi float [ %3256, %3383 ], [ %3256, %3466 ], [ %3598, %3648 ], [ %3256, %3242 ]
  %3377 = phi float [ %3257, %3383 ], [ %3257, %3466 ], [ %3595, %3648 ], [ %3257, %3242 ]
  %3378 = phi float [ %3258, %3383 ], [ %3258, %3466 ], [ %3589, %3648 ], [ %3258, %3242 ]
  %3379 = phi float [ %3259, %3383 ], [ %3259, %3466 ], [ %3584, %3648 ], [ %3259, %3242 ]
  %3380 = phi float [ %3260, %3383 ], [ %3260, %3466 ], [ %3585, %3648 ], [ %3260, %3242 ]
  %3381 = phi float [ %3261, %3383 ], [ %3261, %3466 ], [ %3586, %3648 ], [ %3261, %3242 ]
  %3382 = icmp eq i32 %3265, 0
  br i1 %3382, label %3661, label %3242

; <label>:3383                                    ; preds = %3242
  %3384 = extractvalue %dx.types.ResRet.f32 %3269, 3
  %3385 = extractvalue %dx.types.ResRet.f32 %3288, 3
  %3386 = extractvalue %dx.types.ResRet.f32 %3288, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3278, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3278, 0
  %3390 = extractvalue %dx.types.ResRet.i32 %3274, 3
  %3391 = extractvalue %dx.types.ResRet.i32 %3274, 2
  %3392 = bitcast float %3384 to i32
  %3393 = add i32 %3390, 0
  %3394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3393, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3396 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3394, %dx.types.Handle %3395, float %3323, float %3330, float undef, float undef, i32 0, i32 0, i32 undef, float %3351, float %3353, float undef, float %3352, float %3354, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3397 = extractvalue %dx.types.ResRet.f32 %3396, 0
  %3398 = fmul fast float %3397, %3389
  %3399 = fadd fast float %3398, %3388
  %3400 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3401 = fmul fast float %3323, %3283
  %3402 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3330, float %3401)  ; FMad(a,b,c)
  %3403 = fadd fast float %3402, %3387
  %3404 = fmul fast float %3323, %3285
  %3405 = call float @dx.op.tertiary.f32(i32 46, float %3286, float %3330, float %3404)  ; FMad(a,b,c)
  %3406 = fadd fast float %3405, %3386
  %3407 = fmul fast float %3351, %3283
  %3408 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3353, float %3407)  ; FMad(a,b,c)
  %3409 = fmul fast float %3351, %3285
  %3410 = call float @dx.op.tertiary.f32(i32 46, float %3286, float %3353, float %3409)  ; FMad(a,b,c)
  %3411 = fmul fast float %3352, %3283
  %3412 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3354, float %3411)  ; FMad(a,b,c)
  %3413 = fmul fast float %3352, %3285
  %3414 = call float @dx.op.tertiary.f32(i32 46, float %3286, float %3354, float %3413)  ; FMad(a,b,c)
  %3415 = add i32 %3391, 0
  %3416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3415, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3417 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3416, %dx.types.Handle %3395, float %3403, float %3406, float undef, float undef, i32 0, i32 0, i32 undef, float %3408, float %3410, float undef, float %3412, float %3414, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3418 = extractvalue %dx.types.ResRet.f32 %3417, 0
  %3419 = and i32 %3392, 1024
  %3420 = icmp ne i32 %3419, 0
  %3421 = fcmp fast ogt float %3418, 0x3FE0101020000000
  %3422 = uitofp i1 %3421 to float
  %3423 = select i1 %3420, float %3422, float %3418
  %3424 = and i32 %3392, 8192
  %3425 = icmp ne i32 %3424, 0
  %3426 = select i1 %3425, float %3385, float 1.000000e+00
  %3427 = fmul fast float %3323, 2.000000e+00
  %3428 = fadd fast float %3427, -1.000000e+00
  %3429 = call float @dx.op.unary.f32(i32 6, float %3428)  ; FAbs(value)
  %3430 = fmul fast float %3429, %3316
  %3431 = fsub fast float %3430, %3316
  %3432 = call float @dx.op.unary.f32(i32 7, float %3431)  ; Saturate(value)
  %3433 = fmul fast float %3330, 2.000000e+00
  %3434 = fadd fast float %3433, -1.000000e+00
  %3435 = call float @dx.op.unary.f32(i32 6, float %3434)  ; FAbs(value)
  %3436 = fmul fast float %3435, %3317
  %3437 = fsub fast float %3436, %3317
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3439 = fmul fast float %3342, %3279
  %3440 = fsub fast float %3439, %3279
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3442 = fmul fast float %3400, %3426
  %3443 = fmul fast float %3442, %3397
  %3444 = fmul fast float %3443, %3432
  %3445 = fmul fast float %3444, %3423
  %3446 = fmul fast float %3445, %3438
  %3447 = fmul fast float %3446, %3441
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3450 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3451 = fsub fast float %3359, %3450
  %3452 = fmul fast float %3451, %3449
  %3453 = call float @dx.op.unary.f32(i32 7, float %3452)  ; Saturate(value)
  %3454 = fmul fast float %3447, %3280
  %3455 = fadd fast float %3447, %3280
  %3456 = fmul fast float %3455, %3289
  %3457 = fsub fast float %3456, %3289
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3459 = and i32 %3392, 128
  %3460 = icmp ne i32 %3459, 0
  %3461 = select i1 %3460, float %3458, float %3454
  %3462 = fmul fast float %3461, %3453
  %3463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3464 = extractvalue %dx.types.CBufRet.f32 %3463, 0
  %3465 = fcmp fast ugt float %3462, %3464
  br i1 %3465, label %3466, label %3363

; <label>:3466                                    ; preds = %3383
  %3467 = select i1 %3425, float %3462, float 0.000000e+00
  %3468 = fadd fast float %3467, %3244
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  br i1 %3425, label %3363, label %3470

; <label>:3470                                    ; preds = %3466
  %3471 = and i32 %3392, 4
  %3472 = and i32 %3392, 8
  %3473 = add i32 %3275, 0
  %3474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3474, %dx.types.Handle %3475, float %3403, float %3406, float undef, float undef, i32 0, i32 0, i32 undef, float %3408, float %3410, float undef, float %3412, float %3414, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = bitcast float %3301 to i32
  %3482 = and i32 %3481, 255
  %3483 = uitofp i32 %3482 to float
  %3484 = lshr i32 %3481, 8
  %3485 = and i32 %3484, 255
  %3486 = uitofp i32 %3485 to float
  %3487 = fmul fast float %3480, %3483
  %3488 = fadd fast float %3487, %3486
  %3489 = fmul fast float %3488, 0x3F70101000000000
  %3490 = add i32 %3276, 0
  %3491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3490, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3492 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3491, %dx.types.Handle %3475, float %3403, float %3406, float undef, float undef, i32 0, i32 0, i32 undef, float %3408, float %3410, float undef, float %3412, float %3414, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3493 = extractvalue %dx.types.ResRet.f32 %3492, 0
  %3494 = extractvalue %dx.types.ResRet.f32 %3492, 1
  %3495 = extractvalue %dx.types.ResRet.f32 %3492, 2
  %3496 = extractvalue %dx.types.ResRet.f32 %3492, 3
  %3497 = bitcast float %3295 to i32
  %3498 = and i32 %3497, 255
  %3499 = uitofp i32 %3498 to float
  %3500 = lshr i32 %3497, 8
  %3501 = and i32 %3500, 255
  %3502 = uitofp i32 %3501 to float
  %3503 = lshr i32 %3497, 16
  %3504 = and i32 %3503, 255
  %3505 = uitofp i32 %3504 to float
  %3506 = fmul fast float %3505, 0x3F70101000000000
  %3507 = fmul fast float %3493, %3499
  %3508 = fadd fast float %3507, %3502
  %3509 = fmul fast float %3508, 0x3F70101000000000
  %3510 = fadd fast float %3494, -5.000000e-01
  %3511 = fadd fast float %3496, -5.000000e-01
  %3512 = fmul fast float %3510, %3506
  %3513 = fmul fast float %3511, %3506
  %3514 = fadd fast float %3512, 5.000000e-01
  %3515 = fadd fast float %3513, 5.000000e-01
  %3516 = fmul fast float %3477, %3304
  %3517 = fmul fast float %3478, %3305
  %3518 = fmul fast float %3479, %3306
  %3519 = fmul fast float %3514, 2.000000e+00
  %3520 = fadd fast float %3519, -1.000000e+00
  %3521 = fmul fast float %3515, 2.000000e+00
  %3522 = fadd fast float %3521, -1.000000e+00
  %3523 = fadd fast float %3520, %3522
  %3524 = fmul fast float %3523, 5.000000e-01
  %3525 = fsub fast float %3520, %3522
  %3526 = fmul fast float %3525, 5.000000e-01
  %3527 = call float @dx.op.unary.f32(i32 6, float %3524)  ; FAbs(value)
  %3528 = fsub fast float 1.000000e+00, %3527
  %3529 = call float @dx.op.unary.f32(i32 6, float %3526)  ; FAbs(value)
  %3530 = fsub fast float %3528, %3529
  %3531 = call float @dx.op.dot3.f32(i32 55, float %3524, float %3526, float %3530, float %3524, float %3526, float %3530)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = call float @dx.op.unary.f32(i32 25, float %3531)  ; Rsqrt(value)
  %3533 = fmul fast float %3524, %3532
  %3534 = fmul fast float %3526, %3532
  %3535 = fmul fast float %3532, %3530
  %3536 = fmul fast float %3535, %3270
  %3537 = fmul fast float %3535, %3271
  %3538 = fmul fast float %3535, %3272
  %3539 = fmul fast float %3533, %3292
  %3540 = fmul fast float %3533, %3293
  %3541 = fmul fast float %3533, %3294
  %3542 = fadd fast float %3539, %3536
  %3543 = fadd fast float %3540, %3537
  %3544 = fadd fast float %3541, %3538
  %3545 = fmul fast float %3534, %3298
  %3546 = fmul fast float %3534, %3299
  %3547 = fmul fast float %3534, %3300
  %3548 = fadd fast float %3542, %3545
  %3549 = fadd fast float %3543, %3546
  %3550 = fadd fast float %3544, %3547
  %3551 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %3548, float %3549, float %3550)  ; Dot3(ax,ay,az,bx,by,bz)
  %3552 = call float @dx.op.unary.f32(i32 25, float %3551)  ; Rsqrt(value)
  %3553 = fmul fast float %3548, %3552
  %3554 = fmul fast float %3549, %3552
  %3555 = fmul fast float %3550, %3552
  %3556 = icmp ne i32 %3472, 0
  %3557 = select i1 %3556, float 1.000000e+00, float 0.000000e+00
  %3558 = fmul fast float %3462, %3557
  %3559 = and i32 %3392, 1
  %3560 = icmp eq i32 %3559, 0
  br i1 %3560, label %3561, label %3565

; <label>:3561                                    ; preds = %3470
  %3562 = fsub fast float %3553, %3252
  %3563 = fsub fast float %3554, %3253
  %3564 = fsub fast float %3555, %3254
  br label %3565

; <label>:3565                                    ; preds = %3561, %3470
  %3566 = phi float [ %3562, %3561 ], [ %3553, %3470 ]
  %3567 = phi float [ %3563, %3561 ], [ %3554, %3470 ]
  %3568 = phi float [ %3564, %3561 ], [ %3555, %3470 ]
  %3569 = fmul float %3568, %3558
  %3570 = fmul float %3567, %3558
  %3571 = fmul float %3566, %3558
  %3572 = fadd fast float %3571, %3252
  %3573 = fadd fast float %3570, %3253
  %3574 = fadd fast float %3569, %3254
  %3575 = icmp ne i32 %3471, 0
  %3576 = select i1 %3575, float 1.000000e+00, float 0.000000e+00
  %3577 = fmul fast float %3462, %3576
  %3578 = fsub fast float %3516, %3259
  %3579 = fsub fast float %3517, %3260
  %3580 = fsub fast float %3518, %3261
  %3581 = fmul fast float %3578, %3577
  %3582 = fmul fast float %3579, %3577
  %3583 = fmul fast float %3580, %3577
  %3584 = fadd fast float %3581, %3259
  %3585 = fadd fast float %3582, %3260
  %3586 = fadd fast float %3583, %3261
  %3587 = fsub fast float %3489, %3258
  %3588 = fmul fast float %3587, %3577
  %3589 = fadd fast float %3588, %3258
  %3590 = fmul fast float %3577, %3248
  %3591 = fsub fast float %3248, %3590
  %3592 = fmul fast float %3577, %3247
  %3593 = fsub fast float %3247, %3592
  %3594 = fadd fast float %3462, %3257
  %3595 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  %3596 = fsub fast float %3509, %3256
  %3597 = fmul fast float %3596, %3558
  %3598 = fadd fast float %3597, %3256
  %3599 = fsub fast float %3495, %3255
  %3600 = fmul fast float %3599, %3558
  %3601 = fadd fast float %3600, %3255
  %3602 = call float @dx.op.dot3.f32(i32 55, float %3516, float %3517, float %3518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.CBufRet.f32 %3603, 1
  %3606 = fmul fast float %3605, %3602
  %3607 = fadd fast float %3606, %3604
  %3608 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3609 = bitcast float %3307 to i32
  %3610 = and i32 %3609, 65535
  %3611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3610)  ; LegacyF16ToF32(value)
  %3612 = lshr i32 %3609, 16
  %3613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3612)  ; LegacyF16ToF32(value)
  %3614 = fcmp fast oge float %3611, 0.000000e+00
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = select i1 %3614, float %3611, float %3616
  %3618 = fadd fast float %3617, %3613
  %3619 = fsub fast float %3608, %3246
  %3620 = fmul fast float %3619, %3462
  %3621 = fadd fast float %3620, %3246
  %3622 = fmul fast float %3618, %3462
  %3623 = call float @dx.op.binary.f32(i32 35, float %3245, float %3622)  ; FMax(a,b)
  %3624 = and i32 %3392, 16
  %3625 = icmp eq i32 %3624, 0
  br i1 %3625, label %3648, label %3626

; <label>:3626                                    ; preds = %3565
  %3627 = bitcast float %3313 to i32
  %3628 = add i32 %3310, 0
  %3629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3628, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3630 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3629, %dx.types.Handle %3475, float %3403, float %3406, float undef, float undef, i32 0, i32 0, i32 undef, float %3408, float %3410, float undef, float %3412, float %3414, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = and i32 %3627, 65535
  %3635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3634)  ; LegacyF16ToF32(value)
  %3636 = fmul fast float %3631, %3304
  %3637 = fmul fast float %3632, %3305
  %3638 = fmul fast float %3633, %3306
  %3639 = and i32 %3392, 16384
  %3640 = icmp ne i32 %3639, 0
  %3641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3641, 0
  %3643 = select i1 %3640, float %3642, float 1.000000e+00
  %3644 = fmul fast float %3643, %3635
  %3645 = fmul fast float %3636, %3644
  %3646 = fmul fast float %3637, %3644
  %3647 = fmul fast float %3638, %3644
  br label %3648

; <label>:3648                                    ; preds = %3626, %3565
  %3649 = phi float [ %3645, %3626 ], [ 0.000000e+00, %3565 ]
  %3650 = phi float [ %3646, %3626 ], [ 0.000000e+00, %3565 ]
  %3651 = phi float [ %3647, %3626 ], [ 0.000000e+00, %3565 ]
  %3652 = fsub fast float %3649, %3249
  %3653 = fsub fast float %3650, %3250
  %3654 = fsub fast float %3651, %3251
  %3655 = fmul fast float %3652, %3462
  %3656 = fmul fast float %3653, %3462
  %3657 = fmul fast float %3654, %3462
  %3658 = fadd fast float %3655, %3249
  %3659 = fadd fast float %3656, %3250
  %3660 = fadd fast float %3657, %3251
  br label %3363

; <label>:3661                                    ; preds = %3363
  br label %3662

; <label>:3662                                    ; preds = %3661, %3179
  %3663 = phi float [ 0.000000e+00, %3179 ], [ %3364, %3661 ]
  %3664 = phi float [ %3149, %3179 ], [ %3365, %3661 ]
  %3665 = phi float [ %3141, %3179 ], [ %3366, %3661 ]
  %3666 = phi float [ 0.000000e+00, %3179 ], [ %3367, %3661 ]
  %3667 = phi float [ 0.000000e+00, %3179 ], [ %3368, %3661 ]
  %3668 = phi float [ %3135, %3179 ], [ %3369, %3661 ]
  %3669 = phi float [ %3136, %3179 ], [ %3370, %3661 ]
  %3670 = phi float [ %3137, %3179 ], [ %3371, %3661 ]
  %3671 = phi float [ %3175, %3179 ], [ %3372, %3661 ]
  %3672 = phi float [ %3176, %3179 ], [ %3373, %3661 ]
  %3673 = phi float [ %3177, %3179 ], [ %3374, %3661 ]
  %3674 = phi float [ %3140, %3179 ], [ %3375, %3661 ]
  %3675 = phi float [ %3139, %3179 ], [ %3376, %3661 ]
  %3676 = phi float [ 0.000000e+00, %3179 ], [ %3377, %3661 ]
  %3677 = phi float [ %3138, %3179 ], [ %3378, %3661 ]
  %3678 = phi float [ %3132, %3179 ], [ %3379, %3661 ]
  %3679 = phi float [ %3133, %3179 ], [ %3380, %3661 ]
  %3680 = phi float [ %3134, %3179 ], [ %3381, %3661 ]
  %3681 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float %3671, float %3672, float %3673)  ; Dot3(ax,ay,az,bx,by,bz)
  %3682 = call float @dx.op.unary.f32(i32 25, float %3681)  ; Rsqrt(value)
  %3683 = fmul fast float %3682, %3671
  %3684 = fmul fast float %3682, %3672
  %3685 = fmul fast float %3682, %3673
  %3686 = fadd fast float %3676, %921
  %3687 = call float @dx.op.unary.f32(i32 7, float %3686)  ; Saturate(value)
  %3688 = call float @dx.op.dot3.f32(i32 55, float %3683, float %3684, float %3685, float %3683, float %3684, float %3685)  ; Dot3(ax,ay,az,bx,by,bz)
  %3689 = call float @dx.op.unary.f32(i32 25, float %3688)  ; Rsqrt(value)
  %3690 = fmul fast float %3689, %3683
  %3691 = fmul fast float %3689, %3684
  %3692 = fmul fast float %3689, %3685
  br label %3693

; <label>:3693                                    ; preds = %3662, %3129
  %3694 = phi float [ %3690, %3662 ], [ %3175, %3129 ]
  %3695 = phi float [ %3691, %3662 ], [ %3176, %3129 ]
  %3696 = phi float [ %3692, %3662 ], [ %3177, %3129 ]
  %3697 = phi float [ %3678, %3662 ], [ %3132, %3129 ]
  %3698 = phi float [ %3679, %3662 ], [ %3133, %3129 ]
  %3699 = phi float [ %3680, %3662 ], [ %3134, %3129 ]
  %3700 = phi float [ %3668, %3662 ], [ %3135, %3129 ]
  %3701 = phi float [ %3669, %3662 ], [ %3136, %3129 ]
  %3702 = phi float [ %3670, %3662 ], [ %3137, %3129 ]
  %3703 = phi float [ %3677, %3662 ], [ %3138, %3129 ]
  %3704 = phi float [ %3687, %3662 ], [ %921, %3129 ]
  %3705 = phi float [ %3675, %3662 ], [ %3139, %3129 ]
  %3706 = phi float [ %3674, %3662 ], [ %3140, %3129 ]
  %3707 = phi float [ %3667, %3662 ], [ 0.000000e+00, %3129 ]
  %3708 = phi float [ %3666, %3662 ], [ 0.000000e+00, %3129 ]
  %3709 = phi float [ %3663, %3662 ], [ 0.000000e+00, %3129 ]
  %3710 = phi float [ %3664, %3662 ], [ %3149, %3129 ]
  %3711 = phi float [ %3665, %3662 ], [ %3141, %3129 ]
  %3712 = fadd fast float %3703, 0xBFB99999A0000000
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = fmul fast float %3713, 0x3FF1C71C80000000
  %3715 = call float @dx.op.binary.f32(i32 36, float %3703, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3716 = fsub fast float 1.000000e+00, %3714
  %3717 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3718 = fmul fast float %3717, %3697
  %3719 = fmul fast float %3717, %3698
  %3720 = fmul fast float %3717, %3699
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3722 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3723 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3724 = fmul fast float %3714, %3697
  %3725 = fmul fast float %3714, %3698
  %3726 = fmul fast float %3714, %3699
  %3727 = fadd fast float %3724, %3715
  %3728 = fadd fast float %3725, %3715
  %3729 = fadd fast float %3726, %3715
  %3730 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3731 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3732 = call float @dx.op.unary.f32(i32 7, float %3729)  ; Saturate(value)
  %3733 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3735 = extractvalue %dx.types.CBufRet.i32 %3734, 3
  %3736 = and i32 %3735, 8
  %3737 = icmp ne i32 %3736, 0
  %3738 = call float @dx.op.binary.f32(i32 35, float %3721, float %3697)  ; FMax(a,b)
  %3739 = call float @dx.op.binary.f32(i32 35, float %3722, float %3697)  ; FMax(a,b)
  %3740 = call float @dx.op.binary.f32(i32 35, float %3723, float %3697)  ; FMax(a,b)
  %3741 = call float @dx.op.dot3.f32(i32 55, float %3721, float %3722, float %3723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3742 = select i1 %205, float %3697, float %3721
  %3743 = select i1 %205, float %3741, float %3722
  %3744 = select i1 %205, float 1.000000e+00, float %3723
  %3745 = select i1 %3737, float %3738, float %3742
  %3746 = select i1 %3737, float %3739, float %3743
  %3747 = select i1 %3737, float %3740, float %3744
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.CBufRet.f32 %3748, 1
  %3751 = extractvalue %dx.types.CBufRet.f32 %3748, 2
  %3752 = fadd fast float %3749, %166
  %3753 = fadd fast float %3750, %167
  %3754 = fadd fast float %3751, %168
  %3755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3756 = extractvalue %dx.types.CBufRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.CBufRet.f32 %3755, 1
  %3758 = fsub fast float %3752, %3756
  %3759 = fsub fast float %3753, %3757
  %3760 = fmul fast float %3758, %3758
  %3761 = fmul fast float %3759, %3759
  %3762 = fadd fast float %3760, %3761
  %3763 = call float @dx.op.unary.f32(i32 24, float %3762)  ; Sqrt(value)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3755, 2
  %3765 = fcmp fast olt float %3763, %3764
  br i1 %3765, label %3766, label %3833

; <label>:3766                                    ; preds = %3693
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.CBufRet.f32 %3767, 1
  %3774 = extractvalue %dx.types.CBufRet.f32 %3769, 1
  %3775 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3767, 3
  %3777 = extractvalue %dx.types.CBufRet.f32 %3769, 3
  %3778 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3779 = fadd fast float %3776, %3752
  %3780 = fadd fast float %3777, %3753
  %3781 = fadd fast float %3778, %3754
  %3782 = fmul fast float %3779, %3768
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %3780, float %3770, float %3782)  ; FMad(a,b,c)
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %3781, float %3772, float %3783)  ; FMad(a,b,c)
  %3785 = fmul fast float %3779, %3773
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %3780, float %3774, float %3785)  ; FMad(a,b,c)
  %3787 = call float @dx.op.tertiary.f32(i32 46, float %3781, float %3775, float %3786)  ; FMad(a,b,c)
  %3788 = fsub fast float %3784, %3776
  %3789 = fsub fast float %3787, %3777
  %3790 = fsub fast float %3788, %3756
  %3791 = fadd fast float %3790, %3764
  %3792 = fsub fast float %3789, %3757
  %3793 = fadd fast float %3792, %3764
  %3794 = extractvalue %dx.types.CBufRet.f32 %3755, 3
  %3795 = fmul fast float %3791, %3794
  %3796 = fmul fast float %3793, %3794
  %3797 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3798 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3799 = fsub fast float 1.000000e+00, %3797
  %3800 = fsub fast float 1.000000e+00, %3798
  %3801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3799, float %3800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = fcmp fast ugt float %3802, 0.000000e+00
  br i1 %3803, label %3804, label %4107

; <label>:3804                                    ; preds = %3766
  %3805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3806 = extractvalue %dx.types.CBufRet.f32 %3805, 2
  %3807 = fmul fast float %3806, %3802
  %3808 = extractvalue %dx.types.CBufRet.f32 %3805, 3
  %3809 = fadd fast float %3808, %3807
  %3810 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3811 = fadd fast float %3809, %3778
  %3812 = fmul fast float %3784, %3772
  %3813 = call float @dx.op.tertiary.f32(i32 46, float %3787, float %3775, float %3812)  ; FMad(a,b,c)
  %3814 = call float @dx.op.tertiary.f32(i32 46, float %3811, float %3810, float %3813)  ; FMad(a,b,c)
  %3815 = fsub fast float %3814, %3778
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 2
  %3818 = fsub fast float %3815, %3817
  %3819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3799, float %3800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3799, float %3800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3827 = fadd fast float %3824, %3820
  %3828 = fmul fast float %3827, 0x3F847AE140000000
  %3829 = fadd fast float %3825, %3821
  %3830 = fmul fast float %3829, 0x3F847AE140000000
  %3831 = fadd fast float %3826, %3822
  %3832 = fmul fast float %3831, 0x3F847AE140000000
  br label %4107

; <label>:3833                                    ; preds = %3693
  %3834 = and i32 %184, 1
  %3835 = icmp eq i32 %3834, 0
  br i1 %3835, label %4107, label %3836

; <label>:3836                                    ; preds = %3833
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 0
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 0
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.CBufRet.f32 %3837, 1
  %3844 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3845 = extractvalue %dx.types.CBufRet.f32 %3841, 1
  %3846 = extractvalue %dx.types.CBufRet.f32 %3837, 3
  %3847 = extractvalue %dx.types.CBufRet.f32 %3839, 3
  %3848 = extractvalue %dx.types.CBufRet.f32 %3841, 3
  %3849 = fadd fast float %3846, %3752
  %3850 = fadd fast float %3847, %3753
  %3851 = fadd fast float %3848, %3754
  %3852 = fmul fast float %3849, %3838
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3840, float %3852)  ; FMad(a,b,c)
  %3854 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3842, float %3853)  ; FMad(a,b,c)
  %3855 = fmul fast float %3849, %3843
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3844, float %3855)  ; FMad(a,b,c)
  %3857 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3845, float %3856)  ; FMad(a,b,c)
  %3858 = fsub fast float %3854, %3846
  %3859 = fsub fast float %3857, %3847
  %3860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3861 = extractvalue %dx.types.CBufRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.CBufRet.f32 %3860, 1
  %3863 = extractvalue %dx.types.CBufRet.f32 %3860, 2
  %3864 = extractvalue %dx.types.CBufRet.f32 %3860, 3
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 3
  %3867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.i32 %3867, 0
  %3869 = extractvalue %dx.types.CBufRet.i32 %3867, 1
  %3870 = udiv i32 %3869, %3868
  %3871 = fsub fast float %3858, %3861
  %3872 = fsub fast float %3859, %3862
  %3873 = call float @dx.op.binary.f32(i32 35, float %3871, float 0.000000e+00)  ; FMax(a,b)
  %3874 = call float @dx.op.binary.f32(i32 35, float %3872, float 0.000000e+00)  ; FMax(a,b)
  %3875 = call float @dx.op.binary.f32(i32 36, float %3873, float %3863)  ; FMin(a,b)
  %3876 = call float @dx.op.binary.f32(i32 36, float %3874, float %3864)  ; FMin(a,b)
  %3877 = add i32 %3868, -1
  %3878 = add i32 %3870, -1
  %3879 = fmul fast float %3875, %3866
  %3880 = fmul fast float %3876, %3866
  %3881 = fptoui float %3879 to i32
  %3882 = fptoui float %3880 to i32
  %3883 = call i32 @dx.op.binary.i32(i32 40, i32 %3881, i32 %3877)  ; UMin(a,b)
  %3884 = call i32 @dx.op.binary.i32(i32 40, i32 %3882, i32 %3878)  ; UMin(a,b)
  %3885 = mul i32 %3884, %3868
  %3886 = add i32 %3885, %3883
  %3887 = shl i32 %3886, 2
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = icmp eq i32 %3889, -1
  br i1 %3890, label %4107, label %3891

; <label>:3891                                    ; preds = %3836
  %3892 = mul i32 %3889, 148
  %3893 = add i32 %3892, 4
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = add i32 %3892, 8
  %3897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = add i32 %3892, 36
  %3900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = add i32 %3892, 60
  %3903 = add i32 %3892, 92
  %3904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.i32 %3904, 0
  %3906 = add i32 %3892, 116
  %3907 = fsub fast float %3858, %3895
  %3908 = fsub fast float %3859, %3898
  %3909 = fmul fast float %3866, %3907
  %3910 = fmul fast float %3866, %3908
  %3911 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3912 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3913 = fsub fast float 1.000000e+00, %3912
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 2
  %3916 = call float @dx.op.unary.f32(i32 83, float %3911)  ; DerivCoarseX(value)
  %3917 = call float @dx.op.unary.f32(i32 83, float %3913)  ; DerivCoarseX(value)
  %3918 = call float @dx.op.unary.f32(i32 84, float %3911)  ; DerivCoarseY(value)
  %3919 = call float @dx.op.unary.f32(i32 84, float %3913)  ; DerivCoarseY(value)
  %3920 = fmul fast float %3916, %3915
  %3921 = fmul fast float %3917, %3915
  %3922 = fmul fast float %3918, %3915
  %3923 = fmul fast float %3919, %3915
  %3924 = call float @dx.op.dot2.f32(i32 54, float %3922, float %3923, float %3922, float %3923)  ; Dot2(ax,ay,bx,by)
  %3925 = call float @dx.op.dot2.f32(i32 54, float %3920, float %3921, float %3920, float %3921)  ; Dot2(ax,ay,bx,by)
  %3926 = call float @dx.op.binary.f32(i32 35, float %3925, float %3924)  ; FMax(a,b)
  %3927 = call float @dx.op.unary.f32(i32 23, float %3926)  ; Log(value)
  %3928 = fmul fast float %3927, 5.000000e-01
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3931 = fadd fast float %3930, %3928
  %3932 = call float @dx.op.binary.f32(i32 35, float %3931, float 0.000000e+00)  ; FMax(a,b)
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 3
  %3935 = fadd fast float %3934, %3932
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 3
  %3938 = fadd fast float %3935, %3937
  %3939 = add i32 %3905, 0
  %3940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3939, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3941 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3940, i32 0)  ; GetDimensions(handle,mipLevel)
  %3942 = extractvalue %dx.types.Dimensions %3941, 0
  %3943 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3942)  ; FirstbitLo(value)
  %3944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.i32 %3944, 1
  %3946 = sub nsw i32 %3945, %3943
  %3947 = sitofp i32 %3946 to float
  %3948 = fsub fast float %3938, %3947
  %3949 = call float @dx.op.binary.f32(i32 35, float %3948, float 0.000000e+00)  ; FMax(a,b)
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3940, %dx.types.Handle %27, float %3911, float %3913, float %3901, float undef, i32 0, i32 0, i32 undef, float %3949)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = fcmp ule float %3951, 0x3FE0101020000000
  %3953 = extractvalue %dx.types.CBufRet.i32 %3944, 0
  %3954 = and i32 %3953, 128
  %3955 = icmp ne i32 %3954, 0
  %3956 = and i1 %3952, %3955
  br i1 %3956, label %4107, label %3957

; <label>:3957                                    ; preds = %3891
  %3958 = add i32 %3892, 20
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = add i32 %3892, 24
  %3962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = add i32 %3892, 40
  %3965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = add i32 %3892, 96
  %3968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.i32 %3968, 0
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 2
  %3972 = fmul fast float %3971, %3911
  %3973 = fmul fast float %3971, %3913
  %3974 = extractvalue %dx.types.CBufRet.f32 %3970, 3
  %3975 = fadd fast float %3972, %3974
  %3976 = fadd fast float %3973, %3974
  %3977 = add i32 %3969, 0
  %3978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3977, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3979 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3978, i32 0)  ; GetDimensions(handle,mipLevel)
  %3980 = extractvalue %dx.types.Dimensions %3979, 0
  %3981 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3980)  ; FirstbitLo(value)
  %3982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.i32 %3982, 1
  %3984 = sub nsw i32 %3983, %3981
  %3985 = sitofp i32 %3984 to float
  %3986 = fsub fast float %3935, %3985
  %3987 = call float @dx.op.binary.f32(i32 35, float %3986, float 0.000000e+00)  ; FMax(a,b)
  %3988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3978, %dx.types.Handle %27, float %3975, float %3976, float %3966, float undef, i32 0, i32 0, i32 undef, float %3987)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3989 = extractvalue %dx.types.ResRet.f32 %3988, 0
  %3990 = fmul fast float %3989, %3960
  %3991 = fadd fast float %3990, %3963
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = extractvalue %dx.types.CBufRet.f32 %3992, 1
  %3995 = extractvalue %dx.types.CBufRet.f32 %3992, 2
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 3
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 3
  %4000 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %4001 = fadd fast float %3997, %3858
  %4002 = fadd fast float %3999, %3859
  %4003 = fadd fast float %3991, %4000
  %4004 = fmul fast float %4001, %3993
  %4005 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %3994, float %4004)  ; FMad(a,b,c)
  %4006 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %3995, float %4005)  ; FMad(a,b,c)
  %4007 = fsub fast float %4006, %4000
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 2
  %4010 = fsub fast float %4007, %4009
  %4011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.i32 %4011, 0
  %4013 = call i32 @dx.op.binary.i32(i32 40, i32 %3889, i32 %4012)  ; UMin(a,b)
  %4014 = mul i32 %4013, 36
  %4015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4014, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.i32 %4015, 0
  %4017 = add i32 %4014, 4
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4020 = fmul fast float %4019, %3911
  %4021 = fmul fast float %4019, %3913
  %4022 = extractvalue %dx.types.CBufRet.f32 %4018, 1
  %4023 = fadd fast float %4020, %4022
  %4024 = fadd fast float %4021, %4022
  %4025 = icmp eq i32 %4016, 0
  br i1 %4025, label %4094, label %4026

; <label>:4026                                    ; preds = %3957
  br label %4027

; <label>:4027                                    ; preds = %4084, %4026
  %4028 = phi float [ %4085, %4084 ], [ 0.000000e+00, %4026 ]
  %4029 = phi float [ %4086, %4084 ], [ 0.000000e+00, %4026 ]
  %4030 = phi float [ %4087, %4084 ], [ 0.000000e+00, %4026 ]
  %4031 = phi float [ %4088, %4084 ], [ 0.000000e+00, %4026 ]
  %4032 = phi float [ %4089, %4084 ], [ 0.000000e+00, %4026 ]
  %4033 = phi float [ %4090, %4084 ], [ 0.000000e+00, %4026 ]
  %4034 = phi i32 [ %4091, %4084 ], [ 0, %4026 ]
  %4035 = shl i32 %4034, 2
  %4036 = add i32 %3902, %4035
  %4037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = add i32 %3906, %4035
  %4040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.i32 %4040, 0
  %4042 = add i32 %4041, 0
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4042, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4043, i32 0)  ; GetDimensions(handle,mipLevel)
  %4045 = extractvalue %dx.types.Dimensions %4044, 0
  %4046 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4045)  ; FirstbitLo(value)
  %4047 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.i32 %4047, 1
  %4049 = sub nsw i32 %4048, %4046
  %4050 = sitofp i32 %4049 to float
  %4051 = fsub fast float %3935, %4050
  %4052 = call float @dx.op.binary.f32(i32 35, float %4051, float 0.000000e+00)  ; FMax(a,b)
  %4053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4043, %dx.types.Handle %27, float %4023, float %4024, float %4038, float undef, i32 0, i32 0, i32 undef, float %4052)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = fcmp fast ogt float %4054, 0.000000e+00
  br i1 %4055, label %4056, label %4084

; <label>:4056                                    ; preds = %4027
  %4057 = add i32 %4017, %4035
  %4058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4057, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.i32 %4058, 0
  %4060 = and i32 %4059, 32767
  %4061 = mul nuw nsw i32 %4060, 928
  %4062 = add nuw nsw i32 %4061, 48
  %4063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4062, i32 undef)  ; BufferLoad(srv,index,wot)
  %4064 = extractvalue %dx.types.ResRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.ResRet.f32 %4063, 1
  %4066 = extractvalue %dx.types.ResRet.f32 %4063, 2
  %4067 = add nuw nsw i32 %4061, 60
  %4068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.ResRet.f32 %4068, 1
  %4071 = extractvalue %dx.types.ResRet.f32 %4068, 2
  %4072 = fmul fast float %4064, %4054
  %4073 = fmul fast float %4065, %4054
  %4074 = fmul fast float %4066, %4054
  %4075 = fadd fast float %4072, %4028
  %4076 = fadd fast float %4073, %4029
  %4077 = fadd fast float %4074, %4030
  %4078 = fmul fast float %4069, %4054
  %4079 = fmul fast float %4070, %4054
  %4080 = fmul fast float %4071, %4054
  %4081 = fadd fast float %4078, %4031
  %4082 = fadd fast float %4079, %4032
  %4083 = fadd fast float %4080, %4033
  br label %4084

; <label>:4084                                    ; preds = %4056, %4027
  %4085 = phi float [ %4075, %4056 ], [ %4028, %4027 ]
  %4086 = phi float [ %4076, %4056 ], [ %4029, %4027 ]
  %4087 = phi float [ %4077, %4056 ], [ %4030, %4027 ]
  %4088 = phi float [ %4081, %4056 ], [ %4031, %4027 ]
  %4089 = phi float [ %4082, %4056 ], [ %4032, %4027 ]
  %4090 = phi float [ %4083, %4056 ], [ %4033, %4027 ]
  %4091 = add nuw i32 %4034, 1
  %4092 = icmp eq i32 %4091, %4016
  br i1 %4092, label %4093, label %4027

; <label>:4093                                    ; preds = %4084
  br label %4094

; <label>:4094                                    ; preds = %4093, %3957
  %4095 = phi float [ 0.000000e+00, %3957 ], [ %4085, %4093 ]
  %4096 = phi float [ 0.000000e+00, %3957 ], [ %4086, %4093 ]
  %4097 = phi float [ 0.000000e+00, %3957 ], [ %4087, %4093 ]
  %4098 = phi float [ 0.000000e+00, %3957 ], [ %4088, %4093 ]
  %4099 = phi float [ 0.000000e+00, %3957 ], [ %4089, %4093 ]
  %4100 = phi float [ 0.000000e+00, %3957 ], [ %4090, %4093 ]
  %4101 = fadd fast float %4098, %4095
  %4102 = fmul fast float %4101, 0x3F847AE140000000
  %4103 = fadd fast float %4099, %4096
  %4104 = fmul fast float %4103, 0x3F847AE140000000
  %4105 = fadd fast float %4100, %4097
  %4106 = fmul fast float %4105, 0x3F847AE140000000
  br label %4107

; <label>:4107                                    ; preds = %4094, %3891, %3836, %3833, %3804, %3766
  %4108 = phi float [ %3818, %3804 ], [ -1.310720e+05, %3766 ], [ %4010, %4094 ], [ -1.310720e+05, %3836 ], [ -1.310720e+05, %3891 ], [ -1.310720e+05, %3833 ]
  %4109 = phi float [ %3828, %3804 ], [ 0.000000e+00, %3766 ], [ %4102, %4094 ], [ 0.000000e+00, %3836 ], [ 0.000000e+00, %3891 ], [ 0.000000e+00, %3833 ]
  %4110 = phi float [ %3830, %3804 ], [ 0.000000e+00, %3766 ], [ %4104, %4094 ], [ 0.000000e+00, %3836 ], [ 0.000000e+00, %3891 ], [ 0.000000e+00, %3833 ]
  %4111 = phi float [ %3832, %3804 ], [ 0.000000e+00, %3766 ], [ %4106, %4094 ], [ 0.000000e+00, %3836 ], [ 0.000000e+00, %3891 ], [ 0.000000e+00, %3833 ]
  %4112 = phi i1 [ true, %3804 ], [ false, %3766 ], [ true, %4094 ], [ false, %3836 ], [ false, %3891 ], [ false, %3833 ]
  %4113 = and i32 %184, 3
  %4114 = icmp eq i32 %4113, 1
  %4115 = select i1 %4114, float 1.000000e+00, float 0.000000e+00
  %4116 = fsub fast float %4108, %168
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = select i1 %4112, float %4117, float 1.000000e+00
  %4119 = fmul fast float %4118, %4115
  %4120 = icmp eq i32 %4113, 3
  %4121 = select i1 %4120, float 1.000000e+00, float %4119
  %4122 = call float @dx.op.binary.f32(i32 35, float %3709, float %4121)  ; FMax(a,b)
  %4123 = fcmp fast olt float %4121, 1.000000e+00
  %4124 = fcmp uge float %49, 0.000000e+00
  %4125 = and i1 %4124, %4123
  br i1 %4125, label %4126, label %4136

; <label>:4126                                    ; preds = %4107
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = fadd fast float %4128, %4122
  %4132 = fcmp ule float %48, 0.000000e+00
  %4133 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4134 = select i1 %4132, float %4133, float 1.000000e+00
  %4135 = fmul fast float %4134, %4130
  br label %4136

; <label>:4136                                    ; preds = %4126, %4107
  %4137 = phi float [ %4131, %4126 ], [ %4122, %4107 ]
  %4138 = phi float [ %4129, %4126 ], [ 0.000000e+00, %4107 ]
  %4139 = phi float [ %4135, %4126 ], [ 0.000000e+00, %4107 ]
  %4140 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4141 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4142 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4143 = fcmp fast une float %4141, 0.000000e+00
  %4144 = fcmp fast une float %4142, 0.000000e+00
  %4145 = or i1 %4143, %4144
  br i1 %4145, label %4146, label %4705

; <label>:4146                                    ; preds = %4136
  br i1 %4143, label %4147, label %4420

; <label>:4147                                    ; preds = %4146
  %4148 = call float @dx.op.unary.f32(i32 23, float %3706)  ; Log(value)
  %4149 = fmul fast float %4148, 4.000000e+00
  %4150 = call float @dx.op.unary.f32(i32 21, float %4149)  ; Exp(value)
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = fmul fast float %4152, %36
  %4154 = fmul fast float %4152, %37
  %4155 = fmul fast float %4152, %38
  %4156 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4157 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4158 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4159 = call float @dx.op.unary.f32(i32 23, float %4156)  ; Log(value)
  %4160 = call float @dx.op.unary.f32(i32 23, float %4157)  ; Log(value)
  %4161 = call float @dx.op.unary.f32(i32 23, float %4158)  ; Log(value)
  %4162 = fmul fast float %4159, 4.000000e+00
  %4163 = fmul fast float %4160, 4.000000e+00
  %4164 = fmul fast float %4161, 4.000000e+00
  %4165 = call float @dx.op.unary.f32(i32 21, float %4162)  ; Exp(value)
  %4166 = call float @dx.op.unary.f32(i32 21, float %4163)  ; Exp(value)
  %4167 = call float @dx.op.unary.f32(i32 21, float %4164)  ; Exp(value)
  %4168 = fadd fast float %4166, %4165
  %4169 = fadd fast float %4168, %4167
  %4170 = fdiv fast float 1.000000e+00, %4169
  %4171 = fmul fast float %4170, %4165
  %4172 = fcmp fast ogt float %45, 0.000000e+00
  %4173 = fcmp fast ogt float %46, 0.000000e+00
  %4174 = fcmp fast ogt float %47, 0.000000e+00
  %4175 = fcmp fast olt float %45, 0.000000e+00
  %4176 = fcmp fast olt float %46, 0.000000e+00
  %4177 = fcmp fast olt float %47, 0.000000e+00
  %4178 = zext i1 %4172 to i32
  %4179 = zext i1 %4173 to i32
  %4180 = zext i1 %4174 to i32
  %4181 = zext i1 %4175 to i32
  %4182 = zext i1 %4176 to i32
  %4183 = zext i1 %4177 to i32
  %4184 = sub nsw i32 %4178, %4181
  %4185 = sub nsw i32 %4179, %4182
  %4186 = sub nsw i32 %4180, %4183
  %4187 = call float @dx.op.unary.f32(i32 83, float %4153)  ; DerivCoarseX(value)
  %4188 = call float @dx.op.unary.f32(i32 83, float %4154)  ; DerivCoarseX(value)
  %4189 = call float @dx.op.unary.f32(i32 83, float %4155)  ; DerivCoarseX(value)
  %4190 = call float @dx.op.unary.f32(i32 84, float %4153)  ; DerivCoarseY(value)
  %4191 = call float @dx.op.unary.f32(i32 84, float %4154)  ; DerivCoarseY(value)
  %4192 = call float @dx.op.unary.f32(i32 84, float %4155)  ; DerivCoarseY(value)
  %4193 = fcmp fast ole float %216, %4171
  %4194 = fmul fast float %4170, %4168
  %4195 = fcmp fast ole float %216, %4194
  %4196 = select i1 %4195, float %4155, float %4153
  %4197 = select i1 %4195, float %4153, float %4154
  %4198 = select i1 %4193, float %4154, float %4196
  %4199 = select i1 %4193, float %4155, float %4197
  %4200 = select i1 %4195, float %4189, float %4187
  %4201 = select i1 %4195, float %4187, float %4188
  %4202 = select i1 %4193, float %4188, float %4200
  %4203 = select i1 %4193, float %4189, float %4201
  %4204 = select i1 %4195, float %4192, float %4190
  %4205 = select i1 %4195, float %4190, float %4191
  %4206 = select i1 %4193, float %4191, float %4204
  %4207 = select i1 %4193, float %4192, float %4205
  %4208 = call float @dx.op.unary.f32(i32 27, float %4198)  ; Round_ni(value)
  %4209 = call float @dx.op.unary.f32(i32 27, float %4199)  ; Round_ni(value)
  %4210 = fptosi float %4208 to i32
  %4211 = fptosi float %4209 to i32
  %4212 = xor i32 %4211, %4210
  %4213 = sitofp i32 %4212 to float
  %4214 = fptosi float %4213 to i32
  %4215 = sitofp i32 %4214 to float
  %4216 = fmul fast float %4215, 0x3FE3C6EF40000000
  %4217 = frem fast float %4208, 2.560000e+02
  %4218 = frem fast float %4209, 2.560000e+02
  %4219 = fptoui float %4217 to i32
  %4220 = fptoui float %4218 to i32
  %4221 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4219, i32 %4220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = fadd fast float %4222, %4216
  %4226 = fadd fast float %4223, %4216
  %4227 = fadd fast float %4224, %4216
  %4228 = call float @dx.op.unary.f32(i32 22, float %4225)  ; Frc(value)
  %4229 = call float @dx.op.unary.f32(i32 22, float %4226)  ; Frc(value)
  %4230 = call float @dx.op.unary.f32(i32 22, float %4227)  ; Frc(value)
  %4231 = fmul fast float %4230, 0x401921FB60000000
  %4232 = call float @dx.op.unary.f32(i32 13, float %4231)  ; Sin(value)
  %4233 = call float @dx.op.unary.f32(i32 12, float %4231)  ; Cos(value)
  %4234 = fsub fast float -0.000000e+00, %4233
  %4235 = fmul fast float %4233, %4198
  %4236 = call float @dx.op.tertiary.f32(i32 46, float %4232, float %4199, float %4235)  ; FMad(a,b,c)
  %4237 = fmul fast float %4232, %4198
  %4238 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4199, float %4237)  ; FMad(a,b,c)
  %4239 = fadd fast float %4236, %4228
  %4240 = fadd fast float %4238, %4229
  %4241 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4242 = bitcast float %4241 to i32
  %4243 = icmp eq i32 %4242, 0
  br i1 %4243, label %4282, label %4244

; <label>:4244                                    ; preds = %4147
  %4245 = add i32 %4242, 0
  %4246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4247 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4246, %dx.types.Handle %80, float %4239, float %4240, float undef, float undef, i32 0, i32 0, i32 undef, float %4202, float %4203, float undef, float %4206, float %4207, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 1
  %4251 = extractvalue %dx.types.CBufRet.f32 %4249, 2
  %4252 = fsub fast float 1.000000e+00, %4141
  %4253 = call float @dx.op.binary.f32(i32 35, float %4252, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4254 = bitcast float %4141 to i32
  %4255 = sitofp i32 %4254 to float
  %4256 = fadd fast float %4255, 0xC1CFBF8940000000
  %4257 = fmul fast float %4251, %4256
  %4258 = fadd fast float %4257, 0x41CFBF8940000000
  %4259 = fptosi float %4258 to i32
  %4260 = bitcast i32 %4259 to float
  %4261 = bitcast float %4253 to i32
  %4262 = sitofp i32 %4261 to float
  %4263 = fadd fast float %4262, 0xC1CFBF8940000000
  %4264 = fmul fast float %4263, %4251
  %4265 = fadd fast float %4264, 0x41CFBF8940000000
  %4266 = fptosi float %4265 to i32
  %4267 = bitcast i32 %4266 to float
  %4268 = fmul fast float %4260, %4250
  %4269 = fmul fast float %4267, %4250
  %4270 = fsub fast float %4253, %4268
  %4271 = fadd fast float %4269, %4253
  %4272 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4273 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4274 = fsub fast float %4248, %4272
  %4275 = fsub fast float %4273, %4272
  %4276 = bitcast float %4275 to i32
  %4277 = sub nsw i32 2129859010, %4276
  %4278 = bitcast i32 %4277 to float
  %4279 = fmul fast float %4278, %4274
  %4280 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4281 = fcmp fast olt float %4280, 0x3F70101020000000
  br i1 %4281, label %4420, label %4282

; <label>:4282                                    ; preds = %4244, %4147
  %4283 = phi float [ %4280, %4244 ], [ %4141, %4147 ]
  %4284 = fmul fast float %4283, %4150
  %4285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.i32 %4285, 1
  %4287 = extractvalue %dx.types.CBufRet.i32 %4285, 0
  %4288 = add i32 %4287, 0
  %4289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4289, %dx.types.Handle %79, float %4239, float %4240, float undef, float undef, i32 0, i32 0, i32 undef, float %4202, float %4203, float undef, float %4206, float %4207, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.ResRet.f32 %4290, 1
  %4293 = extractvalue %dx.types.ResRet.f32 %4290, 2
  %4294 = extractvalue %dx.types.ResRet.f32 %4290, 3
  %4295 = and i32 %4286, 255
  %4296 = uitofp i32 %4295 to float
  %4297 = lshr i32 %4286, 8
  %4298 = and i32 %4297, 255
  %4299 = uitofp i32 %4298 to float
  %4300 = fmul fast float %4294, %4296
  %4301 = fadd fast float %4300, %4299
  %4302 = fmul fast float %4301, 0x3F70101000000000
  %4303 = fadd fast float %4302, 0xBFB99999A0000000
  %4304 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4305 = fmul fast float %4304, 0x3FF1C71C80000000
  %4306 = call float @dx.op.binary.f32(i32 36, float %4302, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4307 = fsub fast float 1.000000e+00, %4305
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4308, %4291
  %4310 = fmul fast float %4308, %4292
  %4311 = fmul fast float %4308, %4293
  %4312 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4313 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4314 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4315 = fmul fast float %4305, %4291
  %4316 = fmul fast float %4305, %4292
  %4317 = fmul fast float %4305, %4293
  %4318 = fadd fast float %4315, %4306
  %4319 = fadd fast float %4316, %4306
  %4320 = fadd fast float %4317, %4306
  %4321 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4322 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4323 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.i32 %4324, 3
  %4326 = extractvalue %dx.types.CBufRet.i32 %4324, 2
  %4327 = add i32 %4326, 0
  %4328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4327, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4329 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4328, %dx.types.Handle %79, float %4239, float %4240, float undef, float undef, i32 0, i32 0, i32 undef, float %4202, float %4203, float undef, float %4206, float %4207, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4330 = extractvalue %dx.types.ResRet.f32 %4329, 0
  %4331 = extractvalue %dx.types.ResRet.f32 %4329, 1
  %4332 = extractvalue %dx.types.ResRet.f32 %4329, 2
  %4333 = extractvalue %dx.types.ResRet.f32 %4329, 3
  %4334 = and i32 %4325, 255
  %4335 = uitofp i32 %4334 to float
  %4336 = lshr i32 %4325, 8
  %4337 = and i32 %4336, 255
  %4338 = uitofp i32 %4337 to float
  %4339 = lshr i32 %4325, 16
  %4340 = and i32 %4339, 255
  %4341 = uitofp i32 %4340 to float
  %4342 = fmul fast float %4341, 0x3F70101000000000
  %4343 = fmul fast float %4330, %4335
  %4344 = fadd fast float %4343, %4338
  %4345 = fmul fast float %4344, 0x3F70101000000000
  %4346 = fadd fast float %4331, -5.000000e-01
  %4347 = fadd fast float %4333, -5.000000e-01
  %4348 = fmul fast float %4346, %4342
  %4349 = fmul fast float %4347, %4342
  %4350 = fadd fast float %4348, 5.000000e-01
  %4351 = fadd fast float %4349, 5.000000e-01
  %4352 = fmul fast float %4350, 2.000000e+00
  %4353 = fadd fast float %4352, -1.000000e+00
  %4354 = fmul fast float %4351, 2.000000e+00
  %4355 = fadd fast float %4354, -1.000000e+00
  %4356 = fadd fast float %4353, %4355
  %4357 = fmul fast float %4356, 5.000000e-01
  %4358 = fsub fast float %4353, %4355
  %4359 = fmul fast float %4358, 5.000000e-01
  %4360 = call float @dx.op.unary.f32(i32 6, float %4357)  ; FAbs(value)
  %4361 = fsub fast float 1.000000e+00, %4360
  %4362 = call float @dx.op.unary.f32(i32 6, float %4359)  ; FAbs(value)
  %4363 = fsub fast float %4361, %4362
  %4364 = call float @dx.op.dot3.f32(i32 55, float %4357, float %4359, float %4363, float %4357, float %4359, float %4363)  ; Dot3(ax,ay,az,bx,by,bz)
  %4365 = call float @dx.op.unary.f32(i32 25, float %4364)  ; Rsqrt(value)
  %4366 = fmul fast float %4357, %4365
  %4367 = fmul fast float %4359, %4365
  %4368 = select i1 %4195, i32 %4185, i32 %4186
  %4369 = select i1 %4193, i32 %4184, i32 %4368
  %4370 = sitofp i32 %4369 to float
  %4371 = fmul fast float %4363, %4370
  %4372 = fmul fast float %4371, %4365
  %4373 = select i1 %4195, float %4372, float %4367
  %4374 = select i1 %4195, float %4367, float %4372
  %4375 = select i1 %4193, float %4372, float %4366
  %4376 = select i1 %4193, float %4367, float %4373
  %4377 = select i1 %4193, float %4366, float %4374
  %4378 = fsub fast float %4312, %3745
  %4379 = fsub fast float %4313, %3746
  %4380 = fsub fast float %4314, %3747
  %4381 = fmul fast float %4378, %4284
  %4382 = fmul fast float %4379, %4284
  %4383 = fmul fast float %4380, %4284
  %4384 = fadd fast float %4381, %3745
  %4385 = fadd fast float %4382, %3746
  %4386 = fadd fast float %4383, %3747
  %4387 = fsub fast float %4321, %3730
  %4388 = fsub fast float %4322, %3731
  %4389 = fsub fast float %4323, %3732
  %4390 = fmul fast float %4387, %4284
  %4391 = fmul fast float %4388, %4284
  %4392 = fmul fast float %4389, %4284
  %4393 = fadd fast float %4390, %3730
  %4394 = fadd fast float %4391, %3731
  %4395 = fadd fast float %4392, %3732
  %4396 = fadd fast float %4375, %3694
  %4397 = fadd fast float %4376, %3695
  %4398 = fadd fast float %4377, %3696
  %4399 = call float @dx.op.dot3.f32(i32 55, float %4396, float %4397, float %4398, float %4396, float %4397, float %4398)  ; Dot3(ax,ay,az,bx,by,bz)
  %4400 = call float @dx.op.unary.f32(i32 25, float %4399)  ; Rsqrt(value)
  %4401 = fmul fast float %4396, %4400
  %4402 = fmul fast float %4397, %4400
  %4403 = fmul fast float %4398, %4400
  %4404 = fsub fast float %4401, %3694
  %4405 = fsub fast float %4402, %3695
  %4406 = fsub fast float %4403, %3696
  %4407 = fmul fast float %4404, %4284
  %4408 = fmul fast float %4405, %4284
  %4409 = fmul fast float %4406, %4284
  %4410 = fadd fast float %4407, %3694
  %4411 = fadd fast float %4408, %3695
  %4412 = fadd fast float %4409, %3696
  %4413 = call float @dx.op.binary.f32(i32 36, float %3706, float %4332)  ; FMin(a,b)
  %4414 = fsub fast float %4413, %3706
  %4415 = fmul fast float %4414, %4284
  %4416 = fadd fast float %4415, %3706
  %4417 = fsub fast float %4345, %3733
  %4418 = fmul fast float %4417, %4284
  %4419 = fadd fast float %4418, %3733
  br label %4420

; <label>:4420                                    ; preds = %4282, %4244, %4146
  %4421 = phi float [ %4384, %4282 ], [ %3745, %4244 ], [ %3745, %4146 ]
  %4422 = phi float [ %4385, %4282 ], [ %3746, %4244 ], [ %3746, %4146 ]
  %4423 = phi float [ %4386, %4282 ], [ %3747, %4244 ], [ %3747, %4146 ]
  %4424 = phi float [ %4393, %4282 ], [ %3730, %4244 ], [ %3730, %4146 ]
  %4425 = phi float [ %4394, %4282 ], [ %3731, %4244 ], [ %3731, %4146 ]
  %4426 = phi float [ %4395, %4282 ], [ %3732, %4244 ], [ %3732, %4146 ]
  %4427 = phi float [ %4410, %4282 ], [ %3694, %4244 ], [ %3694, %4146 ]
  %4428 = phi float [ %4411, %4282 ], [ %3695, %4244 ], [ %3695, %4146 ]
  %4429 = phi float [ %4412, %4282 ], [ %3696, %4244 ], [ %3696, %4146 ]
  %4430 = phi float [ %4419, %4282 ], [ %3733, %4244 ], [ %3733, %4146 ]
  %4431 = phi float [ %4416, %4282 ], [ %3706, %4244 ], [ %3706, %4146 ]
  br i1 %4144, label %4432, label %4705

; <label>:4432                                    ; preds = %4420
  %4433 = call float @dx.op.unary.f32(i32 23, float %4431)  ; Log(value)
  %4434 = fmul fast float %4433, 4.000000e+00
  %4435 = call float @dx.op.unary.f32(i32 21, float %4434)  ; Exp(value)
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = fmul fast float %4437, %36
  %4439 = fmul fast float %4437, %37
  %4440 = fmul fast float %4437, %38
  %4441 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4442 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4443 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4444 = call float @dx.op.unary.f32(i32 23, float %4441)  ; Log(value)
  %4445 = call float @dx.op.unary.f32(i32 23, float %4442)  ; Log(value)
  %4446 = call float @dx.op.unary.f32(i32 23, float %4443)  ; Log(value)
  %4447 = fmul fast float %4444, 4.000000e+00
  %4448 = fmul fast float %4445, 4.000000e+00
  %4449 = fmul fast float %4446, 4.000000e+00
  %4450 = call float @dx.op.unary.f32(i32 21, float %4447)  ; Exp(value)
  %4451 = call float @dx.op.unary.f32(i32 21, float %4448)  ; Exp(value)
  %4452 = call float @dx.op.unary.f32(i32 21, float %4449)  ; Exp(value)
  %4453 = fadd fast float %4451, %4450
  %4454 = fadd fast float %4453, %4452
  %4455 = fdiv fast float 1.000000e+00, %4454
  %4456 = fmul fast float %4455, %4450
  %4457 = fcmp fast ogt float %45, 0.000000e+00
  %4458 = fcmp fast ogt float %46, 0.000000e+00
  %4459 = fcmp fast ogt float %47, 0.000000e+00
  %4460 = fcmp fast olt float %45, 0.000000e+00
  %4461 = fcmp fast olt float %46, 0.000000e+00
  %4462 = fcmp fast olt float %47, 0.000000e+00
  %4463 = zext i1 %4457 to i32
  %4464 = zext i1 %4458 to i32
  %4465 = zext i1 %4459 to i32
  %4466 = zext i1 %4460 to i32
  %4467 = zext i1 %4461 to i32
  %4468 = zext i1 %4462 to i32
  %4469 = sub nsw i32 %4463, %4466
  %4470 = sub nsw i32 %4464, %4467
  %4471 = sub nsw i32 %4465, %4468
  %4472 = call float @dx.op.unary.f32(i32 83, float %4438)  ; DerivCoarseX(value)
  %4473 = call float @dx.op.unary.f32(i32 83, float %4439)  ; DerivCoarseX(value)
  %4474 = call float @dx.op.unary.f32(i32 83, float %4440)  ; DerivCoarseX(value)
  %4475 = call float @dx.op.unary.f32(i32 84, float %4438)  ; DerivCoarseY(value)
  %4476 = call float @dx.op.unary.f32(i32 84, float %4439)  ; DerivCoarseY(value)
  %4477 = call float @dx.op.unary.f32(i32 84, float %4440)  ; DerivCoarseY(value)
  %4478 = fcmp fast ole float %216, %4456
  %4479 = fmul fast float %4455, %4453
  %4480 = fcmp fast ole float %216, %4479
  %4481 = select i1 %4480, float %4440, float %4438
  %4482 = select i1 %4480, float %4438, float %4439
  %4483 = select i1 %4478, float %4439, float %4481
  %4484 = select i1 %4478, float %4440, float %4482
  %4485 = select i1 %4480, float %4474, float %4472
  %4486 = select i1 %4480, float %4472, float %4473
  %4487 = select i1 %4478, float %4473, float %4485
  %4488 = select i1 %4478, float %4474, float %4486
  %4489 = select i1 %4480, float %4477, float %4475
  %4490 = select i1 %4480, float %4475, float %4476
  %4491 = select i1 %4478, float %4476, float %4489
  %4492 = select i1 %4478, float %4477, float %4490
  %4493 = call float @dx.op.unary.f32(i32 27, float %4483)  ; Round_ni(value)
  %4494 = call float @dx.op.unary.f32(i32 27, float %4484)  ; Round_ni(value)
  %4495 = fptosi float %4493 to i32
  %4496 = fptosi float %4494 to i32
  %4497 = xor i32 %4496, %4495
  %4498 = sitofp i32 %4497 to float
  %4499 = fptosi float %4498 to i32
  %4500 = sitofp i32 %4499 to float
  %4501 = fmul fast float %4500, 0x3FE3C6EF40000000
  %4502 = frem fast float %4493, 2.560000e+02
  %4503 = frem fast float %4494, 2.560000e+02
  %4504 = fptoui float %4502 to i32
  %4505 = fptoui float %4503 to i32
  %4506 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4504, i32 %4505, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.ResRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.ResRet.f32 %4506, 2
  %4510 = fadd fast float %4507, %4501
  %4511 = fadd fast float %4508, %4501
  %4512 = fadd fast float %4509, %4501
  %4513 = call float @dx.op.unary.f32(i32 22, float %4510)  ; Frc(value)
  %4514 = call float @dx.op.unary.f32(i32 22, float %4511)  ; Frc(value)
  %4515 = call float @dx.op.unary.f32(i32 22, float %4512)  ; Frc(value)
  %4516 = fmul fast float %4515, 0x401921FB60000000
  %4517 = call float @dx.op.unary.f32(i32 13, float %4516)  ; Sin(value)
  %4518 = call float @dx.op.unary.f32(i32 12, float %4516)  ; Cos(value)
  %4519 = fsub fast float -0.000000e+00, %4518
  %4520 = fmul fast float %4518, %4483
  %4521 = call float @dx.op.tertiary.f32(i32 46, float %4517, float %4484, float %4520)  ; FMad(a,b,c)
  %4522 = fmul fast float %4517, %4483
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4519, float %4484, float %4522)  ; FMad(a,b,c)
  %4524 = fadd fast float %4521, %4513
  %4525 = fadd fast float %4523, %4514
  %4526 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4527 = bitcast float %4526 to i32
  %4528 = icmp eq i32 %4527, 0
  br i1 %4528, label %4567, label %4529

; <label>:4529                                    ; preds = %4432
  %4530 = add i32 %4527, 0
  %4531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4532 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4531, %dx.types.Handle %80, float %4524, float %4525, float undef, float undef, i32 0, i32 0, i32 undef, float %4487, float %4488, float undef, float %4491, float %4492, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4534, 2
  %4537 = fsub fast float 1.000000e+00, %4142
  %4538 = call float @dx.op.binary.f32(i32 35, float %4537, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4539 = bitcast float %4142 to i32
  %4540 = sitofp i32 %4539 to float
  %4541 = fadd fast float %4540, 0xC1CFBF8940000000
  %4542 = fmul fast float %4536, %4541
  %4543 = fadd fast float %4542, 0x41CFBF8940000000
  %4544 = fptosi float %4543 to i32
  %4545 = bitcast i32 %4544 to float
  %4546 = bitcast float %4538 to i32
  %4547 = sitofp i32 %4546 to float
  %4548 = fadd fast float %4547, 0xC1CFBF8940000000
  %4549 = fmul fast float %4548, %4536
  %4550 = fadd fast float %4549, 0x41CFBF8940000000
  %4551 = fptosi float %4550 to i32
  %4552 = bitcast i32 %4551 to float
  %4553 = fmul fast float %4545, %4535
  %4554 = fmul fast float %4552, %4535
  %4555 = fsub fast float %4538, %4553
  %4556 = fadd fast float %4554, %4538
  %4557 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4558 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4559 = fsub fast float %4533, %4557
  %4560 = fsub fast float %4558, %4557
  %4561 = bitcast float %4560 to i32
  %4562 = sub nsw i32 2129859010, %4561
  %4563 = bitcast i32 %4562 to float
  %4564 = fmul fast float %4563, %4559
  %4565 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4566 = fcmp fast olt float %4565, 0x3F70101020000000
  br i1 %4566, label %4705, label %4567

; <label>:4567                                    ; preds = %4529, %4432
  %4568 = phi float [ %4565, %4529 ], [ %4142, %4432 ]
  %4569 = fmul fast float %4568, %4435
  %4570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.i32 %4570, 1
  %4572 = extractvalue %dx.types.CBufRet.i32 %4570, 0
  %4573 = add i32 %4572, 0
  %4574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4575 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4574, %dx.types.Handle %79, float %4524, float %4525, float undef, float undef, i32 0, i32 0, i32 undef, float %4487, float %4488, float undef, float %4491, float %4492, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4576 = extractvalue %dx.types.ResRet.f32 %4575, 0
  %4577 = extractvalue %dx.types.ResRet.f32 %4575, 1
  %4578 = extractvalue %dx.types.ResRet.f32 %4575, 2
  %4579 = extractvalue %dx.types.ResRet.f32 %4575, 3
  %4580 = and i32 %4571, 255
  %4581 = uitofp i32 %4580 to float
  %4582 = lshr i32 %4571, 8
  %4583 = and i32 %4582, 255
  %4584 = uitofp i32 %4583 to float
  %4585 = fmul fast float %4579, %4581
  %4586 = fadd fast float %4585, %4584
  %4587 = fmul fast float %4586, 0x3F70101000000000
  %4588 = fadd fast float %4587, 0xBFB99999A0000000
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %4589, 0x3FF1C71C80000000
  %4591 = call float @dx.op.binary.f32(i32 36, float %4587, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4592 = fsub fast float 1.000000e+00, %4590
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = fmul fast float %4593, %4576
  %4595 = fmul fast float %4593, %4577
  %4596 = fmul fast float %4593, %4578
  %4597 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4598 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4599 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4600 = fmul fast float %4590, %4576
  %4601 = fmul fast float %4590, %4577
  %4602 = fmul fast float %4590, %4578
  %4603 = fadd fast float %4600, %4591
  %4604 = fadd fast float %4601, %4591
  %4605 = fadd fast float %4602, %4591
  %4606 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4607 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.i32 %4609, 3
  %4611 = extractvalue %dx.types.CBufRet.i32 %4609, 2
  %4612 = add i32 %4611, 0
  %4613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4614 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4613, %dx.types.Handle %79, float %4524, float %4525, float undef, float undef, i32 0, i32 0, i32 undef, float %4487, float %4488, float undef, float %4491, float %4492, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4614, 3
  %4619 = and i32 %4610, 255
  %4620 = uitofp i32 %4619 to float
  %4621 = lshr i32 %4610, 8
  %4622 = and i32 %4621, 255
  %4623 = uitofp i32 %4622 to float
  %4624 = lshr i32 %4610, 16
  %4625 = and i32 %4624, 255
  %4626 = uitofp i32 %4625 to float
  %4627 = fmul fast float %4626, 0x3F70101000000000
  %4628 = fmul fast float %4615, %4620
  %4629 = fadd fast float %4628, %4623
  %4630 = fmul fast float %4629, 0x3F70101000000000
  %4631 = fadd fast float %4616, -5.000000e-01
  %4632 = fadd fast float %4618, -5.000000e-01
  %4633 = fmul fast float %4631, %4627
  %4634 = fmul fast float %4632, %4627
  %4635 = fadd fast float %4633, 5.000000e-01
  %4636 = fadd fast float %4634, 5.000000e-01
  %4637 = fmul fast float %4635, 2.000000e+00
  %4638 = fadd fast float %4637, -1.000000e+00
  %4639 = fmul fast float %4636, 2.000000e+00
  %4640 = fadd fast float %4639, -1.000000e+00
  %4641 = fadd fast float %4638, %4640
  %4642 = fmul fast float %4641, 5.000000e-01
  %4643 = fsub fast float %4638, %4640
  %4644 = fmul fast float %4643, 5.000000e-01
  %4645 = call float @dx.op.unary.f32(i32 6, float %4642)  ; FAbs(value)
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = call float @dx.op.unary.f32(i32 6, float %4644)  ; FAbs(value)
  %4648 = fsub fast float %4646, %4647
  %4649 = call float @dx.op.dot3.f32(i32 55, float %4642, float %4644, float %4648, float %4642, float %4644, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4650 = call float @dx.op.unary.f32(i32 25, float %4649)  ; Rsqrt(value)
  %4651 = fmul fast float %4642, %4650
  %4652 = fmul fast float %4644, %4650
  %4653 = select i1 %4480, i32 %4470, i32 %4471
  %4654 = select i1 %4478, i32 %4469, i32 %4653
  %4655 = sitofp i32 %4654 to float
  %4656 = fmul fast float %4648, %4655
  %4657 = fmul fast float %4656, %4650
  %4658 = select i1 %4480, float %4657, float %4652
  %4659 = select i1 %4480, float %4652, float %4657
  %4660 = select i1 %4478, float %4657, float %4651
  %4661 = select i1 %4478, float %4652, float %4658
  %4662 = select i1 %4478, float %4651, float %4659
  %4663 = fsub fast float %4597, %4421
  %4664 = fsub fast float %4598, %4422
  %4665 = fsub fast float %4599, %4423
  %4666 = fmul fast float %4663, %4569
  %4667 = fmul fast float %4664, %4569
  %4668 = fmul fast float %4665, %4569
  %4669 = fadd fast float %4666, %4421
  %4670 = fadd fast float %4667, %4422
  %4671 = fadd fast float %4668, %4423
  %4672 = fsub fast float %4606, %4424
  %4673 = fsub fast float %4607, %4425
  %4674 = fsub fast float %4608, %4426
  %4675 = fmul fast float %4672, %4569
  %4676 = fmul fast float %4673, %4569
  %4677 = fmul fast float %4674, %4569
  %4678 = fadd fast float %4675, %4424
  %4679 = fadd fast float %4676, %4425
  %4680 = fadd fast float %4677, %4426
  %4681 = fadd fast float %4660, %4427
  %4682 = fadd fast float %4661, %4428
  %4683 = fadd fast float %4662, %4429
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4681, float %4682, float %4683, float %4681, float %4682, float %4683)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call float @dx.op.unary.f32(i32 25, float %4684)  ; Rsqrt(value)
  %4686 = fmul fast float %4681, %4685
  %4687 = fmul fast float %4682, %4685
  %4688 = fmul fast float %4683, %4685
  %4689 = fsub fast float %4686, %4427
  %4690 = fsub fast float %4687, %4428
  %4691 = fsub fast float %4688, %4429
  %4692 = fmul fast float %4689, %4569
  %4693 = fmul fast float %4690, %4569
  %4694 = fmul fast float %4691, %4569
  %4695 = fadd fast float %4692, %4427
  %4696 = fadd fast float %4693, %4428
  %4697 = fadd fast float %4694, %4429
  %4698 = call float @dx.op.binary.f32(i32 36, float %4431, float %4617)  ; FMin(a,b)
  %4699 = fsub fast float %4698, %4431
  %4700 = fmul fast float %4699, %4569
  %4701 = fadd fast float %4700, %4431
  %4702 = fsub fast float %4630, %4430
  %4703 = fmul fast float %4702, %4569
  %4704 = fadd fast float %4703, %4430
  br label %4705

; <label>:4705                                    ; preds = %4567, %4529, %4420, %4136
  %4706 = phi float [ %4669, %4567 ], [ %4421, %4529 ], [ %4421, %4420 ], [ %3745, %4136 ]
  %4707 = phi float [ %4670, %4567 ], [ %4422, %4529 ], [ %4422, %4420 ], [ %3746, %4136 ]
  %4708 = phi float [ %4671, %4567 ], [ %4423, %4529 ], [ %4423, %4420 ], [ %3747, %4136 ]
  %4709 = phi float [ %4678, %4567 ], [ %4424, %4529 ], [ %4424, %4420 ], [ %3730, %4136 ]
  %4710 = phi float [ %4679, %4567 ], [ %4425, %4529 ], [ %4425, %4420 ], [ %3731, %4136 ]
  %4711 = phi float [ %4680, %4567 ], [ %4426, %4529 ], [ %4426, %4420 ], [ %3732, %4136 ]
  %4712 = phi float [ %4695, %4567 ], [ %4427, %4529 ], [ %4427, %4420 ], [ %3694, %4136 ]
  %4713 = phi float [ %4696, %4567 ], [ %4428, %4529 ], [ %4428, %4420 ], [ %3695, %4136 ]
  %4714 = phi float [ %4697, %4567 ], [ %4429, %4529 ], [ %4429, %4420 ], [ %3696, %4136 ]
  %4715 = phi float [ %4704, %4567 ], [ %4430, %4529 ], [ %4430, %4420 ], [ %3733, %4136 ]
  %4716 = phi float [ %4701, %4567 ], [ %4431, %4529 ], [ %4431, %4420 ], [ %3706, %4136 ]
  %4717 = fcmp fast une float %4140, 0.000000e+00
  %4718 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call float @dx.op.unary.f32(i32 25, float %4718)  ; Rsqrt(value)
  br i1 %4717, label %4727, label %4720

; <label>:4720                                    ; preds = %4705
  %4721 = fmul fast float %4719, %166
  %4722 = fmul fast float %4719, %167
  %4723 = fmul fast float %4719, %168
  %4724 = fsub fast float -0.000000e+00, %4721
  %4725 = fsub fast float -0.000000e+00, %4722
  %4726 = fsub fast float -0.000000e+00, %4723
  br label %4894

; <label>:4727                                    ; preds = %4705
  %4728 = fmul fast float %166, %4719
  %4729 = fsub fast float -0.000000e+00, %4728
  %4730 = fmul fast float %167, %4719
  %4731 = fsub fast float -0.000000e+00, %4730
  %4732 = fmul fast float %168, %4719
  %4733 = fsub fast float -0.000000e+00, %4732
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4731, float %4733, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = fmul fast float %4140, 2.500000e+00
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = fmul fast float %4140, 0x4013FFFFE0000000
  %4738 = fadd fast float %4737, 0xBFFFFFFFE0000000
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fmul fast float %4140, 0x4004000020000000
  %4741 = fadd fast float %4740, 0xBFF8000040000000
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fmul fast float %3712, 1.000000e+01
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fmul fast float %4744, 2.000000e+00
  %4746 = fsub fast float 3.000000e+00, %4745
  %4747 = fmul fast float %4744, %4744
  %4748 = fmul fast float %4747, %4746
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = fsub fast float 0x3FE3333340000000, %4715
  %4751 = fmul fast float %4750, 0x400AAAAAA0000000
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4749, %4752
  %4754 = fmul fast float %4706, 0x3FEA2B8620000000
  %4755 = fmul fast float %4707, 0x3FEA2B8620000000
  %4756 = fmul fast float %4708, 0x3FEA2B8620000000
  %4757 = fadd fast float %4754, 0x3FC81DFBA0000000
  %4758 = fmul fast float %4757, %4706
  %4759 = fadd fast float %4758, 0x3F910E6020000000
  %4760 = fadd fast float %4755, 0x3FC81DFBA0000000
  %4761 = fmul fast float %4760, %4707
  %4762 = fadd fast float %4761, 0x3F910E6020000000
  %4763 = fadd fast float %4756, 0x3FC81DFBA0000000
  %4764 = fmul fast float %4763, %4708
  %4765 = fadd fast float %4764, 0x3F910E6020000000
  %4766 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4767 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4768 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4769 = fsub fast float %4766, %4706
  %4770 = fsub fast float %4767, %4707
  %4771 = fsub fast float %4768, %4708
  %4772 = fmul fast float %4769, %4736
  %4773 = fmul fast float %4772, %4753
  %4774 = fmul fast float %4770, %4736
  %4775 = fmul fast float %4774, %4753
  %4776 = fmul fast float %4771, %4736
  %4777 = fmul fast float %4776, %4753
  %4778 = fadd fast float %4773, %4706
  %4779 = fadd fast float %4775, %4707
  %4780 = fadd fast float %4777, %4708
  %4781 = fmul fast float %4716, %4716
  %4782 = fmul fast float %4781, %4781
  %4783 = fadd fast float %4739, 1.000000e+00
  %4784 = fsub fast float %4783, %4753
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = call float @dx.op.dot3.f32(i32 55, float %92, float %94, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = fsub fast float 1.000000e+00, %4782
  %4789 = call float @dx.op.binary.f32(i32 36, float %4785, float %4788)  ; FMin(a,b)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4791 = call float @dx.op.binary.f32(i32 35, float %4789, float %4790)  ; FMax(a,b)
  %4792 = fadd fast float %4787, 0xBFE4CCCCC0000000
  %4793 = fmul fast float %4792, 0x4006DB6DA0000000
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = fmul fast float %4794, 2.000000e+00
  %4796 = fsub fast float 3.000000e+00, %4795
  %4797 = bitcast float %4709 to i32
  %4798 = ashr i32 %4797, 1
  %4799 = add nsw i32 %4798, 532487669
  %4800 = bitcast i32 %4799 to float
  %4801 = fsub fast float 1.000000e+00, %4800
  %4802 = bitcast float %4801 to i32
  %4803 = sub nsw i32 2129859010, %4802
  %4804 = bitcast i32 %4803 to float
  %4805 = fmul fast float %4804, 2.000000e+00
  %4806 = bitcast float %4710 to i32
  %4807 = ashr i32 %4806, 1
  %4808 = add nsw i32 %4807, 532487669
  %4809 = bitcast i32 %4808 to float
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = bitcast float %4810 to i32
  %4812 = sub nsw i32 2129859010, %4811
  %4813 = bitcast i32 %4812 to float
  %4814 = fmul fast float %4813, 2.000000e+00
  %4815 = bitcast float %4711 to i32
  %4816 = ashr i32 %4815, 1
  %4817 = add nsw i32 %4816, 532487669
  %4818 = bitcast i32 %4817 to float
  %4819 = fsub fast float 1.000000e+00, %4818
  %4820 = bitcast float %4819 to i32
  %4821 = sub nsw i32 2129859010, %4820
  %4822 = bitcast i32 %4821 to float
  %4823 = fmul fast float %4822, 2.000000e+00
  %4824 = fsub fast float 0x4002A9FBE0000000, %4805
  %4825 = fadd fast float %4805, 0x3FD54FDF00000000
  %4826 = bitcast float %4825 to i32
  %4827 = sub nsw i32 2129859010, %4826
  %4828 = bitcast i32 %4827 to float
  %4829 = fmul fast float %4828, %4824
  %4830 = fmul fast float %4829, %4829
  %4831 = fsub fast float 0x4002A9FBE0000000, %4814
  %4832 = fadd fast float %4814, 0x3FD54FDF00000000
  %4833 = bitcast float %4832 to i32
  %4834 = sub nsw i32 2129859010, %4833
  %4835 = bitcast i32 %4834 to float
  %4836 = fmul fast float %4835, %4831
  %4837 = fmul fast float %4836, %4836
  %4838 = fsub fast float 0x4002A9FBE0000000, %4823
  %4839 = fadd fast float %4823, 0x3FD54FDF00000000
  %4840 = bitcast float %4839 to i32
  %4841 = sub nsw i32 2129859010, %4840
  %4842 = bitcast i32 %4841 to float
  %4843 = fmul fast float %4842, %4838
  %4844 = fmul fast float %4843, %4843
  %4845 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4830)  ; FMax(a,b)
  %4846 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4837)  ; FMax(a,b)
  %4847 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4844)  ; FMax(a,b)
  %4848 = fsub fast float 1.000000e+00, %4734
  %4849 = fadd fast float %4848, %4749
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = fsub fast float 1.000000e+00, %4121
  %4852 = fmul fast float %4791, %4851
  %4853 = fmul fast float %4794, %4794
  %4854 = fmul fast float %4853, %4852
  %4855 = fmul fast float %4854, %4796
  %4856 = fmul fast float %4851, 0xBFE99999A0000000
  %4857 = fmul fast float %4856, %4736
  %4858 = fmul fast float %4857, %4753
  %4859 = fadd fast float %4858, 1.000000e+00
  %4860 = fadd fast float %4715, -1.000000e+00
  %4861 = fmul fast float %4859, %4860
  %4862 = fadd fast float %4861, 1.000000e+00
  %4863 = fsub fast float %4845, %4709
  %4864 = fsub fast float %4846, %4710
  %4865 = fsub fast float %4847, %4711
  %4866 = fmul fast float %4855, %4863
  %4867 = fmul fast float %4855, %4864
  %4868 = fmul fast float %4855, %4865
  %4869 = fadd fast float %4866, %4709
  %4870 = fadd fast float %4867, %4710
  %4871 = fadd fast float %4868, %4711
  %4872 = fsub fast float %92, %4712
  %4873 = fsub fast float %94, %4713
  %4874 = fsub fast float %96, %4714
  %4875 = fmul fast float %4855, %4872
  %4876 = fmul fast float %4855, %4873
  %4877 = fmul fast float %4855, %4874
  %4878 = fadd fast float %4875, %4712
  %4879 = fadd fast float %4876, %4713
  %4880 = fadd fast float %4877, %4714
  %4881 = fmul fast float %4855, %4850
  %4882 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4883 = fsub fast float 1.000000e+00, %4882
  %4884 = fmul fast float %4881, %4883
  %4885 = fadd fast float %4884, %4882
  %4886 = fsub fast float 1.000000e+00, %4716
  %4887 = fmul fast float %4855, %4886
  %4888 = fadd fast float %4887, %4716
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %4878, float %4879, float %4880)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = call float @dx.op.unary.f32(i32 25, float %4889)  ; Rsqrt(value)
  %4891 = fmul fast float %4878, %4890
  %4892 = fmul fast float %4879, %4890
  %4893 = fmul fast float %4880, %4890
  br label %4894

; <label>:4894                                    ; preds = %4727, %4720
  %4895 = phi float [ %4726, %4720 ], [ %4733, %4727 ]
  %4896 = phi float [ %4725, %4720 ], [ %4731, %4727 ]
  %4897 = phi float [ %4724, %4720 ], [ %4729, %4727 ]
  %4898 = phi float [ %4723, %4720 ], [ %4732, %4727 ]
  %4899 = phi float [ %4722, %4720 ], [ %4730, %4727 ]
  %4900 = phi float [ %4721, %4720 ], [ %4728, %4727 ]
  %4901 = phi float [ %4706, %4720 ], [ %4778, %4727 ]
  %4902 = phi float [ %4707, %4720 ], [ %4779, %4727 ]
  %4903 = phi float [ %4708, %4720 ], [ %4780, %4727 ]
  %4904 = phi float [ %4709, %4720 ], [ %4869, %4727 ]
  %4905 = phi float [ %4710, %4720 ], [ %4870, %4727 ]
  %4906 = phi float [ %4711, %4720 ], [ %4871, %4727 ]
  %4907 = phi float [ %4712, %4720 ], [ %4891, %4727 ]
  %4908 = phi float [ %4713, %4720 ], [ %4892, %4727 ]
  %4909 = phi float [ %4714, %4720 ], [ %4893, %4727 ]
  %4910 = phi float [ %4715, %4720 ], [ %4885, %4727 ]
  %4911 = phi float [ %4716, %4720 ], [ %4888, %4727 ]
  %4912 = select i1 %205, float 0.000000e+00, float %4906
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4908, float %4909, float %4897, float %4896, float %4895)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4899, float %4898, float %4907, float %4908, float %4909)  ; Dot3(ax,ay,az,bx,by,bz)
  %4916 = fmul fast float %4915, 2.000000e+00
  %4917 = fmul fast float %4916, %4907
  %4918 = fmul fast float %4916, %4908
  %4919 = fmul fast float %4916, %4909
  %4920 = fsub fast float %4900, %4917
  %4921 = fsub fast float %4899, %4918
  %4922 = fsub fast float %4898, %4919
  %4923 = call float @dx.op.binary.f32(i32 36, float %4911, float 1.000000e+00)  ; FMin(a,b)
  %4924 = fsub fast float 1.000000e+00, %4911
  %4925 = bitcast float %4924 to i32
  %4926 = sub nsw i32 2129859010, %4925
  %4927 = bitcast i32 %4926 to float
  %4928 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %4929 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = fcmp fast oeq float %4929, 0.000000e+00
  %4931 = fcmp fast oeq float %4928, 0.000000e+00
  %4932 = or i1 %4931, %4930
  br i1 %4932, label %4962, label %4933

; <label>:4933                                    ; preds = %4894
  %4934 = fsub fast float -0.000000e+00, %63
  %4935 = fsub fast float -0.000000e+00, %61
  %4936 = call float @dx.op.unary.f32(i32 24, float %4929)  ; Sqrt(value)
  %4937 = fdiv fast float %4936, %4928
  %4938 = fcmp fast ogt float %4937, 0x3FFB6F8900000000
  %4939 = select i1 %4938, float 0x3FFB6F8900000000, float %4937
  %4940 = fmul fast float %4939, 0x3FE8A23460000000
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = call float @dx.op.binary.f32(i32 35, float %4939, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4943 = fmul fast float %4941, %4928
  %4944 = fmul fast float %4942, 0x3FF279A740000000
  %4945 = fadd fast float %4944, -1.000000e+00
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %62, float %4934, float %4935, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = call float @dx.op.unary.f32(i32 25, float %4946)  ; Rsqrt(value)
  %4948 = fmul fast float %4947, %4934
  %4949 = fmul fast float %4947, %4935
  %4950 = fmul fast float %4947, %62
  %4951 = fmul fast float %4945, %4945
  %4952 = fsub fast float 1.000000e+00, %4951
  %4953 = fmul fast float %4942, 0x40005F8BE0000000
  %4954 = fsub fast float 0x400C5BF8A0000000, %4953
  %4955 = fdiv fast float %4943, %4954
  %4956 = fmul fast float %4955, 0x3FEE31C3C0000000
  %4957 = fmul fast float %4956, %4952
  %4958 = fmul fast float %4942, 0x3FDACB7480000000
  %4959 = fadd fast float %4958, 0xBFD7347680000000
  %4960 = fmul fast float %4959, %4955
  %4961 = fmul fast float %4960, %4952
  br label %4962

; <label>:4962                                    ; preds = %4933, %4894
  %4963 = phi float [ %4948, %4933 ], [ 0.000000e+00, %4894 ]
  %4964 = phi float [ %4949, %4933 ], [ 0.000000e+00, %4894 ]
  %4965 = phi float [ %4950, %4933 ], [ 0.000000e+00, %4894 ]
  %4966 = phi float [ %4957, %4933 ], [ 0.000000e+00, %4894 ]
  %4967 = phi float [ %4961, %4933 ], [ 0.000000e+00, %4894 ]
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4907, float %4908, float %4909)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = fmul fast float %4968, %4968
  %4970 = fmul fast float %4969, 0x3FEE471020000000
  %4971 = fadd fast float %4970, 0xBFD42F6020000000
  %4972 = fmul fast float %4928, 0x3FD20DD760000000
  %4973 = fmul fast float %4971, %4967
  %4974 = fmul fast float %4966, 0x3FDF454380000000
  %4975 = fmul fast float %4974, %4968
  %4976 = fadd fast float %4975, %4972
  %4977 = fadd fast float %4976, %4973
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = fmul fast float %4978, 0x3FDF454380000000
  %4980 = fmul fast float %4978, %4978
  %4981 = fmul fast float %4980, 0x3FEE471020000000
  %4982 = fadd fast float %4981, 0xBFD42F6020000000
  %4983 = call float @dx.op.dot3.f32(i32 55, float %4928, float %4966, float %4967, float 0x3FD20DD760000000, float %4979, float %4982)  ; Dot3(ax,ay,az,bx,by,bz)
  %4984 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %4985 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %4986 = fcmp fast oeq float %4985, 0.000000e+00
  %4987 = fcmp fast oeq float %4984, 0.000000e+00
  %4988 = or i1 %4987, %4986
  br i1 %4988, label %5018, label %4989

; <label>:4989                                    ; preds = %4962
  %4990 = fsub fast float -0.000000e+00, %59
  %4991 = fsub fast float -0.000000e+00, %57
  %4992 = call float @dx.op.unary.f32(i32 24, float %4985)  ; Sqrt(value)
  %4993 = fdiv fast float %4992, %4984
  %4994 = fcmp fast ogt float %4993, 0x3FFB6F8900000000
  %4995 = select i1 %4994, float 0x3FFB6F8900000000, float %4993
  %4996 = fmul fast float %4995, 0x3FE8A23460000000
  %4997 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %4998 = call float @dx.op.binary.f32(i32 35, float %4995, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4999 = fmul fast float %4997, %4984
  %5000 = fmul fast float %4998, 0x3FF279A740000000
  %5001 = fadd fast float %5000, -1.000000e+00
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4990, float %4991, float %58, float %4990, float %4991, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = call float @dx.op.unary.f32(i32 25, float %5002)  ; Rsqrt(value)
  %5004 = fmul fast float %5003, %4990
  %5005 = fmul fast float %5003, %4991
  %5006 = fmul fast float %5003, %58
  %5007 = fmul fast float %5001, %5001
  %5008 = fsub fast float 1.000000e+00, %5007
  %5009 = fmul fast float %4998, 0x40005F8BE0000000
  %5010 = fsub fast float 0x400C5BF8A0000000, %5009
  %5011 = fdiv fast float %4999, %5010
  %5012 = fmul fast float %5011, 0x3FEE31C3C0000000
  %5013 = fmul fast float %5012, %5008
  %5014 = fmul fast float %4998, 0x3FDACB7480000000
  %5015 = fadd fast float %5014, 0xBFD7347680000000
  %5016 = fmul fast float %5015, %5011
  %5017 = fmul fast float %5016, %5008
  br label %5018

; <label>:5018                                    ; preds = %4989, %4962
  %5019 = phi float [ %5004, %4989 ], [ 0.000000e+00, %4962 ]
  %5020 = phi float [ %5005, %4989 ], [ 0.000000e+00, %4962 ]
  %5021 = phi float [ %5006, %4989 ], [ 0.000000e+00, %4962 ]
  %5022 = phi float [ %5013, %4989 ], [ 0.000000e+00, %4962 ]
  %5023 = phi float [ %5017, %4989 ], [ 0.000000e+00, %4962 ]
  %5024 = call float @dx.op.dot3.f32(i32 55, float %5019, float %5020, float %5021, float %4907, float %4908, float %4909)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = fmul fast float %5024, %5024
  %5026 = fmul fast float %5025, 0x3FEE471020000000
  %5027 = fadd fast float %5026, 0xBFD42F6020000000
  %5028 = fmul fast float %4984, 0x3FD20DD760000000
  %5029 = fmul fast float %5027, %5023
  %5030 = fmul fast float %5022, 0x3FDF454380000000
  %5031 = fmul fast float %5030, %5024
  %5032 = fadd fast float %5031, %5028
  %5033 = fadd fast float %5032, %5029
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5019, float %5020, float %5021, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = fmul fast float %5034, 0x3FDF454380000000
  %5036 = fmul fast float %5034, %5034
  %5037 = fmul fast float %5036, 0x3FEE471020000000
  %5038 = fadd fast float %5037, 0xBFD42F6020000000
  %5039 = call float @dx.op.dot3.f32(i32 55, float %4984, float %5022, float %5023, float 0x3FD20DD760000000, float %5035, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5041 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = fcmp fast oeq float %5041, 0.000000e+00
  %5043 = fcmp fast oeq float %5040, 0.000000e+00
  %5044 = or i1 %5043, %5042
  br i1 %5044, label %5074, label %5045

; <label>:5045                                    ; preds = %5018
  %5046 = fsub fast float -0.000000e+00, %55
  %5047 = fsub fast float -0.000000e+00, %53
  %5048 = call float @dx.op.unary.f32(i32 24, float %5041)  ; Sqrt(value)
  %5049 = fdiv fast float %5048, %5040
  %5050 = fcmp fast ogt float %5049, 0x3FFB6F8900000000
  %5051 = select i1 %5050, float 0x3FFB6F8900000000, float %5049
  %5052 = fmul fast float %5051, 0x3FE8A23460000000
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = call float @dx.op.binary.f32(i32 35, float %5051, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5055 = fmul fast float %5053, %5040
  %5056 = fmul fast float %5054, 0x3FF279A740000000
  %5057 = fadd fast float %5056, -1.000000e+00
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5047, float %54, float %5046, float %5047, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = call float @dx.op.unary.f32(i32 25, float %5058)  ; Rsqrt(value)
  %5060 = fmul fast float %5059, %5046
  %5061 = fmul fast float %5059, %5047
  %5062 = fmul fast float %5059, %54
  %5063 = fmul fast float %5057, %5057
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = fmul fast float %5054, 0x40005F8BE0000000
  %5066 = fsub fast float 0x400C5BF8A0000000, %5065
  %5067 = fdiv fast float %5055, %5066
  %5068 = fmul fast float %5067, 0x3FEE31C3C0000000
  %5069 = fmul fast float %5068, %5064
  %5070 = fmul fast float %5054, 0x3FDACB7480000000
  %5071 = fadd fast float %5070, 0xBFD7347680000000
  %5072 = fmul fast float %5071, %5067
  %5073 = fmul fast float %5072, %5064
  br label %5074

; <label>:5074                                    ; preds = %5045, %5018
  %5075 = phi float [ %5060, %5045 ], [ 0.000000e+00, %5018 ]
  %5076 = phi float [ %5061, %5045 ], [ 0.000000e+00, %5018 ]
  %5077 = phi float [ %5062, %5045 ], [ 0.000000e+00, %5018 ]
  %5078 = phi float [ %5069, %5045 ], [ 0.000000e+00, %5018 ]
  %5079 = phi float [ %5073, %5045 ], [ 0.000000e+00, %5018 ]
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %4907, float %4908, float %4909)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = fmul fast float %5080, %5080
  %5082 = fmul fast float %5081, 0x3FEE471020000000
  %5083 = fadd fast float %5082, 0xBFD42F6020000000
  %5084 = fmul fast float %5040, 0x3FD20DD760000000
  %5085 = fmul fast float %5083, %5079
  %5086 = fmul fast float %5078, 0x3FDF454380000000
  %5087 = fmul fast float %5086, %5080
  %5088 = fadd fast float %5087, %5084
  %5089 = fadd fast float %5088, %5085
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = fmul fast float %5090, 0x3FDF454380000000
  %5092 = fmul fast float %5090, %5090
  %5093 = fmul fast float %5092, 0x3FEE471020000000
  %5094 = fadd fast float %5093, 0xBFD42F6020000000
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5078, float %5079, float 0x3FD20DD760000000, float %5091, float %5094)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = call float @dx.op.binary.f32(i32 35, float %4977, float 0.000000e+00)  ; FMax(a,b)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5033, float 0.000000e+00)  ; FMax(a,b)
  %5098 = call float @dx.op.binary.f32(i32 35, float %5089, float 0.000000e+00)  ; FMax(a,b)
  %5099 = call float @dx.op.binary.f32(i32 35, float %4983, float 0.000000e+00)  ; FMax(a,b)
  %5100 = call float @dx.op.binary.f32(i32 35, float %5039, float 0.000000e+00)  ; FMax(a,b)
  %5101 = call float @dx.op.binary.f32(i32 35, float %5095, float 0.000000e+00)  ; FMax(a,b)
  %5102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.f32 %5102, 0
  %5104 = call float @dx.op.binary.f32(i32 36, float %4901, float %5103)  ; FMin(a,b)
  %5105 = fsub fast float 1.000000e+00, %4923
  %5106 = fmul fast float %5104, %5105
  %5107 = fsub fast float 1.000000e+00, %5106
  %5108 = bitcast float %5107 to i32
  %5109 = sub nsw i32 2129859010, %5108
  %5110 = bitcast i32 %5109 to float
  %5111 = call float @dx.op.binary.f32(i32 36, float %4902, float %5103)  ; FMin(a,b)
  %5112 = fmul fast float %5111, %5105
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = bitcast float %5113 to i32
  %5115 = sub nsw i32 2129859010, %5114
  %5116 = bitcast i32 %5115 to float
  %5117 = call float @dx.op.binary.f32(i32 36, float %4903, float %5103)  ; FMin(a,b)
  %5118 = fmul fast float %5117, %5105
  %5119 = fsub fast float 1.000000e+00, %5118
  %5120 = bitcast float %5119 to i32
  %5121 = sub nsw i32 2129859010, %5120
  %5122 = bitcast i32 %5121 to float
  %5123 = fmul fast float %5096, %4923
  %5124 = fmul fast float %5123, %5110
  %5125 = fmul fast float %5097, %4923
  %5126 = fmul fast float %5125, %5116
  %5127 = fmul fast float %5098, %4923
  %5128 = fmul fast float %5127, %5122
  %5129 = call float @dx.op.binary.f32(i32 36, float %4904, float %5103)  ; FMin(a,b)
  %5130 = fmul fast float %5129, %5105
  %5131 = fsub fast float 1.000000e+00, %5130
  %5132 = bitcast float %5131 to i32
  %5133 = sub nsw i32 2129859010, %5132
  %5134 = bitcast i32 %5133 to float
  %5135 = call float @dx.op.binary.f32(i32 36, float %4905, float %5103)  ; FMin(a,b)
  %5136 = fmul fast float %5135, %5105
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = bitcast float %5137 to i32
  %5139 = sub nsw i32 2129859010, %5138
  %5140 = bitcast i32 %5139 to float
  %5141 = call float @dx.op.binary.f32(i32 36, float %4912, float %5103)  ; FMin(a,b)
  %5142 = fmul fast float %5141, %5105
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = bitcast float %5143 to i32
  %5145 = sub nsw i32 2129859010, %5144
  %5146 = bitcast i32 %5145 to float
  %5147 = fmul fast float %5099, %4923
  %5148 = fmul fast float %5147, %5134
  %5149 = fmul fast float %5100, %4923
  %5150 = fmul fast float %5149, %5140
  %5151 = fmul fast float %5101, %4923
  %5152 = fmul fast float %5151, %5146
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5124, float %5126, float %5128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = select i1 %205, float 0.000000e+00, float %5124
  %5155 = select i1 %205, float %5153, float %5126
  %5156 = select i1 %205, float 0.000000e+00, float %5128
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5150, float %5152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = select i1 %205, float 0.000000e+00, float %5148
  %5159 = select i1 %205, float %5157, float %5150
  %5160 = select i1 %205, float 0.000000e+00, float %5152
  %5161 = fmul fast float %4914, 9.843750e-01
  %5162 = fmul fast float %4910, 9.843750e-01
  %5163 = fadd fast float %5161, 7.812500e-03
  %5164 = fadd fast float %5162, 7.812500e-03
  %5165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5163, float %5164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5166 = extractvalue %dx.types.ResRet.f32 %5165, 2
  %5167 = extractvalue %dx.types.ResRet.f32 %5165, 3
  %5168 = fmul fast float %5166, %4904
  %5169 = fmul fast float %5166, %4905
  %5170 = fmul fast float %5166, %4912
  %5171 = fadd fast float %5168, %5167
  %5172 = fadd fast float %5169, %5167
  %5173 = fadd fast float %5170, %5167
  %5174 = fcmp fast ogt float %3707, 0.000000e+00
  br i1 %5174, label %5175, label %5201

; <label>:5175                                    ; preds = %5074
  %5176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3707, float %4914, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5177 = extractvalue %dx.types.ResRet.f32 %5176, 0
  %5178 = extractvalue %dx.types.ResRet.f32 %5176, 1
  %5179 = extractvalue %dx.types.ResRet.f32 %5176, 2
  %5180 = fadd fast float %5177, -5.000000e-01
  %5181 = fadd fast float %5178, -5.000000e-01
  %5182 = fadd fast float %5179, -5.000000e-01
  %5183 = fsub fast float 1.000000e+00, %4904
  %5184 = fsub fast float 1.000000e+00, %4905
  %5185 = fsub fast float 1.000000e+00, %4912
  %5186 = fmul fast float %4904, 4.000000e+00
  %5187 = fmul fast float %5186, %5183
  %5188 = fmul fast float %5187, %5180
  %5189 = fmul fast float %4905, 4.000000e+00
  %5190 = fmul fast float %5189, %5184
  %5191 = fmul fast float %5190, %5181
  %5192 = fmul fast float %4912, 4.000000e+00
  %5193 = fmul fast float %5192, %5185
  %5194 = fmul fast float %5193, %5182
  %5195 = fadd fast float %5188, %5171
  %5196 = fadd fast float %5191, %5172
  %5197 = fadd fast float %5194, %5173
  %5198 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5200 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  br label %5201

; <label>:5201                                    ; preds = %5175, %5074
  %5202 = phi float [ %5198, %5175 ], [ %5171, %5074 ]
  %5203 = phi float [ %5199, %5175 ], [ %5172, %5074 ]
  %5204 = phi float [ %5200, %5175 ], [ %5173, %5074 ]
  %5205 = call float @dx.op.binary.f32(i32 35, float %5203, float %5204)  ; FMax(a,b)
  %5206 = call float @dx.op.binary.f32(i32 35, float %5202, float %5205)  ; FMax(a,b)
  %5207 = fsub fast float 1.000000e+00, %5206
  %5208 = fmul fast float %5207, %5154
  %5209 = fmul fast float %5207, %5155
  %5210 = fmul fast float %5207, %5156
  %5211 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %4903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = fcmp fast ogt float %5211, 0x3E7FF19E20000000
  %5213 = fdiv fast float 1.000000e+00, %5211
  %5214 = select i1 %5212, float %5213, float 0.000000e+00
  %5215 = fmul fast float %5214, %4901
  %5216 = fmul fast float %5214, %4902
  %5217 = fmul fast float %5214, %4903
  %5218 = fadd fast float %5215, -1.000000e+00
  %5219 = fadd fast float %5216, -1.000000e+00
  %5220 = fadd fast float %5217, -1.000000e+00
  %5221 = fmul fast float %5218, 5.000000e-01
  %5222 = fmul fast float %5219, 5.000000e-01
  %5223 = fmul fast float %5220, 5.000000e-01
  %5224 = fadd fast float %5221, 1.000000e+00
  %5225 = fadd fast float %5222, 1.000000e+00
  %5226 = fadd fast float %5223, 1.000000e+00
  %5227 = fmul fast float %5202, %5158
  %5228 = fmul fast float %5203, %5159
  %5229 = fmul fast float %5204, %5160
  %5230 = fsub fast float 1.000000e+00, %4914
  %5231 = bitcast float %5230 to i32
  %5232 = sitofp i32 %5231 to float
  %5233 = fmul fast float %5232, 5.000000e+00
  %5234 = fadd fast float %5233, 0xC1EFBF8940000000
  %5235 = fptosi float %5234 to i32
  %5236 = bitcast i32 %5235 to float
  %5237 = fmul fast float %5236, %3708
  %5238 = fmul fast float %5154, %5237
  %5239 = fmul fast float %5238, %5207
  %5240 = fmul fast float %5239, %5224
  %5241 = fmul fast float %5155, %5237
  %5242 = fmul fast float %5241, %5207
  %5243 = fmul fast float %5242, %5225
  %5244 = fmul fast float %5156, %5237
  %5245 = fmul fast float %5244, %5207
  %5246 = fmul fast float %5245, %5226
  %5247 = fmul fast float %5208, %3704
  %5248 = fmul fast float %5209, %3704
  %5249 = fmul fast float %5210, %3704
  %5250 = fadd fast float %5227, %3700
  %5251 = fadd fast float %5250, %5240
  %5252 = fmul fast float %5251, %3704
  %5253 = fadd fast float %5228, %3701
  %5254 = fadd fast float %5253, %5243
  %5255 = fmul fast float %5254, %3704
  %5256 = fadd fast float %5229, %3702
  %5257 = fadd fast float %5256, %5246
  %5258 = fmul fast float %5257, %3704
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 3
  %5261 = fcmp fast oeq float %5260, 0.000000e+00
  br i1 %5261, label %5489, label %5262

; <label>:5262                                    ; preds = %5201
  %5263 = extractvalue %dx.types.CBufRet.f32 %5259, 0
  %5264 = extractvalue %dx.types.CBufRet.f32 %5259, 1
  %5265 = extractvalue %dx.types.CBufRet.f32 %5259, 2
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.f32 %5270, 0
  %5272 = extractvalue %dx.types.CBufRet.f32 %5270, 1
  %5273 = call float @dx.op.dot3.f32(i32 55, float %5267, float %5268, float %5269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5274 = select i1 %205, float %5271, float %5267
  %5275 = select i1 %205, float %5273, float %5268
  %5276 = select i1 %205, float %5272, float %5269
  %5277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.f32 %5277, 1
  %5279 = fcmp fast une float %5278, 0.000000e+00
  br i1 %5279, label %5280, label %5297

; <label>:5280                                    ; preds = %5262
  %5281 = fptoui float %83 to i32
  %5282 = fptoui float %84 to i32
  %5283 = lshr i32 %5281, 4
  %5284 = lshr i32 %5282, 4
  %5285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.f32 %5285, 0
  %5287 = fptoui float %5286 to i32
  %5288 = add i32 %5287, 15
  %5289 = lshr i32 %5288, 4
  %5290 = mul i32 %5289, %5284
  %5291 = add i32 %5290, %5283
  %5292 = shl i32 %5291, 3
  %5293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5294 = extractvalue %dx.types.ResRet.i32 %5293, 0
  %5295 = and i32 %5294, -268435456
  %5296 = icmp eq i32 %5295, -1342177280
  br i1 %5296, label %5307, label %5297

; <label>:5297                                    ; preds = %5280, %5262
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 2
  %5300 = extractvalue %dx.types.CBufRet.f32 %5298, 3
  %5301 = fmul fast float %5299, %83
  %5302 = fmul fast float %5300, %84
  %5303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5301, float %5302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5303, 2
  br label %5307

; <label>:5307                                    ; preds = %5297, %5280
  %5308 = phi float [ %5304, %5297 ], [ 0.000000e+00, %5280 ]
  %5309 = phi float [ %5305, %5297 ], [ 0.000000e+00, %5280 ]
  %5310 = phi float [ %5306, %5297 ], [ 0.000000e+00, %5280 ]
  %5311 = call float @dx.op.binary.f32(i32 36, float %5309, float %5310)  ; FMin(a,b)
  %5312 = call float @dx.op.binary.f32(i32 36, float %5308, float %5311)  ; FMin(a,b)
  %5313 = fcmp fast ogt float %5312, 0.000000e+00
  br i1 %5313, label %5314, label %5489, !dx.controlflow.hints !76

; <label>:5314                                    ; preds = %5307
  %5315 = fmul fast float %5308, %5274
  %5316 = fmul fast float %5309, %5275
  %5317 = fmul fast float %5310, %5276
  %5318 = fsub fast float %5263, %4900
  %5319 = fsub fast float %5264, %4899
  %5320 = fsub fast float %5265, %4898
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5318, float %5319, float %5320, float %5318, float %5319, float %5320)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.unary.f32(i32 25, float %5321)  ; Rsqrt(value)
  %5323 = fmul fast float %5322, %5318
  %5324 = fmul fast float %5322, %5319
  %5325 = fmul fast float %5322, %5320
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5263, float %5264, float %5265, float %4907, float %4908, float %4909)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4896, float %4895, float %5323, float %5324, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5329 = fmul fast float %5328, %5328
  %5330 = fmul fast float %5329, %4927
  %5331 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5332 = fmul fast float %5331, %5328
  %5333 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4908, float %4909, float %5323, float %5324, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = fmul fast float %5333, %5333
  %5335 = call float @dx.op.unary.f32(i32 6, float %5326)  ; FAbs(value)
  %5336 = fsub fast float 1.000000e+00, %4910
  %5337 = call float @dx.op.binary.f32(i32 35, float %5336, float 0x3F847AE140000000)  ; FMax(a,b)
  %5338 = fmul fast float %5337, %5337
  %5339 = fmul fast float %5338, %5338
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = fmul fast float %4914, %4914
  %5342 = fmul fast float %5341, %5340
  %5343 = fadd fast float %5342, %5339
  %5344 = bitcast float %5343 to i32
  %5345 = ashr i32 %5344, 1
  %5346 = add nsw i32 %5345, 532487669
  %5347 = bitcast i32 %5346 to float
  %5348 = fadd fast float %5347, %4914
  %5349 = fmul fast float %5339, %5334
  %5350 = fsub fast float 1.000000e+00, %5334
  %5351 = fadd fast float %5350, %5349
  %5352 = fmul fast float %5335, %5335
  %5353 = fmul fast float %5352, %5340
  %5354 = fadd fast float %5353, %5339
  %5355 = bitcast float %5354 to i32
  %5356 = ashr i32 %5355, 1
  %5357 = add nsw i32 %5356, 532487669
  %5358 = bitcast i32 %5357 to float
  %5359 = fadd fast float %5358, %5335
  %5360 = fmul fast float %5351, %5351
  %5361 = fmul fast float %5360, %5348
  %5362 = fmul fast float %5361, %5359
  %5363 = fdiv fast float 0x3FF0A00000000000, %5362
  %5364 = fmul fast float %5363, %5339
  %5365 = call float @dx.op.unary.f32(i32 6, float %5327)  ; FAbs(value)
  %5366 = fsub fast float 1.000000e+00, %5365
  %5367 = bitcast float %5366 to i32
  %5368 = sitofp i32 %5367 to float
  %5369 = fmul fast float %5368, 5.000000e+00
  %5370 = fadd fast float %5369, 0xC1EFBF8940000000
  %5371 = fptosi float %5370 to i32
  %5372 = bitcast i32 %5371 to float
  %5373 = fsub fast float 1.000000e+00, %4904
  %5374 = fsub fast float 1.000000e+00, %4905
  %5375 = fsub fast float 1.000000e+00, %4912
  %5376 = fmul fast float %5372, %5373
  %5377 = fmul fast float %5372, %5374
  %5378 = fmul fast float %5372, %5375
  %5379 = fadd fast float %5376, %4904
  %5380 = fadd fast float %5377, %4905
  %5381 = fadd fast float %5378, %4912
  br i1 %5174, label %5382, label %5405

; <label>:5382                                    ; preds = %5314
  %5383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3707, float %5365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5384 = extractvalue %dx.types.ResRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.ResRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.ResRet.f32 %5383, 2
  %5387 = fadd fast float %5384, -5.000000e-01
  %5388 = fadd fast float %5385, -5.000000e-01
  %5389 = fadd fast float %5386, -5.000000e-01
  %5390 = fmul fast float %4904, 4.000000e+00
  %5391 = fmul fast float %5390, %5373
  %5392 = fmul fast float %5391, %5387
  %5393 = fmul fast float %4905, 4.000000e+00
  %5394 = fmul fast float %5393, %5374
  %5395 = fmul fast float %5394, %5388
  %5396 = fmul fast float %4912, 4.000000e+00
  %5397 = fmul fast float %5396, %5375
  %5398 = fmul fast float %5397, %5389
  %5399 = fadd fast float %5392, %5379
  %5400 = fadd fast float %5395, %5380
  %5401 = fadd fast float %5398, %5381
  %5402 = call float @dx.op.unary.f32(i32 7, float %5399)  ; Saturate(value)
  %5403 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5404 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  br label %5405

; <label>:5405                                    ; preds = %5382, %5314
  %5406 = phi float [ %5402, %5382 ], [ %5379, %5314 ]
  %5407 = phi float [ %5403, %5382 ], [ %5380, %5314 ]
  %5408 = phi float [ %5404, %5382 ], [ %5381, %5314 ]
  %5409 = fmul fast float %5326, 9.843750e-01
  %5410 = fadd fast float %5409, 7.812500e-03
  %5411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5410, float %5164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 2
  %5413 = extractvalue %dx.types.ResRet.f32 %5411, 3
  %5414 = fmul fast float %5412, %4904
  %5415 = fmul fast float %5412, %4905
  %5416 = fmul fast float %5412, %4912
  %5417 = fadd fast float %5414, %5413
  %5418 = fadd fast float %5415, %5413
  %5419 = fadd fast float %5416, %5413
  br i1 %5174, label %5420, label %5443

; <label>:5420                                    ; preds = %5405
  %5421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3707, float %5326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.ResRet.f32 %5421, 2
  %5425 = fadd fast float %5422, -5.000000e-01
  %5426 = fadd fast float %5423, -5.000000e-01
  %5427 = fadd fast float %5424, -5.000000e-01
  %5428 = fmul fast float %4904, 4.000000e+00
  %5429 = fmul fast float %5428, %5373
  %5430 = fmul fast float %5429, %5425
  %5431 = fmul fast float %4905, 4.000000e+00
  %5432 = fmul fast float %5431, %5374
  %5433 = fmul fast float %5432, %5426
  %5434 = fmul fast float %4912, 4.000000e+00
  %5435 = fmul fast float %5434, %5375
  %5436 = fmul fast float %5435, %5427
  %5437 = fadd fast float %5430, %5417
  %5438 = fadd fast float %5433, %5418
  %5439 = fadd fast float %5436, %5419
  %5440 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5441 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5442 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  br label %5443

; <label>:5443                                    ; preds = %5420, %5405
  %5444 = phi float [ %5440, %5420 ], [ %5417, %5405 ]
  %5445 = phi float [ %5441, %5420 ], [ %5418, %5405 ]
  %5446 = phi float [ %5442, %5420 ], [ %5419, %5405 ]
  %5447 = call float @dx.op.binary.f32(i32 35, float %5445, float %5446)  ; FMax(a,b)
  %5448 = call float @dx.op.binary.f32(i32 35, float %5444, float %5447)  ; FMax(a,b)
  %5449 = fsub fast float 1.000000e+00, %5448
  %5450 = fmul fast float %5406, %5364
  %5451 = fmul fast float %5407, %5364
  %5452 = fmul fast float %5408, %5364
  %5453 = fsub fast float 1.000000e+00, %5327
  %5454 = bitcast float %5453 to i32
  %5455 = sitofp i32 %5454 to float
  %5456 = fmul fast float %5455, 5.000000e+00
  %5457 = fadd fast float %5456, 0xC1EFBF8940000000
  %5458 = fptosi float %5457 to i32
  %5459 = bitcast i32 %5458 to float
  %5460 = fmul fast float %5459, %3708
  %5461 = fmul fast float %5449, %5460
  %5462 = fmul fast float %5461, %5224
  %5463 = fmul fast float %5461, %5225
  %5464 = fmul fast float %5461, %5226
  %5465 = fadd fast float %5462, %5450
  %5466 = fadd fast float %5463, %5451
  %5467 = fadd fast float %5464, %5452
  %5468 = fmul fast float %5332, %5315
  %5469 = fmul fast float %5468, %5449
  %5470 = fmul fast float %5332, %5316
  %5471 = fmul fast float %5470, %5449
  %5472 = fmul fast float %5332, %5317
  %5473 = fmul fast float %5472, %5449
  %5474 = fmul fast float %5468, %5465
  %5475 = fmul fast float %5470, %5466
  %5476 = fmul fast float %5472, %5467
  %5477 = fadd fast float %5469, %5208
  %5478 = fmul fast float %5477, %3704
  %5479 = fadd fast float %5471, %5209
  %5480 = fmul fast float %5479, %3704
  %5481 = fadd fast float %5473, %5210
  %5482 = fmul fast float %5481, %3704
  %5483 = fadd fast float %5474, %5251
  %5484 = fmul fast float %5483, %3704
  %5485 = fadd fast float %5475, %5254
  %5486 = fmul fast float %5485, %3704
  %5487 = fadd fast float %5476, %5257
  %5488 = fmul fast float %5487, %3704
  br label %5489

; <label>:5489                                    ; preds = %5443, %5307, %5201
  %5490 = phi float [ %5252, %5201 ], [ %5252, %5307 ], [ %5484, %5443 ]
  %5491 = phi float [ %5255, %5201 ], [ %5255, %5307 ], [ %5486, %5443 ]
  %5492 = phi float [ %5258, %5201 ], [ %5258, %5307 ], [ %5488, %5443 ]
  %5493 = phi float [ %5247, %5201 ], [ %5247, %5307 ], [ %5478, %5443 ]
  %5494 = phi float [ %5248, %5201 ], [ %5248, %5307 ], [ %5480, %5443 ]
  %5495 = phi float [ %5249, %5201 ], [ %5249, %5307 ], [ %5482, %5443 ]
  %5496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.i32 %5496, 0
  %5498 = icmp eq i32 %5497, 0
  br i1 %5498, label %5933, label %5499

; <label>:5499                                    ; preds = %5489
  %5500 = fptoui float %83 to i32
  %5501 = fptoui float %84 to i32
  %5502 = lshr i32 %5500, 4
  %5503 = lshr i32 %5501, 4
  %5504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.i32 %5504, 0
  %5506 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5503, i32 %5505, i32 %5502)  ; UMad(a,b,c)
  %5507 = add nsw i32 %5497, -1
  %5508 = call i32 @dx.op.binary.i32(i32 37, i32 %5507, i32 0)  ; IMax(a,b)
  %5509 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %5510 = fptoui float %5509 to i32
  %5511 = lshr i32 %5510, 5
  %5512 = call i32 @dx.op.binary.i32(i32 40, i32 %5511, i32 8191)  ; UMin(a,b)
  %5513 = shl i32 %5512, 2
  %5514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5513, i32 undef)  ; BufferLoad(srv,index,wot)
  %5515 = extractvalue %dx.types.ResRet.i32 %5514, 0
  %5516 = lshr i32 %5515, 16
  %5517 = and i32 %5515, 65535
  %5518 = lshr i32 %5515, 21
  %5519 = lshr i32 %5517, 5
  %5520 = call i32 @dx.op.binary.i32(i32 40, i32 %5519, i32 %5508)  ; UMin(a,b)
  %5521 = icmp ugt i32 %5518, %5520
  br i1 %5521, label %5933, label %5522

; <label>:5522                                    ; preds = %5499
  br label %5523

; <label>:5523                                    ; preds = %5923, %5522
  %5524 = phi i32 [ %5930, %5923 ], [ %5518, %5522 ]
  %5525 = phi float [ %5924, %5923 ], [ %5490, %5522 ]
  %5526 = phi float [ %5925, %5923 ], [ %5491, %5522 ]
  %5527 = phi float [ %5926, %5923 ], [ %5492, %5522 ]
  %5528 = phi float [ %5927, %5923 ], [ %5493, %5522 ]
  %5529 = phi float [ %5928, %5923 ], [ %5494, %5522 ]
  %5530 = phi float [ %5929, %5923 ], [ %5495, %5522 ]
  %5531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.i32 %5531, 0
  %5533 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5506, i32 %5532, i32 %5524)  ; UMad(a,b,c)
  %5534 = shl i32 %5533, 2
  %5535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5534, i32 undef)  ; BufferLoad(srv,index,wot)
  %5536 = extractvalue %dx.types.ResRet.i32 %5535, 0
  %5537 = shl i32 %5524, 5
  %5538 = sub nsw i32 %5516, %5537
  %5539 = call i32 @dx.op.binary.i32(i32 37, i32 %5538, i32 0)  ; IMax(a,b)
  %5540 = call i32 @dx.op.binary.i32(i32 38, i32 %5539, i32 31)  ; IMin(a,b)
  %5541 = sub nsw i32 1, %5516
  %5542 = add nsw i32 %5541, %5517
  %5543 = call i32 @dx.op.binary.i32(i32 37, i32 %5542, i32 0)  ; IMax(a,b)
  %5544 = call i32 @dx.op.binary.i32(i32 38, i32 %5543, i32 32)  ; IMin(a,b)
  %5545 = and i32 %5544, 31
  %5546 = shl i32 -1, %5545
  %5547 = xor i32 %5546, -1
  %5548 = and i32 %5540, 31
  %5549 = shl i32 %5547, %5548
  %5550 = icmp eq i32 %5544, 32
  %5551 = select i1 %5550, i32 -1, i32 %5549
  %5552 = and i32 %5551, %5536
  %5553 = icmp eq i32 %5552, 0
  br i1 %5553, label %5923, label %5554

; <label>:5554                                    ; preds = %5523
  br label %5555

; <label>:5555                                    ; preds = %5635, %5554
  %5556 = phi i32 [ %5567, %5635 ], [ %5552, %5554 ]
  %5557 = phi float [ %5636, %5635 ], [ %5525, %5554 ]
  %5558 = phi float [ %5637, %5635 ], [ %5526, %5554 ]
  %5559 = phi float [ %5638, %5635 ], [ %5527, %5554 ]
  %5560 = phi float [ %5639, %5635 ], [ %5528, %5554 ]
  %5561 = phi float [ %5640, %5635 ], [ %5529, %5554 ]
  %5562 = phi float [ %5641, %5635 ], [ %5530, %5554 ]
  %5563 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5556)  ; FirstbitLo(value)
  %5564 = add i32 %5563, %5537
  %5565 = and i32 %5563, 31
  %5566 = shl i32 1, %5565
  %5567 = xor i32 %5566, %5556
  %5568 = mul i32 %5564, 112
  %5569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5568, i32 undef)  ; BufferLoad(srv,index,wot)
  %5570 = extractvalue %dx.types.ResRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.ResRet.f32 %5569, 1
  %5572 = extractvalue %dx.types.ResRet.f32 %5569, 2
  %5573 = or i32 %5568, 12
  %5574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5573, i32 undef)  ; BufferLoad(srv,index,wot)
  %5575 = extractvalue %dx.types.ResRet.f32 %5574, 0
  %5576 = add i32 %5568, 44
  %5577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5576, i32 undef)  ; BufferLoad(srv,index,wot)
  %5578 = extractvalue %dx.types.ResRet.f32 %5577, 0
  %5579 = add i32 %5568, 48
  %5580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5579, i32 undef)  ; BufferLoad(srv,index,wot)
  %5581 = extractvalue %dx.types.ResRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.ResRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.ResRet.f32 %5580, 2
  %5584 = add i32 %5568, 80
  %5585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5584, i32 undef)  ; BufferLoad(srv,index,wot)
  %5586 = extractvalue %dx.types.ResRet.f32 %5585, 1
  %5587 = extractvalue %dx.types.ResRet.f32 %5585, 2
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5570, float %5571, float %5572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = select i1 %205, float %5586, float %5570
  %5590 = select i1 %205, float %5588, float %5571
  %5591 = select i1 %205, float %5587, float %5572
  %5592 = fsub fast float %5581, %166
  %5593 = fsub fast float %5582, %167
  %5594 = fsub fast float %5583, %168
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 24, float %5595)  ; Sqrt(value)
  %5597 = fdiv fast float 1.000000e+00, %5596
  %5598 = fmul fast float %5597, %5592
  %5599 = fmul fast float %5597, %5593
  %5600 = fmul fast float %5597, %5594
  %5601 = fadd fast float %5596, %5575
  %5602 = fdiv fast float 1.000000e+00, %5601
  %5603 = fmul float %5578, %5602
  %5604 = fmul float %5603, %5603
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = and i32 %5566, %5552
  %5607 = icmp eq i32 %5606, 0
  br i1 %5607, label %5630, label %5608, !dx.controlflow.hints !77

; <label>:5608                                    ; preds = %5555
  %5609 = lshr i32 %5500, 5
  %5610 = lshr i32 %5501, 5
  %5611 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5609, i32 %5610, i32 %5564, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5612 = extractvalue %dx.types.ResRet.i32 %5611, 0
  %5613 = and i32 %5612, 3
  %5614 = icmp eq i32 %5613, 0
  %5615 = select i1 %5614, float 1.000000e+00, float 0.000000e+00
  %5616 = icmp eq i32 %5613, 3
  br i1 %5616, label %5617, label %5630

; <label>:5617                                    ; preds = %5608
  %5618 = lshr i32 %5612, 10
  %5619 = and i32 %5618, 8160
  %5620 = and i32 %5501, 31
  %5621 = or i32 %5619, %5620
  %5622 = lshr i32 %5612, 1
  %5623 = and i32 %5622, 16352
  %5624 = and i32 %5500, 31
  %5625 = or i32 %5623, %5624
  %5626 = lshr i32 %5612, 23
  %5627 = and i32 %5626, 255
  %5628 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5625, i32 %5621, i32 %5627, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5629 = extractvalue %dx.types.ResRet.f32 %5628, 0
  br label %5630

; <label>:5630                                    ; preds = %5617, %5608, %5555
  %5631 = phi float [ %5629, %5617 ], [ %5615, %5608 ], [ 0.000000e+00, %5555 ]
  %5632 = call float @dx.op.binary.f32(i32 36, float %5631, float %5631)  ; FMin(a,b)
  %5633 = call float @dx.op.binary.f32(i32 36, float %5631, float %5632)  ; FMin(a,b)
  %5634 = fcmp fast ogt float %5633, 0.000000e+00
  br i1 %5634, label %5643, label %5635, !dx.controlflow.hints !78

; <label>:5635                                    ; preds = %5879, %5630
  %5636 = phi float [ %5557, %5630 ], [ %5919, %5879 ]
  %5637 = phi float [ %5558, %5630 ], [ %5920, %5879 ]
  %5638 = phi float [ %5559, %5630 ], [ %5921, %5879 ]
  %5639 = phi float [ %5560, %5630 ], [ %5913, %5879 ]
  %5640 = phi float [ %5561, %5630 ], [ %5914, %5879 ]
  %5641 = phi float [ %5562, %5630 ], [ %5915, %5879 ]
  %5642 = icmp eq i32 %5556, %5566
  br i1 %5642, label %5922, label %5555

; <label>:5643                                    ; preds = %5630
  %5644 = fmul fast float %5631, %5589
  %5645 = fmul fast float %5631, %5590
  %5646 = fmul fast float %5631, %5591
  %5647 = fsub fast float %5583, %4108
  %5648 = fcmp fast ogt float %5647, 0.000000e+00
  %5649 = fsub fast float %168, %4108
  %5650 = fcmp fast ogt float %5649, 0.000000e+00
  %5651 = xor i1 %5650, %5648
  %5652 = fsub fast float %4108, %5583
  %5653 = fmul fast float %5652, 2.000000e+00
  %5654 = fadd fast float %5653, %5583
  %5655 = select i1 %5651, float %5583, float %5654
  %5656 = fsub fast float %5655, %168
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5656, float %5592, float %5593, float %5656)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = call float @dx.op.unary.f32(i32 25, float %5657)  ; Rsqrt(value)
  %5659 = fmul fast float %5658, %5592
  %5660 = fmul fast float %5658, %5593
  %5661 = fmul fast float %5658, %5656
  %5662 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4116)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = fdiv fast float 1.000000e+00, %5663
  %5665 = fmul fast float %5664, %5662
  %5666 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5649, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5667 = fcmp fast ogt float %5666, 0.000000e+00
  %5668 = fcmp fast olt float %5666, 0.000000e+00
  %5669 = zext i1 %5667 to i32
  %5670 = zext i1 %5668 to i32
  %5671 = sub nsw i32 %5669, %5670
  %5672 = sitofp i32 %5671 to float
  %5673 = fsub fast float %5655, %4108
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5673, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fcmp fast ogt float %5674, 0.000000e+00
  %5676 = fcmp fast olt float %5674, 0.000000e+00
  %5677 = zext i1 %5675 to i32
  %5678 = zext i1 %5676 to i32
  %5679 = sub nsw i32 %5677, %5678
  %5680 = sitofp i32 %5679 to float
  %5681 = fcmp fast une float %5672, %5680
  br i1 %5681, label %5682, label %5692

; <label>:5682                                    ; preds = %5643
  %5683 = fmul fast float %5665, %5661
  %5684 = fmul fast float %5665, %5660
  %5685 = fmul fast float %5665, %5659
  %5686 = fmul fast float %5685, %5685
  %5687 = fmul fast float %5684, %5684
  %5688 = fadd fast float %5686, %5687
  %5689 = fmul fast float %5683, %5683
  %5690 = fadd fast float %5688, %5689
  %5691 = call float @dx.op.unary.f32(i32 24, float %5690)  ; Sqrt(value)
  br label %5704

; <label>:5692                                    ; preds = %5643
  %5693 = icmp slt i32 %5671, 0
  br i1 %5693, label %5694, label %5704

; <label>:5694                                    ; preds = %5692
  %5695 = fsub fast float %166, %5581
  %5696 = fsub fast float %167, %5582
  %5697 = fsub fast float %168, %5655
  %5698 = fmul fast float %5695, %5695
  %5699 = fmul fast float %5696, %5696
  %5700 = fadd fast float %5698, %5699
  %5701 = fmul fast float %5697, %5697
  %5702 = fadd fast float %5700, %5701
  %5703 = call float @dx.op.unary.f32(i32 24, float %5702)  ; Sqrt(value)
  br label %5704

; <label>:5704                                    ; preds = %5694, %5692, %5682
  %5705 = phi float [ %5691, %5682 ], [ %5703, %5694 ], [ 0.000000e+00, %5692 ]
  %5706 = and i1 %5650, %5648
  %5707 = fsub fast float -0.000000e+00, %5705
  %5708 = select i1 %5706, float -0.000000e+00, float %5707
  %5709 = fmul fast float %4109, 0x3FF7154760000000
  %5710 = fmul fast float %5709, %5708
  %5711 = fmul fast float %4110, 0x3FF7154760000000
  %5712 = fmul fast float %5711, %5708
  %5713 = fmul fast float %4111, 0x3FF7154760000000
  %5714 = fmul fast float %5713, %5708
  %5715 = call float @dx.op.unary.f32(i32 21, float %5710)  ; Exp(value)
  %5716 = call float @dx.op.unary.f32(i32 21, float %5712)  ; Exp(value)
  %5717 = call float @dx.op.unary.f32(i32 21, float %5714)  ; Exp(value)
  %5718 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5719 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5720 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5721 = fmul fast float %5644, %5718
  %5722 = fmul fast float %5645, %5719
  %5723 = fmul fast float %5646, %5720
  %5724 = fsub fast float %5598, %4900
  %5725 = fsub fast float %5599, %4899
  %5726 = fsub fast float %5600, %4898
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5725, float %5726, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = call float @dx.op.unary.f32(i32 25, float %5727)  ; Rsqrt(value)
  %5729 = fmul fast float %5728, %5724
  %5730 = fmul fast float %5728, %5725
  %5731 = fmul fast float %5728, %5726
  %5732 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5600, float %4907, float %4908, float %4909)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4896, float %4895, float %5729, float %5730, float %5731)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5735 = fmul fast float %5734, %5605
  %5736 = fmul fast float %5734, %5734
  %5737 = fmul fast float %5736, %4927
  %5738 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5739 = fmul fast float %5735, %5738
  %5740 = bitcast float %5595 to i32
  %5741 = ashr i32 %5740, 1
  %5742 = sub nsw i32 1597463007, %5741
  %5743 = bitcast i32 %5742 to float
  %5744 = fmul fast float %5743, %5592
  %5745 = fmul fast float %5743, %5593
  %5746 = fmul fast float %5743, %5594
  %5747 = fsub fast float %5744, %4900
  %5748 = fsub fast float %5745, %4899
  %5749 = fsub fast float %5746, %4898
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = call float @dx.op.unary.f32(i32 25, float %5750)  ; Rsqrt(value)
  %5752 = fmul fast float %5747, %5751
  %5753 = fmul fast float %5748, %5751
  %5754 = fmul fast float %5749, %5751
  %5755 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4908, float %4909, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5756 = fmul fast float %5755, %5755
  %5757 = call float @dx.op.unary.f32(i32 6, float %5732)  ; FAbs(value)
  %5758 = fsub fast float 1.000000e+00, %4910
  %5759 = call float @dx.op.binary.f32(i32 35, float %5758, float 0x3F847AE140000000)  ; FMax(a,b)
  %5760 = fmul fast float %5759, %5759
  %5761 = fmul fast float %5760, %5760
  %5762 = fsub fast float 1.000000e+00, %5761
  %5763 = fmul fast float %4914, %4914
  %5764 = fmul fast float %5763, %5762
  %5765 = fadd fast float %5764, %5761
  %5766 = bitcast float %5765 to i32
  %5767 = ashr i32 %5766, 1
  %5768 = add nsw i32 %5767, 532487669
  %5769 = bitcast i32 %5768 to float
  %5770 = fadd fast float %5769, %4914
  %5771 = fmul fast float %5761, %5756
  %5772 = fsub fast float 1.000000e+00, %5756
  %5773 = fadd fast float %5772, %5771
  %5774 = fmul fast float %5757, %5757
  %5775 = fmul fast float %5774, %5762
  %5776 = fadd fast float %5775, %5761
  %5777 = bitcast float %5776 to i32
  %5778 = ashr i32 %5777, 1
  %5779 = add nsw i32 %5778, 532487669
  %5780 = bitcast i32 %5779 to float
  %5781 = fadd fast float %5780, %5757
  %5782 = fmul fast float %5773, %5773
  %5783 = fmul fast float %5782, %5770
  %5784 = fmul fast float %5783, %5781
  %5785 = fdiv fast float 1.000000e+00, %5784
  %5786 = bitcast float %5761 to i32
  %5787 = sitofp i32 %5786 to float
  %5788 = fmul fast float %5787, 0x3FE7F73180000000
  %5789 = fadd fast float %5788, 0x41AFE27C40000000
  %5790 = fptosi float %5789 to i32
  %5791 = bitcast i32 %5790 to float
  %5792 = fmul fast float %5578, 0x3FD80E9D60000000
  %5793 = fmul fast float %5792, %5743
  %5794 = fadd fast float %5791, %5793
  %5795 = bitcast float %5794 to i32
  %5796 = sub nsw i32 2129859010, %5795
  %5797 = bitcast i32 %5796 to float
  %5798 = fmul fast float %5761, %5785
  %5799 = fmul fast float %5798, %5791
  %5800 = fmul fast float %5799, %5797
  %5801 = call float @dx.op.unary.f32(i32 6, float %5733)  ; FAbs(value)
  %5802 = fsub fast float 1.000000e+00, %5801
  %5803 = bitcast float %5802 to i32
  %5804 = sitofp i32 %5803 to float
  %5805 = fmul fast float %5804, 5.000000e+00
  %5806 = fadd fast float %5805, 0xC1EFBF8940000000
  %5807 = fptosi float %5806 to i32
  %5808 = bitcast i32 %5807 to float
  %5809 = fsub fast float 1.000000e+00, %4904
  %5810 = fsub fast float 1.000000e+00, %4905
  %5811 = fsub fast float 1.000000e+00, %4912
  %5812 = fmul fast float %5808, %5809
  %5813 = fmul fast float %5808, %5810
  %5814 = fmul fast float %5808, %5811
  %5815 = fadd fast float %5812, %4904
  %5816 = fadd fast float %5813, %4905
  %5817 = fadd fast float %5814, %4912
  br i1 %5174, label %5818, label %5841

; <label>:5818                                    ; preds = %5704
  %5819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3707, float %5801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5820 = extractvalue %dx.types.ResRet.f32 %5819, 0
  %5821 = extractvalue %dx.types.ResRet.f32 %5819, 1
  %5822 = extractvalue %dx.types.ResRet.f32 %5819, 2
  %5823 = fadd fast float %5820, -5.000000e-01
  %5824 = fadd fast float %5821, -5.000000e-01
  %5825 = fadd fast float %5822, -5.000000e-01
  %5826 = fmul fast float %4904, 4.000000e+00
  %5827 = fmul fast float %5826, %5809
  %5828 = fmul fast float %5827, %5823
  %5829 = fmul fast float %4905, 4.000000e+00
  %5830 = fmul fast float %5829, %5810
  %5831 = fmul fast float %5830, %5824
  %5832 = fmul fast float %4912, 4.000000e+00
  %5833 = fmul fast float %5832, %5811
  %5834 = fmul fast float %5833, %5825
  %5835 = fadd fast float %5828, %5815
  %5836 = fadd fast float %5831, %5816
  %5837 = fadd fast float %5834, %5817
  %5838 = call float @dx.op.unary.f32(i32 7, float %5835)  ; Saturate(value)
  %5839 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  %5840 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  br label %5841

; <label>:5841                                    ; preds = %5818, %5704
  %5842 = phi float [ %5838, %5818 ], [ %5815, %5704 ]
  %5843 = phi float [ %5839, %5818 ], [ %5816, %5704 ]
  %5844 = phi float [ %5840, %5818 ], [ %5817, %5704 ]
  %5845 = fmul fast float %5732, 9.843750e-01
  %5846 = fadd fast float %5845, 7.812500e-03
  %5847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5846, float %5164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5848 = extractvalue %dx.types.ResRet.f32 %5847, 2
  %5849 = extractvalue %dx.types.ResRet.f32 %5847, 3
  %5850 = fmul fast float %5848, %4904
  %5851 = fmul fast float %5848, %4905
  %5852 = fmul fast float %5848, %4912
  %5853 = fadd fast float %5850, %5849
  %5854 = fadd fast float %5851, %5849
  %5855 = fadd fast float %5852, %5849
  br i1 %5174, label %5856, label %5879

; <label>:5856                                    ; preds = %5841
  %5857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3707, float %5732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5861 = fadd fast float %5858, -5.000000e-01
  %5862 = fadd fast float %5859, -5.000000e-01
  %5863 = fadd fast float %5860, -5.000000e-01
  %5864 = fmul fast float %4904, 4.000000e+00
  %5865 = fmul fast float %5864, %5809
  %5866 = fmul fast float %5865, %5861
  %5867 = fmul fast float %4905, 4.000000e+00
  %5868 = fmul fast float %5867, %5810
  %5869 = fmul fast float %5868, %5862
  %5870 = fmul fast float %4912, 4.000000e+00
  %5871 = fmul fast float %5870, %5811
  %5872 = fmul fast float %5871, %5863
  %5873 = fadd fast float %5866, %5853
  %5874 = fadd fast float %5869, %5854
  %5875 = fadd fast float %5872, %5855
  %5876 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  %5877 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5878 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  br label %5879

; <label>:5879                                    ; preds = %5856, %5841
  %5880 = phi float [ %5876, %5856 ], [ %5853, %5841 ]
  %5881 = phi float [ %5877, %5856 ], [ %5854, %5841 ]
  %5882 = phi float [ %5878, %5856 ], [ %5855, %5841 ]
  %5883 = call float @dx.op.binary.f32(i32 35, float %5881, float %5882)  ; FMax(a,b)
  %5884 = call float @dx.op.binary.f32(i32 35, float %5880, float %5883)  ; FMax(a,b)
  %5885 = fsub fast float 1.000000e+00, %5884
  %5886 = fmul fast float %5842, %5800
  %5887 = fmul fast float %5843, %5800
  %5888 = fmul fast float %5844, %5800
  %5889 = fsub fast float 1.000000e+00, %5733
  %5890 = bitcast float %5889 to i32
  %5891 = sitofp i32 %5890 to float
  %5892 = fmul fast float %5891, 5.000000e+00
  %5893 = fadd fast float %5892, 0xC1EFBF8940000000
  %5894 = fptosi float %5893 to i32
  %5895 = bitcast i32 %5894 to float
  %5896 = fmul fast float %5895, %3708
  %5897 = fmul fast float %5885, %5896
  %5898 = fmul fast float %5897, %5224
  %5899 = fmul fast float %5897, %5225
  %5900 = fmul fast float %5897, %5226
  %5901 = fadd fast float %5898, %5886
  %5902 = fadd fast float %5899, %5887
  %5903 = fadd fast float %5900, %5888
  %5904 = fmul fast float %5721, %3704
  %5905 = fmul fast float %5904, %5739
  %5906 = fmul fast float %5905, %5885
  %5907 = fmul fast float %5722, %3704
  %5908 = fmul fast float %5907, %5739
  %5909 = fmul fast float %5908, %5885
  %5910 = fmul fast float %5723, %3704
  %5911 = fmul fast float %5910, %5739
  %5912 = fmul fast float %5911, %5885
  %5913 = fadd fast float %5906, %5560
  %5914 = fadd fast float %5909, %5561
  %5915 = fadd fast float %5912, %5562
  %5916 = fmul fast float %5905, %5901
  %5917 = fmul fast float %5908, %5902
  %5918 = fmul fast float %5911, %5903
  %5919 = fadd fast float %5916, %5557
  %5920 = fadd fast float %5917, %5558
  %5921 = fadd fast float %5918, %5559
  br label %5635

; <label>:5922                                    ; preds = %5635
  br label %5923

; <label>:5923                                    ; preds = %5922, %5523
  %5924 = phi float [ %5525, %5523 ], [ %5636, %5922 ]
  %5925 = phi float [ %5526, %5523 ], [ %5637, %5922 ]
  %5926 = phi float [ %5527, %5523 ], [ %5638, %5922 ]
  %5927 = phi float [ %5528, %5523 ], [ %5639, %5922 ]
  %5928 = phi float [ %5529, %5523 ], [ %5640, %5922 ]
  %5929 = phi float [ %5530, %5523 ], [ %5641, %5922 ]
  %5930 = add i32 %5524, 1
  %5931 = icmp ugt i32 %5930, %5520
  br i1 %5931, label %5932, label %5523

; <label>:5932                                    ; preds = %5923
  br label %5933

; <label>:5933                                    ; preds = %5932, %5499, %5489
  %5934 = phi float [ %5490, %5489 ], [ %5490, %5499 ], [ %5924, %5932 ]
  %5935 = phi float [ %5491, %5489 ], [ %5491, %5499 ], [ %5925, %5932 ]
  %5936 = phi float [ %5492, %5489 ], [ %5492, %5499 ], [ %5926, %5932 ]
  %5937 = phi float [ %5493, %5489 ], [ %5493, %5499 ], [ %5927, %5932 ]
  %5938 = phi float [ %5494, %5489 ], [ %5494, %5499 ], [ %5928, %5932 ]
  %5939 = phi float [ %5495, %5489 ], [ %5495, %5499 ], [ %5929, %5932 ]
  %5940 = call float @dx.op.unary.f32(i32 24, float %4901)  ; Sqrt(value)
  %5941 = call float @dx.op.unary.f32(i32 24, float %4902)  ; Sqrt(value)
  %5942 = call float @dx.op.unary.f32(i32 24, float %4903)  ; Sqrt(value)
  %5943 = fmul fast float %5940, %5937
  %5944 = fmul fast float %5941, %5938
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  br i1 %205, label %5947, label %5967

; <label>:5947                                    ; preds = %5933
  %5948 = fadd fast float %5939, %3710
  %5949 = fmul fast float %5948, %3711
  %5950 = fsub fast float 1.000000e+00, %3711
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 3
  %5954 = fmul fast float %5953, %5951
  %5955 = fadd fast float %5954, %5949
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = fmul fast float %5957, %5230
  %5959 = fsub fast float %5955, %5958
  %5960 = fadd fast float %5944, %5943
  %5961 = fmul fast float %5946, %5960
  %5962 = extractvalue %dx.types.CBufRet.f32 %5952, 1
  %5963 = fsub fast float %5959, %5962
  %5964 = extractvalue %dx.types.CBufRet.f32 %5952, 2
  %5965 = fmul fast float %5963, %5964
  %5966 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  br label %5983

; <label>:5967                                    ; preds = %5933
  %5968 = fmul fast float %5942, %5939
  %5969 = fmul fast float %5946, %5943
  %5970 = fmul fast float %5946, %5944
  %5971 = fmul fast float %5968, %5946
  %5972 = add i32 %34, 356
  %5973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5972, i32 undef)  ; BufferLoad(srv,index,wot)
  %5974 = extractvalue %dx.types.ResRet.i32 %5973, 0
  %5975 = and i32 %5974, 32
  %5976 = icmp eq i32 %5975, 0
  br i1 %5976, label %5983, label %5977

; <label>:5977                                    ; preds = %5967
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %5980 = fmul fast float %5979, 0x3FE99999A0000000
  %5981 = fadd fast float %5979, %5969
  %5982 = fadd fast float %5980, %5971
  br label %5983

; <label>:5983                                    ; preds = %5977, %5967, %5947
  %5984 = phi float [ %5961, %5947 ], [ %5981, %5977 ], [ %5969, %5967 ]
  %5985 = phi float [ %5966, %5947 ], [ %5970, %5977 ], [ %5970, %5967 ]
  %5986 = phi float [ 1.000000e+00, %5947 ], [ %5982, %5977 ], [ %5971, %5967 ]
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 0
  %5989 = fmul fast float %5988, %5935
  %5990 = fmul fast float %5988, %5936
  %5991 = fadd fast float %5935, %5934
  %5992 = select i1 %205, float %5991, float %5934
  %5993 = fmul float %5992, %5988
  %5994 = select i1 %205, float 0.000000e+00, float %5989
  %5995 = select i1 %205, float 0.000000e+00, float %5990
  %5996 = fmul fast float %5984, %5940
  %5997 = fmul fast float %5985, %5941
  %5998 = fmul fast float %5986, %5942
  %5999 = fadd fast float %5993, %5996
  %6000 = fadd fast float %5994, %5997
  %6001 = fadd fast float %5995, %5998
  %6002 = select i1 %205, float %5985, float %6000
  %6003 = select i1 %205, float %5986, float %6001
  %6004 = call float @dx.op.binary.f32(i32 36, float %5999, float 3.225500e+04)  ; FMin(a,b)
  %6005 = call float @dx.op.binary.f32(i32 36, float %6002, float 3.225500e+04)  ; FMin(a,b)
  %6006 = call float @dx.op.binary.f32(i32 36, float %6003, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6004)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6005)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6006)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!45 = !{[62 x i32] [i32 60, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!46 = !{void ()* @ps_main, !"ps_main", !47, !4, !75}
!47 = !{!48, !73, null}
!48 = !{!49, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72}
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
!60 = !{i32 5, !"SH_RED", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 5, i8 0, !59}
!61 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 6, i8 0, !59}
!62 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 7, i8 0, !59}
!63 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 3, i32 8, i8 0, !57}
!64 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 9, i8 0, !59}
!65 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !50, i8 2, i32 1, i8 2, i32 10, i8 0, !55}
!66 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 11, i8 0, !59}
!67 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 12, i8 0, !57}
!68 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !50, i8 1, i32 1, i8 1, i32 13, i8 0, !69}
!69 = !{i32 3, i32 1}
!70 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !50, i8 1, i32 1, i8 4, i32 14, i8 0, !69}
!71 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !50, i8 1, i32 1, i8 1, i32 13, i8 1, !69}
!72 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !50, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!73 = !{!74}
!74 = !{i32 0, !"SV_Target", i8 9, i8 16, !50, i8 0, i32 1, i8 4, i32 0, i8 0, !59}
!75 = !{i32 0, i64 24}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}

