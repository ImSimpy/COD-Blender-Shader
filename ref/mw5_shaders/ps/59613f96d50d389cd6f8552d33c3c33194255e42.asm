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
; shader hash: 3e1172ff935c51f22583d3ca1a1e0bac
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
  br i1 %452, label %940, label %453

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
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = and i32 %899, 26624
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %925, label %902

; <label>:902                                     ; preds = %894
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 16384
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %925, label %907

; <label>:907                                     ; preds = %902
  %908 = and i32 %904, 1048576
  %909 = icmp ne i32 %908, 0
  %910 = add i32 %34, 472
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = add i32 %912, 0
  %914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %914, %dx.types.Handle %80, float %552, float %553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = add i32 %34, 96
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = lshr i32 %919, 24
  %921 = uitofp i32 %920 to float
  %922 = fmul fast float %916, 0x3F70101020000000
  %923 = select i1 %909, float 0x3F70101020000000, float %922
  %924 = fmul fast float %923, %921
  br label %925

; <label>:925                                     ; preds = %907, %902, %894
  %926 = phi float [ %924, %907 ], [ 0.000000e+00, %902 ], [ 0.000000e+00, %894 ]
  %927 = add i32 %34, 96
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = lshr i32 %929, 8
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = call float @dx.op.dot3.f32(i32 55, float %767, float %768, float %769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %936 = fmul fast float %934, %935
  %937 = fadd fast float %936, %931
  %938 = fmul fast float %937, 0x3F70101020000000
  %939 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  br label %940

; <label>:940                                     ; preds = %925, %438
  %941 = phi float [ 0.000000e+00, %438 ], [ %848, %925 ]
  %942 = phi float [ 0.000000e+00, %438 ], [ %849, %925 ]
  %943 = phi float [ 0.000000e+00, %438 ], [ %767, %925 ]
  %944 = phi float [ 0.000000e+00, %438 ], [ %768, %925 ]
  %945 = phi float [ 0.000000e+00, %438 ], [ %769, %925 ]
  %946 = phi float [ 0.000000e+00, %438 ], [ %895, %925 ]
  %947 = phi float [ 0.000000e+00, %438 ], [ %896, %925 ]
  %948 = phi float [ 0.000000e+00, %438 ], [ %897, %925 ]
  %949 = phi float [ 0.000000e+00, %438 ], [ %753, %925 ]
  %950 = phi float [ 0.000000e+00, %438 ], [ 1.000000e+00, %925 ]
  %951 = phi float [ 0.000000e+00, %438 ], [ %847, %925 ]
  %952 = phi float [ 0.000000e+00, %438 ], [ %850, %925 ]
  %953 = phi float [ 0.000000e+00, %438 ], [ %926, %925 ]
  %954 = phi float [ 0.000000e+00, %438 ], [ %939, %925 ]
  br i1 %389, label %1819, label %955

; <label>:955                                     ; preds = %940
  %956 = icmp ult i32 %444, 2
  %957 = add i32 %34, 40
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = add i32 %34, 44
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = or i32 %962, %959
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %1819, label %965

; <label>:965                                     ; preds = %955
  %966 = and i32 %959, 262144
  %967 = icmp ne i32 %966, 0
  %968 = select i1 %967, float %39, float 1.000000e+00
  %969 = select i1 %967, float %40, float 0.000000e+00
  %970 = select i1 %967, float %41, float 0.000000e+00
  %971 = select i1 %967, float %42, float 1.000000e+00
  %972 = select i1 %967, float %43, float %71
  %973 = select i1 %967, float %44, float %72
  %974 = add i32 %34, 300
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = lshr i32 %976, 16
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = fmul fast float %978, 0x3F50624DE0000000
  %980 = add i32 %34, 104
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = lshr i32 %982, 16
  %984 = and i32 %983, 255
  %985 = lshr i32 %982, 24
  %986 = add i32 %34, 308
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = and i32 %988, 65535
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = lshr i32 %988, 16
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = add i32 %34, 48
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = lshr i32 %995, 22
  %997 = shl nuw nsw i32 %996, 5
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  %999 = shl i32 %995, 4
  %1000 = and i32 %999, 32752
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = lshr i32 %995, 7
  %1003 = and i32 %1002, 32752
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 3
  %1007 = fmul fast float %1006, 1.000000e+03
  %1008 = fmul fast float %299, %1007
  %1009 = call float @dx.op.unary.f32(i32 22, float %1008)  ; Frc(value)
  %1010 = fadd fast float %1009, %289
  %1011 = fmul fast float %300, %1007
  %1012 = call float @dx.op.unary.f32(i32 22, float %1011)  ; Frc(value)
  %1013 = fadd fast float %1012, %291
  %1014 = fmul fast float %979, %1007
  %1015 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1016 = fmul fast float %1015, 0x401921FB60000000
  %1017 = fadd fast float %1016, %998
  %1018 = call float @dx.op.unary.f32(i32 13, float %1017)  ; Sin(value)
  %1019 = call float @dx.op.unary.f32(i32 12, float %1017)  ; Cos(value)
  %1020 = fsub fast float -0.000000e+00, %1018
  %1021 = fadd fast float %972, -5.000000e-01
  %1022 = fadd fast float %973, -5.000000e-01
  %1023 = fmul fast float %990, %1021
  %1024 = fmul fast float %992, %1022
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fadd fast float %1024, 5.000000e-01
  %1027 = fmul fast float %1001, %1025
  %1028 = fmul fast float %1004, %1026
  %1029 = fmul fast float %1019, %1027
  %1030 = call float @dx.op.tertiary.f32(i32 46, float %1020, float %1028, float %1029)  ; FMad(a,b,c)
  %1031 = fmul fast float %1018, %1027
  %1032 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %1028, float %1031)  ; FMad(a,b,c)
  %1033 = fadd fast float %1010, %1030
  %1034 = fadd fast float %1013, %1032
  %1035 = icmp ugt i32 %984, 1
  %1036 = icmp ugt i32 %982, 33554431
  %1037 = or i1 %1036, %1035
  br i1 %1037, label %1038, label %1063

; <label>:1038                                    ; preds = %965
  %1039 = add i32 %34, 244
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = lshr i32 %1041, 16
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = fmul fast float %1006, %1043
  %1045 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1046 = mul nuw nsw i32 %984, %985
  %1047 = uitofp i32 %1046 to float
  %1048 = fmul fast float %1045, %1047
  %1049 = call float @dx.op.unary.f32(i32 27, float %1048)  ; Round_ni(value)
  %1050 = fptoui float %1049 to i32
  %1051 = urem i32 %1050, %984
  %1052 = udiv i32 %1050, %985
  %1053 = call float @dx.op.unary.f32(i32 22, float %1033)  ; Frc(value)
  %1054 = call float @dx.op.unary.f32(i32 22, float %1034)  ; Frc(value)
  %1055 = uitofp i32 %1051 to float
  %1056 = uitofp i32 %1052 to float
  %1057 = fadd fast float %1053, %1055
  %1058 = fadd fast float %1054, %1056
  %1059 = uitofp i32 %984 to float
  %1060 = uitofp i32 %985 to float
  %1061 = fdiv fast float %1057, %1059
  %1062 = fdiv fast float %1058, %1060
  br label %1063

; <label>:1063                                    ; preds = %1038, %965
  %1064 = phi float [ %1061, %1038 ], [ %1033, %965 ]
  %1065 = phi float [ %1062, %1038 ], [ %1034, %965 ]
  %1066 = and i32 %959, 256
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1114, label %1068

; <label>:1068                                    ; preds = %1063
  %1069 = add i32 %34, 428
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %80, float %1064, float %1065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = add i32 %34, 116
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = shl i32 %1078, 4
  %1080 = and i32 %1079, 32752
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = lshr i32 %1078, 7
  %1083 = and i32 %1082, 32752
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = fsub fast float 1.000000e+00, %441
  %1086 = call float @dx.op.binary.f32(i32 35, float %1085, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1087 = bitcast float %441 to i32
  %1088 = sitofp i32 %1087 to float
  %1089 = fadd fast float %1088, 0xC1CFBF8940000000
  %1090 = fmul fast float %1084, %1089
  %1091 = fadd fast float %1090, 0x41CFBF8940000000
  %1092 = fptosi float %1091 to i32
  %1093 = bitcast i32 %1092 to float
  %1094 = bitcast float %1086 to i32
  %1095 = sitofp i32 %1094 to float
  %1096 = fadd fast float %1095, 0xC1CFBF8940000000
  %1097 = fmul fast float %1096, %1084
  %1098 = fadd fast float %1097, 0x41CFBF8940000000
  %1099 = fptosi float %1098 to i32
  %1100 = bitcast i32 %1099 to float
  %1101 = fmul fast float %1093, %1081
  %1102 = fmul fast float %1100, %1081
  %1103 = fsub fast float %1086, %1101
  %1104 = fadd fast float %1102, %1086
  %1105 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  %1106 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1107 = fsub fast float %1075, %1105
  %1108 = fsub fast float %1106, %1105
  %1109 = bitcast float %1108 to i32
  %1110 = sub nsw i32 2129859010, %1109
  %1111 = bitcast i32 %1110 to float
  %1112 = fmul fast float %1111, %1107
  %1113 = call float @dx.op.unary.f32(i32 7, float %1112)  ; Saturate(value)
  br label %1114

; <label>:1114                                    ; preds = %1068, %1063
  %1115 = phi float [ %1113, %1068 ], [ %441, %1063 ]
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 128
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1136, label %1120

; <label>:1120                                    ; preds = %1114
  %1121 = add i32 %34, 412
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = add i32 %1123, 0
  %1125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1125, %dx.types.Handle %80, float %1064, float %1065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = and i32 %1129, 524288
  %1131 = icmp ne i32 %1130, 0
  %1132 = fcmp fast ogt float %1127, 0x3FE0101020000000
  %1133 = select i1 %1132, float 1.000000e+00, float 0.000000e+00
  %1134 = select i1 %1131, float %1133, float %1127
  %1135 = fmul fast float %1134, %1115
  br label %1136

; <label>:1136                                    ; preds = %1120, %1114
  %1137 = phi float [ %1135, %1120 ], [ %1115, %1114 ]
  %1138 = fcmp fast ult float %1137, 0x3F70101020000000
  br i1 %1138, label %1819, label %1139

; <label>:1139                                    ; preds = %1136
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %1141, 16
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1342, label %1144

; <label>:1144                                    ; preds = %1139
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %34, 364
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = add i32 %1149, 0
  %1151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1152 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1151, %dx.types.Handle %79, float %1064, float %1065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = extractvalue %dx.types.ResRet.f32 %1152, 3
  %1157 = and i32 %1146, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = lshr i32 %1146, 8
  %1160 = and i32 %1159, 255
  %1161 = uitofp i32 %1160 to float
  %1162 = fmul fast float %1156, %1158
  %1163 = fadd fast float %1162, %1161
  %1164 = fmul fast float %1163, 0x3F70101000000000
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 512
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1177, label %1169

; <label>:1169                                    ; preds = %1144
  %1170 = add i32 %34, 444
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = add i32 %1172, 0
  %1174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1174, %dx.types.Handle %80, float %1064, float %1065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  br label %1177

; <label>:1177                                    ; preds = %1169, %1144
  %1178 = phi float [ %1176, %1169 ], [ 1.000000e+00, %1144 ]
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 33554432
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1289, label %1183

; <label>:1183                                    ; preds = %1177
  %1184 = add i32 %34, 240
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 65535
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = lshr i32 %1186, 16
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = add i32 %34, 244
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 65535
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = lshr i32 %1197, 24
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1199, 0x3F70101020000000
  %1201 = and i32 %1197, 255
  %1202 = uitofp i32 %1201 to float
  %1203 = fmul fast float %1202, 0x3F70101020000000
  %1204 = lshr i32 %1197, 8
  %1205 = and i32 %1204, 255
  %1206 = uitofp i32 %1205 to float
  %1207 = fmul fast float %1206, 0x3F70101020000000
  %1208 = lshr i32 %1197, 16
  %1209 = and i32 %1208, 255
  %1210 = uitofp i32 %1209 to float
  %1211 = fmul fast float %1210, 0x3F70101020000000
  %1212 = add i32 %34, 236
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = lshr i32 %1214, 24
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1216, 0x3F70101020000000
  %1218 = and i32 %1214, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = fmul fast float %1219, 0x3F70101020000000
  %1221 = lshr i32 %1214, 8
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = fmul fast float %1223, 0x3F70101020000000
  %1225 = lshr i32 %1214, 16
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = fmul fast float %1227, 0x3F70101020000000
  %1229 = bitcast float %1153 to i32
  %1230 = ashr i32 %1229, 1
  %1231 = sub nsw i32 1597463174, %1230
  %1232 = bitcast i32 %1231 to float
  %1233 = fmul fast float %1153, 5.000000e-01
  %1234 = fmul fast float %1232, %1232
  %1235 = fmul fast float %1234, %1233
  %1236 = fsub fast float 1.500000e+00, %1235
  %1237 = fmul fast float %1232, %1153
  %1238 = fmul fast float %1237, %1236
  %1239 = bitcast float %1154 to i32
  %1240 = ashr i32 %1239, 1
  %1241 = sub nsw i32 1597463174, %1240
  %1242 = bitcast i32 %1241 to float
  %1243 = fmul fast float %1154, 5.000000e-01
  %1244 = fmul fast float %1242, %1242
  %1245 = fmul fast float %1244, %1243
  %1246 = fsub fast float 1.500000e+00, %1245
  %1247 = fmul fast float %1242, %1154
  %1248 = fmul fast float %1247, %1246
  %1249 = bitcast float %1155 to i32
  %1250 = ashr i32 %1249, 1
  %1251 = sub nsw i32 1597463174, %1250
  %1252 = bitcast i32 %1251 to float
  %1253 = fmul fast float %1155, 5.000000e-01
  %1254 = fmul fast float %1252, %1252
  %1255 = fmul fast float %1254, %1253
  %1256 = fsub fast float 1.500000e+00, %1255
  %1257 = fmul fast float %1252, %1155
  %1258 = fmul fast float %1257, %1256
  %1259 = fsub fast float %1238, %1220
  %1260 = fsub fast float %1248, %1224
  %1261 = fsub fast float %1258, %1228
  %1262 = fmul fast float %1259, %1188
  %1263 = fmul fast float %1260, %1190
  %1264 = fmul fast float %1261, %1195
  %1265 = fadd fast float %1262, %1203
  %1266 = fadd fast float %1263, %1207
  %1267 = fadd fast float %1264, %1211
  %1268 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1269 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1270 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1271 = fmul fast float %1268, %1268
  %1272 = fmul fast float %1269, %1269
  %1273 = fmul fast float %1270, %1270
  %1274 = fsub fast float %1271, %1153
  %1275 = fsub fast float %1272, %1154
  %1276 = fsub fast float %1273, %1155
  %1277 = fmul fast float %1274, %1178
  %1278 = fmul fast float %1275, %1178
  %1279 = fmul fast float %1276, %1178
  %1280 = fadd fast float %1277, %1153
  %1281 = fadd fast float %1278, %1154
  %1282 = fadd fast float %1279, %1155
  %1283 = fadd fast float %1200, %1164
  %1284 = fsub fast float %1283, %1217
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1286 = fsub fast float %1285, %1164
  %1287 = fmul fast float %1286, %1178
  %1288 = fadd fast float %1287, %1164
  br label %1342

; <label>:1289                                    ; preds = %1177
  %1290 = and i32 %1180, 134217728
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1326, label %1292

; <label>:1292                                    ; preds = %1289
  %1293 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %1294 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %1295 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %1296 = fadd fast float %1293, -5.000000e-01
  %1297 = fadd fast float %1294, -5.000000e-01
  %1298 = fadd fast float %1295, -5.000000e-01
  %1299 = fmul fast float %1296, %1178
  %1300 = fmul fast float %1297, %1178
  %1301 = fmul fast float %1298, %1178
  %1302 = fadd fast float %1299, 5.000000e-01
  %1303 = fadd fast float %1300, 5.000000e-01
  %1304 = fadd fast float %1301, 5.000000e-01
  %1305 = call float @dx.op.unary.f32(i32 24, float %1153)  ; Sqrt(value)
  %1306 = call float @dx.op.unary.f32(i32 24, float %1154)  ; Sqrt(value)
  %1307 = call float @dx.op.unary.f32(i32 24, float %1155)  ; Sqrt(value)
  %1308 = fmul fast float %1302, 2.000000e+00
  %1309 = fsub fast float 1.000000e+00, %1308
  %1310 = fmul fast float %1309, %1305
  %1311 = fadd fast float %1310, %1308
  %1312 = fmul fast float %1311, %1305
  %1313 = fmul fast float %1303, 2.000000e+00
  %1314 = fsub fast float 1.000000e+00, %1313
  %1315 = fmul fast float %1314, %1306
  %1316 = fadd fast float %1315, %1313
  %1317 = fmul fast float %1316, %1306
  %1318 = fmul fast float %1304, 2.000000e+00
  %1319 = fsub fast float 1.000000e+00, %1318
  %1320 = fmul fast float %1319, %1307
  %1321 = fadd fast float %1320, %1318
  %1322 = fmul fast float %1321, %1307
  %1323 = fmul fast float %1312, %1312
  %1324 = fmul fast float %1317, %1317
  %1325 = fmul fast float %1322, %1322
  br label %1342

; <label>:1326                                    ; preds = %1289
  %1327 = fmul fast float %276, %276
  %1328 = fmul fast float %280, %280
  %1329 = fmul fast float %284, %284
  %1330 = fadd fast float %1327, -1.000000e+00
  %1331 = fadd fast float %1328, -1.000000e+00
  %1332 = fadd fast float %1329, -1.000000e+00
  %1333 = fmul fast float %1178, %1330
  %1334 = fmul fast float %1178, %1331
  %1335 = fmul fast float %1178, %1332
  %1336 = fadd fast float %1333, 1.000000e+00
  %1337 = fadd fast float %1334, 1.000000e+00
  %1338 = fadd fast float %1335, 1.000000e+00
  %1339 = fmul fast float %1336, %1153
  %1340 = fmul fast float %1337, %1154
  %1341 = fmul fast float %1338, %1155
  br label %1342

; <label>:1342                                    ; preds = %1326, %1292, %1183, %1139
  %1343 = phi float [ %1288, %1183 ], [ %1164, %1292 ], [ %1164, %1326 ], [ 0x3FA23C0BE0000000, %1139 ]
  %1344 = phi float [ %1280, %1183 ], [ %1323, %1292 ], [ %1339, %1326 ], [ 1.000000e+00, %1139 ]
  %1345 = phi float [ %1281, %1183 ], [ %1324, %1292 ], [ %1340, %1326 ], [ 1.000000e+00, %1139 ]
  %1346 = phi float [ %1282, %1183 ], [ %1325, %1292 ], [ %1341, %1326 ], [ 1.000000e+00, %1139 ]
  %1347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.i32 %1347, 1
  %1349 = and i32 %1348, 1
  %1350 = icmp ne i32 %1349, 0
  %1351 = add i32 %34, 356
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1351, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = and i32 %1353, 32
  %1355 = icmp ne i32 %1354, 0
  %1356 = and i1 %1350, %1355
  %1357 = select i1 %1356, float 1.000000e+00, float %1344
  %1358 = select i1 %1356, float 0x3FD3333340000000, float %1345
  %1359 = select i1 %1356, float 0x3FD3333340000000, float %1346
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 32
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1436, label %1364

; <label>:1364                                    ; preds = %1342
  %1365 = add i32 %34, 108
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %34, 380
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = add i32 %1370, 0
  %1372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1371, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1373 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1372, %dx.types.Handle %79, float %1064, float %1065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.ResRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.ResRet.f32 %1373, 2
  %1377 = extractvalue %dx.types.ResRet.f32 %1373, 3
  %1378 = and i32 %1367, 255
  %1379 = uitofp i32 %1378 to float
  %1380 = lshr i32 %1367, 8
  %1381 = and i32 %1380, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = lshr i32 %1367, 16
  %1384 = and i32 %1383, 255
  %1385 = uitofp i32 %1384 to float
  %1386 = fmul fast float %1385, 0x3F70101000000000
  %1387 = fmul fast float %1374, %1379
  %1388 = fadd fast float %1387, %1382
  %1389 = fmul fast float %1388, 0x3F70101000000000
  %1390 = fadd fast float %1375, -5.000000e-01
  %1391 = fadd fast float %1377, -5.000000e-01
  %1392 = fmul fast float %1390, %1386
  %1393 = fmul fast float %1391, %1386
  %1394 = fadd fast float %1392, 5.000000e-01
  %1395 = fadd fast float %1393, 5.000000e-01
  %1396 = fmul fast float %1394, 2.000000e+00
  %1397 = fadd fast float %1396, -1.000000e+00
  %1398 = fmul fast float %1395, 2.000000e+00
  %1399 = fadd fast float %1398, -1.000000e+00
  %1400 = fadd fast float %1397, %1399
  %1401 = fmul fast float %1400, 5.000000e-01
  %1402 = fsub fast float %1397, %1399
  %1403 = fmul fast float %1402, 5.000000e-01
  %1404 = call float @dx.op.unary.f32(i32 6, float %1401)  ; FAbs(value)
  %1405 = fsub fast float 1.000000e+00, %1404
  %1406 = call float @dx.op.unary.f32(i32 6, float %1403)  ; FAbs(value)
  %1407 = fsub fast float %1405, %1406
  %1408 = call float @dx.op.dot3.f32(i32 55, float %1401, float %1403, float %1407, float %1401, float %1403, float %1407)  ; Dot3(ax,ay,az,bx,by,bz)
  %1409 = call float @dx.op.unary.f32(i32 25, float %1408)  ; Rsqrt(value)
  %1410 = fmul fast float %1401, %1409
  %1411 = fmul fast float %1403, %1409
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = and i32 %1413, 67108864
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1432, label %1416

; <label>:1416                                    ; preds = %1364
  %1417 = add i32 %34, 296
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 65535
  %1421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1420)  ; LegacyF16ToF32(value)
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = and i32 %1423, 65535
  %1425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1424)  ; LegacyF16ToF32(value)
  %1426 = lshr i32 %1419, 16
  %1427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1426)  ; LegacyF16ToF32(value)
  %1428 = fsub fast float %1389, %1427
  %1429 = fmul fast float %1428, %1421
  %1430 = fadd fast float %1429, %1425
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  br label %1432

; <label>:1432                                    ; preds = %1416, %1364
  %1433 = phi float [ %1431, %1416 ], [ %1389, %1364 ]
  %1434 = call float @dx.op.dot2.f32(i32 54, float %1410, float %1411, float %968, float %969)  ; Dot2(ax,ay,bx,by)
  %1435 = call float @dx.op.dot2.f32(i32 54, float %1410, float %1411, float %970, float %971)  ; Dot2(ax,ay,bx,by)
  br label %1436

; <label>:1436                                    ; preds = %1432, %1342
  %1437 = phi float [ %1433, %1432 ], [ 0x3FD6666660000000, %1342 ]
  %1438 = phi float [ %1434, %1432 ], [ 0.000000e+00, %1342 ]
  %1439 = phi float [ %1435, %1432 ], [ 0.000000e+00, %1342 ]
  %1440 = phi float [ %1376, %1432 ], [ 1.000000e+00, %1342 ]
  %1441 = add i32 %34, 176
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = lshr i32 %1443, 22
  %1445 = shl nuw nsw i32 %1444, 5
  %1446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1445)  ; LegacyF16ToF32(value)
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 64
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1484, label %1451

; <label>:1451                                    ; preds = %1436
  %1452 = add i32 %34, 396
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = add i32 %1454, 0
  %1456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 131072
  %1460 = icmp eq i32 %1459, 0
  %1461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1456, %dx.types.Handle %79, float %1064, float %1065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.ResRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.ResRet.f32 %1461, 2
  %1465 = fmul fast float %1462, %264
  %1466 = fmul fast float %1463, %267
  %1467 = fmul fast float %1464, %270
  br i1 %1460, label %1474, label %1468

; <label>:1468                                    ; preds = %1451
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = fmul fast float %1470, %1465
  %1472 = fmul fast float %1470, %1466
  %1473 = fmul fast float %1470, %1467
  br label %1474

; <label>:1474                                    ; preds = %1468, %1451
  %1475 = phi float [ %1471, %1468 ], [ %1465, %1451 ]
  %1476 = phi float [ %1472, %1468 ], [ %1466, %1451 ]
  %1477 = phi float [ %1473, %1468 ], [ %1467, %1451 ]
  %1478 = fmul fast float %1475, %1446
  %1479 = select i1 %205, float %1478, float %1475
  %1480 = call float @dx.op.dot3.f32(i32 55, float %1479, float %1476, float %1477, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1481 = select i1 %205, float 0.000000e+00, float %1475
  %1482 = select i1 %205, float %1480, float %1476
  %1483 = select i1 %205, float 0.000000e+00, float %1477
  br label %1484

; <label>:1484                                    ; preds = %1474, %1436
  %1485 = phi float [ %1481, %1474 ], [ 0.000000e+00, %1436 ]
  %1486 = phi float [ %1482, %1474 ], [ 0.000000e+00, %1436 ]
  %1487 = phi float [ %1483, %1474 ], [ 0.000000e+00, %1436 ]
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 1024
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1522, label %1492

; <label>:1492                                    ; preds = %1484
  %1493 = add i32 %34, 168
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 255
  %1497 = uitofp i32 %1496 to float
  %1498 = fmul fast float %1497, 0x3F70101020000000
  %1499 = lshr i32 %1495, 8
  %1500 = and i32 %1499, 255
  %1501 = uitofp i32 %1500 to float
  %1502 = fmul fast float %1501, 0x3F70101020000000
  %1503 = lshr i32 %1495, 16
  %1504 = and i32 %1503, 255
  %1505 = uitofp i32 %1504 to float
  %1506 = fmul fast float %1505, 0x3F70101020000000
  %1507 = fmul fast float %1498, %1498
  %1508 = fmul fast float %1502, %1502
  %1509 = fmul fast float %1506, %1506
  %1510 = add i32 %34, 460
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %1512, 0
  %1514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1514, %dx.types.Handle %80, float %1064, float %1065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.f32 %1515, 2
  %1519 = fmul fast float %1507, %1516
  %1520 = fmul fast float %1508, %1517
  %1521 = fmul fast float %1509, %1518
  br label %1522

; <label>:1522                                    ; preds = %1492, %1484
  %1523 = phi float [ %1519, %1492 ], [ 0.000000e+00, %1484 ]
  %1524 = phi float [ %1520, %1492 ], [ 0.000000e+00, %1484 ]
  %1525 = phi float [ %1521, %1492 ], [ 0.000000e+00, %1484 ]
  %1526 = fcmp fast ogt float %1523, 0.000000e+00
  %1527 = fcmp fast ogt float %1524, 0.000000e+00
  %1528 = fcmp fast ogt float %1525, 0.000000e+00
  %1529 = call float @dx.op.unary.f32(i32 23, float %1523)  ; Log(value)
  %1530 = call float @dx.op.unary.f32(i32 23, float %1524)  ; Log(value)
  %1531 = call float @dx.op.unary.f32(i32 23, float %1525)  ; Log(value)
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = lshr i32 %1533, 7
  %1535 = and i32 %1534, 32752
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = fmul fast float %1529, 0xBFE62E4300000000
  %1538 = fmul fast float %1537, %1536
  %1539 = fmul fast float %1530, 0xBFE62E4300000000
  %1540 = fmul fast float %1539, %1536
  %1541 = fmul fast float %1531, 0xBFE62E4300000000
  %1542 = fmul fast float %1541, %1536
  %1543 = select i1 %1526, float %1538, float 1.270000e+02
  %1544 = select i1 %1527, float %1540, float 1.270000e+02
  %1545 = select i1 %1528, float %1542, float 1.270000e+02
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 26624
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1586, label %1550

; <label>:1550                                    ; preds = %1522
  %1551 = add i32 %34, 476
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %1553, 0
  %1555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1555, %dx.types.Handle %80, float %1064, float %1065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 1048576
  %1561 = icmp ne i32 %1560, 0
  %1562 = and i32 %1559, 2048
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1573, label %1564

; <label>:1564                                    ; preds = %1550
  %1565 = extractvalue %dx.types.ResRet.f32 %1556, 3
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = shl i32 %1567, 4
  %1569 = and i32 %1568, 32752
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = fmul fast float %1570, %1565
  %1572 = call float @dx.op.binary.f32(i32 35, float %1571, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1573

; <label>:1573                                    ; preds = %1564, %1550
  %1574 = phi float [ %1572, %1564 ], [ 0x3F70101020000000, %1550 ]
  %1575 = and i32 %1559, 16384
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1586, label %1577

; <label>:1577                                    ; preds = %1573
  %1578 = add i32 %34, 112
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = lshr i32 %1580, 24
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1557, 0x3F70101020000000
  %1584 = select i1 %1561, float 0x3F70101020000000, float %1583
  %1585 = fmul fast float %1584, %1582
  br label %1586

; <label>:1586                                    ; preds = %1577, %1573, %1522
  %1587 = phi float [ %1574, %1577 ], [ %1574, %1573 ], [ 0x3F70101020000000, %1522 ]
  %1588 = phi float [ %1585, %1577 ], [ 0.000000e+00, %1573 ], [ 0.000000e+00, %1522 ]
  %1589 = add i32 %34, 112
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = lshr i32 %1591, 8
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1357, float %1358, float %1359, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = fmul fast float %1596, %1597
  %1599 = fadd fast float %1598, %1593
  %1600 = fmul fast float %1599, 0x3F70101020000000
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  br i1 %956, label %1602, label %1637

; <label>:1602                                    ; preds = %1586
  %1603 = fmul fast float %1587, 2.000000e+00
  %1604 = fcmp fast olt float %1543, 1.270000e+02
  %1605 = fcmp fast olt float %1544, 1.270000e+02
  %1606 = fcmp fast olt float %1545, 1.270000e+02
  %1607 = fmul fast float %1543, 0xBFF7154760000000
  %1608 = fmul fast float %1607, %1603
  %1609 = fmul fast float %1544, 0xBFF7154760000000
  %1610 = fmul fast float %1609, %1603
  %1611 = fmul fast float %1545, 0xBFF7154760000000
  %1612 = fmul fast float %1611, %1603
  %1613 = call float @dx.op.unary.f32(i32 21, float %1608)  ; Exp(value)
  %1614 = call float @dx.op.unary.f32(i32 21, float %1610)  ; Exp(value)
  %1615 = call float @dx.op.unary.f32(i32 21, float %1612)  ; Exp(value)
  %1616 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1617 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1618 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1619 = fadd fast float %1616, -1.000000e+00
  %1620 = select i1 %1604, float %1619, float -1.000000e+00
  %1621 = fadd fast float %1617, -1.000000e+00
  %1622 = select i1 %1605, float %1621, float -1.000000e+00
  %1623 = fadd fast float %1618, -1.000000e+00
  %1624 = select i1 %1606, float %1623, float -1.000000e+00
  %1625 = fmul fast float %1620, %1137
  %1626 = fmul fast float %1622, %1137
  %1627 = fmul fast float %1624, %1137
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fadd fast float %1626, 1.000000e+00
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fmul fast float %1628, %943
  %1632 = fmul fast float %1629, %944
  %1633 = fmul fast float %1630, %945
  %1634 = fmul fast float %1628, %946
  %1635 = fmul fast float %1629, %947
  %1636 = fmul fast float %1630, %948
  br label %1637

; <label>:1637                                    ; preds = %1602, %1586
  %1638 = phi float [ %1631, %1602 ], [ %943, %1586 ]
  %1639 = phi float [ %1632, %1602 ], [ %944, %1586 ]
  %1640 = phi float [ %1633, %1602 ], [ %945, %1586 ]
  %1641 = phi float [ %1634, %1602 ], [ %946, %1586 ]
  %1642 = phi float [ %1635, %1602 ], [ %947, %1586 ]
  %1643 = phi float [ %1636, %1602 ], [ %948, %1586 ]
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 3
  %1647 = icmp eq i32 %1646, 3
  br i1 %1647, label %1726, label %1648

; <label>:1648                                    ; preds = %1637
  %1649 = and i32 %1645, 16
  %1650 = icmp ne i32 %1649, 0
  %1651 = select i1 %1650, float %1137, float 0.000000e+00
  %1652 = icmp eq i32 %1646, 0
  br i1 %1652, label %1653, label %1681

; <label>:1653                                    ; preds = %1648
  %1654 = and i32 %1645, 64
  %1655 = icmp ne i32 %1654, 0
  %1656 = select i1 %1655, float %1137, float 0.000000e+00
  %1657 = fsub fast float %1357, %1638
  %1658 = fsub fast float %1358, %1639
  %1659 = fsub fast float %1359, %1640
  %1660 = fmul fast float %1651, %1657
  %1661 = fmul fast float %1651, %1658
  %1662 = fmul fast float %1651, %1659
  %1663 = fadd fast float %1660, %1638
  %1664 = fadd fast float %1661, %1639
  %1665 = fadd fast float %1662, %1640
  %1666 = fsub fast float %1343, %949
  %1667 = fmul fast float %1651, %1666
  %1668 = fadd fast float %1667, %949
  %1669 = fsub fast float %1485, %1641
  %1670 = fsub fast float %1486, %1642
  %1671 = fsub fast float %1487, %1643
  %1672 = fmul fast float %1656, %1669
  %1673 = fmul fast float %1656, %1670
  %1674 = fmul fast float %1656, %1671
  %1675 = fadd fast float %1672, %1641
  %1676 = fadd fast float %1673, %1642
  %1677 = fadd fast float %1674, %1643
  %1678 = fsub fast float %1601, %954
  %1679 = fmul fast float %1651, %1678
  %1680 = fadd fast float %1679, %954
  br label %1726

; <label>:1681                                    ; preds = %1648
  %1682 = icmp eq i32 %1646, 1
  br i1 %1682, label %1683, label %1696

; <label>:1683                                    ; preds = %1681
  %1684 = fadd fast float %1357, -1.000000e+00
  %1685 = fadd fast float %1358, -1.000000e+00
  %1686 = fadd fast float %1359, -1.000000e+00
  %1687 = fmul fast float %1651, %1684
  %1688 = fmul fast float %1651, %1685
  %1689 = fmul fast float %1651, %1686
  %1690 = fadd fast float %1687, 1.000000e+00
  %1691 = fadd fast float %1688, 1.000000e+00
  %1692 = fadd fast float %1689, 1.000000e+00
  %1693 = fmul fast float %1690, %1638
  %1694 = fmul fast float %1691, %1639
  %1695 = fmul fast float %1692, %1640
  br label %1726

; <label>:1696                                    ; preds = %1681
  %1697 = icmp eq i32 %1646, 2
  br i1 %1697, label %1698, label %1726

; <label>:1698                                    ; preds = %1696
  %1699 = call float @dx.op.unary.f32(i32 24, float %1357)  ; Sqrt(value)
  %1700 = call float @dx.op.unary.f32(i32 24, float %1358)  ; Sqrt(value)
  %1701 = call float @dx.op.unary.f32(i32 24, float %1359)  ; Sqrt(value)
  %1702 = fadd fast float %1699, -5.000000e-01
  %1703 = fadd fast float %1700, -5.000000e-01
  %1704 = fadd fast float %1701, -5.000000e-01
  %1705 = fmul fast float %1702, %1651
  %1706 = fmul fast float %1703, %1651
  %1707 = fmul fast float %1704, %1651
  %1708 = fadd fast float %1705, 5.000000e-01
  %1709 = fadd fast float %1706, 5.000000e-01
  %1710 = fadd fast float %1707, 5.000000e-01
  %1711 = fmul fast float %1708, 2.000000e+00
  %1712 = fsub fast float 1.000000e+00, %1711
  %1713 = fmul fast float %1712, %1638
  %1714 = fadd fast float %1713, %1711
  %1715 = fmul fast float %1714, %1638
  %1716 = fmul fast float %1709, 2.000000e+00
  %1717 = fsub fast float 1.000000e+00, %1716
  %1718 = fmul fast float %1717, %1639
  %1719 = fadd fast float %1718, %1716
  %1720 = fmul fast float %1719, %1639
  %1721 = fmul fast float %1710, 2.000000e+00
  %1722 = fsub fast float 1.000000e+00, %1721
  %1723 = fmul fast float %1722, %1640
  %1724 = fadd fast float %1723, %1721
  %1725 = fmul fast float %1724, %1640
  br label %1726

; <label>:1726                                    ; preds = %1698, %1696, %1683, %1653, %1637
  %1727 = phi float [ %1638, %1637 ], [ %1715, %1698 ], [ %1638, %1696 ], [ %1693, %1683 ], [ %1663, %1653 ]
  %1728 = phi float [ %1639, %1637 ], [ %1720, %1698 ], [ %1639, %1696 ], [ %1694, %1683 ], [ %1664, %1653 ]
  %1729 = phi float [ %1640, %1637 ], [ %1725, %1698 ], [ %1640, %1696 ], [ %1695, %1683 ], [ %1665, %1653 ]
  %1730 = phi float [ %1641, %1637 ], [ %1641, %1698 ], [ %1641, %1696 ], [ %1641, %1683 ], [ %1675, %1653 ]
  %1731 = phi float [ %1642, %1637 ], [ %1642, %1698 ], [ %1642, %1696 ], [ %1642, %1683 ], [ %1676, %1653 ]
  %1732 = phi float [ %1643, %1637 ], [ %1643, %1698 ], [ %1643, %1696 ], [ %1643, %1683 ], [ %1677, %1653 ]
  %1733 = phi float [ %949, %1637 ], [ %949, %1698 ], [ %949, %1696 ], [ %949, %1683 ], [ %1668, %1653 ]
  %1734 = phi float [ %954, %1637 ], [ %954, %1698 ], [ %954, %1696 ], [ %954, %1683 ], [ %1680, %1653 ]
  %1735 = and i32 %1645, 12
  %1736 = icmp eq i32 %1735, 12
  br i1 %1736, label %1819, label %1737

; <label>:1737                                    ; preds = %1726
  %1738 = and i32 %1645, 2097184
  %1739 = icmp eq i32 %1738, 2097184
  %1740 = select i1 %1739, float %1137, float 0.000000e+00
  %1741 = and i32 %1645, 4194336
  %1742 = icmp eq i32 %1741, 4194336
  %1743 = select i1 %1742, float %1137, float 0.000000e+00
  %1744 = and i32 %1645, 8388640
  %1745 = icmp eq i32 %1744, 8388640
  %1746 = select i1 %1745, float %1137, float 0.000000e+00
  %1747 = and i32 %1645, 16384
  %1748 = icmp ne i32 %1747, 0
  %1749 = select i1 %1748, float %1137, float 0.000000e+00
  %1750 = icmp eq i32 %1735, 0
  br i1 %1750, label %1751, label %1767

; <label>:1751                                    ; preds = %1737
  %1752 = fsub fast float %1438, %941
  %1753 = fsub fast float %1439, %942
  %1754 = fmul fast float %1740, %1752
  %1755 = fmul fast float %1740, %1753
  %1756 = fadd fast float %1754, %941
  %1757 = fadd fast float %1755, %942
  %1758 = fsub fast float %1440, %952
  %1759 = fmul fast float %1743, %1758
  %1760 = fadd fast float %1759, %952
  %1761 = fsub fast float %1437, %951
  %1762 = fmul fast float %1746, %1761
  %1763 = fadd fast float %1762, %951
  %1764 = fsub fast float %1588, %953
  %1765 = fmul fast float %1749, %1764
  %1766 = fadd fast float %1765, %953
  br label %1819

; <label>:1767                                    ; preds = %1737
  %1768 = icmp eq i32 %1735, 4
  br i1 %1768, label %1769, label %1803

; <label>:1769                                    ; preds = %1767
  %1770 = fmul fast float %1740, %1438
  %1771 = fmul fast float %1740, %1439
  %1772 = fadd fast float %1770, %941
  %1773 = fadd fast float %1771, %942
  %1774 = call float @dx.op.binary.f32(i32 36, float %952, float %1440)  ; FMin(a,b)
  %1775 = fsub fast float %1774, %952
  %1776 = fmul fast float %1775, %1743
  %1777 = fadd fast float %1776, %952
  %1778 = fadd fast float %1437, %951
  %1779 = fmul fast float %1778, 0x3FF337FAE0000000
  %1780 = fmul fast float %951, %951
  %1781 = fmul fast float %1437, %1437
  %1782 = fadd fast float %1781, %1780
  %1783 = fmul fast float %1782, 0x3FE5152B00000000
  %1784 = fmul fast float %951, 0xBFCC1F85E0000000
  %1785 = fmul fast float %1784, %1437
  %1786 = fadd fast float %1785, 0xBFE1363700000000
  %1787 = fadd fast float %1786, %1779
  %1788 = fsub fast float %1787, %1783
  %1789 = fmul fast float %1778, 0x3FBA6F0D00000000
  %1790 = fmul fast float %1782, 0x3FD0432880000000
  %1791 = fmul fast float %951, 0xBFEF110800000000
  %1792 = fmul fast float %1791, %1437
  %1793 = fadd fast float %1792, 1.000000e+00
  %1794 = fsub fast float %1793, %1789
  %1795 = fadd fast float %1794, %1790
  %1796 = fdiv fast float %1788, %1795
  %1797 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  %1798 = fsub fast float %1797, %951
  %1799 = fmul fast float %1798, %1746
  %1800 = fadd fast float %1799, %951
  %1801 = fmul fast float %1749, %1588
  %1802 = fadd fast float %1801, %953
  br label %1819

; <label>:1803                                    ; preds = %1767
  %1804 = icmp eq i32 %1735, 8
  br i1 %1804, label %1805, label %1819

; <label>:1805                                    ; preds = %1803
  %1806 = fmul fast float %1740, %1438
  %1807 = fmul fast float %1740, %1439
  %1808 = fadd fast float %1806, %941
  %1809 = fadd fast float %1807, %942
  %1810 = call float @dx.op.binary.f32(i32 36, float %952, float %1440)  ; FMin(a,b)
  %1811 = fsub fast float %1810, %952
  %1812 = fmul fast float %1811, %1743
  %1813 = fadd fast float %1812, %952
  %1814 = fsub fast float %1437, %951
  %1815 = fmul fast float %1746, %1814
  %1816 = fadd fast float %1815, %951
  %1817 = fmul fast float %1749, %1588
  %1818 = fadd fast float %1817, %953
  br label %1819

; <label>:1819                                    ; preds = %1805, %1803, %1769, %1751, %1726, %1136, %955, %940
  %1820 = phi float [ %941, %1726 ], [ %941, %1136 ], [ %941, %940 ], [ %1808, %1805 ], [ %941, %1803 ], [ %1772, %1769 ], [ %1756, %1751 ], [ %941, %955 ]
  %1821 = phi float [ %942, %1726 ], [ %942, %1136 ], [ %942, %940 ], [ %1809, %1805 ], [ %942, %1803 ], [ %1773, %1769 ], [ %1757, %1751 ], [ %942, %955 ]
  %1822 = phi float [ %1727, %1726 ], [ %943, %1136 ], [ %943, %940 ], [ %1727, %1805 ], [ %1727, %1803 ], [ %1727, %1769 ], [ %1727, %1751 ], [ %943, %955 ]
  %1823 = phi float [ %1728, %1726 ], [ %944, %1136 ], [ %944, %940 ], [ %1728, %1805 ], [ %1728, %1803 ], [ %1728, %1769 ], [ %1728, %1751 ], [ %944, %955 ]
  %1824 = phi float [ %1729, %1726 ], [ %945, %1136 ], [ %945, %940 ], [ %1729, %1805 ], [ %1729, %1803 ], [ %1729, %1769 ], [ %1729, %1751 ], [ %945, %955 ]
  %1825 = phi float [ %1730, %1726 ], [ %946, %1136 ], [ %946, %940 ], [ %1730, %1805 ], [ %1730, %1803 ], [ %1730, %1769 ], [ %1730, %1751 ], [ %946, %955 ]
  %1826 = phi float [ %1731, %1726 ], [ %947, %1136 ], [ %947, %940 ], [ %1731, %1805 ], [ %1731, %1803 ], [ %1731, %1769 ], [ %1731, %1751 ], [ %947, %955 ]
  %1827 = phi float [ %1732, %1726 ], [ %948, %1136 ], [ %948, %940 ], [ %1732, %1805 ], [ %1732, %1803 ], [ %1732, %1769 ], [ %1732, %1751 ], [ %948, %955 ]
  %1828 = phi float [ %1733, %1726 ], [ %949, %1136 ], [ %949, %940 ], [ %1733, %1805 ], [ %1733, %1803 ], [ %1733, %1769 ], [ %1733, %1751 ], [ %949, %955 ]
  %1829 = phi float [ %951, %1726 ], [ %951, %1136 ], [ %951, %940 ], [ %1816, %1805 ], [ %951, %1803 ], [ %1800, %1769 ], [ %1763, %1751 ], [ %951, %955 ]
  %1830 = phi float [ %952, %1726 ], [ %952, %1136 ], [ %952, %940 ], [ %1813, %1805 ], [ %952, %1803 ], [ %1777, %1769 ], [ %1760, %1751 ], [ %952, %955 ]
  %1831 = phi float [ %953, %1726 ], [ %953, %1136 ], [ %953, %940 ], [ %1818, %1805 ], [ %953, %1803 ], [ %1802, %1769 ], [ %1766, %1751 ], [ %953, %955 ]
  %1832 = phi float [ %1734, %1726 ], [ %954, %1136 ], [ %954, %940 ], [ %1734, %1805 ], [ %1734, %1803 ], [ %1734, %1769 ], [ %1734, %1751 ], [ %954, %955 ]
  br i1 %391, label %2697, label %1833

; <label>:1833                                    ; preds = %1819
  %1834 = icmp ult i32 %444, 3
  %1835 = add i32 %34, 56
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = add i32 %34, 60
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = or i32 %1840, %1837
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %2697, label %1843

; <label>:1843                                    ; preds = %1833
  %1844 = and i32 %1837, 262144
  %1845 = icmp ne i32 %1844, 0
  %1846 = select i1 %1845, float %39, float 1.000000e+00
  %1847 = select i1 %1845, float %40, float 0.000000e+00
  %1848 = select i1 %1845, float %41, float 0.000000e+00
  %1849 = select i1 %1845, float %42, float 1.000000e+00
  %1850 = select i1 %1845, float %43, float %71
  %1851 = select i1 %1845, float %44, float %72
  %1852 = add i32 %34, 316
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = lshr i32 %1854, 16
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = fmul fast float %1856, 0x3F50624DE0000000
  %1858 = add i32 %34, 120
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = lshr i32 %1860, 16
  %1862 = and i32 %1861, 255
  %1863 = lshr i32 %1860, 24
  %1864 = add i32 %34, 324
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %1866, 65535
  %1868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1867)  ; LegacyF16ToF32(value)
  %1869 = lshr i32 %1866, 16
  %1870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1869)  ; LegacyF16ToF32(value)
  %1871 = add i32 %34, 64
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = lshr i32 %1873, 22
  %1875 = shl nuw nsw i32 %1874, 5
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = shl i32 %1873, 4
  %1878 = and i32 %1877, 32752
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = lshr i32 %1873, 7
  %1881 = and i32 %1880, 32752
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 3
  %1885 = fmul fast float %1884, 1.000000e+03
  %1886 = fmul fast float %341, %1885
  %1887 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1888 = fadd fast float %1887, %331
  %1889 = fmul fast float %342, %1885
  %1890 = call float @dx.op.unary.f32(i32 22, float %1889)  ; Frc(value)
  %1891 = fadd fast float %1890, %333
  %1892 = fmul fast float %1857, %1885
  %1893 = call float @dx.op.unary.f32(i32 22, float %1892)  ; Frc(value)
  %1894 = fmul fast float %1893, 0x401921FB60000000
  %1895 = fadd fast float %1894, %1876
  %1896 = call float @dx.op.unary.f32(i32 13, float %1895)  ; Sin(value)
  %1897 = call float @dx.op.unary.f32(i32 12, float %1895)  ; Cos(value)
  %1898 = fsub fast float -0.000000e+00, %1896
  %1899 = fadd fast float %1850, -5.000000e-01
  %1900 = fadd fast float %1851, -5.000000e-01
  %1901 = fmul fast float %1868, %1899
  %1902 = fmul fast float %1870, %1900
  %1903 = fadd fast float %1901, 5.000000e-01
  %1904 = fadd fast float %1902, 5.000000e-01
  %1905 = fmul fast float %1879, %1903
  %1906 = fmul fast float %1882, %1904
  %1907 = fmul fast float %1897, %1905
  %1908 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %1906, float %1907)  ; FMad(a,b,c)
  %1909 = fmul fast float %1896, %1905
  %1910 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %1906, float %1909)  ; FMad(a,b,c)
  %1911 = fadd fast float %1888, %1908
  %1912 = fadd fast float %1891, %1910
  %1913 = icmp ugt i32 %1862, 1
  %1914 = icmp ugt i32 %1860, 33554431
  %1915 = or i1 %1914, %1913
  br i1 %1915, label %1916, label %1941

; <label>:1916                                    ; preds = %1843
  %1917 = add i32 %34, 260
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = lshr i32 %1919, 16
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = fmul fast float %1884, %1921
  %1923 = call float @dx.op.unary.f32(i32 22, float %1922)  ; Frc(value)
  %1924 = mul nuw nsw i32 %1862, %1863
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1923, %1925
  %1927 = call float @dx.op.unary.f32(i32 27, float %1926)  ; Round_ni(value)
  %1928 = fptoui float %1927 to i32
  %1929 = urem i32 %1928, %1862
  %1930 = udiv i32 %1928, %1863
  %1931 = call float @dx.op.unary.f32(i32 22, float %1911)  ; Frc(value)
  %1932 = call float @dx.op.unary.f32(i32 22, float %1912)  ; Frc(value)
  %1933 = uitofp i32 %1929 to float
  %1934 = uitofp i32 %1930 to float
  %1935 = fadd fast float %1931, %1933
  %1936 = fadd fast float %1932, %1934
  %1937 = uitofp i32 %1862 to float
  %1938 = uitofp i32 %1863 to float
  %1939 = fdiv fast float %1935, %1937
  %1940 = fdiv fast float %1936, %1938
  br label %1941

; <label>:1941                                    ; preds = %1916, %1843
  %1942 = phi float [ %1939, %1916 ], [ %1911, %1843 ]
  %1943 = phi float [ %1940, %1916 ], [ %1912, %1843 ]
  %1944 = and i32 %1837, 256
  %1945 = icmp eq i32 %1944, 0
  br i1 %1945, label %1992, label %1946

; <label>:1946                                    ; preds = %1941
  %1947 = add i32 %34, 432
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = add i32 %1949, 0
  %1951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1952 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1951, %dx.types.Handle %80, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = add i32 %34, 132
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = shl i32 %1956, 4
  %1958 = and i32 %1957, 32752
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  %1960 = lshr i32 %1956, 7
  %1961 = and i32 %1960, 32752
  %1962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1961)  ; LegacyF16ToF32(value)
  %1963 = fsub fast float 1.000000e+00, %440
  %1964 = call float @dx.op.binary.f32(i32 35, float %1963, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1965 = bitcast float %440 to i32
  %1966 = sitofp i32 %1965 to float
  %1967 = fadd fast float %1966, 0xC1CFBF8940000000
  %1968 = fmul fast float %1962, %1967
  %1969 = fadd fast float %1968, 0x41CFBF8940000000
  %1970 = fptosi float %1969 to i32
  %1971 = bitcast i32 %1970 to float
  %1972 = bitcast float %1964 to i32
  %1973 = sitofp i32 %1972 to float
  %1974 = fadd fast float %1973, 0xC1CFBF8940000000
  %1975 = fmul fast float %1974, %1962
  %1976 = fadd fast float %1975, 0x41CFBF8940000000
  %1977 = fptosi float %1976 to i32
  %1978 = bitcast i32 %1977 to float
  %1979 = fmul fast float %1971, %1959
  %1980 = fmul fast float %1978, %1959
  %1981 = fsub fast float %1964, %1979
  %1982 = fadd fast float %1980, %1964
  %1983 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1984 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1985 = fsub fast float %1953, %1983
  %1986 = fsub fast float %1984, %1983
  %1987 = bitcast float %1986 to i32
  %1988 = sub nsw i32 2129859010, %1987
  %1989 = bitcast i32 %1988 to float
  %1990 = fmul fast float %1989, %1985
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  br label %1992

; <label>:1992                                    ; preds = %1946, %1941
  %1993 = phi float [ %1991, %1946 ], [ %440, %1941 ]
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = and i32 %1995, 128
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2014, label %1998

; <label>:1998                                    ; preds = %1992
  %1999 = add i32 %34, 416
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = add i32 %2001, 0
  %2003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2004 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2003, %dx.types.Handle %80, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2005 = extractvalue %dx.types.ResRet.f32 %2004, 0
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 524288
  %2009 = icmp ne i32 %2008, 0
  %2010 = fcmp fast ogt float %2005, 0x3FE0101020000000
  %2011 = select i1 %2010, float 1.000000e+00, float 0.000000e+00
  %2012 = select i1 %2009, float %2011, float %2005
  %2013 = fmul fast float %2012, %1993
  br label %2014

; <label>:2014                                    ; preds = %1998, %1992
  %2015 = phi float [ %2013, %1998 ], [ %1993, %1992 ]
  %2016 = fcmp fast ult float %2015, 0x3F70101020000000
  br i1 %2016, label %2697, label %2017

; <label>:2017                                    ; preds = %2014
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 16
  %2021 = icmp eq i32 %2020, 0
  br i1 %2021, label %2220, label %2022

; <label>:2022                                    ; preds = %2017
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = add i32 %34, 368
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = add i32 %2027, 0
  %2029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2029, %dx.types.Handle %79, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.ResRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.ResRet.f32 %2030, 2
  %2034 = extractvalue %dx.types.ResRet.f32 %2030, 3
  %2035 = and i32 %2024, 255
  %2036 = uitofp i32 %2035 to float
  %2037 = lshr i32 %2024, 8
  %2038 = and i32 %2037, 255
  %2039 = uitofp i32 %2038 to float
  %2040 = fmul fast float %2034, %2036
  %2041 = fadd fast float %2040, %2039
  %2042 = fmul fast float %2041, 0x3F70101000000000
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = and i32 %2044, 512
  %2046 = icmp eq i32 %2045, 0
  br i1 %2046, label %2055, label %2047

; <label>:2047                                    ; preds = %2022
  %2048 = add i32 %34, 448
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = add i32 %2050, 0
  %2052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2051, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2053 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2052, %dx.types.Handle %80, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  br label %2055

; <label>:2055                                    ; preds = %2047, %2022
  %2056 = phi float [ %2054, %2047 ], [ 1.000000e+00, %2022 ]
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = and i32 %2058, 33554432
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2167, label %2061

; <label>:2061                                    ; preds = %2055
  %2062 = add i32 %34, 256
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 65535
  %2066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2065)  ; LegacyF16ToF32(value)
  %2067 = lshr i32 %2064, 16
  %2068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2067)  ; LegacyF16ToF32(value)
  %2069 = add i32 %34, 260
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = and i32 %2071, 65535
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = lshr i32 %2075, 24
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2077, 0x3F70101020000000
  %2079 = and i32 %2075, 255
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2080, 0x3F70101020000000
  %2082 = lshr i32 %2075, 8
  %2083 = and i32 %2082, 255
  %2084 = uitofp i32 %2083 to float
  %2085 = fmul fast float %2084, 0x3F70101020000000
  %2086 = lshr i32 %2075, 16
  %2087 = and i32 %2086, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2088, 0x3F70101020000000
  %2090 = add i32 %34, 252
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = lshr i32 %2092, 24
  %2094 = uitofp i32 %2093 to float
  %2095 = fmul fast float %2094, 0x3F70101020000000
  %2096 = and i32 %2092, 255
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2097, 0x3F70101020000000
  %2099 = lshr i32 %2092, 8
  %2100 = and i32 %2099, 255
  %2101 = uitofp i32 %2100 to float
  %2102 = fmul fast float %2101, 0x3F70101020000000
  %2103 = lshr i32 %2092, 16
  %2104 = and i32 %2103, 255
  %2105 = uitofp i32 %2104 to float
  %2106 = fmul fast float %2105, 0x3F70101020000000
  %2107 = bitcast float %2031 to i32
  %2108 = ashr i32 %2107, 1
  %2109 = sub nsw i32 1597463174, %2108
  %2110 = bitcast i32 %2109 to float
  %2111 = fmul fast float %2031, 5.000000e-01
  %2112 = fmul fast float %2110, %2110
  %2113 = fmul fast float %2112, %2111
  %2114 = fsub fast float 1.500000e+00, %2113
  %2115 = fmul fast float %2110, %2031
  %2116 = fmul fast float %2115, %2114
  %2117 = bitcast float %2032 to i32
  %2118 = ashr i32 %2117, 1
  %2119 = sub nsw i32 1597463174, %2118
  %2120 = bitcast i32 %2119 to float
  %2121 = fmul fast float %2032, 5.000000e-01
  %2122 = fmul fast float %2120, %2120
  %2123 = fmul fast float %2122, %2121
  %2124 = fsub fast float 1.500000e+00, %2123
  %2125 = fmul fast float %2120, %2032
  %2126 = fmul fast float %2125, %2124
  %2127 = bitcast float %2033 to i32
  %2128 = ashr i32 %2127, 1
  %2129 = sub nsw i32 1597463174, %2128
  %2130 = bitcast i32 %2129 to float
  %2131 = fmul fast float %2033, 5.000000e-01
  %2132 = fmul fast float %2130, %2130
  %2133 = fmul fast float %2132, %2131
  %2134 = fsub fast float 1.500000e+00, %2133
  %2135 = fmul fast float %2130, %2033
  %2136 = fmul fast float %2135, %2134
  %2137 = fsub fast float %2116, %2098
  %2138 = fsub fast float %2126, %2102
  %2139 = fsub fast float %2136, %2106
  %2140 = fmul fast float %2137, %2066
  %2141 = fmul fast float %2138, %2068
  %2142 = fmul fast float %2139, %2073
  %2143 = fadd fast float %2140, %2081
  %2144 = fadd fast float %2141, %2085
  %2145 = fadd fast float %2142, %2089
  %2146 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2147 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2148 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2149 = fmul fast float %2146, %2146
  %2150 = fmul fast float %2147, %2147
  %2151 = fmul fast float %2148, %2148
  %2152 = fsub fast float %2149, %2031
  %2153 = fsub fast float %2150, %2032
  %2154 = fsub fast float %2151, %2033
  %2155 = fmul fast float %2152, %2056
  %2156 = fmul fast float %2153, %2056
  %2157 = fmul fast float %2154, %2056
  %2158 = fadd fast float %2155, %2031
  %2159 = fadd fast float %2156, %2032
  %2160 = fadd fast float %2157, %2033
  %2161 = fadd fast float %2078, %2042
  %2162 = fsub fast float %2161, %2095
  %2163 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2164 = fsub fast float %2163, %2042
  %2165 = fmul fast float %2164, %2056
  %2166 = fadd fast float %2165, %2042
  br label %2220

; <label>:2167                                    ; preds = %2055
  %2168 = and i32 %2058, 134217728
  %2169 = icmp eq i32 %2168, 0
  br i1 %2169, label %2204, label %2170

; <label>:2170                                    ; preds = %2167
  %2171 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %2172 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %2173 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2174 = fadd fast float %2171, -5.000000e-01
  %2175 = fadd fast float %2172, -5.000000e-01
  %2176 = fadd fast float %2173, -5.000000e-01
  %2177 = fmul fast float %2174, %2056
  %2178 = fmul fast float %2175, %2056
  %2179 = fmul fast float %2176, %2056
  %2180 = fadd fast float %2177, 5.000000e-01
  %2181 = fadd fast float %2178, 5.000000e-01
  %2182 = fadd fast float %2179, 5.000000e-01
  %2183 = call float @dx.op.unary.f32(i32 24, float %2031)  ; Sqrt(value)
  %2184 = call float @dx.op.unary.f32(i32 24, float %2032)  ; Sqrt(value)
  %2185 = call float @dx.op.unary.f32(i32 24, float %2033)  ; Sqrt(value)
  %2186 = fmul fast float %2180, 2.000000e+00
  %2187 = fsub fast float 1.000000e+00, %2186
  %2188 = fmul fast float %2187, %2183
  %2189 = fadd fast float %2188, %2186
  %2190 = fmul fast float %2189, %2183
  %2191 = fmul fast float %2181, 2.000000e+00
  %2192 = fsub fast float 1.000000e+00, %2191
  %2193 = fmul fast float %2192, %2184
  %2194 = fadd fast float %2193, %2191
  %2195 = fmul fast float %2194, %2184
  %2196 = fmul fast float %2182, 2.000000e+00
  %2197 = fsub fast float 1.000000e+00, %2196
  %2198 = fmul fast float %2197, %2185
  %2199 = fadd fast float %2198, %2196
  %2200 = fmul fast float %2199, %2185
  %2201 = fmul fast float %2190, %2190
  %2202 = fmul fast float %2195, %2195
  %2203 = fmul fast float %2200, %2200
  br label %2220

; <label>:2204                                    ; preds = %2167
  %2205 = fmul fast float %318, %318
  %2206 = fmul fast float %322, %322
  %2207 = fmul fast float %326, %326
  %2208 = fadd fast float %2205, -1.000000e+00
  %2209 = fadd fast float %2206, -1.000000e+00
  %2210 = fadd fast float %2207, -1.000000e+00
  %2211 = fmul fast float %2056, %2208
  %2212 = fmul fast float %2056, %2209
  %2213 = fmul fast float %2056, %2210
  %2214 = fadd fast float %2211, 1.000000e+00
  %2215 = fadd fast float %2212, 1.000000e+00
  %2216 = fadd fast float %2213, 1.000000e+00
  %2217 = fmul fast float %2214, %2031
  %2218 = fmul fast float %2215, %2032
  %2219 = fmul fast float %2216, %2033
  br label %2220

; <label>:2220                                    ; preds = %2204, %2170, %2061, %2017
  %2221 = phi float [ %2166, %2061 ], [ %2042, %2170 ], [ %2042, %2204 ], [ 0x3FA23C0BE0000000, %2017 ]
  %2222 = phi float [ %2158, %2061 ], [ %2201, %2170 ], [ %2217, %2204 ], [ 1.000000e+00, %2017 ]
  %2223 = phi float [ %2159, %2061 ], [ %2202, %2170 ], [ %2218, %2204 ], [ 1.000000e+00, %2017 ]
  %2224 = phi float [ %2160, %2061 ], [ %2203, %2170 ], [ %2219, %2204 ], [ 1.000000e+00, %2017 ]
  %2225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.i32 %2225, 1
  %2227 = and i32 %2226, 1
  %2228 = icmp ne i32 %2227, 0
  %2229 = add i32 %34, 356
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = and i32 %2231, 32
  %2233 = icmp ne i32 %2232, 0
  %2234 = and i1 %2228, %2233
  %2235 = select i1 %2234, float 1.000000e+00, float %2222
  %2236 = select i1 %2234, float 0x3FD3333340000000, float %2223
  %2237 = select i1 %2234, float 0x3FD3333340000000, float %2224
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 32
  %2241 = icmp eq i32 %2240, 0
  br i1 %2241, label %2314, label %2242

; <label>:2242                                    ; preds = %2220
  %2243 = add i32 %34, 124
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2243, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = add i32 %34, 384
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = add i32 %2248, 0
  %2250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2249, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2250, %dx.types.Handle %79, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2252 = extractvalue %dx.types.ResRet.f32 %2251, 0
  %2253 = extractvalue %dx.types.ResRet.f32 %2251, 1
  %2254 = extractvalue %dx.types.ResRet.f32 %2251, 2
  %2255 = extractvalue %dx.types.ResRet.f32 %2251, 3
  %2256 = and i32 %2245, 255
  %2257 = uitofp i32 %2256 to float
  %2258 = lshr i32 %2245, 8
  %2259 = and i32 %2258, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = lshr i32 %2245, 16
  %2262 = and i32 %2261, 255
  %2263 = uitofp i32 %2262 to float
  %2264 = fmul fast float %2263, 0x3F70101000000000
  %2265 = fmul fast float %2252, %2257
  %2266 = fadd fast float %2265, %2260
  %2267 = fmul fast float %2266, 0x3F70101000000000
  %2268 = fadd fast float %2253, -5.000000e-01
  %2269 = fadd fast float %2255, -5.000000e-01
  %2270 = fmul fast float %2268, %2264
  %2271 = fmul fast float %2269, %2264
  %2272 = fadd fast float %2270, 5.000000e-01
  %2273 = fadd fast float %2271, 5.000000e-01
  %2274 = fmul fast float %2272, 2.000000e+00
  %2275 = fadd fast float %2274, -1.000000e+00
  %2276 = fmul fast float %2273, 2.000000e+00
  %2277 = fadd fast float %2276, -1.000000e+00
  %2278 = fadd fast float %2275, %2277
  %2279 = fmul fast float %2278, 5.000000e-01
  %2280 = fsub fast float %2275, %2277
  %2281 = fmul fast float %2280, 5.000000e-01
  %2282 = call float @dx.op.unary.f32(i32 6, float %2279)  ; FAbs(value)
  %2283 = fsub fast float 1.000000e+00, %2282
  %2284 = call float @dx.op.unary.f32(i32 6, float %2281)  ; FAbs(value)
  %2285 = fsub fast float %2283, %2284
  %2286 = call float @dx.op.dot3.f32(i32 55, float %2279, float %2281, float %2285, float %2279, float %2281, float %2285)  ; Dot3(ax,ay,az,bx,by,bz)
  %2287 = call float @dx.op.unary.f32(i32 25, float %2286)  ; Rsqrt(value)
  %2288 = fmul fast float %2279, %2287
  %2289 = fmul fast float %2281, %2287
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = and i32 %2291, 67108864
  %2293 = icmp eq i32 %2292, 0
  br i1 %2293, label %2310, label %2294

; <label>:2294                                    ; preds = %2242
  %2295 = add i32 %34, 312
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 65535
  %2299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2298)  ; LegacyF16ToF32(value)
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = and i32 %2301, 65535
  %2303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2302)  ; LegacyF16ToF32(value)
  %2304 = lshr i32 %2297, 16
  %2305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2304)  ; LegacyF16ToF32(value)
  %2306 = fsub fast float %2267, %2305
  %2307 = fmul fast float %2306, %2299
  %2308 = fadd fast float %2307, %2303
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  br label %2310

; <label>:2310                                    ; preds = %2294, %2242
  %2311 = phi float [ %2309, %2294 ], [ %2267, %2242 ]
  %2312 = call float @dx.op.dot2.f32(i32 54, float %2288, float %2289, float %1846, float %1847)  ; Dot2(ax,ay,bx,by)
  %2313 = call float @dx.op.dot2.f32(i32 54, float %2288, float %2289, float %1848, float %1849)  ; Dot2(ax,ay,bx,by)
  br label %2314

; <label>:2314                                    ; preds = %2310, %2220
  %2315 = phi float [ %2311, %2310 ], [ 0x3FD6666660000000, %2220 ]
  %2316 = phi float [ %2312, %2310 ], [ 0.000000e+00, %2220 ]
  %2317 = phi float [ %2313, %2310 ], [ 0.000000e+00, %2220 ]
  %2318 = phi float [ %2254, %2310 ], [ 1.000000e+00, %2220 ]
  %2319 = add i32 %34, 192
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = lshr i32 %2321, 22
  %2323 = shl nuw nsw i32 %2322, 5
  %2324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2323)  ; LegacyF16ToF32(value)
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = and i32 %2326, 64
  %2328 = icmp eq i32 %2327, 0
  br i1 %2328, label %2362, label %2329

; <label>:2329                                    ; preds = %2314
  %2330 = add i32 %34, 400
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = add i32 %2332, 0
  %2334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 131072
  %2338 = icmp eq i32 %2337, 0
  %2339 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2334, %dx.types.Handle %79, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2340 = extractvalue %dx.types.ResRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.ResRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.ResRet.f32 %2339, 2
  %2343 = fmul fast float %2340, %306
  %2344 = fmul fast float %2341, %309
  %2345 = fmul fast float %2342, %312
  br i1 %2338, label %2352, label %2346

; <label>:2346                                    ; preds = %2329
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2349 = fmul fast float %2348, %2343
  %2350 = fmul fast float %2348, %2344
  %2351 = fmul fast float %2348, %2345
  br label %2352

; <label>:2352                                    ; preds = %2346, %2329
  %2353 = phi float [ %2349, %2346 ], [ %2343, %2329 ]
  %2354 = phi float [ %2350, %2346 ], [ %2344, %2329 ]
  %2355 = phi float [ %2351, %2346 ], [ %2345, %2329 ]
  %2356 = fmul fast float %2353, %2324
  %2357 = select i1 %205, float %2356, float %2353
  %2358 = call float @dx.op.dot3.f32(i32 55, float %2357, float %2354, float %2355, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2359 = select i1 %205, float 0.000000e+00, float %2353
  %2360 = select i1 %205, float %2358, float %2354
  %2361 = select i1 %205, float 0.000000e+00, float %2355
  br label %2362

; <label>:2362                                    ; preds = %2352, %2314
  %2363 = phi float [ %2359, %2352 ], [ 0.000000e+00, %2314 ]
  %2364 = phi float [ %2360, %2352 ], [ 0.000000e+00, %2314 ]
  %2365 = phi float [ %2361, %2352 ], [ 0.000000e+00, %2314 ]
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 1024
  %2369 = icmp eq i32 %2368, 0
  br i1 %2369, label %2400, label %2370

; <label>:2370                                    ; preds = %2362
  %2371 = add i32 %34, 184
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = lshr i32 %2373, 8
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = lshr i32 %2373, 16
  %2382 = and i32 %2381, 255
  %2383 = uitofp i32 %2382 to float
  %2384 = fmul fast float %2383, 0x3F70101020000000
  %2385 = fmul fast float %2376, %2376
  %2386 = fmul fast float %2380, %2380
  %2387 = fmul fast float %2384, %2384
  %2388 = add i32 %34, 464
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = add i32 %2390, 0
  %2392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2392, %dx.types.Handle %80, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  %2395 = extractvalue %dx.types.ResRet.f32 %2393, 1
  %2396 = extractvalue %dx.types.ResRet.f32 %2393, 2
  %2397 = fmul fast float %2385, %2394
  %2398 = fmul fast float %2386, %2395
  %2399 = fmul fast float %2387, %2396
  br label %2400

; <label>:2400                                    ; preds = %2370, %2362
  %2401 = phi float [ %2397, %2370 ], [ 0.000000e+00, %2362 ]
  %2402 = phi float [ %2398, %2370 ], [ 0.000000e+00, %2362 ]
  %2403 = phi float [ %2399, %2370 ], [ 0.000000e+00, %2362 ]
  %2404 = fcmp fast ogt float %2401, 0.000000e+00
  %2405 = fcmp fast ogt float %2402, 0.000000e+00
  %2406 = fcmp fast ogt float %2403, 0.000000e+00
  %2407 = call float @dx.op.unary.f32(i32 23, float %2401)  ; Log(value)
  %2408 = call float @dx.op.unary.f32(i32 23, float %2402)  ; Log(value)
  %2409 = call float @dx.op.unary.f32(i32 23, float %2403)  ; Log(value)
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = lshr i32 %2411, 7
  %2413 = and i32 %2412, 32752
  %2414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2413)  ; LegacyF16ToF32(value)
  %2415 = fmul fast float %2407, 0xBFE62E4300000000
  %2416 = fmul fast float %2415, %2414
  %2417 = fmul fast float %2408, 0xBFE62E4300000000
  %2418 = fmul fast float %2417, %2414
  %2419 = fmul fast float %2409, 0xBFE62E4300000000
  %2420 = fmul fast float %2419, %2414
  %2421 = select i1 %2404, float %2416, float 1.270000e+02
  %2422 = select i1 %2405, float %2418, float 1.270000e+02
  %2423 = select i1 %2406, float %2420, float 1.270000e+02
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 26624
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2464, label %2428

; <label>:2428                                    ; preds = %2400
  %2429 = add i32 %34, 480
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %2431, 0
  %2433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2433, %dx.types.Handle %80, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, 1048576
  %2439 = icmp ne i32 %2438, 0
  %2440 = and i32 %2437, 2048
  %2441 = icmp eq i32 %2440, 0
  br i1 %2441, label %2451, label %2442

; <label>:2442                                    ; preds = %2428
  %2443 = extractvalue %dx.types.ResRet.f32 %2434, 3
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = shl i32 %2445, 4
  %2447 = and i32 %2446, 32752
  %2448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2447)  ; LegacyF16ToF32(value)
  %2449 = fmul fast float %2448, %2443
  %2450 = call float @dx.op.binary.f32(i32 35, float %2449, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2451

; <label>:2451                                    ; preds = %2442, %2428
  %2452 = phi float [ %2450, %2442 ], [ 0x3F70101020000000, %2428 ]
  %2453 = and i32 %2437, 16384
  %2454 = icmp eq i32 %2453, 0
  br i1 %2454, label %2464, label %2455

; <label>:2455                                    ; preds = %2451
  %2456 = add i32 %34, 128
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = lshr i32 %2458, 24
  %2460 = uitofp i32 %2459 to float
  %2461 = fmul fast float %2435, 0x3F70101020000000
  %2462 = select i1 %2439, float 0x3F70101020000000, float %2461
  %2463 = fmul fast float %2462, %2460
  br label %2464

; <label>:2464                                    ; preds = %2455, %2451, %2400
  %2465 = phi float [ %2452, %2455 ], [ %2452, %2451 ], [ 0x3F70101020000000, %2400 ]
  %2466 = phi float [ %2463, %2455 ], [ 0.000000e+00, %2451 ], [ 0.000000e+00, %2400 ]
  %2467 = add i32 %34, 128
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 255
  %2471 = uitofp i32 %2470 to float
  %2472 = lshr i32 %2469, 8
  %2473 = and i32 %2472, 255
  %2474 = uitofp i32 %2473 to float
  %2475 = call float @dx.op.dot3.f32(i32 55, float %2235, float %2236, float %2237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2476 = fmul fast float %2474, %2475
  %2477 = fadd fast float %2476, %2471
  %2478 = fmul fast float %2477, 0x3F70101020000000
  %2479 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  br i1 %1834, label %2480, label %2515

; <label>:2480                                    ; preds = %2464
  %2481 = fmul fast float %2465, 2.000000e+00
  %2482 = fcmp fast olt float %2421, 1.270000e+02
  %2483 = fcmp fast olt float %2422, 1.270000e+02
  %2484 = fcmp fast olt float %2423, 1.270000e+02
  %2485 = fmul fast float %2421, 0xBFF7154760000000
  %2486 = fmul fast float %2485, %2481
  %2487 = fmul fast float %2422, 0xBFF7154760000000
  %2488 = fmul fast float %2487, %2481
  %2489 = fmul fast float %2423, 0xBFF7154760000000
  %2490 = fmul fast float %2489, %2481
  %2491 = call float @dx.op.unary.f32(i32 21, float %2486)  ; Exp(value)
  %2492 = call float @dx.op.unary.f32(i32 21, float %2488)  ; Exp(value)
  %2493 = call float @dx.op.unary.f32(i32 21, float %2490)  ; Exp(value)
  %2494 = call float @dx.op.unary.f32(i32 7, float %2491)  ; Saturate(value)
  %2495 = call float @dx.op.unary.f32(i32 7, float %2492)  ; Saturate(value)
  %2496 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2497 = fadd fast float %2494, -1.000000e+00
  %2498 = select i1 %2482, float %2497, float -1.000000e+00
  %2499 = fadd fast float %2495, -1.000000e+00
  %2500 = select i1 %2483, float %2499, float -1.000000e+00
  %2501 = fadd fast float %2496, -1.000000e+00
  %2502 = select i1 %2484, float %2501, float -1.000000e+00
  %2503 = fmul fast float %2498, %2015
  %2504 = fmul fast float %2500, %2015
  %2505 = fmul fast float %2502, %2015
  %2506 = fadd fast float %2503, 1.000000e+00
  %2507 = fadd fast float %2504, 1.000000e+00
  %2508 = fadd fast float %2505, 1.000000e+00
  %2509 = fmul fast float %2506, %1822
  %2510 = fmul fast float %2507, %1823
  %2511 = fmul fast float %2508, %1824
  %2512 = fmul fast float %2506, %1825
  %2513 = fmul fast float %2507, %1826
  %2514 = fmul fast float %2508, %1827
  br label %2515

; <label>:2515                                    ; preds = %2480, %2464
  %2516 = phi float [ %2509, %2480 ], [ %1822, %2464 ]
  %2517 = phi float [ %2510, %2480 ], [ %1823, %2464 ]
  %2518 = phi float [ %2511, %2480 ], [ %1824, %2464 ]
  %2519 = phi float [ %2512, %2480 ], [ %1825, %2464 ]
  %2520 = phi float [ %2513, %2480 ], [ %1826, %2464 ]
  %2521 = phi float [ %2514, %2480 ], [ %1827, %2464 ]
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = and i32 %2523, 3
  %2525 = icmp eq i32 %2524, 3
  br i1 %2525, label %2604, label %2526

; <label>:2526                                    ; preds = %2515
  %2527 = and i32 %2523, 16
  %2528 = icmp ne i32 %2527, 0
  %2529 = select i1 %2528, float %2015, float 0.000000e+00
  %2530 = icmp eq i32 %2524, 0
  br i1 %2530, label %2531, label %2559

; <label>:2531                                    ; preds = %2526
  %2532 = and i32 %2523, 64
  %2533 = icmp ne i32 %2532, 0
  %2534 = select i1 %2533, float %2015, float 0.000000e+00
  %2535 = fsub fast float %2235, %2516
  %2536 = fsub fast float %2236, %2517
  %2537 = fsub fast float %2237, %2518
  %2538 = fmul fast float %2529, %2535
  %2539 = fmul fast float %2529, %2536
  %2540 = fmul fast float %2529, %2537
  %2541 = fadd fast float %2538, %2516
  %2542 = fadd fast float %2539, %2517
  %2543 = fadd fast float %2540, %2518
  %2544 = fsub fast float %2221, %1828
  %2545 = fmul fast float %2529, %2544
  %2546 = fadd fast float %2545, %1828
  %2547 = fsub fast float %2363, %2519
  %2548 = fsub fast float %2364, %2520
  %2549 = fsub fast float %2365, %2521
  %2550 = fmul fast float %2534, %2547
  %2551 = fmul fast float %2534, %2548
  %2552 = fmul fast float %2534, %2549
  %2553 = fadd fast float %2550, %2519
  %2554 = fadd fast float %2551, %2520
  %2555 = fadd fast float %2552, %2521
  %2556 = fsub fast float %2479, %1832
  %2557 = fmul fast float %2529, %2556
  %2558 = fadd fast float %2557, %1832
  br label %2604

; <label>:2559                                    ; preds = %2526
  %2560 = icmp eq i32 %2524, 1
  br i1 %2560, label %2561, label %2574

; <label>:2561                                    ; preds = %2559
  %2562 = fadd fast float %2235, -1.000000e+00
  %2563 = fadd fast float %2236, -1.000000e+00
  %2564 = fadd fast float %2237, -1.000000e+00
  %2565 = fmul fast float %2529, %2562
  %2566 = fmul fast float %2529, %2563
  %2567 = fmul fast float %2529, %2564
  %2568 = fadd fast float %2565, 1.000000e+00
  %2569 = fadd fast float %2566, 1.000000e+00
  %2570 = fadd fast float %2567, 1.000000e+00
  %2571 = fmul fast float %2568, %2516
  %2572 = fmul fast float %2569, %2517
  %2573 = fmul fast float %2570, %2518
  br label %2604

; <label>:2574                                    ; preds = %2559
  %2575 = icmp eq i32 %2524, 2
  br i1 %2575, label %2576, label %2604

; <label>:2576                                    ; preds = %2574
  %2577 = call float @dx.op.unary.f32(i32 24, float %2235)  ; Sqrt(value)
  %2578 = call float @dx.op.unary.f32(i32 24, float %2236)  ; Sqrt(value)
  %2579 = call float @dx.op.unary.f32(i32 24, float %2237)  ; Sqrt(value)
  %2580 = fadd fast float %2577, -5.000000e-01
  %2581 = fadd fast float %2578, -5.000000e-01
  %2582 = fadd fast float %2579, -5.000000e-01
  %2583 = fmul fast float %2580, %2529
  %2584 = fmul fast float %2581, %2529
  %2585 = fmul fast float %2582, %2529
  %2586 = fadd fast float %2583, 5.000000e-01
  %2587 = fadd fast float %2584, 5.000000e-01
  %2588 = fadd fast float %2585, 5.000000e-01
  %2589 = fmul fast float %2586, 2.000000e+00
  %2590 = fsub fast float 1.000000e+00, %2589
  %2591 = fmul fast float %2590, %2516
  %2592 = fadd fast float %2591, %2589
  %2593 = fmul fast float %2592, %2516
  %2594 = fmul fast float %2587, 2.000000e+00
  %2595 = fsub fast float 1.000000e+00, %2594
  %2596 = fmul fast float %2595, %2517
  %2597 = fadd fast float %2596, %2594
  %2598 = fmul fast float %2597, %2517
  %2599 = fmul fast float %2588, 2.000000e+00
  %2600 = fsub fast float 1.000000e+00, %2599
  %2601 = fmul fast float %2600, %2518
  %2602 = fadd fast float %2601, %2599
  %2603 = fmul fast float %2602, %2518
  br label %2604

; <label>:2604                                    ; preds = %2576, %2574, %2561, %2531, %2515
  %2605 = phi float [ %2516, %2515 ], [ %2593, %2576 ], [ %2516, %2574 ], [ %2571, %2561 ], [ %2541, %2531 ]
  %2606 = phi float [ %2517, %2515 ], [ %2598, %2576 ], [ %2517, %2574 ], [ %2572, %2561 ], [ %2542, %2531 ]
  %2607 = phi float [ %2518, %2515 ], [ %2603, %2576 ], [ %2518, %2574 ], [ %2573, %2561 ], [ %2543, %2531 ]
  %2608 = phi float [ %2519, %2515 ], [ %2519, %2576 ], [ %2519, %2574 ], [ %2519, %2561 ], [ %2553, %2531 ]
  %2609 = phi float [ %2520, %2515 ], [ %2520, %2576 ], [ %2520, %2574 ], [ %2520, %2561 ], [ %2554, %2531 ]
  %2610 = phi float [ %2521, %2515 ], [ %2521, %2576 ], [ %2521, %2574 ], [ %2521, %2561 ], [ %2555, %2531 ]
  %2611 = phi float [ %1828, %2515 ], [ %1828, %2576 ], [ %1828, %2574 ], [ %1828, %2561 ], [ %2546, %2531 ]
  %2612 = phi float [ %1832, %2515 ], [ %1832, %2576 ], [ %1832, %2574 ], [ %1832, %2561 ], [ %2558, %2531 ]
  %2613 = and i32 %2523, 12
  %2614 = icmp eq i32 %2613, 12
  br i1 %2614, label %2697, label %2615

; <label>:2615                                    ; preds = %2604
  %2616 = and i32 %2523, 2097184
  %2617 = icmp eq i32 %2616, 2097184
  %2618 = select i1 %2617, float %2015, float 0.000000e+00
  %2619 = and i32 %2523, 4194336
  %2620 = icmp eq i32 %2619, 4194336
  %2621 = select i1 %2620, float %2015, float 0.000000e+00
  %2622 = and i32 %2523, 8388640
  %2623 = icmp eq i32 %2622, 8388640
  %2624 = select i1 %2623, float %2015, float 0.000000e+00
  %2625 = and i32 %2523, 16384
  %2626 = icmp ne i32 %2625, 0
  %2627 = select i1 %2626, float %2015, float 0.000000e+00
  %2628 = icmp eq i32 %2613, 0
  br i1 %2628, label %2629, label %2645

; <label>:2629                                    ; preds = %2615
  %2630 = fsub fast float %2316, %1820
  %2631 = fsub fast float %2317, %1821
  %2632 = fmul fast float %2618, %2630
  %2633 = fmul fast float %2618, %2631
  %2634 = fadd fast float %2632, %1820
  %2635 = fadd fast float %2633, %1821
  %2636 = fsub fast float %2318, %1830
  %2637 = fmul fast float %2621, %2636
  %2638 = fadd fast float %2637, %1830
  %2639 = fsub fast float %2315, %1829
  %2640 = fmul fast float %2624, %2639
  %2641 = fadd fast float %2640, %1829
  %2642 = fsub fast float %2466, %1831
  %2643 = fmul fast float %2627, %2642
  %2644 = fadd fast float %2643, %1831
  br label %2697

; <label>:2645                                    ; preds = %2615
  %2646 = icmp eq i32 %2613, 4
  br i1 %2646, label %2647, label %2681

; <label>:2647                                    ; preds = %2645
  %2648 = fmul fast float %2618, %2316
  %2649 = fmul fast float %2618, %2317
  %2650 = fadd fast float %2648, %1820
  %2651 = fadd fast float %2649, %1821
  %2652 = call float @dx.op.binary.f32(i32 36, float %1830, float %2318)  ; FMin(a,b)
  %2653 = fsub fast float %2652, %1830
  %2654 = fmul fast float %2653, %2621
  %2655 = fadd fast float %2654, %1830
  %2656 = fadd fast float %2315, %1829
  %2657 = fmul fast float %2656, 0x3FF337FAE0000000
  %2658 = fmul fast float %1829, %1829
  %2659 = fmul fast float %2315, %2315
  %2660 = fadd fast float %2659, %2658
  %2661 = fmul fast float %2660, 0x3FE5152B00000000
  %2662 = fmul fast float %1829, 0xBFCC1F85E0000000
  %2663 = fmul fast float %2662, %2315
  %2664 = fadd fast float %2663, 0xBFE1363700000000
  %2665 = fadd fast float %2664, %2657
  %2666 = fsub fast float %2665, %2661
  %2667 = fmul fast float %2656, 0x3FBA6F0D00000000
  %2668 = fmul fast float %2660, 0x3FD0432880000000
  %2669 = fmul fast float %1829, 0xBFEF110800000000
  %2670 = fmul fast float %2669, %2315
  %2671 = fadd fast float %2670, 1.000000e+00
  %2672 = fsub fast float %2671, %2667
  %2673 = fadd fast float %2672, %2668
  %2674 = fdiv fast float %2666, %2673
  %2675 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  %2676 = fsub fast float %2675, %1829
  %2677 = fmul fast float %2676, %2624
  %2678 = fadd fast float %2677, %1829
  %2679 = fmul fast float %2627, %2466
  %2680 = fadd fast float %2679, %1831
  br label %2697

; <label>:2681                                    ; preds = %2645
  %2682 = icmp eq i32 %2613, 8
  br i1 %2682, label %2683, label %2697

; <label>:2683                                    ; preds = %2681
  %2684 = fmul fast float %2618, %2316
  %2685 = fmul fast float %2618, %2317
  %2686 = fadd fast float %2684, %1820
  %2687 = fadd fast float %2685, %1821
  %2688 = call float @dx.op.binary.f32(i32 36, float %1830, float %2318)  ; FMin(a,b)
  %2689 = fsub fast float %2688, %1830
  %2690 = fmul fast float %2689, %2621
  %2691 = fadd fast float %2690, %1830
  %2692 = fsub fast float %2315, %1829
  %2693 = fmul fast float %2624, %2692
  %2694 = fadd fast float %2693, %1829
  %2695 = fmul fast float %2627, %2466
  %2696 = fadd fast float %2695, %1831
  br label %2697

; <label>:2697                                    ; preds = %2683, %2681, %2647, %2629, %2604, %2014, %1833, %1819
  %2698 = phi float [ %1820, %2604 ], [ %1820, %2014 ], [ %1820, %1819 ], [ %2686, %2683 ], [ %1820, %2681 ], [ %2650, %2647 ], [ %2634, %2629 ], [ %1820, %1833 ]
  %2699 = phi float [ %1821, %2604 ], [ %1821, %2014 ], [ %1821, %1819 ], [ %2687, %2683 ], [ %1821, %2681 ], [ %2651, %2647 ], [ %2635, %2629 ], [ %1821, %1833 ]
  %2700 = phi float [ %2605, %2604 ], [ %1822, %2014 ], [ %1822, %1819 ], [ %2605, %2683 ], [ %2605, %2681 ], [ %2605, %2647 ], [ %2605, %2629 ], [ %1822, %1833 ]
  %2701 = phi float [ %2606, %2604 ], [ %1823, %2014 ], [ %1823, %1819 ], [ %2606, %2683 ], [ %2606, %2681 ], [ %2606, %2647 ], [ %2606, %2629 ], [ %1823, %1833 ]
  %2702 = phi float [ %2607, %2604 ], [ %1824, %2014 ], [ %1824, %1819 ], [ %2607, %2683 ], [ %2607, %2681 ], [ %2607, %2647 ], [ %2607, %2629 ], [ %1824, %1833 ]
  %2703 = phi float [ %2608, %2604 ], [ %1825, %2014 ], [ %1825, %1819 ], [ %2608, %2683 ], [ %2608, %2681 ], [ %2608, %2647 ], [ %2608, %2629 ], [ %1825, %1833 ]
  %2704 = phi float [ %2609, %2604 ], [ %1826, %2014 ], [ %1826, %1819 ], [ %2609, %2683 ], [ %2609, %2681 ], [ %2609, %2647 ], [ %2609, %2629 ], [ %1826, %1833 ]
  %2705 = phi float [ %2610, %2604 ], [ %1827, %2014 ], [ %1827, %1819 ], [ %2610, %2683 ], [ %2610, %2681 ], [ %2610, %2647 ], [ %2610, %2629 ], [ %1827, %1833 ]
  %2706 = phi float [ %2611, %2604 ], [ %1828, %2014 ], [ %1828, %1819 ], [ %2611, %2683 ], [ %2611, %2681 ], [ %2611, %2647 ], [ %2611, %2629 ], [ %1828, %1833 ]
  %2707 = phi float [ %1829, %2604 ], [ %1829, %2014 ], [ %1829, %1819 ], [ %2694, %2683 ], [ %1829, %2681 ], [ %2678, %2647 ], [ %2641, %2629 ], [ %1829, %1833 ]
  %2708 = phi float [ %1830, %2604 ], [ %1830, %2014 ], [ %1830, %1819 ], [ %2691, %2683 ], [ %1830, %2681 ], [ %2655, %2647 ], [ %2638, %2629 ], [ %1830, %1833 ]
  %2709 = phi float [ %1831, %2604 ], [ %1831, %2014 ], [ %1831, %1819 ], [ %2696, %2683 ], [ %1831, %2681 ], [ %2680, %2647 ], [ %2644, %2629 ], [ %1831, %1833 ]
  %2710 = phi float [ %2612, %2604 ], [ %1832, %2014 ], [ %1832, %1819 ], [ %2612, %2683 ], [ %2612, %2681 ], [ %2612, %2647 ], [ %2612, %2629 ], [ %1832, %1833 ]
  br i1 %393, label %3575, label %2711

; <label>:2711                                    ; preds = %2697
  %2712 = icmp ult i32 %444, 4
  %2713 = add i32 %34, 72
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = add i32 %34, 76
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2716, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = or i32 %2718, %2715
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %3575, label %2721

; <label>:2721                                    ; preds = %2711
  %2722 = and i32 %2715, 262144
  %2723 = icmp ne i32 %2722, 0
  %2724 = select i1 %2723, float %39, float 1.000000e+00
  %2725 = select i1 %2723, float %40, float 0.000000e+00
  %2726 = select i1 %2723, float %41, float 0.000000e+00
  %2727 = select i1 %2723, float %42, float 1.000000e+00
  %2728 = select i1 %2723, float %43, float %71
  %2729 = select i1 %2723, float %44, float %72
  %2730 = add i32 %34, 332
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = lshr i32 %2732, 16
  %2734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2733)  ; LegacyF16ToF32(value)
  %2735 = fmul fast float %2734, 0x3F50624DE0000000
  %2736 = add i32 %34, 136
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = lshr i32 %2738, 16
  %2740 = and i32 %2739, 255
  %2741 = lshr i32 %2738, 24
  %2742 = add i32 %34, 340
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = and i32 %2744, 65535
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = lshr i32 %2744, 16
  %2748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2747)  ; LegacyF16ToF32(value)
  %2749 = add i32 %34, 80
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = lshr i32 %2751, 22
  %2753 = shl nuw nsw i32 %2752, 5
  %2754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2753)  ; LegacyF16ToF32(value)
  %2755 = shl i32 %2751, 4
  %2756 = and i32 %2755, 32752
  %2757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2756)  ; LegacyF16ToF32(value)
  %2758 = lshr i32 %2751, 7
  %2759 = and i32 %2758, 32752
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 3
  %2763 = fmul fast float %2762, 1.000000e+03
  %2764 = fmul fast float %383, %2763
  %2765 = call float @dx.op.unary.f32(i32 22, float %2764)  ; Frc(value)
  %2766 = fadd fast float %2765, %373
  %2767 = fmul fast float %384, %2763
  %2768 = call float @dx.op.unary.f32(i32 22, float %2767)  ; Frc(value)
  %2769 = fadd fast float %2768, %375
  %2770 = fmul fast float %2735, %2763
  %2771 = call float @dx.op.unary.f32(i32 22, float %2770)  ; Frc(value)
  %2772 = fmul fast float %2771, 0x401921FB60000000
  %2773 = fadd fast float %2772, %2754
  %2774 = call float @dx.op.unary.f32(i32 13, float %2773)  ; Sin(value)
  %2775 = call float @dx.op.unary.f32(i32 12, float %2773)  ; Cos(value)
  %2776 = fsub fast float -0.000000e+00, %2774
  %2777 = fadd fast float %2728, -5.000000e-01
  %2778 = fadd fast float %2729, -5.000000e-01
  %2779 = fmul fast float %2746, %2777
  %2780 = fmul fast float %2748, %2778
  %2781 = fadd fast float %2779, 5.000000e-01
  %2782 = fadd fast float %2780, 5.000000e-01
  %2783 = fmul fast float %2757, %2781
  %2784 = fmul fast float %2760, %2782
  %2785 = fmul fast float %2775, %2783
  %2786 = call float @dx.op.tertiary.f32(i32 46, float %2776, float %2784, float %2785)  ; FMad(a,b,c)
  %2787 = fmul fast float %2774, %2783
  %2788 = call float @dx.op.tertiary.f32(i32 46, float %2775, float %2784, float %2787)  ; FMad(a,b,c)
  %2789 = fadd fast float %2766, %2786
  %2790 = fadd fast float %2769, %2788
  %2791 = icmp ugt i32 %2740, 1
  %2792 = icmp ugt i32 %2738, 33554431
  %2793 = or i1 %2792, %2791
  br i1 %2793, label %2794, label %2819

; <label>:2794                                    ; preds = %2721
  %2795 = add i32 %34, 276
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = lshr i32 %2797, 16
  %2799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2798)  ; LegacyF16ToF32(value)
  %2800 = fmul fast float %2762, %2799
  %2801 = call float @dx.op.unary.f32(i32 22, float %2800)  ; Frc(value)
  %2802 = mul nuw nsw i32 %2740, %2741
  %2803 = uitofp i32 %2802 to float
  %2804 = fmul fast float %2801, %2803
  %2805 = call float @dx.op.unary.f32(i32 27, float %2804)  ; Round_ni(value)
  %2806 = fptoui float %2805 to i32
  %2807 = urem i32 %2806, %2740
  %2808 = udiv i32 %2806, %2741
  %2809 = call float @dx.op.unary.f32(i32 22, float %2789)  ; Frc(value)
  %2810 = call float @dx.op.unary.f32(i32 22, float %2790)  ; Frc(value)
  %2811 = uitofp i32 %2807 to float
  %2812 = uitofp i32 %2808 to float
  %2813 = fadd fast float %2809, %2811
  %2814 = fadd fast float %2810, %2812
  %2815 = uitofp i32 %2740 to float
  %2816 = uitofp i32 %2741 to float
  %2817 = fdiv fast float %2813, %2815
  %2818 = fdiv fast float %2814, %2816
  br label %2819

; <label>:2819                                    ; preds = %2794, %2721
  %2820 = phi float [ %2817, %2794 ], [ %2789, %2721 ]
  %2821 = phi float [ %2818, %2794 ], [ %2790, %2721 ]
  %2822 = and i32 %2715, 256
  %2823 = icmp eq i32 %2822, 0
  br i1 %2823, label %2870, label %2824

; <label>:2824                                    ; preds = %2819
  %2825 = add i32 %34, 436
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %2827, 0
  %2829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2829, %dx.types.Handle %80, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = add i32 %34, 148
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = shl i32 %2834, 4
  %2836 = and i32 %2835, 32752
  %2837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2836)  ; LegacyF16ToF32(value)
  %2838 = lshr i32 %2834, 7
  %2839 = and i32 %2838, 32752
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = fsub fast float 1.000000e+00, %439
  %2842 = call float @dx.op.binary.f32(i32 35, float %2841, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2843 = bitcast float %439 to i32
  %2844 = sitofp i32 %2843 to float
  %2845 = fadd fast float %2844, 0xC1CFBF8940000000
  %2846 = fmul fast float %2840, %2845
  %2847 = fadd fast float %2846, 0x41CFBF8940000000
  %2848 = fptosi float %2847 to i32
  %2849 = bitcast i32 %2848 to float
  %2850 = bitcast float %2842 to i32
  %2851 = sitofp i32 %2850 to float
  %2852 = fadd fast float %2851, 0xC1CFBF8940000000
  %2853 = fmul fast float %2852, %2840
  %2854 = fadd fast float %2853, 0x41CFBF8940000000
  %2855 = fptosi float %2854 to i32
  %2856 = bitcast i32 %2855 to float
  %2857 = fmul fast float %2849, %2837
  %2858 = fmul fast float %2856, %2837
  %2859 = fsub fast float %2842, %2857
  %2860 = fadd fast float %2858, %2842
  %2861 = call float @dx.op.unary.f32(i32 7, float %2859)  ; Saturate(value)
  %2862 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2863 = fsub fast float %2831, %2861
  %2864 = fsub fast float %2862, %2861
  %2865 = bitcast float %2864 to i32
  %2866 = sub nsw i32 2129859010, %2865
  %2867 = bitcast i32 %2866 to float
  %2868 = fmul fast float %2867, %2863
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  br label %2870

; <label>:2870                                    ; preds = %2824, %2819
  %2871 = phi float [ %2869, %2824 ], [ %439, %2819 ]
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 128
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2892, label %2876

; <label>:2876                                    ; preds = %2870
  %2877 = add i32 %34, 420
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = add i32 %2879, 0
  %2881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2882 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2881, %dx.types.Handle %80, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 524288
  %2887 = icmp ne i32 %2886, 0
  %2888 = fcmp fast ogt float %2883, 0x3FE0101020000000
  %2889 = select i1 %2888, float 1.000000e+00, float 0.000000e+00
  %2890 = select i1 %2887, float %2889, float %2883
  %2891 = fmul fast float %2890, %2871
  br label %2892

; <label>:2892                                    ; preds = %2876, %2870
  %2893 = phi float [ %2891, %2876 ], [ %2871, %2870 ]
  %2894 = fcmp fast ult float %2893, 0x3F70101020000000
  br i1 %2894, label %3575, label %2895

; <label>:2895                                    ; preds = %2892
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 16
  %2899 = icmp eq i32 %2898, 0
  br i1 %2899, label %3098, label %2900

; <label>:2900                                    ; preds = %2895
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = add i32 %34, 372
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = add i32 %2905, 0
  %2907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2907, %dx.types.Handle %79, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2909 = extractvalue %dx.types.ResRet.f32 %2908, 0
  %2910 = extractvalue %dx.types.ResRet.f32 %2908, 1
  %2911 = extractvalue %dx.types.ResRet.f32 %2908, 2
  %2912 = extractvalue %dx.types.ResRet.f32 %2908, 3
  %2913 = and i32 %2902, 255
  %2914 = uitofp i32 %2913 to float
  %2915 = lshr i32 %2902, 8
  %2916 = and i32 %2915, 255
  %2917 = uitofp i32 %2916 to float
  %2918 = fmul fast float %2912, %2914
  %2919 = fadd fast float %2918, %2917
  %2920 = fmul fast float %2919, 0x3F70101000000000
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 512
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %2933, label %2925

; <label>:2925                                    ; preds = %2900
  %2926 = add i32 %34, 452
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %2928, 0
  %2930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2931 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2930, %dx.types.Handle %80, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  br label %2933

; <label>:2933                                    ; preds = %2925, %2900
  %2934 = phi float [ %2932, %2925 ], [ 1.000000e+00, %2900 ]
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 33554432
  %2938 = icmp eq i32 %2937, 0
  br i1 %2938, label %3045, label %2939

; <label>:2939                                    ; preds = %2933
  %2940 = add i32 %34, 272
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 65535
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = lshr i32 %2942, 16
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = add i32 %34, 276
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = and i32 %2949, 65535
  %2951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2950)  ; LegacyF16ToF32(value)
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = lshr i32 %2953, 24
  %2955 = uitofp i32 %2954 to float
  %2956 = fmul fast float %2955, 0x3F70101020000000
  %2957 = and i32 %2953, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = lshr i32 %2953, 8
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101020000000
  %2964 = lshr i32 %2953, 16
  %2965 = and i32 %2964, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101020000000
  %2968 = add i32 %34, 268
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = lshr i32 %2970, 24
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = and i32 %2970, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = lshr i32 %2970, 8
  %2978 = and i32 %2977, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = lshr i32 %2970, 16
  %2982 = and i32 %2981, 255
  %2983 = uitofp i32 %2982 to float
  %2984 = fmul fast float %2983, 0x3F70101020000000
  %2985 = bitcast float %2909 to i32
  %2986 = ashr i32 %2985, 1
  %2987 = sub nsw i32 1597463174, %2986
  %2988 = bitcast i32 %2987 to float
  %2989 = fmul fast float %2909, 5.000000e-01
  %2990 = fmul fast float %2988, %2988
  %2991 = fmul fast float %2990, %2989
  %2992 = fsub fast float 1.500000e+00, %2991
  %2993 = fmul fast float %2988, %2909
  %2994 = fmul fast float %2993, %2992
  %2995 = bitcast float %2910 to i32
  %2996 = ashr i32 %2995, 1
  %2997 = sub nsw i32 1597463174, %2996
  %2998 = bitcast i32 %2997 to float
  %2999 = fmul fast float %2910, 5.000000e-01
  %3000 = fmul fast float %2998, %2998
  %3001 = fmul fast float %3000, %2999
  %3002 = fsub fast float 1.500000e+00, %3001
  %3003 = fmul fast float %2998, %2910
  %3004 = fmul fast float %3003, %3002
  %3005 = bitcast float %2911 to i32
  %3006 = ashr i32 %3005, 1
  %3007 = sub nsw i32 1597463174, %3006
  %3008 = bitcast i32 %3007 to float
  %3009 = fmul fast float %2911, 5.000000e-01
  %3010 = fmul fast float %3008, %3008
  %3011 = fmul fast float %3010, %3009
  %3012 = fsub fast float 1.500000e+00, %3011
  %3013 = fmul fast float %3008, %2911
  %3014 = fmul fast float %3013, %3012
  %3015 = fsub fast float %2994, %2976
  %3016 = fsub fast float %3004, %2980
  %3017 = fsub fast float %3014, %2984
  %3018 = fmul fast float %3015, %2944
  %3019 = fmul fast float %3016, %2946
  %3020 = fmul fast float %3017, %2951
  %3021 = fadd fast float %3018, %2959
  %3022 = fadd fast float %3019, %2963
  %3023 = fadd fast float %3020, %2967
  %3024 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3025 = call float @dx.op.unary.f32(i32 7, float %3022)  ; Saturate(value)
  %3026 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3027 = fmul fast float %3024, %3024
  %3028 = fmul fast float %3025, %3025
  %3029 = fmul fast float %3026, %3026
  %3030 = fsub fast float %3027, %2909
  %3031 = fsub fast float %3028, %2910
  %3032 = fsub fast float %3029, %2911
  %3033 = fmul fast float %3030, %2934
  %3034 = fmul fast float %3031, %2934
  %3035 = fmul fast float %3032, %2934
  %3036 = fadd fast float %3033, %2909
  %3037 = fadd fast float %3034, %2910
  %3038 = fadd fast float %3035, %2911
  %3039 = fadd fast float %2956, %2920
  %3040 = fsub fast float %3039, %2973
  %3041 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3042 = fsub fast float %3041, %2920
  %3043 = fmul fast float %3042, %2934
  %3044 = fadd fast float %3043, %2920
  br label %3098

; <label>:3045                                    ; preds = %2933
  %3046 = and i32 %2936, 134217728
  %3047 = icmp eq i32 %3046, 0
  br i1 %3047, label %3082, label %3048

; <label>:3048                                    ; preds = %3045
  %3049 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %3050 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %3051 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %3052 = fadd fast float %3049, -5.000000e-01
  %3053 = fadd fast float %3050, -5.000000e-01
  %3054 = fadd fast float %3051, -5.000000e-01
  %3055 = fmul fast float %3052, %2934
  %3056 = fmul fast float %3053, %2934
  %3057 = fmul fast float %3054, %2934
  %3058 = fadd fast float %3055, 5.000000e-01
  %3059 = fadd fast float %3056, 5.000000e-01
  %3060 = fadd fast float %3057, 5.000000e-01
  %3061 = call float @dx.op.unary.f32(i32 24, float %2909)  ; Sqrt(value)
  %3062 = call float @dx.op.unary.f32(i32 24, float %2910)  ; Sqrt(value)
  %3063 = call float @dx.op.unary.f32(i32 24, float %2911)  ; Sqrt(value)
  %3064 = fmul fast float %3058, 2.000000e+00
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = fmul fast float %3065, %3061
  %3067 = fadd fast float %3066, %3064
  %3068 = fmul fast float %3067, %3061
  %3069 = fmul fast float %3059, 2.000000e+00
  %3070 = fsub fast float 1.000000e+00, %3069
  %3071 = fmul fast float %3070, %3062
  %3072 = fadd fast float %3071, %3069
  %3073 = fmul fast float %3072, %3062
  %3074 = fmul fast float %3060, 2.000000e+00
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = fmul fast float %3075, %3063
  %3077 = fadd fast float %3076, %3074
  %3078 = fmul fast float %3077, %3063
  %3079 = fmul fast float %3068, %3068
  %3080 = fmul fast float %3073, %3073
  %3081 = fmul fast float %3078, %3078
  br label %3098

; <label>:3082                                    ; preds = %3045
  %3083 = fmul fast float %360, %360
  %3084 = fmul fast float %364, %364
  %3085 = fmul fast float %368, %368
  %3086 = fadd fast float %3083, -1.000000e+00
  %3087 = fadd fast float %3084, -1.000000e+00
  %3088 = fadd fast float %3085, -1.000000e+00
  %3089 = fmul fast float %2934, %3086
  %3090 = fmul fast float %2934, %3087
  %3091 = fmul fast float %2934, %3088
  %3092 = fadd fast float %3089, 1.000000e+00
  %3093 = fadd fast float %3090, 1.000000e+00
  %3094 = fadd fast float %3091, 1.000000e+00
  %3095 = fmul fast float %3092, %2909
  %3096 = fmul fast float %3093, %2910
  %3097 = fmul fast float %3094, %2911
  br label %3098

; <label>:3098                                    ; preds = %3082, %3048, %2939, %2895
  %3099 = phi float [ %3044, %2939 ], [ %2920, %3048 ], [ %2920, %3082 ], [ 0x3FA23C0BE0000000, %2895 ]
  %3100 = phi float [ %3036, %2939 ], [ %3079, %3048 ], [ %3095, %3082 ], [ 1.000000e+00, %2895 ]
  %3101 = phi float [ %3037, %2939 ], [ %3080, %3048 ], [ %3096, %3082 ], [ 1.000000e+00, %2895 ]
  %3102 = phi float [ %3038, %2939 ], [ %3081, %3048 ], [ %3097, %3082 ], [ 1.000000e+00, %2895 ]
  %3103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3104 = extractvalue %dx.types.CBufRet.i32 %3103, 1
  %3105 = and i32 %3104, 1
  %3106 = icmp ne i32 %3105, 0
  %3107 = add i32 %34, 356
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 32
  %3111 = icmp ne i32 %3110, 0
  %3112 = and i1 %3106, %3111
  %3113 = select i1 %3112, float 1.000000e+00, float %3100
  %3114 = select i1 %3112, float 0x3FD3333340000000, float %3101
  %3115 = select i1 %3112, float 0x3FD3333340000000, float %3102
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = and i32 %3117, 32
  %3119 = icmp eq i32 %3118, 0
  br i1 %3119, label %3192, label %3120

; <label>:3120                                    ; preds = %3098
  %3121 = add i32 %34, 140
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = add i32 %34, 388
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = add i32 %3126, 0
  %3128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3128, %dx.types.Handle %79, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3130 = extractvalue %dx.types.ResRet.f32 %3129, 0
  %3131 = extractvalue %dx.types.ResRet.f32 %3129, 1
  %3132 = extractvalue %dx.types.ResRet.f32 %3129, 2
  %3133 = extractvalue %dx.types.ResRet.f32 %3129, 3
  %3134 = and i32 %3123, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = lshr i32 %3123, 8
  %3137 = and i32 %3136, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = lshr i32 %3123, 16
  %3140 = and i32 %3139, 255
  %3141 = uitofp i32 %3140 to float
  %3142 = fmul fast float %3141, 0x3F70101000000000
  %3143 = fmul fast float %3130, %3135
  %3144 = fadd fast float %3143, %3138
  %3145 = fmul fast float %3144, 0x3F70101000000000
  %3146 = fadd fast float %3131, -5.000000e-01
  %3147 = fadd fast float %3133, -5.000000e-01
  %3148 = fmul fast float %3146, %3142
  %3149 = fmul fast float %3147, %3142
  %3150 = fadd fast float %3148, 5.000000e-01
  %3151 = fadd fast float %3149, 5.000000e-01
  %3152 = fmul fast float %3150, 2.000000e+00
  %3153 = fadd fast float %3152, -1.000000e+00
  %3154 = fmul fast float %3151, 2.000000e+00
  %3155 = fadd fast float %3154, -1.000000e+00
  %3156 = fadd fast float %3153, %3155
  %3157 = fmul fast float %3156, 5.000000e-01
  %3158 = fsub fast float %3153, %3155
  %3159 = fmul fast float %3158, 5.000000e-01
  %3160 = call float @dx.op.unary.f32(i32 6, float %3157)  ; FAbs(value)
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = call float @dx.op.unary.f32(i32 6, float %3159)  ; FAbs(value)
  %3163 = fsub fast float %3161, %3162
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3157, float %3159, float %3163, float %3157, float %3159, float %3163)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.unary.f32(i32 25, float %3164)  ; Rsqrt(value)
  %3166 = fmul fast float %3157, %3165
  %3167 = fmul fast float %3159, %3165
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 67108864
  %3171 = icmp eq i32 %3170, 0
  br i1 %3171, label %3188, label %3172

; <label>:3172                                    ; preds = %3120
  %3173 = add i32 %34, 328
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3173, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 65535
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 65535
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = lshr i32 %3175, 16
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = fsub fast float %3145, %3183
  %3185 = fmul fast float %3184, %3177
  %3186 = fadd fast float %3185, %3181
  %3187 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  br label %3188

; <label>:3188                                    ; preds = %3172, %3120
  %3189 = phi float [ %3187, %3172 ], [ %3145, %3120 ]
  %3190 = call float @dx.op.dot2.f32(i32 54, float %3166, float %3167, float %2724, float %2725)  ; Dot2(ax,ay,bx,by)
  %3191 = call float @dx.op.dot2.f32(i32 54, float %3166, float %3167, float %2726, float %2727)  ; Dot2(ax,ay,bx,by)
  br label %3192

; <label>:3192                                    ; preds = %3188, %3098
  %3193 = phi float [ %3189, %3188 ], [ 0x3FD6666660000000, %3098 ]
  %3194 = phi float [ %3190, %3188 ], [ 0.000000e+00, %3098 ]
  %3195 = phi float [ %3191, %3188 ], [ 0.000000e+00, %3098 ]
  %3196 = phi float [ %3132, %3188 ], [ 1.000000e+00, %3098 ]
  %3197 = add i32 %34, 208
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = lshr i32 %3199, 22
  %3201 = shl nuw nsw i32 %3200, 5
  %3202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3201)  ; LegacyF16ToF32(value)
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 64
  %3206 = icmp eq i32 %3205, 0
  br i1 %3206, label %3240, label %3207

; <label>:3207                                    ; preds = %3192
  %3208 = add i32 %34, 404
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = add i32 %3210, 0
  %3212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 131072
  %3216 = icmp eq i32 %3215, 0
  %3217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3212, %dx.types.Handle %79, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3218 = extractvalue %dx.types.ResRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.ResRet.f32 %3217, 1
  %3220 = extractvalue %dx.types.ResRet.f32 %3217, 2
  %3221 = fmul fast float %3218, %348
  %3222 = fmul fast float %3219, %351
  %3223 = fmul fast float %3220, %354
  br i1 %3216, label %3230, label %3224

; <label>:3224                                    ; preds = %3207
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 0
  %3227 = fmul fast float %3226, %3221
  %3228 = fmul fast float %3226, %3222
  %3229 = fmul fast float %3226, %3223
  br label %3230

; <label>:3230                                    ; preds = %3224, %3207
  %3231 = phi float [ %3227, %3224 ], [ %3221, %3207 ]
  %3232 = phi float [ %3228, %3224 ], [ %3222, %3207 ]
  %3233 = phi float [ %3229, %3224 ], [ %3223, %3207 ]
  %3234 = fmul fast float %3231, %3202
  %3235 = select i1 %205, float %3234, float %3231
  %3236 = call float @dx.op.dot3.f32(i32 55, float %3235, float %3232, float %3233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3237 = select i1 %205, float 0.000000e+00, float %3231
  %3238 = select i1 %205, float %3236, float %3232
  %3239 = select i1 %205, float 0.000000e+00, float %3233
  br label %3240

; <label>:3240                                    ; preds = %3230, %3192
  %3241 = phi float [ %3237, %3230 ], [ 0.000000e+00, %3192 ]
  %3242 = phi float [ %3238, %3230 ], [ 0.000000e+00, %3192 ]
  %3243 = phi float [ %3239, %3230 ], [ 0.000000e+00, %3192 ]
  %3244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.i32 %3244, 0
  %3246 = and i32 %3245, 1024
  %3247 = icmp eq i32 %3246, 0
  br i1 %3247, label %3278, label %3248

; <label>:3248                                    ; preds = %3240
  %3249 = add i32 %34, 200
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = fmul fast float %3253, 0x3F70101020000000
  %3255 = lshr i32 %3251, 8
  %3256 = and i32 %3255, 255
  %3257 = uitofp i32 %3256 to float
  %3258 = fmul fast float %3257, 0x3F70101020000000
  %3259 = lshr i32 %3251, 16
  %3260 = and i32 %3259, 255
  %3261 = uitofp i32 %3260 to float
  %3262 = fmul fast float %3261, 0x3F70101020000000
  %3263 = fmul fast float %3254, %3254
  %3264 = fmul fast float %3258, %3258
  %3265 = fmul fast float %3262, %3262
  %3266 = add i32 %34, 468
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = add i32 %3268, 0
  %3270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3270, %dx.types.Handle %80, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3272 = extractvalue %dx.types.ResRet.f32 %3271, 0
  %3273 = extractvalue %dx.types.ResRet.f32 %3271, 1
  %3274 = extractvalue %dx.types.ResRet.f32 %3271, 2
  %3275 = fmul fast float %3263, %3272
  %3276 = fmul fast float %3264, %3273
  %3277 = fmul fast float %3265, %3274
  br label %3278

; <label>:3278                                    ; preds = %3248, %3240
  %3279 = phi float [ %3275, %3248 ], [ 0.000000e+00, %3240 ]
  %3280 = phi float [ %3276, %3248 ], [ 0.000000e+00, %3240 ]
  %3281 = phi float [ %3277, %3248 ], [ 0.000000e+00, %3240 ]
  %3282 = fcmp fast ogt float %3279, 0.000000e+00
  %3283 = fcmp fast ogt float %3280, 0.000000e+00
  %3284 = fcmp fast ogt float %3281, 0.000000e+00
  %3285 = call float @dx.op.unary.f32(i32 23, float %3279)  ; Log(value)
  %3286 = call float @dx.op.unary.f32(i32 23, float %3280)  ; Log(value)
  %3287 = call float @dx.op.unary.f32(i32 23, float %3281)  ; Log(value)
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = lshr i32 %3289, 7
  %3291 = and i32 %3290, 32752
  %3292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3291)  ; LegacyF16ToF32(value)
  %3293 = fmul fast float %3285, 0xBFE62E4300000000
  %3294 = fmul fast float %3293, %3292
  %3295 = fmul fast float %3286, 0xBFE62E4300000000
  %3296 = fmul fast float %3295, %3292
  %3297 = fmul fast float %3287, 0xBFE62E4300000000
  %3298 = fmul fast float %3297, %3292
  %3299 = select i1 %3282, float %3294, float 1.270000e+02
  %3300 = select i1 %3283, float %3296, float 1.270000e+02
  %3301 = select i1 %3284, float %3298, float 1.270000e+02
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 26624
  %3305 = icmp eq i32 %3304, 0
  br i1 %3305, label %3342, label %3306

; <label>:3306                                    ; preds = %3278
  %3307 = add i32 %34, 484
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = add i32 %3309, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3311, %dx.types.Handle %80, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 1048576
  %3317 = icmp ne i32 %3316, 0
  %3318 = and i32 %3315, 2048
  %3319 = icmp eq i32 %3318, 0
  br i1 %3319, label %3329, label %3320

; <label>:3320                                    ; preds = %3306
  %3321 = extractvalue %dx.types.ResRet.f32 %3312, 3
  %3322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.i32 %3322, 0
  %3324 = shl i32 %3323, 4
  %3325 = and i32 %3324, 32752
  %3326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3325)  ; LegacyF16ToF32(value)
  %3327 = fmul fast float %3326, %3321
  %3328 = call float @dx.op.binary.f32(i32 35, float %3327, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3329

; <label>:3329                                    ; preds = %3320, %3306
  %3330 = phi float [ %3328, %3320 ], [ 0x3F70101020000000, %3306 ]
  %3331 = and i32 %3315, 16384
  %3332 = icmp eq i32 %3331, 0
  br i1 %3332, label %3342, label %3333

; <label>:3333                                    ; preds = %3329
  %3334 = add i32 %34, 144
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = lshr i32 %3336, 24
  %3338 = uitofp i32 %3337 to float
  %3339 = fmul fast float %3313, 0x3F70101020000000
  %3340 = select i1 %3317, float 0x3F70101020000000, float %3339
  %3341 = fmul fast float %3340, %3338
  br label %3342

; <label>:3342                                    ; preds = %3333, %3329, %3278
  %3343 = phi float [ %3330, %3333 ], [ %3330, %3329 ], [ 0x3F70101020000000, %3278 ]
  %3344 = phi float [ %3341, %3333 ], [ 0.000000e+00, %3329 ], [ 0.000000e+00, %3278 ]
  %3345 = add i32 %34, 144
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = and i32 %3347, 255
  %3349 = uitofp i32 %3348 to float
  %3350 = lshr i32 %3347, 8
  %3351 = and i32 %3350, 255
  %3352 = uitofp i32 %3351 to float
  %3353 = call float @dx.op.dot3.f32(i32 55, float %3113, float %3114, float %3115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3354 = fmul fast float %3352, %3353
  %3355 = fadd fast float %3354, %3349
  %3356 = fmul fast float %3355, 0x3F70101020000000
  %3357 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  br i1 %2712, label %3358, label %3393

; <label>:3358                                    ; preds = %3342
  %3359 = fmul fast float %3343, 2.000000e+00
  %3360 = fcmp fast olt float %3299, 1.270000e+02
  %3361 = fcmp fast olt float %3300, 1.270000e+02
  %3362 = fcmp fast olt float %3301, 1.270000e+02
  %3363 = fmul fast float %3299, 0xBFF7154760000000
  %3364 = fmul fast float %3363, %3359
  %3365 = fmul fast float %3300, 0xBFF7154760000000
  %3366 = fmul fast float %3365, %3359
  %3367 = fmul fast float %3301, 0xBFF7154760000000
  %3368 = fmul fast float %3367, %3359
  %3369 = call float @dx.op.unary.f32(i32 21, float %3364)  ; Exp(value)
  %3370 = call float @dx.op.unary.f32(i32 21, float %3366)  ; Exp(value)
  %3371 = call float @dx.op.unary.f32(i32 21, float %3368)  ; Exp(value)
  %3372 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3373 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  %3374 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3375 = fadd fast float %3372, -1.000000e+00
  %3376 = select i1 %3360, float %3375, float -1.000000e+00
  %3377 = fadd fast float %3373, -1.000000e+00
  %3378 = select i1 %3361, float %3377, float -1.000000e+00
  %3379 = fadd fast float %3374, -1.000000e+00
  %3380 = select i1 %3362, float %3379, float -1.000000e+00
  %3381 = fmul fast float %3376, %2893
  %3382 = fmul fast float %3378, %2893
  %3383 = fmul fast float %3380, %2893
  %3384 = fadd fast float %3381, 1.000000e+00
  %3385 = fadd fast float %3382, 1.000000e+00
  %3386 = fadd fast float %3383, 1.000000e+00
  %3387 = fmul fast float %3384, %2700
  %3388 = fmul fast float %3385, %2701
  %3389 = fmul fast float %3386, %2702
  %3390 = fmul fast float %3384, %2703
  %3391 = fmul fast float %3385, %2704
  %3392 = fmul fast float %3386, %2705
  br label %3393

; <label>:3393                                    ; preds = %3358, %3342
  %3394 = phi float [ %3387, %3358 ], [ %2700, %3342 ]
  %3395 = phi float [ %3388, %3358 ], [ %2701, %3342 ]
  %3396 = phi float [ %3389, %3358 ], [ %2702, %3342 ]
  %3397 = phi float [ %3390, %3358 ], [ %2703, %3342 ]
  %3398 = phi float [ %3391, %3358 ], [ %2704, %3342 ]
  %3399 = phi float [ %3392, %3358 ], [ %2705, %3342 ]
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = and i32 %3401, 3
  %3403 = icmp eq i32 %3402, 3
  br i1 %3403, label %3482, label %3404

; <label>:3404                                    ; preds = %3393
  %3405 = and i32 %3401, 16
  %3406 = icmp ne i32 %3405, 0
  %3407 = select i1 %3406, float %2893, float 0.000000e+00
  %3408 = icmp eq i32 %3402, 0
  br i1 %3408, label %3409, label %3437

; <label>:3409                                    ; preds = %3404
  %3410 = and i32 %3401, 64
  %3411 = icmp ne i32 %3410, 0
  %3412 = select i1 %3411, float %2893, float 0.000000e+00
  %3413 = fsub fast float %3113, %3394
  %3414 = fsub fast float %3114, %3395
  %3415 = fsub fast float %3115, %3396
  %3416 = fmul fast float %3407, %3413
  %3417 = fmul fast float %3407, %3414
  %3418 = fmul fast float %3407, %3415
  %3419 = fadd fast float %3416, %3394
  %3420 = fadd fast float %3417, %3395
  %3421 = fadd fast float %3418, %3396
  %3422 = fsub fast float %3099, %2706
  %3423 = fmul fast float %3407, %3422
  %3424 = fadd fast float %3423, %2706
  %3425 = fsub fast float %3241, %3397
  %3426 = fsub fast float %3242, %3398
  %3427 = fsub fast float %3243, %3399
  %3428 = fmul fast float %3412, %3425
  %3429 = fmul fast float %3412, %3426
  %3430 = fmul fast float %3412, %3427
  %3431 = fadd fast float %3428, %3397
  %3432 = fadd fast float %3429, %3398
  %3433 = fadd fast float %3430, %3399
  %3434 = fsub fast float %3357, %2710
  %3435 = fmul fast float %3407, %3434
  %3436 = fadd fast float %3435, %2710
  br label %3482

; <label>:3437                                    ; preds = %3404
  %3438 = icmp eq i32 %3402, 1
  br i1 %3438, label %3439, label %3452

; <label>:3439                                    ; preds = %3437
  %3440 = fadd fast float %3113, -1.000000e+00
  %3441 = fadd fast float %3114, -1.000000e+00
  %3442 = fadd fast float %3115, -1.000000e+00
  %3443 = fmul fast float %3407, %3440
  %3444 = fmul fast float %3407, %3441
  %3445 = fmul fast float %3407, %3442
  %3446 = fadd fast float %3443, 1.000000e+00
  %3447 = fadd fast float %3444, 1.000000e+00
  %3448 = fadd fast float %3445, 1.000000e+00
  %3449 = fmul fast float %3446, %3394
  %3450 = fmul fast float %3447, %3395
  %3451 = fmul fast float %3448, %3396
  br label %3482

; <label>:3452                                    ; preds = %3437
  %3453 = icmp eq i32 %3402, 2
  br i1 %3453, label %3454, label %3482

; <label>:3454                                    ; preds = %3452
  %3455 = call float @dx.op.unary.f32(i32 24, float %3113)  ; Sqrt(value)
  %3456 = call float @dx.op.unary.f32(i32 24, float %3114)  ; Sqrt(value)
  %3457 = call float @dx.op.unary.f32(i32 24, float %3115)  ; Sqrt(value)
  %3458 = fadd fast float %3455, -5.000000e-01
  %3459 = fadd fast float %3456, -5.000000e-01
  %3460 = fadd fast float %3457, -5.000000e-01
  %3461 = fmul fast float %3458, %3407
  %3462 = fmul fast float %3459, %3407
  %3463 = fmul fast float %3460, %3407
  %3464 = fadd fast float %3461, 5.000000e-01
  %3465 = fadd fast float %3462, 5.000000e-01
  %3466 = fadd fast float %3463, 5.000000e-01
  %3467 = fmul fast float %3464, 2.000000e+00
  %3468 = fsub fast float 1.000000e+00, %3467
  %3469 = fmul fast float %3468, %3394
  %3470 = fadd fast float %3469, %3467
  %3471 = fmul fast float %3470, %3394
  %3472 = fmul fast float %3465, 2.000000e+00
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = fmul fast float %3473, %3395
  %3475 = fadd fast float %3474, %3472
  %3476 = fmul fast float %3475, %3395
  %3477 = fmul fast float %3466, 2.000000e+00
  %3478 = fsub fast float 1.000000e+00, %3477
  %3479 = fmul fast float %3478, %3396
  %3480 = fadd fast float %3479, %3477
  %3481 = fmul fast float %3480, %3396
  br label %3482

; <label>:3482                                    ; preds = %3454, %3452, %3439, %3409, %3393
  %3483 = phi float [ %3394, %3393 ], [ %3471, %3454 ], [ %3394, %3452 ], [ %3449, %3439 ], [ %3419, %3409 ]
  %3484 = phi float [ %3395, %3393 ], [ %3476, %3454 ], [ %3395, %3452 ], [ %3450, %3439 ], [ %3420, %3409 ]
  %3485 = phi float [ %3396, %3393 ], [ %3481, %3454 ], [ %3396, %3452 ], [ %3451, %3439 ], [ %3421, %3409 ]
  %3486 = phi float [ %3397, %3393 ], [ %3397, %3454 ], [ %3397, %3452 ], [ %3397, %3439 ], [ %3431, %3409 ]
  %3487 = phi float [ %3398, %3393 ], [ %3398, %3454 ], [ %3398, %3452 ], [ %3398, %3439 ], [ %3432, %3409 ]
  %3488 = phi float [ %3399, %3393 ], [ %3399, %3454 ], [ %3399, %3452 ], [ %3399, %3439 ], [ %3433, %3409 ]
  %3489 = phi float [ %2706, %3393 ], [ %2706, %3454 ], [ %2706, %3452 ], [ %2706, %3439 ], [ %3424, %3409 ]
  %3490 = phi float [ %2710, %3393 ], [ %2710, %3454 ], [ %2710, %3452 ], [ %2710, %3439 ], [ %3436, %3409 ]
  %3491 = and i32 %3401, 12
  %3492 = icmp eq i32 %3491, 12
  br i1 %3492, label %3575, label %3493

; <label>:3493                                    ; preds = %3482
  %3494 = and i32 %3401, 2097184
  %3495 = icmp eq i32 %3494, 2097184
  %3496 = select i1 %3495, float %2893, float 0.000000e+00
  %3497 = and i32 %3401, 4194336
  %3498 = icmp eq i32 %3497, 4194336
  %3499 = select i1 %3498, float %2893, float 0.000000e+00
  %3500 = and i32 %3401, 8388640
  %3501 = icmp eq i32 %3500, 8388640
  %3502 = select i1 %3501, float %2893, float 0.000000e+00
  %3503 = and i32 %3401, 16384
  %3504 = icmp ne i32 %3503, 0
  %3505 = select i1 %3504, float %2893, float 0.000000e+00
  %3506 = icmp eq i32 %3491, 0
  br i1 %3506, label %3507, label %3523

; <label>:3507                                    ; preds = %3493
  %3508 = fsub fast float %3194, %2698
  %3509 = fsub fast float %3195, %2699
  %3510 = fmul fast float %3496, %3508
  %3511 = fmul fast float %3496, %3509
  %3512 = fadd fast float %3510, %2698
  %3513 = fadd fast float %3511, %2699
  %3514 = fsub fast float %3196, %2708
  %3515 = fmul fast float %3499, %3514
  %3516 = fadd fast float %3515, %2708
  %3517 = fsub fast float %3193, %2707
  %3518 = fmul fast float %3502, %3517
  %3519 = fadd fast float %3518, %2707
  %3520 = fsub fast float %3344, %2709
  %3521 = fmul fast float %3505, %3520
  %3522 = fadd fast float %3521, %2709
  br label %3575

; <label>:3523                                    ; preds = %3493
  %3524 = icmp eq i32 %3491, 4
  br i1 %3524, label %3525, label %3559

; <label>:3525                                    ; preds = %3523
  %3526 = fmul fast float %3496, %3194
  %3527 = fmul fast float %3496, %3195
  %3528 = fadd fast float %3526, %2698
  %3529 = fadd fast float %3527, %2699
  %3530 = call float @dx.op.binary.f32(i32 36, float %2708, float %3196)  ; FMin(a,b)
  %3531 = fsub fast float %3530, %2708
  %3532 = fmul fast float %3531, %3499
  %3533 = fadd fast float %3532, %2708
  %3534 = fadd fast float %3193, %2707
  %3535 = fmul fast float %3534, 0x3FF337FAE0000000
  %3536 = fmul fast float %2707, %2707
  %3537 = fmul fast float %3193, %3193
  %3538 = fadd fast float %3537, %3536
  %3539 = fmul fast float %3538, 0x3FE5152B00000000
  %3540 = fmul fast float %2707, 0xBFCC1F85E0000000
  %3541 = fmul fast float %3540, %3193
  %3542 = fadd fast float %3541, 0xBFE1363700000000
  %3543 = fadd fast float %3542, %3535
  %3544 = fsub fast float %3543, %3539
  %3545 = fmul fast float %3534, 0x3FBA6F0D00000000
  %3546 = fmul fast float %3538, 0x3FD0432880000000
  %3547 = fmul fast float %2707, 0xBFEF110800000000
  %3548 = fmul fast float %3547, %3193
  %3549 = fadd fast float %3548, 1.000000e+00
  %3550 = fsub fast float %3549, %3545
  %3551 = fadd fast float %3550, %3546
  %3552 = fdiv fast float %3544, %3551
  %3553 = call float @dx.op.unary.f32(i32 7, float %3552)  ; Saturate(value)
  %3554 = fsub fast float %3553, %2707
  %3555 = fmul fast float %3554, %3502
  %3556 = fadd fast float %3555, %2707
  %3557 = fmul fast float %3505, %3344
  %3558 = fadd fast float %3557, %2709
  br label %3575

; <label>:3559                                    ; preds = %3523
  %3560 = icmp eq i32 %3491, 8
  br i1 %3560, label %3561, label %3575

; <label>:3561                                    ; preds = %3559
  %3562 = fmul fast float %3496, %3194
  %3563 = fmul fast float %3496, %3195
  %3564 = fadd fast float %3562, %2698
  %3565 = fadd fast float %3563, %2699
  %3566 = call float @dx.op.binary.f32(i32 36, float %2708, float %3196)  ; FMin(a,b)
  %3567 = fsub fast float %3566, %2708
  %3568 = fmul fast float %3567, %3499
  %3569 = fadd fast float %3568, %2708
  %3570 = fsub fast float %3193, %2707
  %3571 = fmul fast float %3502, %3570
  %3572 = fadd fast float %3571, %2707
  %3573 = fmul fast float %3505, %3344
  %3574 = fadd fast float %3573, %2709
  br label %3575

; <label>:3575                                    ; preds = %3561, %3559, %3525, %3507, %3482, %2892, %2711, %2697
  %3576 = phi float [ %2698, %3482 ], [ %2698, %2892 ], [ %2698, %2697 ], [ %2698, %2711 ], [ %3512, %3507 ], [ %3528, %3525 ], [ %2698, %3559 ], [ %3564, %3561 ]
  %3577 = phi float [ %2699, %3482 ], [ %2699, %2892 ], [ %2699, %2697 ], [ %2699, %2711 ], [ %3513, %3507 ], [ %3529, %3525 ], [ %2699, %3559 ], [ %3565, %3561 ]
  %3578 = phi float [ %3483, %3482 ], [ %2700, %2892 ], [ %2700, %2697 ], [ %2700, %2711 ], [ %3483, %3507 ], [ %3483, %3525 ], [ %3483, %3559 ], [ %3483, %3561 ]
  %3579 = phi float [ %3484, %3482 ], [ %2701, %2892 ], [ %2701, %2697 ], [ %2701, %2711 ], [ %3484, %3507 ], [ %3484, %3525 ], [ %3484, %3559 ], [ %3484, %3561 ]
  %3580 = phi float [ %3485, %3482 ], [ %2702, %2892 ], [ %2702, %2697 ], [ %2702, %2711 ], [ %3485, %3507 ], [ %3485, %3525 ], [ %3485, %3559 ], [ %3485, %3561 ]
  %3581 = phi float [ %3486, %3482 ], [ %2703, %2892 ], [ %2703, %2697 ], [ %2703, %2711 ], [ %3486, %3507 ], [ %3486, %3525 ], [ %3486, %3559 ], [ %3486, %3561 ]
  %3582 = phi float [ %3487, %3482 ], [ %2704, %2892 ], [ %2704, %2697 ], [ %2704, %2711 ], [ %3487, %3507 ], [ %3487, %3525 ], [ %3487, %3559 ], [ %3487, %3561 ]
  %3583 = phi float [ %3488, %3482 ], [ %2705, %2892 ], [ %2705, %2697 ], [ %2705, %2711 ], [ %3488, %3507 ], [ %3488, %3525 ], [ %3488, %3559 ], [ %3488, %3561 ]
  %3584 = phi float [ %3489, %3482 ], [ %2706, %2892 ], [ %2706, %2697 ], [ %2706, %2711 ], [ %3489, %3507 ], [ %3489, %3525 ], [ %3489, %3559 ], [ %3489, %3561 ]
  %3585 = phi float [ %2707, %3482 ], [ %2707, %2892 ], [ %2707, %2697 ], [ %2707, %2711 ], [ %3519, %3507 ], [ %3556, %3525 ], [ %2707, %3559 ], [ %3572, %3561 ]
  %3586 = phi float [ %2708, %3482 ], [ %2708, %2892 ], [ %2708, %2697 ], [ %2708, %2711 ], [ %3516, %3507 ], [ %3533, %3525 ], [ %2708, %3559 ], [ %3569, %3561 ]
  %3587 = phi float [ %2709, %3482 ], [ %2709, %2892 ], [ %2709, %2697 ], [ %2709, %2711 ], [ %3522, %3507 ], [ %3558, %3525 ], [ %2709, %3559 ], [ %3574, %3561 ]
  %3588 = phi float [ %3490, %3482 ], [ %2710, %2892 ], [ %2710, %2697 ], [ %2710, %2711 ], [ %3490, %3507 ], [ %3490, %3525 ], [ %3490, %3559 ], [ %3490, %3561 ]
  %3589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.f32 %3589, 0
  %3591 = call float @dx.op.dot2.f32(i32 54, float %3576, float %3577, float %3576, float %3577)  ; Dot2(ax,ay,bx,by)
  %3592 = fmul fast float %3591, 0x3FE3333340000000
  %3593 = fsub fast float 1.000000e+00, %3592
  %3594 = call float @dx.op.dot3.f32(i32 55, float %3576, float %3577, float %3593, float %3576, float %3577, float %3593)  ; Dot3(ax,ay,az,bx,by,bz)
  %3595 = call float @dx.op.unary.f32(i32 25, float %3594)  ; Rsqrt(value)
  %3596 = fmul fast float %3595, %3576
  %3597 = fmul fast float %3595, %3577
  %3598 = fmul fast float %3593, %3595
  %3599 = fmul fast float %3598, %92
  %3600 = fmul fast float %3598, %94
  %3601 = fmul fast float %3598, %96
  %3602 = fmul fast float %3596, %64
  %3603 = fmul fast float %3596, %65
  %3604 = fmul fast float %3596, %66
  %3605 = fadd fast float %3599, %3602
  %3606 = fadd fast float %3600, %3603
  %3607 = fadd fast float %3601, %3604
  %3608 = fmul fast float %106, %3597
  %3609 = fmul fast float %107, %3597
  %3610 = fmul fast float %108, %3597
  %3611 = fadd fast float %3605, %3608
  %3612 = fadd fast float %3606, %3609
  %3613 = fadd fast float %3607, %3610
  %3614 = call float @dx.op.dot3.f32(i32 55, float %3611, float %3612, float %3613, float %3611, float %3612, float %3613)  ; Dot3(ax,ay,az,bx,by,bz)
  %3615 = call float @dx.op.unary.f32(i32 25, float %3614)  ; Rsqrt(value)
  %3616 = fmul fast float %3611, %3615
  %3617 = fmul fast float %3612, %3615
  %3618 = fmul fast float %3613, %3615
  %3619 = icmp eq i32 %35, 65535
  br i1 %3619, label %4134, label %3620

; <label>:3620                                    ; preds = %3575
  %3621 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3622 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3623 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3624 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3625 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3626 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3627 = fadd fast float %3621, %36
  %3628 = fadd fast float %3622, %37
  %3629 = fadd fast float %3623, %38
  %3630 = fadd fast float %3624, %36
  %3631 = fadd fast float %3625, %37
  %3632 = fadd fast float %3626, %38
  %3633 = mul i32 %35, 48
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = add i32 %3633, 16
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = add i32 %3633, 32
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = bitcast float %3648 to i32
  %3650 = fmul fast float %3635, %36
  %3651 = fmul fast float %3636, %37
  %3652 = fmul fast float %3637, %38
  %3653 = fsub fast float %3650, %3640
  %3654 = fsub fast float %3651, %3641
  %3655 = fsub fast float %3652, %3642
  %3656 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3657 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3658 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3659 = fmul fast float %3656, %3645
  %3660 = fmul fast float %3657, %3646
  %3661 = fmul fast float %3658, %3647
  %3662 = fadd fast float %3645, -1.000000e+00
  %3663 = fadd fast float %3646, -1.000000e+00
  %3664 = fadd fast float %3647, -1.000000e+00
  %3665 = call float @dx.op.unary.f32(i32 27, float %3659)  ; Round_ni(value)
  %3666 = call float @dx.op.unary.f32(i32 27, float %3660)  ; Round_ni(value)
  %3667 = call float @dx.op.unary.f32(i32 27, float %3661)  ; Round_ni(value)
  %3668 = call float @dx.op.binary.f32(i32 36, float %3665, float %3662)  ; FMin(a,b)
  %3669 = call float @dx.op.binary.f32(i32 36, float %3666, float %3663)  ; FMin(a,b)
  %3670 = call float @dx.op.binary.f32(i32 36, float %3667, float %3664)  ; FMin(a,b)
  %3671 = fmul fast float %3670, %3646
  %3672 = fadd fast float %3671, %3669
  %3673 = fmul fast float %3672, %3645
  %3674 = fadd fast float %3673, %3668
  %3675 = fptosi float %3674 to i32
  %3676 = add nsw i32 %3675, %3649
  %3677 = shl nsw i32 %3676, 2
  %3678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.i32 %3678, 0
  %3680 = lshr i32 %3679, 16
  %3681 = icmp eq i32 %3680, 0
  br i1 %3681, label %4103, label %3682

; <label>:3682                                    ; preds = %3620
  br label %3683

; <label>:3683                                    ; preds = %3804, %3682
  %3684 = phi i32 [ %3706, %3804 ], [ %3680, %3682 ]
  %3685 = phi float [ %3805, %3804 ], [ 0.000000e+00, %3682 ]
  %3686 = phi float [ %3806, %3804 ], [ %3590, %3682 ]
  %3687 = phi float [ %3807, %3804 ], [ %3588, %3682 ]
  %3688 = phi float [ %3808, %3804 ], [ %3587, %3682 ]
  %3689 = phi float [ %3809, %3804 ], [ 0.000000e+00, %3682 ]
  %3690 = phi float [ %3810, %3804 ], [ %3581, %3682 ]
  %3691 = phi float [ %3811, %3804 ], [ %3582, %3682 ]
  %3692 = phi float [ %3812, %3804 ], [ %3583, %3682 ]
  %3693 = phi float [ %3813, %3804 ], [ %3616, %3682 ]
  %3694 = phi float [ %3814, %3804 ], [ %3617, %3682 ]
  %3695 = phi float [ %3815, %3804 ], [ %3618, %3682 ]
  %3696 = phi float [ %3816, %3804 ], [ %3586, %3682 ]
  %3697 = phi float [ %3817, %3804 ], [ %3585, %3682 ]
  %3698 = phi float [ %3818, %3804 ], [ 0.000000e+00, %3682 ]
  %3699 = phi float [ %3819, %3804 ], [ %3584, %3682 ]
  %3700 = phi float [ %3820, %3804 ], [ %3578, %3682 ]
  %3701 = phi float [ %3821, %3804 ], [ %3579, %3682 ]
  %3702 = phi float [ %3822, %3804 ], [ %3580, %3682 ]
  %3703 = shl nuw nsw i32 %3684, 2
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = lshr i32 %3705, 16
  %3707 = shl i32 %3705, 8
  %3708 = and i32 %3707, 16776960
  %3709 = or i32 %3708, 48
  %3710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.f32 %3710, 0
  %3712 = extractvalue %dx.types.ResRet.f32 %3710, 1
  %3713 = extractvalue %dx.types.ResRet.f32 %3710, 2
  %3714 = or i32 %3708, 64
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = extractvalue %dx.types.ResRet.i32 %3715, 1
  %3718 = or i32 %3708, 80
  %3719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 2
  %3721 = extractvalue %dx.types.ResRet.f32 %3719, 3
  %3722 = or i32 %3708, 96
  %3723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = extractvalue %dx.types.ResRet.f32 %3723, 1
  %3726 = extractvalue %dx.types.ResRet.f32 %3723, 2
  %3727 = extractvalue %dx.types.ResRet.f32 %3723, 3
  %3728 = or i32 %3708, 112
  %3729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 2
  %3731 = or i32 %3708, 128
  %3732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 0
  %3734 = extractvalue %dx.types.ResRet.f32 %3732, 1
  %3735 = extractvalue %dx.types.ResRet.f32 %3732, 2
  %3736 = extractvalue %dx.types.ResRet.f32 %3732, 3
  %3737 = or i32 %3708, 144
  %3738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.ResRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.ResRet.f32 %3738, 2
  %3742 = extractvalue %dx.types.ResRet.f32 %3738, 3
  %3743 = or i32 %3708, 160
  %3744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = extractvalue %dx.types.ResRet.f32 %3744, 1
  %3747 = extractvalue %dx.types.ResRet.f32 %3744, 2
  %3748 = extractvalue %dx.types.ResRet.f32 %3744, 3
  %3749 = or i32 %3708, 192
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = or i32 %3708, 208
  %3753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.f32 %3753, 0
  %3755 = or i32 %3708, 248
  %3756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.ResRet.f32 %3756, 1
  %3759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.f32 %3759, 0
  %3761 = extractvalue %dx.types.ResRet.f32 %3759, 1
  %3762 = extractvalue %dx.types.ResRet.f32 %3759, 2
  %3763 = extractvalue %dx.types.ResRet.f32 %3759, 3
  %3764 = call float @dx.op.dot4.f32(i32 56, float %3760, float %3761, float %3762, float %3763, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3765 = or i32 %3708, 16
  %3766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.ResRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.ResRet.f32 %3766, 2
  %3770 = extractvalue %dx.types.ResRet.f32 %3766, 3
  %3771 = call float @dx.op.dot4.f32(i32 56, float %3767, float %3768, float %3769, float %3770, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3772 = or i32 %3708, 32
  %3773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.ResRet.f32 %3773, 3
  %3778 = call float @dx.op.dot4.f32(i32 56, float %3774, float %3775, float %3776, float %3777, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3779 = call float @dx.op.unary.f32(i32 27, float %3764)  ; Round_ni(value)
  %3780 = call float @dx.op.unary.f32(i32 6, float %3779)  ; FAbs(value)
  %3781 = call float @dx.op.unary.f32(i32 27, float %3771)  ; Round_ni(value)
  %3782 = call float @dx.op.unary.f32(i32 6, float %3781)  ; FAbs(value)
  %3783 = call float @dx.op.unary.f32(i32 6, float %3778)  ; FAbs(value)
  %3784 = call float @dx.op.unary.f32(i32 27, float %3783)  ; Round_ni(value)
  %3785 = fadd fast float %3782, %3780
  %3786 = fadd fast float %3785, %3784
  %3787 = fcmp fast oeq float %3786, 0.000000e+00
  %3788 = call float @dx.op.dot4.f32(i32 56, float %3760, float %3761, float %3762, float %3763, float %3627, float %3628, float %3629, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3789 = call float @dx.op.dot4.f32(i32 56, float %3767, float %3768, float %3769, float %3770, float %3627, float %3628, float %3629, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3790 = call float @dx.op.dot4.f32(i32 56, float %3760, float %3761, float %3762, float %3763, float %3630, float %3631, float %3632, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3791 = call float @dx.op.dot4.f32(i32 56, float %3767, float %3768, float %3769, float %3770, float %3630, float %3631, float %3632, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3792 = fsub fast float %3788, %3764
  %3793 = fsub fast float %3790, %3764
  %3794 = fsub fast float %3789, %3771
  %3795 = fsub fast float %3791, %3771
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3711, float %3712, float %3713, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 2
  %3799 = fadd fast float %3798, %3796
  %3800 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3802 = fcmp fast ogt float %3800, %3801
  %3803 = and i1 %3787, %3802
  br i1 %3803, label %3824, label %3804

; <label>:3804                                    ; preds = %4089, %3907, %3824, %3683
  %3805 = phi float [ %3685, %3824 ], [ %3910, %3907 ], [ %3910, %4089 ], [ %3685, %3683 ]
  %3806 = phi float [ %3686, %3824 ], [ %3686, %3907 ], [ %4064, %4089 ], [ %3686, %3683 ]
  %3807 = phi float [ %3687, %3824 ], [ %3687, %3907 ], [ %4062, %4089 ], [ %3687, %3683 ]
  %3808 = phi float [ %3688, %3824 ], [ %3688, %3907 ], [ %4034, %4089 ], [ %3688, %3683 ]
  %3809 = phi float [ %3689, %3824 ], [ %3689, %3907 ], [ %4032, %4089 ], [ %3689, %3683 ]
  %3810 = phi float [ %3690, %3824 ], [ %3690, %3907 ], [ %4099, %4089 ], [ %3690, %3683 ]
  %3811 = phi float [ %3691, %3824 ], [ %3691, %3907 ], [ %4100, %4089 ], [ %3691, %3683 ]
  %3812 = phi float [ %3692, %3824 ], [ %3692, %3907 ], [ %4101, %4089 ], [ %3692, %3683 ]
  %3813 = phi float [ %3693, %3824 ], [ %3693, %3907 ], [ %4013, %4089 ], [ %3693, %3683 ]
  %3814 = phi float [ %3694, %3824 ], [ %3694, %3907 ], [ %4014, %4089 ], [ %3694, %3683 ]
  %3815 = phi float [ %3695, %3824 ], [ %3695, %3907 ], [ %4015, %4089 ], [ %3695, %3683 ]
  %3816 = phi float [ %3696, %3824 ], [ %3696, %3907 ], [ %4042, %4089 ], [ %3696, %3683 ]
  %3817 = phi float [ %3697, %3824 ], [ %3697, %3907 ], [ %4039, %4089 ], [ %3697, %3683 ]
  %3818 = phi float [ %3698, %3824 ], [ %3698, %3907 ], [ %4036, %4089 ], [ %3698, %3683 ]
  %3819 = phi float [ %3699, %3824 ], [ %3699, %3907 ], [ %4030, %4089 ], [ %3699, %3683 ]
  %3820 = phi float [ %3700, %3824 ], [ %3700, %3907 ], [ %4025, %4089 ], [ %3700, %3683 ]
  %3821 = phi float [ %3701, %3824 ], [ %3701, %3907 ], [ %4026, %4089 ], [ %3701, %3683 ]
  %3822 = phi float [ %3702, %3824 ], [ %3702, %3907 ], [ %4027, %4089 ], [ %3702, %3683 ]
  %3823 = icmp eq i32 %3706, 0
  br i1 %3823, label %4102, label %3683

; <label>:3824                                    ; preds = %3683
  %3825 = extractvalue %dx.types.ResRet.f32 %3710, 3
  %3826 = extractvalue %dx.types.ResRet.f32 %3729, 3
  %3827 = extractvalue %dx.types.ResRet.f32 %3729, 1
  %3828 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3829 = extractvalue %dx.types.ResRet.f32 %3719, 1
  %3830 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3831 = extractvalue %dx.types.ResRet.i32 %3715, 3
  %3832 = extractvalue %dx.types.ResRet.i32 %3715, 2
  %3833 = bitcast float %3825 to i32
  %3834 = add i32 %3831, 0
  %3835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3834, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3837 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3835, %dx.types.Handle %3836, float %3764, float %3771, float undef, float undef, i32 0, i32 0, i32 undef, float %3792, float %3794, float undef, float %3793, float %3795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = fmul fast float %3838, %3830
  %3840 = fadd fast float %3839, %3829
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fmul fast float %3764, %3724
  %3843 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3771, float %3842)  ; FMad(a,b,c)
  %3844 = fadd fast float %3843, %3828
  %3845 = fmul fast float %3764, %3726
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3727, float %3771, float %3845)  ; FMad(a,b,c)
  %3847 = fadd fast float %3846, %3827
  %3848 = fmul fast float %3792, %3724
  %3849 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3794, float %3848)  ; FMad(a,b,c)
  %3850 = fmul fast float %3792, %3726
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3727, float %3794, float %3850)  ; FMad(a,b,c)
  %3852 = fmul fast float %3793, %3724
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3795, float %3852)  ; FMad(a,b,c)
  %3854 = fmul fast float %3793, %3726
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3727, float %3795, float %3854)  ; FMad(a,b,c)
  %3856 = add i32 %3832, 0
  %3857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3856, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3858 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3857, %dx.types.Handle %3836, float %3844, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float %3849, float %3851, float undef, float %3853, float %3855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = and i32 %3833, 1024
  %3861 = icmp ne i32 %3860, 0
  %3862 = fcmp fast ogt float %3859, 0x3FE0101020000000
  %3863 = uitofp i1 %3862 to float
  %3864 = select i1 %3861, float %3863, float %3859
  %3865 = and i32 %3833, 8192
  %3866 = icmp ne i32 %3865, 0
  %3867 = select i1 %3866, float %3826, float 1.000000e+00
  %3868 = fmul fast float %3764, 2.000000e+00
  %3869 = fadd fast float %3868, -1.000000e+00
  %3870 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3871 = fmul fast float %3870, %3757
  %3872 = fsub fast float %3871, %3757
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = fmul fast float %3771, 2.000000e+00
  %3875 = fadd fast float %3874, -1.000000e+00
  %3876 = call float @dx.op.unary.f32(i32 6, float %3875)  ; FAbs(value)
  %3877 = fmul fast float %3876, %3758
  %3878 = fsub fast float %3877, %3758
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = fmul fast float %3783, %3720
  %3881 = fsub fast float %3880, %3720
  %3882 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3883 = fmul fast float %3841, %3867
  %3884 = fmul fast float %3883, %3838
  %3885 = fmul fast float %3884, %3873
  %3886 = fmul fast float %3885, %3864
  %3887 = fmul fast float %3886, %3879
  %3888 = fmul fast float %3887, %3882
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 1
  %3891 = extractvalue %dx.types.CBufRet.f32 %3889, 0
  %3892 = fsub fast float %3800, %3891
  %3893 = fmul fast float %3892, %3890
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fmul fast float %3888, %3721
  %3896 = fadd fast float %3888, %3721
  %3897 = fmul fast float %3896, %3730
  %3898 = fsub fast float %3897, %3730
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = and i32 %3833, 128
  %3901 = icmp ne i32 %3900, 0
  %3902 = select i1 %3901, float %3899, float %3895
  %3903 = fmul fast float %3902, %3894
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3906 = fcmp fast ugt float %3903, %3905
  br i1 %3906, label %3907, label %3804

; <label>:3907                                    ; preds = %3824
  %3908 = select i1 %3866, float %3903, float 0.000000e+00
  %3909 = fadd fast float %3908, %3685
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  br i1 %3866, label %3804, label %3911

; <label>:3911                                    ; preds = %3907
  %3912 = and i32 %3833, 4
  %3913 = and i32 %3833, 8
  %3914 = add i32 %3716, 0
  %3915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3914, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3915, %dx.types.Handle %3916, float %3844, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float %3849, float %3851, float undef, float %3853, float %3855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = extractvalue %dx.types.ResRet.f32 %3917, 3
  %3922 = bitcast float %3742 to i32
  %3923 = and i32 %3922, 255
  %3924 = uitofp i32 %3923 to float
  %3925 = lshr i32 %3922, 8
  %3926 = and i32 %3925, 255
  %3927 = uitofp i32 %3926 to float
  %3928 = fmul fast float %3921, %3924
  %3929 = fadd fast float %3928, %3927
  %3930 = fmul fast float %3929, 0x3F70101000000000
  %3931 = add i32 %3717, 0
  %3932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3933 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3932, %dx.types.Handle %3916, float %3844, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float %3849, float %3851, float undef, float %3853, float %3855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.f32 %3933, 3
  %3938 = bitcast float %3736 to i32
  %3939 = and i32 %3938, 255
  %3940 = uitofp i32 %3939 to float
  %3941 = lshr i32 %3938, 8
  %3942 = and i32 %3941, 255
  %3943 = uitofp i32 %3942 to float
  %3944 = lshr i32 %3938, 16
  %3945 = and i32 %3944, 255
  %3946 = uitofp i32 %3945 to float
  %3947 = fmul fast float %3946, 0x3F70101000000000
  %3948 = fmul fast float %3934, %3940
  %3949 = fadd fast float %3948, %3943
  %3950 = fmul fast float %3949, 0x3F70101000000000
  %3951 = fadd fast float %3935, -5.000000e-01
  %3952 = fadd fast float %3937, -5.000000e-01
  %3953 = fmul fast float %3951, %3947
  %3954 = fmul fast float %3952, %3947
  %3955 = fadd fast float %3953, 5.000000e-01
  %3956 = fadd fast float %3954, 5.000000e-01
  %3957 = fmul fast float %3918, %3745
  %3958 = fmul fast float %3919, %3746
  %3959 = fmul fast float %3920, %3747
  %3960 = fmul fast float %3955, 2.000000e+00
  %3961 = fadd fast float %3960, -1.000000e+00
  %3962 = fmul fast float %3956, 2.000000e+00
  %3963 = fadd fast float %3962, -1.000000e+00
  %3964 = fadd fast float %3961, %3963
  %3965 = fmul fast float %3964, 5.000000e-01
  %3966 = fsub fast float %3961, %3963
  %3967 = fmul fast float %3966, 5.000000e-01
  %3968 = call float @dx.op.unary.f32(i32 6, float %3965)  ; FAbs(value)
  %3969 = fsub fast float 1.000000e+00, %3968
  %3970 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3971 = fsub fast float %3969, %3970
  %3972 = call float @dx.op.dot3.f32(i32 55, float %3965, float %3967, float %3971, float %3965, float %3967, float %3971)  ; Dot3(ax,ay,az,bx,by,bz)
  %3973 = call float @dx.op.unary.f32(i32 25, float %3972)  ; Rsqrt(value)
  %3974 = fmul fast float %3965, %3973
  %3975 = fmul fast float %3967, %3973
  %3976 = fmul fast float %3973, %3971
  %3977 = fmul fast float %3976, %3711
  %3978 = fmul fast float %3976, %3712
  %3979 = fmul fast float %3976, %3713
  %3980 = fmul fast float %3974, %3733
  %3981 = fmul fast float %3974, %3734
  %3982 = fmul fast float %3974, %3735
  %3983 = fadd fast float %3980, %3977
  %3984 = fadd fast float %3981, %3978
  %3985 = fadd fast float %3982, %3979
  %3986 = fmul fast float %3975, %3739
  %3987 = fmul fast float %3975, %3740
  %3988 = fmul fast float %3975, %3741
  %3989 = fadd fast float %3983, %3986
  %3990 = fadd fast float %3984, %3987
  %3991 = fadd fast float %3985, %3988
  %3992 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3990, float %3991, float %3989, float %3990, float %3991)  ; Dot3(ax,ay,az,bx,by,bz)
  %3993 = call float @dx.op.unary.f32(i32 25, float %3992)  ; Rsqrt(value)
  %3994 = fmul fast float %3989, %3993
  %3995 = fmul fast float %3990, %3993
  %3996 = fmul fast float %3991, %3993
  %3997 = icmp ne i32 %3913, 0
  %3998 = select i1 %3997, float 1.000000e+00, float 0.000000e+00
  %3999 = fmul fast float %3903, %3998
  %4000 = and i32 %3833, 1
  %4001 = icmp eq i32 %4000, 0
  br i1 %4001, label %4002, label %4006

; <label>:4002                                    ; preds = %3911
  %4003 = fsub fast float %3994, %3693
  %4004 = fsub fast float %3995, %3694
  %4005 = fsub fast float %3996, %3695
  br label %4006

; <label>:4006                                    ; preds = %4002, %3911
  %4007 = phi float [ %4003, %4002 ], [ %3994, %3911 ]
  %4008 = phi float [ %4004, %4002 ], [ %3995, %3911 ]
  %4009 = phi float [ %4005, %4002 ], [ %3996, %3911 ]
  %4010 = fmul float %4009, %3999
  %4011 = fmul float %4008, %3999
  %4012 = fmul float %4007, %3999
  %4013 = fadd fast float %4012, %3693
  %4014 = fadd fast float %4011, %3694
  %4015 = fadd fast float %4010, %3695
  %4016 = icmp ne i32 %3912, 0
  %4017 = select i1 %4016, float 1.000000e+00, float 0.000000e+00
  %4018 = fmul fast float %3903, %4017
  %4019 = fsub fast float %3957, %3700
  %4020 = fsub fast float %3958, %3701
  %4021 = fsub fast float %3959, %3702
  %4022 = fmul fast float %4019, %4018
  %4023 = fmul fast float %4020, %4018
  %4024 = fmul fast float %4021, %4018
  %4025 = fadd fast float %4022, %3700
  %4026 = fadd fast float %4023, %3701
  %4027 = fadd fast float %4024, %3702
  %4028 = fsub fast float %3930, %3699
  %4029 = fmul fast float %4028, %4018
  %4030 = fadd fast float %4029, %3699
  %4031 = fmul fast float %4018, %3689
  %4032 = fsub fast float %3689, %4031
  %4033 = fmul fast float %4018, %3688
  %4034 = fsub fast float %3688, %4033
  %4035 = fadd fast float %3903, %3698
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fsub fast float %3950, %3697
  %4038 = fmul fast float %4037, %3999
  %4039 = fadd fast float %4038, %3697
  %4040 = fsub fast float %3936, %3696
  %4041 = fmul fast float %4040, %3999
  %4042 = fadd fast float %4041, %3696
  %4043 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.CBufRet.f32 %4044, 1
  %4047 = fmul fast float %4046, %4043
  %4048 = fadd fast float %4047, %4045
  %4049 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4050 = bitcast float %3748 to i32
  %4051 = and i32 %4050, 65535
  %4052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4051)  ; LegacyF16ToF32(value)
  %4053 = lshr i32 %4050, 16
  %4054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4053)  ; LegacyF16ToF32(value)
  %4055 = fcmp fast oge float %4052, 0.000000e+00
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = select i1 %4055, float %4052, float %4057
  %4059 = fadd fast float %4058, %4054
  %4060 = fsub fast float %4049, %3687
  %4061 = fmul fast float %4060, %3903
  %4062 = fadd fast float %4061, %3687
  %4063 = fmul fast float %4059, %3903
  %4064 = call float @dx.op.binary.f32(i32 35, float %3686, float %4063)  ; FMax(a,b)
  %4065 = and i32 %3833, 16
  %4066 = icmp eq i32 %4065, 0
  br i1 %4066, label %4089, label %4067

; <label>:4067                                    ; preds = %4006
  %4068 = bitcast float %3754 to i32
  %4069 = add i32 %3751, 0
  %4070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4069, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4071 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4070, %dx.types.Handle %3916, float %3844, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float %3849, float %3851, float undef, float %3853, float %3855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4075 = and i32 %4068, 65535
  %4076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4075)  ; LegacyF16ToF32(value)
  %4077 = fmul fast float %4072, %3745
  %4078 = fmul fast float %4073, %3746
  %4079 = fmul fast float %4074, %3747
  %4080 = and i32 %3833, 16384
  %4081 = icmp ne i32 %4080, 0
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = select i1 %4081, float %4083, float 1.000000e+00
  %4085 = fmul fast float %4084, %4076
  %4086 = fmul fast float %4077, %4085
  %4087 = fmul fast float %4078, %4085
  %4088 = fmul fast float %4079, %4085
  br label %4089

; <label>:4089                                    ; preds = %4067, %4006
  %4090 = phi float [ %4086, %4067 ], [ 0.000000e+00, %4006 ]
  %4091 = phi float [ %4087, %4067 ], [ 0.000000e+00, %4006 ]
  %4092 = phi float [ %4088, %4067 ], [ 0.000000e+00, %4006 ]
  %4093 = fsub fast float %4090, %3690
  %4094 = fsub fast float %4091, %3691
  %4095 = fsub fast float %4092, %3692
  %4096 = fmul fast float %4093, %3903
  %4097 = fmul fast float %4094, %3903
  %4098 = fmul fast float %4095, %3903
  %4099 = fadd fast float %4096, %3690
  %4100 = fadd fast float %4097, %3691
  %4101 = fadd fast float %4098, %3692
  br label %3804

; <label>:4102                                    ; preds = %3804
  br label %4103

; <label>:4103                                    ; preds = %4102, %3620
  %4104 = phi float [ 0.000000e+00, %3620 ], [ %3805, %4102 ]
  %4105 = phi float [ %3590, %3620 ], [ %3806, %4102 ]
  %4106 = phi float [ %3588, %3620 ], [ %3807, %4102 ]
  %4107 = phi float [ %3587, %3620 ], [ %3808, %4102 ]
  %4108 = phi float [ 0.000000e+00, %3620 ], [ %3809, %4102 ]
  %4109 = phi float [ %3581, %3620 ], [ %3810, %4102 ]
  %4110 = phi float [ %3582, %3620 ], [ %3811, %4102 ]
  %4111 = phi float [ %3583, %3620 ], [ %3812, %4102 ]
  %4112 = phi float [ %3616, %3620 ], [ %3813, %4102 ]
  %4113 = phi float [ %3617, %3620 ], [ %3814, %4102 ]
  %4114 = phi float [ %3618, %3620 ], [ %3815, %4102 ]
  %4115 = phi float [ %3586, %3620 ], [ %3816, %4102 ]
  %4116 = phi float [ %3585, %3620 ], [ %3817, %4102 ]
  %4117 = phi float [ 0.000000e+00, %3620 ], [ %3818, %4102 ]
  %4118 = phi float [ %3584, %3620 ], [ %3819, %4102 ]
  %4119 = phi float [ %3578, %3620 ], [ %3820, %4102 ]
  %4120 = phi float [ %3579, %3620 ], [ %3821, %4102 ]
  %4121 = phi float [ %3580, %3620 ], [ %3822, %4102 ]
  %4122 = call float @dx.op.dot3.f32(i32 55, float %4112, float %4113, float %4114, float %4112, float %4113, float %4114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4123 = call float @dx.op.unary.f32(i32 25, float %4122)  ; Rsqrt(value)
  %4124 = fmul fast float %4123, %4112
  %4125 = fmul fast float %4123, %4113
  %4126 = fmul fast float %4123, %4114
  %4127 = fadd fast float %4117, %950
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4129 = call float @dx.op.dot3.f32(i32 55, float %4124, float %4125, float %4126, float %4124, float %4125, float %4126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4130 = call float @dx.op.unary.f32(i32 25, float %4129)  ; Rsqrt(value)
  %4131 = fmul fast float %4130, %4124
  %4132 = fmul fast float %4130, %4125
  %4133 = fmul fast float %4130, %4126
  br label %4134

; <label>:4134                                    ; preds = %4103, %3575
  %4135 = phi float [ %4131, %4103 ], [ %3616, %3575 ]
  %4136 = phi float [ %4132, %4103 ], [ %3617, %3575 ]
  %4137 = phi float [ %4133, %4103 ], [ %3618, %3575 ]
  %4138 = phi float [ %4119, %4103 ], [ %3578, %3575 ]
  %4139 = phi float [ %4120, %4103 ], [ %3579, %3575 ]
  %4140 = phi float [ %4121, %4103 ], [ %3580, %3575 ]
  %4141 = phi float [ %4109, %4103 ], [ %3581, %3575 ]
  %4142 = phi float [ %4110, %4103 ], [ %3582, %3575 ]
  %4143 = phi float [ %4111, %4103 ], [ %3583, %3575 ]
  %4144 = phi float [ %4118, %4103 ], [ %3584, %3575 ]
  %4145 = phi float [ %4128, %4103 ], [ %950, %3575 ]
  %4146 = phi float [ %4116, %4103 ], [ %3585, %3575 ]
  %4147 = phi float [ %4115, %4103 ], [ %3586, %3575 ]
  %4148 = phi float [ %4108, %4103 ], [ 0.000000e+00, %3575 ]
  %4149 = phi float [ %4107, %4103 ], [ %3587, %3575 ]
  %4150 = phi float [ %4104, %4103 ], [ 0.000000e+00, %3575 ]
  %4151 = phi float [ %4105, %4103 ], [ %3590, %3575 ]
  %4152 = phi float [ %4106, %4103 ], [ %3588, %3575 ]
  %4153 = fadd fast float %4144, 0xBFB99999A0000000
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = fmul fast float %4154, 0x3FF1C71C80000000
  %4156 = call float @dx.op.binary.f32(i32 36, float %4144, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4157 = fsub fast float 1.000000e+00, %4155
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = fmul fast float %4158, %4138
  %4160 = fmul fast float %4158, %4139
  %4161 = fmul fast float %4158, %4140
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4163 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = fmul fast float %4155, %4138
  %4166 = fmul fast float %4155, %4139
  %4167 = fmul fast float %4155, %4140
  %4168 = fadd fast float %4165, %4156
  %4169 = fadd fast float %4166, %4156
  %4170 = fadd fast float %4167, %4156
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4173 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4174 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.i32 %4175, 3
  %4177 = and i32 %4176, 8
  %4178 = icmp ne i32 %4177, 0
  %4179 = call float @dx.op.binary.f32(i32 35, float %4162, float %4138)  ; FMax(a,b)
  %4180 = call float @dx.op.binary.f32(i32 35, float %4163, float %4138)  ; FMax(a,b)
  %4181 = call float @dx.op.binary.f32(i32 35, float %4164, float %4138)  ; FMax(a,b)
  %4182 = call float @dx.op.dot3.f32(i32 55, float %4162, float %4163, float %4164, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4183 = select i1 %205, float %4138, float %4162
  %4184 = select i1 %205, float %4182, float %4163
  %4185 = select i1 %205, float 1.000000e+00, float %4164
  %4186 = select i1 %4178, float %4179, float %4183
  %4187 = select i1 %4178, float %4180, float %4184
  %4188 = select i1 %4178, float %4181, float %4185
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4192 = extractvalue %dx.types.CBufRet.f32 %4189, 2
  %4193 = fadd fast float %4190, %166
  %4194 = fadd fast float %4191, %167
  %4195 = fadd fast float %4192, %168
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = extractvalue %dx.types.CBufRet.f32 %4196, 1
  %4199 = fsub fast float %4193, %4197
  %4200 = fsub fast float %4194, %4198
  %4201 = fmul fast float %4199, %4199
  %4202 = fmul fast float %4200, %4200
  %4203 = fadd fast float %4201, %4202
  %4204 = call float @dx.op.unary.f32(i32 24, float %4203)  ; Sqrt(value)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4196, 2
  %4206 = fcmp fast olt float %4204, %4205
  br i1 %4206, label %4207, label %4274

; <label>:4207                                    ; preds = %4134
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 0
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.CBufRet.f32 %4208, 1
  %4215 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4216 = extractvalue %dx.types.CBufRet.f32 %4212, 1
  %4217 = extractvalue %dx.types.CBufRet.f32 %4208, 3
  %4218 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4219 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4220 = fadd fast float %4217, %4193
  %4221 = fadd fast float %4218, %4194
  %4222 = fadd fast float %4219, %4195
  %4223 = fmul fast float %4220, %4209
  %4224 = call float @dx.op.tertiary.f32(i32 46, float %4221, float %4211, float %4223)  ; FMad(a,b,c)
  %4225 = call float @dx.op.tertiary.f32(i32 46, float %4222, float %4213, float %4224)  ; FMad(a,b,c)
  %4226 = fmul fast float %4220, %4214
  %4227 = call float @dx.op.tertiary.f32(i32 46, float %4221, float %4215, float %4226)  ; FMad(a,b,c)
  %4228 = call float @dx.op.tertiary.f32(i32 46, float %4222, float %4216, float %4227)  ; FMad(a,b,c)
  %4229 = fsub fast float %4225, %4217
  %4230 = fsub fast float %4228, %4218
  %4231 = fsub fast float %4229, %4197
  %4232 = fadd fast float %4231, %4205
  %4233 = fsub fast float %4230, %4198
  %4234 = fadd fast float %4233, %4205
  %4235 = extractvalue %dx.types.CBufRet.f32 %4196, 3
  %4236 = fmul fast float %4232, %4235
  %4237 = fmul fast float %4234, %4235
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4240 = fsub fast float 1.000000e+00, %4238
  %4241 = fsub fast float 1.000000e+00, %4239
  %4242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %4240, float %4241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = fcmp fast ugt float %4243, 0.000000e+00
  br i1 %4244, label %4245, label %4548

; <label>:4245                                    ; preds = %4207
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 2
  %4248 = fmul fast float %4247, %4243
  %4249 = extractvalue %dx.types.CBufRet.f32 %4246, 3
  %4250 = fadd fast float %4249, %4248
  %4251 = extractvalue %dx.types.CBufRet.f32 %4212, 2
  %4252 = fadd fast float %4250, %4219
  %4253 = fmul fast float %4225, %4213
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4216, float %4253)  ; FMad(a,b,c)
  %4255 = call float @dx.op.tertiary.f32(i32 46, float %4252, float %4251, float %4254)  ; FMad(a,b,c)
  %4256 = fsub fast float %4255, %4219
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 2
  %4259 = fsub fast float %4256, %4258
  %4260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %4240, float %4241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4260, 2
  %4264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %4240, float %4241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = extractvalue %dx.types.ResRet.f32 %4264, 1
  %4267 = extractvalue %dx.types.ResRet.f32 %4264, 2
  %4268 = fadd fast float %4265, %4261
  %4269 = fmul fast float %4268, 0x3F847AE140000000
  %4270 = fadd fast float %4266, %4262
  %4271 = fmul fast float %4270, 0x3F847AE140000000
  %4272 = fadd fast float %4267, %4263
  %4273 = fmul fast float %4272, 0x3F847AE140000000
  br label %4548

; <label>:4274                                    ; preds = %4134
  %4275 = and i32 %184, 1
  %4276 = icmp eq i32 %4275, 0
  br i1 %4276, label %4548, label %4277

; <label>:4277                                    ; preds = %4274
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 0
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 0
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4284 = extractvalue %dx.types.CBufRet.f32 %4278, 1
  %4285 = extractvalue %dx.types.CBufRet.f32 %4280, 1
  %4286 = extractvalue %dx.types.CBufRet.f32 %4282, 1
  %4287 = extractvalue %dx.types.CBufRet.f32 %4278, 3
  %4288 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4289 = extractvalue %dx.types.CBufRet.f32 %4282, 3
  %4290 = fadd fast float %4287, %4193
  %4291 = fadd fast float %4288, %4194
  %4292 = fadd fast float %4289, %4195
  %4293 = fmul fast float %4290, %4279
  %4294 = call float @dx.op.tertiary.f32(i32 46, float %4291, float %4281, float %4293)  ; FMad(a,b,c)
  %4295 = call float @dx.op.tertiary.f32(i32 46, float %4292, float %4283, float %4294)  ; FMad(a,b,c)
  %4296 = fmul fast float %4290, %4284
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4291, float %4285, float %4296)  ; FMad(a,b,c)
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4292, float %4286, float %4297)  ; FMad(a,b,c)
  %4299 = fsub fast float %4295, %4287
  %4300 = fsub fast float %4298, %4288
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4305 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 3
  %4308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.i32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.i32 %4308, 1
  %4311 = udiv i32 %4310, %4309
  %4312 = fsub fast float %4299, %4302
  %4313 = fsub fast float %4300, %4303
  %4314 = call float @dx.op.binary.f32(i32 35, float %4312, float 0.000000e+00)  ; FMax(a,b)
  %4315 = call float @dx.op.binary.f32(i32 35, float %4313, float 0.000000e+00)  ; FMax(a,b)
  %4316 = call float @dx.op.binary.f32(i32 36, float %4314, float %4304)  ; FMin(a,b)
  %4317 = call float @dx.op.binary.f32(i32 36, float %4315, float %4305)  ; FMin(a,b)
  %4318 = add i32 %4309, -1
  %4319 = add i32 %4311, -1
  %4320 = fmul fast float %4316, %4307
  %4321 = fmul fast float %4317, %4307
  %4322 = fptoui float %4320 to i32
  %4323 = fptoui float %4321 to i32
  %4324 = call i32 @dx.op.binary.i32(i32 40, i32 %4322, i32 %4318)  ; UMin(a,b)
  %4325 = call i32 @dx.op.binary.i32(i32 40, i32 %4323, i32 %4319)  ; UMin(a,b)
  %4326 = mul i32 %4325, %4309
  %4327 = add i32 %4326, %4324
  %4328 = shl i32 %4327, 2
  %4329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4328, i32 undef)  ; BufferLoad(srv,index,wot)
  %4330 = extractvalue %dx.types.ResRet.i32 %4329, 0
  %4331 = icmp eq i32 %4330, -1
  br i1 %4331, label %4548, label %4332

; <label>:4332                                    ; preds = %4277
  %4333 = mul i32 %4330, 148
  %4334 = add i32 %4333, 4
  %4335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = add i32 %4333, 8
  %4338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = add i32 %4333, 36
  %4341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = add i32 %4333, 60
  %4344 = add i32 %4333, 92
  %4345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.i32 %4345, 0
  %4347 = add i32 %4333, 116
  %4348 = fsub fast float %4299, %4336
  %4349 = fsub fast float %4300, %4339
  %4350 = fmul fast float %4307, %4348
  %4351 = fmul fast float %4307, %4349
  %4352 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4354 = fsub fast float 1.000000e+00, %4353
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4357 = call float @dx.op.unary.f32(i32 83, float %4352)  ; DerivCoarseX(value)
  %4358 = call float @dx.op.unary.f32(i32 83, float %4354)  ; DerivCoarseX(value)
  %4359 = call float @dx.op.unary.f32(i32 84, float %4352)  ; DerivCoarseY(value)
  %4360 = call float @dx.op.unary.f32(i32 84, float %4354)  ; DerivCoarseY(value)
  %4361 = fmul fast float %4357, %4356
  %4362 = fmul fast float %4358, %4356
  %4363 = fmul fast float %4359, %4356
  %4364 = fmul fast float %4360, %4356
  %4365 = call float @dx.op.dot2.f32(i32 54, float %4363, float %4364, float %4363, float %4364)  ; Dot2(ax,ay,bx,by)
  %4366 = call float @dx.op.dot2.f32(i32 54, float %4361, float %4362, float %4361, float %4362)  ; Dot2(ax,ay,bx,by)
  %4367 = call float @dx.op.binary.f32(i32 35, float %4366, float %4365)  ; FMax(a,b)
  %4368 = call float @dx.op.unary.f32(i32 23, float %4367)  ; Log(value)
  %4369 = fmul fast float %4368, 5.000000e-01
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4372 = fadd fast float %4371, %4369
  %4373 = call float @dx.op.binary.f32(i32 35, float %4372, float 0.000000e+00)  ; FMax(a,b)
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4376 = fadd fast float %4375, %4373
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4379 = fadd fast float %4376, %4378
  %4380 = add i32 %4346, 0
  %4381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4380, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4382 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4381, i32 0)  ; GetDimensions(handle,mipLevel)
  %4383 = extractvalue %dx.types.Dimensions %4382, 0
  %4384 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4383)  ; FirstbitLo(value)
  %4385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.i32 %4385, 1
  %4387 = sub nsw i32 %4386, %4384
  %4388 = sitofp i32 %4387 to float
  %4389 = fsub fast float %4379, %4388
  %4390 = call float @dx.op.binary.f32(i32 35, float %4389, float 0.000000e+00)  ; FMax(a,b)
  %4391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4381, %dx.types.Handle %27, float %4352, float %4354, float %4342, float undef, i32 0, i32 0, i32 undef, float %4390)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = fcmp ule float %4392, 0x3FE0101020000000
  %4394 = extractvalue %dx.types.CBufRet.i32 %4385, 0
  %4395 = and i32 %4394, 128
  %4396 = icmp ne i32 %4395, 0
  %4397 = and i1 %4393, %4396
  br i1 %4397, label %4548, label %4398

; <label>:4398                                    ; preds = %4332
  %4399 = add i32 %4333, 20
  %4400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = add i32 %4333, 24
  %4403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = add i32 %4333, 40
  %4406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4407 = extractvalue %dx.types.ResRet.f32 %4406, 0
  %4408 = add i32 %4333, 96
  %4409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4408, i32 undef)  ; BufferLoad(srv,index,wot)
  %4410 = extractvalue %dx.types.ResRet.i32 %4409, 0
  %4411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.f32 %4411, 2
  %4413 = fmul fast float %4412, %4352
  %4414 = fmul fast float %4412, %4354
  %4415 = extractvalue %dx.types.CBufRet.f32 %4411, 3
  %4416 = fadd fast float %4413, %4415
  %4417 = fadd fast float %4414, %4415
  %4418 = add i32 %4410, 0
  %4419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4418, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4420 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4419, i32 0)  ; GetDimensions(handle,mipLevel)
  %4421 = extractvalue %dx.types.Dimensions %4420, 0
  %4422 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4421)  ; FirstbitLo(value)
  %4423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.i32 %4423, 1
  %4425 = sub nsw i32 %4424, %4422
  %4426 = sitofp i32 %4425 to float
  %4427 = fsub fast float %4376, %4426
  %4428 = call float @dx.op.binary.f32(i32 35, float %4427, float 0.000000e+00)  ; FMax(a,b)
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4419, %dx.types.Handle %27, float %4416, float %4417, float %4407, float undef, i32 0, i32 0, i32 undef, float %4428)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = fmul fast float %4430, %4401
  %4432 = fadd fast float %4431, %4404
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 0
  %4435 = extractvalue %dx.types.CBufRet.f32 %4433, 1
  %4436 = extractvalue %dx.types.CBufRet.f32 %4433, 2
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 3
  %4441 = extractvalue %dx.types.CBufRet.f32 %4433, 3
  %4442 = fadd fast float %4438, %4299
  %4443 = fadd fast float %4440, %4300
  %4444 = fadd fast float %4432, %4441
  %4445 = fmul fast float %4442, %4434
  %4446 = call float @dx.op.tertiary.f32(i32 46, float %4443, float %4435, float %4445)  ; FMad(a,b,c)
  %4447 = call float @dx.op.tertiary.f32(i32 46, float %4444, float %4436, float %4446)  ; FMad(a,b,c)
  %4448 = fsub fast float %4447, %4441
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 2
  %4451 = fsub fast float %4448, %4450
  %4452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.i32 %4452, 0
  %4454 = call i32 @dx.op.binary.i32(i32 40, i32 %4330, i32 %4453)  ; UMin(a,b)
  %4455 = mul i32 %4454, 36
  %4456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4455, i32 undef)  ; BufferLoad(srv,index,wot)
  %4457 = extractvalue %dx.types.ResRet.i32 %4456, 0
  %4458 = add i32 %4455, 4
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = fmul fast float %4460, %4352
  %4462 = fmul fast float %4460, %4354
  %4463 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4464 = fadd fast float %4461, %4463
  %4465 = fadd fast float %4462, %4463
  %4466 = icmp eq i32 %4457, 0
  br i1 %4466, label %4535, label %4467

; <label>:4467                                    ; preds = %4398
  br label %4468

; <label>:4468                                    ; preds = %4525, %4467
  %4469 = phi float [ %4526, %4525 ], [ 0.000000e+00, %4467 ]
  %4470 = phi float [ %4527, %4525 ], [ 0.000000e+00, %4467 ]
  %4471 = phi float [ %4528, %4525 ], [ 0.000000e+00, %4467 ]
  %4472 = phi float [ %4529, %4525 ], [ 0.000000e+00, %4467 ]
  %4473 = phi float [ %4530, %4525 ], [ 0.000000e+00, %4467 ]
  %4474 = phi float [ %4531, %4525 ], [ 0.000000e+00, %4467 ]
  %4475 = phi i32 [ %4532, %4525 ], [ 0, %4467 ]
  %4476 = shl i32 %4475, 2
  %4477 = add i32 %4343, %4476
  %4478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4477, i32 undef)  ; BufferLoad(srv,index,wot)
  %4479 = extractvalue %dx.types.ResRet.f32 %4478, 0
  %4480 = add i32 %4347, %4476
  %4481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4480, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.i32 %4481, 0
  %4483 = add i32 %4482, 0
  %4484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4483, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4485 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4484, i32 0)  ; GetDimensions(handle,mipLevel)
  %4486 = extractvalue %dx.types.Dimensions %4485, 0
  %4487 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4486)  ; FirstbitLo(value)
  %4488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.i32 %4488, 1
  %4490 = sub nsw i32 %4489, %4487
  %4491 = sitofp i32 %4490 to float
  %4492 = fsub fast float %4376, %4491
  %4493 = call float @dx.op.binary.f32(i32 35, float %4492, float 0.000000e+00)  ; FMax(a,b)
  %4494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4484, %dx.types.Handle %27, float %4464, float %4465, float %4479, float undef, i32 0, i32 0, i32 undef, float %4493)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = fcmp fast ogt float %4495, 0.000000e+00
  br i1 %4496, label %4497, label %4525

; <label>:4497                                    ; preds = %4468
  %4498 = add i32 %4458, %4476
  %4499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.i32 %4499, 0
  %4501 = and i32 %4500, 32767
  %4502 = mul nuw nsw i32 %4501, 928
  %4503 = add nuw nsw i32 %4502, 48
  %4504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.f32 %4504, 0
  %4506 = extractvalue %dx.types.ResRet.f32 %4504, 1
  %4507 = extractvalue %dx.types.ResRet.f32 %4504, 2
  %4508 = add nuw nsw i32 %4502, 60
  %4509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4508, i32 undef)  ; BufferLoad(srv,index,wot)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = fmul fast float %4505, %4495
  %4514 = fmul fast float %4506, %4495
  %4515 = fmul fast float %4507, %4495
  %4516 = fadd fast float %4513, %4469
  %4517 = fadd fast float %4514, %4470
  %4518 = fadd fast float %4515, %4471
  %4519 = fmul fast float %4510, %4495
  %4520 = fmul fast float %4511, %4495
  %4521 = fmul fast float %4512, %4495
  %4522 = fadd fast float %4519, %4472
  %4523 = fadd fast float %4520, %4473
  %4524 = fadd fast float %4521, %4474
  br label %4525

; <label>:4525                                    ; preds = %4497, %4468
  %4526 = phi float [ %4516, %4497 ], [ %4469, %4468 ]
  %4527 = phi float [ %4517, %4497 ], [ %4470, %4468 ]
  %4528 = phi float [ %4518, %4497 ], [ %4471, %4468 ]
  %4529 = phi float [ %4522, %4497 ], [ %4472, %4468 ]
  %4530 = phi float [ %4523, %4497 ], [ %4473, %4468 ]
  %4531 = phi float [ %4524, %4497 ], [ %4474, %4468 ]
  %4532 = add nuw i32 %4475, 1
  %4533 = icmp eq i32 %4532, %4457
  br i1 %4533, label %4534, label %4468

; <label>:4534                                    ; preds = %4525
  br label %4535

; <label>:4535                                    ; preds = %4534, %4398
  %4536 = phi float [ 0.000000e+00, %4398 ], [ %4526, %4534 ]
  %4537 = phi float [ 0.000000e+00, %4398 ], [ %4527, %4534 ]
  %4538 = phi float [ 0.000000e+00, %4398 ], [ %4528, %4534 ]
  %4539 = phi float [ 0.000000e+00, %4398 ], [ %4529, %4534 ]
  %4540 = phi float [ 0.000000e+00, %4398 ], [ %4530, %4534 ]
  %4541 = phi float [ 0.000000e+00, %4398 ], [ %4531, %4534 ]
  %4542 = fadd fast float %4539, %4536
  %4543 = fmul fast float %4542, 0x3F847AE140000000
  %4544 = fadd fast float %4540, %4537
  %4545 = fmul fast float %4544, 0x3F847AE140000000
  %4546 = fadd fast float %4541, %4538
  %4547 = fmul fast float %4546, 0x3F847AE140000000
  br label %4548

; <label>:4548                                    ; preds = %4535, %4332, %4277, %4274, %4245, %4207
  %4549 = phi float [ %4259, %4245 ], [ -1.310720e+05, %4207 ], [ %4451, %4535 ], [ -1.310720e+05, %4277 ], [ -1.310720e+05, %4332 ], [ -1.310720e+05, %4274 ]
  %4550 = phi float [ %4269, %4245 ], [ 0.000000e+00, %4207 ], [ %4543, %4535 ], [ 0.000000e+00, %4277 ], [ 0.000000e+00, %4332 ], [ 0.000000e+00, %4274 ]
  %4551 = phi float [ %4271, %4245 ], [ 0.000000e+00, %4207 ], [ %4545, %4535 ], [ 0.000000e+00, %4277 ], [ 0.000000e+00, %4332 ], [ 0.000000e+00, %4274 ]
  %4552 = phi float [ %4273, %4245 ], [ 0.000000e+00, %4207 ], [ %4547, %4535 ], [ 0.000000e+00, %4277 ], [ 0.000000e+00, %4332 ], [ 0.000000e+00, %4274 ]
  %4553 = phi i1 [ true, %4245 ], [ false, %4207 ], [ true, %4535 ], [ false, %4277 ], [ false, %4332 ], [ false, %4274 ]
  %4554 = and i32 %184, 3
  %4555 = icmp eq i32 %4554, 1
  %4556 = select i1 %4555, float 1.000000e+00, float 0.000000e+00
  %4557 = fsub fast float %4549, %168
  %4558 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4559 = select i1 %4553, float %4558, float 1.000000e+00
  %4560 = fmul fast float %4559, %4556
  %4561 = icmp eq i32 %4554, 3
  %4562 = select i1 %4561, float 1.000000e+00, float %4560
  %4563 = call float @dx.op.binary.f32(i32 35, float %4150, float %4562)  ; FMax(a,b)
  %4564 = fcmp fast olt float %4562, 1.000000e+00
  %4565 = fcmp uge float %49, 0.000000e+00
  %4566 = and i1 %4565, %4564
  br i1 %4566, label %4567, label %4577

; <label>:4567                                    ; preds = %4548
  %4568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = extractvalue %dx.types.ResRet.f32 %4568, 1
  %4571 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4572 = fadd fast float %4569, %4563
  %4573 = fcmp ule float %48, 0.000000e+00
  %4574 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4575 = select i1 %4573, float %4574, float 1.000000e+00
  %4576 = fmul fast float %4575, %4571
  br label %4577

; <label>:4577                                    ; preds = %4567, %4548
  %4578 = phi float [ %4572, %4567 ], [ %4563, %4548 ]
  %4579 = phi float [ %4570, %4567 ], [ 0.000000e+00, %4548 ]
  %4580 = phi float [ %4576, %4567 ], [ 0.000000e+00, %4548 ]
  %4581 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4582 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4583 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4584 = fcmp fast une float %4582, 0.000000e+00
  %4585 = fcmp fast une float %4583, 0.000000e+00
  %4586 = or i1 %4584, %4585
  br i1 %4586, label %4587, label %5146

; <label>:4587                                    ; preds = %4577
  br i1 %4584, label %4588, label %4861

; <label>:4588                                    ; preds = %4587
  %4589 = call float @dx.op.unary.f32(i32 23, float %4147)  ; Log(value)
  %4590 = fmul fast float %4589, 4.000000e+00
  %4591 = call float @dx.op.unary.f32(i32 21, float %4590)  ; Exp(value)
  %4592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4593 = extractvalue %dx.types.CBufRet.f32 %4592, 0
  %4594 = fmul fast float %4593, %36
  %4595 = fmul fast float %4593, %37
  %4596 = fmul fast float %4593, %38
  %4597 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4598 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4599 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4600 = call float @dx.op.unary.f32(i32 23, float %4597)  ; Log(value)
  %4601 = call float @dx.op.unary.f32(i32 23, float %4598)  ; Log(value)
  %4602 = call float @dx.op.unary.f32(i32 23, float %4599)  ; Log(value)
  %4603 = fmul fast float %4600, 4.000000e+00
  %4604 = fmul fast float %4601, 4.000000e+00
  %4605 = fmul fast float %4602, 4.000000e+00
  %4606 = call float @dx.op.unary.f32(i32 21, float %4603)  ; Exp(value)
  %4607 = call float @dx.op.unary.f32(i32 21, float %4604)  ; Exp(value)
  %4608 = call float @dx.op.unary.f32(i32 21, float %4605)  ; Exp(value)
  %4609 = fadd fast float %4607, %4606
  %4610 = fadd fast float %4609, %4608
  %4611 = fdiv fast float 1.000000e+00, %4610
  %4612 = fmul fast float %4611, %4606
  %4613 = fcmp fast ogt float %45, 0.000000e+00
  %4614 = fcmp fast ogt float %46, 0.000000e+00
  %4615 = fcmp fast ogt float %47, 0.000000e+00
  %4616 = fcmp fast olt float %45, 0.000000e+00
  %4617 = fcmp fast olt float %46, 0.000000e+00
  %4618 = fcmp fast olt float %47, 0.000000e+00
  %4619 = zext i1 %4613 to i32
  %4620 = zext i1 %4614 to i32
  %4621 = zext i1 %4615 to i32
  %4622 = zext i1 %4616 to i32
  %4623 = zext i1 %4617 to i32
  %4624 = zext i1 %4618 to i32
  %4625 = sub nsw i32 %4619, %4622
  %4626 = sub nsw i32 %4620, %4623
  %4627 = sub nsw i32 %4621, %4624
  %4628 = call float @dx.op.unary.f32(i32 83, float %4594)  ; DerivCoarseX(value)
  %4629 = call float @dx.op.unary.f32(i32 83, float %4595)  ; DerivCoarseX(value)
  %4630 = call float @dx.op.unary.f32(i32 83, float %4596)  ; DerivCoarseX(value)
  %4631 = call float @dx.op.unary.f32(i32 84, float %4594)  ; DerivCoarseY(value)
  %4632 = call float @dx.op.unary.f32(i32 84, float %4595)  ; DerivCoarseY(value)
  %4633 = call float @dx.op.unary.f32(i32 84, float %4596)  ; DerivCoarseY(value)
  %4634 = fcmp fast ole float %216, %4612
  %4635 = fmul fast float %4611, %4609
  %4636 = fcmp fast ole float %216, %4635
  %4637 = select i1 %4636, float %4596, float %4594
  %4638 = select i1 %4636, float %4594, float %4595
  %4639 = select i1 %4634, float %4595, float %4637
  %4640 = select i1 %4634, float %4596, float %4638
  %4641 = select i1 %4636, float %4630, float %4628
  %4642 = select i1 %4636, float %4628, float %4629
  %4643 = select i1 %4634, float %4629, float %4641
  %4644 = select i1 %4634, float %4630, float %4642
  %4645 = select i1 %4636, float %4633, float %4631
  %4646 = select i1 %4636, float %4631, float %4632
  %4647 = select i1 %4634, float %4632, float %4645
  %4648 = select i1 %4634, float %4633, float %4646
  %4649 = call float @dx.op.unary.f32(i32 27, float %4639)  ; Round_ni(value)
  %4650 = call float @dx.op.unary.f32(i32 27, float %4640)  ; Round_ni(value)
  %4651 = fptosi float %4649 to i32
  %4652 = fptosi float %4650 to i32
  %4653 = xor i32 %4652, %4651
  %4654 = sitofp i32 %4653 to float
  %4655 = fptosi float %4654 to i32
  %4656 = sitofp i32 %4655 to float
  %4657 = fmul fast float %4656, 0x3FE3C6EF40000000
  %4658 = frem fast float %4649, 2.560000e+02
  %4659 = frem fast float %4650, 2.560000e+02
  %4660 = fptoui float %4658 to i32
  %4661 = fptoui float %4659 to i32
  %4662 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4660, i32 %4661, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4662, 2
  %4666 = fadd fast float %4663, %4657
  %4667 = fadd fast float %4664, %4657
  %4668 = fadd fast float %4665, %4657
  %4669 = call float @dx.op.unary.f32(i32 22, float %4666)  ; Frc(value)
  %4670 = call float @dx.op.unary.f32(i32 22, float %4667)  ; Frc(value)
  %4671 = call float @dx.op.unary.f32(i32 22, float %4668)  ; Frc(value)
  %4672 = fmul fast float %4671, 0x401921FB60000000
  %4673 = call float @dx.op.unary.f32(i32 13, float %4672)  ; Sin(value)
  %4674 = call float @dx.op.unary.f32(i32 12, float %4672)  ; Cos(value)
  %4675 = fsub fast float -0.000000e+00, %4674
  %4676 = fmul fast float %4674, %4639
  %4677 = call float @dx.op.tertiary.f32(i32 46, float %4673, float %4640, float %4676)  ; FMad(a,b,c)
  %4678 = fmul fast float %4673, %4639
  %4679 = call float @dx.op.tertiary.f32(i32 46, float %4675, float %4640, float %4678)  ; FMad(a,b,c)
  %4680 = fadd fast float %4677, %4669
  %4681 = fadd fast float %4679, %4670
  %4682 = extractvalue %dx.types.CBufRet.f32 %4592, 3
  %4683 = bitcast float %4682 to i32
  %4684 = icmp eq i32 %4683, 0
  br i1 %4684, label %4723, label %4685

; <label>:4685                                    ; preds = %4588
  %4686 = add i32 %4683, 0
  %4687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4687, %dx.types.Handle %80, float %4680, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4643, float %4644, float undef, float %4647, float %4648, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4690, 1
  %4692 = extractvalue %dx.types.CBufRet.f32 %4690, 2
  %4693 = fsub fast float 1.000000e+00, %4582
  %4694 = call float @dx.op.binary.f32(i32 35, float %4693, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4695 = bitcast float %4582 to i32
  %4696 = sitofp i32 %4695 to float
  %4697 = fadd fast float %4696, 0xC1CFBF8940000000
  %4698 = fmul fast float %4692, %4697
  %4699 = fadd fast float %4698, 0x41CFBF8940000000
  %4700 = fptosi float %4699 to i32
  %4701 = bitcast i32 %4700 to float
  %4702 = bitcast float %4694 to i32
  %4703 = sitofp i32 %4702 to float
  %4704 = fadd fast float %4703, 0xC1CFBF8940000000
  %4705 = fmul fast float %4704, %4692
  %4706 = fadd fast float %4705, 0x41CFBF8940000000
  %4707 = fptosi float %4706 to i32
  %4708 = bitcast i32 %4707 to float
  %4709 = fmul fast float %4701, %4691
  %4710 = fmul fast float %4708, %4691
  %4711 = fsub fast float %4694, %4709
  %4712 = fadd fast float %4710, %4694
  %4713 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4714 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4715 = fsub fast float %4689, %4713
  %4716 = fsub fast float %4714, %4713
  %4717 = bitcast float %4716 to i32
  %4718 = sub nsw i32 2129859010, %4717
  %4719 = bitcast i32 %4718 to float
  %4720 = fmul fast float %4719, %4715
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fcmp fast olt float %4721, 0x3F70101020000000
  br i1 %4722, label %4861, label %4723

; <label>:4723                                    ; preds = %4685, %4588
  %4724 = phi float [ %4721, %4685 ], [ %4582, %4588 ]
  %4725 = fmul fast float %4724, %4591
  %4726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.i32 %4726, 1
  %4728 = extractvalue %dx.types.CBufRet.i32 %4726, 0
  %4729 = add i32 %4728, 0
  %4730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4729, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4731 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4730, %dx.types.Handle %79, float %4680, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4643, float %4644, float undef, float %4647, float %4648, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4732 = extractvalue %dx.types.ResRet.f32 %4731, 0
  %4733 = extractvalue %dx.types.ResRet.f32 %4731, 1
  %4734 = extractvalue %dx.types.ResRet.f32 %4731, 2
  %4735 = extractvalue %dx.types.ResRet.f32 %4731, 3
  %4736 = and i32 %4727, 255
  %4737 = uitofp i32 %4736 to float
  %4738 = lshr i32 %4727, 8
  %4739 = and i32 %4738, 255
  %4740 = uitofp i32 %4739 to float
  %4741 = fmul fast float %4735, %4737
  %4742 = fadd fast float %4741, %4740
  %4743 = fmul fast float %4742, 0x3F70101000000000
  %4744 = fadd fast float %4743, 0xBFB99999A0000000
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4745, 0x3FF1C71C80000000
  %4747 = call float @dx.op.binary.f32(i32 36, float %4743, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4748 = fsub fast float 1.000000e+00, %4746
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4749, %4732
  %4751 = fmul fast float %4749, %4733
  %4752 = fmul fast float %4749, %4734
  %4753 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4755 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4756 = fmul fast float %4746, %4732
  %4757 = fmul fast float %4746, %4733
  %4758 = fmul fast float %4746, %4734
  %4759 = fadd fast float %4756, %4747
  %4760 = fadd fast float %4757, %4747
  %4761 = fadd fast float %4758, %4747
  %4762 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4763 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4764 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.i32 %4765, 3
  %4767 = extractvalue %dx.types.CBufRet.i32 %4765, 2
  %4768 = add i32 %4767, 0
  %4769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4770 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4769, %dx.types.Handle %79, float %4680, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4643, float %4644, float undef, float %4647, float %4648, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.ResRet.f32 %4770, 1
  %4773 = extractvalue %dx.types.ResRet.f32 %4770, 2
  %4774 = extractvalue %dx.types.ResRet.f32 %4770, 3
  %4775 = and i32 %4766, 255
  %4776 = uitofp i32 %4775 to float
  %4777 = lshr i32 %4766, 8
  %4778 = and i32 %4777, 255
  %4779 = uitofp i32 %4778 to float
  %4780 = lshr i32 %4766, 16
  %4781 = and i32 %4780, 255
  %4782 = uitofp i32 %4781 to float
  %4783 = fmul fast float %4782, 0x3F70101000000000
  %4784 = fmul fast float %4771, %4776
  %4785 = fadd fast float %4784, %4779
  %4786 = fmul fast float %4785, 0x3F70101000000000
  %4787 = fadd fast float %4772, -5.000000e-01
  %4788 = fadd fast float %4774, -5.000000e-01
  %4789 = fmul fast float %4787, %4783
  %4790 = fmul fast float %4788, %4783
  %4791 = fadd fast float %4789, 5.000000e-01
  %4792 = fadd fast float %4790, 5.000000e-01
  %4793 = fmul fast float %4791, 2.000000e+00
  %4794 = fadd fast float %4793, -1.000000e+00
  %4795 = fmul fast float %4792, 2.000000e+00
  %4796 = fadd fast float %4795, -1.000000e+00
  %4797 = fadd fast float %4794, %4796
  %4798 = fmul fast float %4797, 5.000000e-01
  %4799 = fsub fast float %4794, %4796
  %4800 = fmul fast float %4799, 5.000000e-01
  %4801 = call float @dx.op.unary.f32(i32 6, float %4798)  ; FAbs(value)
  %4802 = fsub fast float 1.000000e+00, %4801
  %4803 = call float @dx.op.unary.f32(i32 6, float %4800)  ; FAbs(value)
  %4804 = fsub fast float %4802, %4803
  %4805 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4800, float %4804, float %4798, float %4800, float %4804)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = call float @dx.op.unary.f32(i32 25, float %4805)  ; Rsqrt(value)
  %4807 = fmul fast float %4798, %4806
  %4808 = fmul fast float %4800, %4806
  %4809 = select i1 %4636, i32 %4626, i32 %4627
  %4810 = select i1 %4634, i32 %4625, i32 %4809
  %4811 = sitofp i32 %4810 to float
  %4812 = fmul fast float %4804, %4811
  %4813 = fmul fast float %4812, %4806
  %4814 = select i1 %4636, float %4813, float %4808
  %4815 = select i1 %4636, float %4808, float %4813
  %4816 = select i1 %4634, float %4813, float %4807
  %4817 = select i1 %4634, float %4808, float %4814
  %4818 = select i1 %4634, float %4807, float %4815
  %4819 = fsub fast float %4753, %4186
  %4820 = fsub fast float %4754, %4187
  %4821 = fsub fast float %4755, %4188
  %4822 = fmul fast float %4819, %4725
  %4823 = fmul fast float %4820, %4725
  %4824 = fmul fast float %4821, %4725
  %4825 = fadd fast float %4822, %4186
  %4826 = fadd fast float %4823, %4187
  %4827 = fadd fast float %4824, %4188
  %4828 = fsub fast float %4762, %4171
  %4829 = fsub fast float %4763, %4172
  %4830 = fsub fast float %4764, %4173
  %4831 = fmul fast float %4828, %4725
  %4832 = fmul fast float %4829, %4725
  %4833 = fmul fast float %4830, %4725
  %4834 = fadd fast float %4831, %4171
  %4835 = fadd fast float %4832, %4172
  %4836 = fadd fast float %4833, %4173
  %4837 = fadd fast float %4816, %4135
  %4838 = fadd fast float %4817, %4136
  %4839 = fadd fast float %4818, %4137
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4837, float %4838, float %4839, float %4837, float %4838, float %4839)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.unary.f32(i32 25, float %4840)  ; Rsqrt(value)
  %4842 = fmul fast float %4837, %4841
  %4843 = fmul fast float %4838, %4841
  %4844 = fmul fast float %4839, %4841
  %4845 = fsub fast float %4842, %4135
  %4846 = fsub fast float %4843, %4136
  %4847 = fsub fast float %4844, %4137
  %4848 = fmul fast float %4845, %4725
  %4849 = fmul fast float %4846, %4725
  %4850 = fmul fast float %4847, %4725
  %4851 = fadd fast float %4848, %4135
  %4852 = fadd fast float %4849, %4136
  %4853 = fadd fast float %4850, %4137
  %4854 = call float @dx.op.binary.f32(i32 36, float %4147, float %4773)  ; FMin(a,b)
  %4855 = fsub fast float %4854, %4147
  %4856 = fmul fast float %4855, %4725
  %4857 = fadd fast float %4856, %4147
  %4858 = fsub fast float %4786, %4174
  %4859 = fmul fast float %4858, %4725
  %4860 = fadd fast float %4859, %4174
  br label %4861

; <label>:4861                                    ; preds = %4723, %4685, %4587
  %4862 = phi float [ %4834, %4723 ], [ %4171, %4685 ], [ %4171, %4587 ]
  %4863 = phi float [ %4835, %4723 ], [ %4172, %4685 ], [ %4172, %4587 ]
  %4864 = phi float [ %4836, %4723 ], [ %4173, %4685 ], [ %4173, %4587 ]
  %4865 = phi float [ %4825, %4723 ], [ %4186, %4685 ], [ %4186, %4587 ]
  %4866 = phi float [ %4826, %4723 ], [ %4187, %4685 ], [ %4187, %4587 ]
  %4867 = phi float [ %4827, %4723 ], [ %4188, %4685 ], [ %4188, %4587 ]
  %4868 = phi float [ %4851, %4723 ], [ %4135, %4685 ], [ %4135, %4587 ]
  %4869 = phi float [ %4852, %4723 ], [ %4136, %4685 ], [ %4136, %4587 ]
  %4870 = phi float [ %4853, %4723 ], [ %4137, %4685 ], [ %4137, %4587 ]
  %4871 = phi float [ %4860, %4723 ], [ %4174, %4685 ], [ %4174, %4587 ]
  %4872 = phi float [ %4857, %4723 ], [ %4147, %4685 ], [ %4147, %4587 ]
  br i1 %4585, label %4873, label %5146

; <label>:4873                                    ; preds = %4861
  %4874 = call float @dx.op.unary.f32(i32 23, float %4872)  ; Log(value)
  %4875 = fmul fast float %4874, 4.000000e+00
  %4876 = call float @dx.op.unary.f32(i32 21, float %4875)  ; Exp(value)
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = fmul fast float %4878, %36
  %4880 = fmul fast float %4878, %37
  %4881 = fmul fast float %4878, %38
  %4882 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4883 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4884 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4885 = call float @dx.op.unary.f32(i32 23, float %4882)  ; Log(value)
  %4886 = call float @dx.op.unary.f32(i32 23, float %4883)  ; Log(value)
  %4887 = call float @dx.op.unary.f32(i32 23, float %4884)  ; Log(value)
  %4888 = fmul fast float %4885, 4.000000e+00
  %4889 = fmul fast float %4886, 4.000000e+00
  %4890 = fmul fast float %4887, 4.000000e+00
  %4891 = call float @dx.op.unary.f32(i32 21, float %4888)  ; Exp(value)
  %4892 = call float @dx.op.unary.f32(i32 21, float %4889)  ; Exp(value)
  %4893 = call float @dx.op.unary.f32(i32 21, float %4890)  ; Exp(value)
  %4894 = fadd fast float %4892, %4891
  %4895 = fadd fast float %4894, %4893
  %4896 = fdiv fast float 1.000000e+00, %4895
  %4897 = fmul fast float %4896, %4891
  %4898 = fcmp fast ogt float %45, 0.000000e+00
  %4899 = fcmp fast ogt float %46, 0.000000e+00
  %4900 = fcmp fast ogt float %47, 0.000000e+00
  %4901 = fcmp fast olt float %45, 0.000000e+00
  %4902 = fcmp fast olt float %46, 0.000000e+00
  %4903 = fcmp fast olt float %47, 0.000000e+00
  %4904 = zext i1 %4898 to i32
  %4905 = zext i1 %4899 to i32
  %4906 = zext i1 %4900 to i32
  %4907 = zext i1 %4901 to i32
  %4908 = zext i1 %4902 to i32
  %4909 = zext i1 %4903 to i32
  %4910 = sub nsw i32 %4904, %4907
  %4911 = sub nsw i32 %4905, %4908
  %4912 = sub nsw i32 %4906, %4909
  %4913 = call float @dx.op.unary.f32(i32 83, float %4879)  ; DerivCoarseX(value)
  %4914 = call float @dx.op.unary.f32(i32 83, float %4880)  ; DerivCoarseX(value)
  %4915 = call float @dx.op.unary.f32(i32 83, float %4881)  ; DerivCoarseX(value)
  %4916 = call float @dx.op.unary.f32(i32 84, float %4879)  ; DerivCoarseY(value)
  %4917 = call float @dx.op.unary.f32(i32 84, float %4880)  ; DerivCoarseY(value)
  %4918 = call float @dx.op.unary.f32(i32 84, float %4881)  ; DerivCoarseY(value)
  %4919 = fcmp fast ole float %216, %4897
  %4920 = fmul fast float %4896, %4894
  %4921 = fcmp fast ole float %216, %4920
  %4922 = select i1 %4921, float %4881, float %4879
  %4923 = select i1 %4921, float %4879, float %4880
  %4924 = select i1 %4919, float %4880, float %4922
  %4925 = select i1 %4919, float %4881, float %4923
  %4926 = select i1 %4921, float %4915, float %4913
  %4927 = select i1 %4921, float %4913, float %4914
  %4928 = select i1 %4919, float %4914, float %4926
  %4929 = select i1 %4919, float %4915, float %4927
  %4930 = select i1 %4921, float %4918, float %4916
  %4931 = select i1 %4921, float %4916, float %4917
  %4932 = select i1 %4919, float %4917, float %4930
  %4933 = select i1 %4919, float %4918, float %4931
  %4934 = call float @dx.op.unary.f32(i32 27, float %4924)  ; Round_ni(value)
  %4935 = call float @dx.op.unary.f32(i32 27, float %4925)  ; Round_ni(value)
  %4936 = fptosi float %4934 to i32
  %4937 = fptosi float %4935 to i32
  %4938 = xor i32 %4937, %4936
  %4939 = sitofp i32 %4938 to float
  %4940 = fptosi float %4939 to i32
  %4941 = sitofp i32 %4940 to float
  %4942 = fmul fast float %4941, 0x3FE3C6EF40000000
  %4943 = frem fast float %4934, 2.560000e+02
  %4944 = frem fast float %4935, 2.560000e+02
  %4945 = fptoui float %4943 to i32
  %4946 = fptoui float %4944 to i32
  %4947 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4945, i32 %4946, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.ResRet.f32 %4947, 1
  %4950 = extractvalue %dx.types.ResRet.f32 %4947, 2
  %4951 = fadd fast float %4948, %4942
  %4952 = fadd fast float %4949, %4942
  %4953 = fadd fast float %4950, %4942
  %4954 = call float @dx.op.unary.f32(i32 22, float %4951)  ; Frc(value)
  %4955 = call float @dx.op.unary.f32(i32 22, float %4952)  ; Frc(value)
  %4956 = call float @dx.op.unary.f32(i32 22, float %4953)  ; Frc(value)
  %4957 = fmul fast float %4956, 0x401921FB60000000
  %4958 = call float @dx.op.unary.f32(i32 13, float %4957)  ; Sin(value)
  %4959 = call float @dx.op.unary.f32(i32 12, float %4957)  ; Cos(value)
  %4960 = fsub fast float -0.000000e+00, %4959
  %4961 = fmul fast float %4959, %4924
  %4962 = call float @dx.op.tertiary.f32(i32 46, float %4958, float %4925, float %4961)  ; FMad(a,b,c)
  %4963 = fmul fast float %4958, %4924
  %4964 = call float @dx.op.tertiary.f32(i32 46, float %4960, float %4925, float %4963)  ; FMad(a,b,c)
  %4965 = fadd fast float %4962, %4954
  %4966 = fadd fast float %4964, %4955
  %4967 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4968 = bitcast float %4967 to i32
  %4969 = icmp eq i32 %4968, 0
  br i1 %4969, label %5008, label %4970

; <label>:4970                                    ; preds = %4873
  %4971 = add i32 %4968, 0
  %4972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4973 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4972, %dx.types.Handle %80, float %4965, float %4966, float undef, float undef, i32 0, i32 0, i32 undef, float %4928, float %4929, float undef, float %4932, float %4933, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4974 = extractvalue %dx.types.ResRet.f32 %4973, 0
  %4975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.f32 %4975, 1
  %4977 = extractvalue %dx.types.CBufRet.f32 %4975, 2
  %4978 = fsub fast float 1.000000e+00, %4583
  %4979 = call float @dx.op.binary.f32(i32 35, float %4978, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4980 = bitcast float %4583 to i32
  %4981 = sitofp i32 %4980 to float
  %4982 = fadd fast float %4981, 0xC1CFBF8940000000
  %4983 = fmul fast float %4977, %4982
  %4984 = fadd fast float %4983, 0x41CFBF8940000000
  %4985 = fptosi float %4984 to i32
  %4986 = bitcast i32 %4985 to float
  %4987 = bitcast float %4979 to i32
  %4988 = sitofp i32 %4987 to float
  %4989 = fadd fast float %4988, 0xC1CFBF8940000000
  %4990 = fmul fast float %4989, %4977
  %4991 = fadd fast float %4990, 0x41CFBF8940000000
  %4992 = fptosi float %4991 to i32
  %4993 = bitcast i32 %4992 to float
  %4994 = fmul fast float %4986, %4976
  %4995 = fmul fast float %4993, %4976
  %4996 = fsub fast float %4979, %4994
  %4997 = fadd fast float %4995, %4979
  %4998 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %4999 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %5000 = fsub fast float %4974, %4998
  %5001 = fsub fast float %4999, %4998
  %5002 = bitcast float %5001 to i32
  %5003 = sub nsw i32 2129859010, %5002
  %5004 = bitcast i32 %5003 to float
  %5005 = fmul fast float %5004, %5000
  %5006 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5007 = fcmp fast olt float %5006, 0x3F70101020000000
  br i1 %5007, label %5146, label %5008

; <label>:5008                                    ; preds = %4970, %4873
  %5009 = phi float [ %5006, %4970 ], [ %4583, %4873 ]
  %5010 = fmul fast float %5009, %4876
  %5011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.i32 %5011, 1
  %5013 = extractvalue %dx.types.CBufRet.i32 %5011, 0
  %5014 = add i32 %5013, 0
  %5015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5015, %dx.types.Handle %79, float %4965, float %4966, float undef, float undef, i32 0, i32 0, i32 undef, float %4928, float %4929, float undef, float %4932, float %4933, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5017 = extractvalue %dx.types.ResRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.ResRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.ResRet.f32 %5016, 2
  %5020 = extractvalue %dx.types.ResRet.f32 %5016, 3
  %5021 = and i32 %5012, 255
  %5022 = uitofp i32 %5021 to float
  %5023 = lshr i32 %5012, 8
  %5024 = and i32 %5023, 255
  %5025 = uitofp i32 %5024 to float
  %5026 = fmul fast float %5020, %5022
  %5027 = fadd fast float %5026, %5025
  %5028 = fmul fast float %5027, 0x3F70101000000000
  %5029 = fadd fast float %5028, 0xBFB99999A0000000
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = fmul fast float %5030, 0x3FF1C71C80000000
  %5032 = call float @dx.op.binary.f32(i32 36, float %5028, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5033 = fsub fast float 1.000000e+00, %5031
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fmul fast float %5034, %5017
  %5036 = fmul fast float %5034, %5018
  %5037 = fmul fast float %5034, %5019
  %5038 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5039 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5040 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5041 = fmul fast float %5031, %5017
  %5042 = fmul fast float %5031, %5018
  %5043 = fmul fast float %5031, %5019
  %5044 = fadd fast float %5041, %5032
  %5045 = fadd fast float %5042, %5032
  %5046 = fadd fast float %5043, %5032
  %5047 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5048 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5049 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.i32 %5050, 3
  %5052 = extractvalue %dx.types.CBufRet.i32 %5050, 2
  %5053 = add i32 %5052, 0
  %5054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5055 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5054, %dx.types.Handle %79, float %4965, float %4966, float undef, float undef, i32 0, i32 0, i32 undef, float %4928, float %4929, float undef, float %4932, float %4933, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.ResRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.ResRet.f32 %5055, 2
  %5059 = extractvalue %dx.types.ResRet.f32 %5055, 3
  %5060 = and i32 %5051, 255
  %5061 = uitofp i32 %5060 to float
  %5062 = lshr i32 %5051, 8
  %5063 = and i32 %5062, 255
  %5064 = uitofp i32 %5063 to float
  %5065 = lshr i32 %5051, 16
  %5066 = and i32 %5065, 255
  %5067 = uitofp i32 %5066 to float
  %5068 = fmul fast float %5067, 0x3F70101000000000
  %5069 = fmul fast float %5056, %5061
  %5070 = fadd fast float %5069, %5064
  %5071 = fmul fast float %5070, 0x3F70101000000000
  %5072 = fadd fast float %5057, -5.000000e-01
  %5073 = fadd fast float %5059, -5.000000e-01
  %5074 = fmul fast float %5072, %5068
  %5075 = fmul fast float %5073, %5068
  %5076 = fadd fast float %5074, 5.000000e-01
  %5077 = fadd fast float %5075, 5.000000e-01
  %5078 = fmul fast float %5076, 2.000000e+00
  %5079 = fadd fast float %5078, -1.000000e+00
  %5080 = fmul fast float %5077, 2.000000e+00
  %5081 = fadd fast float %5080, -1.000000e+00
  %5082 = fadd fast float %5079, %5081
  %5083 = fmul fast float %5082, 5.000000e-01
  %5084 = fsub fast float %5079, %5081
  %5085 = fmul fast float %5084, 5.000000e-01
  %5086 = call float @dx.op.unary.f32(i32 6, float %5083)  ; FAbs(value)
  %5087 = fsub fast float 1.000000e+00, %5086
  %5088 = call float @dx.op.unary.f32(i32 6, float %5085)  ; FAbs(value)
  %5089 = fsub fast float %5087, %5088
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5085, float %5089, float %5083, float %5085, float %5089)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = call float @dx.op.unary.f32(i32 25, float %5090)  ; Rsqrt(value)
  %5092 = fmul fast float %5083, %5091
  %5093 = fmul fast float %5085, %5091
  %5094 = select i1 %4921, i32 %4911, i32 %4912
  %5095 = select i1 %4919, i32 %4910, i32 %5094
  %5096 = sitofp i32 %5095 to float
  %5097 = fmul fast float %5089, %5096
  %5098 = fmul fast float %5097, %5091
  %5099 = select i1 %4921, float %5098, float %5093
  %5100 = select i1 %4921, float %5093, float %5098
  %5101 = select i1 %4919, float %5098, float %5092
  %5102 = select i1 %4919, float %5093, float %5099
  %5103 = select i1 %4919, float %5092, float %5100
  %5104 = fsub fast float %5038, %4865
  %5105 = fsub fast float %5039, %4866
  %5106 = fsub fast float %5040, %4867
  %5107 = fmul fast float %5104, %5010
  %5108 = fmul fast float %5105, %5010
  %5109 = fmul fast float %5106, %5010
  %5110 = fadd fast float %5107, %4865
  %5111 = fadd fast float %5108, %4866
  %5112 = fadd fast float %5109, %4867
  %5113 = fsub fast float %5047, %4862
  %5114 = fsub fast float %5048, %4863
  %5115 = fsub fast float %5049, %4864
  %5116 = fmul fast float %5113, %5010
  %5117 = fmul fast float %5114, %5010
  %5118 = fmul fast float %5115, %5010
  %5119 = fadd fast float %5116, %4862
  %5120 = fadd fast float %5117, %4863
  %5121 = fadd fast float %5118, %4864
  %5122 = fadd fast float %5101, %4868
  %5123 = fadd fast float %5102, %4869
  %5124 = fadd fast float %5103, %4870
  %5125 = call float @dx.op.dot3.f32(i32 55, float %5122, float %5123, float %5124, float %5122, float %5123, float %5124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5126 = call float @dx.op.unary.f32(i32 25, float %5125)  ; Rsqrt(value)
  %5127 = fmul fast float %5122, %5126
  %5128 = fmul fast float %5123, %5126
  %5129 = fmul fast float %5124, %5126
  %5130 = fsub fast float %5127, %4868
  %5131 = fsub fast float %5128, %4869
  %5132 = fsub fast float %5129, %4870
  %5133 = fmul fast float %5130, %5010
  %5134 = fmul fast float %5131, %5010
  %5135 = fmul fast float %5132, %5010
  %5136 = fadd fast float %5133, %4868
  %5137 = fadd fast float %5134, %4869
  %5138 = fadd fast float %5135, %4870
  %5139 = call float @dx.op.binary.f32(i32 36, float %4872, float %5058)  ; FMin(a,b)
  %5140 = fsub fast float %5139, %4872
  %5141 = fmul fast float %5140, %5010
  %5142 = fadd fast float %5141, %4872
  %5143 = fsub fast float %5071, %4871
  %5144 = fmul fast float %5143, %5010
  %5145 = fadd fast float %5144, %4871
  br label %5146

; <label>:5146                                    ; preds = %5008, %4970, %4861, %4577
  %5147 = phi float [ %5119, %5008 ], [ %4862, %4970 ], [ %4862, %4861 ], [ %4171, %4577 ]
  %5148 = phi float [ %5120, %5008 ], [ %4863, %4970 ], [ %4863, %4861 ], [ %4172, %4577 ]
  %5149 = phi float [ %5121, %5008 ], [ %4864, %4970 ], [ %4864, %4861 ], [ %4173, %4577 ]
  %5150 = phi float [ %5110, %5008 ], [ %4865, %4970 ], [ %4865, %4861 ], [ %4186, %4577 ]
  %5151 = phi float [ %5111, %5008 ], [ %4866, %4970 ], [ %4866, %4861 ], [ %4187, %4577 ]
  %5152 = phi float [ %5112, %5008 ], [ %4867, %4970 ], [ %4867, %4861 ], [ %4188, %4577 ]
  %5153 = phi float [ %5136, %5008 ], [ %4868, %4970 ], [ %4868, %4861 ], [ %4135, %4577 ]
  %5154 = phi float [ %5137, %5008 ], [ %4869, %4970 ], [ %4869, %4861 ], [ %4136, %4577 ]
  %5155 = phi float [ %5138, %5008 ], [ %4870, %4970 ], [ %4870, %4861 ], [ %4137, %4577 ]
  %5156 = phi float [ %5145, %5008 ], [ %4871, %4970 ], [ %4871, %4861 ], [ %4174, %4577 ]
  %5157 = phi float [ %5142, %5008 ], [ %4872, %4970 ], [ %4872, %4861 ], [ %4147, %4577 ]
  %5158 = fcmp fast une float %4581, 0.000000e+00
  %5159 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = call float @dx.op.unary.f32(i32 25, float %5159)  ; Rsqrt(value)
  br i1 %5158, label %5168, label %5161

; <label>:5161                                    ; preds = %5146
  %5162 = fmul fast float %5160, %166
  %5163 = fmul fast float %5160, %167
  %5164 = fmul fast float %5160, %168
  %5165 = fsub fast float -0.000000e+00, %5162
  %5166 = fsub fast float -0.000000e+00, %5163
  %5167 = fsub fast float -0.000000e+00, %5164
  br label %5335

; <label>:5168                                    ; preds = %5146
  %5169 = fmul fast float %166, %5160
  %5170 = fsub fast float -0.000000e+00, %5169
  %5171 = fmul fast float %167, %5160
  %5172 = fsub fast float -0.000000e+00, %5171
  %5173 = fmul fast float %168, %5160
  %5174 = fsub fast float -0.000000e+00, %5173
  %5175 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5172, float %5174, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = fmul fast float %4581, 2.500000e+00
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fmul fast float %4581, 0x4013FFFFE0000000
  %5179 = fadd fast float %5178, 0xBFFFFFFFE0000000
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fmul fast float %4581, 0x4004000020000000
  %5182 = fadd fast float %5181, 0xBFF8000040000000
  %5183 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5184 = fmul fast float %4153, 1.000000e+01
  %5185 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5186 = fmul fast float %5185, 2.000000e+00
  %5187 = fsub fast float 3.000000e+00, %5186
  %5188 = fmul fast float %5185, %5185
  %5189 = fmul fast float %5188, %5187
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = fsub fast float 0x3FE3333340000000, %5156
  %5192 = fmul fast float %5191, 0x400AAAAAA0000000
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = fmul fast float %5190, %5193
  %5195 = fmul fast float %5150, 0x3FEA2B8620000000
  %5196 = fmul fast float %5151, 0x3FEA2B8620000000
  %5197 = fmul fast float %5152, 0x3FEA2B8620000000
  %5198 = fadd fast float %5195, 0x3FC81DFBA0000000
  %5199 = fmul fast float %5198, %5150
  %5200 = fadd fast float %5199, 0x3F910E6020000000
  %5201 = fadd fast float %5196, 0x3FC81DFBA0000000
  %5202 = fmul fast float %5201, %5151
  %5203 = fadd fast float %5202, 0x3F910E6020000000
  %5204 = fadd fast float %5197, 0x3FC81DFBA0000000
  %5205 = fmul fast float %5204, %5152
  %5206 = fadd fast float %5205, 0x3F910E6020000000
  %5207 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5208 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5209 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5210 = fsub fast float %5207, %5150
  %5211 = fsub fast float %5208, %5151
  %5212 = fsub fast float %5209, %5152
  %5213 = fmul fast float %5210, %5177
  %5214 = fmul fast float %5213, %5194
  %5215 = fmul fast float %5211, %5177
  %5216 = fmul fast float %5215, %5194
  %5217 = fmul fast float %5212, %5177
  %5218 = fmul fast float %5217, %5194
  %5219 = fadd fast float %5214, %5150
  %5220 = fadd fast float %5216, %5151
  %5221 = fadd fast float %5218, %5152
  %5222 = fmul fast float %5157, %5157
  %5223 = fmul fast float %5222, %5222
  %5224 = fadd fast float %5180, 1.000000e+00
  %5225 = fsub fast float %5224, %5194
  %5226 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5227 = call float @dx.op.dot3.f32(i32 55, float %92, float %94, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5229 = fsub fast float 1.000000e+00, %5223
  %5230 = call float @dx.op.binary.f32(i32 36, float %5226, float %5229)  ; FMin(a,b)
  %5231 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5232 = call float @dx.op.binary.f32(i32 35, float %5230, float %5231)  ; FMax(a,b)
  %5233 = fadd fast float %5228, 0xBFE4CCCCC0000000
  %5234 = fmul fast float %5233, 0x4006DB6DA0000000
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = fmul fast float %5235, 2.000000e+00
  %5237 = fsub fast float 3.000000e+00, %5236
  %5238 = bitcast float %5147 to i32
  %5239 = ashr i32 %5238, 1
  %5240 = add nsw i32 %5239, 532487669
  %5241 = bitcast i32 %5240 to float
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = bitcast float %5242 to i32
  %5244 = sub nsw i32 2129859010, %5243
  %5245 = bitcast i32 %5244 to float
  %5246 = fmul fast float %5245, 2.000000e+00
  %5247 = bitcast float %5148 to i32
  %5248 = ashr i32 %5247, 1
  %5249 = add nsw i32 %5248, 532487669
  %5250 = bitcast i32 %5249 to float
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = bitcast float %5251 to i32
  %5253 = sub nsw i32 2129859010, %5252
  %5254 = bitcast i32 %5253 to float
  %5255 = fmul fast float %5254, 2.000000e+00
  %5256 = bitcast float %5149 to i32
  %5257 = ashr i32 %5256, 1
  %5258 = add nsw i32 %5257, 532487669
  %5259 = bitcast i32 %5258 to float
  %5260 = fsub fast float 1.000000e+00, %5259
  %5261 = bitcast float %5260 to i32
  %5262 = sub nsw i32 2129859010, %5261
  %5263 = bitcast i32 %5262 to float
  %5264 = fmul fast float %5263, 2.000000e+00
  %5265 = fsub fast float 0x4002A9FBE0000000, %5246
  %5266 = fadd fast float %5246, 0x3FD54FDF00000000
  %5267 = bitcast float %5266 to i32
  %5268 = sub nsw i32 2129859010, %5267
  %5269 = bitcast i32 %5268 to float
  %5270 = fmul fast float %5269, %5265
  %5271 = fmul fast float %5270, %5270
  %5272 = fsub fast float 0x4002A9FBE0000000, %5255
  %5273 = fadd fast float %5255, 0x3FD54FDF00000000
  %5274 = bitcast float %5273 to i32
  %5275 = sub nsw i32 2129859010, %5274
  %5276 = bitcast i32 %5275 to float
  %5277 = fmul fast float %5276, %5272
  %5278 = fmul fast float %5277, %5277
  %5279 = fsub fast float 0x4002A9FBE0000000, %5264
  %5280 = fadd fast float %5264, 0x3FD54FDF00000000
  %5281 = bitcast float %5280 to i32
  %5282 = sub nsw i32 2129859010, %5281
  %5283 = bitcast i32 %5282 to float
  %5284 = fmul fast float %5283, %5279
  %5285 = fmul fast float %5284, %5284
  %5286 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5271)  ; FMax(a,b)
  %5287 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5278)  ; FMax(a,b)
  %5288 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5285)  ; FMax(a,b)
  %5289 = fsub fast float 1.000000e+00, %5175
  %5290 = fadd fast float %5289, %5190
  %5291 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5292 = fsub fast float 1.000000e+00, %4562
  %5293 = fmul fast float %5232, %5292
  %5294 = fmul fast float %5235, %5235
  %5295 = fmul fast float %5294, %5293
  %5296 = fmul fast float %5295, %5237
  %5297 = fmul fast float %5292, 0xBFE99999A0000000
  %5298 = fmul fast float %5297, %5177
  %5299 = fmul fast float %5298, %5194
  %5300 = fadd fast float %5299, 1.000000e+00
  %5301 = fadd fast float %5156, -1.000000e+00
  %5302 = fmul fast float %5300, %5301
  %5303 = fadd fast float %5302, 1.000000e+00
  %5304 = fsub fast float %5286, %5147
  %5305 = fsub fast float %5287, %5148
  %5306 = fsub fast float %5288, %5149
  %5307 = fmul fast float %5296, %5304
  %5308 = fmul fast float %5296, %5305
  %5309 = fmul fast float %5296, %5306
  %5310 = fadd fast float %5307, %5147
  %5311 = fadd fast float %5308, %5148
  %5312 = fadd fast float %5309, %5149
  %5313 = fsub fast float %92, %5153
  %5314 = fsub fast float %94, %5154
  %5315 = fsub fast float %96, %5155
  %5316 = fmul fast float %5296, %5313
  %5317 = fmul fast float %5296, %5314
  %5318 = fmul fast float %5296, %5315
  %5319 = fadd fast float %5316, %5153
  %5320 = fadd fast float %5317, %5154
  %5321 = fadd fast float %5318, %5155
  %5322 = fmul fast float %5296, %5291
  %5323 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5324 = fsub fast float 1.000000e+00, %5323
  %5325 = fmul fast float %5322, %5324
  %5326 = fadd fast float %5325, %5323
  %5327 = fsub fast float 1.000000e+00, %5157
  %5328 = fmul fast float %5296, %5327
  %5329 = fadd fast float %5328, %5157
  %5330 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float %5319, float %5320, float %5321)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = call float @dx.op.unary.f32(i32 25, float %5330)  ; Rsqrt(value)
  %5332 = fmul fast float %5319, %5331
  %5333 = fmul fast float %5320, %5331
  %5334 = fmul fast float %5321, %5331
  br label %5335

; <label>:5335                                    ; preds = %5168, %5161
  %5336 = phi float [ %5167, %5161 ], [ %5174, %5168 ]
  %5337 = phi float [ %5166, %5161 ], [ %5172, %5168 ]
  %5338 = phi float [ %5165, %5161 ], [ %5170, %5168 ]
  %5339 = phi float [ %5164, %5161 ], [ %5173, %5168 ]
  %5340 = phi float [ %5163, %5161 ], [ %5171, %5168 ]
  %5341 = phi float [ %5162, %5161 ], [ %5169, %5168 ]
  %5342 = phi float [ %5147, %5161 ], [ %5310, %5168 ]
  %5343 = phi float [ %5148, %5161 ], [ %5311, %5168 ]
  %5344 = phi float [ %5149, %5161 ], [ %5312, %5168 ]
  %5345 = phi float [ %5150, %5161 ], [ %5219, %5168 ]
  %5346 = phi float [ %5151, %5161 ], [ %5220, %5168 ]
  %5347 = phi float [ %5152, %5161 ], [ %5221, %5168 ]
  %5348 = phi float [ %5153, %5161 ], [ %5332, %5168 ]
  %5349 = phi float [ %5154, %5161 ], [ %5333, %5168 ]
  %5350 = phi float [ %5155, %5161 ], [ %5334, %5168 ]
  %5351 = phi float [ %5156, %5161 ], [ %5326, %5168 ]
  %5352 = phi float [ %5157, %5161 ], [ %5329, %5168 ]
  %5353 = select i1 %205, float 0.000000e+00, float %5344
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float %5338, float %5337, float %5336)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5340, float %5339, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = fmul fast float %5356, 2.000000e+00
  %5358 = fmul fast float %5357, %5348
  %5359 = fmul fast float %5357, %5349
  %5360 = fmul fast float %5357, %5350
  %5361 = fsub fast float %5341, %5358
  %5362 = fsub fast float %5340, %5359
  %5363 = fsub fast float %5339, %5360
  %5364 = call float @dx.op.binary.f32(i32 36, float %5352, float 1.000000e+00)  ; FMin(a,b)
  %5365 = fsub fast float 1.000000e+00, %5352
  %5366 = bitcast float %5365 to i32
  %5367 = sub nsw i32 2129859010, %5366
  %5368 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %5369 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = fcmp fast oeq float %5369, 0.000000e+00
  %5371 = fcmp fast oeq float %5368, 0.000000e+00
  %5372 = or i1 %5371, %5370
  br i1 %5372, label %5402, label %5373

; <label>:5373                                    ; preds = %5335
  %5374 = fsub fast float -0.000000e+00, %63
  %5375 = fsub fast float -0.000000e+00, %61
  %5376 = call float @dx.op.unary.f32(i32 24, float %5369)  ; Sqrt(value)
  %5377 = fdiv fast float %5376, %5368
  %5378 = fcmp fast ogt float %5377, 0x3FFB6F8900000000
  %5379 = select i1 %5378, float 0x3FFB6F8900000000, float %5377
  %5380 = fmul fast float %5379, 0x3FE8A23460000000
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5382 = call float @dx.op.binary.f32(i32 35, float %5379, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5383 = fmul fast float %5381, %5368
  %5384 = fmul fast float %5382, 0x3FF279A740000000
  %5385 = fadd fast float %5384, -1.000000e+00
  %5386 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %62, float %5374, float %5375, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = call float @dx.op.unary.f32(i32 25, float %5386)  ; Rsqrt(value)
  %5388 = fmul fast float %5387, %5374
  %5389 = fmul fast float %5387, %5375
  %5390 = fmul fast float %5387, %62
  %5391 = fmul fast float %5385, %5385
  %5392 = fsub fast float 1.000000e+00, %5391
  %5393 = fmul fast float %5382, 0x40005F8BE0000000
  %5394 = fsub fast float 0x400C5BF8A0000000, %5393
  %5395 = fdiv fast float %5383, %5394
  %5396 = fmul fast float %5395, 0x3FEE31C3C0000000
  %5397 = fmul fast float %5396, %5392
  %5398 = fmul fast float %5382, 0x3FDACB7480000000
  %5399 = fadd fast float %5398, 0xBFD7347680000000
  %5400 = fmul fast float %5399, %5395
  %5401 = fmul fast float %5400, %5392
  br label %5402

; <label>:5402                                    ; preds = %5373, %5335
  %5403 = phi float [ %5388, %5373 ], [ 0.000000e+00, %5335 ]
  %5404 = phi float [ %5389, %5373 ], [ 0.000000e+00, %5335 ]
  %5405 = phi float [ %5390, %5373 ], [ 0.000000e+00, %5335 ]
  %5406 = phi float [ %5397, %5373 ], [ 0.000000e+00, %5335 ]
  %5407 = phi float [ %5401, %5373 ], [ 0.000000e+00, %5335 ]
  %5408 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5405, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5409 = fmul fast float %5408, %5408
  %5410 = fmul fast float %5409, 0x3FEE471020000000
  %5411 = fadd fast float %5410, 0xBFD42F6020000000
  %5412 = fmul fast float %5368, 0x3FD20DD760000000
  %5413 = fmul fast float %5411, %5407
  %5414 = fmul fast float %5406, 0x3FDF454380000000
  %5415 = fmul fast float %5414, %5408
  %5416 = fadd fast float %5415, %5412
  %5417 = fadd fast float %5416, %5413
  %5418 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5405, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = fmul fast float %5418, 0x3FDF454380000000
  %5420 = fmul fast float %5418, %5418
  %5421 = fmul fast float %5420, 0x3FEE471020000000
  %5422 = fadd fast float %5421, 0xBFD42F6020000000
  %5423 = call float @dx.op.dot3.f32(i32 55, float %5368, float %5406, float %5407, float 0x3FD20DD760000000, float %5419, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %5425 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5426 = fcmp fast oeq float %5425, 0.000000e+00
  %5427 = fcmp fast oeq float %5424, 0.000000e+00
  %5428 = or i1 %5427, %5426
  br i1 %5428, label %5458, label %5429

; <label>:5429                                    ; preds = %5402
  %5430 = fsub fast float -0.000000e+00, %59
  %5431 = fsub fast float -0.000000e+00, %57
  %5432 = call float @dx.op.unary.f32(i32 24, float %5425)  ; Sqrt(value)
  %5433 = fdiv fast float %5432, %5424
  %5434 = fcmp fast ogt float %5433, 0x3FFB6F8900000000
  %5435 = select i1 %5434, float 0x3FFB6F8900000000, float %5433
  %5436 = fmul fast float %5435, 0x3FE8A23460000000
  %5437 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5438 = call float @dx.op.binary.f32(i32 35, float %5435, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5439 = fmul fast float %5437, %5424
  %5440 = fmul fast float %5438, 0x3FF279A740000000
  %5441 = fadd fast float %5440, -1.000000e+00
  %5442 = call float @dx.op.dot3.f32(i32 55, float %5430, float %5431, float %58, float %5430, float %5431, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %5443 = call float @dx.op.unary.f32(i32 25, float %5442)  ; Rsqrt(value)
  %5444 = fmul fast float %5443, %5430
  %5445 = fmul fast float %5443, %5431
  %5446 = fmul fast float %5443, %58
  %5447 = fmul fast float %5441, %5441
  %5448 = fsub fast float 1.000000e+00, %5447
  %5449 = fmul fast float %5438, 0x40005F8BE0000000
  %5450 = fsub fast float 0x400C5BF8A0000000, %5449
  %5451 = fdiv fast float %5439, %5450
  %5452 = fmul fast float %5451, 0x3FEE31C3C0000000
  %5453 = fmul fast float %5452, %5448
  %5454 = fmul fast float %5438, 0x3FDACB7480000000
  %5455 = fadd fast float %5454, 0xBFD7347680000000
  %5456 = fmul fast float %5455, %5451
  %5457 = fmul fast float %5456, %5448
  br label %5458

; <label>:5458                                    ; preds = %5429, %5402
  %5459 = phi float [ %5444, %5429 ], [ 0.000000e+00, %5402 ]
  %5460 = phi float [ %5445, %5429 ], [ 0.000000e+00, %5402 ]
  %5461 = phi float [ %5446, %5429 ], [ 0.000000e+00, %5402 ]
  %5462 = phi float [ %5453, %5429 ], [ 0.000000e+00, %5402 ]
  %5463 = phi float [ %5457, %5429 ], [ 0.000000e+00, %5402 ]
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = fmul fast float %5464, %5464
  %5466 = fmul fast float %5465, 0x3FEE471020000000
  %5467 = fadd fast float %5466, 0xBFD42F6020000000
  %5468 = fmul fast float %5424, 0x3FD20DD760000000
  %5469 = fmul fast float %5467, %5463
  %5470 = fmul fast float %5462, 0x3FDF454380000000
  %5471 = fmul fast float %5470, %5464
  %5472 = fadd fast float %5471, %5468
  %5473 = fadd fast float %5472, %5469
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = fmul fast float %5474, 0x3FDF454380000000
  %5476 = fmul fast float %5474, %5474
  %5477 = fmul fast float %5476, 0x3FEE471020000000
  %5478 = fadd fast float %5477, 0xBFD42F6020000000
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5462, float %5463, float 0x3FD20DD760000000, float %5475, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5481 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = fcmp fast oeq float %5481, 0.000000e+00
  %5483 = fcmp fast oeq float %5480, 0.000000e+00
  %5484 = or i1 %5483, %5482
  br i1 %5484, label %5514, label %5485

; <label>:5485                                    ; preds = %5458
  %5486 = fsub fast float -0.000000e+00, %55
  %5487 = fsub fast float -0.000000e+00, %53
  %5488 = call float @dx.op.unary.f32(i32 24, float %5481)  ; Sqrt(value)
  %5489 = fdiv fast float %5488, %5480
  %5490 = fcmp fast ogt float %5489, 0x3FFB6F8900000000
  %5491 = select i1 %5490, float 0x3FFB6F8900000000, float %5489
  %5492 = fmul fast float %5491, 0x3FE8A23460000000
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = call float @dx.op.binary.f32(i32 35, float %5491, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5495 = fmul fast float %5493, %5480
  %5496 = fmul fast float %5494, 0x3FF279A740000000
  %5497 = fadd fast float %5496, -1.000000e+00
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5486, float %5487, float %54, float %5486, float %5487, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = call float @dx.op.unary.f32(i32 25, float %5498)  ; Rsqrt(value)
  %5500 = fmul fast float %5499, %5486
  %5501 = fmul fast float %5499, %5487
  %5502 = fmul fast float %5499, %54
  %5503 = fmul fast float %5497, %5497
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = fmul fast float %5494, 0x40005F8BE0000000
  %5506 = fsub fast float 0x400C5BF8A0000000, %5505
  %5507 = fdiv fast float %5495, %5506
  %5508 = fmul fast float %5507, 0x3FEE31C3C0000000
  %5509 = fmul fast float %5508, %5504
  %5510 = fmul fast float %5494, 0x3FDACB7480000000
  %5511 = fadd fast float %5510, 0xBFD7347680000000
  %5512 = fmul fast float %5511, %5507
  %5513 = fmul fast float %5512, %5504
  br label %5514

; <label>:5514                                    ; preds = %5485, %5458
  %5515 = phi float [ %5500, %5485 ], [ 0.000000e+00, %5458 ]
  %5516 = phi float [ %5501, %5485 ], [ 0.000000e+00, %5458 ]
  %5517 = phi float [ %5502, %5485 ], [ 0.000000e+00, %5458 ]
  %5518 = phi float [ %5509, %5485 ], [ 0.000000e+00, %5458 ]
  %5519 = phi float [ %5513, %5485 ], [ 0.000000e+00, %5458 ]
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5516, float %5517, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = fmul fast float %5520, %5520
  %5522 = fmul fast float %5521, 0x3FEE471020000000
  %5523 = fadd fast float %5522, 0xBFD42F6020000000
  %5524 = fmul fast float %5480, 0x3FD20DD760000000
  %5525 = fmul fast float %5523, %5519
  %5526 = fmul fast float %5518, 0x3FDF454380000000
  %5527 = fmul fast float %5526, %5520
  %5528 = fadd fast float %5527, %5524
  %5529 = fadd fast float %5528, %5525
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5516, float %5517, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fmul fast float %5530, 0x3FDF454380000000
  %5532 = fmul fast float %5530, %5530
  %5533 = fmul fast float %5532, 0x3FEE471020000000
  %5534 = fadd fast float %5533, 0xBFD42F6020000000
  %5535 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5518, float %5519, float 0x3FD20DD760000000, float %5531, float %5534)  ; Dot3(ax,ay,az,bx,by,bz)
  %5536 = call float @dx.op.binary.f32(i32 35, float %5417, float 0.000000e+00)  ; FMax(a,b)
  %5537 = call float @dx.op.binary.f32(i32 35, float %5473, float 0.000000e+00)  ; FMax(a,b)
  %5538 = call float @dx.op.binary.f32(i32 35, float %5529, float 0.000000e+00)  ; FMax(a,b)
  %5539 = call float @dx.op.binary.f32(i32 35, float %5423, float 0.000000e+00)  ; FMax(a,b)
  %5540 = call float @dx.op.binary.f32(i32 35, float %5479, float 0.000000e+00)  ; FMax(a,b)
  %5541 = call float @dx.op.binary.f32(i32 35, float %5535, float 0.000000e+00)  ; FMax(a,b)
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 0
  %5544 = call float @dx.op.binary.f32(i32 36, float %5345, float %5543)  ; FMin(a,b)
  %5545 = fsub fast float 1.000000e+00, %5364
  %5546 = fmul fast float %5544, %5545
  %5547 = fsub fast float 1.000000e+00, %5546
  %5548 = bitcast float %5547 to i32
  %5549 = sub nsw i32 2129859010, %5548
  %5550 = bitcast i32 %5549 to float
  %5551 = call float @dx.op.binary.f32(i32 36, float %5346, float %5543)  ; FMin(a,b)
  %5552 = fmul fast float %5551, %5545
  %5553 = fsub fast float 1.000000e+00, %5552
  %5554 = bitcast float %5553 to i32
  %5555 = sub nsw i32 2129859010, %5554
  %5556 = bitcast i32 %5555 to float
  %5557 = call float @dx.op.binary.f32(i32 36, float %5347, float %5543)  ; FMin(a,b)
  %5558 = fmul fast float %5557, %5545
  %5559 = fsub fast float 1.000000e+00, %5558
  %5560 = bitcast float %5559 to i32
  %5561 = sub nsw i32 2129859010, %5560
  %5562 = bitcast i32 %5561 to float
  %5563 = fmul fast float %5536, %5364
  %5564 = fmul fast float %5563, %5550
  %5565 = fmul fast float %5537, %5364
  %5566 = fmul fast float %5565, %5556
  %5567 = fmul fast float %5538, %5364
  %5568 = fmul fast float %5567, %5562
  %5569 = call float @dx.op.binary.f32(i32 36, float %5342, float %5543)  ; FMin(a,b)
  %5570 = fmul fast float %5569, %5545
  %5571 = fsub fast float 1.000000e+00, %5570
  %5572 = bitcast float %5571 to i32
  %5573 = sub nsw i32 2129859010, %5572
  %5574 = bitcast i32 %5573 to float
  %5575 = call float @dx.op.binary.f32(i32 36, float %5343, float %5543)  ; FMin(a,b)
  %5576 = fmul fast float %5575, %5545
  %5577 = fsub fast float 1.000000e+00, %5576
  %5578 = bitcast float %5577 to i32
  %5579 = sub nsw i32 2129859010, %5578
  %5580 = bitcast i32 %5579 to float
  %5581 = call float @dx.op.binary.f32(i32 36, float %5353, float %5543)  ; FMin(a,b)
  %5582 = fmul fast float %5581, %5545
  %5583 = fsub fast float 1.000000e+00, %5582
  %5584 = bitcast float %5583 to i32
  %5585 = sub nsw i32 2129859010, %5584
  %5586 = bitcast i32 %5585 to float
  %5587 = fmul fast float %5539, %5364
  %5588 = fmul fast float %5587, %5574
  %5589 = fmul fast float %5540, %5364
  %5590 = fmul fast float %5589, %5580
  %5591 = fmul fast float %5541, %5364
  %5592 = fmul fast float %5591, %5586
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5564, float %5566, float %5568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = select i1 %205, float 0.000000e+00, float %5564
  %5595 = select i1 %205, float %5593, float %5566
  %5596 = select i1 %205, float 0.000000e+00, float %5568
  %5597 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5590, float %5592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = select i1 %205, float 0.000000e+00, float %5588
  %5599 = select i1 %205, float %5597, float %5590
  %5600 = select i1 %205, float 0.000000e+00, float %5592
  %5601 = fmul fast float %5355, 9.843750e-01
  %5602 = fmul fast float %5351, 9.843750e-01
  %5603 = fadd fast float %5601, 7.812500e-03
  %5604 = fadd fast float %5602, 7.812500e-03
  %5605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5603, float %5604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5606 = extractvalue %dx.types.ResRet.f32 %5605, 2
  %5607 = extractvalue %dx.types.ResRet.f32 %5605, 3
  %5608 = fmul fast float %5606, %5342
  %5609 = fmul fast float %5606, %5343
  %5610 = fmul fast float %5606, %5353
  %5611 = fadd fast float %5608, %5607
  %5612 = fadd fast float %5609, %5607
  %5613 = fadd fast float %5610, %5607
  %5614 = fcmp fast ogt float %4148, 0.000000e+00
  br i1 %5614, label %5615, label %5641

; <label>:5615                                    ; preds = %5514
  %5616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4148, float %5355, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5617 = extractvalue %dx.types.ResRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.ResRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.ResRet.f32 %5616, 2
  %5620 = fadd fast float %5617, -5.000000e-01
  %5621 = fadd fast float %5618, -5.000000e-01
  %5622 = fadd fast float %5619, -5.000000e-01
  %5623 = fsub fast float 1.000000e+00, %5342
  %5624 = fsub fast float 1.000000e+00, %5343
  %5625 = fsub fast float 1.000000e+00, %5353
  %5626 = fmul fast float %5342, 4.000000e+00
  %5627 = fmul fast float %5626, %5623
  %5628 = fmul fast float %5627, %5620
  %5629 = fmul fast float %5343, 4.000000e+00
  %5630 = fmul fast float %5629, %5624
  %5631 = fmul fast float %5630, %5621
  %5632 = fmul fast float %5353, 4.000000e+00
  %5633 = fmul fast float %5632, %5625
  %5634 = fmul fast float %5633, %5622
  %5635 = fadd fast float %5628, %5611
  %5636 = fadd fast float %5631, %5612
  %5637 = fadd fast float %5634, %5613
  %5638 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5639 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  br label %5641

; <label>:5641                                    ; preds = %5615, %5514
  %5642 = phi float [ %5638, %5615 ], [ %5611, %5514 ]
  %5643 = phi float [ %5639, %5615 ], [ %5612, %5514 ]
  %5644 = phi float [ %5640, %5615 ], [ %5613, %5514 ]
  %5645 = call float @dx.op.binary.f32(i32 35, float %5643, float %5644)  ; FMax(a,b)
  %5646 = call float @dx.op.binary.f32(i32 35, float %5642, float %5645)  ; FMax(a,b)
  %5647 = fsub fast float 1.000000e+00, %5646
  %5648 = fmul fast float %5647, %5594
  %5649 = fmul fast float %5647, %5595
  %5650 = fmul fast float %5647, %5596
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5345, float %5346, float %5347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = fcmp fast ogt float %5651, 0x3E7FF19E20000000
  %5653 = fdiv fast float 1.000000e+00, %5651
  %5654 = select i1 %5652, float %5653, float 0.000000e+00
  %5655 = fmul fast float %5654, %5345
  %5656 = fmul fast float %5654, %5346
  %5657 = fmul fast float %5654, %5347
  %5658 = fadd fast float %5655, -1.000000e+00
  %5659 = fadd fast float %5656, -1.000000e+00
  %5660 = fadd fast float %5657, -1.000000e+00
  %5661 = fmul fast float %5658, 5.000000e-01
  %5662 = fmul fast float %5659, 5.000000e-01
  %5663 = fmul fast float %5660, 5.000000e-01
  %5664 = fadd fast float %5661, 1.000000e+00
  %5665 = fadd fast float %5662, 1.000000e+00
  %5666 = fadd fast float %5663, 1.000000e+00
  %5667 = fmul fast float %5642, %5598
  %5668 = fmul fast float %5643, %5599
  %5669 = fmul fast float %5644, %5600
  %5670 = fsub fast float 1.000000e+00, %5355
  %5671 = bitcast float %5670 to i32
  %5672 = sitofp i32 %5671 to float
  %5673 = fmul fast float %5672, 5.000000e+00
  %5674 = fadd fast float %5673, 0xC1EFBF8940000000
  %5675 = fptosi float %5674 to i32
  %5676 = bitcast i32 %5675 to float
  %5677 = fmul fast float %5676, %4149
  %5678 = fmul fast float %5594, %5677
  %5679 = fmul fast float %5678, %5647
  %5680 = fmul fast float %5679, %5664
  %5681 = fmul fast float %5595, %5677
  %5682 = fmul fast float %5681, %5647
  %5683 = fmul fast float %5682, %5665
  %5684 = fmul fast float %5596, %5677
  %5685 = fmul fast float %5684, %5647
  %5686 = fmul fast float %5685, %5666
  %5687 = fmul fast float %5648, %4145
  %5688 = fmul fast float %5649, %4145
  %5689 = fmul fast float %5650, %4145
  %5690 = fadd fast float %5667, %4141
  %5691 = fadd fast float %5690, %5680
  %5692 = fmul fast float %5691, %4145
  %5693 = fadd fast float %5668, %4142
  %5694 = fadd fast float %5693, %5683
  %5695 = fmul fast float %5694, %4145
  %5696 = fadd fast float %5669, %4143
  %5697 = fadd fast float %5696, %5686
  %5698 = fmul fast float %5697, %4145
  %5699 = bitcast i32 %5367 to float
  %5700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5701 = extractvalue %dx.types.CBufRet.f32 %5700, 3
  %5702 = fcmp fast oeq float %5701, 0.000000e+00
  br i1 %5702, label %5930, label %5703

; <label>:5703                                    ; preds = %5641
  %5704 = extractvalue %dx.types.CBufRet.f32 %5700, 0
  %5705 = extractvalue %dx.types.CBufRet.f32 %5700, 1
  %5706 = extractvalue %dx.types.CBufRet.f32 %5700, 2
  %5707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5707, 0
  %5709 = extractvalue %dx.types.CBufRet.f32 %5707, 1
  %5710 = extractvalue %dx.types.CBufRet.f32 %5707, 2
  %5711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5712 = extractvalue %dx.types.CBufRet.f32 %5711, 0
  %5713 = extractvalue %dx.types.CBufRet.f32 %5711, 1
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5708, float %5709, float %5710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = select i1 %205, float %5712, float %5708
  %5716 = select i1 %205, float %5714, float %5709
  %5717 = select i1 %205, float %5713, float %5710
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5720 = fcmp fast une float %5719, 0.000000e+00
  br i1 %5720, label %5721, label %5738

; <label>:5721                                    ; preds = %5703
  %5722 = fptoui float %83 to i32
  %5723 = fptoui float %84 to i32
  %5724 = lshr i32 %5722, 4
  %5725 = lshr i32 %5723, 4
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = fptoui float %5727 to i32
  %5729 = add i32 %5728, 15
  %5730 = lshr i32 %5729, 4
  %5731 = mul i32 %5730, %5725
  %5732 = add i32 %5731, %5724
  %5733 = shl i32 %5732, 3
  %5734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5733, i32 undef)  ; BufferLoad(srv,index,wot)
  %5735 = extractvalue %dx.types.ResRet.i32 %5734, 0
  %5736 = and i32 %5735, -268435456
  %5737 = icmp eq i32 %5736, -1342177280
  br i1 %5737, label %5748, label %5738

; <label>:5738                                    ; preds = %5721, %5703
  %5739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.f32 %5739, 2
  %5741 = extractvalue %dx.types.CBufRet.f32 %5739, 3
  %5742 = fmul fast float %5740, %83
  %5743 = fmul fast float %5741, %84
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5742, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.ResRet.f32 %5744, 1
  %5747 = extractvalue %dx.types.ResRet.f32 %5744, 2
  br label %5748

; <label>:5748                                    ; preds = %5738, %5721
  %5749 = phi float [ %5745, %5738 ], [ 0.000000e+00, %5721 ]
  %5750 = phi float [ %5746, %5738 ], [ 0.000000e+00, %5721 ]
  %5751 = phi float [ %5747, %5738 ], [ 0.000000e+00, %5721 ]
  %5752 = call float @dx.op.binary.f32(i32 36, float %5750, float %5751)  ; FMin(a,b)
  %5753 = call float @dx.op.binary.f32(i32 36, float %5749, float %5752)  ; FMin(a,b)
  %5754 = fcmp fast ogt float %5753, 0.000000e+00
  br i1 %5754, label %5755, label %5930, !dx.controlflow.hints !76

; <label>:5755                                    ; preds = %5748
  %5756 = fmul fast float %5749, %5715
  %5757 = fmul fast float %5750, %5716
  %5758 = fmul fast float %5751, %5717
  %5759 = fsub fast float %5704, %5341
  %5760 = fsub fast float %5705, %5340
  %5761 = fsub fast float %5706, %5339
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float %5759, float %5760, float %5761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 25, float %5762)  ; Rsqrt(value)
  %5764 = fmul fast float %5763, %5759
  %5765 = fmul fast float %5763, %5760
  %5766 = fmul fast float %5763, %5761
  %5767 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5337, float %5336, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = call float @dx.op.unary.f32(i32 7, float %5767)  ; Saturate(value)
  %5770 = fmul fast float %5769, %5769
  %5771 = fmul fast float %5770, %5699
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = fmul fast float %5772, %5769
  %5774 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5775 = fmul fast float %5774, %5774
  %5776 = call float @dx.op.unary.f32(i32 6, float %5767)  ; FAbs(value)
  %5777 = fsub fast float 1.000000e+00, %5351
  %5778 = call float @dx.op.binary.f32(i32 35, float %5777, float 0x3F847AE140000000)  ; FMax(a,b)
  %5779 = fmul fast float %5778, %5778
  %5780 = fmul fast float %5779, %5779
  %5781 = fsub fast float 1.000000e+00, %5780
  %5782 = fmul fast float %5355, %5355
  %5783 = fmul fast float %5782, %5781
  %5784 = fadd fast float %5783, %5780
  %5785 = bitcast float %5784 to i32
  %5786 = ashr i32 %5785, 1
  %5787 = add nsw i32 %5786, 532487669
  %5788 = bitcast i32 %5787 to float
  %5789 = fadd fast float %5788, %5355
  %5790 = fmul fast float %5780, %5775
  %5791 = fsub fast float 1.000000e+00, %5775
  %5792 = fadd fast float %5791, %5790
  %5793 = fmul fast float %5776, %5776
  %5794 = fmul fast float %5793, %5781
  %5795 = fadd fast float %5794, %5780
  %5796 = bitcast float %5795 to i32
  %5797 = ashr i32 %5796, 1
  %5798 = add nsw i32 %5797, 532487669
  %5799 = bitcast i32 %5798 to float
  %5800 = fadd fast float %5799, %5776
  %5801 = fmul fast float %5792, %5792
  %5802 = fmul fast float %5801, %5789
  %5803 = fmul fast float %5802, %5800
  %5804 = fdiv fast float 0x3FF0A00000000000, %5803
  %5805 = fmul fast float %5804, %5780
  %5806 = call float @dx.op.unary.f32(i32 6, float %5768)  ; FAbs(value)
  %5807 = fsub fast float 1.000000e+00, %5806
  %5808 = bitcast float %5807 to i32
  %5809 = sitofp i32 %5808 to float
  %5810 = fmul fast float %5809, 5.000000e+00
  %5811 = fadd fast float %5810, 0xC1EFBF8940000000
  %5812 = fptosi float %5811 to i32
  %5813 = bitcast i32 %5812 to float
  %5814 = fsub fast float 1.000000e+00, %5342
  %5815 = fsub fast float 1.000000e+00, %5343
  %5816 = fsub fast float 1.000000e+00, %5353
  %5817 = fmul fast float %5813, %5814
  %5818 = fmul fast float %5813, %5815
  %5819 = fmul fast float %5813, %5816
  %5820 = fadd fast float %5817, %5342
  %5821 = fadd fast float %5818, %5343
  %5822 = fadd fast float %5819, %5353
  br i1 %5614, label %5823, label %5846

; <label>:5823                                    ; preds = %5755
  %5824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4148, float %5806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5825 = extractvalue %dx.types.ResRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.ResRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.ResRet.f32 %5824, 2
  %5828 = fadd fast float %5825, -5.000000e-01
  %5829 = fadd fast float %5826, -5.000000e-01
  %5830 = fadd fast float %5827, -5.000000e-01
  %5831 = fmul fast float %5342, 4.000000e+00
  %5832 = fmul fast float %5831, %5814
  %5833 = fmul fast float %5832, %5828
  %5834 = fmul fast float %5343, 4.000000e+00
  %5835 = fmul fast float %5834, %5815
  %5836 = fmul fast float %5835, %5829
  %5837 = fmul fast float %5353, 4.000000e+00
  %5838 = fmul fast float %5837, %5816
  %5839 = fmul fast float %5838, %5830
  %5840 = fadd fast float %5833, %5820
  %5841 = fadd fast float %5836, %5821
  %5842 = fadd fast float %5839, %5822
  %5843 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5844 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5845 = call float @dx.op.unary.f32(i32 7, float %5842)  ; Saturate(value)
  br label %5846

; <label>:5846                                    ; preds = %5823, %5755
  %5847 = phi float [ %5843, %5823 ], [ %5820, %5755 ]
  %5848 = phi float [ %5844, %5823 ], [ %5821, %5755 ]
  %5849 = phi float [ %5845, %5823 ], [ %5822, %5755 ]
  %5850 = fmul fast float %5767, 9.843750e-01
  %5851 = fadd fast float %5850, 7.812500e-03
  %5852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5851, float %5604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5853 = extractvalue %dx.types.ResRet.f32 %5852, 2
  %5854 = extractvalue %dx.types.ResRet.f32 %5852, 3
  %5855 = fmul fast float %5853, %5342
  %5856 = fmul fast float %5853, %5343
  %5857 = fmul fast float %5853, %5353
  %5858 = fadd fast float %5855, %5854
  %5859 = fadd fast float %5856, %5854
  %5860 = fadd fast float %5857, %5854
  br i1 %5614, label %5861, label %5884

; <label>:5861                                    ; preds = %5846
  %5862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4148, float %5767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5863 = extractvalue %dx.types.ResRet.f32 %5862, 0
  %5864 = extractvalue %dx.types.ResRet.f32 %5862, 1
  %5865 = extractvalue %dx.types.ResRet.f32 %5862, 2
  %5866 = fadd fast float %5863, -5.000000e-01
  %5867 = fadd fast float %5864, -5.000000e-01
  %5868 = fadd fast float %5865, -5.000000e-01
  %5869 = fmul fast float %5342, 4.000000e+00
  %5870 = fmul fast float %5869, %5814
  %5871 = fmul fast float %5870, %5866
  %5872 = fmul fast float %5343, 4.000000e+00
  %5873 = fmul fast float %5872, %5815
  %5874 = fmul fast float %5873, %5867
  %5875 = fmul fast float %5353, 4.000000e+00
  %5876 = fmul fast float %5875, %5816
  %5877 = fmul fast float %5876, %5868
  %5878 = fadd fast float %5871, %5858
  %5879 = fadd fast float %5874, %5859
  %5880 = fadd fast float %5877, %5860
  %5881 = call float @dx.op.unary.f32(i32 7, float %5878)  ; Saturate(value)
  %5882 = call float @dx.op.unary.f32(i32 7, float %5879)  ; Saturate(value)
  %5883 = call float @dx.op.unary.f32(i32 7, float %5880)  ; Saturate(value)
  br label %5884

; <label>:5884                                    ; preds = %5861, %5846
  %5885 = phi float [ %5881, %5861 ], [ %5858, %5846 ]
  %5886 = phi float [ %5882, %5861 ], [ %5859, %5846 ]
  %5887 = phi float [ %5883, %5861 ], [ %5860, %5846 ]
  %5888 = call float @dx.op.binary.f32(i32 35, float %5886, float %5887)  ; FMax(a,b)
  %5889 = call float @dx.op.binary.f32(i32 35, float %5885, float %5888)  ; FMax(a,b)
  %5890 = fsub fast float 1.000000e+00, %5889
  %5891 = fmul fast float %5847, %5805
  %5892 = fmul fast float %5848, %5805
  %5893 = fmul fast float %5849, %5805
  %5894 = fsub fast float 1.000000e+00, %5768
  %5895 = bitcast float %5894 to i32
  %5896 = sitofp i32 %5895 to float
  %5897 = fmul fast float %5896, 5.000000e+00
  %5898 = fadd fast float %5897, 0xC1EFBF8940000000
  %5899 = fptosi float %5898 to i32
  %5900 = bitcast i32 %5899 to float
  %5901 = fmul fast float %5900, %4149
  %5902 = fmul fast float %5890, %5901
  %5903 = fmul fast float %5902, %5664
  %5904 = fmul fast float %5902, %5665
  %5905 = fmul fast float %5902, %5666
  %5906 = fadd fast float %5903, %5891
  %5907 = fadd fast float %5904, %5892
  %5908 = fadd fast float %5905, %5893
  %5909 = fmul fast float %5773, %5756
  %5910 = fmul fast float %5909, %5890
  %5911 = fmul fast float %5773, %5757
  %5912 = fmul fast float %5911, %5890
  %5913 = fmul fast float %5773, %5758
  %5914 = fmul fast float %5913, %5890
  %5915 = fmul fast float %5909, %5906
  %5916 = fmul fast float %5911, %5907
  %5917 = fmul fast float %5913, %5908
  %5918 = fadd fast float %5910, %5648
  %5919 = fmul fast float %5918, %4145
  %5920 = fadd fast float %5912, %5649
  %5921 = fmul fast float %5920, %4145
  %5922 = fadd fast float %5914, %5650
  %5923 = fmul fast float %5922, %4145
  %5924 = fadd fast float %5915, %5691
  %5925 = fmul fast float %5924, %4145
  %5926 = fadd fast float %5916, %5694
  %5927 = fmul fast float %5926, %4145
  %5928 = fadd fast float %5917, %5697
  %5929 = fmul fast float %5928, %4145
  br label %5930

; <label>:5930                                    ; preds = %5884, %5748, %5641
  %5931 = phi float [ %5692, %5641 ], [ %5692, %5748 ], [ %5925, %5884 ]
  %5932 = phi float [ %5695, %5641 ], [ %5695, %5748 ], [ %5927, %5884 ]
  %5933 = phi float [ %5698, %5641 ], [ %5698, %5748 ], [ %5929, %5884 ]
  %5934 = phi float [ %5687, %5641 ], [ %5687, %5748 ], [ %5919, %5884 ]
  %5935 = phi float [ %5688, %5641 ], [ %5688, %5748 ], [ %5921, %5884 ]
  %5936 = phi float [ %5689, %5641 ], [ %5689, %5748 ], [ %5923, %5884 ]
  %5937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.i32 %5937, 0
  %5939 = icmp eq i32 %5938, 0
  br i1 %5939, label %6374, label %5940

; <label>:5940                                    ; preds = %5930
  %5941 = fptoui float %83 to i32
  %5942 = fptoui float %84 to i32
  %5943 = lshr i32 %5941, 4
  %5944 = lshr i32 %5942, 4
  %5945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.i32 %5945, 0
  %5947 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5944, i32 %5946, i32 %5943)  ; UMad(a,b,c)
  %5948 = add nsw i32 %5938, -1
  %5949 = call i32 @dx.op.binary.i32(i32 37, i32 %5948, i32 0)  ; IMax(a,b)
  %5950 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %5951 = fptoui float %5950 to i32
  %5952 = lshr i32 %5951, 5
  %5953 = call i32 @dx.op.binary.i32(i32 40, i32 %5952, i32 8191)  ; UMin(a,b)
  %5954 = shl i32 %5953, 2
  %5955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.i32 %5955, 0
  %5957 = lshr i32 %5956, 16
  %5958 = and i32 %5956, 65535
  %5959 = lshr i32 %5956, 21
  %5960 = lshr i32 %5958, 5
  %5961 = call i32 @dx.op.binary.i32(i32 40, i32 %5960, i32 %5949)  ; UMin(a,b)
  %5962 = icmp ugt i32 %5959, %5961
  br i1 %5962, label %6374, label %5963

; <label>:5963                                    ; preds = %5940
  br label %5964

; <label>:5964                                    ; preds = %6364, %5963
  %5965 = phi i32 [ %6371, %6364 ], [ %5959, %5963 ]
  %5966 = phi float [ %6365, %6364 ], [ %5931, %5963 ]
  %5967 = phi float [ %6366, %6364 ], [ %5932, %5963 ]
  %5968 = phi float [ %6367, %6364 ], [ %5933, %5963 ]
  %5969 = phi float [ %6368, %6364 ], [ %5934, %5963 ]
  %5970 = phi float [ %6369, %6364 ], [ %5935, %5963 ]
  %5971 = phi float [ %6370, %6364 ], [ %5936, %5963 ]
  %5972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.i32 %5972, 0
  %5974 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5947, i32 %5973, i32 %5965)  ; UMad(a,b,c)
  %5975 = shl i32 %5974, 2
  %5976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5975, i32 undef)  ; BufferLoad(srv,index,wot)
  %5977 = extractvalue %dx.types.ResRet.i32 %5976, 0
  %5978 = shl i32 %5965, 5
  %5979 = sub nsw i32 %5957, %5978
  %5980 = call i32 @dx.op.binary.i32(i32 37, i32 %5979, i32 0)  ; IMax(a,b)
  %5981 = call i32 @dx.op.binary.i32(i32 38, i32 %5980, i32 31)  ; IMin(a,b)
  %5982 = sub nsw i32 1, %5957
  %5983 = add nsw i32 %5982, %5958
  %5984 = call i32 @dx.op.binary.i32(i32 37, i32 %5983, i32 0)  ; IMax(a,b)
  %5985 = call i32 @dx.op.binary.i32(i32 38, i32 %5984, i32 32)  ; IMin(a,b)
  %5986 = and i32 %5985, 31
  %5987 = shl i32 -1, %5986
  %5988 = xor i32 %5987, -1
  %5989 = and i32 %5981, 31
  %5990 = shl i32 %5988, %5989
  %5991 = icmp eq i32 %5985, 32
  %5992 = select i1 %5991, i32 -1, i32 %5990
  %5993 = and i32 %5992, %5977
  %5994 = icmp eq i32 %5993, 0
  br i1 %5994, label %6364, label %5995

; <label>:5995                                    ; preds = %5964
  br label %5996

; <label>:5996                                    ; preds = %6076, %5995
  %5997 = phi i32 [ %6008, %6076 ], [ %5993, %5995 ]
  %5998 = phi float [ %6077, %6076 ], [ %5966, %5995 ]
  %5999 = phi float [ %6078, %6076 ], [ %5967, %5995 ]
  %6000 = phi float [ %6079, %6076 ], [ %5968, %5995 ]
  %6001 = phi float [ %6080, %6076 ], [ %5969, %5995 ]
  %6002 = phi float [ %6081, %6076 ], [ %5970, %5995 ]
  %6003 = phi float [ %6082, %6076 ], [ %5971, %5995 ]
  %6004 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5997)  ; FirstbitLo(value)
  %6005 = add i32 %6004, %5978
  %6006 = and i32 %6004, 31
  %6007 = shl i32 1, %6006
  %6008 = xor i32 %6007, %5997
  %6009 = mul i32 %6005, 112
  %6010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6009, i32 undef)  ; BufferLoad(srv,index,wot)
  %6011 = extractvalue %dx.types.ResRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.ResRet.f32 %6010, 1
  %6013 = extractvalue %dx.types.ResRet.f32 %6010, 2
  %6014 = or i32 %6009, 12
  %6015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6014, i32 undef)  ; BufferLoad(srv,index,wot)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  %6017 = add i32 %6009, 44
  %6018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6017, i32 undef)  ; BufferLoad(srv,index,wot)
  %6019 = extractvalue %dx.types.ResRet.f32 %6018, 0
  %6020 = add i32 %6009, 48
  %6021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6020, i32 undef)  ; BufferLoad(srv,index,wot)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.ResRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.ResRet.f32 %6021, 2
  %6025 = add i32 %6009, 80
  %6026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6025, i32 undef)  ; BufferLoad(srv,index,wot)
  %6027 = extractvalue %dx.types.ResRet.f32 %6026, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6026, 2
  %6029 = call float @dx.op.dot3.f32(i32 55, float %6011, float %6012, float %6013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = select i1 %205, float %6027, float %6011
  %6031 = select i1 %205, float %6029, float %6012
  %6032 = select i1 %205, float %6028, float %6013
  %6033 = fsub fast float %6022, %166
  %6034 = fsub fast float %6023, %167
  %6035 = fsub fast float %6024, %168
  %6036 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6034, float %6035, float %6033, float %6034, float %6035)  ; Dot3(ax,ay,az,bx,by,bz)
  %6037 = call float @dx.op.unary.f32(i32 24, float %6036)  ; Sqrt(value)
  %6038 = fdiv fast float 1.000000e+00, %6037
  %6039 = fmul fast float %6038, %6033
  %6040 = fmul fast float %6038, %6034
  %6041 = fmul fast float %6038, %6035
  %6042 = fadd fast float %6037, %6016
  %6043 = fdiv fast float 1.000000e+00, %6042
  %6044 = fmul float %6019, %6043
  %6045 = fmul float %6044, %6044
  %6046 = call float @dx.op.unary.f32(i32 7, float %6045)  ; Saturate(value)
  %6047 = and i32 %6007, %5993
  %6048 = icmp eq i32 %6047, 0
  br i1 %6048, label %6071, label %6049, !dx.controlflow.hints !77

; <label>:6049                                    ; preds = %5996
  %6050 = lshr i32 %5941, 5
  %6051 = lshr i32 %5942, 5
  %6052 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %6050, i32 %6051, i32 %6005, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6053 = extractvalue %dx.types.ResRet.i32 %6052, 0
  %6054 = and i32 %6053, 3
  %6055 = icmp eq i32 %6054, 0
  %6056 = select i1 %6055, float 1.000000e+00, float 0.000000e+00
  %6057 = icmp eq i32 %6054, 3
  br i1 %6057, label %6058, label %6071

; <label>:6058                                    ; preds = %6049
  %6059 = lshr i32 %6053, 10
  %6060 = and i32 %6059, 8160
  %6061 = and i32 %5942, 31
  %6062 = or i32 %6060, %6061
  %6063 = lshr i32 %6053, 1
  %6064 = and i32 %6063, 16352
  %6065 = and i32 %5941, 31
  %6066 = or i32 %6064, %6065
  %6067 = lshr i32 %6053, 23
  %6068 = and i32 %6067, 255
  %6069 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %6066, i32 %6062, i32 %6068, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6070 = extractvalue %dx.types.ResRet.f32 %6069, 0
  br label %6071

; <label>:6071                                    ; preds = %6058, %6049, %5996
  %6072 = phi float [ %6070, %6058 ], [ %6056, %6049 ], [ 0.000000e+00, %5996 ]
  %6073 = call float @dx.op.binary.f32(i32 36, float %6072, float %6072)  ; FMin(a,b)
  %6074 = call float @dx.op.binary.f32(i32 36, float %6072, float %6073)  ; FMin(a,b)
  %6075 = fcmp fast ogt float %6074, 0.000000e+00
  br i1 %6075, label %6084, label %6076, !dx.controlflow.hints !78

; <label>:6076                                    ; preds = %6320, %6071
  %6077 = phi float [ %5998, %6071 ], [ %6360, %6320 ]
  %6078 = phi float [ %5999, %6071 ], [ %6361, %6320 ]
  %6079 = phi float [ %6000, %6071 ], [ %6362, %6320 ]
  %6080 = phi float [ %6001, %6071 ], [ %6354, %6320 ]
  %6081 = phi float [ %6002, %6071 ], [ %6355, %6320 ]
  %6082 = phi float [ %6003, %6071 ], [ %6356, %6320 ]
  %6083 = icmp eq i32 %5997, %6007
  br i1 %6083, label %6363, label %5996

; <label>:6084                                    ; preds = %6071
  %6085 = fmul fast float %6072, %6030
  %6086 = fmul fast float %6072, %6031
  %6087 = fmul fast float %6072, %6032
  %6088 = fsub fast float %6024, %4549
  %6089 = fcmp fast ogt float %6088, 0.000000e+00
  %6090 = fsub fast float %168, %4549
  %6091 = fcmp fast ogt float %6090, 0.000000e+00
  %6092 = xor i1 %6091, %6089
  %6093 = fsub fast float %4549, %6024
  %6094 = fmul fast float %6093, 2.000000e+00
  %6095 = fadd fast float %6094, %6024
  %6096 = select i1 %6092, float %6024, float %6095
  %6097 = fsub fast float %6096, %168
  %6098 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6034, float %6097, float %6033, float %6034, float %6097)  ; Dot3(ax,ay,az,bx,by,bz)
  %6099 = call float @dx.op.unary.f32(i32 25, float %6098)  ; Rsqrt(value)
  %6100 = fmul fast float %6099, %6033
  %6101 = fmul fast float %6099, %6034
  %6102 = fmul fast float %6099, %6097
  %6103 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4557)  ; Dot3(ax,ay,az,bx,by,bz)
  %6104 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6100, float %6101, float %6102)  ; Dot3(ax,ay,az,bx,by,bz)
  %6105 = fdiv fast float 1.000000e+00, %6104
  %6106 = fmul fast float %6105, %6103
  %6107 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6090, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6108 = fcmp fast ogt float %6107, 0.000000e+00
  %6109 = fcmp fast olt float %6107, 0.000000e+00
  %6110 = zext i1 %6108 to i32
  %6111 = zext i1 %6109 to i32
  %6112 = sub nsw i32 %6110, %6111
  %6113 = sitofp i32 %6112 to float
  %6114 = fsub fast float %6096, %4549
  %6115 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6034, float %6114, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6116 = fcmp fast ogt float %6115, 0.000000e+00
  %6117 = fcmp fast olt float %6115, 0.000000e+00
  %6118 = zext i1 %6116 to i32
  %6119 = zext i1 %6117 to i32
  %6120 = sub nsw i32 %6118, %6119
  %6121 = sitofp i32 %6120 to float
  %6122 = fcmp fast une float %6113, %6121
  br i1 %6122, label %6123, label %6133

; <label>:6123                                    ; preds = %6084
  %6124 = fmul fast float %6106, %6102
  %6125 = fmul fast float %6106, %6101
  %6126 = fmul fast float %6106, %6100
  %6127 = fmul fast float %6126, %6126
  %6128 = fmul fast float %6125, %6125
  %6129 = fadd fast float %6127, %6128
  %6130 = fmul fast float %6124, %6124
  %6131 = fadd fast float %6129, %6130
  %6132 = call float @dx.op.unary.f32(i32 24, float %6131)  ; Sqrt(value)
  br label %6145

; <label>:6133                                    ; preds = %6084
  %6134 = icmp slt i32 %6112, 0
  br i1 %6134, label %6135, label %6145

; <label>:6135                                    ; preds = %6133
  %6136 = fsub fast float %166, %6022
  %6137 = fsub fast float %167, %6023
  %6138 = fsub fast float %168, %6096
  %6139 = fmul fast float %6136, %6136
  %6140 = fmul fast float %6137, %6137
  %6141 = fadd fast float %6139, %6140
  %6142 = fmul fast float %6138, %6138
  %6143 = fadd fast float %6141, %6142
  %6144 = call float @dx.op.unary.f32(i32 24, float %6143)  ; Sqrt(value)
  br label %6145

; <label>:6145                                    ; preds = %6135, %6133, %6123
  %6146 = phi float [ %6132, %6123 ], [ %6144, %6135 ], [ 0.000000e+00, %6133 ]
  %6147 = and i1 %6091, %6089
  %6148 = fsub fast float -0.000000e+00, %6146
  %6149 = select i1 %6147, float -0.000000e+00, float %6148
  %6150 = fmul fast float %4550, 0x3FF7154760000000
  %6151 = fmul fast float %6150, %6149
  %6152 = fmul fast float %4551, 0x3FF7154760000000
  %6153 = fmul fast float %6152, %6149
  %6154 = fmul fast float %4552, 0x3FF7154760000000
  %6155 = fmul fast float %6154, %6149
  %6156 = call float @dx.op.unary.f32(i32 21, float %6151)  ; Exp(value)
  %6157 = call float @dx.op.unary.f32(i32 21, float %6153)  ; Exp(value)
  %6158 = call float @dx.op.unary.f32(i32 21, float %6155)  ; Exp(value)
  %6159 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  %6160 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6161 = call float @dx.op.unary.f32(i32 7, float %6158)  ; Saturate(value)
  %6162 = fmul fast float %6085, %6159
  %6163 = fmul fast float %6086, %6160
  %6164 = fmul fast float %6087, %6161
  %6165 = fsub fast float %6039, %5341
  %6166 = fsub fast float %6040, %5340
  %6167 = fsub fast float %6041, %5339
  %6168 = call float @dx.op.dot3.f32(i32 55, float %6165, float %6166, float %6167, float %6165, float %6166, float %6167)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = call float @dx.op.unary.f32(i32 25, float %6168)  ; Rsqrt(value)
  %6170 = fmul fast float %6169, %6165
  %6171 = fmul fast float %6169, %6166
  %6172 = fmul fast float %6169, %6167
  %6173 = call float @dx.op.dot3.f32(i32 55, float %6039, float %6040, float %6041, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5337, float %5336, float %6170, float %6171, float %6172)  ; Dot3(ax,ay,az,bx,by,bz)
  %6175 = call float @dx.op.unary.f32(i32 7, float %6173)  ; Saturate(value)
  %6176 = fmul fast float %6175, %6046
  %6177 = fmul fast float %6175, %6175
  %6178 = fmul fast float %6177, %5699
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  %6180 = fmul fast float %6176, %6179
  %6181 = bitcast float %6036 to i32
  %6182 = ashr i32 %6181, 1
  %6183 = sub nsw i32 1597463007, %6182
  %6184 = bitcast i32 %6183 to float
  %6185 = fmul fast float %6184, %6033
  %6186 = fmul fast float %6184, %6034
  %6187 = fmul fast float %6184, %6035
  %6188 = fsub fast float %6185, %5341
  %6189 = fsub fast float %6186, %5340
  %6190 = fsub fast float %6187, %5339
  %6191 = call float @dx.op.dot3.f32(i32 55, float %6188, float %6189, float %6190, float %6188, float %6189, float %6190)  ; Dot3(ax,ay,az,bx,by,bz)
  %6192 = call float @dx.op.unary.f32(i32 25, float %6191)  ; Rsqrt(value)
  %6193 = fmul fast float %6188, %6192
  %6194 = fmul fast float %6189, %6192
  %6195 = fmul fast float %6190, %6192
  %6196 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float %6193, float %6194, float %6195)  ; Dot3(ax,ay,az,bx,by,bz)
  %6197 = fmul fast float %6196, %6196
  %6198 = call float @dx.op.unary.f32(i32 6, float %6173)  ; FAbs(value)
  %6199 = fsub fast float 1.000000e+00, %5351
  %6200 = call float @dx.op.binary.f32(i32 35, float %6199, float 0x3F847AE140000000)  ; FMax(a,b)
  %6201 = fmul fast float %6200, %6200
  %6202 = fmul fast float %6201, %6201
  %6203 = fsub fast float 1.000000e+00, %6202
  %6204 = fmul fast float %5355, %5355
  %6205 = fmul fast float %6204, %6203
  %6206 = fadd fast float %6205, %6202
  %6207 = bitcast float %6206 to i32
  %6208 = ashr i32 %6207, 1
  %6209 = add nsw i32 %6208, 532487669
  %6210 = bitcast i32 %6209 to float
  %6211 = fadd fast float %6210, %5355
  %6212 = fmul fast float %6202, %6197
  %6213 = fsub fast float 1.000000e+00, %6197
  %6214 = fadd fast float %6213, %6212
  %6215 = fmul fast float %6198, %6198
  %6216 = fmul fast float %6215, %6203
  %6217 = fadd fast float %6216, %6202
  %6218 = bitcast float %6217 to i32
  %6219 = ashr i32 %6218, 1
  %6220 = add nsw i32 %6219, 532487669
  %6221 = bitcast i32 %6220 to float
  %6222 = fadd fast float %6221, %6198
  %6223 = fmul fast float %6214, %6214
  %6224 = fmul fast float %6223, %6211
  %6225 = fmul fast float %6224, %6222
  %6226 = fdiv fast float 1.000000e+00, %6225
  %6227 = bitcast float %6202 to i32
  %6228 = sitofp i32 %6227 to float
  %6229 = fmul fast float %6228, 0x3FE7F73180000000
  %6230 = fadd fast float %6229, 0x41AFE27C40000000
  %6231 = fptosi float %6230 to i32
  %6232 = bitcast i32 %6231 to float
  %6233 = fmul fast float %6019, 0x3FD80E9D60000000
  %6234 = fmul fast float %6233, %6184
  %6235 = fadd fast float %6232, %6234
  %6236 = bitcast float %6235 to i32
  %6237 = sub nsw i32 2129859010, %6236
  %6238 = bitcast i32 %6237 to float
  %6239 = fmul fast float %6202, %6226
  %6240 = fmul fast float %6239, %6232
  %6241 = fmul fast float %6240, %6238
  %6242 = call float @dx.op.unary.f32(i32 6, float %6174)  ; FAbs(value)
  %6243 = fsub fast float 1.000000e+00, %6242
  %6244 = bitcast float %6243 to i32
  %6245 = sitofp i32 %6244 to float
  %6246 = fmul fast float %6245, 5.000000e+00
  %6247 = fadd fast float %6246, 0xC1EFBF8940000000
  %6248 = fptosi float %6247 to i32
  %6249 = bitcast i32 %6248 to float
  %6250 = fsub fast float 1.000000e+00, %5342
  %6251 = fsub fast float 1.000000e+00, %5343
  %6252 = fsub fast float 1.000000e+00, %5353
  %6253 = fmul fast float %6249, %6250
  %6254 = fmul fast float %6249, %6251
  %6255 = fmul fast float %6249, %6252
  %6256 = fadd fast float %6253, %5342
  %6257 = fadd fast float %6254, %5343
  %6258 = fadd fast float %6255, %5353
  br i1 %5614, label %6259, label %6282

; <label>:6259                                    ; preds = %6145
  %6260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4148, float %6242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6261 = extractvalue %dx.types.ResRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.ResRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.ResRet.f32 %6260, 2
  %6264 = fadd fast float %6261, -5.000000e-01
  %6265 = fadd fast float %6262, -5.000000e-01
  %6266 = fadd fast float %6263, -5.000000e-01
  %6267 = fmul fast float %5342, 4.000000e+00
  %6268 = fmul fast float %6267, %6250
  %6269 = fmul fast float %6268, %6264
  %6270 = fmul fast float %5343, 4.000000e+00
  %6271 = fmul fast float %6270, %6251
  %6272 = fmul fast float %6271, %6265
  %6273 = fmul fast float %5353, 4.000000e+00
  %6274 = fmul fast float %6273, %6252
  %6275 = fmul fast float %6274, %6266
  %6276 = fadd fast float %6269, %6256
  %6277 = fadd fast float %6272, %6257
  %6278 = fadd fast float %6275, %6258
  %6279 = call float @dx.op.unary.f32(i32 7, float %6276)  ; Saturate(value)
  %6280 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6281 = call float @dx.op.unary.f32(i32 7, float %6278)  ; Saturate(value)
  br label %6282

; <label>:6282                                    ; preds = %6259, %6145
  %6283 = phi float [ %6279, %6259 ], [ %6256, %6145 ]
  %6284 = phi float [ %6280, %6259 ], [ %6257, %6145 ]
  %6285 = phi float [ %6281, %6259 ], [ %6258, %6145 ]
  %6286 = fmul fast float %6173, 9.843750e-01
  %6287 = fadd fast float %6286, 7.812500e-03
  %6288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6287, float %5604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6289 = extractvalue %dx.types.ResRet.f32 %6288, 2
  %6290 = extractvalue %dx.types.ResRet.f32 %6288, 3
  %6291 = fmul fast float %6289, %5342
  %6292 = fmul fast float %6289, %5343
  %6293 = fmul fast float %6289, %5353
  %6294 = fadd fast float %6291, %6290
  %6295 = fadd fast float %6292, %6290
  %6296 = fadd fast float %6293, %6290
  br i1 %5614, label %6297, label %6320

; <label>:6297                                    ; preds = %6282
  %6298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4148, float %6173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6299 = extractvalue %dx.types.ResRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.ResRet.f32 %6298, 2
  %6302 = fadd fast float %6299, -5.000000e-01
  %6303 = fadd fast float %6300, -5.000000e-01
  %6304 = fadd fast float %6301, -5.000000e-01
  %6305 = fmul fast float %5342, 4.000000e+00
  %6306 = fmul fast float %6305, %6250
  %6307 = fmul fast float %6306, %6302
  %6308 = fmul fast float %5343, 4.000000e+00
  %6309 = fmul fast float %6308, %6251
  %6310 = fmul fast float %6309, %6303
  %6311 = fmul fast float %5353, 4.000000e+00
  %6312 = fmul fast float %6311, %6252
  %6313 = fmul fast float %6312, %6304
  %6314 = fadd fast float %6307, %6294
  %6315 = fadd fast float %6310, %6295
  %6316 = fadd fast float %6313, %6296
  %6317 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  %6318 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6319 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  br label %6320

; <label>:6320                                    ; preds = %6297, %6282
  %6321 = phi float [ %6317, %6297 ], [ %6294, %6282 ]
  %6322 = phi float [ %6318, %6297 ], [ %6295, %6282 ]
  %6323 = phi float [ %6319, %6297 ], [ %6296, %6282 ]
  %6324 = call float @dx.op.binary.f32(i32 35, float %6322, float %6323)  ; FMax(a,b)
  %6325 = call float @dx.op.binary.f32(i32 35, float %6321, float %6324)  ; FMax(a,b)
  %6326 = fsub fast float 1.000000e+00, %6325
  %6327 = fmul fast float %6283, %6241
  %6328 = fmul fast float %6284, %6241
  %6329 = fmul fast float %6285, %6241
  %6330 = fsub fast float 1.000000e+00, %6174
  %6331 = bitcast float %6330 to i32
  %6332 = sitofp i32 %6331 to float
  %6333 = fmul fast float %6332, 5.000000e+00
  %6334 = fadd fast float %6333, 0xC1EFBF8940000000
  %6335 = fptosi float %6334 to i32
  %6336 = bitcast i32 %6335 to float
  %6337 = fmul fast float %6336, %4149
  %6338 = fmul fast float %6326, %6337
  %6339 = fmul fast float %6338, %5664
  %6340 = fmul fast float %6338, %5665
  %6341 = fmul fast float %6338, %5666
  %6342 = fadd fast float %6339, %6327
  %6343 = fadd fast float %6340, %6328
  %6344 = fadd fast float %6341, %6329
  %6345 = fmul fast float %6162, %4145
  %6346 = fmul fast float %6345, %6180
  %6347 = fmul fast float %6346, %6326
  %6348 = fmul fast float %6163, %4145
  %6349 = fmul fast float %6348, %6180
  %6350 = fmul fast float %6349, %6326
  %6351 = fmul fast float %6164, %4145
  %6352 = fmul fast float %6351, %6180
  %6353 = fmul fast float %6352, %6326
  %6354 = fadd fast float %6347, %6001
  %6355 = fadd fast float %6350, %6002
  %6356 = fadd fast float %6353, %6003
  %6357 = fmul fast float %6346, %6342
  %6358 = fmul fast float %6349, %6343
  %6359 = fmul fast float %6352, %6344
  %6360 = fadd fast float %6357, %5998
  %6361 = fadd fast float %6358, %5999
  %6362 = fadd fast float %6359, %6000
  br label %6076

; <label>:6363                                    ; preds = %6076
  br label %6364

; <label>:6364                                    ; preds = %6363, %5964
  %6365 = phi float [ %5966, %5964 ], [ %6077, %6363 ]
  %6366 = phi float [ %5967, %5964 ], [ %6078, %6363 ]
  %6367 = phi float [ %5968, %5964 ], [ %6079, %6363 ]
  %6368 = phi float [ %5969, %5964 ], [ %6080, %6363 ]
  %6369 = phi float [ %5970, %5964 ], [ %6081, %6363 ]
  %6370 = phi float [ %5971, %5964 ], [ %6082, %6363 ]
  %6371 = add i32 %5965, 1
  %6372 = icmp ugt i32 %6371, %5961
  br i1 %6372, label %6373, label %5964

; <label>:6373                                    ; preds = %6364
  br label %6374

; <label>:6374                                    ; preds = %6373, %5940, %5930
  %6375 = phi float [ %5931, %5930 ], [ %5931, %5940 ], [ %6365, %6373 ]
  %6376 = phi float [ %5932, %5930 ], [ %5932, %5940 ], [ %6366, %6373 ]
  %6377 = phi float [ %5933, %5930 ], [ %5933, %5940 ], [ %6367, %6373 ]
  %6378 = phi float [ %5934, %5930 ], [ %5934, %5940 ], [ %6368, %6373 ]
  %6379 = phi float [ %5935, %5930 ], [ %5935, %5940 ], [ %6369, %6373 ]
  %6380 = phi float [ %5936, %5930 ], [ %5936, %5940 ], [ %6370, %6373 ]
  %6381 = call float @dx.op.unary.f32(i32 24, float %5345)  ; Sqrt(value)
  %6382 = call float @dx.op.unary.f32(i32 24, float %5346)  ; Sqrt(value)
  %6383 = call float @dx.op.unary.f32(i32 24, float %5347)  ; Sqrt(value)
  %6384 = fmul fast float %6381, %6378
  %6385 = fmul fast float %6382, %6379
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  br i1 %205, label %6388, label %6408

; <label>:6388                                    ; preds = %6374
  %6389 = fadd fast float %6380, %4151
  %6390 = fmul fast float %6389, %4152
  %6391 = fsub fast float 1.000000e+00, %4152
  %6392 = call float @dx.op.unary.f32(i32 7, float %6391)  ; Saturate(value)
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 3
  %6395 = fmul fast float %6394, %6392
  %6396 = fadd fast float %6395, %6390
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 0
  %6399 = fmul fast float %6398, %5670
  %6400 = fsub fast float %6396, %6399
  %6401 = fadd fast float %6385, %6384
  %6402 = fmul fast float %6387, %6401
  %6403 = extractvalue %dx.types.CBufRet.f32 %6393, 1
  %6404 = fsub fast float %6400, %6403
  %6405 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6406 = fmul fast float %6404, %6405
  %6407 = call float @dx.op.unary.f32(i32 7, float %6406)  ; Saturate(value)
  br label %6424

; <label>:6408                                    ; preds = %6374
  %6409 = fmul fast float %6383, %6380
  %6410 = fmul fast float %6387, %6384
  %6411 = fmul fast float %6387, %6385
  %6412 = fmul fast float %6409, %6387
  %6413 = add i32 %34, 356
  %6414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6413, i32 undef)  ; BufferLoad(srv,index,wot)
  %6415 = extractvalue %dx.types.ResRet.i32 %6414, 0
  %6416 = and i32 %6415, 32
  %6417 = icmp eq i32 %6416, 0
  br i1 %6417, label %6424, label %6418

; <label>:6418                                    ; preds = %6408
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 0
  %6421 = fmul fast float %6420, 0x3FE99999A0000000
  %6422 = fadd fast float %6420, %6410
  %6423 = fadd fast float %6421, %6412
  br label %6424

; <label>:6424                                    ; preds = %6418, %6408, %6388
  %6425 = phi float [ %6402, %6388 ], [ %6422, %6418 ], [ %6410, %6408 ]
  %6426 = phi float [ %6407, %6388 ], [ %6411, %6418 ], [ %6411, %6408 ]
  %6427 = phi float [ 1.000000e+00, %6388 ], [ %6423, %6418 ], [ %6412, %6408 ]
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 0
  %6430 = fmul fast float %6429, %6376
  %6431 = fmul fast float %6429, %6377
  %6432 = fadd fast float %6376, %6375
  %6433 = select i1 %205, float %6432, float %6375
  %6434 = fmul float %6433, %6429
  %6435 = select i1 %205, float 0.000000e+00, float %6430
  %6436 = select i1 %205, float 0.000000e+00, float %6431
  %6437 = fmul fast float %6425, %6381
  %6438 = fmul fast float %6426, %6382
  %6439 = fmul fast float %6427, %6383
  %6440 = fadd fast float %6434, %6437
  %6441 = fadd fast float %6435, %6438
  %6442 = fadd fast float %6436, %6439
  %6443 = select i1 %205, float %6426, float %6441
  %6444 = select i1 %205, float %6427, float %6442
  %6445 = call float @dx.op.binary.f32(i32 36, float %6440, float 3.225500e+04)  ; FMin(a,b)
  %6446 = call float @dx.op.binary.f32(i32 36, float %6443, float 3.225500e+04)  ; FMin(a,b)
  %6447 = call float @dx.op.binary.f32(i32 36, float %6444, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6445)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6446)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6447)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

