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
; shader hash: 257d1b7ec6ec15dfcd2bad8d1046dcdb
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
  %557 = add i32 %34, 360
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
  %580 = add i32 %34, 440
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
  %778 = add i32 %34, 376
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
  %862 = add i32 %34, 392
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
  br i1 %389, label %1762, label %925

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
  br i1 %934, label %1762, label %935

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
  %1039 = add i32 %34, 428
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
  %1091 = add i32 %34, 412
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
  br i1 %1108, label %1762, label %1109

; <label>:1109                                    ; preds = %1106
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 16
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1312, label %1114

; <label>:1114                                    ; preds = %1109
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %34, 364
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
  %1140 = add i32 %34, 444
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
  %1338 = add i32 %34, 380
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
  %1422 = add i32 %34, 396
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
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 1024
  %1461 = icmp eq i32 %1460, 0
  br i1 %1461, label %1492, label %1462

; <label>:1462                                    ; preds = %1454
  %1463 = add i32 %34, 168
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = fmul fast float %1467, 0x3F70101020000000
  %1469 = lshr i32 %1465, 8
  %1470 = and i32 %1469, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = fmul fast float %1471, 0x3F70101020000000
  %1473 = lshr i32 %1465, 16
  %1474 = and i32 %1473, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = fmul fast float %1475, 0x3F70101020000000
  %1477 = fmul fast float %1468, %1468
  %1478 = fmul fast float %1472, %1472
  %1479 = fmul fast float %1476, %1476
  %1480 = add i32 %34, 460
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = add i32 %1482, 0
  %1484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1485 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1484, %dx.types.Handle %80, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = extractvalue %dx.types.ResRet.f32 %1485, 1
  %1488 = extractvalue %dx.types.ResRet.f32 %1485, 2
  %1489 = fmul fast float %1477, %1486
  %1490 = fmul fast float %1478, %1487
  %1491 = fmul fast float %1479, %1488
  br label %1492

; <label>:1492                                    ; preds = %1462, %1454
  %1493 = phi float [ %1489, %1462 ], [ 0.000000e+00, %1454 ]
  %1494 = phi float [ %1490, %1462 ], [ 0.000000e+00, %1454 ]
  %1495 = phi float [ %1491, %1462 ], [ 0.000000e+00, %1454 ]
  %1496 = fcmp fast ogt float %1493, 0.000000e+00
  %1497 = fcmp fast ogt float %1494, 0.000000e+00
  %1498 = fcmp fast ogt float %1495, 0.000000e+00
  %1499 = call float @dx.op.unary.f32(i32 23, float %1493)  ; Log(value)
  %1500 = call float @dx.op.unary.f32(i32 23, float %1494)  ; Log(value)
  %1501 = call float @dx.op.unary.f32(i32 23, float %1495)  ; Log(value)
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = lshr i32 %1503, 7
  %1505 = and i32 %1504, 32752
  %1506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1505)  ; LegacyF16ToF32(value)
  %1507 = fmul fast float %1499, 0xBFE62E4300000000
  %1508 = fmul fast float %1507, %1506
  %1509 = fmul fast float %1500, 0xBFE62E4300000000
  %1510 = fmul fast float %1509, %1506
  %1511 = fmul fast float %1501, 0xBFE62E4300000000
  %1512 = fmul fast float %1511, %1506
  %1513 = select i1 %1496, float %1508, float 1.270000e+02
  %1514 = select i1 %1497, float %1510, float 1.270000e+02
  %1515 = select i1 %1498, float %1512, float 1.270000e+02
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 10240
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1540, label %1520

; <label>:1520                                    ; preds = %1492
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 2048
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1540, label %1525

; <label>:1525                                    ; preds = %1520
  %1526 = add i32 %34, 476
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %1528, 0
  %1530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1530, %dx.types.Handle %80, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 3
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = shl i32 %1534, 4
  %1536 = and i32 %1535, 32752
  %1537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1536)  ; LegacyF16ToF32(value)
  %1538 = fmul fast float %1537, %1532
  %1539 = call float @dx.op.binary.f32(i32 35, float %1538, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1540

; <label>:1540                                    ; preds = %1525, %1520, %1492
  %1541 = phi float [ %1539, %1525 ], [ 0x3F70101020000000, %1520 ], [ 0x3F70101020000000, %1492 ]
  %1542 = add i32 %34, 112
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = lshr i32 %1544, 8
  %1548 = and i32 %1547, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = call float @dx.op.dot3.f32(i32 55, float %1327, float %1328, float %1329, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1551 = fmul fast float %1549, %1550
  %1552 = fadd fast float %1551, %1546
  %1553 = fmul fast float %1552, 0x3F70101020000000
  %1554 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  br i1 %926, label %1555, label %1590

; <label>:1555                                    ; preds = %1540
  %1556 = fmul fast float %1541, 2.000000e+00
  %1557 = fcmp fast olt float %1513, 1.270000e+02
  %1558 = fcmp fast olt float %1514, 1.270000e+02
  %1559 = fcmp fast olt float %1515, 1.270000e+02
  %1560 = fmul fast float %1513, 0xBFF7154760000000
  %1561 = fmul fast float %1560, %1556
  %1562 = fmul fast float %1514, 0xBFF7154760000000
  %1563 = fmul fast float %1562, %1556
  %1564 = fmul fast float %1515, 0xBFF7154760000000
  %1565 = fmul fast float %1564, %1556
  %1566 = call float @dx.op.unary.f32(i32 21, float %1561)  ; Exp(value)
  %1567 = call float @dx.op.unary.f32(i32 21, float %1563)  ; Exp(value)
  %1568 = call float @dx.op.unary.f32(i32 21, float %1565)  ; Exp(value)
  %1569 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1570 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1571 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1572 = fadd fast float %1569, -1.000000e+00
  %1573 = select i1 %1557, float %1572, float -1.000000e+00
  %1574 = fadd fast float %1570, -1.000000e+00
  %1575 = select i1 %1558, float %1574, float -1.000000e+00
  %1576 = fadd fast float %1571, -1.000000e+00
  %1577 = select i1 %1559, float %1576, float -1.000000e+00
  %1578 = fmul fast float %1573, %1107
  %1579 = fmul fast float %1575, %1107
  %1580 = fmul fast float %1577, %1107
  %1581 = fadd fast float %1578, 1.000000e+00
  %1582 = fadd fast float %1579, 1.000000e+00
  %1583 = fadd fast float %1580, 1.000000e+00
  %1584 = fmul fast float %1581, %914
  %1585 = fmul fast float %1582, %915
  %1586 = fmul fast float %1583, %916
  %1587 = fmul fast float %1581, %917
  %1588 = fmul fast float %1582, %918
  %1589 = fmul fast float %1583, %919
  br label %1590

; <label>:1590                                    ; preds = %1555, %1540
  %1591 = phi float [ %1584, %1555 ], [ %914, %1540 ]
  %1592 = phi float [ %1585, %1555 ], [ %915, %1540 ]
  %1593 = phi float [ %1586, %1555 ], [ %916, %1540 ]
  %1594 = phi float [ %1587, %1555 ], [ %917, %1540 ]
  %1595 = phi float [ %1588, %1555 ], [ %918, %1540 ]
  %1596 = phi float [ %1589, %1555 ], [ %919, %1540 ]
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = and i32 %1598, 3
  %1600 = icmp eq i32 %1599, 3
  br i1 %1600, label %1679, label %1601

; <label>:1601                                    ; preds = %1590
  %1602 = and i32 %1598, 16
  %1603 = icmp ne i32 %1602, 0
  %1604 = select i1 %1603, float %1107, float 0.000000e+00
  %1605 = icmp eq i32 %1599, 0
  br i1 %1605, label %1606, label %1634

; <label>:1606                                    ; preds = %1601
  %1607 = and i32 %1598, 64
  %1608 = icmp ne i32 %1607, 0
  %1609 = select i1 %1608, float %1107, float 0.000000e+00
  %1610 = fsub fast float %1327, %1591
  %1611 = fsub fast float %1328, %1592
  %1612 = fsub fast float %1329, %1593
  %1613 = fmul fast float %1604, %1610
  %1614 = fmul fast float %1604, %1611
  %1615 = fmul fast float %1604, %1612
  %1616 = fadd fast float %1613, %1591
  %1617 = fadd fast float %1614, %1592
  %1618 = fadd fast float %1615, %1593
  %1619 = fsub fast float %1313, %920
  %1620 = fmul fast float %1604, %1619
  %1621 = fadd fast float %1620, %920
  %1622 = fsub fast float %1455, %1594
  %1623 = fsub fast float %1456, %1595
  %1624 = fsub fast float %1457, %1596
  %1625 = fmul fast float %1609, %1622
  %1626 = fmul fast float %1609, %1623
  %1627 = fmul fast float %1609, %1624
  %1628 = fadd fast float %1625, %1594
  %1629 = fadd fast float %1626, %1595
  %1630 = fadd fast float %1627, %1596
  %1631 = fsub fast float %1554, %924
  %1632 = fmul fast float %1604, %1631
  %1633 = fadd fast float %1632, %924
  br label %1679

; <label>:1634                                    ; preds = %1601
  %1635 = icmp eq i32 %1599, 1
  br i1 %1635, label %1636, label %1649

; <label>:1636                                    ; preds = %1634
  %1637 = fadd fast float %1327, -1.000000e+00
  %1638 = fadd fast float %1328, -1.000000e+00
  %1639 = fadd fast float %1329, -1.000000e+00
  %1640 = fmul fast float %1604, %1637
  %1641 = fmul fast float %1604, %1638
  %1642 = fmul fast float %1604, %1639
  %1643 = fadd fast float %1640, 1.000000e+00
  %1644 = fadd fast float %1641, 1.000000e+00
  %1645 = fadd fast float %1642, 1.000000e+00
  %1646 = fmul fast float %1643, %1591
  %1647 = fmul fast float %1644, %1592
  %1648 = fmul fast float %1645, %1593
  br label %1679

; <label>:1649                                    ; preds = %1634
  %1650 = icmp eq i32 %1599, 2
  br i1 %1650, label %1651, label %1679

; <label>:1651                                    ; preds = %1649
  %1652 = call float @dx.op.unary.f32(i32 24, float %1327)  ; Sqrt(value)
  %1653 = call float @dx.op.unary.f32(i32 24, float %1328)  ; Sqrt(value)
  %1654 = call float @dx.op.unary.f32(i32 24, float %1329)  ; Sqrt(value)
  %1655 = fadd fast float %1652, -5.000000e-01
  %1656 = fadd fast float %1653, -5.000000e-01
  %1657 = fadd fast float %1654, -5.000000e-01
  %1658 = fmul fast float %1655, %1604
  %1659 = fmul fast float %1656, %1604
  %1660 = fmul fast float %1657, %1604
  %1661 = fadd fast float %1658, 5.000000e-01
  %1662 = fadd fast float %1659, 5.000000e-01
  %1663 = fadd fast float %1660, 5.000000e-01
  %1664 = fmul fast float %1661, 2.000000e+00
  %1665 = fsub fast float 1.000000e+00, %1664
  %1666 = fmul fast float %1665, %1591
  %1667 = fadd fast float %1666, %1664
  %1668 = fmul fast float %1667, %1591
  %1669 = fmul fast float %1662, 2.000000e+00
  %1670 = fsub fast float 1.000000e+00, %1669
  %1671 = fmul fast float %1670, %1592
  %1672 = fadd fast float %1671, %1669
  %1673 = fmul fast float %1672, %1592
  %1674 = fmul fast float %1663, 2.000000e+00
  %1675 = fsub fast float 1.000000e+00, %1674
  %1676 = fmul fast float %1675, %1593
  %1677 = fadd fast float %1676, %1674
  %1678 = fmul fast float %1677, %1593
  br label %1679

; <label>:1679                                    ; preds = %1651, %1649, %1636, %1606, %1590
  %1680 = phi float [ %1591, %1590 ], [ %1668, %1651 ], [ %1591, %1649 ], [ %1646, %1636 ], [ %1616, %1606 ]
  %1681 = phi float [ %1592, %1590 ], [ %1673, %1651 ], [ %1592, %1649 ], [ %1647, %1636 ], [ %1617, %1606 ]
  %1682 = phi float [ %1593, %1590 ], [ %1678, %1651 ], [ %1593, %1649 ], [ %1648, %1636 ], [ %1618, %1606 ]
  %1683 = phi float [ %1594, %1590 ], [ %1594, %1651 ], [ %1594, %1649 ], [ %1594, %1636 ], [ %1628, %1606 ]
  %1684 = phi float [ %1595, %1590 ], [ %1595, %1651 ], [ %1595, %1649 ], [ %1595, %1636 ], [ %1629, %1606 ]
  %1685 = phi float [ %1596, %1590 ], [ %1596, %1651 ], [ %1596, %1649 ], [ %1596, %1636 ], [ %1630, %1606 ]
  %1686 = phi float [ %920, %1590 ], [ %920, %1651 ], [ %920, %1649 ], [ %920, %1636 ], [ %1621, %1606 ]
  %1687 = phi float [ %924, %1590 ], [ %924, %1651 ], [ %924, %1649 ], [ %924, %1636 ], [ %1633, %1606 ]
  %1688 = and i32 %1598, 12
  %1689 = icmp eq i32 %1688, 12
  br i1 %1689, label %1762, label %1690

; <label>:1690                                    ; preds = %1679
  %1691 = and i32 %1598, 2097184
  %1692 = icmp eq i32 %1691, 2097184
  %1693 = select i1 %1692, float %1107, float 0.000000e+00
  %1694 = and i32 %1598, 4194336
  %1695 = icmp eq i32 %1694, 4194336
  %1696 = select i1 %1695, float %1107, float 0.000000e+00
  %1697 = and i32 %1598, 8388640
  %1698 = icmp eq i32 %1697, 8388640
  %1699 = select i1 %1698, float %1107, float 0.000000e+00
  %1700 = icmp eq i32 %1688, 0
  br i1 %1700, label %1701, label %1714

; <label>:1701                                    ; preds = %1690
  %1702 = fsub fast float %1408, %912
  %1703 = fsub fast float %1409, %913
  %1704 = fmul fast float %1693, %1702
  %1705 = fmul fast float %1693, %1703
  %1706 = fadd fast float %1704, %912
  %1707 = fadd fast float %1705, %913
  %1708 = fsub fast float %1410, %923
  %1709 = fmul fast float %1696, %1708
  %1710 = fadd fast float %1709, %923
  %1711 = fsub fast float %1407, %922
  %1712 = fmul fast float %1699, %1711
  %1713 = fadd fast float %1712, %922
  br label %1762

; <label>:1714                                    ; preds = %1690
  %1715 = icmp eq i32 %1688, 4
  br i1 %1715, label %1716, label %1748

; <label>:1716                                    ; preds = %1714
  %1717 = fmul fast float %1693, %1408
  %1718 = fmul fast float %1693, %1409
  %1719 = fadd fast float %1717, %912
  %1720 = fadd fast float %1718, %913
  %1721 = call float @dx.op.binary.f32(i32 36, float %923, float %1410)  ; FMin(a,b)
  %1722 = fsub fast float %1721, %923
  %1723 = fmul fast float %1722, %1696
  %1724 = fadd fast float %1723, %923
  %1725 = fadd fast float %1407, %922
  %1726 = fmul fast float %1725, 0x3FF337FAE0000000
  %1727 = fmul fast float %922, %922
  %1728 = fmul fast float %1407, %1407
  %1729 = fadd fast float %1728, %1727
  %1730 = fmul fast float %1729, 0x3FE5152B00000000
  %1731 = fmul fast float %922, 0xBFCC1F85E0000000
  %1732 = fmul fast float %1731, %1407
  %1733 = fadd fast float %1732, 0xBFE1363700000000
  %1734 = fadd fast float %1733, %1726
  %1735 = fsub fast float %1734, %1730
  %1736 = fmul fast float %1725, 0x3FBA6F0D00000000
  %1737 = fmul fast float %1729, 0x3FD0432880000000
  %1738 = fmul fast float %922, 0xBFEF110800000000
  %1739 = fmul fast float %1738, %1407
  %1740 = fadd fast float %1739, 1.000000e+00
  %1741 = fsub fast float %1740, %1736
  %1742 = fadd fast float %1741, %1737
  %1743 = fdiv fast float %1735, %1742
  %1744 = call float @dx.op.unary.f32(i32 7, float %1743)  ; Saturate(value)
  %1745 = fsub fast float %1744, %922
  %1746 = fmul fast float %1745, %1699
  %1747 = fadd fast float %1746, %922
  br label %1762

; <label>:1748                                    ; preds = %1714
  %1749 = icmp eq i32 %1688, 8
  br i1 %1749, label %1750, label %1762

; <label>:1750                                    ; preds = %1748
  %1751 = fmul fast float %1693, %1408
  %1752 = fmul fast float %1693, %1409
  %1753 = fadd fast float %1751, %912
  %1754 = fadd fast float %1752, %913
  %1755 = call float @dx.op.binary.f32(i32 36, float %923, float %1410)  ; FMin(a,b)
  %1756 = fsub fast float %1755, %923
  %1757 = fmul fast float %1756, %1696
  %1758 = fadd fast float %1757, %923
  %1759 = fsub fast float %1407, %922
  %1760 = fmul fast float %1699, %1759
  %1761 = fadd fast float %1760, %922
  br label %1762

; <label>:1762                                    ; preds = %1750, %1748, %1716, %1701, %1679, %1106, %925, %911
  %1763 = phi float [ %912, %1679 ], [ %912, %1106 ], [ %912, %911 ], [ %1753, %1750 ], [ %912, %1748 ], [ %1719, %1716 ], [ %1706, %1701 ], [ %912, %925 ]
  %1764 = phi float [ %913, %1679 ], [ %913, %1106 ], [ %913, %911 ], [ %1754, %1750 ], [ %913, %1748 ], [ %1720, %1716 ], [ %1707, %1701 ], [ %913, %925 ]
  %1765 = phi float [ %1680, %1679 ], [ %914, %1106 ], [ %914, %911 ], [ %1680, %1750 ], [ %1680, %1748 ], [ %1680, %1716 ], [ %1680, %1701 ], [ %914, %925 ]
  %1766 = phi float [ %1681, %1679 ], [ %915, %1106 ], [ %915, %911 ], [ %1681, %1750 ], [ %1681, %1748 ], [ %1681, %1716 ], [ %1681, %1701 ], [ %915, %925 ]
  %1767 = phi float [ %1682, %1679 ], [ %916, %1106 ], [ %916, %911 ], [ %1682, %1750 ], [ %1682, %1748 ], [ %1682, %1716 ], [ %1682, %1701 ], [ %916, %925 ]
  %1768 = phi float [ %1683, %1679 ], [ %917, %1106 ], [ %917, %911 ], [ %1683, %1750 ], [ %1683, %1748 ], [ %1683, %1716 ], [ %1683, %1701 ], [ %917, %925 ]
  %1769 = phi float [ %1684, %1679 ], [ %918, %1106 ], [ %918, %911 ], [ %1684, %1750 ], [ %1684, %1748 ], [ %1684, %1716 ], [ %1684, %1701 ], [ %918, %925 ]
  %1770 = phi float [ %1685, %1679 ], [ %919, %1106 ], [ %919, %911 ], [ %1685, %1750 ], [ %1685, %1748 ], [ %1685, %1716 ], [ %1685, %1701 ], [ %919, %925 ]
  %1771 = phi float [ %1686, %1679 ], [ %920, %1106 ], [ %920, %911 ], [ %1686, %1750 ], [ %1686, %1748 ], [ %1686, %1716 ], [ %1686, %1701 ], [ %920, %925 ]
  %1772 = phi float [ %922, %1679 ], [ %922, %1106 ], [ %922, %911 ], [ %1761, %1750 ], [ %922, %1748 ], [ %1747, %1716 ], [ %1713, %1701 ], [ %922, %925 ]
  %1773 = phi float [ %923, %1679 ], [ %923, %1106 ], [ %923, %911 ], [ %1758, %1750 ], [ %923, %1748 ], [ %1724, %1716 ], [ %1710, %1701 ], [ %923, %925 ]
  %1774 = phi float [ %1687, %1679 ], [ %924, %1106 ], [ %924, %911 ], [ %1687, %1750 ], [ %1687, %1748 ], [ %1687, %1716 ], [ %1687, %1701 ], [ %924, %925 ]
  br i1 %391, label %2612, label %1775

; <label>:1775                                    ; preds = %1762
  %1776 = icmp ult i32 %444, 3
  %1777 = add i32 %34, 56
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = add i32 %34, 60
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = or i32 %1782, %1779
  %1784 = icmp eq i32 %1783, 0
  br i1 %1784, label %2612, label %1785

; <label>:1785                                    ; preds = %1775
  %1786 = and i32 %1779, 262144
  %1787 = icmp ne i32 %1786, 0
  %1788 = select i1 %1787, float %39, float 1.000000e+00
  %1789 = select i1 %1787, float %40, float 0.000000e+00
  %1790 = select i1 %1787, float %41, float 0.000000e+00
  %1791 = select i1 %1787, float %42, float 1.000000e+00
  %1792 = select i1 %1787, float %43, float %71
  %1793 = select i1 %1787, float %44, float %72
  %1794 = add i32 %34, 316
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = lshr i32 %1796, 16
  %1798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1797)  ; LegacyF16ToF32(value)
  %1799 = fmul fast float %1798, 0x3F50624DE0000000
  %1800 = add i32 %34, 120
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = lshr i32 %1802, 16
  %1804 = and i32 %1803, 255
  %1805 = lshr i32 %1802, 24
  %1806 = add i32 %34, 324
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = and i32 %1808, 65535
  %1810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1809)  ; LegacyF16ToF32(value)
  %1811 = lshr i32 %1808, 16
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = add i32 %34, 64
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = lshr i32 %1815, 22
  %1817 = shl nuw nsw i32 %1816, 5
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = shl i32 %1815, 4
  %1820 = and i32 %1819, 32752
  %1821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1820)  ; LegacyF16ToF32(value)
  %1822 = lshr i32 %1815, 7
  %1823 = and i32 %1822, 32752
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1827 = fmul fast float %1826, 1.000000e+03
  %1828 = fmul fast float %341, %1827
  %1829 = call float @dx.op.unary.f32(i32 22, float %1828)  ; Frc(value)
  %1830 = fadd fast float %1829, %331
  %1831 = fmul fast float %342, %1827
  %1832 = call float @dx.op.unary.f32(i32 22, float %1831)  ; Frc(value)
  %1833 = fadd fast float %1832, %333
  %1834 = fmul fast float %1799, %1827
  %1835 = call float @dx.op.unary.f32(i32 22, float %1834)  ; Frc(value)
  %1836 = fmul fast float %1835, 0x401921FB60000000
  %1837 = fadd fast float %1836, %1818
  %1838 = call float @dx.op.unary.f32(i32 13, float %1837)  ; Sin(value)
  %1839 = call float @dx.op.unary.f32(i32 12, float %1837)  ; Cos(value)
  %1840 = fsub fast float -0.000000e+00, %1838
  %1841 = fadd fast float %1792, -5.000000e-01
  %1842 = fadd fast float %1793, -5.000000e-01
  %1843 = fmul fast float %1810, %1841
  %1844 = fmul fast float %1812, %1842
  %1845 = fadd fast float %1843, 5.000000e-01
  %1846 = fadd fast float %1844, 5.000000e-01
  %1847 = fmul fast float %1821, %1845
  %1848 = fmul fast float %1824, %1846
  %1849 = fmul fast float %1839, %1847
  %1850 = call float @dx.op.tertiary.f32(i32 46, float %1840, float %1848, float %1849)  ; FMad(a,b,c)
  %1851 = fmul fast float %1838, %1847
  %1852 = call float @dx.op.tertiary.f32(i32 46, float %1839, float %1848, float %1851)  ; FMad(a,b,c)
  %1853 = fadd fast float %1830, %1850
  %1854 = fadd fast float %1833, %1852
  %1855 = icmp ugt i32 %1804, 1
  %1856 = icmp ugt i32 %1802, 33554431
  %1857 = or i1 %1856, %1855
  br i1 %1857, label %1858, label %1883

; <label>:1858                                    ; preds = %1785
  %1859 = add i32 %34, 260
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = lshr i32 %1861, 16
  %1863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1862)  ; LegacyF16ToF32(value)
  %1864 = fmul fast float %1826, %1863
  %1865 = call float @dx.op.unary.f32(i32 22, float %1864)  ; Frc(value)
  %1866 = mul nuw nsw i32 %1804, %1805
  %1867 = uitofp i32 %1866 to float
  %1868 = fmul fast float %1865, %1867
  %1869 = call float @dx.op.unary.f32(i32 27, float %1868)  ; Round_ni(value)
  %1870 = fptoui float %1869 to i32
  %1871 = urem i32 %1870, %1804
  %1872 = udiv i32 %1870, %1805
  %1873 = call float @dx.op.unary.f32(i32 22, float %1853)  ; Frc(value)
  %1874 = call float @dx.op.unary.f32(i32 22, float %1854)  ; Frc(value)
  %1875 = uitofp i32 %1871 to float
  %1876 = uitofp i32 %1872 to float
  %1877 = fadd fast float %1873, %1875
  %1878 = fadd fast float %1874, %1876
  %1879 = uitofp i32 %1804 to float
  %1880 = uitofp i32 %1805 to float
  %1881 = fdiv fast float %1877, %1879
  %1882 = fdiv fast float %1878, %1880
  br label %1883

; <label>:1883                                    ; preds = %1858, %1785
  %1884 = phi float [ %1881, %1858 ], [ %1853, %1785 ]
  %1885 = phi float [ %1882, %1858 ], [ %1854, %1785 ]
  %1886 = and i32 %1779, 256
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %1934, label %1888

; <label>:1888                                    ; preds = %1883
  %1889 = add i32 %34, 432
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = add i32 %1891, 0
  %1893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1893, %dx.types.Handle %80, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = add i32 %34, 132
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = shl i32 %1898, 4
  %1900 = and i32 %1899, 32752
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = lshr i32 %1898, 7
  %1903 = and i32 %1902, 32752
  %1904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1903)  ; LegacyF16ToF32(value)
  %1905 = fsub fast float 1.000000e+00, %440
  %1906 = call float @dx.op.binary.f32(i32 35, float %1905, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1907 = bitcast float %440 to i32
  %1908 = sitofp i32 %1907 to float
  %1909 = fadd fast float %1908, 0xC1CFBF8940000000
  %1910 = fmul fast float %1904, %1909
  %1911 = fadd fast float %1910, 0x41CFBF8940000000
  %1912 = fptosi float %1911 to i32
  %1913 = bitcast i32 %1912 to float
  %1914 = bitcast float %1906 to i32
  %1915 = sitofp i32 %1914 to float
  %1916 = fadd fast float %1915, 0xC1CFBF8940000000
  %1917 = fmul fast float %1916, %1904
  %1918 = fadd fast float %1917, 0x41CFBF8940000000
  %1919 = fptosi float %1918 to i32
  %1920 = bitcast i32 %1919 to float
  %1921 = fmul fast float %1913, %1901
  %1922 = fmul fast float %1920, %1901
  %1923 = fsub fast float %1906, %1921
  %1924 = fadd fast float %1922, %1906
  %1925 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1926 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1927 = fsub fast float %1895, %1925
  %1928 = fsub fast float %1926, %1925
  %1929 = bitcast float %1928 to i32
  %1930 = sub nsw i32 2129859010, %1929
  %1931 = bitcast i32 %1930 to float
  %1932 = fmul fast float %1931, %1927
  %1933 = call float @dx.op.unary.f32(i32 7, float %1932)  ; Saturate(value)
  br label %1934

; <label>:1934                                    ; preds = %1888, %1883
  %1935 = phi float [ %1933, %1888 ], [ %440, %1883 ]
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = and i32 %1937, 128
  %1939 = icmp eq i32 %1938, 0
  br i1 %1939, label %1956, label %1940

; <label>:1940                                    ; preds = %1934
  %1941 = add i32 %34, 416
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = add i32 %1943, 0
  %1945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1944, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1946 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1945, %dx.types.Handle %80, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1947 = extractvalue %dx.types.ResRet.f32 %1946, 0
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = and i32 %1949, 524288
  %1951 = icmp ne i32 %1950, 0
  %1952 = fcmp fast ogt float %1947, 0x3FE0101020000000
  %1953 = select i1 %1952, float 1.000000e+00, float 0.000000e+00
  %1954 = select i1 %1951, float %1953, float %1947
  %1955 = fmul fast float %1954, %1935
  br label %1956

; <label>:1956                                    ; preds = %1940, %1934
  %1957 = phi float [ %1955, %1940 ], [ %1935, %1934 ]
  %1958 = fcmp fast ult float %1957, 0x3F70101020000000
  br i1 %1958, label %2612, label %1959

; <label>:1959                                    ; preds = %1956
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 16
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %2162, label %1964

; <label>:1964                                    ; preds = %1959
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = add i32 %34, 368
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = add i32 %1969, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1971, %dx.types.Handle %79, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.ResRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.ResRet.f32 %1972, 2
  %1976 = extractvalue %dx.types.ResRet.f32 %1972, 3
  %1977 = and i32 %1966, 255
  %1978 = uitofp i32 %1977 to float
  %1979 = lshr i32 %1966, 8
  %1980 = and i32 %1979, 255
  %1981 = uitofp i32 %1980 to float
  %1982 = fmul fast float %1976, %1978
  %1983 = fadd fast float %1982, %1981
  %1984 = fmul fast float %1983, 0x3F70101000000000
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = and i32 %1986, 512
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %1997, label %1989

; <label>:1989                                    ; preds = %1964
  %1990 = add i32 %34, 448
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = add i32 %1992, 0
  %1994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1994, %dx.types.Handle %80, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1996 = extractvalue %dx.types.ResRet.f32 %1995, 0
  br label %1997

; <label>:1997                                    ; preds = %1989, %1964
  %1998 = phi float [ %1996, %1989 ], [ 1.000000e+00, %1964 ]
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = and i32 %2000, 33554432
  %2002 = icmp eq i32 %2001, 0
  br i1 %2002, label %2109, label %2003

; <label>:2003                                    ; preds = %1997
  %2004 = add i32 %34, 256
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = and i32 %2006, 65535
  %2008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2007)  ; LegacyF16ToF32(value)
  %2009 = lshr i32 %2006, 16
  %2010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2009)  ; LegacyF16ToF32(value)
  %2011 = add i32 %34, 260
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 65535
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = lshr i32 %2017, 24
  %2019 = uitofp i32 %2018 to float
  %2020 = fmul fast float %2019, 0x3F70101020000000
  %2021 = and i32 %2017, 255
  %2022 = uitofp i32 %2021 to float
  %2023 = fmul fast float %2022, 0x3F70101020000000
  %2024 = lshr i32 %2017, 8
  %2025 = and i32 %2024, 255
  %2026 = uitofp i32 %2025 to float
  %2027 = fmul fast float %2026, 0x3F70101020000000
  %2028 = lshr i32 %2017, 16
  %2029 = and i32 %2028, 255
  %2030 = uitofp i32 %2029 to float
  %2031 = fmul fast float %2030, 0x3F70101020000000
  %2032 = add i32 %34, 252
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = lshr i32 %2034, 24
  %2036 = uitofp i32 %2035 to float
  %2037 = fmul fast float %2036, 0x3F70101020000000
  %2038 = and i32 %2034, 255
  %2039 = uitofp i32 %2038 to float
  %2040 = fmul fast float %2039, 0x3F70101020000000
  %2041 = lshr i32 %2034, 8
  %2042 = and i32 %2041, 255
  %2043 = uitofp i32 %2042 to float
  %2044 = fmul fast float %2043, 0x3F70101020000000
  %2045 = lshr i32 %2034, 16
  %2046 = and i32 %2045, 255
  %2047 = uitofp i32 %2046 to float
  %2048 = fmul fast float %2047, 0x3F70101020000000
  %2049 = bitcast float %1973 to i32
  %2050 = ashr i32 %2049, 1
  %2051 = sub nsw i32 1597463174, %2050
  %2052 = bitcast i32 %2051 to float
  %2053 = fmul fast float %1973, 5.000000e-01
  %2054 = fmul fast float %2052, %2052
  %2055 = fmul fast float %2054, %2053
  %2056 = fsub fast float 1.500000e+00, %2055
  %2057 = fmul fast float %2052, %1973
  %2058 = fmul fast float %2057, %2056
  %2059 = bitcast float %1974 to i32
  %2060 = ashr i32 %2059, 1
  %2061 = sub nsw i32 1597463174, %2060
  %2062 = bitcast i32 %2061 to float
  %2063 = fmul fast float %1974, 5.000000e-01
  %2064 = fmul fast float %2062, %2062
  %2065 = fmul fast float %2064, %2063
  %2066 = fsub fast float 1.500000e+00, %2065
  %2067 = fmul fast float %2062, %1974
  %2068 = fmul fast float %2067, %2066
  %2069 = bitcast float %1975 to i32
  %2070 = ashr i32 %2069, 1
  %2071 = sub nsw i32 1597463174, %2070
  %2072 = bitcast i32 %2071 to float
  %2073 = fmul fast float %1975, 5.000000e-01
  %2074 = fmul fast float %2072, %2072
  %2075 = fmul fast float %2074, %2073
  %2076 = fsub fast float 1.500000e+00, %2075
  %2077 = fmul fast float %2072, %1975
  %2078 = fmul fast float %2077, %2076
  %2079 = fsub fast float %2058, %2040
  %2080 = fsub fast float %2068, %2044
  %2081 = fsub fast float %2078, %2048
  %2082 = fmul fast float %2079, %2008
  %2083 = fmul fast float %2080, %2010
  %2084 = fmul fast float %2081, %2015
  %2085 = fadd fast float %2082, %2023
  %2086 = fadd fast float %2083, %2027
  %2087 = fadd fast float %2084, %2031
  %2088 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2089 = call float @dx.op.unary.f32(i32 7, float %2086)  ; Saturate(value)
  %2090 = call float @dx.op.unary.f32(i32 7, float %2087)  ; Saturate(value)
  %2091 = fmul fast float %2088, %2088
  %2092 = fmul fast float %2089, %2089
  %2093 = fmul fast float %2090, %2090
  %2094 = fsub fast float %2091, %1973
  %2095 = fsub fast float %2092, %1974
  %2096 = fsub fast float %2093, %1975
  %2097 = fmul fast float %2094, %1998
  %2098 = fmul fast float %2095, %1998
  %2099 = fmul fast float %2096, %1998
  %2100 = fadd fast float %2097, %1973
  %2101 = fadd fast float %2098, %1974
  %2102 = fadd fast float %2099, %1975
  %2103 = fadd fast float %2020, %1984
  %2104 = fsub fast float %2103, %2037
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2106 = fsub fast float %2105, %1984
  %2107 = fmul fast float %2106, %1998
  %2108 = fadd fast float %2107, %1984
  br label %2162

; <label>:2109                                    ; preds = %1997
  %2110 = and i32 %2000, 134217728
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2146, label %2112

; <label>:2112                                    ; preds = %2109
  %2113 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %2114 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %2115 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2116 = fadd fast float %2113, -5.000000e-01
  %2117 = fadd fast float %2114, -5.000000e-01
  %2118 = fadd fast float %2115, -5.000000e-01
  %2119 = fmul fast float %2116, %1998
  %2120 = fmul fast float %2117, %1998
  %2121 = fmul fast float %2118, %1998
  %2122 = fadd fast float %2119, 5.000000e-01
  %2123 = fadd fast float %2120, 5.000000e-01
  %2124 = fadd fast float %2121, 5.000000e-01
  %2125 = call float @dx.op.unary.f32(i32 24, float %1973)  ; Sqrt(value)
  %2126 = call float @dx.op.unary.f32(i32 24, float %1974)  ; Sqrt(value)
  %2127 = call float @dx.op.unary.f32(i32 24, float %1975)  ; Sqrt(value)
  %2128 = fmul fast float %2122, 2.000000e+00
  %2129 = fsub fast float 1.000000e+00, %2128
  %2130 = fmul fast float %2129, %2125
  %2131 = fadd fast float %2130, %2128
  %2132 = fmul fast float %2131, %2125
  %2133 = fmul fast float %2123, 2.000000e+00
  %2134 = fsub fast float 1.000000e+00, %2133
  %2135 = fmul fast float %2134, %2126
  %2136 = fadd fast float %2135, %2133
  %2137 = fmul fast float %2136, %2126
  %2138 = fmul fast float %2124, 2.000000e+00
  %2139 = fsub fast float 1.000000e+00, %2138
  %2140 = fmul fast float %2139, %2127
  %2141 = fadd fast float %2140, %2138
  %2142 = fmul fast float %2141, %2127
  %2143 = fmul fast float %2132, %2132
  %2144 = fmul fast float %2137, %2137
  %2145 = fmul fast float %2142, %2142
  br label %2162

; <label>:2146                                    ; preds = %2109
  %2147 = fmul fast float %318, %318
  %2148 = fmul fast float %322, %322
  %2149 = fmul fast float %326, %326
  %2150 = fadd fast float %2147, -1.000000e+00
  %2151 = fadd fast float %2148, -1.000000e+00
  %2152 = fadd fast float %2149, -1.000000e+00
  %2153 = fmul fast float %1998, %2150
  %2154 = fmul fast float %1998, %2151
  %2155 = fmul fast float %1998, %2152
  %2156 = fadd fast float %2153, 1.000000e+00
  %2157 = fadd fast float %2154, 1.000000e+00
  %2158 = fadd fast float %2155, 1.000000e+00
  %2159 = fmul fast float %2156, %1973
  %2160 = fmul fast float %2157, %1974
  %2161 = fmul fast float %2158, %1975
  br label %2162

; <label>:2162                                    ; preds = %2146, %2112, %2003, %1959
  %2163 = phi float [ %2108, %2003 ], [ %1984, %2112 ], [ %1984, %2146 ], [ 0x3FA23C0BE0000000, %1959 ]
  %2164 = phi float [ %2100, %2003 ], [ %2143, %2112 ], [ %2159, %2146 ], [ 1.000000e+00, %1959 ]
  %2165 = phi float [ %2101, %2003 ], [ %2144, %2112 ], [ %2160, %2146 ], [ 1.000000e+00, %1959 ]
  %2166 = phi float [ %2102, %2003 ], [ %2145, %2112 ], [ %2161, %2146 ], [ 1.000000e+00, %1959 ]
  %2167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.i32 %2167, 1
  %2169 = and i32 %2168, 1
  %2170 = icmp ne i32 %2169, 0
  %2171 = add i32 %34, 356
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = and i32 %2173, 32
  %2175 = icmp ne i32 %2174, 0
  %2176 = and i1 %2170, %2175
  %2177 = select i1 %2176, float 1.000000e+00, float %2164
  %2178 = select i1 %2176, float 0x3FD3333340000000, float %2165
  %2179 = select i1 %2176, float 0x3FD3333340000000, float %2166
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 32
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %2256, label %2184

; <label>:2184                                    ; preds = %2162
  %2185 = add i32 %34, 124
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = add i32 %34, 384
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = add i32 %2190, 0
  %2192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2192, %dx.types.Handle %79, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2194 = extractvalue %dx.types.ResRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.ResRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.ResRet.f32 %2193, 2
  %2197 = extractvalue %dx.types.ResRet.f32 %2193, 3
  %2198 = and i32 %2187, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = lshr i32 %2187, 8
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = lshr i32 %2187, 16
  %2204 = and i32 %2203, 255
  %2205 = uitofp i32 %2204 to float
  %2206 = fmul fast float %2205, 0x3F70101000000000
  %2207 = fmul fast float %2194, %2199
  %2208 = fadd fast float %2207, %2202
  %2209 = fmul fast float %2208, 0x3F70101000000000
  %2210 = fadd fast float %2195, -5.000000e-01
  %2211 = fadd fast float %2197, -5.000000e-01
  %2212 = fmul fast float %2210, %2206
  %2213 = fmul fast float %2211, %2206
  %2214 = fadd fast float %2212, 5.000000e-01
  %2215 = fadd fast float %2213, 5.000000e-01
  %2216 = fmul fast float %2214, 2.000000e+00
  %2217 = fadd fast float %2216, -1.000000e+00
  %2218 = fmul fast float %2215, 2.000000e+00
  %2219 = fadd fast float %2218, -1.000000e+00
  %2220 = fadd fast float %2217, %2219
  %2221 = fmul fast float %2220, 5.000000e-01
  %2222 = fsub fast float %2217, %2219
  %2223 = fmul fast float %2222, 5.000000e-01
  %2224 = call float @dx.op.unary.f32(i32 6, float %2221)  ; FAbs(value)
  %2225 = fsub fast float 1.000000e+00, %2224
  %2226 = call float @dx.op.unary.f32(i32 6, float %2223)  ; FAbs(value)
  %2227 = fsub fast float %2225, %2226
  %2228 = call float @dx.op.dot3.f32(i32 55, float %2221, float %2223, float %2227, float %2221, float %2223, float %2227)  ; Dot3(ax,ay,az,bx,by,bz)
  %2229 = call float @dx.op.unary.f32(i32 25, float %2228)  ; Rsqrt(value)
  %2230 = fmul fast float %2221, %2229
  %2231 = fmul fast float %2223, %2229
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 67108864
  %2235 = icmp eq i32 %2234, 0
  br i1 %2235, label %2252, label %2236

; <label>:2236                                    ; preds = %2184
  %2237 = add i32 %34, 312
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 65535
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 65535
  %2245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2244)  ; LegacyF16ToF32(value)
  %2246 = lshr i32 %2239, 16
  %2247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2246)  ; LegacyF16ToF32(value)
  %2248 = fsub fast float %2209, %2247
  %2249 = fmul fast float %2248, %2241
  %2250 = fadd fast float %2249, %2245
  %2251 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  br label %2252

; <label>:2252                                    ; preds = %2236, %2184
  %2253 = phi float [ %2251, %2236 ], [ %2209, %2184 ]
  %2254 = call float @dx.op.dot2.f32(i32 54, float %2230, float %2231, float %1788, float %1789)  ; Dot2(ax,ay,bx,by)
  %2255 = call float @dx.op.dot2.f32(i32 54, float %2230, float %2231, float %1790, float %1791)  ; Dot2(ax,ay,bx,by)
  br label %2256

; <label>:2256                                    ; preds = %2252, %2162
  %2257 = phi float [ %2253, %2252 ], [ 0x3FD6666660000000, %2162 ]
  %2258 = phi float [ %2254, %2252 ], [ 0.000000e+00, %2162 ]
  %2259 = phi float [ %2255, %2252 ], [ 0.000000e+00, %2162 ]
  %2260 = phi float [ %2196, %2252 ], [ 1.000000e+00, %2162 ]
  %2261 = add i32 %34, 192
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = lshr i32 %2263, 22
  %2265 = shl nuw nsw i32 %2264, 5
  %2266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2265)  ; LegacyF16ToF32(value)
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = and i32 %2268, 64
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2304, label %2271

; <label>:2271                                    ; preds = %2256
  %2272 = add i32 %34, 400
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = add i32 %2274, 0
  %2276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 131072
  %2280 = icmp eq i32 %2279, 0
  %2281 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2276, %dx.types.Handle %79, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.ResRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.ResRet.f32 %2281, 2
  %2285 = fmul fast float %2282, %306
  %2286 = fmul fast float %2283, %309
  %2287 = fmul fast float %2284, %312
  br i1 %2280, label %2294, label %2288

; <label>:2288                                    ; preds = %2271
  %2289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.f32 %2289, 0
  %2291 = fmul fast float %2290, %2285
  %2292 = fmul fast float %2290, %2286
  %2293 = fmul fast float %2290, %2287
  br label %2294

; <label>:2294                                    ; preds = %2288, %2271
  %2295 = phi float [ %2291, %2288 ], [ %2285, %2271 ]
  %2296 = phi float [ %2292, %2288 ], [ %2286, %2271 ]
  %2297 = phi float [ %2293, %2288 ], [ %2287, %2271 ]
  %2298 = fmul fast float %2295, %2266
  %2299 = select i1 %205, float %2298, float %2295
  %2300 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2296, float %2297, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2301 = select i1 %205, float 0.000000e+00, float %2295
  %2302 = select i1 %205, float %2300, float %2296
  %2303 = select i1 %205, float 0.000000e+00, float %2297
  br label %2304

; <label>:2304                                    ; preds = %2294, %2256
  %2305 = phi float [ %2301, %2294 ], [ 0.000000e+00, %2256 ]
  %2306 = phi float [ %2302, %2294 ], [ 0.000000e+00, %2256 ]
  %2307 = phi float [ %2303, %2294 ], [ 0.000000e+00, %2256 ]
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 1024
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2342, label %2312

; <label>:2312                                    ; preds = %2304
  %2313 = add i32 %34, 184
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = and i32 %2315, 255
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2317, 0x3F70101020000000
  %2319 = lshr i32 %2315, 8
  %2320 = and i32 %2319, 255
  %2321 = uitofp i32 %2320 to float
  %2322 = fmul fast float %2321, 0x3F70101020000000
  %2323 = lshr i32 %2315, 16
  %2324 = and i32 %2323, 255
  %2325 = uitofp i32 %2324 to float
  %2326 = fmul fast float %2325, 0x3F70101020000000
  %2327 = fmul fast float %2318, %2318
  %2328 = fmul fast float %2322, %2322
  %2329 = fmul fast float %2326, %2326
  %2330 = add i32 %34, 464
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = add i32 %2332, 0
  %2334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2334, %dx.types.Handle %80, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2336 = extractvalue %dx.types.ResRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.ResRet.f32 %2335, 2
  %2339 = fmul fast float %2327, %2336
  %2340 = fmul fast float %2328, %2337
  %2341 = fmul fast float %2329, %2338
  br label %2342

; <label>:2342                                    ; preds = %2312, %2304
  %2343 = phi float [ %2339, %2312 ], [ 0.000000e+00, %2304 ]
  %2344 = phi float [ %2340, %2312 ], [ 0.000000e+00, %2304 ]
  %2345 = phi float [ %2341, %2312 ], [ 0.000000e+00, %2304 ]
  %2346 = fcmp fast ogt float %2343, 0.000000e+00
  %2347 = fcmp fast ogt float %2344, 0.000000e+00
  %2348 = fcmp fast ogt float %2345, 0.000000e+00
  %2349 = call float @dx.op.unary.f32(i32 23, float %2343)  ; Log(value)
  %2350 = call float @dx.op.unary.f32(i32 23, float %2344)  ; Log(value)
  %2351 = call float @dx.op.unary.f32(i32 23, float %2345)  ; Log(value)
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = lshr i32 %2353, 7
  %2355 = and i32 %2354, 32752
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = fmul fast float %2349, 0xBFE62E4300000000
  %2358 = fmul fast float %2357, %2356
  %2359 = fmul fast float %2350, 0xBFE62E4300000000
  %2360 = fmul fast float %2359, %2356
  %2361 = fmul fast float %2351, 0xBFE62E4300000000
  %2362 = fmul fast float %2361, %2356
  %2363 = select i1 %2346, float %2358, float 1.270000e+02
  %2364 = select i1 %2347, float %2360, float 1.270000e+02
  %2365 = select i1 %2348, float %2362, float 1.270000e+02
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 10240
  %2369 = icmp eq i32 %2368, 0
  br i1 %2369, label %2390, label %2370

; <label>:2370                                    ; preds = %2342
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 2048
  %2374 = icmp eq i32 %2373, 0
  br i1 %2374, label %2390, label %2375

; <label>:2375                                    ; preds = %2370
  %2376 = add i32 %34, 480
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = add i32 %2378, 0
  %2380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2380, %dx.types.Handle %80, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 3
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = shl i32 %2384, 4
  %2386 = and i32 %2385, 32752
  %2387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2386)  ; LegacyF16ToF32(value)
  %2388 = fmul fast float %2387, %2382
  %2389 = call float @dx.op.binary.f32(i32 35, float %2388, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2390

; <label>:2390                                    ; preds = %2375, %2370, %2342
  %2391 = phi float [ %2389, %2375 ], [ 0x3F70101020000000, %2370 ], [ 0x3F70101020000000, %2342 ]
  %2392 = add i32 %34, 128
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 255
  %2396 = uitofp i32 %2395 to float
  %2397 = lshr i32 %2394, 8
  %2398 = and i32 %2397, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2177, float %2178, float %2179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = fmul fast float %2399, %2400
  %2402 = fadd fast float %2401, %2396
  %2403 = fmul fast float %2402, 0x3F70101020000000
  %2404 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  br i1 %1776, label %2405, label %2440

; <label>:2405                                    ; preds = %2390
  %2406 = fmul fast float %2391, 2.000000e+00
  %2407 = fcmp fast olt float %2363, 1.270000e+02
  %2408 = fcmp fast olt float %2364, 1.270000e+02
  %2409 = fcmp fast olt float %2365, 1.270000e+02
  %2410 = fmul fast float %2363, 0xBFF7154760000000
  %2411 = fmul fast float %2410, %2406
  %2412 = fmul fast float %2364, 0xBFF7154760000000
  %2413 = fmul fast float %2412, %2406
  %2414 = fmul fast float %2365, 0xBFF7154760000000
  %2415 = fmul fast float %2414, %2406
  %2416 = call float @dx.op.unary.f32(i32 21, float %2411)  ; Exp(value)
  %2417 = call float @dx.op.unary.f32(i32 21, float %2413)  ; Exp(value)
  %2418 = call float @dx.op.unary.f32(i32 21, float %2415)  ; Exp(value)
  %2419 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2420 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2421 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2422 = fadd fast float %2419, -1.000000e+00
  %2423 = select i1 %2407, float %2422, float -1.000000e+00
  %2424 = fadd fast float %2420, -1.000000e+00
  %2425 = select i1 %2408, float %2424, float -1.000000e+00
  %2426 = fadd fast float %2421, -1.000000e+00
  %2427 = select i1 %2409, float %2426, float -1.000000e+00
  %2428 = fmul fast float %2423, %1957
  %2429 = fmul fast float %2425, %1957
  %2430 = fmul fast float %2427, %1957
  %2431 = fadd fast float %2428, 1.000000e+00
  %2432 = fadd fast float %2429, 1.000000e+00
  %2433 = fadd fast float %2430, 1.000000e+00
  %2434 = fmul fast float %2431, %1765
  %2435 = fmul fast float %2432, %1766
  %2436 = fmul fast float %2433, %1767
  %2437 = fmul fast float %2431, %1768
  %2438 = fmul fast float %2432, %1769
  %2439 = fmul fast float %2433, %1770
  br label %2440

; <label>:2440                                    ; preds = %2405, %2390
  %2441 = phi float [ %2434, %2405 ], [ %1765, %2390 ]
  %2442 = phi float [ %2435, %2405 ], [ %1766, %2390 ]
  %2443 = phi float [ %2436, %2405 ], [ %1767, %2390 ]
  %2444 = phi float [ %2437, %2405 ], [ %1768, %2390 ]
  %2445 = phi float [ %2438, %2405 ], [ %1769, %2390 ]
  %2446 = phi float [ %2439, %2405 ], [ %1770, %2390 ]
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 3
  %2450 = icmp eq i32 %2449, 3
  br i1 %2450, label %2529, label %2451

; <label>:2451                                    ; preds = %2440
  %2452 = and i32 %2448, 16
  %2453 = icmp ne i32 %2452, 0
  %2454 = select i1 %2453, float %1957, float 0.000000e+00
  %2455 = icmp eq i32 %2449, 0
  br i1 %2455, label %2456, label %2484

; <label>:2456                                    ; preds = %2451
  %2457 = and i32 %2448, 64
  %2458 = icmp ne i32 %2457, 0
  %2459 = select i1 %2458, float %1957, float 0.000000e+00
  %2460 = fsub fast float %2177, %2441
  %2461 = fsub fast float %2178, %2442
  %2462 = fsub fast float %2179, %2443
  %2463 = fmul fast float %2454, %2460
  %2464 = fmul fast float %2454, %2461
  %2465 = fmul fast float %2454, %2462
  %2466 = fadd fast float %2463, %2441
  %2467 = fadd fast float %2464, %2442
  %2468 = fadd fast float %2465, %2443
  %2469 = fsub fast float %2163, %1771
  %2470 = fmul fast float %2454, %2469
  %2471 = fadd fast float %2470, %1771
  %2472 = fsub fast float %2305, %2444
  %2473 = fsub fast float %2306, %2445
  %2474 = fsub fast float %2307, %2446
  %2475 = fmul fast float %2459, %2472
  %2476 = fmul fast float %2459, %2473
  %2477 = fmul fast float %2459, %2474
  %2478 = fadd fast float %2475, %2444
  %2479 = fadd fast float %2476, %2445
  %2480 = fadd fast float %2477, %2446
  %2481 = fsub fast float %2404, %1774
  %2482 = fmul fast float %2454, %2481
  %2483 = fadd fast float %2482, %1774
  br label %2529

; <label>:2484                                    ; preds = %2451
  %2485 = icmp eq i32 %2449, 1
  br i1 %2485, label %2486, label %2499

; <label>:2486                                    ; preds = %2484
  %2487 = fadd fast float %2177, -1.000000e+00
  %2488 = fadd fast float %2178, -1.000000e+00
  %2489 = fadd fast float %2179, -1.000000e+00
  %2490 = fmul fast float %2454, %2487
  %2491 = fmul fast float %2454, %2488
  %2492 = fmul fast float %2454, %2489
  %2493 = fadd fast float %2490, 1.000000e+00
  %2494 = fadd fast float %2491, 1.000000e+00
  %2495 = fadd fast float %2492, 1.000000e+00
  %2496 = fmul fast float %2493, %2441
  %2497 = fmul fast float %2494, %2442
  %2498 = fmul fast float %2495, %2443
  br label %2529

; <label>:2499                                    ; preds = %2484
  %2500 = icmp eq i32 %2449, 2
  br i1 %2500, label %2501, label %2529

; <label>:2501                                    ; preds = %2499
  %2502 = call float @dx.op.unary.f32(i32 24, float %2177)  ; Sqrt(value)
  %2503 = call float @dx.op.unary.f32(i32 24, float %2178)  ; Sqrt(value)
  %2504 = call float @dx.op.unary.f32(i32 24, float %2179)  ; Sqrt(value)
  %2505 = fadd fast float %2502, -5.000000e-01
  %2506 = fadd fast float %2503, -5.000000e-01
  %2507 = fadd fast float %2504, -5.000000e-01
  %2508 = fmul fast float %2505, %2454
  %2509 = fmul fast float %2506, %2454
  %2510 = fmul fast float %2507, %2454
  %2511 = fadd fast float %2508, 5.000000e-01
  %2512 = fadd fast float %2509, 5.000000e-01
  %2513 = fadd fast float %2510, 5.000000e-01
  %2514 = fmul fast float %2511, 2.000000e+00
  %2515 = fsub fast float 1.000000e+00, %2514
  %2516 = fmul fast float %2515, %2441
  %2517 = fadd fast float %2516, %2514
  %2518 = fmul fast float %2517, %2441
  %2519 = fmul fast float %2512, 2.000000e+00
  %2520 = fsub fast float 1.000000e+00, %2519
  %2521 = fmul fast float %2520, %2442
  %2522 = fadd fast float %2521, %2519
  %2523 = fmul fast float %2522, %2442
  %2524 = fmul fast float %2513, 2.000000e+00
  %2525 = fsub fast float 1.000000e+00, %2524
  %2526 = fmul fast float %2525, %2443
  %2527 = fadd fast float %2526, %2524
  %2528 = fmul fast float %2527, %2443
  br label %2529

; <label>:2529                                    ; preds = %2501, %2499, %2486, %2456, %2440
  %2530 = phi float [ %2441, %2440 ], [ %2518, %2501 ], [ %2441, %2499 ], [ %2496, %2486 ], [ %2466, %2456 ]
  %2531 = phi float [ %2442, %2440 ], [ %2523, %2501 ], [ %2442, %2499 ], [ %2497, %2486 ], [ %2467, %2456 ]
  %2532 = phi float [ %2443, %2440 ], [ %2528, %2501 ], [ %2443, %2499 ], [ %2498, %2486 ], [ %2468, %2456 ]
  %2533 = phi float [ %2444, %2440 ], [ %2444, %2501 ], [ %2444, %2499 ], [ %2444, %2486 ], [ %2478, %2456 ]
  %2534 = phi float [ %2445, %2440 ], [ %2445, %2501 ], [ %2445, %2499 ], [ %2445, %2486 ], [ %2479, %2456 ]
  %2535 = phi float [ %2446, %2440 ], [ %2446, %2501 ], [ %2446, %2499 ], [ %2446, %2486 ], [ %2480, %2456 ]
  %2536 = phi float [ %1771, %2440 ], [ %1771, %2501 ], [ %1771, %2499 ], [ %1771, %2486 ], [ %2471, %2456 ]
  %2537 = phi float [ %1774, %2440 ], [ %1774, %2501 ], [ %1774, %2499 ], [ %1774, %2486 ], [ %2483, %2456 ]
  %2538 = and i32 %2448, 12
  %2539 = icmp eq i32 %2538, 12
  br i1 %2539, label %2612, label %2540

; <label>:2540                                    ; preds = %2529
  %2541 = and i32 %2448, 2097184
  %2542 = icmp eq i32 %2541, 2097184
  %2543 = select i1 %2542, float %1957, float 0.000000e+00
  %2544 = and i32 %2448, 4194336
  %2545 = icmp eq i32 %2544, 4194336
  %2546 = select i1 %2545, float %1957, float 0.000000e+00
  %2547 = and i32 %2448, 8388640
  %2548 = icmp eq i32 %2547, 8388640
  %2549 = select i1 %2548, float %1957, float 0.000000e+00
  %2550 = icmp eq i32 %2538, 0
  br i1 %2550, label %2551, label %2564

; <label>:2551                                    ; preds = %2540
  %2552 = fsub fast float %2258, %1763
  %2553 = fsub fast float %2259, %1764
  %2554 = fmul fast float %2543, %2552
  %2555 = fmul fast float %2543, %2553
  %2556 = fadd fast float %2554, %1763
  %2557 = fadd fast float %2555, %1764
  %2558 = fsub fast float %2260, %1773
  %2559 = fmul fast float %2546, %2558
  %2560 = fadd fast float %2559, %1773
  %2561 = fsub fast float %2257, %1772
  %2562 = fmul fast float %2549, %2561
  %2563 = fadd fast float %2562, %1772
  br label %2612

; <label>:2564                                    ; preds = %2540
  %2565 = icmp eq i32 %2538, 4
  br i1 %2565, label %2566, label %2598

; <label>:2566                                    ; preds = %2564
  %2567 = fmul fast float %2543, %2258
  %2568 = fmul fast float %2543, %2259
  %2569 = fadd fast float %2567, %1763
  %2570 = fadd fast float %2568, %1764
  %2571 = call float @dx.op.binary.f32(i32 36, float %1773, float %2260)  ; FMin(a,b)
  %2572 = fsub fast float %2571, %1773
  %2573 = fmul fast float %2572, %2546
  %2574 = fadd fast float %2573, %1773
  %2575 = fadd fast float %2257, %1772
  %2576 = fmul fast float %2575, 0x3FF337FAE0000000
  %2577 = fmul fast float %1772, %1772
  %2578 = fmul fast float %2257, %2257
  %2579 = fadd fast float %2578, %2577
  %2580 = fmul fast float %2579, 0x3FE5152B00000000
  %2581 = fmul fast float %1772, 0xBFCC1F85E0000000
  %2582 = fmul fast float %2581, %2257
  %2583 = fadd fast float %2582, 0xBFE1363700000000
  %2584 = fadd fast float %2583, %2576
  %2585 = fsub fast float %2584, %2580
  %2586 = fmul fast float %2575, 0x3FBA6F0D00000000
  %2587 = fmul fast float %2579, 0x3FD0432880000000
  %2588 = fmul fast float %1772, 0xBFEF110800000000
  %2589 = fmul fast float %2588, %2257
  %2590 = fadd fast float %2589, 1.000000e+00
  %2591 = fsub fast float %2590, %2586
  %2592 = fadd fast float %2591, %2587
  %2593 = fdiv fast float %2585, %2592
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2595 = fsub fast float %2594, %1772
  %2596 = fmul fast float %2595, %2549
  %2597 = fadd fast float %2596, %1772
  br label %2612

; <label>:2598                                    ; preds = %2564
  %2599 = icmp eq i32 %2538, 8
  br i1 %2599, label %2600, label %2612

; <label>:2600                                    ; preds = %2598
  %2601 = fmul fast float %2543, %2258
  %2602 = fmul fast float %2543, %2259
  %2603 = fadd fast float %2601, %1763
  %2604 = fadd fast float %2602, %1764
  %2605 = call float @dx.op.binary.f32(i32 36, float %1773, float %2260)  ; FMin(a,b)
  %2606 = fsub fast float %2605, %1773
  %2607 = fmul fast float %2606, %2546
  %2608 = fadd fast float %2607, %1773
  %2609 = fsub fast float %2257, %1772
  %2610 = fmul fast float %2549, %2609
  %2611 = fadd fast float %2610, %1772
  br label %2612

; <label>:2612                                    ; preds = %2600, %2598, %2566, %2551, %2529, %1956, %1775, %1762
  %2613 = phi float [ %1763, %2529 ], [ %1763, %1956 ], [ %1763, %1762 ], [ %2603, %2600 ], [ %1763, %2598 ], [ %2569, %2566 ], [ %2556, %2551 ], [ %1763, %1775 ]
  %2614 = phi float [ %1764, %2529 ], [ %1764, %1956 ], [ %1764, %1762 ], [ %2604, %2600 ], [ %1764, %2598 ], [ %2570, %2566 ], [ %2557, %2551 ], [ %1764, %1775 ]
  %2615 = phi float [ %2530, %2529 ], [ %1765, %1956 ], [ %1765, %1762 ], [ %2530, %2600 ], [ %2530, %2598 ], [ %2530, %2566 ], [ %2530, %2551 ], [ %1765, %1775 ]
  %2616 = phi float [ %2531, %2529 ], [ %1766, %1956 ], [ %1766, %1762 ], [ %2531, %2600 ], [ %2531, %2598 ], [ %2531, %2566 ], [ %2531, %2551 ], [ %1766, %1775 ]
  %2617 = phi float [ %2532, %2529 ], [ %1767, %1956 ], [ %1767, %1762 ], [ %2532, %2600 ], [ %2532, %2598 ], [ %2532, %2566 ], [ %2532, %2551 ], [ %1767, %1775 ]
  %2618 = phi float [ %2533, %2529 ], [ %1768, %1956 ], [ %1768, %1762 ], [ %2533, %2600 ], [ %2533, %2598 ], [ %2533, %2566 ], [ %2533, %2551 ], [ %1768, %1775 ]
  %2619 = phi float [ %2534, %2529 ], [ %1769, %1956 ], [ %1769, %1762 ], [ %2534, %2600 ], [ %2534, %2598 ], [ %2534, %2566 ], [ %2534, %2551 ], [ %1769, %1775 ]
  %2620 = phi float [ %2535, %2529 ], [ %1770, %1956 ], [ %1770, %1762 ], [ %2535, %2600 ], [ %2535, %2598 ], [ %2535, %2566 ], [ %2535, %2551 ], [ %1770, %1775 ]
  %2621 = phi float [ %2536, %2529 ], [ %1771, %1956 ], [ %1771, %1762 ], [ %2536, %2600 ], [ %2536, %2598 ], [ %2536, %2566 ], [ %2536, %2551 ], [ %1771, %1775 ]
  %2622 = phi float [ %1772, %2529 ], [ %1772, %1956 ], [ %1772, %1762 ], [ %2611, %2600 ], [ %1772, %2598 ], [ %2597, %2566 ], [ %2563, %2551 ], [ %1772, %1775 ]
  %2623 = phi float [ %1773, %2529 ], [ %1773, %1956 ], [ %1773, %1762 ], [ %2608, %2600 ], [ %1773, %2598 ], [ %2574, %2566 ], [ %2560, %2551 ], [ %1773, %1775 ]
  %2624 = phi float [ %2537, %2529 ], [ %1774, %1956 ], [ %1774, %1762 ], [ %2537, %2600 ], [ %2537, %2598 ], [ %2537, %2566 ], [ %2537, %2551 ], [ %1774, %1775 ]
  br i1 %393, label %3462, label %2625

; <label>:2625                                    ; preds = %2612
  %2626 = icmp ult i32 %444, 4
  %2627 = add i32 %34, 72
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = add i32 %34, 76
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = or i32 %2632, %2629
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %3462, label %2635

; <label>:2635                                    ; preds = %2625
  %2636 = and i32 %2629, 262144
  %2637 = icmp ne i32 %2636, 0
  %2638 = select i1 %2637, float %39, float 1.000000e+00
  %2639 = select i1 %2637, float %40, float 0.000000e+00
  %2640 = select i1 %2637, float %41, float 0.000000e+00
  %2641 = select i1 %2637, float %42, float 1.000000e+00
  %2642 = select i1 %2637, float %43, float %71
  %2643 = select i1 %2637, float %44, float %72
  %2644 = add i32 %34, 332
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = lshr i32 %2646, 16
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = fmul fast float %2648, 0x3F50624DE0000000
  %2650 = add i32 %34, 136
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = lshr i32 %2652, 16
  %2654 = and i32 %2653, 255
  %2655 = lshr i32 %2652, 24
  %2656 = add i32 %34, 340
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = and i32 %2658, 65535
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = lshr i32 %2658, 16
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = add i32 %34, 80
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = lshr i32 %2665, 22
  %2667 = shl nuw nsw i32 %2666, 5
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = shl i32 %2665, 4
  %2670 = and i32 %2669, 32752
  %2671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2670)  ; LegacyF16ToF32(value)
  %2672 = lshr i32 %2665, 7
  %2673 = and i32 %2672, 32752
  %2674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2673)  ; LegacyF16ToF32(value)
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 3
  %2677 = fmul fast float %2676, 1.000000e+03
  %2678 = fmul fast float %383, %2677
  %2679 = call float @dx.op.unary.f32(i32 22, float %2678)  ; Frc(value)
  %2680 = fadd fast float %2679, %373
  %2681 = fmul fast float %384, %2677
  %2682 = call float @dx.op.unary.f32(i32 22, float %2681)  ; Frc(value)
  %2683 = fadd fast float %2682, %375
  %2684 = fmul fast float %2649, %2677
  %2685 = call float @dx.op.unary.f32(i32 22, float %2684)  ; Frc(value)
  %2686 = fmul fast float %2685, 0x401921FB60000000
  %2687 = fadd fast float %2686, %2668
  %2688 = call float @dx.op.unary.f32(i32 13, float %2687)  ; Sin(value)
  %2689 = call float @dx.op.unary.f32(i32 12, float %2687)  ; Cos(value)
  %2690 = fsub fast float -0.000000e+00, %2688
  %2691 = fadd fast float %2642, -5.000000e-01
  %2692 = fadd fast float %2643, -5.000000e-01
  %2693 = fmul fast float %2660, %2691
  %2694 = fmul fast float %2662, %2692
  %2695 = fadd fast float %2693, 5.000000e-01
  %2696 = fadd fast float %2694, 5.000000e-01
  %2697 = fmul fast float %2671, %2695
  %2698 = fmul fast float %2674, %2696
  %2699 = fmul fast float %2689, %2697
  %2700 = call float @dx.op.tertiary.f32(i32 46, float %2690, float %2698, float %2699)  ; FMad(a,b,c)
  %2701 = fmul fast float %2688, %2697
  %2702 = call float @dx.op.tertiary.f32(i32 46, float %2689, float %2698, float %2701)  ; FMad(a,b,c)
  %2703 = fadd fast float %2680, %2700
  %2704 = fadd fast float %2683, %2702
  %2705 = icmp ugt i32 %2654, 1
  %2706 = icmp ugt i32 %2652, 33554431
  %2707 = or i1 %2706, %2705
  br i1 %2707, label %2708, label %2733

; <label>:2708                                    ; preds = %2635
  %2709 = add i32 %34, 276
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = lshr i32 %2711, 16
  %2713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2712)  ; LegacyF16ToF32(value)
  %2714 = fmul fast float %2676, %2713
  %2715 = call float @dx.op.unary.f32(i32 22, float %2714)  ; Frc(value)
  %2716 = mul nuw nsw i32 %2654, %2655
  %2717 = uitofp i32 %2716 to float
  %2718 = fmul fast float %2715, %2717
  %2719 = call float @dx.op.unary.f32(i32 27, float %2718)  ; Round_ni(value)
  %2720 = fptoui float %2719 to i32
  %2721 = urem i32 %2720, %2654
  %2722 = udiv i32 %2720, %2655
  %2723 = call float @dx.op.unary.f32(i32 22, float %2703)  ; Frc(value)
  %2724 = call float @dx.op.unary.f32(i32 22, float %2704)  ; Frc(value)
  %2725 = uitofp i32 %2721 to float
  %2726 = uitofp i32 %2722 to float
  %2727 = fadd fast float %2723, %2725
  %2728 = fadd fast float %2724, %2726
  %2729 = uitofp i32 %2654 to float
  %2730 = uitofp i32 %2655 to float
  %2731 = fdiv fast float %2727, %2729
  %2732 = fdiv fast float %2728, %2730
  br label %2733

; <label>:2733                                    ; preds = %2708, %2635
  %2734 = phi float [ %2731, %2708 ], [ %2703, %2635 ]
  %2735 = phi float [ %2732, %2708 ], [ %2704, %2635 ]
  %2736 = and i32 %2629, 256
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2784, label %2738

; <label>:2738                                    ; preds = %2733
  %2739 = add i32 %34, 436
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = add i32 %2741, 0
  %2743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2743, %dx.types.Handle %80, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = add i32 %34, 148
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = shl i32 %2748, 4
  %2750 = and i32 %2749, 32752
  %2751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2750)  ; LegacyF16ToF32(value)
  %2752 = lshr i32 %2748, 7
  %2753 = and i32 %2752, 32752
  %2754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2753)  ; LegacyF16ToF32(value)
  %2755 = fsub fast float 1.000000e+00, %439
  %2756 = call float @dx.op.binary.f32(i32 35, float %2755, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2757 = bitcast float %439 to i32
  %2758 = sitofp i32 %2757 to float
  %2759 = fadd fast float %2758, 0xC1CFBF8940000000
  %2760 = fmul fast float %2754, %2759
  %2761 = fadd fast float %2760, 0x41CFBF8940000000
  %2762 = fptosi float %2761 to i32
  %2763 = bitcast i32 %2762 to float
  %2764 = bitcast float %2756 to i32
  %2765 = sitofp i32 %2764 to float
  %2766 = fadd fast float %2765, 0xC1CFBF8940000000
  %2767 = fmul fast float %2766, %2754
  %2768 = fadd fast float %2767, 0x41CFBF8940000000
  %2769 = fptosi float %2768 to i32
  %2770 = bitcast i32 %2769 to float
  %2771 = fmul fast float %2763, %2751
  %2772 = fmul fast float %2770, %2751
  %2773 = fsub fast float %2756, %2771
  %2774 = fadd fast float %2772, %2756
  %2775 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  %2776 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2777 = fsub fast float %2745, %2775
  %2778 = fsub fast float %2776, %2775
  %2779 = bitcast float %2778 to i32
  %2780 = sub nsw i32 2129859010, %2779
  %2781 = bitcast i32 %2780 to float
  %2782 = fmul fast float %2781, %2777
  %2783 = call float @dx.op.unary.f32(i32 7, float %2782)  ; Saturate(value)
  br label %2784

; <label>:2784                                    ; preds = %2738, %2733
  %2785 = phi float [ %2783, %2738 ], [ %439, %2733 ]
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = and i32 %2787, 128
  %2789 = icmp eq i32 %2788, 0
  br i1 %2789, label %2806, label %2790

; <label>:2790                                    ; preds = %2784
  %2791 = add i32 %34, 420
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = add i32 %2793, 0
  %2795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2795, %dx.types.Handle %80, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2797 = extractvalue %dx.types.ResRet.f32 %2796, 0
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = and i32 %2799, 524288
  %2801 = icmp ne i32 %2800, 0
  %2802 = fcmp fast ogt float %2797, 0x3FE0101020000000
  %2803 = select i1 %2802, float 1.000000e+00, float 0.000000e+00
  %2804 = select i1 %2801, float %2803, float %2797
  %2805 = fmul fast float %2804, %2785
  br label %2806

; <label>:2806                                    ; preds = %2790, %2784
  %2807 = phi float [ %2805, %2790 ], [ %2785, %2784 ]
  %2808 = fcmp fast ult float %2807, 0x3F70101020000000
  br i1 %2808, label %3462, label %2809

; <label>:2809                                    ; preds = %2806
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = and i32 %2811, 16
  %2813 = icmp eq i32 %2812, 0
  br i1 %2813, label %3012, label %2814

; <label>:2814                                    ; preds = %2809
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = add i32 %34, 372
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = add i32 %2819, 0
  %2821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2822 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2821, %dx.types.Handle %79, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2823 = extractvalue %dx.types.ResRet.f32 %2822, 0
  %2824 = extractvalue %dx.types.ResRet.f32 %2822, 1
  %2825 = extractvalue %dx.types.ResRet.f32 %2822, 2
  %2826 = extractvalue %dx.types.ResRet.f32 %2822, 3
  %2827 = and i32 %2816, 255
  %2828 = uitofp i32 %2827 to float
  %2829 = lshr i32 %2816, 8
  %2830 = and i32 %2829, 255
  %2831 = uitofp i32 %2830 to float
  %2832 = fmul fast float %2826, %2828
  %2833 = fadd fast float %2832, %2831
  %2834 = fmul fast float %2833, 0x3F70101000000000
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 512
  %2838 = icmp eq i32 %2837, 0
  br i1 %2838, label %2847, label %2839

; <label>:2839                                    ; preds = %2814
  %2840 = add i32 %34, 452
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = add i32 %2842, 0
  %2844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2845 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2844, %dx.types.Handle %80, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2846 = extractvalue %dx.types.ResRet.f32 %2845, 0
  br label %2847

; <label>:2847                                    ; preds = %2839, %2814
  %2848 = phi float [ %2846, %2839 ], [ 1.000000e+00, %2814 ]
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = and i32 %2850, 33554432
  %2852 = icmp eq i32 %2851, 0
  br i1 %2852, label %2959, label %2853

; <label>:2853                                    ; preds = %2847
  %2854 = add i32 %34, 272
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = and i32 %2856, 65535
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = lshr i32 %2856, 16
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = add i32 %34, 276
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = and i32 %2863, 65535
  %2865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2864)  ; LegacyF16ToF32(value)
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = lshr i32 %2867, 24
  %2869 = uitofp i32 %2868 to float
  %2870 = fmul fast float %2869, 0x3F70101020000000
  %2871 = and i32 %2867, 255
  %2872 = uitofp i32 %2871 to float
  %2873 = fmul fast float %2872, 0x3F70101020000000
  %2874 = lshr i32 %2867, 8
  %2875 = and i32 %2874, 255
  %2876 = uitofp i32 %2875 to float
  %2877 = fmul fast float %2876, 0x3F70101020000000
  %2878 = lshr i32 %2867, 16
  %2879 = and i32 %2878, 255
  %2880 = uitofp i32 %2879 to float
  %2881 = fmul fast float %2880, 0x3F70101020000000
  %2882 = add i32 %34, 268
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = lshr i32 %2884, 24
  %2886 = uitofp i32 %2885 to float
  %2887 = fmul fast float %2886, 0x3F70101020000000
  %2888 = and i32 %2884, 255
  %2889 = uitofp i32 %2888 to float
  %2890 = fmul fast float %2889, 0x3F70101020000000
  %2891 = lshr i32 %2884, 8
  %2892 = and i32 %2891, 255
  %2893 = uitofp i32 %2892 to float
  %2894 = fmul fast float %2893, 0x3F70101020000000
  %2895 = lshr i32 %2884, 16
  %2896 = and i32 %2895, 255
  %2897 = uitofp i32 %2896 to float
  %2898 = fmul fast float %2897, 0x3F70101020000000
  %2899 = bitcast float %2823 to i32
  %2900 = ashr i32 %2899, 1
  %2901 = sub nsw i32 1597463174, %2900
  %2902 = bitcast i32 %2901 to float
  %2903 = fmul fast float %2823, 5.000000e-01
  %2904 = fmul fast float %2902, %2902
  %2905 = fmul fast float %2904, %2903
  %2906 = fsub fast float 1.500000e+00, %2905
  %2907 = fmul fast float %2902, %2823
  %2908 = fmul fast float %2907, %2906
  %2909 = bitcast float %2824 to i32
  %2910 = ashr i32 %2909, 1
  %2911 = sub nsw i32 1597463174, %2910
  %2912 = bitcast i32 %2911 to float
  %2913 = fmul fast float %2824, 5.000000e-01
  %2914 = fmul fast float %2912, %2912
  %2915 = fmul fast float %2914, %2913
  %2916 = fsub fast float 1.500000e+00, %2915
  %2917 = fmul fast float %2912, %2824
  %2918 = fmul fast float %2917, %2916
  %2919 = bitcast float %2825 to i32
  %2920 = ashr i32 %2919, 1
  %2921 = sub nsw i32 1597463174, %2920
  %2922 = bitcast i32 %2921 to float
  %2923 = fmul fast float %2825, 5.000000e-01
  %2924 = fmul fast float %2922, %2922
  %2925 = fmul fast float %2924, %2923
  %2926 = fsub fast float 1.500000e+00, %2925
  %2927 = fmul fast float %2922, %2825
  %2928 = fmul fast float %2927, %2926
  %2929 = fsub fast float %2908, %2890
  %2930 = fsub fast float %2918, %2894
  %2931 = fsub fast float %2928, %2898
  %2932 = fmul fast float %2929, %2858
  %2933 = fmul fast float %2930, %2860
  %2934 = fmul fast float %2931, %2865
  %2935 = fadd fast float %2932, %2873
  %2936 = fadd fast float %2933, %2877
  %2937 = fadd fast float %2934, %2881
  %2938 = call float @dx.op.unary.f32(i32 7, float %2935)  ; Saturate(value)
  %2939 = call float @dx.op.unary.f32(i32 7, float %2936)  ; Saturate(value)
  %2940 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  %2941 = fmul fast float %2938, %2938
  %2942 = fmul fast float %2939, %2939
  %2943 = fmul fast float %2940, %2940
  %2944 = fsub fast float %2941, %2823
  %2945 = fsub fast float %2942, %2824
  %2946 = fsub fast float %2943, %2825
  %2947 = fmul fast float %2944, %2848
  %2948 = fmul fast float %2945, %2848
  %2949 = fmul fast float %2946, %2848
  %2950 = fadd fast float %2947, %2823
  %2951 = fadd fast float %2948, %2824
  %2952 = fadd fast float %2949, %2825
  %2953 = fadd fast float %2870, %2834
  %2954 = fsub fast float %2953, %2887
  %2955 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  %2956 = fsub fast float %2955, %2834
  %2957 = fmul fast float %2956, %2848
  %2958 = fadd fast float %2957, %2834
  br label %3012

; <label>:2959                                    ; preds = %2847
  %2960 = and i32 %2850, 134217728
  %2961 = icmp eq i32 %2960, 0
  br i1 %2961, label %2996, label %2962

; <label>:2962                                    ; preds = %2959
  %2963 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %2964 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %2965 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %2966 = fadd fast float %2963, -5.000000e-01
  %2967 = fadd fast float %2964, -5.000000e-01
  %2968 = fadd fast float %2965, -5.000000e-01
  %2969 = fmul fast float %2966, %2848
  %2970 = fmul fast float %2967, %2848
  %2971 = fmul fast float %2968, %2848
  %2972 = fadd fast float %2969, 5.000000e-01
  %2973 = fadd fast float %2970, 5.000000e-01
  %2974 = fadd fast float %2971, 5.000000e-01
  %2975 = call float @dx.op.unary.f32(i32 24, float %2823)  ; Sqrt(value)
  %2976 = call float @dx.op.unary.f32(i32 24, float %2824)  ; Sqrt(value)
  %2977 = call float @dx.op.unary.f32(i32 24, float %2825)  ; Sqrt(value)
  %2978 = fmul fast float %2972, 2.000000e+00
  %2979 = fsub fast float 1.000000e+00, %2978
  %2980 = fmul fast float %2979, %2975
  %2981 = fadd fast float %2980, %2978
  %2982 = fmul fast float %2981, %2975
  %2983 = fmul fast float %2973, 2.000000e+00
  %2984 = fsub fast float 1.000000e+00, %2983
  %2985 = fmul fast float %2984, %2976
  %2986 = fadd fast float %2985, %2983
  %2987 = fmul fast float %2986, %2976
  %2988 = fmul fast float %2974, 2.000000e+00
  %2989 = fsub fast float 1.000000e+00, %2988
  %2990 = fmul fast float %2989, %2977
  %2991 = fadd fast float %2990, %2988
  %2992 = fmul fast float %2991, %2977
  %2993 = fmul fast float %2982, %2982
  %2994 = fmul fast float %2987, %2987
  %2995 = fmul fast float %2992, %2992
  br label %3012

; <label>:2996                                    ; preds = %2959
  %2997 = fmul fast float %360, %360
  %2998 = fmul fast float %364, %364
  %2999 = fmul fast float %368, %368
  %3000 = fadd fast float %2997, -1.000000e+00
  %3001 = fadd fast float %2998, -1.000000e+00
  %3002 = fadd fast float %2999, -1.000000e+00
  %3003 = fmul fast float %2848, %3000
  %3004 = fmul fast float %2848, %3001
  %3005 = fmul fast float %2848, %3002
  %3006 = fadd fast float %3003, 1.000000e+00
  %3007 = fadd fast float %3004, 1.000000e+00
  %3008 = fadd fast float %3005, 1.000000e+00
  %3009 = fmul fast float %3006, %2823
  %3010 = fmul fast float %3007, %2824
  %3011 = fmul fast float %3008, %2825
  br label %3012

; <label>:3012                                    ; preds = %2996, %2962, %2853, %2809
  %3013 = phi float [ %2958, %2853 ], [ %2834, %2962 ], [ %2834, %2996 ], [ 0x3FA23C0BE0000000, %2809 ]
  %3014 = phi float [ %2950, %2853 ], [ %2993, %2962 ], [ %3009, %2996 ], [ 1.000000e+00, %2809 ]
  %3015 = phi float [ %2951, %2853 ], [ %2994, %2962 ], [ %3010, %2996 ], [ 1.000000e+00, %2809 ]
  %3016 = phi float [ %2952, %2853 ], [ %2995, %2962 ], [ %3011, %2996 ], [ 1.000000e+00, %2809 ]
  %3017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.i32 %3017, 1
  %3019 = and i32 %3018, 1
  %3020 = icmp ne i32 %3019, 0
  %3021 = add i32 %34, 356
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 32
  %3025 = icmp ne i32 %3024, 0
  %3026 = and i1 %3020, %3025
  %3027 = select i1 %3026, float 1.000000e+00, float %3014
  %3028 = select i1 %3026, float 0x3FD3333340000000, float %3015
  %3029 = select i1 %3026, float 0x3FD3333340000000, float %3016
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = and i32 %3031, 32
  %3033 = icmp eq i32 %3032, 0
  br i1 %3033, label %3106, label %3034

; <label>:3034                                    ; preds = %3012
  %3035 = add i32 %34, 140
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = add i32 %34, 388
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = add i32 %3040, 0
  %3042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3043 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3042, %dx.types.Handle %79, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3044 = extractvalue %dx.types.ResRet.f32 %3043, 0
  %3045 = extractvalue %dx.types.ResRet.f32 %3043, 1
  %3046 = extractvalue %dx.types.ResRet.f32 %3043, 2
  %3047 = extractvalue %dx.types.ResRet.f32 %3043, 3
  %3048 = and i32 %3037, 255
  %3049 = uitofp i32 %3048 to float
  %3050 = lshr i32 %3037, 8
  %3051 = and i32 %3050, 255
  %3052 = uitofp i32 %3051 to float
  %3053 = lshr i32 %3037, 16
  %3054 = and i32 %3053, 255
  %3055 = uitofp i32 %3054 to float
  %3056 = fmul fast float %3055, 0x3F70101000000000
  %3057 = fmul fast float %3044, %3049
  %3058 = fadd fast float %3057, %3052
  %3059 = fmul fast float %3058, 0x3F70101000000000
  %3060 = fadd fast float %3045, -5.000000e-01
  %3061 = fadd fast float %3047, -5.000000e-01
  %3062 = fmul fast float %3060, %3056
  %3063 = fmul fast float %3061, %3056
  %3064 = fadd fast float %3062, 5.000000e-01
  %3065 = fadd fast float %3063, 5.000000e-01
  %3066 = fmul fast float %3064, 2.000000e+00
  %3067 = fadd fast float %3066, -1.000000e+00
  %3068 = fmul fast float %3065, 2.000000e+00
  %3069 = fadd fast float %3068, -1.000000e+00
  %3070 = fadd fast float %3067, %3069
  %3071 = fmul fast float %3070, 5.000000e-01
  %3072 = fsub fast float %3067, %3069
  %3073 = fmul fast float %3072, 5.000000e-01
  %3074 = call float @dx.op.unary.f32(i32 6, float %3071)  ; FAbs(value)
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = call float @dx.op.unary.f32(i32 6, float %3073)  ; FAbs(value)
  %3077 = fsub fast float %3075, %3076
  %3078 = call float @dx.op.dot3.f32(i32 55, float %3071, float %3073, float %3077, float %3071, float %3073, float %3077)  ; Dot3(ax,ay,az,bx,by,bz)
  %3079 = call float @dx.op.unary.f32(i32 25, float %3078)  ; Rsqrt(value)
  %3080 = fmul fast float %3071, %3079
  %3081 = fmul fast float %3073, %3079
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = and i32 %3083, 67108864
  %3085 = icmp eq i32 %3084, 0
  br i1 %3085, label %3102, label %3086

; <label>:3086                                    ; preds = %3034
  %3087 = add i32 %34, 328
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, 65535
  %3091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3090)  ; LegacyF16ToF32(value)
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = and i32 %3093, 65535
  %3095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3094)  ; LegacyF16ToF32(value)
  %3096 = lshr i32 %3089, 16
  %3097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3096)  ; LegacyF16ToF32(value)
  %3098 = fsub fast float %3059, %3097
  %3099 = fmul fast float %3098, %3091
  %3100 = fadd fast float %3099, %3095
  %3101 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  br label %3102

; <label>:3102                                    ; preds = %3086, %3034
  %3103 = phi float [ %3101, %3086 ], [ %3059, %3034 ]
  %3104 = call float @dx.op.dot2.f32(i32 54, float %3080, float %3081, float %2638, float %2639)  ; Dot2(ax,ay,bx,by)
  %3105 = call float @dx.op.dot2.f32(i32 54, float %3080, float %3081, float %2640, float %2641)  ; Dot2(ax,ay,bx,by)
  br label %3106

; <label>:3106                                    ; preds = %3102, %3012
  %3107 = phi float [ %3103, %3102 ], [ 0x3FD6666660000000, %3012 ]
  %3108 = phi float [ %3104, %3102 ], [ 0.000000e+00, %3012 ]
  %3109 = phi float [ %3105, %3102 ], [ 0.000000e+00, %3012 ]
  %3110 = phi float [ %3046, %3102 ], [ 1.000000e+00, %3012 ]
  %3111 = add i32 %34, 208
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = lshr i32 %3113, 22
  %3115 = shl nuw nsw i32 %3114, 5
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = and i32 %3118, 64
  %3120 = icmp eq i32 %3119, 0
  br i1 %3120, label %3154, label %3121

; <label>:3121                                    ; preds = %3106
  %3122 = add i32 %34, 404
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = add i32 %3124, 0
  %3126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 131072
  %3130 = icmp eq i32 %3129, 0
  %3131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3126, %dx.types.Handle %79, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.ResRet.f32 %3131, 1
  %3134 = extractvalue %dx.types.ResRet.f32 %3131, 2
  %3135 = fmul fast float %3132, %348
  %3136 = fmul fast float %3133, %351
  %3137 = fmul fast float %3134, %354
  br i1 %3130, label %3144, label %3138

; <label>:3138                                    ; preds = %3121
  %3139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3140 = extractvalue %dx.types.CBufRet.f32 %3139, 0
  %3141 = fmul fast float %3140, %3135
  %3142 = fmul fast float %3140, %3136
  %3143 = fmul fast float %3140, %3137
  br label %3144

; <label>:3144                                    ; preds = %3138, %3121
  %3145 = phi float [ %3141, %3138 ], [ %3135, %3121 ]
  %3146 = phi float [ %3142, %3138 ], [ %3136, %3121 ]
  %3147 = phi float [ %3143, %3138 ], [ %3137, %3121 ]
  %3148 = fmul fast float %3145, %3116
  %3149 = select i1 %205, float %3148, float %3145
  %3150 = call float @dx.op.dot3.f32(i32 55, float %3149, float %3146, float %3147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3151 = select i1 %205, float 0.000000e+00, float %3145
  %3152 = select i1 %205, float %3150, float %3146
  %3153 = select i1 %205, float 0.000000e+00, float %3147
  br label %3154

; <label>:3154                                    ; preds = %3144, %3106
  %3155 = phi float [ %3151, %3144 ], [ 0.000000e+00, %3106 ]
  %3156 = phi float [ %3152, %3144 ], [ 0.000000e+00, %3106 ]
  %3157 = phi float [ %3153, %3144 ], [ 0.000000e+00, %3106 ]
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 1024
  %3161 = icmp eq i32 %3160, 0
  br i1 %3161, label %3192, label %3162

; <label>:3162                                    ; preds = %3154
  %3163 = add i32 %34, 200
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = and i32 %3165, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3167, 0x3F70101020000000
  %3169 = lshr i32 %3165, 8
  %3170 = and i32 %3169, 255
  %3171 = uitofp i32 %3170 to float
  %3172 = fmul fast float %3171, 0x3F70101020000000
  %3173 = lshr i32 %3165, 16
  %3174 = and i32 %3173, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = fmul fast float %3175, 0x3F70101020000000
  %3177 = fmul fast float %3168, %3168
  %3178 = fmul fast float %3172, %3172
  %3179 = fmul fast float %3176, %3176
  %3180 = add i32 %34, 468
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = add i32 %3182, 0
  %3184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3184, %dx.types.Handle %80, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3186 = extractvalue %dx.types.ResRet.f32 %3185, 0
  %3187 = extractvalue %dx.types.ResRet.f32 %3185, 1
  %3188 = extractvalue %dx.types.ResRet.f32 %3185, 2
  %3189 = fmul fast float %3177, %3186
  %3190 = fmul fast float %3178, %3187
  %3191 = fmul fast float %3179, %3188
  br label %3192

; <label>:3192                                    ; preds = %3162, %3154
  %3193 = phi float [ %3189, %3162 ], [ 0.000000e+00, %3154 ]
  %3194 = phi float [ %3190, %3162 ], [ 0.000000e+00, %3154 ]
  %3195 = phi float [ %3191, %3162 ], [ 0.000000e+00, %3154 ]
  %3196 = fcmp fast ogt float %3193, 0.000000e+00
  %3197 = fcmp fast ogt float %3194, 0.000000e+00
  %3198 = fcmp fast ogt float %3195, 0.000000e+00
  %3199 = call float @dx.op.unary.f32(i32 23, float %3193)  ; Log(value)
  %3200 = call float @dx.op.unary.f32(i32 23, float %3194)  ; Log(value)
  %3201 = call float @dx.op.unary.f32(i32 23, float %3195)  ; Log(value)
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = lshr i32 %3203, 7
  %3205 = and i32 %3204, 32752
  %3206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3205)  ; LegacyF16ToF32(value)
  %3207 = fmul fast float %3199, 0xBFE62E4300000000
  %3208 = fmul fast float %3207, %3206
  %3209 = fmul fast float %3200, 0xBFE62E4300000000
  %3210 = fmul fast float %3209, %3206
  %3211 = fmul fast float %3201, 0xBFE62E4300000000
  %3212 = fmul fast float %3211, %3206
  %3213 = select i1 %3196, float %3208, float 1.270000e+02
  %3214 = select i1 %3197, float %3210, float 1.270000e+02
  %3215 = select i1 %3198, float %3212, float 1.270000e+02
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = and i32 %3217, 10240
  %3219 = icmp eq i32 %3218, 0
  br i1 %3219, label %3240, label %3220

; <label>:3220                                    ; preds = %3192
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = and i32 %3222, 2048
  %3224 = icmp eq i32 %3223, 0
  br i1 %3224, label %3240, label %3225

; <label>:3225                                    ; preds = %3220
  %3226 = add i32 %34, 484
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = add i32 %3228, 0
  %3230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3231 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3230, %dx.types.Handle %80, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3232 = extractvalue %dx.types.ResRet.f32 %3231, 3
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = shl i32 %3234, 4
  %3236 = and i32 %3235, 32752
  %3237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3236)  ; LegacyF16ToF32(value)
  %3238 = fmul fast float %3237, %3232
  %3239 = call float @dx.op.binary.f32(i32 35, float %3238, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3240

; <label>:3240                                    ; preds = %3225, %3220, %3192
  %3241 = phi float [ %3239, %3225 ], [ 0x3F70101020000000, %3220 ], [ 0x3F70101020000000, %3192 ]
  %3242 = add i32 %34, 144
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = and i32 %3244, 255
  %3246 = uitofp i32 %3245 to float
  %3247 = lshr i32 %3244, 8
  %3248 = and i32 %3247, 255
  %3249 = uitofp i32 %3248 to float
  %3250 = call float @dx.op.dot3.f32(i32 55, float %3027, float %3028, float %3029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3251 = fmul fast float %3249, %3250
  %3252 = fadd fast float %3251, %3246
  %3253 = fmul fast float %3252, 0x3F70101020000000
  %3254 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  br i1 %2626, label %3255, label %3290

; <label>:3255                                    ; preds = %3240
  %3256 = fmul fast float %3241, 2.000000e+00
  %3257 = fcmp fast olt float %3213, 1.270000e+02
  %3258 = fcmp fast olt float %3214, 1.270000e+02
  %3259 = fcmp fast olt float %3215, 1.270000e+02
  %3260 = fmul fast float %3213, 0xBFF7154760000000
  %3261 = fmul fast float %3260, %3256
  %3262 = fmul fast float %3214, 0xBFF7154760000000
  %3263 = fmul fast float %3262, %3256
  %3264 = fmul fast float %3215, 0xBFF7154760000000
  %3265 = fmul fast float %3264, %3256
  %3266 = call float @dx.op.unary.f32(i32 21, float %3261)  ; Exp(value)
  %3267 = call float @dx.op.unary.f32(i32 21, float %3263)  ; Exp(value)
  %3268 = call float @dx.op.unary.f32(i32 21, float %3265)  ; Exp(value)
  %3269 = call float @dx.op.unary.f32(i32 7, float %3266)  ; Saturate(value)
  %3270 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3271 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3272 = fadd fast float %3269, -1.000000e+00
  %3273 = select i1 %3257, float %3272, float -1.000000e+00
  %3274 = fadd fast float %3270, -1.000000e+00
  %3275 = select i1 %3258, float %3274, float -1.000000e+00
  %3276 = fadd fast float %3271, -1.000000e+00
  %3277 = select i1 %3259, float %3276, float -1.000000e+00
  %3278 = fmul fast float %3273, %2807
  %3279 = fmul fast float %3275, %2807
  %3280 = fmul fast float %3277, %2807
  %3281 = fadd fast float %3278, 1.000000e+00
  %3282 = fadd fast float %3279, 1.000000e+00
  %3283 = fadd fast float %3280, 1.000000e+00
  %3284 = fmul fast float %3281, %2615
  %3285 = fmul fast float %3282, %2616
  %3286 = fmul fast float %3283, %2617
  %3287 = fmul fast float %3281, %2618
  %3288 = fmul fast float %3282, %2619
  %3289 = fmul fast float %3283, %2620
  br label %3290

; <label>:3290                                    ; preds = %3255, %3240
  %3291 = phi float [ %3284, %3255 ], [ %2615, %3240 ]
  %3292 = phi float [ %3285, %3255 ], [ %2616, %3240 ]
  %3293 = phi float [ %3286, %3255 ], [ %2617, %3240 ]
  %3294 = phi float [ %3287, %3255 ], [ %2618, %3240 ]
  %3295 = phi float [ %3288, %3255 ], [ %2619, %3240 ]
  %3296 = phi float [ %3289, %3255 ], [ %2620, %3240 ]
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = and i32 %3298, 3
  %3300 = icmp eq i32 %3299, 3
  br i1 %3300, label %3379, label %3301

; <label>:3301                                    ; preds = %3290
  %3302 = and i32 %3298, 16
  %3303 = icmp ne i32 %3302, 0
  %3304 = select i1 %3303, float %2807, float 0.000000e+00
  %3305 = icmp eq i32 %3299, 0
  br i1 %3305, label %3306, label %3334

; <label>:3306                                    ; preds = %3301
  %3307 = and i32 %3298, 64
  %3308 = icmp ne i32 %3307, 0
  %3309 = select i1 %3308, float %2807, float 0.000000e+00
  %3310 = fsub fast float %3027, %3291
  %3311 = fsub fast float %3028, %3292
  %3312 = fsub fast float %3029, %3293
  %3313 = fmul fast float %3304, %3310
  %3314 = fmul fast float %3304, %3311
  %3315 = fmul fast float %3304, %3312
  %3316 = fadd fast float %3313, %3291
  %3317 = fadd fast float %3314, %3292
  %3318 = fadd fast float %3315, %3293
  %3319 = fsub fast float %3013, %2621
  %3320 = fmul fast float %3304, %3319
  %3321 = fadd fast float %3320, %2621
  %3322 = fsub fast float %3155, %3294
  %3323 = fsub fast float %3156, %3295
  %3324 = fsub fast float %3157, %3296
  %3325 = fmul fast float %3309, %3322
  %3326 = fmul fast float %3309, %3323
  %3327 = fmul fast float %3309, %3324
  %3328 = fadd fast float %3325, %3294
  %3329 = fadd fast float %3326, %3295
  %3330 = fadd fast float %3327, %3296
  %3331 = fsub fast float %3254, %2624
  %3332 = fmul fast float %3304, %3331
  %3333 = fadd fast float %3332, %2624
  br label %3379

; <label>:3334                                    ; preds = %3301
  %3335 = icmp eq i32 %3299, 1
  br i1 %3335, label %3336, label %3349

; <label>:3336                                    ; preds = %3334
  %3337 = fadd fast float %3027, -1.000000e+00
  %3338 = fadd fast float %3028, -1.000000e+00
  %3339 = fadd fast float %3029, -1.000000e+00
  %3340 = fmul fast float %3304, %3337
  %3341 = fmul fast float %3304, %3338
  %3342 = fmul fast float %3304, %3339
  %3343 = fadd fast float %3340, 1.000000e+00
  %3344 = fadd fast float %3341, 1.000000e+00
  %3345 = fadd fast float %3342, 1.000000e+00
  %3346 = fmul fast float %3343, %3291
  %3347 = fmul fast float %3344, %3292
  %3348 = fmul fast float %3345, %3293
  br label %3379

; <label>:3349                                    ; preds = %3334
  %3350 = icmp eq i32 %3299, 2
  br i1 %3350, label %3351, label %3379

; <label>:3351                                    ; preds = %3349
  %3352 = call float @dx.op.unary.f32(i32 24, float %3027)  ; Sqrt(value)
  %3353 = call float @dx.op.unary.f32(i32 24, float %3028)  ; Sqrt(value)
  %3354 = call float @dx.op.unary.f32(i32 24, float %3029)  ; Sqrt(value)
  %3355 = fadd fast float %3352, -5.000000e-01
  %3356 = fadd fast float %3353, -5.000000e-01
  %3357 = fadd fast float %3354, -5.000000e-01
  %3358 = fmul fast float %3355, %3304
  %3359 = fmul fast float %3356, %3304
  %3360 = fmul fast float %3357, %3304
  %3361 = fadd fast float %3358, 5.000000e-01
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = fadd fast float %3360, 5.000000e-01
  %3364 = fmul fast float %3361, 2.000000e+00
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = fmul fast float %3365, %3291
  %3367 = fadd fast float %3366, %3364
  %3368 = fmul fast float %3367, %3291
  %3369 = fmul fast float %3362, 2.000000e+00
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = fmul fast float %3370, %3292
  %3372 = fadd fast float %3371, %3369
  %3373 = fmul fast float %3372, %3292
  %3374 = fmul fast float %3363, 2.000000e+00
  %3375 = fsub fast float 1.000000e+00, %3374
  %3376 = fmul fast float %3375, %3293
  %3377 = fadd fast float %3376, %3374
  %3378 = fmul fast float %3377, %3293
  br label %3379

; <label>:3379                                    ; preds = %3351, %3349, %3336, %3306, %3290
  %3380 = phi float [ %3291, %3290 ], [ %3368, %3351 ], [ %3291, %3349 ], [ %3346, %3336 ], [ %3316, %3306 ]
  %3381 = phi float [ %3292, %3290 ], [ %3373, %3351 ], [ %3292, %3349 ], [ %3347, %3336 ], [ %3317, %3306 ]
  %3382 = phi float [ %3293, %3290 ], [ %3378, %3351 ], [ %3293, %3349 ], [ %3348, %3336 ], [ %3318, %3306 ]
  %3383 = phi float [ %3294, %3290 ], [ %3294, %3351 ], [ %3294, %3349 ], [ %3294, %3336 ], [ %3328, %3306 ]
  %3384 = phi float [ %3295, %3290 ], [ %3295, %3351 ], [ %3295, %3349 ], [ %3295, %3336 ], [ %3329, %3306 ]
  %3385 = phi float [ %3296, %3290 ], [ %3296, %3351 ], [ %3296, %3349 ], [ %3296, %3336 ], [ %3330, %3306 ]
  %3386 = phi float [ %2621, %3290 ], [ %2621, %3351 ], [ %2621, %3349 ], [ %2621, %3336 ], [ %3321, %3306 ]
  %3387 = phi float [ %2624, %3290 ], [ %2624, %3351 ], [ %2624, %3349 ], [ %2624, %3336 ], [ %3333, %3306 ]
  %3388 = and i32 %3298, 12
  %3389 = icmp eq i32 %3388, 12
  br i1 %3389, label %3462, label %3390

; <label>:3390                                    ; preds = %3379
  %3391 = and i32 %3298, 2097184
  %3392 = icmp eq i32 %3391, 2097184
  %3393 = select i1 %3392, float %2807, float 0.000000e+00
  %3394 = and i32 %3298, 4194336
  %3395 = icmp eq i32 %3394, 4194336
  %3396 = select i1 %3395, float %2807, float 0.000000e+00
  %3397 = and i32 %3298, 8388640
  %3398 = icmp eq i32 %3397, 8388640
  %3399 = select i1 %3398, float %2807, float 0.000000e+00
  %3400 = icmp eq i32 %3388, 0
  br i1 %3400, label %3401, label %3414

; <label>:3401                                    ; preds = %3390
  %3402 = fsub fast float %3108, %2613
  %3403 = fsub fast float %3109, %2614
  %3404 = fmul fast float %3393, %3402
  %3405 = fmul fast float %3393, %3403
  %3406 = fadd fast float %3404, %2613
  %3407 = fadd fast float %3405, %2614
  %3408 = fsub fast float %3110, %2623
  %3409 = fmul fast float %3396, %3408
  %3410 = fadd fast float %3409, %2623
  %3411 = fsub fast float %3107, %2622
  %3412 = fmul fast float %3399, %3411
  %3413 = fadd fast float %3412, %2622
  br label %3462

; <label>:3414                                    ; preds = %3390
  %3415 = icmp eq i32 %3388, 4
  br i1 %3415, label %3416, label %3448

; <label>:3416                                    ; preds = %3414
  %3417 = fmul fast float %3393, %3108
  %3418 = fmul fast float %3393, %3109
  %3419 = fadd fast float %3417, %2613
  %3420 = fadd fast float %3418, %2614
  %3421 = call float @dx.op.binary.f32(i32 36, float %2623, float %3110)  ; FMin(a,b)
  %3422 = fsub fast float %3421, %2623
  %3423 = fmul fast float %3422, %3396
  %3424 = fadd fast float %3423, %2623
  %3425 = fadd fast float %3107, %2622
  %3426 = fmul fast float %3425, 0x3FF337FAE0000000
  %3427 = fmul fast float %2622, %2622
  %3428 = fmul fast float %3107, %3107
  %3429 = fadd fast float %3428, %3427
  %3430 = fmul fast float %3429, 0x3FE5152B00000000
  %3431 = fmul fast float %2622, 0xBFCC1F85E0000000
  %3432 = fmul fast float %3431, %3107
  %3433 = fadd fast float %3432, 0xBFE1363700000000
  %3434 = fadd fast float %3433, %3426
  %3435 = fsub fast float %3434, %3430
  %3436 = fmul fast float %3425, 0x3FBA6F0D00000000
  %3437 = fmul fast float %3429, 0x3FD0432880000000
  %3438 = fmul fast float %2622, 0xBFEF110800000000
  %3439 = fmul fast float %3438, %3107
  %3440 = fadd fast float %3439, 1.000000e+00
  %3441 = fsub fast float %3440, %3436
  %3442 = fadd fast float %3441, %3437
  %3443 = fdiv fast float %3435, %3442
  %3444 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  %3445 = fsub fast float %3444, %2622
  %3446 = fmul fast float %3445, %3399
  %3447 = fadd fast float %3446, %2622
  br label %3462

; <label>:3448                                    ; preds = %3414
  %3449 = icmp eq i32 %3388, 8
  br i1 %3449, label %3450, label %3462

; <label>:3450                                    ; preds = %3448
  %3451 = fmul fast float %3393, %3108
  %3452 = fmul fast float %3393, %3109
  %3453 = fadd fast float %3451, %2613
  %3454 = fadd fast float %3452, %2614
  %3455 = call float @dx.op.binary.f32(i32 36, float %2623, float %3110)  ; FMin(a,b)
  %3456 = fsub fast float %3455, %2623
  %3457 = fmul fast float %3456, %3396
  %3458 = fadd fast float %3457, %2623
  %3459 = fsub fast float %3107, %2622
  %3460 = fmul fast float %3399, %3459
  %3461 = fadd fast float %3460, %2622
  br label %3462

; <label>:3462                                    ; preds = %3450, %3448, %3416, %3401, %3379, %2806, %2625, %2612
  %3463 = phi float [ %2613, %3379 ], [ %2613, %2806 ], [ %2613, %2612 ], [ %2613, %2625 ], [ %3406, %3401 ], [ %3419, %3416 ], [ %2613, %3448 ], [ %3453, %3450 ]
  %3464 = phi float [ %2614, %3379 ], [ %2614, %2806 ], [ %2614, %2612 ], [ %2614, %2625 ], [ %3407, %3401 ], [ %3420, %3416 ], [ %2614, %3448 ], [ %3454, %3450 ]
  %3465 = phi float [ %3380, %3379 ], [ %2615, %2806 ], [ %2615, %2612 ], [ %2615, %2625 ], [ %3380, %3401 ], [ %3380, %3416 ], [ %3380, %3448 ], [ %3380, %3450 ]
  %3466 = phi float [ %3381, %3379 ], [ %2616, %2806 ], [ %2616, %2612 ], [ %2616, %2625 ], [ %3381, %3401 ], [ %3381, %3416 ], [ %3381, %3448 ], [ %3381, %3450 ]
  %3467 = phi float [ %3382, %3379 ], [ %2617, %2806 ], [ %2617, %2612 ], [ %2617, %2625 ], [ %3382, %3401 ], [ %3382, %3416 ], [ %3382, %3448 ], [ %3382, %3450 ]
  %3468 = phi float [ %3383, %3379 ], [ %2618, %2806 ], [ %2618, %2612 ], [ %2618, %2625 ], [ %3383, %3401 ], [ %3383, %3416 ], [ %3383, %3448 ], [ %3383, %3450 ]
  %3469 = phi float [ %3384, %3379 ], [ %2619, %2806 ], [ %2619, %2612 ], [ %2619, %2625 ], [ %3384, %3401 ], [ %3384, %3416 ], [ %3384, %3448 ], [ %3384, %3450 ]
  %3470 = phi float [ %3385, %3379 ], [ %2620, %2806 ], [ %2620, %2612 ], [ %2620, %2625 ], [ %3385, %3401 ], [ %3385, %3416 ], [ %3385, %3448 ], [ %3385, %3450 ]
  %3471 = phi float [ %3386, %3379 ], [ %2621, %2806 ], [ %2621, %2612 ], [ %2621, %2625 ], [ %3386, %3401 ], [ %3386, %3416 ], [ %3386, %3448 ], [ %3386, %3450 ]
  %3472 = phi float [ %2622, %3379 ], [ %2622, %2806 ], [ %2622, %2612 ], [ %2622, %2625 ], [ %3413, %3401 ], [ %3447, %3416 ], [ %2622, %3448 ], [ %3461, %3450 ]
  %3473 = phi float [ %2623, %3379 ], [ %2623, %2806 ], [ %2623, %2612 ], [ %2623, %2625 ], [ %3410, %3401 ], [ %3424, %3416 ], [ %2623, %3448 ], [ %3458, %3450 ]
  %3474 = phi float [ %3387, %3379 ], [ %2624, %2806 ], [ %2624, %2612 ], [ %2624, %2625 ], [ %3387, %3401 ], [ %3387, %3416 ], [ %3387, %3448 ], [ %3387, %3450 ]
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3477 = call float @dx.op.dot2.f32(i32 54, float %3463, float %3464, float %3463, float %3464)  ; Dot2(ax,ay,bx,by)
  %3478 = fmul fast float %3477, 0x3FE3333340000000
  %3479 = fsub fast float 1.000000e+00, %3478
  %3480 = call float @dx.op.dot3.f32(i32 55, float %3463, float %3464, float %3479, float %3463, float %3464, float %3479)  ; Dot3(ax,ay,az,bx,by,bz)
  %3481 = call float @dx.op.unary.f32(i32 25, float %3480)  ; Rsqrt(value)
  %3482 = fmul fast float %3481, %3463
  %3483 = fmul fast float %3481, %3464
  %3484 = fmul fast float %3479, %3481
  %3485 = fmul fast float %3484, %92
  %3486 = fmul fast float %3484, %94
  %3487 = fmul fast float %3484, %96
  %3488 = fmul fast float %3482, %64
  %3489 = fmul fast float %3482, %65
  %3490 = fmul fast float %3482, %66
  %3491 = fadd fast float %3485, %3488
  %3492 = fadd fast float %3486, %3489
  %3493 = fadd fast float %3487, %3490
  %3494 = fmul fast float %106, %3483
  %3495 = fmul fast float %107, %3483
  %3496 = fmul fast float %108, %3483
  %3497 = fadd fast float %3491, %3494
  %3498 = fadd fast float %3492, %3495
  %3499 = fadd fast float %3493, %3496
  %3500 = call float @dx.op.dot3.f32(i32 55, float %3497, float %3498, float %3499, float %3497, float %3498, float %3499)  ; Dot3(ax,ay,az,bx,by,bz)
  %3501 = call float @dx.op.unary.f32(i32 25, float %3500)  ; Rsqrt(value)
  %3502 = fmul fast float %3497, %3501
  %3503 = fmul fast float %3498, %3501
  %3504 = fmul fast float %3499, %3501
  %3505 = icmp eq i32 %35, 65535
  br i1 %3505, label %4020, label %3506

; <label>:3506                                    ; preds = %3462
  %3507 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3508 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3509 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3510 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3511 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3512 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3513 = fadd fast float %3507, %36
  %3514 = fadd fast float %3508, %37
  %3515 = fadd fast float %3509, %38
  %3516 = fadd fast float %3510, %36
  %3517 = fadd fast float %3511, %37
  %3518 = fadd fast float %3512, %38
  %3519 = mul i32 %35, 48
  %3520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = add i32 %3519, 16
  %3525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = extractvalue %dx.types.ResRet.f32 %3525, 1
  %3528 = extractvalue %dx.types.ResRet.f32 %3525, 2
  %3529 = add i32 %3519, 32
  %3530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.ResRet.f32 %3530, 1
  %3533 = extractvalue %dx.types.ResRet.f32 %3530, 2
  %3534 = extractvalue %dx.types.ResRet.f32 %3530, 3
  %3535 = bitcast float %3534 to i32
  %3536 = fmul fast float %3521, %36
  %3537 = fmul fast float %3522, %37
  %3538 = fmul fast float %3523, %38
  %3539 = fsub fast float %3536, %3526
  %3540 = fsub fast float %3537, %3527
  %3541 = fsub fast float %3538, %3528
  %3542 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3543 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3544 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3545 = fmul fast float %3542, %3531
  %3546 = fmul fast float %3543, %3532
  %3547 = fmul fast float %3544, %3533
  %3548 = fadd fast float %3531, -1.000000e+00
  %3549 = fadd fast float %3532, -1.000000e+00
  %3550 = fadd fast float %3533, -1.000000e+00
  %3551 = call float @dx.op.unary.f32(i32 27, float %3545)  ; Round_ni(value)
  %3552 = call float @dx.op.unary.f32(i32 27, float %3546)  ; Round_ni(value)
  %3553 = call float @dx.op.unary.f32(i32 27, float %3547)  ; Round_ni(value)
  %3554 = call float @dx.op.binary.f32(i32 36, float %3551, float %3548)  ; FMin(a,b)
  %3555 = call float @dx.op.binary.f32(i32 36, float %3552, float %3549)  ; FMin(a,b)
  %3556 = call float @dx.op.binary.f32(i32 36, float %3553, float %3550)  ; FMin(a,b)
  %3557 = fmul fast float %3556, %3532
  %3558 = fadd fast float %3557, %3555
  %3559 = fmul fast float %3558, %3531
  %3560 = fadd fast float %3559, %3554
  %3561 = fptosi float %3560 to i32
  %3562 = add nsw i32 %3561, %3535
  %3563 = shl nsw i32 %3562, 2
  %3564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.i32 %3564, 0
  %3566 = lshr i32 %3565, 16
  %3567 = icmp eq i32 %3566, 0
  br i1 %3567, label %3989, label %3568

; <label>:3568                                    ; preds = %3506
  br label %3569

; <label>:3569                                    ; preds = %3690, %3568
  %3570 = phi i32 [ %3592, %3690 ], [ %3566, %3568 ]
  %3571 = phi float [ %3691, %3690 ], [ 0.000000e+00, %3568 ]
  %3572 = phi float [ %3692, %3690 ], [ %3476, %3568 ]
  %3573 = phi float [ %3693, %3690 ], [ %3474, %3568 ]
  %3574 = phi float [ %3694, %3690 ], [ 0.000000e+00, %3568 ]
  %3575 = phi float [ %3695, %3690 ], [ 0.000000e+00, %3568 ]
  %3576 = phi float [ %3696, %3690 ], [ %3468, %3568 ]
  %3577 = phi float [ %3697, %3690 ], [ %3469, %3568 ]
  %3578 = phi float [ %3698, %3690 ], [ %3470, %3568 ]
  %3579 = phi float [ %3699, %3690 ], [ %3502, %3568 ]
  %3580 = phi float [ %3700, %3690 ], [ %3503, %3568 ]
  %3581 = phi float [ %3701, %3690 ], [ %3504, %3568 ]
  %3582 = phi float [ %3702, %3690 ], [ %3473, %3568 ]
  %3583 = phi float [ %3703, %3690 ], [ %3472, %3568 ]
  %3584 = phi float [ %3704, %3690 ], [ 0.000000e+00, %3568 ]
  %3585 = phi float [ %3705, %3690 ], [ %3471, %3568 ]
  %3586 = phi float [ %3706, %3690 ], [ %3465, %3568 ]
  %3587 = phi float [ %3707, %3690 ], [ %3466, %3568 ]
  %3588 = phi float [ %3708, %3690 ], [ %3467, %3568 ]
  %3589 = shl nuw nsw i32 %3570, 2
  %3590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.i32 %3590, 0
  %3592 = lshr i32 %3591, 16
  %3593 = shl i32 %3591, 8
  %3594 = and i32 %3593, 16776960
  %3595 = or i32 %3594, 48
  %3596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3600 = or i32 %3594, 64
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.i32 %3601, 1
  %3604 = or i32 %3594, 80
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3607 = extractvalue %dx.types.ResRet.f32 %3605, 3
  %3608 = or i32 %3594, 96
  %3609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3613 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3614 = or i32 %3594, 112
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3617 = or i32 %3594, 128
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = or i32 %3594, 144
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = extractvalue %dx.types.ResRet.f32 %3624, 3
  %3629 = or i32 %3594, 160
  %3630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = extractvalue %dx.types.ResRet.f32 %3630, 3
  %3635 = or i32 %3594, 192
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = or i32 %3594, 208
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = or i32 %3594, 248
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = extractvalue %dx.types.ResRet.f32 %3645, 3
  %3650 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3651 = or i32 %3594, 16
  %3652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  %3657 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3658 = or i32 %3594, 32
  %3659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3664 = call float @dx.op.dot4.f32(i32 56, float %3660, float %3661, float %3662, float %3663, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3665 = call float @dx.op.unary.f32(i32 27, float %3650)  ; Round_ni(value)
  %3666 = call float @dx.op.unary.f32(i32 6, float %3665)  ; FAbs(value)
  %3667 = call float @dx.op.unary.f32(i32 27, float %3657)  ; Round_ni(value)
  %3668 = call float @dx.op.unary.f32(i32 6, float %3667)  ; FAbs(value)
  %3669 = call float @dx.op.unary.f32(i32 6, float %3664)  ; FAbs(value)
  %3670 = call float @dx.op.unary.f32(i32 27, float %3669)  ; Round_ni(value)
  %3671 = fadd fast float %3668, %3666
  %3672 = fadd fast float %3671, %3670
  %3673 = fcmp fast oeq float %3672, 0.000000e+00
  %3674 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3675 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3676 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3677 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3678 = fsub fast float %3674, %3650
  %3679 = fsub fast float %3676, %3650
  %3680 = fsub fast float %3675, %3657
  %3681 = fsub fast float %3677, %3657
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3597, float %3598, float %3599, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 2
  %3685 = fadd fast float %3684, %3682
  %3686 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  %3687 = extractvalue %dx.types.CBufRet.f32 %3683, 0
  %3688 = fcmp fast ogt float %3686, %3687
  %3689 = and i1 %3673, %3688
  br i1 %3689, label %3710, label %3690

; <label>:3690                                    ; preds = %3975, %3793, %3710, %3569
  %3691 = phi float [ %3571, %3710 ], [ %3796, %3793 ], [ %3796, %3975 ], [ %3571, %3569 ]
  %3692 = phi float [ %3572, %3710 ], [ %3572, %3793 ], [ %3950, %3975 ], [ %3572, %3569 ]
  %3693 = phi float [ %3573, %3710 ], [ %3573, %3793 ], [ %3948, %3975 ], [ %3573, %3569 ]
  %3694 = phi float [ %3574, %3710 ], [ %3574, %3793 ], [ %3920, %3975 ], [ %3574, %3569 ]
  %3695 = phi float [ %3575, %3710 ], [ %3575, %3793 ], [ %3918, %3975 ], [ %3575, %3569 ]
  %3696 = phi float [ %3576, %3710 ], [ %3576, %3793 ], [ %3985, %3975 ], [ %3576, %3569 ]
  %3697 = phi float [ %3577, %3710 ], [ %3577, %3793 ], [ %3986, %3975 ], [ %3577, %3569 ]
  %3698 = phi float [ %3578, %3710 ], [ %3578, %3793 ], [ %3987, %3975 ], [ %3578, %3569 ]
  %3699 = phi float [ %3579, %3710 ], [ %3579, %3793 ], [ %3899, %3975 ], [ %3579, %3569 ]
  %3700 = phi float [ %3580, %3710 ], [ %3580, %3793 ], [ %3900, %3975 ], [ %3580, %3569 ]
  %3701 = phi float [ %3581, %3710 ], [ %3581, %3793 ], [ %3901, %3975 ], [ %3581, %3569 ]
  %3702 = phi float [ %3582, %3710 ], [ %3582, %3793 ], [ %3928, %3975 ], [ %3582, %3569 ]
  %3703 = phi float [ %3583, %3710 ], [ %3583, %3793 ], [ %3925, %3975 ], [ %3583, %3569 ]
  %3704 = phi float [ %3584, %3710 ], [ %3584, %3793 ], [ %3922, %3975 ], [ %3584, %3569 ]
  %3705 = phi float [ %3585, %3710 ], [ %3585, %3793 ], [ %3916, %3975 ], [ %3585, %3569 ]
  %3706 = phi float [ %3586, %3710 ], [ %3586, %3793 ], [ %3911, %3975 ], [ %3586, %3569 ]
  %3707 = phi float [ %3587, %3710 ], [ %3587, %3793 ], [ %3912, %3975 ], [ %3587, %3569 ]
  %3708 = phi float [ %3588, %3710 ], [ %3588, %3793 ], [ %3913, %3975 ], [ %3588, %3569 ]
  %3709 = icmp eq i32 %3592, 0
  br i1 %3709, label %3988, label %3569

; <label>:3710                                    ; preds = %3569
  %3711 = extractvalue %dx.types.ResRet.f32 %3596, 3
  %3712 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3713 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3714 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3715 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3716 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3717 = extractvalue %dx.types.ResRet.i32 %3601, 3
  %3718 = extractvalue %dx.types.ResRet.i32 %3601, 2
  %3719 = bitcast float %3711 to i32
  %3720 = add i32 %3717, 0
  %3721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3720, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3723 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3721, %dx.types.Handle %3722, float %3650, float %3657, float undef, float undef, i32 0, i32 0, i32 undef, float %3678, float %3680, float undef, float %3679, float %3681, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = fmul fast float %3724, %3716
  %3726 = fadd fast float %3725, %3715
  %3727 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3728 = fmul fast float %3650, %3610
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3657, float %3728)  ; FMad(a,b,c)
  %3730 = fadd fast float %3729, %3714
  %3731 = fmul fast float %3650, %3612
  %3732 = call float @dx.op.tertiary.f32(i32 46, float %3613, float %3657, float %3731)  ; FMad(a,b,c)
  %3733 = fadd fast float %3732, %3713
  %3734 = fmul fast float %3678, %3610
  %3735 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3680, float %3734)  ; FMad(a,b,c)
  %3736 = fmul fast float %3678, %3612
  %3737 = call float @dx.op.tertiary.f32(i32 46, float %3613, float %3680, float %3736)  ; FMad(a,b,c)
  %3738 = fmul fast float %3679, %3610
  %3739 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3681, float %3738)  ; FMad(a,b,c)
  %3740 = fmul fast float %3679, %3612
  %3741 = call float @dx.op.tertiary.f32(i32 46, float %3613, float %3681, float %3740)  ; FMad(a,b,c)
  %3742 = add i32 %3718, 0
  %3743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3742, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3744 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3743, %dx.types.Handle %3722, float %3730, float %3733, float undef, float undef, i32 0, i32 0, i32 undef, float %3735, float %3737, float undef, float %3739, float %3741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = and i32 %3719, 1024
  %3747 = icmp ne i32 %3746, 0
  %3748 = fcmp fast ogt float %3745, 0x3FE0101020000000
  %3749 = uitofp i1 %3748 to float
  %3750 = select i1 %3747, float %3749, float %3745
  %3751 = and i32 %3719, 8192
  %3752 = icmp ne i32 %3751, 0
  %3753 = select i1 %3752, float %3712, float 1.000000e+00
  %3754 = fmul fast float %3650, 2.000000e+00
  %3755 = fadd fast float %3754, -1.000000e+00
  %3756 = call float @dx.op.unary.f32(i32 6, float %3755)  ; FAbs(value)
  %3757 = fmul fast float %3756, %3643
  %3758 = fsub fast float %3757, %3643
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3657, 2.000000e+00
  %3761 = fadd fast float %3760, -1.000000e+00
  %3762 = call float @dx.op.unary.f32(i32 6, float %3761)  ; FAbs(value)
  %3763 = fmul fast float %3762, %3644
  %3764 = fsub fast float %3763, %3644
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = fmul fast float %3669, %3606
  %3767 = fsub fast float %3766, %3606
  %3768 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3769 = fmul fast float %3727, %3753
  %3770 = fmul fast float %3769, %3724
  %3771 = fmul fast float %3770, %3759
  %3772 = fmul fast float %3771, %3750
  %3773 = fmul fast float %3772, %3765
  %3774 = fmul fast float %3773, %3768
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 1
  %3777 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3778 = fsub fast float %3686, %3777
  %3779 = fmul fast float %3778, %3776
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3781 = fmul fast float %3774, %3607
  %3782 = fadd fast float %3774, %3607
  %3783 = fmul fast float %3782, %3616
  %3784 = fsub fast float %3783, %3616
  %3785 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  %3786 = and i32 %3719, 128
  %3787 = icmp ne i32 %3786, 0
  %3788 = select i1 %3787, float %3785, float %3781
  %3789 = fmul fast float %3788, %3780
  %3790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3791 = extractvalue %dx.types.CBufRet.f32 %3790, 0
  %3792 = fcmp fast ugt float %3789, %3791
  br i1 %3792, label %3793, label %3690

; <label>:3793                                    ; preds = %3710
  %3794 = select i1 %3752, float %3789, float 0.000000e+00
  %3795 = fadd fast float %3794, %3571
  %3796 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  br i1 %3752, label %3690, label %3797

; <label>:3797                                    ; preds = %3793
  %3798 = and i32 %3719, 4
  %3799 = and i32 %3719, 8
  %3800 = add i32 %3602, 0
  %3801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3800, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3801, %dx.types.Handle %3802, float %3730, float %3733, float undef, float undef, i32 0, i32 0, i32 undef, float %3735, float %3737, float undef, float %3739, float %3741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.ResRet.f32 %3803, 1
  %3806 = extractvalue %dx.types.ResRet.f32 %3803, 2
  %3807 = extractvalue %dx.types.ResRet.f32 %3803, 3
  %3808 = bitcast float %3628 to i32
  %3809 = and i32 %3808, 255
  %3810 = uitofp i32 %3809 to float
  %3811 = lshr i32 %3808, 8
  %3812 = and i32 %3811, 255
  %3813 = uitofp i32 %3812 to float
  %3814 = fmul fast float %3807, %3810
  %3815 = fadd fast float %3814, %3813
  %3816 = fmul fast float %3815, 0x3F70101000000000
  %3817 = add i32 %3603, 0
  %3818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3817, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3819 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3818, %dx.types.Handle %3802, float %3730, float %3733, float undef, float undef, i32 0, i32 0, i32 undef, float %3735, float %3737, float undef, float %3739, float %3741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3824 = bitcast float %3622 to i32
  %3825 = and i32 %3824, 255
  %3826 = uitofp i32 %3825 to float
  %3827 = lshr i32 %3824, 8
  %3828 = and i32 %3827, 255
  %3829 = uitofp i32 %3828 to float
  %3830 = lshr i32 %3824, 16
  %3831 = and i32 %3830, 255
  %3832 = uitofp i32 %3831 to float
  %3833 = fmul fast float %3832, 0x3F70101000000000
  %3834 = fmul fast float %3820, %3826
  %3835 = fadd fast float %3834, %3829
  %3836 = fmul fast float %3835, 0x3F70101000000000
  %3837 = fadd fast float %3821, -5.000000e-01
  %3838 = fadd fast float %3823, -5.000000e-01
  %3839 = fmul fast float %3837, %3833
  %3840 = fmul fast float %3838, %3833
  %3841 = fadd fast float %3839, 5.000000e-01
  %3842 = fadd fast float %3840, 5.000000e-01
  %3843 = fmul fast float %3804, %3631
  %3844 = fmul fast float %3805, %3632
  %3845 = fmul fast float %3806, %3633
  %3846 = fmul fast float %3841, 2.000000e+00
  %3847 = fadd fast float %3846, -1.000000e+00
  %3848 = fmul fast float %3842, 2.000000e+00
  %3849 = fadd fast float %3848, -1.000000e+00
  %3850 = fadd fast float %3847, %3849
  %3851 = fmul fast float %3850, 5.000000e-01
  %3852 = fsub fast float %3847, %3849
  %3853 = fmul fast float %3852, 5.000000e-01
  %3854 = call float @dx.op.unary.f32(i32 6, float %3851)  ; FAbs(value)
  %3855 = fsub fast float 1.000000e+00, %3854
  %3856 = call float @dx.op.unary.f32(i32 6, float %3853)  ; FAbs(value)
  %3857 = fsub fast float %3855, %3856
  %3858 = call float @dx.op.dot3.f32(i32 55, float %3851, float %3853, float %3857, float %3851, float %3853, float %3857)  ; Dot3(ax,ay,az,bx,by,bz)
  %3859 = call float @dx.op.unary.f32(i32 25, float %3858)  ; Rsqrt(value)
  %3860 = fmul fast float %3851, %3859
  %3861 = fmul fast float %3853, %3859
  %3862 = fmul fast float %3859, %3857
  %3863 = fmul fast float %3862, %3597
  %3864 = fmul fast float %3862, %3598
  %3865 = fmul fast float %3862, %3599
  %3866 = fmul fast float %3860, %3619
  %3867 = fmul fast float %3860, %3620
  %3868 = fmul fast float %3860, %3621
  %3869 = fadd fast float %3866, %3863
  %3870 = fadd fast float %3867, %3864
  %3871 = fadd fast float %3868, %3865
  %3872 = fmul fast float %3861, %3625
  %3873 = fmul fast float %3861, %3626
  %3874 = fmul fast float %3861, %3627
  %3875 = fadd fast float %3869, %3872
  %3876 = fadd fast float %3870, %3873
  %3877 = fadd fast float %3871, %3874
  %3878 = call float @dx.op.dot3.f32(i32 55, float %3875, float %3876, float %3877, float %3875, float %3876, float %3877)  ; Dot3(ax,ay,az,bx,by,bz)
  %3879 = call float @dx.op.unary.f32(i32 25, float %3878)  ; Rsqrt(value)
  %3880 = fmul fast float %3875, %3879
  %3881 = fmul fast float %3876, %3879
  %3882 = fmul fast float %3877, %3879
  %3883 = icmp ne i32 %3799, 0
  %3884 = select i1 %3883, float 1.000000e+00, float 0.000000e+00
  %3885 = fmul fast float %3789, %3884
  %3886 = and i32 %3719, 1
  %3887 = icmp eq i32 %3886, 0
  br i1 %3887, label %3888, label %3892

; <label>:3888                                    ; preds = %3797
  %3889 = fsub fast float %3880, %3579
  %3890 = fsub fast float %3881, %3580
  %3891 = fsub fast float %3882, %3581
  br label %3892

; <label>:3892                                    ; preds = %3888, %3797
  %3893 = phi float [ %3889, %3888 ], [ %3880, %3797 ]
  %3894 = phi float [ %3890, %3888 ], [ %3881, %3797 ]
  %3895 = phi float [ %3891, %3888 ], [ %3882, %3797 ]
  %3896 = fmul float %3895, %3885
  %3897 = fmul float %3894, %3885
  %3898 = fmul float %3893, %3885
  %3899 = fadd fast float %3898, %3579
  %3900 = fadd fast float %3897, %3580
  %3901 = fadd fast float %3896, %3581
  %3902 = icmp ne i32 %3798, 0
  %3903 = select i1 %3902, float 1.000000e+00, float 0.000000e+00
  %3904 = fmul fast float %3789, %3903
  %3905 = fsub fast float %3843, %3586
  %3906 = fsub fast float %3844, %3587
  %3907 = fsub fast float %3845, %3588
  %3908 = fmul fast float %3905, %3904
  %3909 = fmul fast float %3906, %3904
  %3910 = fmul fast float %3907, %3904
  %3911 = fadd fast float %3908, %3586
  %3912 = fadd fast float %3909, %3587
  %3913 = fadd fast float %3910, %3588
  %3914 = fsub fast float %3816, %3585
  %3915 = fmul fast float %3914, %3904
  %3916 = fadd fast float %3915, %3585
  %3917 = fmul fast float %3904, %3575
  %3918 = fsub fast float %3575, %3917
  %3919 = fmul fast float %3904, %3574
  %3920 = fsub fast float %3574, %3919
  %3921 = fadd fast float %3789, %3584
  %3922 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3923 = fsub fast float %3836, %3583
  %3924 = fmul fast float %3923, %3885
  %3925 = fadd fast float %3924, %3583
  %3926 = fsub fast float %3822, %3582
  %3927 = fmul fast float %3926, %3885
  %3928 = fadd fast float %3927, %3582
  %3929 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3844, float %3845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.CBufRet.f32 %3930, 1
  %3933 = fmul fast float %3932, %3929
  %3934 = fadd fast float %3933, %3931
  %3935 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3936 = bitcast float %3634 to i32
  %3937 = and i32 %3936, 65535
  %3938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3937)  ; LegacyF16ToF32(value)
  %3939 = lshr i32 %3936, 16
  %3940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3939)  ; LegacyF16ToF32(value)
  %3941 = fcmp fast oge float %3938, 0.000000e+00
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 0
  %3944 = select i1 %3941, float %3938, float %3943
  %3945 = fadd fast float %3944, %3940
  %3946 = fsub fast float %3935, %3573
  %3947 = fmul fast float %3946, %3789
  %3948 = fadd fast float %3947, %3573
  %3949 = fmul fast float %3945, %3789
  %3950 = call float @dx.op.binary.f32(i32 35, float %3572, float %3949)  ; FMax(a,b)
  %3951 = and i32 %3719, 16
  %3952 = icmp eq i32 %3951, 0
  br i1 %3952, label %3975, label %3953

; <label>:3953                                    ; preds = %3892
  %3954 = bitcast float %3640 to i32
  %3955 = add i32 %3637, 0
  %3956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3955, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3957 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3956, %dx.types.Handle %3802, float %3730, float %3733, float undef, float undef, i32 0, i32 0, i32 undef, float %3735, float %3737, float undef, float %3739, float %3741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.ResRet.f32 %3957, 1
  %3960 = extractvalue %dx.types.ResRet.f32 %3957, 2
  %3961 = and i32 %3954, 65535
  %3962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3961)  ; LegacyF16ToF32(value)
  %3963 = fmul fast float %3958, %3631
  %3964 = fmul fast float %3959, %3632
  %3965 = fmul fast float %3960, %3633
  %3966 = and i32 %3719, 16384
  %3967 = icmp ne i32 %3966, 0
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3970 = select i1 %3967, float %3969, float 1.000000e+00
  %3971 = fmul fast float %3970, %3962
  %3972 = fmul fast float %3963, %3971
  %3973 = fmul fast float %3964, %3971
  %3974 = fmul fast float %3965, %3971
  br label %3975

; <label>:3975                                    ; preds = %3953, %3892
  %3976 = phi float [ %3972, %3953 ], [ 0.000000e+00, %3892 ]
  %3977 = phi float [ %3973, %3953 ], [ 0.000000e+00, %3892 ]
  %3978 = phi float [ %3974, %3953 ], [ 0.000000e+00, %3892 ]
  %3979 = fsub fast float %3976, %3576
  %3980 = fsub fast float %3977, %3577
  %3981 = fsub fast float %3978, %3578
  %3982 = fmul fast float %3979, %3789
  %3983 = fmul fast float %3980, %3789
  %3984 = fmul fast float %3981, %3789
  %3985 = fadd fast float %3982, %3576
  %3986 = fadd fast float %3983, %3577
  %3987 = fadd fast float %3984, %3578
  br label %3690

; <label>:3988                                    ; preds = %3690
  br label %3989

; <label>:3989                                    ; preds = %3988, %3506
  %3990 = phi float [ 0.000000e+00, %3506 ], [ %3691, %3988 ]
  %3991 = phi float [ %3476, %3506 ], [ %3692, %3988 ]
  %3992 = phi float [ %3474, %3506 ], [ %3693, %3988 ]
  %3993 = phi float [ 0.000000e+00, %3506 ], [ %3694, %3988 ]
  %3994 = phi float [ 0.000000e+00, %3506 ], [ %3695, %3988 ]
  %3995 = phi float [ %3468, %3506 ], [ %3696, %3988 ]
  %3996 = phi float [ %3469, %3506 ], [ %3697, %3988 ]
  %3997 = phi float [ %3470, %3506 ], [ %3698, %3988 ]
  %3998 = phi float [ %3502, %3506 ], [ %3699, %3988 ]
  %3999 = phi float [ %3503, %3506 ], [ %3700, %3988 ]
  %4000 = phi float [ %3504, %3506 ], [ %3701, %3988 ]
  %4001 = phi float [ %3473, %3506 ], [ %3702, %3988 ]
  %4002 = phi float [ %3472, %3506 ], [ %3703, %3988 ]
  %4003 = phi float [ 0.000000e+00, %3506 ], [ %3704, %3988 ]
  %4004 = phi float [ %3471, %3506 ], [ %3705, %3988 ]
  %4005 = phi float [ %3465, %3506 ], [ %3706, %3988 ]
  %4006 = phi float [ %3466, %3506 ], [ %3707, %3988 ]
  %4007 = phi float [ %3467, %3506 ], [ %3708, %3988 ]
  %4008 = call float @dx.op.dot3.f32(i32 55, float %3998, float %3999, float %4000, float %3998, float %3999, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = call float @dx.op.unary.f32(i32 25, float %4008)  ; Rsqrt(value)
  %4010 = fmul fast float %4009, %3998
  %4011 = fmul fast float %4009, %3999
  %4012 = fmul fast float %4009, %4000
  %4013 = fadd fast float %4003, %921
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4015 = call float @dx.op.dot3.f32(i32 55, float %4010, float %4011, float %4012, float %4010, float %4011, float %4012)  ; Dot3(ax,ay,az,bx,by,bz)
  %4016 = call float @dx.op.unary.f32(i32 25, float %4015)  ; Rsqrt(value)
  %4017 = fmul fast float %4016, %4010
  %4018 = fmul fast float %4016, %4011
  %4019 = fmul fast float %4016, %4012
  br label %4020

; <label>:4020                                    ; preds = %3989, %3462
  %4021 = phi float [ %4017, %3989 ], [ %3502, %3462 ]
  %4022 = phi float [ %4018, %3989 ], [ %3503, %3462 ]
  %4023 = phi float [ %4019, %3989 ], [ %3504, %3462 ]
  %4024 = phi float [ %4005, %3989 ], [ %3465, %3462 ]
  %4025 = phi float [ %4006, %3989 ], [ %3466, %3462 ]
  %4026 = phi float [ %4007, %3989 ], [ %3467, %3462 ]
  %4027 = phi float [ %3995, %3989 ], [ %3468, %3462 ]
  %4028 = phi float [ %3996, %3989 ], [ %3469, %3462 ]
  %4029 = phi float [ %3997, %3989 ], [ %3470, %3462 ]
  %4030 = phi float [ %4004, %3989 ], [ %3471, %3462 ]
  %4031 = phi float [ %4014, %3989 ], [ %921, %3462 ]
  %4032 = phi float [ %4002, %3989 ], [ %3472, %3462 ]
  %4033 = phi float [ %4001, %3989 ], [ %3473, %3462 ]
  %4034 = phi float [ %3994, %3989 ], [ 0.000000e+00, %3462 ]
  %4035 = phi float [ %3993, %3989 ], [ 0.000000e+00, %3462 ]
  %4036 = phi float [ %3990, %3989 ], [ 0.000000e+00, %3462 ]
  %4037 = phi float [ %3991, %3989 ], [ %3476, %3462 ]
  %4038 = phi float [ %3992, %3989 ], [ %3474, %3462 ]
  %4039 = fadd fast float %4030, 0xBFB99999A0000000
  %4040 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4041 = fmul fast float %4040, 0x3FF1C71C80000000
  %4042 = call float @dx.op.binary.f32(i32 36, float %4030, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4043 = fsub fast float 1.000000e+00, %4041
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4045 = fmul fast float %4044, %4024
  %4046 = fmul fast float %4044, %4025
  %4047 = fmul fast float %4044, %4026
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = fmul fast float %4041, %4024
  %4052 = fmul fast float %4041, %4025
  %4053 = fmul fast float %4041, %4026
  %4054 = fadd fast float %4051, %4042
  %4055 = fadd fast float %4052, %4042
  %4056 = fadd fast float %4053, %4042
  %4057 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4058 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4060 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.i32 %4061, 3
  %4063 = and i32 %4062, 8
  %4064 = icmp ne i32 %4063, 0
  %4065 = call float @dx.op.binary.f32(i32 35, float %4048, float %4024)  ; FMax(a,b)
  %4066 = call float @dx.op.binary.f32(i32 35, float %4049, float %4024)  ; FMax(a,b)
  %4067 = call float @dx.op.binary.f32(i32 35, float %4050, float %4024)  ; FMax(a,b)
  %4068 = call float @dx.op.dot3.f32(i32 55, float %4048, float %4049, float %4050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4069 = select i1 %205, float %4024, float %4048
  %4070 = select i1 %205, float %4068, float %4049
  %4071 = select i1 %205, float 1.000000e+00, float %4050
  %4072 = select i1 %4064, float %4065, float %4069
  %4073 = select i1 %4064, float %4066, float %4070
  %4074 = select i1 %4064, float %4067, float %4071
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 0
  %4077 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4078 = extractvalue %dx.types.CBufRet.f32 %4075, 2
  %4079 = fadd fast float %4076, %166
  %4080 = fadd fast float %4077, %167
  %4081 = fadd fast float %4078, %168
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = extractvalue %dx.types.CBufRet.f32 %4082, 1
  %4085 = fsub fast float %4079, %4083
  %4086 = fsub fast float %4080, %4084
  %4087 = fmul fast float %4085, %4085
  %4088 = fmul fast float %4086, %4086
  %4089 = fadd fast float %4087, %4088
  %4090 = call float @dx.op.unary.f32(i32 24, float %4089)  ; Sqrt(value)
  %4091 = extractvalue %dx.types.CBufRet.f32 %4082, 2
  %4092 = fcmp fast olt float %4090, %4091
  br i1 %4092, label %4093, label %4160

; <label>:4093                                    ; preds = %4020
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 0
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.CBufRet.f32 %4094, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4102 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4103 = extractvalue %dx.types.CBufRet.f32 %4094, 3
  %4104 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4105 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4106 = fadd fast float %4103, %4079
  %4107 = fadd fast float %4104, %4080
  %4108 = fadd fast float %4105, %4081
  %4109 = fmul fast float %4106, %4095
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4097, float %4109)  ; FMad(a,b,c)
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4099, float %4110)  ; FMad(a,b,c)
  %4112 = fmul fast float %4106, %4100
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4101, float %4112)  ; FMad(a,b,c)
  %4114 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4102, float %4113)  ; FMad(a,b,c)
  %4115 = fsub fast float %4111, %4103
  %4116 = fsub fast float %4114, %4104
  %4117 = fsub fast float %4115, %4083
  %4118 = fadd fast float %4117, %4091
  %4119 = fsub fast float %4116, %4084
  %4120 = fadd fast float %4119, %4091
  %4121 = extractvalue %dx.types.CBufRet.f32 %4082, 3
  %4122 = fmul fast float %4118, %4121
  %4123 = fmul fast float %4120, %4121
  %4124 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4125 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4126 = fsub fast float 1.000000e+00, %4124
  %4127 = fsub fast float 1.000000e+00, %4125
  %4128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %4126, float %4127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = fcmp fast ugt float %4129, 0.000000e+00
  br i1 %4130, label %4131, label %4434

; <label>:4131                                    ; preds = %4093
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 2
  %4134 = fmul fast float %4133, %4129
  %4135 = extractvalue %dx.types.CBufRet.f32 %4132, 3
  %4136 = fadd fast float %4135, %4134
  %4137 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4138 = fadd fast float %4136, %4105
  %4139 = fmul fast float %4111, %4099
  %4140 = call float @dx.op.tertiary.f32(i32 46, float %4114, float %4102, float %4139)  ; FMad(a,b,c)
  %4141 = call float @dx.op.tertiary.f32(i32 46, float %4138, float %4137, float %4140)  ; FMad(a,b,c)
  %4142 = fsub fast float %4141, %4105
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 2
  %4145 = fsub fast float %4142, %4144
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %4126, float %4127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.ResRet.f32 %4146, 1
  %4149 = extractvalue %dx.types.ResRet.f32 %4146, 2
  %4150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %4126, float %4127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.ResRet.f32 %4150, 1
  %4153 = extractvalue %dx.types.ResRet.f32 %4150, 2
  %4154 = fadd fast float %4151, %4147
  %4155 = fmul fast float %4154, 0x3F847AE140000000
  %4156 = fadd fast float %4152, %4148
  %4157 = fmul fast float %4156, 0x3F847AE140000000
  %4158 = fadd fast float %4153, %4149
  %4159 = fmul fast float %4158, 0x3F847AE140000000
  br label %4434

; <label>:4160                                    ; preds = %4020
  %4161 = and i32 %184, 1
  %4162 = icmp eq i32 %4161, 0
  br i1 %4162, label %4434, label %4163

; <label>:4163                                    ; preds = %4160
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 0
  %4170 = extractvalue %dx.types.CBufRet.f32 %4164, 1
  %4171 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4168, 1
  %4173 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4174 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4175 = extractvalue %dx.types.CBufRet.f32 %4168, 3
  %4176 = fadd fast float %4173, %4079
  %4177 = fadd fast float %4174, %4080
  %4178 = fadd fast float %4175, %4081
  %4179 = fmul fast float %4176, %4165
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4167, float %4179)  ; FMad(a,b,c)
  %4181 = call float @dx.op.tertiary.f32(i32 46, float %4178, float %4169, float %4180)  ; FMad(a,b,c)
  %4182 = fmul fast float %4176, %4170
  %4183 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4171, float %4182)  ; FMad(a,b,c)
  %4184 = call float @dx.op.tertiary.f32(i32 46, float %4178, float %4172, float %4183)  ; FMad(a,b,c)
  %4185 = fsub fast float %4181, %4173
  %4186 = fsub fast float %4184, %4174
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.CBufRet.f32 %4187, 1
  %4190 = extractvalue %dx.types.CBufRet.f32 %4187, 2
  %4191 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 3
  %4194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.i32 %4194, 0
  %4196 = extractvalue %dx.types.CBufRet.i32 %4194, 1
  %4197 = udiv i32 %4196, %4195
  %4198 = fsub fast float %4185, %4188
  %4199 = fsub fast float %4186, %4189
  %4200 = call float @dx.op.binary.f32(i32 35, float %4198, float 0.000000e+00)  ; FMax(a,b)
  %4201 = call float @dx.op.binary.f32(i32 35, float %4199, float 0.000000e+00)  ; FMax(a,b)
  %4202 = call float @dx.op.binary.f32(i32 36, float %4200, float %4190)  ; FMin(a,b)
  %4203 = call float @dx.op.binary.f32(i32 36, float %4201, float %4191)  ; FMin(a,b)
  %4204 = add i32 %4195, -1
  %4205 = add i32 %4197, -1
  %4206 = fmul fast float %4202, %4193
  %4207 = fmul fast float %4203, %4193
  %4208 = fptoui float %4206 to i32
  %4209 = fptoui float %4207 to i32
  %4210 = call i32 @dx.op.binary.i32(i32 40, i32 %4208, i32 %4204)  ; UMin(a,b)
  %4211 = call i32 @dx.op.binary.i32(i32 40, i32 %4209, i32 %4205)  ; UMin(a,b)
  %4212 = mul i32 %4211, %4195
  %4213 = add i32 %4212, %4210
  %4214 = shl i32 %4213, 2
  %4215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.i32 %4215, 0
  %4217 = icmp eq i32 %4216, -1
  br i1 %4217, label %4434, label %4218

; <label>:4218                                    ; preds = %4163
  %4219 = mul i32 %4216, 148
  %4220 = add i32 %4219, 4
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = add i32 %4219, 8
  %4224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4223, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.f32 %4224, 0
  %4226 = add i32 %4219, 36
  %4227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = add i32 %4219, 60
  %4230 = add i32 %4219, 92
  %4231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.i32 %4231, 0
  %4233 = add i32 %4219, 116
  %4234 = fsub fast float %4185, %4222
  %4235 = fsub fast float %4186, %4225
  %4236 = fmul fast float %4193, %4234
  %4237 = fmul fast float %4193, %4235
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4240 = fsub fast float 1.000000e+00, %4239
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 2
  %4243 = call float @dx.op.unary.f32(i32 83, float %4238)  ; DerivCoarseX(value)
  %4244 = call float @dx.op.unary.f32(i32 83, float %4240)  ; DerivCoarseX(value)
  %4245 = call float @dx.op.unary.f32(i32 84, float %4238)  ; DerivCoarseY(value)
  %4246 = call float @dx.op.unary.f32(i32 84, float %4240)  ; DerivCoarseY(value)
  %4247 = fmul fast float %4243, %4242
  %4248 = fmul fast float %4244, %4242
  %4249 = fmul fast float %4245, %4242
  %4250 = fmul fast float %4246, %4242
  %4251 = call float @dx.op.dot2.f32(i32 54, float %4249, float %4250, float %4249, float %4250)  ; Dot2(ax,ay,bx,by)
  %4252 = call float @dx.op.dot2.f32(i32 54, float %4247, float %4248, float %4247, float %4248)  ; Dot2(ax,ay,bx,by)
  %4253 = call float @dx.op.binary.f32(i32 35, float %4252, float %4251)  ; FMax(a,b)
  %4254 = call float @dx.op.unary.f32(i32 23, float %4253)  ; Log(value)
  %4255 = fmul fast float %4254, 5.000000e-01
  %4256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4257 = extractvalue %dx.types.CBufRet.f32 %4256, 1
  %4258 = fadd fast float %4257, %4255
  %4259 = call float @dx.op.binary.f32(i32 35, float %4258, float 0.000000e+00)  ; FMax(a,b)
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 3
  %4262 = fadd fast float %4261, %4259
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4263, 3
  %4265 = fadd fast float %4262, %4264
  %4266 = add i32 %4232, 0
  %4267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4266, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4268 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4267, i32 0)  ; GetDimensions(handle,mipLevel)
  %4269 = extractvalue %dx.types.Dimensions %4268, 0
  %4270 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4269)  ; FirstbitLo(value)
  %4271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.i32 %4271, 1
  %4273 = sub nsw i32 %4272, %4270
  %4274 = sitofp i32 %4273 to float
  %4275 = fsub fast float %4265, %4274
  %4276 = call float @dx.op.binary.f32(i32 35, float %4275, float 0.000000e+00)  ; FMax(a,b)
  %4277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4267, %dx.types.Handle %27, float %4238, float %4240, float %4228, float undef, i32 0, i32 0, i32 undef, float %4276)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = fcmp ule float %4278, 0x3FE0101020000000
  %4280 = extractvalue %dx.types.CBufRet.i32 %4271, 0
  %4281 = and i32 %4280, 128
  %4282 = icmp ne i32 %4281, 0
  %4283 = and i1 %4279, %4282
  br i1 %4283, label %4434, label %4284

; <label>:4284                                    ; preds = %4218
  %4285 = add i32 %4219, 20
  %4286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4285, i32 undef)  ; BufferLoad(srv,index,wot)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = add i32 %4219, 24
  %4289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = add i32 %4219, 40
  %4292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.f32 %4292, 0
  %4294 = add i32 %4219, 96
  %4295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4294, i32 undef)  ; BufferLoad(srv,index,wot)
  %4296 = extractvalue %dx.types.ResRet.i32 %4295, 0
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 2
  %4299 = fmul fast float %4298, %4238
  %4300 = fmul fast float %4298, %4240
  %4301 = extractvalue %dx.types.CBufRet.f32 %4297, 3
  %4302 = fadd fast float %4299, %4301
  %4303 = fadd fast float %4300, %4301
  %4304 = add i32 %4296, 0
  %4305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4304, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4306 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4305, i32 0)  ; GetDimensions(handle,mipLevel)
  %4307 = extractvalue %dx.types.Dimensions %4306, 0
  %4308 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4307)  ; FirstbitLo(value)
  %4309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.i32 %4309, 1
  %4311 = sub nsw i32 %4310, %4308
  %4312 = sitofp i32 %4311 to float
  %4313 = fsub fast float %4262, %4312
  %4314 = call float @dx.op.binary.f32(i32 35, float %4313, float 0.000000e+00)  ; FMax(a,b)
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4305, %dx.types.Handle %27, float %4302, float %4303, float %4293, float undef, i32 0, i32 0, i32 undef, float %4314)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = fmul fast float %4316, %4287
  %4318 = fadd fast float %4317, %4290
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4322 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4323, 3
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 3
  %4327 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4328 = fadd fast float %4324, %4185
  %4329 = fadd fast float %4326, %4186
  %4330 = fadd fast float %4318, %4327
  %4331 = fmul fast float %4328, %4320
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4321, float %4331)  ; FMad(a,b,c)
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4330, float %4322, float %4332)  ; FMad(a,b,c)
  %4334 = fsub fast float %4333, %4327
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %4337 = fsub fast float %4334, %4336
  %4338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.i32 %4338, 0
  %4340 = call i32 @dx.op.binary.i32(i32 40, i32 %4216, i32 %4339)  ; UMin(a,b)
  %4341 = mul i32 %4340, 36
  %4342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.i32 %4342, 0
  %4344 = add i32 %4341, 4
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  %4347 = fmul fast float %4346, %4238
  %4348 = fmul fast float %4346, %4240
  %4349 = extractvalue %dx.types.CBufRet.f32 %4345, 1
  %4350 = fadd fast float %4347, %4349
  %4351 = fadd fast float %4348, %4349
  %4352 = icmp eq i32 %4343, 0
  br i1 %4352, label %4421, label %4353

; <label>:4353                                    ; preds = %4284
  br label %4354

; <label>:4354                                    ; preds = %4411, %4353
  %4355 = phi float [ %4412, %4411 ], [ 0.000000e+00, %4353 ]
  %4356 = phi float [ %4413, %4411 ], [ 0.000000e+00, %4353 ]
  %4357 = phi float [ %4414, %4411 ], [ 0.000000e+00, %4353 ]
  %4358 = phi float [ %4415, %4411 ], [ 0.000000e+00, %4353 ]
  %4359 = phi float [ %4416, %4411 ], [ 0.000000e+00, %4353 ]
  %4360 = phi float [ %4417, %4411 ], [ 0.000000e+00, %4353 ]
  %4361 = phi i32 [ %4418, %4411 ], [ 0, %4353 ]
  %4362 = shl i32 %4361, 2
  %4363 = add i32 %4229, %4362
  %4364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = add i32 %4233, %4362
  %4367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.i32 %4367, 0
  %4369 = add i32 %4368, 0
  %4370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4369, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4371 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4370, i32 0)  ; GetDimensions(handle,mipLevel)
  %4372 = extractvalue %dx.types.Dimensions %4371, 0
  %4373 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4372)  ; FirstbitLo(value)
  %4374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.i32 %4374, 1
  %4376 = sub nsw i32 %4375, %4373
  %4377 = sitofp i32 %4376 to float
  %4378 = fsub fast float %4262, %4377
  %4379 = call float @dx.op.binary.f32(i32 35, float %4378, float 0.000000e+00)  ; FMax(a,b)
  %4380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4370, %dx.types.Handle %27, float %4350, float %4351, float %4365, float undef, i32 0, i32 0, i32 undef, float %4379)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = fcmp fast ogt float %4381, 0.000000e+00
  br i1 %4382, label %4383, label %4411

; <label>:4383                                    ; preds = %4354
  %4384 = add i32 %4344, %4362
  %4385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4384, i32 undef)  ; BufferLoad(srv,index,wot)
  %4386 = extractvalue %dx.types.ResRet.i32 %4385, 0
  %4387 = and i32 %4386, 32767
  %4388 = mul nuw nsw i32 %4387, 928
  %4389 = add nuw nsw i32 %4388, 48
  %4390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.ResRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.ResRet.f32 %4390, 2
  %4394 = add nuw nsw i32 %4388, 60
  %4395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4394, i32 undef)  ; BufferLoad(srv,index,wot)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = fmul fast float %4391, %4381
  %4400 = fmul fast float %4392, %4381
  %4401 = fmul fast float %4393, %4381
  %4402 = fadd fast float %4399, %4355
  %4403 = fadd fast float %4400, %4356
  %4404 = fadd fast float %4401, %4357
  %4405 = fmul fast float %4396, %4381
  %4406 = fmul fast float %4397, %4381
  %4407 = fmul fast float %4398, %4381
  %4408 = fadd fast float %4405, %4358
  %4409 = fadd fast float %4406, %4359
  %4410 = fadd fast float %4407, %4360
  br label %4411

; <label>:4411                                    ; preds = %4383, %4354
  %4412 = phi float [ %4402, %4383 ], [ %4355, %4354 ]
  %4413 = phi float [ %4403, %4383 ], [ %4356, %4354 ]
  %4414 = phi float [ %4404, %4383 ], [ %4357, %4354 ]
  %4415 = phi float [ %4408, %4383 ], [ %4358, %4354 ]
  %4416 = phi float [ %4409, %4383 ], [ %4359, %4354 ]
  %4417 = phi float [ %4410, %4383 ], [ %4360, %4354 ]
  %4418 = add nuw i32 %4361, 1
  %4419 = icmp eq i32 %4418, %4343
  br i1 %4419, label %4420, label %4354

; <label>:4420                                    ; preds = %4411
  br label %4421

; <label>:4421                                    ; preds = %4420, %4284
  %4422 = phi float [ 0.000000e+00, %4284 ], [ %4412, %4420 ]
  %4423 = phi float [ 0.000000e+00, %4284 ], [ %4413, %4420 ]
  %4424 = phi float [ 0.000000e+00, %4284 ], [ %4414, %4420 ]
  %4425 = phi float [ 0.000000e+00, %4284 ], [ %4415, %4420 ]
  %4426 = phi float [ 0.000000e+00, %4284 ], [ %4416, %4420 ]
  %4427 = phi float [ 0.000000e+00, %4284 ], [ %4417, %4420 ]
  %4428 = fadd fast float %4425, %4422
  %4429 = fmul fast float %4428, 0x3F847AE140000000
  %4430 = fadd fast float %4426, %4423
  %4431 = fmul fast float %4430, 0x3F847AE140000000
  %4432 = fadd fast float %4427, %4424
  %4433 = fmul fast float %4432, 0x3F847AE140000000
  br label %4434

; <label>:4434                                    ; preds = %4421, %4218, %4163, %4160, %4131, %4093
  %4435 = phi float [ %4145, %4131 ], [ -1.310720e+05, %4093 ], [ %4337, %4421 ], [ -1.310720e+05, %4163 ], [ -1.310720e+05, %4218 ], [ -1.310720e+05, %4160 ]
  %4436 = phi float [ %4155, %4131 ], [ 0.000000e+00, %4093 ], [ %4429, %4421 ], [ 0.000000e+00, %4163 ], [ 0.000000e+00, %4218 ], [ 0.000000e+00, %4160 ]
  %4437 = phi float [ %4157, %4131 ], [ 0.000000e+00, %4093 ], [ %4431, %4421 ], [ 0.000000e+00, %4163 ], [ 0.000000e+00, %4218 ], [ 0.000000e+00, %4160 ]
  %4438 = phi float [ %4159, %4131 ], [ 0.000000e+00, %4093 ], [ %4433, %4421 ], [ 0.000000e+00, %4163 ], [ 0.000000e+00, %4218 ], [ 0.000000e+00, %4160 ]
  %4439 = phi i1 [ true, %4131 ], [ false, %4093 ], [ true, %4421 ], [ false, %4163 ], [ false, %4218 ], [ false, %4160 ]
  %4440 = and i32 %184, 3
  %4441 = icmp eq i32 %4440, 1
  %4442 = select i1 %4441, float 1.000000e+00, float 0.000000e+00
  %4443 = fsub fast float %4435, %168
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = select i1 %4439, float %4444, float 1.000000e+00
  %4446 = fmul fast float %4445, %4442
  %4447 = icmp eq i32 %4440, 3
  %4448 = select i1 %4447, float 1.000000e+00, float %4446
  %4449 = call float @dx.op.binary.f32(i32 35, float %4036, float %4448)  ; FMax(a,b)
  %4450 = fcmp fast olt float %4448, 1.000000e+00
  %4451 = fcmp uge float %49, 0.000000e+00
  %4452 = and i1 %4451, %4450
  br i1 %4452, label %4453, label %4463

; <label>:4453                                    ; preds = %4434
  %4454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4455 = extractvalue %dx.types.ResRet.f32 %4454, 0
  %4456 = extractvalue %dx.types.ResRet.f32 %4454, 1
  %4457 = extractvalue %dx.types.ResRet.f32 %4454, 2
  %4458 = fadd fast float %4455, %4449
  %4459 = fcmp ule float %48, 0.000000e+00
  %4460 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4461 = select i1 %4459, float %4460, float 1.000000e+00
  %4462 = fmul fast float %4461, %4457
  br label %4463

; <label>:4463                                    ; preds = %4453, %4434
  %4464 = phi float [ %4458, %4453 ], [ %4449, %4434 ]
  %4465 = phi float [ %4456, %4453 ], [ 0.000000e+00, %4434 ]
  %4466 = phi float [ %4462, %4453 ], [ 0.000000e+00, %4434 ]
  %4467 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4468 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4470 = fcmp fast une float %4468, 0.000000e+00
  %4471 = fcmp fast une float %4469, 0.000000e+00
  %4472 = or i1 %4470, %4471
  br i1 %4472, label %4473, label %5032

; <label>:4473                                    ; preds = %4463
  br i1 %4470, label %4474, label %4747

; <label>:4474                                    ; preds = %4473
  %4475 = call float @dx.op.unary.f32(i32 23, float %4033)  ; Log(value)
  %4476 = fmul fast float %4475, 4.000000e+00
  %4477 = call float @dx.op.unary.f32(i32 21, float %4476)  ; Exp(value)
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4520 = fcmp fast ole float %216, %4498
  %4521 = fmul fast float %4497, %4495
  %4522 = fcmp fast ole float %216, %4521
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
  %4574 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4573, %dx.types.Handle %80, float %4566, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float %4529, float %4530, float undef, float %4533, float %4534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 1
  %4578 = extractvalue %dx.types.CBufRet.f32 %4576, 2
  %4579 = fsub fast float 1.000000e+00, %4468
  %4580 = call float @dx.op.binary.f32(i32 35, float %4579, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4581 = bitcast float %4468 to i32
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
  %4610 = phi float [ %4607, %4571 ], [ %4468, %4474 ]
  %4611 = fmul fast float %4610, %4477
  %4612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.i32 %4612, 1
  %4614 = extractvalue %dx.types.CBufRet.i32 %4612, 0
  %4615 = add i32 %4614, 0
  %4616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4617 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4616, %dx.types.Handle %79, float %4566, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float %4529, float %4530, float undef, float %4533, float %4534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
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
  %4651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.i32 %4651, 3
  %4653 = extractvalue %dx.types.CBufRet.i32 %4651, 2
  %4654 = add i32 %4653, 0
  %4655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4656 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4655, %dx.types.Handle %79, float %4566, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float %4529, float %4530, float undef, float %4533, float %4534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
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
  %4705 = fsub fast float %4639, %4072
  %4706 = fsub fast float %4640, %4073
  %4707 = fsub fast float %4641, %4074
  %4708 = fmul fast float %4705, %4611
  %4709 = fmul fast float %4706, %4611
  %4710 = fmul fast float %4707, %4611
  %4711 = fadd fast float %4708, %4072
  %4712 = fadd fast float %4709, %4073
  %4713 = fadd fast float %4710, %4074
  %4714 = fsub fast float %4648, %4057
  %4715 = fsub fast float %4649, %4058
  %4716 = fsub fast float %4650, %4059
  %4717 = fmul fast float %4714, %4611
  %4718 = fmul fast float %4715, %4611
  %4719 = fmul fast float %4716, %4611
  %4720 = fadd fast float %4717, %4057
  %4721 = fadd fast float %4718, %4058
  %4722 = fadd fast float %4719, %4059
  %4723 = fadd fast float %4702, %4021
  %4724 = fadd fast float %4703, %4022
  %4725 = fadd fast float %4704, %4023
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4724, float %4725, float %4723, float %4724, float %4725)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = call float @dx.op.unary.f32(i32 25, float %4726)  ; Rsqrt(value)
  %4728 = fmul fast float %4723, %4727
  %4729 = fmul fast float %4724, %4727
  %4730 = fmul fast float %4725, %4727
  %4731 = fsub fast float %4728, %4021
  %4732 = fsub fast float %4729, %4022
  %4733 = fsub fast float %4730, %4023
  %4734 = fmul fast float %4731, %4611
  %4735 = fmul fast float %4732, %4611
  %4736 = fmul fast float %4733, %4611
  %4737 = fadd fast float %4734, %4021
  %4738 = fadd fast float %4735, %4022
  %4739 = fadd fast float %4736, %4023
  %4740 = call float @dx.op.binary.f32(i32 36, float %4033, float %4659)  ; FMin(a,b)
  %4741 = fsub fast float %4740, %4033
  %4742 = fmul fast float %4741, %4611
  %4743 = fadd fast float %4742, %4033
  %4744 = fsub fast float %4672, %4060
  %4745 = fmul fast float %4744, %4611
  %4746 = fadd fast float %4745, %4060
  br label %4747

; <label>:4747                                    ; preds = %4609, %4571, %4473
  %4748 = phi float [ %4720, %4609 ], [ %4057, %4571 ], [ %4057, %4473 ]
  %4749 = phi float [ %4721, %4609 ], [ %4058, %4571 ], [ %4058, %4473 ]
  %4750 = phi float [ %4722, %4609 ], [ %4059, %4571 ], [ %4059, %4473 ]
  %4751 = phi float [ %4711, %4609 ], [ %4072, %4571 ], [ %4072, %4473 ]
  %4752 = phi float [ %4712, %4609 ], [ %4073, %4571 ], [ %4073, %4473 ]
  %4753 = phi float [ %4713, %4609 ], [ %4074, %4571 ], [ %4074, %4473 ]
  %4754 = phi float [ %4737, %4609 ], [ %4021, %4571 ], [ %4021, %4473 ]
  %4755 = phi float [ %4738, %4609 ], [ %4022, %4571 ], [ %4022, %4473 ]
  %4756 = phi float [ %4739, %4609 ], [ %4023, %4571 ], [ %4023, %4473 ]
  %4757 = phi float [ %4746, %4609 ], [ %4060, %4571 ], [ %4060, %4473 ]
  %4758 = phi float [ %4743, %4609 ], [ %4033, %4571 ], [ %4033, %4473 ]
  br i1 %4471, label %4759, label %5032

; <label>:4759                                    ; preds = %4747
  %4760 = call float @dx.op.unary.f32(i32 23, float %4758)  ; Log(value)
  %4761 = fmul fast float %4760, 4.000000e+00
  %4762 = call float @dx.op.unary.f32(i32 21, float %4761)  ; Exp(value)
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 0
  %4765 = fmul fast float %4764, %36
  %4766 = fmul fast float %4764, %37
  %4767 = fmul fast float %4764, %38
  %4768 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4769 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4770 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4771 = call float @dx.op.unary.f32(i32 23, float %4768)  ; Log(value)
  %4772 = call float @dx.op.unary.f32(i32 23, float %4769)  ; Log(value)
  %4773 = call float @dx.op.unary.f32(i32 23, float %4770)  ; Log(value)
  %4774 = fmul fast float %4771, 4.000000e+00
  %4775 = fmul fast float %4772, 4.000000e+00
  %4776 = fmul fast float %4773, 4.000000e+00
  %4777 = call float @dx.op.unary.f32(i32 21, float %4774)  ; Exp(value)
  %4778 = call float @dx.op.unary.f32(i32 21, float %4775)  ; Exp(value)
  %4779 = call float @dx.op.unary.f32(i32 21, float %4776)  ; Exp(value)
  %4780 = fadd fast float %4778, %4777
  %4781 = fadd fast float %4780, %4779
  %4782 = fdiv fast float 1.000000e+00, %4781
  %4783 = fmul fast float %4782, %4777
  %4784 = fcmp fast ogt float %45, 0.000000e+00
  %4785 = fcmp fast ogt float %46, 0.000000e+00
  %4786 = fcmp fast ogt float %47, 0.000000e+00
  %4787 = fcmp fast olt float %45, 0.000000e+00
  %4788 = fcmp fast olt float %46, 0.000000e+00
  %4789 = fcmp fast olt float %47, 0.000000e+00
  %4790 = zext i1 %4784 to i32
  %4791 = zext i1 %4785 to i32
  %4792 = zext i1 %4786 to i32
  %4793 = zext i1 %4787 to i32
  %4794 = zext i1 %4788 to i32
  %4795 = zext i1 %4789 to i32
  %4796 = sub nsw i32 %4790, %4793
  %4797 = sub nsw i32 %4791, %4794
  %4798 = sub nsw i32 %4792, %4795
  %4799 = call float @dx.op.unary.f32(i32 83, float %4765)  ; DerivCoarseX(value)
  %4800 = call float @dx.op.unary.f32(i32 83, float %4766)  ; DerivCoarseX(value)
  %4801 = call float @dx.op.unary.f32(i32 83, float %4767)  ; DerivCoarseX(value)
  %4802 = call float @dx.op.unary.f32(i32 84, float %4765)  ; DerivCoarseY(value)
  %4803 = call float @dx.op.unary.f32(i32 84, float %4766)  ; DerivCoarseY(value)
  %4804 = call float @dx.op.unary.f32(i32 84, float %4767)  ; DerivCoarseY(value)
  %4805 = fcmp fast ole float %216, %4783
  %4806 = fmul fast float %4782, %4780
  %4807 = fcmp fast ole float %216, %4806
  %4808 = select i1 %4807, float %4767, float %4765
  %4809 = select i1 %4807, float %4765, float %4766
  %4810 = select i1 %4805, float %4766, float %4808
  %4811 = select i1 %4805, float %4767, float %4809
  %4812 = select i1 %4807, float %4801, float %4799
  %4813 = select i1 %4807, float %4799, float %4800
  %4814 = select i1 %4805, float %4800, float %4812
  %4815 = select i1 %4805, float %4801, float %4813
  %4816 = select i1 %4807, float %4804, float %4802
  %4817 = select i1 %4807, float %4802, float %4803
  %4818 = select i1 %4805, float %4803, float %4816
  %4819 = select i1 %4805, float %4804, float %4817
  %4820 = call float @dx.op.unary.f32(i32 27, float %4810)  ; Round_ni(value)
  %4821 = call float @dx.op.unary.f32(i32 27, float %4811)  ; Round_ni(value)
  %4822 = fptosi float %4820 to i32
  %4823 = fptosi float %4821 to i32
  %4824 = xor i32 %4823, %4822
  %4825 = sitofp i32 %4824 to float
  %4826 = fptosi float %4825 to i32
  %4827 = sitofp i32 %4826 to float
  %4828 = fmul fast float %4827, 0x3FE3C6EF40000000
  %4829 = frem fast float %4820, 2.560000e+02
  %4830 = frem fast float %4821, 2.560000e+02
  %4831 = fptoui float %4829 to i32
  %4832 = fptoui float %4830 to i32
  %4833 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4831, i32 %4832, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.ResRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.ResRet.f32 %4833, 2
  %4837 = fadd fast float %4834, %4828
  %4838 = fadd fast float %4835, %4828
  %4839 = fadd fast float %4836, %4828
  %4840 = call float @dx.op.unary.f32(i32 22, float %4837)  ; Frc(value)
  %4841 = call float @dx.op.unary.f32(i32 22, float %4838)  ; Frc(value)
  %4842 = call float @dx.op.unary.f32(i32 22, float %4839)  ; Frc(value)
  %4843 = fmul fast float %4842, 0x401921FB60000000
  %4844 = call float @dx.op.unary.f32(i32 13, float %4843)  ; Sin(value)
  %4845 = call float @dx.op.unary.f32(i32 12, float %4843)  ; Cos(value)
  %4846 = fsub fast float -0.000000e+00, %4845
  %4847 = fmul fast float %4845, %4810
  %4848 = call float @dx.op.tertiary.f32(i32 46, float %4844, float %4811, float %4847)  ; FMad(a,b,c)
  %4849 = fmul fast float %4844, %4810
  %4850 = call float @dx.op.tertiary.f32(i32 46, float %4846, float %4811, float %4849)  ; FMad(a,b,c)
  %4851 = fadd fast float %4848, %4840
  %4852 = fadd fast float %4850, %4841
  %4853 = extractvalue %dx.types.CBufRet.f32 %4763, 3
  %4854 = bitcast float %4853 to i32
  %4855 = icmp eq i32 %4854, 0
  br i1 %4855, label %4894, label %4856

; <label>:4856                                    ; preds = %4759
  %4857 = add i32 %4854, 0
  %4858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4859 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4858, %dx.types.Handle %80, float %4851, float %4852, float undef, float undef, i32 0, i32 0, i32 undef, float %4814, float %4815, float undef, float %4818, float %4819, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4863 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4864 = fsub fast float 1.000000e+00, %4469
  %4865 = call float @dx.op.binary.f32(i32 35, float %4864, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4866 = bitcast float %4469 to i32
  %4867 = sitofp i32 %4866 to float
  %4868 = fadd fast float %4867, 0xC1CFBF8940000000
  %4869 = fmul fast float %4863, %4868
  %4870 = fadd fast float %4869, 0x41CFBF8940000000
  %4871 = fptosi float %4870 to i32
  %4872 = bitcast i32 %4871 to float
  %4873 = bitcast float %4865 to i32
  %4874 = sitofp i32 %4873 to float
  %4875 = fadd fast float %4874, 0xC1CFBF8940000000
  %4876 = fmul fast float %4875, %4863
  %4877 = fadd fast float %4876, 0x41CFBF8940000000
  %4878 = fptosi float %4877 to i32
  %4879 = bitcast i32 %4878 to float
  %4880 = fmul fast float %4872, %4862
  %4881 = fmul fast float %4879, %4862
  %4882 = fsub fast float %4865, %4880
  %4883 = fadd fast float %4881, %4865
  %4884 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4885 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4886 = fsub fast float %4860, %4884
  %4887 = fsub fast float %4885, %4884
  %4888 = bitcast float %4887 to i32
  %4889 = sub nsw i32 2129859010, %4888
  %4890 = bitcast i32 %4889 to float
  %4891 = fmul fast float %4890, %4886
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fcmp fast olt float %4892, 0x3F70101020000000
  br i1 %4893, label %5032, label %4894

; <label>:4894                                    ; preds = %4856, %4759
  %4895 = phi float [ %4892, %4856 ], [ %4469, %4759 ]
  %4896 = fmul fast float %4895, %4762
  %4897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4898 = extractvalue %dx.types.CBufRet.i32 %4897, 1
  %4899 = extractvalue %dx.types.CBufRet.i32 %4897, 0
  %4900 = add i32 %4899, 0
  %4901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4902 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4901, %dx.types.Handle %79, float %4851, float %4852, float undef, float undef, i32 0, i32 0, i32 undef, float %4814, float %4815, float undef, float %4818, float %4819, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4903 = extractvalue %dx.types.ResRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.ResRet.f32 %4902, 1
  %4905 = extractvalue %dx.types.ResRet.f32 %4902, 2
  %4906 = extractvalue %dx.types.ResRet.f32 %4902, 3
  %4907 = and i32 %4898, 255
  %4908 = uitofp i32 %4907 to float
  %4909 = lshr i32 %4898, 8
  %4910 = and i32 %4909, 255
  %4911 = uitofp i32 %4910 to float
  %4912 = fmul fast float %4906, %4908
  %4913 = fadd fast float %4912, %4911
  %4914 = fmul fast float %4913, 0x3F70101000000000
  %4915 = fadd fast float %4914, 0xBFB99999A0000000
  %4916 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4917 = fmul fast float %4916, 0x3FF1C71C80000000
  %4918 = call float @dx.op.binary.f32(i32 36, float %4914, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4919 = fsub fast float 1.000000e+00, %4917
  %4920 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4921 = fmul fast float %4920, %4903
  %4922 = fmul fast float %4920, %4904
  %4923 = fmul fast float %4920, %4905
  %4924 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4925 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4927 = fmul fast float %4917, %4903
  %4928 = fmul fast float %4917, %4904
  %4929 = fmul fast float %4917, %4905
  %4930 = fadd fast float %4927, %4918
  %4931 = fadd fast float %4928, %4918
  %4932 = fadd fast float %4929, %4918
  %4933 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4935 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.i32 %4936, 3
  %4938 = extractvalue %dx.types.CBufRet.i32 %4936, 2
  %4939 = add i32 %4938, 0
  %4940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4940, %dx.types.Handle %79, float %4851, float %4852, float undef, float undef, i32 0, i32 0, i32 undef, float %4814, float %4815, float undef, float %4818, float %4819, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = extractvalue %dx.types.ResRet.f32 %4941, 3
  %4946 = and i32 %4937, 255
  %4947 = uitofp i32 %4946 to float
  %4948 = lshr i32 %4937, 8
  %4949 = and i32 %4948, 255
  %4950 = uitofp i32 %4949 to float
  %4951 = lshr i32 %4937, 16
  %4952 = and i32 %4951, 255
  %4953 = uitofp i32 %4952 to float
  %4954 = fmul fast float %4953, 0x3F70101000000000
  %4955 = fmul fast float %4942, %4947
  %4956 = fadd fast float %4955, %4950
  %4957 = fmul fast float %4956, 0x3F70101000000000
  %4958 = fadd fast float %4943, -5.000000e-01
  %4959 = fadd fast float %4945, -5.000000e-01
  %4960 = fmul fast float %4958, %4954
  %4961 = fmul fast float %4959, %4954
  %4962 = fadd fast float %4960, 5.000000e-01
  %4963 = fadd fast float %4961, 5.000000e-01
  %4964 = fmul fast float %4962, 2.000000e+00
  %4965 = fadd fast float %4964, -1.000000e+00
  %4966 = fmul fast float %4963, 2.000000e+00
  %4967 = fadd fast float %4966, -1.000000e+00
  %4968 = fadd fast float %4965, %4967
  %4969 = fmul fast float %4968, 5.000000e-01
  %4970 = fsub fast float %4965, %4967
  %4971 = fmul fast float %4970, 5.000000e-01
  %4972 = call float @dx.op.unary.f32(i32 6, float %4969)  ; FAbs(value)
  %4973 = fsub fast float 1.000000e+00, %4972
  %4974 = call float @dx.op.unary.f32(i32 6, float %4971)  ; FAbs(value)
  %4975 = fsub fast float %4973, %4974
  %4976 = call float @dx.op.dot3.f32(i32 55, float %4969, float %4971, float %4975, float %4969, float %4971, float %4975)  ; Dot3(ax,ay,az,bx,by,bz)
  %4977 = call float @dx.op.unary.f32(i32 25, float %4976)  ; Rsqrt(value)
  %4978 = fmul fast float %4969, %4977
  %4979 = fmul fast float %4971, %4977
  %4980 = select i1 %4807, i32 %4797, i32 %4798
  %4981 = select i1 %4805, i32 %4796, i32 %4980
  %4982 = sitofp i32 %4981 to float
  %4983 = fmul fast float %4975, %4982
  %4984 = fmul fast float %4983, %4977
  %4985 = select i1 %4807, float %4984, float %4979
  %4986 = select i1 %4807, float %4979, float %4984
  %4987 = select i1 %4805, float %4984, float %4978
  %4988 = select i1 %4805, float %4979, float %4985
  %4989 = select i1 %4805, float %4978, float %4986
  %4990 = fsub fast float %4924, %4751
  %4991 = fsub fast float %4925, %4752
  %4992 = fsub fast float %4926, %4753
  %4993 = fmul fast float %4990, %4896
  %4994 = fmul fast float %4991, %4896
  %4995 = fmul fast float %4992, %4896
  %4996 = fadd fast float %4993, %4751
  %4997 = fadd fast float %4994, %4752
  %4998 = fadd fast float %4995, %4753
  %4999 = fsub fast float %4933, %4748
  %5000 = fsub fast float %4934, %4749
  %5001 = fsub fast float %4935, %4750
  %5002 = fmul fast float %4999, %4896
  %5003 = fmul fast float %5000, %4896
  %5004 = fmul fast float %5001, %4896
  %5005 = fadd fast float %5002, %4748
  %5006 = fadd fast float %5003, %4749
  %5007 = fadd fast float %5004, %4750
  %5008 = fadd fast float %4987, %4754
  %5009 = fadd fast float %4988, %4755
  %5010 = fadd fast float %4989, %4756
  %5011 = call float @dx.op.dot3.f32(i32 55, float %5008, float %5009, float %5010, float %5008, float %5009, float %5010)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = call float @dx.op.unary.f32(i32 25, float %5011)  ; Rsqrt(value)
  %5013 = fmul fast float %5008, %5012
  %5014 = fmul fast float %5009, %5012
  %5015 = fmul fast float %5010, %5012
  %5016 = fsub fast float %5013, %4754
  %5017 = fsub fast float %5014, %4755
  %5018 = fsub fast float %5015, %4756
  %5019 = fmul fast float %5016, %4896
  %5020 = fmul fast float %5017, %4896
  %5021 = fmul fast float %5018, %4896
  %5022 = fadd fast float %5019, %4754
  %5023 = fadd fast float %5020, %4755
  %5024 = fadd fast float %5021, %4756
  %5025 = call float @dx.op.binary.f32(i32 36, float %4758, float %4944)  ; FMin(a,b)
  %5026 = fsub fast float %5025, %4758
  %5027 = fmul fast float %5026, %4896
  %5028 = fadd fast float %5027, %4758
  %5029 = fsub fast float %4957, %4757
  %5030 = fmul fast float %5029, %4896
  %5031 = fadd fast float %5030, %4757
  br label %5032

; <label>:5032                                    ; preds = %4894, %4856, %4747, %4463
  %5033 = phi float [ %5005, %4894 ], [ %4748, %4856 ], [ %4748, %4747 ], [ %4057, %4463 ]
  %5034 = phi float [ %5006, %4894 ], [ %4749, %4856 ], [ %4749, %4747 ], [ %4058, %4463 ]
  %5035 = phi float [ %5007, %4894 ], [ %4750, %4856 ], [ %4750, %4747 ], [ %4059, %4463 ]
  %5036 = phi float [ %4996, %4894 ], [ %4751, %4856 ], [ %4751, %4747 ], [ %4072, %4463 ]
  %5037 = phi float [ %4997, %4894 ], [ %4752, %4856 ], [ %4752, %4747 ], [ %4073, %4463 ]
  %5038 = phi float [ %4998, %4894 ], [ %4753, %4856 ], [ %4753, %4747 ], [ %4074, %4463 ]
  %5039 = phi float [ %5022, %4894 ], [ %4754, %4856 ], [ %4754, %4747 ], [ %4021, %4463 ]
  %5040 = phi float [ %5023, %4894 ], [ %4755, %4856 ], [ %4755, %4747 ], [ %4022, %4463 ]
  %5041 = phi float [ %5024, %4894 ], [ %4756, %4856 ], [ %4756, %4747 ], [ %4023, %4463 ]
  %5042 = phi float [ %5031, %4894 ], [ %4757, %4856 ], [ %4757, %4747 ], [ %4060, %4463 ]
  %5043 = phi float [ %5028, %4894 ], [ %4758, %4856 ], [ %4758, %4747 ], [ %4033, %4463 ]
  %5044 = fcmp fast une float %4467, 0.000000e+00
  %5045 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  br i1 %5044, label %5054, label %5047

; <label>:5047                                    ; preds = %5032
  %5048 = fmul fast float %5046, %166
  %5049 = fmul fast float %5046, %167
  %5050 = fmul fast float %5046, %168
  %5051 = fsub fast float -0.000000e+00, %5048
  %5052 = fsub fast float -0.000000e+00, %5049
  %5053 = fsub fast float -0.000000e+00, %5050
  br label %5221

; <label>:5054                                    ; preds = %5032
  %5055 = fmul fast float %166, %5046
  %5056 = fsub fast float -0.000000e+00, %5055
  %5057 = fmul fast float %167, %5046
  %5058 = fsub fast float -0.000000e+00, %5057
  %5059 = fmul fast float %168, %5046
  %5060 = fsub fast float -0.000000e+00, %5059
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5058, float %5060, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = fmul fast float %4467, 2.500000e+00
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fmul fast float %4467, 0x4013FFFFE0000000
  %5065 = fadd fast float %5064, 0xBFFFFFFFE0000000
  %5066 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5067 = fmul fast float %4467, 0x4004000020000000
  %5068 = fadd fast float %5067, 0xBFF8000040000000
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = fmul fast float %4039, 1.000000e+01
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5071, 2.000000e+00
  %5073 = fsub fast float 3.000000e+00, %5072
  %5074 = fmul fast float %5071, %5071
  %5075 = fmul fast float %5074, %5073
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = fsub fast float 0x3FE3333340000000, %5042
  %5078 = fmul fast float %5077, 0x400AAAAAA0000000
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %5076, %5079
  %5081 = fmul fast float %5036, 0x3FEA2B8620000000
  %5082 = fmul fast float %5037, 0x3FEA2B8620000000
  %5083 = fmul fast float %5038, 0x3FEA2B8620000000
  %5084 = fadd fast float %5081, 0x3FC81DFBA0000000
  %5085 = fmul fast float %5084, %5036
  %5086 = fadd fast float %5085, 0x3F910E6020000000
  %5087 = fadd fast float %5082, 0x3FC81DFBA0000000
  %5088 = fmul fast float %5087, %5037
  %5089 = fadd fast float %5088, 0x3F910E6020000000
  %5090 = fadd fast float %5083, 0x3FC81DFBA0000000
  %5091 = fmul fast float %5090, %5038
  %5092 = fadd fast float %5091, 0x3F910E6020000000
  %5093 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = fsub fast float %5093, %5036
  %5097 = fsub fast float %5094, %5037
  %5098 = fsub fast float %5095, %5038
  %5099 = fmul fast float %5096, %5063
  %5100 = fmul fast float %5099, %5080
  %5101 = fmul fast float %5097, %5063
  %5102 = fmul fast float %5101, %5080
  %5103 = fmul fast float %5098, %5063
  %5104 = fmul fast float %5103, %5080
  %5105 = fadd fast float %5100, %5036
  %5106 = fadd fast float %5102, %5037
  %5107 = fadd fast float %5104, %5038
  %5108 = fmul fast float %5043, %5043
  %5109 = fmul fast float %5108, %5108
  %5110 = fadd fast float %5066, 1.000000e+00
  %5111 = fsub fast float %5110, %5080
  %5112 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5113 = call float @dx.op.dot3.f32(i32 55, float %92, float %94, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fsub fast float 1.000000e+00, %5109
  %5116 = call float @dx.op.binary.f32(i32 36, float %5112, float %5115)  ; FMin(a,b)
  %5117 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5116, float %5117)  ; FMax(a,b)
  %5119 = fadd fast float %5114, 0xBFE4CCCCC0000000
  %5120 = fmul fast float %5119, 0x4006DB6DA0000000
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = fmul fast float %5121, 2.000000e+00
  %5123 = fsub fast float 3.000000e+00, %5122
  %5124 = bitcast float %5033 to i32
  %5125 = ashr i32 %5124, 1
  %5126 = add nsw i32 %5125, 532487669
  %5127 = bitcast i32 %5126 to float
  %5128 = fsub fast float 1.000000e+00, %5127
  %5129 = bitcast float %5128 to i32
  %5130 = sub nsw i32 2129859010, %5129
  %5131 = bitcast i32 %5130 to float
  %5132 = fmul fast float %5131, 2.000000e+00
  %5133 = bitcast float %5034 to i32
  %5134 = ashr i32 %5133, 1
  %5135 = add nsw i32 %5134, 532487669
  %5136 = bitcast i32 %5135 to float
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = bitcast float %5137 to i32
  %5139 = sub nsw i32 2129859010, %5138
  %5140 = bitcast i32 %5139 to float
  %5141 = fmul fast float %5140, 2.000000e+00
  %5142 = bitcast float %5035 to i32
  %5143 = ashr i32 %5142, 1
  %5144 = add nsw i32 %5143, 532487669
  %5145 = bitcast i32 %5144 to float
  %5146 = fsub fast float 1.000000e+00, %5145
  %5147 = bitcast float %5146 to i32
  %5148 = sub nsw i32 2129859010, %5147
  %5149 = bitcast i32 %5148 to float
  %5150 = fmul fast float %5149, 2.000000e+00
  %5151 = fsub fast float 0x4002A9FBE0000000, %5132
  %5152 = fadd fast float %5132, 0x3FD54FDF00000000
  %5153 = bitcast float %5152 to i32
  %5154 = sub nsw i32 2129859010, %5153
  %5155 = bitcast i32 %5154 to float
  %5156 = fmul fast float %5155, %5151
  %5157 = fmul fast float %5156, %5156
  %5158 = fsub fast float 0x4002A9FBE0000000, %5141
  %5159 = fadd fast float %5141, 0x3FD54FDF00000000
  %5160 = bitcast float %5159 to i32
  %5161 = sub nsw i32 2129859010, %5160
  %5162 = bitcast i32 %5161 to float
  %5163 = fmul fast float %5162, %5158
  %5164 = fmul fast float %5163, %5163
  %5165 = fsub fast float 0x4002A9FBE0000000, %5150
  %5166 = fadd fast float %5150, 0x3FD54FDF00000000
  %5167 = bitcast float %5166 to i32
  %5168 = sub nsw i32 2129859010, %5167
  %5169 = bitcast i32 %5168 to float
  %5170 = fmul fast float %5169, %5165
  %5171 = fmul fast float %5170, %5170
  %5172 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5157)  ; FMax(a,b)
  %5173 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5164)  ; FMax(a,b)
  %5174 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5171)  ; FMax(a,b)
  %5175 = fsub fast float 1.000000e+00, %5061
  %5176 = fadd fast float %5175, %5076
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fsub fast float 1.000000e+00, %4448
  %5179 = fmul fast float %5118, %5178
  %5180 = fmul fast float %5121, %5121
  %5181 = fmul fast float %5180, %5179
  %5182 = fmul fast float %5181, %5123
  %5183 = fmul fast float %5178, 0xBFE99999A0000000
  %5184 = fmul fast float %5183, %5063
  %5185 = fmul fast float %5184, %5080
  %5186 = fadd fast float %5185, 1.000000e+00
  %5187 = fadd fast float %5042, -1.000000e+00
  %5188 = fmul fast float %5186, %5187
  %5189 = fadd fast float %5188, 1.000000e+00
  %5190 = fsub fast float %5172, %5033
  %5191 = fsub fast float %5173, %5034
  %5192 = fsub fast float %5174, %5035
  %5193 = fmul fast float %5182, %5190
  %5194 = fmul fast float %5182, %5191
  %5195 = fmul fast float %5182, %5192
  %5196 = fadd fast float %5193, %5033
  %5197 = fadd fast float %5194, %5034
  %5198 = fadd fast float %5195, %5035
  %5199 = fsub fast float %92, %5039
  %5200 = fsub fast float %94, %5040
  %5201 = fsub fast float %96, %5041
  %5202 = fmul fast float %5182, %5199
  %5203 = fmul fast float %5182, %5200
  %5204 = fmul fast float %5182, %5201
  %5205 = fadd fast float %5202, %5039
  %5206 = fadd fast float %5203, %5040
  %5207 = fadd fast float %5204, %5041
  %5208 = fmul fast float %5182, %5177
  %5209 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5210 = fsub fast float 1.000000e+00, %5209
  %5211 = fmul fast float %5208, %5210
  %5212 = fadd fast float %5211, %5209
  %5213 = fsub fast float 1.000000e+00, %5043
  %5214 = fmul fast float %5182, %5213
  %5215 = fadd fast float %5214, %5043
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %5207, float %5205, float %5206, float %5207)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.unary.f32(i32 25, float %5216)  ; Rsqrt(value)
  %5218 = fmul fast float %5205, %5217
  %5219 = fmul fast float %5206, %5217
  %5220 = fmul fast float %5207, %5217
  br label %5221

; <label>:5221                                    ; preds = %5054, %5047
  %5222 = phi float [ %5053, %5047 ], [ %5060, %5054 ]
  %5223 = phi float [ %5052, %5047 ], [ %5058, %5054 ]
  %5224 = phi float [ %5051, %5047 ], [ %5056, %5054 ]
  %5225 = phi float [ %5050, %5047 ], [ %5059, %5054 ]
  %5226 = phi float [ %5049, %5047 ], [ %5057, %5054 ]
  %5227 = phi float [ %5048, %5047 ], [ %5055, %5054 ]
  %5228 = phi float [ %5033, %5047 ], [ %5196, %5054 ]
  %5229 = phi float [ %5034, %5047 ], [ %5197, %5054 ]
  %5230 = phi float [ %5035, %5047 ], [ %5198, %5054 ]
  %5231 = phi float [ %5036, %5047 ], [ %5105, %5054 ]
  %5232 = phi float [ %5037, %5047 ], [ %5106, %5054 ]
  %5233 = phi float [ %5038, %5047 ], [ %5107, %5054 ]
  %5234 = phi float [ %5039, %5047 ], [ %5218, %5054 ]
  %5235 = phi float [ %5040, %5047 ], [ %5219, %5054 ]
  %5236 = phi float [ %5041, %5047 ], [ %5220, %5054 ]
  %5237 = phi float [ %5042, %5047 ], [ %5212, %5054 ]
  %5238 = phi float [ %5043, %5047 ], [ %5215, %5054 ]
  %5239 = select i1 %205, float 0.000000e+00, float %5230
  %5240 = call float @dx.op.dot3.f32(i32 55, float %5234, float %5235, float %5236, float %5224, float %5223, float %5222)  ; Dot3(ax,ay,az,bx,by,bz)
  %5241 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5242 = call float @dx.op.dot3.f32(i32 55, float %5227, float %5226, float %5225, float %5234, float %5235, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = fmul fast float %5242, 2.000000e+00
  %5244 = fmul fast float %5243, %5234
  %5245 = fmul fast float %5243, %5235
  %5246 = fmul fast float %5243, %5236
  %5247 = fsub fast float %5227, %5244
  %5248 = fsub fast float %5226, %5245
  %5249 = fsub fast float %5225, %5246
  %5250 = call float @dx.op.binary.f32(i32 36, float %5238, float 1.000000e+00)  ; FMin(a,b)
  %5251 = fsub fast float 1.000000e+00, %5238
  %5252 = bitcast float %5251 to i32
  %5253 = sub nsw i32 2129859010, %5252
  %5254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %5255 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = fcmp fast oeq float %5255, 0.000000e+00
  %5257 = fcmp fast oeq float %5254, 0.000000e+00
  %5258 = or i1 %5257, %5256
  br i1 %5258, label %5288, label %5259

; <label>:5259                                    ; preds = %5221
  %5260 = fsub fast float -0.000000e+00, %63
  %5261 = fsub fast float -0.000000e+00, %61
  %5262 = call float @dx.op.unary.f32(i32 24, float %5255)  ; Sqrt(value)
  %5263 = fdiv fast float %5262, %5254
  %5264 = fcmp fast ogt float %5263, 0x3FFB6F8900000000
  %5265 = select i1 %5264, float 0x3FFB6F8900000000, float %5263
  %5266 = fmul fast float %5265, 0x3FE8A23460000000
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = call float @dx.op.binary.f32(i32 35, float %5265, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5269 = fmul fast float %5267, %5254
  %5270 = fmul fast float %5268, 0x3FF279A740000000
  %5271 = fadd fast float %5270, -1.000000e+00
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5260, float %5261, float %62, float %5260, float %5261, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = call float @dx.op.unary.f32(i32 25, float %5272)  ; Rsqrt(value)
  %5274 = fmul fast float %5273, %5260
  %5275 = fmul fast float %5273, %5261
  %5276 = fmul fast float %5273, %62
  %5277 = fmul fast float %5271, %5271
  %5278 = fsub fast float 1.000000e+00, %5277
  %5279 = fmul fast float %5268, 0x40005F8BE0000000
  %5280 = fsub fast float 0x400C5BF8A0000000, %5279
  %5281 = fdiv fast float %5269, %5280
  %5282 = fmul fast float %5281, 0x3FEE31C3C0000000
  %5283 = fmul fast float %5282, %5278
  %5284 = fmul fast float %5268, 0x3FDACB7480000000
  %5285 = fadd fast float %5284, 0xBFD7347680000000
  %5286 = fmul fast float %5285, %5281
  %5287 = fmul fast float %5286, %5278
  br label %5288

; <label>:5288                                    ; preds = %5259, %5221
  %5289 = phi float [ %5274, %5259 ], [ 0.000000e+00, %5221 ]
  %5290 = phi float [ %5275, %5259 ], [ 0.000000e+00, %5221 ]
  %5291 = phi float [ %5276, %5259 ], [ 0.000000e+00, %5221 ]
  %5292 = phi float [ %5283, %5259 ], [ 0.000000e+00, %5221 ]
  %5293 = phi float [ %5287, %5259 ], [ 0.000000e+00, %5221 ]
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %5234, float %5235, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = fmul fast float %5294, %5294
  %5296 = fmul fast float %5295, 0x3FEE471020000000
  %5297 = fadd fast float %5296, 0xBFD42F6020000000
  %5298 = fmul fast float %5254, 0x3FD20DD760000000
  %5299 = fmul fast float %5297, %5293
  %5300 = fmul fast float %5292, 0x3FDF454380000000
  %5301 = fmul fast float %5300, %5294
  %5302 = fadd fast float %5301, %5298
  %5303 = fadd fast float %5302, %5299
  %5304 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5305 = fmul fast float %5304, 0x3FDF454380000000
  %5306 = fmul fast float %5304, %5304
  %5307 = fmul fast float %5306, 0x3FEE471020000000
  %5308 = fadd fast float %5307, 0xBFD42F6020000000
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5254, float %5292, float %5293, float 0x3FD20DD760000000, float %5305, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %5311 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = fcmp fast oeq float %5311, 0.000000e+00
  %5313 = fcmp fast oeq float %5310, 0.000000e+00
  %5314 = or i1 %5313, %5312
  br i1 %5314, label %5344, label %5315

; <label>:5315                                    ; preds = %5288
  %5316 = fsub fast float -0.000000e+00, %59
  %5317 = fsub fast float -0.000000e+00, %57
  %5318 = call float @dx.op.unary.f32(i32 24, float %5311)  ; Sqrt(value)
  %5319 = fdiv fast float %5318, %5310
  %5320 = fcmp fast ogt float %5319, 0x3FFB6F8900000000
  %5321 = select i1 %5320, float 0x3FFB6F8900000000, float %5319
  %5322 = fmul fast float %5321, 0x3FE8A23460000000
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = call float @dx.op.binary.f32(i32 35, float %5321, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5325 = fmul fast float %5323, %5310
  %5326 = fmul fast float %5324, 0x3FF279A740000000
  %5327 = fadd fast float %5326, -1.000000e+00
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %58, float %5316, float %5317, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = call float @dx.op.unary.f32(i32 25, float %5328)  ; Rsqrt(value)
  %5330 = fmul fast float %5329, %5316
  %5331 = fmul fast float %5329, %5317
  %5332 = fmul fast float %5329, %58
  %5333 = fmul fast float %5327, %5327
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = fmul fast float %5324, 0x40005F8BE0000000
  %5336 = fsub fast float 0x400C5BF8A0000000, %5335
  %5337 = fdiv fast float %5325, %5336
  %5338 = fmul fast float %5337, 0x3FEE31C3C0000000
  %5339 = fmul fast float %5338, %5334
  %5340 = fmul fast float %5324, 0x3FDACB7480000000
  %5341 = fadd fast float %5340, 0xBFD7347680000000
  %5342 = fmul fast float %5341, %5337
  %5343 = fmul fast float %5342, %5334
  br label %5344

; <label>:5344                                    ; preds = %5315, %5288
  %5345 = phi float [ %5330, %5315 ], [ 0.000000e+00, %5288 ]
  %5346 = phi float [ %5331, %5315 ], [ 0.000000e+00, %5288 ]
  %5347 = phi float [ %5332, %5315 ], [ 0.000000e+00, %5288 ]
  %5348 = phi float [ %5339, %5315 ], [ 0.000000e+00, %5288 ]
  %5349 = phi float [ %5343, %5315 ], [ 0.000000e+00, %5288 ]
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5345, float %5346, float %5347, float %5234, float %5235, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = fmul fast float %5350, %5350
  %5352 = fmul fast float %5351, 0x3FEE471020000000
  %5353 = fadd fast float %5352, 0xBFD42F6020000000
  %5354 = fmul fast float %5310, 0x3FD20DD760000000
  %5355 = fmul fast float %5353, %5349
  %5356 = fmul fast float %5348, 0x3FDF454380000000
  %5357 = fmul fast float %5356, %5350
  %5358 = fadd fast float %5357, %5354
  %5359 = fadd fast float %5358, %5355
  %5360 = call float @dx.op.dot3.f32(i32 55, float %5345, float %5346, float %5347, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = fmul fast float %5360, 0x3FDF454380000000
  %5362 = fmul fast float %5360, %5360
  %5363 = fmul fast float %5362, 0x3FEE471020000000
  %5364 = fadd fast float %5363, 0xBFD42F6020000000
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5348, float %5349, float 0x3FD20DD760000000, float %5361, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5367 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = fcmp fast oeq float %5367, 0.000000e+00
  %5369 = fcmp fast oeq float %5366, 0.000000e+00
  %5370 = or i1 %5369, %5368
  br i1 %5370, label %5400, label %5371

; <label>:5371                                    ; preds = %5344
  %5372 = fsub fast float -0.000000e+00, %55
  %5373 = fsub fast float -0.000000e+00, %53
  %5374 = call float @dx.op.unary.f32(i32 24, float %5367)  ; Sqrt(value)
  %5375 = fdiv fast float %5374, %5366
  %5376 = fcmp fast ogt float %5375, 0x3FFB6F8900000000
  %5377 = select i1 %5376, float 0x3FFB6F8900000000, float %5375
  %5378 = fmul fast float %5377, 0x3FE8A23460000000
  %5379 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5380 = call float @dx.op.binary.f32(i32 35, float %5377, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5381 = fmul fast float %5379, %5366
  %5382 = fmul fast float %5380, 0x3FF279A740000000
  %5383 = fadd fast float %5382, -1.000000e+00
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5372, float %5373, float %54, float %5372, float %5373, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = call float @dx.op.unary.f32(i32 25, float %5384)  ; Rsqrt(value)
  %5386 = fmul fast float %5385, %5372
  %5387 = fmul fast float %5385, %5373
  %5388 = fmul fast float %5385, %54
  %5389 = fmul fast float %5383, %5383
  %5390 = fsub fast float 1.000000e+00, %5389
  %5391 = fmul fast float %5380, 0x40005F8BE0000000
  %5392 = fsub fast float 0x400C5BF8A0000000, %5391
  %5393 = fdiv fast float %5381, %5392
  %5394 = fmul fast float %5393, 0x3FEE31C3C0000000
  %5395 = fmul fast float %5394, %5390
  %5396 = fmul fast float %5380, 0x3FDACB7480000000
  %5397 = fadd fast float %5396, 0xBFD7347680000000
  %5398 = fmul fast float %5397, %5393
  %5399 = fmul fast float %5398, %5390
  br label %5400

; <label>:5400                                    ; preds = %5371, %5344
  %5401 = phi float [ %5386, %5371 ], [ 0.000000e+00, %5344 ]
  %5402 = phi float [ %5387, %5371 ], [ 0.000000e+00, %5344 ]
  %5403 = phi float [ %5388, %5371 ], [ 0.000000e+00, %5344 ]
  %5404 = phi float [ %5395, %5371 ], [ 0.000000e+00, %5344 ]
  %5405 = phi float [ %5399, %5371 ], [ 0.000000e+00, %5344 ]
  %5406 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5402, float %5403, float %5234, float %5235, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5407 = fmul fast float %5406, %5406
  %5408 = fmul fast float %5407, 0x3FEE471020000000
  %5409 = fadd fast float %5408, 0xBFD42F6020000000
  %5410 = fmul fast float %5366, 0x3FD20DD760000000
  %5411 = fmul fast float %5409, %5405
  %5412 = fmul fast float %5404, 0x3FDF454380000000
  %5413 = fmul fast float %5412, %5406
  %5414 = fadd fast float %5413, %5410
  %5415 = fadd fast float %5414, %5411
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5402, float %5403, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = fmul fast float %5416, 0x3FDF454380000000
  %5418 = fmul fast float %5416, %5416
  %5419 = fmul fast float %5418, 0x3FEE471020000000
  %5420 = fadd fast float %5419, 0xBFD42F6020000000
  %5421 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5404, float %5405, float 0x3FD20DD760000000, float %5417, float %5420)  ; Dot3(ax,ay,az,bx,by,bz)
  %5422 = call float @dx.op.binary.f32(i32 35, float %5303, float 0.000000e+00)  ; FMax(a,b)
  %5423 = call float @dx.op.binary.f32(i32 35, float %5359, float 0.000000e+00)  ; FMax(a,b)
  %5424 = call float @dx.op.binary.f32(i32 35, float %5415, float 0.000000e+00)  ; FMax(a,b)
  %5425 = call float @dx.op.binary.f32(i32 35, float %5309, float 0.000000e+00)  ; FMax(a,b)
  %5426 = call float @dx.op.binary.f32(i32 35, float %5365, float 0.000000e+00)  ; FMax(a,b)
  %5427 = call float @dx.op.binary.f32(i32 35, float %5421, float 0.000000e+00)  ; FMax(a,b)
  %5428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.f32 %5428, 0
  %5430 = call float @dx.op.binary.f32(i32 36, float %5231, float %5429)  ; FMin(a,b)
  %5431 = fsub fast float 1.000000e+00, %5250
  %5432 = fmul fast float %5430, %5431
  %5433 = fsub fast float 1.000000e+00, %5432
  %5434 = bitcast float %5433 to i32
  %5435 = sub nsw i32 2129859010, %5434
  %5436 = bitcast i32 %5435 to float
  %5437 = call float @dx.op.binary.f32(i32 36, float %5232, float %5429)  ; FMin(a,b)
  %5438 = fmul fast float %5437, %5431
  %5439 = fsub fast float 1.000000e+00, %5438
  %5440 = bitcast float %5439 to i32
  %5441 = sub nsw i32 2129859010, %5440
  %5442 = bitcast i32 %5441 to float
  %5443 = call float @dx.op.binary.f32(i32 36, float %5233, float %5429)  ; FMin(a,b)
  %5444 = fmul fast float %5443, %5431
  %5445 = fsub fast float 1.000000e+00, %5444
  %5446 = bitcast float %5445 to i32
  %5447 = sub nsw i32 2129859010, %5446
  %5448 = bitcast i32 %5447 to float
  %5449 = fmul fast float %5422, %5250
  %5450 = fmul fast float %5449, %5436
  %5451 = fmul fast float %5423, %5250
  %5452 = fmul fast float %5451, %5442
  %5453 = fmul fast float %5424, %5250
  %5454 = fmul fast float %5453, %5448
  %5455 = call float @dx.op.binary.f32(i32 36, float %5228, float %5429)  ; FMin(a,b)
  %5456 = fmul fast float %5455, %5431
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = bitcast float %5457 to i32
  %5459 = sub nsw i32 2129859010, %5458
  %5460 = bitcast i32 %5459 to float
  %5461 = call float @dx.op.binary.f32(i32 36, float %5229, float %5429)  ; FMin(a,b)
  %5462 = fmul fast float %5461, %5431
  %5463 = fsub fast float 1.000000e+00, %5462
  %5464 = bitcast float %5463 to i32
  %5465 = sub nsw i32 2129859010, %5464
  %5466 = bitcast i32 %5465 to float
  %5467 = call float @dx.op.binary.f32(i32 36, float %5239, float %5429)  ; FMin(a,b)
  %5468 = fmul fast float %5467, %5431
  %5469 = fsub fast float 1.000000e+00, %5468
  %5470 = bitcast float %5469 to i32
  %5471 = sub nsw i32 2129859010, %5470
  %5472 = bitcast i32 %5471 to float
  %5473 = fmul fast float %5425, %5250
  %5474 = fmul fast float %5473, %5460
  %5475 = fmul fast float %5426, %5250
  %5476 = fmul fast float %5475, %5466
  %5477 = fmul fast float %5427, %5250
  %5478 = fmul fast float %5477, %5472
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5452, float %5454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = select i1 %205, float 0.000000e+00, float %5450
  %5481 = select i1 %205, float %5479, float %5452
  %5482 = select i1 %205, float 0.000000e+00, float %5454
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5476, float %5478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = select i1 %205, float 0.000000e+00, float %5474
  %5485 = select i1 %205, float %5483, float %5476
  %5486 = select i1 %205, float 0.000000e+00, float %5478
  %5487 = fmul fast float %5241, 9.843750e-01
  %5488 = fmul fast float %5237, 9.843750e-01
  %5489 = fadd fast float %5487, 7.812500e-03
  %5490 = fadd fast float %5488, 7.812500e-03
  %5491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5489, float %5490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5492 = extractvalue %dx.types.ResRet.f32 %5491, 2
  %5493 = extractvalue %dx.types.ResRet.f32 %5491, 3
  %5494 = fmul fast float %5492, %5228
  %5495 = fmul fast float %5492, %5229
  %5496 = fmul fast float %5492, %5239
  %5497 = fadd fast float %5494, %5493
  %5498 = fadd fast float %5495, %5493
  %5499 = fadd fast float %5496, %5493
  %5500 = fcmp fast ogt float %4034, 0.000000e+00
  br i1 %5500, label %5501, label %5527

; <label>:5501                                    ; preds = %5400
  %5502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4034, float %5241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.ResRet.f32 %5502, 1
  %5505 = extractvalue %dx.types.ResRet.f32 %5502, 2
  %5506 = fadd fast float %5503, -5.000000e-01
  %5507 = fadd fast float %5504, -5.000000e-01
  %5508 = fadd fast float %5505, -5.000000e-01
  %5509 = fsub fast float 1.000000e+00, %5228
  %5510 = fsub fast float 1.000000e+00, %5229
  %5511 = fsub fast float 1.000000e+00, %5239
  %5512 = fmul fast float %5228, 4.000000e+00
  %5513 = fmul fast float %5512, %5509
  %5514 = fmul fast float %5513, %5506
  %5515 = fmul fast float %5229, 4.000000e+00
  %5516 = fmul fast float %5515, %5510
  %5517 = fmul fast float %5516, %5507
  %5518 = fmul fast float %5239, 4.000000e+00
  %5519 = fmul fast float %5518, %5511
  %5520 = fmul fast float %5519, %5508
  %5521 = fadd fast float %5514, %5497
  %5522 = fadd fast float %5517, %5498
  %5523 = fadd fast float %5520, %5499
  %5524 = call float @dx.op.unary.f32(i32 7, float %5521)  ; Saturate(value)
  %5525 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5526 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  br label %5527

; <label>:5527                                    ; preds = %5501, %5400
  %5528 = phi float [ %5524, %5501 ], [ %5497, %5400 ]
  %5529 = phi float [ %5525, %5501 ], [ %5498, %5400 ]
  %5530 = phi float [ %5526, %5501 ], [ %5499, %5400 ]
  %5531 = call float @dx.op.binary.f32(i32 35, float %5529, float %5530)  ; FMax(a,b)
  %5532 = call float @dx.op.binary.f32(i32 35, float %5528, float %5531)  ; FMax(a,b)
  %5533 = fsub fast float 1.000000e+00, %5532
  %5534 = fmul fast float %5533, %5480
  %5535 = fmul fast float %5533, %5481
  %5536 = fmul fast float %5533, %5482
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = fcmp fast ogt float %5537, 0x3E7FF19E20000000
  %5539 = fdiv fast float 1.000000e+00, %5537
  %5540 = select i1 %5538, float %5539, float 0.000000e+00
  %5541 = fmul fast float %5540, %5231
  %5542 = fmul fast float %5540, %5232
  %5543 = fmul fast float %5540, %5233
  %5544 = fadd fast float %5541, -1.000000e+00
  %5545 = fadd fast float %5542, -1.000000e+00
  %5546 = fadd fast float %5543, -1.000000e+00
  %5547 = fmul fast float %5544, 5.000000e-01
  %5548 = fmul fast float %5545, 5.000000e-01
  %5549 = fmul fast float %5546, 5.000000e-01
  %5550 = fadd fast float %5547, 1.000000e+00
  %5551 = fadd fast float %5548, 1.000000e+00
  %5552 = fadd fast float %5549, 1.000000e+00
  %5553 = fmul fast float %5528, %5484
  %5554 = fmul fast float %5529, %5485
  %5555 = fmul fast float %5530, %5486
  %5556 = fsub fast float 1.000000e+00, %5241
  %5557 = bitcast float %5556 to i32
  %5558 = sitofp i32 %5557 to float
  %5559 = fmul fast float %5558, 5.000000e+00
  %5560 = fadd fast float %5559, 0xC1EFBF8940000000
  %5561 = fptosi float %5560 to i32
  %5562 = bitcast i32 %5561 to float
  %5563 = fmul fast float %5562, %4035
  %5564 = fmul fast float %5480, %5563
  %5565 = fmul fast float %5564, %5533
  %5566 = fmul fast float %5565, %5550
  %5567 = fmul fast float %5481, %5563
  %5568 = fmul fast float %5567, %5533
  %5569 = fmul fast float %5568, %5551
  %5570 = fmul fast float %5482, %5563
  %5571 = fmul fast float %5570, %5533
  %5572 = fmul fast float %5571, %5552
  %5573 = fmul fast float %5534, %4031
  %5574 = fmul fast float %5535, %4031
  %5575 = fmul fast float %5536, %4031
  %5576 = fadd fast float %5553, %4027
  %5577 = fadd fast float %5576, %5566
  %5578 = fmul fast float %5577, %4031
  %5579 = fadd fast float %5554, %4028
  %5580 = fadd fast float %5579, %5569
  %5581 = fmul fast float %5580, %4031
  %5582 = fadd fast float %5555, %4029
  %5583 = fadd fast float %5582, %5572
  %5584 = fmul fast float %5583, %4031
  %5585 = bitcast i32 %5253 to float
  %5586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5587 = extractvalue %dx.types.CBufRet.f32 %5586, 3
  %5588 = fcmp fast oeq float %5587, 0.000000e+00
  br i1 %5588, label %5816, label %5589

; <label>:5589                                    ; preds = %5527
  %5590 = extractvalue %dx.types.CBufRet.f32 %5586, 0
  %5591 = extractvalue %dx.types.CBufRet.f32 %5586, 1
  %5592 = extractvalue %dx.types.CBufRet.f32 %5586, 2
  %5593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5594 = extractvalue %dx.types.CBufRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.CBufRet.f32 %5593, 1
  %5596 = extractvalue %dx.types.CBufRet.f32 %5593, 2
  %5597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5598 = extractvalue %dx.types.CBufRet.f32 %5597, 0
  %5599 = extractvalue %dx.types.CBufRet.f32 %5597, 1
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5594, float %5595, float %5596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = select i1 %205, float %5598, float %5594
  %5602 = select i1 %205, float %5600, float %5595
  %5603 = select i1 %205, float %5599, float %5596
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 1
  %5606 = fcmp fast une float %5605, 0.000000e+00
  br i1 %5606, label %5607, label %5624

; <label>:5607                                    ; preds = %5589
  %5608 = fptoui float %83 to i32
  %5609 = fptoui float %84 to i32
  %5610 = lshr i32 %5608, 4
  %5611 = lshr i32 %5609, 4
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5614 = fptoui float %5613 to i32
  %5615 = add i32 %5614, 15
  %5616 = lshr i32 %5615, 4
  %5617 = mul i32 %5616, %5611
  %5618 = add i32 %5617, %5610
  %5619 = shl i32 %5618, 3
  %5620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5619, i32 undef)  ; BufferLoad(srv,index,wot)
  %5621 = extractvalue %dx.types.ResRet.i32 %5620, 0
  %5622 = and i32 %5621, -268435456
  %5623 = icmp eq i32 %5622, -1342177280
  br i1 %5623, label %5634, label %5624

; <label>:5624                                    ; preds = %5607, %5589
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 3
  %5628 = fmul fast float %5626, %83
  %5629 = fmul fast float %5627, %84
  %5630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5628, float %5629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5631 = extractvalue %dx.types.ResRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.ResRet.f32 %5630, 1
  %5633 = extractvalue %dx.types.ResRet.f32 %5630, 2
  br label %5634

; <label>:5634                                    ; preds = %5624, %5607
  %5635 = phi float [ %5631, %5624 ], [ 0.000000e+00, %5607 ]
  %5636 = phi float [ %5632, %5624 ], [ 0.000000e+00, %5607 ]
  %5637 = phi float [ %5633, %5624 ], [ 0.000000e+00, %5607 ]
  %5638 = call float @dx.op.binary.f32(i32 36, float %5636, float %5637)  ; FMin(a,b)
  %5639 = call float @dx.op.binary.f32(i32 36, float %5635, float %5638)  ; FMin(a,b)
  %5640 = fcmp fast ogt float %5639, 0.000000e+00
  br i1 %5640, label %5641, label %5816, !dx.controlflow.hints !76

; <label>:5641                                    ; preds = %5634
  %5642 = fmul fast float %5635, %5601
  %5643 = fmul fast float %5636, %5602
  %5644 = fmul fast float %5637, %5603
  %5645 = fsub fast float %5590, %5227
  %5646 = fsub fast float %5591, %5226
  %5647 = fsub fast float %5592, %5225
  %5648 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5649 = call float @dx.op.unary.f32(i32 25, float %5648)  ; Rsqrt(value)
  %5650 = fmul fast float %5649, %5645
  %5651 = fmul fast float %5649, %5646
  %5652 = fmul fast float %5649, %5647
  %5653 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5234, float %5235, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5223, float %5222, float %5650, float %5651, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5656 = fmul fast float %5655, %5655
  %5657 = fmul fast float %5656, %5585
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = fmul fast float %5658, %5655
  %5660 = call float @dx.op.dot3.f32(i32 55, float %5234, float %5235, float %5236, float %5650, float %5651, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = fmul fast float %5660, %5660
  %5662 = call float @dx.op.unary.f32(i32 6, float %5653)  ; FAbs(value)
  %5663 = fsub fast float 1.000000e+00, %5237
  %5664 = call float @dx.op.binary.f32(i32 35, float %5663, float 0x3F847AE140000000)  ; FMax(a,b)
  %5665 = fmul fast float %5664, %5664
  %5666 = fmul fast float %5665, %5665
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = fmul fast float %5241, %5241
  %5669 = fmul fast float %5668, %5667
  %5670 = fadd fast float %5669, %5666
  %5671 = bitcast float %5670 to i32
  %5672 = ashr i32 %5671, 1
  %5673 = add nsw i32 %5672, 532487669
  %5674 = bitcast i32 %5673 to float
  %5675 = fadd fast float %5674, %5241
  %5676 = fmul fast float %5666, %5661
  %5677 = fsub fast float 1.000000e+00, %5661
  %5678 = fadd fast float %5677, %5676
  %5679 = fmul fast float %5662, %5662
  %5680 = fmul fast float %5679, %5667
  %5681 = fadd fast float %5680, %5666
  %5682 = bitcast float %5681 to i32
  %5683 = ashr i32 %5682, 1
  %5684 = add nsw i32 %5683, 532487669
  %5685 = bitcast i32 %5684 to float
  %5686 = fadd fast float %5685, %5662
  %5687 = fmul fast float %5678, %5678
  %5688 = fmul fast float %5687, %5675
  %5689 = fmul fast float %5688, %5686
  %5690 = fdiv fast float 0x3FF0A00000000000, %5689
  %5691 = fmul fast float %5690, %5666
  %5692 = call float @dx.op.unary.f32(i32 6, float %5654)  ; FAbs(value)
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = bitcast float %5693 to i32
  %5695 = sitofp i32 %5694 to float
  %5696 = fmul fast float %5695, 5.000000e+00
  %5697 = fadd fast float %5696, 0xC1EFBF8940000000
  %5698 = fptosi float %5697 to i32
  %5699 = bitcast i32 %5698 to float
  %5700 = fsub fast float 1.000000e+00, %5228
  %5701 = fsub fast float 1.000000e+00, %5229
  %5702 = fsub fast float 1.000000e+00, %5239
  %5703 = fmul fast float %5699, %5700
  %5704 = fmul fast float %5699, %5701
  %5705 = fmul fast float %5699, %5702
  %5706 = fadd fast float %5703, %5228
  %5707 = fadd fast float %5704, %5229
  %5708 = fadd fast float %5705, %5239
  br i1 %5500, label %5709, label %5732

; <label>:5709                                    ; preds = %5641
  %5710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4034, float %5692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5711 = extractvalue %dx.types.ResRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.ResRet.f32 %5710, 1
  %5713 = extractvalue %dx.types.ResRet.f32 %5710, 2
  %5714 = fadd fast float %5711, -5.000000e-01
  %5715 = fadd fast float %5712, -5.000000e-01
  %5716 = fadd fast float %5713, -5.000000e-01
  %5717 = fmul fast float %5228, 4.000000e+00
  %5718 = fmul fast float %5717, %5700
  %5719 = fmul fast float %5718, %5714
  %5720 = fmul fast float %5229, 4.000000e+00
  %5721 = fmul fast float %5720, %5701
  %5722 = fmul fast float %5721, %5715
  %5723 = fmul fast float %5239, 4.000000e+00
  %5724 = fmul fast float %5723, %5702
  %5725 = fmul fast float %5724, %5716
  %5726 = fadd fast float %5719, %5706
  %5727 = fadd fast float %5722, %5707
  %5728 = fadd fast float %5725, %5708
  %5729 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5731 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  br label %5732

; <label>:5732                                    ; preds = %5709, %5641
  %5733 = phi float [ %5729, %5709 ], [ %5706, %5641 ]
  %5734 = phi float [ %5730, %5709 ], [ %5707, %5641 ]
  %5735 = phi float [ %5731, %5709 ], [ %5708, %5641 ]
  %5736 = fmul fast float %5653, 9.843750e-01
  %5737 = fadd fast float %5736, 7.812500e-03
  %5738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5737, float %5490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5739 = extractvalue %dx.types.ResRet.f32 %5738, 2
  %5740 = extractvalue %dx.types.ResRet.f32 %5738, 3
  %5741 = fmul fast float %5739, %5228
  %5742 = fmul fast float %5739, %5229
  %5743 = fmul fast float %5739, %5239
  %5744 = fadd fast float %5741, %5740
  %5745 = fadd fast float %5742, %5740
  %5746 = fadd fast float %5743, %5740
  br i1 %5500, label %5747, label %5770

; <label>:5747                                    ; preds = %5732
  %5748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4034, float %5653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5749 = extractvalue %dx.types.ResRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.ResRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.ResRet.f32 %5748, 2
  %5752 = fadd fast float %5749, -5.000000e-01
  %5753 = fadd fast float %5750, -5.000000e-01
  %5754 = fadd fast float %5751, -5.000000e-01
  %5755 = fmul fast float %5228, 4.000000e+00
  %5756 = fmul fast float %5755, %5700
  %5757 = fmul fast float %5756, %5752
  %5758 = fmul fast float %5229, 4.000000e+00
  %5759 = fmul fast float %5758, %5701
  %5760 = fmul fast float %5759, %5753
  %5761 = fmul fast float %5239, 4.000000e+00
  %5762 = fmul fast float %5761, %5702
  %5763 = fmul fast float %5762, %5754
  %5764 = fadd fast float %5757, %5744
  %5765 = fadd fast float %5760, %5745
  %5766 = fadd fast float %5763, %5746
  %5767 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5768 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5769 = call float @dx.op.unary.f32(i32 7, float %5766)  ; Saturate(value)
  br label %5770

; <label>:5770                                    ; preds = %5747, %5732
  %5771 = phi float [ %5767, %5747 ], [ %5744, %5732 ]
  %5772 = phi float [ %5768, %5747 ], [ %5745, %5732 ]
  %5773 = phi float [ %5769, %5747 ], [ %5746, %5732 ]
  %5774 = call float @dx.op.binary.f32(i32 35, float %5772, float %5773)  ; FMax(a,b)
  %5775 = call float @dx.op.binary.f32(i32 35, float %5771, float %5774)  ; FMax(a,b)
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = fmul fast float %5733, %5691
  %5778 = fmul fast float %5734, %5691
  %5779 = fmul fast float %5735, %5691
  %5780 = fsub fast float 1.000000e+00, %5654
  %5781 = bitcast float %5780 to i32
  %5782 = sitofp i32 %5781 to float
  %5783 = fmul fast float %5782, 5.000000e+00
  %5784 = fadd fast float %5783, 0xC1EFBF8940000000
  %5785 = fptosi float %5784 to i32
  %5786 = bitcast i32 %5785 to float
  %5787 = fmul fast float %5786, %4035
  %5788 = fmul fast float %5776, %5787
  %5789 = fmul fast float %5788, %5550
  %5790 = fmul fast float %5788, %5551
  %5791 = fmul fast float %5788, %5552
  %5792 = fadd fast float %5789, %5777
  %5793 = fadd fast float %5790, %5778
  %5794 = fadd fast float %5791, %5779
  %5795 = fmul fast float %5659, %5642
  %5796 = fmul fast float %5795, %5776
  %5797 = fmul fast float %5659, %5643
  %5798 = fmul fast float %5797, %5776
  %5799 = fmul fast float %5659, %5644
  %5800 = fmul fast float %5799, %5776
  %5801 = fmul fast float %5795, %5792
  %5802 = fmul fast float %5797, %5793
  %5803 = fmul fast float %5799, %5794
  %5804 = fadd fast float %5796, %5534
  %5805 = fmul fast float %5804, %4031
  %5806 = fadd fast float %5798, %5535
  %5807 = fmul fast float %5806, %4031
  %5808 = fadd fast float %5800, %5536
  %5809 = fmul fast float %5808, %4031
  %5810 = fadd fast float %5801, %5577
  %5811 = fmul fast float %5810, %4031
  %5812 = fadd fast float %5802, %5580
  %5813 = fmul fast float %5812, %4031
  %5814 = fadd fast float %5803, %5583
  %5815 = fmul fast float %5814, %4031
  br label %5816

; <label>:5816                                    ; preds = %5770, %5634, %5527
  %5817 = phi float [ %5578, %5527 ], [ %5578, %5634 ], [ %5811, %5770 ]
  %5818 = phi float [ %5581, %5527 ], [ %5581, %5634 ], [ %5813, %5770 ]
  %5819 = phi float [ %5584, %5527 ], [ %5584, %5634 ], [ %5815, %5770 ]
  %5820 = phi float [ %5573, %5527 ], [ %5573, %5634 ], [ %5805, %5770 ]
  %5821 = phi float [ %5574, %5527 ], [ %5574, %5634 ], [ %5807, %5770 ]
  %5822 = phi float [ %5575, %5527 ], [ %5575, %5634 ], [ %5809, %5770 ]
  %5823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.i32 %5823, 0
  %5825 = icmp eq i32 %5824, 0
  br i1 %5825, label %6260, label %5826

; <label>:5826                                    ; preds = %5816
  %5827 = fptoui float %83 to i32
  %5828 = fptoui float %84 to i32
  %5829 = lshr i32 %5827, 4
  %5830 = lshr i32 %5828, 4
  %5831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.i32 %5831, 0
  %5833 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5830, i32 %5832, i32 %5829)  ; UMad(a,b,c)
  %5834 = add nsw i32 %5824, -1
  %5835 = call i32 @dx.op.binary.i32(i32 37, i32 %5834, i32 0)  ; IMax(a,b)
  %5836 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %5837 = fptoui float %5836 to i32
  %5838 = lshr i32 %5837, 5
  %5839 = call i32 @dx.op.binary.i32(i32 40, i32 %5838, i32 8191)  ; UMin(a,b)
  %5840 = shl i32 %5839, 2
  %5841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5840, i32 undef)  ; BufferLoad(srv,index,wot)
  %5842 = extractvalue %dx.types.ResRet.i32 %5841, 0
  %5843 = lshr i32 %5842, 16
  %5844 = and i32 %5842, 65535
  %5845 = lshr i32 %5842, 21
  %5846 = lshr i32 %5844, 5
  %5847 = call i32 @dx.op.binary.i32(i32 40, i32 %5846, i32 %5835)  ; UMin(a,b)
  %5848 = icmp ugt i32 %5845, %5847
  br i1 %5848, label %6260, label %5849

; <label>:5849                                    ; preds = %5826
  br label %5850

; <label>:5850                                    ; preds = %6250, %5849
  %5851 = phi i32 [ %6257, %6250 ], [ %5845, %5849 ]
  %5852 = phi float [ %6251, %6250 ], [ %5817, %5849 ]
  %5853 = phi float [ %6252, %6250 ], [ %5818, %5849 ]
  %5854 = phi float [ %6253, %6250 ], [ %5819, %5849 ]
  %5855 = phi float [ %6254, %6250 ], [ %5820, %5849 ]
  %5856 = phi float [ %6255, %6250 ], [ %5821, %5849 ]
  %5857 = phi float [ %6256, %6250 ], [ %5822, %5849 ]
  %5858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.i32 %5858, 0
  %5860 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5833, i32 %5859, i32 %5851)  ; UMad(a,b,c)
  %5861 = shl i32 %5860, 2
  %5862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5861, i32 undef)  ; BufferLoad(srv,index,wot)
  %5863 = extractvalue %dx.types.ResRet.i32 %5862, 0
  %5864 = shl i32 %5851, 5
  %5865 = sub nsw i32 %5843, %5864
  %5866 = call i32 @dx.op.binary.i32(i32 37, i32 %5865, i32 0)  ; IMax(a,b)
  %5867 = call i32 @dx.op.binary.i32(i32 38, i32 %5866, i32 31)  ; IMin(a,b)
  %5868 = sub nsw i32 1, %5843
  %5869 = add nsw i32 %5868, %5844
  %5870 = call i32 @dx.op.binary.i32(i32 37, i32 %5869, i32 0)  ; IMax(a,b)
  %5871 = call i32 @dx.op.binary.i32(i32 38, i32 %5870, i32 32)  ; IMin(a,b)
  %5872 = and i32 %5871, 31
  %5873 = shl i32 -1, %5872
  %5874 = xor i32 %5873, -1
  %5875 = and i32 %5867, 31
  %5876 = shl i32 %5874, %5875
  %5877 = icmp eq i32 %5871, 32
  %5878 = select i1 %5877, i32 -1, i32 %5876
  %5879 = and i32 %5878, %5863
  %5880 = icmp eq i32 %5879, 0
  br i1 %5880, label %6250, label %5881

; <label>:5881                                    ; preds = %5850
  br label %5882

; <label>:5882                                    ; preds = %5962, %5881
  %5883 = phi i32 [ %5894, %5962 ], [ %5879, %5881 ]
  %5884 = phi float [ %5963, %5962 ], [ %5852, %5881 ]
  %5885 = phi float [ %5964, %5962 ], [ %5853, %5881 ]
  %5886 = phi float [ %5965, %5962 ], [ %5854, %5881 ]
  %5887 = phi float [ %5966, %5962 ], [ %5855, %5881 ]
  %5888 = phi float [ %5967, %5962 ], [ %5856, %5881 ]
  %5889 = phi float [ %5968, %5962 ], [ %5857, %5881 ]
  %5890 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5883)  ; FirstbitLo(value)
  %5891 = add i32 %5890, %5864
  %5892 = and i32 %5890, 31
  %5893 = shl i32 1, %5892
  %5894 = xor i32 %5893, %5883
  %5895 = mul i32 %5891, 112
  %5896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5895, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.ResRet.f32 %5896, 2
  %5900 = or i32 %5895, 12
  %5901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5900, i32 undef)  ; BufferLoad(srv,index,wot)
  %5902 = extractvalue %dx.types.ResRet.f32 %5901, 0
  %5903 = add i32 %5895, 44
  %5904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5903, i32 undef)  ; BufferLoad(srv,index,wot)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = add i32 %5895, 48
  %5907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5906, i32 undef)  ; BufferLoad(srv,index,wot)
  %5908 = extractvalue %dx.types.ResRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.ResRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.ResRet.f32 %5907, 2
  %5911 = add i32 %5895, 80
  %5912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5911, i32 undef)  ; BufferLoad(srv,index,wot)
  %5913 = extractvalue %dx.types.ResRet.f32 %5912, 1
  %5914 = extractvalue %dx.types.ResRet.f32 %5912, 2
  %5915 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %5899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5916 = select i1 %205, float %5913, float %5897
  %5917 = select i1 %205, float %5915, float %5898
  %5918 = select i1 %205, float %5914, float %5899
  %5919 = fsub fast float %5908, %166
  %5920 = fsub fast float %5909, %167
  %5921 = fsub fast float %5910, %168
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5921, float %5919, float %5920, float %5921)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = call float @dx.op.unary.f32(i32 24, float %5922)  ; Sqrt(value)
  %5924 = fdiv fast float 1.000000e+00, %5923
  %5925 = fmul fast float %5924, %5919
  %5926 = fmul fast float %5924, %5920
  %5927 = fmul fast float %5924, %5921
  %5928 = fadd fast float %5923, %5902
  %5929 = fdiv fast float 1.000000e+00, %5928
  %5930 = fmul float %5905, %5929
  %5931 = fmul float %5930, %5930
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = and i32 %5893, %5879
  %5934 = icmp eq i32 %5933, 0
  br i1 %5934, label %5957, label %5935, !dx.controlflow.hints !77

; <label>:5935                                    ; preds = %5882
  %5936 = lshr i32 %5827, 5
  %5937 = lshr i32 %5828, 5
  %5938 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5936, i32 %5937, i32 %5891, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5939 = extractvalue %dx.types.ResRet.i32 %5938, 0
  %5940 = and i32 %5939, 3
  %5941 = icmp eq i32 %5940, 0
  %5942 = select i1 %5941, float 1.000000e+00, float 0.000000e+00
  %5943 = icmp eq i32 %5940, 3
  br i1 %5943, label %5944, label %5957

; <label>:5944                                    ; preds = %5935
  %5945 = lshr i32 %5939, 10
  %5946 = and i32 %5945, 8160
  %5947 = and i32 %5828, 31
  %5948 = or i32 %5946, %5947
  %5949 = lshr i32 %5939, 1
  %5950 = and i32 %5949, 16352
  %5951 = and i32 %5827, 31
  %5952 = or i32 %5950, %5951
  %5953 = lshr i32 %5939, 23
  %5954 = and i32 %5953, 255
  %5955 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5952, i32 %5948, i32 %5954, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5956 = extractvalue %dx.types.ResRet.f32 %5955, 0
  br label %5957

; <label>:5957                                    ; preds = %5944, %5935, %5882
  %5958 = phi float [ %5956, %5944 ], [ %5942, %5935 ], [ 0.000000e+00, %5882 ]
  %5959 = call float @dx.op.binary.f32(i32 36, float %5958, float %5958)  ; FMin(a,b)
  %5960 = call float @dx.op.binary.f32(i32 36, float %5958, float %5959)  ; FMin(a,b)
  %5961 = fcmp fast ogt float %5960, 0.000000e+00
  br i1 %5961, label %5970, label %5962, !dx.controlflow.hints !78

; <label>:5962                                    ; preds = %6206, %5957
  %5963 = phi float [ %5884, %5957 ], [ %6246, %6206 ]
  %5964 = phi float [ %5885, %5957 ], [ %6247, %6206 ]
  %5965 = phi float [ %5886, %5957 ], [ %6248, %6206 ]
  %5966 = phi float [ %5887, %5957 ], [ %6240, %6206 ]
  %5967 = phi float [ %5888, %5957 ], [ %6241, %6206 ]
  %5968 = phi float [ %5889, %5957 ], [ %6242, %6206 ]
  %5969 = icmp eq i32 %5883, %5893
  br i1 %5969, label %6249, label %5882

; <label>:5970                                    ; preds = %5957
  %5971 = fmul fast float %5958, %5916
  %5972 = fmul fast float %5958, %5917
  %5973 = fmul fast float %5958, %5918
  %5974 = fsub fast float %5910, %4435
  %5975 = fcmp fast ogt float %5974, 0.000000e+00
  %5976 = fsub fast float %168, %4435
  %5977 = fcmp fast ogt float %5976, 0.000000e+00
  %5978 = xor i1 %5977, %5975
  %5979 = fsub fast float %4435, %5910
  %5980 = fmul fast float %5979, 2.000000e+00
  %5981 = fadd fast float %5980, %5910
  %5982 = select i1 %5978, float %5910, float %5981
  %5983 = fsub fast float %5982, %168
  %5984 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5983, float %5919, float %5920, float %5983)  ; Dot3(ax,ay,az,bx,by,bz)
  %5985 = call float @dx.op.unary.f32(i32 25, float %5984)  ; Rsqrt(value)
  %5986 = fmul fast float %5985, %5919
  %5987 = fmul fast float %5985, %5920
  %5988 = fmul fast float %5985, %5983
  %5989 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5990 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5986, float %5987, float %5988)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = fdiv fast float 1.000000e+00, %5990
  %5992 = fmul fast float %5991, %5989
  %5993 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5976, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = fcmp fast ogt float %5993, 0.000000e+00
  %5995 = fcmp fast olt float %5993, 0.000000e+00
  %5996 = zext i1 %5994 to i32
  %5997 = zext i1 %5995 to i32
  %5998 = sub nsw i32 %5996, %5997
  %5999 = sitofp i32 %5998 to float
  %6000 = fsub fast float %5982, %4435
  %6001 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %6000, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = fcmp fast ogt float %6001, 0.000000e+00
  %6003 = fcmp fast olt float %6001, 0.000000e+00
  %6004 = zext i1 %6002 to i32
  %6005 = zext i1 %6003 to i32
  %6006 = sub nsw i32 %6004, %6005
  %6007 = sitofp i32 %6006 to float
  %6008 = fcmp fast une float %5999, %6007
  br i1 %6008, label %6009, label %6019

; <label>:6009                                    ; preds = %5970
  %6010 = fmul fast float %5992, %5988
  %6011 = fmul fast float %5992, %5987
  %6012 = fmul fast float %5992, %5986
  %6013 = fmul fast float %6012, %6012
  %6014 = fmul fast float %6011, %6011
  %6015 = fadd fast float %6013, %6014
  %6016 = fmul fast float %6010, %6010
  %6017 = fadd fast float %6015, %6016
  %6018 = call float @dx.op.unary.f32(i32 24, float %6017)  ; Sqrt(value)
  br label %6031

; <label>:6019                                    ; preds = %5970
  %6020 = icmp slt i32 %5998, 0
  br i1 %6020, label %6021, label %6031

; <label>:6021                                    ; preds = %6019
  %6022 = fsub fast float %166, %5908
  %6023 = fsub fast float %167, %5909
  %6024 = fsub fast float %168, %5982
  %6025 = fmul fast float %6022, %6022
  %6026 = fmul fast float %6023, %6023
  %6027 = fadd fast float %6025, %6026
  %6028 = fmul fast float %6024, %6024
  %6029 = fadd fast float %6027, %6028
  %6030 = call float @dx.op.unary.f32(i32 24, float %6029)  ; Sqrt(value)
  br label %6031

; <label>:6031                                    ; preds = %6021, %6019, %6009
  %6032 = phi float [ %6018, %6009 ], [ %6030, %6021 ], [ 0.000000e+00, %6019 ]
  %6033 = and i1 %5977, %5975
  %6034 = fsub fast float -0.000000e+00, %6032
  %6035 = select i1 %6033, float -0.000000e+00, float %6034
  %6036 = fmul fast float %4436, 0x3FF7154760000000
  %6037 = fmul fast float %6036, %6035
  %6038 = fmul fast float %4437, 0x3FF7154760000000
  %6039 = fmul fast float %6038, %6035
  %6040 = fmul fast float %4438, 0x3FF7154760000000
  %6041 = fmul fast float %6040, %6035
  %6042 = call float @dx.op.unary.f32(i32 21, float %6037)  ; Exp(value)
  %6043 = call float @dx.op.unary.f32(i32 21, float %6039)  ; Exp(value)
  %6044 = call float @dx.op.unary.f32(i32 21, float %6041)  ; Exp(value)
  %6045 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6046 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  %6047 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  %6048 = fmul fast float %5971, %6045
  %6049 = fmul fast float %5972, %6046
  %6050 = fmul fast float %5973, %6047
  %6051 = fsub fast float %5925, %5227
  %6052 = fsub fast float %5926, %5226
  %6053 = fsub fast float %5927, %5225
  %6054 = call float @dx.op.dot3.f32(i32 55, float %6051, float %6052, float %6053, float %6051, float %6052, float %6053)  ; Dot3(ax,ay,az,bx,by,bz)
  %6055 = call float @dx.op.unary.f32(i32 25, float %6054)  ; Rsqrt(value)
  %6056 = fmul fast float %6055, %6051
  %6057 = fmul fast float %6055, %6052
  %6058 = fmul fast float %6055, %6053
  %6059 = call float @dx.op.dot3.f32(i32 55, float %5925, float %5926, float %5927, float %5234, float %5235, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5223, float %5222, float %6056, float %6057, float %6058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6061 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6062 = fmul fast float %6061, %5932
  %6063 = fmul fast float %6061, %6061
  %6064 = fmul fast float %6063, %5585
  %6065 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6066 = fmul fast float %6062, %6065
  %6067 = bitcast float %5922 to i32
  %6068 = ashr i32 %6067, 1
  %6069 = sub nsw i32 1597463007, %6068
  %6070 = bitcast i32 %6069 to float
  %6071 = fmul fast float %6070, %5919
  %6072 = fmul fast float %6070, %5920
  %6073 = fmul fast float %6070, %5921
  %6074 = fsub fast float %6071, %5227
  %6075 = fsub fast float %6072, %5226
  %6076 = fsub fast float %6073, %5225
  %6077 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6076, float %6074, float %6075, float %6076)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = call float @dx.op.unary.f32(i32 25, float %6077)  ; Rsqrt(value)
  %6079 = fmul fast float %6074, %6078
  %6080 = fmul fast float %6075, %6078
  %6081 = fmul fast float %6076, %6078
  %6082 = call float @dx.op.dot3.f32(i32 55, float %5234, float %5235, float %5236, float %6079, float %6080, float %6081)  ; Dot3(ax,ay,az,bx,by,bz)
  %6083 = fmul fast float %6082, %6082
  %6084 = call float @dx.op.unary.f32(i32 6, float %6059)  ; FAbs(value)
  %6085 = fsub fast float 1.000000e+00, %5237
  %6086 = call float @dx.op.binary.f32(i32 35, float %6085, float 0x3F847AE140000000)  ; FMax(a,b)
  %6087 = fmul fast float %6086, %6086
  %6088 = fmul fast float %6087, %6087
  %6089 = fsub fast float 1.000000e+00, %6088
  %6090 = fmul fast float %5241, %5241
  %6091 = fmul fast float %6090, %6089
  %6092 = fadd fast float %6091, %6088
  %6093 = bitcast float %6092 to i32
  %6094 = ashr i32 %6093, 1
  %6095 = add nsw i32 %6094, 532487669
  %6096 = bitcast i32 %6095 to float
  %6097 = fadd fast float %6096, %5241
  %6098 = fmul fast float %6088, %6083
  %6099 = fsub fast float 1.000000e+00, %6083
  %6100 = fadd fast float %6099, %6098
  %6101 = fmul fast float %6084, %6084
  %6102 = fmul fast float %6101, %6089
  %6103 = fadd fast float %6102, %6088
  %6104 = bitcast float %6103 to i32
  %6105 = ashr i32 %6104, 1
  %6106 = add nsw i32 %6105, 532487669
  %6107 = bitcast i32 %6106 to float
  %6108 = fadd fast float %6107, %6084
  %6109 = fmul fast float %6100, %6100
  %6110 = fmul fast float %6109, %6097
  %6111 = fmul fast float %6110, %6108
  %6112 = fdiv fast float 1.000000e+00, %6111
  %6113 = bitcast float %6088 to i32
  %6114 = sitofp i32 %6113 to float
  %6115 = fmul fast float %6114, 0x3FE7F73180000000
  %6116 = fadd fast float %6115, 0x41AFE27C40000000
  %6117 = fptosi float %6116 to i32
  %6118 = bitcast i32 %6117 to float
  %6119 = fmul fast float %5905, 0x3FD80E9D60000000
  %6120 = fmul fast float %6119, %6070
  %6121 = fadd fast float %6118, %6120
  %6122 = bitcast float %6121 to i32
  %6123 = sub nsw i32 2129859010, %6122
  %6124 = bitcast i32 %6123 to float
  %6125 = fmul fast float %6088, %6112
  %6126 = fmul fast float %6125, %6118
  %6127 = fmul fast float %6126, %6124
  %6128 = call float @dx.op.unary.f32(i32 6, float %6060)  ; FAbs(value)
  %6129 = fsub fast float 1.000000e+00, %6128
  %6130 = bitcast float %6129 to i32
  %6131 = sitofp i32 %6130 to float
  %6132 = fmul fast float %6131, 5.000000e+00
  %6133 = fadd fast float %6132, 0xC1EFBF8940000000
  %6134 = fptosi float %6133 to i32
  %6135 = bitcast i32 %6134 to float
  %6136 = fsub fast float 1.000000e+00, %5228
  %6137 = fsub fast float 1.000000e+00, %5229
  %6138 = fsub fast float 1.000000e+00, %5239
  %6139 = fmul fast float %6135, %6136
  %6140 = fmul fast float %6135, %6137
  %6141 = fmul fast float %6135, %6138
  %6142 = fadd fast float %6139, %5228
  %6143 = fadd fast float %6140, %5229
  %6144 = fadd fast float %6141, %5239
  br i1 %5500, label %6145, label %6168

; <label>:6145                                    ; preds = %6031
  %6146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4034, float %6128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6147 = extractvalue %dx.types.ResRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.ResRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.ResRet.f32 %6146, 2
  %6150 = fadd fast float %6147, -5.000000e-01
  %6151 = fadd fast float %6148, -5.000000e-01
  %6152 = fadd fast float %6149, -5.000000e-01
  %6153 = fmul fast float %5228, 4.000000e+00
  %6154 = fmul fast float %6153, %6136
  %6155 = fmul fast float %6154, %6150
  %6156 = fmul fast float %5229, 4.000000e+00
  %6157 = fmul fast float %6156, %6137
  %6158 = fmul fast float %6157, %6151
  %6159 = fmul fast float %5239, 4.000000e+00
  %6160 = fmul fast float %6159, %6138
  %6161 = fmul fast float %6160, %6152
  %6162 = fadd fast float %6155, %6142
  %6163 = fadd fast float %6158, %6143
  %6164 = fadd fast float %6161, %6144
  %6165 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6166 = call float @dx.op.unary.f32(i32 7, float %6163)  ; Saturate(value)
  %6167 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  br label %6168

; <label>:6168                                    ; preds = %6145, %6031
  %6169 = phi float [ %6165, %6145 ], [ %6142, %6031 ]
  %6170 = phi float [ %6166, %6145 ], [ %6143, %6031 ]
  %6171 = phi float [ %6167, %6145 ], [ %6144, %6031 ]
  %6172 = fmul fast float %6059, 9.843750e-01
  %6173 = fadd fast float %6172, 7.812500e-03
  %6174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6173, float %5490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6175 = extractvalue %dx.types.ResRet.f32 %6174, 2
  %6176 = extractvalue %dx.types.ResRet.f32 %6174, 3
  %6177 = fmul fast float %6175, %5228
  %6178 = fmul fast float %6175, %5229
  %6179 = fmul fast float %6175, %5239
  %6180 = fadd fast float %6177, %6176
  %6181 = fadd fast float %6178, %6176
  %6182 = fadd fast float %6179, %6176
  br i1 %5500, label %6183, label %6206

; <label>:6183                                    ; preds = %6168
  %6184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4034, float %6059, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6185 = extractvalue %dx.types.ResRet.f32 %6184, 0
  %6186 = extractvalue %dx.types.ResRet.f32 %6184, 1
  %6187 = extractvalue %dx.types.ResRet.f32 %6184, 2
  %6188 = fadd fast float %6185, -5.000000e-01
  %6189 = fadd fast float %6186, -5.000000e-01
  %6190 = fadd fast float %6187, -5.000000e-01
  %6191 = fmul fast float %5228, 4.000000e+00
  %6192 = fmul fast float %6191, %6136
  %6193 = fmul fast float %6192, %6188
  %6194 = fmul fast float %5229, 4.000000e+00
  %6195 = fmul fast float %6194, %6137
  %6196 = fmul fast float %6195, %6189
  %6197 = fmul fast float %5239, 4.000000e+00
  %6198 = fmul fast float %6197, %6138
  %6199 = fmul fast float %6198, %6190
  %6200 = fadd fast float %6193, %6180
  %6201 = fadd fast float %6196, %6181
  %6202 = fadd fast float %6199, %6182
  %6203 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  %6204 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6205 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  br label %6206

; <label>:6206                                    ; preds = %6183, %6168
  %6207 = phi float [ %6203, %6183 ], [ %6180, %6168 ]
  %6208 = phi float [ %6204, %6183 ], [ %6181, %6168 ]
  %6209 = phi float [ %6205, %6183 ], [ %6182, %6168 ]
  %6210 = call float @dx.op.binary.f32(i32 35, float %6208, float %6209)  ; FMax(a,b)
  %6211 = call float @dx.op.binary.f32(i32 35, float %6207, float %6210)  ; FMax(a,b)
  %6212 = fsub fast float 1.000000e+00, %6211
  %6213 = fmul fast float %6169, %6127
  %6214 = fmul fast float %6170, %6127
  %6215 = fmul fast float %6171, %6127
  %6216 = fsub fast float 1.000000e+00, %6060
  %6217 = bitcast float %6216 to i32
  %6218 = sitofp i32 %6217 to float
  %6219 = fmul fast float %6218, 5.000000e+00
  %6220 = fadd fast float %6219, 0xC1EFBF8940000000
  %6221 = fptosi float %6220 to i32
  %6222 = bitcast i32 %6221 to float
  %6223 = fmul fast float %6222, %4035
  %6224 = fmul fast float %6212, %6223
  %6225 = fmul fast float %6224, %5550
  %6226 = fmul fast float %6224, %5551
  %6227 = fmul fast float %6224, %5552
  %6228 = fadd fast float %6225, %6213
  %6229 = fadd fast float %6226, %6214
  %6230 = fadd fast float %6227, %6215
  %6231 = fmul fast float %6048, %4031
  %6232 = fmul fast float %6231, %6066
  %6233 = fmul fast float %6232, %6212
  %6234 = fmul fast float %6049, %4031
  %6235 = fmul fast float %6234, %6066
  %6236 = fmul fast float %6235, %6212
  %6237 = fmul fast float %6050, %4031
  %6238 = fmul fast float %6237, %6066
  %6239 = fmul fast float %6238, %6212
  %6240 = fadd fast float %6233, %5887
  %6241 = fadd fast float %6236, %5888
  %6242 = fadd fast float %6239, %5889
  %6243 = fmul fast float %6232, %6228
  %6244 = fmul fast float %6235, %6229
  %6245 = fmul fast float %6238, %6230
  %6246 = fadd fast float %6243, %5884
  %6247 = fadd fast float %6244, %5885
  %6248 = fadd fast float %6245, %5886
  br label %5962

; <label>:6249                                    ; preds = %5962
  br label %6250

; <label>:6250                                    ; preds = %6249, %5850
  %6251 = phi float [ %5852, %5850 ], [ %5963, %6249 ]
  %6252 = phi float [ %5853, %5850 ], [ %5964, %6249 ]
  %6253 = phi float [ %5854, %5850 ], [ %5965, %6249 ]
  %6254 = phi float [ %5855, %5850 ], [ %5966, %6249 ]
  %6255 = phi float [ %5856, %5850 ], [ %5967, %6249 ]
  %6256 = phi float [ %5857, %5850 ], [ %5968, %6249 ]
  %6257 = add i32 %5851, 1
  %6258 = icmp ugt i32 %6257, %5847
  br i1 %6258, label %6259, label %5850

; <label>:6259                                    ; preds = %6250
  br label %6260

; <label>:6260                                    ; preds = %6259, %5826, %5816
  %6261 = phi float [ %5817, %5816 ], [ %5817, %5826 ], [ %6251, %6259 ]
  %6262 = phi float [ %5818, %5816 ], [ %5818, %5826 ], [ %6252, %6259 ]
  %6263 = phi float [ %5819, %5816 ], [ %5819, %5826 ], [ %6253, %6259 ]
  %6264 = phi float [ %5820, %5816 ], [ %5820, %5826 ], [ %6254, %6259 ]
  %6265 = phi float [ %5821, %5816 ], [ %5821, %5826 ], [ %6255, %6259 ]
  %6266 = phi float [ %5822, %5816 ], [ %5822, %5826 ], [ %6256, %6259 ]
  %6267 = call float @dx.op.unary.f32(i32 24, float %5231)  ; Sqrt(value)
  %6268 = call float @dx.op.unary.f32(i32 24, float %5232)  ; Sqrt(value)
  %6269 = call float @dx.op.unary.f32(i32 24, float %5233)  ; Sqrt(value)
  %6270 = fmul fast float %6267, %6264
  %6271 = fmul fast float %6268, %6265
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  br i1 %205, label %6274, label %6294

; <label>:6274                                    ; preds = %6260
  %6275 = fadd fast float %6266, %4037
  %6276 = fmul fast float %6275, %4038
  %6277 = fsub fast float 1.000000e+00, %4038
  %6278 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 3
  %6281 = fmul fast float %6280, %6278
  %6282 = fadd fast float %6281, %6276
  %6283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6283, 0
  %6285 = fmul fast float %6284, %5556
  %6286 = fsub fast float %6282, %6285
  %6287 = fadd fast float %6271, %6270
  %6288 = fmul fast float %6273, %6287
  %6289 = extractvalue %dx.types.CBufRet.f32 %6279, 1
  %6290 = fsub fast float %6286, %6289
  %6291 = extractvalue %dx.types.CBufRet.f32 %6279, 2
  %6292 = fmul fast float %6290, %6291
  %6293 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  br label %6310

; <label>:6294                                    ; preds = %6260
  %6295 = fmul fast float %6269, %6266
  %6296 = fmul fast float %6273, %6270
  %6297 = fmul fast float %6273, %6271
  %6298 = fmul fast float %6295, %6273
  %6299 = add i32 %34, 356
  %6300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6299, i32 undef)  ; BufferLoad(srv,index,wot)
  %6301 = extractvalue %dx.types.ResRet.i32 %6300, 0
  %6302 = and i32 %6301, 32
  %6303 = icmp eq i32 %6302, 0
  br i1 %6303, label %6310, label %6304

; <label>:6304                                    ; preds = %6294
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = fmul fast float %6306, 0x3FE99999A0000000
  %6308 = fadd fast float %6306, %6296
  %6309 = fadd fast float %6307, %6298
  br label %6310

; <label>:6310                                    ; preds = %6304, %6294, %6274
  %6311 = phi float [ %6288, %6274 ], [ %6308, %6304 ], [ %6296, %6294 ]
  %6312 = phi float [ %6293, %6274 ], [ %6297, %6304 ], [ %6297, %6294 ]
  %6313 = phi float [ 1.000000e+00, %6274 ], [ %6309, %6304 ], [ %6298, %6294 ]
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6316 = fmul fast float %6315, %6262
  %6317 = fmul fast float %6315, %6263
  %6318 = fadd fast float %6262, %6261
  %6319 = select i1 %205, float %6318, float %6261
  %6320 = fmul float %6319, %6315
  %6321 = select i1 %205, float 0.000000e+00, float %6316
  %6322 = select i1 %205, float 0.000000e+00, float %6317
  %6323 = fmul fast float %6311, %6267
  %6324 = fmul fast float %6312, %6268
  %6325 = fmul fast float %6313, %6269
  %6326 = fadd fast float %6320, %6323
  %6327 = fadd fast float %6321, %6324
  %6328 = fadd fast float %6322, %6325
  %6329 = select i1 %205, float %6312, float %6327
  %6330 = select i1 %205, float %6313, float %6328
  %6331 = call float @dx.op.binary.f32(i32 36, float %6326, float 3.225500e+04)  ; FMin(a,b)
  %6332 = call float @dx.op.binary.f32(i32 36, float %6329, float 3.225500e+04)  ; FMin(a,b)
  %6333 = call float @dx.op.binary.f32(i32 36, float %6330, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

